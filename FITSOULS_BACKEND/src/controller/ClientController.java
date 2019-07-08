package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

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
			cb.setStatus(request.getParameter("status"));
			cb.setPayment(Integer.parseInt(request.getParameter("payment")));
			/*cb.setBslot(request.getParameter("bslot"));
			cb.setLslot(request.getParameter("lslot"));
			cb.setDslot(request.getParameter("dslot"));*/
			//String[] bld=request.getParameterValues("bld");
			List<String> bld=new ArrayList<String>();
			List<String> slot=new ArrayList<String>();
			HashMap<String,String> allData=new HashMap<String,String>();
			if(request.getParameter("bld1")!=null) {
				bld.add(request.getParameter("bld1"));
				slot.add(request.getParameter("bslot"));
				allData.put(request.getParameter("bld1"), request.getParameter("bslot"));
			
			}
			if(request.getParameter("bld2")!=null) {
				bld.add(request.getParameter("bld2"));
				slot.add(request.getParameter("lslot"));
				allData.put(request.getParameter("bld2"), request.getParameter("lslot"));
			}
			if(request.getParameter("bld3")!=null) {
				bld.add(request.getParameter("bld3"));
				slot.add(request.getParameter("dslot"));
				allData.put(request.getParameter("bld3"), request.getParameter("dslot"));	
			}
			
		//	allData.put("bld", bld);
		//	allData.put("slot",slot);
			//ClientDao.AddClient(cb, bld,slot);
			ClientDao.AddClient(cb, allData);
			
			response.sendRedirect("addclient.jsp");
			
		}
		
	}

}
