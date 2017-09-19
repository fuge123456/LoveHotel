package hotel.poi;

import java.io.FileInputStream;
import java.io.FileNotFoundException;

import org.springframework.util.ResourceUtils;

/**
 * 获取模板文件的工具类
 * @author BIG
 *
 */
public class TemplateFileUtil {
	
    public static FileInputStream getTemplates(String tempName) throws FileNotFoundException {
        return new FileInputStream(ResourceUtils.getFile("classpath:excel-templates/"+tempName));
    }
}
