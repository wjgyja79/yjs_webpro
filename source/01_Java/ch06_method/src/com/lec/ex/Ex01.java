package com.lec.ex;
// 1~10까지 정수의 합과 그 결과가 짝수인지 홀수인지 출력
public class Ex01 {
	public static void main(String[] args) {
		int tot = 0;
		for(int x=1; x<=10 ; x++) {
			tot += x;
		}
		System.out.println("1~10까지 정수의 합은 " + tot);
		System.out.println( tot%2==0 ? "짝수입니다" : "홀수입니다");
		//
		tot = 0;
		for(int x=11; x<=100 ; x++) {
			tot += x;
		}
		System.out.println("11~100까지 정수의 합은 " + tot);
		System.out.println( tot%2==0 ? "짝수입니다" : "홀수입니다");
		// 11~100까지 정수의 합과 그 결과가 짝수인지 홀수인지 출력
	}
}
