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
	///		newsph ��ժҪ˵����
	/// </summary>
	public partial class newsph : System.Web.UI.UserControl
	{

		protected void Page_Load(object sender, System.EventArgs e)
		{
			
			SqlDataAdapter da;
			DataSet ds=new DataSet();
            String conStr = "Data Source=.\\SQLEXPRESS;AttachDbFilename="
           + System.AppDomain.CurrentDomain.BaseDirectory + @"App_Data\Company_Data.mdf" + ";Integrated Security=True;User Instance=True";

            SqlConnection conn = new SqlConnection(conStr);
			da=new SqlDataAdapter("select top 9 id,a_title from c_article order by a_dj desc",conn);
			da.Fill(ds,"articleph");
			listph.DataSource=ds.Tables["articleph"];
			listph.DataBind();
		}

		#region Web ������������ɵĴ���
		override protected void OnInit(EventArgs e)
		{
			//
			// CODEGEN: �õ����� ASP.NET Web ���������������ġ�
			//
			InitializeComponent();
			base.OnInit(e);
		}
		
		/// <summary>
		///		�����֧������ķ��� - ��Ҫʹ�ô���༭��
		///		�޸Ĵ˷��������ݡ�
		/// </summary>
		private void InitializeComponent()
		{

		}
		#endregion
	}
}
