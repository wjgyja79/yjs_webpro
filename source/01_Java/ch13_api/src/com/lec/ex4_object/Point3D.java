package com.lec.ex4_object;

public class Point3D {
	private double x;
	private double y;
	private double z;
	public Point3D() {
	}
	public Point3D(double x, double y, double z) {
		this.x = x;
		this.y = y;
		this.z = z;
	}
	@Override
	public String toString() {
		return "ÁÂÇ¥°ª ["+x+", "+y+", "+z+"]";
	}
	@Override
	public boolean equals(Object obj) {
		if(obj!=null && obj instanceof Point3D) {
			Point3D other = (Point3D)obj;
			boolean xchk = (x == other.x);
			boolean ychk = (y == other.y);
			boolean zchk = (z == other.z);
			return xchk && ychk && zchk;
		}
		return false;
	}
}
