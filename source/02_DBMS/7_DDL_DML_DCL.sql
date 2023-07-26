-- [VII] DDL, DML, DCL
-- SQL = DDL(���̺� ����, ���̺� ����, ���̺� ���� ����, ���̺��� ��� ������ ����) + 
--       DML(SELECT, INSERT, UPDATE, DELETE) + 
--       DCL(����ڰ��� ����, ����ڿ��� ���Ѻο�, ���ѹ�Ż, ����ڰ��� ����, Ʈ�����Ǹ�ɾ�)

-- DDL 
 -- 1. ���̺� ����(CREATE TABLE ���̺�� ...) : ���̺� ���� ����
 CREATE TABLE BOOK (
  BOOKID   NUMBER(4), -- BOOKID �ʵ��� Ÿ���� ����4�ڸ�
  BOOKNAME VARCHAR2(20), -- BOOKNAME �ʵ��� Ÿ���� ���� 20BYTE
  PUBLISHER VARCHAR2(20), -- PUBLISHER �ʵ��� Ÿ���� ���� 20BYTE
  RDATE     DATE,         -- RDATE �ʵ��� Ÿ���� DATE
  PRICE     NUMBER(7,2),   -- PRICE �ʵ��� Ÿ���� ���� ��ü 7�ڸ�. �Ҽ������ϴ� 2�ڸ�, �Ҽ����� 5�ڸ�
  PRIMARY KEY(BOOKID)     -- �������� : BOOKID�ʵ尡 PRIMARY KEY(��Ű) : UNIQUE, NOT NULL
);
SELECT * FROM BOOK;
DESC BOOK;
DROP TABLE BOOK; -- DELETE TABLE
CREATE TABLE BOOK(BOOKID   NUMBER(4), -- BOOKID �ʵ��� Ÿ���� ����4�ڸ�
  BOOKNAME VARCHAR2(20), -- BOOKNAME �ʵ��� Ÿ���� ���� 20BYTE
  PUBLISHER VARCHAR2(20), -- PUBLISHER �ʵ��� Ÿ���� ���� 20BYTE
  RDATE     DATE,         -- RDATE �ʵ��� Ÿ���� DATE
  PRICE     NUMBER(7,2));
 -- DEPT01 : DEPTNO(��2:PK), DNAME(����14), LOC(����13)
 CREATE TABLE DEPT01 (
    DEPTNO NUMBER(2)PRIMARY KEY,
    DNAME VARCHAR2(14),
    LOC   VARCHAR2(13)
 ); 
 SELECT * FROM DEPT01;
 -- EMP01 : EMPNO(��4:PK��Ű), ENAME(����10), SAL(��7,2), DEPTNO(��2:FK�ܷ�Ű)
 CREATE TABLE EMP01 (
  EMPNO NUMBER(4) PRIMARY KEY,
  ENAME VARCHAR2(10),
  SAL   NUMBER(7,2),
  DEPTNO NUMBER(2) REFERENCES DEPT01(DEPTNO)   
 );
 SELECT * FROM EMP01;
 
 -- ���������� �̿��� ���̺� ����
 CREATE TABLE EMP02
  AS
  SELECT * FROM EMP; -- �������� ����� EMP02 ���̺� ������ �����ͷ� ��(�������� ������)
 SELECT * FROM EMP02;
 CREATE TABLE EMP03
  AS
  SELECT EMPNO, ENAME, DEPTNO FROM EMP; -- EMP���̺��� EMPNO, ENAME, DEPTNO�� ������ �����Ͱ� EMP03
 SELECT * FROM EMP03;
 CREATE TABLE EMP04
  AS
  SELECT * FROM EMP WHERE DEPTNO=10; -- EMP���� 10�� �μ��� �����͸� �����ؼ� EMP04
 SELECT * FROM EMP04;
  -- EMP05 == EMP�� ������ ����(������ ���� X)
  CREATE TABLE EMP05
   AS
   SELECT * FROM EMP WHERE 1=0;
 SELECT * FROM EMP05;
 SELECT ROWNUM, EMPNO, ENAME FROM EMP; -- ROWNUM : ���̺��� ���� �о���� ����
 
