prompt RESET IDENTITY COLUMNS

prompt - table hr_departments
alter table hr_departments modify department_id
  generated by default on null as identity (start with limit value increment by 10 maxvalue 9990 nocache nocycle)

prompt - table hr_employees
alter table hr_employees modify employee_id
  generated by default on null as identity (start with limit value increment by 1 nocache nocycle);

prompt - table hr_locations
alter table hr_locations modify location_id
  generated by default on null as identity (start with limit value increment by 100 maxvalue 9900 nocache nocycle);

prompt - table hr_regions
alter table hr_regions modify region_id
  generated by default on null as identity (start with limit value);