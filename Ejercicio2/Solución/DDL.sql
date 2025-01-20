/*SENTENCIAS DDL:*/

/* Creamos la base de datos */

/*CREATE DATABASE labdevanolivarelaveintemilla;*/

/* Creamos las tablas */

-- Table: departamento

-- DROP TABLE IF EXISTS departamento;

CREATE TABLE IF NOT EXISTS departamento
(
    nombred character varying(100) NOT NULL,
    CONSTRAINT departamento_pkey PRIMARY KEY (nombred)
);

-- Table: ciudad

-- DROP TABLE IF EXISTS ciudad;

CREATE TABLE IF NOT EXISTS ciudad
(
    nombred character varying(100) NOT NULL,
    nombrec character varying(100) NOT NULL,
    CONSTRAINT ciudad_pkey PRIMARY KEY (nombred, nombrec),
    CONSTRAINT fk_nombred FOREIGN KEY (nombred)
        REFERENCES departamento (nombred) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE NO ACTION
);

-- Table: empresa

-- DROP TABLE IF EXISTS empresa;

CREATE TABLE IF NOT EXISTS empresa
(
    rut character varying(12) NOT NULL,
    razonsocial character varying(100) NOT NULL,
    CONSTRAINT empresa_pkey PRIMARY KEY (rut)
);

-- Table: cliente

-- DROP TABLE IF EXISTS cliente;

CREATE TABLE IF NOT EXISTS cliente
(
    rutcliente character varying(12) NOT NULL,
    numero integer NOT NULL,
    calle character varying(100) NOT NULL,
    contrasena character varying(100) NOT NULL,
    nombrec character varying(100) NOT NULL,
    nombred character varying(100) NOT NULL,
    CONSTRAINT cliente_pkey PRIMARY KEY (rutcliente),
    CONSTRAINT fk_nombrecnombred FOREIGN KEY (nombrec, nombred)
        REFERENCES ciudad (nombrec, nombred) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT fk_rutcliente FOREIGN KEY (rutcliente)
        REFERENCES empresa (rut) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
        NOT VALID
);

-- Table: emailcliente

-- DROP TABLE IF EXISTS emailcliente;

CREATE TABLE IF NOT EXISTS emailcliente
(
    email character varying(100) NOT NULL,
    rutcliente character varying(12) NOT NULL,
    CONSTRAINT emailcliente_pkey PRIMARY KEY (email),
    CONSTRAINT fk_rutcliente FOREIGN KEY (rutcliente)
        REFERENCES cliente (rutcliente) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
);

-- Table: flete

-- DROP TABLE IF EXISTS flete;

CREATE TABLE IF NOT EXISTS flete
(
    rutflete character varying(12) NOT NULL,
    celular character varying(9) NOT NULL,
    CONSTRAINT flete_pkey PRIMARY KEY (rutflete),
    CONSTRAINT fk_rutflete FOREIGN KEY (rutflete)
        REFERENCES empresa (rut) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
);

-- Table: pedido

-- DROP TABLE IF EXISTS pedido;

CREATE TABLE IF NOT EXISTS pedido
(
    idpedido character varying(100) NOT NULL,
    rutflete character varying(12),
    rutcliente character varying(12) NOT NULL,
    CONSTRAINT pedido_pkey PRIMARY KEY (idpedido),
    CONSTRAINT fk_rutcliente FOREIGN KEY (rutcliente)
        REFERENCES cliente (rutcliente) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE NO ACTION,
    CONSTRAINT fk_rutflete FOREIGN KEY (rutflete)
        REFERENCES flete (rutflete) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE NO ACTION
);

-- Table: estado

-- DROP TABLE IF EXISTS estado;

CREATE TABLE IF NOT EXISTS estado
(
    nombreestado character varying(20) NOT NULL,
    CONSTRAINT estado_pkey PRIMARY KEY (nombreestado)
);


-- Table: estado_pedido

-- DROP TABLE IF EXISTS estado_pedido;

CREATE TABLE IF NOT EXISTS estado_pedido
(
    idpedido character varying(100) NOT NULL,
    nombreestado character varying(100) NOT NULL,
    fecha date NOT NULL,
    CONSTRAINT estado_pedido_pkey PRIMARY KEY (idpedido, nombreestado),
    CONSTRAINT fk_idpedido FOREIGN KEY (idpedido)
        REFERENCES pedido (idpedido) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    CONSTRAINT fk_nombreestado FOREIGN KEY (nombreestado)
        REFERENCES estado (nombreestado) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE NO ACTION
);


-- Table: personas_de_contacto

-- DROP TABLE IF EXISTS personas_de_contacto;

