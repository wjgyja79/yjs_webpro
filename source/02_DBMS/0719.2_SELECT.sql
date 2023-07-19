-- [II] SELECT�� - ��ȸ
-- 1. SELECT ���� �ۼ��� (������ : CTRL+ENTER), SQL���� ��ҹ��� ����X
SHOW USER;
SELECT * FROM TAB; -- �������� ������ �ִ� ���̺� ����
SELECT * FROM EMP; -- EMP���̺��� ��� ��(�ʵ�), ��� ��
SELECT * FROM DEPT; -- DEPT���̺��� ��� ��(�ʵ�), ��� ��
SELECT * FROM SALGRADE; -- SALGRADE���̺��� ��� ��(�ʵ�), ��� ��

-- 2. Ư�� ���� ���
DESC EMP;
        -- EMP���̺� ����
SELECT EMPNO, ENAME, SAL, JOB FROM EMP; -- EMP���̺��� EMPNO, ENAME, SAL, JOB �ʵ��� �����
SELECT EMPNO, ENAME, SAL, JOB, MGR, COMM FROM EMP;
SELECT EMPNO AS "�� ��", ENAME AS "�̸�", SAL AS "�޿�", JOB AS "��å" FROM EMP;
SELECT EMPNO AS "�� ��", ENAME AS �̸�, SAL AS �޿�, JOB AS ��å FROM EMP;
SELECT EMPNO "N O", ENAME NAME, SAL SALRY, JOB FROM EMP; -- �ʵ��� ��Ī�� �δ� ���(""���� ���)

-- 3. Ư�� �� ��� : WHERE��(������) -- �񱳿�����:����(=), �ٸ���(!=, ^=, <>)
SELECT EMPNO "���", ENAME "�̸�", SAL "�޿�" FROM EMP WHERE SAL=3000; -- ����
SELECT EMPNO NO, ENAME ENAME, SAL FROM EMP WHERE SAL != 3000; -- �ٸ���
SELECT EMPNO NO, ENAME ENAME, SAL FROM EMP WHERE SAL ^= 3000; -- �ٸ���
SELECT EMPNO NO, ENAME ENAME, SAL FROM EMP WHERE SAL <> 3000; -- �ٸ���
SELECT * FROM EMP WHERE SAL<3000;
    -- �񱳿����ڴ� ����(NUMBER), ����(VARCHAR2), DATE ��� ����
    -- EX1. ����̸�(ENAME)�� 'A', 'B', 'C'�� �����ϴ� ����� ��� �ʵ� ���
        -- A < AA < AAA < AAAA ... A < B < BA < BAA..A < BB ...
    SELECT * FROM EMP WHERE ENAME < 'D';
    -- EX2. 81�⵵ ������ �Ի��� ����� ��� �ʵ� 
    SELECT * FROM EMP WHERE HIREDATE < '81/01/01';
    -- EX3. �μ���ȣ(DEPTNO)�� 10�� �μ��� ����� ��� �ʵ�
    SELECT * FROM EMP WHERE DEPTNO=10;
    -- EX4. �̸�(ENAME)�� FORD�� ������ ���(EMPNO), �̸�(ENAME), ����� ���(MGR)�� ���
    SELECT EMPNO, ENAME, MGR FROM EMP WHERE ENAME = 'FORD';
    
-- 4. �������� �������� : AND, OR, NOT
    -- EX1. �޿�(SAL)�� 2000�̻�, 3000������ ������ ��� ������ ��� �ʵ�
    SELECT * FROM EMP WHERE SAL<2000 AND SAL<3000;
    -- EX2. 82�⵵�� �Ի��� ����� ��� �ʵ�
    SELECT * FROM EMP WHERE HIREDATE>='82/01/01' AND HIREDATE<='82/12/31';
    -- ��¥ ǥ��� ����(���� : YY/MM/DD �Ǵ� RR/MM/DD)
    ALTER SESSION SET NLS_DATE_FORMAT = 'MM-DD-YYYY';
    SELECT ENAME, HIREDATE FROM EMP;
    SELECT * FROM EMP WHERE HIREDATE>='01-01-1982' AND HIREDATE<='12-31-1982';
    SELECT * FROM EMP
        WHERE TO_CHAR(HIREDATE, 'RR/MM/DD') >= '82/01/01'
            AND TO_CHAR(HIREDATE, 'RR/MM/DD') <= '82/12/31';
    -- ��¥ ǥ��� ����
    ALTER SESSION SET NLS_DATE_FORMAT = 'RR/MM/DD';
    -- EX3. ������ 2400�̻��� ������ ENAME, SAL, ����(SAL*12)�� ���
    SELECT ENAME, SAL, SAL*12 
        FROM EMP 
            WHERE SAL*12 >= 2400;
    