package Dao;

import Utils.DruidUtils;
import javabean.EduEp;
import javabean.PersonalInfo;
import javabean.User;
import javabean.WorkEp;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.SQLException;
import java.util.ArrayList;

public class UserInfoDao {

    //登录检查用户名或者邮箱号和密码
    public int queryUnAndPsw(String username, String password) throws SQLException {
        QueryRunner runner = new QueryRunner(DruidUtils.getDataSource());
        String sql = "select * from registered";
        String reg = "[A-z]+[A-z0-9_-]*\\@[A-z0-9]+\\.[A-z]+";

        ArrayList<User> aList = (ArrayList<User>) runner.query(sql, new BeanListHandler<>(User.class));
        if (username.matches(reg)) {
            for (int i = 0; i < aList.size(); i++) {
                if (aList.get(i).getEmail().equals(username) && aList.get(i).getPassword().equals(password)) {
                    return 1;
                }
            }
        } else {
            for (int i = 0; i < aList.size(); i++) {
                if (aList.get(i).getUsername().equals(username) && aList.get(i).getPassword().equals(password)) {
                    return 1;
                }
            }
        }
        return -1;
    }

    //新用户注册：添加用户名邮箱及密码信息
    public int addNewUserInfo(User user) throws SQLException {
        QueryRunner runner = new QueryRunner(DruidUtils.getDataSource());
        String sql = "insert into registered (username,email,password) values (?,?,?)";
        Object[] objects=new Object[]{user.getUsername(), user.getEmail(), user.getPassword()};
        int result = runner.update(sql, objects);
        System.out.println(result);
        if (result > 0) {
            return 1;
        }
        return -1;
    }



}
