package com.lec.ex1_InputStreamOutputStream;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

// C:\yjs_webpro\lecNote\Java\bts_7.mp4 (7,460,545 byte)
public class Ex04_fileCopStep2 {
	public static void main(String[] args) {
		long start = System.currentTimeMillis(); // 1970.1.1 부터 시작시점까지의 밀리세컨
		// file copy 로직
		InputStream is = null;
		OutputStream os = null;
		File file = new File("C:/yjs_webpro/lecNote/Java/bts_7.mp4");
		try {
			is = new FileInputStream(file);
			os = new FileOutputStream("C:/yjs_webpro/lecNote/Java/bts_7copy.mp4");
			int cnt = 0;
			byte[] bs = new byte[(int)file.length()];
			while(true) { // read&write : 7,460,545번 수행
				int readByteCount = is.read(bs); // read
				if(readByteCount==-1) break;
				os.write(bs, 0, readByteCount); // write
				cnt++;
			}
			System.out.println(cnt + "번 while문 실행하여 복사 성공");
		} catch (IOException e) {
			System.out.println(e.getMessage());
		} finally {
			try {
				if(os!=null) os.close();
				if(is!=null) is.close();
			} catch (IOException e) {
				System.out.println(e.getMessage());
			}
		}
		long end = System.currentTimeMillis(); // 1970.1.1 부터 끝시점까지의 밀리세컨
		System.out.println((end-start)/1000.0 + "밀리초 걸림");
	}
}
