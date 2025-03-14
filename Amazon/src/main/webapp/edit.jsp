<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit-Amazon.com</title>
<link rel="stylesheet" type="text/css" href="style.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<%@page import="java.util.Vector" %>
<%@page import="amaze.Product" %>
<body class="container mt-5">

<a href="view.jsp" class="btn btn-primary mb-3">View Data</a>
<h1 class="text-center">Product Edit Page</h1>

<jsp:useBean id="db" class="amaze.DBCode"/>
<%@page import="java.util.Vector" %>
<%@page import="amaze.Product" %>

<%
   String b=request.getParameter("n");
   if(b!=null && b.equals("edit")){
    int id=Integer.parseInt(request.getParameter("i"));
    Vector<Product> vt=db.view(id);
    for(Product i:vt){
%>

<div class="card p-4 shadow-lg">
    <form method="post">
        <div class="mb-3">
            <label>ID</label>
            <input type="number" name="i" value="<%=i.getId()%>" class="form-control" readonly/>
        </div>

        <div class="mb-3">
            <label>Name</label>
            <input type="text" name="n" value="<%=i.getName()%>" class="form-control" readonly/>
        </div>

        <div class="mb-3">
            <label>Old Price</label>
            <input type="number" name="p" value="<%=i.getPrice()%>" class="form-control" readonly/>
        </div>

        <div class="mb-3">
            <label>New Price</label>
            <input type="number" name="np" class="form-control"/>
        </div>

        <button type="submit" name="btn" value="Save" class="btn btn-success">Save</button>
    </form>
</div>

<%
    }
String m=request.getParameter("btn");
if(m!=null && m.equals("Save")){
float price=Float.parseFloat(request.getParameter("np"));
int r=db.update(id, price);
if(r!=0){
response.sendRedirect("view.jsp");
}
else{
out.print("Failed");
}
}
}
%>

</body>
</html>