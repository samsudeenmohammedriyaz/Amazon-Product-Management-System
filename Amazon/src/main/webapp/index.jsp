<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Index-Amazon.com</title>
<link rel="stylesheet" type="text/css" href="style.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body class="container mt-5">
<a href="view.jsp" class="btn btn-primary mb-3">View Data</a>

<h1 class="text-center">Product Register Page</h1>

<div class="card p-4 shadow-lg">
    <form method="post">
        <div class="mb-3">
            <label for="n" class="form-label">Enter Name</label>
            <input type="text" name="n" id="n" class="form-control"/>
        </div>

        <div class="mb-3">
            <label class="form-label">Select Section</label>
            <select name="s" class="form-select">
                <option>Electronics</option>
                <option>Beauty and Care</option>
                <option>Stationary</option>
                <option>Grocery</option>
            </select>
        </div>

        <div class="mb-3">
            <label for="p" class="form-label">Enter Price</label>
            <input type="number" name="p" id="p" step="any" class="form-control"/>
        </div>

        <button type="submit" name="btn" value="Save" class="btn btn-success">Save</button>
        <button type="reset" class="btn btn-secondary">Cancel</button>
    </form>
</div>

<jsp:useBean id="db" class="amaze.DBCode"/>    
<%
    String b=request.getParameter("btn");
    if(b!=null && b.equals("Save")){
        String name=request.getParameter("n");
        String section=request.getParameter("s");
        float price=Float.parseFloat(request.getParameter("p"));    
        int r=db.insert(name, section, price);
        if(r!=0){
            int c=db.count();
%>
        <div class="alert alert-success mt-3">Product in Cargo: <%= c %></div>
<%
        } else {
%>
        <div class="alert alert-danger mt-3">Failed</div>
<%
        }
    }
%>

</body>
</html>
