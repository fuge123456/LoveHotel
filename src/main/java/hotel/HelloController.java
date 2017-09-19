package hotel;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HelloController {
	@RequestMapping("/home")
	public String home(){
		return "home/fmain";
	}
	@RequestMapping("/title")
	public String title(){
		return "home/title";
	}
	@RequestMapping("/{module}/Left")
	public String left(@PathVariable String module){
		return module+"/left";
	}
	@RequestMapping("/{module}/Main")
	public String main(@PathVariable String module){
		return module+"/main";
	}
}
