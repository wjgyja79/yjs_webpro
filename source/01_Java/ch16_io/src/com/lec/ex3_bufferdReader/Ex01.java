package com.lec.ex3_bufferdReader;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.Reader;

// 1. ��Ʈ�� ��ü ����(FileReader->bufferdReader) 
// 2. �����͸� �д´�(buffredReader�� ���� ���پ�) -> ��Ʈ���� �ݴ´�
// 3. ��Ʈ���� �ݴ´�(bufferedReader -> FileReader)
public class Ex01 {
	public static void main(String[] args) {
		Reader reader = null;
		BufferedReader br = null;
		try {
			reader = new FileReader("txtFile/inTest.txt"); // 1. �⺻��Ʈ�� ����
			br = new BufferedReader(reader); // ������Ʈ���� �⺻��Ʈ���� ���� ����
			while(true) { // 2. �����͸� ���پ� �д´�(br.readLine())
				String linedata = br.readLine();
				if(linedata == null) break;
				System.out.println(linedata);
			}
			System.out.println("= = ���� �Է� �� = =");
		} catch (IOException e) {
			System.out.println(e.getMessage());
		}finally {
			try { // 3. ��Ʈ���� ������� �ݴ´�
				if(br!=null) br.close();
				if(reader !=null) reader.close();
			} catch (IOException e) {
				System.out.println(e.getMessage());
			}
		}
	}
}
