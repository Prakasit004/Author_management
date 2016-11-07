<%-- 
    Document   : authors
    Created on : Oct 29, 2016, 4:26:56 AM
    Author     : DELL
--%>

<%@page import="java.util.List"%>
<%@page import="Authors.Authors"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search Authors By Name</title>
    </head>
    <body>
        <a href="ListController">List</a> |
        <a href="SearchControllerById">Search Authors By Id</a> |
        <a href="SearchController">Search Authors By Name</a> |
        <a href="addauthors.jsp">Add Authors</a>
        <div style="background-color: #FFFFC9; width:100%;">
            <br />
            <h2 align="center">Search Author by Name</h2>
            <form name="searchForm" action="SearchController" align="center">
                Enter Name:<input type="text" name="searchValue" value="" >
                <input type="submit" value="Find Authors Details" name="searchButton" />
            </form><br>

            <%
                try {
                    // Create a session object if it is already not  created.
                    List<Authors> authorsList = (List<Authors>) session.getAttribute("searchResult");
                    if (authorsList != null) {
            %>


            <table border="1" align="center">
                <%
                    if (authorsList.size() != 0) {

                %>
                <tbody>
                    <tr bgcolor ="FF9797">
                        <td align="center">Author ID</td>
                        <td align="center">Name</td>
                <br>

                </tr>
                <%                        for (Authors acc : authorsList) {
                %>


                <tr bgcolor ="FFDDDD">
                    <td align="center"><% out.println(acc.getAuthorId()); %></td>
                    <td align="center"><% out.println(acc.getName()); %></td>

                </tr>
                <% }
                        }%>
                </tbody>
            </table>

            <%
                    }

                } catch (Exception e) {
                    out.println(e.getMessage());
                }

            %>
    </body>

</html>
