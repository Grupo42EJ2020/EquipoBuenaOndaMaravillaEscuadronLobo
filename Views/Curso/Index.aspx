<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<IEnumerable<MVCLaboratorio.Models.Curso>>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Lista de Curso</title>
</head>
<body>
    <table>
        <tr>
            <th></th>
            <th>
                IdCurso
            </th>
            <th>
                Descripcion
            </th>
            <th>
                IdEmpleado
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td>
                <%: Html.ActionLink("Editar", "CursoEdit", new { id=item.IdCurso }) %> |
                <%: Html.ActionLink("Detalles", "CursoDetails", new { id=item.IdCurso })%> |
                <%: Html.ActionLink("Eliminar", "CursoDelete", new {  id=item.IdCurso })%>
            </td>
            <td>
                <%: item.IdCurso %>
            </td>
            <td>
                <%: item.Descripcion %>
            </td>
            <td>
                <%: item.IdEmpleado %>
            </td>
        </tr>
    
    <% } %>

    </table>

    <p>
        <%: Html.ActionLink("Agregar", "CursoCreate") %>
    </p>
    <a href="/Home/Index">Regresar a la Pagina Principal</a>
</body>
</html>

