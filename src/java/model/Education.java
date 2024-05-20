/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author lpdie
 */
public class Education {

    private int id;
    private String major;
    private String uniName;
    private String rank;
    private Account account;

    // Constructor
    public Education() {

    }

    public Education(int id, String major, String uniName, String rank) {
        this.id = id;
        this.major = major;
        this.uniName = uniName;
        this.rank = rank;
    }

    public Education(int id, String major, String uniName, String rank, Account account) {
        this.id = id;
        this.major = major;
        this.uniName = uniName;
        this.rank = rank;
        this.account = account;
    }

    public Education(String major, String uniName, String rank, Account account) {
        this.major = major;
        this.uniName = uniName;
        this.rank = rank;
        this.account = account;
    }

    // Getters and Setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getMajor() {
        return major;
    }

    public void setMajor(String major) {
        this.major = major;
    }

    public String getUniName() {
        return uniName;
    }

    public void setUniName(String uniName) {
        this.uniName = uniName;
    }

    public String getRank() {
        return rank;
    }

    public void setRank(String rank) {
        this.rank = rank;
    }

    public Account getAccount() {
        return account;
    }

    public void setAccount(Account account) {
        this.account = account;
    }

    // Override toString method for easy printing
    @Override
    public String toString() {
        return "Education{" + "id=" + id + ", major=" + major + ", uniName=" + uniName + ", rank=" + rank + ", account=" + account + '}';
    }

}
