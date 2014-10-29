using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class Admin_AdminMain : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Label1.Text = "1";
            MessageBind();
        }

    }
    private void MessageBind()
    {
        try
        {

            int curPage = Convert.ToInt32(Label1.Text);
            tch ad = new tch();
            DataSet ds = ad.getCourseList();

            PagedDataSource ps = new PagedDataSource();
            ps.DataSource = ds.Tables[0].DefaultView;
            // ps.DataSource = ds;
            ps.AllowPaging = true;
            ps.PageSize = 10;
            ps.CurrentPageIndex = curPage - 1;
            LinkButton2.Enabled = true;
            LinkButton3.Enabled = true;
            if (curPage == 1)
            {
                LinkButton2.Enabled = false;
            }
            if (curPage == ps.PageCount)
            {
                LinkButton3.Enabled = false;
            }
            GridView1.DataSource = ps;
            GridView1.DataBind();
            Label2.Text = (ps.PageCount).ToString();
            DropDownList1.Items.Clear();
            for (int i = 1; i < ps.PageCount + 1; i++)
            {
                DropDownList1.Items.Add(i.ToString());
            }
            DropDownList1.SelectedIndex = Convert.ToInt32(Label1.Text) - 1;
        }
        catch (Exception)
        {
            //msg.Text = e.Message;
            ClientScript.RegisterStartupScript(this.GetType(), "error", "<script>alert('Load Data Failed!');</script>");
        }

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Label1.Text = "1";
        MessageBind();
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Label1.Text = Convert.ToString(Convert.ToInt32(Label1.Text) - 1);
        MessageBind();
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Label1.Text = Convert.ToString(Convert.ToInt32(Label1.Text) + 1);
        MessageBind();
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Label1.Text = Label2.Text;
        MessageBind();
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label1.Text = DropDownList1.SelectedItem.Text;
        MessageBind();
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        //如果是绑定数据行 
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            ////鼠标经过时，行背景色变 
            e.Row.Attributes.Add("onmouseover", "this.style.backgroundColor='#E6F5FA'");
            ////鼠标移出时，行背景色变 
            e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor='#FFFFFF'");
            ////当有编辑列时，避免出错，要加的RowState判断 
            if (e.Row.RowState == DataControlRowState.Normal || e.Row.RowState == DataControlRowState.Alternate)
            {
                ((LinkButton)e.Row.Cells[8].Controls[0]).Attributes.Add("onclick", "javascript:return confirm('你确认要删除：\"" + e.Row.Cells[1].Text + "\"吗?')");
                ((LinkButton)e.Row.Cells[7].Controls[0]).Attributes.Add("onclick", "javascript:return confirm('你确认要更新：\"" + e.Row.Cells[1].Text + "\"吗?')");
            }
        }

    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);
        //  if (id != null)
        //  {
        try
        {
            tch ad = new tch();
            ad.delCourse(id);
            ClientScript.RegisterStartupScript(this.GetType(), "DelOk", "<script>alert('" + id + "Have been deleted!!');</script>");
            //bind();
            MessageBind();
        }
        catch
        {
            ClientScript.RegisterStartupScript(this.GetType(), "DelFail", "<script>alert('Delete " + id + "Failed!');</script>");
        }
        // }

    }
    protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
    {
        for (int i = 0; i <= GridView1.Rows.Count - 1; i++)
        {
            CheckBox cbox = (CheckBox)GridView1.Rows[i].FindControl("CheckBox1");
            if (CheckBox2.Checked == true)
            {
                cbox.Checked = true;
            }
            else
            {
                cbox.Checked = false;
            }
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        tch ad = new tch();
        for (int i = 0; i <= GridView1.Rows.Count - 1; i++)
        {
            CheckBox cbox = (CheckBox)GridView1.Rows[i].FindControl("CheckBox1");
            if (cbox.Checked == true)
            {
                ad.delCourse(Convert.ToInt32(GridView1.DataKeys[i].Value));
            }
        }
        //bind();
        MessageBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        CheckBox2.Checked = false;
        for (int i = 0; i <= GridView1.Rows.Count - 1; i++)
        {
            CheckBox cbox = (CheckBox)GridView1.Rows[i].FindControl("CheckBox1");
            cbox.Checked = false;
        }
    }


    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        MessageBind();
    }
    //更新
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        try
        {
            int ID_C = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
            string Name = ((TextBox)(GridView1.Rows[e.RowIndex].Cells[2].Controls[0])).Text.ToString().Trim();
            string url = ((TextBox)(GridView1.Rows[e.RowIndex].Cells[3].Controls[0])).Text.ToString().Trim();

            //ClientScript.RegisterStartupScript(this.GetType(), "editFail", "<script>alert('" + num + "');</script>");
            //int MaxNum = Convert.ToInt32(num);
            string Remark = ((TextBox)(GridView1.Rows[e.RowIndex].Cells[4].Controls[0])).Text.ToString().Trim();
            string Texts = ((TextBox)(GridView1.Rows[e.RowIndex].Cells[5].Controls[0])).Text.ToString().Trim();
            tch tc = new tch();
            tc.modifyCourse(ID_C, Name, url, Remark, Texts);
            ClientScript.RegisterStartupScript(this.GetType(), "editFail", "<script>alert( 'NewsLink " + ID_C + " have been updated successfully');</script>");

            GridView1.EditIndex = -1;
            MessageBind();
        }
        catch (Exception ex)
        {
            // ClientScript.RegisterStartupScript(this.GetType(), "editFail", "<script>alert(' ');</script>");
            ClientScript.RegisterStartupScript(this.GetType(), "editFail", "<script>alert('update wrong!');</script>");
        }
    }
    //取消
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        MessageBind();

    }
}
