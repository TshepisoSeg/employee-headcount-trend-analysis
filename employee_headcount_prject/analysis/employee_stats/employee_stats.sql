select MONTH(employees.startdate), year(employees.startdate), count(1)
from employees
group by MONTH(employees.startdate), year(employees.startdate)
order by 2,1