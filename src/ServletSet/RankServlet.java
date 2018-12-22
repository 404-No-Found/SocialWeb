package ServletSet;


import Dao.RankDao;
import javabean.Mid;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.*;

@WebServlet(name = "RankServlet")
public class RankServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String[] theme={"coffee","film","sing","eat","travel","shop","other"};//此处应当为数组
        Map<String, Integer> map = new HashMap<String, Integer>();
        String  releaser=request.getParameter("releaser");
        String responser=request.getParameter("responser");
        Mid mid = new Mid();
//        mid.setRelease(releaser);
//        mid.setResponser(responser);
//
//        RankDao dao=new RankDao();

    }
}
