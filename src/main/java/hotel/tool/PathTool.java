package hotel.tool;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

public class PathTool {
	public final static String picturePath;
	static{
		Properties p = null;
		try {
			p = new Properties();
			String filePath = PathTool.class.getClassLoader().getResource("path.properties").getPath();
			p.load(new FileInputStream(filePath));
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		picturePath = p.getProperty("picturePath");
	}
	public static String getPicPath(){
		return picturePath;
	}
}
