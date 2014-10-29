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
using System.Data.Sql;
using System.Data.SqlClient;

public partial class Admin_ListPictureNews : System.Web.UI.Page
{
    /*                               
                           <!--              
                                   <div>
     <div><asp:Button ID="Add" Text="添加" runat="server" onclick="Add_Click"/></div>
      <table style="width: 511px" class="css" visible="true">
             <tr>
                 <td style="width: 305px; height: 25px;" align="center">
                     输入关键字：</td>
                 <td style="width: 403px; height: 25px;" align="center">
                     <asp:TextBox ID="txtKey" runat="server" CssClass="css" Width="232px"></asp:TextBox>&nbsp;
                     <asp:DropDownList ID="ddlNewsStyle" runat="server" CssClass="css" Width="78px" CausesValidation="True">
                         <asp:ListItem>图片新闻</asp:ListItem>
                         <asp:ListItem>最新新闻</asp:ListItem>
                     </asp:DropDownList></td>
                 <td style="width: 4px; height: 25px;">
                     <asp:Button ID="btnSearch" runat="server" Height="20px" OnClick="btnSearch_Click"
                         Text="站内搜索" /></td>
             </tr>
             <tr>
                 <td colspan="3">
         <asp:GridView ID="gvNewsList" runat="server" AllowPaging="True" AutoGenerateColumns="False"
             CellSpacing="1" Height="1px" PageSize="26" Width="500px" CssClass="txt" OnPageIndexChanging="gvNewsList_PageIndexChanging" OnRowDeleting="gvNewsList_RowDeleting" OnRowDataBound="gvNewsList_RowDataBound">
             <Columns>
                 <asp:BoundField DataField="NewsId" HeaderText="ID" />
                 <asp:BoundField DataField="NewsName" HeaderText="新闻标题" />
                 <asp:BoundField DataField="PictureName" HeaderText="新闻图片" />
                 <asp:BoundField DataField="AddDate" HeaderText="发布日期" />
                 <asp:HyperLinkField HeaderText="编辑" Text="编辑" DataNavigateUrlFields="NewsId" DataNavigateUrlFormatString="EditPictureNews.aspx?NewsId={0}" Target="right" />
                 <asp:CommandField ShowDeleteButton="True" />
             </Columns>
         </asp:GridView>
                 </td>
             </tr>
         </table>
        
    
    
     </div>-->
     * Db CC = new Db();
     //定义一个静态的全局变量，用于标识是否已单击站内搜索控钮
     public static int IntSearch;
     protected void Page_Load(object sender, EventArgs e)
     {
         if (!IsPostBack)
         {
             //页面初始化时，指定IntSearch=0
             IntSearch = 0;
             //使用Request对象获取页面传递的值
             // int n = Convert.ToInt32(Request.QueryString["id"]);
             //  int n = 001;
             //指定新闻类别名
             // this.ddlNewsStyle.SelectedIndex = (n - 1);
             this.bind();
         }
     }
     protected void bind()
     {
         //调用CommonClass类的GetDataSet方法，查询需要管理的新闻信息，并绑定GridView控件上
         this.gvNewsList.DataSource = CC.GetDataSet("select * from PictureNews order by NewsId", "tbNews");
         this.gvNewsList.DataKeyNames = new string[] { "NewsId" };
         this.gvNewsList.DataBind();
     }
     protected void searchBind()
     {
         //使用Like运算符，定义一个查询字符串
         string strSql = "select * from tb_News where style='" + this.ddlNewsStyle.SelectedValue.ToString() + "'";
         strSql += " and (( content like '%" + this.txtKey.Text + "%')";
         strSql += " or (Title like '%" + this.txtKey.Text + "%'))";
         //调用CommonClass类的GetDataSet方法，获取符合条件的新闻信息
         //将获取的新闻信息绑定到数据控件GridView控件中
         gvNewsList.DataSource = CC.GetDataSet(strSql, "tbNews");
         gvNewsList.DataKeyNames = new string[] { "id" };
         gvNewsList.DataBind();

     }
     protected void gvNewsList_RowDeleting(object sender, GridViewDeleteEventArgs e)
     {
         //调用CommonClass类的ExecSQL方法，删除指定的新闻
         CC.ExecSQL("delete  from PictureNews where NewsId='" + this.gvNewsList.DataKeys[e.RowIndex].Value.ToString() + "'");
         if (IntSearch == 1)
         {
             // this.searchBind();
         }
         else
         {
             bind();
         }
     }

     protected void btnSearch_Click(object sender, EventArgs e)
     {
         //单击站内搜索按钮时，IntSearch=1;
         IntSearch = 1;
         // this.searchBind();

     }
     protected void gvNewsList_PageIndexChanging(object sender, GridViewPageEventArgs e)
     {
         gvNewsList.PageIndex = e.NewPageIndex;
         if (IntSearch == 1)
         {
             //this.searchBind();
         }
         else
         {
             bind();
         }
     }

     protected void gvNewsList_RowDataBound(object sender, GridViewRowEventArgs e)
     {
         if (e.Row.RowType == DataControlRowType.DataRow)
         {
             e.Row.Cells[3].Text = Convert.ToDateTime(e.Row.Cells[3].Text).ToShortDateString();
         }
     }
     protected void Add_Click(object sender, EventArgs e)
     {
         Response.Redirect("AddPictureNews.aspx");
     }*/
   /* SqlConnection conn;
    public string _typestr;
     protected void Page_Load(object sender, EventArgs e)
    {// 在此处放置用户代码以初始化页面
       // chklogin c1 = new chklogin(this);
        String conStr = "Data Source=.\\SQLEXPRESS;AttachDbFilename="
   + System.AppDomain.CurrentDomain.BaseDirectory + @"App_Data\DB.mdf" + ";Integrated Security=True;User Instance=True";

        conn = new SqlConnection(conStr); conn.Open();
        SqlCommand cmd;
        if (!IsPostBack)
        {
            cmd = new SqlCommand("select id,c_name from c_column where c_type=1 order by c_sort", conn);
            SqlDataReader r1 = cmd.ExecuteReader();
            int i = 1;
            while (r1.Read())
            {
                type.Items.Add(r1["c_name"].ToString());
                type.Items[i].Value = r1["id"].ToString();
                i++;
            }
            r1.Close();
        }
        cmd = new SqlCommand(returnstr1(), conn);
        SqlDataAdapter adapter = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        adapter.Fill(ds, "c_pic");
        pager1.RecordCount = ds.Tables["c_pic"].Rows.Count;
        BindData();
    }

     private string returnstr1()
     {
         string str;
         if (type.SelectedValue == "all")
             str = "select a.id from c_pic a,c_column b where a.cid=b.id and a.p_title like '%" + search.Text + "%'";
         else
             str = "select a.id from c_pic a,c_column b where a.cid=b.id and b.id='" + type.SelectedValue + "' and a.p_title like '%" + search.Text + "%'";
         return str;
     }
     private string returnstr2()
     {
         string str;
         if (type.SelectedValue == "all")
             str = "select b.c_name,a.id,a.p_title,a.p_mp,a.p_sp,a.p_dj,convert(varchar(20),a.p_datetime,110) as a.p_datetime from c_pic a,c_column b where a.cid=b.id and a.p_title like '%" + search.Text + "%' order by a.p_datetime desc";
         else
             str = "select b.c_name,a.id,a.p_title,a.p_mp,a.p_sp,a.p_dj,convert(varchar(20),a.p_datetime,110) as a.p_datetime from c_pic a,c_column b where a.cid=b.id and b.id='" + type.SelectedValue + "' and a.p_title like '%" + search.Text + "%' order by a.p_datetime desc";
         return str;
     }

     private void BindData()
     {
         String conStr = "Data Source=.\\SQLEXPRESS;AttachDbFilename="
        + System.AppDomain.CurrentDomain.BaseDirectory + @"App_Data\DB.mdf" + ";Integrated Security=True;User Instance=True";

         SqlConnection conn = new SqlConnection(conStr); conn.Open();
         SqlCommand cmd = new SqlCommand(returnstr2(), conn);
         SqlDataAdapter adapter = new SqlDataAdapter(cmd);
         DataSet ds = new DataSet();
       adapter.Fill(ds, pager1.PageSize * (pager1.CurrentPageIndex - 1), pager1.PageSize, "c_pic");
         //adapter.Fill(ds,pager1.PageSize * (pager1.CurrentPageIndex - 1),pager1.PageSize, "pic");
         //adapter.Fill(ds, "c_pic");
         list1.DataSource = ds.Tables["c_pic"];
         list1.DataBind();
         conn.Close();
     }
     #region Web 窗体设计器生成的代码
     override protected void OnInit(EventArgs e)
     {
         //
         // CODEGEN: 该调用是 ASP.NET Web 窗体设计器所必需的。
         //
         InitializeComponent();
         base.OnInit(e);
     }

     /// <summary>
     /// 设计器支持所需的方法 - 不要使用代码编辑器修改
     /// 此方法的内容。
     /// </summary>
     private void InitializeComponent()
     {
         this.pager1.PageChanged += new Wuqi.Webdiyer.PageChangedEventHandler(this.pager1_PageChanged);

     }
     #endregion

    	protected void Button1_Click(object sender, System.EventArgs e)
		{
			Response.Redirect("AddPictureNews.aspx");
		}

		protected void Button2_Click(object sender, System.EventArgs e)
		{
			BindData();
		}

		private void pager1_PageChanged(object src, Wuqi.Webdiyer.PageChangedEventArgs e)
		{
			pager1.CurrentPageIndex=e.NewPageIndex;
			BindData();
		}
	}*/
    SqlConnection conn;
		public string _typestr;
		protected void Page_Load(object sender, System.EventArgs e)
		{
			// 在此处放置用户代码以初始化页面
				//chklogin c1=new chklogin(this);
                String conStr = "Data Source=.\\SQLEXPRESS;AttachDbFilename="
           + System.AppDomain.CurrentDomain.BaseDirectory + @"App_Data\DB.mdf" + ";Integrated Security=True;User Instance=True";

                conn = new SqlConnection(conStr); conn.Open();
				SqlCommand cmd;
			if(!IsPostBack)
			{
				cmd=new SqlCommand("select id,c_name from c_column where c_type=1 order by c_sort",conn);
				SqlDataReader r1=cmd.ExecuteReader();
				int i=1;
				while(r1.Read())
				{
					type.Items.Add(r1["c_name"].ToString());
					type.Items[i].Value=r1["id"].ToString();
					i++;
				}
				r1.Close();
			}
				cmd=new SqlCommand(returnstr1(),conn);
				SqlDataAdapter adapter=new SqlDataAdapter(cmd);
				DataSet ds=new DataSet();
				adapter.Fill(ds,"c_pic");
				pager1.RecordCount=ds.Tables["c_pic"].Rows.Count;
				BindData();
		}

