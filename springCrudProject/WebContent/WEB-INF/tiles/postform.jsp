<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<div class="container" style="margin-top: 6%; margin-bottom: 6%;">
	<div class="row" >
		<div class="col-md-2"></div>
		<div class="col-md-8">
			<div class="panel panel-primary">
				<div class="panel-heading">
					<h3 class="panel-title text-center">Create Post</h3>
				</div>
				<div class="panel-body">
					<form:form method="post" action="docreatePost" commandName="post"
						class="form-horizontal">
						<div class="form-group">
							<label for="image" class="col-sm-2 control-label">Add Image
							</label>
							<div class="col-sm-10">
								<form:input path="image" name="image" type="text"
									class="form-control" id="image" placeholder="Enter image" />
								<form:errors path="image" cssClass="alert-danger"></form:errors>
							</div>
						</div>

						<div class="form-group">
							<label for="salary" class="col-sm-2 control-label">Post Title</label>
							<div class="col-sm-10">
								<form:input path="title" name="title" type="text"
									class="form-control" id="title"
									placeholder="Enter title" />
								<form:errors path="title" cssClass="alert-danger"></form:errors>
							</div>
						</div>

						<div class="form-group">
							<label for="salary" class="col-sm-2 control-label">Post Date</label>
							<div class="col-sm-10">
								<form:input path="date" name="date" type="date"
									class="form-control" id="date"
									placeholder="Enter date" />
								<form:errors path="date" cssClass="alert-danger"></form:errors>
							</div>
						</div>

						<div class="form-group">
							<label for="designation" class="col-sm-2 control-label">Description</label>
							<div class="col-sm-10">
								<form:input path="description" name="description" type="text"
									class="form-control" id="description" placeholder="Enter description" />
								<form:errors path="description" cssClass="alert-danger"></form:errors>
							</div>
						</div>


						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								<button type="submit" value="Post Submit" class="btn btn-primary">Post Submit</button>
							</div>
						</div>
					</form:form>
				</div>
			</div>






		</div>
		<div class="col-md-2"></div>
	</div>

</div>




