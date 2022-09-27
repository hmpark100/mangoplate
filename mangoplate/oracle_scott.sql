/************************************
    SQL(Structured Query Language) 
    - DBMS 시스템에서 데이터를 CRUD하는 작업을 수행하는 언어
    
    1. DDL(데이터 정의어) 
        : 데이터베이스 관리자가 논리적인 구조(저장구조:테이블스페이스)를 정의하는 언어
        CREATE, ALTER, DROP...
        
     2. DML(데이터 조작어) 
        : 데이터베이스에 저장된 데이터를 삽입(C)/조회(R)/수정(U)/삭제(D)하는 작업을 수행하는 언어
        삽입(C) - INSERT, 조회(R) - SELECT, 수정(U) - UPDATE,  삭제(D) - DELETE ..
        
    3. DCL(데이터 제어어) 
       : 데이터베이스 접근권한을 부여하거나, 해제하는 작업을 수행하는 언어
       REVOKE, COMMIT, ROLLBACK...   
*************************************/

-- SCOTT 계정에서 사용할 수 있는 테이블 리스트 
SELECT * FROM USER_TABLES;

-- EMP 테이블의 데이터 조회
SELECT * FROM EMP;

-- DEPT 테이블의 모든 데이터 조회
SELECT * FROM DEPT;

-- DESC[RIBE] 테이블의 구조 확인
-- 형식 : DESC 테이블명;
DESC EMP;
DESC DEPT;
DESC BONUS;

/** 오라클 데이터 타입  
    1. NUMBER : 숫자 데이터를 저장하는 타입
        NUMBER(4) - 4자리 정수 
        NUMBER(7,2) - 전체 7자리중에 소수점 뒤의 2자리 정의
        
    2. VARCHAR2 - 가변형 문자를 저장하는 타입  
       VARCHAR2(20) - 'SMITH'
       CHAR, CHAR2 - 고정형 문자를 저장하는 타입
       CHAR(10) - 'SMITH' 
    
    3. DATE - 날짜형 데이터를 저장하는 타입
       기본형식 : YY/MM/DD 형식으로 출력됨 - 단, 사용하는 SQL툴에 따라 기본형식이 다름         
**/

/** 
    SELECT : 데이터를 조회하는 명령어
    형식) SELECT [DISTINCT] {컬럼리스트(컬럼명, *)} FROM  {스키마.테이블명};
**/
-- EMP 테이블의 모든 컬럼 데이터를 조회
SELECT * FROM EMP;

-- DEPT 테이블의 모든 데이터를 조회
SELECT * FROM DEPT;

-- EMP 테이블의 사원번호(EMPNO), 사원명(ENAME), 입사일(HIREDATE)
-- , 부서번호(DEPTNO)를 조회
DESC EMP;
SELECT EMPNO, ENAME, HIREDATE, DEPTNO  FROM EMP;

-- 컬럼명을 다른이름으로 대치하는 ALIAS(별칭)
-- 형식) 컬럼명 AS "별칭"
SELECT EMPNO  "사원 번호", ENAME 사원명, HIREDATE 입사일, DEPTNO 부서번호
FROM EMP;

-- DEPT 테이블의 부서번호(DEPTNO), 부서명(DNAME), 위치(LOC) 컬럼 조회
DESC DEPT;
SELECT DEPTNO 부서번호, DNAME 부서명, LOC 위치 FROM DEPT;

-- 데이터 조회 시 연산자(+,-,*,/)를 이용하여 결과를 출력하는 형식

-- EMP 테이블의 사원번호, 사원명, 입사일, 급여, 커미션, 총급여(급여+커미션) 컬럼 조회 
DESC EMP;
SELECT EMPNO, ENAME, HIREDATE, SAL, COMM, SAL+COMM 총급여
FROM EMP;

/**
    (null)의 의미
    1. zero의 의미가  입력되지 않은 미지수를 의미함
    2. 미확정이며 알 수 없는 값을 의미함
    3. 연산, 비교 등이 불가함
    4. nvl() 함수를 이용하여 (null) 데이터를 다른 데이터값으로 수정
**/

-- nvl  함수 : (null) 데이터를 다른값으로 수정
-- 형식) nvl(null을 포함하고 있는 컬럼명, 변경값)
-- EMP 테이블의 사원번호, 사원명, 입사일, 급여, 커미션, 총급여(급여+커미션) 컬럼 조회 
DESC EMP;
SELECT EMPNO, ENAME, HIREDATE, SAL, NVL(COMM,0) COMM, SAL+NVL(COMM,0) 총급여
FROM EMP;

-- || (CONCATENATION) : 문자열 결합 연산자
SELECT ENAME, JOB FROM EMP;
SELECT ENAME || '은 ' || JOB || ' 입니다' AS JOB FROM EMP;

-- DISTINCT : 중복된 데이터를 필터링하여 조회
-- EMP 테이블의 사원명, 부서번호 출력
SELECT DISTINCT ENAME, DEPTNO FROM EMP;

-- 중복되는 부서번호를 필터링하여 조회
SELECT DISTINCT DEPTNO FROM EMP;

-- EMP 테이블의 JOB 컬럼 조회(DISTINCT) 
SELECT DISTINCT JOB FROM EMP;

-- ORDER BY : 데이터를 정렬하는 명령어
-- 형식) SELECT {컬럼리스트} FROM {테이블명}  ORDER BY {정렬할 컬럼명} ASC/DESC;

-- EMP 테이블의 나중에 입사한 직원 기준으로 데이터 조회
SELECT * FROM EMP ORDER BY HIREDATE DESC;

-- EMP 테이블의 사원번호,사원명,입사일, 급여, 부서번호를 급여를 가장 높은 직원 기준으로 조회
SELECT EMPNO, ENAME, HIREDATE, SAL, DEPTNO
FROM EMP
ORDER BY SAL DESC;

-- EMP 테이블의 사원번호, 사원명, 입사일, 급여, 부서번호를 입사일이 가장 빠르고 급여가 높은
-- 직원 순으로 조회
SELECT EMPNO, ENAME, HIREDATE, SAL, DEPTNO
FROM EMP
ORDER BY HIREDATE ASC, SAL DESC;

/** 
    SELECT : 조건에 맞는 데이터를 조회하는 명령어
    형식) SELECT [DISTINCT] {컬럼리스트(컬럼명, *)} 
            FROM  {스키마.테이블명}
            WHERE 조건식 ;  ( SAL >= 3000)
**/
-- EMP 테이블에서 급여가 3000 이상인 직원들을 조회
SELECT * FROM EMP WHERE SAL >= 3000;

-- EMP 테이블에서 사원명이 'KING'인 사원을 조회
SELECT * FROM EMP WHERE ENAME = 'KING';
SELECT * FROM EMP WHERE ENAME = 'king';

-- 데이터 딕셔너리 테이블인 USER_TABLES 에서 테이블이름이 EMP인 테이블을 검색
SELECT * FROM USER_TABLES WHERE TABLE_NAME='EMP';
SELECT * FROM USER_TABLES WHERE TABLE_NAME='emp';

-- EMP 테이블에서 커미션이 NULL인 사원들을 조회
SELECT * FROM EMP WHERE COMM = NULL;  --데이터 출력안됨:
SELECT * FROM EMP WHERE COMM IS NULL;

-- EMP 테이블에서 커미션이 NULL이 아닌 사원들을 조회
SELECT * FROM EMP WHERE COMM IS NOT NULL;

-- 급여가 2000 이하인 사원들을 조회
SELECT * FROM EMP WHERE SAL <= 2000;

-- 10번 부서의 직원들만 조회
SELECT * FROM EMP WHERE DEPTNO = 10;

-- 사원번호, 사원명, 부서번호, 급여, 커미션, 총급여(급여+커미션) 데이터 조회 시 총급여가 3000인 
-- 이상인 사원들을 출력
-- 현재 시점 기준, 급여와 커미션의 (NULL) 데이터는 0으로 치환 후 조회
SELECT EMPNO, ENAME, DEPTNO, SAL, NVL(COMM,0) COMM, SAL+NVL(COMM,0) TOT 
FROM EMP
WHERE SAL+NVL(COMM,0) >= 3000;

-- 부서번호가 20번인 사원들을 급여가 높은 순으로 출력
SELECT * FROM EMP WHERE DEPTNO = 20
ORDER BY SAL DESC;

-- 날짜 데이터 검색 : 표현은 문자형으로 실행은 비교연산자를 통해 숫자형으로 처리
-- 입사일이 1981년 4월 2일인 직원을 조회
SELECT * FROM EMP
WHERE HIREDATE = '81/04/02';

-- 1981년 6월 30일 이후 입사자들을 조회하고, 최근 날짜 기준으로 정렬해주세요
SELECT * FROM EMP
WHERE HIREDATE >= '81/06/30'
ORDER BY HIREDATE DESC;

-- 논리연산자 : 두 개 이상의 조건으로 검색하는 경우
-- OR : 두 개의 조건 중 하나의 결과가 참인 경우 실행
-- AND :  두 개의 조건 모두 결과가 참인 경우 실행
-- NOT : 두 개의 결과가 같지 않은 경우

-- 사원명이 'SMITH'이고 부서명이 20번인 사원 출력
SELECT * FROM EMP
WHERE ENAME = 'SMITH' AND DEPTNO = 20;

-- 부서번호가 10번이고, 입사일이 1981년 6월 30일 이후 입사한 사원들을 출력
SELECT * FROM EMP
WHERE DEPTNO = 10 AND HIREDATE >= '81/06/30';

-- 1981년 상반기에 입사한 사원들을 출력(81/01/01 ~ 81/06/30)
SELECT * FROM EMP
WHERE HIREDATE >= '81/01/01'  AND  HIREDATE <= '81/06/30';

-- 급여 구간이 1500~ 3000 사이의 사원들을 급여가 가장 높은 순으로 정렬
SELECT * FROM EMP
WHERE SAL >= 1500  AND SAL <= 3000
ORDER BY SAL DESC;

-- BETWEEN ~~~ AND : 범위, 구간을 검색하는 명령어
-- 형식) WHERE  컬럼명 BETWEEN  시작구간    AND  종료구간   ;
-- 1981년 상반기에 입사한 사원들을 출력(81/01/01 ~ 81/06/30)
SELECT * FROM EMP
WHERE HIREDATE BETWEEN  '81/01/01' AND  '81/06/30';

-- 급여 구간이 1500~ 3000 사이의 사원들을 급여가 가장 높은 순으로 정렬
SELECT * FROM EMP
WHERE SAL BETWEEN  1500 AND  3000
ORDER BY SAL DESC;

-- OR 연산
-- 커미션이 300이거나 500인 사원들을 출력
SELECT * FROM EMP
WHERE COMM = 300  OR COMM = 500;

-- 사원명이 'SMITH' 이거나 'FORD' 이거나 'KING'인 사원들을 출력
SELECT * FROM EMP
WHERE ENAME='SMITH' OR ENAME='FORD' OR ENAME='KING';

-- IN 연산자 : OR 연산자를 대체해서 사용
-- 형식) WHERE  컬럼명 IN (데이터1,데이터2...);
-- 커미션이 300이거나 500인 사원들을 출력
SELECT * FROM EMP
WHERE COMM IN (300,500);

-- 사원명이 'SMITH' 이거나 'FORD' 이거나 'KING'인 사원들을 출력
SELECT * FROM EMP
WHERE ENAME  IN ('SMITH','FORD','KING');


