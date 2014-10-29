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

public partial class Admin_AddPictureNews : System.Web.UI.Page
{
    SqlConnection conn;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        // 在此处放置用户代码以初始化页面
        //chklogin c1=new chklogin(this);
        if (!IsPostBack)
        {
            String conStr = "Data Source=.\\SQLEXPRESS;AttachDbFilename="
       + System.AppDomain.CurrentDomain.BaseDirectory + @"App_Data\DB.mdf" + ";Integrated Security=True;User Instance=True";

            conn = new SqlConnection(conStr);
            SqlDataAdapter adapter = new SqlDataAdapter("select id,c_name from c_column where c_type=1", conn);
            DataSet ds = new DataSet();
            int kk = adapter.Fill(ds);
            if (kk > 0)
            {
                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    p_type.Items.Add(ds.Tables[0].Rows[i][1].ToString());
                    p_type.Items[i].Value = ds.Tables[0].Rows[i][0].ToString();
                }
            }
            else
            {
                p_type.Items.Add("尚没有分类");
                p_type.Items[0].Value = "{00000000-0000-0000-0000-000000000000}";
            }
        }
    }
    protected void Button1_Click(object sender, System.EventArgs e)
		{
			string imgExt,imgs="",imgm="";
			System.Drawing.Image oriImg, newImg;
			string imageSavePath = Server.MapPath("upload/");
			int imageThumbWidth = 256;//小缩略图
			int imageThumbHeight = 0;
			string imageNewName = DateTime.Now.ToString("yyyyMMddHHmmss");
			if(Page.IsValid)
			{
				if(p_type.SelectedValue=="{00000000-0000-0000-0000-000000000000}")
				{
					this.RegisterClientScriptBlock("tz","<script>window.alert('没有栏目。')</script>");
					return;
				}
					if(image.Value!="")
					{
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
							imgs="o_" + imageNewName;
							imgm="t_" + imageNewName;
							switch(imgExt)
							{
								case ".jpg":
									oriImg.Save(imageSavePath + imgs, System.Drawing.Imaging.ImageFormat.Jpeg);
									newImg.Save(imageSavePath + imgm, System.Drawing.Imaging.ImageFormat.Jpeg);
									break;
								case ".gif":
									oriImg.Save(imageSavePath + imgs , System.Drawing.Imaging.ImageFormat.Gif);
									newImg.Save(imageSavePath + imgm ,System.Drawing.Imaging.ImageFormat.Gif);
									break;
								case ".png":
									oriImg.Save(imageSavePath + imgs , System.Drawing.Imaging.ImageFormat.Png);
									newImg.Save(imageSavePath + imgm ,System.Drawing.Imaging.ImageFormat.Png);
									break;
							}
							oriImg.Dispose();
							newImg.Dispose();
						}
					}
                    String conStr = "Data Source=.\\SQLEXPRESS;AttachDbFilename="
               + System.AppDomain.CurrentDomain.BaseDirectory + @"App_Data\DB.mdf" + ";Integrated Security=True;User Instance=True";

                  conn = new SqlConnection(conStr); conn.Open();
				cmd=new SqlCommand("insert into c_pic values(newid(),@cid,@p_title,@p_sp,@p_mp,@p_content,getdate(),0)",conn);
				cmd.Parameters.Add("@cid",SqlDbType.Char);
				cmd.Parameters.Add("@p_title",SqlDbType.VarChar);
				cmd.Parameters.Add("@p_sp",SqlDbType.VarChar);
				cmd.Parameters.Add("@p_mp",SqlDbType.VarChar);
				cmd.Parameters.Add("@p_content",SqlDbType.VarChar);
				
				cmd.Parameters["@cid"].Value=p_type.SelectedValue;
				cmd.Parameters["@p_title"].Value=p_title.Text;
				cmd.Parameters["@p_sp"].Value=imgs;
				cmd.Parameters["@p_mp"].Value=imgm;
				cmd.Parameters["@p_content"].Value=p_content.Text;
				
				cmd.ExecuteNonQuery();
				conn.Close();
				this.RegisterClientScriptBlock("tz","<script>window.alert('添加图片成功。')</script>");
				}
		}
	
}


