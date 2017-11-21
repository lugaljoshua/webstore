<%-- 
    Document   : cart
    Created on : May 6, 2017, 12:10:12 AM
    Author     : User
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cart information</title>
    </head>
    <body>
        <h2 align="center"><font><strong>SHOPPING CART</strong></font></h2> 
        
        <table align="center" cellpadding="5" cellspacing="5" border="1">
            <tr bgcolor="#33CCCC">
                <th>OPCIJE</th>
                <th>ID PROIZVODA</th>
                <th>NAZIV</th>
                <th>KOLICINA</th>
                <th>CENA</th>
                <th>UKUPNO</th>
            </tr>  
            <c:set var="s" value="0" ></c:set>
            <c:forEach var="it" items="${sessionScope.cart}" >
                 <c:set var="s" value="${s+it.kolicina*it.proizvodi.cena}" ></c:set>
                <tr>
                    <td align="center"><a  href="${pageContext.request.contextPath}/shoppingcart/delete/${it.proizvodi.idproizvodi}.htm">Delete</a></td>
                    <td>${it.proizvodi.idproizvodi}</td> 
                    <td>${it.proizvodi.naziv}</td>
                     <td>${it.kolicina}</td>  
                     <td>${it.proizvodi.cena} dinara</td>
                     <td>${it.kolicina*it.proizvodi.cena} dinara</td>
                </tr>
                
                
                
            </c:forEach>
                <tr>
                    
                    <td colspan="5" align="right">TOTAL:</td>
                    <td>${s} dinara</td>
                </tr>
        </table>
        <br>
          <h3 align="center"><font><strong><a  href="${pageContext.request.contextPath}/proizvodi1/all1.htm">Continue Shopping...</a></strong></font></h3>
    </body>
</html>
