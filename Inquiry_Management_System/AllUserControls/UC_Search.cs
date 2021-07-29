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
    public partial class UC_Search : UserControl
    {
        function fn = new function();
        String query;
        public UC_Search()
        {
            InitializeComponent();
        }

        private void UC_Search_Load(object sender, EventArgs e)
        {
            
            loadData();
        }
        public void loadData()
        {
            query = "select rid,name,telephone,address,requirement,followUp from RegMembers where chekout='No'";
            DataSet ds = fn.getData(query);
            guna2DataGridView1.DataSource = ds.Tables[0];
        }

        private void txtSearch_ValueChanged(object sender, EventArgs e)
        {
            query = "select rid,name,telephone,address,requirement,followUp from RegMembers where followUp like '" + txtSearch.Text + "%' and chekout='No'";
            DataSet ds = fn.getData(query);
            guna2DataGridView1.DataSource = ds.Tables[0];
        }
        int id;
        private void guna2DataGridView1_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            id = int.Parse(guna2DataGridView1.Rows[e.RowIndex].Cells[0].Value.ToString());
            String name = guna2DataGridView1.Rows[e.RowIndex].Cells[1].Value.ToString();
            String telephone = guna2DataGridView1.Rows[e.RowIndex].Cells[2].Value.ToString();
            String requirement = guna2DataGridView1.Rows[e.RowIndex].Cells[4].Value.ToString();
            String followUp = guna2DataGridView1.Rows[e.RowIndex].Cells[5].Value.ToString();

            txtName.Text = name;
            txtTel.Text = telephone;
            txtReq.Text = requirement;
            txtDate.Text = followUp;
        }
        public void Alert(String msg, Form_Alert.enmType type)
        {
            Form_Alert frm = new Form_Alert();
            frm.showAlert(msg, type);
        }
        private void btnUpdate_Click(object sender, EventArgs e)
        {
            this.Alert("Setting FollowUp Date.....", Form_Alert.enmType.Success);
            query = "update RegMembers set followUp='"+txtDate.Text+ "' where rid="+ id + "";
            fn.setData(query);
            loadData();
        }

        private void btnCheck_Click(object sender, EventArgs e)
        {
            if (txtName.Text != "")
            {
                if(MessageBox.Show("Are You Sure?","Confirmation",MessageBoxButtons.OKCancel,MessageBoxIcon.Warning)==DialogResult.OK)
                {
                    String cdate = txtCheckout.Text;
                    query = "update RegMembers set chekout ='YES',checkout='"+cdate+"' where rid="+id+" ";
                    fn.setData(query);
                    UC_Search_Load(this, null);
                    clearAll();
                }
            }
            else
            {
                this.Alert("No Customer Selected", Form_Alert.enmType.Info);
                //MessageBox.Show("No Customer Selected", "Message", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }
        public void clearAll()
        {
            txtTel.Clear();
            txtName.Clear();
            txtReq.Clear();
            txtCheckout.ResetText();
            txtDate.ResetText();
            //txtSearch.ResetText();
        }

        private void UC_Search_Leave(object sender, EventArgs e)
        {
            clearAll();
        }

        private void guna2DataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            
        }

       
        
        
    }
}
