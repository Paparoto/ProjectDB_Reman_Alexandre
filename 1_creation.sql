CREATE TABLE Ghost_types (
    ghost_type_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    hostility INT
);

CREATE TABLE Houses (
    address VARCHAR(255) PRIMARY KEY,
    town VARCHAR(100) NOT NULL,
    country VARCHAR(100) NOT NULL
);

CREATE TABLE Ghosts (
    ghost_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    reason_of_death TEXT,
    date_of_death DATE,
    ghost_type_id INT NOT NULL,
    haunted_house_address VARCHAR(255),
    CONSTRAINT fk_ghost_type 
        FOREIGN KEY (ghost_type_id) REFERENCES Ghost_types(ghost_type_id)
        ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_haunted_house 
        FOREIGN KEY (haunted_house_address) REFERENCES Houses(address)
        ON DELETE SET NULL ON UPDATE CASCADE
);

CREATE TABLE Ghost_victims (
    victim_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    date_of_incident DATE,
    killer_ghost_id INT NOT NULL,
    death_house_address VARCHAR(255) NOT NULL,
    CONSTRAINT fk_killer_ghost 
        FOREIGN KEY (killer_ghost_id) REFERENCES Ghosts(ghost_id)
        ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_death_house 
        FOREIGN KEY (death_house_address) REFERENCES Houses(address)
        ON DELETE CASCADE ON UPDATE CASCADE

);
