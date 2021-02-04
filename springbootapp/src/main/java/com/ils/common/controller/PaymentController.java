/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ils.common.controller;

import static com.ils.common.controller.PaymentController.getPropValueForPaytm;
import org.json.JSONObject;

//import com.paytm.pg.merchant.PaytmChecksum;
import com.paytm.pg.merchant.CheckSumServiceHelper;
//import com.paytm.pg.merchant.CheckSumServiceHelper;
import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Map;
import java.util.Properties;
import java.util.TreeMap;
import java.util.logging.Level;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//import org.apache.commons.codec.binary.Base64;
import org.apache.ibatis.io.Resources;
import org.apache.log4j.Logger;
import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

/**
 *
 * @author maverick
 */
//@CrossOrigin(origins = "*", maxAge = 3600)
@Controller

public class PaymentController {

    Logger logger = Logger.getLogger(PaymentController.class);

    public static String getPropValueForPaytm(String key) {
        Properties prop = new Properties();
        try {
            String resource = "onlinePaymentPaytm.properties";
            Reader reader = null;
            reader = Resources.getResourceAsReader(resource);
            prop.load(reader);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return prop.getProperty(key).trim();
    }

    @RequestMapping("/OnlinePaymentPaytmGateway")
    public String OnlinePaymentPaytmgateway(HttpServletRequest request, ModelMap model) {
//        onlineFeePaymentService.saveOnlineFeePaymentDetails(model, request);
//        String str = "redirect:OnlinePaymentPaytmGatewayWithParam?pk=" + model.get("pk").toString() + "&amt=" + model.get("amount") + "&initiator_pk=" + model.get("initiator_pk");
        String str = "redirect:OnlinePaymentPaytmGatewayWithParam?pk=876&amt=200&initiator_pk=8876";
//        String str = "redirect:OnlineReceivePaymentPaytmNew?pk=876&amt=200&initiator_pk=8876";
        return str;
    }

    @GetMapping("/redirectWithRedirectPrefixN")
    public ModelAndView redirectWithUsingRedirectPrefixN(ModelMap model) {
//        model.addAttribute("attribute", "redirectWithRedirectPrefix");
        return new ModelAndView("redirect:" + "http://www.yahoo.com");
    }
 

    @RequestMapping("/OnlinePaymentPaytmGatewayWithParam")
    public ModelAndView OnlinePaymentPaytmGatewayWithParam(HttpServletRequest request) throws Exception {
//        PaymentFeeModeMaster applicantDetails = onlineFeePaymentService.getApplicantDetailsForPayment(request);

//        String paytmURL = "https://securegw.paytm.in/theia/processTransaction";   // prod dummy
//        String paytmURL = "https://securegw-stage.paytm.in/theia/processTransaction";   // stage
       String paytmURL = "https://secure.paytm.in/oltp-web/processTransaction";   // prod

        String MID = getPropValueForPaytm("MID");
        String merchantKey = getPropValueForPaytm("merchantKey");
        String CHANNEL_ID = getPropValueForPaytm("CHANNEL_ID");
        String WEBSITE = getPropValueForPaytm("WEBSITE");
        String INDUSTRY_TYPE_ID = getPropValueForPaytm("INDUSTRY_TYPE_ID");
        String CALLBACK_URL = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath() + "/OnlineReceivePaymentPaytm";   // dummy

        logger.info("CALLBACK_URL  :" + CALLBACK_URL);
        logger.info("merchantKey  :" + merchantKey);

//        String CUST_ID = "test@testMail.com";
        String CUST_ID = "mmd@srhu.edu.in";
        String MOBILE_NO = "9050202034";
        String EMAIL = "testMAil9998@testgmail.com";
        String TXN_AMOUNT = "2054";
        String ORDER_ID = "9875472";

        logger.info("ORDER_ID************   " + ORDER_ID);
        logger.info("TXN_AMOUNT************   " + TXN_AMOUNT);

        TreeMap<String, String> paytmParams = new TreeMap<String, String>();
        paytmParams.put("MID", MID);
        paytmParams.put("ORDER_ID", ORDER_ID);
        paytmParams.put("CHANNEL_ID", CHANNEL_ID);
        paytmParams.put("CUST_ID", CUST_ID);
        paytmParams.put("MOBILE_NO", MOBILE_NO);
        paytmParams.put("EMAIL", EMAIL);
        paytmParams.put("TXN_AMOUNT", TXN_AMOUNT);
        paytmParams.put("WEBSITE", WEBSITE);
        paytmParams.put("INDUSTRY_TYPE_ID", INDUSTRY_TYPE_ID);
        paytmParams.put("CALLBACK_URL", CALLBACK_URL);

         String paytmChecksum = CheckSumServiceHelper.getCheckSumServiceHelper().genrateCheckSum(merchantKey, paytmParams);
//        String paytmChecksum = PaytmChecksum.generateSignature(paytmParams, "_h3j73qRWWlhf1Ay");

        paytmParams.put("CHECKSUMHASH", paytmChecksum);

        ModelAndView mav = new ModelAndView();
        mav.addObject("MID", MID);
        mav.addObject("merchantKey", merchantKey);
        mav.addObject("ORDER_ID", ORDER_ID);
        mav.addObject("CHANNEL_ID", CHANNEL_ID);
        mav.addObject("CUST_ID", CUST_ID);
        mav.addObject("MOBILE_NO", MOBILE_NO);
        mav.addObject("EMAIL", EMAIL);
        mav.addObject("TXN_AMOUNT", TXN_AMOUNT);
        mav.addObject("WEBSITE", WEBSITE);
        mav.addObject("INDUSTRY_TYPE_ID", INDUSTRY_TYPE_ID);
        mav.addObject("CALLBACK_URL", CALLBACK_URL);
        mav.addObject("CHECKSUMHASH", paytmChecksum);
        mav.setViewName("redirect:" +paytmURL);  //"redirect:" + 
        return mav;
         

    }

   

    @RequestMapping("/OnlineReceivePaymentPaytm")
    public String OnlineReceivePaymentPaytm(HttpServletRequest request, ModelMap model, HttpServletResponse response) {
//        onlineFeePaymentService.updateOnlineFeePaymentDetailsPaytm(model, request, response);
        return "pages/onlinePaymentReceive";
    }
 
}

//
//    public void TransOrderValuePaytm(String orderId) throws Exception {
//
//        String transactionURL = "https://securegw.paytm.in/order/status";
//        String merchantMid = getPropValueForPaytm("MID");
////        String orderId = "23";
//        String merchantKey = getPropValueForPaytm("merchantKey");
//        TreeMap<String, String> paytmParams = new TreeMap<String, String>();
//        paytmParams.put("MID", merchantMid);
//        paytmParams.put("ORDERID", orderId);
////        String paytmChecksum = CheckSumServiceHelper.getCheckSumServiceHelper().genrateCheckSum(merchantKey, paytmParams);
////        paytmParams.put("CHECKSUMHASH", paytmChecksum);
//        JSONObject obj = new JSONObject(paytmParams);
//        String postData = "JsonData=" + obj.toString();
//        URL obj1 = new URL(transactionURL);
//        HttpURLConnection connection = (HttpURLConnection) obj1.openConnection();
//        connection.setRequestMethod("POST");
//        connection.setRequestProperty("contentType", "application/json");
//        connection.setUseCaches(false);
//        connection.setDoOutput(true);
//
//        DataOutputStream requestWriter = new DataOutputStream(connection.getOutputStream());
//        requestWriter.writeBytes(postData);
//        requestWriter.close();
//        String responseData = "";
//        InputStream is = connection.getInputStream();
//        BufferedReader responseReader = new BufferedReader(new InputStreamReader(is));
//        if ((responseData = responseReader.readLine()) != null) {
//            System.out.append("Response Json = " + responseData);
//        }
//        System.out.append("Requested Json = " + postData + " ");
//        logger.info("########### " + responseData);
//        logger.info("");
//        logger.info("");
//
//        ObjectMapper mapper = new ObjectMapper();
//        Map<String, String> map = mapper.readValue(responseData, Map.class);
//        logger.info("" + map);
//        String code = map.get("RESPCODE");
//        String Stats = "";
//        String flagg = "0";
//        if (code.equals("01")) {
//            Stats = "Success";
//            flagg = "1";
//        } else if (code.equals("400")) {
//            Stats = "Pending";
//        } else {
//            Stats = "Failed";
//        }
//
//        map.put("recstat", flagg);
//        map.put("STATUS1", Stats);
//        map.put("dbmsg", responseData);
//
////        onlineFeePaymentService.updatePaytmOrder(map);
//        responseReader.close();
////        return responseData;
//
//    }
//
