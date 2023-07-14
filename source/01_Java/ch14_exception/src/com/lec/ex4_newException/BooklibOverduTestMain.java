package com.lec.ex4_newException;

import java.util.Date;
import java.util.GregorianCalendar;

// å��ü -> ���� -> �������� 2�������� setting ->�ݳ�
public class BooklibOverduTestMain {
	public static void main(String[] args) {
		Book book = new Book("950-��10", "�̰��� �ڹٴ�", "������");
		System.out.println("������ : " + book);
		book.checkOut("ȫ�浿"); // ����
		// book.setCheckOutDate(new Date(2023-1900, 5, 23));
		book.setCheckOutDate(new Date(new GregorianCalendar(2023, 5, 23).getTimeInMillis()));
		System.out.println("������ : " + book);
		try {
			book.checkIn();
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		System.out.println("�ݳ�ó�� Ȯ�� : " + book);
		
	}
}
