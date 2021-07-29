using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Inquiry_Management_System.AllUserControls
{
    public partial class UC_CustomerDetails : UserControl
    {
        function fn = new function();
        String query;
        public UC_CustomerDetails()
        {
            InitializeComponent();
        }

        private void txtSearch_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(txtSearch.SelectedIndex == 0)
            {
                query = "select name,gender,telephone,requirement,followUp from RegMembers";
                DataSet ds = fn.getData(query);
                guna2DataGridView1.DataSource = ds.Tables[0];
            }
            else if(txtSearch.SelectedIndex == 1)
            {
                query = "select name,gender,telephone,requirement,followUp from RegMembers where checkout is not null";
                DataSet ds = fn.getData(query);
                guna2DataGridView1.DataSource = ds.Tables[0];
            }
            else if(txtSearch.SelectedIndex == 2)
            {
                query = "select name,gender,telephone,requirement,followUp from RegMembers where checkout is null";
                DataSet ds = fn.getData(query);
                guna2DataGridView1.DataSource = ds.Tables[0];
            }
        }
    }
}
