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
					<h3 class="panel-title">Add New Employee</h3>
				</div>
				<div class="panel-body">
					<form:form method="post" action="save" commandName="command"
						class="form-horizontal">
						<div class="form-group">
							<label for="name" class="col-sm-2 control-label">Name </label>
							<div class="col-sm-10">
								<form:input path="name" type="text" class="form-control"
									id="name" placeholder="Enter name" />
								<form:errors path="name" cssClass="alert-danger"></form:errors>
							</div>
						</div>

						<div class="form-group">
							<label for="salary" class="col-sm-2 control-label">Salary
							</label>
							<div class="col-sm-10">
								<form:input path="salary" type="text" class="form-control"
									id="salary" placeholder="Enter salary" />
								<form:errors path="salary" cssClass="alert-danger"></form:errors>
							</div>
						</div>

						<div class="form-group">
							<label for="designation" class="col-sm-2 control-label">Designation
							</label>
							<div class="col-sm-10">
								<form:input path="designation" type="text" class="form-control"
									id="designation" placeholder="Enter designation" />
								<form:errors path="designation" cssClass="alert-danger"></form:errors>
							</div>
						</div>

						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								<button type="submit" value="Save" class="btn btn-primary">Save</button>
							</div>
						</div>
					</form:form>
				</div>
			</div>






		</div>
		
	</div>

</div>


