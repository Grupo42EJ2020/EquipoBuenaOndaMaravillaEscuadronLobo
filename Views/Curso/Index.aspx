<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<IEnumerable<MVCLaboratorio.Models.Curso>>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Index</title>
</head>
<body>
    <table>
        <tr>
            <th></th>
            <th>
                IdCurso
            </th>
            <th>
                IdCurso
            </th>
            <th>
                IdVideo
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td>
                <%: Html.ActionLink("Editar", "Curso", new { id=item.IdCurso }) %> |
                <%: Html.ActionLink("Detalles", "Curso", new {  id=item.IdCurso  })%> |
                <%: Html.ActionLink("Eliminar", "Curso", new {  id=item.IdCurso  })%>
            </td>
            <td>
                <%: item.IdCurso %>
            </td>
            <td>
                <%: item.Descripcion %>
            </td>
            <td>
                <%: item.Empleado %>
            </td>
        </tr>
    
    <% } %>

    </table>

    <p>
        <%: Html.ActionLink("Agregar", "CursoCreate")%>
    </p>
    <a href="/Home/Index">Regresar a la Pagina Principal</a>
</body>
</html>