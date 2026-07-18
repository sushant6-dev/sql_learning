/*
=================================================
UNION - REAL WORLD USE CASES
=================================================

1. Combine similar entities stored in different tables
   (Customers, Employees, Salespersons, Vendors).

2. Add a source column to identify the origin
   of each record.

3. Merge historical data stored in multiple tables
   (e.g., Sales_2024, Sales_2025, Sales_2026).

Example:
Combine active and archived orders.
*/

SELECT
    'Orders' AS SourceTable,
    OrderID,
    ProductID,
    CustomerID,
    SalesPersonID,
    OrderDate,
    ShipDate,
    OrderStatus,
    ShipAddress,
    BillAddress,
    Quantity,
    Sales,
    CreationTime
FROM Sales.Orders

UNION

SELECT
    'OrdersArchive' AS SourceTable,
    OrderID,
    ProductID,
    CustomerID,
    SalesPersonID,
    OrderDate,
    ShipDate,
    OrderStatus,
    ShipAddress,
    BillAddress,
    Quantity,
    Sales,
    CreationTime
FROM Sales.OrdersArchive

ORDER BY OrderID;


/*
=================================================
EXCEPT - REAL WORLD USE CASES
=================================================

1. Data Validation
   Identify records present in the source system
   but missing from the data warehouse.

2. ETL / ELT Pipelines
   Detect new records that need to be loaded.

3. Database Migration
   Compare source and target databases to identify
   records that have not been migrated.

4. Data Reconciliation
   Verify consistency between two datasets after
   synchronization.
*/
