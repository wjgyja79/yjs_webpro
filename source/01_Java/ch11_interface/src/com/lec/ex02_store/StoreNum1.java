package com.lec.ex02_store;
//���ð� 1ȣ�� : ����1ȣ��: ��ġ�-8,000  �δ��-8,000  �����-9,000 ���뱹-���Ⱦ� �����-1,000��
//StoreNum1 store1 = new StoreNum1("���ð� 1ȣ��");
public class StoreNum1 implements HeadQuarterStore {
	private String storeName;
	public StoreNum1(String storeName) {
		this.storeName = storeName;
	}
	@Override
	public void kimchi() {System.out.println("��ġ� - 8,000��");}
	@Override
	public void bude() {System.out.println("�δ��-8,000");}
	@Override
	public void sunde() {System.out.println("���뱹-���Ⱦ�");}
	@Override
	public void bibim() {System.out.println("�����-9,000��");	}
	@Override
	public void gongibab() {System.out.println("�����-1,000��");}
	@Override
	public String getStoreName() {
		return storeName;
	}
}
