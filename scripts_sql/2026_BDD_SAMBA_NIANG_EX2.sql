-- 1
SELECT url_twitch
FROM Streamer
ORDER BY pseudo ASC

-- 2
SELECT *
FROM Creneau
WHERE DATE(date_debut_autorisee) = '2025-09-06'
   OR DATE(date_fin_autorisee) = '2025-09-06';


-- 3
SELECT *
FROM Defi
WHERE (etat_validation = TRUE) AND (montant_palier > 5000 ) 

-- 4
SELECT *
FROM stream
WHERE (date_fin_effective is NULL ) 