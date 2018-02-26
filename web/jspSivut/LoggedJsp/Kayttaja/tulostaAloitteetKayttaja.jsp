<%-- 
    Document   : tulostaAloitteetKayttaja
    Created on : 8.12.2017, 11:46:30
    Author     : s1601382
--%>

<%@page import="Tietovarastopakkaus.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>
        <style> 

            body {
                background-image: url("spagettikissa.jpg");
                background-size: cover;
                color: black;
            }
            .table {
                background: rgba(255, 255, 255, 0.7) !important;
                border: 1px;
                text-align: center;
            }
            .thAloiteID {
                width: 5%;
            }
            
            .thNimi {
                width: 15%;
            }
            
            .thKuvaus {
                width: 50%;
            }
            
            .thPVM {
                width: 10%;
            }
            
            .thKayttajaID {
                width: 5%;
            }
            
            .thMuokkaa {
                width: 5%
            }
            
            .tdKuvaus {
                text-align: left !important;
            }
            
            .tdNimi {
                text-align: left !important;
            }

        </style>
        <title>Aloitteiden haku</title>
        <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
    </head>
    <body>
        <%
            Tietovarasto tietovarasto = new Tietovarasto();
        %>
        <div class="container">
            <h1>Kaikki aloitteet</h1>
            <div class="table-responsive">
                <table class="table table-striped" border="1">
                    <thead class="thead-dark">
                        <tr>
                            <th class="th thAloiteID">ID</th>
                            <th class="th thNimi">Aloite</th>
                            <th class="th thKuvaus">Kuvaus</th>
                            <th class="th thPVM">pvm</th>
                            <th class="th thKayttajaID">KäyttäjäID</th>
                            <th class="th thMuokkaa">Muokkaa</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            for (Aloite aloite : tietovarasto.haeKaikkiAloitteet()) {
                        %>
                        <tr>

                            <td><%= aloite.getAloiteID()%></td>
                            <td class="tdNimi"><%= aloite.getAloitenimi()%></td>
                            <td class="tdKuvaus"><%= aloite.getAloitekuvaus()%></td>
                            <td><%= aloite.getPvm()%></td>
                            <td><%= aloite.getKayttajaID()%></td>
                            <td>
                                <form name="lisays" action='muokkaaAloitetta.jsp?aloiteID=<%=aloite.getAloiteID()%>&aloitenimi=<%=aloite.getAloitenimi()%>&aloitekuvaus=<%=aloite.getAloitekuvaus()%>' method="post">
                                    <input class="btn btn-warning muokkaa-btn" type="submit" value=">" name="muokkaa">
                                </form>
                            </td>
                        </tr>
                        <%}%>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>