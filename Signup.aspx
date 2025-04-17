<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="Workers_Website.Signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        body {
            margin: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
           background: linear-gradient(to right, #ffffff, #d5dfff);
        }

        .container {
            max-width: 450px;
            margin: 60px auto;
            background: white;
            border-radius: 20px;
            padding: 40px 30px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
        }

        h2 {
            text-align: center;
            margin-bottom: 30px;
            color: #333;
        }

        .form-control {
            margin-bottom: 15px;
            width: 95%;
        }

        .form-control input {
            width: 100%;
            padding: 12px 15px;
            border: 1px solid #ccc;
            border-radius: 10px;
            font-size: 14px;
        }

        .btn {
            background: linear-gradient(to right, #4f46e5, #3b82f6);
            border: none;
            color: white;
            padding: 12px;
            width: 100%;
            border-radius: 10px;
            font-size: 16px;
            cursor: pointer;
            transition: background 0.3s ease;
        }

        .btn:hover {
            background: linear-gradient(to right, #4338ca, #2563eb);
        }

        .error {
            color: red;
            font-size: 12px;
            display: block;
        }

        .footer {
            margin-top: 20px;
            text-align: center;
            font-size: 14px;
        }

        @media screen and (max-width: 480px) {
            .container {
                margin: 20px;
                padding: 30px 20px;
            }
        }
    </style>

    <div class="container">
        <h2>Create your account</h2>

        <div class="form-control">
            <asp:TextBox ID="txtFirstName" runat="server" Placeholder="First Name"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" ControlToValidate="txtFirstName"
                ErrorMessage="First name is required" CssClass="error" Display="Dynamic" />
            <asp:RegularExpressionValidator ID="revFirstName" runat="server" ControlToValidate="txtFirstName"
                ValidationExpression="^[A-Za-z]{2,20}$" ErrorMessage="Only letters (2-20 chars)" CssClass="error" Display="Dynamic" />
        </div>

        <div class="form-control">
            <asp:TextBox ID="txtLastName" runat="server" Placeholder="Last Name"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvLastName" runat="server" ControlToValidate="txtLastName"
                ErrorMessage="Last name is required" CssClass="error" Display="Dynamic" />
            <asp:RegularExpressionValidator ID="revLastName" runat="server" ControlToValidate="txtLastName"
                ValidationExpression="^[A-Za-z]{2,20}$" ErrorMessage="Only letters (2-20 chars)" CssClass="error" Display="Dynamic" />
        </div>

        <div class="form-control">
            <asp:TextBox ID="txtEmail" runat="server" Placeholder="Email"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail"
                ErrorMessage="Email is required" CssClass="error" Display="Dynamic" />
            <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail"
                ValidationExpression="^[\w\.-]+@[\w\.-]+\.\w{2,}$"
                ErrorMessage="Invalid email format" CssClass="error" Display="Dynamic" />
        </div>

        <div class="form-control">
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Placeholder="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword"
                ErrorMessage="Password is required" CssClass="error" Display="Dynamic" />
            <asp:RegularExpressionValidator ID="revPassword" runat="server" ControlToValidate="txtPassword"
                ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{6,}$"
                ErrorMessage="Min 6 chars, letters & numbers" CssClass="error" Display="Dynamic" />
        </div>

        <div class="form-control">
            <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" Placeholder="Confirm Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvConfirmPassword" runat="server" ControlToValidate="txtConfirmPassword"
                ErrorMessage="Confirm your password" CssClass="error" Display="Dynamic" />
            <asp:CompareValidator ID="cvPassword" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword"
                ErrorMessage="Passwords do not match" CssClass="error" Display="Dynamic" />
        </div>

        <asp:Button ID="btnRegister" runat="server" Text="Sign Up" CssClass="btn" OnClientClick="return signupSuccess();" />


        <div style="margin-top: 20px; text-align: center; font-size: 14px; color: blue;">
    Already have an account? <a href="Login.aspx" style="color: blue; text-decoration: underline;">Login</a>
</div>

    </div>

    <script>
        function signupSuccess() {
            // You can add validation logic here if needed
            alert("Signup successful!");
            return true; // Allow postback to continue
        }
    </script>

</asp:Content>
