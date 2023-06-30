package com.lec.conditionQuiz;

import java.util.Scanner;

// ��ǻ�Ϳ� ���������� ������ �ϴ� ���α׷��� ���� 
// ��, ����ڴ� ������ ������ �� ���� 0�� �Է��ϰ� ������ �����ϰ��� �� ���� 1�� �Է��ϰ�, 
// ���� �����ϰ��� �� ���� 2�� �Է��Ͽ� ������ �����մϴ�
public class Quiz4 {
	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		System.out.print("����(0), ����(1), ���ڱ�(2) �� ���� �ϳ��� �����ϼ��� :");
		int you = scanner.nextInt(); // 0, 1, 2
		int computer = (int) (Math.random()*3); // 0,1,2�� �� ����
		String youStr = (you==0) ? "����" : ( (you==1)? "����" : "���ڱ�" );
		String computerStr = (computer==0)? "����" : (computer==1)? "����" : "���ڱ�";
		if(you>2 || you<0) {
			System.out.println("�߸� �Է��Ͻ�");
			System.exit(0); // ���α׷� ���� ����
		}
		System.out.println("����� " + youStr + ", ��ǻ�ʹ�  "+ computerStr);
		// ����� �̰���ϴ� || ��ǻ�Ͱ� �̰���ϴ� || �����ϴ� ���
		if( (you+2)%3 == computer) {
			System.out.println("����� �̰���ϴ�!");
		}else if (you == computer) {
			System.out.println("�����ϴ�!");
		}else {
			System.out.println("��ǻ�Ͱ� �̰���ϴ�!");
		} //else
		scanner.close();
	} //Main
} //Quiz
