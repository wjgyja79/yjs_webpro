-- [V] �׷��Լ�(�����Լ�) : SUM, AVG, MIN, MAX, COUNT, STDDEV(ǥ������), VARIANCE(�л�)
SELECT MAX(SAL) FROM EMP;
SELECT DEPTNO, MAX(SAL) FROM EMP GROUP BY DEPTNO; -- �׷캰 �ִ밪
-- �ִ�޿��� �޴� ����� �̸��� �޿� -> VI.��������
SELECT ENAME, SAL FROM EMP WHERE SAL = (SELECT MAX(SAL) FROM EMP);

-- �׷��Լ� �ǽ�
SELECT ROUND (AVG(SAL), 2) FROM EMP;
SELECT AVG(SAL), SUM(SAL)/COUNT(SAL) FROM EMP;
SELECT SUM(COMM) FROM EMP; -- ���: 2200/14=157.142857~ 2200/4=550
SELECT SUM(COMM), COUNT(COMM), AVG(COMM) FROM EMP; -- ��� �׷��Լ��� NULL���� �����ϰ� ����
SELECT COUNT(*) FROM EMP; -- EMP ���̺��� ���
 -- ex. SAL�� ���, ��, �ּҰ�, �ִ밪, �л�, ǥ������, ���� (�Ҽ��� ���ڿ��� �ݿø�)
 SELECT ROUND(AVG(SAL),1), SUM(SAL), MIN(SAL), MAX(SAL),
        ROUND(VARIANCE(SAL),1), ROUND(STDDEV(SAL), 1)
  FROM EMP;
 -- �׷��Լ� MIN, MAX, COUNT�� ������, ������, ��¥�� ��� ����
 SELECT MIN(ENAME), MIN(HIREDATE) FROM EMP;
 
 
 --================================================
 -- źźex1. �Ի����� ���� ������ ����� �Ի��ϰ� ���� �ֱٿ� �Ի��� ����� �Ի����� ���. 
 SELECT MIN(HIREDATE) ����, MAX(HIREDATE) �ֱ� FROM EMP;
 
-- źźex2. (���) 80/12/17:155590��° 83/01/12:14803��°
	--  (hint : TRUNC, MIN, ||)
 SELECT MIN(HIREDATE) || ':' || TRUNC(SYSDATE - MIN(HIREDATE)) || '��°' FIRST,
        MAX(HIREDATE) || ':' || TRUNC(SYSDATE - MAX(HIREDATE)) || '��°' LAST
    FROM EMP;

-- źźex3.  (���) 80��12��17�� �����Ի�:15,558��° 83��01��12�� �ֱ��Ի� :14,803��°
   --  (hint :TRUNC, MIN, ||, TO_CHAR, TRIM)
 SELECT TO_CHAR(MIN(HIREDATE), 'RR"��"MM"��"DD"�� �����Ի�:"') ||
        TRIM(TO_CHAR( TRUNC(SYSDATE - MIN(HIREDATE)), '99,999')) || '��°' FIRST,
        TO_CHAR(MAX(HIREDATE), 'RR"��"MM"��"DD"�� �ֱ��Ի�:"')
         TRIM(TO_CHAR( TRUNC(SYSDATE - MAX(HIREDATE)), '99,999')) || '��°' LAST
    FROM EMP;

   -- źźex4. 10�� �μ� �Ҽ��� ��� �߿��� Ŀ�̼��� �޴� ����� ���� ���� ���ÿ�.
 SELECT * FROM EMP WHERE DEPTNO = 10 AND COMM!=0 ;

 SELECT COUNT(COMM) FROM EMP WHERE DEPTNO=10;

-- 2. GROUP BY ��
 -- ex. �μ���ȣ�� �ִ�޿�, ��ձ޿� (�μ���ȣ �� ����)
 SELECT DEPTNO, MAX(SAL), AVG(SAL) FROM EMP GROUP BY DEPTNO ORDER BY DEPTNO;

--===================================================================
--1. �ο���,�ִ� �޿�,�ּ� �޿�,�޿��� ���� ���
SELECT COUNT(*), MAX(SAL), MIN(SAL), SUM(SAL)
FROM EMP;

--2. ������ �ο����� ���Ͽ� ���
SELECT JOB, COUNT(*)
FROM EMP
GROUP BY JOB;

--3. �ְ� �޿��� �ּ� �޿��� ���̴� ���ΰ� ���
SELECT MAX(SAL), MIN(SAL), (MAX(SAL)-MIN(SAL))
FROM EMP;

