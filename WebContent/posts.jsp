<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*,java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="table.css">
<script src="post.js"></script>


</head>
<body>


	<div class="container" style="margin-top: 35px;">
		<div class="page-header page-heading ">
			<h1 class="text-center">
				Leaderboard
				
			</h1>
		</div>


		<div class="tab">
			<table class="table table-hover">
				<thead>
					<tr>
						<th>User</th>
						<th class="cell-stat text-center">Score</th>
					</tr>
				</thead>
			
				
					<tbody>
			<tr>
						<td><h4>
								<a href="#" data-toggle="modal" data-target="#post">
								User 1
								</a> <br> 
							</h4></td>
							
						<td class="text-center">
							50
						</td>
							</tr>
							
							<tr>
							<td><h4>
								<a href="#" data-toggle="modal" data-target="#post">
								User 2
								</a> <br> 

							</h4></td>
							
						<td class="text-center">
							50
						</td>
						</tr>
						
						<tr>
							<td><h4>
								<a href="#" data-toggle="modal" data-target="#post">
								User 3
								</a> <br> 

							</h4></td>
							
							
						<td class="text-center">
							50
						</td>
						</tr>
						
						<tr>
							<td><h4>
								<a href="#" data-toggle="modal" data-target="#post">
								User 4
								</a> <br> 

							</h4></td>
						
						<td class="text-center">
							50
						</td>
					</tr>

				</tbody>
				
			</table>
		</div>

		<button type="button" class="btn btn-default pull-right"
			style="margin-bottom: 20px;">Next</button>


		<div class="modal fade" id="post" role="dialog">
			<div class="modal-dialog">

				<div class="modal-content">
					<div class="modal-header">
						<h4 class="modal-title"></h4>
					</div>

					<div class="modal-body"></div>

					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">close</button>
					</div>

				</div>

			</div>
		</div>

		<div class="modal fade" id="new_post" role="dialog">
			<div class="modal-dialog">

				<div class="modal-content">
					<div class="modal-header">
						<h4 class="modal-title">New Post</h4>
					</div>

					<div class="modal-body">
						<div class="panel panel-default " align="center">
							<form action="#" role="form" method="post" id="post_form">
								<div class="form-group">
									<label for="title_box">Title:</label> <input type="text"
										class="form-control box " id="title_box" name="title_box"
										required="required">
								</div>
								<div class="form-group">
									<label for="post_box">Post:</label><br>
									<textarea type="text" class="form-control box" rows="10%"
										cols="50%" id="post_box" name="post_box" required="required"></textarea>
								</div>
								<div class="form-group">
									<label for="topic_box">Class:</label> <input type="text"
										class="form-control box " id="topic_box" name="topic_box"
										required="required">
								</div>


								<button type="submit" id="btn_post" class="btn btn-default">Submit</button>
							</form>
						</div>

						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">close</button>
						</div>

					</div>

				</div>
			</div>


		</div>
</body>
</html>
