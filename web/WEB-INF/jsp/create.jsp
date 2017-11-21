<%-- 
    Document   : create
    Created on : Apr 24, 2017, 1:08:03 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       
    </head>
    <body>
          <f:form action="create.htm"  modelAttribute="kupci">
            
            
             
             <h3 align="center"><font><strong>Ime kupca:<input type="text" name="ime" /></br> </br></strong></font></h3>
         <h3 align="center"><font><strong> Email kupca:<input type="text" name="email" /><br></br> </strong></font></h3>
         <h3 align="center"><font><strong>Adresa kupca:<input type="text" name="adresa" /></br> </br></strong></font></h3>
    <h3 align="center"><font<strong>Broj telefona kupca:<input type="text" name="brojTelefona" /></br> </br></strong></font></h3>
   <h3 align="center"><font><strong>ID Proizvoda:<input type="text" name="idproizvodi" /></br> </br></strong></font></h3>
     <h3 align="center"><font><strong>  <input type="submit" value="Insert"/></strong></font></h3>
<table align="center" cellpadding="5" cellspacing="5" border="1">
            
            
        </f:form>
    </body>
</html>
