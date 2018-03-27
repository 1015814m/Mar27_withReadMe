<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="A template for an in-company rewards system">
  	<meta name="keywords" content="Elk Trucking">
    <title>Login</title>

    <!-- Bootstrap CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <link href="css/custom.css" rel="stylesheet">

    <link href="https://fonts.googleapis.com/css?family=Roboto|Roboto+Slab:100,300,400,700" rel="stylesheet">

    <style>
        
        /*body {
            background-image: url(../Images/ss-blue-valley-shenandoah.jpg);
        }*/

        .login {
            display:table-cell;
            text-align: center;
            vertical-align:middle;
        }

        .parent {
            display: table;
            width: 100%;
        }
        .label{
            padding-left: 50px;
        }
    </style>
</head>
<body>
    <!--<nav class="navbar navbar-inverse" style="background: rgba(255, 255, 255, 0.5); height:66px;">
        <div class="container-fluid">
            <div class="navbar-header">
                
                <a class="navbar-brand" href="#"><img id="logo-img" src="img/applaud_full.png"></a>

            </div>
        </div>
    </nav>-->

    <div class="container text-container">
        <div class="row" style="margin-top: 100px;">
            <div class="col-lg-12" style="text-align:center;">
               
                <img src="img/applaud_full.png" id="monitor-img" />
                
            </div>
        </div>
        <div class="row" style="margin-top: 35px;">
            <div class="col-md-8 col-md-offset-2" style="text-align:left;">
                
                <form id="form1" 
                runat="server" 
                class="login" 
                >
        
                <asp:Login 
                    ID="employeeLogin" 
                    runat="server"
                    OnAuthenticate="Login_Authenticate"
                    DestinationPageUrl="WebPages/HomePage.aspx"
                    FailureText=""
                    OnLoggedIn="employeeLogin_LoggedIn"
                >

             

                    <LayoutTemplate>
                        <div class="box">
                            <div class="content">
                                <div class="row">
                                     <div class="col-md-4 righted">
                                        <asp:textbox class="field login-slot" placeholder="Username" id="UserName" runat="server"></asp:textbox>
                                        <asp:requiredfieldvalidator id="UserNameRequired" runat="server" controltovalidate="UserName" errormessage="User Name is required." tooltip="User Name is required." validationgroup="Login1">*</asp:requiredfieldvalidator>  
                                     </div>
                                    <div class="col-md-4 centered">
                                        <asp:textbox class="field login-slot" placeholder="Password" id="Password" runat="server" textmode="Password"></asp:textbox>
                                        <asp:requiredfieldvalidator id="PasswordRequired" runat="server" controltovalidate="Password" errormessage="Password is required." tooltip="Password is required." validationgroup="Login1">*</asp:requiredfieldvalidator>
                                    </div> 
                                    <div class="col-md-4">
                                        <asp:button class="loginbtn" id="LoginButton" runat="server" commandname="Login" text="Log In" validationgroup="Login1"></asp:button>              
                                    </div>
                                 </div>
                                
                           
                                <div class="row">
                                    <div class="col-md-4">
                                        <asp:literal id="FailureText" runat="server" enableviewstate="False"></asp:literal>
                                        <asp:Button class="forgotTxt" ID="ForgotPass" runat="server" Text="Forgot/Change Password" OnClick="ForgotPass_Click"  />
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                    </LayoutTemplate>
                                               
                </asp:Login>
        
            <br />
         
            <asp:Label ID="errorMessage" runat="server" Text=""></asp:Label>
            </form>
         </div>
    </div>

        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>

    <script src="js/custom.js"></script>

    <script src="js/drop.js"></script>
</body>
</html>
