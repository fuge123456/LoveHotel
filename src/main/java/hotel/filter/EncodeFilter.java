package hotel.filter;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.Map;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;

/**
 * Servlet Filter implementation class EncodeFilter
 */
public class EncodeFilter implements Filter {
	private String encode = "utf8";
	public void init(FilterConfig fc) throws ServletException {
		encode = fc.getInitParameter("encode");
	}

	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		//设置响应的类型
		response.setContentType("text/html;charset="+encode);
		chain.doFilter(new MyHSR((HttpServletRequest)request), response);
	}
    class MyHSR extends HttpServletRequestWrapper{
    	private HttpServletRequest request;
    	private Map<String,String[]> map;
		public MyHSR(HttpServletRequest request) {
			super(request);
			this.request = request;
		}
		public Map<String,String[]> getParameterMap() {
			if(map==null){
				//提交的方式get还是post
				try {
					if("POST".equals(request.getMethod())){
						request.setCharacterEncoding(encode);
						map = request.getParameterMap();
						return map;
					}else if("GET".equals(request.getMethod())){
						map = request.getParameterMap();
						for (Map.Entry<String, String[]> entry : map.entrySet()) {
							//获取当前key对应value数组
							String vals[] = entry.getValue();
							for (int i = 0; i < vals.length; i++) {
								vals[i]= new String(vals[i].getBytes("ISO-8859-1"),encode);
							}
						}
						return map;
					}else{
						return request.getParameterMap();
					}
				} catch (UnsupportedEncodingException e) {
					e.printStackTrace();
					return request.getParameterMap();
				}
			}else{
				return map;
			}
			
		}
		public String[] getParameterValues(String name) {
			return getParameterMap().get(name);
		}
		public String getParameter(String name) {
			return getParameterValues(name)==null?null:getParameterValues(name)[0];
		}
    	
    }
	public void destroy() {
		
	}
}