package com.wangpeng.bms.model;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Borrow {
    private Integer borrowid;

    private Integer userid;

    private String username;

    private Integer bookid;

    private String bookname;

    private Date borrowtime;

    private String borrowtimestr;

    private Date returntime;

    private String returntimestr;

    public Integer getBorrowid() {
        return borrowid;
    }

    public void setBorrowid(Integer borrowid) {
        this.borrowid = borrowid;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public Integer getBookid() {
        return bookid;
    }

    public void setBookid(Integer bookid) {
        this.bookid = bookid;
    }

    public String getBookname() {
        return bookname;
    }

    public void setBookname(String bookname) {
        this.bookname = bookname;
    }

    public Date getBorrowtime() {
        return borrowtime;
    }

    public void setBorrowtime(Date borrowtime) {
        this.borrowtime = borrowtime;
    }

    public String getBorrowtimestr() {
        return borrowtimestr;
    }

    public void setBorrowtimestr(String borrowtimestr) {
        this.borrowtimestr = borrowtimestr;
    }

    public Date getReturntime() {
        return returntime;
    }

    public void setReturntime(Date returntime) {
        this.returntime = returntime;
    }

    public String getReturntimestr() {
        return returntimestr;
    }

    public void setReturntimestr(String returntimestr) {
        this.returntimestr = returntimestr;
    }
}
