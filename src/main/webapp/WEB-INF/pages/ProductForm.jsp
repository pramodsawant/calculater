<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html >
 
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
<head>
 

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>New/Edit Product</title>
</head>
<body>
    <div align="center">
        <h1>New/Edit Product</h1>
        <form:form action="saveProduct" method="post" modelAttribute="product" name="myform" onsubmit="return validateForm()">
        <table style="height: 618px; width: 511px" >
            <form:hidden path="id"/>
            <!-- vender name 
            
            <tr>
                <td>Vendor Name:</td>
                <td><form:input path="vendor_name"  id="vendor_name" placeholder="Your name.."/></td>
            </tr>
            
            -->
            
            
        
            
            
            <tr>
				<td><strong>Vendor Name :</strong></td>
				<td><form:select path="vendor_name" id="vendorname">
					  <form:option value="NONE" label="----- Select Vendor -----" />
					  <form:options items="${vname}" />
				       </form:select>
                               
				 
			</tr>
            
            
            <tr>
                <td> <strong>Batch:</strong></td>
                  
                <td><form:select path="Batch">
					  <form:option value="NONE" label="----- Select Batch -----" />
					  <form:options items="${Batch}" />
				       </form:select>
                
     
                
                 </td>
            </tr>
            <tr>
                <td> <strong>Milk Quaintly:</strong></td>
                <td><form:input path="milk_quaintly" id="milk_quaintly" /></td>
            </tr>
            
            
            
              <tr>
                <td> <strong>Fat:</strong></td>
                <td><form:input path="fat" id="fat"  /></td>
            </tr>
            <tr>
                <td><strong>Rate of Fat:</strong></td>
                <td><form:input path="rate_of_fat" id="rate_of_fat"  /></td>
              
            </tr>
            
           
            
            <tr>
                <td><strong>Per Liter:</strong></td>
                <td><form:input path="per_liter"  id="per_liter"/></td>
            </tr>
            
            <tr>
                <td><strong>Total:</strong></td>
                <td><form:input path="total" id="total" /></td>
            </tr>
            
            <tr>
                <td><strong>Advanced:</strong></td>
                <td><form:input path="advanced" id="advanced" /></td>
            </tr>
            
            <tr>
                <td><strong>Balance:</strong></td>
                <td><form:input path="balance" id="balance" /></td>
            </tr>
            <tr>
                <td colspan="2" align="center"><input type="submit" value="Save Without Calculate"  style="width: 509px;" ></td>
            </tr>
             
        </table>
         <input type="submit" value="Calculate And Save"  style="width: 509px;" onclick="cal()">
         
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
         
         function validateForm() {
        	  
        	 
      	   var m = document.getElementById("milk_quaintly").value;
      	   if (isNaN(m) || m== "0" || m=="") {
      	     alert("Kindly put only number Milk Quaintly");
      	     return false;
      	   }
      	   
      	   var f = document.getElementById("fat").value;
      	   if (isNaN(f) || f=="0" || f =="") {
      		 alert("Kindly put only number in Fat");
      	     return false;
      	   }
      	   
      	   var r = document.getElementById("rate_of_fat").value;
      	   if ( isNaN(r) || r=="0" || r=="") {
      	     alert("Kindly put only number in Rate of Fat");
      	     return false;
      	   } 
      	   
      	  
      	   
      	 }
         
         
</script>
</body>
</html>
