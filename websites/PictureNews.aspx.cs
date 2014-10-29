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
using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data;
using System.Data.SqlClient;

public partial class websites_PictureNews : System.Web.UI.Page
{
    /* <table width="100%" cellpadding="0" cellspacing="0" border="0" style="height:440px">
																	<tr >
																		<td height="20%" align="center" valign="middle"  bgcolor="#E7F1F8">
																	  <asp:Label ID="NewsName" runat="server" CssClass="title"  Text="Label"
                                                                   Width="373px"></asp:Label>
																		</td>
																	</tr>
																	<tr>
																		<td align="center" height="10%" bgcolor="#afd5fc">发表日期：<asp:Label ID="AddDate" runat="server" CssClass="title"  Text=""/> 来源：xxxx管理平台</td>
																	</tr>
																	<tr>																
																		<td height="10%" align="center" valign="middle" bgcolor="#E7F1F8"><font id='GbText'>【<a href="javascript:recommEndNew()">推荐给朋友</a>】【浏览字号：<a href="javascript:doZoom(16)">大</a> <a href="javascript:doZoom(14)">中</a> <a href="javascript:doZoom(12)">小</a>】【<a href="javascript:window.print();">打印</a>】【<a href="javascript:window.close();">关闭</a>】</font></td>
																	</tr>
																	<tr>
																		<td align="center" class="GbText">
																			<asp:GridView ID="ContentPicView" Width="450" CellPadding="0" BorderWidth="0" CellSpacing="5" runat="server" AutoGenerateColumns="False" ShowHeader="False">
																				<Columns>
																					<asp:TemplateField>
																						<ItemTemplate>
																							<table cellpadding="5" cellspacing="0">
																								<tr>
																									<td align="center"><img src='../aaaa' width="400" height="300" /></td>
																								</tr>
																								<tr>
																									<td align="center"><a href='ViewPicture.aspx?DocumentID=aaaaa' target="_blank">aaaa</a></td>
																								</tr>
																							</table>																							
																						</ItemTemplate>
																					</asp:TemplateField>
																				</Columns>
																			</asp:GridView>
																		</td>
																	</tr>
																	<tr>
																		<td>
																			<div id="Content" >
																			 <asp:TextBox ID="NewsInfo" runat="server" CssClass="txt" Height="159px" TextMode="MultiLine"
                                                                            Width="486px"></asp:TextBox>
																			
																			</div>
																			<br />
																		</td>
																	</tr>
																</table>*/
    /*  Db CC = new Db();
     protected void Page_Load(object sender, EventArgs e)
     {
         DataSet ds = CC.GetDataSet("select NewsId,NewsName ,convert(varchar(20),AddDate,110)  as AddDate ,PictureName,PictureUrl,NewsInfo from PictureNews ", "tbNews");

         DataRow[] row = ds.Tables["tbNews"].Select(" NewsId = "+ Request.QueryString["NewsId"]); 
    
    
         foreach (DataRow rs in row)
         {
            
            this.NewsName.Text = rs["NewsName"].ToString();
            // this.NewsName.Text = rs["NewsName"].ToString();
             this.NewsInfo.Text ="　　"+ rs["NewsInfo"].ToString();
          this.AddDate.Text = rs["AddDate"].ToString();
             //PictureUrl = rs["PictureUrl"].ToString();
            // PictureName = rs["PictureName"].ToString();
         }

     }
     protected void btnClose_Click(object sender, EventArgs e)
     {
         Response.Write("<script language=javascript>window.close()</script>");
     }
    
 }*/
    SqlConnection conn;
    public string aid;
    public string NewsView;

    protected void Page_Load(object sender, System.EventArgs e)
    {
        aid = Request.QueryString["id"];
        if (!IsPostBack)
        {
            if (aid != null)
            {
                String conStr = "Data Source=.\\SQLEXPRESS;AttachDbFilename="
           + System.AppDomain.CurrentDomain.BaseDirectory + @"App_Data\DB.mdf" + ";Integrated Security=True;User Instance=True";

                conn = new SqlConnection(conStr); conn.Open();
                try
                {
                    SqlCommand cmd = new SqlCommand("select p_title,p_content,left(convert(varchar(20),p_datetime,110),5) as p_datetime,p_dj,p_sp ,p_mp from c_pic where id='" + aid + "'", conn);
                    SqlDataReader read1 = cmd.ExecuteReader();
                    if (read1.Read())
                    {

                        NewsView = read1["p_title"].ToString();
                        a_title.Text = read1["p_title"].ToString();
                        a_datetime.Text = read1["p_datetime"].ToString();
                        a_dj.Text = read1["p_dj"].ToString();
                        a_mp.ImageUrl = "../Admin/upload/" + read1["p_sp"].ToString();
                        a_content.Text = read1["p_content"].ToString();
                    }
                    else
                        Server.Transfer("error.aspx");
                    read1.Close();



                    conn.Close();
                }
                catch
                {
                    Server.Transfer("error.aspx");
                }
            }
            else
                Server.Transfer("error.aspx");

        }
    }
}
