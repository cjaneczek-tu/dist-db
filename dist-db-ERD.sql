CREATE TABLE Bestellung (
 bnr INT NOT NULL,
 bestelldatum DATE,
 lieferdatum DATE
);

ALTER TABLE Bestellung ADD CONSTRAINT PK_Bestellung PRIMARY KEY (bnr);


CREATE TABLE Lieferant (
 uid INT NOT NULL,
 adresse VARCHAR(100),
 knr INT
);

ALTER TABLE Lieferant ADD CONSTRAINT PK_Lieferant PRIMARY KEY (uid);


CREATE TABLE Menu (
 name VARCHAR(50) NOT NULL,
 preis NUMERIC(10)
);

ALTER TABLE Menu ADD CONSTRAINT PK_Menu PRIMARY KEY (name);


CREATE TABLE MenuHistory (
 date DATE NOT NULL,
 menu1 VARCHAR(50),
 menu2 VARCHAR(50),
 menu3 VARCHAR(50)
);

ALTER TABLE MenuHistory ADD CONSTRAINT PK_MenuHistory PRIMARY KEY (date);


CREATE TABLE Rechnung (
 rnr INT NOT NULL,
 bnr INT NOT NULL,
 bankv VARCHAR(150),
 rSumme NUMERIC(10)
);

ALTER TABLE Rechnung ADD CONSTRAINT PK_Rechnung PRIMARY KEY (rnr,bnr);


CREATE TABLE Speise (
 id INT NOT NULL,
 typ VARCHAR(50),
 name VARCHAR(50)
);

ALTER TABLE Speise ADD CONSTRAINT PK_Speise PRIMARY KEY (id);


CREATE TABLE Zutaten (
 id INT NOT NULL,
 name VARCHAR(50),
 preis NUMERIC(10),
 einheit VARCHAR(5)
);

ALTER TABLE Zutaten ADD CONSTRAINT PK_Zutaten PRIMARY KEY (id);


CREATE TABLE ZutatenLieferant (
 uid INT NOT NULL,
 zid INT NOT NULL
);

ALTER TABLE ZutatenLieferant ADD CONSTRAINT PK_ZutatenLieferant PRIMARY KEY (uid,zid);


CREATE TABLE Bestellposten (
 zid INT NOT NULL,
 bnr INT NOT NULL,
 uid INT NOT NULL,
 preis NUMERIC(10),
 menge NUMERIC(10)
);

ALTER TABLE Bestellposten ADD CONSTRAINT PK_Bestellposten PRIMARY KEY (zid,bnr,uid);


CREATE TABLE Lager (
 id INT NOT NULL,
 zid INT NOT NULL,
 bestand INT NOT NULL
);

ALTER TABLE Lager ADD CONSTRAINT PK_Lager PRIMARY KEY (id,zid);


CREATE TABLE MenuSpeisen (
 sid INT NOT NULL,
 mname VARCHAR(50) NOT NULL
);

ALTER TABLE MenuSpeisen ADD CONSTRAINT PK_MenuSpeisen PRIMARY KEY (sid,mname);


CREATE TABLE SpeiseZutaten (
 sid INT NOT NULL,
 zid INT NOT NULL,
 menge NUMERIC(10)
);

ALTER TABLE SpeiseZutaten ADD CONSTRAINT PK_SpeiseZutaten PRIMARY KEY (sid,zid);


ALTER TABLE MenuHistory ADD CONSTRAINT FK_MenuHistory_0 FOREIGN KEY (menu1) REFERENCES Menu (name);
ALTER TABLE MenuHistory ADD CONSTRAINT FK_MenuHistory_1 FOREIGN KEY (menu2) REFERENCES Menu (name);
ALTER TABLE MenuHistory ADD CONSTRAINT FK_MenuHistory_2 FOREIGN KEY (menu3) REFERENCES Menu (name);


ALTER TABLE Rechnung ADD CONSTRAINT FK_Rechnung_0 FOREIGN KEY (bnr) REFERENCES Bestellung (bnr);


ALTER TABLE ZutatenLieferant ADD CONSTRAINT FK_ZutatenLieferant_0 FOREIGN KEY (uid) REFERENCES Lieferant (uid);
ALTER TABLE ZutatenLieferant ADD CONSTRAINT FK_ZutatenLieferant_1 FOREIGN KEY (zid) REFERENCES Zutaten (id);


ALTER TABLE Bestellposten ADD CONSTRAINT FK_Bestellposten_0 FOREIGN KEY (zid) REFERENCES Zutaten (id);
ALTER TABLE Bestellposten ADD CONSTRAINT FK_Bestellposten_1 FOREIGN KEY (bnr) REFERENCES Bestellung (bnr);
ALTER TABLE Bestellposten ADD CONSTRAINT FK_Bestellposten_2 FOREIGN KEY (uid) REFERENCES Lieferant (uid);


ALTER TABLE Lager ADD CONSTRAINT FK_Lager_0 FOREIGN KEY (zid) REFERENCES Zutaten (id);


ALTER TABLE MenuSpeisen ADD CONSTRAINT FK_MenuSpeisen_0 FOREIGN KEY (sid) REFERENCES Speise (id);
ALTER TABLE MenuSpeisen ADD CONSTRAINT FK_MenuSpeisen_1 FOREIGN KEY (mname) REFERENCES Menu (name);


ALTER TABLE SpeiseZutaten ADD CONSTRAINT FK_SpeiseZutaten_0 FOREIGN KEY (sid) REFERENCES Speise (id);
ALTER TABLE SpeiseZutaten ADD CONSTRAINT FK_SpeiseZutaten_1 FOREIGN KEY (zid) REFERENCES Zutaten (id);


