<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Data List-Amazon.com</title>
<link rel="stylesheet" type="text/css" href="style.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<%@page import="java.util.Vector" %>
<%@page import="amaze.Product" %>
<body class="container mt-5">

<a href="index.jsp" class="btn btn-primary mb-3">Back</a>
<h1 class="text-center">Product Register List</h1>

<jsp:useBean id="db" class="amaze.DBCode"/>        
<%@page import="java.util.Vector" %>
<%@page import="amaze.Product" %>

<%
    Vector<Product> vt=db.view();
%>

<table class="table table-bordered table-striped">
    <thead class="table-dark">
        <tr>
            <th>ID</th><th>NAME</th><th>SECTION</th><th>PRICE</th><th colspan="2">ACTIONS</th>
        </tr>
    </thead>
    <tbody>
<%
    int k=1;
    for(Product i:vt){
%>
        <tr>
            <td><%=k++ %></td>
            <td><%=i.getName() %></td>
            <td><%=i.getSection() %></td>
            <td>₹<%=i.getPrice() %></td>
            <td><a href='edit.jsp?n=edit&i=<%=i.getId()%>' class="btn btn-warning btn-sm">Edit</a></td>
            <td><a href='view.jsp?n=del&i=<%=i.getId()%>' class="btn btn-danger btn-sm">Delete</a></td>
        </tr>
<%
    }
%>
    </tbody>
</table>

<%
    String b=request.getParameter("n");
    if(b!=null && b.equals("del")){
        int id=Integer.parseInt(request.getParameter("i"));    
        int r=db.delete(id);
        if(r!=0){
            response.sendRedirect("view.jsp");
        }
    }
%>

</body>
</html>