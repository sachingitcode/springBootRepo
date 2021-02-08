/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ils.common.Login;

import com.fasterxml.jackson.databind.JsonNode;
import com.ils.common.controller.CommonJdbcUtil;
import java.sql.PreparedStatement;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

/**
 *
 * @author maverick
 */
@Service
public class LoginLdbcUtil {

    @Autowired
    private JdbcTemplate jdbcTemplate;
    @Autowired
    private PasswordEncoder passwordEncoder;
    @Autowired
    HttpServletRequest request;
    @Autowired
    HttpServletResponse response;

    final KeyHolder keyHolder = new GeneratedKeyHolder();
    Logger logger = Logger.getLogger(LoginLdbcUtil.class);

//    public void updateLoginDataUtil(JsonNode userData, String tableName, String id, HttpSession session) {
//        String QueryString = "INSERT INTO " + tableName + " ( jdoc , r_id , created_date , created_by)  VALUES (?,? , now() , " + session.getAttribute("userName") + " )  ON DUPLICATE KEY UPDATE jdoc = ?";      // insertUpdate
//       
//        
////        insertintoUSERS.CUSTOMER_PERSONAL_DETAILS.ROLE.USERS_ROLE.USER_PAGEMASTER_MAPPING()
//        
//        logger.info("Ok  : " + QueryString + "r_id for updateDataUtil: " + id);
//        try {
//            jdbcTemplate.update(QueryString, new Object[]{userData.toString(), id, userData.toString()});
//        } catch (Exception e) {
//            
//            e.printStackTrace();
//        }
//          
//    }
    public void updateLoginDataUtil(JsonNode userData, HttpServletRequest request, HttpSession session) {  //
//   String encPass=   getEncrypPassword(userData.get("password"));

        logger.info("nrml Paaswrd : : : " + userData.get("password"));
        String encPass = passwordEncoder.encode(userData.get("password").toString().replaceAll("\"", ""));
//         user.setPassword(passwordEncoder.encode(password));
        logger.info("encPass : : : " + encPass);
        String page_distinguisher = userData.get("role_type_id").toString().replaceAll("\"", "").equals("2") ? "  where  main_menu  = 'Loan Form'   " : " ";   //  it is hard coded , take it  form role_type table ; change in newUserPAge.html too
//        String encPass = "$2a$10$EblZqNptyYvcLm/VwDCVAuBjzZOI7khzdyGPBr08PpIi0na624b8.";
        String qry1 = " insert into USERS (username ,encrypted_password,created_date ,updated_date, role_type_id) "
                + "values( ? ,? , now() ,now() , ?     ) ";
        String qry2 = "insert into USERS_DETAILS (user_id) values( ?   ) ";
        String qry3 = " insert into USERS_ROLE (USER_ID , ROLE_ID ) values (? , ? )";
        String qry4 = "insert into USER_PAGEMASTER_MAPPING ( user_id , page_id )  select ? , pk from PAGE_MASTER " + page_distinguisher;

        logger.info(qry4);
        try {
//            jdbcTemplate.update(qry1);
//               jdbcTemplate.update(qry1, new Object[]{userData.get("username").toString().replaceAll("\"", ""), encPass, userData.get("role_type_id").toString().replaceAll("\"", "")}  , keyHolder);

            jdbcTemplate.update(
                    connection -> {
                        PreparedStatement ps = connection.prepareStatement(qry1, new String[]{"id"});
                        ps.setString(1, userData.get("username").toString().replaceAll("\"", ""));
                        ps.setString(2, encPass);
                        ps.setString(3, userData.get("role_type_id").toString().replaceAll("\"", ""));
                        return ps;
                    }, keyHolder);
            logger.info(" printing key ==> " + keyHolder.getKey());
            String userId = keyHolder.getKey().toString();

            jdbcTemplate.update(qry2, new Object[]{userId});
            jdbcTemplate.update(qry3, new Object[]{userId, userData.get("role_type_id").toString().replaceAll("\"", "")});
            jdbcTemplate.update(qry4, new Object[]{userId});
        } catch (Exception e) {
            logger.error(e.getMessage());
            e.printStackTrace();
        }

    }

}
