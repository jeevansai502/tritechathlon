
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="bootstrap-3.3.7/css/bootstrap.min.css">
<script src="js/jquery.js"></script>
<script src="bootstrap-3.3.7/js/bootstrap.min.js"></script>

<link type="text/css" rel="stylesheet" href="css/sidebar.css">
<link type="text/css" rel="stylesheet" href="css/Enter_s.css">
<script src="js/create_class.js"></script>

</head>
<body>

	<div id="wrapper">

		<div id="sidebar-wrapper">
			<ul class="sidebar-nav">

				<li><a href="" data-toggle="modal" data-target="#contest">Contest</a></li>
				<li><a href="" data-toggle="modal" data-target="#payment">Payment</a></li>
				<li><a href="Posts_page">Scoreboard</a></li>
				<li><a href="Profile">Profile</a></li>
				<li><a href="Logout">Logout</a></li>
			</ul>
		</div>

		<div id="page-content-wrapper">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12">
						<div>
							<img id="menu-toggle" src="img/button.png" width="30px"
								height="30px">
						</div>
					</div>
				</div>
			</div>
		</div>


		<div class="modal fade" id="contest" role="dialog">
			<div class="modal-dialog modal-sm">

				<div class="modal-content">
					<div class="modal-header">
						<h4 class="modal-title">Contest</h4>
					</div>

					<div class="modal-body">

						<h4>Contest has not started yet.</h4>

					</div>

					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">close</button>
					</div>

				</div>

			</div>
		</div>

		<div class="modal fade" id="payment" role="dialog">
			<div class="modal-dialog modal-sm">

				<div class="modal-content">
					<div class="modal-header">
						<h4 class="modal-title">Payment</h4>
					</div>

					<div class="modal-body">

						<h4>Payment portal is not open yet.</h4>

					</div>

					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">close</button>
					</div>

				</div>

			</div>
		</div>




	</div>

</body>
</html>