package Dao;

import Utils.DruidUtils;
import javabean.PersonalInfo;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import java.sql.SQLException;

public class PersonalInfoDao {
    //修改数据库里用户的个人信息
    public int alterPersonalInfo(PersonalInfo info, String username) throws SQLException {
        QueryRunner runner = new QueryRunner(DruidUtils.getDataSource());
        String sql = "update personal_info set headPic = ?, realName = ?, birthday = ?, phoneNum = ?, " +
                "nowCity = ?, gender = ?, personalWebsite = ?, email = ?, address = ?, school = ?, " +
                "company = ? where username = ?";
        Object[] objects = new Object[]{info.getHeadPic(), info.getRealName(), info.getBirthday(),
                info.getPhoneNum(), info.getNowCity(), info.getGender(), info.getPersonalWebsite(), info.getEmail(),
                info.getAddress(), info.getSchool(), info.getCompany(), username};
        int result = runner.update(sql, objects);
        if (result > 0) {
            return 1;
        }
        return -1;
    }
    //查询数据库里的个人信息
    public PersonalInfo queryPersonalInfo(String user) throws SQLException {
        QueryRunner runner = new QueryRunner(DruidUtils.getDataSource());
        String sql = "select * from personal_info where username = ?";
        PersonalInfo info = runner.query(sql,new BeanHandler<>(PersonalInfo.class),user);
        return info;
    }
}
