<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Detalles del Empleado</title>
</head>
<body>
    <fieldset>
        <legend>Informacion del Empleado</legend>
        
        
        <div class="display-label">Nombre</div>
        <div class="display-field"><%: Model.Nombre %></div>
        
        <div class="display-label">IdEmpleado</div>
        <div class="display-field"><%: Model.IdEmpleado %></div>
        
        <div class="display-label">Direccion</div>
        <div class="display-field"><%: String.Format("{0:g}", Model.Direccion) %></div>
        
    </fieldset>
    <p>
        <%: Html.ActionLink("Editar", "EmpleadoEdit", new {  id=Model.IdEmpleado }) %> |
        <%: Html.ActionLink("Regresar a la lista", "/Empleado/Index") %>
    </p>

</body>
</html>

