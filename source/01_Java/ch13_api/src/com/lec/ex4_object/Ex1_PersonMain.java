package com.lec.ex4_object;

import com.lec.ex2_date.Sawon;

public class Ex1_PersonMain {
	public static void main(String[] args) {
		Person p1 = new Person(981561641645L);
		Person p2 = new Person(981561641645L);
		Person p3 = null;
		Sawon S = new Sawon("1", "��", "COM");
		System.out.println(p1);
		System.out.println(p2);
		System.out.println("p1==p2�� " + (p1==p2) );
		System.out.println("p1�� p2�� ���� : " + p2.equals(p1));
		System.out.println("p1�� p3�� ���� : " + p1.equals(p3));
		System.out.println("p2�� s�� ���� : " + p2.equals(S));
		System.out.println(p1.hashCode());
		System.out.println(p2.hashCode());
	}
} 
