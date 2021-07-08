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
<<<<<<< HEAD
        $_SESSION['error'] = 'کالای موردنظر در سبد فعلی موجود است';
=======
        $_SESSION['error'] = 'کالا در سبد خرید وجود ندارد';
>>>>>>> bcc075e5bd04b13c054b5280a275e0a4e6cde312
    }
    else{
        try{
            $stmt = $conn->prepare("INSERT INTO cart (user_id, product_id, quantity) VALUES (:user, :product, :quantity)");
            $stmt->execute(['user'=>$id, 'product'=>$product, 'quantity'=>$quantity]);

<<<<<<< HEAD
            $_SESSION['success'] = 'کالا به سبد فروش مشتری اضافه شد';
=======
            $_SESSION['success'] = 'کالا به سبد خرید اضافه شد';
>>>>>>> bcc075e5bd04b13c054b5280a275e0a4e6cde312
        }
        catch(PDOException $e){
            $_SESSION['error'] = $e->getMessage();
        }
    }

    $pdo->close();

    header('location: cart.php?user='.$id);
}

?>