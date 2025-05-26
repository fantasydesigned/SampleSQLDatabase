USE SampleSQLDatabase;

INSERT INTO worlds (world_name, terrain_type, has_magic, magic_type) VALUES
('Aetheris', 'Floating Islands', TRUE, 'Air manipulation and levitation'),
('Drakmor', 'Volcanic Highlands', TRUE, 'Fire summoning and elemental control'),
('Lunaria', 'Frozen Wasteland', FALSE, NULL);

INSERT INTO cultures (culture_name, language, religion, world_id) VALUES
('Zephyrites', 'Zephari', 'Wind Spirits', 1),
('Pyrethians', 'Drakken', 'Flame Titans', 2),
('Moonborn', 'Silvani', 'None', 3);

INSERT INTO species (species_name, characteristics, origin_world_id) VALUES
('Sky Elves', 'Winged humanoids with air affinity', 1),
('Fireborn', 'Lava-skinned warriors immune to heat', 2),
('Frostlings', 'Pale-skinned beings with resistance to cold', 3);

INSERT INTO characters (first_name, last_name, role, culture_id, species_id) VALUES
('Aelira', 'Windwhisper', 'Wind Priestess', 1, 1),
('Kael', 'Ashforge', 'Flame Knight', 2, 2),
('Thalor', 'Icevein', 'Wanderer', 3, 3),
('Mira', 'Skyrider', 'Scout', 1, 1);

INSERT INTO artifacts (artifact_name, description, wielder_id) VALUES
('Gale Scepter', 'Controls wind currents and storms', 1),
('Inferno Blade', 'Flaming sword forged from Drakmor’s core', 2),
('Silent Shard', 'A frozen gem that mutes sound', 3);

INSERT INTO deities (deity_name, domain, associated_world_id) VALUES
('Sylphar', 'Wind and Sky', 1),
('Ignivar', 'Fire and War', 2),
('Nocthiel', 'Silence and Ice', 3);
