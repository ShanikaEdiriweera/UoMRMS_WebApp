package com.mycompany.uomrmsweb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
/**
 *
 * @author Shanika Ediriweera
 */
@Controller
public class StudentController {
//    @RequestMapping(value = { "/", "/home" }, method = RequestMethod.GET)
//    public String homePage(ModelMap model) {
//            model.addAttribute("greeting", "Hi, Welcome to mysite");
//            return "login/welcome";
//    }
}
