package com.ec.ex1_string;
import java.util.Scanner;

public class Ex06 {
	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		while(true) {
			System.out.print("��ȭ��ȣ(xxx-xxxx-xxxx���·� �Է��ϼ���) ?"); 
			String tel = scanner.next(); // "02-717-7777" "010-9999-8888"
			if(tel.equalsIgnoreCase("x")) break;
			System.out.println("�Է��� ��ȭ��ȣ�� " + tel);
			System.out.print("¦����° ���ڿ� : ");
			for(int idx=0 ; idx<tel.length() ; idx++) {
				if(idx%2==0) {
					System.out.print(tel.charAt(idx));
				}else {
					System.out.print(' ');
				}
			}// for
			System.out.print("\n���ڿ� ���ٷ� : ");
			for(int idx=tel.length()-1 ; idx>=0 ; idx--) {
				System.out.print(tel.charAt(idx));
			}//for
			int preIdx = tel.indexOf("-");
			String preTel = tel.substring(0, preIdx);
			System.out.println("\n��ȭ��ȣ �Ǿ��ڸ� : " + preTel);
			int postIdx = tel.lastIndexOf("-");
			String postTel = tel.substring(postIdx+1);
			System.out.println("\n��ȭ��ȣ ���ڸ� : " + postTel);
		}
		scanner.close();
	}
}