-- NOT 연산자
-- 사원명이 'SMITH', 'FORD', 'KING'이 아닌 사원들을 출력
SELECT * FROM EMP
WHERE ENAME  NOT IN ('SMITH','FORD','KING');

-- 커미션이 300, 500, 1400이 아닌 사원들을 출력
SELECT * FROM EMP
WHERE NVL(COMM,0) NOT IN (300,500,1400);

-- 데이터 검색 : LIKE 연산자와 와일드 카드(%, _)
-- % : 문자가 없거나, 하나 이상의 문자가 올 수 있다.
-- _  : 문자 하나를 검색하기 위한 자리를 표현한다. 
SELECT * FROM EMP;

-- 사원명이 A로 시작하는 모든 사원들을 출력 : A%
SELECT * FROM EMP
WHERE ENAME LIKE 'A%';

-- 사원명이 F로 시작하는 모든 사원들을 출력
SELECT * FROM EMP
WHERE ENAME LIKE 'F%';

-- 사원명 중에 A가 포함되어 있는 모든 사원들을 출력
SELECT * FROM EMP
WHERE ENAME LIKE '%A%';

-- 사원명의 두번째 글자가 A로 시작하는 모든 사원을 출력
SELECT * FROM EMP
WHERE ENAME LIKE '_A%';

-- 사원명에 A가 들어가지 않는 모든 사원을 출력
SELECT * FROM EMP
WHERE ENAME NOT LIKE '%A%';

-- 커미션이 (NULL)인 모든 사원을 출력
SELECT * FROM EMP;
SELECT * FROM EMP  WHERE COMM IS NULL;  --8
SELECT * FROM EMP  WHERE COMM IS NOT NULL;  --4

-- MGR 컬럼이 널인 사원을 출력
SELECT * FROM EMP WHERE MGR IS NULL;

-- 정렬 : ORDER BY 절은 쿼리 실행 결과를 정렬 ASC(오름차순)/DESC(내림차순)
-- 숫자 : ASC (작은숫자 --> 큰숫자)/ DESC(큰숫자 --> 작은숫자) 
-- 문자 : ASC (사전 순서대로 정렬)/ DESC(사전 반대 순서로 정렬) 
-- 날짜 : ASC (빠른 날짜 순서대로 정렬)/ DESC(늦은 날짜 순서로 정렬) 
-- NULL : ASC(가장 마지막에 정렬)/DESC(가장 먼저 정렬)

-- 부서번호를 오름차순으로 정렬하여 출력
SELECT * FROM EMP ORDER BY DEPTNO ASC;  -- ASC 생략가능
SELECT * FROM EMP ORDER BY DEPTNO DESC;  

-- 사원명을 알파벳 기준으로 오름차순으로 정렬해주세요
SELECT * FROM EMP ORDER BY ENAME ;
SELECT * FROM EMP ORDER BY ENAME DESC;

-- 입사일 기준으로 오름차순 정렬해주세요
SELECT * FROM EMP ORDER BY HIREDATE;
SELECT * FROM EMP ORDER BY HIREDATE DESC;

-- 커미션을 오름차순 기준으로 정렬해주세요
SELECT * FROM EMP ORDER BY COMM;
SELECT EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, NVL(COMM,0) COMM,DEPTNO
FROM EMP 
ORDER BY NVL(COMM,0);

SELECT EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, NVL(COMM,0) COMM,DEPTNO
FROM EMP 
ORDER BY NVL(COMM,0) DESC;

/****************
    SQL 주요 함수
*****************/
-- DUAL 테이블 
SELECT * FROM DUAL;

--1. 숫자함수
-- ABS : 절대값 구하기
SELECT 10, -10, ABS(-10)  FROM DUAL;

-- FLOOR : 소수점 버리기
SELECT 123.38534, FLOOR(123.38534)  FROM DUAL;

-- TRUNC(ATE) : 소수점 특정 자릿수 버리기
SELECT 123.38534, TRUNC(123.38534),  TRUNC(123.38534,1)  FROM DUAL;

-- MOD(나머지연산자:%)
SELECT MOD(27,2), MOD(27,5), MOD(27,7)  FROM DUAL;

-- EMP 테이블에서 사원번호가 홀수인 모든 사원들을 출력해주세요
SELECT * FROM EMP
WHERE MOD(EMPNO,2) = 0;

SELECT MOD(EMPNO,2), EMPNO FROM EMP;


--2. 문자함수
-- LOWER/UPPER/INITCAP
SELECT LOWER('HELLO'), UPPER('hello'), INITCAP('hello') FROM DUAL;

-- 사원명이 'smith' 소문자형태로 조회하여 출력
SELECT * FROM EMP
WHERE LOWER(ENAME) = 'smith';

-- 사원명을 입력받은 형태가 대,소문자인지 정확하지 않은경우 테이블에 저장된 형태로
-- 함수를 적용하여 조회를 진행
SELECT * FROM EMP
WHERE ENAME = UPPER('smith');

-- LENGTH/LENGTHB : 문자의 길이
SELECT LENGTH('ORACLE'), LENGTH('오라클')  FROM DUAL;
SELECT LENGTHB('ORACLE'), LENGTHB('오라클')  FROM DUAL;

-- SUBSTR : 문자열의 일부분 추출
-- 형식) SUBSTR(문자열, 시작위치, 대상갯수)
SELECT SUBSTR('ORACLE', 1,3) FROM DUAL;
SELECT SUBSTR('ORACLE', 3,2) FROM DUAL;
SELECT SUBSTR('ORACLE', -2,2) FROM DUAL;

-- EMP 테이블에서 사원들의 입사년도를 출력해주세요
SELECT ENAME 사원명, SUBSTR(HIREDATE,1,2) 입사년도 FROM EMP;

-- EMP 테이블에서 사원들의 입사년도와 월을 출력해주세요
SELECT ENAME 사원명, SUBSTR(HIREDATE,1,2) 입사년도, SUBSTR(HIREDATE,4,2)입사월
FROM EMP;

-- 81년도에 입사한 모든 사원들을 출력해주세요
SELECT * FROM EMP WHERE SUBSTR(HIREDATE,1,2) = '81';
SELECT * FROM EMP WHERE SUBSTR(HIREDATE,1,2) <> '81';

-- INSTR : 특정문자의 위치를 출력
-- 형식) INSTR(문자열, 찾을문자, 시작위치, 몇 번째 대상선택)
-- 형식) INSTRB(문자열, 찾을문자, 시작위치, 몇 번째 대상선택)
-- 'WELCOME TO ORACLE!!'  에서 'O'의 위치를 찾아주세요
SELECT INSTR('WELCOME TO ORACLE!!','O',1) FROM DUAL;
SELECT INSTR('WELCOME TO ORACLE!!','O',1,2) FROM DUAL;
SELECT INSTR('WELCOME TO ORACLE!!','O',1,3) FROM DUAL;

SELECT INSTR('오라클데이터베이스','이',1), INSTRB('오라클데이터베이스','이',1)
FROM DUAL;

-- LPAD/RPAD : 특정문자로 채우기
-- 형식) LPAD/RPAD(문자열, 문자열길이, 채울문자)
SELECT LPAD('ORACLE',20,'#') FROM DUAL;
SELECT RPAD('ORACLE',20,'#') FROM DUAL;

SELECT LPAD('ORACLE',20,' '), RPAD('ORACLE',20,' ') FROM DUAL;

-- LTRIM/RTRIM/TRIM : 특정 문자를 삭제
-- 형식) LTRIM/RTRIM('삭제할 특정문자가 포함된 문자열')
--         TRIM('삭제할 특정문자' FROM '삭제할 특정문자가 포함된 문자열')   
SELECT LTRIM('        O  RACLE'), RTRIM('ORACLE         ') FROM DUAL;
SELECT TRIM('#' FROM '######ORACLE######') AS TRIM FROM DUAL;
SELECT TRIM('              ORACLE                 ') AS TRIM FROM DUAL;


--3. 날짜함수 : 표현은 문자형 '', 실행은 숫자형
-- SYSDATE : 시스템의 날짜를 반환하는 함수
SELECT SYSDATE 현재날짜 FROM DUAL;

-- 오늘날짜, 내일날짜, 5일후 날짜, 100일후 날짜  출력
SELECT SYSDATE 오늘날짜, SYSDATE+1 내일날짜, 
                SYSDATE+5 "5일후", SYSDATE+100 "100일후"
FROM DUAL;

-- 오늘날짜를 기준으로 EMP 테이블의 사원들의 근무일수를 출력(사원번호, 사원명, 입사일, 근무일수)
SELECT EMPNO 사원번호, ENAME 사원명, HIREDATE 입사일, 
                FLOOR(SYSDATE-HIREDATE) 근무일수 
FROM EMP;

-- 오늘날짜를 기준으로 EMP 테이블의 사원들의 근무일수를 출력(사원번호, 사원명, 입사일, 근무일수)
-- 단, 근무일수의 소수점은 2자리까지 출력(3번째 자리에서 반올림X)
SELECT EMPNO 사원번호, ENAME 사원명, HIREDATE 입사일, 
                TRUNC(SYSDATE-HIREDATE,2) 근무일수 
FROM EMP;

-- 오늘날짜를 기준으로 EMP 테이블의 사원들의 근무일수를 출력(사원번호, 사원명, 입사일, 근무일수)
-- 단, 근무일수의 소수점은 2자리까지 출력(2번째 자리에서 반올림O)
SELECT EMPNO 사원번호, ENAME 사원명, HIREDATE 입사일, 
                ROUND(SYSDATE-HIREDATE,2) 근무일수 
FROM EMP;

-- 날짜함수의 ROUND : 날짜 기준으로 반올림
-- 형식) ROUND(날짜, 포맷)
SELECT ENAME, HIREDATE, ROUND(HIREDATE, 'MONTH') FROM EMP;
SELECT ENAME, HIREDATE, ROUND(HIREDATE, 'YEAR') FROM EMP;

-- 날짜함수의 TRUNC : 날짜 기준으로 삭제
-- 형식) TRUNC(날짜, 포맷)
SELECT ENAME, HIREDATE, TRUNC(HIREDATE, 'MONTH') FROM EMP;
SELECT ENAME, HIREDATE, TRUNC(HIREDATE, 'YEAR') FROM EMP;

-- 근무일수 : 기준날짜 - 입사일
-- 근무개월수 : MONTHS_BETWEEN
-- 형식) MONTHS_BETWEEN(기준날짜, 입사일)
-- EMP 테이블의 사원들의 근무개월수를 출력해주세요(사원번호,사원명,입사일,근무개월수)
SELECT EMPNO, ENAME, HIREDATE, 
                FLOOR(MONTHS_BETWEEN(SYSDATE,HIREDATE)) 근무개월수
FROM EMP;

-- EMP 테이블의 사원들 중 근무개월수가 490개월 이상인 사원들을 출력
SELECT EMPNO, ENAME, HIREDATE, 
                FLOOR(MONTHS_BETWEEN(SYSDATE,HIREDATE)) 근무개월수
FROM EMP
WHERE MONTHS_BETWEEN(SYSDATE,HIREDATE) >= 490 ;

-- ADD_MONTHS(날짜, 개월수)
-- EMP 테이블의 사원들의 입사일자에 6개월을 더한 결과를 출력
SELECT EMPNO, ENAME, HIREDATE, ADD_MONTHS(HIREDATE,6) FROM EMP;

