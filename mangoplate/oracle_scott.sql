/************************************
    SQL(Structured Query Language) 
    - DBMS �ý��ۿ��� �����͸� CRUD�ϴ� �۾��� �����ϴ� ���
    
    1. DDL(������ ���Ǿ�) 
        : �����ͺ��̽� �����ڰ� ������ ����(���屸��:���̺����̽�)�� �����ϴ� ���
        CREATE, ALTER, DROP...
        
     2. DML(������ ���۾�) 
        : �����ͺ��̽��� ����� �����͸� ����(C)/��ȸ(R)/����(U)/����(D)�ϴ� �۾��� �����ϴ� ���
        ����(C) - INSERT, ��ȸ(R) - SELECT, ����(U) - UPDATE,  ����(D) - DELETE ..
        
    3. DCL(������ �����) 
       : �����ͺ��̽� ���ٱ����� �ο��ϰų�, �����ϴ� �۾��� �����ϴ� ���
       REVOKE, COMMIT, ROLLBACK...   
*************************************/

-- SCOTT �������� ����� �� �ִ� ���̺� ����Ʈ 
SELECT * FROM USER_TABLES;

-- EMP ���̺��� ������ ��ȸ
SELECT * FROM EMP;

-- DEPT ���̺��� ��� ������ ��ȸ
SELECT * FROM DEPT;

-- DESC[RIBE] ���̺��� ���� Ȯ��
-- ���� : DESC ���̺��;
DESC EMP;
DESC DEPT;
DESC BONUS;

/** ����Ŭ ������ Ÿ��  
    1. NUMBER : ���� �����͸� �����ϴ� Ÿ��
        NUMBER(4) - 4�ڸ� ���� 
        NUMBER(7,2) - ��ü 7�ڸ��߿� �Ҽ��� ���� 2�ڸ� ����
        
    2. VARCHAR2 - ������ ���ڸ� �����ϴ� Ÿ��  
       VARCHAR2(20) - 'SMITH'
       CHAR, CHAR2 - ������ ���ڸ� �����ϴ� Ÿ��
       CHAR(10) - 'SMITH' 
    
    3. DATE - ��¥�� �����͸� �����ϴ� Ÿ��
       �⺻���� : YY/MM/DD �������� ��µ� - ��, ����ϴ� SQL���� ���� �⺻������ �ٸ�         
**/

/** 
    SELECT : �����͸� ��ȸ�ϴ� ��ɾ�
    ����) SELECT [DISTINCT] {�÷�����Ʈ(�÷���, *)} FROM  {��Ű��.���̺��};
**/
-- EMP ���̺��� ��� �÷� �����͸� ��ȸ
SELECT * FROM EMP;

-- DEPT ���̺��� ��� �����͸� ��ȸ
SELECT * FROM DEPT;

-- EMP ���̺��� �����ȣ(EMPNO), �����(ENAME), �Ի���(HIREDATE)
-- , �μ���ȣ(DEPTNO)�� ��ȸ
DESC EMP;
SELECT EMPNO, ENAME, HIREDATE, DEPTNO  FROM EMP;

-- �÷����� �ٸ��̸����� ��ġ�ϴ� ALIAS(��Ī)
-- ����) �÷��� AS "��Ī"
SELECT EMPNO  "��� ��ȣ", ENAME �����, HIREDATE �Ի���, DEPTNO �μ���ȣ
FROM EMP;

-- DEPT ���̺��� �μ���ȣ(DEPTNO), �μ���(DNAME), ��ġ(LOC) �÷� ��ȸ
DESC DEPT;
SELECT DEPTNO �μ���ȣ, DNAME �μ���, LOC ��ġ FROM DEPT;

-- ������ ��ȸ �� ������(+,-,*,/)�� �̿��Ͽ� ����� ����ϴ� ����

-- EMP ���̺��� �����ȣ, �����, �Ի���, �޿�, Ŀ�̼�, �ѱ޿�(�޿�+Ŀ�̼�) �÷� ��ȸ 
DESC EMP;
SELECT EMPNO, ENAME, HIREDATE, SAL, COMM, SAL+COMM �ѱ޿�
FROM EMP;

/**
    (null)�� �ǹ�
    1. zero�� �ǹ̰�  �Էµ��� ���� �������� �ǹ���
    2. ��Ȯ���̸� �� �� ���� ���� �ǹ���
    3. ����, �� ���� �Ұ���
    4. nvl() �Լ��� �̿��Ͽ� (null) �����͸� �ٸ� �����Ͱ����� ����
**/

-- nvl  �Լ� : (null) �����͸� �ٸ������� ����
-- ����) nvl(null�� �����ϰ� �ִ� �÷���, ���氪)
-- EMP ���̺��� �����ȣ, �����, �Ի���, �޿�, Ŀ�̼�, �ѱ޿�(�޿�+Ŀ�̼�) �÷� ��ȸ 
DESC EMP;
SELECT EMPNO, ENAME, HIREDATE, SAL, NVL(COMM,0) COMM, SAL+NVL(COMM,0) �ѱ޿�
FROM EMP;

-- || (CONCATENATION) : ���ڿ� ���� ������
SELECT ENAME, JOB FROM EMP;
SELECT ENAME || '�� ' || JOB || ' �Դϴ�' AS JOB FROM EMP;

-- DISTINCT : �ߺ��� �����͸� ���͸��Ͽ� ��ȸ
-- EMP ���̺��� �����, �μ���ȣ ���
SELECT DISTINCT ENAME, DEPTNO FROM EMP;

-- �ߺ��Ǵ� �μ���ȣ�� ���͸��Ͽ� ��ȸ
SELECT DISTINCT DEPTNO FROM EMP;

-- EMP ���̺��� JOB �÷� ��ȸ(DISTINCT) 
SELECT DISTINCT JOB FROM EMP;

-- ORDER BY : �����͸� �����ϴ� ��ɾ�
-- ����) SELECT {�÷�����Ʈ} FROM {���̺��}  ORDER BY {������ �÷���} ASC/DESC;

-- EMP ���̺��� ���߿� �Ի��� ���� �������� ������ ��ȸ
SELECT * FROM EMP ORDER BY HIREDATE DESC;

-- EMP ���̺��� �����ȣ,�����,�Ի���, �޿�, �μ���ȣ�� �޿��� ���� ���� ���� �������� ��ȸ
SELECT EMPNO, ENAME, HIREDATE, SAL, DEPTNO
FROM EMP
ORDER BY SAL DESC;

-- EMP ���̺��� �����ȣ, �����, �Ի���, �޿�, �μ���ȣ�� �Ի����� ���� ������ �޿��� ����
-- ���� ������ ��ȸ
SELECT EMPNO, ENAME, HIREDATE, SAL, DEPTNO
FROM EMP
ORDER BY HIREDATE ASC, SAL DESC;

/** 
    SELECT : ���ǿ� �´� �����͸� ��ȸ�ϴ� ��ɾ�
    ����) SELECT [DISTINCT] {�÷�����Ʈ(�÷���, *)} 
            FROM  {��Ű��.���̺��}
            WHERE ���ǽ� ;  ( SAL >= 3000)
**/
-- EMP ���̺��� �޿��� 3000 �̻��� �������� ��ȸ
SELECT * FROM EMP WHERE SAL >= 3000;

-- EMP ���̺��� ������� 'KING'�� ����� ��ȸ
SELECT * FROM EMP WHERE ENAME = 'KING';
SELECT * FROM EMP WHERE ENAME = 'king';

-- ������ ��ųʸ� ���̺��� USER_TABLES ���� ���̺��̸��� EMP�� ���̺��� �˻�
SELECT * FROM USER_TABLES WHERE TABLE_NAME='EMP';
SELECT * FROM USER_TABLES WHERE TABLE_NAME='emp';

-- EMP ���̺��� Ŀ�̼��� NULL�� ������� ��ȸ
SELECT * FROM EMP WHERE COMM = NULL;  --������ ��¾ȵ�:
SELECT * FROM EMP WHERE COMM IS NULL;

-- EMP ���̺��� Ŀ�̼��� NULL�� �ƴ� ������� ��ȸ
SELECT * FROM EMP WHERE COMM IS NOT NULL;

-- �޿��� 2000 ������ ������� ��ȸ
SELECT * FROM EMP WHERE SAL <= 2000;

-- 10�� �μ��� �����鸸 ��ȸ
SELECT * FROM EMP WHERE DEPTNO = 10;

-- �����ȣ, �����, �μ���ȣ, �޿�, Ŀ�̼�, �ѱ޿�(�޿�+Ŀ�̼�) ������ ��ȸ �� �ѱ޿��� 3000�� 
-- �̻��� ������� ���
-- ���� ���� ����, �޿��� Ŀ�̼��� (NULL) �����ʹ� 0���� ġȯ �� ��ȸ
SELECT EMPNO, ENAME, DEPTNO, SAL, NVL(COMM,0) COMM, SAL+NVL(COMM,0) TOT 
FROM EMP
WHERE SAL+NVL(COMM,0) >= 3000;

-- �μ���ȣ�� 20���� ������� �޿��� ���� ������ ���
SELECT * FROM EMP WHERE DEPTNO = 20
ORDER BY SAL DESC;

-- ��¥ ������ �˻� : ǥ���� ���������� ������ �񱳿����ڸ� ���� ���������� ó��
-- �Ի����� 1981�� 4�� 2���� ������ ��ȸ
SELECT * FROM EMP
WHERE HIREDATE = '81/04/02';

-- 1981�� 6�� 30�� ���� �Ի��ڵ��� ��ȸ�ϰ�, �ֱ� ��¥ �������� �������ּ���
SELECT * FROM EMP
WHERE HIREDATE >= '81/06/30'
ORDER BY HIREDATE DESC;

-- �������� : �� �� �̻��� �������� �˻��ϴ� ���
-- OR : �� ���� ���� �� �ϳ��� ����� ���� ��� ����
-- AND :  �� ���� ���� ��� ����� ���� ��� ����
-- NOT : �� ���� ����� ���� ���� ���

-- ������� 'SMITH'�̰� �μ����� 20���� ��� ���
SELECT * FROM EMP
WHERE ENAME = 'SMITH' AND DEPTNO = 20;

-- �μ���ȣ�� 10���̰�, �Ի����� 1981�� 6�� 30�� ���� �Ի��� ������� ���
SELECT * FROM EMP
WHERE DEPTNO = 10 AND HIREDATE >= '81/06/30';

-- 1981�� ��ݱ⿡ �Ի��� ������� ���(81/01/01 ~ 81/06/30)
SELECT * FROM EMP
WHERE HIREDATE >= '81/01/01'  AND  HIREDATE <= '81/06/30';

-- �޿� ������ 1500~ 3000 ������ ������� �޿��� ���� ���� ������ ����
SELECT * FROM EMP
WHERE SAL >= 1500  AND SAL <= 3000
ORDER BY SAL DESC;

-- BETWEEN ~~~ AND : ����, ������ �˻��ϴ� ��ɾ�
-- ����) WHERE  �÷��� BETWEEN  ���۱���    AND  ���ᱸ��   ;
-- 1981�� ��ݱ⿡ �Ի��� ������� ���(81/01/01 ~ 81/06/30)
SELECT * FROM EMP
WHERE HIREDATE BETWEEN  '81/01/01' AND  '81/06/30';

-- �޿� ������ 1500~ 3000 ������ ������� �޿��� ���� ���� ������ ����
SELECT * FROM EMP
WHERE SAL BETWEEN  1500 AND  3000
ORDER BY SAL DESC;

-- OR ����
-- Ŀ�̼��� 300�̰ų� 500�� ������� ���
SELECT * FROM EMP
WHERE COMM = 300  OR COMM = 500;

-- ������� 'SMITH' �̰ų� 'FORD' �̰ų� 'KING'�� ������� ���
SELECT * FROM EMP
WHERE ENAME='SMITH' OR ENAME='FORD' OR ENAME='KING';

-- IN ������ : OR �����ڸ� ��ü�ؼ� ���
-- ����) WHERE  �÷��� IN (������1,������2...);
-- Ŀ�̼��� 300�̰ų� 500�� ������� ���
SELECT * FROM EMP
WHERE COMM IN (300,500);

-- ������� 'SMITH' �̰ų� 'FORD' �̰ų� 'KING'�� ������� ���
SELECT * FROM EMP
WHERE ENAME  IN ('SMITH','FORD','KING');


-- NOT ������
-- ������� 'SMITH', 'FORD', 'KING'�� �ƴ� ������� ���
SELECT * FROM EMP
WHERE ENAME  NOT IN ('SMITH','FORD','KING');

-- Ŀ�̼��� 300, 500, 1400�� �ƴ� ������� ���
SELECT * FROM EMP
WHERE NVL(COMM,0) NOT IN (300,500,1400);

-- ������ �˻� : LIKE �����ڿ� ���ϵ� ī��(%, _)
-- % : ���ڰ� ���ų�, �ϳ� �̻��� ���ڰ� �� �� �ִ�.
-- _  : ���� �ϳ��� �˻��ϱ� ���� �ڸ��� ǥ���Ѵ�. 
SELECT * FROM EMP;

-- ������� A�� �����ϴ� ��� ������� ��� : A%
SELECT * FROM EMP
WHERE ENAME LIKE 'A%';

-- ������� F�� �����ϴ� ��� ������� ���
SELECT * FROM EMP
WHERE ENAME LIKE 'F%';

