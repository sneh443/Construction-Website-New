<%@ Page Title="Personal Details" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Personal_Details.aspx.cs" Inherits="Workers_Website.Personal_Details" %>

<asp:Content ID="ContentMain" ContentPlaceHolderID="MainContent" runat="server">
    <style>
    .form-container {
        width: 90%;
        max-width: 500px;
        margin: auto;
        font-family: Arial;
       
    }
    h2 {
    text-align: center;
  }

    label {
        display: block;
        margin-top: 10px;
    }

    input[type=text], input[type=date], input[type=email], textarea, select {
        width: 100%;
        padding: 8px;
        box-sizing: border-box;
    }

    .btn-submit {
        margin: 20px auto 0 auto;
        display: block;
        padding: 12px 24px;
        width: 60%;
        background-color: orange;
        color: white;
        font-weight: bold;
        border: none;
        border-radius: 8px;
        cursor: pointer;
        transition: transform 0.2s ease, box-shadow 0.2s ease;
        box-shadow: 0 8px 0 #b35900, 0 15px 30px rgba(0,0,0,0.2);
        transform: translateY(0);
    }

    .btn-submit:hover {
        background-color: darkorange;
        transform: translateY(-3px);
        box-shadow: 0 12px 0 #b35900, 0 20px 40px rgba(0,0,0,0.3);
    }

    .btn-submit:active {
        transform: translateY(4px);
        box-shadow: 0 4px 0 #b35900, 0 5px 15px rgba(0,0,0,0.2);
    }
</style>


    <div class="form-container">
        <h2 style="text-align: center;">Personal Details</h2>

         


        <label for="txtName">Full Name:</label>
        <asp:TextBox ID="txtName" runat="server" />

        <label for="txtEmail">Email:</label>
        <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" />

        <label for="txtDOB">Date of Birth:</label>
        <asp:TextBox ID="txtDOB" runat="server" TextMode="Date" />

        <label for="txtPhone">Phone Number:</label>
        <asp:TextBox ID="txtPhone" runat="server" />

        <label for="txtAddress">Address:</label>
        <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" Rows="3" />

        <label for="ddlCountry">Country:</label>
        <asp:DropDownList ID="ddlCountry" runat="server">
            <asp:ListItem Text="India" Value="India" Selected="True" />
        </asp:DropDownList>

        <label for="ddlState">State:</label>
        <asp:DropDownList ID="ddlState" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlState_SelectedIndexChanged">
            <asp:ListItem Text="Select State" Value="" />
            <asp:ListItem Text="Maharashtra" Value="Maharashtra" />
            <asp:ListItem Text="Arunachal Pradesh" />
            <asp:ListItem Text="Assam" />
            <asp:ListItem Text="Bihar" />
            <asp:ListItem Text="Chhattisgarh" />
            <asp:ListItem Text="Goa" />
            <asp:ListItem Text="Gujarat" />
            <asp:ListItem Text="Haryana" />
            <asp:ListItem Text="Himachal Pradesh" />
            <asp:ListItem Text="Jharkhand" />
            <asp:ListItem Text="Karnataka" />
            <asp:ListItem Text="Kerala" />
            <asp:ListItem Text="Madhya Pradesh" />
            <asp:ListItem Text="Manipur" />
            <asp:ListItem Text="Meghalaya" />
            <asp:ListItem Text="Mizoram" />
            <asp:ListItem Text="Nagaland" />
            <asp:ListItem Text="Odisha" />
            <asp:ListItem Text="Punjab" />
            <asp:ListItem Text="Rajasthan" />
            <asp:ListItem Text="Sikkim" />
            <asp:ListItem Text="Tamil Nadu" />
            <asp:ListItem Text="Telangana" />
            <asp:ListItem Text="Tripura" />
            <asp:ListItem Text="Uttar Pradesh" />
            <asp:ListItem Text="Uttarakhand" />
            <asp:ListItem Text="West Bengal" />
            <asp:ListItem Text="Andaman and Nicobar Islands" />
            <asp:ListItem Text="Chandigarh" />
            <asp:ListItem Text="Dadra and Nagar Haveli and Daman and Diu" />
            <asp:ListItem Text="Lakshadweep" />
            <asp:ListItem Text="Delhi" />
            <asp:ListItem Text="Puducherry" />
        </asp:DropDownList>

        <label for="ddlDistrict">District:</label>
        <asp:DropDownList ID="ddlDistrict" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlDistrict_SelectedIndexChanged">
            <asp:ListItem Text="Select District" Value="" />
            <asp:ListItem Text="Pune" />
            <asp:ListItem Text="Mumbai" />
            <asp:ListItem Text="Nagpur" />
            <asp:ListItem Text="Nashik" />
            <asp:ListItem Text="Aurangabad" />
            <asp:ListItem Text="Kolhapur" />
            <asp:ListItem Text="Solapur" />
            <asp:ListItem Text="Thane" />
            <asp:ListItem Text="Alibaug" />
            <asp:ListItem Text="Satara" />
            <asp:ListItem Text="Malvan" />
        </asp:DropDownList>

        <label for="ddlTaluka">Taluka:</label>
        <asp:DropDownList ID="ddlTaluka" runat="server">
            <asp:ListItem Text="Select Taluka" Value="" />
        </asp:DropDownList>

        <div style="flex: 1 1 100%; text-align: center;">
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn-submit"
    OnClientClick="return showSuccessPopup();" OnClick="btnSubmit_Click" />

    <asp:Label ID="Label1" runat="server" CssClass="success-message" />
</div>

        <br />
        <asp:Label ID="lblMessage" runat="server" ForeColor="Green" />
        <br />
    </div>

    <script>
    function showSuccessPopup() {
        alert("Registration successfully completed!");
        return true; // continue with server-side postback
    }
    </script>

</asp:Content>
