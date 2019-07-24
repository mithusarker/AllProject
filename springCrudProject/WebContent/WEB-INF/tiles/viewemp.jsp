<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

	<div class="container" style="margin-top: 4%; margin-bottom: 6%;">
		<div class="row">
			<div class="col-md-2">
				<jsp:include page="adminnavbar.jsp" />
			</div>
			<div class="col-md-9">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h3 class="panel-title">Employees List</h3>
					</div>
					<div class="panel-body">
						<div class="table-wrapper">			
            <table class="table table-bordered">
                <thead>
                    <tr class="text-success">
                        <th>ID</th>
                        <th>NAME</th>
                        <th>SALARY</th>
                        <th>DESIGNATION</th>
                        <th>ACTION</th>
                    </tr>
                </thead>
                <tbody>
                <c:forEach var="emp" items="${list}"> 
                    <tr>
                        <td>${emp.id}</td>
					    <td>${emp.name}</td>
					    <td>${emp.salary}</td>
					    <td>${emp.designation}</td>
					    <td>
                            <a href="editemp/${emp.id}" class="edit" title="Edit" data-toggle="tooltip" style="padding: 5px;"><span class="glyphicon glyphicon-pencil text-primary" style="font-size:15px;" aria-hidden="true"></span></a>
                            <a href="deleteemp/${emp.id}" class="delete" title="Delete" data-toggle="tooltip" style="padding: 5px;"><span class="glyphicon glyphicon-trash" style="font-size:15px; color: red" aria-hidden="true"></span></a>
                        </td>
                    </tr>
                    </c:forEach>
                </tbody>
            </table>
            <br/>
    		<a href="empform"><button class="btn btn-primary">Add New Employee</button></a>
    		
        </div>
							
					</div>
				</div>
				

			</div>
			
		</div>

	</div>
 

    
    
    
				