package com.lec.test;

// for ������ �̿��Ͽ� 1���� 45������ ������ ���� ����ϴ� ���α׷� �ۼ�
import java.util.Scanner;

public class ProgrammingLan {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.println("������  ������ �Է��ϼ��� ");
		int cnt = sc.nextInt();
		int tot = 0;
		for (int i = 0; i < cnt; i++) {
			tot += (int) (Math.random() * 45) + 1;
		}
		System.out.println("1~45 ������ ���� 10���� �հ�" + tot);
	}
}
