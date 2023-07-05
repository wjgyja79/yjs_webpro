package com.lec.ex08_customer;

import cons.Constant;

// name, tel / infoString() 
public class Customer extends Person{
	private String address;
	private int		sum; // ���űݾ� ����
	private int		point; // ����Ʈ(���Ž� ���ž��� 0.5%)
	private String	date; // �����(String�� �����ֺ��ʹ� Date��)
	private boolean vip; // �Ϲݰ�(false) VIP��(true)
	// Customer c = new Customer("ȫ�浿", "9999-9999", "����", "07-05")
	public Customer(String name, String tel, String address, String date) {
		super(name, tel);
		this.address = address;
		this.date = date;
		point = 1000;
		System.out.println(name + "�� ���� �����մϴ�. ����Ʈ 1,000�� �־� ��Ƚ��ϴ�");
	}
	public void buy(int price) { // c.buy(10000);
		// ���űݾ� ����
		sum += price;
		int thisPoint = (int)(price * Constant.RATE); // �̹� ���ŷ� ���� ����Ʈ
		point += thisPoint;
		// ����Ʈ Constant.RATE��ŭ ����
		// ���繮�� ���
		System.out.println(getName() + "�� ���� ����. �ݹ� ���� ����Ʈ�� " + thisPoint);
		System.out.println("�� ���� ����Ʈ�� " + point);
		System.out.println("���űݾ� :" + price);
		// vip���� �ƴ� ���Constant.NIPLIMIT�̻� ���Ŵ����ݾ��� ��� vip=true
		if(vip==false && sum>= Constant.VIPLIMIT) {
			vip = true;
			System.out.println("VIP������ ���׷��̵� �Ǽ̽��ϴ�. ���� �˰ڽ��ϴ�");
		} // if
	} // buy
	@Override
	public String infoString() {
		// TODO Auto-generated method stub
		return super.infoString() + "[�ּ�]" + address +"[����Ʈ]" + point + "[���Ŵ���]" + sum + "[�����]" + (vip==true?"VIP":"�Ϲ�");
	}
}
