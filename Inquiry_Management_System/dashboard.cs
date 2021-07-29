using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Inquiry_Management_System
{
    public partial class dashboard : Form
    {
        public dashboard()
        {
            InitializeComponent();
            
        }
        public dashboard(String user)
        {
            InitializeComponent();

            if(user == "Guest")
            {
                btnUpdateDelete.Hide();
                btnSearch.Hide();
               // btnRemoveInquiry.Hide();
                btnCustomerDetails.Hide();
                btnUsers.Hide();
                btnReport.Hide();

            }
            else if(user == "Admin")
            {
                btnDashboard.Show();
                btnRegister.Show();
                btnUpdateDelete.Show();
                btnSearch.Show();
               // btnRemoveInquiry.Show();
                btnCustomerDetails.Show();
                btnUsers.Show();
                btnView.Show();
                btnReport.Show();
            }
        }

        private void btnExit_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void btnLogout_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            login lg = new login();
            this.Hide();
            lg.Show();
        }

        private void btnDashboard_Click(object sender, EventArgs e)
        {
            //uC_Welcome1.SendToBack();
            uC_Dashboard1.Visible = true;
            uC_Dashboard1.BringToFront();
        }

        private void dashboard_Load(object sender, EventArgs e)
        {
            uC_Dashboard1.Visible = false;
            uC_RegisterCustomers1.Visible = false;
            uC_Update1.Visible = false;
            uC_Search1.Visible = false;
            uC_CustomerDetails1.Visible = false;
            uC_Users1.Visible = false;
            uC_View1.Visible = false;
            uC_Reports1.Visible = false;
        }

        private void btnRegister_Click(object sender, EventArgs e)
        {
            uC_RegisterCustomers1.Visible = true;
            uC_RegisterCustomers1.BringToFront();
        }

        private void btnUpdateDelete_Click(object sender, EventArgs e)
        {
            uC_Update1.Visible = true;
            uC_Update1.BringToFront();
        }

        private void btnSearch_Click(object sender, EventArgs e)
        {
            uC_Search1.Visible = true;
            uC_Search1.BringToFront();
        }

        private void btnCustomerDetails_Click(object sender, EventArgs e)
        {
            uC_CustomerDetails1.Visible = true;
            uC_CustomerDetails1.BringToFront();
        }

        private void btnUsers_Click(object sender, EventArgs e)
        {
            uC_Users1.Visible = true;
            uC_Users1.BringToFront();
        }

        private void btnView_Click(object sender, EventArgs e)
        {
            uC_View1.Visible = true;
            uC_View1.BringToFront();
        }

        private void btnReport_Click(object sender, EventArgs e)
        {
            uC_Reports1.Visible = true;
            uC_Reports1.BringToFront();
        }

        private void btnMin_Click(object sender, EventArgs e)
        {
            this.WindowState = FormWindowState.Minimized;
        }
    }
}
