-- 1. List all unique towns where haunted houses are located
SELECT DISTINCT town FROM Houses;

-- 2. Ghosts older than 50 at death, sorted oldest to youngest (ORDER BY)
SELECT first_name, last_name, age FROM Ghosts 
WHERE age > 50 
ORDER BY age DESC;

-- 3. Find houses located specifically in the 'USA' or 'UK' (IN)
SELECT * FROM Houses 
WHERE country IN ('USA', 'UK');

-- 4. Search for ghosts whose cause of death mentions 'accident' (LIKE)
SELECT first_name, last_name, reason_of_death FROM Ghosts 
WHERE reason_of_death LIKE '%accident%';

-- 5. List ghosts who died during the 19th century (BETWEEN)
SELECT first_name, last_name, date_of_death FROM Ghosts 
WHERE date_of_death BETWEEN '1800-01-01' AND '1899-12-31';

-- 6. Count the number of ghosts per ghost type (GROUP BY)
SELECT ghost_type_id, COUNT(*) AS ghost_count 
FROM Ghosts 
GROUP BY ghost_type_id;

-- 7. Calculate average hostility per ghost type
SELECT ghost_type_id, AVG(hostility) AS average_hostility 
FROM Ghost_types 
GROUP BY ghost_type_id;

-- 8. Identify houses haunted by more than one ghost (HAVING)
SELECT haunted_house_address, COUNT(*) AS population 
FROM Ghosts 
GROUP BY haunted_house_address 
HAVING COUNT(*) > 1;

-- 9. Total victims per house, sorted by intensity (GROUP BY + ORDER BY)
SELECT death_house_address, COUNT(*) AS victim_count 
FROM Ghost_victims 
GROUP BY death_house_address 
ORDER BY victim_count DESC;

-- 10. Find the oldest ghost's age for each country
SELECT h.country, MAX(g.age) AS oldest_spirit 
FROM Ghosts g 
JOIN Houses h ON g.haunted_house_address = h.address 
GROUP BY h.country;

-- 11. List ghosts with their descriptive type name (INNER JOIN)
SELECT g.first_name, g.last_name, t.name AS type 
FROM Ghosts g 
JOIN Ghost_types t ON g.ghost_type_id = t.ghost_type_id;

-- 12. Show victims and the specific ghost responsible (INNER JOIN)
SELECT v.first_name AS victim, g.first_name AS killer 
FROM Ghost_victims v 
JOIN Ghosts g ON v.killer_ghost_id = g.ghost_id;

-- 13. List all houses and any ghosts residing there, including empty houses (LEFT JOIN)
SELECT h.address, g.first_name AS ghost_name 
FROM Houses h 
LEFT JOIN Ghosts g ON h.address = g.haunted_house_address;

-- 14. Triple Join: Ghost name, Ghost type, and House Country
SELECT g.first_name, t.name, h.country 
FROM Ghosts g 
JOIN Ghost_types t ON g.ghost_type_id = t.ghost_type_id 
JOIN Houses h ON g.haunted_house_address = h.address;

-- 15. Triple Join: Victim, their killer, and the killer's hostility level
SELECT v.first_name AS victim, g.first_name AS killer, t.hostility 
FROM Ghost_victims v 
JOIN Ghosts g ON v.killer_ghost_id = g.ghost_id 
JOIN Ghost_types t ON g.ghost_type_id = t.ghost_type_id;

-- 16. Select ghosts haunting houses in countries starting with 'U' (Nested IN)
SELECT first_name, last_name FROM Ghosts 
WHERE haunted_house_address IN (SELECT address FROM Houses WHERE country LIKE 'U%');

-- 17. Find houses that have NEVER had a victim incident (NOT EXISTS)
SELECT address FROM Houses h 
WHERE NOT EXISTS (SELECT 1 FROM Ghost_victims v WHERE v.death_house_address = h.address);

-- 18. List ghosts whose age is above the global average age (Nested AVG)
SELECT first_name, age FROM Ghosts 
WHERE age > (SELECT AVG(age) FROM Ghosts);

-- 19. Find ghost types that have at least one ghost older than 80 (EXISTS)
SELECT name FROM Ghost_types t 
WHERE EXISTS (SELECT 1 FROM Ghosts g WHERE g.ghost_type_id = t.ghost_type_id AND g.age > 80);

-- 20. Find ghosts more hostile than ANY ghost of type 'Spirit' (ANY)
SELECT g.first_name, g.last_name FROM Ghosts g
JOIN Ghost_types t ON g.ghost_type_id = t.ghost_type_id
WHERE t.hostility > ANY (SELECT hostility FROM Ghost_types WHERE name = 'Spirit');