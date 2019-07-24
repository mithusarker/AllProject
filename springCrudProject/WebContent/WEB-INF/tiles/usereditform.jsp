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
					<h3 class="panel-title">Edit User Information</h3>
				</div>
				<div class="panel-body">
					<form:form method="POST" action="/springCrudProject/usereditsave"
						commandName="user" class="form-horizontal">
						<div class="form-group">
							<label for="username" class="col-sm-2 control-label"> </label>
							<div class="col-sm-10">
								<form:hidden path="username" />
							</div>
						</div>

						<div class="form-group">
							<label for="firstname" class="col-sm-2 control-label">FirstName
							</label>
							<div class="col-sm-10">
								<form:input path="firstname" type="text" class="form-control"
									id="firstname" placeholder="Enter firstname" />
							</div>
						</div>

						<div class="form-group">
							<label for="lastname" class="col-sm-2 control-label">LastName
							</label>
							<div class="col-sm-10">
								<form:input path="lastname" type="text" class="form-control"
									id="lastname" placeholder="Enter lastname" />
							</div>
						</div>

						<div class="form-group">
							<label for="email" class="col-sm-2 control-label">Email </label>
							<div class="col-sm-10">
								<form:input path="email" type="text" class="form-control"
									id="email" placeholder="Enter email" />
							</div>
						</div>

						<div class="form-group">
							<label for="password" class="col-sm-2 control-label">Password
							</label>
							<div class="col-sm-10">
								<form:input path="password" type="text" class="form-control"
									id="password" placeholder="Enter password" />
							</div>
						</div>

						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								<button type="submit" value="Edit Save" class="btn btn-primary">Edit&Save</button>
							</div>
						</div>
					</form:form>
				</div>
			</div>

		</div>
		
	</div>

</div>



