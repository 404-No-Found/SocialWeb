package Dao;

import Utils.DruidUtils;
import javabean.EduEp;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import java.sql.SQLException;

public class EduEpDao {
    //更新教育经历，更新内容
    public int upDateEduEp(EduEp ep, String username)throws SQLException {
        QueryRunner runner=new QueryRunner(DruidUtils.getDataSource());
        String sql="Update edu_experience set schoolName=?,professional=?,startTime=?,endTime=?,recordEdu=?,relatedEdu=?,achievement=? where username=?";
        Object[] objects = new Object[]{ep.getSchoolName(),ep.getProfessional(),ep.getStartTime(),ep.getEndTime(),ep.getRecordEdu(),ep.getRelatedEdu(),ep.getAchievement(),username};
        int result = runner.update(sql,objects);
        if (result>0){
            return 1;
        }else{
            return -1;
        }
    }
    //数据库查询用户的教育经历
    public EduEp queryEduEp(String user) throws SQLException {
        QueryRunner runner = new QueryRunner(DruidUtils.getDataSource());
        String sql = "select * from edu_experience where username = ?";
        EduEp eduEp = runner.query(sql,new BeanHandler<>(EduEp.class), user);
        return eduEp;
    }
}
