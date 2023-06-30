package com.lec.loopQuiz;
// ��ǻ�Ϳ� ���������� ������ -1�� �Է��Ҷ����� ���ѹݺ��ϴ� ������ �ۼ��Ͻÿ�.
// (��, ������� 0, ������� 1, ����� 2, ���Ḧ ���ϸ� -1�� �Է��մϴ�)
import java.util.Scanner;

public class Homework1 {
	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		System.out.print("����(0), ����(1), ���ڱ�(2) �� ���� �ϳ��� �����ϼ��� :");
		int you = scanner.nextInt(); // 0, 1, 2
		if(you==-1) {
			System.out.println("�����մϴ�");
			System.exit(0);
		}
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
		}else if ( (you+1)%3 == computer) {
			System.out.println("��ǻ�Ͱ� �̰���ϴ�!");
		} //else if
	} //main
} //class


