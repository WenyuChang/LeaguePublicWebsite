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
	///		reply ��ժҪ˵����
	/// </summary>
	public partial class reply : System.Web.UI.UserControl
	{

		protected void Page_Load(object sender, System.EventArgs e)
		{
		
			SqlDataAdapter da;
			DataSet ds=new DataSet();
            String conStr = "Data Source=.\\SQLEXPRESS;AttachDbFilename="
           + System.AppDomain.CurrentDomain.BaseDirectory + @"App_Data\Company_Data.mdf" + ";Integrated Security=True;User Instance=True";

            SqlConnection conn = new SqlConnection(conStr);
			da=new SqlDataAdapter("select top 5 title from c_reply order by datetime desc",conn);
			da.Fill(ds,"rmreply");
			list1.DataSource=ds.Tables["rmreply"];
			list1.DataBind();
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
