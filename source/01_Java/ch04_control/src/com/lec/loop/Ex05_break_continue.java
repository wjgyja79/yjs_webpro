package com.lec.loop;
// break : �ݺ��� ���� ���� ����
public class Ex05_break_continue {
	public static void main(String[] args) {
		for(int i=1 ; i<=10 ; i++) {
			if(i==3) 
				//break; // �ݺ��� ��������
				continue; // ������->���ǽ����� ��
			System.out.println(i);
		}
	} //main
}
