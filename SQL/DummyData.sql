

INSERT INTO allergen (beskrivelse) VALUES (
    'Egg'
);
INSERT INTO allergen (beskrivelse) VALUES (
    'Hvete'
);
INSERT INTO allergen (beskrivelse) VALUES (
    'Cyanide'
);

INSERT INTO prisbeskrivelse (beskrivelse) VALUES (
  'per kg'
);
INSERT INTO prisbeskrivelse (beskrivelse) VALUES (
  'per side'
);
INSERT INTO prisbeskrivelse (beskrivelse) VALUES (
  'ca. 300 gram'
);

INSERT INTO primærkategori (navn) VALUES (
    'Fiskeprodukter'
);

INSERT INTO primærkategori (navn) VALUES (
        'Kjøttprodukter'
);



INSERT INTO subkategori (navn, beskrivelse, primær_id) VALUES (
        'Ferkse fiskefileter',
        'uten skinn',
        1
);
INSERT INTO subkategori (navn, primær_id) VALUES (
        'Eldhus røket/speket',
        1
);
INSERT INTO subkategori (navn, primær_id) VALUES (
        'Ferske koke stykker',
        1
);
INSERT INTO subkategori (navn, primær_id) VALUES (
        'Gullfisker',
        1
);
INSERT INTO subkategori (navn, primær_id) VALUES (
        'Bambi',
        2
);
INSERT INTO subkategori (navn, primær_id) VALUES (
        'Lam',
        2
);
INSERT INTO subkategori (navn, primær_id) VALUES (
        'Hjort, elg, reinsdyr og rådyr',
        2
);
INSERT INTO subkategori (navn, primær_id) VALUES (
        'Pølser!',
        2
);



INSERT INTO produkter (navn, beskrivelse, annen_beskrivelse, bilde_url, antall_på_lager, ordinærpris, subkategori_id, prisbeskrivelse_id) VALUES (
        'Klippfisk av torsk',
        'Klippfisk med skinn og bein',
        'Superior kvalitet',
        'URL DASDASD',
        30,
        167,
        2,
        2
);

INSERT INTO produkter (navn, beskrivelse, annen_beskrivelse, bilde_url, antall_på_lager, ordinærpris, subkategori_id, prisbeskrivelse_id) VALUES (
        'asd',
        'Kasdasd',
        'Superior kvalitet',
        'URL DASasdDASD',
        30,
        1672,
        2,
        1
);


INSERT INTO produkt_allergen (produkt_id, allergen_id) VALUES (
    1,
    3
);

INSERT INTO produkt_allergen (produkt_id, allergen_id) VALUES (
    1,
    2
);
