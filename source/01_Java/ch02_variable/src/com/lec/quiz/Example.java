package com.lec.quiz;
public class Example {
	public static void main(String[] args) {
		//타입 변수명(알파벳, 숫자, _; 영문시작) 할당연산(=) 초기값 ;
		int kr = 100, en = 90, ma = 80;
		System.out.printf("kr=%d \t en=%d\n",  kr, en); //\t:tab  \n:newLine
		int total = kr + en +ma;
		double avg = total / 3;
		System.out.printf("total=%d\n ", total);
		System.out.printf("avg=%f", avg);
		
		
					
	}
}
