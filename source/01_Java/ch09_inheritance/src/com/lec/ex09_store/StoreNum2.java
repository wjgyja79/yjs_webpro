package com.lec.ex09_store;
// ���а� ���� 2ȣ�� : �δ��-8,000  �����-8,000  �����-����
// StoreNum2 store2 = new StoreNum2("���а� ����2ȣ��")
public class StoreNum2 extends HeadQuarterStore {
	public StoreNum2(String storeName) {
		super(storeName);
	}
	@Override
	public void bude() {
		System.out.println("�δ��-8,000��");
	}
	@Override
	public void bibim() {
		System.out.println("�����-8,000��");
	}
	@Override
	public void gongibab() {
		System.out.println("�����-����");
	}
}
