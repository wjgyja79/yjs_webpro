package com.lec.method;
// ����ڷκ��� ���ϴ� �ܼ�(2~9) �������� ����ϴ� ���α׷��� �����Ͻÿ�.
// (��, �ܼ��� �Ű������� �޾� �ش� �ܼ��� �������� ����ϴ� �κ��� method�� ó���Ѵ�. 
// ����ڰ� 2~9 ������ ���� �ƴ� ���� �Է��� �� 2~9������ ���� �Է��� ������ ��� �Է� �޴´�.)
import java.util.Scanner;

public class Quiz {
	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		int num1, num2; 
		do {
			System.out.println("2~9 �� ���� �ϳ��� �����ϼ��� : , 1~9 �� ���� �ϳ��� �����ϼ��� :");
			num1 = scanner.nextInt();
			num2 = scanner.nextInt();
			System.out.println(num1 * num2);

		
		
		}while(true); //do
	} //main
} //class