package com.lec.test;

import java.util.Scanner;

// 8���� ���� 1���� �迭�� �ʱ�ȭ �ϰ� ���� �հ��  ��� �׸��� �ִ밪�� �ּҰ��� ���ϴ� ���α׷��� �ۼ� �Ͻÿ�
// {76,45,34,89,100,50,90,93}
public class ProgramingLan {
	public static void main(String[] args) {
		String[] su = {"76,45,34,89,100,50,90,93"};
		int[]	number = new int[su.length];
		int totalNumber1 = 0; 

		for(int idx=0 ; idx<su.length ; idx++) {
			totalNumber1 += number[idx]; // ����
		}
		for(int idx=0 ; idx<su.length ; idx++) {
			System.out.println(su[idx] + ":" + number[idx]);
		}
		System.out.printf("��� �� : %.2f\n", (double)totalNumber1/su.length);
		int maxIdx=0, max = 0; 
		int minIdx=0, min = 999; 
		for(int idx=0 ; idx<su.length ; idx++) {
			if(number[idx]<min) {
				min = number[idx];
				minIdx = idx;
			}//if-�ּҰ�
			if(number[idx] > max) {
				max = number[idx];
				maxIdx = idx;
			}
		}//for
		System.out.println("�ִ밪 : " + su[maxIdx] + " - " + number[maxIdx]);
		System.out.println("�ּҰ� : " + su[minIdx] + " - " + number[minIdx]);
	}//main
}