-- EMP 테이블의 사원들의 입사일 기준 36개월 후의 예상 근무일수와 근무개월수를 출력
-- 단, 소수점은 절삭
SELECT EMPNO, ENAME, HIREDATE, ADD_MONTHS(HIREDATE,36) "36개월후"
                    , TRUNC(ADD_MONTHS(HIREDATE,36)-HIREDATE) 근무일수
                    , TRUNC(MONTHS_BETWEEN(ADD_MONTHS(HIREDATE,36),HIREDATE)) 근무개월수
FROM EMP;


-- 형변환 함수 : 오라클의 데이터타입을 다른 데이터타입으로 변환하는 함수
-- TO_CHAR : 숫자형, 날짜형을 문자형으로 변환
-- TO_DATE : 문자형/숫자형을 날짜형으로 변환
-- TO_NUMBER : 문자형을 숫자형으로 변환

-- TO_CHAR : 날짜 형태를 문자형으로 변환
-- 형식) TO_CHAR(날짜데이터, '변환형식')
-- * 변환형식 : YYYY(년도 4자리), YY(년도 2자리), MM(월 2자리), MON(월 알파벳)
--                  DAY(일자 요일표현), DY(일자  약어)

-- EMP 테이블의 입사일자 형식을 '1980-12-17' 형식으로 출력해주세요
SELECT ENAME, HIREDATE, TO_CHAR(HIREDATE, 'YYYY-MM-DD') 출력형식1
                , TO_CHAR(HIREDATE, 'YYYY/MON/DAY') 출력형식2
                , TO_CHAR(HIREDATE, 'YY/MON/DY') 출력형식2
FROM EMP;

-- 형식) TO_CHAR(날짜데이터, '변환형식 시간형식')
-- * 변환형식(시간) : AM/PM (오전/오후), A.M/P.M, HH/HH12(12시간 기준), HH24(24시간 기준),
--                              MI(분), SS(초)
SELECT SYSDATE, TO_CHAR(SYSDATE, 'YY-MM-DD  HH:MI:SS') 
                                 , TO_CHAR(SYSDATE, 'YY-MM-DD PM HH24:MI:SS') 
FROM DUAL;

SELECT ENAME, HIREDATE, TO_CHAR(HIREDATE, 'YYYY-MM-DD  HH:MI:SS') 출력형식1
                , TO_CHAR(HIREDATE, 'YYYY/MON/DAY') 출력형식2
                , TO_CHAR(HIREDATE, 'YY/MON/DY') 출력형식2
FROM EMP;


-- TO_CHAR : TO_CHAR(숫자, '숫자 변환형식')
-- 변환형식 : 0(자릿수에 0을 채우는형태), 9(자릿수가 맞지 않으면 채우지 않음)
--                  , L(각 나라별 통화기호를 표시), 콤마(,):천단위로 끊어서 구분    

-- EMP 테이블의 급여를 천단위로 구분해서 출력해주세요
SELECT ENAME, SAL, TO_CHAR(SAL, '999,999') 
                        , TO_CHAR(SAL, '000,000'), TO_CHAR(SAL, 'L999,999') 
FROM EMP;

-- EMP 테이블의 급여와 커미션을 천단위로 구분해서 출력해주세요
-- 단, 현재시점 커미션이 NULL인 사원은 기본값으로 1000을 입력함
SELECT ENAME, SAL, COMM
                    , TO_CHAR(SAL, 'L999,999') NEW_SAL
                    , TO_CHAR(NVL(COMM,1000), 'L999,999') NEW_COMM
FROM EMP;        

-- TO_DATE : 문자형 또는 숫자형을 날짜형으로 변환하는 함수
-- 형식)TO_DATE('문자'/숫자, '날짜형식')
SELECT TO_DATE('20211010', 'YY/MM/DD') FROM DUAL;

SELECT TO_DATE('20211010', 'YY/MM/DD'),
                TO_CHAR(TO_DATE('20211010', 'YY/MM/DD'), 'YYYY-MM-DD') 
FROM DUAL;

--
SELECT TO_DATE(20211010, 'YY/MM/DD'),
                TO_CHAR(TO_DATE('20211010', 'YY/MM/DD'), 'YYYY-MM-DD') 
FROM DUAL;

-- TO_NUMBER : 문자형을 숫자형으로 변환하는 함수
-- 형식) TO_NUMBER('문자형', 변환하는 타입)

-- '200' 에서 '100'을 뺀 값을 출력해주세요
SELECT TO_NUMBER('200','999') - TO_NUMBER('100','999') 결과  FROM DUAL;


/****************
    그룹 함수
    
    1.  그룹함수 - SUM, AVG, MAX, MIN...
    2.  GROUP BY  
    3.  HAVING 
    4.  ROLLUP, CUBE
    5.  UNION, UNION ALL    
*****************/

-- 1. 그룹함수 : SUM, AVG, MAX, MIN, COUNT
-- 형식) 그룹함수(컬럼명)

-- EMP 테이블의 모든 사원의 총급여를 출력(3자리 콤마로 구분, 통화기호 표시)
SELECT SUM(SAL) 총급여, TO_CHAR(SUM(SAL), 'L999,999') 총급여2 FROM EMP;

-- EMP 테이블의 사원의 총 인원수를 출력
SELECT COUNT(*) FROM EMP;

-- EMP 테이블의 모든 부서의 갯수를 출력
SELECT COUNT(DISTINCT DEPTNO) FROM EMP;

-- EMP 테이블의 모든 JOB의 갯수를 출력
SELECT COUNT(DISTINCT JOB) FROM EMP;

-- EMP 테이블의 모든 사원의 총급여, 평균급여를 출력
-- 3자리 숫자 구분, 소수점 2자리까지 절삭
SELECT SUM(SAL) 총급여, AVG(SAL) 평균급여 
                , TO_CHAR(SUM(SAL),'999,999') 총급여2
                , TO_CHAR(TRUNC(AVG(SAL),2),'99,999.99') 평균급여2 
FROM EMP;

-- EMP 테이블의 커미션 총합을 출력(단, 현재시점 기준 커미션이 널인 경우 기본값 10을 가진다)
SELECT SUM(COMM), SUM(NVL(COMM,10)) FROM EMP;

-- 커미션을 받는 모든 사원의 수를 출력
SELECT COUNT(COMM), COUNT(NVL(COMM,10)) FROM EMP;

-- 매니저를 가지고 있는 사원의 수를 출력
SELECT COUNT(MGR) FROM EMP;
SELECT ENAME, JOB, MGR FROM EMP WHERE MGR IS NULL;

-- 총급여, 평균급여, 최고급여, 최저급여를 출력
SELECT SUM(SAL) 총급여, AVG(SAL) 평균급여, MAX(SAL) 최고급여, MIN(SAL) 최저급여
FROM EMP;

-- 입사일이 가장 오래된 사원, 최근 입사한 사원 을 출력
SELECT MIN(HIREDATE), MAX(HIREDATE) FROM EMP;

-- 2. GROUP BY
-- 형식) SELECT  {컬럼리스트 중 그룹함수, 일반컬럼...}  FROM 테이블명
--         GROUP BY  {그룹으로 묶을 일반컬럼명}
--         WHERE { 조건절}

-- 부서별 급여의 총급여, 평균급여를 출력
SELECT DEPTNO, SUM(SAL), AVG(SAL) 
FROM EMP
GROUP BY DEPTNO
ORDER BY DEPTNO;

-- 부서별 최고급여, 최저급여를 출력
SELECT DEPTNO, MAX(SAL), MIN(SAL) 
FROM EMP
GROUP BY DEPTNO
ORDER BY DEPTNO;

-- 직무별 최고급여, 최저급여를 출력
SELECT JOB, MAX(SAL), MIN(SAL)
FROM EMP
GROUP BY JOB
ORDER BY JOB;

-- 입사년도별 사원수를 출력
SELECT SUBSTR(HIREDATE,1,2), COUNT(*)
FROM EMP
GROUP BY SUBSTR(HIREDATE,1,2)
ORDER BY SUBSTR(HIREDATE,1,2);

-- 입사년도, 입사월별 사원수를 출력
SELECT SUBSTR(HIREDATE,1,2) 입사년도, SUBSTR(HIREDATE,4,2) 입사월, COUNT(*)
FROM EMP
GROUP BY SUBSTR(HIREDATE,1,2), SUBSTR(HIREDATE,4,2)
ORDER BY SUBSTR(HIREDATE,1,2), SUBSTR(HIREDATE,4,2);

--3. HAVING 절 : GROUP BY 결과에 조건을 추가
-- 부서별 평균급여를 출력
SELECT DEPTNO, FLOOR(AVG(SAL))
FROM EMP
GROUP BY DEPTNO
ORDER BY DEPTNO;

-- 부서별 평균급여가 2000 이상인 부서를 출력
SELECT DEPTNO, FLOOR(AVG(SAL))
FROM EMP
GROUP BY DEPTNO
HAVING AVG(SAL) >= 2000
ORDER BY DEPTNO;

-- 직급별 최고급여, 최소급여를 출력해주세요(최고급여가 2500 이상인 직급만 출력)
SELECT JOB, MAX(SAL), MIN(SAL)
FROM EMP
GROUP BY JOB
HAVING MAX(SAL) >= 2500
ORDER BY JOB;

-- 입사년도별 최고급여, 최저급여를 출력(최고급여가 3000 이상이고, 최저급여가 800이상)
SELECT SUBSTR(HIREDATE,1,2), MAX(SAL), MIN(SAL)
FROM EMP
GROUP BY SUBSTR(HIREDATE,1,2)
HAVING MAX(SAL) >= 3000  AND MIN(SAL) >= 800
ORDER BY SUBSTR(HIREDATE,1,2);


--4. ROLLUP/CUBE 함수 : 그룹핑한 결과 아래에 추가정보를 자체적으로 출력
-- 형식) GROUP BY {그룹핑 컬럼},  ROLLUP/CUBE(컬럼명)

-- 입사년도별 사원수를 출력
SELECT SUBSTR(HIREDATE,1,2), COUNT(*)
FROM EMP
GROUP BY ROLLUP(SUBSTR(HIREDATE,1,2))
ORDER BY SUBSTR(HIREDATE,1,2);

-- 입사년도별 사원수를 출력(ROLLUP 결과컬럼에 이름추가)
SELECT NVL(TO_CHAR(SUBSTR(HIREDATE,1,2)),'총인원수'), COUNT(*)
FROM EMP
GROUP BY ROLLUP(SUBSTR(HIREDATE,1,2))
ORDER BY SUBSTR(HIREDATE,1,2);

-- 부서별 총급여를 출력(ROLLUP 결과컬럼에 '총급여' 이름추가)
SELECT NVL(TO_CHAR(DEPTNO),'총급여'), SUM(SAL)
FROM EMP
GROUP BY ROLLUP(DEPTNO)
ORDER BY DEPTNO;

-- 각 부서별 직무의 총급여를 출력
SELECT NVL(TO_CHAR(DEPTNO),'총합계'), NVL(JOB,'부서별합계'), SUM(SAL)
FROM EMP
GROUP BY ROLLUP(DEPTNO, JOB)
ORDER BY DEPTNO;

--- CUBE 함수
-- 입사년도별 사원수를 출력
SELECT SUBSTR(HIREDATE,1,2), COUNT(*)
FROM EMP
GROUP BY CUBE(SUBSTR(HIREDATE,1,2))
ORDER BY SUBSTR(HIREDATE,1,2);

