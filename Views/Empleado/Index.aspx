<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<IEnumerable<MVCLaboratorio.Models.Empleado>>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Index</title>
    <style type="text/css">
        .style2
        {
            background-color: #FFFF99;
        }
        .style1
        {
            width: 225px;
            height: 72px;
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
                IdEmpleado
            </th>
            <th>
                Nombre
            </th>
            <th>
                Direccion
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td>
                <%: Html.ActionLink("Editar", "EmpleadoEdit", new { id=item.IdEmpleado }) %> |
                <%: Html.ActionLink("Detalles", "EmpleadoDetails", new { id=item.IdEmpleado })%> |
                <%: Html.ActionLink("Eliminar", "EmpleadoDelete", new {  id=item.IdEmpleado })%>
            </td>
            <td>
                <%: item.IdEmpleado %>
            </td>
            <td>
                <%: item.Nombre %>
            </td>
            <td>
                <%: item.Direccion %>
            </td>
        </tr>
    
    <% } %>

    </table></fieldset>

    <p>
        <%: Html.ActionLink("Agregar", "EmpleadoCreate") %>
    </p>
    <a href="/Home/Index">Regresar a la Pagina Principal</a>
    <p>
        &nbsp;</p>
    <img alt="logo" class="style6" src="../../Content/logo_size.png" />
</body>
</html>

