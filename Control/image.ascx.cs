namespace Company.Control
{
	using System;
	using System.Data;
	using System.Drawing;
	using System.Web;
	using System.Web.UI.WebControls;
	using System.Web.UI.HtmlControls;
	using System.Data.SqlClient;


	/// <summary>
	///		image 的摘要说明。
	/// </summary>
	public partial class image : System.Web.UI.UserControl
	{

		protected void Page_Load(object sender, System.EventArgs e)
        {
            int i = 0;
			// 在此处放置用户代码以初始化页面
			string picstr="",textstr="",linkstr="";
            String conStr = "Data Source=.\\SQLEXPRESS;AttachDbFilename="
           + System.AppDomain.CurrentDomain.BaseDirectory + @"App_Data\DB.mdf" + ";Integrated Security=True;User Instance=True";

            SqlConnection conn = new SqlConnection(conStr);
			conn.Open();
			SqlCommand cmd=new SqlCommand("select top 4 id,p_title,p_sp from c_pic order by p_datetime desc",conn);
			SqlDataReader read1=cmd.ExecuteReader();
			while(read1.Read())
			{
                picstr += "../Admin/upload/" + read1["p_sp"].ToString() + "|";
				textstr+=read1["p_title"].ToString()+"|";
				linkstr+="PictureNews.aspx?id="+read1["id"].ToString()+"|";
                i++;
			}
           // Response.Write("数量是"+i);
			read1.Close();
			//picstr=picstr.Remove(picstr.Length-1,1);
			//textstr=textstr.Remove(textstr.Length-1,1);
			//linkstr=linkstr.Remove(linkstr.Length-1,1);
            picstr=picstr.Remove(picstr.Length-1,1);
            textstr=textstr.Remove(textstr.Length-1,1);
            linkstr=linkstr.Remove(linkstr.Length-1,1);
			Page.RegisterClientScriptBlock("tp1","<script type='text/javascript'>var links='"+linkstr+"'</script>");
			Page.RegisterClientScriptBlock("tp2","<script type='text/javascript'>var pics='"+picstr+"'</script>");
			Page.RegisterClientScriptBlock("tp3","<script type='text/javascript'>var texts='"+textstr+"'</script>");
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
