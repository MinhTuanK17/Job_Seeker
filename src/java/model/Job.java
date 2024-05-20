/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author MINH TUAN
 */
public class Job {

    private int id;
    private String jobType;
    private Company company;
    private String description;
    private String location;
    private int yearExp;
    private double salary;
    private Account account;
    private int applyId;

    public Job() {
    }

    public Job(String jobType, Company company, String description, String location, int yearExp, double salary, Account account, int applyId) {
        this.jobType = jobType;
        this.company = company;
        this.description = description;
        this.location = location;
        this.yearExp = yearExp;
        this.salary = salary;
        this.account = account;
        this.applyId = applyId;
    }

    public Job(int id, String jobType, Company company, String description, String location, int yearExp, double salary, Account account, int applyId) {
        this.id = id;
        this.jobType = jobType;
        this.company = company;
        this.description = description;
        this.location = location;
        this.yearExp = yearExp;
        this.salary = salary;
        this.account = account;
        this.applyId = applyId;
    }


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getJobType() {
        return jobType;
    }

    public void setJobType(String jobType) {
        this.jobType = jobType;
    }

  
    public Company getCompany() {
        return company;
    }

    public void setCompany(Company company) {
        this.company = company;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public int getYearExp() {
        return yearExp;
    }

    public void setYearExp(int yearExp) {
        this.yearExp = yearExp;
    }

    public double getSalary() {
        return salary;
    }

    public void setSalary(double salary) {
        this.salary = salary;
    }

    public Account getAccount() {
        return account;
    }

    public void setAccount(Account account) {
        this.account = account;
    }

    public int getApplyId() {
        return applyId;
    }

    public void setApplyId(int applyId) {
        this.applyId = applyId;
    }
//
//    @Override
//    public String toString() {
//        StringBuilder sb = new StringBuilder();
//        sb.append("Job{");
//        sb.append("id=").append(id);
//        sb.append(", jobType=").append(jobType);
//        sb.append(", company=").append(company);
//        sb.append(", description=").append(description);
//        sb.append(", location=").append(location);
//        sb.append(", yearExp=").append(yearExp);
//        sb.append(", salary=").append(salary);
//        sb.append(", account=").append(account);
//        sb.append(", applyId=").append(applyId);
//        sb.append('}');
//        return sb.toString();
//    }

    @Override
    public String toString() {
        return "Job{" + "id=" + id + ", jobType=" + jobType + ", company=" + company + ", description=" + description + ", location=" + location + ", yearExp=" + yearExp + ", salary=" + salary + ", account=" + account + ", applyId=" + applyId + '}' + "\n";
    }

}
