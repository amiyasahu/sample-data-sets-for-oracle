prompt - table oehr_customers

create table oehr_customers (
  customer_id     integer           generated by default on null as identity (nocache nocycle),
  cust_first_name varchar2(20 char) not null,
  cust_last_name  varchar2(20 char) not null,
  street_address  varchar2(40 char) ,
  postal_code     varchar2(10 char) ,
  city            varchar2(30 char) ,
  state_province  varchar2(10 char) ,
  country_id      char(2 char)      ,
  phone_number    varchar2(25 char) ,
  nls_language    varchar2(3 char)  ,
  nls_territory   varchar2(30 char) ,
  credit_limit    number(9,2)       ,
  cust_email      varchar2(30 char) ,
  account_mgr_id  integer           ,
  --
  primary key(customer_id)          ,
  check (credit_limit <= 5000)      ,
  check (customer_id > 0)
);

comment on table oehr_customers is
  'Contains customers data either entered by an employee or by the customer him/herself over the Web.';

comment on column oehr_customers.customer_id is
  'Customer ID.';

comment on column oehr_customers.cust_first_name is
  'Customer first name.';

comment on column oehr_customers.cust_last_name is
  'Customer last name.';

comment on column oehr_customers.street_address is
  'Customer street address.';

comment on column oehr_customers.postal_code is
  'Customer postal code.';

comment on column oehr_customers.city is
  'Customer city.';

comment on column oehr_customers.state_province is
  'Customer state or province.';

comment on column oehr_customers.country_id is
  'Customer country id.';

comment on column oehr_customers.phone_number is
  'Customer phone number.';

comment on column oehr_customers.credit_limit is
  'Customer credit limit.';

comment on column oehr_customers.account_mgr_id is
  'Customer account manager ID.';