-- 입사년도별 사원수를 출력(ROLLUP 결과컬럼에 이름추가)
SELECT NVL(TO_CHAR(SUBSTR(HIREDATE,1,2)),'총인원수'), COUNT(*)
FROM EMP
GROUP BY CUBE(SUBSTR(HIREDATE,1,2))
ORDER BY SUBSTR(HIREDATE,1,2);

-- 각 부서별 직무의 총급여를 출력
SELECT NVL(TO_CHAR(DEPTNO),'총합계'), NVL(JOB,'부서별합계'), SUM(SAL)
FROM EMP
GROUP BY CUBE(DEPTNO, JOB)
ORDER BY DEPTNO;

-- 각 부서별 입사년도의 평균급여를 출력(CUBE 함수활용)
SELECT NVL(TO_CHAR(DEPTNO),'부서별 평균급여')
                , NVL(TO_CHAR(SUBSTR(HIREDATE,1,2)),'연도별 평균급여') 입사년도
                , FLOOR(AVG(SAL)), COUNT(*)
FROM EMP
GROUP BY CUBE(DEPTNO, SUBSTR(HIREDATE,1,2))
ORDER BY DEPTNO;

--5. UNION : 쿼리 결합을 합쳐줌(중복제거)
-- 부서번호가 10번인 사원들과 부서번호가 30번인 사원들의 집합
SELECT * FROM EMP WHERE DEPTNO=10
UNION
SELECT * FROM EMP WHERE DEPTNO = 30;

-- UNION과 UNION ALL 차이
SELECT * FROM EMP UNION SELECT * FROM EMP;   --12
SELECT * FROM EMP UNION ALL SELECT * FROM EMP;   --24

--UNION ALL : 쿼리 결합을 합쳐줌
-- 부서번호가 10번인 사원들과 부서번호가 30번인 사원들의 집합
SELECT * FROM EMP WHERE DEPTNO=10
UNION ALL
SELECT * FROM EMP WHERE DEPTNO = 30;

-- UNION/UNION ALL 사용시 출력되는 컬럼리스트가 동일해야함
SELECT EMPNO, ENAME, SAL FROM EMP
UNION
SELECT EMPNO, ENAME, SAL FROM EMP;

-- 서브쿼리 맛보기
-- 부서별 전체 인원수, 커미션을 받는 인원수 출력(현재시점 커미션이 NULL인 경우, 기본값 0)
SELECT DEPTNO, COUNT(*)
FROM (SELECT DEPTNO, NVL(COMM,0) FROM EMP
                WHERE NVL(COMM,0) <> 0)
GROUP BY DEPTNO
ORDER BY DEPTNO;

/**********************************
    조인(JOIN)/서브쿼리(SubQuery)
    - 테이블 사이를 연결해 주는 SQL
***********************************/
--1. CROSS 조인 : 테이블 로우수 * 테이블 로우수 ...

-- EMP 테이블과 DEPT 테이블을 CROSS 조인하세요
SELECT * FROM EMP, DEPT;
SELECT COUNT(*) FROM EMP, DEPT;  --48
SELECT COUNT(*) FROM DEPT, EMP;  -- 48

-- EMP 테이블과 DEPT 테이블을 CROSS 조인하세요
SELECT COUNT(*) FROM EMP, DEPT, SALGRADE;  --240

-- ANSI SQL : CROSS JOIN
SELECT COUNT(*) FROM EMP CROSS JOIN SALGRADE;  -- 60

--2. EQUI 조인 : 동일한 컬럼을 이용하여 조인하는 방식
-- 형식) SELECT {컬럼리스트} FROM 조인할 테이블명1, 테이블2....
--         WHERE 테이블명1.조인컬럼 = 테이블명2.조인컬럼

-- EMP 테이블과 DEPT 테이블의 DEPTNO 컬럼을 이용하여 EQUI 조인하세요
SELECT COUNT(*) FROM EMP, DEPT
WHERE EMP.DEPTNO = DEPT.DEPTNO;

-- ANSI SQL : INNER JOIN ~ ON
SELECT COUNT(*) FROM EMP INNER JOIN DEPT
ON EMP.DEPTNO = DEPT.DEPTNO;


-- EMP, DEPT 테이블을 조인하여, 사원번호, 사원명, 입사일, 부서번호,부서명 출력
SELECT EMPNO, ENAME, HIREDATE, EMP.DEPTNO, DNAME
FROM EMP, DEPT
WHERE EMP.DEPTNO = DEPT.DEPTNO;

-- EMP, DEPT 테이블을 조인하여, 사원번호, 사원명, 입사일, 부서번호,부서명 출력
SELECT EMPNO, ENAME, HIREDATE, E.DEPTNO, DNAME
FROM EMP E, DEPT D
WHERE E.DEPTNO = D.DEPTNO;

-- KING 사원의 사원번호, 사원명, 급여, 부서명, 부서위치를 출력
SELECT EMPNO, ENAME, SAL, DNAME, LOC
FROM EMP E, DEPT D
WHERE E.DEPTNO = D.DEPTNO
AND ENAME='KING';

-- 뉴욕에서 근무하는 사원의 사원명과 부서명을 출력
SELECT ENAME, DNAME
FROM EMP E, DEPT D
WHERE E.DEPTNO = D.DEPTNO
AND LOC='NEW YORK';

-- ACCOUNTING 부서에 속하는 사원의 모든 정보를 출력
SELECT *
FROM EMP E, DEPT D
WHERE E.DEPTNO = D.DEPTNO
AND DNAME='ACCOUNTING';

-- JOB이 매니저인 사원의 사원명과 부서번호, 부서명을 출력
SELECT ENAME, E.DEPTNO, DNAME
FROM EMP E, DEPT D
WHERE E.DEPTNO = D.DEPTNO
AND JOB='MANAGER'
ORDER BY DEPTNO;

-- 3. NON-EQUI 조인 : 
SELECT * FROM EMP;
SELECT * FROM SALGRADE;

--  CROSS JOIN
SELECT COUNT(*) FROM EMP, SALGRADE;  --60


-- 조건을 명시하여 JOIN 하는 경우
-- SALGRADE에 있는 LOSAL, HISAL 급여구간에 속하는 EMP의 SAL 컬럼을 조인
SELECT * 
FROM EMP, SALGRADE
WHERE SAL BETWEEN LOSAL AND HISAL  ;

--4. SELF JOIN
-- 'SMITH' 사원의 매니저 정보를 출력
SELECT E2.EMPNO, E2.ENAME, E2.JOB, E2.DEPTNO 
FROM EMP E1, EMP E2
WHERE E1.MGR = E2.EMPNO
AND E1.ENAME='SMITH';

-- 'KING'을 매니저로 가지고 있는 사원정보를 출력
SELECT E1.EMPNO, E1.ENAME, E1.MGR, E2.ENAME
FROM EMP E1, EMP E2
WHERE E1.MGR = E2.EMPNO
AND E2.ENAME='KING';

--(서브쿼리)'KING'을 매니저로 가지고 있는 사원정보를 출력
SELECT * 
FROM EMP
WHERE MGR = (SELECT EMPNO FROM EMP WHERE ENAME='KING');

--5. OUTER JOIN
-- EQUI JOIN을 통해 조인을 한 결과에 포함되지 않는 결과를 추가로 함께 출력하는 경우

SELECT * FROM DEPT;
SELECT DISTINCT DEPTNO FROM EMP;

-- 모든 부서의 사원들을 출력하는 쿼리(OUTER 조인)
SELECT * FROM EMP, DEPT
    WHERE EMP.DEPTNO(+) = DEPT.DEPTNO;
    
-- 모든 사원들의 매니저 정보를 출력하는 쿼리
SELECT * 
FROM EMP EMPLOYEE, EMP MANAGER
WHERE EMPLOYEE.MGR = MANAGER.EMPNO(+);

-- ANSI SQL : (LEFT/RIGHT/FULL) OUTER JOIN
SELECT * 
FROM EMP EMPLOYEE  LEFT OUTER JOIN  EMP MANAGER
ON EMPLOYEE.MGR = MANAGER.EMPNO;


/***********************************************
    서브쿼리(SubQuery)
    
    -----------------------------------
    서브쿼리명                   위치
    -----------------------------------
    스칼라 서브쿼리            컬럼리스트
    인라인 뷰                     테이블
    다중(중첩) 서브쿼리      WHERE, HAVING 절 뒤
   -----------------------------------
    
***********************************************/
-- 예제
SELECT * FROM EMP
WHERE MGR = 7902;

-- 단일 행 서브쿼리 : 서브쿼리를 실행한 결과가 하나의 로우로 출력되는 형식
--                           비교연산자(>,<...) 를 이용하여 조건을 처리함

SELECT * FROM EMP
WHERE MGR = (SELECT EMPNO FROM EMP WHERE ENAME='FORD');

-- SMITH와 같은 직급(JOB)을 가진 사원을 출력해주세요
SELECT * FROM EMP
WHERE JOB = (SELECT JOB FROM EMP WHERE ENAME='SMITH');

-- SMITH의 급여와 같거나 더 많이 받는 사원의 정보를 출력해주세요
SELECT * FROM EMP
WHERE SAL >= (SELECT SAL FROM EMP WHERE ENAME='SMITH');

-- DALLAS에서 근무하는 사원의 이름, 부서번호를 출력해주세요
SELECT ENAME, DEPTNO FROM EMP
WHERE DEPTNO = (SELECT DEPTNO FROM DEPT WHERE LOC='DALLAS');

-- SALES 부서에서 근무하는 사원의 사원번호, 사원명, 급여를 출력해주세요.
SELECT EMPNO, ENAME, SAL
FROM EMP
WHERE DEPTNO = (SELECT DEPTNO FROM DEPT WHERE DNAME='SALES');

-- 매니저가 KING인 사원의 정보를 출력해주세요(셀프조인)
SELECT * FROM EMP
WHERE MGR = (SELECT EMPNO FROM EMP WHERE ENAME='KING');


-- 다중 행 서브쿼리 : 서브쿼리를 실행한 결과가 여러개의 로우로 출력되는 형식
--                           IN, ANY, SOME, ALL, EXIST를 이용하여 조건을 처리함


-- IN 연산자
-- 부서별로 가장 높은 급여를 받는 사원의 정보를 출력해주세요.
SELECT * FROM EMP
WHERE SAL IN (SELECT MAX(SAL) FROM EMP GROUP BY DEPTNO);

SELECT * FROM EMP
WHERE SAL IN (5000,3000,2850);

SELECT * FROM EMP
WHERE SAL =5000 OR SAL=3000 OR SAL=2850;

-- 직급이 MANAGER인 사원이 속한 부서의 부서번호와 부서명과 지역을 출력해주세요
SELECT DEPTNO, DNAME, LOC
FROM DEPT
WHERE DEPTNO IN (SELECT DEPTNO FROM EMP 
                                    WHERE JOB = 'MANAGER')
ORDER BY DEPTNO;

-- ALL 연산자
-- 30번 부서에 속한 사원들보다 급여를 많이 받는 사원의 정보를 출력해주세요
SELECT * FROM EMP
WHERE SAL > ALL(SELECT SAL FROM EMP WHERE DEPTNO=30);

-- MAX 함수를 이용한 방식으로 대체
SELECT * FROM EMP
WHERE SAL > (SELECT MAX(SAL) FROM EMP WHERE DEPTNO=30);


