/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ils.common.LoanCustomer;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.ils.common.controller.CommonJdbcUtil;
import com.ils.util.Common;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.log4j.Logger;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *
 * @author maverick
 */
@Controller
public class CustomerController {

    Logger logger = Logger.getLogger(CustomerController.class);
    @Autowired
    private LoanCustomerJdbcUtil loanCustomerJdbcUtil;
    @Autowired
    private Common common;

    @RequestMapping(value = "/saveCustomerData", headers = "Accept=application/json") // Save data
    public @ResponseBody
    String saveCustomerData(HttpServletRequest request, HttpServletResponse response, HttpSession session, ModelMap map, @RequestBody ObjectNode json) {
        JsonNode userData = json.get("userData");
//        getNextPrevousCurrentPAgefromTableNameByPageId ()   //also get which column to store  data
//        String tableName = commonJdbcUtil.getTableNameformId(pageid);
        String tableName = "CUSTOMER_PERSONAL_DETAILS";
        String columnName = "jdoc" + json.get("pageSno").toString().replaceAll("\"", "");
        //  put session .ext for next page ${session.next} 
//            session.setAttribute("next", "pages/customerPortal/custFncnlDetails");
        loanCustomerJdbcUtil.updateDataUtilnCustPrsnDtl(userData, tableName, columnName, session);      // update by id   
//        map.addAttribute("id", id);  

        return session.getAttribute("userNameId").toString();
    }

    @RequestMapping(value = "/paytmController", headers = "Accept=application/json")    // get values for edit M2M  psge
    public @ResponseBody
    String paytmController(HttpServletRequest request, HttpServletResponse response, HttpSession session) {    // id of country
        String id = session.getAttribute("id").toString();
        String data = null;

        logger.info("Method: " + data);
        return data;
    }

    
    
    
}
