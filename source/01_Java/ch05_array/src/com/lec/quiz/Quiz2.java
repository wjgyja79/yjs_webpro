package com.lec.quiz;
// �迭�� ��� ���� ���ϴ� ���α׷��� �ۼ�
// int[] arr =  { 10, 20, 30, 40, 50}  
public class Quiz2 {
	public static void main(String[] args) {
		int[] score = {10, 20, 30, 40, 50};
		int tot = 0;
			
		for(int temp : score) {
			tot += temp;
		}
		System.out.println("�迭�� ����� ������ �հ�� "+tot);
	}
}
