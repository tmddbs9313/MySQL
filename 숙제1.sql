-- 모든 행 모든 컬럼 조회
-- EMPLOYEE테이블에서 모든 정보 조회

use eympolyee;

select * from employee;

-- 원하는 컬럼 조회
-- EMPLOYEE 테이블의 사번, 이름 조회

select EMP_ID,
	EMP_NAME
from EMPLOYEE;


-- 원하는 행 조회
-- EMPLOYEE 테이블에서 부서코드가 D9인 사원 조회
select * from EMPLOYEE
where
	DEPT_CODE = 'D9';


-- 원하는 행과 컬럼 조회
-- EMPLOYEE 테이블에서 급여가 300만원 이상인 사원의
-- 사번, 이름, 부서코드, 급여를 조회하세요

select emp_id,emp_name, dept_code,salary
from employee
where salary >3000000;

-- 부서코드가 D6이고 급여를 200만원보다 많이 받는 직원의
-- 이름, 부서코드, 급여 조회

select emp_name, dept_code,salary
from employee
where dept_code = 'D6' && salary >2000000;
	

-- NULL값 조회
-- 보너스를 지급받지 않는 사원의
-- 사번, 이름, 급여, 보너스를 조회하세요
select emp_id, emp_name, salary, BONUS
from employee
where BONUS is null;

-- EMPLOYEE테이블에서 급여를 350만원 이상
-- 550만원 이하를 받는
-- 직원의 사번, 이름, 급여, 부서코드, 직급코드를 조회하세요

select emp_id, emp_name, salary, DEPT_CODE, JOB_CODE
from employee
where salary between 3500000 and 5000000;

-- EMPLOYEE테이블에서 성이 김씨인 직원의
-- 사번, 이름, 입사일 조회
select emp_id, emp_name, HIRE_DATE
from employee
where  emp_name  like '%김%';

-- EMPLOYEE 테이블에서 '하'가 이름에 포함된
-- 직원의 이름, 주민번호, 부서코드 조회
select emp_name, EMP_NO,DEPT_CODE
from employee
where emp_name like '%하%';

-- EMPLOYEE테이블에서 전화번호 국번이 9로 시작하는
-- 직원의 사번, 이름, 전화번호를 조회하세요
-- 와일드 카드 사용 : _(글자 한자리), %(0개 이상의 글자)

SELECT emp_id, emp_name, PHONE
FROM EMPLOYEE
WHERE phone LIKE '9%';  -- 몰라


-- EMPLOYEE테이블에서 전화번호 국번이 4자리 이면서
-- 9로 시작하는 직원의 사번, 이름, 전화번호를 조회하세요
select emp_id, emp_name, phone
from employee
where phone like '9___';


-- 부서코드가 'D6' 이거나 'D8'인 직원의
-- 이름, 부서, 급여를 조회하세요
-- IN 연산자 : 비교하려는 값 목록에 일치하는 값이 있는지 확인
SELECT emp_name , dept_code, salary
FROM EMPLOYEE
WHERE dept_code IN ('D6', 'D8');


-- 이씨성이 아닌 직원의 사번, 이름, 이메일주소 조회

select emp_id, emp_name, email
from employee
where emp_name not like '%이%';

-- J2직급의 급여 200만원 이상 받는 직원이거나
-- J7 직급인 직원의 이름, 급여, 직급코드 조회

select emp_name, salary, JOB_CODE
from employee
where (salary > 2000000 and JOB_CODE = 'j2') or job_code ='j7';

-- J7 직급이거나 J2 직급인 직원들 중
-- 급여가 200만원 이상인 직원의
-- 이름, 급여, 직급코드를 조회하세요

select emp_name, salary,JOB_CODE
from empolyee
where (job_code = 'J7' or job_code = 'J2') AND salary >= 2000000;