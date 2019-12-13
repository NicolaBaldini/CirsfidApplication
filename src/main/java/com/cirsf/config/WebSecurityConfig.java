package com.cirsf.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {

  @Autowired
  private UserDetailsService userDetailsService;
  
  @Bean
  public BCryptPasswordEncoder passwordEncoder() {
    return new BCryptPasswordEncoder();
  };
  
  @Override
  protected void configure(AuthenticationManagerBuilder auth) throws Exception {
	
    auth.userDetailsService(userDetailsService).passwordEncoder(passwordEncoder());
    
  }
  @Override
  public void configure(WebSecurity web) throws Exception {
    web
      .ignoring()
         .antMatchers("/resources/**");
    web.ignoring().antMatchers("/home");
    web.ignoring().antMatchers("/activationFlow/**");
    web.ignoring().antMatchers("/registration");
    web.ignoring().antMatchers("/register");
    web.ignoring().antMatchers("/index");

  }

  @Override
  protected void configure(HttpSecurity http) throws Exception {
    http.authorizeRequests().anyRequest().hasAnyRole("ADMIN","USER","PROV")
    .and()
    .authorizeRequests().antMatchers("/login**").permitAll()
    .and()
    .formLogin().loginPage("/home").loginProcessingUrl("/loginAction").permitAll()
    .and()
    .formLogin().failureUrl("/login")
    .and()
    .formLogin().successForwardUrl("/index")
    .and()
    .logout().logoutSuccessUrl("/login").permitAll()
    .and()
    .csrf().disable();
  }
  
}








