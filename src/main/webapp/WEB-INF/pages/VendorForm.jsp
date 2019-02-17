<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
input[type=text], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

td {
 
  text-align: left;
  font-size ="9";
  color ="Green"
  
  padding: 8px;
  
}
input[type=submit] {
  width: 100%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}

div {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
</style>


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>New/Edit Contact</title>
</head>
<body>
    <div align="center">
        <h1>  New/Edit Vendor</h1>
        <form:form action="saveVendor" method="post" modelAttribute="vendor" onsubmit="return validateForm()">
        <table>
            <form:hidden path="id"/>
            <tr>
                <td>Name:</td>
                <td><form:input path="name"   placeholder="Enter Name.."  required="required"/></td>
            </tr>
            <tr>
                <td>Email:</td>
                <td><form:input path="email"  placeholder="Enter Email.." required="required"/></td>
            </tr>
            <tr>
                <td>Address:</td>
                <td><form:input path="address"  placeholder="Enter Address.." required="required"/></td>
            </tr>
            <tr>
                <td>Telephone:</td>
                <td><form:input path="telephone"  placeholder="Enter Telephone.." required="required"/></td>
            </tr>
            <tr>
                <td colspan="2" align="center"><input type="submit" value="Save"></td>
            </tr>
        </table>
        </form:form>
    </div>
    
    <script type="text/javascript">
    function validateForm() {
    	   var n = document.getElementById("name").value;
    	   if (n == "") {
    	     alert("Name must be filled out");
    	     return false;
    	   }
    	   
    	   var t = document.getElementById("telephone").value;
    	   if (t == "") {
    	     alert("telephone must be filled out");
    	     return false;
    	   }
    	   
    	   var a = document.getElementById("address").value;
    	   if (a == "") {
    	     alert("Address must be filled out");
    	     return false;
    	   } 
    	   
    	   var e = document.getElementById("email").value;
    	   if (e == "") {
    	     alert("email must be filled out");
    	     return false;
    	   }
    	   
    	 }
   
	 
    
    </script>
</body>
</html>
