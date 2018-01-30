

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
INSERT INTO subkategori (navn, beskrivelse, primær_id) VALUES (
        'Eldhus røket/speket',
        'Det beste av røket og speket mat!',
        1
);
INSERT INTO subkategori (navn, beskrivelse, primær_id) VALUES (
        'Ferske koke stykker',
        'Det beste av kokt mat!',
        1
);
INSERT INTO subkategori (navn, beskrivelse, primær_id) VALUES (
        'Gullfisker',
        'Det beste av kokt mat!',
        1
);
INSERT INTO subkategori (navn, beskrivelse, primær_id) VALUES (
        'Bambi',
        'Det beste av kokt mat!',
        2
);
INSERT INTO subkategori (navn, beskrivelse, primær_id) VALUES (
        'Lam',
        'Det beste av kokt mat!',
        2
);
INSERT INTO subkategori (navn, beskrivelse, primær_id) VALUES (
        'Hjort, elg, reinsdyr og rådyr',
        'Det beste av kokt mat!',
        2
);
INSERT INTO subkategori (navn, beskrivelse, primær_id) VALUES (
        'Pølser!',
        'Det beste av kokt mat!',
        2
);



INSERT INTO produkter (navn, beskrivelse, annen_beskrivelse, bilde_url, antall_på_lager, ordinærpris, subkategori_id, prisbeskrivelse_id) VALUES (
        'Klippfisk av torsk',
        'Klippfisk med skinn og bein',
        'Superior kvalitet',
        'URL DASDASD',
        30,
        10000,
        2,
        2
);

INSERT INTO produkter (navn, beskrivelse, annen_beskrivelse, bilde_url, antall_på_lager, ordinærpris, subkategori_id, prisbeskrivelse_id) VALUES (
        'asd',
        'Kasdasd',
        'Superior kvalitet',
        'URL DASasdDASD',
        30,
        16.725,
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

INSERT INTO type (beskrivelse) VALUES (
        "n for m"
);
INSERT INTO type (beskrivelse) VALUES (
        "n % rabatt, min p kr i rabatt, max q kr i rabatt, eksempel 10% rabatt gitt at det blir gitt mer en 100 kr avslag med maksimum 1000kr avslag, dvs 10% av på handlekurv med pris mellom 1000-10000 kr."
);
INSERT INTO tilbud (beskrivelse, rabatt, min, max, konflikt, aktiveringsdato, utløpsdato, type_id) VALUES (
        "3 for 2 på alle pølser!",
        2,
        3,
        NULL,
        1,
        '2008-7-04',
        '2088-7-04',
        1
);
INSERT INTO tilbud (beskrivelse, rabatt, min, max, konflikt, aktiveringsdato, utløpsdato, type_id) VALUES (
        "32 for 23 på alle pølser!",
        2,
        3,
        NULL,
        1,
        '2008-7-04',
        '2088-7-04',
        1
);
INSERT INTO tilbud (beskrivelse, rabatt, min, max, konflikt, aktiveringsdato, utløpsdato, type_id, kampanjekode) VALUES (
        "2% av på alle varer",
        2,
        3,
        NULL,
        1,
        '2008-7-04',
        '2088-7-04',
        1,
        'HØST2018'
);
INSERT INTO tilbud (beskrivelse, rabatt, min, max, konflikt, aktiveringsdato, utløpsdato, type_id, kampanjekode) VALUES (
        "20% avslag på kjøp over 3000, til 10000",
        0.2,
        600,
        2000,
        2,
        '2008-7-04',
        '2088-7-04',
        1,
        NULL
);
INSERT INTO tilbud (beskrivelse, rabatt, min, max, konflikt, aktiveringsdato, utløpsdato, type_id, kampanjekode) VALUES (
        "202% savslag på kjøp over 3000, til 10000",
        0.2,
        600,
        2000,
        0,
        '2008-7-04',
        '2088-7-04',
        1,
        NULL
);
