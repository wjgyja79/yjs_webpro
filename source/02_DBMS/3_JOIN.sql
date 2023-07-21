-- [III] JOIN ; 2�� �̻��� ���̺��� �����Ͽ� �����͸� �˻��ϴ� ���
SELECT * FROM EMP WHERE ENAME = 'SCOTT';
SELECT * FROM DEPT; -- 4��
-- CROSS JOIN (FROM ���� ���̺��� 2���̻�)
SELECT * FROM EMP, DEPT WHERE ENMAE='SCOTT';

-- 1. EQUI JOIN (��������) : �����ʵ�(DEPTNO)�� ���� ��ġ�Ǵ� ���Ǹ� JOIN
SELECT * FROM EMP, DEPT 
 WHERE EMP.DEPTNO=DEPT.DEPTNO AND ENAME='SCOTT' ;
SELECT * FROM EMP, DEPT
 WHERE EMP.DEPTNO=DEPT.DEPTNO;
SELECT EMPNO "NO", ENAME, JOB, MGR, HIREDATE, SAL, COMM, E.DEPTNO, DNAME, LOC
 FROM EMP E, DEPT D -- ���̺��� ��Ī�� ���� ��� �����̺� ���� ����� �� ���� ��Ī�� ���
 WHERE E.DEPTNO = D.DEPTNO
 ORDER BY EMPNO;
 
 -- ex. �޿��� 2000�̻��� ������ �̸�, ��å, �޿�, �μ���, �ٹ���, �μ���ȣ ���
 SELECT ENAME, JOB, SAL, DNAME, LOC, E.DEPTNO
    FROM EMP E, DEPT D
    WHERE E.DEPTNO = D.DEPTNO AND SAL>=2000;

 -- ex. 20�� �μ��� ������ �̸�, �μ���ȣ, �ٹ��� ���
 SELECT ENAME, E.DEPTNO, LOC
    FROM EMP E, DEPT D
    WHERE E.DEPTNO=D.DEPTNO AND E.DEPTNO=20;

 -- ex. �ٹ���(LOC)�� CHICAGO�� ����� �̸�, ����, �޿�, �μ���ȣ�� ���
 SELECT ENAME, JOB, SAL, D.DEPTNO
    FROM EMP E, DEPT D
    WHERE E.DEPTNO=D.DEPTNO AND LOC='CHICAGO';

 -- ex. �μ���ȣ�� 10�̰ų� 20�� ����� �̸�, ����, �ٹ��� (�޿���)
 SELECT ENAME, JOB, LOC
    FROM EMP E, DEPT D
    WHERE E.DEPTNO=D.DEPTNO AND E.DEPTNO IN (10, 20)
    ORDER BY SAL;
    
 -- ex. JOB�� SALESMAN�̰ų� MANAGER�� ����� �̸�, �޿�, ��, ����(SAL+COMM)*12, �μ���, �ٹ���(������ ū��)
 SELECT ENAME, SAL, COMM, (SAL+NVL(COMM, 0))*12 ANNUAL, DNAME, LOC
    FROM EMP E, DEPT D
    WHERE E.DEPTNO=D.DEPTNO AND JOB IN ('SALESMAN', 'MANAGER');
    ORDER BY ANNUAL DESC;

 -- ex. COMM�� NULL�̰� SAL�� 1200�̻��� ����� �̸�, �޿�, �Ի���, �μ���ȣ, �μ��� (�μ��� ��, �޿� ū �� ����)
 SELECT ENAME, SAL, HIREDATE, E.DEPTNO, DNAME
    FROM EMP E, DEPT D
    WHERE E.DEPTNO=D.DEPTNO AND COMM IS NOT NULL AND SAL>=1200
    ORDER BY DNAME, SAL DESC;

--==========================================================    
--    ?	źź ������
--��	���忡�� �ٹ��ϴ� ����� �̸��� �޿��� ����Ͻÿ�
 SELECT ENAME, SAL
    FROM EMP E, DEPT D
    WHERE LOC = 'NEW YORK';

--��	ACCOUNTING �μ� �Ҽ� ����� �̸��� �Ի����� ����Ͻÿ�
 SELECT ENAME, HIREDATE
    FROM EMP E, DEPT D
    WHERE DNAME = 'ACCOUNTING';
    
--��	������ MANAGER�� ����� �̸�, �μ����� ����Ͻÿ�
 SELECT ENAME, JOB
    FROM EMP E, DEPT D
    WHERE JOB = 'MANAGER';
    
