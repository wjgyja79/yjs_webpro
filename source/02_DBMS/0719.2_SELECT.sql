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
    SELECT ENAME, SAL, SAL*12 ANNUALSAL
        FROM EMP 
            WHERE SAL*12 >= 2400; -- WHERE ������ �ʵ��� ��Ī ��� �Ұ�
    -- EX3. ������ 2400�̻��� ������ ENAME, SAL, ����(SAL*12)�� ���(����������)
    SELECT ENAME, SAL, SAL*12 ANNUALSAL 
       FROM EMP 
       WHERE SAL*12>=2400
       ORDER BY ANNUALSAL; -- ORDER BY �������� �ʵ��� ��Ī ��� ����
    -- ex4.
    -- ex5. 10�μ�(DEPTNO)�̰ų� JOB�� MANAGER�� ������ ��� �ʵ�
    SELECT * FROM EMP WHERE DEPTNO=10 OR JOB='MANAGER';
    -- ex6. �μ���ȣ�� 10�� �μ��� �ƴ� ������ ��� �ʵ�
    SELECT * FROM EMP WHERE DEPTNO != 10;
    SELECT * FROM EMP WHERE DEPTNO ^= 10;
    SELECT * FROM EMP WHERE DEPTNO <> 10;
    SELECT * FROM EMP WHERE NOT DEPTNO=10; 
-- 5. ��������� (SELECT��, ������, ORDER BY��)
SELECT EMPNO, ENAME, SAL �������, SAL*1.1 �ø����� FROM EMP;
    -- ex. ��� ����� �̸�(ENAME), ����(SAL), ����(SAL*12+COMM)�� ���
    SELECT ENAME, SAL, COMM, SAL*12+COMM ANNUALSAL FROM EMP;
    -- ��������� ����� NULL�� �����ϸ� ����� NULL
    -- NVL(NULL�ϼ��� �ִ� �ʵ��, ��ü��)�� �̿� : �ʵ��� ��ü���� Ÿ��(����, ����, ��¥)�� ��ġ
    SELECT ENAME, SAL, COMM, SAL*12+NVL(COMM, 0) ANNUALSAL FROM EMP;
    -- ��� ����� ENAME, MGR(����� ���)�� ���(����� ����� ������ -1)
    SELECT ENAME, NVL(MGR, -1) FROM EMP;
    DESC EMP;
    -- ��� ����� ENAME, MGR(����� ���)�� ���(����� ����� ������ 'CEO'��� ���)
    SELECT ENAME, NVL(TO_CHAR(MGR), 'CEO') MGR FROM EMP;
    
-- ���Ῥ����(||) : �ʵ峪 ���ڸ� ����
SELECT ENAME || '��(��) ' || JOB || '��' MESSAGE FROM EMP;
    -- ex. ��� ����� ���� SMITH : ANNUAL SALARY = XXX �������� ��� (����= SAL*12+COMM)
    SELECT ENAME || ' : ANNUAL SALARY = ' || (SAL*12+NVL(COMM, 0)) MESSAGE FROM EMP;

-- 7. �ߺ����� (DISTINCT)
SELECT DISTINCT JOB FROM EMP;
SELECT DISTINCT DEPTNO FROM EMP;

--  ===========================================================
--1. emp ���̺��� ���� ���
    DESC EMP;
    
--2. emp ���̺��� ��� ������ ��� 
    SELECT * FROM EMP;

--3. �� scott �������� ��밡���� ���̺� ���
    SELECT * FROM TAB;
    
--4. emp ���̺��� ���, �̸�, �޿�, ����, �Ի��� ���
    SELECT EMPNO, ENAME, SAL, JOB, HIREDATE FROM EMP;
    
--5. emp ���̺��� �޿��� 2000�̸��� ����� ���, �̸�, �޿� ���
    SELECT EMPNO, ENAME, SAL FROM EMP WHERE SAL < 2000;
    
