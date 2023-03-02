package com.malefashion.admin.mapper;


import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;


import com.malefashion.admin.entity.LoaiModel;

public class LoaiMapper implements RowMapper<LoaiModel>{
	public static final String BASE_SQL = //
            "Select * "//
                    + " from loai b ";
	@Override
    public LoaiModel mapRow(ResultSet rs, int rowNum) throws SQLException {
        Integer maloai = rs.getInt("maloai");
		String tenloai = rs.getString("tenloai");
        return new  LoaiModel(maloai,tenloai);
    }
}
