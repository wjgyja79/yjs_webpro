-- [IV] �������Լ�

-- �Լ� = �������Լ� + �׷��Լ�(�����Լ�)
SELECT HIREDATE, TO_CHAR(HIREDATE, 'YYYY-MM-DD') FROM EMP; -- ������ ����(INPUT 1�� -> OUTPUT 1��)
SELECT SUM(SAL), AVG(SAL) FROM EMP; -- �׷��Լ� (INPUT N�� -> OUTPUT 1��)
SELECT DEPTNO, SUM(SAL), AVG(SAL) FROM EMP GROUP BY DEPTNO; -- DEPTNO�� �׷��Լ� ����(INPUT N�� -> OUTPUT 1��)


-- �������Լ� : ���ڰ����Լ�, ���ڰ����Լ�, ��¥�����Լ�, ����ȯ�Լ�, NVL(), ETC...

 -- DUAL ���̺� : ����Ŭ���� ������ 1��1��¥�� DUMMY TABLE
 SELECT * FROM DUAL;
 SELECT * FROM DUMMY;
-- 1. ���ڰ����Լ�
SELECT FLOOR(34.5678) FROM DUAL; -- �Ҽ������� ����
SELECT FLOOR(34.5678*100)/100 FROM DUAL; -- �Ҽ��� �ι�° �ڸ����� ����
SELECT TRUNC(34.5678, 2) FROM DUAL; -- �Ҽ��� �ι�° �ڸ����� ����
SELECT TRUNC(34.5678) FROM DUAL; -- �Ҽ������� ����
SELECT TRUNC(34.5678, -1) FROM DUAL; -- ���� �ڸ����� ����
 -- ex. EMP���̺��� �̸�, �޿�(���� �ڸ� ����)
 SELECT ENAME, TRUNC(SAL, -2), SAL FROM EMP;

SELECT ROUND(34.5678) FROM DUAL; -- �Ҽ������� �ݿø�(35)
SELECT ROUND(34.5678, 2) FROM DUAL; -- �Ҽ��� �ι�° �ڸ����� �ݿø�(34.57)
SELECT ROUND(34.5678, -1) FROM DUAL;

SELECT CEIL(34.5678) FROM DUAL; -- �Ҽ������� �ø�(35)
SELECT CEIL(34.5678*100)/100 FROM DUAL; -- �Ҽ��� �ι�°�ڸ����� �ø�(34.57)

SELECT MOD(9, 2) FROM DUAL; -- 9%2
 -- ex. Ȧ���⵵�� �Ի��� ����� ��� ���� ���
SELECT MOD(LIKE '%', 2) FROM DUAL; -- 
 SELECT * FROM EMP WHERE MOD(TO_CHAR(HIREDATE, 'RR'), 2) = 1;

-- 2.���ڰ����Լ�
-- (1) ��ҹ��ڰ���
SELECT INITCAP('WELCOM TO ORACLE') FROM DUAL; -- ���������� ����� ù���ڸ� �빮�ڷ�
SELECT INITCAP('welcom to oracle') FROM DUAL;
SELECT UPPER('ABCabc') FROM DUAL; -- �빮�ڷ� 
SELECT LOWER('ABCabc') FROM DUAL; -- �ҹ��ڷ� 
 -- ex. �̸��� SCOTT�� ������ ��� �ʵ�
 SELECT * FROM EMP WHERE UPPER(ENAME)='SCOTT';
 SELECT * FROM EMP WHERE UPPER(ENAME)='Scott';
 SELECT * FROM EMP WHERE LOWER(ENAME)='scott';

-- (2) ���ڿ���(CONCAT�Լ�, ||������)
SELECT 'AB'||'CD'||'EF'||'GH' FROM DUAL;
SELECT CONCAT(CONCAT('AB','CD'), CONCAT('EF','GH') ) FROM DUAL;
 -- ex. SMITH�� MANAGER��
 SELECT ENAME || '��' || JOB || '��' MESSAGE FROM EMP;
 SELECT CONCAT(CONCAT(ENAME, '��'), CONCAT(JOB, '��') ) MESSAGE FROM EMP;

