prompt - table co_orders

create table co_orders (
  order_id       integer           generated by default on null as identity,
  order_datetime timestamp         not null,
  customer_id    integer           not null,
  order_status   varchar2(10 char) not null,
  store_id       integer           not null,
  --
  primary key (order_id),
  check       (order_status in ('CANCELLED','COMPLETE','OPEN','PAID','REFUNDED','SHIPPED'))
);

comment on table co_orders is
  'Details of who made purchases where';

comment on column co_orders.order_id is
  'Auto-incrementing primary key';

comment on column co_orders.order_datetime is
  'When the order was placed';

comment on column co_orders.customer_id is
  'Who placed this order';

comment on column co_orders.order_status is
  'What state the order is in. Valid values are:
OPEN - the order is in progress
PAID - money has been received from the customer for this order
SHIPPED - the products have been dispatched to the customer
COMPLETE - the customer has received the order
CANCELLED - the customer has stopped the order
REFUNDED - there has been an issue with the order and the money has been returned to the customer';

comment on column co_orders.store_id is
  'Where this order was placed';