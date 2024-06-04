<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Lista de Estudiantes</title>
</head>
<body>
    <h1>Lista de Estudiantes</h1>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Nombre</th>
            <th>Apellidos</th>
            <th>Email</th>
            <th>Fecha de Nacimiento</th>
            <th>Acciones</th>
        </tr>
        <c:forEach var="estudiante" items="${estudiantes}">
            <tr>
                <td>${estudiante.id}</td>
                <td>${estudiante.nombre}</td>
                <td>${estudiante.apellidos}</td>
                <td>${estudiante.email}</td>
                <td>${estudiante.fechaNacimiento}</td>
                <td>
                    <a href="/estudiantes/${estudiante.id}">Ver</a>
                    <a href="/estudiantes/editar/${estudiante.id}">Editar</a>
                    <a href="/estudiantes/eliminar/${estudiante.id}">Eliminar</a>
                </td>
            </tr>
        </c:forEach>
    </table>
    <a href="/estudiantes/nuevo">Nuevo Estudiante</a>
</body>
</html>

