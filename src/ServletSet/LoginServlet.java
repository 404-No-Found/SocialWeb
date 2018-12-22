package ServletSet;

import Dao.UserInfoDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");

        HttpSession session = req.getSession();
        session.setAttribute("user",username);
        session.setMaxInactiveInterval(1000*60*30);

        UserInfoDao dao = new UserInfoDao();
        try {
            int code = dao.queryUnAndPsw(username,password);
            if ( code == 1){
                req.getRequestDispatcher("homePage.jsp").forward(req,resp);
            }else {
                resp.getWriter().write("登录失败");
            }
        } catch (SQLException e) {
            resp.getWriter().write("登录失败");
        }
    }
}
