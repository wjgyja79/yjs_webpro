package com.lec.quiz;

public class StudentTestMain {
	public static void main(String[] args) {
		Student s1 = new Student(Student.count, "���켺", 90, 80, 95);
		Student s2 = new Student(Student.count, "���ϴ�", 100, 80, 95);
		Student s3 = new Student(Student.count, "Ȳ����", 95, 80, 90);
		Student s4 = new Student(Student.count, "������", 95, 90, 99);
		Student s5 = new Student(Student.count, "������", 90, 90, 90);
		Student[] students = {s1, s2, s3, s4, s5};
		String[] title = {"��ȣ", "�̸�", "����", "����", "����", "����", "���"};
		int[] total = new int[5];
		line();
		System.out.println("\t\t\t�� �� ǥ");
		line('-');
		for(String t : title) {
			System.out.print(t + "\t");
		}
		System.out.println();
		line('-');
		for(int idx=0 ; idx<students.length ; idx++) {
			System.out.println(students[idx].infoString());
			total[0] += students[idx].getKor();
			total[1] += students[idx].getEng(); 
			total[2] += students[idx].getMat(); 
			total[3] += students[idx].getTot(); 
			total[4] += students[idx].getAvg(); 
		}
		line('-');
		System.out.print("\t����" );
		for(int tot : total) {
			System.out.printf("\t%d", tot);			
		}
		System.out.print("\n\t���");
		for(int tot : total) {
			System.out.printf("\t%.1f", (double)tot/students.length);
		}
		System.out.println(); //����
		line();
	}
	private static void line(char c) { // c�� �������� �Ѹ���
		for(int i=0 ; i<52 ; i++) {
			System.out.print(c);
		}
		System.out.println();
		
	}
	private static void line() { //���ϰ� �� ���� �Ѹ���
		for(int i=0 ; i<52 ; i++) {
			System.out.print('��');
		}
		System.out.println();
		
	}
}
