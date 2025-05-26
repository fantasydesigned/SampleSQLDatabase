-- List characters with their culture and world
SELECT 
  c.first_name, c.last_name, c.role, 
  cu.culture_name, w.world_name
FROM characters c
JOIN cultures cu ON c.culture_id = cu.culture_id
JOIN worlds w ON cu.world_id = w.world_id;

-- Show artifacts and the character who wields them
SELECT 
  a.artifact_name, a.description, 
  c.first_name, c.last_name
FROM artifacts a
LEFT JOIN characters c ON a.wielder_id = c.character_id;

-- Count number of characters per world
SELECT 
  w.world_name, COUNT(c.character_id) AS total_characters
FROM characters c
JOIN cultures cu ON c.culture_id = cu.culture_id
JOIN worlds w ON cu.world_id = w.world_id
GROUP BY w.world_name;
