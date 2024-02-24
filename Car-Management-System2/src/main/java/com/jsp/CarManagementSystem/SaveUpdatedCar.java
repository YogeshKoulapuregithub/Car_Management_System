package com.jsp.CarManagementSystem;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

@WebServlet("/saveUpdatedCar")
public class SaveUpdatedCar extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int carId=Integer.parseInt(req.getParameter("carId"));
		String carModel=req.getParameter("carModel");
		String carBrand=req.getParameter("carName");
		int carPrice=Integer.parseInt(req.getParameter("carPrice"));
		Car car=new Car();
		car.setCarId(carId);
		car.setCarModel(carModel);
		car.setCarName(carBrand);
		car.setCarPrice(carPrice);

		Configuration cfg=new Configuration().configure().addAnnotatedClass(Car.class);
		SessionFactory sf = cfg.buildSessionFactory();
		Session session = sf.openSession();
		Transaction transaction = session.beginTransaction();

		session.update(car);

		Query query = session.createQuery("FROM Car");
		List<Car> cars = query.list();

		req.setAttribute("carList", cars);
		RequestDispatcher requestDispatcher = req.getRequestDispatcher("DisplayCar.jsp");
		requestDispatcher.forward(req, resp);

	}

}
