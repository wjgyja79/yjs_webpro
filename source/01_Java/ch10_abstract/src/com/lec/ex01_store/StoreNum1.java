package com.lec.ex01_store;
// ���ð� 1ȣ�� : �δ��-8,000, ���뱹-���Ⱦ� 
public class StoreNum1 extends HeadQuarterStore {
	public StoreNum1(String storeName) {
		super(storeName);
	}
	@Override
	public void kimchi() {
		System.out.println("��ġ�-8,000��");
	}
	@Override
	public void bude() {
		System.out.println("�δ��-8,000");
	}
	@Override
	public void sunde() {
		System.out.println("���뱹-���Ⱦ�");
	}
	@Override
	public void bibim() {
		System.out.println("�����-9000��");
	}
	@Override
	public void gongibab() {
		System.out.println("�����-����");
	}
}
