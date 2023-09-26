-- dummy data
-- BOOK 테이블 DUMMY DATA
-- DUMMY DATA
INSERT INTO BOOK (BID, BTITLE, BPRICE, BIMAGE1, BIMAGE2, BCONTENT, BDISCOUNT)
  VALUES (BOOK_SEQ.NEXTVAL, '이것이 자바다', 25000, 'noImg.png', 'NOTHING.JPG', '베스트셀러', 10);
INSERT INTO BOOK (BID, BTITLE, BPRICE, BIMAGE1, BIMAGE2, BCONTENT, BDISCOUNT)
  VALUES (BOOK_SEQ.NEXTVAL, 'JSP 웹 프로그래밍', 30000, 'NOTHING.JPG', 'noImg.png', '몰라', 15);
INSERT INTO BOOK (BID, BTITLE, BPRICE, BIMAGE1, BIMAGE2, BCONTENT, BDISCOUNT)
  VALUES (BOOK_SEQ.NEXTVAL, 'Spring', 28000, 'noImg.png', 'NOTHING.JPG', '짱', 20);-- 도서(BOOK)테이블 dummy data  - 15개
INSERT INTO BOOK (bID, bTITLE, bPRICE, bIMAGE1, bIMAGE2, bCONTENT, bDISCOUNT)
    VALUES (BOOK_SEQ.NEXTVAL, '쳇GPT 혁명',16000,'100.jpg','noImg.png','좋아',10);
INSERT INTO BOOK (bID, bTITLE, bPRICE, bIMAGE1, bIMAGE2, bCONTENT, bDISCOUNT)
    VALUES (BOOK_SEQ.NEXTVAL, '주린이가 가장 알고 싶은 최대질문Top77',20000,'101.jpg','noImg.png','증권가',10);
INSERT INTO BOOK (bID, bTITLE, bPRICE, bIMAGE1, bIMAGE2, bCONTENT, bDISCOUNT)
    VALUES (BOOK_SEQ.NEXTVAL, '공정하다는 착각',14000,'102.jpg','noImg.png','좋아',5);
INSERT INTO BOOK (bID, bTITLE, bPRICE, bIMAGE1, bIMAGE2, bCONTENT, bDISCOUNT)
    VALUES (BOOK_SEQ.NEXTVAL, '부의 대이동',16000,'103.jpg','noImg.png','좋아',5);
INSERT INTO BOOK (bID, bTITLE, bPRICE, bIMAGE1, bIMAGE2, bCONTENT, bDISCOUNT)
    VALUES (BOOK_SEQ.NEXTVAL, '컨버전스 2030',11500,'104.jpg','noImg.png','좋아',10);
INSERT INTO BOOK (bID, bTITLE, bPRICE, bIMAGE1, bIMAGE2, bCONTENT, bDISCOUNT)
    VALUES (BOOK_SEQ.NEXTVAL, '내면소통',13000,'105.jpg','noImg.png','좋아',30);
INSERT INTO BOOK (bID, bTITLE, bPRICE, bIMAGE1, bIMAGE2, bCONTENT, bDISCOUNT)
    VALUES (BOOK_SEQ.NEXTVAL, '꽤 괜찮은 해피엔딩',13500,'106.jpg','noImg.png','좋아',10);
INSERT INTO BOOK (bID, bTITLE, bPRICE, bIMAGE1, bIMAGE2, bCONTENT, bDISCOUNT)
    VALUES (BOOK_SEQ.NEXTVAL, '결국 무엇이든 해내는 사람',33000,'107.jpg','noImg.png','좋아',10);
INSERT INTO BOOK (bID, bTITLE, bPRICE, bIMAGE1, bIMAGE2, bCONTENT, bDISCOUNT)
    VALUES (BOOK_SEQ.NEXTVAL, 'JSP',20000,'108.jpg','noImg.png','좋아',10);
INSERT INTO BOOK (bID, bTITLE, bPRICE, bIMAGE1, bIMAGE2, bCONTENT, bDISCOUNT)
    VALUES (BOOK_SEQ.NEXTVAL, '마지막 몰입',18000,'109.jpg','noImg.png','좋아',5);
INSERT INTO BOOK (bID, bTITLE, bPRICE, bIMAGE1, bIMAGE2, bCONTENT, bDISCOUNT)
    VALUES (BOOK_SEQ.NEXTVAL, 'SQL',17000,'110.jpg','noImg.png','좋아',10);
