<?php
$conn = new mysqli(
    "localhost",
    "root",
    "test@123",
    "order_db"
);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
$sql = "SELECT * FROM orders ORDER BY id DESC";
$result = $conn->query($sql);
if (!$result) {
    die("Query failed: " . $conn->error);
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Order Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 20px;
        }
        h1 {
            text-align: center;
        }
        .container {
            width: 95%;
            margin: 30px auto;
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 8px gray;
            overflow-x: auto;
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th {
            background-color: #333;
            color: white;
            padding: 12px;
        }
        td {
            border: 1px solid #ccc;
            padding: 10px;
            text-align: center;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        .new-order {
            display: block;
            width: 200px;
            margin: 20px auto;
            padding: 12px;
            text-align: center;
            background-color: green;
            color: white;
            text-decoration: none;
            border-radius: 8px;
        }

        .new-order:hover {
            background-color: darkgreen;
        }
    </style>
</head>
<body>
<h1>Order Details</h1>
<a href="index.html" class="new-order">
    Place New Order
</a>
<div class="container">
<table>
    <tr>
        <th>ID</th>
        <th>Customer Name</th>
        <th>Email</th>
        <th>Phone</th>
        <th>Address</th>
        <th>Product Name</th>
        <th>Quantity</th>
        <th>Price</th>
        <th>Payment Method</th>
    </tr>
<?php
if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
?>
    <tr>
        <td>
            <?php echo htmlspecialchars($row["id"]); ?>
        </td>
        <td>
            <?php echo htmlspecialchars($row["customer_name"]); ?>
        </td>
        <td>
            <?php echo htmlspecialchars($row["email"]); ?>
        </td>
        <td>
            <?php echo htmlspecialchars($row["phone"]); ?>
        </td>
        <td>
            <?php echo htmlspecialchars($row["address"]); ?>
        </td>
        <td>
            <?php echo htmlspecialchars($row["product_name"]); ?>
        </td>
        <td>
            <?php echo htmlspecialchars($row["quantity"]); ?>
        </td>
        <td>
            ₹<?php echo number_format($row["price"], 2); ?>
        </td>
        <td>
            <?php echo htmlspecialchars($row["payment_method"]); ?>
        </td>
    </tr>
<?php
}
} else {
?>
    <tr>
        <td colspan="10">
            No orders found
        </td>
    </tr>
<?php
}
?>
</table>
</div>
</body>
</html>
<?php
$conn->close();
?>
