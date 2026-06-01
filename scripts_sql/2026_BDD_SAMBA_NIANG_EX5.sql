-- 1 Modifier un montant palier : Augmentez de 10% le montant palier du défi "Saut en parachute" (ou un autre défi)
UPDATE defi
SET montant_palier = montant_palier *1.10 
WHERE intitule = 'Saut en parachute' ;


----2 Valider tous les défis non validés ayant au moins 3 participants :
UPDATE Defi
SET etat_validation = TRUE
WHERE etat_validation = FALSE
  AND Id_Defi IN (
      SELECT Id_Defi
      FROM Participation_Defi
      GROUP BY Id_Defi
      HAVING COUNT(Id_Streamer) >= 3
  );

--- 3 Supprimer les streams non terminés : Supprimez tous les streams dont la date_fin_effective est ǸULL.
DELETE FROM stream
WHERE date_fin_effective = NULL;

--- 4  Supprimer les créneaux passés : Supprimez les créneaux dont la date de fin autorisée est antérieure à aujourd'hui.
DELETE FROM creneau
WHERE date_fin_autorisee <= CURRENT_DATE;

SELECT Id_Creneau, date_fin_autorisee 
FROM creneau
WHERE date_fin_autorisee <= CURRENT_DATE ;