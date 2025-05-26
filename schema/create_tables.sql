USE SampleSQLDatabase;

CREATE TABLE worlds (
    world_id INT PRIMARY KEY AUTO_INCREMENT,
    world_name VARCHAR(100),
    terrain_type VARCHAR(100),
    has_magic BOOLEAN,
    magic_type TEXT
);

CREATE TABLE cultures (
    culture_id INT PRIMARY KEY AUTO_INCREMENT,
    culture_name VARCHAR(100),
    language VARCHAR(100),
    religion VARCHAR(100),
    world_id INT,
    FOREIGN KEY (world_id) REFERENCES worlds(world_id)
);

CREATE TABLE species (
    species_id INT PRIMARY KEY AUTO_INCREMENT,
    species_name VARCHAR(100),
    characteristics TEXT,
    origin_world_id INT,
    FOREIGN KEY (origin_world_id) REFERENCES worlds(world_id)
);

CREATE TABLE characters (
    character_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    role VARCHAR(100),
    culture_id INT,
    species_id INT,
    FOREIGN KEY (culture_id) REFERENCES cultures(culture_id),
    FOREIGN KEY (species_id) REFERENCES species(species_id)
);

CREATE TABLE artifacts (
    artifact_id INT PRIMARY KEY AUTO_INCREMENT,
    artifact_name VARCHAR(100),
    description TEXT,
    wielder_id INT,
    FOREIGN KEY (wielder_id) REFERENCES characters(character_id)
);

CREATE TABLE deities (
    deity_id INT PRIMARY KEY AUTO_INCREMENT,
    deity_name VARCHAR(100),
    domain VARCHAR(100),
    associated_world_id INT,
    FOREIGN KEY (associated_world_id) REFERENCES worlds(world_id)
);
