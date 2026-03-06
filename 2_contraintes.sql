-- Contraintes de validation pour Ghost_types
ALTER TABLE Ghost_types
ADD CONSTRAINT chk_hostility_range CHECK (hostility BETWEEN 0 AND 10);

-- Contraintes de validation pour Ghosts
ALTER TABLE Ghosts
ADD CONSTRAINT chk_ghost_age CHECK (age >= 0);

-- Contraintes de validation pour les noms (ne doivent pas être vides)
ALTER TABLE Ghost_victims
ADD CONSTRAINT chk_victim_names CHECK (first_name <> '' AND last_name <> '');

-- Contrainte sur la date (une mort ne peut pas être dans le futur, optionnel selon le contexte)
ALTER TABLE Ghosts
ADD CONSTRAINT chk_death_date CHECK (date_of_death <= CURRENT_DATE);