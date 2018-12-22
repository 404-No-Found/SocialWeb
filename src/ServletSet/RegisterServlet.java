package ServletSet;

import Dao.UserInfoDao;
import Service.UserService;
import javabean.User;

import javax.mail.MessagingException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String email = req.getParameter("email");
        String password = req.getParameter("password");


        User user = new User();
        user.setUsername(username);
        user.setEmail(email);
        user.setPassword(password);

        UserInfoDao dao = new UserInfoDao();
        try {
            int code = dao.addNewUserInfo(user);
            if (code == 1){
                UserService us = new UserService();
                us.register(email);
                resp.sendRedirect("succeed.html");
            }else {
                resp.sendRedirect("error.html");
            }
        } catch (SQLException e) {
            resp.sendRedirect("error.html");
        } catch (MessagingException e) {
            e.printStackTrace();
        }

    }
}