--6. �Ի����� 81/02���Ŀ� �Ի��� ����� ���, �̸�, ����, �Ի��� ���
    SELECT EMPNO, ENAME, JOB, HIREDATE FROM EMP WHERE HIREDATE>'81/02/01';
        
--7. ������ SALESMAN�� ����� ��� �ڷ� ���
    SELECT * FROM EMP WHERE JOB = 'SALESMAN';

--8. ������ CLERK�� �ƴ� ����� ��� �ڷ� ���
    SELECT * FROM EMP WHERE JOB!='CLERK';

--9. �޿��� 1500�̻��̰� 3000������ ����� ���, �̸�, �޿� ���
    SELECT EMPNO, ENAME, SAL FROM EMP WHERE SAL>1500 AND SAL<3000;

--10. �μ��ڵ尡 10���̰ų� 30�� ����� ���, �̸�, ����, �μ��ڵ� ���
    SELECT EMPNO, ENAME, JOB, DEPTNO FROM EMP WHERE DEPTNO = 10 OR DEPTNO =30;

--11. ������ SALESMAN�̰ų� �޿��� 3000�̻��� ����� ���, �̸�, ����, �μ��ڵ� ���
    SELECT EMPNO, ENAME, JOB, MGR FROM EMP WHERE JOB='SALESMAN' OR SAL>3000;

--12. �޿��� 2500�̻��̰� ������ MANAGER�� ����� ���, �̸�, ����, �޿� ���
    SELECT EMPNO, ENAME, JOB, SAL FROM EMP WHERE SAL > 2500 AND JOB='MANAGER';
 
--13.��ename�� XXX �����̰� ������ XX�١� ��Ÿ�Ϸ� ��� ���(������ SAL*12+COMM)
    SELECT ENAME || '��(��) ' || JOB || '�����̰� ������' || (SAL*12+NVL(COMM, 0)) ||'��' MESSAGE FROM EMP;







