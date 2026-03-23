## Anomaly Analysis

### Insert Anomaly
In the flat table, we cannot insert a new product without creating an order. This causes insert anomaly.

### Update Anomaly
Customer and sales representative information is repeated in multiple rows. Updating information requires multiple updates, causing inconsistency risk.

### Delete Anomaly
Deleting an order may also delete customer, product, and sales representative information.

## Normalization Justification

Keeping everything in one table may seem simple, but it causes redundancy, inconsistency, and anomalies. For example, customer information is repeated for every order, which increases storage and update complexity. If a customer changes city, multiple rows must be updated. Similarly, deleting an order may remove important customer or product information.

Normalization organizes data into multiple related tables such as customers, products, orders, and order_items. This reduces redundancy and prevents anomalies. It also improves data integrity and makes updates easier. Therefore, normalization is necessary and not over-engineering.
