-- MySQL dump 10.13  Distrib 8.0.22, for Linux (x86_64)
--
-- Host: localhost    Database: spring_boot_db
-- ------------------------------------------------------
-- Server version	8.0.22-0ubuntu0.20.10.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `APPLICATION_LOG`
--

DROP TABLE IF EXISTS `APPLICATION_LOG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `APPLICATION_LOG` (
  `id` int DEFAULT NULL,
  `localIp` varchar(255) DEFAULT NULL,
  `globalIp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `viewpage` varchar(255) DEFAULT NULL,
  `currentpage` varchar(255) DEFAULT NULL,
  `date_time` varchar(255) DEFAULT NULL,
  `query` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `tableid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `function_name` varchar(255) DEFAULT NULL,
  `module` varchar(255) DEFAULT NULL,
  `schema_name` varchar(255) DEFAULT NULL,
  `role_name` varchar(255) DEFAULT NULL,
  `userPort` varchar(255) DEFAULT NULL,
  `beforevalue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `APPLICATION_LOG`
--

LOCK TABLES `APPLICATION_LOG` WRITE;
/*!40000 ALTER TABLE `APPLICATION_LOG` DISABLE KEYS */;
INSERT INTO `APPLICATION_LOG` VALUES (32,'127.0.1.1','182.75.114.6','MASTER_TYPE','masterAddForm','masters','2019-06-13 21:08:42.000000','delete from MASTER_TYPE where id =?','30','dbadmin1','/deleteIdListing',NULL,'jnu_dev',NULL,'42992','{id : \"30\",type : \"City\",value : \"null\",status : \"null\",master_name : \"null\",master_id : \"null\"}'),(33,'127.0.1.1','182.75.114.6','MASTER_VALUE','masterAddForm','masters','2019-06-13 21:08:43.000000','delete from MASTER_VALUE where master_type_id = ?','30','dbadmin1','/deleteIdListing',NULL,'jnu_dev',NULL,'42992','{id : \"102\",value : \" GGN \",master_type_id : \"30\",status : \"null\",master_value_id : \"null\"}id : \"103\",value : \" DElhi \",master_type_id : \"30\",status : \"null\",master_value_id : \"null\",id : \"104\",value : \" Rohtak \",master_type_id : \"30\",status : \"null\",master_value_id : \"null\",id : \"105\",value : \" Rewari \",master_type_id : \"30\",status : \"null\",master_value_id : \"null\",'),(34,'127.0.1.1','182.75.114.6','MASTER_TYPE','masterAddForm','masters','2019-06-17 17:43:07.000000','delete from MASTER_TYPE where id =?','33','dbadmin1','/deleteIdListing',NULL,'jnu_dev',NULL,'34872','{id : \"33\",type : \"State\",value : \"null\",status : \"null\",master_name : \"null\",master_id : \"34\"}'),(35,'127.0.1.1','182.75.114.6','MASTER_VALUE','masterAddForm','masters','2019-06-17 17:43:08.000000','delete from MASTER_VALUE where master_type_id = ?','33','dbadmin1','/deleteIdListing',NULL,'jnu_dev',NULL,'34872','{id : \"111\",value : \" HAryana \",master_type_id : \"33\",status : \"null\",master_value_id : \"null\"}id : \"112\",value : \" UP \",master_type_id : \"33\",status : \"null\",master_value_id : \"null\",id : \"113\",value : \" Goa \",master_type_id : \"33\",status : \"null\",master_value_id : \"null\",'),(32,'127.0.1.1','182.75.114.6','MASTER_TYPE','masterAddForm','masters','2019-06-13 21:08:42.000000','delete from MASTER_TYPE where id =?','30','dbadmin1','/deleteIdListing',NULL,'jnu_dev',NULL,'42992','{id : \"30\",type : \"City\",value : \"null\",status : \"null\",master_name : \"null\",master_id : \"null\"}'),(33,'127.0.1.1','182.75.114.6','MASTER_VALUE','masterAddForm','masters','2019-06-13 21:08:43.000000','delete from MASTER_VALUE where master_type_id = ?','30','dbadmin1','/deleteIdListing',NULL,'jnu_dev',NULL,'42992','{id : \"102\",value : \" GGN \",master_type_id : \"30\",status : \"null\",master_value_id : \"null\"}id : \"103\",value : \" DElhi \",master_type_id : \"30\",status : \"null\",master_value_id : \"null\",id : \"104\",value : \" Rohtak \",master_type_id : \"30\",status : \"null\",master_value_id : \"null\",id : \"105\",value : \" Rewari \",master_type_id : \"30\",status : \"null\",master_value_id : \"null\",'),(34,'127.0.1.1','182.75.114.6','MASTER_TYPE','masterAddForm','masters','2019-06-17 17:43:07.000000','delete from MASTER_TYPE where id =?','33','dbadmin1','/deleteIdListing',NULL,'jnu_dev',NULL,'34872','{id : \"33\",type : \"State\",value : \"null\",status : \"null\",master_name : \"null\",master_id : \"34\"}'),(35,'127.0.1.1','182.75.114.6','MASTER_VALUE','masterAddForm','masters','2019-06-17 17:43:08.000000','delete from MASTER_VALUE where master_type_id = ?','33','dbadmin1','/deleteIdListing',NULL,'jnu_dev',NULL,'34872','{id : \"111\",value : \" HAryana \",master_type_id : \"33\",status : \"null\",master_value_id : \"null\"}id : \"112\",value : \" UP \",master_type_id : \"33\",status : \"null\",master_value_id : \"null\",id : \"113\",value : \" Goa \",master_type_id : \"33\",status : \"null\",master_value_id : \"null\",');
/*!40000 ALTER TABLE `APPLICATION_LOG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CUSTOMER_PERSONAL_DETAILS`
--

DROP TABLE IF EXISTS `CUSTOMER_PERSONAL_DETAILS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CUSTOMER_PERSONAL_DETAILS` (
  `id` int NOT NULL AUTO_INCREMENT,
  `jdoc1` varchar(1200) DEFAULT NULL,
  `created_date` varchar(255) DEFAULT NULL,
  `active` int DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `r_id` varchar(20) DEFAULT NULL,
  `jdoc2` varchar(1200) DEFAULT NULL,
  `user_id` varchar(1200) DEFAULT NULL,
  `jdoc3` varchar(1200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CUSTOMER_PERSONAL_DETAILS`
--

LOCK TABLES `CUSTOMER_PERSONAL_DETAILS` WRITE;
/*!40000 ALTER TABLE `CUSTOMER_PERSONAL_DETAILS` DISABLE KEYS */;
INSERT INTO `CUSTOMER_PERSONAL_DETAILS` VALUES (1,'{\"first_name\":\"Sachin\",\"last_name\":\"yadav\",\"Dob\":\"\",\"mobile\":\"9050200000\",\"email\":\"thesachinyadav@live.com\",\"age\":\"\",\"mont\":\"\",\"days\":\"\",\"father_name\":\"\",\"father_mobile\":\"\",\"father_email\":\"thesachinyadav@live.com\",\"mother_name\":\"\",\"nationality\":\"\",\"address\":\"test addresss\",\"mail_address\":\"\",\"emer_cont\":\"\",\"tel_no\":\"\",\"income_type\":\"\"}','2021-01-07 16:38:11',NULL,NULL,NULL,'{\"aadhar\":\"\",\"pan_card\":\"\",\"income_type\":\"\",\"salary_val\":\"\",\"monthly_expense\":\"\",\"epf_number\":\"\"}','1',NULL);
/*!40000 ALTER TABLE `CUSTOMER_PERSONAL_DETAILS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DOCS`
--

DROP TABLE IF EXISTS `DOCS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DOCS` (
  `pk` int NOT NULL AUTO_INCREMENT,
  `doc_name` varchar(255) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_date` varchar(255) DEFAULT NULL,
  `extension` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`pk`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DOCS`
--

LOCK TABLES `DOCS` WRITE;
/*!40000 ALTER TABLE `DOCS` DISABLE KEYS */;
INSERT INTO `DOCS` VALUES (50,'smplImg','hitman.jpg','files/hitman.jpg','1','2019-06-13 17:11:52','jpg'),(51,'testDoc','Screenshot from 2020-12-19 10-39-21.png','files/Screenshot from 2020-12-19 10-39-21.png','1','2020-12-20 20:19:29','png'),(52,'Kul_uncle','kulUncle.jpg','files/kulUncle.jpg','1','2020-12-24 15:59:08','jpg'),(53,'test2','2.png','files/2.png','1','2021-01-07 22:20:23','png'),(54,'passport','3.png','files/3.png','1','2021-01-07 22:44:22','png'),(55,'','4.png','files/4.png','1','2021-01-07 22:44:45','png'),(56,'passport','1_passport_ttttttt.png','/home/maverick/mygit/Projects/IHE_2/tmpFileStoreage/','1','2021-01-08 22:51:32','png'),(57,'aadhar','1_aadhar_kulUncle.jpg','/home/maverick/mygit/Projects/IHE_2/tmpFileStoreage/','1','2021-01-08 22:54:19','jpg');
/*!40000 ALTER TABLE `DOCS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EXCEPTION_TICKETS`
--

DROP TABLE IF EXISTS `EXCEPTION_TICKETS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `EXCEPTION_TICKETS` (
  `id` int NOT NULL AUTO_INCREMENT,
  `jdoc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `assigned_to` varchar(255) DEFAULT NULL,
  `open_close` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EXCEPTION_TICKETS`
--

LOCK TABLES `EXCEPTION_TICKETS` WRITE;
/*!40000 ALTER TABLE `EXCEPTION_TICKETS` DISABLE KEYS */;
INSERT INTO `EXCEPTION_TICKETS` VALUES (5,' {\"localIp\": 127.0.1.1, \"globalIp\": 182.75.114.6, \"FunctionName\": /saveTestData, \"current\":test, \"viewpage\":testAddForm, \"ErrorMessage\": PreparedStatementCallback; bad SQL grammar [UPDATE T2 SET doc = JSON_SET( jdoc, \'$.tax\', \'655\' ) WHERE r_id = ? ]; nested exception is java.sql.SQLSyntaxErrorException: Unknown column \'doc\' in \'field list\', \"ErrorStackTrace\":testing,}',NULL,NULL),(6,' {\"localIp\": 127.0.1.1, \"globalIp\": 182.75.114.6, \"FunctionName\": /saveTestData, \"current\":test, \"viewpage\":testAddForm, \"ErrorMessage\": PreparedStatementCallback; SQL [UPDATE T2 SET jdoc = JSON_SET( jdoc, \'$.tax\', \'655\' ) WHERE r_id = 435 ]; Parameter index out of range (1 > number of parameters, which is 0).; nested exception is java.sql.SQLException: Parameter index out of range (1 > number of parameters, which is 0)., \"ErrorStackTrace\":org.springframework.dao.TransientDataAccessResourceException: PreparedStatementCallback; SQL [UPDATE T2 SET jdoc = JSON_SET( jdoc, \'$.tax\', \'655\' ) WHERE r_id = 435 ]; Parameter index out of range (1 > number of parameters, which is 0).; nested exception is java.sql.SQLException: Parameter index out of range (1 > number of parameters, which is 0).\n	at org.springframework.jdbc.support.SQLStateSQLExceptionTranslator.doTranslate(SQLStateSQLExceptionTranslator.java:110)\n	at org.springframework.jdbc.support.AbstractFallbackSQLExceptionTranslator.translate(AbstractFallbackSQLExceptionTranslator.java:72)\n	at org.springframework.jdbc.support.AbstractFallbackSQLExceptionTranslator.translate(AbstractFallbackSQLExceptionTranslator.java:81)\n	at org.springframework.jdbc.support.AbstractFallbackSQLExceptionTranslator.translate(AbstractFallbackSQLExceptionTranslator.java:81)\n	at org.springframework.jdbc.core.JdbcTemplate.translateException(JdbcTemplate.java:1444)\n	at org.springframework.jdbc.core.JdbcTemplate.execute(JdbcTemplate.java:632)\n	at org.springframework.jdbc.core.JdbcTemplate.update(JdbcTemplate.java:862)\n	at org.springframework.jdbc.core.JdbcTemplate.update(JdbcTemplate.java:917)\n	at org.springframework.jdbc.core.JdbcTemplate.update(JdbcTemplate.java:927)\n	at com.ils.common.controller.CommonJdbcUtil.saveTestDataUtil(CommonJdbcUtil.java:912)\n	at com.ils.common.controller.CommonJdbcUtil$$FastClassBySpringCGLIB$$84bc15e2.invoke(<generated>)\n	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:218)\n	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:684)\n	at com.ils.common.controller.CommonJdbcUtil$$EnhancerBySpringCGLIB$$bff0d5cf.saveTestDataUtil(<generated>)\n	at com.ils.common.controller.MainController.saveTestData(MainController.java:392)\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\n	at java.lang.reflect.Method.invoke(Method.java:498)\n	at org.springframework.web.method.support.InvocableHandlerMethod.doInvoke(InvocableHandlerMethod.java:189)\n	at org.springframework.web.method.support.InvocableHandlerMethod.invokeForRequest(InvocableHandlerMethod.java:138)\n	at org.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:102)\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.invokeHandlerMethod(RequestMappingHandlerAdapter.java:895)\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.handleInternal(RequestMappingHandlerAdapter.java:800)\n	at org.springframework.web.servlet.mvc.method.AbstractHandlerMethodAdapter.handle(AbstractHandlerMethodAdapter.java:87)\n	at org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:1038)\n	at org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:942)\n	at org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:1005)\n	at org.springframework.web.servlet.FrameworkServlet.doPost(FrameworkServlet.java:908)\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:660)\n	at org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:882)\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:741)\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:231)\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\n	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:53)\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\n	at org.springframework.boot.actuate.web.trace.servlet.HttpTraceFilter.doFilterInternal(HttpTraceFilter.java:90)\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:320)\n	at org.springframework.security.web.access.intercept.FilterSecurityInterceptor.invoke(FilterSecurityInterceptor.java:127)\n	at org.springframework.security.web.access.intercept.FilterSecurityInterceptor.doFilter(FilterSecurityInterceptor.java:91)\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\n	at org.springframework.security.web.access.ExceptionTranslationFilter.doFilter(ExceptionTranslationFilter.java:119)\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\n	at org.springframework.security.web.session.SessionManagementFilter.doFilter(SessionManagementFilter.java:137)\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\n	at org.springframework.security.web.authentication.AnonymousAuthenticationFilter.doFilter(AnonymousAuthenticationFilter.java:111)\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\n	at org.springframework.security.web.servletapi.SecurityContextHolderAwareRequestFilter.doFilter(SecurityContextHolderAwareRequestFilter.java:170)\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\n	at org.springframework.security.web.savedrequest.RequestCacheAwareFilter.doFilter(RequestCacheAwareFilter.java:63)\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\n	at org.springframework.security.web.session.ConcurrentSessionFilter.doFilter(ConcurrentSessionFilter.java:155)\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\n	at org.springframework.security.web.authentication.AbstractAuthenticationProcessingFilter.doFilter(AbstractAuthenticationProcessingFilter.java:200)\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\n	at org.springframework.security.web.authentication.logout.LogoutFilter.doFilter(LogoutFilter.java:116)\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\n	at org.springframework.security.web.header.HeaderWriterFilter.doFilterInternal(HeaderWriterFilter.java:74)\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\n	at org.springframework.security.web.context.SecurityContextPersistenceFilter.doFilter(SecurityContextPersistenceFilter.java:105)\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\n	at org.springframework.security.web.context.request.async.WebAsyncManagerIntegrationFilter.doFilterInternal(WebAsyncManagerIntegrationFilter.java:56)\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\n	at org.springframework.security.web.FilterChainProxy.doFilterInternal(FilterChainProxy.java:215)\n	at org.springframework.security.web.FilterChainProxy.doFilter(FilterChainProxy.java:178)\n	at org.springframework.web.filter.DelegatingFilterProxy.invokeDelegate(DelegatingFilterProxy.java:357)\n	at org.springframework.web.filter.DelegatingFilterProxy.doFilter(DelegatingFilterProxy.java:270)\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\n	at org.springframework.web.filter.RequestContextFilter.doFilterInternal(RequestContextFilter.java:99)\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\n	at org.springframework.web.filter.FormContentFilter.doFilterInternal(FormContentFilter.java:92)\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\n	at org.springframework.web.filter.HiddenHttpMethodFilter.doFilterInternal(HiddenHttpMethodFilter.java:93)\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\n	at org.springframework.boot.actuate.metrics.web.servlet.WebMvcMetricsFilter.filterAndRecordMetrics(WebMvcMetricsFilter.java:117)\n	at org.springframework.boot.actuate.metrics.web.servlet.WebMvcMetricsFilter.doFilterInternal(WebMvcMetricsFilter.java:106)\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\n	at org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:200)\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\n	at org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:200)\n	at org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:96)\n	at org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:490)\n	at org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:139)\n	at org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:92)\n	at org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:74)\n	at org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:343)\n	at org.apache.coyote.http11.Http11Processor.service(Http11Processor.java:408)\n	at org.apache.coyote.AbstractProcessorLight.process(AbstractProcessorLight.java:66)\n	at org.apache.coyote.AbstractProtocol$ConnectionHandler.process(AbstractProtocol.java:834)\n	at org.apache.tomcat.util.net.NioEndpoint$SocketProcessor.doRun(NioEndpoint.java:1415)\n	at org.apache.tomcat.util.net.SocketProcessorBase.run(SocketProcessorBase.java:49)\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1149)\n	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:624)\n	at org.apache.tomcat.util.threads.TaskThread$WrappingRunnable.run(TaskThread.java:61)\n	at java.lang.Thread.run(Thread.java:748)\nCaused by: java.sql.SQLException: Parameter index out of range (1 > number of parameters, which is 0).\n	at com.mysql.cj.jdbc.exceptions.SQLError.createSQLException(SQLError.java:129)\n	at com.mysql.cj.jdbc.exceptions.SQLError.createSQLException(SQLError.java:97)\n	at com.mysql.cj.jdbc.exceptions.SQLError.createSQLException(SQLError.java:89)\n	at com.mysql.cj.jdbc.exceptions.SQLError.createSQLException(SQLError.java:63)\n	at com.mysql.cj.jdbc.ClientPreparedStatement.checkBounds(ClientPreparedStatement.java:1402)\n	at com.mysql.cj.jdbc.ClientPreparedStatement.getCoreParameterIndex(ClientPreparedStatement.java:1415)\n	at com.mysql.cj.jdbc.ClientPreparedStatement.setString(ClientPreparedStatement.java:1782)\n	at org.springframework.jdbc.core.StatementCreatorUtils.setValue(StatementCreatorUtils.java:400)\n	at org.springframework.jdbc.core.StatementCreatorUtils.setParameterValueInternal(StatementCreatorUtils.java:232)\n	at org.springframework.jdbc.core.StatementCreatorUtils.setParameterValue(StatementCreatorUtils.java:163)\n	at org.springframework.jdbc.core.ArgumentPreparedStatementSetter.doSetValue(ArgumentPreparedStatementSetter.java:69)\n	at org.springframework.jdbc.core.ArgumentPreparedStatementSetter.setValues(ArgumentPreparedStatementSetter.java:50)\n	at org.springframework.jdbc.core.JdbcTemplate.lambda$update$0(JdbcTemplate.java:865)\n	at org.springframework.jdbc.core.JdbcTemplate.execute(JdbcTemplate.java:617)\n	... 106 more\n,}',NULL,NULL),(7,' {\"localIp\": 127.0.1.1, \"globalIp\": 182.75.114.6, \"FunctionName\": /saveTestData, \"current\":test, \"viewpage\":testAddForm, \"ErrorMessage\": PreparedStatementCallback; SQL [UPDATE T2 SET jdoc = JSON_SET( jdoc, \'$.tax\', \'655\' ) WHERE r_id = 435 ]; Parameter index out of range (1 > number of parameters, which is 0).; nested exception is java.sql.SQLException: Parameter index out of range (1 > number of parameters, which is 0)., \"ErrorStackTrace\":,}',NULL,NULL),(8,' {\"localIp\": 127.0.1.1, \"globalIp\": 182.75.114.6, \"FunctionName\": /saveTestData, \"current\":test, \"viewpage\":testAddForm, \"ErrorMessage\": PreparedStatementCallback; SQL [UPDATE T2 SET jdoc = JSON_SET( jdoc, \'$.tax\', \'655\' ) WHERE r_id = 231313213 ]; Parameter index out of range (1 > number of parameters, which is 0).; nested exception is java.sql.SQLException: Parameter index out of range (1 > number of parameters, which is 0)., \"ErrorStackTrace\":,}',NULL,NULL),(9,' {\"localIp\": 127.0.1.1, \"globalIp\": 182.75.114.6, \"userid\": dbadmin1, \"FunctionName\": /saveTestData, \"current\":test, \"viewpage\":testAddForm, \"ErrorMessage\": PreparedStatementCallback; SQL [UPDATE T2 SET jdoc = JSON_SET( jdoc, \'$.tax\', \'655\' ) WHERE r_id = 231313213 ]; Parameter index out of range (1 > number of parameters, which is 0).; nested exception is java.sql.SQLException: Parameter index out of range (1 > number of parameters, which is 0)., \"ErrorStackTrace\":,}',NULL,NULL),(10,' {\"localIp\": 127.0.1.1, \"globalIp\": 182.75.114.6, \"userid\": dbadmin1, \"FunctionName\": /findByIdListing, \"current\":1, \"viewpage\":addApplication1, \"ErrorMessage\": Uncompilable source code - cannot find symbol\n  symbol:   variable String\n  location: class com.ils.common.controller.CommonJdbcUtil, \"ErrorStackTrace\":,}',NULL,NULL);
/*!40000 ALTER TABLE `EXCEPTION_TICKETS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FILTER`
--

DROP TABLE IF EXISTS `FILTER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `FILTER` (
  `id` int NOT NULL,
  `method` varchar(255) DEFAULT NULL,
  `prefilter` varchar(255) DEFAULT NULL,
  `postfilter` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FILTER`
--

LOCK TABLES `FILTER` WRITE;
/*!40000 ALTER TABLE `FILTER` DISABLE KEYS */;
INSERT INTO `FILTER` VALUES (5,'saveTestData','getTaxByUrI',NULL,NULL),(6,'saveTestData','getTaxByUrI',NULL,NULL);
/*!40000 ALTER TABLE `FILTER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LISTING`
--

DROP TABLE IF EXISTS `LISTING`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LISTING` (
  `pk` int NOT NULL,
  `id` varchar(255) DEFAULT NULL,
  `header` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `query` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `desc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`pk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LISTING`
--

LOCK TABLES `LISTING` WRITE;
/*!40000 ALTER TABLE `LISTING` DISABLE KEYS */;
INSERT INTO `LISTING` VALUES (0,'erpId','[{\"text\": \"S.No\", \"align\": \"left\", \"sortable\": false}, {\"text\": \"Name\", \"value\": \"name\"}, {\"text\": \"Occupation\", \"value\": \"occupation\"}, {\"text\": \"Mobile no\", \"value\": \"mobile\"}, {\"text\": \"Position\", \"value\": \"position\"}, {\"text\": \"Action\", \"value\": \"action\"}]','SELECT JSON_OBJECT(\'id\',T3.id,\'name\',T3.jdoc -> \'$.name\',\'Dob\', T3.jdoc -> \'$.Dob\',\'mobile\',T3.jdoc -> \'$.mobile\',\'email\',T3.jdoc -> \'$.email\' ) AS jdoc,JSON_OBJECT(\'id\',T3.id) as id FROM T3 ',NULL),(1,'1','[{\"text\": \"S.No\", \"align\": \"left\", \"sortable\": false}, {\"text\": \"Name\", \"value\": \"name\"}, {\"text\": \"Date of Birth\", \"value\": \"Dob\"}, {\"text\": \"Mobile no\", \"value\": \"mobile\"}, {\"text\": \"Email\", \"value\": \"email\"}, {\"text\": \"Action\", \"value\": \"action\"}]','SELECT\n	JSON_OBJECT(\r\n	\'id\',T1.id,\n		\'name\',\n		T1.jdoc -> \'$.name\',\n		\'Dob\',\n		T1.jdoc -> \'$.Dob\',\n		\'mobile\',\n		T1.jdoc -> \'$.mobile\',\n		\'email\',\n		T1.jdoc -> \'$.email\' \n	) AS jdoc \nFROM\n	T1 \n',NULL),(2,'96ca1e5f-61d8-11e9-adee-8c89a53bcce4','[{\"text\": \"S.No\", \"align\": \"left\", \"sortable\": false}, {\"text\": \"Name\", \"value\": \"name\"}, {\"text\": \"Date of Birth\", \"value\": \"dob\"}, {\"text\": \"Mobile no\", \"value\": \"mobile\"}, {\"text\": \"Email\", \"value\": \"email\"}, {\"text\": \"Action\", \"value\": \"action\"}]','select JSON_OBJECT(\'name\',TABLE_DUM.jdoc -> \'$.to\',\r\n\'from\',TABLE_DUM.jdoc -> \'$.from\',\r\n\'to\',TABLE_DUM.jdoc -> \'$.pay\',\r\n\'email\',TABLE_DUM.jdoc -> \'$.name\',\r\n\'school\',TABLE_DUM.jdoc -> \'$.name\') as jdoc\r\nFROM TABLE_DUM\r\n',NULL),(3,'b096e2db-76e1-11e9-b041-8c89a53bcce4','[{\"text\": \"S.No\", \"align\": \"left\", \"sortable\": false}, {\"text\": \"Name\", \"value\": \"name\"}, {\"text\": \"Date of Birth\", \"value\": \"dob\"}, {\"text\": \"Mobile no\", \"value\": \"mobile\"}, {\"text\": \"Email\", \"value\": \"email\"}, {\"text\": \"Action\", \"value\": \"action\"}]','SELECT\n	JSON_OBJECT(\r\n	\'id\',T3.id,\n		\'name\',\n		T3.jdoc -> \'$.name\',\n		\'Dob\',\n		T3.jdoc -> \'$.Dob\',\n		\'mobile\',\n		T3.jdoc -> \'$.mobile\',\n		\'email\',\n		T3.jdoc -> \'$.email\' \n	) AS jdoc,\r\nJSON_OBJECT(\'id\',T3.id) as id	\nFROM\n	T3\n',NULL),(4,'a5fd1165-76dd-11e9-b041-8c89a53bcce4','[{\"text\": \"S.No\", \"align\": \"left\", \"sortable\": false}, {\"text\": \"Name\", \"value\": \"name\"}, {\"text\": \"Masters\", \"value\": \"masters\"}, {\"text\": \"Values\", \"value\": \"values\"}, {\"text\": \"Description\", \"value\": \"description\"}, {\"text\": \"Action\", \"value\": \"action\"}]','SELECT\n	JSON_OBJECT(\r\n	\'id\',T5.id,\n		\'name\',\n		T5.jdoc -> \'$.name\',\n		\'Dob\',\n		T5.jdoc -> \'$.Dob\',\n		\'mobile\',\n		T5.jdoc -> \'$.mobile\',\n		\'email\',\n		T5.jdoc -> \'$.email\' \n	) AS jdoc \nFROM\n	T5\n',NULL),(5,'masters','[{\"text\": \"S.No\", \"align\": \"left\", \"sortable\": false}, {\"text\": \"Masters\", \"value\": \"name\"}, {\"text\": \"Values\", \"value\": \"values\"}, {\"text\": \"Description\", \"value\": \"description\"}, {\"text\": \"Action\", \"value\": \"action\"}]','SELECT\r\n	JSON_OBJECT(  	\'id\',MASTER_TYPE.id,   \r\n	\'name\',  MASTER_TYPE.type,\r\n	 \'values\', GROUP_CONCAT( MASTER_VALUE.`value` )  ) as jdoc\r\nFROM\r\n	`MASTER_VALUE`\r\n	right JOIN MASTER_TYPE ON MASTER_VALUE.master_type_id = MASTER_TYPE.`id` \r\nGROUP BY\r\n	MASTER_TYPE.type',NULL),(7,'m2m','[{\"text\": \"S.No\", \"align\": \"left\", \"sortable\": false}, {\"text\": \"Masters\", \"value\": \"master_type\"}, {\"text\": \" Master Values\", \"value\": \"master_value\"}, {\"text\": \"Sub Master Values\", \"value\": \"sub_master_value\"}, {\"text\": \"Action\", \"value\": \"action\"}]','select   \r\nJSON_OBJECT( \r\n\'id\', country_master.country_id ,\r\n\'master_type\' , country_master.type  ,\r\n \'master_value\' , country_master.value ,\r\n\'sub_master_value\' ,  group_concat(state_master.value )  ) as jdoc\r\nfrom \r\n( SELECT\r\nMASTER_TYPE.id,\r\nMASTER_TYPE.type,\r\nMASTER_VALUE.`value`,\r\nMASTER_VALUE.id as country_id ,\r\nMASTER_VALUE.master_type_id                                    \r\nFROM\r\nMASTER_TYPE  INNER JOIN MASTER_VALUE ON MASTER_TYPE.id = MASTER_VALUE.master_type_id ) as country_master \r\nINNER JOIN ( SELECT MASTER_VALUE.`value`, MASTER_VALUE.id  , MASTER_VALUE.master_value_id  from MASTER_VALUE ) as state_master on state_master.master_value_id =country_master.country_id group by country_master.country_id \r\n',NULL),(8,'2','[{\"text\": \"S.No\", \"align\": \"left\", \"sortable\": false}, {\"text\": \"Name\", \"value\": \"name\"}, {\"text\": \"Date of Birth\", \"value\": \"Dob\"}, {\"text\": \"Mobile no\", \"value\": \"mobile\"}, {\"text\": \"Email\", \"value\": \"email\"}, {\"text\": \"Action\", \"value\": \"action\"}]','SELECT\r\n	JSON_OBJECT(\r\n	\'id\',T3.id,\r\n		\'name\',\r\n		T3.jdoc -> \'$.name\',\r\n		\'Dob\',\r\n		T3.jdoc -> \'$.Dob\',\r\n		\'mobile\',\r\n		T3.jdoc -> \'$.mobile\',\r\n		\'email\',\r\n		T3.jdoc -> \'$.email\' \r\n	) AS jdoc ,\r\nT3.id as id	\r\nFROM\r\n	T3\r\n',NULL),(9,'3','[{\"text\": \"S.No\", \"align\": \"left\", \"sortable\": false}, {\"text\": \"Name\", \"value\": \"name\"}, {\"text\": \"Date of Birth\", \"value\": \"Dob\"}, {\"text\": \"Mobile no\", \"value\": \"mobile\"}, {\"text\": \"Email\", \"value\": \"email\"}, {\"text\": \"Action\", \"value\": \"action\"}]','SELECT\r\n	JSON_OBJECT(\r\n	\'id\',T5.id,\r\n		\'name\',\r\n		T5.jdoc -> \'$.name\',\r\n		\'Dob\',\r\n		T5.jdoc -> \'$.Dob\',\r\n		\'mobile\',\r\n		T5.jdoc -> \'$.mobile\',\r\n		\'email\',\r\n		T5.jdoc -> \'$.email\' \r\n	) AS jdoc \r\nFROM\r\n	T5 \r\n',NULL),(10,'users','[{\"text\": \"S.No\", \"align\": \"left\", \"sortable\": false}, {\"text\": \"Masters\", \"value\": \"name\"}, {\"text\": \"Values\", \"value\": \"values\"}, {\"text\": \"Description\", \"value\": \"description\"}, {\"text\": \"Action\", \"value\": \"action\"}]','SELECT\r\n	JSON_OBJECT(  	\'id\',MASTER_TYPE.id,   \r\n	\'name\',  MASTER_TYPE.type,\r\n	 \'values\', GROUP_CONCAT( MASTER_VALUE.`value` )  ) as jdoc\r\nFROM\r\n	`MASTER_VALUE`\r\n	right JOIN MASTER_TYPE ON MASTER_VALUE.master_type_id = MASTER_TYPE.`id` \r\nGROUP BY\r\n	MASTER_TYPE.type',NULL);
/*!40000 ALTER TABLE `LISTING` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MASTER_TYPE`
--

DROP TABLE IF EXISTS `MASTER_TYPE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MASTER_TYPE` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `master_name` varchar(255) DEFAULT NULL,
  `master_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MASTER_TYPE`
--

LOCK TABLES `MASTER_TYPE` WRITE;
/*!40000 ALTER TABLE `MASTER_TYPE` DISABLE KEYS */;
INSERT INTO `MASTER_TYPE` VALUES (35,'Country',NULL,NULL,NULL,'36'),(36,'State',NULL,NULL,NULL,'40'),(37,'City',NULL,NULL,NULL,NULL),(38,'Season',NULL,NULL,NULL,'39'),(39,'Fruits',NULL,NULL,NULL,NULL),(40,'University',NULL,NULL,NULL,NULL),(41,'Occupation',NULL,NULL,NULL,NULL),(44,'Gender',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `MASTER_TYPE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MASTER_VALUE`
--

DROP TABLE IF EXISTS `MASTER_VALUE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MASTER_VALUE` (
  `id` int NOT NULL AUTO_INCREMENT,
  `value` varchar(255) DEFAULT NULL,
  `master_type_id` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `master_value_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=150 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MASTER_VALUE`
--

LOCK TABLES `MASTER_VALUE` WRITE;
/*!40000 ALTER TABLE `MASTER_VALUE` DISABLE KEYS */;
INSERT INTO `MASTER_VALUE` VALUES (119,' India ','35',NULL,NULL),(120,' USA ','35',NULL,NULL),(121,' Punjab ','36',NULL,'119'),(122,' Haryana ','36',NULL,'119'),(123,' Rajasthan ','36',NULL,'119'),(124,' Tokyo ','36',NULL,NULL),(125,' New Jersey ','36',NULL,'120'),(126,' REwari ','37',NULL,'122'),(127,' GGN ','37',NULL,'122'),(128,' FDB ','37',NULL,'122'),(129,' SAMLI ','37',NULL,'122'),(130,' NOIDA ','37',NULL,NULL),(131,' Gaziyabad ','37',NULL,NULL),(132,' ludhuiyana ','37',NULL,'121'),(133,' Amritsar ','37',NULL,'121'),(134,' Winter Fruits  ','38',NULL,NULL),(135,' Banana ','39',NULL,NULL),(136,' Orange ','39',NULL,'134'),(137,' Grape ','39',NULL,'134'),(138,' Doctor ','41',NULL,NULL),(139,' Self-Employed ','41',NULL,NULL),(140,' Engineer ','41',NULL,NULL),(141,' Business ','41',NULL,NULL),(142,' Teacher ','41',NULL,NULL),(143,' Delhi University ','40',NULL,NULL),(144,' Punjab University ','40',NULL,NULL),(145,' Kurukshetra University ','40',NULL,'122'),(146,' Goa University ','40',NULL,NULL),(147,' Male ','44',NULL,NULL),(148,' Female  ','44',NULL,NULL),(149,' Others ','44',NULL,NULL);
/*!40000 ALTER TABLE `MASTER_VALUE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PAGES`
--

DROP TABLE IF EXISTS `PAGES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PAGES` (
  `pk` int NOT NULL AUTO_INCREMENT,
  `id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `previous` varchar(255) DEFAULT NULL,
  `next` varchar(255) DEFAULT NULL,
  `steps` varchar(255) DEFAULT NULL,
  `table` varchar(255) DEFAULT NULL,
  `prefilter` varchar(255) DEFAULT NULL,
  `postfilter` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`pk`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PAGES`
--

LOCK TABLES `PAGES` WRITE;
/*!40000 ALTER TABLE `PAGES` DISABLE KEYS */;
INSERT INTO `PAGES` VALUES (1,'addApplication1','Student Application Form 1 ','pages/application/addApplication1',NULL,'addApplication2','1','T1',NULL,NULL),(2,'addApplication2','Student Application Form 2','pages/application/addApplication2','addApplication1','addApplication9','2','T2',NULL,NULL),(3,'appli1',NULL,'pages/application/appli1',NULL,'appli2','1','T3',NULL,NULL),(4,'appli2',NULL,'pages/application/appli2','appli1',NULL,'1','T4',NULL,NULL),(5,'appli3',NULL,'pages/application/appli3',NULL,'appli4','1','T5',NULL,NULL),(6,'appli4',NULL,'pages/application/appli4','appli3',NULL,'1','T6',NULL,NULL),(9,'1','Description Page','pages/application/formDescriptionPage',NULL,'','1','',NULL,NULL),(10,'02367ca0-5d1e-11e9-a4f6-8c89a53bcce4',NULL,'pages/application/viewdoc',NULL,NULL,'1',NULL,NULL,NULL),(11,'96ca1e5f-61d8-11e9-adee-8c89a53bcce4',NULL,'pages/application/List',NULL,NULL,'1',NULL,NULL,NULL),(12,'68499768-64f3-11e9-8e76-8c89a53bcce4',NULL,'pages/application/Add',NULL,NULL,'1','TABLE_DUM',NULL,NULL),(13,'2f602883-7543-11e9-b92b-8c89a53bcce4',NULL,'pages/application/addApplication1ns',NULL,'93339fae-754b-11e9-b92b-8c89a53bcce4','1','T1',NULL,NULL),(14,'93339fae-754b-11e9-b92b-8c89a53bcce4',NULL,'pages/application/addApplication2ns','2f602883-7543-11e9-b92b-8c89a53bcce4','c22609c3-77a2-11e9-84e9-8c89a53bcce4','2','T2',NULL,NULL),(15,'2',NULL,'pages/application/applink2',NULL,NULL,'1',NULL,NULL,NULL),(16,'3',NULL,'pages/application/applink3',NULL,NULL,'1',NULL,NULL,NULL),(17,'326386cf-76eb-11e9-b041-8c89a53bcce4',NULL,'pages/application/appli1ns',NULL,NULL,'1',NULL,NULL,NULL),(20,'addApplication9','Student Application Form  3','pages/application/addApplication9','addApplication2',NULL,'3','T9',NULL,NULL),(22,'masters',NULL,'pages/application/masters',NULL,NULL,'1',NULL,NULL,NULL),(24,'m2m','Master To Master ','pages/application/m2m',NULL,NULL,'1',NULL,NULL,NULL),(25,'m2mAddForm','Master To Master  Add Form','pages/application/m2mAddForm',NULL,NULL,'1',NULL,NULL,NULL),(26,'masterAddForm',NULL,'pages/application/masterAddForm',NULL,NULL,'1','MASTER_TYPE',NULL,NULL),(27,'test','Testing Purpose','pages/application/testPage',NULL,NULL,'1','T10','http://127.0.0.1:8081/employee',NULL),(29,'usersAddForm','For Add Users','pages/application/usersAddForm',NULL,NULL,'1',NULL,NULL,NULL),(30,'users','User-Role','pages/application/users',NULL,NULL,'1',NULL,NULL,NULL),(31,'erpId','Erp VeiwForm','pages/application/Erp/erpViewPage',NULL,NULL,'1',NULL,NULL,NULL),(32,'AddErpForm','ErpPageAdd1','pages/application/Erp/erpAddPage1',NULL,'erpAddPage2','2','ADDERPTABLE1',NULL,NULL),(46,'custPrsnlDetails','Personal Detail','pages/customerPortal/custPrsnlDetails',NULL,'custFncnlDetails','1','CUSTOMER_PERSONAL_DETAILS',NULL,NULL),(47,'custFncnlDetails','Finence Detail','pages/customerPortal/custFncnlDetails',NULL,NULL,'1','CUSTOMER_PERSONAL_DETAILS',NULL,NULL),(48,'custOthrDetails','Other Detail','pages/customerPortal/custOthrDetails',NULL,NULL,'1','CUSTOMER_PERSONAL_DETAILS',NULL,NULL),(49,'custPaytmDetails','PYtmDetail','pages/customerPortal/custPaytmDetails',NULL,NULL,'1','CUSTOMER_PERSONAL_DETAILS',NULL,NULL),(50,'custTrancDetails','Trans Detail','pages/customerPortal/custTrancDetails',NULL,NULL,'1','CUSTOMER_PERSONAL_DETAILS',NULL,NULL);
/*!40000 ALTER TABLE `PAGES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PAGE_MASTER`
--

DROP TABLE IF EXISTS `PAGE_MASTER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PAGE_MASTER` (
  `pk` int NOT NULL AUTO_INCREMENT,
  `link_name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `id` varchar(255) DEFAULT NULL,
  `addform` varchar(255) DEFAULT NULL,
  `main_menu` varchar(255) DEFAULT NULL,
  `sub_menu` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`pk`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PAGE_MASTER`
--

LOCK TABLES `PAGE_MASTER` WRITE;
/*!40000 ALTER TABLE `PAGE_MASTER` DISABLE KEYS */;
INSERT INTO `PAGE_MASTER` VALUES (1,'Personal Details','apply','apply','1','addApplication1','Application','Home Details','mdi-account-plus'),(2,'Acedemic Details','apply2','apply2','2','appli1','Application',NULL,'mdi-home'),(3,'Apply3','apply3','apply3','3','appli3','Application',NULL,'mdi-home'),(7,'Masters','masters','masters','masters','masterAddForm','Masters2',NULL,'mdi-clipboard-text'),(8,'m2m','m2m','m2m','m2m','m2mAddForm','Masters2',NULL,'mdi-clipboard-text'),(9,'Test','test','test','test','testAddForm','Masters2',NULL,'mdi-clipboard-text'),(10,'Users','users','users','users','usersAddForm','Users',NULL,'mdi-account-multiple'),(11,'Erp Form','erpFormUrl','Form for erp details','erpId','AddErpForm','Erp','erpSubMenu','mdi-bank'),(20,'Personal Details','custPrsnlDetails','custPrsnlDetails','custPrsnlDetails','custPrsnlDetails','Loan Form','','mdi-account-multiple'),(21,'Financial Details','custFncnlDetails','custFncnlDetails','custFncnlDetails','custFncnlDetails','Loan Form','','mdi-account-multiple'),(22,'Other Details','custOthrDetails','custOthrDetails','custOthrDetails','custOthrDetails','Loan Form','','mdi-account-multiple'),(23,'Paytm Details','custPaytmDetails','custPaytmDetails','custPaytmDetails','addCustPaytmDetails','Loan Form','','mdi-account-multiple'),(24,'Trans Details','custTrancDetails','custTrancDetails','custTrancDetails','addCustTrancDetails','Loan Form','','mdi-account-multiple');
/*!40000 ALTER TABLE `PAGE_MASTER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QUERIES`
--

DROP TABLE IF EXISTS `QUERIES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QUERIES` (
  `pk` int NOT NULL AUTO_INCREMENT,
  `query` varchar(255) DEFAULT NULL,
  `pages_pk` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `order` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`pk`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QUERIES`
--

LOCK TABLES `QUERIES` WRITE;
/*!40000 ALTER TABLE `QUERIES` DISABLE KEYS */;
INSERT INTO `QUERIES` VALUES (1,'INSERT INTO $tablename (jdoc,r_id , pages_pk,created_by,created_date) values(?,?,?,1,now())','1','I','1'),(2,'SELECT JSON_OBJECT( \'id\', $tablename.id, \'dt\', $tablename.jdoc ) as jdoc FROM $tablename WHERE  $tablename.id=? ','1','S','1'),(3,'UPDATE $tablename SET JDOC=? , r_id = ? WHERE ID = ?','1','U','1'),(4,'SELECT JSON_OBJECT( \'id\', $tablename.id, \'dt\', $tablename.jdoc ) as jdoc FROM $tablename WHERE  $tablename.r_id=? ',NULL,NULL,'1'),(25,'select \r\nJSON_OBJECT(\r\n\'action\', PAGE_MASTER.main_menu,\r\n\'title\', PAGE_MASTER.main_menu,\r\n\'active\' ,true,\r\n\'items\',JSON_ARRAYAGG(\r\nJSON_OBJECT(\r\n\'title\',PAGE_MASTER.link_name\r\n)\r\n))\nfrom \r\nPAGE_MASTER\r\nGROUP BY PAGE_MASTER.main_menu','masters',NULL,'1');
/*!40000 ALTER TABLE `QUERIES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QUERIES_COMMON`
--

DROP TABLE IF EXISTS `QUERIES_COMMON`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QUERIES_COMMON` (
  `id` varchar(255) NOT NULL,
  `query` varchar(1000) DEFAULT NULL,
  `tmpPk` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QUERIES_COMMON`
--

LOCK TABLES `QUERIES_COMMON` WRITE;
/*!40000 ALTER TABLE `QUERIES_COMMON` DISABLE KEYS */;
INSERT INTO `QUERIES_COMMON` VALUES ('ba98b760-806b-11e9-8557-8c89a53bcce4_1','select concat(\'[\',GROUP_CONCAT(table1.menu),\']\') as menu from (\nselect \n1 as `1`,\nJSON_OBJECT(\n\'action\', PAGE_MASTER.icon,\n\'title\', PAGE_MASTER.main_menu,\n\'items\',JSON_ARRAYAGG(\nJSON_OBJECT(\n\'title\',PAGE_MASTER.link_name,\n\'url\',PAGE_MASTER.id\n)\n))as menu\nfrom \nPAGE_MASTER\nGROUP BY PAGE_MASTER.main_menu ,PAGE_MASTER.icon) as table1\ngroup by `1`  ',2),('ba98b760-806b-11e9-8557-8c89a53bcce4','select concat(\'[\',GROUP_CONCAT(table1.menu),\']\') as menu from (\nselect \n1 as `1`,\nJSON_OBJECT(\n\'action\', PAGE_MASTER.icon,\n\'title\', PAGE_MASTER.main_menu,\n\'items\',JSON_ARRAYAGG(\nJSON_OBJECT(\n\'title\',PAGE_MASTER.link_name,\n\'url\',PAGE_MASTER.id\n)\n))as menu\nfrom \nPAGE_MASTER\nGROUP BY PAGE_MASTER.main_menu  ) as table1\ngroup by `1` ',3),('navBarData',' select concat(\'[\',GROUP_CONCAT(table1.menu),\']\') as menu from (\nselect \n1 as `1`,\nJSON_OBJECT(\n\'action\', PAGE_MASTER.icon,\n\'title\', PAGE_MASTER.main_menu,\n\'items\',JSON_ARRAYAGG(\nJSON_OBJECT(\n\'title\',PAGE_MASTER.link_name,\n\'url\',PAGE_MASTER.id\n)\n))as menu\nfrom \nPAGE_MASTER\ninner join USER_PAGEMASTER_MAPPING on USER_PAGEMASTER_MAPPING.page_id = PAGE_MASTER.pk \ninner join  USERS on USER_PAGEMASTER_MAPPING.user_id = USERS.user_id \nwhere  USERS.user_id =  ?\nGROUP BY PAGE_MASTER.main_menu  ) as table1\ngroup by `1`  ',1000);
/*!40000 ALTER TABLE `QUERIES_COMMON` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QUERIES_PAGES`
--

DROP TABLE IF EXISTS `QUERIES_PAGES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QUERIES_PAGES` (
  `pk` int NOT NULL AUTO_INCREMENT,
  `queries_pk` varchar(255) DEFAULT NULL,
  `pages_pk` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`pk`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QUERIES_PAGES`
--

LOCK TABLES `QUERIES_PAGES` WRITE;
/*!40000 ALTER TABLE `QUERIES_PAGES` DISABLE KEYS */;
INSERT INTO `QUERIES_PAGES` VALUES (1,'1','1'),(2,'1','2'),(3,'1','3'),(4,'1','4'),(5,'1','5'),(6,'1','6'),(7,'1','7'),(8,'1','8'),(9,'2','1'),(10,'2','2'),(11,'2','3'),(12,'2','4'),(13,'2','5'),(14,'2','6'),(15,'2','7'),(16,'2','8'),(17,'3','1'),(18,'3','2'),(19,'3','3'),(20,'3','4'),(21,'3','5'),(22,'3','6'),(23,'3','7'),(24,'3','8'),(25,'1','12'),(26,'1','13'),(27,'1','14'),(28,'1','20');
/*!40000 ALTER TABLE `QUERIES_PAGES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ROLES`
--

DROP TABLE IF EXISTS `ROLES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ROLES` (
  `role_id` varchar(255) DEFAULT NULL,
  `role_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ROLES`
--

LOCK TABLES `ROLES` WRITE;
/*!40000 ALTER TABLE `ROLES` DISABLE KEYS */;
INSERT INTO `ROLES` VALUES ('3','ROLE_ADMIN'),('2','ROLE_USER');
/*!40000 ALTER TABLE `ROLES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T1`
--

DROP TABLE IF EXISTS `T1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `T1` (
  `id` int NOT NULL AUTO_INCREMENT,
  `jdoc` varchar(1200) DEFAULT NULL,
  `active` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_date` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `r_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `rIdT1` (`r_id`)
) ENGINE=InnoDB AUTO_INCREMENT=246 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T1`
--

LOCK TABLES `T1` WRITE;
/*!40000 ALTER TABLE `T1` DISABLE KEYS */;
INSERT INTO `T1` VALUES (221,'{\"name\":\"sachinNew\",\"delhi_no\":\"Uni123\",\"doc_pk\":\"\",\"Dob\":\"2006-08-23\",\"mobile\":\"9050202007\",\"email\":\"thesachinyadav@live.com\",\"age\":\"14\",\"mont\":\"1\",\"days\":\"\",\"mobile_m\":\"9050202007\",\"email_m\":\"thesachinyadav@live.com\",\"mobile1\":\"\",\"occupation\":\"\",\"mobile2\":\"\",\"mobno\":\"test@gmail.com\",\"email1\":\"\",\"occupation1\":[],\"natio\":\"India\",\"pre_add\":\"rewari\",\"mail_add\":\"goa\",\"emer_cont\":\"\",\"row\":\"radio-2\",\"row1\":\"radio-2\",\"row2\":\"radio-2\",\"row3\":\"radio-1\",\"row4\":\"radio-1\",\"row5\":\"radio-2\",\"row6\":\"radio-2\",\"row7\":\"radio-1\",\"tel_no\":\"\",\"email2\":\"\",\"exm\":\"test\",\"board\":\"Board\",\"year_ofpass\":\"2012\",\"roll_no\":\"123U123\",\"date_ofaward\":\"\",\"cgpa\":\"\",\"total_mark\":\"\",\"moth\":\"\",\"row8\":\"true\",\"ref_course\":[{\"sub_name\":\"mathds \",\"max_marks\":\"100\",\"marks_obtai\":\"89\",\"perc\":\"89.00\"}],\"day\":\"8\",\"fath\":\"sarjeet singh\"}',NULL,'1','2020-12-19 14:34:21',NULL,'221'),(228,'{\"name\":\"raoSachn\",\"delhi_no\":\"uni123\",\"doc_pk\":\"\",\"Dob\":\"2020-07-01\",\"mobile\":\"9080706050\",\"email\":\"test@live.com\",\"age\":\"0\",\"mont\":\"3\",\"days\":\"\",\"mobile_m\":\"\",\"email_m\":\"thesachinyadav@live.com\",\"mobile1\":\"\",\"occupation\":\"\",\"mobile2\":\"\",\"mobno\":\"\",\"email1\":\"\",\"occupation1\":[],\"natio\":\"Indian\",\"pre_add\":\"rewari\",\"mail_add\":\"goa\",\"emer_cont\":\"\",\"row\":\"radio-1\",\"row1\":\"radio-2\",\"row2\":\"radio-2\",\"row3\":\"radio-2\",\"row4\":\"radio-2\",\"row5\":\"radio-1\",\"row6\":\"radio-2\",\"row7\":\"radio-1\",\"tel_no\":\"\",\"email2\":\"\",\"exm\":\"Exm1\",\"board\":\"Brd1\",\"year_ofpass\":\"2101\",\"roll_no\":\"rlNo\",\"date_ofaward\":\"\",\"cgpa\":\"\",\"total_mark\":\"\",\"moth\":\"\",\"row8\":\"true\",\"ref_course\":[{\"sub_name\":\"sub1\",\"max_marks\":\"100\",\"marks_obtai\":\"78\",\"perc\":\"78.00\"}],\"day\":\"0\",\"fath\":\"fatherG\"}',NULL,'1','2020-12-19 16:35:24',NULL,'228'),(242,'{\"name\":\"sachin33\",\"delhi_no\":\"12321313123\",\"doc_pk\":\"\",\"Dob\":\"2020-12-10\",\"mobile\":\"9050202007\",\"email\":\"thesachinyadav@live.com\",\"age\":\"0\",\"mont\":\"-2\",\"days\":\"\",\"mobile_m\":\"1234512345\",\"email_m\":\"thesachinyadav@live.com\",\"mobile1\":\"\",\"occupation\":\"\",\"mobile2\":\"\",\"mobno\":\"\",\"email1\":\"\",\"occupation1\":[],\"natio\":\"\",\"pre_add\":\"gao\",\"mail_add\":\"panji\",\"emer_cont\":\"\",\"row\":\"radio-2\",\"row1\":\"radio-2\",\"row2\":\"radio-2\",\"row3\":\"radio-2\",\"row4\":\"radio-2\",\"row5\":\"radio-2\",\"row6\":\"radio-2\",\"row7\":\"radio-2\",\"tel_no\":\"\",\"email2\":\"\",\"exm\":\"scndry\",\"board\":\"kuk\",\"year_ofpass\":\"2010\",\"roll_no\":\"565656\",\"date_ofaward\":\"\",\"cgpa\":\"90\",\"total_mark\":\"100\",\"moth\":\"\",\"row8\":\"true\",\"ref_course\":[{\"sub_name\":\"mySign\",\"max_marks\":\"100\",\"marks_obtai\":\"99\",\"perc\":\"99.00\"}],\"day\":\"-9\",\"fath\":\"sachnydv\"}',NULL,'1','2020-12-20 17:49:10',NULL,'242');
/*!40000 ALTER TABLE `T1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T2`
--

DROP TABLE IF EXISTS `T2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `T2` (
  `id` int NOT NULL AUTO_INCREMENT,
  `r_id` varchar(255) DEFAULT NULL,
  `jdoc` varchar(1300) DEFAULT NULL,
  `active` varchar(255) DEFAULT NULL,
  `pages_pk` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_date` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `RIdT2` (`r_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T2`
--

LOCK TABLES `T2` WRITE;
/*!40000 ALTER TABLE `T2` DISABLE KEYS */;
INSERT INTO `T2` VALUES (94,'221','{\"docs\":50,\"par_g\":\"prnt2sign\",\"stu_of\":\"stdnt2Sign\",\"date\":\"2020-12-11\",\"oth_ret\":[{\"details\":\"doc2\"}],\"menu\":false}',NULL,NULL,'1','2020-12-19 16:36:00',NULL),(97,'228','{\"docs\":50,\"par_g\":\"prntSign\",\"stu_of\":\"studSign\",\"date\":\"2020-12-03\",\"oth_ret\":[{\"details\":\"tdocAttach\"}],\"menu\":false}',NULL,NULL,NULL,NULL,NULL),(98,'242','{\"docs\":50,\"par_g\":\"prntGuardSign\",\"stu_of\":\"signOfStudent\",\"date\":\"2020-12-25\",\"oth_ret\":[{\"details\":\"dcmt\"}],\"menu\":false}',NULL,NULL,'1','2020-12-20 17:50:02',NULL);
/*!40000 ALTER TABLE `T2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T3`
--

DROP TABLE IF EXISTS `T3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `T3` (
  `id` int NOT NULL AUTO_INCREMENT,
  `jdoc` varchar(1300) DEFAULT NULL,
  `active` varchar(255) DEFAULT NULL,
  `pages_pk` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_date` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `r_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `RIdT3` (`r_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T3`
--

LOCK TABLES `T3` WRITE;
/*!40000 ALTER TABLE `T3` DISABLE KEYS */;
/*!40000 ALTER TABLE `T3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T4`
--

DROP TABLE IF EXISTS `T4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `T4` (
  `id` int NOT NULL AUTO_INCREMENT,
  `jdoc` varchar(1300) DEFAULT NULL,
  `active` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_date` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `r_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `RIdT4` (`r_id`)
) ENGINE=InnoDB AUTO_INCREMENT=212 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T4`
--

LOCK TABLES `T4` WRITE;
/*!40000 ALTER TABLE `T4` DISABLE KEYS */;
INSERT INTO `T4` VALUES (194,'{\"men\": \"\", \"date\": \"\", \"date2\": \"\", \"par_g\": \"\", \"radios\": \"\", \"stu_of\": \"\", \"oth_ret\": [{\"perc\": \"\", \"year\": \"\", \"perct\": \"\", \"sub_name\": \"\", \"max_marks\": \"\", \"marks_obtai\": \"\"}], \"stu_ofapp\": \"\"}','\0','1','2019-06-03 13:57:33','\0','43'),(195,'{\"men\": \"dsfsd\", \"date\": \"\", \"date2\": \"\", \"par_g\": \"\", \"radios\": \"radio-6\", \"stu_of\": \"\", \"oth_ret\": [{\"perc\": \"\", \"year\": \"\", \"perct\": \"\", \"sub_name\": \"\", \"max_marks\": \"\", \"marks_obtai\": \"\"}], \"stu_ofapp\": \"\"}','\0','1','2019-06-10 12:03:42','\0','84'),(196,'{\"men\": \"\", \"date\": \"\", \"date2\": \"\", \"par_g\": \"\", \"radios\": \"\", \"stu_of\": \"\", \"oth_ret\": [{\"perc\": \"\", \"year\": \"\", \"perct\": \"\", \"sub_name\": \"\", \"max_marks\": \"\", \"marks_obtai\": \"\"}], \"stu_ofapp\": \"\"}','\0','1','2019-06-10 12:06:37','\0','85'),(197,'{\"men\": \"\", \"date\": \"\", \"date2\": \"\", \"par_g\": \"\", \"radios\": \"\", \"stu_of\": \"\", \"oth_ret\": [{\"perc\": \"\", \"year\": \"\", \"perct\": \"\", \"sub_name\": \"\", \"max_marks\": \"\", \"marks_obtai\": \"\"}], \"stu_ofapp\": \"\"}','\0','1','2019-06-10 12:07:28','\0','86'),(198,'{\"men\": \"\", \"date\": \"\", \"date2\": \"\", \"par_g\": \"\", \"radios\": \"\", \"stu_of\": \"\", \"oth_ret\": [{\"perc\": \"\", \"year\": \"\", \"perct\": \"\", \"sub_name\": \"\", \"max_marks\": \"\", \"marks_obtai\": \"\"}], \"stu_ofapp\": \"\"}','\0','1','2019-06-10 12:11:08','\0','88'),(199,'{\"men\": \"\", \"date\": \"\", \"date2\": \"\", \"par_g\": \"\", \"radios\": \"\", \"stu_of\": \"\", \"oth_ret\": [{\"perc\": \"\", \"year\": \"\", \"perct\": \"\", \"sub_name\": \"\", \"max_marks\": \"\", \"marks_obtai\": \"\"}], \"stu_ofapp\": \"\"}','\0','1','2019-06-10 12:11:50','\0','89'),(200,'{\"men\": \"\", \"date\": \"\", \"date2\": \"\", \"par_g\": \"\", \"radios\": \"\", \"stu_of\": \"\", \"oth_ret\": [{\"perc\": \"\", \"year\": \"\", \"perct\": \"\", \"sub_name\": \"\", \"max_marks\": \"\", \"marks_obtai\": \"\"}], \"stu_ofapp\": \"\"}','\0','1','2019-06-10 13:05:57','\0','90'),(202,'{\"men\": \"\", \"row\": \"radio-2\", \"date\": \"2019-06-13\", \"menu\": false, \"date2\": \"\", \"par_g\": \"\", \"radios\": \"radio-5\", \"stu_of\": \"\", \"oth_ret\": [{\"perc\": \"\", \"year\": \"\", \"perct\": \"\", \"sub_name\": \"cvbvcb\", \"max_marks\": \"\", \"marks_obtai\": \"\"}], \"stu_ofapp\": \"\"}','\0','1','2019-06-10 17:14:49','\0','93'),(205,'{\"men\": \"\", \"date\": \"\", \"date2\": \"\", \"par_g\": \"\", \"radios\": \"\", \"stu_of\": \"\", \"oth_ret\": [{\"perc\": \"\", \"year\": \"\", \"perct\": \"\", \"sub_name\": \"\", \"max_marks\": \"\", \"marks_obtai\": \"\"}], \"stu_ofapp\": \"\", \"   stu_ofapp\": \"fdg\"}','\0','1','2019-06-12 12:11:44','\0','96');
/*!40000 ALTER TABLE `T4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T5`
--

DROP TABLE IF EXISTS `T5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `T5` (
  `id` int NOT NULL AUTO_INCREMENT,
  `jdoc` varchar(1300) DEFAULT NULL,
  `active` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_date` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `r_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `RIdT5` (`r_id`)
) ENGINE=InnoDB AUTO_INCREMENT=218 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T5`
--

LOCK TABLES `T5` WRITE;
/*!40000 ALTER TABLE `T5` DISABLE KEYS */;
INSERT INTO `T5` VALUES (194,'{\"men\": \"\", \"date\": \"\", \"date2\": \"\", \"par_g\": \"\", \"radios\": \"\", \"stu_of\": \"\", \"oth_ret\": [{\"perc\": \"\", \"year\": \"\", \"perct\": \"\", \"sub_name\": \"\", \"max_marks\": \"\", \"marks_obtai\": \"\"}], \"stu_ofapp\": \"\"}','\0','1','2019-06-03 13:57:33','\0','43'),(204,'{\"Dob\": \"2019-06-08\", \"age\": \"\", \"row\": \"\", \"cgpa\": \"\", \"days\": \"\", \"fath\": \"\", \"mont\": \"\", \"name\": \"gjkdhdsfkj\", \"email\": \"\", \"natio\": \"\", \"perca\": \"\", \"percb\": \"\", \"email1\": \"\", \"mobile\": \"\", \"office\": \"\", \"radios\": \"\", \"school\": \"\", \"tel_Mo\": \"\", \"tel_no\": \"\", \"year_a\": \"\", \"year_b\": \"\", \"mobile1\": \"\", \"mobile2\": \"\", \"pre_add\": \"\", \"roll_no\": \"\", \"col_year\": \"\", \"delhi_no\": \"213213\", \"rollno_a\": \"\", \"rollno_b\": \"\", \"nme_boara\": \"\", \"nme_boarb\": \"\", \"univ_sity\": \"\", \"marksobt_a\": \"\", \"marksobt_b\": \"\", \"maxmarks_a\": \"\", \"maxmarks_b\": \"\", \"occupation\": \"\", \"total_mark\": \"\", \"occupation1\": \"\", \"year_ofpass\": \"\", \"date_ofaward\": \"\"}','\0',NULL,'2020-12-04 14:58:56','\0','2');
/*!40000 ALTER TABLE `T5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T6`
--

DROP TABLE IF EXISTS `T6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `T6` (
  `id` int NOT NULL AUTO_INCREMENT,
  `jdoc` varchar(1300) DEFAULT NULL,
  `active` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_date` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `r_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `RIdT6` (`r_id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T6`
--

LOCK TABLES `T6` WRITE;
/*!40000 ALTER TABLE `T6` DISABLE KEYS */;
INSERT INTO `T6` VALUES (194,'{\"men\": \"\", \"date\": \"\", \"date2\": \"\", \"par_g\": \"\", \"radios\": \"\", \"stu_of\": \"\", \"oth_ret\": [{\"perc\": \"\", \"year\": \"\", \"perct\": \"\", \"sub_name\": \"\", \"max_marks\": \"\", \"marks_obtai\": \"\"}], \"stu_ofapp\": \"\"}','\0','1','2019-06-03 13:57:33','\0','43');
/*!40000 ALTER TABLE `T6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `T9`
--

DROP TABLE IF EXISTS `T9`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `T9` (
  `id` int NOT NULL AUTO_INCREMENT,
  `r_id` varchar(255) DEFAULT NULL,
  `jdoc` varchar(1300) DEFAULT NULL,
  `active` varchar(255) DEFAULT NULL,
  `pages_pk` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_date` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `RIdT9` (`r_id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `T9`
--

LOCK TABLES `T9` WRITE;
/*!40000 ALTER TABLE `T9` DISABLE KEYS */;
INSERT INTO `T9` VALUES (72,'221','{\"row\":\"radio-1\",\"par_g\":\"parent\",\"stu_of\":\"student\",\"date\":\"2020-12-16\",\"oth_ret\":[{\"details\":\"\"}],\"menu\":false}',NULL,NULL,'1','2020-12-19 14:36:11',NULL),(74,'228','{\"row\":\"radio-2\",\"par_g\":\"sign3Parnt\",\"stu_of\":\"sign3Stud\",\"date\":\"2020-10-07\",\"oth_ret\":[{\"details\":\"\"}],\"menu\":false}',NULL,NULL,'1','2020-12-19 16:36:28',NULL),(76,'242','{\"row\":\"radio-1\",\"par_g\":\"prntssgn\",\"stu_of\":\"sstntsgn\",\"date\":\"2020-12-17\",\"oth_ret\":[{\"details\":\"\"}],\"menu\":false}',NULL,NULL,'1','2020-12-20 17:50:35',NULL);
/*!40000 ALTER TABLE `T9` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TABLE_DUM`
--

DROP TABLE IF EXISTS `TABLE_DUM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TABLE_DUM` (
  `id` int NOT NULL AUTO_INCREMENT,
  `jdoc` varchar(1200) DEFAULT NULL,
  `active` varchar(255) DEFAULT NULL,
  `pages_pk` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_date` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TABLE_DUM`
--

LOCK TABLES `TABLE_DUM` WRITE;
/*!40000 ALTER TABLE `TABLE_DUM` DISABLE KEYS */;
INSERT INTO `TABLE_DUM` VALUES (5,'{\"to\": \"dsa\", \"pay\": \"dsa\", \"from\": \"dsa\", \"name\": \"dsa\"}','\0','12','1','2019-04-22 19:18:46',''),(6,'{\"to\": \"erwerr\", \"pay\": \"wer\", \"from\": \"werwer\", \"name\": \"wer\"}','\0','12','1','2019-04-24 12:03:19',''),(7,'{\"to\": \"erwerr\", \"pay\": \"wer\", \"from\": \"werwer\", \"name\": \"wer\"}','\0','12','1','2019-04-24 12:07:12','\0'),(8,'{\"to\": \"wqe\", \"pay\": \"wqe\", \"from\": \"wqe\", \"name\": \"we\"}','\0','12','1','2019-04-24 12:07:29','\0'),(9,'{\"to\": \"wqe\", \"pay\": \"wqe\", \"from\": \"wqe\", \"name\": \"we\"}','\0','12','1','2019-04-24 12:08:06','\0'),(10,'{\"to\": \"wewe2\", \"pay\": \"wedwerrrr\", \"from\": \"wewe2\", \"name\": \"deww\"}','\0','12','1','2019-04-24 12:49:10','\0'),(11,'{\"to\": \"sfdfs\", \"pay\": \"dfsfsdfsf\", \"from\": \"dsfsdf\", \"name\": \"sdsf\"}','\0','12','1','2019-04-24 12:49:48','\0'),(12,'{\"to\": \"wqqw\", \"pay\": \"wqqqw\", \"from\": \"qwq\", \"name\": \"qwqw\"}','\0','12','1','2019-04-24 12:50:03','\0'),(13,'{\"to\": \"ddd\", \"pay\": \"asasas\", \"from\": \"sadddd\", \"name\": \"sad\"}','\0','12','1','2019-04-24 12:59:52','\0'),(14,'{\"to\": \"zzzzz\", \"pay\": \"asdasdsad\", \"from\": \"zxxxx\", \"name\": \"zXZ\"}','\0','12','1','2019-04-24 13:00:50','\0'),(15,'{\"to\": \"ZSAas\", \"pay\": \"sas\", \"from\": \"asassa\", \"name\": \"AASAS\"}','\0','12','1','2019-04-24 13:52:04','\0'),(16,'{\"to\": \"rwer\", \"pay\": \"werewr\", \"from\": \"rewr\", \"name\": \"ererwer\"}','\0','12','1','2019-04-24 13:52:26','\0'),(17,'{\"to\": \"dasasd\", \"pay\": \"dsadsaddd\", \"from\": \"sadsad\", \"name\": \"asdsad\"}','\0','12','1','2019-04-24 13:52:45','\0'),(18,'{\"to\": \"fjhhghkhjk\", \"pay\": \"jhkjhkhjl\", \"from\": \"asdsadsad\", \"name\": \"adsadsa\"}','\0','12','1','2019-04-24 13:53:30','\0'),(19,'{\"to\": \"fjhhghkhjk\", \"pay\": \"jhkjhkhjl\", \"from\": \"asdsadsad\", \"name\": \"adsadsa\"}','\0','12','1','2019-04-24 13:53:33','\0'),(20,'{\"to\": \"\", \"pay\": \"\", \"from\": \"\", \"name\": \"\"}','\0','12','1','2019-04-24 13:54:11','\0'),(21,'{\"to\": \"sadasd\", \"pay\": \"sad\", \"from\": \"sad\", \"name\": \"dsad\"}','\0','12','1','2019-04-24 13:55:01','\0'),(22,'{\"to\": \"dasd\", \"pay\": \"dsad\", \"from\": \"adsad\", \"name\": \"asdsad\"}','\0','12','1','2019-04-24 13:55:47','\0'),(23,'{\"to\": \"sdsadsa\", \"pay\": \"dsad\", \"from\": \"sada\", \"name\": \"sadas\"}','\0','12','1','2019-04-24 13:57:24','\0'),(24,'{\"to\": \"dsjofkd[psfk\", \"pay\": \"[pdjdsfd\", \"from\": \"sdjkposdfj\", \"name\": \"nzskj;odl\"}','\0','12','1','2019-04-24 14:24:45','\0'),(25,'{\"to\": \"ewqe\", \"pay\": \"eq\", \"from\": \"wqe\", \"name\": \"weqe\"}','\0','12','1','2019-04-24 14:27:00','\0'),(26,'{\"to\": \"sadsad\", \"pay\": \"saddssad\", \"from\": \"sad\", \"name\": \"dsad\"}','\0','12','1','2019-04-24 14:28:27','\0'),(27,'{\"to\": \"sadsa\", \"pay\": \"sadads\", \"from\": \"dsadsad\", \"name\": \"sadsa\"}','\0','12','1','2019-04-24 14:28:38','\0');
/*!40000 ALTER TABLE `TABLE_DUM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USERS`
--

DROP TABLE IF EXISTS `USERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `USERS` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `encrypted_password` varchar(255) DEFAULT NULL,
  `enabled` varchar(255) DEFAULT NULL,
  `registration_no` varchar(245) DEFAULT NULL,
  `created_date` varchar(255) DEFAULT NULL,
  `updated_date` varchar(255) DEFAULT NULL,
  `form_status` varchar(255) DEFAULT NULL,
  `role_type_id` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `unameUnq` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=1003 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USERS`
--

LOCK TABLES `USERS` WRITE;
/*!40000 ALTER TABLE `USERS` DISABLE KEYS */;
INSERT INTO `USERS` VALUES (1,'Sachin','$2a$10$EblZqNptyYvcLm/VwDCVAuBjzZOI7khzdyGPBr08PpIi0na624b8.','No','123','Self','2020-08-20 18:36:49','1','3'),(2,'dbadmin1','$2a$10$EblZqNptyYvcLm/VwDCVAuBjzZOI7khzdyGPBr08PpIi0na624b8.','1','685421ABC','2019-03-14 12:25:26',NULL,'0','3'),(3,'dbuser1','$2a$10$EblZqNptyYvcLm/VwDCVAuBjzZOI7khzdyGPBr08PpIi0na624b8.','1',NULL,NULL,NULL,'0','3'),(999,'customer',NULL,NULL,NULL,NULL,NULL,NULL,'3'),(1001,'MHMU9519A','$2a$10$EblZqNptyYvcLm/VwDCVAuBjzZOI7khzdyGPBr08PpIi0na624b8.',NULL,NULL,'2021-01-05 22:24:24','2021-01-05 22:24:24',NULL,'2'),(1002,'VZJL5160A','$2a$10$EblZqNptyYvcLm/VwDCVAuBjzZOI7khzdyGPBr08PpIi0na624b8.',NULL,NULL,'2021-01-05 22:49:28','2021-01-05 22:49:28',NULL,'2');
/*!40000 ALTER TABLE `USERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USERS_ROLE`
--

DROP TABLE IF EXISTS `USERS_ROLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `USERS_ROLE` (
  `ID` int DEFAULT NULL,
  `USER_ID` varchar(255) DEFAULT NULL,
  `ROLE_ID` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USERS_ROLE`
--

LOCK TABLES `USERS_ROLE` WRITE;
/*!40000 ALTER TABLE `USERS_ROLE` DISABLE KEYS */;
INSERT INTO `USERS_ROLE` VALUES (1,'1','2'),(2,'2','2'),(3,'2','3'),(4,'3','2');
/*!40000 ALTER TABLE `USERS_ROLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER_PAGEMASTER_MAPPING`
--

DROP TABLE IF EXISTS `USER_PAGEMASTER_MAPPING`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `USER_PAGEMASTER_MAPPING` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) DEFAULT NULL,
  `page_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_PAGEMASTER_MAPPING`
--

LOCK TABLES `USER_PAGEMASTER_MAPPING` WRITE;
/*!40000 ALTER TABLE `USER_PAGEMASTER_MAPPING` DISABLE KEYS */;
INSERT INTO `USER_PAGEMASTER_MAPPING` VALUES (1,'999','20'),(2,'999','21'),(3,'999','22'),(4,'999','23'),(5,'999','24'),(6,'999','25');
/*!40000 ALTER TABLE `USER_PAGEMASTER_MAPPING` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VIEW`
--

DROP TABLE IF EXISTS `VIEW`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `VIEW` (
  `pk` int NOT NULL AUTO_INCREMENT,
  `id` varchar(255) DEFAULT NULL,
  `query` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `desc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`pk`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VIEW`
--

LOCK TABLES `VIEW` WRITE;
/*!40000 ALTER TABLE `VIEW` DISABLE KEYS */;
INSERT INTO `VIEW` VALUES (1,'01a6df2a-5de7-11e9-8094-8c89a53bcce4','select JSON_OBJECT(\'Name\',T1.jdoc -> \'$.name\',\r\n\'Date of Birth\',T1.jdoc -> \'$.Dob\',\r\n\'Mobile no\',T1.jdoc -> \'$.mobile\',\r\n\'Email\',T1.jdoc -> \'$.email\')\r\nas jdoc\r\nFROM T1\r\nWHERE T1.created_by = 1',NULL);
/*!40000 ALTER TABLE `VIEW` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VIEW_1`
--

DROP TABLE IF EXISTS `VIEW_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `VIEW_1` (
  `pk` int NOT NULL AUTO_INCREMENT,
  `id` varchar(255) DEFAULT NULL,
  `query` varchar(255) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`pk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VIEW_1`
--

LOCK TABLES `VIEW_1` WRITE;
/*!40000 ALTER TABLE `VIEW_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `VIEW_1` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-09  9:19:14
