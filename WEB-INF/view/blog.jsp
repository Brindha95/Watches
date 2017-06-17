<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ include file="header.jsp"%> 
	
<html>
<body background=resources/img/idea.jpg>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>


<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Montserrat"
	rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<meta name="viewport"
	content="width=device-width, 
    initial-scale=1, maximum-scale=1, user-scalable=no">
<link href="Content/bootstrap.css" rel="stylesheet" />
<link href="Content/Site.css" rel="stylesheet" />


<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
</head>

<style>
body{
    
    }
    
     h1 {font-size: 32px;
  color: #a5a;
  }
  h2{-moz-animation-timing-function: cubic-bezier(0.075, 0.82, 0.165, 1);
  font-size:40px; 
  color: #f1f1f1;
  }
  

   *{
  margin: 0;
  padding: 0;
  outline: none;
  border: none;
    box-sizing: border-box;
}
*:before,
*:after{
	box-sizing: border-box;
}


.container{
	margin: 0% auto;
	width: 180px;
	height: 100px;
	position: inherit;
	perspective: 1000px;
}
#carousel{
	width: 100%;
	height: 100%;
	position: absolute;
	transform-style: preserve-3d;
	animation: rotation 20s infinite linear;
}
#carousel:hover{
	animation-play-state: paused;
}
#carousel figure{
	display: block;
	position: absolute;
	width: 100%;
	height: 50%px;
	left: 10px;
	top: 10px;
	background: black;
	overflow: hidden;
	border: solid 5px black;
}
#carousel figure:nth-child(1){transform: rotateY(0deg) translateZ(288px);}
#carousel figure:nth-child(2) { transform: rotateY(40deg) translateZ(288px);}
#carousel figure:nth-child(3) { transform: rotateY(80deg) translateZ(288px);}
#carousel figure:nth-child(4) { transform: rotateY(120deg) translateZ(288px);}
#carousel figure:nth-child(5) { transform: rotateY(160deg) translateZ(288px);}
#carousel figure:nth-child(6) { transform: rotateY(200deg) translateZ(288px);}
#carousel figure:nth-child(7) { transform: rotateY(240deg) translateZ(288px);}
#carousel figure:nth-child(8) { transform: rotateY(280deg) translateZ(288px);}
#carousel figure:nth-child(9) { transform: rotateY(320deg) translateZ(288px);}

img{
	-webkit-filter: brightness(1);
	cursor: pointer;
	transition: all .5s ease;
}
img:hover{
	-webkit-filter: blur(1);
  transform: scale(1.2,1.2);
}
txt:hover{

}

@keyframes rotation{
	from{
		transform: rotateY(0deg);
	}
	to{
		transform: rotateY(360deg);
	}
}
</style>

	
		<center><h2>Blog</h2></center>
	<br>
	<div class="container">
		<div id="carousel">
			<figure> <img src="resources/img/cube/1.jpg" alt="Fasttrack"></figure>
			<figure> <img src="resources/img/cube/2.jpg" alt=""></figure>
			<figure> <img src="resources/img/cube/3.jpg" alt=""></figure>
			<figure> <img src="resources/img/cube/4.jpg" alt=""></figure>
			<figure> <img src="resources/img/cube/5.jpg" alt=""></figure>
			<figure> <img src="resources/img/cube/6.jpg" alt=""></figure>
			<figure> <img src="resources/img/cube/1.jpg" alt=""></figure>
			<figure> <img src="resources/img/cube/2.jpg" alt=""></figure>
			<figure> <img src="resources/img/cube/3.jpg" alt=""></figure>
		</div>
	</div>
	<br>
	<br>

	<div class="container-fluid bg-3 text-center">
		<h1 class="margin">collections!!</h1>
		<br>
		<div class="row">
			<div class="col-sm-4">
				<p>
				<h2>Modern designs</h2>
				</p>
				<img src="resources/img/Rotate/1.jpg" class="img-responsive margin"
					style="width: 100%" alt="Image">
			</div>
			<div class="col-sm-4">
				<p>
				<h2>!Largest collections!</h2>
				</p>
				<img src="resources/img/Rotate/4.jpg" class="img-responsive margin"
					style="width: 100%" alt="Image">
			</div>
			<div class="col-sm-4">
				<p>
				<h2>affordable prices</h2>
				</p>
				<img src="resources/img/Rotate/2.jpg" class="img-responsive margin"
					style="width: 100%" alt="Image">
			</div>
		</div>
	</div>




	<!-- Modal -->
	<div class="modal fade" id="myModal" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">Ã—</button>
					<h4>
						<span class="glyphicon glyphicon-lock"></span> Tickets
					</h4>
				</div>
				<div class="modal-body">
					<form role="form">
						<div class="form-group">
							<label for="psw"><span
								class="glyphicon glyphicon-shopping-cart"></span> Tickets, $23
								per person</label> <input type="number" class="form-control" id="psw"
								placeholder="How many?">
						</div>
						<div class="form-group">
							<label for="username"><span
								class="glyphicon glyphicon-user"></span> Send To</label> <input
								type="text" class="form-control" id="usrname"
								placeholder="Enter email">
						</div>
						<button type="submit" class="btn btn-block">
							Pay <span class="glyphicon glyphicon-ok"></span>
						</button>
					</form>
				</div>
				<div class="modal-footer">
					<button type="submit" class="btn btn-danger btn-default pull-left"
						data-dismiss="modal">
						<span class="glyphicon glyphicon-remove"></span> Cancel
					</button>
					<p>
						Need <a href="#">help?</a>
					</p>
				</div>
			</div>
		</div>
	</div>
	


	<div class="col-md-8">
		<div class="row">
			<div class="col-sm-6 form-group">
				<h1>
					<input class="form-control" id="name" name="name"
						placeholder="Name" type="text" required>
			</div>
			<div class="col-sm-6 form-group">
				<h1>
					<input class="form-control" id="email" name="email"
						placeholder="Email" type="email" required>
			</div>
		</div>
		<h1>
			<textarea class="form-control" id="comments" name="comments"
				placeholder="Comment" rows="5"></textarea>
			<br>
			<div class="row">
				<div class="col-md-12 form-group">
					<button class="btn pull-right" type="submit">Send</button>
				</div>
			</div>
	</div>
	</div>
	<br>







	
</body>
</html>


