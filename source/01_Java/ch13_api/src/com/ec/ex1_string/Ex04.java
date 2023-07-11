package com.ec.ex1_string;
// 주민번호를 입력받아 여자인지 남자인지 출력
import java.util.Scanner;

public class Ex04 {
	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		System.out.print("주민번호 ?");
		String juminNo = scanner.next(); //"920225-2012121" 
		// 방법1 char로 추출
		char genderChar = juminNo.charAt(7); // '2'
		if(genderChar=='1' || genderChar=='3') {
			System.out.println("남성이시군요");
		}else if(genderChar=='2' || genderChar=='4') {
			System.out.println("여성이시군요");
		}else {
			System.out.println("유효하지 않은 주민번호입니다");
		}
		// 방법2 String으로 추출
		String genderStr = juminNo.substring(7,8); // "2"
		if(genderStr.equals("1") || genderStr.equals("3")) {
			System.out.println("남성이시군요");
		}else if(genderStr.equals("2") || genderStr.equals("4")) {
			System.out.println("여성이시군요");
		}else {
			System.out.println("유효하지 않은 주민번호입니다");
		}
		// 방법3 "1"-> 1
		int genderInt = Integer.parseInt(genderStr); // 1,2,3,4
		if(genderInt==1 || genderInt==3) {
			System.out.println("남성이시군요");
		}else if(genderInt==2 || genderInt==4) {
			System.out.println("여성이시군요");
		}else {
			System.out.println("유효하지 않은 주민번호입니다.");
		}
		scanner.close();
	}
}
