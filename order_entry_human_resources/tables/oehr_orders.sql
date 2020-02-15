prompt - table oehr_orders

create table oehr_orders (
  order_id     integer                           generated by default on null as identity (nocycle),
  order_date   timestamp(6) with local time zone not null,
  order_mode   varchar2(8 char)                  ,
  customer_id  integer                           not null,
  order_status number(2)                         ,
  order_total  number(8,2)                       ,
  sales_rep_id integer                           ,
  promotion_id integer                           ,
  --
  primary key (order_id)                         ,
  check (order_mode in ('direct','online'))      ,
  check (order_total >= 0)
);

comment on table oehr_orders is
  'Contains orders entered by a salesperson as well as over the web.';

comment on column oehr_orders.order_id is
  'Order ID: Primary key column.';

comment on column oehr_orders.order_date is
  'Order date: timestamp with local time zone column, not null constraint.';

comment on column oehr_orders.order_mode is
  'Order mode: direct or online.';

comment on column oehr_orders.order_status is
  '0: not fully entered, 1: entered, 2: canceled - bad credit, 3: canceled - by customer, 4: shipped - whole order, 5: shipped - replacement items, 6: shipped - backlog on items, 7: shipped - special delivery, 8: shipped - billed, 9: shipped - payment plan, 10: shipped - paid';

comment on column oehr_orders.order_total is
  'The total amount of ordered goods. Must be greater then zero.';

comment on column oehr_orders.sales_rep_id is
  'References the sales person in oehr_employees.employee_id.';

comment on column oehr_orders.promotion_id is
  'Sales promotion id. Used in sh schema.';
