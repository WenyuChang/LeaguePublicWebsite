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

public partial class Admin_EditPictureNews : System.Web.UI.Page
{
  
		SqlConnection conn;
		SqlCommand cmd;
		public string uid,usp,ump;
	
		protected void Page_Load(object sender, System.EventArgs e)
		{
			//chklogin c1=new chklogin(this);
			uid=Request.QueryString["id"];
			if(uid!=null)
			{
                String conStr = "Data Source=.\\SQLEXPRESS;AttachDbFilename="
           + System.AppDomain.CurrentDomain.BaseDirectory + @"App_Data\DB.mdf" + ";Integrated Security=True;User Instance=True";

              conn = new SqlConnection(conStr); conn.Open();
				cmd=new SqlCommand("select p_sp,p_mp from c_pic where id=@id",conn);
				cmd.Parameters.Add("@id",SqlDbType.Char);
				cmd.Parameters["@id"].Value=uid;
				SqlDataReader r1=cmd.ExecuteReader();
				if(r1.Read())
				{
					p_sp.ImageUrl="upload/"+r1["p_mp"].ToString();
					usp=r1["p_sp"].ToString();
					ump=r1["p_mp"].ToString();
				
				}
				r1.Close();
				if(!IsPostBack)
				{
					cmd=new SqlCommand("select * from c_pic where id=@id",conn);
					cmd.Parameters.Add("@id",SqlDbType.Char);
					cmd.Parameters["@id"].Value=uid;
					r1=cmd.ExecuteReader();
					if(r1.Read())
					{
						p_title.Text=r1["p_title"].ToString();
						p_content.Text=r1["p_content"].ToString();
						
						p_sp.ImageUrl="upload/"+r1["p_mp"].ToString();
						usp=r1["p_sp"].ToString();
						ump=r1["p_mp"].ToString();
						r1.Close();
						conn.Close();
					}
					else
					{
						r1.Close();
						conn.Close();
						Response.Redirect("ListPictureNews.aspx");
					}
				}
			}
			else
				Response.Redirect("ListPictureNews.aspx");
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

		}
		#endregion

		protected void Button1_Click(object sender, System.EventArgs e)
		{
            String conStr = "Data Source=.\\SQLEXPRESS;AttachDbFilename="
           + System.AppDomain.CurrentDomain.BaseDirectory + @"App_Data\DB.mdf" + ";Integrated Security=True;User Instance=True";

           conn = new SqlConnection(conStr); conn.Open();
			if(image.Value!="")
			{
				Response.Write("<script>window.alert('123')</script>");
				string imgExt;
				System.Drawing.Image oriImg, newImg;
				string imageSavePath = Server.MapPath("upload/");
				int imageThumbWidth = 200;//小缩略图
				int imageThumbHeight = 0;
				string imageNewName = DateTime.Now.ToString("yyyyMMddHHmmss");
				HttpPostedFile PostedFile = image.PostedFile;
				imgExt = System.IO.Path.GetExtension(PostedFile.FileName).ToString().ToLower();
				if(imgExt != ".jpg" && imgExt != ".gif" && imgExt != ".png")
				{
					this.RegisterClientScriptBlock("tz","<script>window.alert('上传的文件格式错误。')</script>");
					return;
				}
				else
				{
					imageNewName += imgExt;
                                       
					oriImg = System.Drawing.Image.FromStream(PostedFile.InputStream);
					if(oriImg.Width<imageThumbWidth&&oriImg.Height<imageThumbWidth)
					{
						imageThumbHeight = oriImg.Height;
						imageThumbWidth = oriImg.Width;
					}
					else
					{
						if(oriImg.Width<oriImg.Height)
						{
							imageThumbHeight = imageThumbWidth;
							imageThumbWidth = imageThumbHeight * oriImg.Width/oriImg.Height;
						}
						else if(oriImg.Width>oriImg.Height)
						{
							imageThumbHeight = imageThumbWidth * oriImg.Height/oriImg.Width;
						}
						else imageThumbHeight = imageThumbWidth;
					}
					newImg = oriImg.GetThumbnailImage(imageThumbWidth,imageThumbHeight ,null,new System.IntPtr(0));
					switch(imgExt)
					{
						case ".jpg":
							oriImg.Save(imageSavePath + usp,System.Drawing.Imaging.ImageFormat.Jpeg);//
							newImg.Save(imageSavePath + ump, System.Drawing.Imaging.ImageFormat.Jpeg);//
							break;
						case ".gif":
							oriImg.Save(imageSavePath + usp , System.Drawing.Imaging.ImageFormat.Gif);
							newImg.Save(imageSavePath + ump ,System.Drawing.Imaging.ImageFormat.Gif);
							break;
						case ".png":
							oriImg.Save(imageSavePath + usp , System.Drawing.Imaging.ImageFormat.Png);
							newImg.Save(imageSavePath + ump ,System.Drawing.Imaging.ImageFormat.Png);
							break;
					}
					oriImg.Dispose();
					newImg.Dispose();
				}
			}
			cmd=new SqlCommand("update c_pic set p_title=@p_title,p_content=@p_content  where id=@id",conn);
			cmd.Parameters.Add("@id",SqlDbType.Char);
			cmd.Parameters.Add("@p_title",SqlDbType.VarChar);
			cmd.Parameters.Add("@p_content",SqlDbType.VarChar);
			
			cmd.Parameters["@id"].Value=uid;
			cmd.Parameters["@p_title"].Value=p_title.Text;
			cmd.Parameters["@p_content"].Value=p_content.Text;
            try
            {

                cmd.ExecuteNonQuery();
                Response.Write("<script>window.alert('编辑成功！！！')</script>");
            }
            catch
            { }
			conn.Close();
			Response.Redirect("ListPictureNews.aspx");
		}
	}


