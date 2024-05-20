<%-- 
    Document   : jobs
    Created on : Mar 9, 2024, 5:00:45 PM
    Author     : lpdie
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.Arrays" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="assets/css/stylepage.css"/>
    </head>
    <body>
        <jsp:include page="includes/header.html"></jsp:include>
        <c:if test="${sessionScope.account.role==2}">
            <div style="position: fixed; bottom: 20px; right: 20px; z-index: 100;"><a href="insertjob.jsp" class="filled-button" style="border: 1px solid #1e7e34">Add jobs</a></div>
        </c:if>   
        <header class="">
            <nav class="navbar navbar-expand-lg">
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
                                    <a class="dropdown-item" href="teams.jsp">Team</a>
                                    <a class="dropdown-item" href="blog.jsp">Blog</a>
                                    <a class="dropdown-item" href="terms.jsp">Terms</a>
                                </div>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="contact.jsp">Contact Us</a>
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

        <!-- Page Content -->
        <div class="page-heading header-text">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h1>JOBS</h1>
                        <span>Hello my friends, welcome to Jobs world</span>
                    </div>
                </div>
            </div>
        </div>
        <!--CHECK BOX SEARCH-->
        <div class="services">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4">
                        <form action="search" method="get">
                            <h5 style="margin-bottom: 15px; border-bottom: 1px solid grey">Name</h5>
                            <div>
                                <fieldset>
                                    <input name="name" type="text" class="form-control" id="subject" placeholder="Name" value="${param.name}">

                                </fieldset>
                            </div>
                            <br>
                            <h5 style="margin-bottom: 15px; border-bottom: 1px solid grey">Company</h5>

                            <div>

                                <select class="form-control" name="companyId"; style="border-radius: 50px; color: grey">
                                    <jsp:useBean id="cp" class="dao.CompanyDAO"></jsp:useBean>
                                    <c:set var="companyList" value="${cp.allCompanies}"></c:set>
                                        <option class="hidden"  selected disabled>Company</option>
                                    <c:forEach items="${companyList}" var="cl"> 
                                        <option value="${cl.companyId}" <c:if test="${param.companyId == cl.companyId}">selected</c:if>>${cl.companyName}</option>
                                    </c:forEach>
                                </select>


                            </div>

                            <br>

                            <h5 style="margin-bottom: 15px; border-bottom: 1px solid grey">Salary</h5>
                            <div class="row">
                                <div class="col-lg-5 col-md-12 col-sm-12">
                                    <fieldset>
                                        <input value="${param.salaryF}" name="salaryF" type="text" class="form-control" id="subject" placeholder="From">
                                    </fieldset>

                                </div>-
                                <div class="col-lg-5 col-md-12 col-sm-12">
                                    <fieldset>
                                        <input value="${param.salaryT}" name="salaryT" type="text" class="form-control" id="subject" placeholder="To">
                                    </fieldset>
                                </div>
                            </div>
                            <br>

                            <br>

                            <h5 style="margin-bottom: 15px; border-bottom: 1px solid grey">Location</h5>

                            <div>
                                <label>
                                    <input type="checkbox" name="locations" value="Vietnam" <c:if test="${fn:contains(param.locations, 'Vietnam')}">checked</c:if>>
                                        <span>Vietnam</span>
                                    </label>
                                </div>

                                <div>
                                    <label>
                                    <input type="checkbox" name="locations" value="UK" <c:if test="${fn:contains(param.locations, 'UK')}">checked</c:if>>
                                        <span>UK</span>
                                    </label>
                                </div>

                                <div>
                                    <label>
                                    <input type="checkbox" name="locations" value="Japan" <c:if test="${fn:contains(param.locations, 'Japan')}">checked</c:if>>
                                        <span>Japan</span>
                                    </label>
                                </div>
                                <div>
                                    <label>
                                    <input type="checkbox" name="locations" value="Korea" <c:if test="${fn:contains(param.locations, 'Korea')}">checked</c:if>>
                                        <span>Korea</span>
                                    </label>
                                </div>

                                <div>
                                    <label>
                                    <input type="checkbox" name="locations" value="US" <c:if test="${fn:contains(param.locations, 'US')}">checked</c:if>>
                                        <span>US</span>
                                    </label>
                                </div>
                                <br>


                                <h5 style="margin-bottom: 15px; border-bottom: 1px solid grey">Years of experience</h5>

                                <div>
                                    <label>
                                        <input type="checkbox" name="yearsExp" value="0">

                                        <span> 0 year</span>
                                    </label>
                                </div>

                                <div>
                                    <label>
                                        <input type="checkbox" name="yearsExp" value="1">

                                        <span> 1 year</span>
                                    </label>
                                </div>

                                <div>
                                    <label>
                                        <input type="checkbox" name="yearsExp" value="2">

                                        <span> 2 years</span>
                                    </label>
                                </div>

                                <div>
                                    <label>
                                        <input type="checkbox" name="yearsExp" value="3">

                                        <span> 3 years</span>
                                    </label>
                                </div>
                                <div>
                                    <label>
                                        <input type="checkbox" name="yearsExp" value="4">

                                        <span> 4 years</span>
                                    </label>
                                </div>

                                <div>
                                    <label>
                                        <input type="checkbox" name="yearsExp" value="-1">

                                        <span> > 4 years</span>
                                    </label>
                                </div>
                                <br>
                                <input type="submit" value="Search" class="btn-outline-success">
                                </div>  
                            </form>




                            <div class="col-lg-8">
                                <div class="row">
                                <jsp:useBean id="jobData" class="dao.JobDAO"></jsp:useBean>

                                <c:if test="${empty requestScope.test}">
                                    <c:forEach items="${jobData.all}" var="j">
                                        <jsp:setProperty property="jobId" name="jobData" value="${j.id}"></jsp:setProperty>
                                            <div class="col-md-6">
                                                <div class="service-item">
                                                    <img src="assets/images/${jobData.companyByJobId.img}" alt="" height="250px">
                                                <div class="down-content">
                                                    <h4>${jobData.companyByJobId.companyName}</h4>
                                                    <div style="margin-bottom:10px;">
                                                        <span><sup>$</sup>${j.salary} </span>
                                                    </div>

                                                    <p>${j.jobType}</p>

                                                    <a href="job-details?id=${j.id}" class="filled-button">View More</a>
                                                </div>
                                            </div>

                                            <br>
                                        </div>
                                    </c:forEach>
                                </c:if>
                                <c:if test="${not empty requestScope.test}">
                                    <c:forEach items="${requestScope.data}" var="j">
                                        <jsp:setProperty property="jobId" name="jobData" value="${j.id}"></jsp:setProperty>
                                            <div class="col-md-6">
                                                <div class="service-item">
                                                    <img src="assets/images/${jobData.companyByJobId.img}" alt="" height="250px">
                                                <div class="down-content">
                                                    <h4>${jobData.companyByJobId.companyName}</h4>
                                                    <div style="margin-bottom:10px;">
                                                        <span><sup>$</sup>${j.salary} </span>
                                                    </div>

                                                    <p>${j.jobType}</p>

                                                    <a href="job-details?id=${j.id}" class="filled-button">View More</a>
                                                </div>
                                            </div>

                                            <br>
                                        </div>
                                    </c:forEach>
                                </c:if>
                            </div>
                        </div>
                    </div>

                </div>
                <br>
                <br>

                <nav>
                    <ul class="pagination pagination-lg justify-content-center">
                        <li class="page-item">
                            <a class="page-link" href="search?index=${(i-1)}" aria-label="Previous">
                                <span aria-hidden="true">«</span>
                                <span class="sr-only">Previous</span>
                            </a>
                        </li>

                        <c:forEach begin="1" end="${requestScope.endPage}" var="i">
                            <li class="page-item">
                                <a class="page-link ${tag == i?"active-page":""}" href="search?index=${i}">${i}</a>
                            </li>
                        </c:forEach>
                        <li class="page-item">
                            <a class="page-link" href="search?index=${(i+1)}" aria-label="Next">
                                <span aria-hidden="true">»</span>
                                <span class="sr-only">Next</span>
                            </a>
                        </li>
                    </ul>
                </nav>

                <br>
                <br>
                <br>
                <br>
            </div>
            <jsp:include page="includes/footer.html"></jsp:include>
    </body>
</html>
