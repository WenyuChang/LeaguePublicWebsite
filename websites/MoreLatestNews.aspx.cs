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

public partial class websites_MoreLatestNews : System.Web.UI.Page
{
    Db CC = new Db();
    protected void Page_Load(object sender, EventArgs e)
    {
        LatestBind();
    }

    //最新新闻部分
    protected void LatestBind()
    {

        PagedDataSource ps = new PagedDataSource();
        //获取数据集
        DataSet ds = CC.GetDataSet("select NewsId,NewsCatalog , NewsName ,left(convert(varchar(20),AddDate,110),5)  as AddDate from LatestNews order by  AddDate Desc", "tbNews");
        ps.DataSource = ds.Tables["tbNews"].DefaultView;

        this.LatestNews.DataSource = ps;
        this.LatestNews.DataKeyField = "NewsId";
        this.LatestNews.DataBind();

    }






    /*  protected void dlNews_ItemCommand(object source, DataListCommandEventArgs e)
      {   

         int NewsId = Convert.ToInt32(dlNews.DataKeys[e.Item.ItemIndex].ToString());
          Response.Write("<script language=javascript>window.open('PictureNews.aspx?NewsId=" + NewsId+ "','')</script>");
      }*/
    protected void LatestNews_ItemCommand(object source, DataListCommandEventArgs e)
    {

        int NewsId = Convert.ToInt32(LatestNews.DataKeys[e.Item.ItemIndex].ToString());
        Response.Write("<script language=javascript>window.open('LatestNews.aspx?NewsId=" + NewsId + "','','width=520,height=260')</script>");
    }

}
