// Hi.java -(컴파일 : javac Hi.java)-> Hi.class -(실행:java Hi)-> Hello 출력
// 실행 : java Hi 장동건 박보검 고소영
public class Hi {
	public static void main(String[] args) {
		System.out.println("Hello");
		for(int i=0 ; i<args.length ; i++) {
			System.out.println(", "+args[i]);
		}
	}
}
