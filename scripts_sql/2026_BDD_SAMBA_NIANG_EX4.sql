--- 1  Affichez le pseudo et le nombre de streams effectués, même pour les streamers n'ayant aucun stream (nombre = 0). Ordonnez par nombre décroissant.

SELECT st.pseudo, COUNT(s.id_stream_) AS nombre_streams
FROM Streamer st
LEFT JOIN Stream s 
    ON st.Id_Streamer = s.Id_Streamer
GROUP BY st.Id_Streamer, st.pseudo
ORDER BY nombre_streams DESC;

----2  Affichez si le défi est validé ou pas, et le montant total des paliers pour chaque état.

SELECT 
    etat_validation, 
    SUM(montant_palier) AS montant_total
FROM 
    Defi
GROUP BY 
    etat_validation;

---  3 Affichez le pseudo et le nombre de défis de chaque streamer ayant au moins 2 défis.

SELECT 
    st.pseudo, 
    COUNT(pd.id_defi) AS nb_defi 
FROM 
    Streamer st
JOIN Participation_Defi pd ON st.Id_Streamer = pd.Id_Streamer
GROUP BY 
    st.Id_Streamer, st.pseudo
HAVING 
    COUNT(pd.id_defi) >= 2 

--- 4 Calculez (heure_fin - heure_debut) en heures pour chaque stream, 
---puis affichez la durée moyenne globale. Affichez également le titre du stream.

SELECT titre, EXTRACT(EPOCH FROM (heure_fin - heure_debut)) / 3600 AS duree, AVG(EXTRACT(EPOCH FROM (heure_fin - heure_debut)) / 3600) OVER() AS duree_moyenne
FROM stream;

----5   Afficher uniquement les streamers qui ont effectivement lancé au moins un stream, 
---avec le titre de leur session: Affiche le pseudo, le titre et l'heure de début.

SELECT st.pseudo ,s.titre, s.heure_debut, COUNT(s.id_stream_) AS nombre_streams
FROM Streamer st
JOIN stream s ON st.Id_Streamer = s.Id_Streamer
GROUP BY 
    st.Id_Streamer, st.pseudo,s.titre, s.heure_debut
HAVING COUNT(s.id_stream_) >= 1;