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

public partial class Admin_AddLatestNews : System.Web.UI.Page
{
    Db CC = new Db();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public void CreateLatestNews(object sender, EventArgs e)
    {

        string getcatalog = this.GetCatalog.SelectedItem.ToString();
        string getnewsname = this.GetNewsName.Text;
        string getnewsauthor = this.GetNewsAuthor.Text;
    
       
       
        Boolean getresult  ;
        //调用CommonClass类的ExecSQL方法，将填写的新闻信息添加到数据库中
      getresult= CC.ExecSQL("INSERT INTO LatestNews( NewsId,NewsName,NewsCatalog,NewsAuthor,AddDate,NewsInfo)VALUES ('005','" + getnewsname + "', '" + getcatalog + "', '" + getnewsauthor + "',  '" + DateTime.Now.ToString("yyyy-MM-dd") + "','"+this.NewsInfo.ToString()+"')");
        //调用CommonClass类的MessageBox方法，弹出提示框，提示用户添加成功
      if (getresult == true)
      {
          Response.Write(CC.MessageBox("添加成功！"));
      }
      else
      {
          Response.Write(CC.MessageBox("添加失败！"));
      }
     
    }
    public void ResetLatestNews(object sender, EventArgs e)
    {
        this.GetCatalog.SelectedIndex=0;
        this.GetNewsName.Text="";
       this.GetNewsAuthor.Text="";
     //  this.NewsInfo = "";
    }
}