--��	Comm�� null�� �ƴ� ����� �̸�, �޿�, �μ��ڵ�, �ٹ����� ����Ͻÿ�.
 SELECT ENAME, SAL, E.DEPTNO, LOC
    FROM EMP E, DEPT D
    WHERE COMM IS NOT NULL;

--  �� �������� 7������
--==============================================================--  PART2
--1. ��� ����� ���� �̸�, �μ���ȣ, �μ����� ����ϴ� SELECT ������ �ۼ��Ͽ���.
 SELECT ENAME, E.DEPTNO, DNAME
    FROM EMP E, DEPT D
    WHERE E.DEPTNO=D.DEPTNO;

--2. NEW YORK���� �ٹ��ϰ� �ִ� ����� ���Ͽ� �̸�, ����, �޿�, �μ����� ���
 SELECT ENAME, JOB, SAL, DNAME
    FROM EMP E, DEPT D
    WHERE LOC = 'NEW YORK';

--3. ���ʽ��� �޴� ����� ���Ͽ� �̸�,�μ���,��ġ�� ���
 SELECT ENAME, DNAME, LOC
    FROM EMP E, DEPT D
    WHERE COMM > 0 ;

--4. �̸� �� L�ڰ� �ִ� ����� ���Ͽ� �̸�,����,�μ���,��ġ�� ���
 SELECT ENAME, JOB, DNAME, LOC
    FROM EMP E, DEPT D
    WHERE E.DEPTNO=D.DEPTNO AND ENAME LIKE '%L%';

--5. ���, �����, �μ��ڵ�, �μ����� �˻��϶�. ������������ ������������
 SELECT EMPNO, ENAME, E.DEPTNO, DNAME
    FROM EMP E, DEPT D
    WHERE E.DEPTNO=D.DEPTNO
    ORDER BY ENAME;
    
--6. ���, �����, �޿�, �μ����� �˻��϶�. 
    --�� �޿��� 2000�̻��� ����� ���Ͽ� �޿��� �������� ������������ �����Ͻÿ�
 SELECT EMPNO, ENAME, SAL, DNAME
    FROM EMP E, DEPT D
    WHERE SAL >= 2000
    ORDER BY SAL DESC;

--7. ���, �����, ����, �޿�, �μ����� �˻��Ͻÿ�. �� ������ MANAGER�̸� �޿��� 2500�̻���
-- ����� ���Ͽ� ����� �������� ������������ �����Ͻÿ�.
 SELECT EMPNO, ENAME, JOB, SAL, DNAME
    FROM EMP E, DEPT D
    WHERE JOB = 'MANAGER' AND SAL >= 2500
    ORDER BY EMPNO;
 
 
    
-- ? 2. NON-EQUI JOIN
SELECT * FROM EMP WHERE ENAME = 'SCOTT'; -- SAL�� 3000
SELECT * FROM SALGRAD;  -- �޿� ��� ����
SELECT * FROM EMP, SALGRADE
    WHERE ENAME = 'SCOTT'; -- CROSS JOIN (EMP�� 1��*SALGRADE�� 5�� = 5��)
SELECT * FROM EMP, SALGRADE
    WHERE SAL  BETWEEN LOSAL AND HISAL AND ENAME='SCOTT';
    -- ex. ��� ����� ���, �̸�, ��å, �����, �޿�, �޿����(1���, 2���, ...)
    SELECT EMPNO, ENAME, JOB, MGR, SAL, GRADE||'���' GRADE
        FROM EMP, SALGRADE;
        WHERE SAL BETWEEN LOSAL AND HISAL;
    SELECT EMPNO, ENAME, JOB, MGR, SAL, GRADE||'���' GRADE
        FROM EMP, SALGRADE;
        WHERE SAL>=LOSAL AND SAL<=HISAL;
    
-- źź1. COMM�� NULL �ƴ� ��� ���.
    SELECT ENAME, SAL, GRADE, E.DEPTNO, DNAME, LOC
        FROM EMP E, DEPT D, SALGRADE
        WHERE E.DEPTNO=D.DEPTNO AND SAL BETWEEN LOSAL AND HISAL AND COMM IS NOT NULL;
        
    
