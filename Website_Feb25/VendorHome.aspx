<%@ Page Language="C#" AutoEventWireup="true" CodeFile="VendorHome.aspx.cs" Inherits="VendorHome" %>

<!DOCTYPE html>
<html>
    <head>
        <title>Add Funds</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins">

        <link href="css/bootstrap.min.css" rel="stylesheet">

        <link href="css/custom.css" rel="stylesheet">

        

        <style>
        body,h1,h2,h3,h4,h5 {font-family: "Poppins", sans-serif}
        body {font-size:16px;}
        .w3-half img{margin-bottom:-6px;margin-top:16px;opacity:0.8;cursor:pointer}
        .w3-half img:hover{opacity:1}

                input[type=text],textarea {
            width: 100%;
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            margin-top: 6px;
            margin-bottom: 16px;
            resize: vertical;
        }

        .ddl{
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            margin-top: 6px;
            margin-bottom: 16px;
            resize: vertical;
            display: inline-block;
            width: 100px;
            
        }
        .table{
            font-size:x-large;
        }
        .button
        {
            background-color: #F44336;
            color: white;
            padding: 8px 10px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        .button:hover{
            background-color: #bf342a;
        }
        .row:after {
            content: "";
            display: table;
            clear: both;
        }
            .column {
                float: left;
                width: 46%;
                padding: 10px;
            }
            .auto-style1 {
                width: 249px;
            }
            .auto-style2 {
                width: 27px;
            }
        </style>
    </head>
    <body>

    <!-- Sidebar/menu -->
    <nav class="w3-sidebar w3-red w3-collapse w3-top w3-large w3-padding" style="z-index:3;width:300px;font-weight:bold;" id="mySidebar"><br>
      <a href="javascript:void(0)" onclick="w3_close()" class="w3-button w3-hide-large w3-display-topleft" style="width:100%;font-size:22px">Close Menu</a>
      <div class="w3-container">
        <h3 class="w3-padding-64"><b><br>APPLAUD</b></h3>
      </div>
      <div class="w3-bar-block">
        <a href="VendorHome.aspx" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">HomePage</a>   
        <a href="Logout.aspx" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Logout</a>
      </div>
    </nav>

    <!-- Top menu on small screens -->
    <header class="w3-container w3-top w3-hide-large w3-red w3-xlarge w3-padding">
      <a href="javascript:void(0)" class="w3-button w3-red w3-margin-right" onclick="w3_open()">☰</a>
      <span>APPLAUD</span>
    </header>

    <!-- Overlay effect when opening sidebar on small screens -->
    <div class="w3-overlay w3-hide-large" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

    <!-- !PAGE CONTENT! -->
    <div class="w3-main" style="margin-left:340px;margin-right:40px">

      <!-- Header -->
      <div class="w3-container" style="margin-top:80px" id="showcase">
        <h1 class="w3-jumbo"><b>Vendor Home</b></h1>
        <h1 class="w3-xxxlarge w3-text-red"><b>Add Rewards: </b></h1>
        <hr style="width:50px;border:5px solid red; float: left;" class="w3-round">
      </div>

    <div class="w3-container" id="administration" style="margin-top: 75px;">
        <form id="feed" runat="server">
             
              
 
            
            <!-- Reward Provider Code Here -->




        </form>
    </div>
  

    <!-- End page content -->
    </div>

    <!-- W3.CSS Container -->

    <script>
        // Script to open and close sidebar
        function w3_open() {
            document.getElementById("mySidebar").style.display = "block";
            document.getElementById("myOverlay").style.display = "block";
        }

        function w3_close() {
            document.getElementById("mySidebar").style.display = "none";
            document.getElementById("myOverlay").style.display = "none";
        }

        // Modal Image Gallery
        function onClick(element) {
            document.getElementById("img01").src = element.src;
            document.getElementById("modal01").style.display = "block";
            var captionText = document.getElementById("caption");
            captionText.innerHTML = element.alt;
        }
    </script>

    </body>
</html>