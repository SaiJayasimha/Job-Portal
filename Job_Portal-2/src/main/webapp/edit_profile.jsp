<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Edit Profile Page</title>
  <%@include file="all_component/all_css.jsp" %>
</head>

<body style="background-color: #f7f7f7;">

  <!-- Redirect to login if the user is not logged in -->
  <c:if test="${empty userobj}">
    <c:redirect url="login.jsp" />
  </c:if>

  <%@include file="all_component/navbar.jsp" %>

  <div class="container-fluid">
    <div class="row p-4">
      <div class="col-md-4 offset-md-4">
        <div class="card">
          <div class="card-body">
            <div class="text-center">
              <i class="fa fa-user-plus fa-2x" aria-hidden="true"></i>
              <h5>Edit Profile</h5>
            </div>

            <!-- Form for updating profile -->
            <form action="update_profile" method="post">
              <!-- Hidden field for user ID -->
              <input type="hidden" name="id" value="${userobj.id}">

              <!-- Full Name -->
              <div class="form-group">
                <label>Enter Full Name</label>
                <input type="text" required="required" class="form-control"
                       name="name" value="${userobj.name}">
              </div>

              <!-- Qualification -->
              <div class="form-group">
                <label>Enter Qualification</label>
                <input type="text" required="required" class="form-control"
                       name="qualification" value="${userobj.password}">
              </div>

              <!-- Email -->
              <div class="form-group">
                <label>Enter Email</label>
                <input type="email" required="required" class="form-control"
                       name="email" value="${userobj.qualification}">
              </div>

              <!-- Password -->
              <div class="form-group">
                <label>Enter New Password (Leave blank to keep the current password)</label>
                <input type="password" class="form-control" name="password">
              </div>

              <!-- Update Button -->
              <button type="submit" class="btn btn-primary badge-pill btn-block">Update</button>
            </form>

          </div>
        </div>
      </div>
    </div>
  </div>

  <div style="margin-top: 50px;">
    <%@include file="all_component/footer.jsp" %>
  </div>

</body>
</html>