-- 8. SQL������ (BETWEEN, IN, LIKE, IS NULL)
 -- (1) BETWEEN A AND B : A���� B���� (A, B ����. A<B)
  -- ex. �޿��� 1500�̻��̰� 3000������ ����� ���, �̸�, �޿� ���
    SELECT EMPNO, ENAME, SAL FROM EMP WHERE SAL>1500 AND SAL<3000;
    SELECT EMPNO, ENMAE, SAL FROM EMP WHERE SAL BETWEEN 1500 AND 3000;
    SELECT EMPNO, ENAME, SAL FROM EMP WHERE SAL BETWEEN 3000 AND 1500; --�Ұ�
     -- ex. �޿��� 1500�̸�, 3000�ʰ��� ����� ��� �ʵ�
    SELECT * FROM EMP WHERE SAL NOT BETWEEN 1500 AND 3000;
     -- ex. �̸��� 'A', 'B', 'C'�� �����ϴ� ������ ��� �ʵ�
    SELECT * FROM EMP WHERE ENAME BETWEEN 'A' AND 'D' AND ENAME != 'D';
     -- ex. 82�⵵�� �Ի��� ������ ��� �ʵ�
    SELECT * FROM EMP WHERE HIREDATE BETWEEN '82/01/01' AND '82/12/31';

    -- (2) IN
     -- ex. �μ���ȣ��(DEPTNO)�� 10, 20, 40�� �μ��� ������ ��� �ʵ�
    SELECT * FROM EMP WHERE DEPTNO=10 OR DEPTNO=20 OR DEPTNO=40;
    SELECT * FROM EMP WHERE DEPTNO IN (10,20,40);
     -- ex. �μ���ȣ�� 10,20,40�� �μ��� ������ ������ ��� �ʵ�
     SELECT * FROM EMP WHERE DEPTNO!=10 AND DEPTNO!=20 AND DEPTNO!=40;
     SELECT * FROM EMP WHERE DEPTNO NOT IN (10, 20, 40);
     -- ex. ���(EMPNO)�� 7902, 7788, 7566�� ����� ��� ����
    SELECT * FROM EMP WHERE EMPNO IN (7902, 7788, 7566);
    
    -- (3) LIKE ���� : %(0�����̻�), _(�ѱ����̻�)�� ������ ����
     -- ex. �̸��� M���� �����ϴ� ����� ��� �ʵ� : M, MA, MXXXX
    SELECT * FROM EMP WHERE ENAME LIKE 'M%';
    -- ex. �̸��� M�� ���� ����� ��� �ʵ�
    SELECT * FROM EMP WHERE ENAME LIKE '%M%'; -- M   ~M   M~  ~M~
    -- ex. �̸��� N�� ���ų� JOB�� N�� ���� ����� ��� �ʵ�
    SELECT * FROM EMP WHERE ENAME LIKE '%N%' OR JOB LIKE '%N%';
    -- ex. �̸��� 'S'�� ������ ����� ��� �ʵ�
    SELECT * FROM EMP WHERE ENAME LIKE '%S';
    -- ex. SAL�� 5�� ������ ����� ��� �ʵ�
    SELECT * FROM EMP WHERE SAL LIKE '%5';
    -- ex. 82�⵵�� �Ի��� ����� ��� �ʵ�
    SELECT * FROM EMP WHERE HIREDATE LIKE '82/%';
    SELECT * FROM EMP WHERE TO_CHAR(HIREDATE, 'RR/MM/DD') LIKE '82/__/__';
    -- ex. 1���� �Ի��� ����� ��� �ʵ�
    SELECT * FROM EMP WHERE TO_CHAR(HIREDATE, 'RR/MM/DD') LIKE '%/01/%';
    
    -- (4) IS NULL (NULL������ �˻��� ��)
     -- ex. �󿩱�(COMM)�� ���� ���(COMM�� NULL, 0)�� ��� �ʵ�
     SELECT * FROM EMP WHERE COMM IS NULL OR COMM = 0;
     -- ex. �󿩱��� �ִ� ���(COMM�� NULL�� �ƴϰ� 0�� �ƴ�)�� ��� �ʵ�
     SELECT * FROM EMP WHERE COMM IS NOT NULL AND COMM!=0;
     --SELECT * FROM EMP WHERE COMM NOT IS NULL; -- �Ұ�
     
-- 9. ���� (��������, ��������) ; ORDER BY ��
SELECT ENAME, SAL, HIREDATE FROM EMP ORDER BY SAL; -- �޿� �������� ����
SELECT ENAME, SAL, HIREDATE FROM EMP ORDER BY SAL DESC; -- �޿� �������� ����
SELECT ENMAE, SAL, HIREDATE FROM EMP ORDER BY SAL DESC, HIREDATE DESC;
                       -- �޿� �������� ����, �޿��� ���� ��� �ֽ� �Ի��� ��
SELECT ENMAE, SAL, HIREDATE FROM EMP ORDER BY SAL DESC, HIREDATE DESC;
                       -- �޿� �������� ����, �޿��� ���� ��� �Ի� ��
SELECT ENAME, SAL, HIREDATE FROM EMP ORDER BY ENAME; -- �̸� �������� ����(ABC��)
SELECT ENAME, SAL, HIREDATE FROM EMP ORDER BY HIREDATE; -- �Ի��� �������� ����
SELECT ENAME, SAL, HIREDATE FROM EMP ORDER BY HIREDATE; -- �Ի��� �������� ����(�ֽż�)

-- =============================================================
--1.	EMP ���̺��� sal�� 3000�̻��� ����� empno, ename, job, sal�� ���
SELECT EMPNO, ENAME, JOB, SAL FROM EMP WHERE SAL > 3000 ;

--2.	EMP ���̺��� empno�� 7788�� ����� ename�� deptno�� ���
SELECT ENAME, DEPTNO FROM EMP WHERE EMPNO = 7788; 

