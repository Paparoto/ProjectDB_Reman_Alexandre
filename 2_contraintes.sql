//caca
ALTER TABLE Ghost_types
ADD CONSTRAINT chk_hostility_range CHECK (hostility BETWEEN 0 AND 10);

ALTER TABLE Ghosts
ADD CONSTRAINT chk_ghost_age CHECK (age >= 0);

ALTER TABLE Ghost_victims
ADD CONSTRAINT chk_victim_names CHECK (first_name <> '' AND last_name <> '');


ALTER TABLE Ghosts
ADD CONSTRAINT chk_death_date CHECK (date_of_death <= CURRENT_DATE);

ALTER TABLE Ghosts
ADD CONSTRAINT chk_ghost_names CHECK (first_name <> '' AND last_name <> '');



