package com.lec.ex4_object;

public class Ex2_hashcode {
	public static void main(String[] args) {
		String str1 = "Hello";
		String str2 = new String("Hello");
		if(str1==str2) {
			System.out.println("�ּҰ� ����(���� ���� ����)");
		}else {
			System.out.println("�ּҰ� �ٸ�(�ٸ� ���� ����)");
		}
		System.out.println(str1.hashCode());
		System.out.println(str2.hashCode());
		if(str1.equals(str2)) {
			System.out.println("���� ���ڿ�");
			System.out.println(str1.hashCode());
			System.out.println(str2.hashCode());
		}
	}
}
