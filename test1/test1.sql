CREATE SCHEMA test1;

CREATE TABLE test1.geoffrey AS
SELECT gid AS id, 'geoffrey' AS geoffrey
FROM layers_shapes.nz_coastline
WHERE gid <= 10;

GRANT SELECT ON ALL TABLES IN SCHEMA test1 TO "test1-reader";
GRANT USAGE ON SCHEMA test1 TO "test1-reader";
