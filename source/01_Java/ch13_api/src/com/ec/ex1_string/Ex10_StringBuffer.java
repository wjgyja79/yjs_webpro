package com.ec.ex1_string;
//String�� ������ �����ϰ��� StringBuffer > StringBuilder 
public class Ex10_StringBuffer {
	public Ex10_StringBuffer(String str) {}
	public static void main(String[] args) {
		String str = "abc";
		StringBuffer strBuffer = new StringBuffer("abc");
		System.out.println("strBuffer�� �ؽ��ڵ� : " + strBuffer.hashCode());
		strBuffer.append("def"); // "abcdef"
		System.out.println("append �� :" + strBuffer);
		System.out.println("append �� �ؽ��ڵ� : " + strBuffer.hashCode());
		strBuffer.delete(3,5); // "abcf" 3��°���� 5��° �ձ��� ����
		System.out.println("append �� :" + strBuffer);
		System.out.println("append �� �ؽ��ڵ� : " + strBuffer.hashCode());
	}
}
