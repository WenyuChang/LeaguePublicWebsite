using System;
using System.Data;
using System.Configuration;
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

/// <summary>
///NLink 的摘要说明
/// </summary>
public class NLink
{
	public NLink()
	{
		//
		//TODO: 在此处添加构造函数逻辑
		//

	}
    public DataSet getCourse()   //读取课程信息
    {
        SqlConnection con = Db.createNewCon();
        SqlDataAdapter dad = new SqlDataAdapter();
        dad.SelectCommand = new SqlCommand("select * from [NewsLink]", con);
       // dad.SelectCommand.Parameters.AddWithValue("@id", tid);

        DataSet ds = new DataSet();
        dad.Fill(ds,"NewsList");
        con.Close();
        return ds;
    }
    public void delCouse(int ID_C)  //  删除课程
    {
        SqlConnection con = Db.createNewCon();
        SqlCommand cmd = new SqlCommand("delete from [NewsLink] where [NLinkID]=@id", con);


        cmd.Parameters.AddWithValue("@id", ID_C);
        cmd.ExecuteNonQuery();
        con.Close();
    }
    public void modifyCouse(int ID_C, string Name, string url, string Remark, string Texts)  //  修改课程
    {
        SqlConnection con = Db.createNewCon();
        SqlCommand cmd = new SqlCommand("update [NewsLink] set [Name]=@name,[Url]=@type,[Remark]=@num,[Texts]=@info where [NLinkID]=@id", con);


        cmd.Parameters.AddWithValue("@id", ID_C);
        cmd.Parameters.AddWithValue("@name", Name);
        cmd.Parameters.AddWithValue("@type", url);
        cmd.Parameters.AddWithValue("@num", Remark);
        cmd.Parameters.AddWithValue("@info", Texts);
        cmd.ExecuteNonQuery();
        con.Close();
    }
}
