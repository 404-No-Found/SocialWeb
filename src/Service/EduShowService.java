package Service;

import Dao.EduEpDao;
import javabean.EduEp;

import java.sql.SQLException;

public class EduShowService {
    public static String edu_info;
    public static String times;

    public static void show(String user) throws SQLException {
        EduEpDao dao = new EduEpDao();
        EduEp ep = dao.queryEduEp(user);
        if (ep.getSchoolName() != null && ep.getProfessional() != null){
            edu_info = ep.getSchoolName()+"---"+ep.getProfessional();
            times = ep.getStartTime() +"---"+ep.getEndTime();
        }else {
            edu_info = "尚未添加";
            times = "尚未添加";
        }
    }
}
