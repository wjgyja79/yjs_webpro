package com.lec.quiz;

import java.util.ArrayList;
import java.util.Date;
import java.util.Scanner;

import com.lec.ex1_list.Friend;

// N(n)�� �Է��� ������ �� �̸�, ��ȭ, �ּҸ� �Է¹޾� arrayList add
// N(n)�� �Է��ϸ� ������ ������ ��� (arrayList for�� ���)
public class CustomerArrayListMain {
	public static void main(String[] args) {
		ArrayList<Customer> customers = new ArrayList<Customer>();
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
			// customer.add();�̸�, ��ȭ��ȣ, �ּ� �Է¹޾� customer��ü ����� customers.add�ϱ�
			customers.add(new Customer(name, tel, address));
		}
		if(customers.size()==0) {
			System.out.println("������ ȸ���� �����ϴ�");
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
