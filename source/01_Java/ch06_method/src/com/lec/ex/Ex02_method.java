package com.lec.ex;

public class Ex02_method {
	public static void main(String[] args) {
		int tot = sum(1, 10);
		System.out.println("1~10���� ������ ���� " + tot);
		System.out.println(evenOdd(tot));
		tot = sum(11, 100);
		System.out.println("11~100���� ������ ���� " +tot);
		System.out.println(evenOdd(tot));
		System.out.println("1~100���� ������ ���� " + sum(1, 100));
	}
	//�Ķ����(=�Ű�����:from, to)�� �޾� from���� to���� ������ ���� return�ϴ� �޼ҵ�
	private static int sum(int from, int to) {
		int sum = 0; // ��������
		for(int i=from ; i<=to ; i++) {
			sum += i;
		}
		return sum;
	}
	// �Ķ����(=�Ű�����, ����:Value)�� �޾� ¦Ȧ�� ���θ� ���ڿ��� return�ϴ� �żҵ�
	private static String evenOdd(int value) {
		String result = value%2==0 ? "¦���Դϴ�" : "Ȧ���Դϴ�";
		return result;
	}
}
