<%-- 
    Document   : aboutUs
    Created on : Apr 15, 2024, 3:54:02 PM
    Author     : ASUS_RSA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>AboutUs</title>
        <%@include file="All_Components/allCss.jsp" %>
        <style>
            *{
                padding: 0;
                margin: 0;               
                box-sizing:border-box;
            }
            .about{
                min-height: 100vh;
                display: flex;
                justify-content: center;
                align-items: center;
                position: relative;
            }
            .about::before{
                background-image:url(veg1.jpg) ;
                content:'';
                width: 100%;
                height: 100vh;
                background-size: cover;
                background-repeat: no-repeat;
                background-position:center;
                position: absolute;
                opacity:0.185;
            }
            .about img{
                height: auto;
                width: 900px;
                opacity: 5;
            }
            .about-text{
                width: 550px;
            }
            .main{
                width: 1130px;
                max-width: 95%;
                margin: 0 auto;
                display: flex;
                align-items: center;
                justify-content: space-around;
            }
            .about-text h1{
                color: rgb(165, 151, 25);
                font-size: 80px;
                text-transform: capitalize;
                margin-bottom: 20px;
            }
            span{
                color:rgb(8, 201, 8);
            }
            .about-text p{
                color: rgb(63, 61, 61);
                letter-spacing: 1px;
                line-height: 28px;
                font-size: 18px;
                margin-bottom: 45px;
            }
            .about-btn{
                background:rgb(8, 201, 8);
                color: aliceblue;
                text-decoration: none;
                border: 2px solid transparent;
                font-weight: bold;
                padding: 13px 30px;
                border-radius: 30px;
                transition: .4s;
            }
            .about-btn:hover{
                background: transparent;
                border: 2px solid rgb(8, 201, 8);
            } 
        </style>
    </head>
    
    <body style="background-color:#f1f8e9">
      <%@include file="All_Components/navbar.jsp"%>
        <section class="about">
            <div class="main">
                <img src="veg3.jpg">
                    <div class="about-text">
                        <h1>Plant<span>Me</span></h1>
                        <p><b>"Welcome to PlantMe – Your premier destination for all things agricultural! At PlantMe, 
                            we cultivate connections between farmers and consumers, 
                            offering a bountiful array of fresh produce, farm-to-table delights, 
                            and essential agricultural supplies. 
                            Rooted in quality and sustainability, our online marketplace bridges the gap between field and fork, 
                            empowering both growers and buyers alike. 
                            Join us in nurturing a healthier, greener world, one harvest at a time."</b></p>
                            <button class="about-btn" type="button">Let's Talk</button>
                    </div>
            </div>
        </section>    
        <%@include file="All_Components/footer.jsp" %>
    </body>
</html>

