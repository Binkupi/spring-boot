package com.malefashion.admin.mapper;

import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.malefashion.admin.entity.BillModel;
import com.malefashion.admin.entity.ClientModel;

public class ClientMapper implements RowMapper<ClientModel>{
	public static final String BASE_SQL = //
            "Select * "//
                    + " from customer b ";
	@Override
    public ClientModel mapRow(ResultSet rs, int rowNum) throws SQLException {
        Integer id = rs.getInt("id");
		String name = rs.getString("name");
		String address = rs.getString("address");
		String phone = rs.getString("phone");
		String email = rs.getString("email");
 
        return new  ClientModel(id,name,address,phone,email,null,null);
    }
}
