
INSERT INTO Streamer  (pseudo, url_twitch) VALUES 
('ZeratoR', 'https://www.twitch.tv/zerator'),
('AntoineDaniel', 'https://www.twitch.tv/antoinedaniel'),
('MisterMV', 'https://www.twitch.tv/mistermv'),
('Ultia', 'https://www.twitch.tv/ultia'),
('JLTomy', 'https://www.twitch.tv/jltomy'),
('Ponce', 'https://www.twitch.tv/ponce'),
('Domingo', 'https://www.twitch.tv/domingo'),
('Kameto', 'https://www.twitch.tv/kameto'),
('Gotaga', 'https://www.twitch.tv/gotaga'),
('BagheraJones', 'https://www.twitch.tv/bagherajones');


INSERT INTO Creneau
(date_debut_autorisee, date_fin_autorisee, Id_Streamer)
VALUES

-- ZeratoR
('2026-05-22 20:00:00', '2026-05-22 23:30:00', 1),
('2026-05-23 10:00:00', '2026-05-23 13:00:00', 1),
('2026-05-24 15:00:00', '2026-05-24 18:00:00', 1),

-- AntoineDaniel
('2026-05-22 21:00:00', '2026-05-23 00:00:00', 2),
('2026-05-23 09:00:00', '2026-05-23 12:00:00', 2),
('2026-05-24 14:00:00', '2026-05-24 17:00:00', 2),

-- MisterMV
('2026-05-22 19:00:00', '2026-05-22 22:00:00', 3),
('2026-05-23 11:00:00', '2026-05-23 14:00:00', 3),
('2026-05-24 16:00:00', '2026-05-24 19:00:00', 3),

-- Ultia
('2026-05-22 18:00:00', '2026-05-22 21:00:00', 4),
('2026-05-23 08:00:00', '2026-05-23 11:00:00', 4),
('2026-05-24 13:00:00', '2026-05-24 16:00:00', 4),

-- JLTomy
('2026-05-22 20:30:00', '2026-05-22 23:00:00', 5),
('2026-05-23 10:30:00', '2026-05-23 13:30:00', 5),
('2026-05-24 15:30:00', '2026-05-24 18:30:00', 5),

-- Ponce
('2026-05-22 19:30:00', '2026-05-22 22:30:00', 6),
('2026-05-23 09:30:00', '2026-05-23 12:30:00', 6),
('2026-05-24 14:30:00', '2026-05-24 17:30:00', 6),

-- Domingo
('2026-05-22 20:00:00', '2026-05-22 23:00:00', 7),
('2026-05-23 11:00:00', '2026-05-23 14:00:00', 7),
('2026-05-24 16:00:00', '2026-05-24 19:00:00', 7),

-- Kameto
('2026-05-22 21:00:00', '2026-05-23 01:00:00', 8),
('2026-05-23 12:00:00', '2026-05-23 15:00:00', 8),
('2026-05-24 17:00:00', '2026-05-24 20:00:00', 8),

-- Gotaga
('2026-05-22 18:30:00', '2026-05-22 21:30:00', 9),
('2026-05-23 10:00:00', '2026-05-23 13:00:00', 9),
('2026-05-24 15:00:00', '2026-05-24 18:00:00', 9),

-- BagheraJones
('2026-05-22 19:00:00', '2026-05-22 22:00:00', 10),
('2026-05-23 09:00:00', '2026-05-23 12:00:00', 10),
('2026-05-24 14:00:00', '2026-05-24 17:00:00', 10);

INSERT INTO Defi
(intitule, montant_palier, etat_validation)
VALUES

('Teinture de cheveux en bleu', 500.00, TRUE),
('Stream de 24 heures', 1000.00, TRUE),
('Dégustation de nourriture piquante', 2500.00, TRUE),
('Cosplay imposé par le chat', 5000.00, FALSE),
('Coupe de Ronaldo R9', 3000.00, FALSE),
('Marquage au fer', 20000.00, FALSE),
('Course à pied pendant 24h ', 50000.00, TRUE),
('Combat avec Francis Ngannou ', 70000.00, FALSE),
('Saut en parachute', 10000.00, FALSE),
('Voyage humanitaire filmé en vlog', 100000.00, FALSE)




INSERT INTO participation_defi
(Id_Streamer, Id_Defi)
VALUES

-- ZeratoR
(1, 1),
(1, 5),
(1, 9),

-- AntoineDaniel
(2, 2),
(2, 6),

-- MisterMV
(3, 3),
(3, 6),
(3, 8),

-- Ultia
(4, 4),
(4, 5),

-- JLTomy
(5, 2),

-- Ponce
(6, 7),
(6, 8),

-- Domingo
(7, 9),
(7, 10),

-- Kameto
(8, 10),

-- Gotaga
(9, 9),
(9, 10),

-- BagheraJones
(10, 4),
(10, 7);


INSERT INTO Stream_
(titre, heure_debut, heure_fin, date_fin_effective, Id_Creneau, Id_Streamer)
VALUES

-- ZeratoR
('Soirée opening ZEvent',
 '2025-09-05 20:00:00',
 '2025-09-05 23:00:00',
 '2025-09-05 23:12:00',
 1, 1),

('Petit déjeuner gaming',
 '2025-09-06 10:00:00',
 '2025-09-06 12:30:00',
 NULL,
 2, 1),

-- AntoineDaniel
('React vidéos YouTube',
 '2025-09-05 21:00:00',
 '2025-09-05 23:30:00',
 '2025-09-05 23:25:00',
 4, 2),

('Discussion avec le chat',
 '2025-09-06 09:00:00',
 '2025-09-06 11:30:00',
 NULL,
 5, 2),

-- MisterMV
('Retro Gaming Night',
 '2025-09-05 19:00:00',
 '2025-09-05 22:00:00',
 '2025-09-05 21:58:00',
 7, 3),

('Découverte indé',
 '2025-09-06 11:00:00',
 '2025-09-06 13:30:00',
 NULL,
 8, 3),

-- Ultia
('Challenge horreur',
 '2025-09-05 18:00:00',
 '2025-09-05 20:30:00',
 '2025-09-05 20:35:00',
 10, 4),

('Blabla & donations',
 '2025-09-06 08:30:00',
 '2025-09-06 10:30:00',
 NULL,
 11, 4),

-- JLTomy
('Ranked League of Legends',
 '2025-09-05 20:30:00',
 '2025-09-05 22:30:00',
 '2025-09-05 22:45:00',
 13, 5),

-- Ponce
('Talk-show communautaire',
 '2025-09-05 19:30:00',
 '2025-09-05 22:00:00',
 '2025-09-05 22:05:00',
 16, 6),

-- Domingo
('Emission spéciale ZEvent',
 '2025-09-05 20:00:00',
 '2025-09-05 23:00:00',
 NULL,
 19, 7),

-- Kameto
('Watch party esport',
 '2025-09-05 21:00:00',
 '2025-09-06 00:30:00',
 '2025-09-06 00:40:00',
 22, 8),

-- Gotaga
('FPS training',
 '2025-09-05 18:30:00',
 '2025-09-05 21:00:00',
 NULL,
 25, 9),

-- BagheraJones
('Jeux coop entre amis',
 '2025-09-05 19:00:00',
 '2025-09-05 21:30:00',
 '2025-09-05 21:20:00',
 28, 10),

('Fin de soirée détente',
 '2025-09-06 14:00:00',
 '2025-09-06 16:30:00',
 NULL,
 30, 10);