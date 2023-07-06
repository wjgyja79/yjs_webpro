package com.lec.ex11_account;
// accountNo, ownerName, balance, deposit() withdraw(), infoPrint(), infoString()
//CkeckingAccount ca1 = new CkeckingAccount("111","ȫ",[1000,] "1234123412341324");
public class CheckingAccount extends Account {
	private String cardNo;
	public CheckingAccount(String accountNo, String ownerName, String cardNo) {
		super(accountNo, ownerName);
		this.cardNo = cardNo;
	}
	public CheckingAccount(String accountNo, String ownerName, int balance, String cardNo) {
		super(accountNo, ownerName, balance);
		this.cardNo = cardNo;
	}
	// ca1.pay("1324132413241234", 10000)
	public void pay(String cardNo, int amount) {
		if(cardNo.equals(this.cardNo)) { // �ùٸ� ī���ȣ�� ��� 
			if(getBalance() >= amount) { // ���Ұ���
				//balance = balance - amount;
				setBalance( getBalance() - amount); // �ܾ��� amount��ŭ ����
				System.out.printf("%s�� %d�� �����Ͽ� %s ���¿� �ܾ� %d�Դϴ�\n", 
					getOwnerName(), amount, getAccountNo(), getBalance());
			}else { // �ܾ׺������� ���� �Ұ�
				System.out.println(getOwnerName()+"�� �ܾ׺������� ���� �Ұ��մϴ�");
			}
		}else {
			System.out.println("��ȿ�� ī���ȣ�� �ƴմϴ�");
		}
	}
	public String getCardNo() {
		return cardNo;
	}
	public void setCardNo(String cardNo) {
		this.cardNo = cardNo;
	}
}
