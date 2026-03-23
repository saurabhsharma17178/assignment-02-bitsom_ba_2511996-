## Vector DB Use Case

A traditional keyword-based database search would not be sufficient for searching large legal contracts because keyword search only matches exact words and does not understand meaning. Legal documents often use different wording for the same concept, so keyword search may miss relevant clauses.

A vector database converts text into embeddings that capture semantic meaning. This allows the system to find similar meanings even if the words are different. For example, searching for "termination clause" could also find "contract cancellation terms".

In this system, contract paragraphs would be stored as embeddings in a vector database. When a lawyer asks a question, the query is converted into an embedding and compared to stored embeddings to find the most relevant sections.

Therefore, vector databases are very useful for semantic search and document retrieval systems.
