<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<!DOCTYPE html>
<html>
    <head>
        <title>Admin Home Page</title>
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
        .inline{display:inline}
        .inlineanalytics {
            font-weight:bold;
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
        <a href="Admin.aspx" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Analytics</a>   
        <a href="AdminCreate.aspx" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Create/Edit Users</a>   
        <a href="AdminAddFunds.aspx" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Add Funds</a>
        <a href="AdminCalendar.aspx" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Calendar</a>
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
        <h1 class="w3-jumbo"><b>Administration</b></h1>
        <h1 class="w3-xxxlarge w3-text-red"><b>Analytics</b></h1>
        <hr style="width:50px;border:5px solid red; float: left;" class="w3-round">
      </div>
        <div class='tableauPlaceholder' id='viz1522264273239' style='position: relative'><noscript><a href='#'><img alt='Dashboard 1 ' src='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;Ne&#47;New_72&#47;Dashboard1&#47;1_rss.png' style='border: none' /></a></noscript><object class='tableauViz'  style='display:none;'><param name='host_url' value='https%3A%2F%2Fpublic.tableau.com%2F' /> <param name='embed_code_version' value='3' /> <param name='site_root' value='' /><param name='name' value='New_72&#47;Dashboard1' /><param name='tabs' value='no' /><param name='toolbar' value='yes' /><param name='static_image' value='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;Ne&#47;New_72&#47;Dashboard1&#47;1.png' /> <param name='animate_transition' value='yes' /><param name='display_static_image' value='yes' /><param name='display_spinner' value='yes' /><param name='display_overlay' value='yes' /><param name='display_count' value='yes' /></object></div>                <script type='text/javascript'>                    var divElement = document.getElementById('viz1522264273239'); var vizElement = divElement.getElementsByTagName('object')[0]; vizElement.style.width = '100%'; vizElement.style.height = (divElement.offsetWidth * 0.75) + 'px'; var scriptElement = document.createElement('script'); scriptElement.src = 'https://public.tableau.com/javascripts/api/viz_v1.js'; vizElement.parentNode.insertBefore(scriptElement, vizElement);                </script>
    <div class="w3-container" id="administration" style="margin-top: 75px;">
        <form id="feed" runat="server">
             
            <label class="inlineanalytics">Top Employees Giving Kudos</label>
            <br />
            <asp:TextBox ID="TopGiving" runat="server" TextMode="MultiLine" BackColor="White" Height="200px" Width="355px" ReadOnly="true"></asp:TextBox>
            
            <br />
             <br />
            <label class="inlineanalytics" >Top Employees Recieving Kudos:</label>
            <br />
            <asp:TextBox ID="TopRecieving" runat="server" TextMode="MultiLine" BackColor="White" Height="200px" Width="355px" ReadOnly="true"></asp:TextBox>
             
            <br />
             
            <asp:Chart ID="ValueChart" runat="server" DataSourceID="SqlDataSource1" Width="400" Height="400" CssClass="inline">
                <Titles>
                    <asp:Title Text="Number of Employees Per Company Value" Font="20pt, style=Bold"></asp:Title>
                </Titles>
                <Series>
                    <asp:Series Name="Series1" XValueMember="ValueName" YValueMembers="Count" Color="#F44336"></asp:Series>
                </Series>
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea1">

                        <AxisX Title="Value Name" IsLabelAutoFit="true">
                            <LabelStyle Angle="-50" Interval="1" />
                        </AxisX>
                        <AxisY Title="Number of Employees" IsLabelAutoFit="true"></AxisY>
                    </asp:ChartArea>
                </ChartAreas>
            </asp:Chart>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Lab4ConnectionString %>" SelectCommand="SELECT COUNT(Achievement.ValueID) AS Count, Value.ValueID AS ValueID, Value.Name AS ValueName
FROM Achievement INNER JOIN
Value ON Achievement.ValueID = Value.ValueID
GROUP BY Value.ValueID, Value.Name"></asp:SqlDataSource>
 
            
            <asp:Chart ID="Chart1" runat="server" DataSourceID="RewardDataSource" CssClass="inline" Width="400" Height="400">
                <Titles>
                    <asp:Title Text="Number of Rewards Bought From Each Category" Font="20pt, style=Bold"></asp:Title>
                </Titles>
                <Series>
                    <asp:Series Name="Series1" ChartType="Pie" XValueMember="Description" YValueMembers="RewardCount"></asp:Series>
                </Series>
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                </ChartAreas>
            </asp:Chart>
             
            <asp:SqlDataSource ID="RewardDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:Lab4ConnectionString %>" SelectCommand="SELECT RewardCategory.Description, COUNT(RewardCategory.CategoryID) AS RewardCount
FROM [Transaction] INNER JOIN
RewardItem ON [Transaction].RewardID = RewardItem.RewardID INNER JOIN
RewardCategory ON RewardItem.CategoryID = RewardCategory.CategoryID
GROUP BY RewardCategory.Description"></asp:SqlDataSource>
            <asp:Chart ID="Chart2" runat="server" CssClass="inline" DataSourceID="SqlDataSource2" Width="400" Height="400">
                 <Titles>
                    <asp:Title Text="Sales Per Reward Provider" Font="20pt, style=Bold"></asp:Title>
                </Titles>
                <Series>
                    <asp:Series Name="Series1" XValueMember="ProviderName" YValueMembers="TotalSales" Color="244, 67, 54"></asp:Series>
                </Series>
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea1">
                        <AxisX Title="Reward Provider" IsLabelAutoFit="true">
                            <LabelStyle Angle="-50" Interval="1" />
                        </AxisX>
                        <AxisY Title="Total Sales" IsLabelAutoFit="true"></AxisY>
                    </asp:ChartArea>
                </ChartAreas>
            </asp:Chart> 
            
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Lab4ConnectionString %>" SelectCommand="SELECT        SUM([Transaction].Cost) AS TotalSales, RewardProvider.ProviderName
FROM            [Transaction] INNER JOIN
                         RewardItem ON [Transaction].RewardID = RewardItem.RewardID INNER JOIN
                         RewardProvider ON RewardItem.ProviderID = RewardProvider.ProviderID
GROUP BY RewardProvider.ProviderName
ORDER BY TotalSales DESC"></asp:SqlDataSource>
            
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
 