<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ page import="com.jsp.CarManagementSystem.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>update car info</title>
</head>
<body>
    <% Car car =(Car) request.getAttribute("car"); %>
	<form action="saveUpdatedCar" method="post">
                <h2>Update Car Details</h2>
		<input type="number" name="carId" value="<%=car.getCarId()%>" readonly="true"> <br>
		<input type="text" name="carModel" value="<%=car.getCarModel()%>"><br>
		<input type="text" name="carName" value="<%=car.getCarName()%>"><br>
		<input type="text" name="carPrice" value="<%=car.getCarPrice()%>"><br>
		<input type="submit" value="Update">
	</form>
</body>
</html>
