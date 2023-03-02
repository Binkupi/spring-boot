package com.malefashion.admin.mapper;

import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.malefashion.admin.entity.BillModel;


public class BillMapper implements RowMapper<BillModel>{
	public static final String BASE_SQL = //
            "Select * "//
                    + " from bill b ";
	@Override
    public BillModel mapRow(ResultSet rs, int rowNum) throws SQLException {
        Integer id = rs.getInt("id");
		Integer id_customer = rs.getInt("id_customer");
		Date date = rs.getDate("date");
		String description = rs.getString("description");
 
        return new  BillModel(id,id_customer,date,description);
    }
}