-- ����� �߿� A�� ���ԵǾ� �ִ� ��� ������� ���
SELECT * FROM EMP
WHERE ENAME LIKE '%A%';

-- ������� �ι�° ���ڰ� A�� �����ϴ� ��� ����� ���
SELECT * FROM EMP
WHERE ENAME LIKE '_A%';

-- ����� A�� ���� �ʴ� ��� ����� ���
SELECT * FROM EMP
WHERE ENAME NOT LIKE '%A%';

-- Ŀ�̼��� (NULL)�� ��� ����� ���
SELECT * FROM EMP;
SELECT * FROM EMP  WHERE COMM IS NULL;  --8
SELECT * FROM EMP  WHERE COMM IS NOT NULL;  --4

-- MGR �÷��� ���� ����� ���
SELECT * FROM EMP WHERE MGR IS NULL;

-- ���� : ORDER BY ���� ���� ���� ����� ���� ASC(��������)/DESC(��������)
-- ���� : ASC (�������� --> ū����)/ DESC(ū���� --> ��������) 
-- ���� : ASC (���� ������� ����)/ DESC(���� �ݴ� ������ ����) 
-- ��¥ : ASC (���� ��¥ ������� ����)/ DESC(���� ��¥ ������ ����) 
-- NULL : ASC(���� �������� ����)/DESC(���� ���� ����)

-- �μ���ȣ�� ������������ �����Ͽ� ���
SELECT * FROM EMP ORDER BY DEPTNO ASC;  -- ASC ��������
SELECT * FROM EMP ORDER BY DEPTNO DESC;  

-- ������� ���ĺ� �������� ������������ �������ּ���
SELECT * FROM EMP ORDER BY ENAME ;
SELECT * FROM EMP ORDER BY ENAME DESC;

-- �Ի��� �������� �������� �������ּ���
SELECT * FROM EMP ORDER BY HIREDATE;
SELECT * FROM EMP ORDER BY HIREDATE DESC;

-- Ŀ�̼��� �������� �������� �������ּ���
SELECT * FROM EMP ORDER BY COMM;
SELECT EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, NVL(COMM,0) COMM,DEPTNO
FROM EMP 
ORDER BY NVL(COMM,0);

SELECT EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, NVL(COMM,0) COMM,DEPTNO
FROM EMP 
ORDER BY NVL(COMM,0) DESC;

/****************
    SQL �ֿ� �Լ�
*****************/
-- DUAL ���̺� 
SELECT * FROM DUAL;

--1. �����Լ�
-- ABS : ���밪 ���ϱ�
SELECT 10, -10, ABS(-10)  FROM DUAL;

-- FLOOR : �Ҽ��� ������
SELECT 123.38534, FLOOR(123.38534)  FROM DUAL;

-- TRUNC(ATE) : �Ҽ��� Ư�� �ڸ��� ������
SELECT 123.38534, TRUNC(123.38534),  TRUNC(123.38534,1)  FROM DUAL;

-- MOD(������������:%)
SELECT MOD(27,2), MOD(27,5), MOD(27,7)  FROM DUAL;

-- EMP ���̺��� �����ȣ�� Ȧ���� ��� ������� ������ּ���
SELECT * FROM EMP
WHERE MOD(EMPNO,2) = 0;

SELECT MOD(EMPNO,2), EMPNO FROM EMP;


--2. �����Լ�
-- LOWER/UPPER/INITCAP
SELECT LOWER('HELLO'), UPPER('hello'), INITCAP('hello') FROM DUAL;

-- ������� 'smith' �ҹ������·� ��ȸ�Ͽ� ���
SELECT * FROM EMP
WHERE LOWER(ENAME) = 'smith';

-- ������� �Է¹��� ���°� ��,�ҹ������� ��Ȯ���� ������� ���̺� ����� ���·�
-- �Լ��� �����Ͽ� ��ȸ�� ����
SELECT * FROM EMP
WHERE ENAME = UPPER('smith');

-- LENGTH/LENGTHB : ������ ����
SELECT LENGTH('ORACLE'), LENGTH('����Ŭ')  FROM DUAL;
SELECT LENGTHB('ORACLE'), LENGTHB('����Ŭ')  FROM DUAL;

-- SUBSTR : ���ڿ��� �Ϻκ� ����
-- ����) SUBSTR(���ڿ�, ������ġ, ��󰹼�)
SELECT SUBSTR('ORACLE', 1,3) FROM DUAL;
SELECT SUBSTR('ORACLE', 3,2) FROM DUAL;
SELECT SUBSTR('ORACLE', -2,2) FROM DUAL;

-- EMP ���̺��� ������� �Ի�⵵�� ������ּ���
SELECT ENAME �����, SUBSTR(HIREDATE,1,2) �Ի�⵵ FROM EMP;

-- EMP ���̺��� ������� �Ի�⵵�� ���� ������ּ���
SELECT ENAME �����, SUBSTR(HIREDATE,1,2) �Ի�⵵, SUBSTR(HIREDATE,4,2)�Ի��
FROM EMP;

-- 81�⵵�� �Ի��� ��� ������� ������ּ���
SELECT * FROM EMP WHERE SUBSTR(HIREDATE,1,2) = '81';
SELECT * FROM EMP WHERE SUBSTR(HIREDATE,1,2) <> '81';

-- INSTR : Ư�������� ��ġ�� ���
-- ����) INSTR(���ڿ�, ã������, ������ġ, �� ��° �����)
-- ����) INSTRB(���ڿ�, ã������, ������ġ, �� ��° �����)
-- 'WELCOME TO ORACLE!!'  ���� 'O'�� ��ġ�� ã���ּ���
SELECT INSTR('WELCOME TO ORACLE!!','O',1) FROM DUAL;
SELECT INSTR('WELCOME TO ORACLE!!','O',1,2) FROM DUAL;
SELECT INSTR('WELCOME TO ORACLE!!','O',1,3) FROM DUAL;

SELECT INSTR('����Ŭ�����ͺ��̽�','��',1), INSTRB('����Ŭ�����ͺ��̽�','��',1)
FROM DUAL;

-- LPAD/RPAD : Ư�����ڷ� ä���
-- ����) LPAD/RPAD(���ڿ�, ���ڿ�����, ä�﹮��)
SELECT LPAD('ORACLE',20,'#') FROM DUAL;
SELECT RPAD('ORACLE',20,'#') FROM DUAL;

SELECT LPAD('ORACLE',20,' '), RPAD('ORACLE',20,' ') FROM DUAL;

-- LTRIM/RTRIM/TRIM : Ư�� ���ڸ� ����
-- ����) LTRIM/RTRIM('������ Ư�����ڰ� ���Ե� ���ڿ�')
--         TRIM('������ Ư������' FROM '������ Ư�����ڰ� ���Ե� ���ڿ�')   
SELECT LTRIM('        O  RACLE'), RTRIM('ORACLE         ') FROM DUAL;
SELECT TRIM('#' FROM '######ORACLE######') AS TRIM FROM DUAL;
SELECT TRIM('              ORACLE                 ') AS TRIM FROM DUAL;


--3. ��¥�Լ� : ǥ���� ������ '', ������ ������
-- SYSDATE : �ý����� ��¥�� ��ȯ�ϴ� �Լ�
SELECT SYSDATE ���糯¥ FROM DUAL;

-- ���ó�¥, ���ϳ�¥, 5���� ��¥, 100���� ��¥  ���
SELECT SYSDATE ���ó�¥, SYSDATE+1 ���ϳ�¥, 
                SYSDATE+5 "5����", SYSDATE+100 "100����"
FROM DUAL;

-- ���ó�¥�� �������� EMP ���̺��� ������� �ٹ��ϼ��� ���(�����ȣ, �����, �Ի���, �ٹ��ϼ�)
SELECT EMPNO �����ȣ, ENAME �����, HIREDATE �Ի���, 
                FLOOR(SYSDATE-HIREDATE) �ٹ��ϼ� 
FROM EMP;

-- ���ó�¥�� �������� EMP ���̺��� ������� �ٹ��ϼ��� ���(�����ȣ, �����, �Ի���, �ٹ��ϼ�)
-- ��, �ٹ��ϼ��� �Ҽ����� 2�ڸ����� ���(3��° �ڸ����� �ݿø�X)
SELECT EMPNO �����ȣ, ENAME �����, HIREDATE �Ի���, 
                TRUNC(SYSDATE-HIREDATE,2) �ٹ��ϼ� 
FROM EMP;

-- ���ó�¥�� �������� EMP ���̺��� ������� �ٹ��ϼ��� ���(�����ȣ, �����, �Ի���, �ٹ��ϼ�)
-- ��, �ٹ��ϼ��� �Ҽ����� 2�ڸ����� ���(2��° �ڸ����� �ݿø�O)
SELECT EMPNO �����ȣ, ENAME �����, HIREDATE �Ի���, 
                ROUND(SYSDATE-HIREDATE,2) �ٹ��ϼ� 
FROM EMP;

-- ��¥�Լ��� ROUND : ��¥ �������� �ݿø�
-- ����) ROUND(��¥, ����)
SELECT ENAME, HIREDATE, ROUND(HIREDATE, 'MONTH') FROM EMP;
SELECT ENAME, HIREDATE, ROUND(HIREDATE, 'YEAR') FROM EMP;

-- ��¥�Լ��� TRUNC : ��¥ �������� ����
-- ����) TRUNC(��¥, ����)
SELECT ENAME, HIREDATE, TRUNC(HIREDATE, 'MONTH') FROM EMP;
SELECT ENAME, HIREDATE, TRUNC(HIREDATE, 'YEAR') FROM EMP;

-- �ٹ��ϼ� : ���س�¥ - �Ի���
-- �ٹ������� : MONTHS_BETWEEN
-- ����) MONTHS_BETWEEN(���س�¥, �Ի���)
-- EMP ���̺��� ������� �ٹ��������� ������ּ���(�����ȣ,�����,�Ի���,�ٹ�������)
SELECT EMPNO, ENAME, HIREDATE, 
                FLOOR(MONTHS_BETWEEN(SYSDATE,HIREDATE)) �ٹ�������
FROM EMP;

-- EMP ���̺��� ����� �� �ٹ��������� 490���� �̻��� ������� ���
SELECT EMPNO, ENAME, HIREDATE, 
                FLOOR(MONTHS_BETWEEN(SYSDATE,HIREDATE)) �ٹ�������
FROM EMP
WHERE MONTHS_BETWEEN(SYSDATE,HIREDATE) >= 490 ;

-- ADD_MONTHS(��¥, ������)
-- EMP ���̺��� ������� �Ի����ڿ� 6������ ���� ����� ���
SELECT EMPNO, ENAME, HIREDATE, ADD_MONTHS(HIREDATE,6) FROM EMP;

-- EMP ���̺��� ������� �Ի��� ���� 36���� ���� ���� �ٹ��ϼ��� �ٹ��������� ���
-- ��, �Ҽ����� ����
SELECT EMPNO, ENAME, HIREDATE, ADD_MONTHS(HIREDATE,36) "36������"
                    , TRUNC(ADD_MONTHS(HIREDATE,36)-HIREDATE) �ٹ��ϼ�
                    , TRUNC(MONTHS_BETWEEN(ADD_MONTHS(HIREDATE,36),HIREDATE)) �ٹ�������
FROM EMP;


-- ����ȯ �Լ� : ����Ŭ�� ������Ÿ���� �ٸ� ������Ÿ������ ��ȯ�ϴ� �Լ�
-- TO_CHAR : ������, ��¥���� ���������� ��ȯ
-- TO_DATE : ������/�������� ��¥������ ��ȯ
-- TO_NUMBER : �������� ���������� ��ȯ

-- TO_CHAR : ��¥ ���¸� ���������� ��ȯ
-- ����) TO_CHAR(��¥������, '��ȯ����')
-- * ��ȯ���� : YYYY(�⵵ 4�ڸ�), YY(�⵵ 2�ڸ�), MM(�� 2�ڸ�), MON(�� ���ĺ�)
--                  DAY(���� ����ǥ��), DY(����  ���)

-- EMP ���̺��� �Ի����� ������ '1980-12-17' �������� ������ּ���
SELECT ENAME, HIREDATE, TO_CHAR(HIREDATE, 'YYYY-MM-DD') �������1
                , TO_CHAR(HIREDATE, 'YYYY/MON/DAY') �������2
                , TO_CHAR(HIREDATE, 'YY/MON/DY') �������2
FROM EMP;

-- ����) TO_CHAR(��¥������, '��ȯ���� �ð�����')
-- * ��ȯ����(�ð�) : AM/PM (����/����), A.M/P.M, HH/HH12(12�ð� ����), HH24(24�ð� ����),
--                              MI(��), SS(��)
SELECT SYSDATE, TO_CHAR(SYSDATE, 'YY-MM-DD  HH:MI:SS') 
                                 , TO_CHAR(SYSDATE, 'YY-MM-DD PM HH24:MI:SS') 
FROM DUAL;

SELECT ENAME, HIREDATE, TO_CHAR(HIREDATE, 'YYYY-MM-DD  HH:MI:SS') �������1
                , TO_CHAR(HIREDATE, 'YYYY/MON/DAY') �������2
                , TO_CHAR(HIREDATE, 'YY/MON/DY') �������2
FROM EMP;


-- TO_CHAR : TO_CHAR(����, '���� ��ȯ����')
-- ��ȯ���� : 0(�ڸ����� 0�� ä�������), 9(�ڸ����� ���� ������ ä���� ����)
--                  , L(�� ���� ��ȭ��ȣ�� ǥ��), �޸�(,):õ������ ��� ����    

