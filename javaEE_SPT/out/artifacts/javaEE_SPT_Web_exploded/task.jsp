<%@ page import="java.util.ArrayList" %>
<%@ page import="Classes.Tasks" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    <title>Title</title>
</head>
<body>
<div class="container">
<nav class="navbar navbar-expand-lg navbar-light bg-light">
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
                    <a class="nav-link" href="/tasks">All tasks</a>
                </li>

            </ul>

        </div>
    </div>
</nav>
<div class="container mt-3 mb-2">
    <%
        String success = request.getParameter("success");
        if(success!=null){
    %>
    <div class="alert alert-success alert-dismissible fade show form-control" role="alert">
        <h4>Your added successfully!</h4>
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>
    <%}%>
</div>
    <div class="mt-3">
        <!-- Кнопка-триггер модального окна -->
        <button type="button" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#tasks">
           + Add to task
        </button>
        <!-- Модальное окно -->
        <div class="modal fade" id="tasks" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">

               <form action="/addTask" method="post">
                   <div class="modal-content">
                       <div class="modal-header">
                           <h1 class="modal-title fs-5" id="exampleModalLabel">Add to task</h1>
                           <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Закрыть"></button>
                       </div>
                       <div class="modal-body">
                           <form>
                               <label class="form-label">Name:</label>
                               <input type="text" name="name" class="form-control" placeholder="name">
                               <label class="form-label">Description:</label>
                               <input type="text" name="desc" class="form-control" placeholder="description">
                               <label class="form-label">Deadline: </label>
                               <input type="date" name="deadline" class="form-control">
                           </form>
                       </div>
                       <div class="modal-footer">
                           <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                           <button type="submit" class="btn btn-primary">Add</button>
                       </div>
                   </div>
               </form>

            </div>
        </div>
    </div>

<div class=" mt-3">
    <table class="table table-success table-striped">
        <thead>
        <tr>
            <th scope="col">ID</th>
            <th scope="col">Name</th>
            <th scope="col">Deadline</th>
            <th scope="col">Done</th>
            <th scope="col">Details</th>
        </tr>
        </thead>
        <tbody>
        <%
            ArrayList<Tasks> task = (ArrayList<Tasks>) request.getAttribute("zadachi");
            if (task!=null){
                for(Tasks taskTable: task){
        %>
        <tr>
            <td><%=taskTable.getId()%></td>
            <td><%=taskTable.getName()%></td>
            <td><%=taskTable.getDeadlineDate()%></td>
            <td><%=taskTable.isStatus()%></td>
            <td><a class="btn btn-small btn-primary" href="/details?id=<%=taskTable.getId()%>">Details</a></td>

        </tr>
        <%      }
        }
        %>
        </tbody>
    </table>
</div>
</div>
</body>
</html>
