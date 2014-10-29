using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class websites_MorePictureNews : System.Web.UI.Page
{
    SqlConnection conn;
    SqlDataAdapter da;
    Db CC = new Db();
    string conStr;
    protected System.Web.UI.WebControls.DataList listph;
    protected System.Web.UI.WebControls.DataList listtnew;
    DataSet ds = new DataSet();
    // Db CC = new Db();

    protected void Page_Load(object sender, EventArgs e)
    {
        conStr = "Data Source=.\\SQLEXPRESS;AttachDbFilename="
            + System.AppDomain.CurrentDomain.BaseDirectory + @"App_Data\DB.mdf" + ";Integrated Security=True;User Instance=True";

        conn = new SqlConnection(conStr);
        // conn=new SqlConnection(System.Configuration.ConfigurationSettings.AppSettings["ConnStr"]);
        //da = new SqlDataAdapter("select top 10 id,p_title from c_pic order by p_dj desc", conn);
        //  da.Fill(ds, "picph");
        // listtph.DataSource = ds.Tables["picph"];
        //  listtph.DataBind();

        da = new SqlDataAdapter("select top 8 id,p_title,left(convert(varchar(20),p_datetime,110),5)  as p_datetime  from c_pic order by p_datetime desc", conn);
        da.Fill(ds, "picnew");
        listpic.DataSource = ds.Tables["picnew"];
        listpic.DataBind();
       
    }
}