-- ANY 연산자
-- 30번 부서에 속한 사원들 중 가장 작은 급여를 받는 사원보다 급여가 많은 사원의 정보를 출력해주세요
SELECT * FROM EMP
WHERE SAL > ANY(SELECT SAL FROM EMP WHERE DEPTNO=30);

-- MIN 함수를 이용하여 대체
SELECT * FROM EMP
WHERE SAL > (SELECT MIN(SAL) FROM EMP WHERE DEPTNO=30);


-- 스칼라 서브쿼리 : 컬럼리스트 자리에 들어가는 서브쿼리 형식
-- 30번 부서에 속한 사원들의 사원번호, 사원명, 급여, 부서번호, 부서명을 출력해주세요
SELECT EMPNO, ENAME, SAL, DEPTNO
            ,(SELECT DNAME FROM DEPT 
                    WHERE DEPTNO=30) DNAME
FROM EMP
WHERE DEPTNO = 30;

-- EQUI 조인
SELECT EMPNO, ENAME, SAL, E.DEPTNO, DNAME
FROM EMP E, DEPT D
WHERE E.DEPTNO = D.DEPTNO
    AND E.DEPTNO = 30;
    
    
--인라인 뷰 : 테이블 자리에 들어가는 서브쿼리
-- EMP 테이블의 최근 입사자 기준으로 정렬하고, 
--행번호(ROWNUM)를 출력하는 쿼리를 작성해주세요
--* ORDER BY와 ROWNUM 은 동시에 실행안됨 : ORDER BY > ROWNUM
SELECT ROWNUM RNO, EMPNO, ENAME, HIREDATE, SAL
FROM (SELECT EMPNO, ENAME, HIREDATE, SAL
                FROM EMP
                ORDER BY SAL DESC);


/***********************************************
    테이블 구조 생성, 변경 및 삭제하는 DDL    
    - 테이블 생성 : CREATE TABLE
    - 테이블 구조 변경 : ALTER TABLE
    - 테이블 삭제 : DROP TABLE
    - 테이블의 모든 행 제거 : TRUNCATE TABLE
    - 테이블 이름 변경 : RENAME 
    
    * DDL 명령은 데이터베이스에 바로 적용되기 때문에 ROLLBACK이 불가함
***********************************************/
--테이블 생성 : 형식) CREATE TABLE {테이블명} (
--                              컬럼명  컬럼타입  크기  제약사항, 
--                              ....
--                           );

-- SCOTT 계정이 생성한 테이블 리스트 확인 : 데이터딕셔너리(USER_TABLES)
SELECT * FROM USER_TABLES;

-- EMP01 테이블 생성
-- 컬럼리스트(EMPNO  NUMBER(4), ENAME  VARCHAR2(50), HIREDATE DATE)
CREATE TABLE EMP01(
    EMPNO       NUMBER(4),
    ENAME       VARCHAR2(50),
    HIREDATE  DATE
);

SELECT * FROM USER_TABLES WHERE TABLE_NAME='EMP01';

-- EMP01의 테이블 구조 확인
DESC EMP01; 

-- EMP02 테이블 생성
-- 컬럼리스트(EMPNO  NUMBER(4) 널허용하지않음, ENAME  VARCHAR2(50), HIREDATE DATE)
CREATE TABLE EMP02(
    EMPNO       NUMBER(4)   NOT NULL,
    ENAME       VARCHAR2(50),
    HIREDATE  DATE
);
SELECT * FROM USER_TABLES WHERE TABLE_NAME='EMP02';
DESC EMP02;

--테이블 생성 :  기존의 테이블을 복사하여 새로운 테이블을 생성하는 형식
--형식) CREATE TABLE {테이블명} 
--         AS
--         SELECT~ (기존 테이블의 데이터를 가져오는 SELECT 명령 실행);
-- * 기존 테이블의 제약사항(CONSTRAINT)은 복제되지 않음--> ALTER TABLE로 추가해야함

-- DEPT 테이블을 복사하여 전체 내용을 DEPT01 테이블 생성(복사)
CREATE TABLE DEPT01
AS 
SELECT * FROM DEPT;

SELECT * FROM USER_TABLES WHERE TABLE_NAME='DEPT01';
DESC DEPT01;
DESC DEPT;

-- EMP 테이블의 사원번호, 사원명, 급여, 커미션, 부서번호를 복사하여 EMP03 테이블을 생성하세요
CREATE TABLE EMP03
AS
SELECT EMPNO, ENAME, SAL, COMM, DEPTNO FROM EMP;

SELECT * FROM USER_TABLES WHERE TABLE_NAME='EMP03';
SELECT * FROM EMP03;

-- EMP과 DEPT 테이블을 EQUI 조인한 결과를 EMP_DEPT 테이블을 생성하여 복사해주세요.
CREATE TABLE EMP_DEPT
AS
SELECT EMPNO, ENAME, JOB, E.DEPTNO, DNAME, LOC FROM EMP E, DEPT D
WHERE E.DEPTNO = D.DEPTNO;

SELECT * FROM USER_TABLES WHERE TABLE_NAME='EMP_DEPT';
SELECT * FROM EMP_DEPT;

-- 테이블의 구조만 복사하여 새로운 테이블 생성
-- EMP 테이블의 구조를 복사하여 EMP04 테이블을 생성해주세요
CREATE TABLE EMP04
AS SELECT * FROM EMP WHERE 1=0;

SELECT * FROM USER_TABLES
WHERE TABLE_NAME='EMP04';


-- 테이블 구조 변경 : ALTER TABLE {테이블명} 
--                           (컬럼추가):      ADD 컬럼명 타입(크기) 제약사항
--                           (컬럼변경):      MODIFY 컬럼명 타입(크기) 제약사항
--                           (컬럼삭제):      DROP COLUMN 컬럼명 
-- * 컬럼을 변경하는 MODIFY 경우에는 데이터 유/무에 따라 데이터 유실 주의하세요!

-- EMP01 테이블에 SAL(실수, 소수점2자리) 컬럼을 추가
SELECT * FROM USER_TABLES WHERE TABLE_NAME='EMP01';
DESC EMP01;

ALTER TABLE EMP01
    ADD (SAL  NUMBER(7,2));
    
-- EMP01 테이블의 HIREDATE 컬럼의 타입을 VARCHAR2(30) 타입으로 변경해주세요
SELECT * FROM EMP01;
ALTER TABLE EMP01
    MODIFY(HIREDATE VARCHAR2(30));

DESC EMP01;    

-- EMP03 테이블의 ENAME 컬럼을 NUMBER(30) 타입으로 변경해주세요
-- ENAME 컬럼에 데이터가 존재하므로 다른 데이터타입으로 변경이 불가한 오류 메시지 출력
--ORA-01439: column to be modified must be empty to change datatype
--01439. 00000 -  "column to be modified must be empty to change datatype"
SELECT * FROM EMP03;
DESC EMP03;
ALTER TABLE EMP03
   MODIFY(ENAME NUMBER(30));
   
   
-- EMP01 테이블의 SAL 컬럼을 삭제
DESC EMP01;
ALTER TABLE EMP01
   DROP COLUMN SAL;
   
   
-- 테이블의 모든 행 제거 : TRUNCATE TABLE {테이블명}
-- EMP03 테이블의 모든행을 제거해주세요(복원불가)  VS DELETE 명령은 복원가능
SELECT * FROM EMP03;
TRUNCATE TABLE EMP03;

-- 테이블의 이름 변경 : RENAME {OLD_테이블명} TO {NEW_테이블명};
-- EMP01 테이블명을 EMP001로 변경해 주세요
RENAME  EMP01 TO EMP001;
SELECT * FROM USER_TABLES;

-- 테이블의 삭제 : DROP TABLE {삭제할 테이블명};
-- EMP001 테이블을 삭제해주세요
DROP TABLE EMP001;
SELECT * FROM USER_TABLES WHERE TABLE_NAME='EMP001';

-- 데이터딕셔너리 테이블 : 테이블에 대한 생성/변경/삭제 등의 작업이 발생하면
-- 시스템의 서버에서 자동으로 딕셔너리 테이블에 변경사항을 저장하여 관리함
-- USER_XXXX, DBA_XXXX, ALL_XXXX 등의 데이터딕셔너리 테이블이 존재함

-- SCOTT 계정에서 생성된 모든 테이블리스트를 확인
SELECT * FROM USER_TABLES;

-- SCOTT 계정에서 생성되어진 테이블들이 가지는 모든 제약사항을 확인
SELECT * FROM USER_CONSTRAINTS;

-- SCOTT 계정에서 생성된 모든 시퀀스(자동번호생성기)들의 목록 확인
SELECT * FROM USER_SEQUENCES;

-- 모든 딕셔너리 테이블 목록 확인
DESC ALL_TABLES;


/***********************************************
    테이블 데이터 추가, 데이터 수정, 데이터 삭제 DML    
    - 데이터 추가(C) : INSERT INTO
    - 데이터 조회(R) : SELECT ~ 
    - 데이터 수정(U) : UPDATE  ~ SET
    - 데이터 삭제(D) : DELETE ~
***********************************************/
-- 데이터 추가 : INSERT 
-- 형식) INSERT INTO {테이블명}(컬럼1, 컬럼2...)
--         VALUES(데이터1, 데이터2...);

-- EMP 테이블의 사원번호, 사원명, 부서번호 컬럼의 구조를 복제하여 EMP01을 생성해주세요
SELECT * FROM USER_TABLES 
WHERE TABLE_NAME='EMP01';

CREATE TABLE EMP01
AS
SELECT EMPNO, ENAME, DEPTNO 
FROM EMP
WHERE 1=0;

DESC EMP01;

-- EMP01 테이블에 7369,SMITH,20  데이터 추가
INSERT INTO EMP01(EMPNO, ENAME, DEPTNO)
    VALUES(7369,'SMITH',20);
SELECT * FROM EMP01;

-- EMP01 테이블에 7399,KING,30  데이터 추가
INSERT INTO EMP01 VALUES(7399,'KING',30);

-- EMP01 현재 상태에서 중복 가능??
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

-- EMP001 테이블 생성 : 사원번호(PK-UNIQUE+NOT NULL), 사원명, 부서번호
CREATE TABLE EMP001(
    EMPNO    NUMBER(4)   PRIMARY KEY, 
    ENAME    VARCHAR2(30)  NOT NULL,
    DEPTNO  NUMBER(2)
);
SELECT * FROM USER_TABLES WHERE TABLE_NAME='EMP001';
SELECT * FROM USER_CONSTRAINTS WHERE TABLE_NAME='EMP001';

INSERT INTO EMP001(EMPNO,ENAME,DEPTNO)
VALUES(1234,'홍길동',20);

INSERT INTO EMP001(EMPNO,ENAME,DEPTNO)
VALUES(7368,'홍길동',20);

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


-- 서브쿼리를 이용하여 데이터 추가
-- EMP 테이블의 구조를 복사하여 EMP05 테이블을 생성하고, 
-- 전체 행을 서브쿼리를이용하여 추가해주세요
SELECT * FROM USER_TABLES WHERE TABLE_NAME='EMP05';

CREATE TABLE EMP05
AS SELECT * FROM EMP WHERE 1=0;

SELECT * FROM EMP05;

INSERT INTO EMP05
SELECT * FROM EMP;

