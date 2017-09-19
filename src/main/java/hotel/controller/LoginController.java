package hotel.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;

import hotel.pojo.MD5HashPassword;
import hotel.pojo.User;
import hotel.service.UserService;

import javax.servlet.http.HttpSession;

/**
 * Created by BIG on 2017/9/16.
 */
@Controller
public class LoginController {
    @Autowired
    private UserService userService;
    @RequestMapping("/toLogin.action")
    public String toLogin(){
        return "/sysadmin/login/login";
    }
    @RequestMapping("/login.action")
    public String login(String userName, String password, Model model, HttpSession session){
       
    	if(StringUtils.isEmpty(userName) || StringUtils.isEmpty(password)){
            model.addAttribute("errorInfo","用户名或密码不能为空");
            return "/sysadmin/login/login";
        }
    	

        User user=userService.findUserByUP(userName,password);
        if(user==null){
            model.addAttribute("errorInfo","用户名或密码错误");
            return "/sysadmin/login/login";
        }
        session.setAttribute("user",user);
        return "redirect:/sysadmin/hotel/search";
    }
    
    @RequestMapping("/logout")
    public String logout(HttpSession session){
    	session.setAttribute("user", null);
    	return "redirect:/sysadmin/hotel/search";
    }
}








































