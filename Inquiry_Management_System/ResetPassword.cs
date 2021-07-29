using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace Inquiry_Management_System
{
    public partial class ResetPassword : Form
    {
        String username = forgetPassword.to;
        public ResetPassword()
        {
            InitializeComponent();
        }

        private void btnExit_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void btnReset_Click(object sender, EventArgs e)
        {
            if (txtResetPass.Text == txtResetPassVerify.Text)
            {
                SqlConnection con = new SqlConnection(@"data source = .; database = InquiryManagementSystem; integrated security = True");
                SqlCommand cmd = new SqlCommand("UPDATE [dbo].[userReg] SET [pass] = '" + txtResetPassVerify.Text + "'WHERE emailId='" + username + "' ", con);
                //SqlCommand cmd = new SqlCommand("update userReg set pass='" + txtResetPassVerify.Text + "' where username='" + username + "'", con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                MessageBox.Show("Reset Successsfully.");
            }
            else
            {
                MessageBox.Show("The new password do not match, So enter the same password");
            }
        }
    }
}
