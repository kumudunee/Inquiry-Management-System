using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace Inquiry_Management_System.AllUserControls
{
    public partial class UC_RegisterCustomers : UserControl
    {
        SqlConnection con = new SqlConnection(@"data source = .; database = InquiryManagementSystem; integrated security = True");
        int provinceid, districtid, divisionid;
        function fn = new function();
        String query;
        public UC_RegisterCustomers()
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

        private void UC_RegisterCustomers_Load(object sender, EventArgs e)
        {

        }
        public void Alert(String msg, Form_Alert.enmType type)
        {
            Form_Alert frm = new Form_Alert();
            frm.showAlert(msg, type);
        }

        private void btnReg_Click(object sender, EventArgs e)
        {
            if (txtName.Text != "")
            {
                this.Alert("Registered.....",Form_Alert.enmType.Success);
                query = "insert into RegMembers (name,telephone,gender,address,date,province,district,division,grama,requirement,followUp) values ('" + txtName.Text + "'," + txtTel.Text + ",'" + txtGender.Text + "','" + txtAddress.Text + "','" + txtDateCome.Text + "','" + comboProvince.Text + "','" + comboDistrict.Text + "','" + comboDivision.Text + "','" + comboGrama.Text + "','" + txtRequirement.Text + "','" + txtDate.Text + "')";
                fn.setData(query);
                clearAll();

            }
            else
            {
                this.Alert("Error.....", Form_Alert.enmType.Error);
                //MessageBox.Show("Fill All Fields.", "Information!!", MessageBoxButtons.OK, MessageBoxIcon.Information);
                
            }
            //this.Alert("Successfully Registered.");
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

        public void clearAll()
        {
            txtName.Clear();
            txtTel.Clear();
            txtGender.SelectedIndex = -1;
            txtAddress.Clear();
            txtRequirement.SelectedIndex = -1;
        }

        private void UC_RegisterCustomers_Leave(object sender, EventArgs e)
        {
            clearAll();
        }
    }
}
