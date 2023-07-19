package com.lec.ex4_printWriter;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.io.Writer;

// printWriter : OutputStream�� �⺻��Ʈ������ �ϴ� ������Ʈ��
// printWriter : Writer�� �⺻��Ʈ������ �ϴ� ���� ��Ʈ������ ���
// printWriter ȥ�� �⺻��Ʈ��ó�� ���
public class Ex {
	public static void main(String[] args) {
		OutputStream os = null;
		Writer		Writer = null;
		PrintWriter printWriter = null;
		try {
			// 1. PrintWriter : OutputStream�� ���� ��Ʈ��
//			os = new FileOutputStream("txtFile/outTest.txt", true); //append
//			printWriter = new PrintWriter(os);
			// 2. PrintWriter : Writer�� ������Ʈ��
//			Writer = new FileWriter("txtFile/outTest.txt", true); //append
//			printWriter = new PrintWriter(writer);
			// 3. PrintWriter�� �⺻ ��Ʈ��ó�� ���
			printWriter = new PrintWriter("txtFile/outTest.txt"); // append �Ұ�
			// �ܼ� �� ���� ���
			System.out.println("�ȳ��ϼ���\n�ݰ����ϴ�");
			printWriter.println("�ȳ��ϼ���\n�ݰ����ϴ�");
			System.out.print("print�� �ڵ����� X �����߰� \n");
			printWriter.printf("print�� �ڵ����� X �����߰� \n");
			System.out.printf("%s %3d %3d %5.1f\n", "ȫ�浿", 100, 100, 100.0);
			printWriter.printf("%s %3d %3d %5.1f\n", "ȫ�浿", 100, 100, 100.0);
			System.out.printf("%s %3d %3d %5.1f\n", "�ű浿", 90, 91, 90.5);
			printWriter.printf("%s %3d %3d %5.1f\n", "�ű浿", 90, 91, 90.5);
			System.out.printf("%s %3d %3d %5.1f\n", "�ڱ浿", 95, 97, 96.0);
			printWriter.printf("%s %3d %3d %5.1f\n", "�ڱ浿", 95, 97, 96.0);
		} catch (FileNotFoundException e) {
			System.out.println(e.getMessage());
		} finally {
			printWriter.close();
			try {
				if(printWriter  !=null) printWriter.close();
				//if(os			!=null) os.close();
			//	if(writer		!=null) Writer.close();
			} catch (Exception e) {
				System.out.println(e.getMessage());
			}
		}
	} 
}
