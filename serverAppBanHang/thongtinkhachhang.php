<?php
include "connect.php";
$tenkhachhang = $_POST['tenkhachhang'];
$sodienthoai = $_POST['sodienthoai'];
$email = $_POST['email'];
$diachi=$_POST['diachi'];
if (strlen($tenkhachhang)>0 && strlen($sodienthoai)>0 && strlen($email)>0 && strlen($diachi)>0) {
    $query = "INSERT INTO donhang(id,tenkhachhang,sodienthoai,email,diachi) VALUES (null,'$tenkhachhang','$sodienthoai','$email','$diachi')";
    if(mysqli_query($conn,$query)){
        $iddonhang = $conn->insert_id;
        echo $iddonhang;
    }else{
        echo "that bai";
    }
}else{
    echo "ban kiem tra lai du lieu";
}
?>