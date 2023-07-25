package com.lec.ex2_date;

import java.util.Calendar;
import java.util.GregorianCalendar;

public class Ex02_GregorianCalendar {
	public static void main(String[] args) {
		// Calendar nowCal = Calendar.getInstance();
		GregorianCalendar now = new GregorianCalendar(); // ���� ����
		GregorianCalendar notTat = new GregorianCalendar(2023, 6, 12); // Ư���� ��
		System.out.println(now);
		// 2023�� 7�� 12�� ������ 13��(���� 1��) xx�� xx��
		int year = now.get(Calendar.YEAR);
		int month = now.get(Calendar.MONTH) + 1; // ��ǻ�ʹ� 0������
		int day   = now.get(Calendar.DAY_OF_MONTH);
		int week  = now.get(Calendar.DAY_OF_WEEK); // 1:��, 2:��, 3:ȭ, 4:��... 7:��
		int hour24 = now.get(Calendar.HOUR_OF_DAY); // 24�ð�����
		int hour   = now.get(Calendar.HOUR); // 12�ð� ����
		int ampm = now.get(Calendar.AM_PM); // 0:����, 1:����
		int minute = now.get(Calendar.MINUTE);
		int second = now.get(Calendar.SECOND);
		System.out.printf("%d�� %d�� %d�� ", year, month, day);
		switch (week) {
			case 1: System.out.print("�Ͽ��� "); break;
			case 2: System.out.print("������ "); break;
			case 3: System.out.print("ȭ���� "); break;
			case 4: System.out.print("������ "); break;
			case 5: System.out.print("����� "); break;
			case 6: System.out.print("�ݿ��� "); break;
			case 7: System.out.print("����� "); break;
		}
		System.out.printf("%d��(%s %d��) %d�� %d��\n", 
						hour24, ampm==0? "����":"����", hour, minute, second);
		// %d����,  %f�Ǽ�,  %s���ڿ�,  %c����, %bboolean, ...
		// %tY(�⵵), %tm(��) %td(��) %ta(����) %tH(24��) %tp(����/����) %tl(12��) %tM(��) %tS(��)
		System.out.printf("%tY�� %tm�� %td�� %ta���� %tH��(%tp %tl��) %tM�� %tS��", 
				now, now, now, now, now, now, now, now, now);
		System.out.printf("%1$tY�� %1$tm�� %1$td�� %1$ta���� %1$tH��(%1$tp %1$tl��) %1$tM�� %1$tS��",now);
	}
}