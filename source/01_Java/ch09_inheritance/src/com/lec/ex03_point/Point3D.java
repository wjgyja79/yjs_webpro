package com.lec.ex03_point;
// x, y / infoPrint(��ǥ x,y)
// Point3D p = new Point3D(1,2,3); p.infoPrint()
public class Point3D extends Point {
	private int z;
	public Point3D(int x, int y, int z) {
		System.out.println("�Ű����� �ִ� Point3D������ - x,y,z�ʱ�ȭ");
		setX(x); // this.x = x; protected�� ����
		setY(y); 
		this.z = z;
	}
	@Override
	public void infoPrint() {
		System.out.println("��ǥ(x,y,z) : " + getX() + "," + getY() + "," + z);
	}
//	public void infoPrint3d() {
//		System.out.println("��ǥ(x,y,z) : " + getX() + "," + getY() + "," + z);
//	}
}
