package com.lec.ex2_rect;
// �ĺ���(Ŭ������, ��Ű����, ������) : ���ĺ�, ����, _�� ���. ���ĺ����� ����
// Ŭ���� : �Ӽ�(������, �ν��Ͻ�����), �޼ҵ�, setter&getter
public class Rect {
	private int width;
	private int height;
	// ������ �Լ�
	public Rect() {} // ����Ʈ ������ �Լ�(������ �Լ��� ������ �ڵ�����)
	public Rect(int width, int height) {
		this.width = width;
		this.height = height;
	}
	public Rect(int side) {
		width = height = side;
	}
	public int area() { // ���̸� return
		return width * height;
	}
	// setter(setWidth(), setHeight()) &getter(getWidth(), getHeight())
	public void setWidth(int width) {
		this.width = width;
	}
	public int getWidth() {
		return width;
	}
	public void setHeight() {
		this.height = height;
	}
	public int getHeight() {
		return height;
	}
}
