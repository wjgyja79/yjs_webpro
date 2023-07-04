package com.lec.test;

import java.util.Scanner;

// 8개의 값을 1차원 배열로 초기화 하고 값에 합계와  평균 그리고 최대값과 최소값을 구하는 프로그램을 작성 하시요
// {76,45,34,89,100,50,90,93}
public class ProgramingLan {
	public static void main(String[] args) {
		String[] su = {"76,45,34,89,100,50,90,93"};
		int[]	number = new int[su.length];
		int totalNumber1 = 0; 

		for(int idx=0 ; idx<su.length ; idx++) {
			totalNumber1 += number[idx]; // 누적
		}
		for(int idx=0 ; idx<su.length ; idx++) {
			System.out.println(su[idx] + ":" + number[idx]);
		}
		System.out.printf("평균 값 : %.2f\n", (double)totalNumber1/su.length);
		int maxIdx=0, max = 0; 
		int minIdx=0, min = 999; 
		for(int idx=0 ; idx<su.length ; idx++) {
			if(number[idx]<min) {
				min = number[idx];
				minIdx = idx;
			}//if-최소값
			if(number[idx] > max) {
				max = number[idx];
				maxIdx = idx;
			}
		}//for
		System.out.println("최대값 : " + su[maxIdx] + " - " + number[maxIdx]);
		System.out.println("최소값 : " + su[minIdx] + " - " + number[minIdx]);
	}//main
}