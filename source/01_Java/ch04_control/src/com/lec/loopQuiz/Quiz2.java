package com.lec.loopQuiz;
// 1~10까지 숫자 중 홀수의 합을 구해보자
public class Quiz2 {
	public static void main(String[] args) {
		int tot = 0; // 누적합을 위한 변수
		for(int i=1 ; i<=10 ; i++) {
			if(i%2 == 1) {
				tot += i; // tot = tot + i;
			}
		}
		System.out.println("홀수누적합은 " + tot);
	} // main
}
