using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class Admin_ChangePwd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ids.Text = "tom";
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        if (txtDiscount.Text != txtName.Text) Response.Write("<script>alert('the two password is not the same！');</script>");
        else
        {
           // string ID_S = Request.QueryString["ID_S"] == null ? "" : Request.QueryString["ID_S"];
            string conStr = "Data Source=.\\SQLEXPRESS;AttachDbFilename=" + System.AppDomain.CurrentDomain.BaseDirectory + @"App_Data\DB.mdf" + ";Integrated Security=True;User Instance=True";
            SqlConnection conn = new SqlConnection(conStr);
            conn.Open();
            string str2 = "update [Admin] set Password=@Password";
            SqlCommand cmd2 = new SqlCommand(str2, conn);
            //cmd2.Parameters.Add(new SqlParameter("@ID_S", SqlDbType.VarChar, 20));
            //cmd2.Parameters["@ID_S"].Value = ID_S;
            cmd2.Parameters.Add(new SqlParameter("@Password", SqlDbType.VarChar, 50));
            cmd2.Parameters["@Password"].Value = txtName.Text;
            // cmd2.ExecuteNonQuery();
            try
            {
                cmd2.ExecuteNonQuery();
                Response.Write("<script>alert('change successfully！');</script>");
                Response.Redirect("Admin_main.aspx");
            }
            catch { Response.Write("<script>alert('change Failed！');</script>"); }
        }
    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        //string ID_S = Request.QueryString["ID_S"] == null ? "" : Request.QueryString["ID_S"];
        Response.Redirect("Admin_main.aspx");
    }
}
