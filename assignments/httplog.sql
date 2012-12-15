CREATE TABLE httplog (source text, reqdate date, reqtime time, req text, status int, objsize int);
CREATE INDEX reqindex on httplog(req);
COPY httplog FROM '/u/cs448/public/httplog.csv' WITH CSV;
