﻿<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<MVCLaboratorio.Models.Tema>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>TemaDetails</title>
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
    <fieldset>
        <legend>Detalles del Tema</legend>
        
        <div class="display-label">IdTema</div>
        <div class="display-field"><%: Model.IdTema %></div>
        
        <div class="display-label">Nombre</div>
        <div class="display-field"><%: Model.Nombre %></div>
        
    </fieldset>
    <p>
        <%: Html.ActionLink("Editar", "TemaEdit", new { id=Model.IdTema }) %> |
        <%: Html.ActionLink("Regresar ", "Index") %>
    </p>

    <img alt="logo" class="style6" src="../../Content/logo_size.png" />

</body>
</html>

