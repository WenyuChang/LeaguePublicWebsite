namespace Company.Control
{
	using System;
	using System.Data;
	using System.Drawing;
	using System.Web;
	using System.Web.UI.WebControls;
	using System.Web.UI.HtmlControls;
	using System.Data.SqlClient;
//��Դ��������www.51aspx.com(���������������)

	/// <summary>
	///		Bottom ��ժҪ˵����
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
