package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;
import java.util.Map;

import beans.ClientBean;
import beans.ClientToBldBean;
import util.MainUtil;

public class ClientDao {
	
	public static void AddClient(ClientBean cb,Map<String,String> allData){
		ClientToBldBean ctb=null;
		ClientBean c=null;
		try {
			
				Connection conn=MainUtil.CreateCon();
				String sql="insert into client_tbl(client_name, address, contact, plan_start, plan_end, payment, meal_type, email) values(?, ?, ?, ?, ?, ?, ?, ?)";
				PreparedStatement pst=conn.prepareStatement(sql);
				pst.setString(1, cb.getCname());
				pst.setString(2, cb.getAddress());
				pst.setString(3, cb.getContact());
				pst.setString(4, cb.getPlan_start());
				pst.setString(5, cb.getPlan_end());
				pst.setInt(6, cb.getPayment());
				pst.setString(7, cb.getMealtype());
				pst.setString(8, cb.getEmail());
				pst.executeUpdate();
				
				String sql2="select * from client_tbl where email=?";
				PreparedStatement pst2=conn.prepareStatement(sql2);
				pst2.setString(1, cb.getEmail());
				ResultSet rs=pst2.executeQuery();
				if(rs.next()){
				//	ctb=new ClientToBldBean();
			//		ctb.setCid(rs.getInt("client_id"));
					//ctb.setBldid(s);
					
//					for(String ss:s){
//						
//						String sql3="insert into client_to_bld(cid, bldid) values(?, ?)";
//						PreparedStatement pst3=conn.prepareStatement(sql3);
//						//pst3.setInt(1, ctb.getCid());
//						pst3.setInt(1, rs.getInt("client_id"));
//						pst3.setInt(2, Integer.parseInt(ss));
//						pst3.executeUpdate();
//					}
					for(Map.Entry<String, String> entry:allData.entrySet()) {
						String sql3="insert into client_to_bld(cid,bldid,slot_id) values(?,?,?)";
						PreparedStatement pst3=conn.prepareStatement(sql3);
						pst3.setInt(1, rs.getInt("client_id"));
						pst3.setInt(2, Integer.parseInt(entry.getKey()));
						pst3.setInt(3, Integer.parseInt(entry.getValue()));
						pst3.executeUpdate();
					}
					
					
				}
				
				
			}
		catch(Exception e){
			e.printStackTrace();
		}


}
	public static void AddClientToBld(ClientBean cb,List<String> s){
		ClientToBldBean ctb=null;
		try {
			
				Connection conn=MainUtil.CreateCon();
				String sql2="select * from client_tbl where email=?";
				PreparedStatement pst2=conn.prepareStatement(sql2);
				pst2.setString(1, cb.getEmail());
				ResultSet rs=pst2.executeQuery();
				if(rs.next()){
					ctb=new ClientToBldBean();
					ctb.setCid(rs.getInt("client_id"));
					ctb.setBldid(s);
					for(String ss:s){
						String sql3="insert into client_to_bld(cid, bldid) values(?, ?)";
						PreparedStatement pst3=conn.prepareStatement(sql3);
						pst3.setInt(1, rs.getInt("client_id"));
						pst3.setInt(2, Integer.parseInt(ss));
						pst3.executeUpdate();
					}
					
				}
				
				
			}
		catch(Exception e){
			e.printStackTrace();
		}


}
}

	
