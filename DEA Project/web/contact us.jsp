<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Contact Us</title>
        <%@include file="All_Components/allCss.jsp" %>
        <style>
        
         

    
        body {
        font-family: Arial, sans-serif;
        margin:  0;
        padding: 0;
        background-color: #f2f2f2;
    }

    

    h1 { font-family: initial;
        text-align: center;
        background-color: #fff;
        font-size: 50px ;
    }
    h3{
        font-family: initial ;
        text-align: center;
        background-color: #fff;
        font-size: 20px;
    }
   

    input[type="text"],
    input[type="email"],
    textarea {
        width: 100%;
        padding: 10px;
        margin-bottom: 15px;
        border: 1px solid #ccc;
 
        box-sizing: border-box;
        
    }

    textarea {
        height: 50px;
    }

    input[type="submit"] {
        background-color: green ;
        color: white;
        padding: 15px 30px;
        border: none;
        border-radius: 20px;
        cursor: pointer;
        font-size: 16px;
        
    }

    input[type="submit"]:hover {
        background-color: #45a049;
    }
    
    
    
     
    

    .container {
        max-width: 800px;
        margin: 50px auto;
        padding: 20px;
        background-color:#fff;
        border-radius: 20px;
        box-shadow: 0px 0px 10px 0px rgba(0, 0, 0, 0.1);
    }

    h2 { font-family: initial ;
        text-align: center;
    }

    .contact-info {
        display: flex;
        justify-content: space-around;
        margin-top: 20px;
    }

    .info {
        text-align: center;
    }

    .info h3 {
        margin-top: 0;
    }

    .info p {
        margin-bottom: 0;
    }

        </style>
    </head>
  
         <body style="background-color: #f1f8e9">
             <%@include file="All_Components/navbar.jsp"%>
       

        <div class="container">
            <h1>Contact Us</h1>
            <h3>Any questions or remarks?Just write us a message!</h3>
              
            <form action="SendEmail" method="POST">



                <label for="name"> Name:</label>
                <input type="text"  name="name" placeholder="Enter your name" >


                <label for="email"> Email:</label>
                <input type="email"  name="email" placeholder="Enter a valid email address">



                <label for="message">Message:</label>
                <textarea  name="message" placeholder="Enter a message"></textarea>

                <input type="submit" value="Submit">
            </form>

        </div>
        <div class="container">
            <h2>Contact Information</h2>

            <div class="contact-info">
                <div class="info">
                    <h3>Phone Number</h3>
                    <p>0765755894</p>
                </div>
                <div class="info">
                    <h3>Email</h3>
                    <p>thushararanil2@gmail.com</p>
                </div>
                <div class="info">
                    <h3>Address</h3>
                    <p>Pitipana<br>
                        Thalagala Rd,Homagama</p>
                </div>
            </div>
        </div>

         <%@include file="All_Components/footer.jsp" %>
    </body>
</html>
