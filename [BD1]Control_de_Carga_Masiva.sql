LOAD DATA INFILE '[CI]Regiones_V2.csv'
IGNORE INTO TABLE TEMP_REGION
COLUMNS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

/*ESTA ES*/
LOAD DATA INFILE '[CI]Encuestas.csv'
IGNORE INTO TABLE TEMP_ENCUESTA
COLUMNS TERMINATED BY ';'
LINES TERMINATED BY '\r'
IGNORE 1 LINES;


LOAD DATA INFILE '[CI]Datos.csv'
IGNORE INTO TABLE TEMP_DATOS
COLUMNS TERMINATED BY ';'
LINES TERMINATED BY '\n'
IGNORE 2 LINES
(	invento,
    inventor,
    profesional_invento,
    jefe_area,
    @fecha_contraro,
    salario,
    comision,
    area_investigacion,
    ranking,
    anio,
    pais_invento,
    pais_inventor,
    region,
    capital,
    poblacion,
    area,
    frontera,
    norte,
    sur,
    este,
    oeste)
SET fecha_contraro = STR_TO_DATE(@fecha_contraro, '%d-%b-%y');