CREATE TABLE usuarios (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  nombre VARCHAR(64) NOT NULL,
  apellido  VARCHAR(64) NOT NULL,
  email VARCHAR(128) UNIQUE NOT NULL,
  fecha_nacimiento DATETIME NOT NULL,
  genero VARCHAR(10) NOT NULL
, apodo);

INSERT INTO usuarios
   ...>  (nombre, apellido, email, fecha_nacimiento, genero)
   ...>  VALUES
   ...>  ('Carlos', 'Ribero', 'carlos@yahoo.com', '1970-11-03', 'masculino');

SELECT * FROM usuarios;
id          nombre      apellido    email             fecha_nacimiento  genero    
----------  ----------  ----------  ----------------  ----------------  ----------
1           Carlos      Ribero      carlos@yahoo.com  1970-11-03        masculino 

INSERT INTO usuarios
   ...>  (nombre, apellido, email, fecha_nacimiento, genero)
   ...>  VALUES
   ...>  ('Jose', 'Sanchez', 'jjsanchez@hotmail.com', '1987-12-12', 'masculino');

SELECT * FROM usuarios;
id          nombre      apellido    email             fecha_nacimiento  genero    
----------  ----------  ----------  ----------------  ----------------  ----------
1           Carlos      Ribero      carlos@yahoo.com  1970-11-03        masculino 
2           Jose        Sanchez     jjsanchez@hotmai  1987-12-12        masculino 

ALTER TABLE usuarios
   ...> ADD apodo VARCHAR(64);

   .schema
CREATE TABLE usuarios (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  nombre VARCHAR(64) NOT NULL,
  apellido  VARCHAR(64) NOT NULL,
  email VARCHAR(128) UNIQUE NOT NULL,
  fecha_nacimiento DATETIME NOT NULL,
  genero VARCHAR(10) NOT NULL
, apodo VARCHAR(64));

UPDATE usuarios
   ...> SET apodo='Charly'
   ...> WHERE nombre = 'Carlos';

   select * from usuarios;
id          nombre      apellido    email             fecha_nacimiento  genero      apodo     
----------  ----------  ----------  ----------------  ----------------  ----------  ----------
1           Carlos      Ribero      carlos@yahoo.com  1970-11-03        masculino   Charly    
2           Jose        Sanchez     jjsanchez@hotmai  1987-12-12        masculino             
sqlite> update usuarios
   ...> set apodo='Jos'
   ...> where nombre ='Jose';
sqlite> select * from usuarios;
id          nombre      apellido    email             fecha_nacimiento  genero      apodo     
----------  ----------  ----------  ----------------  ----------------  ----------  ----------
1           Carlos      Ribero      carlos@yahoo.com  1970-11-03        masculino   Charly    
2           Jose        Sanchez     jjsanchez@hotmai  1987-12-12        masculino   Jos      
