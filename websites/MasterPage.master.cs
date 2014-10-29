using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;

public partial class websites_MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.Literal1.Text = GetLinks();
    }
    protected void link1_Click(object sender, EventArgs e)
    {
        Response.Redirect("FontPage.aspx");
    }
    protected void link2_Click(object sender, EventArgs e)
    {
        Response.Redirect("jianshe.aspx");
    }
    protected void link3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Tzhishi.aspx");
    }
    protected void link4_Click(object sender, EventArgs e)
    {
        Response.Redirect("NoteBook.aspx");
    }
    public string GetLinks()
    {
        string str = "<marquee direction=up onmouseover=this.stop() onmouseout=this.start() scrollamount=1 scrolldelay=4 width=100%><table width=100% cellspacing=0 cellpadding=0><tr><td align=center>";
        string settings = "Data Source=.\\SQLEXPRESS;AttachDbFilename=" + System.AppDomain.CurrentDomain.BaseDirectory + @"App_Data\DB.mdf" + ";Integrated Security=True;User Instance=True";
        //创建数据库连接
        SqlConnection myconn = new SqlConnection(settings);
        //打开数据库连接
        try
        {
            myconn.Open();
            string strsql = "select * from [Link]";
            SqlCommand cm = new SqlCommand(strsql, myconn);
            SqlDataReader dr = cm.ExecuteReader();
            while (dr.Read())
            {
                if (dr["Logo"].ToString() != "")
                {
                    object obj2 = str;
                    str = string.Concat(new object[] { obj2, "<a href='", dr["Url"].ToString(), "' target=_blank ><img src='../images/", dr["Logo"].ToString(), "' border='0' height=\"70\" width=\"150\"></a>" });
                }
                else
                {
                    string str3 = str;
                    str = str3 + "<a href='" + dr["Url"].ToString() + "' target=_blank '>" + dr["Name"].ToString() + "</a>";
                }
                str = str + "<br>";
            }
        }
        catch { }
        myconn.Close();
        return (str + "</td></tr></table></marquee>");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        mem_Name.Value = "";
        mem_Pass.Value = "";
    }
    protected void sign_in_Click(object sender, EventArgs e)
    {
        // String code = CodeTest.Code;
        if (this.mem_Name.Value.Trim().Equals(""))
        {
            Response.Write("<script>alert('账户名不能为空！');</script>");
        }
        else if (this.mem_Pass.Value.Trim().Equals(""))
        {
            Response.Write("<script>alert('密码不能为空！');</script>");
        }


        else
        {
            bool flag = false;
            string settings = "Data Source=.\\SQLEXPRESS;AttachDbFilename=" + System.AppDomain.CurrentDomain.BaseDirectory + @"App_Data\DB.mdf" + ";Integrated Security=True;User Instance=True";
            //创建数据库连接
            SqlConnection myconn = new SqlConnection(settings);
            //打开数据库连接
            try
            {
                myconn.Open();
                string strsql = "select * from [Admin]";
                SqlCommand cm = new SqlCommand(strsql, myconn);
                SqlDataReader dr = cm.ExecuteReader();
                while (dr.Read())
                {
                    if (dr["Name"].ToString() == this.mem_Name.Value && dr["Password"].ToString() == this.mem_Pass.Value)
                    {
                        flag = true;
                        // Session["memberID"] = dr["MemberID"].ToString();
                        //Session["memberName"] = dr["name"].ToString();
                        Response.Redirect("../Admin/Default2.aspx");
                    }

                }
                if (!flag)
                {
                    Response.Write("<script language=javascript>alert('登录失败！请重新输入！')</script>)");
                    this.mem_Name.Value = null;
                    this.mem_Pass.Value = null;
                    Response.Redirect("main.aspx");
                }
                dr.Close();
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
    protected void lb1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Tuanzhang.aspx");
    }

    protected void Unnamed1_Click(object sender, EventArgs e)
    {
        tch tc = new tch();
        string value = this.keyword.Text.ToString();
        DataSet ds;
        if (value.CompareTo("团务") == 0)
            Response.Redirect("Tuanzhang.aspx");
        else if (value.CompareTo("组织部") == 0)
            Response.Redirect("jianshe.aspx");
        else if (value.CompareTo("新闻") == 0)
            Response.Redirect("FontPage.aspx");

    }
}