-- EMP와 DEPT 테이블을 조인하여 사원번호, 사원명, 부서번호, 부서명, 위치를
-- 가진 EMP_DEPT2 테이블을 생성해주세요(구조만 복사)
CREATE TABLE EMP_DEPT2
AS
SELECT EMPNO, ENAME, E.DEPTNO, DNAME, LOC
FROM EMP E, DEPT D
WHERE E.DEPTNO = D.DEPTNO
AND 1=0;

SELECT * FROM USER_TABLES WHERE TABLE_NAME='EMP_DEPT2';
SELECT * FROM EMP_DEPT2;

-- WARD와 같은 부서에 속한 사원들의 사원번호, 사원명, 부서번호, 부서명, 위치를
-- EMP_DEPT2에 저장해 주세요
INSERT INTO EMP_DEPT2
SELECT EMPNO, ENAME, E.DEPTNO, DNAME, LOC
FROM EMP E, DEPT D
WHERE E.DEPTNO = D.DEPTNO
AND E.DEPTNO = (SELECT DEPTNO FROM EMP WHERE ENAME='WARD');

SELECT * FROM EMP_DEPT2;

-- SMITH와 같은 부서에 속한 사원들의 사원번호, 사원명, 부서번호, 위치를
-- EMP_DEPT2에 저장해 주세요
-- 오류발생 : SMITH의 정보 컬럼과 EMP_DEPT2 테이블의 컬럼 갯수가 다르므로 값이 충분하지 않음
INSERT INTO EMP_DEPT2
SELECT EMPNO, ENAME, E.DEPTNO,  LOC
FROM EMP E, DEPT D
WHERE E.DEPTNO = D.DEPTNO
AND E.DEPTNO = (SELECT DEPTNO FROM EMP WHERE ENAME='SMITH');

-- 데이터 변경 : UPDATE
-- 형식) UPDATE {테이블명} 
--         SET 컬럼명=새로운값,...
--         WHERE 업데이트 조건 ; 

-- EMP05 테이블의 모든 사원의 급여를 10% 인상해 주세요
SELECT * FROM EMP05;
UPDATE  EMP05  SET SAL=SAL*1.1 ;

-- EMP05 테이블의 30번 부서 사원들의 커미션을 기존+100으로 변경해주세요.
SELECT * FROM EMP05 WHERE DEPTNO=30;

UPDATE EMP05 SET COMM = NVL(COMM,0) + 100
WHERE DEPTNO = 30;

SELECT * FROM EMP05 ORDER BY DEPTNO;


-- KING이 관리하는 사원들만 입사일을 오늘날짜로 수정해 주세요
SELECT * FROM EMP05
WHERE MGR = (SELECT EMPNO FROM EMP WHERE ENAME='KING');

UPDATE EMP05
SET HIREDATE = SYSDATE
WHERE MGR = (SELECT EMPNO FROM EMP WHERE ENAME='KING');

-- SMITH 사원과 동일한 부서의 모든 사원들의 입사일자를 내일로
-- 커미션을 3000으로 수정해주세요.
SELECT * FROM EMP05
WHERE DEPTNO = (SELECT DEPTNO FROM EMP WHERE ENAME='SMITH');

UPDATE EMP05
SET HIREDATE = SYSDATE+1, COMM = 3000
WHERE DEPTNO = (SELECT DEPTNO FROM EMP WHERE ENAME='SMITH');

-- 데이터 삭제 : DELETE
-- 형식) DELETR FROM {테이블명}
--          WHERE 삭제할 조건;

-- EMP05 테이블의 10번 부서의 사원들을 삭제해 주세요.
SELECT COUNT(*) FROM EMP05 WHERE DEPTNO=10;  --3
DELETE FROM EMP05 WHERE DEPTNO=10;
SELECT * FROM EMP05;

-- SALES 부서에 속한 모든 사원들을 삭제해 주세요.
SELECT * FROM EMP05 
WHERE DEPTNO = (SELECT DEPTNO FROM DEPT WHERE DNAME='SALES');

DELETE FROM EMP05
WHERE DEPTNO = (SELECT DEPTNO FROM DEPT WHERE DNAME='SALES');

SELECT * FROM EMP05;


/*************************************************************************
    트랜잭션(Transaction)   
    - 데이터 처리의 한 단위로 오라클에서 처리하는 SQL문 하나의 논리적인 작업단위
    - 하나의 트랜잭션은 ALL-OR-NOTHING 방식으로 처리됨 
    - 여러개 명령어의 집합 중 하나의 명령어라도 잘못되면 전체를 취소해 버림
    - 트랜잭션이란 데이터의 일관성을 유지하면서 안정적으노 데이터를 복구시키기 위함
    
    예) 은행 현금인출기(ATM)
    1) 현금 인출 버튼을 누른다.
    2) 카드를 넣고 본인 인증을 한다.
    3) 인출할 금액을 선택하면, 현금인출기가 현금을 내어준다.
    4) 계좌에서 인출된 금액만큼 잔액에서 차감한다.
*************************************************************************/
COMMIT;     -- COMMIT 하기 전까지의 작업을 오라클 반영
SELECT * FROM USER_TABLES;
SELECT * FROM EMP01;
DESC EMP01;

-- EMP01 테이블에  사원번호(8000), 사원명(홍길동), 부서번호(40)  사원을 추가해주세요
INSERT INTO EMP01 VALUES(8100,'홍길동',40);

--ROLLBACK;
COMMIT;     
--  새로운 트랜잭션 시작
SELECT * FROM EMP01;

-- 홍길동 사원의 부서번호를 10번으로 수정해 주세요
UPDATE EMP01 SET DEPTNO=10  WHERE ENAME='홍길동';
SAVEPOINT C1;  -- ROLLBACK 시 단위별 복원 가능

-- 홍길동 사원의 부서번호를 30번으로 수정해 주세요
UPDATE EMP01 SET DEPTNO=30  WHERE ENAME='홍길동';
SAVEPOINT C2;  -- ROLLBACK 시 단위별 복원 가능

-- 홍길동 사원을 삭제해주세요
DELETE FROM EMP01 WHERE ENAME='홍길동';
SAVEPOINT C3;  -- ROLLBACK 시 단위별 복원 가능

SELECT * FROM EMP01;

-- 커밋 하기 전 세이브포인트 C2로 ROLLBACK
ROLLBACK TO C2;
ROLLBACK TO C1;
COMMIT;

-- EMP10 테이블을 EMP 테이블을 복제하여 생성해 주세요.
CREATE TABLE EMP10
AS
SELECT * FROM EMP;
SELECT * FROM USER_TABLES WHERE TABLE_NAME='EMP10';

COMMIT;
-- EMP10 테이블의 30번 부서를 삭제해주세요.
DELETE FROM EMP10 WHERE DEPTNO=30;
SELECT * FROM EMP10;

-- EMP10 테이블의 20번 부서를 삭제하고, 세이브포인트 C1을 설정해주세요.
DELETE FROM EMP10 WHERE DEPTNO=20;
SELECT * FROM EMP10;
SAVEPOINT E1;

-- EMP10 테이블의 10번 부서를 삭제하고, 세이브포인트 C2을 설정해주세요.
DELETE FROM EMP10 WHERE DEPTNO=10;
SELECT * FROM EMP10;
SAVEPOINT E2;

ROLLBACK TO E1;  -- 10번 부서 복원
ROLLBACK;              -- 모든 부서 복원
SELECT * FROM EMP10;
COMMIT;

-- DELETE VS TRUNCATE TABLE
-- EMP10 테이블의 30번 부서를 삭제해주세요(DELETE)
DELETE FROM EMP10 WHERE DEPTNO = 30;
SELECT * FROM EMP10;
ROLLBACK;  --30번 부서 복원
COMMIT;

-- EMP10 테이블의 모든 부서를 삭제해주세요(TRUNCATE TABLE)
TRUNCATE TABLE EMP10 ;
ROLLBACK;
SELECT * FROM EMP10;

/**********************************
    제약사항 (CONSTRAINT)
    - 데이터의 무결성을 위한 조건
    - 필수 입력 컬럼 : NOT NULL  
    - 유일한 값을 입력받는 컬럼 :  UNIQUE
    - NOT NULL + UNIQUE : PRIMARY KEY
    - 타 테이블의 컬럼(PRIMARY KEY) 참조하는 컬럼 : FOREIGN KEY
    - 입력된 값을 체크 : CHECK
    - 기본값을 제공 : DEFAULT 
***********************************/
-- SCOTT의 모든 제약사항을 확인해 주세요
SELECT * FROM USER_CONSTRAINTS;
SELECT * FROM DEPT;
DESC DEPT;

-- 테이블에 제약사항을 추가하기 : 테이블 생성/테이블 변경
-- 형식) 컬럼명  타입(크기)   {제약사항 추가}  --SYS_.. 형식으로 등록
--          컬럼명  타입(크기)  CONSTRAINT  {제약사항명} {제약사항 타입}   -- 제약사항명 등록
SELECT * FROM USER_TABLES WHERE TABLE_NAME = 'EMP002';

-- EMP002 생성(사원번호, 사원명, 급여, 커미션, 부서번호)
CREATE TABLE EMP002(
    EMPNO   NUMBER(4)  CONSTRAINT PK_EMPNO_EMP002   PRIMARY KEY,
    ENAME   VARCHAR2(30)  CONSTRAINT NN_ENAME_EMP002  NOT NULL,
    SAL      NUMBER(7,2),
    COMM  NUMBER(7,2),
    DEPTNO NUMBER(2)
);
SELECT * FROM USER_CONSTRAINTS WHERE TABLE_NAME='EMP002';

-- 제약사항을 통한 데이터 무결성에 따른 입력
INSERT INTO EMP002 VALUES(1234,'SMITH',800,NULL,10);
--INSERT INTO EMP002 VALUES(1234,'SMITH',800,NULL,10); --사원번호 UNIQUE 제약 오류발생
INSERT INTO EMP002 VALUES(7894,'SMITH',800,NULL,10); 
INSERT INTO EMP002 VALUES(4561,NULL,800,NULL,10); -- 사원명 NOT NULL 제약 오류발생 

SELECT * FROM EMP002;


-- 테이블이 생성된 후 테이블 변경(ALTER TABLE) 명령을 통해 제약사항 추가
CREATE TABLE EMP003
AS
SELECT EMPNO, ENAME, SAL, COMM, DEPTNO 
FROM EMP
WHERE 1=0;

SELECT * FROM USER_TABLES WHERE TABLE_NAME='EMP003';
SELECT * FROM USER_CONSTRAINTS WHERE TABLE_NAME='EMP003';
SELECT * FROM USER_CONSTRAINTS WHERE TABLE_NAME='EMP';

-- ALTER TABLE 명령을 이용하여 EMP003에 제약사항 추가
-- EMP003 테이블의 EMPNO 컬럼에 PRIMARY KEY 제약 추가
ALTER TABLE EMP003
ADD CONSTRAINT  PK_EMPNO_EMP003 PRIMARY KEY (EMPNO);

-- EMP003 테이블의 ENAME 컬럼에 NOT NULL 제약 추가 : MODIFY
ALTER TABLE EMP003
MODIFY ENAME CONSTRAINT NN_ENAME_EMP003 NOT NULL;

-- EMP003 테이블의 DEPTNO 컬럼에 NOT NULL 제약 추가 : MODIFY
ALTER TABLE EMP003
MODIFY DEPTNO CONSTRAINT NN_DEPTNO_EMP003 NOT NULL;

