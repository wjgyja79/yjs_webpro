package com.lec.ex4_newException;
/*은행계좌(Account) 클래스 설계 new Account("110-98", "홍길동") Account("110-99:, "이름",100)
데이터(속성) : 계좌번호, 예금주, 잔액
기능(메소드) : 예금하다. 인출하다. 계좌정보 출력. 계좌정보를 문자열로 return*/

public class Account {
	private String accountNo; // 계좌번호
	private String ownerName; // 예금주
	private int balance; // 잔액
	public Account(String accountNo, String ownerName) {
		this.accountNo = accountNo;
		this.ownerName = ownerName;
		// balance = 0;
		System.out.println(ownerName + "님 계좌개설 감사합니다. 잔액 : 0");
	}
	public Account(String accountNo, String ownerName, int balance) {
		this.accountNo = accountNo;
		this.ownerName = ownerName;
		this.balance = balance;
		System.out.println(ownerName + "님 계좌개설 진심으로 감사합니다. 잔액 : " + balance);
	}
	public void deposite(int money) { // 무조건 예금
		balance += money; // balance = balance+money;
		System.out.println(accountNo + ":" + money + "원 예금하여 잔액 : " + balance);
	}
	public void withdraw(int money) throws Exception{ // 잔액이 있을 경우만 인출. 잔액부족시 오류 출력
		if(balance>=money) {
			balance -= money;
			System.out.println(accountNo + ":" + money + "원 인출하여 잔액 : " + balance);
		}else {
			throw new Exception(ownerName + "님의 잔액이 부족하여 인출되지 않았습니다");
		}
	}
	@Override
	public String toString() {// { // ["101-1234" 홍길동님 잔액 : 10000원]을 return
		return ("\""+accountNo + "\" " + ownerName + "님 잔액 : " + balance + "원");
	}
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
	// getter(accountNo, ownerName, balance) & setter(ownerName)
}
