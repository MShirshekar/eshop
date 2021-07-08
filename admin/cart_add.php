<?php
include 'includes/session.php';

if(isset($_POST['add'])){
    $id = $_POST['id'];
    $product = $_POST['product'];
    $quantity = $_POST['quantity'];

    $conn = $pdo->open();

    $stmt = $conn->prepare("SELECT *, COUNT(*) AS numrows FROM cart WHERE product_id=:id");
    $stmt->execute(['id'=>$product]);
    $row = $stmt->fetch();

    if($row['numrows'] > 0){
        $_SESSION['error'] = 'کالا در سبد خرید وجود ندارد';
    }
    else{
        try{
            $stmt = $conn->prepare("INSERT INTO cart (user_id, product_id, quantity) VALUES (:user, :product, :quantity)");
            $stmt->execute(['user'=>$id, 'product'=>$product, 'quantity'=>$quantity]);

            $_SESSION['success'] = 'کالا به سبد خرید اضافه شد';
        }
        catch(PDOException $e){
            $_SESSION['error'] = $e->getMessage();
        }
    }

    $pdo->close();

    header('location: cart.php?user='.$id);
}

?>