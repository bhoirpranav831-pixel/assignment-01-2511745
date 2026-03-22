## Storage Systems

In  case of the healthcare system different storage technologies are chosen depending on the four core goals. For managing the patient data or the historical treatment data a relational database is used such as MySQL. This is to ensure good ACID compliance which is necessary for the accuracy and reliability of the data.

To help doctors search history of patients in plain English a vector database is integrated with the system. because the system can store document embeddings of medical texts and allow the doctors to perform a semantic search on documents.

For generating monthly reports such as bed occupancy and departmental costs  data warehouse is used.  data warehouse is used to aggregate data from other systems and support complex queries. This improves system performance for reporting and decision support without impacting the real-time system.

For handling real-time vitals from  ICU  streaming database also known as a time series database is employed. The streaming database is a database system that can handle continuous stream of data i.e., heart rate, oxygen level, temperature, etc.


## OLTP vs OLAP Boundary

In this architecture OLTP system manages online transactions, patient registration, treatment, and ICU monitoring. These applications require fast, reliable, and consistent transactions which can be managed by a relational database and streaming system.

OLAP process starts when data is extracted from  transactional systems and inserted into the data warehouse. This distinction ensures that the operational system is not affected when the analytical queries like the monthly report are executed. vector database also works on a level closer to the analytical layer as it is used for advanced queries and semantic search.

OLTP system handles real time operations such as patient records and ICU data using a database like MySQL ensuring fast and reliable transactions. The OLAP system begins when this data is moved to a data warehouse for analysis, reporting and decision-making without affecting transactional performance.


## Trade-offs

One significant trade-off in this design is increased system complexity that arises from using multiple storage systems for different purposes such as transactional databases, data warehouses, and vector databases. Although the above strategy increases the efficiency and scalability of the system, it also complicates the integration, maintenance, and data consistency issues. However, the problem can be addressed through the implementation of the modular system architecture, which enables the loosely coupled system to be integrated through well-defined APIs or data pipelines. Additionally use of managed cloud services as well as application of ETL processes can help to reduce the maintenance issues. However appropriate system monitoring and logging tools should be implemented to ensure the system is reliable and efficient.
