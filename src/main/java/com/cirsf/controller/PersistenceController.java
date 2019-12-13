package com.cirsf.controller;

import java.io.File;
import java.util.HashSet;
import java.util.Set;

import javax.validation.Valid;

import org.apache.commons.lang3.SystemUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.cirsf.dao.UserDetailsDao;
import com.cirsf.model.CausePersist;
import com.cirsf.model.PrologVersion;
import com.cirsf.model.User;
import com.cirsf.model.User2;

@Controller
@Repository
public class PersistenceController {
	
	@Autowired
	  private UserDetailsDao userDetailsDao;
	@Autowired
	private PrologVersion prologFiles;


	@RequestMapping(value = "/registration", method = RequestMethod.GET)
  public ModelAndView showForm() {
      return new ModelAndView("registration", "user2", new User2());
  }
	
	@GetMapping(value = "/goToMyCauses/{username}")
    public ModelAndView showCauses(@PathVariable("username") String username) {
		
	
		User user = userDetailsDao.findUserByUsername(username);
		Set<CausePersist> allCauses = new HashSet<CausePersist>();
		Set<CausePersist> causesToShow = new HashSet<CausePersist>();
		allCauses = user.getCause();
		
		for(CausePersist cp : allCauses ) {
			if(SystemUtils.IS_OS_WINDOWS) {
				if(cp.getPathProlog().equals(getPath(getPrologVersion())))
					causesToShow.add(cp);}
			else
				causesToShow.add(cp);
		
		}
		user.setCause(causesToShow);
		return new ModelAndView("myCauses", "user", user);
		
    }
	
	@Transactional
    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public String register(@Valid @ModelAttribute("user2")User2 userTemp, 
      BindingResult result, ModelMap model) {
        if (result.hasErrors()) {
            return "error";
        }
        User userToPersist = new User();
        userToPersist.setUsername(userTemp.getUsername());
        userToPersist.setPassword(new BCryptPasswordEncoder().encode(userTemp.getPassword()));
        userToPersist.setEmail(userTemp.getEmail());
        String addRes = userDetailsDao.addUser(userToPersist);
        if(addRes.equals("Existing Username"))
        	return "wrong_username";
        if(addRes.equals("Existing Password"))
        	return "wrong_password";
        if(addRes.equals("Existing Email"))
        	return "wrong_email";
        model.addAttribute("name", userTemp.getUsername());
        model.addAttribute("contactNumber", userTemp.getPassword());
        model.addAttribute("id", userTemp.getEmail());
        return "new";
    }
	
	

	private String getPath(String prologVersion) {

		 	String[] splitted = prologVersion.split("/");
	     	String main = splitted[splitted.length-1];
	        String parentMain = splitted[splitted.length-2];
	        String result = "/"+parentMain+"/"+main;
	        return result;
	}
	
	private String getPrologVersion(){
		 
	 	if(prologFiles.getPrologPath()==null) {
	        File repository = new File("C:\\Users\\nicol\\Desktop\\Nicola\\Tesi\\UploadRepo");
	        File lastVersion = repository.listFiles()[repository.listFiles().length-1];
	        String path = lastVersion.listFiles()[0].getAbsolutePath().replaceAll("\\\\", "/")+"/main.pl";
	        prologFiles.setPrologPath(path);
	        return path;
	 	}
	 	else 
	 		return prologFiles.getPrologPath();
        
    }

}