-- 2. ���̺� �������� (ALTER TABLE ���̺�� ADD || MODIFY || DROP ~)
 -- (1) �ʵ��߰�(ADD)
 SELECT * FROM EMP03; -- EMPNO(����4), ENAME(����10), DEPTNO(��2)
 ALTER TABLE EMP03 ADD (JOB VARCHAR2(20), SAL NUMBER(7));
 SELECT * FROM EMP03; -- �߰��� �ʵ�� NULL �����ͷ� ä����
 -- (2) �ʵ���� (MODIFY)
 ALTER TABLE EMP03 MODIFY (EMPNO VARCHAR2(4)); -- ���� �����Ͱ� ����־� ���ڷθ� ���� ����(���ں��� ū ������θ� ���� ����)
 ALTER TABLE EMP03 MODIFY (EMPNO VARCHAR2(5)); 
 ALTER TABLE EMP03 MODIFY (JOB NUMBER(5)); -- NULL �ʵ�� ������� ���� ����
 SELECT MAX(LENGTH(ENAME)) FROM EMP03; -- EMP03�� ENAME�� 6���ڰ� �������
 ALTER TABLE EMP03 MODIFY (ENAME VARCHAR(6)); -- ���ڵ����͸� �ø��ų� ���̴µ��� ���� �����Ϳ� ���� ����
 -- (3) �ʵ� ���� (DROP)
 ALTER TABLE EMP03 DROP COLUMN JOB; -- JOB �ʵ� ����
 SELECT * FROM EMP03;
 ALTER TABLE EMP03 DROP COLUMN DEPTNO;
 
-- 3. ���̺� ���� (DROR TABLE ���̺��)
DROP TABLE EMP01;
SELECT * FROM EMP01;
DROP TABLE DEPT; -- EMP ���̺��� DEPT�� DEPTNO�� �����ϴ� ��� EMP���̺��� ������ �� DEPT�� ����

-- 4. ���̺��� ��� ���� ����(TRUNCATE TABLE ���̺��)
SELECT * FROM EMP03;
TRUNCATE TABLE EMP03; -- ROLLBACK �Ұ�

-- 5. ���̺���� (RENAME ���̺�� TO �ٲ����̺��)
SELECT * FROM EMP02;
RENAME EMP02 TO EMP2;
SELECT * FROM EMP2;
 
-- 6. ������ ��ųʸ�(�����ͺ��̽� �ڿ��� ȿ�������� �����ϱ� ���� �ý��� ���̺� : ���� �Ұ�)
--      VS
--  ������ ��ųʸ� ��(���ٰ���)�� ����
-- (1) USER_XXX : �� �������� �����ϰ� �ִ� ��ü(���̺�, ��������, ��, �ε���)
SELECT * FROM USER_TABLES;
SELECT * FROM USER_CONSTRAINTS;
SELECT * FROM USER_VIEWS;
SELECT * FROM USER_INDEXES;
-- (2) ALL_XXX : �� �������� ���ٰ����� ��ü(���̺�, ��������, ��, �ε���)
SELECT * FROM ALL_TABLES;
SELECT * FROM ALL_CONSTRAINTS;
SELECT * FROM ALL_VIEWS;
SELECT * FROM ALL_INDEXES;
-- (3) DBA_XXX : DBA���ѿ����� ���� ���� DBMS�� ��� ��ü(���̺�, ��������, ��, �ε���)
SELECT * FROM DBA_TABLES;
SELECT * FROM DBA_CONSTRAINTS;
SELECT * FROM DBA_VIEWS;
SELECT * FROM DBA_INDEXES;

-- DML
-- 1. INSERT INTO ���̺�� VALUES (��1, ��2, ...);
    --INSERT INTO ���̺�� (�ʵ�1, �ʵ�2, ..) VALUES (��1, ��2, ...);
