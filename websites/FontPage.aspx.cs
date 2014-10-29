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



public partial class websites_FontPage : System.Web.UI.Page
{
    /* <table width="100%" cellspacing="0" cellpadding="0" border="0">
                 <tr>
                  <td style="width:260px; height: 200px; padding:5px">
                  <script type="text/javascript">
                  var focus_width=253
                  var focus_height=164
                  var text_height=20
                  var swf_height = focus_height+text_height


                  var pics=<%=pics%>;
                  var links=<%=links%>;
                  var texts=<%=texts%>;

                  document.write('<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,0,0" width="'+ focus_width +'" height="'+ swf_height +'">');
                  document.write('<param name="allowScriptaccess" value="sameDomain"><param name="wmode" value="transparent"><param name="movie" value="1/pixviewer.swf"><param name="quality" value="high"><param name="bgcolor" value=#ffffff>');
                  document.write('<param name="menu" value="false"><param name=wmode value="opaque">');
                  document.write('<param name="FlashVars" value="pics='+pics+'&links='+links+'&texts='+texts+'&borderwidth='+focus_width+'&borderheight='+focus_height+'&textheight='+text_height+'">');
                  document.write('<embed src="1/pixviewer.swf" wmode="opaque" FlashVars="pics='+pics+'&links='+links+'&texts='+texts+'&borderwidth='+focus_width+'&borderheight='+focus_height+'&textheight='+text_height+'" menu="false" bgcolor=#ffffff quality="high" width="'+ focus_width +'" height="'+ swf_height +'" allowScriptaccess="sameDomain" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" />');
                  document.write('</object>');

                </script>
                  </td>
                  <td style="height: 200px; padding:5px">
                  <div id="Div2">
                  
                       <!-- <asp:Literal ID="Literal3" runat="server" >
                        
                        </asp:Literal>-->
                        <marquee direction=up onmouseover=this.stop() onmouseout=this.start() scrollamount=1 scrolldelay=4 width=100%><table width=100% cellspacing=0 cellpadding=0><tr><td align=center>
                          <asp:DataList ID="dlNews" runat="server" OnItemCommand="dlNews_ItemCommand">
                        <ItemTemplate>
                            <table border="0" cellspacing="0"  style="width: 100%; height:100%; padding-left: 0px; margin-left: 0px; margin-top: 0px; padding-top: 0px; font-size :9pt ">
                                <tr>
                                    <td align="left" style="width: 290px; height: 21px;border-bottom: 1px;">
                                       
                                      <!-- <td align="left" style="height: 21px;border-bottom: 1px dashed #000000;"></td>-->
                                        <asp:LinkButton ID="lbtnTitle" runat="server" CommandName="select">『
                                        <%# DataBinder.Eval(Container.DataItem,"NewsId")%>* 』 <%# DataBinder.Eval(Container.DataItem,"NewsName") %>『
                                        <%# DataBinder.Eval(Container.DataItem,"AddDate")%> 』</asp:LinkButton>
                                   <!--  <td align="left" style="width: 90px; height: 21px;border-bottom: 1px dashed #000000;">-->
                                     </td>
                                </tr>
                            </table>
                        </ItemTemplate>
                        <HeaderStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                            Font-Underline="False" ForeColor="Blue" HorizontalAlign="Center" />
                    </asp:DataList>
                    </td></tr></table></marquee>
                    </div>
                   
                  </td>
                 </tr>
                </table>  
      Db CC = new Db();
    public string pics = "''";
    public string links = "''";
    public string texts = "''";
    protected void Page_Load(object sender, EventArgs e)
    {
        pics = "'1/1.jpg'" + "+ '|' +" + "'1/4.jpg'" + " + '| '+" + "'1/2.jpg'" + "+ '| '+" + "'1/3.jpg'";
        links = "'Img.aspx'" + "+ '|' +" + "'1/4.jpg'" + " + '| '+" + "'1/2.jpg'" + "+ '| '+" + "'1/3.jpg'";
        texts = "'标题'" + "+ '|' +" + "'1/4.jpg'" + " + '| '+" + "'1/2.jpg'" + "+ '| '+" + "'1/3.jpg'";
       
        bind();
        LatestBind();

    }
    string strStyle;
    protected void bind()
    {
      
     PagedDataSource ps = new PagedDataSource();
        //获取数据集
     DataSet ds = CC.GetDataSet("select NewsId , NewsName ,left(convert(varchar(20),AddDate,110),5)  as AddDate from PictureNews order by  AddDate Desc", "tbNews");
      ps.DataSource = ds.Tables["tbNews"].DefaultView;
       
        this.dlNews.DataSource = ps;
        this.dlNews.DataKeyField = "NewsId";
        this.dlNews.DataBind();

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



  
   

    protected void dlNews_ItemCommand(object source, DataListCommandEventArgs e)
    {   

       int NewsId = Convert.ToInt32(dlNews.DataKeys[e.Item.ItemIndex].ToString());
      Response.Redirect("PictureNews.aspx?NewsId=" + NewsId);
        //Response.Write("<script language=javascript>window.open('PictureNews.aspx?NewsId=" + NewsId+ "','')</script>");
    }
    protected void LatestNews_ItemCommand(object source, DataListCommandEventArgs e)
    {
   
        int NewsId = Convert.ToInt32(LatestNews.DataKeys[e.Item.ItemIndex].ToString());
        Response.Write("<script language=javascript>window.open('LatestNews.aspx?NewsId=" + NewsId + "','','width=520,height=260')</script>");
       }
   
}
*/

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
        Response.Redirect("LatestNews.aspx?NewsId=" + NewsId);
        //Response.Write("<script language=javascript>window.open('LatestNews.aspx?NewsId=" + NewsId + "','','width=520,height=260')</script>");
       }
   
}
