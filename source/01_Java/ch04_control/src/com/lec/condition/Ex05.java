package com.lec.condition;

import java.util.Scanner;

// ����ں��� ���� ������ Ȧ������ ¦������ ��� (���׿�����, if, switch) - switch
public class Ex05 {
	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		System.out.print("������ �Է��ϼ��� : ");
		int su = scanner.nextInt();
		switch(su%2) {
		case 0: 
			System.out.println("¦��"); break;
		default:
			System.out.println("Ȧ��"); break;
		}
		scanner.close();
	}
}
