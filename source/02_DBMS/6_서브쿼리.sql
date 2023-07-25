-- [VI] Sub Query : ���� query(SQL��)�ȿ� query(SQL��)�� ����
-- 1. ���� ���� ����
 -- ���������� �ʿ��� ex. �޿��� ���� ���� �޴� ����� ��� ����
 SELECT MAX(SAL) FROM EMP; -- ��������
 SELECT * FROM EMP WHERE SAL = (SELECT MAX(SAL) FROM EMP); -- ���� ����
 
  -- ���������� ����(1)������ ��������(���������� �������� ������) : = > <= < <= !=
    --ex. SCOTT�� ������ �μ����� �ٹ��ϴ� ����� �̸�
    SELECT DEPTNO FROM EMP WHERE ENAME='SCOTT'; -- ������ ��������
    SELECT ENAME, SAL
     FROM EMP
     WHERE DEPTNO = (SELECT DEPTNO FROM EMP WHERE ENAME='SCOTT')
        AND ENAME <> 'SCOTT'; -- ��������
    -- ���������� ����<2>������ ��������(���������� �������� 2���̻�) : IN, > ALL, >ANY(SOME), EXISTS
     -- ex. SCOTT�̳� KING�� ������ �μ����� �ٹ��ϴ� ����� �̸�, �޿�
     SELECT DEPTNO FROM EMP WHERE ENAME IN ('SCOTT', 'KING'); -- ������ �������� 10,20
     SELECT ENAME, SAL
      FROM EMP
      WHERE DEPTNO IN (SELECT DEPTNO FROM EMP WHERE ENAME IN ('SCOTT', 'KING')); -- ��������
      WHERE DEPTNO = (SELECT DEPTNO FROM EMP WHERE ENAME IN ('SCOTT', 'KING')); -- ��������

