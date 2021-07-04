<?php
	include 'includes/session.php';

	if(!isset($_GET['code']) OR !isset($_GET['user'])){
		header('location: index.php');
	    exit(); 
	}

	$path = 'password_reset.php?code='.$_GET['code'].'&user='.$_GET['user'];

	if(isset($_POST['reset'])){
		$password = $_POST['password'];
		$repassword = $_POST['repassword'];

		if($password != $repassword){
			$_SESSION['error'] = 'رمزهای عبور مطابقت ندارند';
			header('location: '.$path);
		}
		else{
			$conn = $pdo->open();

			$stmt = $conn->prepare("SELECT *, COUNT(*) AS numrows FROM users WHERE reset_code=:code AND id=:id");
			$stmt->execute(['code'=>$_GET['code'], 'id'=>$_GET['user']]);
			$row = $stmt->fetch();

			if($row['numrows'] > 0){
				$password = password_hash($password, PASSWORD_DEFAULT);

				try{
					$stmt = $conn->prepare("UPDATE users SET password=:password WHERE id=:id");
					$stmt->execute(['password'=>$password, 'id'=>$row['id']]);

					$_SESSION['success'] = 'رمز عبور با موفقیت تغییر یافت';
					header('location: login.php');
				}
				catch(PDOException $e){
					$_SESSION['error'] = $e->getMessage();
					header('location: '.$path);
				}
			}
			else{
				$_SESSION['error'] = 'کد مطابقت ندارد';
				header('location: '.$path);
			}

			$pdo->close();
		}

	}
	else{
		$_SESSION['error'] = 'ابتدا رمز جدید را وارد کنید';
		header('location: '.$path);
	}

?>