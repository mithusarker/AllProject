<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<div class="container" style="margin-top: 6%; margin-bottom: 6%;">
	<div class="row" >
		<div class="col-md-2"></div>
		<div class="col-md-8">
			<div class="panel panel-primary">
				<div class="panel-heading">
					<h3 class="panel-title text-center">Create New User Account</h3>
				</div>
				<div class="panel-body">
					<form:form method="post" action="saveUser" commandName="user"
						class="form-horizontal">
						<div class="form-group">
							<label for="name" class="col-sm-2 control-label">Username
							</label>
							<div class="col-sm-10">
								<form:input path="username" name="username" type="text"
									class="form-control" id="username" placeholder="Enter Username" />
								<form:errors path="username" cssClass="alert-danger"></form:errors>
							</div>
						</div>

						<div class="form-group">
							<label for="salary" class="col-sm-2 control-label">First
								Name </label>
							<div class="col-sm-10">
								<form:input path="firstname" name="firstname" type="text"
									class="form-control" id="firstname"
									placeholder="Enter First Name" />
								<form:errors path="firstname" cssClass="alert-danger"></form:errors>
							</div>
						</div>

						<div class="form-group">
							<label for="salary" class="col-sm-2 control-label">Last
								Name </label>
							<div class="col-sm-10">
								<form:input path="lastname" name="lastname" type="text"
									class="form-control" id="lastname"
									placeholder="Enter Last Name" />
								<form:errors path="lastname" cssClass="alert-danger"></form:errors>
							</div>
						</div>

						<div class="form-group">
							<label for="designation" class="col-sm-2 control-label">Email
							</label>
							<div class="col-sm-10">
								<form:input path="email" name="email" type="text"
									class="form-control" id="email" placeholder="Enter Email" />
								<form:errors path="email" cssClass="alert-danger"></form:errors>
							</div>
						</div>

						<div class="form-group">
							<label for="designation" class="col-sm-2 control-label">Password
							</label>
							<div class="col-sm-10">
								<form:input path="password" name="password" type="text"
									class="form-control" id="password" placeholder="Enter Password" />
								<form:errors path="password" cssClass="alert-danger"></form:errors>
							</div>
						</div>

						<div class="form-group">
							<label for="designation" class="col-sm-2 control-label">Confirm
								Password </label>
							<div class="col-sm-10">
								<input path="confirmpassword" name="confirmpassword" type="text"
									class="form-control" id="confirmpassword"
									placeholder="Enter Confirm Password" />
								<%-- <form:errors path="confirmpassword" cssClass="alert-danger"></form:errors> --%>
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
		<div class="col-md-2"></div>
	</div>

</div>

<script>
	var password1 = document.getElementById('password');
	var password2 = document.getElementById('confirmpassword');

	var checkPasswordValidity = function() {
		if (password1.value != password2.value) {
			password1
					.setCustomValidity("<fmt:message key='UnmatchedPassword.user.password'/>");
		} else {
			password1.setCustomValidity('');
		}
	};

	password1.addEventListener('change', checkPasswordValidity, false);
	password2.addEventListener('change', checkPasswordValidity, false);

	var form = document.getElementById('user');
	form.addEventListener('submit', function() {
		checkPasswordValidity();
		if (!this.checkValidity()) {
			event.preventDefault();
			//Implement you own means of displaying error messages to the user here.
			password1.focus();
		}
	}, false);
</script>


