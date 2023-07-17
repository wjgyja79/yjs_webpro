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
		friends.add(new Friend("홍길동", "서울 서대문구"));
		friends.add(new Friend("김길동", "안양 만안구"));
		friends.add(new Friend("마길동", "인천 중구"));
		friends.add(new Friend("박길홍", "안산 단원구"));
		friends.add(new Friend("윤길동", "함북 청진시"));
		for(Friend friend : friends) {
			System.out.println(friend);
		}
		for(int idx=0 ; idx<friends.size(); idx++) {
			System.out.println(idx + " : " + friends.get(idx).getName());
		}
		Scanner scanner = new Scanner(System.in);
		while(true) {
			boolean searchOk = false; 
			System.out.print("검색할 주소 앞 글자 2자리 (단, 종료를 원하시면 x를 입력하시오) : ");
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
				System.out.println("해당 주소의 친구는 없습니다");
			}
		}
	}
}

