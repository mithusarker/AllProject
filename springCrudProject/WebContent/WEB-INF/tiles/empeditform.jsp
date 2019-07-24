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
					<h3 class="panel-title">Edit Employee Information</h3>
				</div>
				<div class="panel-body">
					<form:form method="POST" action="/springCrudProject/editsave"
						class="form-horizontal">
						<div class="form-group">
							<label for="id" class="col-sm-2 control-label"> </label>
							<div class="col-sm-10">
								<form:hidden path="id" />
							</div>
						</div>

						<div class="form-group">
							<label for="name" class="col-sm-2 control-label">Name </label>
							<div class="col-sm-10">
								<form:input path="name" type="text" class="form-control"
									id="name" placeholder="Enter name" />
							</div>
						</div>

						<div class="form-group">
							<label for="salary" class="col-sm-2 control-label">Salary
							</label>
							<div class="col-sm-10">
								<form:input path="salary" type="text" class="form-control"
									id="salary" placeholder="Enter salary" />
							</div>
						</div>

						<div class="form-group">
							<label for="designation" class="col-sm-2 control-label">Designation
							</label>
							<div class="col-sm-10">
								<form:input path="designation" type="text" class="form-control"
									id="designation" placeholder="Enter designation" />
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



