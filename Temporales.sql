CREATE TABLE TEMP_REGION(
	region VARCHAR(50),
    region_pertenece VARCHAR(50)
);

CREATE TABLE TEMP_ENCUESTA(
	encuesta VARCHAR(50),
    pregunta VARCHAR(250),
    respuesta VARCHAR(50),
    correcta VARCHAR(10),
    pais VARCHAR(50)
);

CREATE TABLE TEMP_DATOS(
	invento VARCHAR(50),
    inventor VARCHAR(50),
    profesional_invento VARCHAR(50),
    jefe_area VARCHAR(30),
    fecha_contraro DATE,
    salario INT,
    comision INT,
    area_investigacion VARCHAR(30),
    ranking INT,
    anio INT,
    pais_invento VARCHAR(50),
    pais_inventor VARCHAR(50),
    region VARCHAR(50),
    capital VARCHAR(50),
    poblacion INT,
    area INT,
    frontera VARCHAR(50),
    norte VARCHAR(10),
    sur VARCHAR(10),
    este VARCHAR(10),
    oeste VARCHAR(10)
);
