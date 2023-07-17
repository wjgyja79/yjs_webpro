package com.lec.quiz;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Scanner;

import com.lec.ex1_list.Friend;

public class Test {
	public static void main(String[] args) {
		ArrayList<Friend> friends = new ArrayList<Friend>();
		friends.add(new Friend("ȫ�浿", "���� ���빮��"));
		friends.add(new Friend("��浿", "�Ⱦ� ���ȱ�"));
		friends.add(new Friend("���浿", "��õ �߱�"));
		friends.add(new Friend("�ڱ�ȫ", "�Ȼ� �ܿ���"));
		friends.add(new Friend("���浿", "�Ժ� û����"));
		for(Friend friend : friends) {
			System.out.println(friend);
		}
		for(int idx=0 ; idx<friends.size(); idx++) {
			System.out.println(idx + " : " + friends.get(idx).getName());
		}
		Scanner scanner = new Scanner(System.in);
		while(true) {
			boolean searchOk = false; 
			System.out.print("�˻��� �ּ� �� ���� 2�ڸ� (��, ���Ḧ ���Ͻø� x�� �Է��Ͻÿ�) : ");
			System.out.println("\n \n \n \n \n");
			String searchWord = scanner.next(); 
			if(searchWord.equalsIgnoreCase("x")) break;
			for(Friend friend : friends) {
				String address = friend.getAddress();
				SimpleDateFormat sdf = new SimpleDateFormat("str");
				String addressStr = scanner.next();
				System.out.println(addressStr);
				if( searchWord.equals(addressStr) ) {
					System.out.println(friend);
					searchOk = true;
				}
			}
			if(!searchOk) { 
				System.out.println("�ش� �ּ��� ģ���� �����ϴ�");
			}
		}
	}
}

