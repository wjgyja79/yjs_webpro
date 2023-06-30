package com.lec.loopQuiz;

import java.util.Scanner;

public class Quiz3 {
	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		System.out.print("첫번째 수는 : ");
		int num1 = scanner.nextInt();
		System.out.print("두번째 수는 : ");
		int num2 = scanner.nextInt();
			System.out.printf("첫번째 수(%d) * 두번째 수(%d) = %d", num1, num2, (num1*num2) );
			}	
	}
