package com.mycompany.uomrmsweb.configuration;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;

@Configuration
@EnableWebSecurity
public class SecurityConfiguration extends WebSecurityConfigurerAdapter {

	@Autowired
	@Qualifier("customUserDetailsService")
	UserDetailsService userDetailsService;
	
	@Autowired
	public void configureGlobalSecurity(AuthenticationManagerBuilder auth) throws Exception {
		auth.userDetailsService(userDetailsService);
	}
	
//	@Override
//	protected void configure(HttpSecurity http) throws Exception {
//	  http.authorizeRequests()
//	  	.antMatchers("/", "/home").permitAll()
//	  	.antMatchers("/admin/**").access("hasRole('ADMIN')")
//                .antMatchers("/staff/**").access("hasRole('DBA')")
//                .antMatchers("/staff/**").access("hasRole('ADMIN') or hasRole('DBA')")
//                //.antMatchers("/staff/**").access("hasRole('ADMIN') and hasRole('DBA')")
//	  	.and().formLogin().loginPage("/login")
//	  	.usernameParameter("username").passwordParameter("password")
//	  	.and().csrf()
//	  	.and().exceptionHandling().accessDeniedPage("/Access_Denied");
//	}
        
        @Override
	protected void configure(HttpSecurity http) throws Exception {
	  http.authorizeRequests()
	  	.antMatchers("/", "/home").permitAll()
	  	.antMatchers("/admin/**").access("hasRole('SystemAdmin') or hasRole('ExaminationsStaff')")
	  	.antMatchers("/staff/**").access("hasRole('AcademicStaff') or hasRole('UniversityAdmin')")
                .antMatchers("/student/**").access("hasRole('Student')")  
	  	.and().formLogin().loginPage("/login")
	  	.usernameParameter("username").passwordParameter("password")
	  	.and().csrf()
	  	.and().exceptionHandling().accessDeniedPage("/Access_Denied");
	}
}