CREATE TABLE IF NOT EXISTS personas_de_contacto
(
    ci character varying(8) NOT NULL,
    CONSTRAINT personas_de_contacto_pkey PRIMARY KEY (ci)
);


-- Table: personas_de_contacto_celular

-- DROP TABLE IF EXISTS personas_de_contacto_celular;

CREATE TABLE IF NOT EXISTS personas_de_contacto_celular
(
    ci character varying(8) NOT NULL,
    celular character varying(9) NOT NULL,
    CONSTRAINT personas_de_contacto_celular_pkey PRIMARY KEY (ci,celular),
    CONSTRAINT fk_ci FOREIGN KEY (ci)
        REFERENCES personas_de_contacto (ci) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
);


-- Table: personas_de_contacto_correo

-- DROP TABLE IF EXISTS personas_de_contacto_correo;

CREATE TABLE IF NOT EXISTS personas_de_contacto_correo
(
    ci character varying(8) NOT NULL,
    correo character varying(100) NOT NULL,
    CONSTRAINT personas_de_contacto_correo_pkey PRIMARY KEY (ci,correo),
    CONSTRAINT fk_ci FOREIGN KEY (ci)
        REFERENCES personas_de_contacto (ci) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
);


-- Table: empresa_personas_de_contacto

-- DROP TABLE IF EXISTS empresa_personas_de_contacto;

CREATE TABLE IF NOT EXISTS empresa_personas_de_contacto
(
    ci character varying(8) NOT NULL,
    rut character varying(12) NOT NULL,
    CONSTRAINT empresa_personas_de_contacto_pkey PRIMARY KEY (rut, ci),
    CONSTRAINT fk_ci FOREIGN KEY (ci)
        REFERENCES personas_de_contacto (ci) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    CONSTRAINT fk_rut FOREIGN KEY (rut)
        REFERENCES empresa (rut) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
);


-- Table: producto

-- DROP TABLE IF EXISTS producto;

CREATE TABLE IF NOT EXISTS producto
(
    codigop character varying(100) NOT NULL,
    stock integer NOT NULL,
    descripcion character varying(100) NOT NULL,
    precio_unitario integer NOT NULL,
    unidad_de_medida character varying(100) NOT NULL,
    peso integer NOT NULL,
    CONSTRAINT producto_pkey PRIMARY KEY (codigop)
);


-- Table: articulo

-- DROP TABLE IF EXISTS articulo;

CREATE TABLE IF NOT EXISTS articulo
(
    idarticulo character varying(100) NOT NULL,
    idpedido character varying(100) NOT NULL,
    codigop character varying(100) NOT NULL,
    cantidad integer NOT NULL,
    precioarticulo integer NOT NULL,
    CONSTRAINT articulo_pkey PRIMARY KEY (idarticulo, idpedido),
    CONSTRAINT fk_codigop FOREIGN KEY (codigop)
        REFERENCES producto (codigop) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT fk_idpedido FOREIGN KEY (idpedido)
        REFERENCES pedido (idpedido) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
);


-- Table: fotografia

-- DROP TABLE IF EXISTS fotografia;

CREATE TABLE IF NOT EXISTS fotografia
(
    idfoto character varying(100) NOT NULL,
    codigop character varying(100) NOT NULL,
    contenido character varying(100) NOT NULL,
    CONSTRAINT fotografia_pkey PRIMARY KEY (idfoto, codigop),
    CONSTRAINT fk_codigop FOREIGN KEY (codigop)
        REFERENCES producto (codigop) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
);


-- Table: codbar_producto

-- DROP TABLE IF EXISTS codbar_producto;

CREATE TABLE IF NOT EXISTS codbar_producto
(
    codbar character varying(100) NOT NULL,
    codigop character varying(100) NOT NULL,
    CONSTRAINT codbar_producto_pkey PRIMARY KEY (codbar),
    CONSTRAINT codigop FOREIGN KEY (codigop)
        REFERENCES producto (codigop) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
);



/*g*/


/*Vista*/

CREATE VIEW kpi_vista AS
SELECT AVG(kpi) AS promedio_kpi                                                                               
FROM (
  SELECT ep.idpedido, ((MAX(ep.fecha)) - (MIN(ep.fecha))) AS kpi
  FROM estado_pedido ep
  WHERE ep.idpedido IN (
	  SELECT idpedido FROM estado_pedido 
	  WHERE nombreestado='terminado'
      ) AND ep.idpedido IN (
		  SELECT idpedido FROM estado_pedido 
		  WHERE nombreestado='pendiente' AND fecha BETWEEN '1-1-2022' AND '1-1-2023'
	  )
  GROUP BY ep.idpedido
) AS pedidokpi;
