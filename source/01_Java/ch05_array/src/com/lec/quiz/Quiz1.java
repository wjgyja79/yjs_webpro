package com.lec.quiz;
// 8개의 값을 1차원 배열로 초기화 하고 이들 값들을 크기 순으로 나타내는 프로그램을 작성 하시요
// (76,45,34,89,100,50,90,92)
public class Quiz1 {
	public static void main(String[] args) {
		int[] score = {76,45,34,89,100,50,90,92};
//		int[] s =new int[score.length];
//		System.arraycopy(score, 0, s, 0, score.length);

		//		for(int i=0 ; i<s.length ; i++) {
//			s[i] = score[i];
//		}
		for(int i=0; i<score.length-1 ; i++) {
			for(int j=i+1 ; j<score.length ; j++) {
				if(score[i] > score[j]) {
					int temp = score[j];
					score[i] = score[j];
					score[j] = temp;
				} //if
			} //for-j
		} //for-i
		for(int a : score) {
			System.out.println(a + "\t");
		}
	} //main
}
