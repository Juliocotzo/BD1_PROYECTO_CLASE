
DELIMITER //
CREATE PROCEDURE Prueba2()
BEGIN
	UPDATE `proyecto`.`REGION` SET `id_region1` = '1' WHERE (`id_region` = '6');
	UPDATE `proyecto`.`REGION` SET `id_region1` = '1' WHERE (`id_region` = '7');
	UPDATE `proyecto`.`REGION` SET `id_region1` = '1' WHERE (`id_region` = '8');
	UPDATE `proyecto`.`REGION` SET `id_region1` = '1' WHERE (`id_region` = '9');
	UPDATE `proyecto`.`REGION` SET `id_region1` = '2' WHERE (`id_region` = '10');
	UPDATE `proyecto`.`REGION` SET `id_region1` = '2' WHERE (`id_region` = '11');
	UPDATE `proyecto`.`REGION` SET `id_region1` = '2' WHERE (`id_region` = '12');
	UPDATE `proyecto`.`REGION` SET `id_region1` = '3' WHERE (`id_region` = '13');
	UPDATE `proyecto`.`REGION` SET `id_region1` = '3' WHERE (`id_region` = '14');
	UPDATE `proyecto`.`REGION` SET `id_region1` = '4' WHERE (`id_region` = '15');
	UPDATE `proyecto`.`REGION` SET `id_region1` = '4' WHERE (`id_region` = '16');
	UPDATE `proyecto`.`REGION` SET `id_region1` = '4' WHERE (`id_region` = '17');
	UPDATE `proyecto`.`REGION` SET `id_region1` = '17' WHERE (`id_region` = '18');
	UPDATE `proyecto`.`REGION` SET `id_region1` = '5' WHERE (`id_region` = '19');
	UPDATE `proyecto`.`REGION` SET `id_region1` = '5' WHERE (`id_region` = '20');
	UPDATE `proyecto`.`REGION` SET `id_region1` = '5' WHERE (`id_region` = '21');

END //
DELIMITER ;

CALL Prueba();


INSERT INTO `proyecto`.`PAIS` (`id_pais`, `nombre`, `capital`, `poblacion`, `area`, `id_region`) VALUES ('', 'Belgica', 'Bruselas', '11409077', '30528', '12');

ALTER TABLE RESPUESTA DROP COLUMN pais;


ALTER TABLE PROFESIONAL ADD jefe VARCHAR(30) AFTER comision;
UPDATE `proyecto`.`PROFESIONAL` SET `jefe` = 'Mecánica' WHERE (`id_profesional` = '2');
UPDATE `proyecto`.`PROFESIONAL` SET `jefe` = 'TODAS' WHERE (`id_profesional` = '6');
UPDATE `proyecto`.`PROFESIONAL` SET `jefe` = 'Matemática' WHERE (`id_profesional` = '7');
UPDATE `proyecto`.`PROFESIONAL` SET `jefe` = 'Biología' WHERE (`id_profesional` = '8');
UPDATE `proyecto`.`PROFESIONAL` SET `jefe` = 'Química' WHERE (`id_profesional` = '10');
UPDATE `proyecto`.`PROFESIONAL` SET `jefe` = 'Óptica' WHERE (`id_profesional` = '11');
UPDATE `proyecto`.`PROFESIONAL` SET `jefe` = 'Energía' WHERE (`id_profesional` = '12');
