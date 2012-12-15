select e1.ename as "manager", m.dno as "deptno"
from emp e1, manages m
where e1.eno = m.eno

