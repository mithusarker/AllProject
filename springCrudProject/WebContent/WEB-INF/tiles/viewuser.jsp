<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

	<div class="container" style="margin-top: 4%; margin-bottom: 6%;">
		<div class="row">
			<div class="col-md-2">
				<jsp:include page="adminnavbar.jsp" />
			</div>
			<div class="col-md-10">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h3 class="panel-title">Users List</h3>
					</div>
					<div class="panel-body">
						<div class="table-wrapper">			
            <table class="table table-bordered">
                <thead>
                    <tr class="text-success">
                        <th>USERNAME</th>
                        <th>FIRST NAME</th>
                        <th>LAST NAME</th>
                        <th>EMAIL</th>
                        <th>PASSWORD</th>
                        <th>ACTION</th>
                        <!-- <th>AUTHORITY</th> -->
                        <!-- <th>ENABLED</th> -->
                        
                    </tr>
                </thead>
                <tbody>
                <c:forEach var="user" items="${list}">
                	<c:set var="password" value="${fn:substring(user.password, 0, 20) }" ></c:set>
                    <tr>
                        <td>${user.username}</td>
					    <td>${user.firstname}</td>
					    <td>${user.lastname}</td>
					    <td>${user.email}</td>
					    <td >${password}</td>
					    <%-- <td>${user.authority}</td> --%>
					    <%-- <td>${user.enabled}</td> --%>
					    <td>
                            <a href="edituser/${user.username}" class="edit" title="Edit" data-toggle="tooltip" style="padding: 5px;"><span class="glyphicon glyphicon-pencil text-primary" style="font-size:15px;" aria-hidden="true"></span></a>
                            <a href="deleteuser/${user.username}" class="delete" title="Delete" data-toggle="tooltip" style="padding: 5px;"><span class="glyphicon glyphicon-trash" style="font-size:15px; color: red" aria-hidden="true"></span></a>
                        </td>
                    </tr>
                    </c:forEach>
                </tbody>
            </table>
            <br/>
    		<a href="newaccount"><button class="btn btn-primary">Add New User</button></a>
    		
        </div>
							
					</div>
				</div>
				

			</div>
			
		</div>

	</div>


    
    
    
				