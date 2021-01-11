package com.ils.common.controller;

import com.ils.util.FileSystemStorageService;
import com.ils.Model.HRefModel;
import static com.ils.common.controller.PaymentController.getPropValueForPaytm;
import com.ils.util.Common;
import java.io.IOException;
import java.io.Reader;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;
import javax.servlet.http.HttpSession;
import org.apache.ibatis.io.Resources;
import org.apache.log4j.Logger;
import org.json.JSONArray;
import org.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.method.annotation.MvcUriComponentsBuilder;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class UploadController {

    Logger logger = Logger.getLogger(UploadController.class);
    @Autowired
    private FileSystemStorageService storageService;
    @Autowired
    private CommonJdbcUtil commonJdbcUtil;
    @Autowired
    private Common common;

    public static String getPropValueFromAppProperties(String key) {
        Properties prop = new Properties();
        try {
            String resource = "bootstrap.properties";
            Reader reader = null;
            reader = Resources.getResourceAsReader(resource);
            prop.load(reader);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return prop.getProperty(key).trim();
    }

//       private static String UPLOADED_FOLDER = "/home/maverick/mygit/Projects/IHE_2/tmpFileStoreage/";
    private static String UPLOADED_FOLDER = getPropValueFromAppProperties("spring.file.storage.path");

    @RequestMapping(value = "/files/list", method = RequestMethod.GET)
    public String listFiles(Model model) {
        List<Path> lodf = new ArrayList<>();
        List<HRefModel> uris = new ArrayList<>();

        try {
            lodf = storageService.listSourceFiles(storageService.getUploadLocation());
            for (Path pt : lodf) {
                HRefModel href = new HRefModel();
                href.setHref(MvcUriComponentsBuilder
                        .fromMethodName(UploadController.class, "serveFile", pt.getFileName().toString())
                        .build()
                        .toString());

                href.setHrefText(pt.getFileName().toString());
                uris.add(href);
            }
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        model.addAttribute("listOfEntries", uris);
        return "file_list :: urlFileList";
    }

    @GetMapping("/files/{filename:.+}")
    @ResponseBody
    public ResponseEntity<Resource> serveFile(@PathVariable String filename) {
        Resource file = storageService.loadAsResource(filename);
        return ResponseEntity.ok()
                .header(HttpHeaders.CONTENT_DISPOSITION, "attachment; filename=\"" + file.getFilename() + "\"")
                .body(file);
    }

    @RequestMapping(value = "/files/upload", method = RequestMethod.POST)
    @ResponseBody
    public String handleFileUpload(@RequestParam("photos") MultipartFile[] file,
            @RequestParam("doc_name") String docName,
            RedirectAttributes redirectAttributes) {
        String status = storageService.store(file, docName);
        logger.info("Document Name==>>" + docName);
//        redirectAttributes.addFlashAttribute("message", "You successfully uploaded " + file.getOriginalFilename() + "!");

        return status;
    }

    @RequestMapping(value = "/findByIdUplaodListing", headers = "Accept=application/json")
    public @ResponseBody
    String findByIdUploadListing(@RequestParam(value = "id", required = false) String id) {
        logger.info("findByIdUploadListing");
        JSONArray data = commonJdbcUtil.getQueriesForUPloadListing(id);
//        logger.info("data" + data);
        return data.toString();
    }

    @RequestMapping(value = "/deleteIdUploadListing", headers = "Accept=application/json")
    public @ResponseBody
    String deleteIdUploadListing(@RequestParam(value = "pk", required = false) String pk,
            @RequestParam(value = "path", required = false) String path) {
        logger.info("deleteIdUploadListing");
        String data = storageService.deleteFile(pk, path);
        logger.info("data" + data);
        return data;
    }

    @PostMapping("/uploadNew")
    public @ResponseBody
    String singleFileUpload(@RequestParam("file") MultipartFile file,
            @RequestParam(value = "label", required = false) String label,  HttpSession session) {
        logger.info(" label " + label);
//        if (file.isEmpty()) {
//            redirectAttributes.addFlashAttribute("message", "Please select a file to upload");
//        }
        try {
            byte[] bytes = file.getBytes();
            logger.info("Full PAth " + UPLOADED_FOLDER + file.getOriginalFilename());
            String filename = session.getAttribute("userNameId") + "_" + label + "_" + file.getOriginalFilename();
            Path path = Paths.get(UPLOADED_FOLDER + filename);
            Files.write(path, bytes);
            String fileExtension = common.getFileExtension(path.toString());
            String status = commonJdbcUtil.saveFile(label, filename, UPLOADED_FOLDER, fileExtension);
            logger.info(" successfully Uploaded" + status);
        } catch (IOException e) {
            e.printStackTrace();
            logger.error("  " + e);
        }
        return "true";
    }

}
