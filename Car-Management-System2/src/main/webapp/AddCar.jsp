<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add car details</title>
</head>
<body>
	<form action="addCar" method="post">
	<input type="number" placeholder="enter car Id" name="carId"><br>
	<input type="text" placeholder="enter car model" name="carModel"><br>
	<input type="text" placeholder="enter car brand" name="carBrand"><br>
	<input type="number" placeholder="enter car price" name="carPrice"><br>
	<input type="submit" value="add">
	</form>
     
</body>
</html>