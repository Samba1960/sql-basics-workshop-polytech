-- Partie A : Validation des streams contre les créneaux

SELECT 
    st.titre,
    s.pseudo,
    c.date_debut_autorisee,
    c.date_fin_autorisee,
    st.heure_debut,
    st.heure_fin,
    CASE
        WHEN st.heure_debut >= c.date_debut_autorisee AND st.heure_fin <= c.date_fin_autorisee THEN 'VALIDE'
        ELSE 'INVALIDE'
    END AS statut_creneau
FROM 
    Stream st
JOIN 
    Creneau c ON st.Id_Creneau = c.Id_Creneau
JOIN 
    Streamer s ON c.Id_Streamer = s.Id_Streamer;


--- Resultat que des invalide car mes heures de fin autorisée sont superieures à l'heure de fin 

--- Partie B : Détection des dépassements de fin
SELECT 
    st.titre,
    s.pseudo,
    st.heure_fin,
    st.date_fin_effective,
    CASE
        WHEN st.date_fin_effective > st.heure_fin THEN 'DEPASSEMENT'
        ELSE 'OK'       
    END AS statut_depass,
    CASE
        WHEN st.date_fin_effective IS NOT NULL AND st.date_fin_effective > st.heure_fin 
        THEN EXTRACT(EPOCH FROM (st.date_fin_effective - st.heure_fin)) / 60
        ELSE 0
    END AS DureeDeppas
FROM Stream st 
JOIN 
    Creneau c ON st.Id_Creneau = c.Id_Creneau
JOIN 
    Streamer s ON c.Id_Streamer = s.Id_Streamer;