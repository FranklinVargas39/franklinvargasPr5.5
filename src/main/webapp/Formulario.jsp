<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Formulario de Estudiante</title>
</head>
<body>
    <h1>Formulario de Estudiante</h1>
    <form action="/estudiantes${estudiante.id != null ? '/actualizar/' + estudiante.id : ''}" method="post">
        <input type="hidden" name="id" value="${estudiante.id}"/>
        <p>Nombre: <input type="text" name="nombre" value="${estudiante.nombre}"/></p>
        <p>Apellidos: <input type="text" name="apellidos" value="${estudiante.apellidos}"/></p>
        <p>Email: <input type="text" name="email" value="${estudiante.email}"/></p>
        <p>Fecha de Nacimiento: <input type="date" name="fechaNacimiento" value="${estudiante.fechaNacimiento}"/></p>
        <p><input type="submit" value="Guardar"/></p>
    </form>
    <a href="/estudiantes">Volver</a>
</body>
</html>
