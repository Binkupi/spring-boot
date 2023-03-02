package com.malefashion.admin.mapper;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.malefashion.admin.entity.WatchModel;

public class WatchMapper implements RowMapper<WatchModel>{
	public static final String BASE_SQL = //
            "Select * "//
                    + " from watch b ";
 
    @Override
    public WatchModel mapRow(ResultSet rs, int rowNum) throws SQLException {
        Integer id = rs.getInt("id");
        String name = rs.getString("name");
		String gender=String.valueOf(rs.getInt("gender"));
		 int price =rs.getInt("price") ;
		 int sale =rs.getInt("sale") ;
		 String size=String.valueOf(rs.getInt("size"));
		 String color=rs.getString("color");
		  String chain=rs.getString("chain");
		  String img=rs.getString("img");
		 int checked =rs.getInt("checked");
		 String maloai =String.valueOf(rs.getInt("maloai"));
		 int soluong =rs.getInt("soluong");
		 String description =rs.getString("description");
		 CommonsMultipartFile fileData=null;
 
        return new  WatchModel(id,gender, name, price,sale,size,color,chain,img,checked,soluong,maloai,description, fileData);
    }
}
