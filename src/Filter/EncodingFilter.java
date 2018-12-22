package Filter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.UnsupportedEncodingException;

@WebFilter(filterName="encodingFilter",urlPatterns="/*")
public class EncodingFilter implements Filter{

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest req= (HttpServletRequest) servletRequest;
        HttpServletResponse rep= (HttpServletResponse) servletResponse;
        //指定request和response的编码
        req.setCharacterEncoding("utf-8");//只对消息体有效
        rep.setContentType("text/html;charset=utf-8");
        //对request进行包装
        CharacterRequest characterRequest=new CharacterRequest(req);
        filterChain.doFilter(characterRequest,rep);
    }

    @Override
    public void destroy() {

    }

    private class CharacterRequest extends HttpServletRequestWrapper{
        private HttpServletRequest request;
        public CharacterRequest(HttpServletRequest request) {
            super(request);
            this.request=request;
        }

        @Override
        public String getParameter(String name) {
            String method=super.getMethod();
            //调用被包装类的getParameter方法，获取请求参数
            String value=super.getParameter(name);
            if(value==null){
                return null;}
                //判断请求方式
            if ("post".equalsIgnoreCase(name)){
                    try {
                        value=new String(value.getBytes("iso-8859-1"),"utf-8");
                    } catch (UnsupportedEncodingException e) {
                        e.printStackTrace();
                    }
            }
            return value;
        }
    }
}
