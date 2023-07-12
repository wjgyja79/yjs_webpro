package com.lec.ex2_date;

import java.util.Date;
import java.util.GregorianCalendar;

public class Ex03_Date {
	public static void main(String[] args) {
		Date now = new Date();
		// Date nowThat = new Date(2023-1900, 6, 12);
		Date nowThat = new Date(new GregorianCalendar(2023, 6, 1).getTimeInMillis());
		System.out.println(now);
		int year = now.getYear();
		System.out.printf("%1$tY�� %1$tm�� %1$td�� %1$ta���� %1$tH��(%1$tp %1$tl1) %1$tM�� %1$tS��",
						now);
		
	}
}