		private string returnstr1()
		{
			string str;
			if(type.SelectedValue=="all")
				str="select a.id from c_pic a,c_column b where a.cid=b.id and a.p_title like '%"+search.Text+"%'";
			else
				str="select a.id from c_pic a,c_column b where a.cid=b.id and b.id='"+type.SelectedValue+"' and a.p_title like '%"+search.Text+"%'";
			return str;
		}
		private string returnstr2()
		{
			string str;
			if(type.SelectedValue=="all")
				str="select b.c_name,a.id,a.p_title,a.p_mp,a.p_sp,a.p_dj,a.p_datetime from c_pic a,c_column b where a.cid=b.id and a.p_title like '%"+search.Text+"%' order by a.p_datetime desc";
			else
				str="select b.c_name,a.id,a.p_title,a.p_mp,a.p_sp,a.p_dj,a.p_datetime from c_pic a,c_column b where a.cid=b.id and b.id='"+type.SelectedValue+"' and a.p_title like '%"+search.Text+"%' order by a.p_datetime desc";
			return str;
		}

		private void BindData()
		{
            String conStr = "Data Source=.\\SQLEXPRESS;AttachDbFilename="
           + System.AppDomain.CurrentDomain.BaseDirectory + @"App_Data\DB.mdf" + ";Integrated Security=True;User Instance=True";

            SqlConnection conn = new SqlConnection(conStr); conn.Open();
			SqlCommand cmd=new SqlCommand(returnstr2(),conn);
			SqlDataAdapter adapter=new SqlDataAdapter(cmd);
			DataSet ds=new DataSet();
			adapter.Fill(ds,pager1.PageSize*(pager1.CurrentPageIndex-1),pager1.PageSize,"c_pic");
			list1.DataSource=ds.Tables["c_pic"];
			list1.DataBind();
			conn.Close();
		}

		#region Web 窗体设计器生成的代码
		override protected void OnInit(EventArgs e)
		{
			//
			// CODEGEN: 该调用是 ASP.NET Web 窗体设计器所必需的。
			//
			InitializeComponent();
			base.OnInit(e);
		}
		
		/// <summary>
		/// 设计器支持所需的方法 - 不要使用代码编辑器修改
		/// 此方法的内容。
		/// </summary>
		private void InitializeComponent()
		{    
			this.pager1.PageChanged += new Wuqi.Webdiyer.PageChangedEventHandler(this.pager1_PageChanged);

		}
		#endregion


		protected void Button1_Click(object sender, System.EventArgs e)
		{
			Response.Redirect("AddPictureNews.aspx");
		}

		protected void Button2_Click(object sender, System.EventArgs e)
		{
			BindData();
		}

		private void pager1_PageChanged(object src, Wuqi.Webdiyer.PageChangedEventArgs e)
		{
			pager1.CurrentPageIndex=e.NewPageIndex;
			BindData();
		}
	}



