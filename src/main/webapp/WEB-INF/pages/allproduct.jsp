<%@page contentType="text/html" pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd" >
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 
<html>
<head>
<style>
table {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  border: 1px solid black;
  width: 100%;
}

table td, table th {
  border: 1px solid black;
  padding: 8px;
}

table tr:nth-child(even){background-color: #f2f2f2;}

table tr:hover {background-color: #ddd;}

table th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #4CAF50;
  color: white;
}
</style>
  

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Product Buy Entry</title>
</head>
<body>
    <div align="center">
        <h1>Product List</h1>
        <h3>
            <a href="newProduct">New Product</a>
        </h3>
        <table>
 
            <th>ID</th>
            <th>Vendor Name</th>
            <th>Batch</th>
            <th>Milk Quaintly</th>
            <th>Fat</th>
            <th>Rate_of_fat</th>
            <th>Per Liter</th>
            <th>Total</th>
             <th>Advanced</th>
              <th>Balance</th>
              <th>Edit</th>
              <th>Delete</th>
 
            <c:forEach var="product" items="${getallproducts}">
                <tr>
 
                    <td>${product.id}</td>
                    <td>${product.vendor_name}</td>
                    <td>${product.batch}</td>
                    <td>${product.milk_quaintly}</td>
                     <td>${product.fat}</td>
                    <td>${product.rate_of_fat}</td>
                    <td>${product.per_liter}</td>
                    <td>${product.total}</td>
                    <td>${product.advanced}</td>
                    <td>${product.balance}</td>
                    
                    <td><a href="editProduct?id=${product.id}">Edit</a></td>
                      <td>  <a href="deleteProduct?id=${product.id}">Delete</a></td>
 
                </tr>
            </c:forEach>
        </table>
    </div>
</body>
</html>
