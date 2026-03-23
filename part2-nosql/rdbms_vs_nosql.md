## Database Recommendation

For a patient management system, MySQL is suitable because it ensures ACID properties, data consistency, and structured relationships between patients, doctors, and appointments.

MongoDB is useful when data is unstructured or schema changes frequently. It follows BASE properties and is horizontally scalable.

If a fraud detection module is added, MongoDB can be useful for handling large volumes of semi-structured data and fast analytics. However, for core patient records, MySQL is better due to strong consistency and reliability.

Therefore, a hybrid approach using MySQL for transactional data and MongoDB for analytics and fraud detection would be ideal.
