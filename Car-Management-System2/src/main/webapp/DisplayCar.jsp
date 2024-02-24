<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.jsp.CarManagementSystem.*"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Car details</title>
</head>
<body>
	<% List<Car> cars=(List) request.getAttribute("carList"); %>
	<table border="">
		<tr>
			<th>Car Id</th>
			<th>Car Model</th>
			<th>Car Brand</th>
			<th>Car Price</th>
			<th>UPDATE</th>
			<th>DELETE</th>
		</tr>
		<%
     for(Car car:cars){
     %>
		<tr>
			<td><%=car.getCarId()%></td>
			<td><%=car.getCarModel() %></td>
			<td><%=car.getCarName()%></td>
			<td><%=car.getCarPrice()%></td>
			<td><a href="updateCar?carId=<%=car.getCarId()%>">Update</a></td>
			<td><a href="deleteCar?carId=<%=car.getCarId()%>">Delete</a></td>
		</tr>
		<%
     } 
     %>
	</table>
</body>
</html>