-- EMP003 테이블의 DEPTNO 컬럼의 제약사항(NOT NULL)을 삭제
ALTER TABLE EMP003
DROP CONSTRAINT NN_DEPTNO_EMP003;

SELECT * FROM USER_CONSTRAINTS WHERE TABLE_NAME='EMP003';
SELECT * FROM EMP003;


-- EMP 테이블의 사원번호,사원명, 급여,커미션, 부서번호 구조를 복제하여 EMP004 생성해주세요
CREATE TABLE EMP004 AS
SELECT EMPNO, ENAME, SAL, COMM, DEPTNO FROM EMP WHERE 1=0;

-- 서브쿼리를 이용하여 EMP004 테이블에 부서번호 10번의 사원들을 추가해주세요
INSERT INTO EMP004
SELECT EMPNO, ENAME, SAL, COMM, DEPTNO FROM EMP
WHERE DEPTNO=10;

SELECT * FROM EMP004;

-- EMP004 테이블의 제약 사항 확인
SELECT * FROM USER_CONSTRAINTS WHERE TABLE_NAME='EMP004';

-- EMP004의 EMPNO 컬럼에 기본키(PRIMARY KEY) 제약 추가
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


-- 사원은 반드시 하나의 부서에 소속되어야 한다.
-- 사원테이블, 부서테이블 
SELECT * FROM EMP;

-- EMP004 테이블에서 DEPTNO 컬럼에 부서번호를 입력할 경우,
-- DEPT 테이블의 DEPTNO 컬럼을 참조하도록 제약사항을 설정해주세요
ALTER TABLE EMP004
ADD CONSTRAINT FK_DEPTNO_EMP004 FOREIGN KEY(DEPTNO)
    REFERENCES DEPT(DEPTNO);
    
SELECT * FROM USER_CONSTRAINTS WHERE TABLE_NAME='EMP004';    
DESC EMP004;

-- EMP004 참조 제약 테스트
INSERT INTO EMP004 VALUES(5689,'HONG',500,0,40);
SELECT * FROM DEPT;
SELECT * FROM EMP004;

-- DEPT 테이블에서 부서번호 40번이 없어진다면??
DELETE FROM DEPT WHERE DEPTNO=40;
--ORA-02292: integrity constraint (SCOTT.FK_DEPTNO_EMP004) violated - child record found

SELECT DISTINCT DEPTNO FROM EMP;
SELECT DISTINCT DEPTNO FROM EMP004;  --DEPT 테이블의 40번 부서 참조

SELECT * FROM DEPT;   --40	OPERATIONS	BOSTON
--1. 
DELETE FROM EMP004 WHERE DEPTNO=40;

--2. 
DELETE FROM DEPT WHERE DEPTNO = 40;

-- DEPT 테이블에 40번 부서 추가
INSERT INTO DEPT VALUES(40,'OPERATIONS','BOSTON');
SELECT * FROM DEPT;

-- EMP004 테이블에 FK 제약을 삭제해주세요
SELECT * FROM USER_CONSTRAINTS WHERE TABLE_NAME='EMP004';

ALTER TABLE EMP004
    DROP CONSTRAINT FK_DEPTNO_EMP004;
    
-- 참조하는 키(부모테이블)가 삭제되는 경우 자식테이블에서 처리하는 방법을 추가
ALTER TABLE EMP004
ADD CONSTRAINT FK_DEPTNO_EMP004 FOREIGN KEY(DEPTNO)
    REFERENCES DEPT(DEPTNO) 
    ON  DELETE CASCADE;
    
-- EMP004 테이블에 40번 추가
SELECT * FROM EMP004;
INSERT INTO EMP004 VALUES(5000,'HONG',100,100,40);

SELECT * FROM DEPT;

-- DEPT(부모테이블) 의 40번 부서가 삭제된다면??
DELETE FROM DEPT WHERE DEPTNO=40;
SELECT * FROM DEPT;
SELECT * FROM EMP004;


-- EMP 테이블의 구조를 복제하여 EMP005 테이블에 사원번호, 사원명, 부서번호를 생성해주세요.
CREATE TABLE EMP005 AS
SELECT EMPNO,ENAME, DEPTNO FROM EMP WHERE 1=0;

-- EMP 테이블의 부서번호 20번 부서사원들을 서브쿼리로 EMP005에 추가해주세요
INSERT INTO EMP005
SELECT EMPNO, ENAME, DEPTNO 
FROM EMP
WHERE DEPTNO=20;

SELECT * FROM EMP005;

-- EMP005 테이블의 DEPTNO에서 DEPT 테이블의 DEPTNO를 참조하도록 제약을 추가해주세요
ALTER TABLE EMP005
    ADD CONSTRAINT FK_DEPTNO_EMP005 FOREIGN KEY(DEPTNO)
    REFERENCES DEPT(DEPTNO)
    ON DELETE  CASCADE;
    
SELECT * FROM USER_CONSTRAINTS WHERE TABLE_NAME='EMP005';    

-- DEPT 테이블에서 20번 부서 삭제
DELETE FROM DEPT WHERE DEPTNO=20;


-- DEFAULT 제약 설정 
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

-- CHECK 제약
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
    가상 테이블 뷰(VIEW)
    - 논리적인 가상 테이블 형태
    - SQL을 통해 생성됨  
    - 권한을 가진 사용자만이 액세스 할 수 있도록 하기 위함(보안)
    - 대표적인 뷰는 데이터딕셔너리 테이블
***********************************/
-- 형식 : CREATE { OR REPLACE} VIEW [VIEW명]
--          AS  서브쿼리;

-- EMP 테이블의 30번 부서의 사원들을 복사하여 EMP30_1 테이블을 생성해주세요
CREATE TABLE EMP30_1
AS
SELECT * FROM EMP WHERE DEPTNO = 30;

SELECT * FROM USER_TABLES WHERE TABLE_NAME='EMP30_1';
SELECT * FROM EMP30_1;

-- EMP 테이블의 30번 부서의 사원들을 복사하여 EMP30_2 뷰를 생성해주세요
CREATE VIEW EMP30_3
AS
SELECT * FROM EMP WHERE DEPTNO=30;
-- ORA-01031: insufficient privileges 
-- 원인 : VIEW를 생성하는 권한이 없는 경우
-- 해결방안 :  관리자계정에서 VIEW를 생성하는 권한을 scott에게 할당해줘야 함!!

CREATE VIEW EMP30_3
AS
SELECT * FROM EMP WHERE DEPTNO=30;

-- 뷰 생성 확인 : USER_VIEWS
SELECT * FROM USER_VIEWS;

-- 생성된 뷰를 통해 쿼리 실행
SELECT * FROM EMP30_3;

-- EMP 테이블 전체 출력
SELECT * FROM EMP;

-- EMP 테이블 중 영업부서에게 공유되는 정보를 VIEW로 생성해서 공유
-- 사원번호, 사원명, 직무, 입사일, 부서번호, 부서명
CREATE VIEW EMP_SALES2
AS
SELECT EMPNO, ENAME, JOB, HIREDATE, E.DEPTNO, DNAME
FROM EMP E, DEPT D
WHERE E.DEPTNO = D.DEPTNO;

SELECT * FROM USER_VIEWS;
SELECT * FROM EMP_SALES2;

-- EMP 테이블 중 HR부서에게 공유되는 정보를 VIEW로 생성해서 공유
-- 사원번호, 사원명, 직무, 매니저, 입사일, 부서번호, 부서명, 위치
-- 뷰명 : EMP_HR
CREATE VIEW EMP_HR2
AS
SELECT EMPNO, ENAME, JOB, MGR, HIREDATE, E.DEPTNO, DNAME, LOC
FROM EMP E, DEPT D
WHERE E.DEPTNO = D.DEPTNO;

SELECT * FROM USER_VIEWS;
SELECT * FROM EMP_HR2;

-- EMP 테이블 중 회계부서에게 공유되는 정보를 VIEW로 생성해서 공유
-- 사원번호, 사원명, 입사일, 급여, 커미션, 부서번호, 부서명
-- 뷰명 : EMP_CF

-- 뷰의 종류
-- 단순뷰(Simple View) : 하나의 테이블로 생성/그룹함수 사용X(버전별)/DISTINCT 사용X /DML 사용O
-- 복합뷰(Complex View) : 여러개의 테이블로 생성/그룹함수 사용O/DISTINCT 사용O /DML 사용X

SELECT * FROM USER_VIEWS;
SELECT * FROM EMP30_3;

-- EMP30_3 단순뷰에 데이터 추가
INSERT INTO EMP30_3 
    VALUES(8000,'HONG','MANAGER',7844,SYSDATE,1000,100,20);
COMMIT;    

SELECT * FROM EMP;

-- 뷰 삭제 후 다시 생성
DROP VIEW EMP30_3;
SELECT * FROM USER_VIEWS;

-- 20번 부서의 직원들을 모두 EMP_20 뷰로 생성해주세요
CREATE VIEW EMP_20
AS
SELECT * FROM EMP WHERE DEPTNO=20;

SELECT * FROM EMP_20;

-- EMP_20 뷰에서 담당직무별 최고급여를 받는 사원을 출력해주세요
SELECT JOB, COUNT(*), MAX(SAL) FROM EMP_20
GROUP BY JOB;

-- 복합뷰
-- 사원번호, 사원명, 입사일, 급여, 커미션, 부서번호, 부서명, 위치 컬럼을 가진
-- EMP_DEPT 뷰를 생성해주세요(단, 현재시점 커미션은 기본값 100으로 설정)
CREATE VIEW EMP_DEPT_01
AS
SELECT EMPNO, ENAME, HIREDATE, SAL, NVL(COMM,100) COMM
                , E.DEPTNO, DNAME, LOC
FROM EMP E, DEPT D
WHERE E.DEPTNO = D.DEPTNO;

SELECT * FROM USER_VIEWS;
SELECT * FROM EMP_DEPT_01;

-- EMP_DEPT_01 테이블(뷰)에서 부서명별 최고급여, 최저급여, 사원수를 출력해주세요
SELECT DNAME, MAX(SAL), MIN(SAL), COUNT(*) 
FROM EMP_DEPT_01
GROUP BY DNAME;

-- 뷰 삭제 : DROP VIEW [VIEW이름]
SELECT * FROM USER_VIEWS;
DROP VIEW EMP_SALES2;

/*************************
    ROWNUM : 행번호
*************************/
SELECT ROWNUM RNO, EMPNO, ENAME, DEPTNO FROM EMP;

-- 인라인뷰(ORDER BY가 적용된 쿼리)와 함께 ROWNUM  사용
SELECT ROWNUM RNO, EMPNO, ENAME, DEPTNO, HIREDATE 
FROM EMP
ORDER BY DEPTNO DESC;

-- 1. ORDER BY를 적용한 쿼리를 인라인뷰로 생성
-- 2. 메인쿼리에서 ROWNUM을 적용한다.
SELECT ROWNUM RNO, EMPNO, ENAME, DEPTNO, 
                TO_CHAR(HIREDATE,'YYYY-MM-DD') HIREDATE
FROM (SELECT EMPNO, ENAME, DEPTNO, HIREDATE
            FROM EMP ORDER BY DEPTNO DESC);
            
-- 사원중에 급여를 가장 많이 받는 사원 5명을 순서대로 출력해주세요.
-- 조건절(WHERE) 에서 ROWNUM으로 체크
SELECT ROWNUM RNO,EMPNO, ENAME,MGR, SAL, DEPTNO  
FROM (SELECT * FROM EMP ORDER BY SAL DESC)
WHERE ROWNUM <= 5;

