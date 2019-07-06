package controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.ClientBean;
import dao.ClientDao;
import jdk.nashorn.internal.ir.RuntimeNode.Request;


@WebServlet("/ClientController")
public class ClientController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String btn=request.getParameter("action");
		ClientBean cb=new ClientBean();
		if(btn.equalsIgnoreCase("Add")){
			cb.setCname(request.getParameter("cname"));
			cb.setAddress(request.getParameter("address"));
			cb.setContact(request.getParameter("contact"));
			cb.setEmail(request.getParameter("email"));
			cb.setPlan_start(request.getParameter("sdate"));
			cb.setPlan_end(request.getParameter("edate"));
			cb.setMealtype(request.getParameter("mealtype"));
			cb.setPayment(Integer.parseInt(request.getParameter("payment")));
			/*cb.setBslot(request.getParameter("bslot"));
			cb.setLslot(request.getParameter("lslot"));
			cb.setDslot(request.getParameter("dslot"));*/
			String[] bld=request.getParameterValues("bld");
			String[] slot=request.getParameterValues("slot");
			ClientDao.AddClient(cb, bld);
			response.sendRedirect("addclient.jsp");
			
		}
		
	}

}
