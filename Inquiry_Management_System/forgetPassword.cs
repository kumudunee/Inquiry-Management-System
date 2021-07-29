using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Net;
using System.Net.Mail;

namespace Inquiry_Management_System
{
    public partial class forgetPassword : Form
    {
        String randomCode;
        public static String to;
        public forgetPassword()
        {
            InitializeComponent();
        }
        public void Alert(String msg,Form_Alert.enmType type)
        {
            Form_Alert frm = new Form_Alert();
            frm.showAlert(msg,type);
        }
        private void btnSend_Click(object sender, EventArgs e)
        {
            this.Alert("OTP Sending.....",Form_Alert.enmType.Success);

            String from, pass, messageBody;
            Random rand = new Random();
            randomCode = (rand.Next(999999)).ToString();
            MailMessage message = new MailMessage();
            to = (txtEmail.Text).ToString();
            from = "anoja875@gmail.com";
            pass = "xfggnyiwddmkctfe";
            messageBody = "Your reset code is " + randomCode;
            message.To.Add(to);
            message.From = new MailAddress(from);
            message.Body = messageBody;
            message.Subject = "Password Reseting Code";
            SmtpClient smtp = new SmtpClient("smtp.gmail.com");
            smtp.EnableSsl = true;
            smtp.Port = 587;
            smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
            smtp.Credentials = new NetworkCredential(from, pass);
            try
            {
                smtp.Send(message);
                MessageBox.Show("Code Send Successfully");
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void btnVerifyCode_Click(object sender, EventArgs e)
        {
            if (randomCode == (txtVerify.Text).ToString())
            {
                this.Alert("OTP Verifying.....", Form_Alert.enmType.Success);
                to = txtEmail.Text;
                ResetPassword rp = new ResetPassword();
                this.Hide();
                rp.Show();
            }
            else
            {
                this.Alert("Error.....", Form_Alert.enmType.Error);
                MessageBox.Show("Wrong Code.");
            }
        }

        private void btnExit_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }
    }
    
}
