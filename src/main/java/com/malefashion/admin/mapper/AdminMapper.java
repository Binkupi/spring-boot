package com.malefashion.admin.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.malefashion.admin.entity.AdminModel;


public class AdminMapper  implements  RowMapper<AdminModel>{
	public static final String BASE_SQL = //
            "Select * "//
                    + " from admin c ";
	@Override
    public AdminModel mapRow(ResultSet rs, int rowNum) throws SQLException {
		String name = rs.getString("name");
		String address = rs.getString("address");
		String phone = rs.getString("phone");
		String email = rs.getString("email");
		String password = rs.getString("password");
		String role = rs.getString("role");
		int active= rs.getInt("active");
 
        return new  AdminModel(name,address,phone,password,email,role,active);
    }
}

