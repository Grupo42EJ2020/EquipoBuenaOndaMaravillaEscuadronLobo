﻿<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<MVCLaboratorio.Models.Curso_Tema>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Curso_TemaDetails</title>
</head>
<body>
    <fieldset>
        <legend>Editar Curo_Tema</legend>
        
        
        <div class="display-label">idCurso</div>
        <div class="display-field"><%: Model.idCurso %></div>
        
        <div class="display-label">idTema</div>
        <div class="display-field"><%: Model.idTema %></div>
        
    </fieldset>
    <p>
        <%: Html.ActionLink("Editar", "Curso_TemaEdit", new {  id=Model.IdCT }) %> |
        <%: Html.ActionLink("Regresar", "Index") %>
    </p>

</body>
</html>

