-- consulta entre la tabla usuario y la tabla reserva, me dice el nombre y el estado de la reserva.--
select usuario. NOMBRE, reserva. ESTADO FROM usuario JOIN reserva ON usuario.ID_USUARIO = reserva.ID_USUARIO;
-- consulta entre la tabla usuario y la tabla reserva, la consulta es el nombre de el usuario y la cantidad de personas--
SELECT usuario.NOMBRE,reserva.CANTIDAD_PERSONAS FROM usuario JOIN reserva ON usuario.ID_USUARIO = reserva.ID_USUARIO;
--CONSULTA ENTRE 3 TABLAS, USUARIO,TELEFONO,RESEÑA.
SELECT usuario.NOMBRE,telefono.NUMERO,reseña.COMENTARIO FROM usuario JOIN telefono ON usuario.ID_USUARIO = telefono.ID_USUARIO JOIN reseña ON usuario.ID_USUARIO = reseña.ID_USUARIO;
--consulta entre 3 tablas, usuario,usuario_rol,rol.
SELECT usuario.NOMBRE,usuario_rol.id_rol,rol.nombre FROM usuario JOIN usuario_rol on usuario.ID_USUARIO = usuario_rol.id_usuario JOIN rol ON usuario_rol.id_rol = rol.id_rol;

SELECT usuario.NOMBRE,reserva.CANTIDAD_PERSONAS,mesa.ZONA 
FROM usuario
JOIN reserva ON usuario.ID_USUARIO = reserva.ID_USUARIO
JOIN mesa ON reserva.ID_RESERVA = mesa.ID_MESA;