-- EMP ���̺��� �޿��� õ������ �����ؼ� ������ּ���
SELECT ENAME, SAL, TO_CHAR(SAL, '999,999') 
                        , TO_CHAR(SAL, '000,000'), TO_CHAR(SAL, 'L999,999') 
FROM EMP;

-- EMP ���̺��� �޿��� Ŀ�̼��� õ������ �����ؼ� ������ּ���
-- ��, ������� Ŀ�̼��� NULL�� ����� �⺻������ 1000�� �Է���
SELECT ENAME, SAL, COMM
                    , TO_CHAR(SAL, 'L999,999') NEW_SAL
                    , TO_CHAR(NVL(COMM,1000), 'L999,999') NEW_COMM
FROM EMP;        

-- TO_DATE : ������ �Ǵ� �������� ��¥������ ��ȯ�ϴ� �Լ�
-- ����)TO_DATE('����'/����, '��¥����')
SELECT TO_DATE('20211010', 'YY/MM/DD') FROM DUAL;

SELECT TO_DATE('20211010', 'YY/MM/DD'),
                TO_CHAR(TO_DATE('20211010', 'YY/MM/DD'), 'YYYY-MM-DD') 
FROM DUAL;

--
SELECT TO_DATE(20211010, 'YY/MM/DD'),
                TO_CHAR(TO_DATE('20211010', 'YY/MM/DD'), 'YYYY-MM-DD') 
FROM DUAL;

-- TO_NUMBER : �������� ���������� ��ȯ�ϴ� �Լ�
-- ����) TO_NUMBER('������', ��ȯ�ϴ� Ÿ��)

-- '200' ���� '100'�� �� ���� ������ּ���
SELECT TO_NUMBER('200','999') - TO_NUMBER('100','999') ���  FROM DUAL;


/****************
    �׷� �Լ�
    
    1.  �׷��Լ� - SUM, AVG, MAX, MIN...
    2.  GROUP BY  
    3.  HAVING 
    4.  ROLLUP, CUBE
    5.  UNION, UNION ALL    
*****************/

-- 1. �׷��Լ� : SUM, AVG, MAX, MIN, COUNT
-- ����) �׷��Լ�(�÷���)

-- EMP ���̺��� ��� ����� �ѱ޿��� ���(3�ڸ� �޸��� ����, ��ȭ��ȣ ǥ��)
SELECT SUM(SAL) �ѱ޿�, TO_CHAR(SUM(SAL), 'L999,999') �ѱ޿�2 FROM EMP;

-- EMP ���̺��� ����� �� �ο����� ���
SELECT COUNT(*) FROM EMP;

-- EMP ���̺��� ��� �μ��� ������ ���
SELECT COUNT(DISTINCT DEPTNO) FROM EMP;

-- EMP ���̺��� ��� JOB�� ������ ���
SELECT COUNT(DISTINCT JOB) FROM EMP;

-- EMP ���̺��� ��� ����� �ѱ޿�, ��ձ޿��� ���
-- 3�ڸ� ���� ����, �Ҽ��� 2�ڸ����� ����
SELECT SUM(SAL) �ѱ޿�, AVG(SAL) ��ձ޿� 
                , TO_CHAR(SUM(SAL),'999,999') �ѱ޿�2
                , TO_CHAR(TRUNC(AVG(SAL),2),'99,999.99') ��ձ޿�2 
FROM EMP;

-- EMP ���̺��� Ŀ�̼� ������ ���(��, ������� ���� Ŀ�̼��� ���� ��� �⺻�� 10�� ������)
SELECT SUM(COMM), SUM(NVL(COMM,10)) FROM EMP;

-- Ŀ�̼��� �޴� ��� ����� ���� ���
SELECT COUNT(COMM), COUNT(NVL(COMM,10)) FROM EMP;

-- �Ŵ����� ������ �ִ� ����� ���� ���
SELECT COUNT(MGR) FROM EMP;
SELECT ENAME, JOB, MGR FROM EMP WHERE MGR IS NULL;

-- �ѱ޿�, ��ձ޿�, �ְ�޿�, �����޿��� ���
SELECT SUM(SAL) �ѱ޿�, AVG(SAL) ��ձ޿�, MAX(SAL) �ְ�޿�, MIN(SAL) �����޿�
FROM EMP;

-- �Ի����� ���� ������ ���, �ֱ� �Ի��� ��� �� ���
SELECT MIN(HIREDATE), MAX(HIREDATE) FROM EMP;

-- 2. GROUP BY
-- ����) SELECT  {�÷�����Ʈ �� �׷��Լ�, �Ϲ��÷�...}  FROM ���̺��
--         GROUP BY  {�׷����� ���� �Ϲ��÷���}
--         WHERE { ������}

-- �μ��� �޿��� �ѱ޿�, ��ձ޿��� ���
SELECT DEPTNO, SUM(SAL), AVG(SAL) 
FROM EMP
GROUP BY DEPTNO
ORDER BY DEPTNO;

-- �μ��� �ְ�޿�, �����޿��� ���
SELECT DEPTNO, MAX(SAL), MIN(SAL) 
FROM EMP
GROUP BY DEPTNO
ORDER BY DEPTNO;

-- ������ �ְ�޿�, �����޿��� ���
SELECT JOB, MAX(SAL), MIN(SAL)
FROM EMP
GROUP BY JOB
ORDER BY JOB;

-- �Ի�⵵�� ������� ���
SELECT SUBSTR(HIREDATE,1,2), COUNT(*)
FROM EMP
GROUP BY SUBSTR(HIREDATE,1,2)
ORDER BY SUBSTR(HIREDATE,1,2);

-- �Ի�⵵, �Ի���� ������� ���
SELECT SUBSTR(HIREDATE,1,2) �Ի�⵵, SUBSTR(HIREDATE,4,2) �Ի��, COUNT(*)
FROM EMP
GROUP BY SUBSTR(HIREDATE,1,2), SUBSTR(HIREDATE,4,2)
ORDER BY SUBSTR(HIREDATE,1,2), SUBSTR(HIREDATE,4,2);

--3. HAVING �� : GROUP BY ����� ������ �߰�
-- �μ��� ��ձ޿��� ���
SELECT DEPTNO, FLOOR(AVG(SAL))
FROM EMP
GROUP BY DEPTNO
ORDER BY DEPTNO;

-- �μ��� ��ձ޿��� 2000 �̻��� �μ��� ���
SELECT DEPTNO, FLOOR(AVG(SAL))
FROM EMP
GROUP BY DEPTNO
HAVING AVG(SAL) >= 2000
ORDER BY DEPTNO;

-- ���޺� �ְ�޿�, �ּұ޿��� ������ּ���(�ְ�޿��� 2500 �̻��� ���޸� ���)
SELECT JOB, MAX(SAL), MIN(SAL)
FROM EMP
GROUP BY JOB
HAVING MAX(SAL) >= 2500
ORDER BY JOB;

-- �Ի�⵵�� �ְ�޿�, �����޿��� ���(�ְ�޿��� 3000 �̻��̰�, �����޿��� 800�̻�)
SELECT SUBSTR(HIREDATE,1,2), MAX(SAL), MIN(SAL)
FROM EMP
GROUP BY SUBSTR(HIREDATE,1,2)
HAVING MAX(SAL) >= 3000  AND MIN(SAL) >= 800
ORDER BY SUBSTR(HIREDATE,1,2);


--4. ROLLUP/CUBE �Լ� : �׷����� ��� �Ʒ��� �߰������� ��ü������ ���
-- ����) GROUP BY {�׷��� �÷�},  ROLLUP/CUBE(�÷���)

-- �Ի�⵵�� ������� ���
SELECT SUBSTR(HIREDATE,1,2), COUNT(*)
FROM EMP
GROUP BY ROLLUP(SUBSTR(HIREDATE,1,2))
ORDER BY SUBSTR(HIREDATE,1,2);

-- �Ի�⵵�� ������� ���(ROLLUP ����÷��� �̸��߰�)
SELECT NVL(TO_CHAR(SUBSTR(HIREDATE,1,2)),'���ο���'), COUNT(*)
FROM EMP
GROUP BY ROLLUP(SUBSTR(HIREDATE,1,2))
ORDER BY SUBSTR(HIREDATE,1,2);

-- �μ��� �ѱ޿��� ���(ROLLUP ����÷��� '�ѱ޿�' �̸��߰�)
SELECT NVL(TO_CHAR(DEPTNO),'�ѱ޿�'), SUM(SAL)
FROM EMP
GROUP BY ROLLUP(DEPTNO)
ORDER BY DEPTNO;

-- �� �μ��� ������ �ѱ޿��� ���
SELECT NVL(TO_CHAR(DEPTNO),'���հ�'), NVL(JOB,'�μ����հ�'), SUM(SAL)
FROM EMP
GROUP BY ROLLUP(DEPTNO, JOB)
ORDER BY DEPTNO;

--- CUBE �Լ�
-- �Ի�⵵�� ������� ���
SELECT SUBSTR(HIREDATE,1,2), COUNT(*)
FROM EMP
GROUP BY CUBE(SUBSTR(HIREDATE,1,2))
ORDER BY SUBSTR(HIREDATE,1,2);

-- �Ի�⵵�� ������� ���(ROLLUP ����÷��� �̸��߰�)
SELECT NVL(TO_CHAR(SUBSTR(HIREDATE,1,2)),'���ο���'), COUNT(*)
FROM EMP
GROUP BY CUBE(SUBSTR(HIREDATE,1,2))
ORDER BY SUBSTR(HIREDATE,1,2);

-- �� �μ��� ������ �ѱ޿��� ���
SELECT NVL(TO_CHAR(DEPTNO),'���հ�'), NVL(JOB,'�μ����հ�'), SUM(SAL)
FROM EMP
GROUP BY CUBE(DEPTNO, JOB)
ORDER BY DEPTNO;

-- �� �μ��� �Ի�⵵�� ��ձ޿��� ���(CUBE �Լ�Ȱ��)
SELECT NVL(TO_CHAR(DEPTNO),'�μ��� ��ձ޿�')
                , NVL(TO_CHAR(SUBSTR(HIREDATE,1,2)),'������ ��ձ޿�') �Ի�⵵
                , FLOOR(AVG(SAL)), COUNT(*)
FROM EMP
GROUP BY CUBE(DEPTNO, SUBSTR(HIREDATE,1,2))
ORDER BY DEPTNO;

--5. UNION : ���� ������ ������(�ߺ�����)
-- �μ���ȣ�� 10���� ������ �μ���ȣ�� 30���� ������� ����
SELECT * FROM EMP WHERE DEPTNO=10
UNION
SELECT * FROM EMP WHERE DEPTNO = 30;

-- UNION�� UNION ALL ����
SELECT * FROM EMP UNION SELECT * FROM EMP;   --12
SELECT * FROM EMP UNION ALL SELECT * FROM EMP;   --24

--UNION ALL : ���� ������ ������
-- �μ���ȣ�� 10���� ������ �μ���ȣ�� 30���� ������� ����
SELECT * FROM EMP WHERE DEPTNO=10
UNION ALL
SELECT * FROM EMP WHERE DEPTNO = 30;

-- UNION/UNION ALL ���� ��µǴ� �÷�����Ʈ�� �����ؾ���
SELECT EMPNO, ENAME, SAL FROM EMP
UNION
SELECT EMPNO, ENAME, SAL FROM EMP;

-- �������� ������
-- �μ��� ��ü �ο���, Ŀ�̼��� �޴� �ο��� ���(������� Ŀ�̼��� NULL�� ���, �⺻�� 0)
SELECT DEPTNO, COUNT(*)
FROM (SELECT DEPTNO, NVL(COMM,0) FROM EMP
                WHERE NVL(COMM,0) <> 0)
GROUP BY DEPTNO
ORDER BY DEPTNO;

/**********************************
    ����(JOIN)/��������(SubQuery)
    - ���̺� ���̸� ������ �ִ� SQL
***********************************/
--1. CROSS ���� : ���̺� �ο�� * ���̺� �ο�� ...

-- EMP ���̺�� DEPT ���̺��� CROSS �����ϼ���
SELECT * FROM EMP, DEPT;
SELECT COUNT(*) FROM EMP, DEPT;  --48
SELECT COUNT(*) FROM DEPT, EMP;  -- 48

-- EMP ���̺�� DEPT ���̺��� CROSS �����ϼ���
SELECT COUNT(*) FROM EMP, DEPT, SALGRADE;  --240

-- ANSI SQL : CROSS JOIN
SELECT COUNT(*) FROM EMP CROSS JOIN SALGRADE;  -- 60

--2. EQUI ���� : ������ �÷��� �̿��Ͽ� �����ϴ� ���
-- ����) SELECT {�÷�����Ʈ} FROM ������ ���̺��1, ���̺�2....
--         WHERE ���̺��1.�����÷� = ���̺��2.�����÷�

-- EMP ���̺�� DEPT ���̺��� DEPTNO �÷��� �̿��Ͽ� EQUI �����ϼ���
SELECT COUNT(*) FROM EMP, DEPT
WHERE EMP.DEPTNO = DEPT.DEPTNO;

-- ANSI SQL : INNER JOIN ~ ON
SELECT COUNT(*) FROM EMP INNER JOIN DEPT
ON EMP.DEPTNO = DEPT.DEPTNO;


