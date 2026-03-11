INSERT INTO Ghost_types (ghost_type_id, name, hostility) VALUES
(1, 'Poltergeist', 9),
(2, 'Banshee', 7),
(3, 'Wraith', 10),
(4, 'Phantom', 3),
(5, 'Shadow Person', 6),
(6, 'Onryo', 9),
(7, 'Spirit', 2),
(8, 'Revenant', 8),
(9, 'Jinn', 7),
(10, 'Lemure', 5);

INSERT INTO Houses (address, town, country) VALUES
('13 Blackwood Manor', 'London', 'UK'),
('42 Rue de l''Exorcisme', 'Paris', 'France'),
('666 Hellfire Road', 'New Orleans', 'USA'),
('7-1-1 Ghost Hill', 'Kyoto', 'Japan'),
('9 Old Church Lane', 'Edinburgh', 'Scotland'),
('101 Foggy Shore', 'Dublin', 'Ireland'),
('22b Baker St (Haunted)', 'London', 'UK'),
('Villa della Morte', 'Venice', 'Italy'),
('Abandoned Hospital Road', 'Berlin', 'Germany'),
('Cold Peak Cabin', 'Oslo', 'Norway');

INSERT INTO Ghosts (ghost_id, first_name, last_name, age, reason_of_death, date_of_death, ghost_type_id, haunted_house_address) VALUES
(1, 'Arthur', 'Blackwood', 54, 'Assassination', '1892-04-12', 3, '13 Blackwood Manor'),
(2, 'Sadako', 'Yamamura', 19, 'Drowning in a well', '1970-07-20', 6, '7-1-1 Ghost Hill'),
(3, 'Pierre', 'Lefebvre', 32, 'Guillotine', '1793-11-10', 8, '42 Rue de l''Exorcisme'),
(4, 'Mary', 'O''Connell', 25, 'Broken heart/Sickness', '1845-02-14', 2, '101 Foggy Shore'),
(5, 'The Butcher', 'Unknown', 45, 'Explosion', '1920-05-30', 1, '666 Hellfire Road'),
(6, 'Hans', 'Müller', 60, 'Medical experiment gone wrong', '1944-12-01', 5, 'Abandoned Hospital Road'),
(7, 'Alistair', 'McLean', 40, 'Clan war', '1650-09-15', 10, '9 Old Church Lane'),
(8, 'Elena', 'Rossi', 28, 'Poisoning', '1905-08-21', 4, 'Villa della Morte'),
(9, 'Grim', 'Erikson', 35, 'Freezing to death', '1985-01-05', 9, 'Cold Peak Cabin'),
(10, 'Victor', 'Gray', 12, 'Accidental fall', '1955-06-12', 7, '13 Blackwood Manor'),
(11, 'Sarah', 'Winchester', 82, 'Natural causes', '1922-09-05', 7, '666 Hellfire Road'),
(12, 'Thomas', 'Sparks', 22, 'Electrocution', '2010-11-11', 1, '42 Rue de l''Exorcisme'),
(13, 'Yuki', 'Sato', 24, 'Traffic accident', '2015-03-22', 4, '7-1-1 Ghost Hill'),
(14, 'Jack', 'The Ripper', 38, 'Unknown', '1888-11-09', 3, '22b Baker St (Haunted)'),
(15, 'Screaming', 'Sven', 50, 'Avalanche', '1999-12-25', 2, 'Cold Peak Cabin');

INSERT INTO Ghost_victims (victim_id, first_name, last_name, date_of_incident, killer_ghost_id, death_house_address) VALUES
(1, 'John', 'Watson', '2020-10-31', 1, '13 Blackwood Manor'),
(2, 'Akira', 'Tanaka', '2021-05-15', 2, '7-1-1 Ghost Hill'),
(3, 'Chloe', 'Dubois', '2019-12-24', 3, '42 Rue de l''Exorcisme'),
(4, 'Liam', 'Murphy', '2022-03-17', 4, '101 Foggy Shore'),
(5, 'Damien', 'Thorn', '2018-06-06', 5, '666 Hellfire Road'),
(6, 'Klaus', 'Schmidt', '2023-01-20', 6, 'Abandoned Hospital Road'),
(7, 'Fiona', 'Campbell', '2021-11-11', 7, '9 Old Church Lane'),
(8, 'Luca', 'Ricci', '2022-08-15', 8, 'Villa della Morte'),
(9, 'Astrid', 'Nilsen', '2023-02-02', 9, 'Cold Peak Cabin'),
(10, 'Robert', 'Paulson', '2020-04-01', 1, '13 Blackwood Manor'),
(11, 'Misty', 'Day', '2017-10-31', 11, '666 Hellfire Road'),
(12, 'Kevin', 'McCallister', '2021-12-25', 12, '42 Rue de l''Exorcisme'),
(13, 'Hideo', 'Kojima', '2024-01-01', 13, '7-1-1 Ghost Hill'),
(14, 'Sherlock', 'Holmes', '2012-05-04', 14, '22b Baker St (Haunted)'),
(15, 'Bjorn', 'Ironside', '2023-12-30', 15, 'Cold Peak Cabin');