-- =======================================================================
--?	źź������ ��������
--��	Comm�� null�� �ƴ� ����� �̸�, �޿�, ���, �μ���ȣ, �μ��̸�, �ٹ����� ����Ͻÿ�.
SELECT ENAME, SAL, SALGRADE, E.DEPTNO, DEPT, LOC FROM EMP E, DEPT D
 WHERE E.DEPTNO=D.DEPTNO AND SAL BETWEEN LOSAL AND HISAL AND COMM IS NOT NULL;

---	�̸�, �޿�, �Ի���, �޿����
SELECT ENAME, SAL, HIREDATE, GRADE
 FROM EMP, SALGRADE
  WHERE SAL BETWEEN LOSAL AND HISAL;
  
---	�̸�, �޿�, �޿����, ����, �μ���, �μ��� ���, �μ��� ������ ������. ����=(sal+comm)*12 comm�� null�̸� 0
SELECT ENAME, SAL, GRADE, (SAL+NVL(COMM, 0))*12 ANNUAL_SAL, DNAME
 FROM EMP E, DEPT D, SALGRADE
  WHERE E.DEPTNO=D.DEPTNO AND SAL BETWEEN LOSAL AND HISAL
   ORDER BY DNAME, SAL;
 
---	�̸�, ����, �޿�, ���, �μ��ڵ�, �μ��� ���. �޿��� 1000~3000����. �������� : �μ���, �μ������� ������, ���������� �޿� ū��
SELECT ENAME, JOB, SAL, GRADE, E.DEPTNO, DNAME
 FROM EMP E, DEPT D, SALGRADE
  WHERE E.DEPTNO=D.DEPTNO AND SAL BETWEEN LOSAL AND HISAL
        AND SAL BETWEEN 1000 AND 3000
--  >= 1000 AND SAL =< 3000
   ORDER BY DEPTNO, JOB, SAL;
   
---	�̸�, �޿�, ���, �Ի���, �ٹ���. 81�⿡ �Ի��� ���. ��� ū��
SELECT ENAME, SAL, GRADE, HIREDATE, LOC
 FROM EMP E, DEPT D, SALGRADE
  WHERE E.DEPTNO=D.DEPTNO AND SAL BETWEEN LOSAL AND HISAL
   AND TO_CHAR(HIREDATE, 'RR') = '81'
--  HIREDATE = '81/%%'
   ORDER BY GRADE;

--=========================================
-- 3. SELF JOIN
SELECT EMPNO, ENAME, MGR FROM EMP WHERE ENAME='SMITH'; -- SMITH MGR�� 7902
SELECT EMPNO, ENAME FROM EMP WHERE EMPNO=7902;

SELECT WORKER.EMPNO, WORKER.ENAME, WORKER.MGR, MANAGER.EMPNO, MANAGER.ENAME
 FROM EMP WORKER, EMP MANAGER
 WHERE WORKER.ENAME='SMITH' AND WORKER.MGR=MANAGER.EMPNO;
-- ex. ��� ����� ���, �̸�, ����ǻ��(MGR), ����� �̸�
SELECT W.EMPNO, W.ENAME, W.MGR. E.ENAME
 FROM EMP W, EMP M
 WHERE W.MGR=M.EMPNO; -- 13�� KING�� MGR�� NULL. EMPNO�� NULL�� ������ ����
 -- ex. 'SMITH�� ���� FORD��' �������� 13�� ���
 SELECT W.ENAME || '�� ���� ' || M.ENAME || '��' MESSAGE
  FROM EMP W, EMP M
  WHERE W.MGR=M.EMPNO;
  
  -- ============================================
--  �Ŵ����� KING�� ������� �̸��� ������ ����Ͻÿ�.
SELECT W.ENAME, W.JOB
 FROM EMP W, EMP M
 WHERE W.MGR=M.EMPNO AND M.ENAME='KING';
--SELECT WORKER.ENAME, WORKER.JOB
--FROM EMP WORKER, EMP MANAGER
--WHERE WORKER.MGR=MANAGER.EMPNO AND MANAGER.ENAME='KING';
--��	SCOTT�� ������ �μ���ȣ���� �ٹ��ϴ� ����� �̸��� ����Ͻÿ�
 SELECT * FROM EMP;
 

