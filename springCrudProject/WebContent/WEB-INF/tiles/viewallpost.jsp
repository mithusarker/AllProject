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
						<h3 class="panel-title">All Post List</h3>
					</div>
					<div class="panel-body">
						<div class="table-wrapper">			
            <table class="table table-bordered">
                <thead>
                    <tr class="text-success">
                        <th>ID</th>
                        <th>IMAGE</th>
                        <th>TITLE</th>
                        <th>DATE</th>
                        <th>DESCRIPTION</th>
                        <th>USERNAME</th>
                        <th>ACTION</th>
                        <!-- <th>AUTHORITY</th> -->
                        <!--<th>ENABLED</th> -->
                        
                    </tr>
                </thead>
                <tbody>
                <c:forEach var="post" items="${post}">
                	<%-- <c:set var="password" value="${fn:substring(user.password, 0, 20) }" ></c:set> --%>
                    <tr>
                        <td>${post.id}</td>
					    <td>${post.image}</td>
					    <td>${post.title}</td>
					    <td>${post.date}</td>
					    <td>${post.description}</td>
					    <td >${post.username}</td>
					    <%-- <td>${user.authority}</td> --%>
					    <%-- <td>${user.enabled}</td> --%>
					    <td>
                            <a href="editallpost/${post.id}" class="edit" title="Edit" data-toggle="tooltip" style="padding: 5px;"><span class="glyphicon glyphicon-pencil text-primary" style="font-size:15px;" aria-hidden="true"></span></a>
                            <a href="deletepost/${post.id}" class="delete" title="Delete" data-toggle="tooltip" style="padding: 5px;"><span class="glyphicon glyphicon-trash" style="font-size:15px; color: red" aria-hidden="true"></span></a>
                        </td>
                    </tr>
                    </c:forEach>
                </tbody>
            </table>
            <br/>
    		<a href="postform"><button class="btn btn-primary">Add Post</button></a>
    		
        </div>
							
					</div>
				</div>
				

			</div>
			
		</div>

	</div>


    
    
    
				