package com.lec.ex;
// 1~10���� ������ �հ� �� ����� ¦������ Ȧ������ ���
public class Ex01 {
	public static void main(String[] args) {
		int tot = 0;
		for(int x=1; x<=10 ; x++) {
			tot += x;
		}
		System.out.println("1~10���� ������ ���� " + tot);
		System.out.println( tot%2==0 ? "¦���Դϴ�" : "Ȧ���Դϴ�");
		//
		tot = 0;
		for(int x=11; x<=100 ; x++) {
			tot += x;
		}
		System.out.println("11~100���� ������ ���� " + tot);
		System.out.println( tot%2==0 ? "¦���Դϴ�" : "Ȧ���Դϴ�");
		// 11~100���� ������ �հ� �� ����� ¦������ Ȧ������ ���
	}
}
