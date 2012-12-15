CREATE TABLE nycbaby (year integer, gender varchar(6), name text, count integer, rank integer);
CREATE INDEX nameindex on nycbaby(name);
COPY nycbaby FROM '/u/cs448/public/nycbaby.csv' WITH CSV;