--��	SCOTT�� ������ �ٹ������� �ٹ��ϴ� ����� �̸��� ����Ͻÿ�(2�ܰ� ��������)
-- DEPT���̺� 50�μ��� �Է�(DALLAS�� �ٹ���)
 SELECT E1.ENAME, E1.DEPTNO, E2.ENAME, E2.DEPTNO
  FROM EMP E1, EMP E2
 WHERE E1.DEPTNO = E2.DEPTNO, E1.DEPTNO = 20;
  E1.ENAME<>E2.ENAME;
  
  SELECT E1.ENAME, E1.DEPNO, E2.ENAME, E2.DEPTNO
  FROM EMP E1, EMP E2
  WHERE E.DEPTNO=E2.DEPTNO AND E2.ENAME='SCOTT' AND E1.ENAME<>'SCOTT';
  
 --SELECT * FROM DEPT;
 --INSERT INTO DEPT VALUES (50, 'IT', 'DALLAS'); 
 
 -- EMP ���̺� 50�� �μ� ���� �Է� (��� : DALLAS�� �ٹ����� �μ���ȣ : 20, 50)
SELECT * FROM EMP;
INSERT INTO EMP VALUES (8000, 'ȫ�浿', NULL, NULL, NULL, 800, NULL, 50);
SELECT * FROM EMP WHERE DEPTNO=50;

SELECT * FROM EMP WHERE ENAME='SCOTT';
SELECT * FROM DEPT WHERE DEPTNO=20;
SELECT * FROM DEPT;

 SELECT E1.ENAME, E1.DEPTNO, E2.ENAME, E2.DEPTNO
  FROM EMP E1, EMP E2
 WHERE E1.DEPTNO = E2.DEPTNO, E1.DEPTNO = 50;
 
 SELECT E1.ENAME, D1.LOC, E2.ENAME, D2.LOC
  FROM EMP E1, DEPT D1, EMP E2, DEPT D2
   WHERE E1.DEPTNO=D1.DEPTNO AND E2.DEPTNO=D2.DEPTNO AND D1.LOC=D2.LOC AND E1.ENAME<>E2.ENAME
        AND E2.ENAME='SCOTT';
        
 -- ������ ���� ����(DEPT 50�� INSERT, EMP 8000�� ��� INSERT)
 ROLLBACK;
 
-- 4. OUTER JOIN : SELF JOIN�̳� EQUI JOIN �� ���ǿ� �������� �ʴ� ����� ��Ÿ���� ��
-- (1) SELF JOIN���� OUTER JOIN
SELECT W.ENAME, W.MGR, M.EMPNO, E.ENAME
 FROM EMP W, EMP M
 WHERE W.MGR = M.EMPNO(+) AND W.ENAME = 'KING';
SELECT W.ENAME, W.MGR, M.EMPNO, M.ENAME
 FROM EMP W, EMP M
 WHERE W.MGR(+)=M.EMPNO AND M.ENAME='SMITH'; --  ���ܻ���� ���
-- ex. ��� �����
SELECT W.ENAME, W.MGR, M.EMPNO, M.ENAME MANAGER
 FROM EMP W, EMP M
 WHERE W.MGR=M.EMPNO(+);
 -- ex. 'SMITH'�� ���� FORD��' ���� ��� 'KING�� ���� ����'
 SELECT W.ENAME || '�� ���� ' || NVL(M.ENAME, '��') || '��' MESSAGE
 FROM EMP W, EMP M
 WHERE W.MGR=M.EMPNO(+);
 -- ex.���ܻ��
 SELECT W.EMPNO, W.ENAME, W.MGR, M.EMPNO, W.ENAME
    FROM EMP W, EMP M
    WHERE W.MGR(+) = M.EMPNO AND W.EMPNO IS NULL;




-- (2) EQUI JOIN���� OUTER JOIN
SELECT * FROM EMP E, DEPT D WHERE D.DEPTNO=E.DEPTNO;
SELECT * FROM EMP; -- 14��
SELECT * FROM DEPT; --4��
SELECT * FROM EMP E, DEPT D WHERE E.DEPTNO = D.DEPTNO; -- 40 �μ� ��� �ȵ�
SELECT * FROM EMP E, DEPT D WHERE E.DEPTNO(+) = D.DEPTNO; -- 40 �μ� ���


-- �� <�� ��������> PART1
--1. �̸�, ���ӻ���
SELECT W.ENAME, M.ENAME
 FROM EMP W, EMP M
   WHERE W.MGR=M.EMPNO;
  
--2. �̸�, �޿�, ����, ���ӻ���
SELECT W.ENAME, W.SAL, W.JOB, M.ENAME
 FROM EMP W, EMP M
   WHERE W.MGR=M.EMPNO;
 
