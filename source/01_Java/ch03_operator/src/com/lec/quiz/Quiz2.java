package com.lec.quiz;
import java.util.Scanner;
// 입력한 수가 짝수인지 홀수인지 출력
public class Quiz2 {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.print("정수를 입력하세요 : ");
		int su = sc.nextInt(); // 키보드로부터 입력받은 정수를 su에 할당
		String result = (su%2==0) ? "짝입니다" : "홀수입니다";
		System.out.println("입력하신 수(" + su+")는 " + result);
		sc.close();
	}
}
