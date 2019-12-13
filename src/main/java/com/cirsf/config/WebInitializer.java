package com.cirsf.config;

import java.io.File;

import javax.servlet.MultipartConfigElement;
import javax.servlet.ServletRegistration;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;



public class WebInitializer extends AbstractAnnotationConfigDispatcherServletInitializer {

    public WebInitializer() {
        super();
    }
    private int maxUploadSizeInMb = 5 * 1024 * 1024; 
    // API
    @Override
    protected Class<?>[] getRootConfigClasses() {
        return new Class<?>[] {PersistenceConfig.class, WebSecurityConfig.class,WebMvcConfig.class, WebFlowConfig.class};
    }

    @Override
    protected Class<?>[] getServletConfigClasses() {
    	return null;
    }

    @Override
    protected String[] getServletMappings() {
        return new String[] { "/" };
    }
    
    @Override
    protected void customizeRegistration(ServletRegistration.Dynamic registration) {

        // upload temp file will put here
        File uploadDirectory = new File(System.getProperty("java.io.tmpdir"));

        // register a MultipartConfigElement
        MultipartConfigElement multipartConfigElement =
                new MultipartConfigElement(uploadDirectory.getAbsolutePath(),
                        maxUploadSizeInMb, maxUploadSizeInMb * 2, maxUploadSizeInMb / 2);

        registration.setMultipartConfig(multipartConfigElement);

    }

}