-- RNO로 조건 체크를 하는 경우
SELECT * 
FROM (SELECT ROWNUM RNO,EMPNO, ENAME,MGR, SAL, DEPTNO  
                FROM (SELECT * FROM EMP ORDER BY SAL DESC))
WHERE RNO <= 5;

-- 1페이지 : 1~5, 2페이지 : 6~10, 3페이지 : 11~15
SELECT * 
FROM (SELECT ROWNUM RNO,EMPNO, ENAME,MGR, SAL, DEPTNO  
                FROM (SELECT * FROM EMP ORDER BY SAL DESC))
WHERE RNO BETWEEN 11 AND 15;


-- 입사일이 가장 빠른 사원 3명을 출력해주세요.
SELECT ROWNUM RNO, EMPNO, ENAME, HIREDATE, DEPTNO
FROM (SELECT EMPNO, ENAME, HIREDATE, DEPTNO
                FROM EMP
                ORDER BY HIREDATE DESC)
WHERE ROWNUM <= 3 ;

-- 입사일자가 빠른 5~ 10번째 까지의 사원을 출력해주세요.
SELECT * 
FROM    (SELECT ROWNUM RNO, EMPNO, ENAME, HIREDATE, DEPTNO
                FROM (SELECT EMPNO, ENAME, HIREDATE, DEPTNO
                        FROM EMP
                        ORDER BY HIREDATE DESC))
WHERE RNO BETWEEN 5 AND 10 ;


/****************************
    시퀀스(SEQUENCE) 
    - 자동번호 생성기
    - 기본키 컬럼에 사용
    - 형식) CREATE SEQUENCE [시퀀스명]
                    START WITH [시작번호] 
                    INCREMENT BY [증가값]
                    {CYCLE / NO CYCLE}
                    {MAXVALUE [최종 증가값]}
                    {MINVALUE [최소 증가값]}
                ;
****************************/
-- 데이터딕셔너리 테이블 확인 : USER_SEQUENCES
SELECT * FROM USER_SEQUENCES;

CREATE SEQUENCE  TEST_SEQUENCE
    START WITH 1
    INCREMENT BY 1;
    
SELECT TEST_SEQUENCE.NEXTVAL FROM DUAL;    --1씩 증가된 값이 자동 생성됨
SELECT TEST_SEQUENCE.CURRVAL FROM DUAL;

-- 게시판 테이블 : TEST_BOARD
CREATE TABLE TEST_BOARD(
    BID VARCHAR2(30) PRIMARY KEY, 
    BTITLE     VARCHAR2(100) NOT NULL,
    BCONTENT VARCHAR2(500),
    BDATE  DATE
);
SELECT * FROM USER_TABLES WHERE TABLE_NAME='TEST_BOARD';
DESC TEST_BOARD;
SELECT * FROM TEST_BOARD;

-- TEST_BOARD에서 사용할 시퀀스 생성 : SEQU_테이블명
CREATE SEQUENCE SEQU_TEST_BOARD
    START WITH 1
    INCREMENT BY 1;
SELECT * FROM USER_SEQUENCES;    

-- TEST_BOARD 데이터 추가
INSERT INTO TEST_BOARD 
    VALUES('b_' ||SEQU_TEST_BOARD.NEXTVAL ,'게시글 제목','게시글 내용',SYSDATE);  -- b_1

SELECT * FROM TEST_BOARD;
COMMIT;

--
SELECT * FROM SCORE;
desc score;

SELECT * FROM USER_CONSTRAINTS WHERE TABLE_NAME='SCORE';
SELECT * FROM USER_CONS_COLUMNS WHERE TABLE_NAME='SCORE';

-- 최근 등록된 학생순으로 rownum을 이용하여 출력
select rownum rno, sno, sname, kor,eng,math,to_char(sdate,'yy-mm-dd') sdate
from (select sno, sname, kor,eng,math,sdate
                from score  order by sdate desc);



select * from emp;

select count(*) from score where sno = '12344';










 /*********************************
        자바프로그램 연동 테이블
    ********************************/

/*****************************
    도서관리 시스템 테이블 : BOOK
*****************************/
-- 테이블 생성
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

-- 최근 등록된 도서순서로, 행번호(ROWNUM)을 이용하여 출력해주세요.
-- ORDER BY --> 인라인뷰 > ROWNUM 컬럼을 추가하여 출력
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
    성적관리 시스템 테이블 : SCORE
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
    올리브영 회원테이블 : olive_member
***************************************/
-- 회원id(pk), 회원명(not null_), 폰번호, 등록일자, 구분
DROP TABLE OLIVE_MEMBER;
CREATE TABLE OLIVE_MEMBER(
    ID    VARCHAR2(30)  CONSTRAINT  PK_OLIVE_MEMBER_ID  PRIMARY KEY,
    NAME   VARCHAR2(30) CONSTRAINT NN_OLIVE_MEMBER_NAME  NOT NULL,
    HP      VARCHAR2(30),
    ODATE  DATE,
    STATUS   NUMBER(1)      -- 1:관리자/ 2:고객
);

-- 데이터딕셔너리 테이블에서 확인
SELECT * FROM USER_TABLES WHERE TABLE_NAME='OLIVE_MEMBER';
DESC OLIVE_MEMBER;

select * from olive_member;

select status, name, count(*) result from olive_member 
where id='admin'
group by status, name;

/***************************************
    올리브영 제품테이블 : olive_product
***************************************/
-- pid(시퀀스,기본키), pname, price, pdate
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

--최근 등록한 제품부터 행번호를 출력 *** 기본키는 무조건 가져온다!!!!!!!!!!
select rownum rno, pid,pname, price, to_char(pdate,'yy/mm/dd') pdate
from (select pid, pname, price, pdate from olive_product
            order by pdate desc);
            
select * from olive_member;            

/***************************************
    올리브영 주문테이블 : olive_order
***************************************/
-- 주문테이블에는 반드시 하나이상의 제품이 추가되어야 한다.
-- 주문테이블에는 반드시 한 명의 고객이 주문을 해야 한다.
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

--시퀀스 생성
CREATE SEQUENCE SEQU_OLIVE_ORDER
    START WITH 1
    INCREMENT BY 1;

SELECT * FROM OLIVE_ORDER;

-- 어떤회원이 어떤제품을 몇개 주문했는지 궁금???
SELECT NAME, PNAME, AMT
FROM OLIVE_MEMBER M, OLIVE_PRODUCT P, OLIVE_ORDER O
WHERE M.ID = O.ID  AND P.PID = O.PID;


-- 데이터 딕셔너리 테이블 확인 : USER_TABLES
SELECT * FROM USER_TABLES;
DESC TEST_BOARD;
SELECT * FROM TEST_BOARD;

/**
    테이블명 : WEB_BOARD
    컬럼명 : BID(PK),BTITLE,BCONTENT,BHITS,BDATE
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

--시퀀스 생성 : WEQU_WEB_BOARD
CREATE SEQUENCE SEQU_WEB_BOARD
    START WITH 1
    INCREMENT BY 1;
SELECT * FROM USER_SEQUENCES;    

SELECT * FROM WEB_BOARD;

--전체리스트 출력 : 등록일자 기준으로 최신게시글이 가장 위에 오도록 정렬,행번호가 출력되도록 함
--order by 와 rownum을 동시에 사용할 수 없다. order by > rownum
select rownum rno, bid, btitle, bhits, to_char(bdate,'yy-mm-dd')bdate
from(select bid,btitle,bhits,bdate
    from web_board
    order by bdate desc);

select bid, btitle, bcontent, bhits, bdate
from web_board
where bid='b_1';

/******************************
    MYCGV 프로젝트 연동 테이블
*******************************/

/**
    테이블명 : CGV_MEMBER
    설      명 : 회원테이블 - 회원가입, 로그인, 관리자(회원리스트) 
    컬 럼  명 : ID, PASS, NAME.. 
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
    HP           VARCHAR2(10)  NOT NULL,    --통신사
    PNUMBER  VARCHAR2(20) NOT NULL,  --폰번호
    HOBBYLIST VARCHAR2(50) NOT NULL,  --취미
    INTRO        VARCHAR2(200),
    MDATE   DATE
);

SELECT * FROM USER_TABLES WHERE TABLE_NAME='CGV_MEMBER';
select * from cgv_member;
desc cgv_member;
drop table cgv_member;

/**
    테이블명 : CGV_BOARD
    설      명 : 게시판테이블 - 게시판
    컬 럼  명 : BID(PK), BTITLE, BCONTENT,BFILE, BSFILE, BHITS,BDATE
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
    테이블명 : CGV_NOTICE
    설      명 : 공지사항테이블 - 공지사항관리, 공지사항
    컬 럼  명 : NID(PK), NTITLE, NCONTENT,NFILE, NSFILE, NHITS,NDATE
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

--CGV_NOTICE 테이블에서 사용할 시퀀스(자동번호 생성기)
CREATE SEQUENCE SEQU_CGV_NOTICE
    START WITH 1
    INCREMENT BY 1;    
SELECT * FROM USER_SEQUENCES;

--전체 리스트 : 게시판
select rownum rno, nid, ntitle, nhits, to_char(ndate,'yyyy-mm-dd')ndate
from(select nid, ntitle, nhits, ndate from cgv_notice
    order by ndate desc);
    
--전체 리스트 : 게시판(페이징처리)    
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

-- MID에 들어가는 시퀀스 생성
CREATE SEQUENCE SEQU_CGV_MOVIE
    START WITH 1
    INCREMENT BY 1;
    
-- CGV_MOVIE_FILE 테이블을 생성하여 이미지 파일 별도 저장
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

--FID에서 사용하는 시퀀스 생성
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
--on delete cascade 설정으로 cgv_movie_file 테이블의 값도 삭제

commit;

--영화 전체 리스트
select rno, mid,mcategory, mname,mdate
from (select rownum rno, mid,mcategory, mname,mdate
           from (select mid, mcategory, mname,mdate from cgv_movie
  	     order by mdate desc))
where rno between 1 and 5;

--영화 상세 정보
select cm.mid, mcategory, mname, mdesc, mdate, mfile1, msfile1, mfile2, msfile2
    from cgv_movie cm, cgv_movie_file cmf
    where cm.mid = cmf.mid and cm.mid='m_8';

desc cgv_member;

select * from cgv_member;

--컬럼명 변경
alter table cgv_member
rename column zoncode to zonecode;

select count(*) loginresult, name, id
from cgv_member where id='test' and pass='1234'
group by name, id;

select * from cgv_member;

/******************************
    Mangoplate 프로젝트 연동 테이블
*******************************/

/**
    테이블명 : mg_member
    설   명 : 회원테이블 - 회원가입, 로그인, 관리자(회원리스트) 
    컬 럼 명 : id , pass, name, hp, pnumber, email, addr1, addr2, mdate
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
    테이블명 : mg_notice
    설   명 : 공지사항 테이블
**/
create table mg_notice(
ntitle varchar2(30) not null,
ndate date not null,
ncontent varchar2(500) not null,
nfile varchar2(200) not null,
nsfile varchar2(200) not null
);

/**
    테이블명 : mg_store
    설   명 : 식당정보
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
    테이블명 : mg_eatdeal
    설   명 : EATDEAL
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
    테이블명 : mg_board_story
    설   명 : 망고스토리
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