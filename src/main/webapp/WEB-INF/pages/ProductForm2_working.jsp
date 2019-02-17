<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
 
<head>
 

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>New/Edit Product</title>
</head>
<body>
    <div align="center">
        <h1>New/Edit Product</h1>
        <form:form action="saveProduct" method="post" modelAttribute="product" name="myform">
        <table>
            <form:hidden path="id"/>
            
            
            <tr>
                <td>Vendor Name:</td>
                <td><form:input path="vendor_name"  id="vendor_name" /></td>
            </tr>
            
            
            
            <tr>
                <td>Batch:</td>
                <td>  
                <select name="Batch">
 <option value=" ">Select Batch</option>
  <option value="Morning">Morning</option>
  <option value="Afternoon">Afternoon</option>
  <option value="Evening">Evening</option>
 
</select>
                
                 </td>
            </tr>
            <tr>
                <td>Milk_quaintly:</td>
                <td><form:input path="milk_quaintly" id="milk_quaintly" /></td>
            </tr>
            
              <tr>
                <td> fat:</td>
                <td><form:input path="fat" id="fat" /></td>
            </tr>
            <tr>
                <td>rate_of_fat:</td>
                <td><form:input path="rate_of_fat" id="rate_of_fat"/></td>
            </tr>
            
            <tr>
                <td>per_liter:</td>
                <td><form:input path="per_liter"  id="per_liter"/></td>
            </tr>
            
            <tr>
                <td>total:</td>
                <td><form:input path="total" id="total" /></td>
            </tr>
            
            <tr>
                <td>advanced1:</td>
                <td><form:input path="advanced" id="advanced" /></td>
            </tr>
            
            <tr>
                <td>balance:</td>
                <td><form:input path="balance" id="balance"/></td>
            </tr>
            <tr>
                <td colspan="2" align="center"><input type="submit" value="Save"></td>
            </tr>
             
        </table>
         <input type="button" onclick="cal()" value="Calculate ">
         
         
        </form:form>
        
 
    </div>
         <script type="text/javascript">
         function cal() 
         { 
         	 document.getElementById("per_liter").value = per_litr = document.getElementById("fat").value * document.getElementById("rate_of_fat").value;
         	 document.getElementById("total").value =  document.getElementById("per_liter").value * document.getElementById("milk_quaintly").value;
         	 if (document.getElementById("advanced").value== null) {
         		   document.getElementById("balance").value = document.getElementById("total").value
         	} else {
         		document.getElementById("balance").value =  document.getElementById("total").value - document.getElementById("advanced").value
         	}
         }
</script>
</body>
</html>
