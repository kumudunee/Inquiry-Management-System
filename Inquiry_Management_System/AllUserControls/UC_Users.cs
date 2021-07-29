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
    public partial class UC_Users : UserControl
    {
        function fn = new function();
        String query;
        public UC_Users()
        {
            InitializeComponent();
        }

        public void Alert(String msg, Form_Alert.enmType type)
        {
            Form_Alert frm = new Form_Alert();
            frm.showAlert(msg, type);
        }
        private void UC_Users_Load(object sender, EventArgs e)
        {
            getMaxID();
        }
       
        public void getMaxID()
        {
            query = "select max(uid) from userReg";
            DataSet ds = fn.getData(query);

            if (ds.Tables[0].Rows[0][0].ToString() != "")
            {
                Int64 num = Int64.Parse(ds.Tables[0].Rows[0][0].ToString());
                labelToSet.Text = (num + 1).ToString();

            }
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            if (txtName.Text != "" && txtMobile.Text != "" && txtGender.Text != "" && txtEmail.Text != "" && txtPass.Text != "")
            {
                String name = txtName.Text;
                Int64 mobile = Int64.Parse(txtMobile.Text);
                String gender = txtGender.Text;
                String email = txtEmail.Text;
                //String username = txtUsername.Text;
                String pass = txtPass.Text;

                query = "insert into userReg (uname, mobile, gender, emailId, pass) values('" + name + "'," + mobile + ",'" + gender + "','" + email + "','" + pass + "') ";
                fn.setData(query);

                clearAll();
                getMaxID();
            }
            else
            {
                this.Alert("Fill all Fields.", Form_Alert.enmType.Warning);
                //MessageBox.Show("Fill all Fields.", "Warning...!", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
        }
        public void clearAll()
        {
            txtName.Clear();
            txtMobile.Clear();
            txtGender.SelectedIndex = -1;
            txtEmail.Clear();
            //txtUsername.Clear();
            txtPass.Clear();
        }
        

        private void btnDelete_Click(object sender, EventArgs e)
        {
            if (txtSearch.Text != "")
            {
                if (MessageBox.Show("Are You Sure?", "Confirmation...!", MessageBoxButtons.YesNo, MessageBoxIcon.Warning) == DialogResult.Yes)
                {
                    query = "delete from userReg where uid=" + txtSearch.Text + "";
                    fn.setData(query);
                    tabControl1_SelectedIndexChanged_1(this, null);
                }
            }
            else
            {
                this.Alert("ID Cannot be empty.", Form_Alert.enmType.Warning);
            }
        }

        private void UC_Users_Leave(object sender, EventArgs e)
        {
            clearAll();
        }

        private void tabControl1_SelectedIndexChanged_1(object sender, EventArgs e)
        {
            if (tabControl1.SelectedIndex == 1)
            {
                query = "select * from userReg ";
                DataSet ds = fn.getData(query);
                guna2DataGridView1.DataSource = ds.Tables[0];
            }
            else if (tabControl1.SelectedIndex == 2)
            {
                query = "select * from userReg ";
                DataSet ds = fn.getData(query);
                guna2DataGridView2.DataSource = ds.Tables[0];
            }
        }
    }
}
