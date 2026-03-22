
## Database Recommendation

For healthcare startup which is developing system to manage patients relational database system i would reconmmend MySQL. because in a relational database system MySQL supports the ACID properties which are Atomicity Consistency, Isolation and Durability. This is very important in a healthcare application as a small amount of data loss can lead to serious consequences.

MongoDB is a NoSQL database system. MongoDB supports  different set of properties which are BASE properties in which availability is the first priority. MongoDB is a flexible database system which is best suited to handle unstructured data. MongoDB is recommended in applications in which a high level of data integrity is not a priority.

In a healthcare application in which a fraud detection module is to be implemented a hybrid approach is required. In a fraud detection module, a high level of data is to be processed in real-time. MongoDB is recommended to handle semi-structured data.

MySQL can be used as a primary database for handling patient information whereas MongoDB can be used for a fraud detection module.