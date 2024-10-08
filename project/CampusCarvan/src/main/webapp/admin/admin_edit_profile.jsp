<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="cc.dao.* , cc.beans.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AdminEditProfile</title>
<%
    response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");//HTTP 1.1
    response.setHeader("Pragma","no-cache"); //HTTP 1.0
    response.setDateHeader ("Expires", 0); //prevents caching at the proxy server
%>
<%@include file="/common/common_css.html"%>
</head>
<body>


	<%
String admin_id=(String)session.getAttribute("sessionKey");
String role = (String)session.getAttribute("role");
System.out.print(session.getId());
if(admin_id==null|| session.isNew())
{
	request.setAttribute("msg", "Unauthorised Access, please login Krlo");
	RequestDispatcher rd = request.getRequestDispatcher("/admin/admin_login.jsp");
	rd.forward(request, response);
}


else{	if(role.equals("admin")){

	

%>

	<%@include file="/admin/admin_header.html"%>


	<div class="container-fluid bg-success">
		<h1 style="text-align: center">
			Hello
			<%=admin_id %></h1>

	</div>



	<div class="container">

		<%AdminDao dao =new AdminDao(); 
   Admin a =   dao.viewProfile(admin_id); // passing session id value

%>

		<%-- <h1>Name :<%=a.getName() %></h1> --%>

		<!-- 
		Edit PROFILE CODE START HERE
 -->

		<form method="post" action="/CampusCarvan/Admin_EditProfile">
			<section class="vh-100" style="background-color: #f4f5f7;">
				<div class="container py-5 h-100">
					<div
						class="row d-flex justify-content-center align-items-center h-100">
						<div class="col col-lg-6 mb-4 mb-lg-0">
							<div class="card mb-3" style="border-radius: .5rem;">
								<div class="row g-0">
									<div class="col-md-4 gradient-custom text-center "
										style="border-top-left-radius: .5rem; border-bottom-left-radius: .5rem;">
										<img src="/CampusCarvan/images/cclogo.png" alt="Avatar"
											class="img-fluid my-5" style="width: 80px;" /> Name: <input
											type="text" name="name" class="form-control"
											value="<%=a.getName()%>">



										<p>
											You are
											<%=role %></p>
										<a href="/CampusCarvan/admin/admin_profile.jsp"></a><i
											class="far fa-edit mb-5"></i>
									</div>
									<div class="col-md-8">
										<div class="card-body p-4">
											<h6>Information</h6>
											<hr class="mt-0 mb-4">
											<div class="row pt-1">
												<div class="col-6 mb-3">
													<h6>Email</h6>
													Email: <input type="email" name="email"
														class="form-control" value="<%=a.getEmail()%>">


												</div>
												<div class="col-6 mb-3">
													<h6>Phone</h6>
													Phone: <input type="number" name="number"
														class="form-control" value="<%=a.getPhone()%>">





												</div>
												<button class="btn btn-success">Edit Profile</button>
											</div>



										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
		</form>

		<!-- // PROFILE CODES END HERE -->

	</div>


	<%@include file="/admin/admin_footer.html"%>
	<%}
else{
	request.setAttribute("msg", "Apna Page Login Kro");
	RequestDispatcher rd = request.getRequestDispatcher("/admin/admin_login.jsp");
	rd.forward(request, response);
	
}} %>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>