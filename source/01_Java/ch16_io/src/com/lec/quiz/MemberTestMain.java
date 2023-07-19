package com.lec.quiz;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Scanner;
import java.util.StringTokenizer;

//outputSteram
public class MemberTestMain {
	public static void main(String[] args) {
		ArrayList<Member> members = new ArrayList<Member>();
		Scanner scanner = new Scanner(System.in);
		String name, tel, birthStr, address; // ����ڿ��� ���� ������
		Date birthday;
		while(true){
			System.out.print("ȸ�������ϽǷ��� (��, ��ġ ������ N) ?");
			if(scanner.next().equalsIgnoreCase("n")) break;
			System.out.print("�̸� ?");
			name = scanner.next();
			System.out.print("��ȭ ?");
			tel = scanner.next();
			System.out.print("����(yyyy-mm-dd) ?");
			birthStr = scanner.next(); // "1998-07-19-10-30"/"1998-07-19"/"1998"/��Ʈ��/19980719
			//birthday = toDate(birthStr);
			birthday = toDateTodayIsBirthDayChk(name, birthStr);
			System.out.print("�ּ� ?");
			scanner.nextLine(); // ���� ����� �뵵
			address = scanner.nextLine();
			members.add(new Member(name, tel, birthday, address));
		}
		// members�� ������ �ܼ���� & �������(OutputStream)
		OutputStream os = null;
		try {
			os = new FileOutputStream("src/com/lec/quiz/member.txt");
			for(Member member : members) {
				System.out.println(member);
				os.write(member.toString().getBytes());
			}
			String msg = "                      . . . . . ���� "+members.size()+"�� ����";
			System.out.println(msg);
			os.write(msg.getBytes());
		} catch (IOException e) {
			System.out.println(e.getMessage());
		} finally {
			try {
				if(os!=null) os.close();
			} catch (IOException e) {
				System.out.println(e.getMessage());
			}
		}
	}//main
	private static Date toDate(String birthStr) { 
		// �Ű������� ���� "1995-01-01"�� Date������ ��ȯ�Ͽ� return
		Date result = null;
		StringTokenizer tokenizer = new StringTokenizer(birthStr, "-");
		if(tokenizer.countTokens() == 3) { 
			// ��������� ����� �Է�(��ū�� ������ 3)
			int year  = Integer.parseInt(tokenizer.nextToken());
			int month = Integer.parseInt(tokenizer.nextToken()) - 1;
			int day   = Integer.parseInt(tokenizer.nextToken());
			//result = new Date(year-1900, month, day);
			result = new Date(new GregorianCalendar(year, month, day).getTimeInMillis());
		}else {
			System.out.println("������� ������ �ùٸ��� �ʾ� �Էµ��� �ʾҽ��ϴ�");
		}
		return result;
	} // toDate()�Լ�
	private static Date toDateTodayIsBirthDayChk(String name, String birthStr) {//"1999-01-01"
		// �Ű������� ���� "1995-01-01"�� Date������ ��ȯ�ϰ�, ������ �������� Ȯ�� �� return
		Date result = null;
		StringTokenizer tokenizer = new StringTokenizer(birthStr, "-");
		if(tokenizer.countTokens() == 3) { 
			// ��������� ����� �Է�(��ū�� ������ 3)
			int year  = Integer.parseInt(tokenizer.nextToken());
			int month = Integer.parseInt(tokenizer.nextToken()) - 1;
			int day   = Integer.parseInt(tokenizer.nextToken());
			//result = new Date(year-1900, month, day);
			result = new Date(new GregorianCalendar(year, month, day).getTimeInMillis());
			// ���� Ȯ��
			Date today = new Date();
			SimpleDateFormat sdf = new SimpleDateFormat("MM-dd");
//			if(sdf.format(today).equals(sdf.format(result))) {
//				System.out.println(name + "�� ������ �����̽ñ��� . ���ϵ���� �ڡڡڡڡڡ�");
//			}
			String todayStr = sdf.format(today); // "07-19"
			String resultStr = sdf.format(result); // "01-01" �Ʒ��� ����� �� �� �ϳ�
			resultStr = birthStr.substring(birthStr.indexOf("-") + 1);
			if(todayStr.equals(resultStr)) {
				System.out.println(name + "�� ������ �����̽ñ��� . ���ϵ���� �ڡڡڡڡڡ�");
			}
		}else {
			System.out.println("������� ������ �ùٸ��� �ʾ� �Էµ��� �ʾҽ��ϴ�");
		}
		return result;
	} // toDateTodayIsBirthDayChk()�Լ�
}
