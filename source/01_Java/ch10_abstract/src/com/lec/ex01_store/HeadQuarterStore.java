package com.lec.ex01_store;
// �߻�Ŭ���� : �߻�޼ҵ� 1�� �̻� ���� ��
// �߻�޼ҵ� : �޼ҵ� ���� �����ϰ� ������ ����. ���� ��ӹ��� Ŭ������ ��(��ӹ��� Ŭ�������� �������̵� ����)
public abstract class HeadQuarterStore {
	private String storeName;
	public HeadQuarterStore(String storeName) {
		this.storeName = storeName;
	}
	public abstract void kimchi();
	public abstract void bude();
	public abstract void bibim();
	public abstract void sunde();
	public abstract void gongibab();
	public String getStoreName() {
		return storeName;
	}
}