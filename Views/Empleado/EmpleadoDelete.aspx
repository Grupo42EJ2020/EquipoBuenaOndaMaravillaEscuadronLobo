﻿<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<MVCLaboratorio.Models.Empleado>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>EmpleadoDelete</title>
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
    <h3>¿Estas seguro que quieres eliminar este empleado?</h3>
    <fieldset>
        <legend>Eliminar Empleado</legend>
        
        
        <div class="display-label">Nombre</div>
        <div class="display-field"><%: Model.Nombre %></div>
        
        <div class="display-label">Direccion</div>
        <div class="display-field"><%: Model.Direccion %></div>
        
    </fieldset>
    <% using (Html.BeginForm()) { %>
        <p>
		    <input type="submit" value="Eliminar" /> |
		    <%: Html.ActionLink("Regresar a la lista", "Index") %>
        </p>
    <% } %>

</body>
</html>