SELECT * FROM DEPT01;
INSERT INTO DEPT01 VALUES (50, 'ACCOUNTING', 'SEOUL');
INSERT INTO DEPT01 VALUES (60, 'SALES', NULL); -- ��������� NULL �߰�
INSERT INTO DEPT01 (DEPTNO, DNAME, LOC) VALUES (70, 'RESEARCH', '���빮');
INSERT INTO DEPT01 (DEPTNO, DNAME) VALUES (80, 'IT'); -- ���������� NULL �߰�
SELECT * FROM DEPT01;
COMMIT; -- Ʈ������ ��ɾ� (DML��ɾ ����) : ������ ó���� ���� �� ����.
        -- Ʈ�����ǿ� �ִ� ��ɾ���� ����Ŭ�� �ݿ�
-- ���������� �̿��� INSERT
 -- DEPT���̺��� 10~30�μ��� DEPT01�� INSERT 
INSERT INTO DEPT01 SELECT * FROM DEPT WHERE DEPTNO BETWEEN 10 AND 30;
SELECT * FROM DEPT01;
ROLLBACK; -- �� Ʈ������ �۾��� ���

DROP TABLE SAM01;
CREATE TABLE SAM01 (
  EMPNO   NUMBER(4) PRIMARY KEY,
  ENAME VARCHAR2(10), 
  JOB VARCHAR2(9), 
  SAL     NUMBER(7,2), 
);
SELECT * FROM SAM01;

INSERT INTO SAM01 (EMPNO, ENAME, JOB, SAL) VALUES (7782, 'CLARK', 'MANAGER', 2450); 
INSERT INTO SAM01 (EMPNO, ENAME, JOB, SAL) VALUES (7839, 'KING', 'PRESIDENT', 5000); 
INSERT INTO SAM01 (EMPNO, ENAME, JOB, SAL) VALUES (7934, 'MILLER', 'CLERK', 1300); 
COMMIT; 


-- 2. UPDATE ���̺� SET �ʵ�1=��1, �ʵ�2=��2, ... [WHERE ����];
SELECT * FROM EMP01;
DROP TABLE EMP01;
CREATE TABLE EMP01 AS SELECT EMPNO, ENAME, SAL, HIREDATE, DEPTNO FROM EMP;
 -- ex. �μ���ȣ�� 30���� ����
 UPDATE EMP01 SET DEPTNO=30;
 SELECT * FROM EMP01;
 ROLLBACK;
 -- ��� ����(EMP01)�� �޿�(SAL)�� 10%�λ�
 UPDATE EMP01 SET SAL = SAL * 1.1;
 SELECT * FROM EMP01;
 -- ex. EMP01 : 10���μ� ������ �Ի����� ����, �μ���ȣ�� 30������ ����
 UPDATE EMP01 SET HIREDATE = SYSDATE, DEPTNO = 30 WHERE DEPTNO = 10 ;
 
 -- ex. �޿��� 3000�̻��� ����� �޿��� 10%�λ�
 UPDATE EMP01 SET SAL = SAL * 1.1 WHERE SAL >= 3000 ;
 
 -- ex. �ٹ����� 'DALLAS'�� ������ �޿��� 1000$ �λ�
 UPDATE EMP01 SET SAL = SAL + 1000 
  WHERE DEPTNO = (SELECT DEPTNO FROM DEPT WHERE LOC='DALLAS');
  ROLLBACK;

 -- ex. SCOTT ����� �μ���ȣ 20, ������ MANAGER�� ����  
 UPDATE EMP SET DEPTNO = 20, JOB = 'MANAGER' WHERE ENAME = 'SCOTT';
 ROLLBACK;

 -- ex. �޿��� 1500������ ������ �޿��� 1500���� ����
SELECT * FROM DEPT01;

 -- ex. ��� ����� �޿��� �Ի����� 'KING'�� �޿��� �Ի��� ����
 UPDATE EMP01 SET SAL = (SELECT SAL FROM EMP01 WHERE ENAME='KING'), 
                HIREDATE = (SELECT HIREDATE FROM EMP01 WHERE ENAME='KING');
  
