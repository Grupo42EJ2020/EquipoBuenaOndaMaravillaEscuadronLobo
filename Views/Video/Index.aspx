﻿<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<IEnumerable<MVCLaboratorio.Models.Video>>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Index</title>
    <style type="text/css">
        .style1
        {
            width: 225px;
            height: 72px;
        }
        .style2
        {
            background-color: #FFFF99;
        }
    </style>
</head>
<body>
    <p class="style2">
        <img alt="" class="style1" src="../../Content/unnamed.jpg" /><br />
    </p>
   <fieldset> <table>
        <tr>
            <th></th>
            <th>
                IdVideo
            </th>
            <th>
                Nombre
            </th>
            
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td>
                <%: Html.ActionLink("Editar", "VideoEdit", new { id=item.IdVideo }) %> |
                <%: Html.ActionLink("Detalles", "VideoDetails", new { id=item.IdVideo })%> |
                <%: Html.ActionLink("Eliminar", "VideoDelete", new { id=item.IdVideo })%>
            </td>
            <td>
                <%: item.IdVideo %>
            </td>
            <td>
                <%: item.Nombre %>
            </td>
            
        </tr>
    
    <% } %>

    </table></fieldset>

    <p>
        <%: Html.ActionLink("Agregar Video", "VideoCreate") %>
    </p>
    <a href="/Home/Index">Regresar a la Pagina Principal</a>
</body>
</html>

