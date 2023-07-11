package com.lec.test;

// for 루프를 이용하여 1부터 45사이의 난수의 합을 계산하는 프로그램 작성
import java.util.Scanner;

public class ProgrammingLan {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.println("난수의  갯수를 입력하세요 ");
		int cnt = sc.nextInt();
		int tot = 0;
		for (int i = 0; i < cnt; i++) {
			tot += (int) (Math.random() * 45) + 1;
		}
		System.out.println("1~45 사이의 난수 10개의 합계" + tot);
	}
}
