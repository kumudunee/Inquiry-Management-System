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
    public partial class UC_Dashboard : UserControl
    {
        public UC_Dashboard()
        {
            InitializeComponent();
            GetData();
        }
        SqlConnection con = new SqlConnection(@"data source = .; database = InquiryManagementSystem; integrated security = True");
        private void GetData()
        {
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter("select count(*) from RegMembers where chekout='"+"No"+"'", con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            labelCus.Text = dt.Rows[0][0].ToString();
            double percentage = (Convert.ToDouble(dt.Rows[0][0].ToString()));
            progress.Value = Convert.ToInt32 (percentage);

            SqlDataAdapter sda1 = new SqlDataAdapter("select count(*) from RegMembers where requirement='" + "Agri Loan" + "' and chekout = '" + "No" + "'  ", con);
            DataTable dt1 = new DataTable();
            sda1.Fill(dt1);
            labelAgri.Text = dt1.Rows[0][0].ToString();

            SqlDataAdapter sda2 = new SqlDataAdapter("select count(*) from RegMembers where requirement='" + "Self Employment Loan" + "' and chekout = '" + "No" + "'  ", con);
            DataTable dt2 = new DataTable();
            sda2.Fill(dt2);
            labelSelf.Text = dt2.Rows[0][0].ToString();

            SqlDataAdapter sda3 = new SqlDataAdapter("select count(*) from RegMembers where requirement='" + "Housing Loan" + "' and chekout = '" + "No" + "'  ", con);
            DataTable dt3 = new DataTable();
            sda3.Fill(dt3);
            labelHousing.Text = dt3.Rows[0][0].ToString();

            SqlDataAdapter sda4 = new SqlDataAdapter("select count(*) from RegMembers where requirement='" + "Business Loan" + "' and chekout = '" + "No" + "'  ", con);
            DataTable dt4 = new DataTable();
            sda4.Fill(dt4);
            labelBusiness.Text = dt4.Rows[0][0].ToString();

            SqlDataAdapter sda5 = new SqlDataAdapter("select count(*) from RegMembers where requirement='" + "Educational Loan" + "' and chekout = '" + "No" + "'  ", con);
            DataTable dt5 = new DataTable();
            sda5.Fill(dt5);
            labelEdu.Text = dt5.Rows[0][0].ToString();

            SqlDataAdapter sda6 = new SqlDataAdapter("select count(*) from RegMembers where requirement='" + "Personal Loan" + "' and chekout = '" + "No" + "'  ", con);
            DataTable dt6 = new DataTable();
            sda6.Fill(dt6);
            labelPersonal.Text = dt6.Rows[0][0].ToString();

            SqlDataAdapter sda7 = new SqlDataAdapter("select count(*) from RegMembers where requirement='" + "Vehicle Leasing" + "' and chekout = '" + "No" + "'  ", con);
            DataTable dt7 = new DataTable();
            sda7.Fill(dt7);
            labelVehicle.Text = dt7.Rows[0][0].ToString();

            SqlDataAdapter sda8 = new SqlDataAdapter("select count(*) from RegMembers where division='" + "Mirigama" + "'", con);
            DataTable dt8 = new DataTable();
            sda8.Fill(dt8);
            lblOne.Text = dt8.Rows[0][0].ToString();
            double precentage1 = (Convert.ToDouble(dt8.Rows[0][0].ToString()));
            proOne.Value = Convert.ToInt32(precentage1);

            SqlDataAdapter sda9 = new SqlDataAdapter("select count(*) from RegMembers where division='" + "Divulapitiya" + "'", con);
            DataTable dt9 = new DataTable();
            sda9.Fill(dt9);
            lblTwo.Text = dt9.Rows[0][0].ToString();
            double precentage2 = (Convert.ToDouble(dt9.Rows[0][0].ToString()));
            proTwo.Value = Convert.ToInt32(precentage2);



            //dis
            SqlDataAdapter sda10 = new SqlDataAdapter("select count(*) from RegMembers where district='" + "Colombo" + "'", con);
            DataTable dt10 = new DataTable();
            sda10.Fill(dt10);
            disOne.Text = dt10.Rows[0][0].ToString();
            double precentage3 = (Convert.ToDouble(dt10.Rows[0][0].ToString()));
            disProOne.Value = Convert.ToInt32(precentage3);

            SqlDataAdapter sda11 = new SqlDataAdapter("select count(*) from RegMembers where district='" + "Gampaha" + "'", con);
            DataTable dt11 = new DataTable();
            sda11.Fill(dt11);
            label13.Text = dt11.Rows[0][0].ToString();
            double precentage4 = (Convert.ToDouble(dt11.Rows[0][0].ToString()));
            disProTwo.Value = Convert.ToInt32(precentage4);

            SqlDataAdapter sda12 = new SqlDataAdapter("select count(*) from RegMembers where district='" + "Kurunegala" + "'", con);
            DataTable dt12 = new DataTable();
            sda12.Fill(dt12);
            lblDisThree.Text = dt12.Rows[0][0].ToString();
            double precentage5 = (Convert.ToDouble(dt12.Rows[0][0].ToString()));
            disProThree.Value = Convert.ToInt32(precentage5);

            SqlDataAdapter sda13 = new SqlDataAdapter("select count(*) from RegMembers where division='" + "Minuwangoda" + "'", con);
            DataTable dt13 = new DataTable();
            sda13.Fill(dt13);
            lblThree.Text = dt13.Rows[0][0].ToString();
            double precentage6 = (Convert.ToDouble(dt13.Rows[0][0].ToString()));
            proThree.Value = Convert.ToInt32(precentage6);


            SqlDataAdapter sda14 = new SqlDataAdapter("select count(*) from RegMembers where division='" + "Negombo" + "'", con);
            DataTable dt14 = new DataTable();
            sda14.Fill(dt14);
            lblFour.Text = dt14.Rows[0][0].ToString();
            double precentage7 = (Convert.ToDouble(dt14.Rows[0][0].ToString()));
            proFour.Value = Convert.ToInt32(precentage7);

            SqlDataAdapter sda15 = new SqlDataAdapter("select count(*) from RegMembers where grama='" + "Loluwagoda South" + "'", con);
            DataTable dt15 = new DataTable();
            sda15.Fill(dt15);
            lblFive.Text = dt15.Rows[0][0].ToString();
            double precentage8 = (Convert.ToDouble(dt15.Rows[0][0].ToString()));
            proFive.Value = Convert.ToInt32(precentage8);

            SqlDataAdapter sda16 = new SqlDataAdapter("select count(*) from RegMembers where division='" + "Alawwa" + "'", con);
            DataTable dt16 = new DataTable();
            sda16.Fill(dt16);
            lblSix.Text = dt16.Rows[0][0].ToString();
            double precentage9 = (Convert.ToDouble(dt16.Rows[0][0].ToString()));
            proSix.Value = Convert.ToInt32(precentage9);

            con.Close();
        }

        private void UC_Dashboard_Load(object sender, EventArgs e)
        {
            //GetData();
            labelUser.Text = dash_class.uname;
            labelTime.Text = DateTime.Now.ToLongTimeString();
            labelDate.Text = DateTime.Now.ToLongDateString();
        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            labelTime.Text = DateTime.Now.ToLongTimeString();
            timer1.Start();
        }
    }
}
