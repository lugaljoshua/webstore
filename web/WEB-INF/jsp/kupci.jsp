<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       
    </head>

    <body>
       
       <h2 align="center"><font><strong>LISTA KUPACA</strong></font></h2>
     <h3 align="center"><font><strong> <a href="redirectCreate.htm"><input type="button" onclick="redirectCreate.htm" value="UNESITE NOVOG KUPCA"></a></strong></font></h3>

<table align="center" cellpadding="5" cellspacing="5" border="1">
            
            <tr bgcolor="#33CCCC">
                <th>ID KUPCI</th>
                <th>IME</th>
                <th>EMAIL</th>
                <th>ADRESA</th>
                <th>BROJ TELEFONA</th>
                <th>ID PROIZVODI</th>
                 <th>OPCIJE</th>
                
            </tr> 
            
            
           
            
            <c:forEach items="${lst}" var="ku">
                <tr>
                    <td>${ku.idkupci}</td>   
                    <td>${ku.ime}</td>
                    <td>${ku.email}</td>
                    <td>${ku.adresa}</td>
                    <td>${ku.brojTelefona}</td>
                    <td>${ku.idproizvodi}</td>
                    <td>
                        
             <a href="edit.htm?id=${ku.idkupci}"> Edit</a>|
             <a href="remove.htm?id=${ku.idkupci}" onclick="return confirm('Da li ste sigurni?')">Remove</a>
                   </td>
                    
                </tr> 
                
                
                
            </c:forEach>
                
             
                <br>       
       <h3 align="center"><font><strong><a  href="${pageContext.request.contextPath}/index.htm">go back</a></strong></font></h3>         
                
    </body>
</html>

