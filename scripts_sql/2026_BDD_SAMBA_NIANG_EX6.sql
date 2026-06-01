---- 1 Streamers ayant au moins un défi

SELECT 
    s.pseudo, 
    COUNT(pd.Id_Defi) AS nombre_defis
FROM 
    Streamer s
JOIN 
    Participation_Defi pd ON s.Id_Streamer = pd.Id_Streamer
GROUP BY 
    s.Id_Streamer, s.pseudo;

----- 2 Défis n'ayant aucun participant

SELECT 
    d.intitule, 
    d.montant_palier
FROM 
    Defi d
LEFT JOIN 
    Participation_Defi pd ON d.Id_Defi = pd.Id_Defi
WHERE 
    pd.Id_Streamer IS NULL;

--- 3. Défis ayant plus de 2 streamers participants

SELECT 
    d.intitule, 
    d.montant_palier, 
    COALESCE(COUNT(pd.Id_Streamer), 0) AS nb_participants
FROM 
    Defi d
JOIN 
    Participation_Defi pd ON d.Id_Defi = pd.Id_Defi
GROUP BY 
    d.Id_Defi, d.intitule, d.montant_palier
HAVING 
    COUNT(pd.Id_Streamer) > 2;

---- 4. Nombre de défis par streamer avec le montant total engagé

SELECT 
    s.pseudo, 
    COUNT(pd.Id_Defi) AS nb_defis, 
    SUM(d.montant_palier) AS montant_total
FROM 
    Streamer s
JOIN 
    Participation_Defi pd ON s.Id_Streamer = pd.Id_Streamer
JOIN 
    Defi d ON pd.Id_Defi = d.Id_Defi
GROUP BY 
    s.Id_Streamer, s.pseudo
ORDER BY 
    montant_total DESC;

---- 5 Streamers et créneaux avec nombre de streams effectués par créneau
SELECT 
    s.pseudo, 
    c.date_debut_autorisee, 
    c.date_fin_autorisee, 
    COUNT(st.Id_Stream_) AS nb_streams
FROM 
    Streamer s
JOIN 
    Creneau c ON s.Id_Streamer = c.Id_Streamer
LEFT JOIN 
    Stream st ON c.Id_Creneau = st.Id_Creneau
GROUP BY 
    s.Id_Streamer, s.pseudo, c.Id_Creneau, c.date_debut_autorisee, c.date_fin_autorisee;