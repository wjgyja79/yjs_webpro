package com.lec.quiz;

import java.util.ArrayList;
import java.util.Date;
import java.util.Scanner;

import com.lec.ex1_list.Friend;

// N(n)을 입력할 때까지 고객 이름, 전화, 주소를 입력받아 arrayList add
// N(n)을 입력하면 가입한 고객정보 출력 (arrayList for문 출력)
public class CustomerArrayListMain {
	public static void main(String[] args) {
		ArrayList<Customer> customers = new ArrayList<Customer>();
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
			// customer.add();이름, 전화번호, 주소 입력받아 customer객체 만들어 customers.add하기
			customers.add(new Customer(name, tel, address));
		}
		if(customers.size()==0) {
			System.out.println("가입한 회원이 없습니다");
		}else {
			for(Customer customer : customers) {
				System.out.println(customer);
			}
			for(int idx=0 ; idx<customers.size(); idx++) {
				System.out.println(idx + " : " + customers.get(idx));
			}
			
		} // if
	} // main
} // class
