<%-- 
    Document   : autherlist
    Created on : Oct 29, 2016, 3:45:26 AM
    Author     : DELL
--%>

<%@page import="java.util.List"%>
<%@page import="Authors.Authors"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Authors List</title>
    </head>
    <body>
        <a href="ListController">List</a> |
        <a href="SearchControllerById">Search Authors By Id</a> |
        <a href="SearchController">Search Authors By Name</a> | 
        <a href="addauthors.jsp">Add Authors</a>
        <div style="background-color: #FFFFC9; width:100%;"> 
            <br />
            <h1 align="center">Authors List</h1>
            <%
                try {

                    List<Authors> authorsList = (List<Authors>) session.getAttribute("listResult");

                    if (authorsList != null) {
                        //    out.println("not null");
                        //   out.println(filmList.size());

            %>
            <table border="1" align="center">
                <tbody>
                    <tr bgcolor ="FF9797">
                        <td align="center">Author ID</td>
                        <td align="center">Name</td>
                    </tr>
                    <%                        for (Authors acc : authorsList) {
                    %>
                    <tr bgcolor ="FFDDDD">
                        <td align="center"><% out.println(acc.getAuthorId()); %></td>
                        <td align="center"><% out.println(acc.getName()); %></td>

                    </tr>
                    <% } %>
                </tbody>
            </table>  


            <%

                    } else {
                        out.println("return null");
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                    out.println("error");
                }

            %>
    </body>
</html>

