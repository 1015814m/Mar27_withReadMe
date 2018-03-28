using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using database;
using System.Data.SqlClient;

public partial class AdminCalendar : System.Web.UI.Page
{
    private int loginType;
    private Administrator user;
    private Event[] array;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["employeeLoggedIn"] == null)
        {
            Response.Redirect("Login.aspx");
        }
        if (Session["employeeLoggedIn"].ToString() != "True")
        {
            Response.Redirect("Login.aspx");
        }
        loginType = (int)Session["login"];
        if (loginType == 1)
        {
            Response.Redirect("HomePage.aspx");
        }
        else if (loginType == 3)
        {
            Response.Redirect("VendorHome.aspx");
        }
        else if (loginType == -1)
        {
            Response.Redirect("Logout.aspx");
        }
        else
        {
            user = (Administrator)Session["user"];
        }
        try
        {
            array = new Event[getNumOfEvents()];
            
        }
        catch (Exception)
        {

        }

        txtDate.Text = System.DateTime.Now.ToShortDateString();
        fillArray();
        
    }

    protected void calendar_selectionChanged(object sender, EventArgs e)
    {

    }

    protected void calendar_dayRender(object sender, DayRenderEventArgs e)
    {
        Style eventStyle = new Style();
        eventStyle.BackColor = System.Drawing.Color.Aqua;
        eventStyle.BorderColor = System.Drawing.Color.Black;
        eventStyle.BorderWidth = 2;

        Style companyEvent = new Style();
        companyEvent.BackColor = System.Drawing.Color.BlueViolet;

        //int blah = System.DateTime.Now.Day;
        ;
        //if (e.Day.Date <= DateTime.Now)
        //{
        //    e.Cell.ApplyStyle(eventStyle);
        //}

        foreach (Event element in array)
        {
            txtDate.Text = "akjsdljasd " + System.DateTime.Now + " " +array.Length;
            if (e.Day.Date == element.Date)
            {
                e.Cell.ApplyStyle(eventStyle);
            }
        }



    }

    protected void fillArray()
    {
        int a = 0;
        
        try
        {
            string commandText = "select [EventID], [Name], [Date], [RewardProviderID] from [dbo].[Event]";
            SqlConnection conn = ProjectDB.connectToDB();
            SqlCommand select = new SqlCommand(commandText, conn);

            SqlDataReader reader = select.ExecuteReader();

            while(reader.Read())
            {
                //int eventID = (int)reader[0];
                //string name = reader[1].ToString();
                //DateTime date = (DateTime)reader[2];
                //int vendorID = (int)reader[3];
                int eventID = (int)reader["EventID"];
                string name = reader["Name"].ToString();
                DateTime date = (DateTime)reader["Date"];
                int vendorID = (int)reader["RewardProviderID"];

                array[a++] = new Event(eventID, name, date, vendorID);
                
            }
            conn.Close();

        }
        catch (Exception)
        {
            
         }
    }
    
    protected void createEvent(string name, DateTime date, int vendorID)
    {
        try
        {
            string commandText = "insert into [dbo].[event] values (@name, @date, @vendorID)";
            SqlConnection conn = ProjectDB.connectToDB();
            SqlCommand insert = new SqlCommand(commandText, conn);

            insert.Parameters.AddWithValue("@name", name);
            insert.Parameters.AddWithValue("@date", date);
            insert.Parameters.AddWithValue("@vendorID", vendorID);

            insert.ExecuteNonQuery();
            conn.Close();
        }
        catch (Exception)
        {

        }
    }

    protected int getNumOfEvents()
    {
        int count = -1;
        try
        {
            string commandText = "select count(eventID) as Result from [dbo].[Event]";
            SqlConnection conn = ProjectDB.connectToDB();
            SqlCommand select = new SqlCommand(commandText, conn);
            SqlDataReader reader = select.ExecuteReader();

            if(reader.HasRows)
            {
                reader.Read();
                count = (int)reader["Result"];
            }
            conn.Close();
            
        }
        catch (Exception)
        {

        }
        return count;
    }

    protected void highlightEvent()
    {
        try
        {

        }
        catch (Exception)
        {

        }
    }

 
}