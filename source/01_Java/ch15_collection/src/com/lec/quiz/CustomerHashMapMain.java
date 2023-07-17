package com.lec.quiz;

import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Scanner;

import com.lec.ex1_list.Friend;

// N(n)�� �Է��� ������ �� �̸�, ��ȭ, �ּҸ� �Է¹޾� arrayList add
// N(n)�� �Է��ϸ� ������ ������ ��� (arrayList for�� ���)
public class CustomerHashMapMain {
	public static void main(String[] args) {
		HashMap<String, Customer> customers = new HashMap<String, Customer>();
		Scanner scanner = new Scanner(System.in);
		String answer, name, tel, address;
		while(true) {
			System.out.println("ȸ�������� �����ϰڽ��ϱ�(Y/N)? ");
			answer = scanner.nextLine();
			if(answer.equalsIgnoreCase("n")) break;
			System.out.println("�̸� ? ");
			name = scanner.nextLine();
			System.out.println("��ȭ ?");
			tel = scanner.nextLine();
			System.out.println("�ּ� ?");
			address = scanner.nextLine();
			customers.put(tel, new Customer(name, tel, address));
			Iterator<String> iterator = customers.keySet().iterator(); // ��¿� �ʿ��� �ݺ���
			while(iterator.hasNext()) {
				String key = iterator.next();
				System.out.println(key + " : " + customers.get(key));
			}
		}
		if(customers.size()==0) {
			System.out.println("������ ȸ���� �����ϴ�");
		}else {
			
		} // if
	} // main
} // class
