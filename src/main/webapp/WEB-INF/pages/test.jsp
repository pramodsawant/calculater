<!DOCTYPE html>
<html> 
<head>
<meta charset=utf-8 />
<title>JavaScript program to calculate multiplication and division of two numbers </title>
<style type="text/css">
body {margin: 30px;}
</style> 
</head>
<body>
<form:form action="saveProduct" method="post" modelAttribute="product">
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
                <td>advanced:</td>
                <td><form:input path="advanced" id="advanced"/></td>
            </tr>
            
            <tr>
                <td>balance:</td>
                <td><form:input path="balance" id="balance"/></td>
            </tr>
            <tr>
                <td colspan="2" align="center"><input type="submit" value="Save"></td>
            </tr>
             <tr>
                <td colspan="2" align="center"><input type="button" onclick="cal()" value="cal"></td>
            </tr>
        </table>
        </form:form>
<p>The Result is : <br>
<span id = "result"></span>
</p>
<script type="text/javascript">


function multiplyBy()
{
        num1 = document.getElementById("firstNumber").value;
        num2 = document.getElementById("secondNumber").value;
       num3 = num1 * num2;
       document.getElementById("result").value = num3;
}

function divideBy() 
{ 
        num1 = document.getElementById("firstNumber").value;
        num2 = document.getElementById("secondNumber").value;
document.getElementById("result").innerHTML = num1 / num2;
}


</script>
</body>
</html>