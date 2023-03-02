package com.malefashion.admin.dao;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.malefashion.admin.mapper.LoaiMapper;
import com.malefashion.admin.mapper.WatchMapper;
import com.malefashion.admin.entity.LoaiModel;
import com.malefashion.admin.entity.WatchModel;



@Repository
@Transactional
public class LoaiDAO extends JdbcDaoSupport{
	@Autowired
    public LoaiDAO(DataSource dataSource) {
        this.setDataSource(dataSource);
    }
	 public int getMaxId() {
	        String sql = "Select max(d.maloai) from loai d";
	 
	        Integer value = this.getJdbcTemplate().queryForObject(sql, Integer.class);
	        if (value == null) {
	            return 0;
	        }
	        return value;
	    }
	public void insertLoai( String tenloai)
    {
        String sql = "Insert into loai (maloai,tenloai) "//
                + " values (?,?) ";
        int maloai = this.getMaxId() + 1;
        Object[] params = new Object[] {maloai, tenloai };
        this.getJdbcTemplate().update(sql, params);
    }
	public List<LoaiModel> listAllLoai() {
        String sql = "Select * from loai b ";
        
 
        Object[] params = new Object[] {};
        LoaiMapper mapper = new LoaiMapper();
 
        List<LoaiModel> list = this.getJdbcTemplate().query(sql, params, mapper);
        return list;
    }
	public void deleteLoai(int maloai) {
        String sql1 = "DELETE FROM loai where maloai= "+maloai; 
        String sql2 = "DELETE FROM watch where maloai= "+maloai; 
        
        Object[] params = new Object[]{};
        this.getJdbcTemplate().update(sql1, params);
        this.getJdbcTemplate().update(sql2, params);

    }
	
}
