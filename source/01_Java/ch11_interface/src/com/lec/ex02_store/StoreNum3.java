package com.lec.ex02_store;
//���ǰ� ����3ȣ�� ��ġ�-9,000  �δ��-10,000  �����-10,000 ��ū���뱹-9,000
public class StoreNum3 implements HeadQuarterStore {
	private String storeName;
	public StoreNum3(String storeName) {
		this.storeName = storeName;
	}
	@Override
	public void kimchi() {
		System.out.println("��ġ�-9,000��");
	}
	@Override
	public void bude() {
		System.out.println("�δ��-10,000��");
	}
	@Override
	public void bibim() {
		System.out.println("�����-10,000��");
	}
	@Override
	public void sunde() {
		System.out.println("��ū���뱹-9,000");
	}
	@Override
	public void gongibab() {
		System.out.println("����� - 1,000��");
	}
	@Override
	public String getStoreName() {
		return storeName;
	}
}