--3. �̸�, �޿�, ����, ���ӻ��� . (��簡 ���� �������� ��ü ���� �� ���.
    --��簡 ���� �� '����'���� ���)
SELECT W.ENAME, W.SAL, W.JOB, NVL(M.ENAME, '����')
 FROM EMP W, EMP M
   WHERE W.MGR=M.EMPNO(+);

--4. �̸�, �޿�, �μ���, ���ӻ���
SELECT W.ENAME, W.SAL, DNAME, M.ENAME
 FROM EMP W, EMP M, DEPT D
   WHERE W.DEPTNO=D.DEPTNO AND W.MGR=M.EMPNO;
   
--5. �̸�, �޿�, �μ��ڵ�, �μ���, �ٹ���, ���ӻ���, (��簡 ���� �������� ��ü ���� �� ���)
SELECT W.ENAME, W.SAL, W.DEPTNO, DNAME, LOC, M.ENAME
 FROM EMP W, EMP M, DEPT D
   WHERE W.DEPTNO=D.DEPTNO AND W.MGR=M.EMPNO(+);
   
--6. �̸�, �޿�, ���, �μ���, ���ӻ���. �޿��� 2000�̻��� ���
SELECT W.ENAME, W.SAL, GRADE, DNAME, M.ENAME
 FROM EMP W, EMP M, DEPT D, SALGRADE
   WHERE W.MGR=M.EMPNO AND W.SAL >= 2000;
   
--7. �̸�, �޿�, ���, �μ���, ���ӻ���, (���ӻ�簡 ���� �������� ��ü���� �μ��� �� ����)
SELECT W.ENAME, W.SAL, GRADE, DNAME, M.ENAME
 FROM EMP W, EMP M, DEPT D, SALGRADE
   WHERE W.MGR=M.EMPNO(+) AND W.DEPTNO=D.DEPTNO AND W.SAL BETWEEN LOSAL AND HISAL
    ORDER BY D.DNAME;
   
--8. �̸�, �޿�, ���, �μ���, ����, ���ӻ���. ����=(�޿�+comm)*12 �� comm�� null�̸� 0
SELECT W.ENAME, W.SAL, GRADE, DNAME, (W.SAL+NVL(W.COMM, 0))*12, M.ENAME
 FROM EMP W, EMP M, DEPT D, SALGRADE S
   WHERE W.MGR=M.EMPNO AND W.DEPTNO=D.DEPTNO AND W.SAL BETWEEN LOSAL AND HISAL;

--9. 8���� �μ��� �� �μ��� ������ �޿��� ū �� ����
SELECT W.ENAME, W.SAL, GRADE, D.DNAME, (W.SAL+NVL(W.COMM, 0))*12, M.ENAME
 FROM EMP W, EMP M, DEPT D, SALGRADE
   WHERE W.MGR=M.EMPNO AND W.DEPTNO=D.DEPTNO AND W.SAL BETWEEN LOSAL AND HISAL
    ORDER BY D.DNAME, SAL;

--PART2   
--8. ���, �����, ����, �޿�, ����� �˻��Ͻÿ�. ��, �޿����� ������������ �����Ͻÿ�
SELECT W.EMPNO, W.ENAME, W.JOB, W.SAL, GRADE
 FROM EMP W, EMP M, DEPT D, SALGRADE S
   WHERE W.MGR=M.EMPNO
    ORDER BY W.SAL DESC;
    
--9. ������̺��� �����, ����� ��縦 �˻��Ͻÿ�(��簡 ���� �������� ��ü)
SELECT W.ENAME, M.ENAME
 FROM EMP W, EMP M
   WHERE W.MGR=M.EMPNO(+);
    
--10. �����, ����, ����� ������ �˻��Ͻÿ�
SELECT W.ENAME, M.ENAME, Z.ENAME
 FROM EMP W, EMP M, EMP Z
   WHERE W.MGR=M.EMPNO AND M.MGR = Z.EMPNO;

--11. ���� ������� ���� ��簡 ���� ��� ������ �̸��� ��µǵ��� �����Ͻÿ�
SELECT W.ENAME, M.ENAME, Z.ENAME
 FROM EMP W, EMP M, EMP Z
   WHERE W.MGR=M.EMPNO(+) AND M.MGR = Z.EMPNO(+);
  