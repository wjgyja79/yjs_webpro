package com.lec.loopQuiz;

import java.util.Scanner;

public class Quiz3 {
	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		System.out.print("ù��° ���� : ");
		int num1 = scanner.nextInt();
		System.out.print("�ι�° ���� : ");
		int num2 = scanner.nextInt();
			System.out.printf("ù��° ��(%d) * �ι�° ��(%d) = %d", num1, num2, (num1*num2) );
			}	
	}
