<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Workers_Website.Home" %>

<asp:Content ID="ContactContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            margin: 0;
            background-color: #f5f7fa;
        }

        .contact-section {
            background-color: #2c4b5e;
            color: white;
            padding: 60px 20px 20px;
            text-align: center;
            position: relative;
        }

        .contact-section h1 {
            font-size: 36px;
            margin-bottom: 10px;
        }

        .contact-section p {
            font-size: 16px;
            color: #d2e4f2;
        }

        .contact-cards {
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
            gap: 30px;
            margin-top: 40px;
        }

        .card {
            background-color: white;
            border-radius: 10px;
            width: 320px;
            padding: 30px 25px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            text-align: center;
            transition: transform 0.3s ease;
        }

        .card:hover {
            transform: translateY(-5px);
        }

        .card i {
            font-size: 36px;
            color: #2c4b5e;
            margin-bottom: 15px;
        }

        .card h3 {
            margin-bottom: 10px;
            color: #2c4b5e;
        }

        .card p {
            color: #666;
            font-size: 14px;
        }

        .card a {
            display: inline-block;
            margin-top: 15px;
            text-decoration: none;
            color: #f0542c;
            font-weight: bold;
        }

        .btn-orange {
            margin-top: 15px;
            padding: 10px 20px;
            background-color: #f0542c;
            color: white;
            border: none;
            border-radius: 5px;
            font-weight: bold;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .btn-orange:hover {
            background-color: #d3461e;
        }

        @media (max-width: 768px) {
            .contact-cards {
                flex-direction: column;
                align-items: center;
            }
        }
    </style>

    <script>
        function contactSupport() {
            alert("Redirecting to Support...");
            window.location.href = "mailto:support@example.com";
        }
    </script>

    <div class="contact-section">
        <h1>Get in touch</h1>
        <p>Want to get in touch? We'd love to hear from you. Here's how you can reach us...</p>

        <div class="contact-cards">
            <!-- Sales Card -->
            <div class="card">
                <i class="fa fa-phone"></i>
                <h3>Talk to Sales</h3>
                <p>Interested in our services? Just pick up the phone to chat with a member of our team.</p>
                <a href="tel:+91779290687">+91 877 929 0687</a><br />
                <a href="#">View all global numbers</a>
            </div>

            <!-- Support Card -->
            <div class="card">
                <i class="fa fa-comments"></i>
                <h3>Contact Customer Support</h3>
                <p>Need a little help from our support team? Don't worry—we’re here for you.</p>
                <button class="btn-orange" onclick="contactSupport()">Contact Support</button>
            </div>
        </div>
    </div>

    <!-- FontAwesome for icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" />
</asp:Content>
