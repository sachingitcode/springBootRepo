/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ils.security.config;

import com.ils.security.service.UserDetailsServiceImpl;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.Customizer;
import org.springframework.security.config.annotation.SecurityBuilder;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.WebSecurityConfigurer;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.web.SecurityFilterChain;
/**
 * @author maverick
 */
@Configuration
@EnableWebSecurity
public class WebSecurityConfig  {

    Logger logger = Logger.getLogger(WebSecurityConfig.class);
    @Autowired
    UserDetailsServiceImpl userDetailsService;

    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    @Autowired
    public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
        logger.info(" configureGlobal  : " + auth);
        auth.userDetailsService(userDetailsService).passwordEncoder(passwordEncoder());
    }

    protected void configure(HttpSecurity http) throws Exception {
        logger.info("http security  ");
//        http.csrf().disable();
//        // The pages does not require login
//        http.authorizeRequests().requestMatchers("/login", "/logout").permitAll();     //"/OnlineReceivePaymentPaytm/**"
//        // /userInfo page requires login as ROLE_USER or ROLE_ADMIN.
//        // If no login, it will redirect to /login page.
//        http.authorizeRequests().requestMatchers("/").access("hasAnyRole('ROLE_USER', 'ROLE_ADMIN')");
//        http.authorizeRequests().requestMatchers("/home").access("hasAnyRole('ROLE_USER', 'ROLE_ADMIN' , 'Admin' )");
//        // For ADMIN only.
//        http.authorizeRequests().requestMatchers("/admin").access("hasRole('ROLE_ADMIN')");
//        // When the user has logged in as XX.
//        // But access a page that requires role YY,
//        // AccessDeniedException will be thrown.
//        http.authorizeRequests()
//                .and()
//                .exceptionHandling().accessDeniedPage("/403")
//                .and()
//                .formLogin(Customizer.withDefaults())  //
//                .loginProcessingUrl("/j_spring_security_check") // Submit URL
//                .loginPage("/login")//
//                .defaultSuccessUrl("/home")//
//                .failureUrl("/login?error=true")//
//                .usernameParameter("username")//
//                .passwordParameter("password")
//                // Config for Logout Page
//                .and().logout()
//                .logoutUrl("/logout")
//                .deleteCookies("JSESSIONID")
//                .logoutSuccessUrl("/logoutSuccessful");

        // http session 
//        http.sessionManagement()
//                .sessionCreationPolicy(SessionCreationPolicy.IF_REQUIRED)
//                .maximumSessions(1)
//                .expiredUrl("/sessionExpired.html");
         //http.cors();
//        http
//                .cors()
//                .configurationSource(corsConfigurationSource())
//                .and()
//                .csrf()
//                .disable()
//                .authorizeRequests()
//                .anyRequest()
//                .authenticated()
//                .and()
//                .oauth2Login();

    }

}

//    @Bean
//    public BCryptPasswordEncoder passwordEncoder() {
//        BCryptPasswordEncoder bCryptPasswordEncoder = new BCryptPasswordEncoder();
//        logger.info("  : " + bCryptPasswordEncoder);
//        return bCryptPasswordEncoder;
//    }