-- EMP, DEPT ���̺��� �����Ͽ�, �����ȣ, �����, �Ի���, �μ���ȣ,�μ��� ���
SELECT EMPNO, ENAME, HIREDATE, EMP.DEPTNO, DNAME
FROM EMP, DEPT
WHERE EMP.DEPTNO = DEPT.DEPTNO;

-- EMP, DEPT ���̺��� �����Ͽ�, �����ȣ, �����, �Ի���, �μ���ȣ,�μ��� ���
SELECT EMPNO, ENAME, HIREDATE, E.DEPTNO, DNAME
FROM EMP E, DEPT D
WHERE E.DEPTNO = D.DEPTNO;

-- KING ����� �����ȣ, �����, �޿�, �μ���, �μ���ġ�� ���
SELECT EMPNO, ENAME, SAL, DNAME, LOC
FROM EMP E, DEPT D
WHERE E.DEPTNO = D.DEPTNO
AND ENAME='KING';

-- ���忡�� �ٹ��ϴ� ����� ������ �μ����� ���
SELECT ENAME, DNAME
FROM EMP E, DEPT D
WHERE E.DEPTNO = D.DEPTNO
AND LOC='NEW YORK';

-- ACCOUNTING �μ��� ���ϴ� ����� ��� ������ ���
SELECT *
FROM EMP E, DEPT D
WHERE E.DEPTNO = D.DEPTNO
AND DNAME='ACCOUNTING';

-- JOB�� �Ŵ����� ����� ������ �μ���ȣ, �μ����� ���
SELECT ENAME, E.DEPTNO, DNAME
FROM EMP E, DEPT D
WHERE E.DEPTNO = D.DEPTNO
AND JOB='MANAGER'
ORDER BY DEPTNO;

-- 3. NON-EQUI ���� : 
SELECT * FROM EMP;
SELECT * FROM SALGRADE;

--  CROSS JOIN
SELECT COUNT(*) FROM EMP, SALGRADE;  --60


-- ������ ����Ͽ� JOIN �ϴ� ���
-- SALGRADE�� �ִ� LOSAL, HISAL �޿������� ���ϴ� EMP�� SAL �÷��� ����
SELECT * 
FROM EMP, SALGRADE
WHERE SAL BETWEEN LOSAL AND HISAL  ;

--4. SELF JOIN
-- 'SMITH' ����� �Ŵ��� ������ ���
SELECT E2.EMPNO, E2.ENAME, E2.JOB, E2.DEPTNO 
FROM EMP E1, EMP E2
WHERE E1.MGR = E2.EMPNO
AND E1.ENAME='SMITH';

-- 'KING'�� �Ŵ����� ������ �ִ� ��������� ���
SELECT E1.EMPNO, E1.ENAME, E1.MGR, E2.ENAME
FROM EMP E1, EMP E2
WHERE E1.MGR = E2.EMPNO
AND E2.ENAME='KING';

--(��������)'KING'�� �Ŵ����� ������ �ִ� ��������� ���
SELECT * 
FROM EMP
WHERE MGR = (SELECT EMPNO FROM EMP WHERE ENAME='KING');

--5. OUTER JOIN
-- EQUI JOIN�� ���� ������ �� ����� ���Ե��� �ʴ� ����� �߰��� �Բ� ����ϴ� ���

SELECT * FROM DEPT;
SELECT DISTINCT DEPTNO FROM EMP;

-- ��� �μ��� ������� ����ϴ� ����(OUTER ����)
SELECT * FROM EMP, DEPT
    WHERE EMP.DEPTNO(+) = DEPT.DEPTNO;
    
-- ��� ������� �Ŵ��� ������ ����ϴ� ����
SELECT * 
FROM EMP EMPLOYEE, EMP MANAGER
WHERE EMPLOYEE.MGR = MANAGER.EMPNO(+);

-- ANSI SQL : (LEFT/RIGHT/FULL) OUTER JOIN
SELECT * 
FROM EMP EMPLOYEE  LEFT OUTER JOIN  EMP MANAGER
ON EMPLOYEE.MGR = MANAGER.EMPNO;


/***********************************************
    ��������(SubQuery)
    
    -----------------------------------
    ����������                   ��ġ
    -----------------------------------
    ��Į�� ��������            �÷�����Ʈ
    �ζ��� ��                     ���̺�
    ����(��ø) ��������      WHERE, HAVING �� ��
   -----------------------------------
    
***********************************************/
-- ����
SELECT * FROM EMP
WHERE MGR = 7902;

-- ���� �� �������� : ���������� ������ ����� �ϳ��� �ο�� ��µǴ� ����
--                           �񱳿�����(>,<...) �� �̿��Ͽ� ������ ó����

SELECT * FROM EMP
WHERE MGR = (SELECT EMPNO FROM EMP WHERE ENAME='FORD');

-- SMITH�� ���� ����(JOB)�� ���� ����� ������ּ���
SELECT * FROM EMP
WHERE JOB = (SELECT JOB FROM EMP WHERE ENAME='SMITH');

-- SMITH�� �޿��� ���ų� �� ���� �޴� ����� ������ ������ּ���
SELECT * FROM EMP
WHERE SAL >= (SELECT SAL FROM EMP WHERE ENAME='SMITH');

-- DALLAS���� �ٹ��ϴ� ����� �̸�, �μ���ȣ�� ������ּ���
SELECT ENAME, DEPTNO FROM EMP
WHERE DEPTNO = (SELECT DEPTNO FROM DEPT WHERE LOC='DALLAS');

-- SALES �μ����� �ٹ��ϴ� ����� �����ȣ, �����, �޿��� ������ּ���.
SELECT EMPNO, ENAME, SAL
FROM EMP
WHERE DEPTNO = (SELECT DEPTNO FROM DEPT WHERE DNAME='SALES');

-- �Ŵ����� KING�� ����� ������ ������ּ���(��������)
SELECT * FROM EMP
WHERE MGR = (SELECT EMPNO FROM EMP WHERE ENAME='KING');


-- ���� �� �������� : ���������� ������ ����� �������� �ο�� ��µǴ� ����
--                           IN, ANY, SOME, ALL, EXIST�� �̿��Ͽ� ������ ó����


-- IN ������
-- �μ����� ���� ���� �޿��� �޴� ����� ������ ������ּ���.
SELECT * FROM EMP
WHERE SAL IN (SELECT MAX(SAL) FROM EMP GROUP BY DEPTNO);

SELECT * FROM EMP
WHERE SAL IN (5000,3000,2850);

SELECT * FROM EMP
WHERE SAL =5000 OR SAL=3000 OR SAL=2850;

-- ������ MANAGER�� ����� ���� �μ��� �μ���ȣ�� �μ���� ������ ������ּ���
SELECT DEPTNO, DNAME, LOC
FROM DEPT
WHERE DEPTNO IN (SELECT DEPTNO FROM EMP 
                                    WHERE JOB = 'MANAGER')
ORDER BY DEPTNO;

-- ALL ������
-- 30�� �μ��� ���� ����麸�� �޿��� ���� �޴� ����� ������ ������ּ���
SELECT * FROM EMP
WHERE SAL > ALL(SELECT SAL FROM EMP WHERE DEPTNO=30);

-- MAX �Լ��� �̿��� ������� ��ü
SELECT * FROM EMP
WHERE SAL > (SELECT MAX(SAL) FROM EMP WHERE DEPTNO=30);


-- ANY ������
-- 30�� �μ��� ���� ����� �� ���� ���� �޿��� �޴� ������� �޿��� ���� ����� ������ ������ּ���
SELECT * FROM EMP
WHERE SAL > ANY(SELECT SAL FROM EMP WHERE DEPTNO=30);

-- MIN �Լ��� �̿��Ͽ� ��ü
SELECT * FROM EMP
WHERE SAL > (SELECT MIN(SAL) FROM EMP WHERE DEPTNO=30);


-- ��Į�� �������� : �÷�����Ʈ �ڸ��� ���� �������� ����
-- 30�� �μ��� ���� ������� �����ȣ, �����, �޿�, �μ���ȣ, �μ����� ������ּ���
SELECT EMPNO, ENAME, SAL, DEPTNO
            ,(SELECT DNAME FROM DEPT 
                    WHERE DEPTNO=30) DNAME
FROM EMP
WHERE DEPTNO = 30;

-- EQUI ����
SELECT EMPNO, ENAME, SAL, E.DEPTNO, DNAME
FROM EMP E, DEPT D
WHERE E.DEPTNO = D.DEPTNO
    AND E.DEPTNO = 30;
    
    
--�ζ��� �� : ���̺� �ڸ��� ���� ��������
-- EMP ���̺��� �ֱ� �Ի��� �������� �����ϰ�, 
--���ȣ(ROWNUM)�� ����ϴ� ������ �ۼ����ּ���
--* ORDER BY�� ROWNUM �� ���ÿ� ����ȵ� : ORDER BY > ROWNUM
SELECT ROWNUM RNO, EMPNO, ENAME, HIREDATE, SAL
FROM (SELECT EMPNO, ENAME, HIREDATE, SAL
                FROM EMP
                ORDER BY SAL DESC);


/***********************************************
    ���̺� ���� ����, ���� �� �����ϴ� DDL    
    - ���̺� ���� : CREATE TABLE
    - ���̺� ���� ���� : ALTER TABLE
    - ���̺� ���� : DROP TABLE
    - ���̺��� ��� �� ���� : TRUNCATE TABLE
    - ���̺� �̸� ���� : RENAME 
    
    * DDL ����� �����ͺ��̽��� �ٷ� ����Ǳ� ������ ROLLBACK�� �Ұ���
***********************************************/
--���̺� ���� : ����) CREATE TABLE {���̺��} (
--                              �÷���  �÷�Ÿ��  ũ��  �������, 
--                              ....
--                           );

-- SCOTT ������ ������ ���̺� ����Ʈ Ȯ�� : �����͵�ųʸ�(USER_TABLES)
SELECT * FROM USER_TABLES;

-- EMP01 ���̺� ����
-- �÷�����Ʈ(EMPNO  NUMBER(4), ENAME  VARCHAR2(50), HIREDATE DATE)
CREATE TABLE EMP01(
    EMPNO       NUMBER(4),
    ENAME       VARCHAR2(50),
    HIREDATE  DATE
);

SELECT * FROM USER_TABLES WHERE TABLE_NAME='EMP01';

-- EMP01�� ���̺� ���� Ȯ��
DESC EMP01; 

-- EMP02 ���̺� ����
-- �÷�����Ʈ(EMPNO  NUMBER(4) �������������, ENAME  VARCHAR2(50), HIREDATE DATE)
CREATE TABLE EMP02(
    EMPNO       NUMBER(4)   NOT NULL,
    ENAME       VARCHAR2(50),
    HIREDATE  DATE
);
SELECT * FROM USER_TABLES WHERE TABLE_NAME='EMP02';
DESC EMP02;

--���̺� ���� :  ������ ���̺��� �����Ͽ� ���ο� ���̺��� �����ϴ� ����
--����) CREATE TABLE {���̺��} 
--         AS
--         SELECT~ (���� ���̺��� �����͸� �������� SELECT ��� ����);
-- * ���� ���̺��� �������(CONSTRAINT)�� �������� ����--> ALTER TABLE�� �߰��ؾ���

-- DEPT ���̺��� �����Ͽ� ��ü ������ DEPT01 ���̺� ����(����)
CREATE TABLE DEPT01
AS 
SELECT * FROM DEPT;

SELECT * FROM USER_TABLES WHERE TABLE_NAME='DEPT01';
DESC DEPT01;
DESC DEPT;

-- EMP ���̺��� �����ȣ, �����, �޿�, Ŀ�̼�, �μ���ȣ�� �����Ͽ� EMP03 ���̺��� �����ϼ���
CREATE TABLE EMP03
AS
SELECT EMPNO, ENAME, SAL, COMM, DEPTNO FROM EMP;

SELECT * FROM USER_TABLES WHERE TABLE_NAME='EMP03';
SELECT * FROM EMP03;

-- EMP�� DEPT ���̺��� EQUI ������ ����� EMP_DEPT ���̺��� �����Ͽ� �������ּ���.
CREATE TABLE EMP_DEPT
AS
SELECT EMPNO, ENAME, JOB, E.DEPTNO, DNAME, LOC FROM EMP E, DEPT D
WHERE E.DEPTNO = D.DEPTNO;

SELECT * FROM USER_TABLES WHERE TABLE_NAME='EMP_DEPT';
SELECT * FROM EMP_DEPT;

-- ���̺��� ������ �����Ͽ� ���ο� ���̺� ����
-- EMP ���̺��� ������ �����Ͽ� EMP04 ���̺��� �������ּ���
CREATE TABLE EMP04
AS SELECT * FROM EMP WHERE 1=0;

SELECT * FROM USER_TABLES
WHERE TABLE_NAME='EMP04';


-- ���̺� ���� ���� : ALTER TABLE {���̺��} 
--                           (�÷��߰�):      ADD �÷��� Ÿ��(ũ��) �������
--                           (�÷�����):      MODIFY �÷��� Ÿ��(ũ��) �������
--                           (�÷�����):      DROP COLUMN �÷��� 
-- * �÷��� �����ϴ� MODIFY ��쿡�� ������ ��/���� ���� ������ ���� �����ϼ���!

