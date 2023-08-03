DROP TABLE ORDERDETAIL;
DROP TABLE ORDERS;
DROP TABLE CART;
DROP TABLE PRODUCT;
DROP TABLE MEMBER;
CREATE TABLE MEMBER (
  mID        VARCHAR2(20) PRIMARY KEY,
  mNAME      VARCHAR2(10) NOT NULL
);
CREATE TABLE PRODUCT (
  pCODE       NUMBER(10) PRIMARY KEY,
  pNAME       VARCHAR2(10)
);
 CREATE TABLE CART (
  ������ȣ      NUMBER(30),
  mID         VARCHAR2(30),
  pCODE1      NUMBER(10),
  QTY1        NUMBER(10),
  COST1       NUMBER(10)
);
 CREATE TABLE ORDERS (
  oNO        VARCHAR2(30) PRIMARY KEY,
  mID        VARCHAR2(30) NOT NULL,
  oNAME      VARCHAR2(30) NOT NULL,
  oADDR      VARCHAR2(30) NOT NULL,
  oTEL       NUMBER(10)NOT NULL,
  oDATE      DATE DEFAULT 
);
 CREATE TABLE ORDERDETAIL (
  oNO        NUMBER(30),
  pCODE      NUMBER(10),
  QTY        NUMBER(30),
  COST       NUMBER(30)
);
DROP SEQUENCE ORDERDETAIL_SEQ;
CREATE SEQUENCE ORDERDETAIL_SEQ MAXVALUE 999 NOCACHE NOCYCLE;
INSERT INTO ORDERDETAIL (oNO, pCODE, QTY, COST)
 VALUES (0001, 'A2', 2, 6000),
 VALUES (0001, 'B3', 1, 5000),
 VALUES (0001, 'C1', 1, 7000);
SELECT oNO, pCODE, QTY, COST
 FROM MEMBER M, PRODUCT P, ORDERS O
 WHERE M.mID = O.mID AND P.pCODE = O.pCODE;
  
 INSERT INTO ORDERS1 (oNO, mID, oNAME, oADDR, oTEL)
  VALUES (230728001, 'abc', 'ȫ�浿', '����� ���빮�� ������', '010-9999-9999');
 INSERT INTO ORDERS2 (oNO, mID, oNAME, oADDR, oTEL)
  VALUES (230726002, 'def', '��浿', '��⵵ ������', '010-8888-8888');
 INSERT INTO ORDERS3 (oNO, mID, oNAME, oADDR, oTEL)
  VALUES (230728003, 'abc', 'ȫ�ƺ�', '���ֵ� ���ֽ�', '010-7777-9999');
 
 INSERT INTO ORDERDETAIL1 (pCODE, pNAME, PRICE, QTY, COST) FROM DUAL;
 VALUES (A1, '����', 3000, 3, 9000);
 VALUES (B1, '����', 3000, 1, 3000);
INSERT INTO ORDERDETAIL2 (pCODE, pNAME, PRICE, QTY, COST) FROM DUAL;
 VALUES (A2, '����ũ', 200, 20, 4000);
 VALUES (B2, '��¡��', 5000, 2, 10000);
 VALUES (C1, '�ҵ���', 7000, 1, 7000);
 INSERT INTO ORDERDETAIL3 (pCODE, pNAME, PRICE, QTY, COST) FROM DUAL;
 VALUES (A1, '����', 3000, 2, 6000);
 VALUES (B1, '����', 3000, 1, 3000);
 VALUES (C1, '�ҵ���', 7000, 1, 7000);

SELECT oNO, pCODE, QTY, COST
 FROM MEMBER M, PRODUCT P, ORDERS O
 WHERE M.mID = O.mID AND P.pCODE = O.pCODE;