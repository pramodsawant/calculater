<!DOCTYPE html>
 <html>
 <style>
 
form {
align-items: "center"
}
input[type=submit] {
  width: 10%;
  background-color: #4CAF50;
  color: white;
  padding: 10px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  font-size: 20px;
}

input[type=submit]:hover {
  background-color: #45a049;
}

div {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
form
{
    align:"center";
}
</style>
 
 <head>
 <meta charset="ISO-8859-1">
 <title>Insert title here</title>
 </head>
 <body>

 
 
 <form action="login" method="post" >
 
 <strong >Enter username </strong> :<input type="text" name="username" placeholder="Enter Username" required="required"> <br>
 <strong >Enter password </strong> :<input type="password" name="password" placeholder="Enter Password" required="required"><br>
 <input type="submit" value="Login">
 
 
 </form>
 
 </body>
 </html>