-- EMP01 ���̺� SAL(�Ǽ�, �Ҽ���2�ڸ�) �÷��� �߰�
SELECT * FROM USER_TABLES WHERE TABLE_NAME='EMP01';
DESC EMP01;

ALTER TABLE EMP01
    ADD (SAL  NUMBER(7,2));
    
-- EMP01 ���̺��� HIREDATE �÷��� Ÿ���� VARCHAR2(30) Ÿ������ �������ּ���
SELECT * FROM EMP01;
ALTER TABLE EMP01
    MODIFY(HIREDATE VARCHAR2(30));

DESC EMP01;    

-- EMP03 ���̺��� ENAME �÷��� NUMBER(30) Ÿ������ �������ּ���
-- ENAME �÷��� �����Ͱ� �����ϹǷ� �ٸ� ������Ÿ������ ������ �Ұ��� ���� �޽��� ���
--ORA-01439: column to be modified must be empty to change datatype
--01439. 00000 -  "column to be modified must be empty to change datatype"
SELECT * FROM EMP03;
DESC EMP03;
ALTER TABLE EMP03
   MODIFY(ENAME NUMBER(30));
   
   
-- EMP01 ���̺��� SAL �÷��� ����
DESC EMP01;
ALTER TABLE EMP01
   DROP COLUMN SAL;
   
   
-- ���̺��� ��� �� ���� : TRUNCATE TABLE {���̺��}
-- EMP03 ���̺��� ������� �������ּ���(�����Ұ�)  VS DELETE ����� ��������
SELECT * FROM EMP03;
TRUNCATE TABLE EMP03;

-- ���̺��� �̸� ���� : RENAME {OLD_���̺��} TO {NEW_���̺��};
-- EMP01 ���̺���� EMP001�� ������ �ּ���
RENAME  EMP01 TO EMP001;
SELECT * FROM USER_TABLES;

-- ���̺��� ���� : DROP TABLE {������ ���̺��};
-- EMP001 ���̺��� �������ּ���
DROP TABLE EMP001;
SELECT * FROM USER_TABLES WHERE TABLE_NAME='EMP001';

-- �����͵�ųʸ� ���̺� : ���̺� ���� ����/����/���� ���� �۾��� �߻��ϸ�
-- �ý����� �������� �ڵ����� ��ųʸ� ���̺� ��������� �����Ͽ� ������
-- USER_XXXX, DBA_XXXX, ALL_XXXX ���� �����͵�ųʸ� ���̺��� ������

-- SCOTT �������� ������ ��� ���̺���Ʈ�� Ȯ��
SELECT * FROM USER_TABLES;

-- SCOTT �������� �����Ǿ��� ���̺���� ������ ��� ��������� Ȯ��
SELECT * FROM USER_CONSTRAINTS;

-- SCOTT �������� ������ ��� ������(�ڵ���ȣ������)���� ��� Ȯ��
SELECT * FROM USER_SEQUENCES;

-- ��� ��ųʸ� ���̺� ��� Ȯ��
DESC ALL_TABLES;


/***********************************************
    ���̺� ������ �߰�, ������ ����, ������ ���� DML    
    - ������ �߰�(C) : INSERT INTO
    - ������ ��ȸ(R) : SELECT ~ 
    - ������ ����(U) : UPDATE  ~ SET
    - ������ ����(D) : DELETE ~
***********************************************/
-- ������ �߰� : INSERT 
-- ����) INSERT INTO {���̺��}(�÷�1, �÷�2...)
--         VALUES(������1, ������2...);

-- EMP ���̺��� �����ȣ, �����, �μ���ȣ �÷��� ������ �����Ͽ� EMP01�� �������ּ���
SELECT * FROM USER_TABLES 
WHERE TABLE_NAME='EMP01';

CREATE TABLE EMP01
AS
SELECT EMPNO, ENAME, DEPTNO 
FROM EMP
WHERE 1=0;

DESC EMP01;

-- EMP01 ���̺� 7369,SMITH,20  ������ �߰�
INSERT INTO EMP01(EMPNO, ENAME, DEPTNO)
    VALUES(7369,'SMITH',20);
SELECT * FROM EMP01;

-- EMP01 ���̺� 7399,KING,30  ������ �߰�
INSERT INTO EMP01 VALUES(7399,'KING',30);

-- EMP01 ���� ���¿��� �ߺ� ����??
SELECT * FROM USER_CONSTRAINTS;
SELECT * FROM USER_CONS_COLUMNS;

INSERT INTO EMP01 VALUES(7399,'KING',30);
SELECT * FROM EMP01;
DESC EMP01;
INSERT INTO EMP01 VALUES(7399,'KING', NULL);
INSERT INTO EMP01 VALUES(NULL,NULL, NULL);

INSERT INTO EMP01(EMPNO) VALUES(7488);
INSERT INTO EMP01(EMPNO, ENAME) VALUES(7488,'FORD');
INSERT INTO EMP01(EMPNO) VALUES(7488,'FORD');

-- EMP001 ���̺� ���� : �����ȣ(PK-UNIQUE+NOT NULL), �����, �μ���ȣ
CREATE TABLE EMP001(
    EMPNO    NUMBER(4)   PRIMARY KEY, 
    ENAME    VARCHAR2(30)  NOT NULL,
    DEPTNO  NUMBER(2)
);
SELECT * FROM USER_TABLES WHERE TABLE_NAME='EMP001';
SELECT * FROM USER_CONSTRAINTS WHERE TABLE_NAME='EMP001';

INSERT INTO EMP001(EMPNO,ENAME,DEPTNO)
VALUES(1234,'ȫ�浿',20);

INSERT INTO EMP001(EMPNO,ENAME,DEPTNO)
VALUES(7368,'ȫ�浿',20);

INSERT INTO EMP001(EMPNO,ENAME,DEPTNO)
VALUES(7399,'SMITH',20);

-- NULL CHECK
--INSERT INTO EMP001(EMPNO,ENAME,DEPTNO)
--VALUES(7399,NULL,20);

--INSERT INTO EMP001(EMPNO,DEPTNO)
--VALUES(7844,40);

INSERT INTO EMP001(EMPNO,ENAME)
VALUES(7845,'HONG');

SELECT * FROM EMP001;


-- ���������� �̿��Ͽ� ������ �߰�
-- EMP ���̺��� ������ �����Ͽ� EMP05 ���̺��� �����ϰ�, 
-- ��ü ���� �����������̿��Ͽ� �߰����ּ���
SELECT * FROM USER_TABLES WHERE TABLE_NAME='EMP05';

CREATE TABLE EMP05
AS SELECT * FROM EMP WHERE 1=0;

SELECT * FROM EMP05;

INSERT INTO EMP05
SELECT * FROM EMP;

-- EMP�� DEPT ���̺��� �����Ͽ� �����ȣ, �����, �μ���ȣ, �μ���, ��ġ��
-- ���� EMP_DEPT2 ���̺��� �������ּ���(������ ����)
CREATE TABLE EMP_DEPT2
AS
SELECT EMPNO, ENAME, E.DEPTNO, DNAME, LOC
FROM EMP E, DEPT D
WHERE E.DEPTNO = D.DEPTNO
AND 1=0;

SELECT * FROM USER_TABLES WHERE TABLE_NAME='EMP_DEPT2';
SELECT * FROM EMP_DEPT2;

-- WARD�� ���� �μ��� ���� ������� �����ȣ, �����, �μ���ȣ, �μ���, ��ġ��
-- EMP_DEPT2�� ������ �ּ���
INSERT INTO EMP_DEPT2
SELECT EMPNO, ENAME, E.DEPTNO, DNAME, LOC
FROM EMP E, DEPT D
WHERE E.DEPTNO = D.DEPTNO
AND E.DEPTNO = (SELECT DEPTNO FROM EMP WHERE ENAME='WARD');

SELECT * FROM EMP_DEPT2;

-- SMITH�� ���� �μ��� ���� ������� �����ȣ, �����, �μ���ȣ, ��ġ��
-- EMP_DEPT2�� ������ �ּ���
-- �����߻� : SMITH�� ���� �÷��� EMP_DEPT2 ���̺��� �÷� ������ �ٸ��Ƿ� ���� ������� ����
INSERT INTO EMP_DEPT2
SELECT EMPNO, ENAME, E.DEPTNO,  LOC
FROM EMP E, DEPT D
WHERE E.DEPTNO = D.DEPTNO
AND E.DEPTNO = (SELECT DEPTNO FROM EMP WHERE ENAME='SMITH');

-- ������ ���� : UPDATE
-- ����) UPDATE {���̺��} 
--         SET �÷���=���ο,...
--         WHERE ������Ʈ ���� ; 

-- EMP05 ���̺��� ��� ����� �޿��� 10% �λ��� �ּ���
SELECT * FROM EMP05;
UPDATE  EMP05  SET SAL=SAL*1.1 ;

-- EMP05 ���̺��� 30�� �μ� ������� Ŀ�̼��� ����+100���� �������ּ���.
SELECT * FROM EMP05 WHERE DEPTNO=30;

UPDATE EMP05 SET COMM = NVL(COMM,0) + 100
WHERE DEPTNO = 30;

SELECT * FROM EMP05 ORDER BY DEPTNO;


-- KING�� �����ϴ� ����鸸 �Ի����� ���ó�¥�� ������ �ּ���
SELECT * FROM EMP05
WHERE MGR = (SELECT EMPNO FROM EMP WHERE ENAME='KING');

UPDATE EMP05
SET HIREDATE = SYSDATE
WHERE MGR = (SELECT EMPNO FROM EMP WHERE ENAME='KING');

-- SMITH ����� ������ �μ��� ��� ������� �Ի����ڸ� ���Ϸ�
-- Ŀ�̼��� 3000���� �������ּ���.
SELECT * FROM EMP05
WHERE DEPTNO = (SELECT DEPTNO FROM EMP WHERE ENAME='SMITH');

UPDATE EMP05
SET HIREDATE = SYSDATE+1, COMM = 3000
WHERE DEPTNO = (SELECT DEPTNO FROM EMP WHERE ENAME='SMITH');

-- ������ ���� : DELETE
-- ����) DELETR FROM {���̺��}
--          WHERE ������ ����;

-- EMP05 ���̺��� 10�� �μ��� ������� ������ �ּ���.
SELECT COUNT(*) FROM EMP05 WHERE DEPTNO=10;  --3
DELETE FROM EMP05 WHERE DEPTNO=10;
SELECT * FROM EMP05;

-- SALES �μ��� ���� ��� ������� ������ �ּ���.
SELECT * FROM EMP05 
WHERE DEPTNO = (SELECT DEPTNO FROM DEPT WHERE DNAME='SALES');

DELETE FROM EMP05
WHERE DEPTNO = (SELECT DEPTNO FROM DEPT WHERE DNAME='SALES');

SELECT * FROM EMP05;


/*************************************************************************
    Ʈ�����(Transaction)   
    - ������ ó���� �� ������ ����Ŭ���� ó���ϴ� SQL�� �ϳ��� ������ �۾�����
    - �ϳ��� Ʈ������� ALL-OR-NOTHING ������� ó���� 
    - ������ ��ɾ��� ���� �� �ϳ��� ��ɾ�� �߸��Ǹ� ��ü�� ����� ����
    - Ʈ������̶� �������� �ϰ����� �����ϸ鼭 ���������� �����͸� ������Ű�� ����
    
    ��) ���� ���������(ATM)
    1) ���� ���� ��ư�� ������.
    2) ī�带 �ְ� ���� ������ �Ѵ�.
    3) ������ �ݾ��� �����ϸ�, ��������Ⱑ ������ �����ش�.
    4) ���¿��� ����� �ݾ׸�ŭ �ܾ׿��� �����Ѵ�.
*************************************************************************/
COMMIT;     -- COMMIT �ϱ� �������� �۾��� ����Ŭ �ݿ�
SELECT * FROM USER_TABLES;
SELECT * FROM EMP01;
DESC EMP01;

-- EMP01 ���̺�  �����ȣ(8000), �����(ȫ�浿), �μ���ȣ(40)  ����� �߰����ּ���
INSERT INTO EMP01 VALUES(8100,'ȫ�浿',40);

--ROLLBACK;
COMMIT;     
--  ���ο� Ʈ����� ����
SELECT * FROM EMP01;

-- ȫ�浿 ����� �μ���ȣ�� 10������ ������ �ּ���
UPDATE EMP01 SET DEPTNO=10  WHERE ENAME='ȫ�浿';
SAVEPOINT C1;  -- ROLLBACK �� ������ ���� ����

-- ȫ�浿 ����� �μ���ȣ�� 30������ ������ �ּ���
UPDATE EMP01 SET DEPTNO=30  WHERE ENAME='ȫ�浿';
SAVEPOINT C2;  -- ROLLBACK �� ������ ���� ����

-- ȫ�浿 ����� �������ּ���
DELETE FROM EMP01 WHERE ENAME='ȫ�浿';
SAVEPOINT C3;  -- ROLLBACK �� ������ ���� ����

SELECT * FROM EMP01;

-- Ŀ�� �ϱ� �� ���̺�����Ʈ C2�� ROLLBACK
ROLLBACK TO C2;
ROLLBACK TO C1;
COMMIT;

-- EMP10 ���̺��� EMP ���̺��� �����Ͽ� ������ �ּ���.
CREATE TABLE EMP10
AS
SELECT * FROM EMP;
SELECT * FROM USER_TABLES WHERE TABLE_NAME='EMP10';