--3.	������ 24000�̻��� ���, �̸�, �޿� ��� (�޿�������)
SELECT EMPNO, ENAME, SAL FROM EMP WHERE SAL*12 > 24000;
SELECT * FROM EMP;
--4.	DLQ������ 1981�� 2�� 20�� 1981�� 5�� 1�� ���̿� �Ի��� ����� �����, ��å, �Ի����� ��� (�� hiredate ������ ���)
SELECT ENAME, JOB, HIREDATE FROM EMP WHERE HIREDATE BETWEEN '81/02/20' AND '81/05/01' ORDER BY HIREDATE;

--5.	deptno�� 10,20�� ����� ��� ������ ��� (�� ename������ ����)
SELECT * FROM EMP WHERE DEPTNO IN(10, 20) ORDER BY ENAME;

--6.	sal�� 1500�̻��̰� deptno�� 10,30�� ����� ename�� sal�� ���
-- (�� HEADING�� employee�� Monthly Salary�� ���)
SELECT ENAME, SAL FROM EMP WHERE SAL > 1500 AND DEPTNO IN(10, 30);

--7.	hiredate�� 1982���� ����� ��� ������ ���
SELECT * FROM EMP WHERE HIREDATE LIKE '(82/%/%)';

--8.	�̸��� ù�ڰ� C����  P�� �����ϴ� ����� �̸�, �޿� �̸��� ����
SELECT ENAME, SAL FROM EMP WHERE ENAME LIKE 'C%' ORDER BY ENAME;

--9.	comm�� sal���� 10%�� ���� ��� ����� ���Ͽ� �̸�, �޿�, �󿩱��� 
--����ϴ� SELECT ���� �ۼ�
SELECT ENAME, SAL, COMM FROM EMP WHERE COMM>SAL+(*1.1);

--10.	job�� CLERK�̰ų� ANALYST�̰� sal�� 1000,3000,5000�� �ƴ� ��� ����� ������ ���
SELECT * FROM EMP WHERE JOB = 'CLERK' OR JOB = 'ANALYST' AND SAL NOT IN(1000, 3000, 5000);

--11.	ename�� L�� �� �ڰ� �ְ� deptno�� 30�̰ų� �Ǵ� mgr�� 7782�� ����� 
--��� ������ ����ϴ� SELECT ���� �ۼ��Ͽ���.
SELECT * FROM EMP WHERE ENAME LIKE 'LL' AND DEPTNO = 30 OR MGR = 7782;
SELECT * FROM EMP;
--12.	�Ի����� 81�⵵�� ������ ���,�����, �Ի���, ����, �޿��� ���
SELECT EMPNO, ENAME, HIREDATE, JOB, SAL FROM EMP WHERE HIREDATE LIKE '81/%%';

--13.	�Ի�����81���̰� ������ 'SALESMAN'�� �ƴ� ������ ���, �����, �Ի���, 
-- ����, �޿��� �˻��Ͻÿ�.
SELECT EMPNO, ENAME, HIREDATE, JOB, SAL FROM EMP WHERE HIREDATE LIKE '81/%%' AND JOB != 'SALESMAN';

--14.	���, �����, �Ի���, ����, �޿��� �޿��� ���� ������ �����ϰ�, 
-- �޿��� ������ �Ի����� ���� ������� �����Ͻÿ�.
SELECT EMPNO, ENAME, HIREDATE, JOB, SAL FROM EMP ORDER BY SAL, HIREDATE;

--15.	������� �� ��° ���ĺ��� 'N'�� ����� ���, ������� �˻��Ͻÿ�
SELECT EMPNO, ENAME FROM EMP WHERE ENAME LIKE '__N%';

--16.	����� 'A'�� �� ����� ���, ������� ���
SELECT EMPNO, ENAME FROM EMP WHERE ENAME LIKE '%A%';

--17.	����(SAL*12)�� 35000 �̻��� ���, �����, ������ �˻� �Ͻÿ�.
SELECT EMPNO, ENAME, SAL FROM EMP WHERE (SAL*12) > 35000 ;