INSERT INTO BOOK (bID, bTITLE, bPRICE, bIMAGE1, bIMAGE2, bCONTENT, bDISCOUNT)
    VALUES (BOOK_SEQ.NEXTVAL, '세이노의 가르침',1600,'111.jpg','noImg.png','좋아',30);
INSERT INTO BOOK (bID, bTITLE, bPRICE, bIMAGE1, bIMAGE2, bCONTENT, bDISCOUNT)
    VALUES (BOOK_SEQ.NEXTVAL, '기후로 다시 읽는 세계사',2000,'112.jpg','noImg.png','2020 트렌드 키워드 ',15);
INSERT INTO BOOK (bID, bTITLE, bPRICE, bIMAGE1, bIMAGE2, bCONTENT, bDISCOUNT)
    VALUES (BOOK_SEQ.NEXTVAL, 'ADSP 데이터분석 준전문가',1800,'113.jpg','noImg.png','김영하의 여행 경험',10);
INSERT INTO BOOK (bID, bTITLE, bPRICE, bIMAGE1, bIMAGE2, bCONTENT, bDISCOUNT)
    VALUES (BOOK_SEQ.NEXTVAL, 'HTML5',2000,'114.jpg','noImg.png','좋다 ',10);
SELECT * FROM BOOK ORDER BY BRDATE DESC;
-- CUSTOMER 테이블 DUMMY DATA
INSERT INTO CUSTOMER (CID, CPW, CNAME, CTEL, CEMAIL, CADDRESS, CBIRTH, CGENDER)
  VALUES ('aaa', '111', '홍길동', '010-9999-9999', 'h@h.com', '서울', '1995-12-12', 'm');
INSERT INTO CUSTOMER (CID, CPW, CNAME, CTEL, CEMAIL, CADDRESS, CBIRTH, CGENDER)
  VALUES ('bbb', '111', '박길동', '010-8888-8888', 'p@h.com', '인천', '1995-11-11', 'm');
INSERT INTO CUSTOMER (CID, CPW, CNAME, CTEL, CEMAIL, CADDRESS, CBIRTH, CGENDER)
VALUES ('ccc', '111', '김길동', null, null, null, null, null);
INSERT INTO CUSTOMER (CID, CPW, CNAME, CTEL, CEMAIL, CADDRESS, CBIRTH, CGENDER)
  VALUES ('ddd', '111', '신길동', '010-777-9999', 's@h.com', '서울', '1995-12-12', 'm');
INSERT INTO CUSTOMER (CID, CPW, CNAME, CTEL, CEMAIL, CADDRESS, CBIRTH, CGENDER)
  VALUES ('eee', '111', '윤동', '010-666-8888', 'y@h.com', '인천', '1995-11-11', 'm');
INSERT INTO CUSTOMER (CID, CPW, CNAME, CTEL, CEMAIL, CADDRESS, CBIRTH, CGENDER)
  VALUES ('fff', '111', '마길동', null, null, null, null, null);
SELECT * FROM CUSTOMER ORDER BY cRDATE DESC;

-- FILEBOARD 테이블 DUMMY DATA(글1, 글2, 글2-1)
INSERT INTO FILEBOARD (fID, cID, fTITLE, fCONTENT, FILENAME, fPW, 
                fGROUP, fSTEP, fINDENT, fIP)
        VALUES (FILEBOARD_SEQ.NEXTVAL, 'aaa', '글1','냉무',null,'111',
                FILEBOARD_SEQ.CURRVAL, 0,0, '192.168.20.44');--1번글 추가
INSERT INTO FILEBOARD (fID, cID, fTITLE, fCONTENT, FILENAME, fPW, 
                fGROUP, fSTEP, fINDENT, fIP)
        VALUES (FILEBOARD_SEQ.NEXTVAL, 'bbb', '글2','냉무','1.docx','111',
                FILEBOARD_SEQ.CURRVAL, 0,0, '192.168.20.44');
UPDATE FILEBOARD SET FSTEP = FSTEP+1 WHERE FGROUP=2 AND FSTEP>0; -- 답글 전단계
INSERT INTO FILEBOARD (fID, cID, fTITLE, fCONTENT, FILENAME, fPW, 
                fGROUP, fSTEP, fINDENT, fIP)
        VALUES (FILEBOARD_SEQ.NEXTVAL, 'aaa', '글2-1','냉무',null,'111',
                2, 1, 1, '192.168.20.44');--2번글의 첫번째 답글쓰기
SELECT * FROM FILEBOARD ORDER BY FGROUP DESC, FSTEP;
COMMIT;