COMMIT;
-- EMP10 ���̺��� 30�� �μ��� �������ּ���.
DELETE FROM EMP10 WHERE DEPTNO=30;
SELECT * FROM EMP10;

-- EMP10 ���̺��� 20�� �μ��� �����ϰ�, ���̺�����Ʈ C1�� �������ּ���.
DELETE FROM EMP10 WHERE DEPTNO=20;
SELECT * FROM EMP10;
SAVEPOINT E1;

-- EMP10 ���̺��� 10�� �μ��� �����ϰ�, ���̺�����Ʈ C2�� �������ּ���.
DELETE FROM EMP10 WHERE DEPTNO=10;
SELECT * FROM EMP10;
SAVEPOINT E2;

ROLLBACK TO E1;  -- 10�� �μ� ����
ROLLBACK;              -- ��� �μ� ����
SELECT * FROM EMP10;
COMMIT;

-- DELETE VS TRUNCATE TABLE
-- EMP10 ���̺��� 30�� �μ��� �������ּ���(DELETE)
DELETE FROM EMP10 WHERE DEPTNO = 30;
SELECT * FROM EMP10;
ROLLBACK;  --30�� �μ� ����
COMMIT;

-- EMP10 ���̺��� ��� �μ��� �������ּ���(TRUNCATE TABLE)
TRUNCATE TABLE EMP10 ;
ROLLBACK;
SELECT * FROM EMP10;

/**********************************
    ������� (CONSTRAINT)
    - �������� ���Ἲ�� ���� ����
    - �ʼ� �Է� �÷� : NOT NULL  
    - ������ ���� �Է¹޴� �÷� :  UNIQUE
    - NOT NULL + UNIQUE : PRIMARY KEY
    - Ÿ ���̺��� �÷�(PRIMARY KEY) �����ϴ� �÷� : FOREIGN KEY
    - �Էµ� ���� üũ : CHECK
    - �⺻���� ���� : DEFAULT 
***********************************/
-- SCOTT�� ��� ��������� Ȯ���� �ּ���
SELECT * FROM USER_CONSTRAINTS;
SELECT * FROM DEPT;
DESC DEPT;

-- ���̺� ��������� �߰��ϱ� : ���̺� ����/���̺� ����
-- ����) �÷���  Ÿ��(ũ��)   {������� �߰�}  --SYS_.. �������� ���
--          �÷���  Ÿ��(ũ��)  CONSTRAINT  {������׸�} {������� Ÿ��}   -- ������׸� ���
SELECT * FROM USER_TABLES WHERE TABLE_NAME = 'EMP002';

-- EMP002 ����(�����ȣ, �����, �޿�, Ŀ�̼�, �μ���ȣ)
CREATE TABLE EMP002(
    EMPNO   NUMBER(4)  CONSTRAINT PK_EMPNO_EMP002   PRIMARY KEY,
    ENAME   VARCHAR2(30)  CONSTRAINT NN_ENAME_EMP002  NOT NULL,
    SAL      NUMBER(7,2),
    COMM  NUMBER(7,2),
    DEPTNO NUMBER(2)
);
SELECT * FROM USER_CONSTRAINTS WHERE TABLE_NAME='EMP002';

-- ��������� ���� ������ ���Ἲ�� ���� �Է�
INSERT INTO EMP002 VALUES(1234,'SMITH',800,NULL,10);
--INSERT INTO EMP002 VALUES(1234,'SMITH',800,NULL,10); --�����ȣ UNIQUE ���� �����߻�
INSERT INTO EMP002 VALUES(7894,'SMITH',800,NULL,10); 
INSERT INTO EMP002 VALUES(4561,NULL,800,NULL,10); -- ����� NOT NULL ���� �����߻� 

SELECT * FROM EMP002;


-- ���̺��� ������ �� ���̺� ����(ALTER TABLE) ����� ���� ������� �߰�
CREATE TABLE EMP003
AS
SELECT EMPNO, ENAME, SAL, COMM, DEPTNO 
FROM EMP
WHERE 1=0;

SELECT * FROM USER_TABLES WHERE TABLE_NAME='EMP003';
SELECT * FROM USER_CONSTRAINTS WHERE TABLE_NAME='EMP003';
SELECT * FROM USER_CONSTRAINTS WHERE TABLE_NAME='EMP';

-- ALTER TABLE ����� �̿��Ͽ� EMP003�� ������� �߰�
-- EMP003 ���̺��� EMPNO �÷��� PRIMARY KEY ���� �߰�
ALTER TABLE EMP003
ADD CONSTRAINT  PK_EMPNO_EMP003 PRIMARY KEY (EMPNO);

-- EMP003 ���̺��� ENAME �÷��� NOT NULL ���� �߰� : MODIFY
ALTER TABLE EMP003
MODIFY ENAME CONSTRAINT NN_ENAME_EMP003 NOT NULL;

-- EMP003 ���̺��� DEPTNO �÷��� NOT NULL ���� �߰� : MODIFY
ALTER TABLE EMP003
MODIFY DEPTNO CONSTRAINT NN_DEPTNO_EMP003 NOT NULL;

-- EMP003 ���̺��� DEPTNO �÷��� �������(NOT NULL)�� ����
ALTER TABLE EMP003
DROP CONSTRAINT NN_DEPTNO_EMP003;

SELECT * FROM USER_CONSTRAINTS WHERE TABLE_NAME='EMP003';
SELECT * FROM EMP003;


-- EMP ���̺��� �����ȣ,�����, �޿�,Ŀ�̼�, �μ���ȣ ������ �����Ͽ� EMP004 �������ּ���
CREATE TABLE EMP004 AS
SELECT EMPNO, ENAME, SAL, COMM, DEPTNO FROM EMP WHERE 1=0;

-- ���������� �̿��Ͽ� EMP004 ���̺� �μ���ȣ 10���� ������� �߰����ּ���
INSERT INTO EMP004
SELECT EMPNO, ENAME, SAL, COMM, DEPTNO FROM EMP
WHERE DEPTNO=10;

SELECT * FROM EMP004;

-- EMP004 ���̺��� ���� ���� Ȯ��
SELECT * FROM USER_CONSTRAINTS WHERE TABLE_NAME='EMP004';

-- EMP004�� EMPNO �÷��� �⺻Ű(PRIMARY KEY) ���� �߰�
ALTER TABLE EMP004
ADD CONSTRAINT PK_EMPNO_EMP004 PRIMARY KEY(EMPNO);

--ORA-02437: cannot validate (SCOTT.PK_EMPNO_EMP004) - primary key violated
--02437. 00000 -  "cannot validate (%s.%s) - primary key violated"
--*Cause:    attempted to validate a primary key with duplicate values or null
--           values.
--*Action:   remove the duplicates and null values before enabling a primary
--           key.

ALTER TABLE EMP004
MODIFY ENAME CONSTRAINT NN_ENAME_EMP004 NOT NULL;

SELECT * FROM  EMP004;


-- ����� �ݵ�� �ϳ��� �μ��� �ҼӵǾ�� �Ѵ�.
-- ������̺�, �μ����̺� 
SELECT * FROM EMP;

-- EMP004 ���̺��� DEPTNO �÷��� �μ���ȣ�� �Է��� ���,
-- DEPT ���̺��� DEPTNO �÷��� �����ϵ��� ��������� �������ּ���
ALTER TABLE EMP004
ADD CONSTRAINT FK_DEPTNO_EMP004 FOREIGN KEY(DEPTNO)
    REFERENCES DEPT(DEPTNO);
    
SELECT * FROM USER_CONSTRAINTS WHERE TABLE_NAME='EMP004';    
DESC EMP004;

-- EMP004 ���� ���� �׽�Ʈ
INSERT INTO EMP004 VALUES(5689,'HONG',500,0,40);
SELECT * FROM DEPT;
SELECT * FROM EMP004;

-- DEPT ���̺��� �μ���ȣ 40���� �������ٸ�??
DELETE FROM DEPT WHERE DEPTNO=40;
--ORA-02292: integrity constraint (SCOTT.FK_DEPTNO_EMP004) violated - child record found

SELECT DISTINCT DEPTNO FROM EMP;
SELECT DISTINCT DEPTNO FROM EMP004;  --DEPT ���̺��� 40�� �μ� ����

SELECT * FROM DEPT;   --40	OPERATIONS	BOSTON
--1. 
DELETE FROM EMP004 WHERE DEPTNO=40;

--2. 
DELETE FROM DEPT WHERE DEPTNO = 40;

-- DEPT ���̺� 40�� �μ� �߰�
INSERT INTO DEPT VALUES(40,'OPERATIONS','BOSTON');
SELECT * FROM DEPT;

-- EMP004 ���̺� FK ������ �������ּ���
SELECT * FROM USER_CONSTRAINTS WHERE TABLE_NAME='EMP004';

ALTER TABLE EMP004
    DROP CONSTRAINT FK_DEPTNO_EMP004;
    
-- �����ϴ� Ű(�θ����̺�)�� �����Ǵ� ��� �ڽ����̺��� ó���ϴ� ����� �߰�
ALTER TABLE EMP004
ADD CONSTRAINT FK_DEPTNO_EMP004 FOREIGN KEY(DEPTNO)
    REFERENCES DEPT(DEPTNO) 
    ON  DELETE CASCADE;
    
-- EMP004 ���̺� 40�� �߰�
SELECT * FROM EMP004;
INSERT INTO EMP004 VALUES(5000,'HONG',100,100,40);

SELECT * FROM DEPT;

-- DEPT(�θ����̺�) �� 40�� �μ��� �����ȴٸ�??
DELETE FROM DEPT WHERE DEPTNO=40;
SELECT * FROM DEPT;
SELECT * FROM EMP004;


-- EMP ���̺��� ������ �����Ͽ� EMP005 ���̺� �����ȣ, �����, �μ���ȣ�� �������ּ���.
CREATE TABLE EMP005 AS
SELECT EMPNO,ENAME, DEPTNO FROM EMP WHERE 1=0;

-- EMP ���̺��� �μ���ȣ 20�� �μ�������� ���������� EMP005�� �߰����ּ���
INSERT INTO EMP005
SELECT EMPNO, ENAME, DEPTNO 
FROM EMP
WHERE DEPTNO=20;

SELECT * FROM EMP005;

-- EMP005 ���̺��� DEPTNO���� DEPT ���̺��� DEPTNO�� �����ϵ��� ������ �߰����ּ���
ALTER TABLE EMP005
    ADD CONSTRAINT FK_DEPTNO_EMP005 FOREIGN KEY(DEPTNO)
    REFERENCES DEPT(DEPTNO)
    ON DELETE  CASCADE;
    
SELECT * FROM USER_CONSTRAINTS WHERE TABLE_NAME='EMP005';    

-- DEPT ���̺��� 20�� �μ� ����
DELETE FROM DEPT WHERE DEPTNO=20;


-- DEFAULT ���� ���� 
SELECT * FROM USER_TABLES WHERE TABLE_NAME='DEPT01';
DROP TABLE DEPT01;

CREATE TABLE DEPT01(
    DEPTNO   NUMBER(2)  CONSTRAINT PK_DEPTNO_DEPT01 PRIMARY KEY,
    DNAME    VARCHAR2(30)  CONSTRAINT NN_DNAME_DEPT01 NOT NULL,
    LOC        VARCHAR2(30)  DEFAULT 'SEOUL'
);
SELECT * FROM DEPT01;
INSERT INTO DEPT01 VALUES(10,'ACCOUNTING','DALLAS');
INSERT INTO DEPT01(DEPTNO, DNAME) VALUES(20,'RESEARCH');

-- CHECK ����
SELECT * FROM EMP01;
DROP TABLE EMP01;
SELECT * FROM USER_TABLES WHERE TABLE_NAME='EMP01';

CREATE TABLE EMP01(
    EMPNO  NUMBER(4) CONSTRAINT PK_EMPNO_EMP01 PRIMARY KEY,
    ENAME  VARCHAR2(30) CONSTRAINT NN_ENAME_EMP01 NOT NULL,
    GENDER  VARCHAR2(1) CONSTRAINT CK_GENDER_EMP01
            CHECK (GENDER IN ('M','F')),
    DEPTNO  NUMBER(2) CONSTRAINT FK_DEPTNO_EMP01 
            REFERENCES DEPT(DEPTNO)
            ON DELETE CASCADE
);
INSERT INTO EMP01 VALUES(1234,'SMITH','M',10);
INSERT INTO EMP01 VALUES(1235,'FORD','F',20);
INSERT INTO EMP01 VALUES(1236,'KING','K',20);
--ORA-02290: check constraint (SCOTT.CK_GENDER_EMP01) violated

SELECT * FROM EMP01;


/**********************************
    ���� ���̺� ��(VIEW)
    - ������ ���� ���̺� ����
    - SQL�� ���� ������  
    - ������ ���� ����ڸ��� �׼��� �� �� �ֵ��� �ϱ� ����(����)
    - ��ǥ���� ��� �����͵�ųʸ� ���̺�
***********************************/
-- ���� : CREATE { OR REPLACE} VIEW [VIEW��]
--          AS  ��������;

-- EMP ���̺��� 30�� �μ��� ������� �����Ͽ� EMP30_1 ���̺��� �������ּ���
CREATE TABLE EMP30_1
AS
SELECT * FROM EMP WHERE DEPTNO = 30;

SELECT * FROM USER_TABLES WHERE TABLE_NAME='EMP30_1';
SELECT * FROM EMP30_1;

