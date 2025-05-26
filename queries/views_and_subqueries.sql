-- View: Full Character Info
CREATE VIEW character_summary AS
SELECT 
  c.character_id,
  c.first_name,
  c.last_name,
  c.role,
  cu.culture_name,
  s.species_name,
  w.world_name
FROM characters c
JOIN cultures cu ON c.culture_id = cu.culture_id
JOIN species s ON c.species_id = s.species_id
JOIN worlds w ON cu.world_id = w.world_id;

-- Subquery: Characters from magical worlds
SELECT first_name, last_name
FROM characters
WHERE culture_id IN (
    SELECT culture_id 
    FROM cultures 
    WHERE world_id IN (
        SELECT world_id FROM worlds WHERE has_magic = TRUE
    )
);
