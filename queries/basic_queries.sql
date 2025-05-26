-- View all worlds
SELECT * FROM worlds;

-- View all characters with their role
SELECT first_name, last_name, role FROM characters;

-- View all deities and the world they belong to
SELECT deity_name, domain, world_name
FROM deities d
JOIN worlds w ON d.associated_world_id = w.world_id;