-- 2. ������ ��������
 -- ex. SCOTT�� ������ �ٹ������� �ٹ��ϴ� ����� ��� ����
  -- ������ �߰�(DALLAS 50������, 50���μ��� �ٹ��ϴ� ȫ�浿 ���)
  INSERT INTO DEPT VALUES (50, 'IT', 'DALLAS');
  INSERT INTO EMP (EMPNO, ENAME, DEPTNO) VALUES (8000, 'ȫ�浿', 50);
  SELECT * FROM DEPT;
  SELECT * FROM EMP;
 SELECT LOC 
  FROM EMP E, DEPT D
  WHERE E.DEPTNO=D.DEPTNO AND ENAME='SCOTT'; -- ��������
 SELECT E.*, DNAME, LOC
  FROM EMP E, DEPT D
  WHERE E.DEPTNO=D.DEPTNO AND LOC=(SELECT LOC 
                                    FROM EMP E, DEPT D
                                    WHERE E.DEPTNO=D.DEPTNO AND ENAME='SCOTT')
                         AND ENAME <> 'SCOTT'; --��������

 ROLLBACK; -- DML(�߰�, ����, ����, �˻�) ��ɾ� ���  
 -- ex2. �����Ի������̸��� �����Ի���
 SELECT MIN(HIREDATE) FROM EMP; -- ��������(�����Ի���)
 SELECT ENAME, HIREDATE FROM EMP WHERE HIREDATE = (SELECT MIN(HIREDATE) FROM EMP); -- ��������
 -- ex3. �ֱ��Ի������̸��� �ֱ��Ի���
 SELECT ENAME, HIREDATE FROM EMP WHERE HIREDATE = (SELECT MAX(HIREDATE) FROM EMP); -- ��������
 -- ex4. �����Ի������̸��� �����Ի���, �ֱ��Ի������̸��� �ֱ��Ի���
 SELECT E1.ENAME, E1.HIREDATE, E2.ENAME, E2.HIREDATE
  FROM EMP E1, EMP E2
  WHERE E1.HIREDATE = (SELECT MIN(HIREDATE) FROM EMP) AND
        E2.HIREDATE = (SELECT MAX(HIREDATE) FROM EMP);
        
 SELECT 
  (SELECT ENAME FROM EMP WHERE HIREDATE=(SELECT MIN(HIREDATE) FROM EMP) ) �����Ի���,
  (SELECT MIN(HIREDATE) FROM EMP) �����Ի���,
  (SELECT ENAME FROM EMP WHERE HIREDATE=(SELECT MAX(HIREDATE) FROM EMP) ) �ֱ��Ի���,
  (SELECT MAX(HIREDATE) FROM EMP) �ֱ��Ի���
 FROM DUAL; 
 
 -- ex5. SCOTT�� ���� �μ��� �ٹ��ϴ� ������� �޿���
 SELECT DEPTNO FROM EMP WHERE ENAME='SCOTT'; -- ��������
 SELECT SUM(SAL) FROM EMP
  WHERE DEPTNO = (SELECT DEPTNO FROM EMP WHERE ENAME='SCOTT'); -- ��������

 -- ex6. SCOTT�� ������ JOB�� ���� ����� ��� �ʵ�(����)
 SELECT JOB FROM EMP WHERE ENAME='SCOTT'; -- ��������
 SELECT * FROM EMP WHERE JOB = (SELECT JOB FROM EMP WHERE ENAME='SCOTT'); -- ��������
 -- ex7. DALLAS�� �ٹ��ϴ� ����� �̸��� �μ���ȣ (��������, JOIN)
 SELECT DEPTNO FROM DEPT WHERE LOC='DALLAS'; -- ������ ��������
 SELECT ENAME, DEPTNO FROM EMP WHERE DEPTNO = ( SELECT DEPTNO FROM DEPT WHERE LOC='DALLAS'; -- ��������
 SELECT ENAME, E.DEPTNO FROM EMP E, DEPT D WHERE E.DEPTNO=D.DEPTNO AND LOC='DALLAS'; -- JOIN �̿�
 -- ex8. 'KING'�� ���ӻ���� ����� �̸��� �޿� (��������, SELF-JOIN)
 SELECT EMPNO FROM EMP WHERE ENAME='KING'; -- ��������
 SELECT ENAME, SAL FROM EMP WHERE MGR = (SELECT EMPNO FROM EMP WHERE ENAME='KING'); -- ��������
 SELECT W.ENAME, W.SAL
  FROM EMP W, EMP M
  WHERE W.MGR = M. EMPNO AND M.ENAME='KING'; -- SELF-JOIN�̿�
 -- ex9. ��ձ޿� ���Ϸ� �޴� ����� �̸��� �޿��� ���
 SELECT ENAME, SAL FROM EMP WHERE SAL <= (SELECT AVG(SAL) FROM EMP);
 -- ex10. ��ձ޿� ���Ϸ� �޴� ����� �̸�, �޿�, ��ձ޿�(�Ҽ���1�ڸ��ݿø�)�� ���
 SELECT ENAME, SAL, ROUND((SELECT AVG(SAL) FROM EMP), 1)
  FROM EMP
  WHERE SAL <= (SELECT AVG(SAL) FROM EMP);
 -- ex11. ��ձ޿� ���Ϸ� �޴� ����� �̸�, �޿�, ��ձ޿����� ����(�Ҽ��� 1�ڸ� �ݿø�)�� ���
 SELECT ENAME, SAL, ROUND((SELECT AVG(SAL) FROM EMP)-SAL, 1) DIFF
  FROM EMP
  WHERE SAL <= (SELECT AVG(SAL) FROM EMP);
 -- ������ ���߿� ��������
 -- 'SCOTT'�� JOB�� �μ���ȣ�� ���� ������ ��� �ʵ� ���
 SELECT JOB, DEPTNO FROM EMP WHERE ENAME='SCOTT'; -- ���߿� ��������
 SELECT * FROM EMP
  WHERE (JOB, DEPTNO) = ( SELECT JOB, DEPTNO FROM EMP WHERE ENAME='SCOTT') AND ENAME <> 'SCOTT';
 
-- 3. �����༭������ : IN, ALL, ANY(=SOME), EXISTS

--=====================================================================
-- �� �� ��������
--1. ������̺��� ���� ���� �Ի��� ����� �̸�, �޿�, �Ի���
SELECT ENAME, SAL, HIREDATE
 FROM EMP
 WHERE HIREDATE = (SELECT MIN(HIREDATE) FROM EMP);

-- 2. ȸ�翡�� ���� �޿��� ���� ����� �̸�, �޿�
SELECT ENAME, SAL
 FROM EMP
 WHERE SAL = (SELECT MIN(SAL) FROM EMP);

-- 3. ȸ�� ��պ��� �޿��� ���� �޴� ����� �̸�, �޿�, �μ��ڵ�
SELECT ENAME, SAL, DEPTNO
 FROM EMP
 WHERE SAL > (SELECT AVG(SAL) FROM EMP);

--4. ȸ�� ��� ������ �޿��� �޴� ����� �̸�, �޿�, �μ���
SELECT ENAME, SAL, DNAME
 FROM EMP E, DEPT D
 WHERE E.DEPTNO=D.DEPTNO 
    AND SAL < (SELECT AVG(SAL) FROM EMP);

--5. SCOTT���� ���� �Ի��� ����� �̸�, �޿�, �Ի���, �޿� ���
SELECT ENAME, SAL, HIREDATE, GRADE
 FROM EMP E, SALGRADE S
 WHERE SAL BETWEEN LOSAL AND HISAL 
    AND HIREDATE < (SELECT HIREDATE FROM EMP WHERE ENAME='SCOTT');

--6. 5��(SCOTT���� ���� �Ի��� ����� �̸�, �޿�, �Ի���, �޿� ���)�� �μ��� �߰��ϰ� �޿��� ū �� ����
SELECT ENAME, SAL, HIREDATE, GRADE, DNAME
 FROM EMP E, SALGRADE S, DEPT D
 WHERE E.DEPTNO=D.DEPTNO 
    AND SAL BETWEEN LOSAL AND HISAL 
    AND HIREDATE < (SELECT HIREDATE FROM EMP WHERE ENAME='SCOTT')
 ORDER BY SAL DESC;

--7. BLAKE ���� �޿��� ���� ������� ���, �̸�, �޿�
SELECT EMPNO, ENAME, SAL
 FROM EMP
 WHERE SAL > (SELECT SAL FROM EMP WHERE ENAME = 'BLAKE');

--8. MILLER���� �ʰ� �Ի��� ����� ���, �̸�, �Ի���
SELECT EMPNO, ENAME, HIREDATE
 FROM EMP
 WHERE HIREDATE > (SELECT HIREDATE FROM EMP WHERE ENAME = 'MILLER');

--9. �����ü ��� �޿����� �޿��� ���� ������� ���, �̸�, �޿�
SELECT EMPNO, ENAME, SAL
 FROM EMP
 WHERE SAL > (SELECT AVG(SAL) FROM EMP);

--10. CLARK�� ���� �μ���ȣ�̸�, ����� 7698�� ������ �޿����� ���� �޿��� �޴� ����� ���, �̸�, �޿�
SELECT EMPNO, ENAME, SAL
 FROM EMP
 WHERE SAL > (SELECT SAL FROM EMP WHERE EMPNO = 7698)
 AND DEPTNO = (SELECT DEPTNO FROM EMP WHERE ENAME = 'CLARK');

--11.  �����ȭ. CLARK�� ���� �μ����̸�, ����� 7698�� ������ �޿����� ���� �޿��� �޴� ����� ���, �̸�, �޿�
SELECT EMPNO, ENAME, SAL
 FROM EMP E, DEPT D
 WHERE E.DEPTNO = D.DEPTNO
    AND SAL > (SELECT SAL FROM EMP WHERE EMPNO = 7698)
    AND DNAME = (SELECT DNAME FROM EMP E, DEPT D WHERE E.DEPTNO=D.DEPTNO 
               AND ENAME = 'CLARK');
             
--12. BLAKE�� ���� �μ��� �ִ� ��� ����� �̸��� �Ի�����
SELECT ENAME, HIREDATE
 FROM EMP
 WHERE DEPTNO = (SELECT DEPTNO FROM EMP WHERE ENAME = 'BLAKE');

--13. ��� �޿� �̻��� �޴� ��� �������� ���ؼ� �����ȣ�� �̸� �� �޿��� ���� ������ ���)
SELECT EMPNO, ENAME
 FROM EMP
 WHERE SAL > (SELECT AVG(SAL) FROM EMP)
 ORDER BY SAL DESC;


