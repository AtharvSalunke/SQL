# What is ACID 
# ACID is used for data reliability and consistency
# transaction -  a unit of work ie a set of sql operations
/*
A = Atomicity
    A transaction should either execute fully or should not at all.
C = Consistency
	Even after transaction the database should remain in consistent state 
I = Isolation
   if 2 transactions are running then they should not interfere each other.
   multiple transactions running at same time should not affect each other
D - Durability
	Even after the transactions are commited the changes are permanent in the database
    even though the system crashes or fails the data should be permanently saved
*/

