package hotel.controller;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import hotel.pojo.Role;
import hotel.pojo.User;
import hotel.service.RoleService;
import hotel.service.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Created by BIG on 2017/9/13.
 */
@Controller
@RequestMapping("/sysadmin/user")
public class UserController {
    @Autowired
    private UserService userService;
    @Autowired
    private RoleService roleService;

    @RequestMapping("/list")
    public String findAll(Model model){
        List<User> userList=userService.findAll();
        model.addAttribute("userList",userList);
        return "sysadmin/user/jUserList";
    }

    /*@RequestMapping("/start")
    public String toStart(@RequestParam(value = "userId",required = true) String[] userIds){
        int state=1;
        userService.updateState(userIds,state);
        return "redirect:/sysadmin/user/list";
    }

    @RequestMapping("/stop")
    public String toStop(@RequestParam(value="userId",required=true)String[] userIds){
        int state=0;
        userService.updateState(userIds,state);
        return "redirect:/sysadmin/user/list";
    }*/

    @RequestMapping("/delete")
    public String toDelete(@RequestParam(value = "userId",required = true) String[] userIds){
        userService.deleteUser(userIds);
        return "redirect:/sysadmin/user/list";
    }

    @RequestMapping("/toupdate")
    public String toUpdate(String userId,Model model){
        User user=userService.findUserById(userId);
        model.addAttribute(user);
        return "sysadmin/user/jUserUpdate";
    }

    @RequestMapping("/update")
    public String updateUser(User user){
        userService.updateUser(user);
        return "redirect:/sysadmin/user/list";
    }

    @RequestMapping("/toview")
    public String toView(String userId,Model model){
        User user=userService.findUserById(userId);
        model.addAttribute("user",user);
        return "/sysadmin/user/jUserView";
    }

    @RequestMapping("/userRole")
    public String userRole(String userId,Model model) throws JsonProcessingException {

        List<Role> roleList=roleService.findAll();

        ObjectMapper objectMapper=new ObjectMapper();
        String zTreeJson=objectMapper.writeValueAsString(roleList);
        model.addAttribute("zTreeJson",zTreeJson);
        model.addAttribute("userId",userId);

        return "/sysadmin/user/jUserRole";
    }
    
    @RequestMapping("saveUserRole")
    public String saveUserRole(){
    	
    	return "redirect:/sysadmin/user/list";
    }

    @RequestMapping("/save")
    public String saveUser(User user){
        userService.saveUser(user);
        return "redirect:/list";
    }
    @RequestMapping("/toRegist")
    public String toRegist(){
    	return "sysadmin/user/regist";
    }
    
    @RequestMapping("/regist.action")
    @ResponseBody
    public void addUser(Model model,User user,HttpServletResponse response,HttpSession session){
        int result=userService.addUser(user);
        try {
			if(result>0){
			    //将提示信息存入域中，用以前台显示
				response.getWriter().write("恭喜您，注册成功！<br>注册名："+user.getUserName());
			    
			}else{
				response.getWriter().write("服务器异常，注册失败！");
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        response.setHeader("refresh", "3;url=/sysadmin/hotel/search");
        session.setAttribute("user", user);
    }


}


































































