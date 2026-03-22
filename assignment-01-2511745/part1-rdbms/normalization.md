
## Anomaly Analysis

### Insert Anomaly
In the orders_flat.csv dataset, product information can only be added when an order exists. If a new product needs to be added but no order has been placed yet, it cannot be stored in the table.

### Update Anomaly
Customer information such as city appears multiple times across rows. If a customer changes city, every row must be updated or inconsistent data will appear.

### Delete Anomaly
If the only order containing a specific product is deleted, all information about that product is lost.

## Normalization Justification

Keeping all information in one table appears simple but creates redundancy and inconsistency problems. Customer data, product information, and order details repeat across rows, which increases storage and causes update anomalies. If a customer changes their city, every record containing that customer must be updated. Missing one row results in inconsistent data.

Insert anomalies also occur because new products cannot be added until an order exists. Delete anomalies happen when deleting an order removes all information about a product.

By normalizing the dataset into separate tables such as customers, products, orders, and order_items, each entity is stored once. This reduces redundancy and improves data integrity. Although queries require joins, the database becomes easier to maintain and scale.
