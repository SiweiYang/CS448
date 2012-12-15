select buildings.bname as "building", dept.dname as "dept_name"
from buildings, dept
where buildings.dno = dept.dno;
