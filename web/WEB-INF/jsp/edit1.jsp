<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
            <f:form action="update1.htm"  modelAttribute="proizvodi">
            <input type="hidden"  name="idproizvodi" value="${pro.idproizvodi}"/>
            <h3 align="center"><font><strong>   Naziv proizvoda:<input type="text" name="naziv" value="${pro.naziv}"/></br> </br></strong></font></h3>
            <h3 align="center"><font><strong>  Opis proizvoda:<input type="text" name="opis" value="${pro.opis}"/></br> </br></strong></font></h3>
            <h3 align="center"><font><strong>  Kolicina proizvoda:<input type="text" name="kolicina" value="${pro.kolicina}"/></br> </br></strong></font></h3>
            <h3 align="center"><font><strong>  Cena proizvoda:<input type="text" name="cena" value="${pro.cena}"/></br> </br></strong></font></h3>
            <h3 align="center"><font><strong>   <input type="submit" value="Save"/> </br></strong></font></h3>
            
            
        </f:form>
    
</html>