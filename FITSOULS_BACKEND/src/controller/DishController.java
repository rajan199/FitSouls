package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.DishBean;
import beans.IngridientsBean;
import dao.DishDao;

@WebServlet("/DishController")
public class DishController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String btn=request.getParameter("action");
		DishBean db=new DishBean();
		IngridientsBean ib=new IngridientsBean();
		if(btn.equalsIgnoreCase("Add")){
			db.setDishname(request.getParameter("dishname"));
			db.setDishtype(request.getParameter("mealtype"));
			DishDao.AddDish(db);
			response.sendRedirect("adddishes.jsp");
			
		}
		else if(btn.equalsIgnoreCase("Add Ingridient")){
			ib.setName(request.getParameter("iname"));
			ib.setUnit(request.getParameter("unit"));
			DishDao.AddIngridient(ib);
			response.sendRedirect("addingridients.jsp");
			
		}
	}

}
