-- DROP TABLE & SEQUENCE / CREATE TABLE & SEQUENCE
DROP TABLE BOARD;
DROP SEQUENCE BOARD_SEQ;
CREATE TABLE BOARD (
  bID    NUMBER(6)     PRIMARY KEY, -- 글번호
  bNAME  VARCHAR2(50)  NOT NULL,    -- 글번호
  bTITLE VARCHAR2(100) NOT NULL,    -- 글제목
  bCONTENT VARCHAR2(1000),          -- 글본문 (VARCHAR2(4000)초과시 CLOB)
  bEMAIL VARCHAR2(50),              -- 메일주소
  bHIT   NUMBER(6) DEFAULT 0 NOT NULL, -- 글 조회수
  bPW    VARCHAR2(50)  NOT NULL,    -- 글 삭제시 쓸 비밀번호
  bGROUP NUMBER(6)     NOT NULL,    -- 글그룹(원글의 경우 글번호/답변글인 경우 원글의 BGROUP로)
  bSTEP  NUMBER(3)     NOT NULL,    -- 같은 글그룹 내의 출석 순서(원글 0)
  bINDENT NUMBER(3)    NOT NULL,    -- 글 LIST출력시 글 제목 들여쓰기 정도(원글 0)
  bIP    VARCHAR2(20)  NOT NULL,    -- 글쓰기를 요청한 컴퓨터의 IP주소
  bDATE  DATE DEFAULT SYSDATE NOT NULL -- 글 작성 시점
);
CREATE SEQUENCE BOARD_SEQ MAXVALUE 999999 NOCACHE NOCYCLE;
SELECT * FROM BOARD;

-- DUMMY DATA
INSERT INTO BOARD (BID, BNAME, BTITLE, BCONTENT, BEMAIL, BPW, BGROUP, BSTEP, BINDENT, BIP)
  VALUES (BOARD_SEQ.NEXTVAL, '홍', '제목1', '냉무', NULL, '111', BOARD_SEQ.CURRVAL, 0, 0, '192.168.5.4');
INSERT INTO BOARD (BID, BNAME, BTITLE, BCONTENT, BEMAIL, BPW, BGROUP, BSTEP, BINDENT, BIP)
  VALUES (BOARD_SEQ.NEXTVAL, '김', '제목2', '냉무', NULL, '111', BOARD_SEQ.CURRVAL, 0, 0, '192.0.0.1');
UPDATE BOARD SET BHIT = 11 WHERE BID=1; -- 조회수 조작
SELECT * FROM BOARD ORDER BY BGROUP DESC;

-- DAO에 쓸 SQL
-- 1. 글목록(전체 글 그룹이 최신글이 위로)
SELECT * FROM BOARD ORDER BY BGROUP DESC;
-- 1. 글목록(startRow부터 endRow까지 리스트)
SELECT * FROM BOARD ORDER BY BGROUP DESC; -- 출력 기준
SELECT ROWNUM RN, A.* 
  FROM (SELECT * FROM BOARD ORDER BY BGROUP DESC) A; -- TOP-N구문 전단계
SELECT *
  FROM ( SELECT ROWNUM RN, A.* 
         FROM (SELECT * FROM BOARD ORDER BY BGROUP DESC) A )
  WHERE RN BETWEEN 21 AND 30; -- TOP-N구문 (DAO에 들어갈 QUERY)
        
        
-- 2. 전체 글 갯수
SELECT COUNT(*) CNT FROM BOARD;
-- 3. 원글쓰기 - 작성자, 글제목, 본문, 이메일, 비번, IP (BGROUP은 글번호, BSTEP은 0, BINDENT는 0)
INSERT INTO BOARD (BID, BNAME, BTITLE, BCONTENT, BEMAIL, BPW, BGROUP, BSTEP, BINDENT, BIP)
  VALUES (BOARD_SEQ.NEXTVAL, '김', '제목2', '냉무', 'K@K.COM', '111', BOARD_SEQ.CURRVAL, 0, 0, '192.0.0.1');
-- 4. bID로 조회수 1 올리기 (글상세보기시 필요)
UPDATE BOARD SET BHIT = BHIT + 1 WHERE BID=1;
-- 5. bID로 DTO가져오기(글수정FORM, 답변글쓰기FORM)
SELECT * FROM BOARD WHERE BID=1;
-- 6. 글수정 (작성자, 글제목, 본문, 이메일, 비번, IP 수정)
UPDATE BOARD
  SET BNAME = '홍길동',
      BTITLE = '바꾼제목',
      BCONTENT = '바꾼본문',
      BEMAIL = 'H@H.COM',
      BPW    = '111',
      BIP    = '127.0.0.1'
  WHERE BID=1;
-- 7. 글삭제(비번을 맞게 입력한 경우만 삭제)
COMMIT;
DELETE FROM BOARD WHERE BID=1 AND BPW='111';
ROLLBACK;
SELECT * FROM BOARD ORDER BY BGROUP DESC;