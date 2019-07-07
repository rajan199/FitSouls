<%@page import="beans.AdminBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">


<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>FITSOULS</title>
	<link type="text/css" href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link type="text/css" href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
	<link type="text/css" href="css/theme.css" rel="stylesheet">
	<link type="text/css" href="images/icons/css/font-awesome.css" rel="stylesheet">
	<link type="text/css" href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600' rel='stylesheet'>
 <script language="javascript">
function inspectbox() {
 if (document.forms.addPlan.bld1.checked) document.forms.addPlan.bslot.style.visibility = 'visible'; else document.forms.addPlan.bslot.style.visibility  = 'hidden';
}
function inspectbox2() {
 if (document.forms.addPlan.bld2.checked) document.forms.addPlan.lslot.style.visibility = 'visible'; else document.forms.addPlan.lslot.style.visibility = 'hidden';
}
function inspectbox3() {
	 if (document.forms.addPlan.bld3.checked) document.forms.addPlan.dslot.style.visibility = 'visible'; else document.forms.addPlan.dslot.style.visibility = 'hidden';
	}
</script> 


</head>


<body>
<%
// this code is prevent user to go back to the previous page
response.setHeader("Cache-Control","no-cache");
response.setHeader("Cache-Control","no-store");
response.setHeader("Pragma","no-cache");
response.setDateHeader ("Expires", 0);

%>
Welcome

