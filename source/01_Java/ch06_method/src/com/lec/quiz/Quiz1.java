package com.lec.quiz;
// 사용자로부터 원하는 단수(2~9) 구구단을 출력하는 프로그램을 구현하시오.
// (단, 단수를 매개변수로 받아 해당 단수의 구구단을 출력하는 부분을 method로 처리한다. 
// 사용자가 2~9 사이의 수가 아닌 수를 입력할 시 2~9사이의 수를 입력할 때까지 계속 입력 받는다.)

import java.util.Scanner;

public class Quiz1 {
	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		int num; 
		do {
			System.out.println("2~9 중 숫자 하나를 선택하세요 : , 1~9 중 숫자 하나를 선택하세요 :");
			num = scanner.nextInt();
		}while(num>9 || num<2);
		method(num);
			
		
		
	} //main
	public static String method(int value) {
		String result = num>9 || num<2 ? "입력오류!":"";
		return result;
	}// evenOdd
}//class
