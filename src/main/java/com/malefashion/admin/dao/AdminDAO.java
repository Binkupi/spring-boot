package com.malefashion.admin.dao;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.malefashion.admin.mapper.AdminMapper;
import com.malefashion.admin.entity.AdminModel;


@Repository
@Transactional
public class AdminDAO extends JdbcDaoSupport {
	@Autowired
    public AdminDAO(DataSource dataSource) {
        this.setDataSource(dataSource);
    }
	
	//chức năng tạo ra id khác
    public int getMaxId() {
        String sql = "Select max(c.id) from admin c";
 
        Integer value = this.getJdbcTemplate().queryForObject(sql, Integer.class);
        if (value == null) {
            return 0;
        }
        return value;
    }
	
    public List<AdminModel> login() {
        String sql = "SELECT * FROM admin ";
        
        Object[] params = new Object[] {};
        AdminMapper mapper = new AdminMapper();
 
        List<AdminModel> list = this.getJdbcTemplate().query(sql, params, mapper);
        return list;
    }
    
    public List<AdminModel> register() {
        String sql = "SELECT * FROM admin ";
        
        Object[] params = new Object[] {};
        AdminMapper mapper = new AdminMapper();
 
        List<AdminModel> list = this.getJdbcTemplate().query(sql, params, mapper);
        return list;
    }
    
    public void insertUser(String name,String address,String phone ,String password,String email)
    {
        String sql = "Insert into admin (name,address,phone,password,email,role,active) "//
                + " values (?,?,?,?,?,?,0) ";
        String role ="admin";
        Object[] params = new Object[] {name,address,phone,password,email,role };
        this.getJdbcTemplate().update(sql, params);
    }
    
    public AdminModel getUser(String password,String email)
    {
		String sql = "SELECT * FROM admin WHERE admin.email='"+email+"' ";
		        
		AdminModel user = getJdbcTemplate().queryForObject(sql,new AdminMapper());
		        return user;
    }
 
    public String getUserRole(String email) {
    
        String sql = "Select role from admin where email='"+email+"'";
        
        String value = this.getJdbcTemplate().queryForObject(sql, String.class);
        if (value == null) {
            return "";
        }
        return value;
    }
    public AdminModel findUserInfo(String email) {
        String sql = "Select *"
                + " from admin u where u.email = '"+email+"' and u.active=1";;
 
        Object[] params = new Object[] {  };
        AdminMapper mapper = new  AdminMapper();
        try {
        	AdminModel userInfo = this.getJdbcTemplate().queryForObject(sql, params, mapper);
            return userInfo;
        } catch (EmptyResultDataAccessException e) {
            return null;
        }
    }
    public int findEmail(String email) {
        
        String sql = "Select count(*) from admin where email='"+email+"'";
        
        int value = this.getJdbcTemplate().queryForObject(sql, Integer.class);
        if (value == 0) {
            return 0;
        }
        return 1;
    }
    public void changePassword(String email,String password)
    {
        String sql = "update admin set password='"+password+"'  where email = '"+email+"' ";
        Object[] params = new Object[]{};
        this.getJdbcTemplate().update(sql, params);
    }
    public void changeActiveAdmin(String email)
    {
        String sql = "update admin set active=1 where email = '"+email+"' ";
        Object[] params = new Object[]{};
        this.getJdbcTemplate().update(sql, params);
    }
    public String getNameAdmin(String email) {
        String sql = "Select name from admin d where email='"+email+"'";
 
        String value = this.getJdbcTemplate().queryForObject(sql, String.class);
        if (value == null) {
            return "";
        }
        return value;
    }
    
}
