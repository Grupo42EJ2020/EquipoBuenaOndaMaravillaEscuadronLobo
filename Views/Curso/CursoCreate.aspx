﻿<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<MVCLaboratorio.Models.Curso>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>CursoCreate</title>
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
    <% using (Html.BeginForm()) {%>
        <%: Html.ValidationSummary(true) %>

        <fieldset>
            <legend>Crear Curso</legend>
            
            
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Descripcion) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Descripcion) %>
                <%: Html.ValidationMessageFor(model => model.Descripcion) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.IdEmpleado) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.IdEmpleado) %>
                <%: Html.ValidationMessageFor(model => model.IdEmpleado) %>
            </div>
            
            <p>
                <input type="submit" value="Agregar" />
            </p>
        </fieldset>

    <% } %>

    <div>
        <%: Html.ActionLink("Regresar", "Index") %>
    </div>

</body>
</html>

