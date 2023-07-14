package com.lec.ex1_tryCatch;

import java.util.InputMismatchException;
import java.util.Scanner;

public class Ex02 {
	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		int i, j = 1; // ����ڿ��� �Է¹��� �� ����
		do {
			try {
				System.out.println("ù��° ������(��Ģ���� ����� ����)?");
				i = scanner.nextInt();
				break;
			}catch(InputMismatchException e) {
				System.out.println("���ڸ� ���� ������");
				scanner.hasNextLine(); // ���۸� ����� ����(\n�ձ��� ���ڸ� return�ϰ� \n�� ����� �Լ�)
			}
		}while(true);
		System.out.print("�ι�° ������(��Ģ���� ����� ����)?");
		try {
			j = scanner.nextInt();
			System.out.println("i / j = " + (i/j)); // ���ܰ� �߻��� ���� �ְ�, �� �� �� �ִ� �κ�
		}catch(ArithmeticException e) { // ArithmeticException ���� ��ü �߻��� ���� �κ�
		// e.printStacktrace(); �� �ڼ��� �߿� �޼���
			System.out.println(e.getMessage()); // ���ܰ�ü�� ���ܸ޼��� ���
		}catch(InputMismatchException e) {
			System.out.println(e.getMessage());
			System.out.println("�ι�° ���� ���� ������ 1�� ó��");
		}
		System.out.println("i * j = " + (i*j));
		System.out.println("i - j = " + (i-j));
		System.out.println("i + j = " + (i+j));
		System.out.println("DONE");
		scanner.close();
	}
}
