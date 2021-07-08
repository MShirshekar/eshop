<?php
include 'includes/session.php';

if(isset($_POST['delete'])){
    $id = $_POST['id'];

    $conn = $pdo->open();

    try{
        $stmt = $conn->prepare("DELETE FROM products WHERE id=:id");
        $stmt->execute(['id'=>$id]);

        $_SESSION['success'] = 'کالای مورد نظر حذف گردید';
    }
    catch(PDOException $e){
        $_SESSION['error'] = $e->getMessage();
    }

    $pdo->close();
}
else{
    $_SESSION['error'] = 'ابتدا محصول موردنظر را جهت حذف انتخاب کنید';
}

header('location: products.php');

?>