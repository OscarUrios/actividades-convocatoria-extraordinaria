CREATE USER dam_usuari IDENTIFIED BY '\r:stI)A;s+NM!A';
GRANT SELECT ANY TABLE TO dam_usuari;
GRANT INSERT ANY TABLE TO dam_usuari;
GRANT UPDATE ANY TABLE TO dam_usuari;

CREATE USER dam_gestor IDENTIFIED BY 'U!YOi-7SBcz8LgW';
GRANT INSERT ON loans TO dam_gestor;
GRANT UPDATE ON loans TO dam_gestor;

REVOKE SELECT ON books FROM dam_usuari;
REVOKE INSERT ON books FROM dam_usuari;
REVOKE UPDATE ON books FROM dam_usuari;

DROP USER dam_usuari CASCADE;
DROP USER dam_gestor CASCADE;

CREATE INDEX idx_nomAutor ON books(nomAutor);

COMMIT;