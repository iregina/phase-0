SELECT * FROM states;
SELECT * FROM regions;
SELECT state_name, population FROM states;
SELECT state_name, population FROM states ORDER BY population DESC;
SELECT state_name FROM states WHERE region_id='7';
SELECT state_name, population_density FROM states WHERE population_density > 50;
SELECT state_name FROM states WHERE population BETWEEN 1000000 AND 1500000;
SELECT state_name, region_id FROM states ORDER BY region_id ASC;
SELECT * FROM regions WHERE region_name LIKE '%Central%';
SELECT region_name, state_name from regions JOIN states ON region_id ORDER BY region_id ASC;
![alt text](/closet.png "My Screenshot:")