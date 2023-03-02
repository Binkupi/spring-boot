package com.malefashion.admin.dao;

import java.sql.Date;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Description;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.malefashion.admin.mapper.BillMapper;
import com.malefashion.admin.mapper.WatchMapper;
import com.malefashion.admin.entity.BillModel;
import com.malefashion.admin.entity.WatchModel;


@Repository
@Transactional
public class BillDAO extends JdbcDaoSupport{
	@Autowired
    public BillDAO(DataSource dataSource) {
        this.setDataSource(dataSource);
    }
	public int getMaxBillId() {
        String sql = "Select max(d.id) from bill d";
 
        Integer value = this.getJdbcTemplate().queryForObject(sql, Integer.class);
        if (value == null) {
            return 0;
        }
        return value;
    }
    public List<BillModel> listAllBillWatch() {
        String sql = "SELECT * FROM bill ";
        
        Object[] params = new Object[] {};
        BillMapper mapper = new BillMapper();
 
        List<BillModel> list = this.getJdbcTemplate().query(sql, params, mapper);
        return list;
    }
             
    public List<BillModel> listAllBillDetailWatch() {
        String sql = "SELECT * FROM bill ";
        
        Object[] params = new Object[] {};
        BillMapper mapper = new BillMapper();
 
        List<BillModel> list = this.getJdbcTemplate().query(sql, params, mapper);
        return list;
    }
    
    public List<BillModel> updateBill(int id) {
        String sql = "SELECT * FROM bill WHERE bill.id="+id+" ";
        
        Object[] params = new Object[] {};
        BillMapper mapper = new BillMapper();
 
        List<BillModel> list = this.getJdbcTemplate().query(sql, params, mapper);
        return list;
    }
    
    public void editBill(int id,Date date,String description)
    {
        String sql = "update bill set description= '" + description + "' , date='" + date + "'   where bill.id = "+id+" ";
        Object[] params = new Object[]{};
        this.getJdbcTemplate().update(sql, params);
    }
    
    public void InsertBill(int id, int id_customer) {
    	 String sql = "Insert into bill (id,id_customer, date, description) "//
                 + " values (?,?,?,N'Dang xu ly') ";
    	 System.out.println(sql);
         Object[] params = new Object[] { id,id_customer,java.time.LocalDate.now() };
         this.getJdbcTemplate().update(sql, params);
    }
    public void productDeleteBill(int id) {
        String sql1 = "DELETE FROM bill where id= "+ id ; 
        String sql2 = "DELETE FROM detail_bill where id_bill= "+ id; 
        
        Object[] params = new Object[]{};
        this.getJdbcTemplate().update(sql1, params);
        this.getJdbcTemplate().update(sql2, params);
    
    }
 
    
}

