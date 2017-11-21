<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <f:form action="update.htm"  modelAttribute="kupci">
            <input type="hidden"  name="idkupci" value="${kup.idkupci}"/>
      <h3 align="center"><font><strong>Ime kupca:<input type="text" name="ime" value="${kup.ime}"/></br> </br></strong></font></h3>
      <h3 align="center"><font><strong>Email kupca:<input type="text" name="email" value="${kup.email}"/></br> </br></strong></font></h3>
      <h3 align="center"><font><strong>Adresa kupca:<input type="text" name="adresa" value="${kup.adresa}"/></br> </br></strong></font></h3>
      <h3 align="center"><font><strong>Broj telefona kupca:<input type="text" name="brojTelefona" value="${kup.brojTelefona}"/></br> </br></strong></font></h3>
       <h3 align="center"><font><strong>ID Proizvoda:<input type="text" name="idproizvodi" value="${kup.idproizvodi}"/></br> </br></strong></font></h3>
   <h3 align="center"><font><strong><input type="submit" value="Save"/></br></strong></font></h3>
            
            
        </f:form>
    </body>
</html>
