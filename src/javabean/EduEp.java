package javabean;
import java.util.Date;
public class EduEp {
    private String userName;
    private String schoolName;
    private String professional;
    private Date startTime;
    private Date endTime;
    private String recordEdu;
    private String relatedEdu;
    private String achievement;

    public String getRecordEdu() {
        return recordEdu;
    }

    public void setRecordEdu(String recordEdu) {
        this.recordEdu = recordEdu;
    }

    public String getRelatedEdu() {
        return relatedEdu;
    }

    public void setRelatedEdu(String relatedEdu) {
        this.relatedEdu = relatedEdu;
    }


    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getSchoolName() {
        return schoolName;
    }

    public void setSchoolName(String schoolName) {
        this.schoolName = schoolName;
    }

    public String getProfessional() {
        return professional;
    }

    public void setProfessional(String professional) {
        this.professional = professional;
    }

    public Date getStartTime() {
        return startTime;
    }

    public void setStartTime(Date startTime) {
        this.startTime = startTime;
    }

    public Date getEndTime() {
        return endTime;
    }

    public void setEndTime(Date endTime) {
        this.endTime = endTime;
    }


    public String getAchievement() {
        return achievement;
    }

    public void setAchievement(String achievement) {
        this.achievement = achievement;
    }
}
