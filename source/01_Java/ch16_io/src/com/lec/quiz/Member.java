package com.lec.quiz;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Member {
	private String name;
	private String tel;
	private String address;
	private Date birth;
	public Member() { }
	public Member(String name, String tel, String address, Date birth) {
		this.name = name;
		this.tel = tel;
		this.address = address;
		this.birth = birth;
	}
	@Override
	public String toString() {
		if(birth!=null) {
			SimpleDateFormat sdf = new SimpleDateFormat("yy-MM-dd");
		return "Member [name=" + name + ", tel=" + tel + ", address=" + address + ", birth=" + sdf.format(birth) + "]";
	}
		return "[name]" + name + "[tel]" + tel + "[address]" + address + "[birth]" + birth;
		}
	public String getName() {
		return name;
	}
	public String getTel() {
		return tel;
	}
	public String getAddress() {
		return address;
	}
	public Date getBirth() {
		return birth;
	}
}
