CREATE TABLE Usuarios (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    contrasena VARCHAR(100) NOT NULL,
    rol VARCHAR(50) NOT NULL
);

CREATE TABLE Conjuez (
    id_conjuez INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    telefono VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    dni INT,
    domicilio VARCHAR(100) NOT NULL,
    departamento_judicial VARCHAR(100) NOT NULL
);

CREATE TABLE ConjuezLegislador (
    id_conjuez_legislador INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    telefono VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    dni INT,
    despacho VARCHAR(100) NOT NULL,
    distrito VARCHAR(100) NOT NULL,
    periodo VARCHAR(100) NOT NULL
);

CREATE TABLE Informes (
    id_informe INT AUTO_INCREMENT PRIMARY KEY,
    numero_expediente INT,
    caratula_del_expediente VARCHAR(200) NOT NULL,
    fecha_denuncia DATETIME NOT NULL,
    magistrado_denunciado VARCHAR(200) NOT NULL,
    denunciante VARCHAR(200) NOT NULL,
    departamento_judicial VARCHAR(200) NOT NULL,
    etapa_del_proceso VARCHAR(200) NOT NULL,
    conjuez1 INT,
    conjuez2 INT,
    conjuez3 INT,
    conjuez4 INT,
    conjuez5 INT,
    conjuez_suplente1 INT,
    conjuez_suplente2 INT,
    conjuez_suplente3 INT,
    conjuez_legislador1 INT,
    conjuez_legislador2 INT,
    conjuez_legislador3 INT,
    conjuez_legislador4 INT,
    conjuez_legislador5 INT,
    conjuez_legislador_suplente1 INT,
    conjuez_legislador_suplente2 INT,
    conjuez_legislador_suplente3 INT,
    sintesis_de_hechos VARCHAR(200) NOT NULL,
    articulo26 VARCHAR(200) NOT NULL,
    id_usuario INT,
    FOREIGN KEY (conjuez1) REFERENCES Conjuez(id_conjuez),
    FOREIGN KEY (conjuez2) REFERENCES Conjuez(id_conjuez),
    FOREIGN KEY (conjuez3) REFERENCES Conjuez(id_conjuez),
    FOREIGN KEY (conjuez4) REFERENCES Conjuez(id_conjuez),
    FOREIGN KEY (conjuez5) REFERENCES Conjuez(id_conjuez),
    FOREIGN KEY (conjuez_suplente1) REFERENCES Conjuez(id_conjuez),
    FOREIGN KEY (conjuez_suplente2) REFERENCES Conjuez(id_conjuez),
    FOREIGN KEY (conjuez_suplente3) REFERENCES Conjuez(id_conjuez),
    FOREIGN KEY (conjuez_legislador1) REFERENCES ConjuezLegislador(id_conjuez_legislador),
    FOREIGN KEY (conjuez_legislador2) REFERENCES ConjuezLegislador(id_conjuez_legislador),
    FOREIGN KEY (conjuez_legislador3) REFERENCES ConjuezLegislador(id_conjuez_legislador),
    FOREIGN KEY (conjuez_legislador4) REFERENCES ConjuezLegislador(id_conjuez_legislador),
    FOREIGN KEY (conjuez_legislador5) REFERENCES ConjuezLegislador(id_conjuez_legislador),
    FOREIGN KEY (conjuez_legislador_suplente1) REFERENCES ConjuezLegislador(id_conjuez_legislador),
    FOREIGN KEY (conjuez_legislador_suplente2) REFERENCES ConjuezLegislador(id_conjuez_legislador),
    FOREIGN KEY (conjuez_legislador_suplente3) REFERENCES ConjuezLegislador(id_conjuez_legislador),
    FOREIGN KEY (id_usuario) REFERENCES Usuarios(id_usuario)
);

CREATE TABLE MagistradosDenunciados (
    id_magistrado INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    telefono VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    dni INT,
    domicilio VARCHAR(100) NOT NULL,
    defensor VARCHAR(100) NOT NULL
);

CREATE TABLE Denunciantes (
    id_denunciante INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    telefono VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    dni INT,
    domicilio VARCHAR(100) NOT NULL,
    patrocinante VARCHAR(100) NOT NULL
);

CREATE TABLE DepartamentoJudicial (
    id_departamento_judicial INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    localidades VARCHAR(400) NOT NULL,
    fiscal_general VARCHAR(100) NOT NULL
);

CREATE TABLE Alertas (
    id_alerta INT AUTO_INCREMENT PRIMARY KEY,
    mensaje TEXT NOT NULL,
    fecha DATETIME NOT NULL,
    id_usuario INT,
    FOREIGN KEY (id_usuario) REFERENCES Usuarios(id_usuario)
);
