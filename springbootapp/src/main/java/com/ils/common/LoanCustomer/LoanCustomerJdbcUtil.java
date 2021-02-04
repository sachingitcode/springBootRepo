/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ils.common.LoanCustomer;

import com.fasterxml.jackson.databind.JsonNode;
import com.ils.common.controller.CommonJdbcUtil;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.log4j.Logger;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Service;

/**
 *
 * @author maverick
 */
@Service
public class LoanCustomerJdbcUtil {

    @Autowired
    private JdbcTemplate jdbcTemplate;

    @Autowired
    HttpServletRequest request;
    @Autowired
    HttpServletResponse response;

    final KeyHolder keyHolder = new GeneratedKeyHolder();
    Logger logger = Logger.getLogger(LoanCustomerJdbcUtil.class);

    public JSONObject saveDataUtil(JsonNode data, String tableName, String id, HttpSession session) {   //Edit
        JSONObject jsondata = new JSONObject();
        logger.info("tid " + id);
        String QueryString = "INSERT INTO " + tableName + " (jdoc,r_id ,created_by,created_date) values(?,?, '" + session.getAttribute("userNameId") + "' ,now())"; // sekect ka b dekho b bhai
        logger.info("query= " + QueryString + "  ; Data:  " + data.toString());
        jdbcTemplate.update(
                connection -> {
                    PreparedStatement ps = connection.prepareStatement(QueryString, new String[]{"id"});
                    ps.setString(1, data.toString());
                    ps.setString(2, id);
                    return ps;
                }, keyHolder);
        logger.info(" printing key ==> " + keyHolder.getKey());
        String r_id = keyHolder.getKey().toString();  // id of that row
        if (id.equals("0")) {
            logger.info("  Undefinez Vals");
            String queryListing = " UPDATE " + tableName + " SET r_id = ? WHERE id = ?";
            jdbcTemplate.update(queryListing, new Object[]{r_id, r_id});   // chceck if it has tid or     
            session.setAttribute("id", r_id);      //
        }
        jsondata.put("id", id);
        jsondata.put("r_id", r_id);
        jsondata.put("status", "true");
        return jsondata;
    }

    public void updateDataUtilnCustPrsnDtl(JsonNode userData, String tableName, String columnName, HttpSession session) {
        String qry = " update " + tableName + "  set " + columnName + " = ? , r_id = '" + session.getAttribute("userNameId") + "'  where user_id =  " + session.getAttribute("userNameId");
        logger.info(qry + " ::: " + userData.toString());
        try {
            jdbcTemplate.update(qry, new Object[]{userData.toString()});
        } catch (Exception e) {
            logger.error(e.getMessage());
            e.printStackTrace();
        }
    }

    public String findByRId(String clumnValue, String id) {
        String QueryString = "SELECT JSON_OBJECT( 'id', USERS_DETAILS.id, 'dt', USERS_DETAILS.jdoc" + clumnValue + " ) as jdoc   FROM USERS_DETAILS WHERE  USERS_DETAILS.r_id=? ";
        logger.info(QueryString + "  ID = " + id);
        return jdbcTemplate.query(QueryString, new Object[]{id}, (ResultSet rs) -> {
            String data = "";
            while (rs.next()) {
                data = rs.getString("jdoc");
            }
            return data;
        });
    }

    public String getAllById(String id) {
        String QueryString = "SELECT JSON_OBJECT( 'id', USERS_DETAILS.id, 'dt1', USERS_DETAILS.jdoc1  , 'dt2' , USERS_DETAILS.jdoc2  ) as jdoc   FROM USERS_DETAILS WHERE  USERS_DETAILS.id=? ";
        logger.info(QueryString + "  ID = " + id);
       
        return jdbcTemplate.query(QueryString, new Object[]{id}, (ResultSet rs) -> {
            String data = "";
            while (rs.next()) {
                data = rs.getString("jdoc");
            }
            return data;
        });
    }

}
