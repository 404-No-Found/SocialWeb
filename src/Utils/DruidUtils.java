package Utils;

import com.alibaba.druid.pool.DruidDataSourceFactory;
import test.Druid_test;

import javax.sql.DataSource;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

public class DruidUtils {
    public static DataSource ds = null;
    static {
        Properties prop = new Properties();
        InputStream in = new Druid_test().getClass().getClassLoader().getResourceAsStream("druidconfig.properties");
        try {
            prop.load(in);
            ds = DruidDataSourceFactory.createDataSource(prop);
        } catch (IOException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    public static DataSource getDataSource(){
        return ds;
    }
}
