package com.lec.condition;

import java.util.Scanner;

// ����ڷκ��� ����(0~100)�� �Է¹޾� ���� ���
public class Ex04_if_hakjum {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.print("���� ?  ");
		int score = sc.nextInt();
		if( (90<=score && score<=100) ) {
			System.out.println("A");
		}else if( score>=80 && score<90) {
			System.out.println("B");
		}else if( score>=70 && score<80) {
			System.out.println("C");
		}else if( score>=60 && score<70) {
			System.out.println("D");
		}else if( score>=0 && score<60) {
			System.out.println("F");
		}else {
			System.out.println("��ȿ���� �ʴ� �����Դϴ�");
		} //if
		sc.close();
	}//main
}
