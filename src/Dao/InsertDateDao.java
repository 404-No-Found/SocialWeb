package Dao;

import Utils.DruidUtils;
import javabean.Mid;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import java.sql.SQLException;

public class InsertDateDao {
    //添加Mid记录
    public int insertMid(Mid mid,String releaser) throws SQLException {
        QueryRunner runner = new QueryRunner(DruidUtils.getDataSource());
        String sql = "insert into mid ("+releaser+",responser) values (?,?)";
        int result = runner.update(sql,new Object[] {mid.getRelease(),mid.getResponser()});
        if (result > 0){
            return 1;
        }
        return -1;
    }
}
