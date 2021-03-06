
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Negocio.Cliente"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/sombrasH2.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="#">Campus party</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="index.jsp">Inicio <span class="sr-only">(current)</span></a>
                    </li>                 
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Menu
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="campusero.jsp">Registrar Campuseros</a> 
                            <a class="dropdown-item" href="ciudad.jsp">Registrar Ciudad</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="pabellon.jsp">Registrar Pabellon</a>  
                            <a class="dropdown-item" href="team.jsp">Registrar Equipo</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="consulta.jsp">Consultar</a>
                        </div>
                    </li>
                </ul>
                <form class="form-inline my-2 my-lg-0">
                    <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                </form>
            </div>
        </nav>
        <br><br><br><br>
        <H2>SISTEMA DE CREACION DE PABELLONES</H2>
        <br><br><br>

        <%

            String nombrepabellon = "", tematica = "", ubicacion = "";
            int area = 0, capacidad = 0;

            boolean respuesta = false;

            if (request.getParameter("btnIns") != null) {

                Cliente cli = new Cliente();

                nombrepabellon = request.getParameter("txtnombrepabellon");
                tematica = request.getParameter("txttematica");
                ubicacion = request.getParameter("txtubicacion");
                area = Integer.parseInt(request.getParameter("txtarea"));
                capacidad = Integer.parseInt(request.getParameter("txtcapacidad"));

                cli.setNombrepabellon(nombrepabellon);
                cli.setTematica(tematica);
                cli.setUbicacion(ubicacion);
                cli.setArea(area);
                cli.setCapacidad(capacidad);

                respuesta = cli.InsertarPabellon();

            }

        %>

        <form action="pabellon.jsp" method="get">
            <div class="container"> 
                <center>

                    <table class="table table-hover">
                        
                        <tr>
                            <td width="50%">Nombre del pabellón</td>
                            <td width="50%"><INPUT TYPE=TEXT NAME=txtnombrepabellon value='<%=nombrepabellon%>'></td>
                        </tr>
                        <tr>
                            <td width="50%">Temática del pabellón</td>
                            <td width="50%"><INPUT TYPE=TEXT NAME=txttematica value='<%=tematica%>'></td>
                        </tr>
                        <tr>
                            <td width="50%">Ubicación del pabellón</td>
                            <td width="50%"><INPUT TYPE=TEXT NAME=txtubicacion value='<%=ubicacion%>'></td>
                        </tr>
                        <tr>
                            <td width="50%">Area del pabellón</td>
                            <td width="50%"><INPUT TYPE=TEXT NAME=txtarea value='<%=area%>'></td>
                        </tr>
                        <tr>
                            <td width="50%">Capacidad máxima</td>
                            <td width="50%"><INPUT TYPE=TEXT NAME=txtcapacidad value='<%=capacidad%>'></td>
                        </tr>
                        </thead>
                    </table>   

                    <%
                        if ((respuesta == false) && (request.getParameter("btnIns") != null)) {

                    %>

                    <H1> No se ingresó ningun registro </H1>

                    <% } else {

                        if ((respuesta == true) && (request.getParameter("btnIns") != null)) {
                    %>

                    <H1> Ingreso exitoso </H1>

                    <% }%>
                    <% }%>
                    <BR><BR>

                    <BR><BR>
                    <INPUT TYPE=SUBMIT style="width:100px; height:50px" NAME=btnIns VALUE=Insertar >
                </center>

                <BR><BR><BR><BR>
               <h3><a href=index.jsp> Menú Principal</a></h3>
            </div>
        </form> 
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
    </body>
</html>
