
<%

    int participanteCod = (Integer) request.getAttribute("participantecod");

%>

<%@page import="trabalho.ufjf.dcc192.Evento"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ver Evento</title>
        <%@include file ="jspf/cabecalho.jspf"%>
    </head>
    <body>
        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <ul class="nav navbar-nav">
                    <li><a href="cadastrar-evento.html?participantecod=<%=participanteCod%>">Cadastrar evento</a></li>
                    <li><a href="ver-eventos.html?participantecod=<%=participanteCod%>">Ver evento</a></li>
                    <li><a href="index.html">Sair</a></li>
                </ul>
            </div>
        </nav>
        <div class="container">
            <h1>Gerenciar Evento</h1>

            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>Evento</th>
                        <th>Estado</th>
                        <th>Data do Sorteio</th>
                        <th>Data do Evento</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        List<Evento> eventos = (List<Evento>) request.getAttribute("eventos");
                        for (int i = 0; i < eventos.size(); i++) {
                    %>
                    <tr>

                        <td> <a href="permissao-sorteio.html?eventocod=<%=eventos.get(i).getEventoCod()%>&participantecod=<%=participanteCod%>"><%= eventos.get(i).getEventoNome()%> </a></td>
                        <% if (eventos.get(i).getSituacao() == 0) {
                        %><td>
                            <b> SORTEAR</b>
                            <%
                            } else {
                            %> 

                        <td> <b> SORTEADO</b>
                            <%
                                }
                            %> 
                        </td>
                        <td><%= eventos.get(i).getDataSorteio()%> </td>
                        <td><%= eventos.get(i).getDataEvento()%> </td>
                    </tr>

                    <%
                        }
                    %>
                </tbody>
            </table>
            
            <a href="cadastrar-evento.html?participantecod=<%=participanteCod%>" class="btn btn-primary btn-lg">Cadastrar Eventos</a>
            </div>
        <br/>
    </body>
    <%@include file ="jspf/rodape.jspf"%>
</html>