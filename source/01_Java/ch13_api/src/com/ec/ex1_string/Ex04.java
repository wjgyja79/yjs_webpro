package com.ec.ex1_string;
// �ֹι�ȣ�� �Է¹޾� �������� �������� ���
import java.util.Scanner;

public class Ex04 {
	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		System.out.print("�ֹι�ȣ ?");
		String juminNo = scanner.next(); //"920225-2012121" 
		// ���1 char�� ����
		char genderChar = juminNo.charAt(7); // '2'
		if(genderChar=='1' || genderChar=='3') {
			System.out.println("�����̽ñ���");
		}else if(genderChar=='2' || genderChar=='4') {
			System.out.println("�����̽ñ���");
		}else {
			System.out.println("��ȿ���� ���� �ֹι�ȣ�Դϴ�");
		}
		// ���2 String���� ����
		String genderStr = juminNo.substring(7,8); // "2"
		if(genderStr.equals("1") || genderStr.equals("3")) {
			System.out.println("�����̽ñ���");
		}else if(genderStr.equals("2") || genderStr.equals("4")) {
			System.out.println("�����̽ñ���");
		}else {
			System.out.println("��ȿ���� ���� �ֹι�ȣ�Դϴ�");
		}
		// ���3 "1"-> 1
		int genderInt = Integer.parseInt(genderStr); // 1,2,3,4
		if(genderInt==1 || genderInt==3) {
			System.out.println("�����̽ñ���");
		}else if(genderInt==2 || genderInt==4) {
			System.out.println("�����̽ñ���");
		}else {
			System.out.println("��ȿ���� ���� �ֹι�ȣ�Դϴ�.");
		}
		scanner.close();
	}
}
