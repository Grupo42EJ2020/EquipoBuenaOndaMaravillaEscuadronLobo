<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<IEnumerable<MVCLaboratorio.Models.Curso>>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Lista de Curso</title>
    <style type="text/css">
        .style2
        {
            background-color: #FFFF99;
        }
        .style5
        {
            width: 205px;
            height: 85px;
        }
        .style6
        {
            width: 221px;
            height: 199px;
            float: right;
        }
    </style>
</head>
<body>
    <p class="style2">
        <img alt="logo" class="style5" 
            src="../../Content/WhatsApp%20Image%202020-05-25%20at%201.30.21%20PM.png" /><br />
    </p>
    <fieldset><table>
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

    </table></fieldset>

    <p>
        <%: Html.ActionLink("Agregar", "CursoCreate") %>
    </p>
    <a href="/Home/Index">Regresar a la Pagina Principal</a>
    <p>
        &nbsp;</p>
    <img alt="logo" class="style6" src="../../Content/logo_size.png" />
</body>
</html>

