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
///Db 的摘要说明
/// </summary>
public class Db
{
	public Db()
	{
		//
		//TODO: 在此处添加构造函数逻辑
		//
	}
    public static SqlConnection createNewCon()//创建并返回一个打开的连接
    {
        string conStr = "Data Source=.\\SQLEXPRESS;AttachDbFilename="
            + System.AppDomain.CurrentDomain.BaseDirectory + @"App_Data\DB.mdf" + ";Integrated Security=True;User Instance=True";

        SqlConnection conn = new SqlConnection(conStr);
       // conn.Open();
        return conn;
    }

    /// <summary>
    /// 说明：GetDataSet数据集，返回数据源的数据集
    ///	返回值：数据集DataSet
    ///	参数：sqlStr SQL字符串，TableName 数据表名称
    /// </summary>
    public System.Data.DataSet GetDataSet(string sqlStr, string TableName)
    {
        SqlConnection myConn = createNewCon();
        myConn.Open();
        SqlDataAdapter adapt = new SqlDataAdapter(sqlStr, myConn);
        DataSet ds = new DataSet();
        adapt.Fill(ds, TableName);
        myConn.Close();
        return ds;
    }
    /// <summary>
    /// 说明：ExecSQL用来执行SQL语句。
    ///	返回值：操作是否成功(True\False)。
    ///	参数：sqlStr SQL字符串
    /// </summary>
    public Boolean ExecSQL(string sqlStr)
    {
        SqlConnection myConn = createNewCon();
        myConn.Open();
        SqlCommand myCmd = new SqlCommand(sqlStr, myConn);
        try
        {
            myCmd.ExecuteNonQuery();
            myConn.Close();
        }
        catch
        {
            myConn.Close();
            return false;
        }
        return true;
    }
    /// <summary>
    /// 说明：MessageBox用来在客户端弹出对话框。
    /// 参数：TxtMessage 对话框中显示的内容。
    /// 参数：Url 对话框关闭后，跳转的页
    /// </summary>
    public string MessageBox(string TxtMessage, string Url)
    {
        string str;
        str = "<script language=javascript>alert('" + TxtMessage + "');location='" + Url + "'</script>";
        return str;
    }
    /// <summary>
    /// 说明：MessageBox用来在客户端弹出对话框。
    /// 参数：TxtMessage 对话框中显示的内容。
    /// </summary>
    public string MessageBox(string TxtMessage)
    {
        string str;
        str = "<script language=javascript>alert('" + TxtMessage + "')</script>";
        return str;
    }

    ///////////////////防止Sql注入的部分///////////////////////////////////////////////////////
    /// <summary>
    /// 返回 HTML 字符串的编码结果
    /// </summary>
    /// <param name="str">字符串</param>
    /// <returns>编码结果</returns>
    public static string HtmlEncode(string str)
    {
        return HttpUtility.HtmlEncode(str);
    }

    /// <summary>
    /// 返回 HTML 字符串的解码结果
    /// </summary>
    /// <param name="str">字符串</param>
    /// <returns>解码结果</returns>
    public static string HtmlDecode(string str)
    {
        return HttpUtility.HtmlDecode(str);
    }
    /// <summary>
    /// 检测是否有Sql危险字符
    /// </summary>
    /// <param name="str">要判断字符串</param>
    /// <returns>判断结果</returns>
    /*public static bool IsSafeSqlString(string str)
    {

        //return !Regex.IsMatch(str, @"[-|;|,|\/|\(|\)|\[|\]|\}|\{|%|@|\*|!|\']");
    }*/

    /// <summary>
    /// 防止输入SQL注入，替换字符
    /// </summary>
    /// <param name="str"></param>
    /// <returns></returns>
    public static string SQLReplace(string ParaValue)
    {


        ParaValue = ParaValue.Replace("+", "").Replace("-", "").Replace("=", "").Replace("%", "").Replace("<", "&gt;").Replace(">", "&lt;").Replace("<>", "").Replace("'", "").Replace("[", "").Replace("]", "").Replace("!", "").Replace("@", "").Replace("#", "").Replace(",", "").Replace(";", "");

        return ParaValue;

    }

