<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Detalle de Estudiante</title>
</head>
<body>
    <h1>Detalle de Estudiante</h1>
    <p>ID: ${estudiante.id}</p>
    <p>Nombre: ${estudiante.nombre}</p>
    <p>Apellidos: ${estudiante.apellidos}</p>
    <p>Email: ${estudiante.email}</p>
    <p>Fecha de Nacimiento: ${estudiante.fechaNacimiento}</p>
    <a href="/estudiantes">Volver</a>
</body>
</html>
