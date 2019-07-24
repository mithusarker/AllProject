<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link href="${pageContext.request.contextPath}/static/lib/css/blog.css"
	rel="stylesheet">

<div class="container" style="margin-top: 4%; margin-bottom: 6%;">
	<div class="row">
	
	<c:forEach var="post" items="${post}">
		<div class="col-md-4">
				<div class="single-blog-post mb-50">
					<div class="post-thumbnail">
						<a href="single-post.html"><img
							src="${pageContext.request.contextPath}/static/lib/img/10.jpg"
							alt=""></a>
					</div>
					<div class="post-content">
						<a href="single-post.html" class="post-title">
							<h4>${post.title}</h4>
						</a>
						<div class="post-meta d-flex">
							<a href="#"><i class="fa fa-user" aria-hidden="true"></i>
								${post.username}</a> <a href="#"><i class="fa fa-calendar"
								aria-hidden="true"></i>${post.date}</a>
						</div>
						<p class="post-excerpt">${post.description}</p>
					</div>
				</div>
			</div>
			</c:forEach>
			
			

	</div>
</div>









