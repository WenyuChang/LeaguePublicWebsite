namespace Company.Control
{
	using System;
	using System.Data;
	using System.Drawing;
	using System.Web;
	using System.Web.UI.WebControls;
	using System.Web.UI.HtmlControls;
	using System.Data.SqlClient;
//该源码下载自www.51aspx.com(５１ａｓｐｘ．ｃｏｍ)

	/// <summary>
	///		Bottom 的摘要说明。
	/// </summary>
	public partial class Bottom : System.Web.UI.UserControl
	{

		protected void Page_Load(object sender, System.EventArgs e)
		{
			if(!IsPostBack)
			{
				string 	basestr="";
                String conStr = "Data Source=.\\SQLEXPRESS;AttachDbFilename="
           + System.AppDomain.CurrentDomain.BaseDirectory + @"App_Data\Company_Data.mdf" + ";Integrated Security=True;User Instance=True";

                SqlConnection conn = new SqlConnection(conStr); 
                conn.Open();
				SqlCommand cmd=new SqlCommand("select id,b_title from c_base order by b_sort",conn);
				SqlDataReader r1=cmd.ExecuteReader();
				while(r1.Read())
				{
						basestr+="<span class='l2'> </span>|<span class='l2'> </span><a class='rlk_1' href='aboutbase.aspx?id="+r1["id"]+"' target='_blank'>"+r1["b_title"].ToString()+"</a>";
				}
				basestr=basestr.Remove(15,1);
				base_title.Text=basestr;
				r1.Close();
				conn.Close();
			}		
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
		///		设计器支持所需的方法 - 不要使用代码编辑器
		///		修改此方法的内容。
		/// </summary>
		private void InitializeComponent()
		{

		}
		#endregion
	}
}
