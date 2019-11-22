/*TABLAS TEMPORALES*/

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


/* MODELO LOGICO */
CREATE TABLE REGION(
	id_region INT AUTO_INCREMENT PRIMARY KEY,
    region VARCHAR(50) NOT NULL,
    id_region1 INT,
    FOREIGN KEY (id_region1) REFERENCES REGION(id_region)
);

CREATE TABLE ENCUESTA(
	id_encuesta INT AUTO_INCREMENT PRIMARY KEY,
    encuesta VARCHAR(50) NOT NULL
);

CREATE TABLE PREGUNTA(
	id_pregunta INT AUTO_INCREMENT PRIMARY KEY,
    pregunta VARCHAR(250) NOT NULL,
    id_encuesta INT,
    FOREIGN KEY (id_encuesta) REFERENCES ENCUESTA(id_encuesta)
);

CREATE TABLE RESPUESTA(
	id_respuesta INT AUTO_INCREMENT PRIMARY KEY,
    respuesta VARCHAR(50) NOT NULL,
    correcta VARCHAR(10),
    pais VARCHAR(50),
    id_pregunta INT,
    FOREIGN KEY (id_pregunta) REFERENCES PREGUNTA(id_pregunta)
);

CREATE TABLE PAIS(
    id_pais INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    capital VARCHAR(50),
    poblacion INT,
    area INT,
    id_region INT,
    FOREIGN KEY (id_region) REFERENCES REGION(id_region)
);

CREATE TABLE FRONTERA(
    norte VARCHAR(10),
    sur VARCHAR(10),
    este VARCHAR(10),
    oeste VARCHAR(10),
    id_pais INT,
    id_paisF INT,
    FOREIGN KEY (id_pais) REFERENCES PAIS(id_pais),
    FOREIGN KEY (id_paisF) REFERENCES PAIS(id_pais)
);

CREATE TABLE PAIS_ENCUESTA(
    id_pais INT,
    id_respuesta INT,
    FOREIGN KEY (id_pais) REFERENCES PAIS(id_pais),
    FOREIGN KEY (id_respuesta) REFERENCES RESPUESTA(id_respuesta)
);

CREATE TABLE INVENTO(
    id_invento INT AUTO_INCREMENT PRIMARY KEY,
    invento VARCHAR(50),
    anio INT,
    id_pais INT,
    FOREIGN KEY (id_pais) REFERENCES PAIS(id_pais)
);

CREATE TABLE INVENTOR(
    id_inventor INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    id_pais INT,
    FOREIGN KEY (id_pais) REFERENCES PAIS(id_pais)
);

CREATE TABLE INVENTOR_INVENTO(
    id_invento INT,
    id_inventor INT,
    FOREIGN KEY (id_invento) REFERENCES INVENTO(id_invento),
    FOREIGN KEY (id_inventor) REFERENCES INVENTOR(id_inventor)
);

CREATE TABLE PROFESIONAL(
    id_profesional INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    fecha_contratacion DATE,
    salario INT,
    comision INT,
    jefe VARCHAR(30)
);

CREATE TABLE AREA(
    id_area INT AUTO_INCREMENT PRIMARY KEY,
    area_investigacion VARCHAR(50),
    ranking INT
);

CREATE TABLE PROFESIONAL_INVENTO(
    id_invento INT,
    id_profesional INT,
    FOREIGN KEY (id_invento) REFERENCES INVENTO(id_invento),
    FOREIGN KEY (id_profesional) REFERENCES PROFESIONAL(id_profesional)
);

CREATE TABLE PROFESIONAL_AREA(
    id_area INT,
    id_profesional INT,
    FOREIGN KEY (id_area) REFERENCES AREA(id_area),
    FOREIGN KEY (id_profesional) REFERENCES PROFESIONAL(id_profesional)
);
CALL FOREIGN_KEY_REFERENCES_PROFESIONAL_id_profesional_();