package com.lec.ex;
// �ڹٴ� 1���� �迭�� ��
public class Ex06_multiDemesion {
	public static void main(String[] args) {
		int[] arr = {1,2,3}; // 1���� �迭
		System.out.println(arr[2]);
		int[][] test = {{1,2,3},
						{4,5,6}};
		System.out.println(test[0][1]);
		// ������ ���
		for(int i=0 ; i<2 ; i++) { // 0~1��
			for(int j=0 ; j<test[i].length ; j++) { // 0~2��
				System.out.printf("te"
						+ "st[%d][%d] = %d\n", i, j, test[i][j]);
			}//for-j
		}//for-i
	}//main
}
