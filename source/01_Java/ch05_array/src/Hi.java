// Hi.java -(������ : javac Hi.java)-> Hi.class -(����:java Hi)-> Hello ���
// ���� : java Hi �嵿�� �ں��� ��ҿ�
public class Hi {
	public static void main(String[] args) {
		System.out.println("Hello");
		for(int i=0 ; i<args.length ; i++) {
			System.out.println(", "+args[i]);
		}
	}
}
