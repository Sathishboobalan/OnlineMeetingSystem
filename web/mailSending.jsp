<%-- 
    Document   : mailSending
    Created on : Mar 19, 2019, 11:48:02 PM
    Author     : Sathish
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <title>Mail Sending</title>
      <!-- Font Awesome -->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css">
        <!-- Bootstrap core CSS -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
        <!-- Material Design Bootstrap -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.7.5/css/mdb.min.css" rel="stylesheet">
      <!-- Your custom styles (optional) -->
      <link href="css/style.css" rel="stylesheet">
      <link rel="shortcut icon" href="img/sourceImg/ksricon.png" type="image/x-icon">
        <link href="Assets/CSS/homePage.css" rel="stylesheet" type="text/css">
        <style>
            .that-time-user{
                float: right;
                color: white;
                font-size: 20px;
                margin-left: 300px;
            }
            footer{
            margin-top:137px;
                position: absolute;
                width: 100%;
            }
            nav div{
                margin-left: 450px;
                font-size: 25px;
                color: white;
                font-family: 'Open Sans', sans-serif;
            }
            .a{
                border-radius: 20px;
                width:50%;
                margin-left:350px;
                margin-top: 40px;
                
            }
            form{
                border-radius: 20px;
                margin-top: 15px;
                
            }
            textarea{
                resize: none;
            }
            
            
        </style>
    </head>
    <body>
        <% 
            String username = (String) request.getSession(false).getAttribute("username");
            if(username == null){
                response.sendRedirect("index.html");
            }
        %>
        <%
            
            String messages =  request.getParameter("message");

            %>
            <% if (messages != null){ %>

            <script> alert("<%= messages %>");</script>

            <%  messages = null; }

            %>
        <nav class="navbar navbar-dark indigo animated zoomIn">
            <div class="college-name" style="margin-left: 600px;">
                K.S.R College of Engineering
            </div>
            <div class="that-time-user" >
                <a href="./logoutServelet"><button class="btn btn-primary" style="color:white;" ="./logoutServelet" >Logout</button></a>
            </div>
        </nav>
        <div class="a">
            <div class="container">
                <form action = "MailSendingServelet" method="post" class="text-center border border-light p-5">

            <p class=" b h4 mb-4">Send E-mail</p>

            <!-- Enter Your Gmail ID  -->
            <input type="email" name="email" id="defaultContactFormName" class="  size form-control mb-4" placeholder="Enter Your Gmail ID">
            <!-- Enter Your Gmail Password -->
            <input type="password" name="pass" id="defaultContactFormName" class=" size form-control mb-4" placeholder="Enter Your Gmail Password">
            <!-- subject -->
            <input type="text" name="subject" id="defaultContactFormName" class=" size form-control mb-4" placeholder="Subject">

            <!-- Message -->
            <div class="form-group">
                <textarea name="message" class="size form-control rounded-0" id="exampleFormControlTextarea2" rows="3" placeholder="Message"></textarea>
            </div>

            <!-- Send button -->
            <button class=" size btn btn-warning btn-block" type="submit">Send</button>

        </form>
<!-- Default form contact -->
        </div>
        
        </div>
        <footer class="page-footer font-small blue animated zoomIn">
          <div class="footer-copyright text-center py-3">© 2016-2020 batch
            <a href="https://mdbootstrap.com/education/bootstrap/"> Department of CSE</a>
          </div>
            
        </footer>
        <!-- JQuery -->
            <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
            <!-- Bootstrap tooltips -->
            <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.4/umd/popper.min.js"></script>
            <!-- Bootstrap core JavaScript -->
            <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>
            <!-- MDB core JavaScript -->
            <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.7.4/js/mdb.min.js"></script>
    </body>
</html>
