INSERT INTO Usuarios (nombre, contrasena, rol) VALUES ('Juan Perez', 'password123', 'admin');

INSERT INTO Informes (numero_expediente, caratula_del_expediente, fecha_denuncia, magistrado_denunciado, denunciante, departamento_judicial, etapa_del_proceso, conjuez1, conjuez2, conjuez3, conjuez4, conjuez5, conjuez_suplente1, conjuez_suplente2, conjuez_suplente3, conjuez_legislador1, conjuez_legislador2, conjuez_legislador3, conjuez_legislador4, conjuez_legislador5, conjuez_legislador_suplente1, conjuez_legislador_suplente2, conjuez_legislador_suplente3, sintesis_de_hechos, articulo26, id_usuario) 
VALUES (12345, 'Caratula Ejemplo', '2024-05-18 10:30:00', 'Magistrado X', 'Denunciante Y', 'Departamento Judicial Z', 'Etapa A', 1, 2, 3, 4, 5, 6, 7, 8, 1, 2, 3, 4, 5, 6, 7, 8, 'Sintesis de los hechos', 'Articulo 26 texto', 1);

INSERT INTO MagistradosDenunciados (nombre, telefono, email, dni, domicilio, defensor) VALUES ('Magistrado A', '123456789', 'magistrado@example.com', 12345678, 'Calle Falsa 123', 'Defensor B');

INSERT INTO Denunciantes (nombre, telefono, email, dni, domicilio, patrocinante) VALUES ('Denunciante A', '123456789', 'denunciante@example.com', 12345678, 'Calle Real 456', 'Patrocinante B');

INSERT INTO Conjuez (nombre, telefono, email, dni, domicilio, departamento_judicial) VALUES ('Conjuez A', '123456789', 'conjuez@example.com', 12345678, 'Calle Real 789', 'Departamento Judicial X');

INSERT INTO ConjuezLegislador (nombre, telefono, email, dni, despacho, distrito, periodo) VALUES ('Legislador A', '123456789', 'legislador@example.com', 12345678, 'Despacho 1', 'Distrito 1', '2024-2028');

INSERT INTO DepartamentoJudicial (nombre, localidades, fiscal_general) VALUES ('Departamento A', 'Localidad 1, Localidad 2', 'Fiscal General A');

INSERT INTO Alertas (mensaje, fecha, id_usuario) VALUES ('Mensaje de alerta', '2024-05-18 12:00:00', 1);