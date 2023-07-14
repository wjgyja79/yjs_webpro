package com.lec.ex2_throws;

public class ThrowsEx {
	public ThrowsEx() {
		actionC();
	}
	private void actionC() {
		System.out.println("actionC ���ݺ�");
		actionB();
		System.out.println("actionC �Ĺݺ�");
	}
	private void actionB() {
		System.out.println("actionB ���ݺ�");
		try {
			actionA();
		}catch(ArrayIndexOutOfBoundsException e) {
			System.out.println(e.getMessage());
		}
		System.out.println("actionB �Ĺݺ�");
	}
	private void actionA() throws ArrayIndexOutOfBoundsException {
		System.out.println("actionA ���ݺ�");
		int[] arr = {0,1};
		System.out.println(arr[2]);
		System.out.println("actionA �Ĺݺ�");
	}
}
