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
using DGVPrinterHelper;
using Microsoft.Office.Interop.Excel;

namespace Inquiry_Management_System.AllUserControls
{
    public partial class UC_Reports : UserControl
    {
        public UC_Reports()
        {
            InitializeComponent();
        }
        SqlConnection conn = new SqlConnection(@"data source = .; database = InquiryManagementSystem; integrated security = True");
        private void btnFetch_Click(object sender, EventArgs e)
        {
            this.Alert("Data Fetching.....",Form_Alert.enmType.Success);
            SqlDataAdapter sdf = new SqlDataAdapter("select * from RegMembers where date between '" + dateFrom.Value.ToString() + "' and '" + dateTo.Value.ToString() + "' ", conn);
            System.Data.DataTable sd = new System.Data.DataTable();
            sdf.Fill(sd);
            dataGridView1.DataSource = sd;
        }
        public void Alert(String msg, Form_Alert.enmType type)
        {
            Form_Alert frm = new Form_Alert();
            frm.showAlert(msg, type);
        }

        private void btnPrint_Click(object sender, EventArgs e)
        {
            DGVPrinter printer = new DGVPrinter();
            printer.Title = "Dumbara Micro Credit";
            printer.SubTitle = String.Format("Date: {0}", DateTime.Now.Date);
            printer.SubTitleFormatFlags = StringFormatFlags.LineLimit | StringFormatFlags.NoClip;
            printer.PageNumbers = true;
            printer.PageNumberInHeader = false;
            printer.PorportionalColumns = true;
            printer.HeaderCellAlignment = StringAlignment.Near;
            printer.FooterSpacing = 15;
            printer.PrintDataGridView(dataGridView1);

            
            //dataGridView1.Rows.Clear();
        }

        private void btnImport_Click(object sender, EventArgs e)
        {
            this.Alert("Data Importing.....", Form_Alert.enmType.Success);

            _Application excelApp;
            _Workbook excelWorkbook;
            _Worksheet excelWorksheet;


            try
            {
                excelApp = new Microsoft.Office.Interop.Excel.Application();
                excelWorkbook = excelApp.Workbooks.Add(Type.Missing);
                excelWorksheet = null;
                excelWorksheet = excelWorkbook.Sheets["Sheet1"];
                excelWorksheet = excelWorkbook.ActiveSheet;
                excelWorksheet.Name = "CustomerDetails";

                for (int i = 1; i < dataGridView1.Columns.Count + 1; i++)
            {
                excelWorksheet.Cells[1, i] = dataGridView1.Columns[i - 1].HeaderText;
            }
            //XlXmlExportResult DatagridView Rows
            for (int i = 0; i < dataGridView1.Rows.Count - 1; i++)
            {
                for (int j = 0; j < dataGridView1.Columns.Count; j++)
                {
                    excelWorksheet.Cells[i + 2, j + 1] = dataGridView1.Rows[i].Cells[j].Value.ToString();
                }
            }

            SaveFileDialog exportExcelFile = new SaveFileDialog();
            exportExcelFile.FileName = "exportedFile";
            exportExcelFile.DefaultExt = "xlsx";

            if (exportExcelFile.ShowDialog() == DialogResult.OK)
            {
                excelWorkbook.SaveAs(exportExcelFile.FileName, Type.Missing, Type.Missing, Type.Missing, Type.Missing, Type.Missing, XlSaveAsAccessMode.xlNoChange, Type.Missing, Type.Missing, Type.Missing, Type.Missing, Type.Missing);
                MessageBox.Show("Excel File Saved");
            }
        }
            catch (Exception)
            {
                throw;
            }
    //        dataGridView1.SelectAll();
    //        DataObject copydata = dataGridView1.GetClipboardContent();
    //        if (copydata != null) Clipboard.SetDataObject(copydata);
    //        Microsoft.Office.Interop.Excel.Application xlapp = new Microsoft.Office.Interop.Excel.Application();
    //        xlapp.Visible = true;
    //        Microsoft.Office.Interop.Excel.Workbook xlWbook;
    //        Microsoft.Office.Interop.Excel.Worksheet xlsheet;
    //        object miseddata = System.Reflection.Missing.Value;
    //        xlWbook = xlapp.Workbooks.Add(miseddata);

    //        xlsheet = (Microsoft.Office.Interop.Excel.Worksheet)xlWbook.Worksheets.get_Item(1);
    //        Microsoft.Office.Interop.Excel.Range xlr = (Microsoft.Office.Interop.Excel.Range)xlsheet.Cells[1, 1];
    //        xlr.Select();

    //        xlsheet.PasteSpecial(xlr, Type.Missing, Type.Missing, Type.Missing, Type.Missing, Type.Missing, true);
            
        }
    }
}
