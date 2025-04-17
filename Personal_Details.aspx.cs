using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Workers_Website
{
	public partial class Personal_Details : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string name = txtName.Text;
            string email = txtEmail.Text;
            string dob = txtDOB.Text;
            string phone = txtPhone.Text;
            string address = txtAddress.Text;
            string country = ddlCountry.SelectedItem.Text;
            string state = ddlState.SelectedItem.Text;
            string district = ddlDistrict.SelectedItem.Text;
            string taluka = ddlTaluka.SelectedItem.Text;

            lblMessage.Text = $"<b>Submitted Details:</b><br/>" +
                              $"<b>Name:</b> {name}<br/>" +
                              $"<b>Email:</b> {email}<br/>" +
                              $"<b>Date of Birth:</b> {dob}<br/>" +
                              $"<b>Phone:</b> +91 {phone}<br/>" +
                              $"<b>Address:</b> {address}<br/>" +
                              $"<b>Country:</b> {country}<br/>" +
                              $"<b>State:</b> {state}<br/>" +
                              $"<b>District:</b> {district}<br/>" +
                              $"<b>Taluka:</b> {taluka}";

            lblMessage.ForeColor = System.Drawing.Color.White;
        }



        protected void ddlState_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Clear previous selections
            ddlDistrict.Items.Clear();
            ddlDistrict.Items.Add(new ListItem("Select District", ""));

            // Clear Talukas
            ddlTaluka.Items.Clear();
            ddlTaluka.Items.Add(new ListItem("Select Taluka", ""));

            // Get the selected state
            string selectedState = ddlState.SelectedValue;

            // Populate Districts for Maharashtra
            if (selectedState == "Maharashtra")
            {
                // Adding districts for Maharashtra
                ddlDistrict.Items.Add(new ListItem("Pune", "Pune"));
                ddlDistrict.Items.Add(new ListItem("Mumbai", "Mumbai"));
                ddlDistrict.Items.Add(new ListItem("Nagpur", "Nagpur"));
                ddlDistrict.Items.Add(new ListItem("Nashik", "Nashik"));
                ddlDistrict.Items.Add(new ListItem("Solapur", "Solapur"));
                // You can add more districts for Maharashtra if needed
            }
            // If needed, add conditions for other states here
        }

        protected void ddlDistrict_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Clear Talukas as District is changing
            ddlTaluka.Items.Clear();
            ddlTaluka.Items.Add(new ListItem("Select Taluka", ""));

            // Get the selected district
            string selectedDistrict = ddlDistrict.SelectedValue;

            // Populate Talukas for the selected district
            if (selectedDistrict == "Pune")
            {
                ddlTaluka.Items.Add(new ListItem("Haveli", "Haveli"));
                ddlTaluka.Items.Add(new ListItem("Maval", "Maval"));
                ddlTaluka.Items.Add(new ListItem("Baramati", "Baramati"));
                // Add more talukas for Pune district
            }
            else if (selectedDistrict == "Kolhapur")
            {
                ddlTaluka.Items.Add(new ListItem("Ajara", "Ajara"));
                ddlTaluka.Items.Add(new ListItem("Gadhinglaj", "Gadhinglaj"));
                ddlTaluka.Items.Add(new ListItem("Chandgad", "Chandgad"));
                ddlTaluka.Items.Add(new ListItem("Bhudargad", "Bhudargad"));
                // Add more talukas for Mumbai district
            }
            else if (selectedDistrict == "Mumbai")
            {
                ddlTaluka.Items.Add(new ListItem("Mumbai City", "Mumbai City"));
                ddlTaluka.Items.Add(new ListItem("Mumbai Suburban", "Mumbai Suburban"));
                ddlTaluka.Items.Add(new ListItem("Andheri", "Andheri"));
                // Add more talukas for Mumbai district
            }
            else if (selectedDistrict == "Nagpur")
            {
                ddlTaluka.Items.Add(new ListItem("Nagpur City", "Nagpur City"));
                ddlTaluka.Items.Add(new ListItem("Katol", "Katol"));
                ddlTaluka.Items.Add(new ListItem("Mouda", "Mouda"));
                // Add more talukas for Nagpur district
            }
            else if (selectedDistrict == "Nashik")
            {
                ddlTaluka.Items.Add(new ListItem("Nashik City", "Nashik City"));
                ddlTaluka.Items.Add(new ListItem("Trimbak", "Trimbak"));
                ddlTaluka.Items.Add(new ListItem("Igatpuri", "Igatpuri"));
                // Add more talukas for Nashik district
            }
            else if (selectedDistrict == "Solapur")
            {
                ddlTaluka.Items.Add(new ListItem("Solapur City", "Solapur City"));
                ddlTaluka.Items.Add(new ListItem("Pandharpur", "Pandharpur"));
                ddlTaluka.Items.Add(new ListItem("Mangalvedha", "Mangalvedha"));
                // Add more talukas for Solapur district
            }
            // Add more conditions for other districts and talukas if needed
        }
    }
}