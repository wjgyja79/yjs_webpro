package com.ec.ex1_string;

public class Ex02_StringApiMethod {
	public static void main(String[] args) {
		String str1 = "abcXabc";
		String str4 = new String("abcXabc");
		String str2 = "             Ja va              ";
		System.out.println("1. " + str1.concat("AAA")); // 1. abcXabcAAA (���ڿ� ����)
		System.out.println("2. " + str1.substring(3)); // 2. Xabc (3��°���� ������ ���� ����)
		System.out.println("3. " + str1.substring(3, 5)); // 3. Xa (3��°���� 5��°�ձ���)
		System.out.println("4. " + str1.length()); // 4. 7 (���ڿ��� ����)
		System.out.println("5. " + str1.toUpperCase()); // 5. ABCXABC (�빮�ڷ�)
		System.out.println("6. " + str1.toLowerCase()); // 6. abcxabc (�ҹ��ڷ�)
		System.out.println("7. " + str1.charAt(3)); // 7. X (3��° ����)
		System.out.println("8. " + str1.indexOf("b")); // 8. 1 (ó�� ������ "b"������ �ε���)
		System.out.println("9. " + str1.lastIndexOf("b")); // 9. 5 (�������� ������ "b" ������ �ε���)
		System.out.println("10. " + str1.indexOf("@")); // 10. -1 (������-1, ������ ������ �ε���) 
		System.out.println("11. " + str1.indexOf("Xabc")); // 11. 3 (ó�� ������ "Xabc"�� ���� �ε���)
		String str3 = "abcXabcXabc";
		System.out.println("12. " + str1.indexOf('b', 2)); // 12. 5 (2��° �ε������� ó�� ������ 'b'�� �ε���)
		System.out.println("13. " + str1.indexOf("bc", 2)); // 13. 5 (2���� �ε������� ó�� ������ "bc"�� �ε���)
		System.out.println("14. " + str1.equals("str4")); // 14. true (���� ��Ʈ���̸� true, �ƴϸ� false)
		System.out.println("15. " + str1.equalsIgnoreCase("ABCXABC")); // 15. true (��ҹ��ڱ������̺�)
		System.out.println("16. " + str2.trim()); // 16. ja     va(�յ� space ����) 
		System.out.println("17. " + str3.replace("abc", "�ٲ�")); // 17. �ٲ�X�ٲ�X�ٲ� (abc�� �ٲ�� ��ü) 
	}
}
