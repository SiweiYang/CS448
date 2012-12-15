select e.ename, m.dno
from emp e, manages m
where e.eno=m.eno and e.dno <> m.dno;
