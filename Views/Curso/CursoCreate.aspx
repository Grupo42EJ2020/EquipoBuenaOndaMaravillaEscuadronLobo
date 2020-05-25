<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<MVCLaboratorio.Models.Curso>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>CursoCreate</title>
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

    <img alt="logo" class="style6" src="../../Content/logo_size.png" />

</body>
</html>

