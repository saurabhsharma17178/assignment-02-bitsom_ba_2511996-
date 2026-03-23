## Storage Systems

For this hospital data system, different storage systems are selected based on the type of data and workload requirements. For transactional hospital data such as patient records, admissions, billing, and treatment history, a relational OLTP database like PostgreSQL or MySQL is used. This is because transactional systems require strong consistency, structured schema, and reliable updates.

For monthly reports, analytics, and historical analysis, a Data Warehouse is used. The data warehouse stores cleaned and structured historical data optimized for analytical queries such as department costs, hospital occupancy trends, and management reports.

For real-time ICU monitoring data, a streaming system such as Kafka is used to collect continuous data from ICU devices. This data is stored in a Data Lake because streaming data can be large, semi-structured, and generated continuously.

For AI-powered patient history search using natural language, a Vector Database is used. Patient notes, reports, and medical history are converted into embeddings and stored in the vector database so doctors can search using plain English queries.


## OLTP vs OLAP Boundary

In this architecture, the OLTP system includes the hospital operational database where daily transactions are performed such as patient admission, treatment updates, billing, and discharge records. This system handles inserts, updates, and transactional operations.

The OLAP system begins when data is moved from the OLTP database to the Data Warehouse through ETL processes. The data warehouse is used for reporting, analytics, dashboards, and machine learning model training such as readmission prediction.

Therefore, the boundary between OLTP and OLAP lies at the ETL layer. Before ETL the system is transactional, and after ETL the system is analytical.


## Trade-offs

One major trade-off in this architecture is increased system complexity because multiple systems are used such as OLTP databases, data lake, data warehouse, streaming systems, and vector databases. Managing multiple systems increases infrastructure cost and maintenance effort.

However, this trade-off is necessary because a single database cannot efficiently handle transactions, analytics, real-time streaming, and AI search together. To mitigate this complexity, cloud-managed services and automated ETL pipelines can be used to simplify system management and improve scalability and reliability.
