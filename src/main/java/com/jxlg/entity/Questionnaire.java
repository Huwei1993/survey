package com.jxlg.entity;

import java.util.Date;

/**
 * 问卷实体类
 * 
 * @author feng
 * 
 */
public class Questionnaire {
	private int qid; // 调查表id
	private String qname; // 调查表名字
	private int uid; // 编辑用户id
	private Date etime; // 编辑时间
	private Date stime; // 开始时间
	private Date ftime; // 结束时间
	private String qexplain; // 问卷说明
	private int mid; // 模板类型id
	private Boolean quse;// 问卷表是否被启用

	public Questionnaire(int qid,String qname, int uid, Date etime,
			Date stime, Date ftime, String qexplain, int mid, Boolean quse) {
		super();
		this.qid = qid;
		this.qname = qname;
		this.uid = uid;
		this.etime = etime;
		this.stime = stime;
		this.ftime = ftime;
		this.qexplain = qexplain;
		this.mid = mid;
		this.quse = quse;
	}
	public Questionnaire(String qname, int uid, Date etime,
			Date stime, Date ftime, String qexplain, int mid, Boolean quse) {
		super();
		this.qname = qname;
		this.uid = uid;
		this.etime = etime;
		this.stime = stime;
		this.ftime = ftime;
		this.qexplain = qexplain;
		this.mid = mid;
		this.quse = quse;
	}

	public Questionnaire() {
		super();
	}

	@Override
	public String toString() {
		return "Questionnaire [qid=" + qid + ", qname=" + qname + ", uid="
				+ uid + ", etime=" + etime + ", stime=" + stime + ", ftime="
				+ ftime + ", qexplain=" + qexplain + ", mid=" + mid + ", quse="
				+ quse + "]";
	}

	public int getQid() {
		return qid;
	}

	public void setQid(int qid) {
		this.qid = qid;
	}

	public String getQname() {
		return qname;
	}

	public void setQname(String qname) {
		this.qname = qname;
	}

	public int getUid() {
		return uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	public Date getEtime() {
		return etime;
	}

	public void setEtime(Date etime) {
		this.etime = etime;
	}

	public Date getStime() {
		return stime;
	}

	public void setStime(Date stime) {
		this.stime = stime;
	}

	public Date getFtime() {
		return ftime;
	}

	public void setFtime(Date ftime) {
		this.ftime = ftime;
	}

	public String getQexplain() {
		return qexplain;
	}

	public void setQexplain(String qexplain) {
		this.qexplain = qexplain;
	}

	public int getMid() {
		return mid;
	}

	public void setMid(int mid) {
		this.mid = mid;
	}

	public Boolean getQuse() {
		return quse;
	}

	public void setQuse(Boolean quse) {
		this.quse = quse;
	}

}
