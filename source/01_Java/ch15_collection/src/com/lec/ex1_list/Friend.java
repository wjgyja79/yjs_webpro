package com.lec.ex1_list;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Friend {
	private String name;
	private String tel;
	private Date birth;
	public char[] getName;
	public Friend(String name, String tel) {
		this.name = name;
		this.tel = tel;
		// birth
	}
	public Friend(String name, String tel, Date birth) {
		this.name = name;
		this.tel = tel;
		this.birth = birth;
	}
	@Override
	public String toString() {
		if(birth!=null) {
		SimpleDateFormat sdf = new SimpleDateFormat("yy-MM-dd");
		return "[name]" + name + "\t[tel]" + tel + "\t[birth]" + sdf.format(birth);
	}
		return "[name]" + name + "\t[tel]" + tel;
	}
	public Date getBirth() {
		return birth;
	}
	public String getName() {
		return name;
	}
	public String getTel() {
		return tel;
	}
	public String getAddress() {
		// TODO Auto-generated method stub
		return null;
	}
}
