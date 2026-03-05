select employees.startdate, employees.enddate, employees.*
from employees
where employees.startdate <= '2009-02-11'
and (employees.enddate > '2009-02-11'
    OR
    employees.enddate is NULL)