-- EMP ���̺��� 30�� �μ��� ������� �����Ͽ� EMP30_2 �並 �������ּ���
CREATE VIEW EMP30_3
AS
SELECT * FROM EMP WHERE DEPTNO=30;
-- ORA-01031: insufficient privileges 
-- ���� : VIEW�� �����ϴ� ������ ���� ���
-- �ذ��� :  �����ڰ������� VIEW�� �����ϴ� ������ scott���� �Ҵ������ ��!!

CREATE VIEW EMP30_3
AS
SELECT * FROM EMP WHERE DEPTNO=30;

-- �� ���� Ȯ�� : USER_VIEWS
SELECT * FROM USER_VIEWS;

-- ������ �並 ���� ���� ����
SELECT * FROM EMP30_3;

-- EMP ���̺� ��ü ���
SELECT * FROM EMP;

-- EMP ���̺� �� �����μ����� �����Ǵ� ������ VIEW�� �����ؼ� ����
-- �����ȣ, �����, ����, �Ի���, �μ���ȣ, �μ���
CREATE VIEW EMP_SALES2
AS
SELECT EMPNO, ENAME, JOB, HIREDATE, E.DEPTNO, DNAME
FROM EMP E, DEPT D
WHERE E.DEPTNO = D.DEPTNO;

SELECT * FROM USER_VIEWS;
SELECT * FROM EMP_SALES2;

-- EMP ���̺� �� HR�μ����� �����Ǵ� ������ VIEW�� �����ؼ� ����
-- �����ȣ, �����, ����, �Ŵ���, �Ի���, �μ���ȣ, �μ���, ��ġ
-- ��� : EMP_HR
CREATE VIEW EMP_HR2
AS
SELECT EMPNO, ENAME, JOB, MGR, HIREDATE, E.DEPTNO, DNAME, LOC
FROM EMP E, DEPT D
WHERE E.DEPTNO = D.DEPTNO;

SELECT * FROM USER_VIEWS;
SELECT * FROM EMP_HR2;

-- EMP ���̺� �� ȸ��μ����� �����Ǵ� ������ VIEW�� �����ؼ� ����
-- �����ȣ, �����, �Ի���, �޿�, Ŀ�̼�, �μ���ȣ, �μ���
-- ��� : EMP_CF

-- ���� ����
-- �ܼ���(Simple View) : �ϳ��� ���̺�� ����/�׷��Լ� ���X(������)/DISTINCT ���X /DML ���O
-- ���պ�(Complex View) : �������� ���̺�� ����/�׷��Լ� ���O/DISTINCT ���O /DML ���X

SELECT * FROM USER_VIEWS;
SELECT * FROM EMP30_3;

-- EMP30_3 �ܼ��信 ������ �߰�
INSERT INTO EMP30_3 
    VALUES(8000,'HONG','MANAGER',7844,SYSDATE,1000,100,20);
COMMIT;    

SELECT * FROM EMP;

-- �� ���� �� �ٽ� ����
DROP VIEW EMP30_3;
SELECT * FROM USER_VIEWS;

-- 20�� �μ��� �������� ��� EMP_20 ��� �������ּ���
CREATE VIEW EMP_20
AS
SELECT * FROM EMP WHERE DEPTNO=20;

SELECT * FROM EMP_20;

-- EMP_20 �信�� ��������� �ְ�޿��� �޴� ����� ������ּ���
SELECT JOB, COUNT(*), MAX(SAL) FROM EMP_20
GROUP BY JOB;

-- ���պ�
-- �����ȣ, �����, �Ի���, �޿�, Ŀ�̼�, �μ���ȣ, �μ���, ��ġ �÷��� ����
-- EMP_DEPT �並 �������ּ���(��, ������� Ŀ�̼��� �⺻�� 100���� ����)
CREATE VIEW EMP_DEPT_01
AS
SELECT EMPNO, ENAME, HIREDATE, SAL, NVL(COMM,100) COMM
                , E.DEPTNO, DNAME, LOC
FROM EMP E, DEPT D
WHERE E.DEPTNO = D.DEPTNO;

SELECT * FROM USER_VIEWS;
SELECT * FROM EMP_DEPT_01;

-- EMP_DEPT_01 ���̺�(��)���� �μ��� �ְ�޿�, �����޿�, ������� ������ּ���
SELECT DNAME, MAX(SAL), MIN(SAL), COUNT(*) 
FROM EMP_DEPT_01
GROUP BY DNAME;

-- �� ���� : DROP VIEW [VIEW�̸�]
SELECT * FROM USER_VIEWS;
DROP VIEW EMP_SALES2;

/*************************
    ROWNUM : ���ȣ
*************************/
SELECT ROWNUM RNO, EMPNO, ENAME, DEPTNO FROM EMP;

-- �ζ��κ�(ORDER BY�� ����� ����)�� �Բ� ROWNUM  ���
SELECT ROWNUM RNO, EMPNO, ENAME, DEPTNO, HIREDATE 
FROM EMP
ORDER BY DEPTNO DESC;

-- 1. ORDER BY�� ������ ������ �ζ��κ�� ����
-- 2. ������������ ROWNUM�� �����Ѵ�.
SELECT ROWNUM RNO, EMPNO, ENAME, DEPTNO, 
                TO_CHAR(HIREDATE,'YYYY-MM-DD') HIREDATE
FROM (SELECT EMPNO, ENAME, DEPTNO, HIREDATE
            FROM EMP ORDER BY DEPTNO DESC);
            
-- ����߿� �޿��� ���� ���� �޴� ��� 5���� ������� ������ּ���.
-- ������(WHERE) ���� ROWNUM���� üũ
SELECT ROWNUM RNO,EMPNO, ENAME,MGR, SAL, DEPTNO  
FROM (SELECT * FROM EMP ORDER BY SAL DESC)
WHERE ROWNUM <= 5;

-- RNO�� ���� üũ�� �ϴ� ���
SELECT * 
FROM (SELECT ROWNUM RNO,EMPNO, ENAME,MGR, SAL, DEPTNO  
                FROM (SELECT * FROM EMP ORDER BY SAL DESC))
WHERE RNO <= 5;

-- 1������ : 1~5, 2������ : 6~10, 3������ : 11~15
SELECT * 
FROM (SELECT ROWNUM RNO,EMPNO, ENAME,MGR, SAL, DEPTNO  
                FROM (SELECT * FROM EMP ORDER BY SAL DESC))
WHERE RNO BETWEEN 11 AND 15;


-- �Ի����� ���� ���� ��� 3���� ������ּ���.
SELECT ROWNUM RNO, EMPNO, ENAME, HIREDATE, DEPTNO
FROM (SELECT EMPNO, ENAME, HIREDATE, DEPTNO
                FROM EMP
                ORDER BY HIREDATE DESC)
WHERE ROWNUM <= 3 ;

-- �Ի����ڰ� ���� 5~ 10��° ������ ����� ������ּ���.
SELECT * 
FROM    (SELECT ROWNUM RNO, EMPNO, ENAME, HIREDATE, DEPTNO
                FROM (SELECT EMPNO, ENAME, HIREDATE, DEPTNO
                        FROM EMP
                        ORDER BY HIREDATE DESC))
WHERE RNO BETWEEN 5 AND 10 ;


/****************************
    ������(SEQUENCE) 
    - �ڵ���ȣ ������
    - �⺻Ű �÷��� ���
    - ����) CREATE SEQUENCE [��������]
                    START WITH [���۹�ȣ] 
                    INCREMENT BY [������]
                    {CYCLE / NO CYCLE}
                    {MAXVALUE [���� ������]}
                    {MINVALUE [�ּ� ������]}
                ;
****************************/
-- �����͵�ųʸ� ���̺� Ȯ�� : USER_SEQUENCES
SELECT * FROM USER_SEQUENCES;

CREATE SEQUENCE  TEST_SEQUENCE
    START WITH 1
    INCREMENT BY 1;
    
SELECT TEST_SEQUENCE.NEXTVAL FROM DUAL;    --1�� ������ ���� �ڵ� ������
SELECT TEST_SEQUENCE.CURRVAL FROM DUAL;

-- �Խ��� ���̺� : TEST_BOARD
CREATE TABLE TEST_BOARD(
    BID VARCHAR2(30) PRIMARY KEY, 
    BTITLE     VARCHAR2(100) NOT NULL,
    BCONTENT VARCHAR2(500),
    BDATE  DATE
);
SELECT * FROM USER_TABLES WHERE TABLE_NAME='TEST_BOARD';
DESC TEST_BOARD;
SELECT * FROM TEST_BOARD;

-- TEST_BOARD���� ����� ������ ���� : SEQU_���̺��
CREATE SEQUENCE SEQU_TEST_BOARD
    START WITH 1
    INCREMENT BY 1;
SELECT * FROM USER_SEQUENCES;    

-- TEST_BOARD ������ �߰�
INSERT INTO TEST_BOARD 
    VALUES('b_' ||SEQU_TEST_BOARD.NEXTVAL ,'�Խñ� ����','�Խñ� ����',SYSDATE);  -- b_1

SELECT * FROM TEST_BOARD;
COMMIT;

--
SELECT * FROM SCORE;
desc score;

SELECT * FROM USER_CONSTRAINTS WHERE TABLE_NAME='SCORE';
SELECT * FROM USER_CONS_COLUMNS WHERE TABLE_NAME='SCORE';

-- �ֱ� ��ϵ� �л������� rownum�� �̿��Ͽ� ���
select rownum rno, sno, sname, kor,eng,math,to_char(sdate,'yy-mm-dd') sdate
from (select sno, sname, kor,eng,math,sdate
                from score  order by sdate desc);



select * from emp;

select count(*) from score where sno = '12344';










 /*********************************
        �ڹ����α׷� ���� ���̺�
    ********************************/

/*****************************
    �������� �ý��� ���̺� : BOOK
*****************************/
-- ���̺� ����
--	int price, rno;
--	String title, author, isbn, bdate;
CREATE TABLE BOOK(
    ISBN        VARCHAR2(30)    PRIMARY KEY,
    TITLE       VARCHAR2(50)   NOT NULL,
    AUTHOR  VARCHAR2(30),
    PRICE    NUMBER(4),
    BDATE   DATE
);
SELECT * FROM USER_TABLES WHERE TABLE_NAME='BOOK';
DESC BOOK;

SELECT COUNT(*) FROM BOOK;

-- �ֱ� ��ϵ� ����������, ���ȣ(ROWNUM)�� �̿��Ͽ� ������ּ���.
-- ORDER BY --> �ζ��κ� > ROWNUM �÷��� �߰��Ͽ� ���
SELECT ROWNUM RNO, ISBN, TITLE, AUTHOR, PRICE, TO_CHAR(BDATE,'YY/MM/DD')
FROM ( SELECT ISBN,TITLE,AUTHOR,PRICE,BDATE FROM BOOK
                ORDER BY BDATE DESC);
     
select * from score;     
                
select sname,count(*) from score 
where sno='1234'
group by sname;                


SELECT * FROM USER_CONSTRAINTS WHERE TABLE_NAME='BOOK';
SELECT * FROM USER_CONS_COLUMNS WHERE TABLE_NAME='BOOK';
    
SELECT DISTINCT UC.OWNER, UC.CONSTRAINT_NAME, UC.CONSTRAINT_TYPE,
                UC.TABLE_NAME,UCC.COLUMN_NAME
FROM USER_CONSTRAINTS UC, USER_CONS_COLUMNS UCC 
WHERE UC.TABLE_NAME = UCC.TABLE_NAME
AND UC.TABLE_NAME='BOOK';
   
SELECT COUNT(*) FROM BOOK WHERE ISBN='154233';

--
SELECT * FROM BOOK;
INSERT INTO BOOK
  VALUES('3000','jsp','jsp',100,SYSDATE);

COMMIT;


/*****************************
    �������� �ý��� ���̺� : SCORE
*****************************/
CREATE TABLE SCORE(
    SNO       VARCHAR2(30)  PRIMARY KEY,
    SNAME  VARCHAR2(30)  NOT NULL,
    KOR   NUMBER(4),
    ENG   NUMBER(4),
    MATH  NUMBER(4),
    SDATE  DATE    
);



/***************************************
    �ø��꿵 ȸ�����̺� : olive_member
***************************************/
-- ȸ��id(pk), ȸ����(not null_), ����ȣ, �������, ����
DROP TABLE OLIVE_MEMBER;
CREATE TABLE OLIVE_MEMBER(
    ID    VARCHAR2(30)  CONSTRAINT  PK_OLIVE_MEMBER_ID  PRIMARY KEY,
    NAME   VARCHAR2(30) CONSTRAINT NN_OLIVE_MEMBER_NAME  NOT NULL,
    HP      VARCHAR2(30),
    ODATE  DATE,
    STATUS   NUMBER(1)      -- 1:������/ 2:��
);

-- �����͵�ųʸ� ���̺��� Ȯ��
SELECT * FROM USER_TABLES WHERE TABLE_NAME='OLIVE_MEMBER';
DESC OLIVE_MEMBER;

select * from olive_member;

select status, name, count(*) result from olive_member 
where id='admin'
group by status, name;

/***************************************
    �ø��꿵 ��ǰ���̺� : olive_product
***************************************/
-- pid(������,�⺻Ű), pname, price, pdate
CREATE TABLE OLIVE_PRODUCT(
    PID         VARCHAR2(30)  CONSTRAINT PK_OLIVE_PRODUCT_PID PRIMARY KEY,
    PNAME   VARCHAR2(100) CONSTRAINT NN_OLIVE_PRODUCT_PNAME NOT NULL,
    PRICE   NUMBER(6),
    PDATE  DATE
);
SELECT * FROM USER_TABLES  WHERE TABLE_NAME='OLIVE_PRODUCT';
DESC OLIVE_PRODUCT;

