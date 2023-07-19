package com.lec.ex1_InputStreamOutputStream;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
// (1)��Ʈ���� ����(������ ����) (2)�����͸� �д´�(read�޼ҵ���) (3)������ �ݴ´�(close�޼ҵ� ���)
public class Ex01_FileInputStream {
	public static void main(String[] args) {
		InputStream is = null;
		try {
			is = new FileInputStream("txtFile/inTest.txt"); // 1.������ ����
			// 2. �����͸� �д´�(���� ������ �ݺ������� �д´�)
			while(true) {
				int i = is.read(); // 1byte�� �д´�
				if(i == -1)  break; // ������ ���̸� break;
				System.out.print((char)i + "(" + i + ")");
			}
			System.out.println("\n = = = DONE = = =");
		} catch (IOException e) {
			System.out.println("���ܸ޼���(������ �� ã�Ұų�, �� ����) : " + e.getMessage());
		} finally {
			try {
				if(is!=null) is.close(); // 3. ������ �ݴ´�
			} catch (IOException ignore) {
				System.out.println(ignore.getMessage());
			}
		}
	}
}