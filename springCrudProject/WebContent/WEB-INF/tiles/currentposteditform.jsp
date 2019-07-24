<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="container" style="margin-top: 4%; margin-bottom: 6%;">
	<div class="row">
		<div class="col-md-2">
			<%-- <jsp:include page="adminnavbar.jsp" /> --%>
		</div> 
		<div class="col-md-9">
			<div class="panel panel-primary">
				<div class="panel-heading">
					<h3 class="panel-title">Edit Current Post</h3>
				</div>
				<div class="panel-body">
					<form:form method="POST" action="/springCrudProject/currentposteditsave"
						commandName="post" class="form-horizontal">
						<div class="form-group">
							<label for="id" class="col-sm-2 control-label"> </label>
							<div class="col-sm-10">
								<form:hidden path="id" />
							</div>
						</div>

						<div class="form-group">
							<label for="image" class="col-sm-2 control-label">Image
							</label>
							<div class="col-sm-10">
								<form:input path="image" type="text" class="form-control"
									id="image" placeholder="Enter image" />
							</div>
						</div>

						<div class="form-group">
							<label for="title" class="col-sm-2 control-label">Title
							</label>
							<div class="col-sm-10">
								<form:input path="title" type="text" class="form-control"
									id="title" placeholder="Enter title" />
							</div>
						</div>

						<div class="form-group">
							<label for="description" class="col-sm-2 control-label">Description </label>
							<div class="col-sm-10">
								<form:textarea path="description" type="text" class="form-control"
									id="description" placeholder="Enter description" />
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



