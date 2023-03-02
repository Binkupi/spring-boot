package com.malefashion.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.web.authentication.rememberme.InMemoryTokenRepositoryImpl;
import org.springframework.security.web.authentication.rememberme.PersistentTokenRepository;

import com.malefashion.admin.service.MyDBAuthenticationService;

@Configuration
@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter{
	@Autowired
    private UserDetailsService userDetailsService;
 
   @Autowired
   MyDBAuthenticationService myDBauthenticationService;
   AdminWebsiteApplication appConfig = new AdminWebsiteApplication();
   @Autowired
   public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
  
       // Các User trong bộ nhớ (MEMORY).
 
//	   auth.userDetailsService(userDetailsService).passwordEncoder(appConfig.passwordEncoder());
 
   
       // Các User trong Database
       auth.userDetailsService(myDBauthenticationService);
 
   }
 
   @Override
   protected void configure(HttpSecurity http) throws Exception {
 
       http.csrf().disable();
  
       // Các trang không yêu cầu login
       http.authorizeRequests().antMatchers("/", "/donghonam","/donghonu", "/login").permitAll();
       http.authorizeRequests().antMatchers("/blog").permitAll();
       // Trang /adminInfo yêu cầu phải login với vai trò USER hoặc ADMIN.
       // Nếu chưa login, nó sẽ redirect tới trang /login.
       http.authorizeRequests().antMatchers("/admin/register","/admin/category-manage","/admin/category-manage","/admin/info-admin","/admin/change-password").access("hasAnyRole('ROLE_admin')");
       http.authorizeRequests().antMatchers("/admin/watchs","/admin/watchs/create","/admin/loai/create").access("hasAnyRole('ROLE_admin')");
       http.authorizeRequests().antMatchers("/admin/bill","/admin/preview/donghonam","/admin/preview/donghonu","/admin/list-product/**","/admin/bill/update/**","/admin/bill/**").access("hasAnyRole('ROLE_admin')");
 
  
       // Khi người dùng đã login, với vai trò XX.
       // Nhưng truy cập vào trang yêu cầu vai trò YY,
       // Ngoại lệ AccessDeniedException sẽ ném ra.
       http.authorizeRequests().and().exceptionHandling().accessDeniedPage("/403");
 
  
       // Cấu hình cho Login Form.
       http.authorizeRequests().and().formLogin()//
  
               // Submit URL của trang login
               .loginProcessingUrl("/j_spring_security_check") // Submit URL
               .loginPage("/login")//
               .defaultSuccessUrl("/admin/watchs")//
               .failureUrl("/login?error=true")//
               .usernameParameter("username")//
               .passwordParameter("password")
               
               // Cấu hình cho Logout Page.
               .and().logout().logoutUrl("/logout").logoutSuccessUrl("/logoutSuccessful");

        http.authorizeRequests().and() //
                .rememberMe().tokenRepository(this.persistentTokenRepository()) //
                .tokenValiditySeconds(1 * 24 * 60 * 60); // 24h
 
   }
   @Bean
    public PersistentTokenRepository persistentTokenRepository() {
        InMemoryTokenRepositoryImpl memory = new InMemoryTokenRepositoryImpl(); // Ta lưu tạm remember me trong memory (RAM). Nếu cần mình có thể lưu trong database
        return memory;
    }
}