<%
AdminBean s=null;
if(session!=null){
	if(session.getAttribute("s1")!=null){
		s=(AdminBean)session.getAttribute("s1");
		
	
	%>
	<div class="navbar navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container">
				<a class="btn btn-navbar" data-toggle="collapse" data-target=".navbar-inverse-collapse">
					<i class="icon-reorder shaded"></i>
				</a>

			  	<a class="brand" href="index.jsp">
			  		FITSOULS
			  	</a>

				<div class="nav-collapse collapse navbar-inverse-collapse">
					<ul class="nav nav-icons">
						<li class="active"><a href="#">
							<i class="icon-envelope"></i>
						</a></li>
						<li><a href="#">
							<i class="icon-eye-open"></i>
						</a></li>
						<li><a href="#">
							<i class="icon-bar-chart"></i>
						</a></li>
					</ul>

					<form class="navbar-search pull-left input-append" action="#">
						<input type="text" class="span3">
						<button class="btn" type="button">
							<i class="icon-search"></i>
						</button>
					</form>
				
					<ul class="nav pull-right">
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <b class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a href="#">Item No. 1</a></li>
								
								<li><a href="#">Don't Click</a></li>
								<li class="divider"></li>
								<li class="nav-header">Example Header</li>
								<li><a href="#">A Separated link</a></li>
															</ul>
						</li>
						
						<li><a href="#">
							Support
						</a></li>
						<li class="nav-user dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">
								<img src="images/user.png" class="nav-avatar" />
								<b class="caret"></b>
							</a>
							<ul class="dropdown-menu">
								<li><a href="#">Your Profile</a></li>
								<li><a href="#">Edit Profile</a></li>
								<li><a href="#">Account Settings</a></li>
								<li class="divider"></li>
								<li><a href="logout.jsp">Logout</a></li>
							</ul>
						</li>
					</ul>
				</div><!-- /.nav-collapse -->
			</div>
		</div><!-- /navbar-inner -->
	</div><!-- /navbar -->



	<div class="wrapper">
		<div class="container">
			<div class="row">
				<div class="span3">
					<div class="sidebar">

						<ul class="widget widget-menu unstyled">
							<li class="active">
								<a href="index.jsp">
									<i class="menu-icon icon-dashboard"></i>
									Dashboard
								</a>
							</li>
							<li>
								<a href="addclient.jsp">
									<i class="menu-icon icon-bullhorn"></i>
									Add Client
								</a>
							</li>
							<li><a href="viewclients.jsp"><i class="menu-icon icon-bullhorn"></i>View Clients</a>
                                </li>
							<li>
								<a href="message.html">
									<i class="menu-icon icon-inbox"></i>
									Inbox
									<b class="label green pull-right">11</b>
								</a>
							</li>
							
							<li>
								<a href="task.html">
									<i class="menu-icon icon-tasks"></i>
									Tasks
									<b class="label orange pull-right">19</b>
								</a>
							</li>
						</ul><!--/.widget-nav-->

						<ul class="widget widget-menu unstyled">
                                <li><a href="ui-button-icon.html"><i class="menu-icon icon-bold"></i> Buttons </a></li>
                                <li><a href="ui-typography.html"><i class="menu-icon icon-book"></i>Typography </a></li>
                                <li><a href="form.html"><i class="menu-icon icon-paste"></i>Forms </a></li>
                                <li><a href="table.html"><i class="menu-icon icon-table"></i>Tables </a></li>
                                <li><a href="charts.html"><i class="menu-icon icon-bar-chart"></i>Charts </a></li>
                            </ul><!--/.widget-nav-->

						<ul class="widget widget-menu unstyled">
							<li>
								<a class="collapsed" data-toggle="collapse" href="#togglePages">
									<i class="menu-icon icon-cog"></i>
									<i class="icon-chevron-down pull-right"></i><i class="icon-chevron-up pull-right"></i>
									More Pages
								</a>
								<ul id="togglePages" class="collapse unstyled">
									<li>
										<a href="other-login.html">
											<i class="icon-inbox"></i>
											Login
										</a>
									</li>
									<li>
										<a href="other-user-profile.html">
											<i class="icon-inbox"></i>
											Profile
										</a>
									</li>
									<li>
										<a href="other-user-listing.html">
											<i class="icon-inbox"></i>
											All Users
										</a>
									</li>
								</ul>
							</li>
							
							<li>
								<a href="#">
									<i class="menu-icon icon-signout"></i>
									Logout
								</a>
							</li>
						</ul>

					</div><!--/.sidebar-->
				</div><!--/.span3-->


				<div class="span9">
					<div class="content">

						<div class="module">
							<div class="module-head">
								<h3>Add New Client</h3>
							</div>
							<div class="module-body">
									<br />
									<form name="addPlan" class="form-horizontal row-fluid" action="ClientController" method="post">
										<div class="control-group">
											<label class="control-label" for="basicinput">Client Name:</label>
											<div class="controls">
												<input type="text" id="basicinput" placeholder="Client Name" name="cname" class="span8">
											</div>
										</div>
										
										<div class="control-group">
											<label class="control-label" for="basicinput">Address:</label>
											<div class="controls">
												<textarea class="span8" name="address" rows="5"></textarea>
											</div>
										</div>
										
										<div class="control-group">
											<label class="control-label" for="basicinput">Contact No:</label>
											<div class="controls">
												<input type="text" id="basicinput" placeholder="Contact Number" name="contact" class="span8">
											</div>
										</div>
										
										<div class="control-group">
											<label class="control-label" for="basicinput">Email:</label>
											<div class="controls">
												<input type="text" id="basicinput" placeholder="Email ID" name="email" class="span8">
											</div>
										</div>
										
										<div class="control-group">
											<label class="control-label" for="basicinput">Plan Start Date:</label>
											<div class="controls">
												<input type="date" id="basicinput" name="sdate" class="span8">
											</div>
										</div>
										
										<div class="control-group">
											<label class="control-label" for="basicinput">Plan End Date:</label>
											<div class="controls">
												<input type="date" id="basicinput" name="edate" class="span8">
											</div>
										</div>
										
										<div class="control-group">
											<label class="control-label" for="basicinput">Meal Type:</label>
											<div class="controls">
												<select name="mealtype" tabindex="1" data-placeholder="Select Meal type" class="span8">
													<option value="veg">Veg</option>
													<option value="non-veg">Non-veg</option>
													<option value="Egg">Egg</option>
												</select>
											</div>
										</div>
										
										<div class="control-group">
											
											<div class="controls">
												<label class="checkbox inline">
													<input type="checkbox" value="1" name="bld1" onClick="inspectbox()">
													Breakfast
												</label>
												<label class="checkbox inline">
													<input type="checkbox" value="2" name="bld2" onClick="inspectbox2()">
													Lunch
												</label>
												<label class="checkbox inline">
													<input type="checkbox" value="3" name="bld3" onClick="inspectbox3()">
													Dinner
												</label>
											</div>
										</div>
										
										<div class="control-group">
											<label class="control-label" for="basicinput">Delivery Slots:</label>
											<div class="controls">
												<select tabindex="1" data-placeholder="Breakfast" name="bslot" class="span8" style="visibility:hidden" >
													<option value="" disable>Breakfast</option>
													<option value="1">7:00am-8:00am</option>
													<option value="2">8:00am-9:00am</option>
													<option value="3">9:00am-10:00am</option>
													<option value="4">10:00am-11:00am</option>
												</select>
											</div>
											<div class="controls">
												<select tabindex="1" data-placeholder="Lunch" name="lslot" class="span8" style="visibility:hidden">
													<option value="" disable>Lunch</option>
													<option value="5">11:00am-12:00pm</option>
													<option value="6">12:00pm-1:00pm</option>
													<option value="7">1:00pm-2:00pm</option>
													<option value="8">2:00pm-3:00pm</option>
												</select>
											</div>
											<div class="controls">
												<select tabindex="1" data-placeholder="Dinner" name="dslot" class="span8" style="visibility:hidden">
													<option value="" disable>Dinner</option>
													<option value="12">6:00pm-7:00pm</option>
													<option value="13">7:00pm-8:00pm</option>
													<option value="14">8:00pm-9:00pm</option>
													<option value="15">9:00pm-10:00pm</option>
													<option value="16">10:00pm-11:00pm</option>
												</select>
											</div>
										</div>
										
										<div class="control-group">
											<label class="control-label" for="basicinput">Payment:</label>
											<div class="controls">
												<div class="input-append">
													<input type="text" name="payment" placeholder="000" class="span8"><span class="add-on">Rs</span>
												</div>
											</div>
										</div>
										
										<div class="control-group">
											<label class="control-label" for="basicinput">Meal Count:</label>
											<div class="controls">
												<input type="text" id="meaalcount" placeholder="meal count" name="mealcount" class="span8">
											</div>
										</div>

										
										<div class="control-group">
											<div class="controls">
											<input type="submit" name="action" value="Add" class="btn">
											</div>
										</div>
									</form>
							</div>
						</div>

						
						
					</div><!--/.content-->
				</div><!--/.span9-->
			</div>
		</div><!--/.container-->
	</div><!--/.wrapper-->

	<div class="footer">
		<div class="container">
			 

			<b class="copyright">&copy; 2019 Created by Chaitanya Rana </b> All rights reserved.
		</div>
	</div>

	<script src="scripts/jquery-1.9.1.min.js" type="text/javascript"></script>
	<script src="scripts/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>
	<script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="scripts/flot/jquery.flot.js" type="text/javascript"></script>
	 <% 
	}
	else{
		response.sendRedirect("adminlogin.jsp");
	}
}
else{
	response.sendRedirect("adminlogin.jsp");
}
%>
</body>