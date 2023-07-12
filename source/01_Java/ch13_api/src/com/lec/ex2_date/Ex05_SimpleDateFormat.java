package com.lec.ex2_date;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

public class Ex05_SimpleDateFormat {
	public static void main(String[] args) {
		Date nowDate = new Date ();
		Calendar nowCal = Calendar.getInstance();
		GregorianCalendar nowGc = new GregorianCalendar();
		/* yyyy(�⵵4�ڸ�) yy*�⵵2�ڸ�) MM(��2�ڸ�:07) M(��:7) dd(��2�ڸ�:09) d(��:9) E(����)
		 * a(����/����) H(24��) h(12��) m(��) s(��)
		 * w(���� ���° ������) W(�̹� �� ���° ������) D(���� ���° ��) */
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy�� MM�� dd��(E) HH��(a hh��) mm�� ss��");
		String nowDateStr = sdf.format(nowDate);
		System.out.println(nowDateStr);
		String nowCalStr = sdf.format(nowCal.getTime());
		System.out.println(nowCalStr);
		String nowGcStr = sdf.format(nowGc.getTime());
		System.out.println(nowGcStr);
	}
}
