-- [V] 그룹함수(집계함수) : SUM, AVG, MIN, MAX, COUNT, STDDEV(표준편차), VARIANCE(분산)
SELECT MAX(SAL) FROM EMP;
SELECT DEPTNO, MAX(SAL) FROM EMP GROUP BY DEPTNO; -- 그룹별 최대값
-- 최대급여를 받는 사람의 이르모가 급여 -> VI.서브쿼리
SELECT ENAME, SAL FROM EMP WHERE SAL = (SELECT MAX(SAL) FROM EMP);

-- 그룹함수 실습
SELECT ROUND (AVG(SAL), 2) FROM EMP;
SELECT AVG(SAL), SUM(SAL)/COUNT(SAL) FROM EMP;
SELECT SUM(COMM) FROM EMP; -- 평균: 2200/14=157.142857~ 2200/4=550
SELECT SUM(COMM), COUNT(COMM), AVG(COMM) FROM EMP; -- 모든 그룹함수는 NULL값을 제외하고 연산
SELECT COUNT(*) FROM EMP; -- EMP 테이블의 행수
 -- ex. SAL의 평균, 합, 최소값, 최대값, 분산, 표준편차, 갯수 (소수점 한자에서 반올림)
 SELECT ROUND(AVG(SAL),1), SUM(SAL), MIN(SAL), MAX(SAL),
        ROUND(VARIANCE(SAL),1), ROUND(STDDEV(SAL), 1)
  FROM EMP;
 -- 그룹함수 MIN, MAX, COUNT는 숫자형, 문자형, 날짜형 모두 가능
 SELECT MIN(ENAME), MIN(HIREDATE) FROM EMP;
 
 
 --================================================
 -- 탄탄ex1. 입사한지 가장 오래된 사원의 입사일과 가장 최근에 입사한 사원의 입사일을 출력. 
 SELECT MIN(HIREDATE) 오래, MAX(HIREDATE) 최근 FROM EMP;
 
-- 탄탄ex2. (결과) 80/12/17:155590일째 83/01/12:14803일째
	--  (hint : TRUNC, MIN, ||)
 SELECT MIN(HIREDATE) || ':' || TRUNC(SYSDATE - MIN(HIREDATE)) || '일째' FIRST,
        MAX(HIREDATE) || ':' || TRUNC(SYSDATE - MAX(HIREDATE)) || '일째' LAST
    FROM EMP;

-- 탄탄ex3.  (결과) 80년12월17일 최초입사:15,558일째 83년01월12일 최근입사 :14,803일째
   --  (hint :TRUNC, MIN, ||, TO_CHAR, TRIM)
 SELECT TO_CHAR(MIN(HIREDATE), 'RR"년"MM"월"DD"일 최초입사:"') ||
        TRIM(TO_CHAR( TRUNC(SYSDATE - MIN(HIREDATE)), '99,999')) || '일째' FIRST,
        TO_CHAR(MAX(HIREDATE), 'RR"년"MM"월"DD"일 최근입사:"')
         TRIM(TO_CHAR( TRUNC(SYSDATE - MAX(HIREDATE)), '99,999')) || '일째' LAST
    FROM EMP;

   -- 탄탄ex4. 10번 부서 소속의 사원 중에서 커미션을 받는 사원의 수를 구해 보시오.
 SELECT * FROM EMP WHERE DEPTNO = 10 AND COMM!=0 ;

 SELECT COUNT(COMM) FROM EMP WHERE DEPTNO=10;

-- 2. GROUP BY 절
 -- ex. 부서번호별 최대급여, 평균급여 (부서번호 순 정렬)
 SELECT DEPTNO, MAX(SAL), AVG(SAL) FROM EMP GROUP BY DEPTNO ORDER BY DEPTNO;

--===================================================================
--1. 인원수,최대 급여,최소 급여,급여의 합을 출력
SELECT COUNT(*), MAX(SAL), MIN(SAL), SUM(SAL)
FROM EMP;

--2. 업무별 인원수를 구하여 출력
SELECT JOB, COUNT(*)
FROM EMP
GROUP BY JOB;

--3. 최고 급여와 최소 급여의 차이는 얼마인가 출력
SELECT MAX(SAL), MIN(SAL), (MAX(SAL)-MIN(SAL))
FROM EMP;

