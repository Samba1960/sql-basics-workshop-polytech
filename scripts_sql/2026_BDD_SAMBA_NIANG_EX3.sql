-- 1 Streamers et Creneau 
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

-- 2  Stream avec infos du streamer et creneau
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

-- 3 Defis et leurs participant  : affiche l'intitulé du défi, les pseudonymes des streamers y participant, et le montant
SELECT d.intitule, d.montant_palier, s.pseudo
FROM participant_defi pd
JOIN defi d, 
    ON d.Id_defi = pd.Id_defi
JOIN Streamer s
    ON s.Id_Streamer = pd.Id_Streamer


