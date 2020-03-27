prompt CREATE OBJECTS

@tables/co_customers.sql
@tables/co_order_items.sql
@tables/co_orders.sql
@tables/co_products.sql
@tables/co_stores.sql

prompt - indexes
-- foreign key indexes are created automatically with a script
create index co_customers_name_ix     on co_customers (full_name);

prompt - ref constraints
alter table co_order_items modify product_id references co_products  disable;
alter table co_orders modify customer_id     references co_customers disable;
alter table co_orders modify store_id        references co_stores    disable;

@views/co_customer_order_products.sql
@views/co_product_orders.sql
@views/co_product_reviews.sql
@views/co_store_orders_status.sql
@views/co_store_orders.sql

@../_global_scripts/create_missing_fk_indexes.sql "CO"
@../_global_scripts/unify_index_names.sql "CO"
@../_global_scripts/unify_constraint_names.sql "CO"
