package com.lec.loopQuiz;
// 1~10까지의 곱의 결과를 출력해 보자
public class Quiz1 {
	public static void main(String[] args) {
		int tot = 1; // 누적합을 위한 변수
		for(int i=1 ; i<=10 ; i++) {
			tot *= i; // tot = tot + i;
			System.out.print(i);
			if(i!=10) {
				System.out.print("*");
			}
		}
		System.out.println("=" + tot);
	} // main
}

