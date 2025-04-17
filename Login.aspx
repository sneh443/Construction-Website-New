<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Workers_Website.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(to right, #ffffff, #d5dfff);
        }

        .container {
            display: flex;
            max-width: 900px;
            margin: 50px auto;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            border-radius: 15px;
            overflow: hidden;
        }

        .left-panel {
            background-color: #6c8df3;
            color: #fff;
            width: 40%;
            padding: 50px 30px;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }

        .left-panel h2 {
            margin-bottom: 10px;
            font-size: 24px;
        }

        .left-panel p {
            margin-bottom: 20px;
            font-size: 14px;
        }

        .right-panel {
            background-color: #fff;
            width: 60%;
            padding: 50px 30px;
        }

        .right-panel h2 {
            margin-bottom: 30px;
            font-size: 24px;
            color: #333;
        }

        .form-control {
            margin-bottom: 15px;
            padding: 12px;
            width: 100%;
            border: 1px solid #ccc;
            border-radius: 8px;
            font-size: 14px;
        }

        .btn {
            background-color: #6c8df3;
            color: white;
            padding: 12px;
            width: 100%;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            font-size: 16px;
            margin-top: 10px;
           
        }

        .btn:hover {
            background-color: #c59127;
        }

        .social-icons {
            margin-top: 20px;
            display: flex;
            gap: 10px;
        }

        .social-icons button {
            background-color: #f2f2f2;
            border: none;
            border-radius: 6px;
            padding: 10px;
            font-size: 16px;
            cursor: pointer;
            width: 40px;
            height: 40px;
            transition: background 0.2s;
        }

        .social-icons button:hover {
            background-color: #e0e0e0;
        }

        .error-msg {
            color: red;
            font-size: 12px;
            margin-bottom: 10px;
            display: block;
        }

        @media screen and (max-width: 768px) {
            .container {
                flex-direction: column;
            }

            .left-panel, .right-panel {
                width: 100%;
                border-radius: 0;
            }

            .left-panel {
                border-radius: 15px 15px 0 0;
            }

            .right-panel {
                border-radius: 0 0 15px 15px;
            }
        }
    </style>


    <div class="container">
        <div class="left-panel">
            <h2>Hello, Welcome!</h2>
            <p>Don't have an account?</p>
            <asp:Button 
    ID="btnRegister" 
    runat="server" 
    Text="Register" 
    style="background-color: #c59127; border: none; color: white; padding: 12px; width: 100%; border-radius: 10px; font-size: 16px; cursor: pointer;" />

        </div>
        <div class="right-panel">
            <h2>Login</h2>

            <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" Placeholder="Username"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ControlToValidate="txtUsername"
                ErrorMessage="Username is required" ForeColor="Red" Display="Dynamic" />
            <asp:RegularExpressionValidator ID="revUsername" runat="server" ControlToValidate="txtUsername"
                ValidationExpression="^[a-zA-Z0-9]{4,12}$"
                ErrorMessage="4-12 alphanumeric characters only" ForeColor="Red" Display="Dynamic" />

            <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password" Placeholder="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword"
                ErrorMessage="Password is required" ForeColor="Red" Display="Dynamic" />
            <asp:RegularExpressionValidator ID="revPassword" runat="server" ControlToValidate="txtPassword"
                ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{6,}$"
                ErrorMessage="Min 6 chars with letters and numbers" ForeColor="Red" Display="Dynamic" />

            <asp:LinkButton ID="lnkForgot" runat="server">Forgot Password?</asp:LinkButton><br />

<asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn" OnClientClick="return validateLogin();" />

            <p style="margin-top: 20px;">or login with social platforms</p>
           <!-- Include Font Awesome in the <head> of your page -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" />

<div style="text-align: center; margin-top: 20px;">
    <button type="button" style="margin: 5px; padding: 10px 15px; font-size: 18px; color: white; background-color: #DB4437; border: none; border-radius: 6px;">
        <i class="fab fa-google"></i>
    </button>

    <button type="button" style="margin: 5px; padding: 10px 15px; font-size: 18px; color: white; background-color: #1877F2; border: none; border-radius: 6px;">
        <i class="fab fa-facebook-f"></i>
    </button>

    <button type="button" style="margin: 5px; padding: 10px 15px; font-size: 18px; color: white; background-color: #0A66C2; border: none; border-radius: 6px;">
        <i class="fab fa-linkedin-in"></i>
    </button>
</div>



        </div>
    </div>
    <script>
    function validateLogin() {
        var username = document.getElementById("<%= txtUsername.ClientID %>").value;
        var password = document.getElementById("<%= txtPassword.ClientID %>").value;

        if (username === "" || password === "") {
            alert("Please fill in both username and password.");
            return false; // Prevent login
        }

        alert("Login successful!");
        return true; // Allow server-side login to continue
    }
    </script>

</asp:Content>
