/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.hp.rest;

import com.sun.jersey.multipart.MultiPart;
import java.util.Set;
import javax.ws.rs.core.Application;

//import org.glassfish.jersey.filter.LoggingFilter;
//import org.glassfish.jersey.media.multipart.MultiPartFeature;


/**
 *
 * @author HP
 */
@javax.ws.rs.ApplicationPath("webresources")
public class ApplicationConfig extends Application {

    @Override
    public Set<Class<?>> getClasses() {
        Set<Class<?>> resources = new java.util.HashSet<Class<?>>();
        addRestResourceClasses(resources);
        return resources;
    }

    /**
     * Do not modify addRestResourceClasses() method.
     * It is automatically populated with
     * all resources defined in the project.
     * If required, comment out calling this method in getClasses().
     */
    private void addRestResourceClasses(Set<Class<?>> resources) {
        resources.add(com.hp.rest.GenericResource.class);
    }
    
}
