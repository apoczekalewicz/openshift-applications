psql -h postgresql.database.svc.cluster.local -U user -d database


CREATE TABLE test (
    id SERIAL PRIMARY KEY,
    name TEXT
);

INSERT INTO test (name) VALUES ('Cluster1');
INSERT INTO test (name) VALUES ('Cluster2');

SELECT * FROM test;
SELECT * FROM test;


---

SVC:
NAME                                          TYPE        CLUSTER-IP       EXTERNAL-IP     PORT(S)    AGE
postgresql                                    ClusterIP   172.30.209.130   <none>          5432/TCP   2m45s
postgresql-1                                  ClusterIP   172.30.52.70     <none>          5432/TCP   2m45s
submariner-dhahaf7hhureg3gv5epefbzaosxez5uf   ClusterIP   172.30.187.150   242.1.255.247   5432/TCP   2m45s

Endpoints:
NAME                                          ENDPOINTS           AGE
postgresql                                    10.129.2.217:5432   2m51s
postgresql-1                                  10.129.2.218:5432   2m51s
submariner-dhahaf7hhureg3gv5epefbzaosxez5uf   10.129.2.218:5432   2m51s

Pods:
NAME                                   READY   STATUS    RESTARTS   AGE     IP             NODE                                        NOMINATED NODE   READINESS GATES
postgresql-1-pgpool-58f57b657d-qlnbw   1/1     Running   0          3m31s   10.129.2.217   ip-10-0-191-50.us-east-2.compute.internal   <none>           <none>
postgresql-1-postgresql-0              1/1     Running   0          3m31s   10.129.2.218   ip-10-0-191-50.us-east-2.compute.internal   <none>           <none>


Adres dostepowy dla aplikacji to SVC o nazwie postgresql - ktory zamiast kierowac na lokalna instancje pgsql to kieruje na pgpoola
