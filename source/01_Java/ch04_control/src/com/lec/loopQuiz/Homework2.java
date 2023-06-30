package com.lec.loopQuiz;
// 컴퓨터와 가위바위보 게임을 당신이 질 때까지 무한반복하는 게임을 작성하시오.
// (단, 가위대신 0, 바위대신 1, 보대신 2)

import java.util.Scanner;

public class Homework2 {
	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		do {
			
			System.out.print("가위(0), 바위(1), 보자기(2) 중 숫자 하나를 선택하세요 :");
			int you = scanner.nextInt(); // 0, 1, 2
			int computer = (int) (Math.random()*3); // 0,1,2중 한 난수
			String youStr = (you==0) ? "가위" : ( (you==1)? "바위" : "보자기" );
			String computerStr = (computer==0)? "가위" : (computer==1)? "바위" : "보자기";
			if(you>2 || you<0) {
				System.out.println("잘못 입력하심");
				continue;
			}
			System.out.println("당신은 " + youStr + ", 컴퓨터는  "+ computerStr);
			// 당신이 이겼습니다 || 컴퓨터가 이겼습니다 || 비겼습니다 출력
			if( (you+2)%3 == computer) {
				System.out.println("당신이 이겼습니다!");
			}else if (you == computer) {
				System.out.println("비겼습니다!");
			}else if ( (you+1)%3 == computer) {
				System.out.println("컴퓨터가 이겼습니다!");
				break;
			}
		}while (true);
	
	}//main
} //class
