<%-- 
    Document   : create1
    Created on : Apr 25, 2017, 1:03:44 PM
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
         <f:form action="create1.htm"  modelAttribute="proizvodi">
            
         
         <h3 align="center"><font>Naziv proizvoda:<input type="text" name="naziv" /></br> </br></strong></font></h3>
              <h3 align="center"><font>Opis proizvoda:<input type="text" name="opis" /></br> </br></strong></font></h3>
         <h3 align="center"><font><strong>Kolicina proizvoda:<input type="text" name="kolicina" /><br></br> </strong></font></h3>
         <h3 align="center"><font><strong>Cena proizvoda:<input type="text" name="cena" /></br> </br></strong></font></h3>
     <h3 align="center"><font><strong>  <input type="submit" value="Insert"/></strong></font></h3>
<table align="center" cellpadding="5" cellspacing="5" border="1">   
            
        </f:form>
    </body>
</html>

