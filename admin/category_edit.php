<?php
include 'includes/session.php';

if(isset($_POST['edit'])){
    $id = $_POST['id'];
    $name = $_POST['name'];

    try{
        $stmt = $conn->prepare("UPDATE category SET name=:name WHERE id=:id");
        $stmt->execute(['name'=>$name, 'id'=>$id]);
        $_SESSION['success'] = 'دسته بندی با موفقیت آپدیت شد';
    }
    catch(PDOException $e){
        $_SESSION['error'] = $e->getMessage();
    }

    $pdo->close();
}
else{
    $_SESSION['error'] = 'ابتدا فرم ادیت دسته بندی را پر کنید';
}

header('location: category.php');

?>