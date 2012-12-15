select manages.eno as "manager_no", countries.cname as "country"
from  manages, countries
where manages.dno = countries.dno;
