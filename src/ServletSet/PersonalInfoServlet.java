package ServletSet;

import Dao.PersonalInfoDao;
import com.jspsmart.upload.File;
import com.jspsmart.upload.SmartUpload;
import com.jspsmart.upload.SmartUploadException;
import javabean.PersonalInfo;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;

@MultipartConfig
@WebServlet("/PersonalInfoServlet")
public class PersonalInfoServlet extends HttpServlet {
    private ServletConfig config;
    public void init(ServletConfig config) throws ServletException{
        super.init(config);
        this.config = config;
    }
    final public ServletConfig getConfig(){
        return config;
    }
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //头像上传
        SmartUpload up = new SmartUpload();
        up.initialize(getConfig(),req,resp);
        up.setAllowedFilesList("jpg,png,gif,jepg");//设定文件允许上传的后缀
         // 或者你需要的编码
        try {
            up.upload();
        } catch (SmartUploadException e) {
            e.printStackTrace();
        }
        up.getRequest().getParameter("uploadFiles");
        File file = up.getFiles().getFile(0);
        String pic_head_name = file.getFileName();
        String savePath = getServletContext().getRealPath("/") + "headPics";
        try {
//            System.out.println(savePath+"\\"+pic_head_name);
            file.saveAs(savePath+"/"+pic_head_name);
        } catch (SmartUploadException e) {
            e.printStackTrace();
        }
        String filepath = "../headPics/"+pic_head_name;

        //获取html数据
        String real_name = up.getRequest().getParameter("real_name");
        String birthday = up.getRequest().getParameter("birthday");
        String phone_num = up.getRequest().getParameter("phone_num");
        String now_city = up.getRequest().getParameter("now_city");
        String gender =up.getRequest().getParameter("gender");
        String personal_website = up.getRequest().getParameter("website");
        String email = up.getRequest().getParameter("email");
        String address = up.getRequest().getParameter("address");
        String graduate_school = up.getRequest().getParameter("school");
        String company = up.getRequest().getParameter("company");


        PersonalInfo info = new PersonalInfo();
        info.setHeadPic(filepath);
        info.setRealName(real_name);
        info.setBirthday(birthday);
        info.setPhoneNum(phone_num);
        info.setNowCity(now_city);
        info.setGender(gender);
        info.setPersonalWebsite(personal_website);
        info.setEmail(email);
        info.setAddress(address);
        info.setSchool(graduate_school);
        info.setCompany(company);

        HttpSession session = req.getSession();
        String user = (String) session.getAttribute("user");
        PersonalInfoDao dao = new PersonalInfoDao();
        try {
            if (dao.alterPersonalInfo(info,user) == 1){
                resp.getWriter().write("修改个人信息成功！即将返回。。。");
                resp.setHeader("Refresh","3,URL=http://localhost:8080/personalSpace.jsp");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }
}
