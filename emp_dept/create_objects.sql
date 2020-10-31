prompt CREATE OBJECTS

@tables/ed_dept.sql
@tables/ed_emp.sql

prompt - 2 referential constraints (disabled)
alter table ed_emp modify deptno references ed_dept disable;
alter table ed_emp modify mgr    references ed_emp  disable;

@views/ed_emp_dept_v.sql

@../_global_scripts/create_missing_foreign_key_indexes.sql "{ table_filter: 'ED_%', dry_run: false }"
@../_global_scripts/unify_index_names.sql                  "{ table_filter: 'ED_%', dry_run: false }"
@../_global_scripts/unify_constraint_names.sql             "{ table_filter: 'ED_%', dry_run: false }"
