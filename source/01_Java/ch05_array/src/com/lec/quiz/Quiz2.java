package com.lec.quiz;
// 배열에 담긴 값을 더하는 프로그램을 작성
// int[] arr =  { 10, 20, 30, 40, 50}  
public class Quiz2 {
	public static void main(String[] args) {
		int[] score = {10, 20, 30, 40, 50};
		int tot = 0;
			
		for(int temp : score) {
			tot += temp;
		}
		System.out.println("배열에 저장된 값들의 합계는 "+tot);
	}
}
