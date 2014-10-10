VerteileDatenbanken
===================

DEZSYS02 - VERTEILTE DATENBANKEN

Einführung

Es soll eine Verteilte Datenbank mit Oracle XE realisiert werden. Die Hauptaufgabe ist esherauszufinden wie man eine verteilte Datenbank erstellt. Die einzige Informationsquelle ist das weite Netz, allem voran die Oracle Dokumentation Site. Der komplette Datenbankentwurf für ein
verteiltes Oracle-DBS soll erstellt werden. Zu verwenden ist dabei eine geeignete
Fragmentierungsmethode! Die einzelnen Schritte sind zu dokumentieren, und Abfragen
durchzuführen, die eine Connection auf die verteilte Instanz nötig machen!

Anforderungsanalyse

Die MensaAustria plant die Erstellung einer Datenbank zur Vereinfachung der Arbeitsabläufe. Dabei
ist zu beachten, dass jede Universität ihre eigene Verwaltung bekommt, jedoch von einer Stelle
geleitet wird.
Eine Speise hat eine eindeutige Nummer, einen Namen und einen Typ (Vorspeise, Hauptspeise,
Nachspeise). Eine Speise besteht aus mehreren Zutaten, wobei die Menge der einzelnen Zutaten
gespeichert werden muss.
Eine Zutat hat eine eindeutige Nummer, einen Namen, eine Einheit (kg, Liter, etc.), einen Preis pro
Einheit und einen bzw. mehrere Lieferanten, von denen die Adresse und eine eindeutige
UIDNummer bekannt sind. Weiters wird die Kundennummer der Mensa beim jeweiligen Lieferanten
vermerkt. Der Lagerbestand wird ebenfalls modelliert. Dazu sind von jeder Zutat die Anzahl der
Einheiten, die momentan vorrätig sind, bekannt. Wenn eine Zutat nicht mehr vorrätig ist, so wird der
Bestand auf 0 gesetzt.
Im Falle einer Bestellung werden ein bzw. mehrere Zutaten bei einem bestimmten Lieferanten
bestellt. Die Bestellung hat eine eindeutige Bestellnummer, ein Bestelldatum, ein voraussichtliches
Lieferdatum. Die einzelnen Zutaten sind die Bestellposten, die eine pro Bestellung eindeutige
Nummer haben, und bei denen die bestellte Menge und der verhandelte Preis gespeichert werden.
Zu jeder Bestellung gibt es nach erfolgter Lieferung eine Rechnung, die verbucht werden muss.
Rechnungen beziehen sich auf genau eine Bestellung. Dabei wird die eindeutige Rechnungsnummer,
die Bankverbindung und die Rechnungssumme gespeichert, wobei letztere vom Bestellpreis
differieren kann, wenn ein Skonto anfällt.
Ein Menü hat einen eindeutigen Namen, einen Preis und es ist gespeichert, aus welchen
(verschiedenen) Speisen ein Menü besteht. Eine Speise kann selbstverständlich in mehreren Menüs
vorkommen.
Um eine zu große Eintönigkeit in der Menüabfolge zu vermeiden, wird weiters gespeichert, an
welchen Tagen welche Menüs serviert wurden. An jedem Tag werden genau drei Menüs serviert.
