<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       
    </head>

    <body>
         <h2 align="center"><font><strong>LISTA PROIZVODA</strong></font></h2>
   <h3 align="center"><font><strong><a href="redirectCreate1.htm"><input type="button" onclick="redirectCreate1.htm" value="UNESITE NOVI PROIZVOD"></a></strong></font></h3>
       
      <table align="center" cellpadding="5" cellspacing="5" border="1">
            
           
          
              
              <tr bgcolor="#33CCCC">
                <th>ID PROIZVODA</th>
                <th>NAZIV PROIZVODA</th>
                <th>OPIS PROIZVODA</th>
              <th>KOLICINA PROIZVODA</th>
                <th>CENA PROIZVODA</th>
                <th>OPCIJE</th>
                <th>BUY</th>
                
            </tr>    
             <c:forEach items="${lst1}" var="pr">
                <tr>
                    <td>${pr.idproizvodi}</td>   
                    <td>${pr.naziv}</td>
                    <td>${pr.opis}</td>
                    <td>${pr.kolicina}</td>
                    <td>${pr.cena}</td>
                    <td>
                        
             <a href="edit1.htm?id=${pr.idproizvodi}"> Edit</a>|
             <a href="remove1.htm?id=${pr.idproizvodi}" onclick="return confirm('Da li ste sigurni?')">Remove</a>
                    </td>
                    <td><a href="${pageContext.request.contextPath}/shoppingcart/ordernow/${pr.idproizvodi}.htm">Order Now</a></td>
                </tr> 
               
                   
               
                
                
            </c:forEach>   
                
                </br>        
       <h3 align="center"><font><strong><a  href="${pageContext.request.contextPath}/index.htm">go back</a></strong></font></h3>                 
    </body>
</html>
