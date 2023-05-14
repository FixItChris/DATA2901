SET SEARCH_PATH to 'sa2';
SELECT ST_X(D.geom)
FROM (SELECT (ST_DUMPPOINTS(r.geometry)).* FROM regions r) as D
ORDER BY ST_X(D.geom) DESC;

SELECT ST_Y(D.geom)
FROM (SELECT (ST_DUMPPOINTS(r.geometry)).* FROM regions r) as D
ORDER BY ST_X(D.geom) ASC;

SELECT ST_X(D.geom)
FROM (SELECT (ST_DUMPPOINTS(r.geometry)).* FROM regions r) as D
ORDER BY ST_X(D.geom) ASC;

SELECT ST_Y(D.geom)
FROM (SELECT (ST_DUMPPOINTS(r.geometry)).* FROM regions r) as D
ORDER BY ST_X(D.geom) DESC;

SELECT ST_X(ST_TRANSFORM(q.geometry, 7844))
FROM polls q
ORDER BY ST_X(ST_TRANSFORM(q.geometry, 7844)) DESC;

SELECT ST_Y(ST_TRANSFORM(q.geometry, 7844))
FROM polls q
ORDER BY ST_Y(ST_TRANSFORM(q.geometry, 7844)) ASC;

SELECT ST_X(ST_TRANSFORM(q.geometry, 7844))
FROM polls q
ORDER BY ST_X(ST_TRANSFORM(q.geometry, 7844)) ASC;

SELECT ST_Y(ST_TRANSFORM(q.geometry, 7844))
FROM polls q
ORDER BY ST_Y(ST_TRANSFORM(q.geometry, 7844)) DESC;

SELECT r.sa2_code, r.sa2_name, q.*
FROM regions r LEFT JOIN polls q ON ST_CONTAINS(ST_TRANSFORM(q.geometry, 7844), r.geometry);




               
