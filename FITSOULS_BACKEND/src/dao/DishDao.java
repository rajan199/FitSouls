package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import beans.DishBean;
import beans.IngridientsBean;
import util.MainUtil;

public class DishDao {
	public static void AddDish(DishBean db){
		
		try {
					
					Connection conn=MainUtil.CreateCon();
					String sql="insert into dish_master(dish_name, dish_type) values(?, ?)";
					PreparedStatement pst=conn.prepareStatement(sql);
					pst.setString(1, db.getDishname());
					pst.setString(2, db.getDishtype());
					pst.executeUpdate();
				
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
	}
	
public static void AddIngridient(IngridientsBean ib){
		
		try {
					
					Connection conn=MainUtil.CreateCon();
					String sql="insert into ingridients_tbl(ingri_name, unit) values(?, ?)";
					PreparedStatement pst=conn.prepareStatement(sql);
					pst.setString(1, ib.getName());
					pst.setString(2, ib.getUnit());
					pst.executeUpdate();
				
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
	}
}
