-- 1
SELECT
    s.pseudo,
    c.date_debut_autorisee,
    c.date_fin_autorisee
FROM Streamer s
JOIN Creneau c
    ON s.Id_Streamer = c.Id_Streamer
ORDER BY
    s.pseudo ASC,
    c.date_debut_autorisee ASC;

-- 2
SELECT
    st.titre,
    s.pseudo,
    DATE(c.date_debut_autorisee) AS date_creneau
FROM Stream st
JOIN Streamer s
    ON st.Id_Streamer = s.Id_Streamer
JOIN Creneau c
    ON st.Id_Creneau = c.Id_Creneau
WHERE DATE(c.date_debut_autorisee) IN ('2025-09-05', '2025-09-06')
ORDER BY
    date_creneau ASC,
    s.pseudo ASC;

-- 3
SELECT *
FROM Defi
WHERE (etat_validation = TRUE) AND (montant_palier > 5000 ) 

-- 4
SELECT *
FROM stream
WHERE (date_fin_effective is NULL ) 