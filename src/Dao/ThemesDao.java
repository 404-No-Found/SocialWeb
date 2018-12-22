package Dao;

import Utils.DruidUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import java.sql.SQLException;

//此dao封装了主题计数
public class ThemesDao {
    private QueryRunner runner = new QueryRunner(DruidUtils.getDataSource());
    //统计喝咖啡的次数
    public long countCoffee() throws SQLException {
        String sql = "select count(theme) from releasers where theme ='喝咖啡'";
        return runner.query(sql,new ScalarHandler<>());
    }
    //统计看电影的次数
    public long countMovie() throws SQLException {
        String sql = "select count(theme) from releasers where theme ='看电影'";
        return runner.query(sql,new ScalarHandler<>());
    }
    //统计吃饭的次数
    public long countFood() throws SQLException {
        String sql = "select count(theme) from releasers where theme ='吃饭'";
        return runner.query(sql,new ScalarHandler<>());
    }
    //统计唱歌的次数
    public long countSing() throws SQLException {
        String sql = "select count(theme) from releasers where theme ='唱歌'";
        return runner.query(sql,new ScalarHandler<>());
    }
    //统计旅行的次数
    public long countTrip() throws SQLException {
        String sql = "select count(theme) from releasers where theme ='旅行'";
        return runner.query(sql,new ScalarHandler<>());
    }
    //统计购物的次数
    public long countShopping() throws SQLException {
        String sql = "select count(theme) from releasers where theme ='购物'";
        return runner.query(sql,new ScalarHandler<>());
    }
    //统计运动的次数
    public long countSports() throws SQLException {
        String sql = "select count(theme) from releasers where theme ='运动'";
        return runner.query(sql,new ScalarHandler<>());
    }
}
