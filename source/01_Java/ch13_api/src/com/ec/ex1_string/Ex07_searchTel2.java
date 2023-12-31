package com.ec.ex1_string;

import java.util.Scanner;

// 전화번호 뒷자리가 중복X
public class Ex07_searchTel2 {
	public static void main(String[] args) {
		String[] tels = {"010-9999-9999", "02-8888-8888", "010-7777-7777"};
		Scanner scanner = new Scanner(System.in);
		while(true) {
			boolean searchOk = false; // 검색한 전화번호를 찾았는지 여부
			System.out.print("검색할 전화번호 뒷자리 : ");
			String searchTel = scanner.next(); // "8888"
			if(searchTel.equalsIgnoreCase("x")) break;
			for(int i=0; i<tels.length ; i++) {
				int postIdx = tels[i].lastIndexOf("-");
				String postTel = tels[i].substring(postIdx+1);
				if(postTel.equals(searchTel)) {
					System.out.println("검색하신 전화번호는 " + tels[i]);
					searchOk = true;
				}		
			}
			if(!searchOk) {
				System.out.println("입력하신 전화번호 뒷자리는 저장되지 않았습니다");
			}
		}
	}
}
