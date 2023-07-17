package com.lec.quiz;

import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Scanner;

import com.lec.ex1_list.Friend;

// N(n)을 입력할 때까지 고객 이름, 전화, 주소를 입력받아 arrayList add
// N(n)을 입력하면 가입한 고객정보 출력 (arrayList for문 출력)
public class CustomerHashMapMain {
	public static void main(String[] args) {
		HashMap<String, Customer> customers = new HashMap<String, Customer>();
		Scanner scanner = new Scanner(System.in);
		String answer, name, tel, address;
		while(true) {
			System.out.println("회원가입을 진행하겠습니까(Y/N)? ");
			answer = scanner.nextLine();
			if(answer.equalsIgnoreCase("n")) break;
			System.out.println("이름 ? ");
			name = scanner.nextLine();
			System.out.println("전화 ?");
			tel = scanner.nextLine();
			System.out.println("주소 ?");
			address = scanner.nextLine();
			customers.put(tel, new Customer(name, tel, address));
			Iterator<String> iterator = customers.keySet().iterator(); // 출력에 필요한 반복자
			while(iterator.hasNext()) {
				String key = iterator.next();
				System.out.println(key + " : " + customers.get(key));
			}
		}
		if(customers.size()==0) {
			System.out.println("가입한 회원이 없습니다");
		}else {
			
		} // if
	} // main
} // class
