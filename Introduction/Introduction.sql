# /*

```
                                INTRODUCTION TO SQL
```

================================================================================================

What is SQL?

SQL stands for Structured Query Language.

It is a standard language used to interact with relational databases. SQL allows users to:

1. Retrieve data from a database.
2. Insert new records.
3. Update existing records.
4. Delete records.
5. Create and manage database objects such as tables, views, and indexes.

---

Why use a Database?

Databases are used because:

1. Data is stored in a structured format using rows and columns.
2. Data is centralized, allowing multiple users and applications to access the same information.
3. User permissions and access controls can be applied to secure data.
4. Large amounts of data can be stored and managed efficiently.
5. Data retrieval is faster and more reliable than managing large datasets in spreadsheets.

================================================================================================

DBMS (Database Management System)

A DBMS is software used to create, manage, and maintain databases.

Examples:

* Microsoft SQL Server
* MySQL
* PostgreSQL
* Oracle Database

Types of Databases:

1. Relational Databases

   * Data is stored in tables.
   * Uses SQL.
   * Examples: SQL Server, MySQL, PostgreSQL, Oracle.

2. Key-Value Databases

   * Data is stored as key-value pairs.
   * Examples: Amazon DynamoDB, Redis.

3. Column-Oriented Databases

   * Data is stored by columns instead of rows.
   * Optimized for analytical workloads.
   * Examples: Amazon Redshift, Apache Cassandra.

4. Graph Databases

   * Data is stored as nodes and relationships.
   * Useful for social networks and recommendation systems.
   * Example: Neo4j.

5. Document Databases

   * Data is stored in flexible document formats such as JSON.
   * Examples: MongoDB, CouchDB.

================================================================================================

What is a Server?

A server is a computer or virtual machine that provides services to users or applications.

Characteristics:

1. Runs continuously to serve requests.
2. Hosts databases and applications.
3. Can be physical hardware or cloud-based infrastructure.
4. Receives requests from clients and returns the required data.

Database Request Flow:

User/Application
↓
Server
↓
Database
↓
Required Data
↓
User/Application

================================================================================================

What is an SQL Query?

An SQL query is a command written in SQL to communicate with a database.

Example Requirement:

"Fetch all customers who live in Germany."

SQL Query:

SELECT *
FROM Customers
WHERE Country = 'Germany';

Process:

1. The query is sent to the database server.
2. The database engine locates the required table.
3. The filter condition is applied.
4. Matching records are returned to the user.

================================================================================================
*/
