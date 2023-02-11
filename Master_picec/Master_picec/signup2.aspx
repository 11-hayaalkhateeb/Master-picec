﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup2.aspx.cs" Inherits="Master_picec.signup2" %>

<!DOCTYPE html>

<html>
	<head>
		<meta charset="utf-8">
		<title>RegistrationForm_v9 by Colorlib</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">

		<!-- LINEARICONS -->
		<link rel="stylesheet" href="fonts/linearicons/style.css">

		<!-- MATERIAL DESIGN ICONIC FONT -->
		<link rel="stylesheet" href="fonts/material-design-iconic-font/css/material-design-iconic-font.min.css">

		<!-- DATE-PICKER -->
		<link rel="stylesheet" href="vendor/date-picker/css/datepicker.min.css">
		
		<!-- STYLE CSS -->
		<link rel="stylesheet" href="signup2.css">
	</head>

	<body>

		<div class="wrapper">
			<div class="inner">
				<form action="">
					<h3>Find a Room</h3>
					
						<div class="form-wrapper">
							<label for="">Name *</label>
							<input type="text" class="form-control" placeholder="Your Name">
						</div>
						<div class="form-wrapper">
							<label for="">Phone *</label>
							<input type="text" class="form-control" placeholder="Phone">
						</div>
						<div class="form-wrapper">
							<label for="">Phone *</label>
							<input type="text" class="form-control" placeholder="Phone">
						</div>


					
					<div class="form-row">
						<div class="form-wrapper">
							<label for="">Check-in *</label>
							<span class="lnr lnr-calendar-full"></span>
							<input type="text" class="form-control datepicker-here" data-language='en' data-date-format="dd M yyyy" id="dp1">
						</div>
						<div class="form-wrapper">
							<label for="">Check-out *</label>
							<span class="lnr lnr-calendar-full"></span>
							<input type="text" class="form-control datepicker-here" data-language='en'  data-date-format="dd M yyyy" id="dp2">
						</div>
					</div>
					<div class="form-row last">
						<div class="form-wrapper">
							<label for="">Adults *</label>
							<select name="" id="" class="form-control">
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
								<option value="5">5</option>
								<option value="6">6</option>
							</select>
							<i class="zmdi zmdi-chevron-down"></i>
						</div>
						<div class="form-wrapper">
							<label for="">Chidren *</label>
							<select name="" id="" class="form-control">
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
								<option value="5">5</option>
								<option value="6">6</option>
							</select>
							<i class="zmdi zmdi-chevron-down"></i>
						</div>
					</div>
					<div class="checkbox">
						<label>
							<input type="checkbox"> No one rejects, dislikes, or avoids pleasure itself.
							<span class="checkmark"></span>
						</label>
					</div>
					<button data-text="Book Room">
						<span>Book Room</span>
					</button>
				</form>
			</div>
		</div>
		
		<script src="js/jquery-3.3.1.min.js"></script>

		<!-- DATE-PICKER -->
		<script src="vendor/date-picker/js/datepicker.js"></script>
		<script src="vendor/date-picker/js/datepicker.en.js"></script>

		<script src="js/main.js"></script>
	</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>
