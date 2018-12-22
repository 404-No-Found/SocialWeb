package test;

import Dao.ThemesDao;
import Dao.UserInfoDao;

import java.sql.SQLException;
import java.text.ParseException;
import java.util.Map;
import java.util.TreeMap;

public class alterUserInfo_test {
    static UserInfoDao dao  = new UserInfoDao();
    public static  void main(String[] args) throws SQLException {
        ThemesDao dao = new ThemesDao();
        System.out.println(dao.countFood());
    }
}
