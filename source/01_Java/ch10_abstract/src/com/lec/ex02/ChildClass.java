package com.lec.ex02;
//method1(�߻�), method2, method3(�Ϲ�), method4
public class ChildClass extends SuperClass {

	@Override
	public void method1() {
		System.out.println("ChildClass�� method1 - �߻�޼ҵ�� �������̵� ��");
	}
	@Override
	public void method2() {
		System.out.println("ChildClass�� method2 - �׳� �������̵� ��");
	}
	public void method4() {
		System.out.println("ChildClass�� method4");
	}
}
