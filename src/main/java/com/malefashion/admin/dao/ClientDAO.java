package com.malefashion.admin.dao;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.malefashion.admin.mapper.BillDetailMapper;
import com.malefashion.admin.mapper.ClientMapper;
import com.malefashion.admin.mapper.WatchMapper;
import com.malefashion.admin.entity.BillDetailModel;
import com.malefashion.admin.entity.ClientModel;
import com.malefashion.admin.entity.WatchModel;

@Repository
@Transactional
public class ClientDAO extends JdbcDaoSupport{
	@Autowired
    public ClientDAO(DataSource dataSource) {
        this.setDataSource(dataSource);
    }
	public int getMaxClientId() {
	       String sql = "Select max(d.id) from customer d";

	       Integer value = this.getJdbcTemplate().queryForObject(sql, Integer.class);
	       if (value == null) {
	           return 0;
	       }
	       
	       System.out.println(value);
	       return value;
	       
	   }

    public void InsertClient(int id, String name,String address,String phone,String email) {
   	 String sql = "Insert into customer (id,name, address, phone,email) "//
                + " values (?,?,?,?,?) ";
        Object[] params = new Object[] { id,name, address, phone,email };
        this.getJdbcTemplate().update(sql, params);
   }
    public int getIdCustomer(int id) {
        String sql = "Select id_customer from bill d where id="+id;
 
        Integer value = this.getJdbcTemplate().queryForObject(sql, Integer.class);
        if (value == null) {
            return 0;
        }
        return value;
    }
    public ClientModel getClientInBill(int id) {
    	int id_customer=getIdCustomer(id);
        String sql = "Select * from customer where id="+id_customer;
        Object[] params = new Object[] {};
        ClientMapper mapper = new ClientMapper();
        ClientModel client = this.getJdbcTemplate().queryForObject(sql, params, mapper);
        return client;
        }
}
