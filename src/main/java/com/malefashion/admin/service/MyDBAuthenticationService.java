package com.malefashion.admin.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.malefashion.admin.dao.AdminDAO;
import com.malefashion.admin.entity.AdminModel;

@Service
public class MyDBAuthenticationService implements UserDetailsService {
 
    @Autowired
    private AdminDAO userInfoDAO;
 
    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
    	AdminModel userInfo = userInfoDAO.findUserInfo(username);
        System.out.println("UserInfo= " + userInfo);
 
        if (userInfo == null) {
            throw new UsernameNotFoundException("User " + username + " was not found in the database");
        }
         
        // [USER,ADMIN,..]
        String role= userInfoDAO.getUserRole(username);
         
        List<GrantedAuthority> grantList= new ArrayList<GrantedAuthority>();
        if(role!= null)  {
                // ROLE_USER, ROLE_ADMIN,..
                GrantedAuthority authority = new SimpleGrantedAuthority("ROLE_" + role);
                grantList.add(authority);
        }        
         
        UserDetails userDetails = (UserDetails) new User(userInfo.getEmail(),//
                userInfo.getPassword(),grantList);
 
        return userDetails;
    }
     
}

