/*Check that the hostility value of the ghost types stays in a range beetween 0 and 10*/
ALTER TABLE Ghost_types
ADD CONSTRAINT chk_hostility_range CHECK (hostility BETWEEN 0 AND 10);

/*Check that the first name and last name of the victims is in beetween apostrophes*/
ALTER TABLE Ghost_victims
ADD CONSTRAINT chk_victim_names CHECK (first_name <> '' AND last_name <> '');

/*Check that the age of the ghost is not negative*/
ALTER TABLE Ghosts
ADD CONSTRAINT chk_ghost_age CHECK (age >= 0);

/*Check that the death date of the ghost is not in the futur (we check that he either died today or in the past)*/
ALTER TABLE Ghosts
ADD CONSTRAINT chk_death_date CHECK (date_of_death <= CURRENT_DATE);

/*Check that the first name and last name of the victims is in beetween apostrophes*/
ALTER TABLE Ghosts
ADD CONSTRAINT chk_ghost_names CHECK (first_name <> '' AND last_name <> '');




