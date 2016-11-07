<%-- 
    Document   : authorslistbyid
    Created on : Nov 4, 2016, 10:07:44 PM
    Author     : DELL
--%>

<%@page import="Authors.Authors"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search Authors By Id</title>
    </head>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search Authors By Id</title>
    </head>
    <body>
        
        <a href="ListController">List</a> |
        <a href="SearchControllerById">Search Authors By Id</a> |
        <a href="SearchController">Search Authors By Name</a> |
        <a href="addauthors.jsp">Add Authors</a>
        <div style="background-color: #FFFFC9; width:100%;"> 
            <br />
            <h2 align="center">Search Author by ID</h2>
            <form name="searchForm" action="SearchControllerById" align="center">
                Enter ID:<input type="text" name="searchValue" value="" align="center">
                <input type="submit" value="Find Authors Details" name="searchButton" align="center" />
                
            </form>
<br>
            <%
                try {
                    // Create a session object if it is already not  created.
                    Authors acc = (Authors) session.getAttribute("searchResult");

                    if (acc != null) {
            %>


            <table border="1" align="center">

                <tbody>
                    <tr>
                        <td align="center" bgcolor ="FF9797">Authors ID</td>
                        <td bgcolor ="FFDDDD" align="center"><% out.println(acc.getAuthorId()); %></td>
                    </tr>
                    <tr>
                        <td align="center" bgcolor ="FF9797">Author Name</td>
                        <td bgcolor ="FFDDDD" align="center"><% out.println(acc.getName()); %></td>
                    </tr>
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
