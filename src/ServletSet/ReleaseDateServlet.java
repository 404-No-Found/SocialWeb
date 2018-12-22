package ServletSet;

import Dao.ReleaseDao;
import javabean.Release_date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

@WebServlet("/ReleaseDateServlet")
public class ReleaseDateServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session=request.getSession();
        String username = (String) session.getAttribute("user");
        String theme=request.getParameter("theme");
        String cost=request.getParameter("cost");
        Date time=null;
        SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
        try {
            time=sdf.parse(request.getParameter("time"));
        } catch (ParseException e) {
            e.printStackTrace();
        }
        String place =request.getParameter("place");
        String desc=request.getParameter("desc");


        Release_date rd=new Release_date();
        rd.setUsername(username);
        rd.setTheme(theme);
        rd.setCost(cost);
        rd.setTime(time);
        rd.setPlace(place);
        rd.setDateDescription(desc);;
        ReleaseDao dao=new ReleaseDao();
        try {
            rd.setHeadPic(dao.selecHeadPic(username));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        try {
            if(dao.insertReleaseDate(rd)=="1"){
                response.getWriter().write("发布成功,正在跳转界面");
                response.setHeader("Refresh","3,url=http://localhost:8080/personalSpace.jsp");
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
