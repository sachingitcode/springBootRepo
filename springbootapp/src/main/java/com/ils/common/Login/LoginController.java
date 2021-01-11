package com.ils.common.Login;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.ils.common.controller.CommonJdbcUtil;
import com.ils.common.controller.MainController;
import com.ils.util.Common;
import java.security.Principal;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.log4j.Logger;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *
 * @author maverick
 */


@Controller
public class LoginController {

    Logger logger = Logger.getLogger(LoginController.class);

    @Autowired
    private LoginLdbcUtil loginLdbcUtil;

    @Autowired
    private Common common;

    @GetMapping("/NewUserDetails")  //  addition add
    public String newuserController(HttpServletRequest request) {
        return "pages/newUserPage";
    }

    @GetMapping(value = {"/newUser"})
    public String newUserPage(HttpServletRequest request, HttpServletResponse response) {
        request.getSession().invalidate();
//        response.sendRedirect(request.getContextPath() + "/LoginPage.html");
        return "/pages/newUserPage";
    }

//    @GetMapping(value = {"/newUserSave"})
     @RequestMapping(value = "/newUserSave", headers = "Accept=application/json") 
       public @ResponseBody
    String newUserSave(HttpServletRequest request, HttpServletResponse response, HttpSession session, @RequestBody ObjectNode json) {
        JsonNode userData = json.get("userData");
        logger.info("..userData..  " + userData);  
        logger.info("..role_id..  " + userData.get("role_type_id"));  
        // by default pages show by roletypeId ,, we can later change them from USER_PAGEMASTER_MAPPING
        loginLdbcUtil.updateLoginDataUtil(userData,request, session);
   return "true";
    }

}
