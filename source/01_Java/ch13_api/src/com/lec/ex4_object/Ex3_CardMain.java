package com.lec.ex4_object;
import java.util.Random;
public class Ex3_CardMain {
	public static void main(String[] args) {
		Card[] cards = { new Card("��", 3), new Card("��", 3), 
						new Card("��", 5), new Card("��", 4),
						new Card("��", 7), new Card("��", 5),
						new Card("��", 8), new Card("��", 6),
						new Card("��", 9), new Card("��", 7),};
		// ������ ���� ī��� �迭���� ī�带 ���ؼ� ��ġ�ϴ� ī�尡 ������ ���(�ش� ī�带 ���), ��ġ�ϴ� ī�尡 ������ �� ���
		Random random = new Random();
		String[] kinds = {"��", "��", "��", "��"};
		int idx = random.nextInt(4); // 0~3������ ���� ����
		Card randomCard = new Card(kinds[idx], random.nextInt(13)+1);
		System.out.println("��ǻ���� ������ " +randomCard);
		int i;
		for(i=0 ; i<cards.length ; i++) {
			if(randomCard.equals(cards[i])) {
				System.out.println(i + "��° ī��� ��ġ�մϴ�. " + cards[i]);
				break;
			}
		}
		if(i == cards.length) {
			System.out.println("��. �迭�� ���� ī�带 �̾ҽ��ϴ�");
		}
	}
}
