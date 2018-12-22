package ServletSet;

import Dao.WorkEpDao;
import javabean.WorkEp;

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

@WebServlet("/WorkExperienceServlet")
public class WorkExperienceServlet extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse response) throws ServletException, IOException {
        String companyName = req.getParameter("companyName");
        String jobTitle = req.getParameter("jobTitle");

        HttpSession session = req.getSession();
        String userName = (String) session.getAttribute("user");

        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        Date startWork= null;
        Date endWork = null;
        try {
            startWork = sdf.parse(req.getParameter("timeWork"));
            endWork= sdf.parse(req.getParameter("endWork"));

        } catch (ParseException e) {
            e.printStackTrace();
        }

        String workCity = req.getParameter("workCity");
        String relatedWork = req.getParameter("relatedWork");
        String jobDescription = req.getParameter("jobDescription");

        WorkEp workEp = new WorkEp();
        workEp.setCompanyName(companyName);
        workEp.setJobTitle(jobTitle);
        workEp.setStartTimes(startWork);
        workEp.setEndTimes(endWork);
        workEp.setWorkCity(workCity);
        workEp.setRelatedWork(relatedWork);
        workEp.setJobDescription(jobDescription);


        WorkEpDao dao = new WorkEpDao();
        try {
            if (dao.upDateWorkEp(workEp,userName) == 1){
                response.getWriter().write("修改工作经历成功！即将返回。。。");
                response.setHeader("Refresh","2,URL=http://localhost:8080/personalSpace.jsp");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
