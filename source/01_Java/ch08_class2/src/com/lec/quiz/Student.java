package com.lec.quiz;

public class Student {
	private int	 number;
	public static int count = 0;
	private String name;
	private int		kor;
	private int		eng;
	private int		mat;
	private int 	tot;
	private int 	avg;
	public Student() { } // 디폴트 생성자
	public Student(int number, String name, int kor, int eng, int mat) {
		this.number = ++count;
		this.name = name;
		this.kor = kor;
		this.eng = eng;
		this.mat = mat;
		tot = kor + eng + mat;
		avg = tot/3;
	}
	public void print() {
		System.out.printf("%d \t %s \t %d \t %d \t %d \t %d \t %d \n", 
							number , name , kor, eng, mat, tot, avg);
	}
	public String infoString() {
		return String.format("%d \t %s \t %d \t %d \t %d \t %d \t %d", 
							 	number, name , kor, eng, mat, tot, avg);
	}
	public int number() {
		return number;
	}
	public String getName() {
		return name;
	}
	public int getKor() {
		return kor;
	}
	public int getEng() {
		return eng;
	}
	public int getMat() {
		return mat;
	}
	public int getTot() {
		return tot;
	}
	public int getAvg() {
		return avg;
	}
	
	
}
