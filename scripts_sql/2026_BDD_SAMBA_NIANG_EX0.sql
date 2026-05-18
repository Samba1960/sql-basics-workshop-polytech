
CREATE TABLE Streamer (
    Id_Streamer SERIAL  PRIMARY KEY,
    pseudo VARCHAR(50),
    url_twitch VARCHAR(255)
);

CREATE TABLE Defi (
    Id_Defi SERIAL PRIMARY KEY,
    montant_palier DECIMAL(12,2),
    etat_validation BOOLEAN,
    intitule VARCHAR(50)
);

CREATE TABLE Creneau (
    Id_Creneau SERIAL PRIMARY KEY,
    date_debut_autorisee TIMESTAMP,
    date_fin_autorisee TIMESTAMP,
    Id_Streamer INT,

    FOREIGN KEY (Id_Streamer)
        REFERENCES Streamer(Id_Streamer)
);

CREATE TABLE Stream_ (
    Id_Stream_ SERIAL PRIMARY KEY,
    titre VARCHAR(50),
    heure_debut TIMESTAMP,
    heure_fin TIMESTAMP,
    date_fin_effective TIMESTAMP,

    Id_Creneau INT,
    Id_Streamer INT,

    FOREIGN KEY (Id_Creneau)
        REFERENCES Creneau(Id_Creneau),

    FOREIGN KEY (Id_Streamer)
        REFERENCES Streamer(Id_Streamer)
);

CREATE TABLE Participation_Defi_ (
    Id_Streamer INT,
    Id_Defi INT,

    PRIMARY KEY (Id_Streamer, Id_Defi),

    FOREIGN KEY (Id_Streamer)
        REFERENCES Streamer(Id_Streamer),

    FOREIGN KEY (Id_Defi)
        REFERENCES Defi(Id_Defi)
);