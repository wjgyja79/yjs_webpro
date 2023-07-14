package com.lec.ex1_tryCatch;

import java.util.Scanner;

public class Ex01 {
	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		int i, j; // ����ڿ��� �Է¹��� �� ����
		System.out.println("ù��° ������(��Ģ���� ����� ����)?");
		i = scanner.nextInt();
		System.out.print("�ι�° ������(��Ģ���� ����� ����)?");
		j = scanner.nextInt();
		try {
			System.out.println("i / j = " + (i/j)); // ���ܰ� �߻��� ���� �ְ�, �� �� �� �ִ� �κ�
		}catch(ArithmeticException e) { // ArithmeticException ���� ��ü �߻��� ���� �κ�
		// e.printStacktrace(); �� �ڼ��� �߿� �޼���
			System.out.println(e.getMessage()); // ���ܰ�ü�� ���ܸ޼��� ���
		}
		System.out.println("i * j = " + (i*j));
		System.out.println("i - j = " + (i-j));
		System.out.println("i + j = " + (i+j));
		System.out.println("DONE");
		scanner.close();
	}
}
