package com.lec.method;
// 사용자로부터 원하는 단수(2~9) 구구단을 출력하는 프로그램을 구현하시오.
// (단, 단수를 매개변수로 받아 해당 단수의 구구단을 출력하는 부분을 method로 처리한다. 
// 사용자가 2~9 사이의 수가 아닌 수를 입력할 시 2~9사이의 수를 입력할 때까지 계속 입력 받는다.)
import java.util.Scanner;

public class Quiz {
	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		int num1, num2; 
		do {
			System.out.println("2~9 중 숫자 하나를 선택하세요 : , 1~9 중 숫자 하나를 선택하세요 :");
			num1 = scanner.nextInt();
			num2 = scanner.nextInt();
			System.out.println(num1 * num2);

		
		
		}while(true); //do
	} //main
} //class