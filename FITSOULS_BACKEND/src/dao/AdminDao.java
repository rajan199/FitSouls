package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import beans.AdminBean;
import util.MainUtil;

public class AdminDao {
	
public static AdminBean CheckLogin(AdminBean s) {
		
		AdminBean s1=null;
		try {
			
			Connection conn=MainUtil.CreateCon();
			String sql="select * from admin_tbl where username=? and password=?";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setString(1, s.getUname());
			pst.setString(2, s.getPass());
			ResultSet rs=pst.executeQuery();
			
			if(rs.next()) {
				s1=new AdminBean();
				s1.setId(rs.getInt("aid"));
				s1.setUname(rs.getString("username"));
				s1.setPass(rs.getString("password"));
			}
		} catch (Exception e) {
			// TODO: handle exception
		e.printStackTrace();
		}
		
		return s1;
	}

}
