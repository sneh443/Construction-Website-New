<%@ Page Title="About" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Workers_Website.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        body {
            margin: 0;
            font-family: 'Segoe UI', sans-serif;
            background-color: #0c0c1d;
            color: white;
        }

        .hero-section {
            background: linear-gradient(135deg, #6e00ff, #d300c5);
            color: white;
            text-align: center;
            padding: 100px 30px 60px;
            overflow: hidden;
        }

        .hero-section h1 {
            font-size: 32px;
            font-weight: bold;
            max-width: 800px;
            margin: 0 auto 15px;
        }

        .hero-section p {
            font-size: 16px;
            color: #f1f1f1;
            margin-bottom: 30px;
        }

        .hero-button {
            background: white;
            color: #6e00ff;
            padding: 12px 28px;
            font-size: 16px;
            border-radius: 30px;
            text-decoration: none;
            font-weight: 600;
            transition: background 0.3s, color 0.3s;
            display: inline-block;
        }

        .hero-button:hover {
            background: #6e00ff;
            color: white;
            border: 2px solid white;
        }

        .carousel-container {
            width: 100%;
            overflow: hidden;
            margin-top: 50px;
            position: relative;
        }

        .carousel-track {
            display: flex;
            gap: 20px;
            animation: scroll 30s linear infinite;
            width: max-content;
        }

        .carousel-track img {
            height: 220px;
            border-radius: 10px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
            transition: transform 0.3s ease;
        }

        .carousel-track img:hover {
            transform: scale(1.05);
        }

        @keyframes scroll {
            0% {
                transform: translateX(0);
            }
            100% {
                transform: translateX(-50%);
            }
        }
    </style>

    <script type="text/javascript">
        function showAlert() {
            alert("Thank you for exploring our services!");
        }
    </script>

    <div class="hero-section">
        <h1>Our Mission</h1>
        <p><h3>
To deliver exceptional construction services that combine quality, innovation, and sustainability while fostering lasting relationships with our clients. As one of the Popular Construction Companies in Hyderabad, we are dedicated to exceeding customer expectations in every project.</p></h3>
        

        <div class="carousel-container">
            <div class="carousel-track">
                <img src="image/Carpenter.jpeg" alt="Carpenter" />
                <img src="image/Cleaner.jpeg" alt="Cleaner" />
                <img src="image/Mason.jpeg" alt="Mason" />
                <img src="image/Painter.png" alt="Painter" />
                <img src="image/maintenance worker.jpeg" alt="Maintenance Worker" />
                <img src="image/download.jpeg" alt="Helper" />
                <!-- Duplicate for seamless looping -->
                <img src="image/Carpenter.jpeg" alt="Carpenter" />
                <img src="image/Cleaner.jpeg" alt="Cleaner" />
                <img src="image/Mason.jpeg" alt="Mason" />
                <img src="image/Painter.png" alt="Painter" />
                <img src="image/maintenance worker.jpeg" alt="Maintenance Worker" />
                <img src="image/download.jpeg" alt="Helper" />
            </div>
        </div>
    </div>
</asp:Content>
