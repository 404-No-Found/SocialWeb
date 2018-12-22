package Dao;

import Utils.DruidUtils;
import javabean.WorkEp;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import java.sql.SQLException;

public class WorkEpDao {
    //更新工作经历
    public int upDateWorkEp(WorkEp workEp, String username) throws SQLException {
        //创建对象
        QueryRunner runner = new QueryRunner(DruidUtils.getDataSource());
        //SQL语句:根据username修改数据库中的数据
        String sql = "update work_experience set companyName=?,jobTitle=?,startTimes=?,endTimes=?,workCity=?,relatedWork=?,"
                + "jobDescription=? where username=?";
        Object[] objects = new Object[]{workEp.getCompanyName(), workEp.getJobTitle(), workEp.getStartTimes(),
                workEp.getEndTimes(), workEp.getWorkCity(), workEp.getRelatedWork(),
                workEp.getJobDescription(),username};
        //调用方法
        int num = runner.update(sql, objects);
        if (num > 0) {
            return 1;
        }
        return -1;
    }
    //数据库查询用户的工作经历
    public WorkEp queryWorkEp(String user) throws SQLException {
        QueryRunner runner = new QueryRunner(DruidUtils.getDataSource());
        String sql = "select * from work_experience where username = ?";
        WorkEp workEp = runner.query(sql,new BeanHandler<>(WorkEp.class),user);
        return workEp;
    }
}
