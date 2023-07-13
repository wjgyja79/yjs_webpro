package com.lec.ex4_object;
// ��� ����(�ּҾ�2�ڸ�) �˻�
// ��ȭ��ȣ ��4�ڸ� �˻�
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Scanner;

public class Ex04_FreindMain3 {
	public static void main(String[] args) {
		Friend[] friends = {new Friend("ȫ�浿", "010-9999-9999", "���� ���빮��", 
						new Date(new GregorianCalendar(1998, 11, 12).getTimeInMillis())),
				new Friend("�ű浿", "010-9999-8888", "��⵵ �Ⱦ��", 
						new Date(new GregorianCalendar(1998, 6, 22).getTimeInMillis())),
				new Friend("��浿", "010-9999-7777", "��õ �߱�", 
						new Date(new GregorianCalendar(1996, 6, 22).getTimeInMillis())),
				new Friend("�ڼ���", "010-9999-6666", "���� ��걸", 
						new Date(new GregorianCalendar(1996, 7, 22).getTimeInMillis())),
				new Friend("������", "010-9999-5555", "�Ժ� û����", 
						new Date(new GregorianCalendar(1996, 0, 22).getTimeInMillis()))};
		Scanner scanner = new Scanner(System.in);
		// �˻��� ���� �Է�(����) => �迭 �˻� (0��° �ε������� ���� ������ ���)
		while(true) {
			boolean searchOk = false; // �� ã�Ҵٸ� �ʱ�ȭ
			System.out.print("�˻��� ������ �Է� (��, ���Ḧ ���Ͻø� x�� �Է��Ͻÿ�) : ");
			String searchWord = scanner.next(); // 8888
			if(searchWord.equalsIgnoreCase("x")) break;
			for(Friend friend : friends) {
				String num = friend.getNum();
				int idx = num.lastIndexOf("-");
				String temp = num.substring(idx+1); 
				if( searchWord.equals(temp) ) {
					System.out.println(friend);
					searchOk = true;
				}
			}
			if(!searchOk) { // �ش� ������ ģ���� �� ã��
				System.out.println("�ش� ������ ģ���� �����ϴ�");
			}
		}
	}
}
