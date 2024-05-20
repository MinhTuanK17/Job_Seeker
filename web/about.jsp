<%-- 
    Document   : contact
    Created on : Mar 9, 2024, 4:44:18 PM
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
            <!-- Page Content -->
            <header class="">
                <nav class="navbar navbar-expand-lg">
                    <div class="container">
                        <a class="navbar-brand" href="index.jsp"><h2>Job Agency <em> Website</em></h2></a>
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarResponsive">
                            <ul class="navbar-nav ml-auto">
                                <li class="nav-item active">
                                    <a class="nav-link" href="index.jsp">Home
                                        <span class="sr-only">(current)</span>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="company.jsp">Company</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="jobs.jsp">Jobs</a>
                                </li>

                                <li class="nav-item dropdown">
                                    <a class="dropdown-toggle nav-link" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">About</a>

                                    <div class="dropdown-menu">
                                        <a class="dropdown-item" href="about.jsp">About Us</a>
                                        <a class="dropdown-item" href="teams.jsp">Team</a>
                                        <a class="dropdown-item active" href="blog.jsp">Blog</a>
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

        <div class="page-heading header-text">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h1>About Us</h1>
                        <span>We have over 20 years of experience</span>
                    </div>
                </div>
            </div>
        </div>

        <div class="more-info about-info">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="more-info-content">
                            <div class="row">
                                <div class="col-md-6 align-self-center">
                                    <div class="right-content">
                                        <span>Lorem ipsum dolor sit amet</span>
                                        <h2>Get to know about <em>our company</em></h2>
                                        <p>Fusce nec ultrices lectus. Duis nec scelerisque risus. Ut id tempor turpis, ac dignissim ipsum. Nulla ullamcorper, ipsum vel condimentum congue, mi odio vehicula tellus, sit amet malesuada justo sem. 
                                            <br><br>Pellentesque in sagittis lacus, vel auctor sem. Quisque eu quam eleifend, ullamcorper dui nec, luctus quam.</p>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="left-image">
                                        <img src="assets/images/about-1-570x350.jpg" alt="">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="fun-facts">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <div class="left-content">
                            <span>Lorem ipsum dolor sit amet</span>
                            <h2>Modi esse sapiente tenetur <em>impedit laudantium laborum</em></h2>
                            <p>Pellentesque ultrices at turpis in vestibulum. Aenean pretium elit nec congue elementum. Nulla luctus laoreet porta. Maecenas at nisi tempus, porta metus vitae, faucibus augue. 
                                <br><br>Fusce et venenatis ex. Quisque varius, velit quis dictum sagittis, odio velit molestie nunc, ut posuere ante tortor ut neque.</p>
                        </div>
                    </div>
                    <div class="col-md-6 align-self-center">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="count-area-content">
                                    <div class="count-digit">1234</div>
                                    <div class="count-title">Jobs</div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="count-area-content">
                                    <div class="count-digit">2280</div>
                                    <div class="count-title">Happy clients</div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="count-area-content">
                                    <div class="count-digit">15</div>
                                    <div class="count-title">Cities</div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="count-area-content">
                                    <div class="count-digit">14</div>
                                    <div class="count-title">Offices</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <jsp:include page="includes/footer.html"></jsp:include>
    </body>
</html>
