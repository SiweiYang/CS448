select manages.eno as "manager_no", dept.dname as "dept_name"
from  manages, dept
where manages.dno = dept.dno;

