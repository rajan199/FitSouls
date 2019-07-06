package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.AdminBean;
import dao.AdminDao;

@WebServlet("/AdminController")
public class AdminController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		AdminBean ab=new AdminBean();
		PrintWriter out=response.getWriter();
		String btn=request.getParameter("action");
		if(btn.equalsIgnoreCase("Log In")){
			ab.setUname(request.getParameter("uname"));
			ab.setPass(request.getParameter("password"));
			AdminBean s1=AdminDao.CheckLogin(ab);
			if(s1==null) {
				out.println("wrong email id and password");
				request.getRequestDispatcher("login.jsp").include(request, response);
				
			}else {
				HttpSession session=request.getSession();
				session.setAttribute("s1", s1);
				request.getRequestDispatcher("index.jsp").forward(request, response);
				
			}
			
		}
		
	}

}
