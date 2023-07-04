package com.lec.ex4_momchild;

public class Child {
	private String name;
	static MomPouch momPouch;
	public Child(String name) { // Child c1 = new Child("ù°")
		this.name = name;
		momPouch = new MomPouch();
	}
	public void takeMoney(int money) {
		if(momPouch.money >= money) {
			momPouch.money -= money; // momPouch.money = momPouch.money - money;
			System.out.println(name + "�� " + money + "�� �������� ���������� "
												+ momPouch.money + "�� ����");
		}else {
			System.out.println(name + "�� �� �� ����. ���� ���� ������ " + momPouch.money + "�� ��");
		}
	}
}
