package Dao;

import Utils.DruidUtils;
import javabean.Mid;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import java.sql.SQLException;

public class RankDao {
    //统计
    public int Leaderboard(Mid mid, String theme) throws SQLException {
        QueryRunner runner = new QueryRunner(DruidUtils.getDataSource());
        //统计发布的约会不同主题的个数
        String sql = "SELECT COUNT(theme) FROM release WHERE theme='"+theme+"'";
        //拿到统计出来的数字
        int rs=runner.query(sql,new ScalarHandler<Integer>());
        return rs;

    }

}
