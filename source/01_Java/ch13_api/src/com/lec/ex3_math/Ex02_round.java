package com.lec.ex3_math;
// Math.ceil(올릴 실수) => double값 return   [ex] Math.ceil(8.15) => 9.0
// Math.round(반올림할 실수) => long값 return [ex] Math.ceil(8.15) => 9.0
// Math.floor(내릴 실수) => double값 return	 [ex] Math.ceil(8.99) => 8.0
public class Ex02_round {
	public static void main(String[] args) {
		System.out.println("소수점에서 반올림, 올림, 버림");
		System.out.println("8.15를 올림 : " + (int)Math.ceil(8.15));
		System.out.println("8.15를 반올림 : " + Math.round(8.15));
		System.out.println("8.15를 내림 : " + Math.floor(8.15));
		System.out.println("소수점 한자리에서 반올림, 올림, 버림");
		System.out.println("8.15를 올림 : " + Math.ceil(8.15*10) / 10);
		System.out.println("8.15를 반올림 : " + Math.round(8.15*10) / 10.0);
		System.out.println("8.15를 내림 : " + Math.floor(8.15 * 10)/10);
		System.out.println("일의 자리에서 반올림, 올림, 버림(85 => 90)");
		System.out.println("85를 올림 : " + (int)Math.ceil(85 / 10.0) * 10);
		System.out.println("85를 반올림 : " + Math.round(85 / 10.0) * 10);
		System.out.println("85를 내림 : " + (int)Math.floor(85 / 10.0) * 10);
	}
}
