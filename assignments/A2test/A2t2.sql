select emp.ename as "employee", dept.dname as "dept_name"
from emp, dept
where emp.dno = dept.dno;
