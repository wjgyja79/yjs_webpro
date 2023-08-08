-- ���α׷��� �ʿ��� QUERY
-- 1. ȸ������(����ȭ�� ���̸��� �Է¹޾� INSERT)
  -- public int insertCustomer(String ctel, String cname)
  -- public int insertCustomer(CustomerDto dto)
INSERT INTO CUSTOMER (CID, CTEL, CNAME)
  VALUES (CUSTOMER_CID_SEQ.NEXTVAL, '010-5555-5555','���浿');
ROLLBACK;

-- 2. ����4�ڸ�(Ǯ����) �˻� (searchTel�� �޾� CID, CTEL, CNAME, CPOINT, CAMOUNT, LEVELNAME, forLevelUp)
  -- public ArrayList<CustomerDto> ctelGetCustomers(String searchTel)
SELECT CID, CTEL, CNAME, CPOINT, CAMOUNT, LEVELNAME, HIGH+1-CAMOUNT forLevelUp
  FROM CUSTOMER C, CUS_LEVEL L
  WHERE C.LEVELNO=L.LEVELNO; -- �ְ��� ���� �߸� ����

SELECT CID, CTEL, CNAME, CPOINT, CAMOUNT, LEVELNAME,
        (SELECT HIGH+1-CAMOUNT FROM CUSTOMER WHERE LEVELNO!=5 AND CID=C.CID) forLevelUp
    FROM CUSTOMER C, CUS_LEVEL L
    WHERE C.LEVELNO=L.LEVELNO AND CTEL LIKE '%'||'9999'
    ORDER BY CAMOUNT DESC, CID; -- DAO�� �� QUERY

-- 3. ��ǰ����
     --(cid, price�� �޾�, ���ž��� 5%�� CPOINT ����, ���ž��� CAMOUNT ����, �ٲ� CAMOUNT�� ���� LEVELNO ����)
     -- public int buy(int cid, int price)
     -- 1�ܰ� : CPOINT�� CAMOUNT ����
     UPDATE CUSTOMER
        SET CPOINT = CPOINT + (1000000*0.05),
            CAMOUNT = CAMOUNT + 1000000
        WHERE CID=1;
    SELECT * FROM CUSTOMER;
    -- 2�ܰ� : �ٲ� CAMOUNT�� ���� LEVELNO ����
    SELECT CNAME, CAMOUNT, C.LEVELNO ���緹��, L.LEVELNO �ٲ𷹺�, LOW, HIGH
      FROM CUSTOMER C, CUS_LEVEL L
      WHERE CAMOUNT BETWEEN LOW AND HIGH AND CID=1;
    SELECT L.LEVELNO
      FROM CUSTOMER C, CUS_LEVEL L
      WHERE CAMOUNT BETWEEN LOW AND HIGH AND CID=1; -- UPDATE���� SUBQUERY�� �� �κ�
    
    UPDATE CUSTOMER
      SET LEVELNO = (SELECT L.LEVELNO
                      FROM CUSTOMER C, CUS_LEVEL L
                      WHERE CAMOUNT BETWEEN LOW AND HIGH AND CID=1)
      WHERE CID=1;
    SELECT * FROM CUSTOMER WHERE CID=1;
    ROLLBACK;
    -- DAO�� �� QUERY (1�ܰ� + 2�ܰ�)
    UPDATE CUSTOMER
      SET CPOINT = CPOINT + (1000000*0.05),
          CAMOUNT = CAMOUNT + 1000000,
          LEVELNO = (SELECT L.LEVELNO
                        FROM CUSTOMER C, CUS_LEVEL L
                        WHERE CAMOUNT+1000000 BETWEEN LOW AND HIGH AND CID=1)
      WHERE CID=1;
    SELECT * FROM CUSTOMER WHERE CID=1;
-- 3�� ��ǰ���� �� �������� ���(CID, CTEL, CNAME, CPOINT, CAMOUNT, LEVELNAME, forLevelUp)
  -- public CustomerDto getCustomer(int cid)
  SELECT CID, CTEL, CNAME, CPOINT, CAMOUNT, LEVELNAME,
        (SELECT HIGH+1-CAMOUNT FROM CUSTOMER WHERE LEVELNO!=5 AND CID=C.CID) forLevelUp
      FROM CUSTOMER C, CUS_LEVEL L
      WHERE C.LEVELNO = L.LEVELNO AND CID=1;
-- 4�� �� ����޺� ����
  -- public ArrayList<String> getLevelNames()
  SELECT LEVELNAME FROM CUS_LEVEL;
-- 4�� ����޺�(����̸�) ��� : levelName �Է¹޾� CID, CTEL, CNAME, CPOINT, CAMOUNT, LEVELNAME, forLevelUp
  -- public ArrayList<CustomerDto> levelNameGetCustomers(String levelName)
SELECT CID, CTEL, CNAME, CPOINT, CAMOUNT, LEVELNAME, 
    (SELECT HIGH+1-CAMOUNT FROM CUSTOMER WHERE LEVELNO!=5 AND CID=C.CID) forLevelUp
  FROM CUSTOMER C, CUS_LEVEL L
  WHERE C.LEVELNO = L.LEVELNO AND LEVELNAME = UPPER('normal')
  ORDER BY CAMOUNT DESC, CID;
  
-- 5�� �� ��ü ��� : CID, CTEL, CNAME, CPOINT, CAMOUNT, LEVELNAME, forLevelUp
  -- public ArrayList<CustomerDto> GetCustomers()
SELECT CID, CTEL, CNAME, CPOINT, CAMOUNT, LEVELNAME, 
    (SELECT HIGH+1-CAMOUNT FROM CUSTOMER WHERE LEVELNO!=5 AND CID=C.CID) forLevelUp
  FROM CUSTOMER C, CUS_LEVEL L
  WHERE C.LEVELNO = L.LEVELNO 
  ORDER BY CAMOUNT DESC, CID;
    
-- 6�� ȸ��Ż�� : ctel �޾� delete
  -- public int deleteCustomer(String ctel)
DELETE FROM CUSTOMER WHERE CTEL='010-6666-6666';
COMMIT;