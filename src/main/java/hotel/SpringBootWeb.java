package hotel;


import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("hotel.mapper")
public class SpringBootWeb {
	public static void main(String[] args) {
		SpringApplication.run(SpringBootWeb.class, args);
	}
}
