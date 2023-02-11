<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="Master_picec.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
        header {
  height: 100vh;
  display: flex;
  align-items: center;
  justify-content: center;
}

video {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  object-fit: cover;
  z-index: -1;
}

.header-content {
  text-align: center;
  color: white;
  z-index: 1;
}

h1 {
  font-size: 3em;
  margin-bottom: 0.5em;
}

p {
  font-size: 1.5em;
  margin-bottom: 2em;
}

.cta-button {
  display: inline-block;
  padding: 1em 2em;
  background-color: #333;
  color: white;
  text-decoration: none;
  border-radius: 5px;
  transition: all 0.2s;
}

.cta-button:hover {
  background-color: #fff;
  color: #333;
}
    </style>

     <link href="css/style.css" rel="stylesheet"/>
    <title></title>
</head>
<body>

 <header>
       <div class="video-wrap">
                <video autoplay="" loop="" muted="" class="custom-video" poster="">
                    <source src="img/home.mp4" type="video/mp4">

                    Your browser does not support the video tag.
                </video>
             <a href="#services" class="cta-button">GET STARTED</a>
            </div>

 <%-- <video src="img/home.mp4" autoplay loop></video>
  <div class="header-content">
    <h1>Welcome to my website</h1>
    <p>Learn more about our products and services</p>
    <a href="#services" class="cta-button">Learn More</a>
  </div>--%>
</header>

   <!-- Offer Start -->
    <div class="container-fluid pt-5 pb-3">
        <div class="row px-xl-5">
            <div class="col-md-6">
                <div class="product-offer mb-30" style="height: 300px;">
                    <img class="img-fluid" src="img/packcat.jpg" alt="">
                    <div class="offer-text">
                        <h6 class="text-white text-uppercase">Save 20%</h6>
                        <h3 class="text-white mb-3">Special Offer</h3>
                       
                        <h2 class="text-white mb-3"> package art tools</h2>
                        <a href="" class="btn btn-primary">Shop Now</a>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="product-offer mb-30" style="height: 300px;">
                    <img class="img-fluid" src="img/packcat1.jpg" alt="">
                    <div class="offer-text">
                        <h6 class="text-white text-uppercase">Save 20%</h6>
                        <h3 class="text-white mb-3">Special Offer</h3>
                        <h2 class="text-white mb-3">tools single</h2>
                        <a href="" class="btn btn-primary">Shop Now</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Offer End -->


    <form id="form1" runat="server">
        <div>
        </div>
    </form>
</body>
</html>
