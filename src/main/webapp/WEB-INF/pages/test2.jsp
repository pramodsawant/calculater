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
<form action="saveProduct" method="post" modelAttribute="product" >
 
               
1st Number : <input path="firstNumber_new" id="firstNumber_new" /><br>
2nd Number: <input path ="secondNumber" id="secondNumber" /><br>
reslut : <input path ="result" id="result" /><br>


 2nd fat: <input path ="fat" id="fat" /><br>
 2nd rate_of_fat: <input path ="rate_of_fat" id="rate_of_fat" /><br>
 2nd per_liter: <input path ="per_liter" id="per_liter" /><br>
 2nd total: <input path ="total" id="total" /><br>


<input type="button" onClick="multiplyBy()" Value="Multiply" />
<input type="button" onClick="divideBy()" Value="Divide" />
<input type="button" onClick="cal()" Value="cal" />
</form>
<p>The Result is : <br>
<span id = "result"></span>
</p>
<script type="text/javascript">


function multiplyBy()
{
       res =  document.getElementById("firstNumber_new").value *  document.getElementById("secondNumber").value ;
       
     
       document.getElementById("result").value =   res;
}

function divideBy() 
{ 
	 document.getElementById("per_liter").value = per_litr = document.getElementById("fat").value * document.getElementById("rate_of_fat").value;
	 document.getElementById("total").value =  document.getElementById("per_liter").value * document.getElementById("milk_quaintly").value;
	 if (document.getElementById("advanced").value== null) {
		   document.getElementById("balance").value = document.getElementById("total").value
	} else {
		document.getElementById("balance").value =  document.getElementById("total").value - document.getElementById("advanced").value
	}
}

function cal()
{
	   per_litr = document.getElementById("fat").value * document.getElementById("rate_of_fat").value;
	   document.getElementById("per_liter").value = per_ltr
	   
	   total = document.getElementById("per_liter").value * document.getElementById("milk_quaintly").value
	   document.getElementById("total").value =   total 
	   
	   if (document.getElementById("advanced").value== null) {
		   document.getElementById("balance").value = document.getElementById("total").value
	} else {
		document.getElementById("balance").value =  document.getElementById("total").value - document.getElementById("advanced").value
	}
	   
}

</script>
</body>
</html>