CREATE  SEQUENCE SEQU_OLIVE_PRODUCT
    START WITH 1
    INCREMENT BY 1 ;

SELECT * FROM USER_SEQUENCES;
SELECT * FROM OLIVE_PRODUCT;

--�ֱ� ����� ��ǰ���� ���ȣ�� ��� *** �⺻Ű�� ������ �����´�!!!!!!!!!!
select rownum rno, pid,pname, price, to_char(pdate,'yy/mm/dd') pdate
from (select pid, pname, price, pdate from olive_product
            order by pdate desc);
            
select * from olive_member;            

/***************************************
    �ø��꿵 �ֹ����̺� : olive_order
***************************************/
-- �ֹ����̺��� �ݵ�� �ϳ��̻��� ��ǰ�� �߰��Ǿ�� �Ѵ�.
-- �ֹ����̺��� �ݵ�� �� ���� ���� �ֹ��� �ؾ� �Ѵ�.
CREATE TABLE OLIVE_ORDER(
    OID   VARCHAR2(30)  CONSTRAINT PK_OLIVE_ORDER PRIMARY KEY,
    AMT  NUMBER(4)  NOT NULL,
    ID     VARCHAR2(30) CONSTRAINT FK_OLIVE_ORDER_ID 
                                REFERENCES  OLIVE_MEMBER(ID),
    PID     VARCHAR2(30) CONSTRAINT FK_OLIVE_ORDER_PID 
                                REFERENCES  OLIVE_PRODUCT(PID),
    ODATE  DATE                                
);
SELECT * FROM USER_TABLES WHERE TABLE_NAME='OLIVE_ORDER';
DESC OLIVE_MEMBER;
DESC OLIVE_PRODUCT;
desc olive_order;

--������ ����
CREATE SEQUENCE SEQU_OLIVE_ORDER
    START WITH 1
    INCREMENT BY 1;

SELECT * FROM OLIVE_ORDER;

-- �ȸ���� ���ǰ�� � �ֹ��ߴ��� �ñ�???
SELECT NAME, PNAME, AMT
FROM OLIVE_MEMBER M, OLIVE_PRODUCT P, OLIVE_ORDER O
WHERE M.ID = O.ID  AND P.PID = O.PID;


-- ������ ��ųʸ� ���̺� Ȯ�� : USER_TABLES
SELECT * FROM USER_TABLES;
DESC TEST_BOARD;
SELECT * FROM TEST_BOARD;

/**
    ���̺�� : WEB_BOARD
    �÷��� : BID(PK),BTITLE,BCONTENT,BHITS,BDATE
**/
CREATE TABLE WEB_BOARD(
    BID         VARCHAR2(6)     CONSTRAINT PK_WEB_BOARD_BID
                                PRIMARY KEY,
    BTITLE       VARCHAR2(50)      CONSTRAINT NN_WEB_BOARD_BTITLE
                               NOT NULL,
    BCONTENT     VARCHAR(200),
    BHITS           NUMBER(4),
    BDATE          DATE
);

SELECT * FROM USER_TABLES WHERE TABLE_NAME='WEB_BOARD';

--������ ���� : WEQU_WEB_BOARD
CREATE SEQUENCE SEQU_WEB_BOARD
    START WITH 1
    INCREMENT BY 1;
SELECT * FROM USER_SEQUENCES;    

SELECT * FROM WEB_BOARD;

--��ü����Ʈ ��� : ������� �������� �ֽŰԽñ��� ���� ���� ������ ����,���ȣ�� ��µǵ��� ��
--order by �� rownum�� ���ÿ� ����� �� ����. order by > rownum
select rownum rno, bid, btitle, bhits, to_char(bdate,'yy-mm-dd')bdate
from(select bid,btitle,bhits,bdate
    from web_board
    order by bdate desc);

select bid, btitle, bcontent, bhits, bdate
from web_board
where bid='b_1';

/******************************
    MYCGV ������Ʈ ���� ���̺�
*******************************/

/**
    ���̺�� : CGV_MEMBER
    ��      �� : ȸ�����̺� - ȸ������, �α���, ������(ȸ������Ʈ) 
    �� ��  �� : ID, PASS, NAME.. 
**/
CREATE TABLE CGV_MEMBER(
    ID      VARCHAR2(30)    CONSTRAINT PK_CGV_MEMBER_ID PRIMARY KEY,
    PASS VARCHAR2(30)    NOT NULL, 
    NAME  VARCHAR2(30)  NOT NULL,
    GENDER VARCHAR2(1) NOT NULL,
    EMAIL     VARCHAR2(50)  NOT NULL,
    ZONCODE  VARCHAR2(20) NOT NULL,
    ADDR1       VARCHAR2(40)  NOT NULL,
    ADDR2     VARCHAR2(40)  NOT NULL,
    HP           VARCHAR2(10)  NOT NULL,    --��Ż�
    PNUMBER  VARCHAR2(20) NOT NULL,  --����ȣ
    HOBBYLIST VARCHAR2(50) NOT NULL,  --���
    INTRO        VARCHAR2(200),
    MDATE   DATE
);

SELECT * FROM USER_TABLES WHERE TABLE_NAME='CGV_MEMBER';
select * from cgv_member;
desc cgv_member;
drop table cgv_member;

/**
    ���̺�� : CGV_BOARD
    ��      �� : �Խ������̺� - �Խ���
    �� ��  �� : BID(PK), BTITLE, BCONTENT,BFILE, BSFILE, BHITS,BDATE
**/
CREATE TABLE CGV_BOARD(
    BID         VARCHAR2(20)  CONSTRAINT PK_CGV_BOARD_BID PRIMARY KEY,
    BTITLE  VARCHAR2(200) NOT NULL,
    BCONTENT VARCHAR2(500),
    BFILE         VARCHAR2(200),
    BSFILE       VARCHAR2(200),
    BHITS         NUMBER(4),
    BDATE        DATE
);
SELECT * FROM USER_TABLES WHERE TABLE_NAME='CGV_BOARD';
DESC CGV_BOARD;

CREATE SEQUENCE SEQU_CGV_BOARD
    START WITH 1
    INCREMENT BY 1 ;
SELECT * FROM USER_SEQUENCES;

SELECT * FROM CGV_BOARD;

/**
    ���̺�� : CGV_NOTICE
    ��      �� : �����������̺� - �������װ���, ��������
    �� ��  �� : NID(PK), NTITLE, NCONTENT,NFILE, NSFILE, NHITS,NDATE
**/
CREATE TABLE CGV_NOTICE(
    NID         VARCHAR2(20)  CONSTRAINT PK_CGV_NOTICE_NID PRIMARY KEY,
    NTITLE  VARCHAR2(200) NOT NULL,
    NCONTENT VARCHAR2(500),
    NFILE         VARCHAR2(200),
    NSFILE       VARCHAR2(200),
    NHITS         NUMBER(4),
    NDATE        DATE
);
SELECT * FROM USER_TABLES WHERE TABLE_NAME='CGV_NOTICE';

--CGV_NOTICE ���̺��� ����� ������(�ڵ���ȣ ������)
CREATE SEQUENCE SEQU_CGV_NOTICE
    START WITH 1
    INCREMENT BY 1;    
SELECT * FROM USER_SEQUENCES;

--��ü ����Ʈ : �Խ���
select rownum rno, nid, ntitle, nhits, to_char(ndate,'yyyy-mm-dd')ndate
from(select nid, ntitle, nhits, ndate from cgv_notice
    order by ndate desc);
    
--��ü ����Ʈ : �Խ���(����¡ó��)    
select rno,bid,btitle,bhits,bdate
from(select rownum rno, bid, btitle, bhits, to_char(bdate,'yyyy-mm-dd')bdate
    from(select bid, btitle, bhits, bdate from cgv_board
        order by bdate desc))
where rno between 1 and 5; 

select bid, bfile, bsfile from cgv_board;
desc cgv_board;

select * from cgv_notice;


create table cgv_movie(
    mid     varchar2(30) primary key,
    MCATEGORY VARCHAR2(50) NOT NULL,
    MNAME VARCHAR2(100) NOT NULL,
    MDESC VARCHAR2(500),
    MDATE DATE
    );
        
SELECT * FROM USER_TABLES WHERE TABLE_NAME='CGV_MOVIE';

-- MID�� ���� ������ ����
CREATE SEQUENCE SEQU_CGV_MOVIE
    START WITH 1
    INCREMENT BY 1;
    
-- CGV_MOVIE_FILE ���̺��� �����Ͽ� �̹��� ���� ���� ����
CREATE TABLE CGV_MOVIE_FILE(
    FID VARCHAR2(30) PRIMARY KEY,
    MFILE1 VARCHAR2(200),
    MSFILE1 VARCHAR2(200),
    MFILE2 VARCHAR2(200),        
    MSFILE2 VARCHAR2(200),
    MID VARCHAR2(30),
        CONSTRAINT FK_CGV_MOVIE FOREIGN KEY(MID)
            REFERENCES CGV_MOVIE(MID) ON DELETE CASCADE            
);

SELECT * FROM USER_TABLES WHERE TABLE_NAME='CGV_MOVIE_FILE';

--FID���� ����ϴ� ������ ����
CREATE SEQUENCE SEQU_CGV_MOVIE_FILE
        START WITH 1
        INCREMENT BY 1;

select rownum,bid
from(select bid from cgv_board order by bdate desc)
where rownum=1;

select * from cgv_movie_file;

select * from cgv_movie cm, cgv_movie_file cmf
where cm.mid = cmf.mid;

delete from cgv_movie; 
--on delete cascade �������� cgv_movie_file ���̺��� ���� ����

commit;

--��ȭ ��ü ����Ʈ
select rno, mid,mcategory, mname,mdate
from (select rownum rno, mid,mcategory, mname,mdate
           from (select mid, mcategory, mname,mdate from cgv_movie
  	     order by mdate desc))
where rno between 1 and 5;

--��ȭ �� ����
select cm.mid, mcategory, mname, mdesc, mdate, mfile1, msfile1, mfile2, msfile2
    from cgv_movie cm, cgv_movie_file cmf
    where cm.mid = cmf.mid and cm.mid='m_8';

desc cgv_member;

select * from cgv_member;

--�÷��� ����
alter table cgv_member
rename column zoncode to zonecode;

select count(*) loginresult, name, id
from cgv_member where id='test' and pass='1234'
group by name, id;

select * from cgv_member;

/******************************
    Mangoplate ������Ʈ ���� ���̺�
*******************************/

/**
    ���̺�� : mg_member
    ��   �� : ȸ�����̺� - ȸ������, �α���, ������(ȸ������Ʈ) 
    �� �� �� : id , pass, name, hp, pnumber, email, addr1, addr2, mdate
**/
create table mg_member(
id varchar2(30) constraint pk_mg_member_id primary key,
pass varchar2(30) not null,
name varchar2(30) not null,
hp varchar2(10) not null, 
pnumber varchar2(20) not null, 
email varchar2(50) not null,
addr1 varchar2(50) not null,
addr2 varchar2(30) not null,
mdate date
);


/**
    ���̺�� : mg_notice
    ��   �� : �������� ���̺�
**/
create table mg_notice(
ntitle varchar2(30) not null,
ndate date not null,
ncontent varchar2(500) not null,
nfile varchar2(200) not null,
nsfile varchar2(200) not null
);

/**
    ���̺�� : mg_store
    ��   �� : �Ĵ�����
**/
create table mg_store(
name varchar2(30) constraint pk_mg_store_name primary key,
address varchar2(30) not null,
num varchar2(30) not null,
cat varchar2(30) not null,
price varchar2(30) not null,
open_time varchar2(30) not null,
menu varchar2(30) not null
);

/**
    ���̺�� : mg_eatdeal
    ��   �� : EATDEAL
**/
create table mg_eatdeal(
ename varchar2(30) constraint pk_mg_eatdeal_name primary key,
menu varchar2(30) not null,
price varchar2(30) not null,
scontent varchar2(200) not null,
common varchar2(200) not null,
eimage1 varchar2(200) not null,
esimage1 varchar2(200) not null,
eimage2 varchar2(200) not null,
esimage2 varchar2(200) not null
);

/**
    ���̺�� : mg_board_story
    ��   �� : �����丮
**/
create table mg_board_story(
sname varchar2(30) constraint pk_mg_story_name primary key,
editer varchar2(30) not null,
stitle varchar2(30) not null,
sstitle varchar2(30) not null,
sdate varchar2(30) not null,
shits varchar2(30) not null,
scontent varchar2(30) not null,
simage1 varchar2(200) not null,
ssimage1 varchar2(200) not null,
simage2 varchar2(200) not null,
ssimage2 varchar2(200) not null
);

ALTER TABLE MG_STORE
ADD CONSTRAINT FK_STORE_NAME FOREIGN KEY(NAME)
REFERENCES MG_EATDEAL(ENAME)
ON DELETE CASCADE;

ALTER TABLE MG_STORE
ADD CONSTRAINT FK_STORE_NAME2 FOREIGN KEY(NAME)
REFERENCES MG_BOARD_STORY(SNAME)
ON DELETE CASCADE;