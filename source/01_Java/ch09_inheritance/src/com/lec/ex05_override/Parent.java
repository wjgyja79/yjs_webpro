package com.lec.ex05_override;
public class Parent {
	public Parent() { // ������ �Լ� overloading(�Լ��� �ߺ�����)
		System.out.println("�Ű����� ���� Parent ������");
	}
	public Parent(int i) {
		System.out.println("�Ű����� �ִ� Parent ������");
	}
	public void method1() {
		System.out.println("Parent�� method1()�Լ�");
	}
	public void method2() {
		System.out.println("Parent�� method2()�Լ�");
	}
	@Override
	public boolean equals(Object obj) {
		return true;
	}
}
