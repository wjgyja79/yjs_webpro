package com.lec.loop;
/* * * * *
 * * * *
 * * *
 * * 
 */
public class Ex03_for_star {
	public static void main(String[] args) {
		for(int i=5 ; i>=1 ; i--) { // 5�� �ݺ�
			for(int j=1 ; j<=i ; j++) { // i�� �ݺ�
				System.out.print("* ");
			} //for -j
			System.out.println();//���ุ
		} //for -i
	} //main
} 
