using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class websites_NoteBook : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        BindGrid();
    }
    public void BindGrid()
    {
        string settings = "Data Source=.\\SQLEXPRESS;AttachDbFilename=" + System.AppDomain.CurrentDomain.BaseDirectory + @"App_Data\DB.mdf" + ";Integrated Security=True;User Instance=True";
        //创建数据库连接
        SqlConnection cn = new SqlConnection(settings);
        string mysql = "SELECT * FROM [Review]";
        SqlDataAdapter da = new SqlDataAdapter(mysql, cn);
        DataSet ds = new DataSet();
        da.Fill(ds);
        rptReviews.DataSource = ds;
        rptReviews.DataBind();
    }
    protected void submit_Click(object sender, EventArgs e)
    {
        string comment = this.body.Value;
        
        string email = this.i_email.Value;
        string datetime = DateTime.Now.ToString();

        string settings = "Data Source=.\\SQLEXPRESS;AttachDbFilename=" + System.AppDomain.CurrentDomain.BaseDirectory + @"App_Data\DB.mdf" + ";Integrated Security=True;User Instance=True";
        //创建数据库连接
        SqlConnection myconn = new SqlConnection(settings);
        //打开数据库连接
        try
        {
            myconn.Open();
            string strsql = "insert into [Review] (Body,Email,addTime) values('" + comment + "','" + email + "','" + datetime + "')";
            SqlCommand cm = new SqlCommand(strsql, myconn);
            cm.ExecuteNonQuery();
            //Response.Redirect("Show.aspx?PID=" + Session["PID"].ToString());
        }
        catch (Exception err)
        {
            throw err;
        }
        finally
        {
            myconn.Close();
        }

    }
}
