package com.lec.ex3_math;
// Math.ceil(�ø� �Ǽ�) => double�� return   [ex] Math.ceil(8.15) => 9.0
// Math.round(�ݿø��� �Ǽ�) => long�� return [ex] Math.ceil(8.15) => 9.0
// Math.floor(���� �Ǽ�) => double�� return	 [ex] Math.ceil(8.99) => 8.0
public class Ex02_round {
	public static void main(String[] args) {
		System.out.println("�Ҽ������� �ݿø�, �ø�, ����");
		System.out.println("8.15�� �ø� : " + (int)Math.ceil(8.15));
		System.out.println("8.15�� �ݿø� : " + Math.round(8.15));
		System.out.println("8.15�� ���� : " + Math.floor(8.15));
		System.out.println("�Ҽ��� ���ڸ����� �ݿø�, �ø�, ����");
		System.out.println("8.15�� �ø� : " + Math.ceil(8.15*10) / 10);
		System.out.println("8.15�� �ݿø� : " + Math.round(8.15*10) / 10.0);
		System.out.println("8.15�� ���� : " + Math.floor(8.15 * 10)/10);
		System.out.println("���� �ڸ����� �ݿø�, �ø�, ����(85 => 90)");
		System.out.println("85�� �ø� : " + (int)Math.ceil(85 / 10.0) * 10);
		System.out.println("85�� �ݿø� : " + Math.round(85 / 10.0) * 10);
		System.out.println("85�� ���� : " + (int)Math.floor(85 / 10.0) * 10);
	}
}
