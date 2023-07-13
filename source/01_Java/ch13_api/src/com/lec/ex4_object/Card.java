package com.lec.ex4_object;
// ������ - ������ - �޼ҵ�(�Ϲݸ޼ҵ�-setter&getter-�������̵�޼ҵ�)
// new Card("��", 3)
public class Card {
	private String kind;
	private int	   num;
	public Card(String kind, int num) {
		this.kind = kind;
		this.num = num;
	}
	@Override
	public String toString() {
		return "ī�� : " + kind + "-" + num;
	}
	@Override
	public boolean equals(Object obj) {
		// c1.equals(c2) => c1�� this, c2�� obj
		// (this.)this.kind�� obj.kind�� ������ chk => kindChk(true/false)
		// (this.)num�� obj.num�� ������ chk => numChk(true/false)
		// return kindChk && numChk
		if(obj!=null && obj instanceof Card) {
			Card other = (Card)obj;
			boolean kindChk = kind.equals(other.kind);
			boolean numChk = (num == other.num);
			return kindChk && numChk;
		}
		return false;
	}
}
