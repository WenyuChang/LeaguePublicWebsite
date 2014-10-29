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


public partial class websites_LatestNews : System.Web.UI.Page
{
 
     Db CC = new Db();
    protected void Page_Load(object sender, EventArgs e)
    {
        DataSet ds = CC.GetDataSet("select NewsId,NewsName ,NewsCatalog,convert(varchar(20),AddDate,110)  as AddDate ,PictureName,PictureUrl,NewsInfo,NewsAuthor from LatestNews ", "tbNews");

        DataRow[] row = ds.Tables["tbNews"].Select(" NewsId = "+ Request.QueryString["NewsId"]); 
    
    
        foreach (DataRow rs in row)
        {
            
           this.NewsName.Text = rs["NewsName"].ToString();
           // this.NewsName.Text = rs["NewsName"].ToString();
            this.NewsInfo.Text ="　　"+ rs["NewsInfo"].ToString();
         this.AddDate.Text = rs["AddDate"].ToString();
            this.NewsCatalog.Text = rs["NewsCatalog"].ToString();
            //PictureUrl = rs["PictureUrl"].ToString();
           // PictureName = rs["PictureName"].ToString();
        }

    }
    
    
}

 