package com.lec.ex5_scanner;

import java.util.Scanner;

public class Ex03 {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.println("�̸�?");
		String name = sc.nextLine();
		System.out.println("�ּ�?");
		String address = sc.nextLine();
		System.out.println("����?");
		int age = sc.nextInt();
		System.out.println(age + "��" + name + "��" + address + "����");
	}
}
