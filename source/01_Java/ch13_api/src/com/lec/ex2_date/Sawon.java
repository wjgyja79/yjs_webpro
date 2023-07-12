package com.lec.ex2_date;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.GregorianCalendar;

public class Sawon {
	private String no;
	private String name;
	private String team;
	private Date hday;
	public Sawon(String no, String name, String team) {
		this.no = no;
		this.name = name;
		this.team = team;
		hday = new Date();
	} 
	public Sawon(String no, String name, String team, int year, int m, int d) {
		this.no = no;
		this.name = name;
		this.team = team;
		hday = new Date(new GregorianCalendar(year, m-1, d).getTimeInMillis());
	}
//	public String infoString() {
//		SimpleDateFormat sdf = new SimpleDateFormat("yyyy년M월d일");
//		return "[사번]"+no+"\t[이름]"+name + "\t[부서]" + team + "\t[입사일]" 
//			+ sdf.format(hday);
//	}	
	@Override
	public String toString() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		return "[사번]"+no +"\t[이름]" + name + "\t[부서]" + team + "\t[입사일]" + sdf.format(hday);
	}
}
