package Dao;

import Utils.DruidUtils;
import javabean.Release_date;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import java.sql.SQLException;
import java.util.List;

public class ReleaseDao {
    //插入发布内容
    public String insertReleaseDate(Release_date releaseDate) throws SQLException {
        QueryRunner runner = new QueryRunner(DruidUtils.getDataSource());
        String sql = "insert into releasers (username,headPic,theme,cost,time,place,dateDescription) values (?,?,?,?,?,?,?)";
        Object[] object = new Object[]{releaseDate.getUsername(), releaseDate.getHeadPic(),releaseDate.getTheme(),
                releaseDate.getCost(), releaseDate.getTime(), releaseDate.getPlace(), releaseDate.getDateDescription()};
        int result = runner.update(sql, object);
        if(result >0){
            return "1";
        }else {
            return  "-1";
        }

    }

    //删除发布内容
    public int deleteReleaseDate(String id) throws SQLException {
        QueryRunner runner = new QueryRunner(DruidUtils.getDataSource());
        String sql = "delete from release where id =" + id;
        int result = runner.update(sql, id);
        if (result > 0) {
            return 1;
        } else {
            return -1;
        }
    }

    //获取头像
    public String selecHeadPic(String username) throws SQLException {
        QueryRunner runner = new QueryRunner(DruidUtils.getDataSource());
        String sql = "select headPic from  personal_info where username=?";
        String url = runner.query(sql, new ScalarHandler<>(), username);
       return  url;
    }
    //获取所有约会信息
    public List<Release_date> getDateInfo() throws SQLException {
        QueryRunner runner=new QueryRunner(DruidUtils.getDataSource());
        String sql="select * from releasers";
        return runner.query(sql,new BeanListHandler<>(Release_date.class));
    }
    //获取id
    public int getDateId(){
        QueryRunner runner=new QueryRunner(DruidUtils.getDataSource());
        String sql="select id from releasers";
        return 1;
    }
}
