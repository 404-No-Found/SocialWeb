package Service;

import Dao.PersonalInfoDao;
import javabean.PersonalInfo;

import java.sql.SQLException;

public class PersonalInfoService {
    public static String head_url;
    public static String now_city;
    public static String school;
    public static String company;
    public static String link;

    public static void resultQuery(String user) throws SQLException {
        PersonalInfoDao dao = new PersonalInfoDao();
        PersonalInfo info = dao.queryPersonalInfo(user);
        if (info.getRealName() != null){
            head_url = info.getHeadPic();
            now_city = info.getNowCity();
            school = info.getSchool();
            company = info.getCompany();
            link = info.getPersonalWebsite();
        }else {
            head_url = "../images/headPic.png";
            now_city = "您还没有填写现居地";
            school = "您还没有填写相关院校";
            company = "您还没有填写所在公司";
            link = "您还没有填写个人网站";
        }
    }
}
