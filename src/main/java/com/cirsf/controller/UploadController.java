package com.cirsf.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;
import javax.servlet.annotation.MultipartConfig;
import org.apache.commons.io.IOUtils;
import org.apache.commons.lang3.SystemUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.cirsf.model.PrologVersion;

import net.lingala.zip4j.core.ZipFile;
import net.lingala.zip4j.exception.ZipException;


@Controller
@MultipartConfig(fileSizeThreshold=1024*1024*2, // 2MB
maxFileSize=1024*1024*10,      // 10MB
maxRequestSize=1024*1024*50) 
public class UploadController {

	@Autowired
	private PrologVersion prologFiles;
	
	@RequestMapping(value = "/goToUploadPrologFile", method = RequestMethod.GET)
    public String goToUpload() {
        return "uploadProlog";
    }
	
	@PostMapping("/uploadProlog")
	public String uploadProlog(@RequestParam("file") MultipartFile file) throws IOException {

	    /**
	     * save file to temp
	     */
	    File zip = File.createTempFile(UUID.randomUUID().toString(), "temp");
	    
	    FileOutputStream o = new FileOutputStream(zip);
	    String temp="";
	    String nameFile="";
	    if(SystemUtils.IS_OS_WINDOWS) {
	    	temp=file.getOriginalFilename().split("\\\\")[file.getOriginalFilename().split("\\\\").length-1];
		    System.out.println(temp);
		     nameFile = temp.substring(0, temp.length()-4);
	    }
	    else {
	    	
	    	temp=file.getOriginalFilename().split("/")[file.getOriginalFilename().split("/").length-1];
		    System.out.println(temp);
		     nameFile = temp.substring(0, temp.length()-4);
		   
	    }
	    
	    IOUtils.copy(file.getInputStream(), o);
	    o.close();
	    Date date = new Date();
	    SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd_HH.mm.ss");
	    /**
	     * unizp file from temp by zip4j
	     */
	    String destination="";
	    if(SystemUtils.IS_OS_WINDOWS) {
		    new File("C:\\Users\\nicol\\Desktop\\Nicola\\Tesi\\UploadRepo\\Version_"+formatter.format(date)).mkdir(); // Creo la directory con data e ora 
		    destination = "C:\\Users\\nicol\\Desktop\\Nicola\\Tesi\\UploadRepo\\Version_"+formatter.format(date);
	    }
	    else {
		    new File("/opt/uploadrepo/version_"+formatter.format(date)).mkdirs(); // Creo la directory con data e ora 
		    destination = "/opt/uploadrepo/version_"+formatter.format(date);
	    	
	    }
	    try {
//	    	 
//	    	
	         ZipFile zipFile = new ZipFile(zip);
	         zipFile.extractAll(destination); 
	         String pathPrologMain="";
	         if(SystemUtils.IS_OS_WINDOWS) {
	        	 pathPrologMain= destination.replaceAll("\\\\", "/")+"/"+nameFile+"/main.pl";
	         }
	         else {
	        	 
	        	 pathPrologMain= destination+"/"+nameFile+"/main.pl";
	         }
	         prologFiles.setPrologPath(pathPrologMain); // Reset e caricamento della nuova teoria  

	         
	    } catch (ZipException e) {
	        e.printStackTrace();
	    } finally {
	        /**
	         * delete temp file
	         */
	        zip.delete();
	    }

	    return "uploadProlog";
	}
	
}
