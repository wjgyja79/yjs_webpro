package com.lec.ex03_point.copy;
// x, y / infoPrint(좌표 x,y)
// Point3D p = new Point3D(1,2,3); p.infoPrint()
public class Point3D extends Point {
	private int z;
	public Point3D(int x, int y, int z) {
		super(x, y);
		System.out.println("매개변수 있는 Point3D생서자 - x,y,z초기화");
		this.z = z;
	}
	@Override
	public void infoPrint() {
		System.out.println("좌표(x,y,z) : " + getX() + "," + getY() + "," + z);
	}
//	public void infoPrint3d() {
//		System.out.println("좌표(x,y,z) : " + getX() + "," + getY() + "," + z);
//	}
}
