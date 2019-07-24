<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>


<!-- <div class="page-top" style="height: 20px; width: auto; background-color: #f46b42"></div> -->
			
<div class="navbar-wrapper">
      <div class="container">

        <nav class="navbar navbar-inverse navbar-static-top">
          <div class="container">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <a class="navbar-brand" href="<c:url value='/' />">Project name</a>
            </div>
            <div id="navbar" class="navbar-collapse collapse">
              <ul class="nav navbar-nav">
                <li class="active"><a href="<c:url value='/' />">Home</a></li>
                <li><a href="#about">About</a></li>
                <li><a href="#contact">Contact</a></li>
                <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
                  <ul class="dropdown-menu">
                    <li><a href="#">Action</a></li>
                    <li><a href="#">Another action</a></li>
                    <li><a href="#">Something else here</a></li>
                    <li role="separator" class="divider"></li>
                    <li class="dropdown-header">Nav header</li>
                    <li><a href="#">Separated link</a></li>
                    <li><a href="#">One more separated link</a></li>
                  </ul>
                </li>
                
                <sec:authorize access="!isAuthenticated()">
                	<li><a href="<c:url value='/login' />">Login</a></li>
                </sec:authorize>
                
                <sec:authorize access="isAuthenticated()">
                	<li><a href="<c:url value='/j_spring_security_logout' />">Logout</a></li>
                </sec:authorize>
                
                <sec:authorize access="hasRole('ROLE_ADMIN')">
                	<li><a href="<c:url value='/admin' />">Admin Page</a></li>
                </sec:authorize>
                
                <sec:authorize access="!isAuthenticated()">
                	<li><a href="<c:url value='/newaccount' />">Sign Up</a></li>
                </sec:authorize>
                
              </ul>
            </div>
          </div>
        </nav>

      </div>
    </div>

    
    