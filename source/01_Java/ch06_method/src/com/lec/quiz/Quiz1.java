package com.lec.quiz;
// ����ڷκ��� ���ϴ� �ܼ�(2~9) �������� ����ϴ� ���α׷��� �����Ͻÿ�.
// (��, �ܼ��� �Ű������� �޾� �ش� �ܼ��� �������� ����ϴ� �κ��� method�� ó���Ѵ�. 
// ����ڰ� 2~9 ������ ���� �ƴ� ���� �Է��� �� 2~9������ ���� �Է��� ������ ��� �Է� �޴´�.)

import java.util.Scanner;

public class Quiz1 {
	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		int num; 
		do {
			System.out.println("2~9 �� ���� �ϳ��� �����ϼ��� : , 1~9 �� ���� �ϳ��� �����ϼ��� :");
			num = scanner.nextInt();
		}while(num>9 || num<2);
		method(num);
			
		
		
	} //main
	public static String method(int value) {
		String result = num>9 || num<2 ? "�Է¿���!":"";
		return result;
	}// evenOdd
}//class
