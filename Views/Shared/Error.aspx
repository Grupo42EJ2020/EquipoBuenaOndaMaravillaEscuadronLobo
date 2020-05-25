<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Error</title>
    <style type="text/css">


        .style2
        {
            background-color: #FFFF99;
        }
        .style3
        {
            text-align: center;
            font-family: "Microsoft Sans Serif";
            font-size: 15pt;
            text-decoration: underline;
        }
        .style4
        {
            font-family: "Microsoft Sans Serif";
            font-size: 15pt;
        }
        .style5
        {
            text-align: center;
        }
        .style6
        {
            width: 318px;
            height: 182px;
        }
        .style7
        {
            width: 195px;
            height: 70px;
        }
        .style8
        {
            width: 318px;
            height: 182px;
            float: right;
        }
        </style>
</head>
<body>
    <p class="style2">
        <img alt="logo" class="style7" 
            src="../../Content/WhatsApp%20Image%202020-05-25%20at%201.30.21%20PM.png" /><br />
    </p>
    <p class="style3">
        Lo sentimos no se puede procesar su solicitud</p>
    <p class="style3">
        <img alt="error" class="style6" src="../../Content/error.png" /></p>
    <div class="style5">
        <span class="style4">

        <em><a href="/Home/Index">Regresar</a></em></span>
    </div>
    <p>
        &nbsp;</p>
    <img alt="logo" class="style8" src="../../Content/logo_size.png" />
</body>
</html>
