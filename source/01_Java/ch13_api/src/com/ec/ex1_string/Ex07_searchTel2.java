package com.ec.ex1_string;

import java.util.Scanner;

// ��ȭ��ȣ ���ڸ��� �ߺ�X
public class Ex07_searchTel2 {
	public static void main(String[] args) {
		String[] tels = {"010-9999-9999", "02-8888-8888", "010-7777-7777"};
		Scanner scanner = new Scanner(System.in);
		while(true) {
			boolean searchOk = false; // �˻��� ��ȭ��ȣ�� ã�Ҵ��� ����
			System.out.print("�˻��� ��ȭ��ȣ ���ڸ� : ");
			String searchTel = scanner.next(); // "8888"
			if(searchTel.equalsIgnoreCase("x")) break;
			for(int i=0; i<tels.length ; i++) {
				int postIdx = tels[i].lastIndexOf("-");
				String postTel = tels[i].substring(postIdx+1);
				if(postTel.equals(searchTel)) {
					System.out.println("�˻��Ͻ� ��ȭ��ȣ�� " + tels[i]);
					searchOk = true;
				}		
			}
			if(!searchOk) {
				System.out.println("�Է��Ͻ� ��ȭ��ȣ ���ڸ��� ������� �ʾҽ��ϴ�");
			}
		}
	}
}