-- (3) SUBSTR(STR, ������ġ, ���ڰ���) : STR�� ������ġ���� ���ڰ�����ŭ ����
                -- ������ġ�� 1���� ����, ��ġ�� �����̸� ������ �ڸ����� ���ϴ�)
    -- SUBSTRB(STR, ���۹���Ʈ��ġ, �����ҹ���Ʈ��) : STR�� ���۹���Ʈ��ġ���� ����Ʈ��������
 SELECT SUBSTR('ORALCE', 3, 2) FROM DUAL; -- 3��° ����Ʈ���� 2���� ����
 SELECT SUBSTRB('ORALCE', 3, 2) FROM DUAL; -- 3��° ����Ʈ���� 2����Ʈ ����
 SELECT SUBSTR('�����ͺ��̽�', 4, 3) FROM DUAL; -- 4��° ���ں��� 3���� ����
 SELECT SUBSTRB('�����ͺ��̽�', 4, 3) FROM DUAL; -- 4��° ����Ʈ���� 3����Ʈ ����
 -- O R A C L E
 
 SELECT SUBSTR('010-9999-1234', -4, 4) FROM DUAL; -- -4��° ���ں��� 4���� ����
 SELECT SUBSTR('ORALCE', -1, 1) FROM DUAL; -- 
 
 SELECT SUBSTR(123, -1, 1) FROM DUAL; -- ���� ������ ����
 -- ex. 9�Ͽ� �Ի��� ����� ��� ����
 SELECT * FROM EMP WHERE SUBSTR(HIREDATE, -2, 2)= '09';
 SELECT * FROM EMP WHERE SUBSTR(TO_CHAR(HIREDATE, 'RR/MM/DD'), -2, 2) = '09';
 SELECT * FROM EMP WHERE TO_CHAR(HIREDATE, 'DD' = '09';

-- (4) LENGTH(STR) : STR�� ���ڼ�
    -- LENGTHB(STR) : STR�� ����Ʈ ��
    SELECT LENGTH('ABC') FROM DUAL;
    SELECT LENGTHB('ABC') FROM DUAL;
    SELECT LENGTH('����Ŭ') FROM DUAL;
    SELECT LENGTHB('����Ŭ') FROM DUAL;

-- (5) LPAD(STR, �ڸ���, ä�﹮��) : STR�� �ڸ�����ŭ Ȯ���ϰ� ���� ���ڸ��� ä�﹮�ڷ� ���
    -- LPAD(STR, �ڸ���) : STR�� �ڸ�����ŭ Ȯ���ϰ� ���� ���ڸ��� ' '�� ���
    -- RPAD(STR, �ڸ���, ä�﹮��) : STR�� �ڸ�����ŭ Ȯ���ϰ� ������ ���ڸ��� ä�﹮�ڷ� ���
    -- RPAD(STR, �ڸ���) : STR�� �ڸ�����ŭ Ȯ���ϰ� ������ ���ڸ��� ' '�� ���
SELECT LPAD('ORACLE', 10, '%') FROM DUAL;
SELECT RPAD('ORACLE', 10, '*') FROM DUAL;
SELECT ENAME, LENGTH(ENAME), SAL FROM EMP; -- ENAME 10���ڱ���, SAL�� 5�ڸ����� ����
DESC EMP;
SELECT RPAD(ENAME, 11, '-') ENAME, LPAD(SAL, 6, '*') SAL FROM EMP;
SELECT LPAD(ENAME, 11, '-') ENAME, RPAD(SAL, 6, '*') SAL FROM EMP;
SELECT LPAD(ENAME, 11) ENAME, RPAD(SAL, 6) SAL FROM EMP;
 
 -- ex. ��� �̸� (7369 S****, 7521 W***, ..) : SUBSTR, LENGTH, RPAD
SELECT EMPNO, RPAD(SUBSTR(ENAME, 1, 1), LENGTH(ENAME), '*') ENAME FROM EMP;


 -- ex. ���, �̸�, ��å, �Ի��� (7369 Smith ______****K 80/12/**) : LPAD, SUBSTR, CONCATM, ||
SELECT EMPNO, ENAME, SUBSTR(JOB, 5, 9), RPAD(HIREDATE, 6, '*')
 FROM EMP;
 
 SELECT EMPNO, ENAME, LPAD(JOB, 19, '*'), SUBSTR(HIREDATE, 3, 6)
 FROM EMP;
  
SELECT LPAD(ENAME, 11) ENAME, RPAD(SAL, 6) SAL FROM EMP;

SELECT * FROM EMP;
