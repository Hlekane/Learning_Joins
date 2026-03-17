-- Learning JOINs
-- =====================================
-- What are joins, type of functions used to extract and combine data from different tables.
-- Joins are used to complete the bigger picture; Data enrichment - get extra data from other tables; 
-- and as a Lookup, to filter data or to check for existance of your data from other tables.
-- This query is for when you do not want to combine any of the table  but you want to return data from them.

SELECT TOP 2*
	FROM pnp_sales_2025_01;

SELECT TOP 2*
	FROM pnp_sales_2025_02;

-- The first type of join is an Inner Join
-- It +returns only the matching rows from both tables, the data that matches,
-- TIP: When working with joins, always mention the type, 
-- if you do not it will out put the default which is an INNER JOIN.

SELECT *
	FROM pnp_sales_2025_01
	INNER JOIN pnp_sales_2025_02
	ON pnp_sales_2025_01.ProductID = pnp_sales_2025_02.ProductID;