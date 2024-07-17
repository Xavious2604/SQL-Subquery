# SQL-Subquery
In SQL a Subquery can be simply defined as a query within another query. In other words we can say that a Subquery is a query that is embedded in WHERE clause of another SQL query.

You can place the Subquery in a number of SQL clauses: WHERE clause, HAVING clause, FROM clause. Subqueries can be used with SELECT, UPDATE, INSERT, DELETE statements along with expression operator. It could be equality operator or comparison operator such as =, >, =, <= and Like operator.

A subquery is a query within another query. The outer query is called as main query and inner query is called as subquery.

The subquery generally executes first when the subquery doesn’t have any co-relation with the main query, when there is a co-relation the parser takes the decision on the fly on which query to execute on precedence and uses the output of the subquery accordingly.

Subquery must be enclosed in parentheses.

Subqueries are on the right side of the comparison operator.

ORDER BY command cannot be used in a Subquery. GROUPBY command can be used to perform same function as ORDER BY command.

Use single-row operators with singlerow Subqueries. Use multiple-row operators with multiple-row Subqueries.
