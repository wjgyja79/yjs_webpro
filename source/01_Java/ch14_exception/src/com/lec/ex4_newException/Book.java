package com.lec.ex4_newException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Scanner;
// Book book = new Book("890-��01", "Java", "������");
public class Book implements ILendable {
	private String bookNo;    // û����ȣ
	private String bookTitle; // å�̸�
	private String writer;    // ����
	private String borrower;  // ������
	private Date checkOutDate; // ������
	private byte   state; // ���Ⱑ��(0), ������(1)
	public Book(String bookNo, String bookTitle, String writer) {
		this.bookNo = bookNo;
		this.bookTitle = bookTitle;
		this.writer = writer;
//		borrower = null;
//		checkOutDate = null;
//		state = 0;
	}
	@Override
	public void checkOut(String borrower) { // ����
		if(state == STATE_BORROWED) { // �������� �����̸� �޼��� �Ѹ��� �޼ҵ� ��
			System.out.println(bookTitle + " ������ �������Դϴ�");
			return;
		}
		// state�� 0(STATE_NORMAL)�� ���� ����
		this.borrower = borrower;
		checkOutDate = new Date(); // �������� �����
		state = STATE_BORROWED; // ������ ���·� ��ȯ
		SimpleDateFormat sdf = new SimpleDateFormat("yy-MM-dd");
		System.out.println(bookTitle + " ������ ����Ǿ����ϴ�");
		System.out.println("������ : " + borrower + "\t������ : " + sdf.format(checkOutDate));
	}
	@Override
	public void checkIn() throws Exception{//�ݳ�
		if(state == STATE_NORMAL) {//���Ⱑ���� å�̸� �޼��� �Ѹ��� �޼ҵ� ��
			// ������ ���� �߻�
			throw new Exception(bookTitle + "������ �ݳ��� �Ϸ�� å�Դϴ�. Ȯ���ϼ��� �� ���ܸ޼��� ��");
		}
		// checkOutDate~now������ ��¥ ���
		Date now = new Date();
		long checkOutDateMilli = checkOutDate.getTime(); // 1970.1.1 ~ �����ϱ����� �и�����
		long nowMilli          = now.getTime(); // 1970.1.1 ~ now������ �и�����
		long diff = nowMilli - checkOutDateMilli; // ������ ~ now������ �и�����
		int day = (int)(diff / (1000 * 60 * 60 * 24)); // ������ ~now������ ��¥ ��
		if(day > 14) { // ��ü
			day -= 14; // ��ü��
			System.out.println(day+"�ϸ�ŭ ��ü�Ǿ� " + (day*100) +"�� ��ü�� �ΰ��˴ϴ�. ��ü�Ḧ �����̳���(Y/N)?");
			Scanner scanner = new Scanner(System.in);
			String answer = scanner.next().trim();
			if(!answer.equalsIgnoreCase("y")) {
				System.out.println("��ü�Ḧ �̳��Ͻø� �ݳ�ó�� �� �˴ϴ�");
				return;
			}
		}
		borrower = null;
		checkOutDate = null;
		state = STATE_NORMAL;// state�� ������(1)�̶� �ݳ�ó��
		System.out.println(bookTitle + " ������ �ݳ� �Ϸ�Ǿ����ϴ�");
	}
	@Override
	public String toString() {
		String msg = bookNo + "\t" + bookTitle + "(" + writer + "��)";
		msg += state==STATE_BORROWED ? "������(������:" + checkOutDate + ")":"���Ⱑ��";
		return msg;
	}
	// getter
	public String getBookNo() {
		return bookNo;
	}
	public String getBookTitle() {
		return bookTitle;
	}
	public String getWriter() {
		return writer;
	}
	public String getBorrower() {
		return borrower;
	}
	public byte getState() {
		return state;
	}
	// setter : ������ ���� (��ü �׽�Ʈ)
	public void setCheckOutDate(Date checkOutDate) {
		this.checkOutDate = checkOutDate;
	}
}