    /// <summary>
    /// ASCII截取字符串
    /// </summary>
    /// <param name="str"></param>
    /// <param name="len"></param>
    /// <returns></returns>
    public static string cutTitle(string str, int len)
    {
        int intLen = str.Length;
        int start = 0;
        int end = intLen;
        int single = 0;
        char[] chars = str.ToCharArray();
        for (int i = 0; i < chars.Length; i++)
        {
            if (Convert.ToInt32(chars[i]) > 255)
            {
                start += 2;
            }
            else
            {
                start += 1;
                single++;
            }
            if (start >= len)
            {

                if (end % 2 == 0)
                {
                    if (single % 2 == 0)
                    {
                        end = i + 1;
                    }
                    else
                    {
                        end = i;
                    }
                }
                else
                {
                    end = i + 1;
                }
                break;
            }
        }
        string temp = str.Substring(0, end);
        if (str.Length > end)
        {
            return temp + "...";
        }
        else
        {
            return temp;
        }
    }
    public static string replace(string str, string str2)
    {
        str = str.Replace(";", str2);
        str = str.Replace("&", str2);
        str = str.Replace("<", str2);
        str = str.Replace(">", str2);
        str = str.Replace("'", str2);
        str = str.Replace("--", str2);
        str = str.Replace("/", str2);
        str = str.Replace("%", str2);
        str = str.Replace("~", str2);
        str = str.Replace(",", str2);
        str = str.Replace("`", str2);
        str = str.Replace("!", str2);
        str = str.Replace("@", str2);
        str = str.Replace("#", str2);
        str = str.Replace("$", str2);
        str = str.Replace("^", str2);
        str = str.Replace("*", str2);
        str = str.Replace("(", str2);
        str = str.Replace(")", str2);
        str = str.Replace("+", str2);
        str = str.Replace(":", str2);
        str = str.Replace("<", str2);
        str = str.Replace(">", str2);
        str = str.Replace("?", str2);
        str = str.Replace("/", str2);
        str = str.Replace("\\", str2);
        str = str.Replace("\"", str2);
        str = str.Replace("{", str2);
        str = str.Replace("}", str2);
        str = str.Replace("[", str2);
        str = str.Replace("]", str2);
        str = str.Replace("-", str2);
        str = str.Replace("_", str2);
        str = str.Replace(" ", str2);
        str = str.Replace("！", str2);
        str = str.Replace("~", str2);
        str = str.Replace("￥", str2);
        str = str.Replace("……", str2);
        str = str.Replace("（", str2);
        str = str.Replace("）", str2);
        str = str.Replace(" ", str2);
        str = str.Replace("——", str2);
        str = str.Replace("、", str2);
        str = str.Replace("select", str2);
        str = str.Replace("update", str2);
        str = str.Replace("insert", str2);
        str = str.Replace("delete", str2);
        str = str.Replace("drop", str2);
        str = str.Replace("delcare", str2);
        str = str.Replace("create", str2);
        str = str.Replace("A", str2);
        str = str.Replace("B", str2);
        str = str.Replace("C", str2);
        str = str.Replace("D", str2);
        str = str.Replace("E", str2);
        str = str.Replace("F", str2);
        str = str.Replace("G", str2);
        str = str.Replace("H", str2);
        str = str.Replace("I", str2);
        str = str.Replace("J", str2);
        str = str.Replace("K", str2);
        str = str.Replace("L", str2);
        str = str.Replace("M", str2);
        str = str.Replace("N", str2);
        str = str.Replace("O", str2);
        str = str.Replace("P", str2);
        str = str.Replace("Q", str2);
        str = str.Replace("R", str2);
        str = str.Replace("S", str2);
        str = str.Replace("T", str2);
        str = str.Replace("U", str2);
        str = str.Replace("V", str2);
        str = str.Replace("W", str2);
        str = str.Replace("X", str2);
        str = str.Replace("Y", str2);
        str = str.Replace("Z", str2);
        str = str.Replace("a", str2);
        str = str.Replace("b", str2);
        str = str.Replace("c", str2);
        str = str.Replace("d", str2);
        str = str.Replace("e", str2);
        str = str.Replace("f", str2);
        str = str.Replace("g", str2);
        str = str.Replace("h", str2);
        str = str.Replace("i", str2);
        str = str.Replace("j", str2);
        str = str.Replace("k", str2);
        str = str.Replace("l", str2);
        str = str.Replace("m", str2);
        str = str.Replace("n", str2);
        str = str.Replace("o", str2);
        str = str.Replace("p", str2);
        str = str.Replace("q", str2);
        str = str.Replace("r", str2);
        str = str.Replace("s", str2);
        str = str.Replace("t", str2);
        str = str.Replace("u", str2);
        str = str.Replace("v", str2);
        str = str.Replace("w", str2);
        str = str.Replace("x", str2);
        str = str.Replace("y", str2);
        str = str.Replace("z", str2);
        str = str.Replace("；", str2);

        return str;
    }
}
