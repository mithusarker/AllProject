<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<script type="text/javascript">
	$(document).redy(function() {
		$(j_username).focus();
	});
</script>


<div class="container" style="margin-top: 6%; margin-bottom: 6%;">
	<div class="row" style="margin-top: 50px;">
		<div class="col-md-3"></div>
		<div class="col-md-6">
			<div class="panel panel-primary">
				<div class="panel-heading">
					<h3 class="panel-title">Login Form</h3>
				</div>
				<div class="panel-body">
					<form:form action='/springCrudProject/j_spring_security_check'
						method='POST' class="form-horizontal">
						<div class="form-group">
							<label for="j_username" class="col-sm-2 control-label">Username
							</label>
							<div class="col-sm-10">
								<input id="j_username" name="j_username" type="text"
									class="form-control" placeholder="Enter your username" />
							</div>
						</div>

						<div class="form-group">
							<label for="j_password" class="col-sm-2 control-label">Password
							</label>
							<div class="col-sm-10">
								<input id="j_password" name="j_password" type="password"
									class="form-control" placeholder="Enter ypur password" />
							</div>
						</div>

						<div class="form-group">
							<label for="_spring_security_remember_me"
								class="col-sm-2 control-label"> </label>
							<div class="col-sm-10">
								<p>Remember Me</p>
								<input id="_spring_security_remember_me"
									name="_spring_security_remember_me" type="checkbox"
									checked="checked" />
							</div>
						</div>

						<!-- code for invalad username and password -->

						<div class="form-group">
							<label class="col-sm-2 control-label"> </label>
							<div class="col-sm-10">
								<c:if test="${param.error != null}">
									<p style="color: red;">Incorrect Username or Password
										provided</p>
								</c:if>
							</div>
						</div>
						<!-- End of code for invalad username and password -->

						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								<button name="submit" type="submit" value="Login"
									class="btn btn-primary">Login</button>
							</div>
						</div>
					</form:form>
				</div>
			</div>
		</div>
		<div class="col-md-3"></div>
	</div>
</div>