
문제 1.
각 사원(employee)에 대해서 사번(employee_id), 이름(first_name),
부서명(department_name), 매니저(manager)의 이름(first_name)을 조회하세요.

select em2.employee_id,em2.first_name,de.department_name,em.first_name
from  employees em, employees em2, departments de
where  em.EMPLOYEE_ID = em2.manager_id
       AND em2.department_id = de.department_id
    order by de.department_id;
문제2.
지역(regions)에 속한 나라들을 지역이름(region_name), 나라이름(country_name)으로
출력하되 지역이름, 나라이름 순서대로 내림차순으로 정렬하세요.ss
//25개국
select  region_name,
	country_name
from countries cou , regions reg
where cou.region_id = reg.region_id
order by country_name ;

문제3.
각 부서(department)에 대해서 부서번호(department_id), 부서이름(department_name),
매니저(manager)의 이름(first_name), 위치(locations)한 도시(city), 나라(countries)의
이름(countries_name) 그리고 지역구분(regions)의 이름(resion_name)까지 전부 출력해
보세요.
//11개
select de.department_id,de.department_name,em.first_name,lo.city,co.COUNTRY_NAME,re.REGION_NAME
from  employees em , departments de, locations lo, countries co,regions re
where em.employee_id = de.manager_id 
    and de.LOCATION_ID = lo.location_id
    and lo.country_id = co.country_id
    and co.REGION_ID = re.REGION_ID;ND
      co.region_id = re.region_id;

문제4.
‘Public Accountant’의 직책(job_title)으로 과거에 근무한 적이 있는 모든 사원의 사번과
이름을 출력하세요. (현재 ‘Public Accountant’의 직책(job_title)으로 근무하는 사원은
고려하지 않습니다.) 이름은 first_name과 last_name을 합쳐 출력합니다.
//2명
select em.EMPLOYEE_ID,em.LAST_NAME, em.HIRE_DATE
from job_history hi, JOBS jo, employees em
where jo.job_id=hi.job_id AND job_title like '%Public Accountant%' AND 
    em.employee_ID=hi.employee_ID;

문제5.
직원들의 사번(employee_id), 이름(firt_name), 성(last_name)과 부서 이름을 조회하여
성(last_name)순서로 오름차순 정렬하세요
//106명
select em.employee_id,em.first_name,em.last_name
from employees em , departments de
where de.DEPARTMENT_ID= em.DEPARTMENT_ID

order by em.last_name;
문제6.
자신의 매니저보다 채용일(hire_date)이 빠른 사원의 사번(employee_id), 성(last_name)과
채용일(hire_date)을 조회하세요
select em.employee_id, em.last_name,em.hire_date--em2.FIRST_NAME, em2.lsat_name, em2.hire_date
from employees em, employees em2
where em.EMPLOYEE_ID= em2.MANAGER_ID and
   em2.hire_date> em.hire_date ; 
