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
///tch 的摘要说明
/// </summary>
public class tch
{
	public tch()
	{
		//
		//TODO: 在此处添加构造函数逻辑
		//
	}
    public bool isExist(string userName, string userPwd)       //检查用户名与密码
    {
        SqlConnection con = Db.createNewCon();
        SqlCommand cmd = new SqlCommand("select count(*) from [Admin] where [Name] = @name and [Password] = @pwd", con);
        cmd.Parameters.AddWithValue("@name", userName);
        cmd.Parameters.AddWithValue("@pwd", userPwd);
        int count = Convert.ToInt32(cmd.ExecuteScalar());
        con.Close();
        if (count > 0)
            return true;  // 
        else
            return false; //  
    }

    /*public string getTName(string tid)                         //检查用户名与密码
    {
        SqlConnection con = Db.createNewCon();
        SqlCommand cmd = new SqlCommand("select [Name] from [Teacher] where [ID_T] = @name", con);
        cmd.Parameters.AddWithValue("@name", tid);

        string name = Convert.ToString(cmd.ExecuteScalar());

        con.Close();

        return name;
    }*/


    public DataSet getCourseList()             // 取得课程列表
    {
        NLink cs = new NLink();
        return cs.getCourse();
    }
   /* public DataSet searchCourseByCID(string tid, int cid)             // 搜索
    {
        SqlConnection con = Db.createNewCon();
        SqlDataAdapter dad = new SqlDataAdapter();

        dad.SelectCommand = new SqlCommand("select * from [Course] where [TID]=@id and ID_C = @value order by [ID_C] DESC", con);
        dad.SelectCommand.Parameters.AddWithValue("@value", cid);
        dad.SelectCommand.Parameters.AddWithValue("@id", tid);
        DataSet ds = new DataSet();
        dad.Fill(ds, "courseList");
        con.Close();
        return ds;

    }
    public DataSet searchCourseByName(string tid, string value)             // 搜索
    {
        SqlConnection con = Db.createNewCon();
        SqlDataAdapter dad = new SqlDataAdapter();

        dad.SelectCommand = new SqlCommand("select * from [Course] where [TID]=@id and CName like '%" + value + "%' order by [ID_C] DESC", con);
        dad.SelectCommand.Parameters.AddWithValue("@id", tid);


        DataSet ds = new DataSet();
        dad.Fill(ds, "courseList");
        con.Close();
        return ds;

    }
    public DataSet searchCourseByType(string tid, string value)             // 搜索
    {
        SqlConnection con = Db.createNewCon();
        SqlDataAdapter dad = new SqlDataAdapter();

        //cmd = "select * from Files where FileName like '%" + find.Text + "%'";

        dad.SelectCommand = new SqlCommand("select * from [Course] where [TID]=@id and CType like '%" + value + "%' order by [ID_C] DESC", con);
        dad.SelectCommand.Parameters.AddWithValue("@id", tid);

        //dad.SelectCommand.Parameters.AddWithValue("@value", value);

        DataSet ds = new DataSet();
        dad.Fill(ds, "courseList");
        con.Close();
        return ds;

    }

    public DataSet searchStuBySID(int cid, string value)             // 搜索
    {
        SqlConnection con = Db.createNewCon();
        SqlDataAdapter dad = new SqlDataAdapter();

        //cmd = "select * from Files where FileName like '%" + find.Text + "%'";

        dad.SelectCommand = new SqlCommand("select * from [Student] where [ID_S] like '%" + value + "%' and [ID_S] in where (select [ID_S] from [S_Course] where [ID_C] = @id)"
                  + "order by [ID_S] DESC", con);
        dad.SelectCommand.Parameters.AddWithValue("@id", cid);

        //dad.SelectCommand.Parameters.AddWithValue("@value", value);

        DataSet ds = new DataSet();
        dad.Fill(ds, "stuList");
        con.Close();
        return ds;

    }
    public DataSet searchStuBySName(int tid, string value)             // 搜索
    {
        SqlConnection con = Db.createNewCon();
        SqlDataAdapter dad = new SqlDataAdapter();

        //cmd = "select * from Files where FileName like '%" + find.Text + "%'";

        dad.SelectCommand = new SqlCommand("select * from [Student] where [SName] like '%" + value + "%' and [SName] in where (select [SName] from [S_Course] where [ID_C] = @id)"
                  + "order by [ID_S] DESC", con);
        dad.SelectCommand.Parameters.AddWithValue("@id", tid);

        //dad.SelectCommand.Parameters.AddWithValue("@value", value);

        DataSet ds = new DataSet();
        dad.Fill(ds, "stuList");
        con.Close();
        return ds;

    }*/



    public void modifyCourse(int ID_C, string Name, string url, string Remark, string Texts)  //  修改课程
    {
        NLink cs = new NLink();
        cs.modifyCouse(ID_C, Name, url, Remark, Texts);  //  修改课程表记录
        //sc sc1 = new sc();
        //sc1.modifyCName(ID_C, CName);                              // 修改选课记录表的CName字段

    }

   /* public void addCourse(string TID, string CName, string CType, int MaxNum, string CInfo)   //  添加课程
    {
        course cs = new course();
        string TName = getTName(TID);
        cs.addCourse(CName, TID, TName, CType, MaxNum, CInfo);
        addCNum(TID);
    }*/
    public void delCourse(int ID_C)   //  删除课程
    {
        //sc s1 = new sc();
        NLink cs = new NLink();
        //s1.delSCByCID(ID_C);
        cs.delCouse(ID_C);
    }
    /*public DataSet getStuLisByCID(int cid)            //  取得对应课程的学生表列
    {
        sc sc1 = new sc();
        return sc1.getStuListByCID(cid);
    }*/


   /* public void addCNum(string ID_T)  //  修改课程
    {
        SqlConnection con = Db.createNewCon();
        SqlCommand cmd = new SqlCommand("update [Teacher] set [CNum]=[CNum] +1 where [ID_T]=@id", con);


        cmd.Parameters.AddWithValue("@id", ID_T);

        cmd.ExecuteNonQuery();
        con.Close();
    }*/
    /*public void modifyPwd(string ID_T, string pwd)  //  修改密码
    {
        SqlConnection con = Db.createNewCon();
        SqlCommand cmd = new SqlCommand("update [Admin] set [Password]=@pwd where [Name]=@id", con);


        cmd.Parameters.AddWithValue("@id", ID_T);
        cmd.Parameters.AddWithValue("@pwd", pwd);

        cmd.ExecuteNonQuery();
        con.Close();
    }*/
}
