SELECT 
id, 
ST_X(ST_Centroid(bounds)) AS longitude,
ST_Y(ST_Centroid(bounds)) AS latitude
FROM japan_segments;


SELECT 
id
FROM japan_segments 
WHERE
ST_Y(ST_Centroid(bounds)) < 30.74;


SELECT 
(SELECT COUNT(B.customer_organization_id) FROM enterprise_sales_enterprise_customers B
WHERE B.sales_organization_id = A.id)
AS subordinates_count,
A.address_id AS id
FROM organizations A;
