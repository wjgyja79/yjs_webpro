package com.lec.ex2_date;

public class SawonMain {
	public static void main(String[] args) {
		Sawon hong = new Sawon("202301", "ȫ�浿", "COMPUTER");
		Sawon shin = new Sawon("202201", "�ű浿", "DESIGN", 2022, 1, 1);
		System.out.println(hong);
		System.out.println(shin.toString());
	}
}
