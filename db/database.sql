CREATE DATABASE tienda;

USE tienda;

/*
  usuarios.permission:
  0 = cliente
  1 = administrador
*/

CREATE TABLE usuarios(
  id int not null primary key AUTO_INCREMENT,
  nombre varchar(200) not null,
  usuario varchar(200) not null,
  correo varchar(200) not null,
  direccion varchar(200) not null,
  password varchar(200) not null,
  permission int not null
);

CREATE TABLE productos(
  id int not null primary key AUTO_INCREMENT,
  nombre varchar(200) not null,
  categoria varchar(200) not null,
  cantidad int not null,
  precio float not null,
  ruta_imagen text not null
);
CREATE TABLE categoria (
  id int not null primary key AUTO_INCREMENT,
  nombre varchar(200) not null 
);
CREATE TABLE ventas (
  id int not null primary key AUTO_INCREMENT,
  fecha datetime not null,
  cliente varchar(200) not null,
  productos text not null,
  estado int not null
);

-- ventas
--   0 = Pendiente
--   1 = Entregada
--   2 = Rechazada

INSERT INTO usuarios
  (nombre, usuario, correo, direccion, password, permission)
VALUES
  ('ADMIN', 'admin', 'admin@admin.net', 'Cerro de Pasco', '$2y$10$zfuynjriaQl9vP3/NuHfoOiW.c7iIUyvXPHDzzUorsktsqWR72dRG', 1);

INSERT INTO productos 
  (nombre, categoria, cantidad, precio, ruta_imagen) 
VALUES 
  ('Yogurt', 'Lacteos', 15, 20, 'assets/img/img-yogurt.jpg'), 
  ('Leche','Lacteos',15,20,'assets/img/img-leche.jpg'),
  ('Galleta', 'Dulces',20,20,'assets/img/img-galleta.jpg');
  
INSERT INTO categoria (nombre) VALUES('Dulces'),('Lacteos');