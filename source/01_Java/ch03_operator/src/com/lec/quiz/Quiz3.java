package com.lec.quiz;
import java.util.Scanner;
// 두수를 입력받아 
두 수가 같은지 결과를 O나 X로 출력.
첫번째 수가 더 큰지 결과를 O나 X로 출력
public class Quiz3 {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.print("첫번째 수를 입력하세요 : ");
		int su1 = sc.nextInt(); // 키보드로부터 입력받은 정수를 su에 할당
		Scanner sc = new Scanner(System.in);
		System.out.print("두번째 수를 입력하세요 : ");
		int su2 = sc.nextInt(); // 키보드로부터 입력받은 정수를 su에 할당
		String result = su1 == su2 ? "O" : "X";
		System.out.println("두두수가 같은지 여부 :  " +result);
		String result = su1>su2 ? "O" : "X";
		System.out.println("첫번째 수가 큰지 여부 :  " +result);
		sc.close();
	}
}
