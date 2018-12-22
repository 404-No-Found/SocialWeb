package Service;

import Dao.WorkEpDao;
import javabean.WorkEp;

import java.sql.SQLException;

public class WorkShowService {
    public static String company_job;
    public static String times;

    public static void show(String user) throws SQLException {
        WorkEpDao dao = new WorkEpDao();
        WorkEp ep = dao.queryWorkEp(user);
        if (ep.getCompanyName() != null && ep.getJobTitle() != null){
            company_job = ep.getCompanyName()+"---"+ep.getJobTitle();
            times = ep.getStartTimes() +"---"+ep.getEndTimes();
        }else {
            company_job = "尚未添加";
            times = "尚未添加";
        }
    }
}
