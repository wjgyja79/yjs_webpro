package com.lec.ex4_momchild;

public class childTestMain {
	public static void main(String[] args) {
		Child child1 = new Child("ù°");
		Child child2 = new Child("��°");
		Child child3 = new Child("��°");
		System.out.println("ù° ���� ���� : " + Child.momPouch.money);
		System.out.println("��° ���� ���� : " + child2.momPouch.money);
		System.out.println("��° ���� ���� : " + child3.momPouch.money);
		child1.takeMoney(100);
		System.out.println("����1 ���� : " + child1.momPouch.money);
		child2.takeMoney(100);
		System.out.println("����2 ���� : " + child2.momPouch.money);
		child3.takeMoney(200);
		System.out.println("����3 ����: " + child3.momPouch.money);
	}
}
