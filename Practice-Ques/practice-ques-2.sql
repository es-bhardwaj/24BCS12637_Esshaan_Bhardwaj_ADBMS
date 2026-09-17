CREATE TABLE site_sessions (
session_id INT
);

CREATE TABLE product_interest (
session_id INT
);

CREATE TABLE completed_orders (
session_id INT
);

INSERT INTO site_sessions (session_id) VALUES
(101), (102), (103), (104), (105), (106), (107), (108), (109), (110);

INSERT INTO product_interest (session_id) VALUES
(101), (102), (103), (104), (105), (105), (107);

INSERT INTO completed_orders (session_id) VALUES
(101), (103), (105), (105);

SELECT
ROUND(COUNT(DISTINCT pi.session_id) * 100.0 / NULLIF(COUNT(DISTINCT s.session_id), 0), 2) AS interest_conversion,
ROUND(COUNT(DISTINCT co.session_id) * 100.0 / NULLIF(COUNT(DISTINCT pi.session_id), 0), 2) AS order_conversion,
ROUND(COUNT(DISTINCT co.session_id) * 100.0 / NULLIF(COUNT(DISTINCT s.session_id), 0), 2) AS overall_conversion
FROM site_sessions s
LEFT JOIN product_interest pi 
ON s.session_id = pi.session_id
LEFT JOIN completed_orders co 
ON s.session_id = co.session_id;