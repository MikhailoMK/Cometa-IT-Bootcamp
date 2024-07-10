CREATE TABLE table1 (
    id SERIAL PRIMARY KEY,
    f_name VARCHAR(20),
    l_name VARCHAR(20)
);

CREATE TABLE table2 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(20),
    release_date DATE
);

INSERT INTO table1 (f_name, l_name) VALUES
    ('Михаил', 'Кузьмин'),
    ('Сиёвуш', 'Хамидов'),
    ('Косим', 'Косими'),
    ('Иван', 'Иванов'),
    ('Просто', 'Чел');

INSERT INTO table2 (name, release_date) VALUES
    ('Dota 2', TO_DATE('09-07-2013', 'DD-MM-YYYY')),
    ('TES V: Skyrim', TO_DATE('11-11-2011', 'DD-MM-YYYY')),
    ('Fallout 4', TO_DATE('10-11-2015', 'DD-MM-YYYY')),
    ('Hades', TO_DATE('06-12-2018', 'DD-MM-YYYY')),
    ('Metro Exodus', TO_DATE('15-02-2019', 'DD-MM-YYYY'));