package test;

import Dao.PersonalInfoDao;
import Dao.UserInfoDao;
import javabean.PersonalInfo;

import java.sql.SQLException;
import java.sql.SQLOutput;

public class DBUtilsDaoTest {
    private static UserInfoDao dao = new UserInfoDao();
    public static void main(String[] args) throws SQLException {
//        User register = new User();
//        register.setUsername("LiuHuan");
//        register.setEmail("15191678056@163.com");
//        register.setPassword("123456");
//        System.out.println(dao.addNewUserInfo(register));

//        for (int i = 0;i < dao.queryUnAndPsw().size();i ++){
//            System.out.println(dao.queryUnAndPsw().get(i).getUsername()+dao.queryUnAndPsw().get(i).getEmail());
//        }
        PersonalInfoDao dao = new PersonalInfoDao();
        PersonalInfo info = dao.queryPersonalInfo("liuhuan");
        System.out.println(info);
        System.out.println(info.getBirthday());
        System.out.println(info.getHeadPic());
        System.out.println(info.getRealName());
        System.out.println(info.getAddress());
        System.out.println(info.getCompany());
        System.out.println(info.getEmail());
        System.out.println(info.getGender());
        System.out.println(info.getSchool());
        System.out.println(info.getNowCity());
        System.out.println(info.getPhoneNum());
    }
}
