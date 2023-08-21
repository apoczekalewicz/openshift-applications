psql -h postgresql.database.svc.cluster.local -U user -d database


CREATE TABLE test (
    id SERIAL PRIMARY KEY,
    name TEXT
);

INSERT INTO test (name) VALUES ('Cluster1');
INSERT INTO test (name) VALUES ('Cluster2');

SELECT * FROM test;
SELECT * FROM test;

