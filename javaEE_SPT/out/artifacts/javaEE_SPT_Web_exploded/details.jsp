<%@ page import="Classes.Tasks" %>
<%@ page import="Classes.DBmanager" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    <title>Title</title>
</head>
<body>
<div class="container">
<nav class="navbar navbar-success navbar-expand-lg ">
    <div class="container-fluid">
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="#">TASK MANAGER</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="${pageContext.request.contextPath}/tasks">All tasks</a>
                </li>
            </ul>
        </div>
    </div>
</nav> <!--navbar-->
    <div class="container">
        <div class="row mt-3">
            <div class="col-sm-12">
                <%
                    Tasks tasks = (Tasks)request.getAttribute("tap");
                %>
                <div class="mb-3">
                    <label for="exampleFormControlTextarea1" class="form-label">Name:</label>
                    <input class="form-control" type="text" value="<%=tasks.getName()%>" aria-label="Disabled input example" disabled readonly>
                </div>
                <div class="mb-3">
                    <label for="exampleFormControlTextarea1" class="form-label">Description:</label>
                    <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"><%=tasks.getDescription()%></textarea>
                </div>
                <div class="mb-3">
                    <label for="exampleFormControlTextarea1" class="form-label">Deadline:</label>
                    <input type="date" class="form-control" value="<%=tasks.getDeadlineDate()%>">
                </div>
                <div class="mb-3">
                    <label for="exampleFormControlTextarea1" class="form-label">Done:</label>
                    <select class="form-control">
                        <option>YES</option>
                        <option>NO</option>
                    </select>
                </div>
                <br>
                <button class="btn btn-success" style="color: white; background-color: limegreen">SAVE</button>
                <button class="btn btn-success" style="color: white; background-color: red">DELETE</button>
            </div>
        </div>
    </div>
</div>
</body>
</html>
