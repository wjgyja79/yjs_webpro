package com.lec.ex6_person;

public class PersonTestMain {
	public static void main(String[] args) {
		int i = 10;
		int[] arr = new int[3];
		arr[0]=10; arr[1]=20; arr[2]=30;
		PersonInfo p1 = new PersonInfo("ȫ�浿", 20, 'm');
//		PersonInfo[] person = {new PersonInfo("ȫ���", 22, 'f'),
//								p1,
//								new PersonInfo("�ű浿", 33, 'm')};
		PersonInfo[] person = new PersonInfo[3];
		person[0] = new PersonInfo("ȫ���", 22, 'f');
		person[1] = p1;
		person[2] = new PersonInfo("�ű��", 33, 'm');
		for(int idx=0 ; idx<person.length ; idx++) {
			// person[idx].print();
			System.out.println(person[idx].infoPrint());
		}
		for(PersonInfo p : person) {
			//p.print();
			System.out.println(p.infoPrint());
			System.out.println("~~~~~~~~~");
		}
	}
}
