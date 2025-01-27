<%-- 
    Document   : job-details
    Created on : Mar 9, 2024, 4:58:31 PM
    Author     : lpdie
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="includes/header.html"></jsp:include>

            <header class="">
                <nav class="navbar navbar-expand-lg" style="background-color: black">
                    <div class="container">
                        <a class="navbar-brand" href="index.jsp"><h2>Job Agency <em> Website</em></h2></a>
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarResponsive">
                            <ul class="navbar-nav ml-auto">
                                <li class="nav-item">
                                    <a class="nav-link" href="index.jsp">Home
                                        <span class="sr-only">(current)</span>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="company.jsp">Company</a>
                                </li>
                                <li class="nav-item active">
                                    <a class="nav-link" href="jobs.jsp">Jobs</a>
                                </li>

                                <li class="nav-item dropdown">
                                    <a class="dropdown-toggle nav-link" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">About</a>

                                    <div class="dropdown-menu">
                                        <a class="dropdown-item" href="about.jsp">About Us</a>
                                        <a class="dropdown-item" href="team.jsp">Team</a>
                                        <a class="dropdown-item" href="blog.jsp">Blog</a>
                                        <a class="dropdown-item" href="terms.jsp">Terms</a>
                                    </div>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="contact.html">Contact Us</a>
                                </li>
                                <li class="nav-item">
                                <c:if test="${empty sessionScope.account}">                                    
                                    <a class="nav-link" href="login.jsp">Sign in/ Sign up</a>
                                </c:if>
                                <c:if test="${not empty sessionScope.account}">
                                    <a class="nav-link" href="logout">Log out</a>
                                </c:if>
                            </li>
                            <c:if test="${not empty sessionScope.account}">
                                <li class="nav-item">
                                    <a class="nav-link" href="profile.jsp">Profile</a>
                                </li>
                            </c:if>
                        </ul>
                    </div>
                </div>
            </nav>
        </header>

        <div class="callback-form">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="section-heading">
                            <h2>Apply for <em>this jobs</em></h2>
                            <span>You are near to have money</span>
                            <p>${requestScope.error7}</p>
                        

                        </div>
                    </div>
                    <div class="col-md-12">

                        <div class="contact-form">

                            <form id="contact" action="apply" method="post">

                                <div class="row">
                                    <div class="col-lg-12 col-md-12 col-sm-12">
                                        <fieldset>
                                            <input name="color" type="text" class="form-control" id="subject" placeholder="Why you want to apply for this job?" required="">
                                            <input name="jobId" hidden type="text" class="form-control" id="subject" value="${requestScope.jobId}" required="">

                                        </fieldset>
                                    </div>
                                    <div class="col-lg-12">
                                        <fieldset>
                                            <textarea name="cv_link" rows="6" class="form-control" id="message" placeholder="CV Link" required=""></textarea>
                                        </fieldset>
                                    </div>

                                    <input name="accountId" hidden value="${sessionScope.account.accountId}">
                                    <div class="col-lg-12">
                                        <fieldset>
                                            <button type="submit" id="form-submit" class="border-button">Apply for this job</button>
                                        </fieldset>
                                    </div>

                                </div>
                            </form>
                        </div>
                    </div>
                </div>

                <br>
                <br>
                <br>
                <br>
            </div>
        </div>

        <jsp:include page="includes/footer.html"></jsp:include>
    </body>
</html>
