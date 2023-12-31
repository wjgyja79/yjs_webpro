package com.lec.ex2_ReaderWriter;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.Reader;

// 파일을 연다(스트림 객체 생성) -> 데이터를 읽는다(read()메소드사용) -> 파일을 닫는다
public class Ex01_FileReader {
	public static void main(String[] args) {
		Reader reader = null;
		try {
			reader = new FileReader("txtFile/inTest.txt"); // 1 상대경로의 파일을 연다
			// 2 데이터를 읽는다
			while(true) {
				int i = reader.read();
				if(i==-1) break;
				System.out.print((char)i + "( " + i + ")");
			}
			System.out.println("DONE");
		} catch (FileNotFoundException e) {
			System.out.println(e.getMessage());
		} catch (IOException e) {
			System.out.println(e.getMessage());
		} finally {
			try { // 3 파일을 닫는다
				if(reader!=null) reader.close();
			} catch (IOException e) {
				System.out.println(e.getMessage());
			}
		}
	}
}
