package com.malefashion.admin.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.malefashion.admin.entity.BillDetailModel;


public class BillDetailMapper implements RowMapper<BillDetailModel>{
	public static final String BASE_SQL = //
            "Select * "//
                    + " from detail_bill db ";
	
	@Override
    public BillDetailModel mapRow(ResultSet rs, int rowNum) throws SQLException {
        Integer id_bill = rs.getInt("id_bill");
		Integer id_watch = rs.getInt("id_watch");
		Integer amount = rs.getInt("amount");
		Integer total_price = rs.getInt("total_price");
		String pttt=rs.getString("pttt");
 
        return new  BillDetailModel(id_bill,id_watch,amount,total_price,pttt);
    }
}



