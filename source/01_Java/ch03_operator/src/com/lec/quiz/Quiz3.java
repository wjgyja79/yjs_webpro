package com.lec.quiz;
import java.util.Scanner;
// �μ��� �Է¹޾� 
�� ���� ������ ����� O�� X�� ���.
ù��° ���� �� ū�� ����� O�� X�� ���
public class Quiz3 {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.print("ù��° ���� �Է��ϼ��� : ");
		int su1 = sc.nextInt(); // Ű����κ��� �Է¹��� ������ su�� �Ҵ�
		Scanner sc = new Scanner(System.in);
		System.out.print("�ι�° ���� �Է��ϼ��� : ");
		int su2 = sc.nextInt(); // Ű����κ��� �Է¹��� ������ su�� �Ҵ�
		String result = su1 == su2 ? "O" : "X";
		System.out.println("�εμ��� ������ ���� :  " +result);
		String result = su1>su2 ? "O" : "X";
		System.out.println("ù��° ���� ū�� ���� :  " +result);
		sc.close();
	}
}
