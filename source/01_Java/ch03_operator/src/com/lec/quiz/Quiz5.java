package com.lec.quiz;
import java.util.Scanner;
// ����, ����, ���� ������ ����ڿ��� �Է¹޾�, �� ������ ����ϰ� ����, ���(�Ҽ���2�ڸ�����) ����ϴ� ���α׷��� ���� �Ͻÿ�
public class Quiz5 {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.print("���������� �Է��ϼ��� : ");
		int su1 = sc.nextInt(); // Ű����κ��� �Է¹��� ������ su�� �Ҵ�
		Scanner sc = new Scanner(System.in);
		System.out.print("���������� �Է��ϼ��� : ");
		int su2 = sc.nextInt(); // Ű����κ��� �Է¹��� ������ su�� �Ҵ�
		Scanner sc = new Scanner(System.in);
		System.out.print("���������� �Է��ϼ��� : ");
		int su3 = sc.nextInt(); // Ű����κ��� �Է¹��� ������ su�� �Ҵ�
		int sum = su1 + su2 + su3;
		double avg = sum/3.;
		System.out.printf("���� = %d, ���� = %d, ���� = %d\n", su1, su2, su3);
		System.out.printf("���� = %d, ��� = %.2f\n", sum, avg);
		sc.close();
	}
}
