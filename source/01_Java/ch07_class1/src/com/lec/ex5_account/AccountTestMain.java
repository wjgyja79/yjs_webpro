package com.lec.ex5_account;

public class AccountTestMain {
	public static void main(String[] args) {
		Account hong = new Account("011-1234", "ȫ�浿", 10000);
		System.out.println("\"");
		hong.infoprint();
		System.out.println(hong.infoString());
		Account hong1 = new Account("012-9875", "ȫ����");
		hong1.infoprint();
		hong.withdraw(5000);
		hong1.withdraw(10); // �ܾ��� �����ϸ� ���� �Ұ�
		hong1.deposite(100000);
	}
}
