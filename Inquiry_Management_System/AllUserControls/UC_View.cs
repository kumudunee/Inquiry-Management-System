using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace Inquiry_Management_System.AllUserControls
{
    public partial class UC_View : UserControl
    {
        public UC_View()
        {
            InitializeComponent();
        }
        SqlConnection con = new SqlConnection(@"data source = .; database = InquiryManagementSystem; integrated security = True");

        public void Alert(String msg, Form_Alert.enmType type)
        {
            Form_Alert frm = new Form_Alert();
            frm.showAlert(msg, type);
        }

        private void fetchData()
        {
            

            con.Open();
            
            String query = "select * from RegMembers where telephone =" + txtMobile.Text + "";
            SqlCommand cmd = new SqlCommand(query, con);
            DataTable dt = new DataTable();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            sda.Fill(dt);
            foreach (DataRow dr in dt.Rows)
            {
                labelMobile.Text = dr["telephone"].ToString();
                labelName.Text = dr["name"].ToString();
                labelGender.Text = dr["gender"].ToString();
                //labelGuardian.Text = dr["guardian"].ToString();
                labelPerAdd.Text = dr["address"].ToString();
                labelReq.Text = dr["requirement"].ToString();
                //labelId.Text = dr["idProof"].ToString();
                labelDate.Text = dr["followUp"].ToString();
                //labelBed.Text = dr["bedNo"].ToString();
                labelProvince.Text = dr["province"].ToString();
                labelDistrict.Text = dr["district"].ToString();
                labelDivision.Text = dr["division"].ToString();
                labelGrama.Text = dr["grama"].ToString();
                //labelNext.Text = dr["nextOfKin"].ToString();
                //labelNextMobile.Text = dr["nextMobile"].ToString();

                //labelAddress.Text = dr["nextAdd"].ToString();
                //labelMedical.Text = dr["medical"].ToString();


                labelMobile.Visible = true;
                labelName.Visible = true;
                labelGender.Visible = true;
                //labelGuardian.Visible = true;
                labelPerAdd.Visible = true;
                labelReq.Visible = true;
                //labelId.Visible = true;
                labelDate.Visible = true;
                //labelBed.Visible = true;
                labelProvince.Visible = true;
                labelDistrict.Visible = true;
                labelDivision.Visible = true;
                labelGrama.Visible = true;
                //labelNext.Visible = true;
                //labelNextMobile.Visible = true;

                //labelAddress.Visible = true;
                //labelMedical.Visible = true;
            }
            con.Close();
        }
        private void btnRefresh_Click(object sender, EventArgs e)
        {
            fetchData();
        }

        private void btnPrint_Click(object sender, EventArgs e)
        {
            if (printPreviewDialog1.ShowDialog() == DialogResult.OK)
            {
                printDocument1.Print();
            }
        }

        private void printPreviewDialog1_Load(object sender, EventArgs e)
        {

        }

        private void printDocument1_PrintPage(object sender, System.Drawing.Printing.PrintPageEventArgs e)
        {
            e.Graphics.DrawString("====DUMBARA MICRO CREDIT====", new Font("Century Gothic", 25, FontStyle.Bold), Brushes.Red, new Point(150));
            e.Graphics.DrawString("Mobile No:   " + labelMobile.Text + "\nName:     " + labelName.Text + "\nGender:     " + labelGender.Text + "\nRequirement:      " + labelReq.Text + "\nAddress:     " + labelPerAdd.Text + "\nDate:     " + labelDate.Text + "\nProvince:       " + labelProvince.Text + "\nDistrict:   " + labelDistrict.Text + "\nDivision:   " + labelDivision.Text + "\nGrama Niladhari Division:   " + labelGrama.Text,new Font("Century Gothic", 18, FontStyle.Regular), Brushes.Blue, new Point(80, 100));
        }
    }
}
