package ServletSet;

import Dao.EduEpDao;
import javabean.EduEp;

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

@WebServlet("/EduExperienceServlet")
public class EduExperienceServlet extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String schoolName=req.getParameter("school_name");
        String professional=req.getParameter("professional");

        HttpSession session = req.getSession();
        String userName = (String) session.getAttribute("user");

        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        Date startWork= null;
        Date endWork = null;
        try {
            startWork = sdf.parse(req.getParameter("startWork"));
            endWork= sdf.parse(req.getParameter("endWork"));

        } catch (ParseException e) {
            e.printStackTrace();
        }
        String recordEdu = req.getParameter("record");
        String relatedEdu = req.getParameter("relatedEdu");
        String achievement = req.getParameter("achievement");

        EduEp ep = new EduEp();
        ep.setSchoolName(schoolName);
        ep.setProfessional(professional);
        ep.setStartTime(startWork);
        ep.setEndTime(endWork);
        ep.setRecordEdu(recordEdu);
        ep.setRelatedEdu(relatedEdu);
        ep.setAchievement(achievement);

        EduEpDao dao = new EduEpDao();
        try {
            if (dao.upDateEduEp(ep,userName) == 1){
                resp.getWriter().write("修改教育经历成功！即将返回。。。");
                resp.setHeader("Refresh","2,URL=http://localhost:8080/personalSpace.jsp");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
