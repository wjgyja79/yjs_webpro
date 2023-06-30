package com.lec.quiz;
import java.util.Scanner;
// 국어, 영어, 수학 점수를 사용자에게 입력받아, 각 점수를 출력하고 총점, 평균(소수점2자리까지) 출력하는 프로그램을 구현 하시오
public class Quiz5 {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.print("국어점수를 입력하세요 : ");
		int su1 = sc.nextInt(); // 키보드로부터 입력받은 정수를 su에 할당
		Scanner sc = new Scanner(System.in);
		System.out.print("영어점수를 입력하세요 : ");
		int su2 = sc.nextInt(); // 키보드로부터 입력받은 정수를 su에 할당
		Scanner sc = new Scanner(System.in);
		System.out.print("수학점수를 입력하세요 : ");
		int su3 = sc.nextInt(); // 키보드로부터 입력받은 정수를 su에 할당
		int sum = su1 + su2 + su3;
		double avg = sum/3.;
		System.out.printf("국어 = %d, 영어 = %d, 수학 = %d\n", su1, su2, su3);
		System.out.printf("총점 = %d, 평균 = %.2f\n", sum, avg);
		sc.close();
	}
}
