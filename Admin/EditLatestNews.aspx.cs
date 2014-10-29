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

public partial class Admin_EditLatestNews : System.Web.UI.Page
{
    Db CC = new Db();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //调用CommonClass类中的GetDataSet获取数据集
            DataSet ds = CC.GetDataSet("select * from LatestNews where NewsId='" + Request.QueryString["NewsId"] + "'", "tbNews");
            DataRow[] row = ds.Tables["tbNews"].Select();
            foreach (DataRow rs in row)
            {
                //显示编辑的新闻类别名
                this.txtNewsTitle.Text = rs["NewsName"].ToString();
                //显示编辑的新闻内容
                this.txtNewsContent.Text = rs["NewsInfo"].ToString();
                //显示编辑的新闻标题
                this.labTitle.Text = rs["NewsName"].ToString();
                //显示编辑的新闻类型
                switch (rs["NewsCatalog"].ToString())
                {
                    case "aaaa":
                        this.ddlNewsType.SelectedIndex = 0;
                        break;
                    
                    default:
                        break;
                }
            }
        }
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        Boolean getresult;
       
    getresult= CC.ExecSQL("UPDATE LatestNews SET NewsName = '" + this.txtNewsTitle.Text + "', NewsInfo = '" + this.txtNewsContent.Text + "',  NewsCatalog = '" + this.ddlNewsType.SelectedValue.ToString() + "' WHERE (NewsId = '" + Request.QueryString["NewsId"] + "')");

    if (getresult == true)
    {
        Response.Write(CC.MessageBox("数据修改成功！", "LatestListNews.aspx"));
    }
    else
    {
        Response.Write(CC.MessageBox("数据修改失败！", "EditLatestNews.aspx"));
    }
    }
    protected void btnReset_Click(object sender, EventArgs e)
    {
        this.txtNewsTitle.Text = "";
        this.txtNewsContent.Text = "";
    }
}