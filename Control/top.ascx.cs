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
	///		top ��ժҪ˵����
	/// </summary>
	public partial class top : System.Web.UI.UserControl
	{
        
		protected void Page_Load(object sender, System.EventArgs e)
		{
			if(!IsPostBack)
			{
                 String conStr = "Data Source=.\\SQLEXPRESS;AttachDbFilename="
            + System.AppDomain.CurrentDomain.BaseDirectory + @"App_Data\Company_Data.mdf" + ";Integrated Security=True;User Instance=True";

                 SqlConnection conn = new SqlConnection(conStr);
				conn.Open();
				SqlCommand cmd=new SqlCommand("select * from c_column order by c_sort",conn);
				SqlDataReader r1=cmd.ExecuteReader();
				topmemu.Text+="<span class='l2'> </span>|<span class='l2'> </span><a class='rlk2' href='default.aspx'>��ҳ</a>";
				while(r1.Read())
				{
					if(r1["c_type"].ToString()=="0")
						topmemu.Text+="<span class='l2'> </span>|<span class='l2'> </span><a class='rlk2' href='news_list.aspx?id="+r1["id"]+"'>"+r1["c_name"].ToString()+"</a>";
					else
						topmemu.Text+="<span class='l2'> </span>|<span class='l2'> </span><a class='rlk2' href='pic_list.aspx?id="+r1["id"]+"'>"+r1["c_name"].ToString()+"</a>";
				}
				topmemu.Text+="<span class='l2'> </span>|<span class='l2'> </span><a class='rlk2' href='guestbook.aspx'>����</a>";
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
