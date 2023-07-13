package com.lec.ex5_scanner;

import java.util.Scanner;

public class Ex03 {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.println("이름?");
		String name = sc.nextLine();
		System.out.println("주소?");
		String address = sc.nextLine();
		System.out.println("나이?");
		int age = sc.nextInt();
		System.out.println(age + "살" + name + "님" + address + "거주");
	}
}
