package com.lec.ex11_account;
/*  �������(Account) Ŭ���� ���� new Account("110-98", "ȫ�浿")  Account("110-99","�̸�",100)
������(�Ӽ�) : ���¹�ȣ, ������, �ܾ�
���(�޼ҵ�) : �����ϴ�. �����ϴ�. �������� ���. ���������� ���ڿ��� return */
public class Account {
	private String accountNo; // ���¹�ȣ
	private String ownerName; // ������
	private int balance; // �ܾ�
	public Account(String accountNo, String ownerName) {
		this.accountNo = accountNo;
		this.ownerName = ownerName;
		// balance = 0;
		System.out.println(ownerName + "�� ���°��� �����մϴ�. �ܾ� : 0");
	}
	public Account(String accountNo, String ownerName, int balance) {
		this.accountNo = accountNo;
		this.ownerName = ownerName;
		this.balance = balance;
		System.out.println(ownerName + "�� ���°��� �������� �����մϴ�. �ܾ� : " + balance);
	}
	public void deposite(int money) { // ������ ����
		balance += money; // balance = balance+money;
		System.out.println(accountNo + ":" + money +"�� �����Ͽ� �ܾ� : " + balance);
	}
	public void withdraw(int money) { // �ܾ��� ���� ��츸 ����. �ܾ׺����� ���� ���
		if(balance>=money) {
			balance -= money;
			System.out.println(accountNo + ":" + money +"�� �����Ͽ� �ܾ� : " + balance);
		}else {
			System.out.println("�ܾ��� �����Ͽ� ���� �Ұ��մϴ�");
			// ch14�忡���� ���� ���� �߻�
		}
	}
	public void infoPrint() { // ["101-1234" ȫ�浿�� �ܾ� : 1000��]�� ���
		//System.out.println("\""+accountNo + "\" " + ownerName + "�� �ܾ� : " + balance +"��");
		System.out.printf("\"%s \" %s�� �ܾ� : %d��\n", accountNo, ownerName, balance);
	}
	public String infoString() {// ["101-1234" ȫ�浿�� �ܾ� : 1000��]�� return
		//return "\""+accountNo + "\" " + ownerName + "�� �ܾ� : " + balance +"��";
		return String.format("\"%s \" %s�� �ܾ� : %d��", accountNo, ownerName, balance);
	}
	// getter(accountNo, ownerName, balance) & setter(ownerName)
	public String getOwnerName() {
		return ownerName;
	}
	public void setOwnerName(String ownerName) {
		this.ownerName = ownerName;
	}
	public String getAccountNo() {
		return accountNo;
	}
	public int getBalance() {
		return balance;
	}
	// setBalance�߰�
	public void setBalance(int balance) {
		this.balance = balance;
	}	
}
