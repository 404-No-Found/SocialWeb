package javabean;


import java.util.Date;

public class WorkEp {
    private String userName;
    private String companyName;
    private String jobTitle;
    private Date startTimes;
    private Date endTimes;
    private String workCity;
    private String relatedWork;
    private String jobDescription;

    public Date getStartTimes() {
        return startTimes;
    }

    public void setStartTimes(Date startTimes) {
        this.startTimes = startTimes;
    }

    public Date getEndTimes() {
        return endTimes;
    }

    public void setEndTimes(Date endTimes) {
        this.endTimes = endTimes;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }

    public String getJobTitle() {
        return jobTitle;
    }

    public void setJobTitle(String jobTitle) {
        this.jobTitle = jobTitle;
    }

    public String getWorkCity() {
        return workCity;
    }

    public void setWorkCity(String workCity) {
        this.workCity = workCity;
    }

    public String getRelatedWork() {
        return relatedWork;
    }

    public void setRelatedWork(String relatedWork) {
        this.relatedWork = relatedWork;
    }

    public String getJobDescription() {
        return jobDescription;
    }

    public void setJobDescription(String jobDescription) {
        this.jobDescription = jobDescription;
    }


}