--4. 각 부서별로 인원수, 급여 평균, 최저 급여, 최고 급여, 급여의 합을 출력(급여의 합이 많은 순으로)
SELECT COUNT(*), TRUNC(AVG(SAL)), MIN(SAL), MAX(SAL), SUM(SAL)
FROM EMP
GROUP BY DEPTNO
ORDER BY SUM(SAL) DESC;

--5. 부서별, 업무별 그룹하여 결과를 부서번호, 업무, 인원수, 급여의 평균, 급여의 합을 출력(부서번호, 업
--무순으로 오름차순 정렬)
SELECT DEPTNO, JOB, COUNT(*), AVG(SAL), SUM(SAL)
FROM EMP
GROUP BY DEPTNO, JOB
ORDER BY DEPTNO, JOB;

--6. 업무별, 부서별 그룹하여 결과를 업무, 부서번호, 인원수, 급여의 평균, 급여의 합을 출력(출력결과는
--업무순, 부서번호 순 오름차순 정렬)
SELECT JOB, DEPTNO, COUNT(*), AVG(SAL), SUM(SAL)
FROM EMP
GROUP BY JOB, DEPTNO
ORDER BY JOB, DEPTNO;

--7. 사원수가 5명이상 넘는 부서번호와 사원수를 출력
SELECT DEPTNO, COUNT(*)
FROM EMP
GROUP BY DEPTNO
HAVING COUNT(*)>=5;

--8. 사원수가 5명이상 넘는 부서명과 사원수를 출력
SELECT DNAME, COUNT(*)
FROM EMP E, DEPT D
WHERE E.DEPTNO=D.DEPTNO
GROUP BY DNAME
HAVING COUNT(*) >= 5;

--9. 업무별 급여의 평균이 3000이상인 업무에 대해서 업무명, 평균 급여, 급여의 합을 출력
SELECT JOB, AVG(SAL), SUM(SAL)
FROM EMP
GROUP BY JOB
HAVING AVG(SAL) >=3000;

--10. 급여 합이 5000을 초과하는 각 업무에 대해서 업무와 급여합을 출력(급여 합계순 내림차순 정렬)
SELECT JOB, SUM(SAL)
FROM EMP
GROUP BY JOB
HAVING SUM(SAL)>=5000
ORDER BY SUM(SAL) DESC;

--11. 부서별 급여평균, 부서별 급여합계, 부서별 최소급여를 출력
SELECT DEPTNO, ROUND(AVG(SAL)), SUM(SAL), MIN(SAL)
FROM EMP
GROUP BY DEPTNO;

--13. 사원 테이블에서 아래의 결과를 출력.
--H_YEAR COUNT(*) MIN(SAL) MAX(SAL) AVG(SAL) SUM(SAL)
--80 1 800 800 800 800
--81 10 950 5000 2282.5 2282.5
--82 2 1300 3000 2150 4300
--83 1 1100 1100 1100 1100
SELECT TO_CHAR(HIREDATE,'YY') H_YEAR, COUNT(*), MIN(SAL), MAX(SAL), AVG(SAL), SUM(SAL)
FROM EMP
GROUP BY TO_CHAR(HIREDATE,'YY')
ORDER BY TO_CHAR(HIREDATE,'YY');

--14. 아래의 결과를 출력(입사년도별 사원수)
--1980 사원수
--1981 10
--1982 2
--1983 1
--TOTAL 14
SELECT NLV(TO_CHAR(HIREDATE, 'YYYY'), 'TOTAL'), COUNT(*)
    FROM EMP
    GROUP BY ROLLUP(TO_CHAR(HIREDATE, 'YYYY'));

--15. 최대급여, 최소급여, 전체급여합, 평균을 출력
SELECT MAX(SAL) 최대급여, MIN(SAL) 최소급여, SUM(SAL) 전체급여합, ROUND(AVG(SAL)) 평균
FROM EMP;

--16. 부서별 인원수 출력
SELECT DEPTNO, COUNT(*)
FROM EMP
GROUP BY DEPTNO;

--17. 부서별 인원수가 6명이상인 부서번호 출력
SELECT DEPTNO
FROM EMP
GROUP BY DEPTNO
HAVING COUNT(*) >=6;

