package com.lec.quiz;
// 8���� ���� 1���� �迭�� �ʱ�ȭ �ϰ� �̵� ������ ũ�� ������ ��Ÿ���� ���α׷��� �ۼ� �Ͻÿ�
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
