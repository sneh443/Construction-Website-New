using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Workers_Website
{
	public partial class Signup1 : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}
        protected void btnSignup_Click(object sender, EventArgs e)
        {
            string name = txtName.Text.Trim();
            string lastName = txtLastName.Text.Trim();
            string birthday = txtBirthday.Text.Trim();
            string email = txtEmail.Text.Trim();
            string password = txtPassword.Text.Trim();
            string confirmPassword = txtConfirmPassword.Text.Trim();

            if (password != confirmPassword)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Passwords do not match.');", true);
                return;
            }

            string message = $"Name: {name}\\nLast Name: {lastName}\\nDOB: {birthday}\\nEmail: {email}\\nPassword: {password}";

            ClientScript.RegisterStartupScript(this.GetType(), "alert", $"alert('{message}');", true);
        }
    }
}