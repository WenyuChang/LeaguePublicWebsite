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
	///		link ��ժҪ˵����
	/// </summary>
	public partial class link : System.Web.UI.UserControl
	{

		protected void Page_Load(object sender, System.EventArgs e)
		{
			if(!IsPostBack)
			{
				int kk=0;
                String conStr = "Data Source=.\\SQLEXPRESS;AttachDbFilename="
           + System.AppDomain.CurrentDomain.BaseDirectory + @"App_Data\Company_Data.mdf" + ";Integrated Security=True;User Instance=True";

                SqlConnection conn = new SqlConnection(conStr); conn.Open();
				SqlCommand cmd=new SqlCommand("select * from c_link order by sort",conn);
				SqlDataReader r1=cmd.ExecuteReader();
				linktext.Text+="<table border=0 width=100%><tr><td align='center'>";
				while(r1.Read())
				{
					kk++;
					if(kk%11==0)
						linktext.Text+="<br>";
					
						linktext.Text+="&nbsp;&nbsp;&nbsp;&nbsp;<a class='rlk_1' href='"+r1["url"]+"'>"+r1["title"].ToString()+"</a>";
				}
				linktext.Text+="</td></tr></table>";
				r1.Close();
				conn.Close();
			}
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
