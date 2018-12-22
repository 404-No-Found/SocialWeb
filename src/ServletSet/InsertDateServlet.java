package ServletSet;

import Dao.InsertDateDao;
import javabean.Mid;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "InsertDateServlet")
public class InsertDateServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session=request.getSession();
        String username= (String) session.getAttribute("username");
        String  releaser=request.getParameter(username);
        Mid mid = new Mid();
        mid.setRelease(releaser);
        mid.setResponser(username);
        InsertDateDao dao=new InsertDateDao();
        try {
            dao.insertMid(mid,username);//这里123456要换成username
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
