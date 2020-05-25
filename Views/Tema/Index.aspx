<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<IEnumerable<MVCLaboratorio.Models.Tema>>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Lista de Temas</title>
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
    </style>
</head>
<body>
    <p class="style2">
        <img alt="" class="style1" src="../../Content/unnamed.jpg" /><br />
    </p>
  <fieldset><table>
        <tr>
            <th></th>
            <th>
                IdTema
            </th>
            <th>
                Nombre
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td>
                <%: Html.ActionLink("Editar", "TemaEdit", new { id=item.IdTema }) %> |
                <%: Html.ActionLink("Detalles", "TemaDetails", new {  id=item.IdTema })%> |
                <%: Html.ActionLink("Eliminar", "TemaDelete", new {  id=item.IdTema })%>
            </td>
            <td>
                <%: item.IdTema %>
            </td>
            <td>
                <%: item.Nombre %>
            </td>
        </tr>
    
    <% } %>

    </table></fieldset>

    <p>
        <%: Html.ActionLink("Agregar", "TemaCreate") %>
    </p>
    <a href="/Home/Index">Regresar a la Pagina Principal</a>
</body>
</html>

