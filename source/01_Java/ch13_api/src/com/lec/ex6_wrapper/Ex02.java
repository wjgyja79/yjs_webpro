package com.lec.ex6_wrapper;
// ���ڿ�("100") -> ����(100) Integer.parseInt(���ڿ�)
// ����(100) -> ���ڿ�("100") String.valueOf(����)
public class Ex02 {
	public static void main(String[] args) {
		System.out.println("��Ʈ���� ������ ��ȯ");
		int i = Integer.parseInt("100");
		System.out.println("i = " + i);
		String monthStr = String.valueOf(12); // "12"
		monthStr = "" + 12; // "12"
	}
}
