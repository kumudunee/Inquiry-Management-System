using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Inquiry_Management_System.AllUserControls
{
    public partial class UC_Update : UserControl
    {
        SqlConnection con = new SqlConnection(@"data source = .; database = HostelManagementSystem; integrated security = True");
        int provinceid, districtid, divisionid;
        function fn = new function();
        String query;
        public UC_Update()
        {
            InitializeComponent();
            refreshprovince();
        }
        public void refreshprovince()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from province", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Close();
            comboProvince.DisplayMember = "provincename";
            comboProvince.ValueMember = "provinceid";
            comboProvince.DataSource = dt;

        }

        private void UC_Update_Load(object sender, EventArgs e)
        {

        }
        public void clearAll()
        {
            txtName.Clear();
            txtTel.Clear();
            txtGender.SelectedIndex = -1;
            txtAddress.Clear();
            txtRequirement.SelectedIndex = -1;
        }

        private void comboProvince_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (comboProvince.SelectedValue.ToString() != null)
            {
                provinceid = Convert.ToInt32(comboProvince.SelectedValue.ToString());
                refreshdistrict(provinceid);
            }
        }
        private void refreshdistrict(int provinceid)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from district where proId=@provinceid", con);
            cmd.Parameters.AddWithValue("provinceid", provinceid);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Close();
            comboDistrict.DisplayMember = "districtname";
            comboDistrict.ValueMember = "districtid";
            comboDistrict.DataSource = dt;
        }

        private void comboDistrict_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (comboDistrict.SelectedValue.ToString() != null)
            {
                districtid = Convert.ToInt32(comboDistrict.SelectedValue.ToString());
                refreshDivision(districtid);
            }
        }

        private void comboDivision_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (comboDivision.SelectedValue.ToString() != null)
            {
                divisionid = Convert.ToInt32(comboDivision.SelectedValue.ToString());
                refreshGrama(divisionid);
            }
        }
        private void refreshDivision(int districtid)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from division where disId=@districtid", con);
            cmd.Parameters.AddWithValue("districtid", districtid);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Close();
            comboDivision.DisplayMember = "divisionname";
            comboDivision.ValueMember = "divisionid";
            comboDivision.DataSource = dt;
        }
        private void refreshGrama(int divisionid)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from grama where divId=@divisionid", con);
            cmd.Parameters.AddWithValue("divisionid", divisionid);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Close();
            comboGrama.DisplayMember = "gramaname";
            comboGrama.ValueMember = "gramaid";
            comboGrama.DataSource = dt;
        }
        public void Alert(String msg, Form_Alert.enmType type)
        {
            Form_Alert frm = new Form_Alert();
            frm.showAlert(msg, type);
        }
        private void btnUpdate_Click(object sender, EventArgs e)
        {
            if (txtName.Text != "")
            {
                Int64 telephone = Int64.Parse(txtTel.Text);
                String name = txtName.Text;
                String gender = txtGender.Text;
                String address = txtAddress.Text;
                String province = comboProvince.Text;
                String district = comboDistrict.Text;
                String division = comboDivision.Text;
                String grama = comboGrama.Text;
                String requirement = txtRequirement.Text;
                String date = txtDate.Text;
                String checkout = txtCheck.Text;

                query = "update RegMembers set name='" + name + "',gender='" + gender + "',address='" + address + "',province='" + province + "',district='" + district + "',division='" + division + "',grama='" + grama + "',requirement='" + requirement + "',followUp='" + date + "',chekout='" + checkout + "' where telephone=" + telephone + " ";
                fn.setData(query);
                clearAll();
                this.Alert("Data Updating.....", Form_Alert.enmType.Success);
            }
            else
            {
                this.Alert("Error.....", Form_Alert.enmType.Error);
                //MessageBox.Show("Fill All Fields.", "Information!!", MessageBoxButtons.OK, MessageBoxIcon.Information);    
            }
        }

        private void btnDelete_Click(object sender, EventArgs e)
        {
            if (txtName.Text != "")
            {
                if (MessageBox.Show("Are You Sure?", "Confirmation", MessageBoxButtons.YesNo, MessageBoxIcon.Warning) == DialogResult.Yes)
                {
                    query = "delete from RegMembers where telephone=" + txtTel.Text + "";
                    fn.setData(query);
                    clearAll();
                }
            }
            else
            {
                this.Alert("Error.....", Form_Alert.enmType.Error);
            }

           
        }

        private void UC_Update_Leave(object sender, EventArgs e)
        {
            clearAll();
        }

        private void btnSearch_Click(object sender, EventArgs e)
        {
            query = "select * from RegMembers where telephone="+txtTel.Text+" ";
            DataSet ds = fn.getData(query);

            if(ds.Tables[0].Rows.Count !=0)
            {
                txtName.Text = ds.Tables[0].Rows[0][1].ToString();
                txtGender.Text = ds.Tables[0].Rows[0][3].ToString();
                txtAddress.Text = ds.Tables[0].Rows[0][4].ToString();
                txtDateCome.Text = ds.Tables[0].Rows[0][5].ToString();
                comboProvince.Text = ds.Tables[0].Rows[0][6].ToString();
                comboDistrict.Text = ds.Tables[0].Rows[0][7].ToString();
                comboDivision.Text = ds.Tables[0].Rows[0][8].ToString();
                comboGrama.Text = ds.Tables[0].Rows[0][9].ToString();
                txtRequirement.Text = ds.Tables[0].Rows[0][10].ToString();
                txtDate.Text = ds.Tables[0].Rows[0][11].ToString();
                txtCheck.Text = ds.Tables[0].Rows[0][12].ToString();

            }
            else
            {
                clearAll();
                this.Alert("Incorrect Tel. Number", Form_Alert.enmType.Info);
                //MessageBox.Show("No Record with this mobile No Exists.", "Information",MessageBoxButtons.OK,MessageBoxIcon.Information);
            }

        }
    }
}
