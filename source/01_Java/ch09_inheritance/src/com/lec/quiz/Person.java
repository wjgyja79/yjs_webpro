package com.lec.quiz;

public class Person {
	private String no;
	private String id;
	private String name;
	public Person(String id, String name){
		this.id = id;
		this.name = name;
	}
	public void print(){
		System.out.print("(¹øÈ£)"+no+"\t(ID)"+id+"\t(ÀÌ¸§):"+name);
	}
	public String infoString() {
		return "(¹øÈ£)"+no+"\t(ID)"+id+"\t (ÀÌ¸§)"+name;
	}
	public String getNo() {return no;}
	public String getId() {return id; }
	public String getName() {return name;}
	public void setNo(String no) {this.no = no; }
	public void setId(String id) {this.id = id; }
	public void setName(String name) {this.name = name;}
}
