<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Signup1.aspx.cs" Inherits="Workers_Website.Signup1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<div class="right-section">
            <div class="wrapper">
                <h2>Signup</h2>
                <form id="signupForm">
                    <div class="form-container">
                        <div class="form-column">
                            <div class="input-group">
                                <asp:TextBox ID="txtName" runat="server" required></asp:TextBox>
                                <label for="txtName">Name</label>
                                <asp:RequiredFieldValidator runat="server" ErrorMessage="Required" ControlToValidate="txtName" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                            <div class="input-group">
                                <asp:TextBox ID="txtLastName" runat="server" required></asp:TextBox>
                                <label for="txtLastName">Last Name</label>
                                <asp:RequiredFieldValidator runat="server" ErrorMessage="Required" ControlToValidate="txtLastName" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                            <div class="input-group">
                                <asp:TextBox ID="txtBirthday" runat="server" TextMode="Date" required></asp:TextBox>
                                <label for="txtBirthday">Date of Birth</label>
                            </div>
                        </div>
                        <div class="form-column">
                            <div class="input-group">
                                <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" required></asp:TextBox>
                                <label for="txtEmail">Email</label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required" ControlToValidate="txtEmail" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                            <div class="input-group">
                                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" required></asp:TextBox>
                                <label for="txtPassword">Password</label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Required" ControlToValidate="txtPassword" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                            <div class="input-group">
                                <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" required></asp:TextBox>
                                <label for="txtConfirmPassword">Confirm Password</label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Required" ControlToValidate="txtConfirmPassword" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                    </div>
                    <asp:Button ID="btnSignup" runat="server" Text="Sign Up" CssClass="btn" OnClick="btnSignup_Click" />
                </form>
            </div>
        </div>
    </div>

</asp:Content>
