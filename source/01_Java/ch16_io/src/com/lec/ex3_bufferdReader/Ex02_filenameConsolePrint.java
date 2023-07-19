package com.lec.ex3_bufferdReader;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.Reader;
import java.util.Scanner;

import com.lec.ex4_printWriter.Ex;

// ����ڷκ��� �����̸��� �Է�(scanner) -> �ش� �����̸��� �����ϴ��� check�Լ� -> �ش� ������ console ���
public class Ex02_filenameConsolePrint {
	public static void main(String[] args) {
		Reader reader = null;
		BufferedReader br = null;
		Scanner scanner = new Scanner(System.in);
		System.out.print("�о�� ���ϸ��� ? : "); // abc.txt => txtFile/abc.txt
		String filename = scanner.next();
		File file = new File("txtFile/" + filename);
		if(file.exists()) {
			try {
				reader = new FileReader(file); // 1. ��Ʈ������(�⺻��Ʈ��)
				br = new BufferedReader(reader); // ������Ʈ�� ����
				while(true) { // 2. ������Ʈ���� ���� 1�پ� read
					String linedata = br.readLine();
					if(linedata == null) break;
					System.out.println(linedata);
				}
			} catch (FileNotFoundException e) {
				System.out.println(e.getMessage());
			} catch (IOException e) {
				System.out.println(e.getMessage());
			} finally { 
				try {
					if(br!=null) br.close();
					if(reader !=null) reader.close();
				} catch (IOException e) {
					System.out.println(e.getMessage());
				}
			}
		}else {
			System.out.println("�Է��Ͻ� ������ �������� �ʽ��ϴ�");
		}
	} 
}
