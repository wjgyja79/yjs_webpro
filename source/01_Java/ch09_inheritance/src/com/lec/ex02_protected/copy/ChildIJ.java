package com.lec.ex02_protected.copy;
// ChildIJ child = new ChildIJ()
public class ChildIJ extends SuperIJ {
	private int total;
	public ChildIJ() {
		System.out.println("�Ű����� ���� ChildIJ ������ �Լ�");
	}
	public ChildIJ(int i, int j) {
		super(i, j);
		System.out.println("�Ű����� �ִ� ChildIJ ������ �Լ� i, j�ʱ�ȭ");
	}
	public void sum() {
		total = i + getJ();
		System.out.println("i="+i + ", j=" +getJ() + ", total="+total);
	}
}