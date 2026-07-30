-- 1.Employee and Manager Names: Display a list of employee names along with their manager's names. Use the 'employees' table provided.
SELECT e1.employee_name AS Employee, e2.employee_name AS Manager
FROM employees e1
LEFT JOIN employees e2
ON e1.manager_id = e2.employee_id;


-- 2.Every Possible Combination: Show every possible combination of 'customer_name' from the 'customers' table and 'product_name' from the 'products' table.
SELECT customers.customer_name, products.product_name FROM customers
CROSS JOIN products;