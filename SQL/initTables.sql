DROP TABLE IF EXISTS
    produkt_allergen;
DROP TABLE IF EXISTS
    allergen;
DROP TABLE IF EXISTS
    produkter;
DROP TABLE IF EXISTS
    prisbeskrivelse;
DROP TABLE IF EXISTS
    subkategori;
DROP TABLE IF EXISTS
    primærkategori;
DROP TABLE IF EXISTS
    tilbud;
DROP TABLE IF EXISTS
    type;
CREATE TABLE IF NOT EXISTS primærkategori (
    id TINYINT AUTO_INCREMENT PRIMARY KEY,
    navn VARCHAR(30) NOT NULL UNIQUE
) ENGINE = innodb DEFAULT CHARSET = utf8;
CREATE TABLE IF NOT EXISTS subkategori (
    id TINYINT AUTO_INCREMENT PRIMARY KEY,
    navn VARCHAR(30) NOT NULL UNIQUE,
    beskrivelse VARCHAR(250) NOT NULL,
    primær_id TINYINT NOT NULL,
    FOREIGN KEY(primær_id) REFERENCES primærkategori(id) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = innodb DEFAULT CHARSET = utf8;
CREATE TABLE IF NOT EXISTS prisbeskrivelse (
    id TINYINT AUTO_INCREMENT PRIMARY KEY,
    beskrivelse VARCHAR(30) NOT NULL UNIQUE
) ENGINE = innodb DEFAULT CHARSET = utf8;
CREATE TABLE IF NOT EXISTS produkter (
    id SMALLINT AUTO_INCREMENT PRIMARY KEY,
    navn VARCHAR(30) NOT NULL UNIQUE,
    beskrivelse VARCHAR(250),
    annen_beskrivelse VARCHAR(30),
    bilde_url VARCHAR(30) NOT NULL,
    antall_på_lager SMALLINT,
    ordinærpris DECIMAL(8,2) NOT NULL,
    subkategori_id TINYINT NOT NULL,
    prisbeskrivelse_id TINYINT NOT NULL,
    FOREIGN KEY(prisbeskrivelse_id) REFERENCES prisbeskrivelse(id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY(subkategori_id) REFERENCES subkategori(id) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = innodb DEFAULT CHARSET = utf8;
CREATE TABLE IF NOT EXISTS allergen (
    id TINYINT AUTO_INCREMENT PRIMARY KEY,
    beskrivelse VARCHAR(30) NOT NULL UNIQUE
) ENGINE = innodb DEFAULT CHARSET = utf8;
CREATE TABLE IF NOT EXISTS produkt_allergen (
    produkt_id SMALLINT NOT NULL,
    FOREIGN KEY(produkt_id) REFERENCES produkter(id) ON DELETE CASCADE ON UPDATE CASCADE,
    allergen_id TINYINT NOT NULL,
    FOREIGN KEY(allergen_id) REFERENCES allergen(id) ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY(produkt_id, allergen_id)
) ENGINE = innodb DEFAULT CHARSET = utf8;
CREATE TABLE IF NOT EXISTS type (
    id TINYINT AUTO_INCREMENT PRIMARY KEY,
    beskrivelse VARCHAR(250) NOT NULL UNIQUE
) ENGINE = innodb DEFAULT CHARSET = utf8;
CREATE TABLE IF NOT EXISTS tilbud (
    id TINYINT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    beskrivelse VARCHAR(250) NOT NULL UNIQUE,
    rabatt DECIMAL(7,2),
    min DECIMAL(7,2),
    max DECIMAL(7,2),
    konflikt BOOLEAN NOT NULL,
    aktiveringsdato DATETIME NOT NULL,
    utløpsdato DATETIME NOT NULL,
    type_id TINYINT NOT NULL,
    kampanjekode varchar(20) UNIQUE,
    FOREIGN KEY(type_id) REFERENCES type(id) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = innodb DEFAULT CHARSET = utf8;
