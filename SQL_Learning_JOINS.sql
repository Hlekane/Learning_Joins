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
-- It +returns only the matching rows from both tables, the data that matches, it is not matching it will not be returned
-- TIP: When working with joins, always mention the type, 
-- if you do not it will out put the default which is an INNER JOIN.

SELECT *
	FROM pnp_sales_2025_01
	INNER JOIN pnp_sales_2025_02
	ON pnp_sales_2025_01.ProductID = pnp_sales_2025_02.ProductID;

SELECT *
	FROM pnp_sales_2025_01
	JOIN pnp_sales_2025_02
	ON pnp_sales_2025_01.ProductID = pnp_sales_2025_02.ProductID; -- Remember the ON must compare columns not just tables.  
	-- ON T1.column = T2.column
	-- Handling Column ambiquity.
SELECT 
	j.ProductID, -- assigning the column a table name, helps handle the column ambiguity.
	j.ProductName, -- For neatness and avoid long names, you can assign your tables aliases
 -- The assigning of aliases happens on the FROM and JOIN
	j.StoreID,
	F.ProductID,
	F.ProductName
	FROM pnp_sales_2025_01 AS j
	JOIN pnp_sales_2025_02 AS F
	ON j.ProductID = F.ProductID; 

-- LEFT JOIN
-- Returns all rows from left and only matching form right (Everything from the left table, and only matching rows from the right table)
-- In this case, the left table if your primary source of your data, you want to return everything from that table
-- Table B is a secondary source, use it for returning only the additional data

--Syntax: SELECT *
--			:FROM A
--			LEFT JOIN B
--			ON A.Key = B.Key

-- The order of the tables on LEFT JOIN is important, on the FROM statement - You have to state the Left Table and on the JOINING statement (Left JOIN), 
-- you have to state the right table, in this way you ensure that you going to retrieve all the data from the primary table which is table A, the left table.
-- NOTE: If there is no match in the Right table, SQL will return NUL
SELECT 
	j.ProductID, 
	j.ProductName,
	j.StoreID,
	F.ProductID,
	F.ProductName
	FROM pnp_sales_2025_01 AS j
	LEFT JOIN pnp_sales_2025_02 AS F
	ON j.ProductID = F.ProductID; 