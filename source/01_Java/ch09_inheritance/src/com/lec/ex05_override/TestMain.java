package com.lec.ex05_override;

public class TestMain {
	public static void main(String[] args) {
		Parent pObj1 = new Parent();
		Parent pObj2 = new Parent(10);
		System.out.println("�� ��ü�� ������ ? " + pObj1.equals(pObj2));
		pObj1.method1();
		pObj1.method2();
		pObj2.method1();
		System.out.println("------------------------");
		Child cObj1 = new Child(); //Parent() -> Child()
		Child cObj2 = new Child(10); //Parent() -> Child(10)
		cObj1.method1(); // Child�� method1()�Լ�
		cObj1.method2();
		cObj2.method3();
		// pObj1.method3 (); �Ұ�
		System.out.println("�� ��ü(cObj��)�� ������ ? " + cObj1.equals(cObj2));
		System.out.println("------------------------------");
		// Child obj = new Child();
		Parent obj = new Child();
		obj.method1();
		obj.method2();
		// obj.method3(); obj������ Ÿ���� Parent
		if(obj instanceof Child) { // obj�� ����Ű�� ���� Child ��ü(�ν��Ͻ�)����
			((Child)obj).method3(); // ��ü�� ������� ����ȯ
		}else {
			System.out.println("����ȯ �Ұ�");
		}
	}
}
