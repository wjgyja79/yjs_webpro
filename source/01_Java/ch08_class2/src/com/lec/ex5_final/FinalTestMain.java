package com.lec.ex5_final;

import com.lec.constant.Constant;

public class FinalTestMain {
	public static void main(String[] args) {
		//final double pi = 3.1415926535; // final ����(���) : ����Ұ�
		int r = 3;
		double area = Constant.PI * r *r;
		double round = 2 * Constant.PI * r;
		System.out.printf("�������� %d�� ���� ���̴� %.3f\n" , r , area);
		System.out.printf("�������� %d�� ���� ���̴� %.3f\n" , r , round);
	}
}
