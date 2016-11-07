<%-- 
    Document   : addauthors
    Created on : Oct 31, 2016, 10:20:17 AM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add authors</title>
    </head>
    <body>        
        <a href="ListController">List</a> |
        <a href="SearchControllerById">Search Authors By Id</a> |
        <a href="SearchController">Search Authors By Name</a> |
        <a href="addauthors.jsp">Add Authors</a>
        <div style="background-color: #FFFFC9; width:100%;"> 
            <br />
            <h1 align="center">Add authors</h1>
            <%
                String message = request.getParameter("message");
                if (message != null) {
                    out.println(message);
                }

            %>
            <form name="formAddActor" action="AddAuthorsController" align="center">
                Author ID: <input type="text" name="id" value=""  />
                Name: <input type="text" name="name" value="" />
                <input type="submit" value="Submit" name="AddActor" />
            </form>

            <br>
            </body>
            </html>
