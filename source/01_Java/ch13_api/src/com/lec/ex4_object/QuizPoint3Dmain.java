package com.lec.ex4_object;

public class QuizPoint3Dmain {
	public static void main(String[] args) {
		Point3D p1 = new Point3D();
		Point3D p2 = new Point3D(5.5, 4.4, 3.3);
		Point3D p3 = new Point3D(5.5, 4.4, 3.3);
		Point3D p4 = null;
		System.out.println("p1 : "+p1);
		System.out.println("p2 : "+p2);
		System.out.println("p1��p2�� ���� ��ǥ������ ���� : " + p1.equals(p2));
		System.out.println("p3��p2�� ���� ��ǥ������ ���� : " + p3.equals(p2));
		System.out.println("p2��p4�� ���� ��ǥ������ ���� : " + p2.equals(p4));
	}
}