--4. �� �μ����� �ο���, �޿� ���, ���� �޿�, �ְ� �޿�, �޿��� ���� ���(�޿��� ���� ���� ������)
SELECT COUNT(*), TRUNC(AVG(SAL)), MIN(SAL), MAX(SAL), SUM(SAL)
FROM EMP
GROUP BY DEPTNO
ORDER BY SUM(SAL) DESC;

--5. �μ���, ������ �׷��Ͽ� ����� �μ���ȣ, ����, �ο���, �޿��� ���, �޿��� ���� ���(�μ���ȣ, ��
--�������� �������� ����)
SELECT DEPTNO, JOB, COUNT(*), AVG(SAL), SUM(SAL)
FROM EMP
GROUP BY DEPTNO, JOB
ORDER BY DEPTNO, JOB;

--6. ������, �μ��� �׷��Ͽ� ����� ����, �μ���ȣ, �ο���, �޿��� ���, �޿��� ���� ���(��°����
--������, �μ���ȣ �� �������� ����)
SELECT JOB, DEPTNO, COUNT(*), AVG(SAL), SUM(SAL)
FROM EMP
GROUP BY JOB, DEPTNO
ORDER BY JOB, DEPTNO;

--7. ������� 5���̻� �Ѵ� �μ���ȣ�� ������� ���
SELECT DEPTNO, COUNT(*)
FROM EMP
GROUP BY DEPTNO
HAVING COUNT(*)>=5;

--8. ������� 5���̻� �Ѵ� �μ���� ������� ���
SELECT DNAME, COUNT(*)
FROM EMP E, DEPT D
WHERE E.DEPTNO=D.DEPTNO
GROUP BY DNAME
HAVING COUNT(*) >= 5;

--9. ������ �޿��� ����� 3000�̻��� ������ ���ؼ� ������, ��� �޿�, �޿��� ���� ���
SELECT JOB, AVG(SAL), SUM(SAL)
FROM EMP
GROUP BY JOB
HAVING AVG(SAL) >=3000;

--10. �޿� ���� 5000�� �ʰ��ϴ� �� ������ ���ؼ� ������ �޿����� ���(�޿� �հ�� �������� ����)
SELECT JOB, SUM(SAL)
FROM EMP
GROUP BY JOB
HAVING SUM(SAL)>=5000
ORDER BY SUM(SAL) DESC;

--11. �μ��� �޿����, �μ��� �޿��հ�, �μ��� �ּұ޿��� ���
SELECT DEPTNO, ROUND(AVG(SAL)), SUM(SAL), MIN(SAL)
FROM EMP
GROUP BY DEPTNO;

--13. ��� ���̺��� �Ʒ��� ����� ���.
--H_YEAR COUNT(*) MIN(SAL) MAX(SAL) AVG(SAL) SUM(SAL)
--80 1 800 800 800 800
--81 10 950 5000 2282.5 2282.5
--82 2 1300 3000 2150 4300
--83 1 1100 1100 1100 1100
SELECT TO_CHAR(HIREDATE,'YY') H_YEAR, COUNT(*), MIN(SAL), MAX(SAL), AVG(SAL), SUM(SAL)
FROM EMP
GROUP BY TO_CHAR(HIREDATE,'YY')
ORDER BY TO_CHAR(HIREDATE,'YY');

--14. �Ʒ��� ����� ���(�Ի�⵵�� �����)
--1980 �����
--1981 10
--1982 2
--1983 1
--TOTAL 14
SELECT NLV(TO_CHAR(HIREDATE, 'YYYY'), 'TOTAL'), COUNT(*)
    FROM EMP
    GROUP BY ROLLUP(TO_CHAR(HIREDATE, 'YYYY'));

--15. �ִ�޿�, �ּұ޿�, ��ü�޿���, ����� ���
SELECT MAX(SAL) �ִ�޿�, MIN(SAL) �ּұ޿�, SUM(SAL) ��ü�޿���, ROUND(AVG(SAL)) ���
FROM EMP;

--16. �μ��� �ο��� ���
SELECT DEPTNO, COUNT(*)
FROM EMP
GROUP BY DEPTNO;

--17. �μ��� �ο����� 6���̻��� �μ���ȣ ���
SELECT DEPTNO
FROM EMP
GROUP BY DEPTNO
HAVING COUNT(*) >=6;

