package com.lec.conditionQuiz;

import java.util.Scanner;

// ���������� �� �ϳ��� ���� �� ���� ����ϼ���(������� 0, ������� 1, ����� 2�� �Է�)
public class Quiz3 {
	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		System.out.print("����(0), ����(1), ���ڱ�(2) �� ���� �ϳ��� �����ϼ��� :");
		int you = scanner.nextInt(); // 0, 1, 2
		String youStr = (you==0) ? "����" : ( (you==1)? "����" : "���ڱ�" );
		if(you>2 || you<0) {
			System.out.println("�߸� �Է��Ͻ�");
			System.exit(0); // ���α׷� ���� ����
		}
		System.out.println(youStr);
//		if(you==0) {
//			System.out.println("����");
//		}else if(you==1) {
//			System.out.println("����");
//		}else if(you == 2 ) {
//			System.out.println("���ڱ�");
//		}else {
//			System.out.println("�߸� �Ͻ�");
//		}
//		switch(you) {
//		case 0 : System.out.println("����"); break;
//		case 1 : System.out.println("����"); break;
//		case 2 : System.out.println("���ڱ�"); break;
//		default: System.out.println("�߸� �Է��Ͻ�"); break;
		}
	}
