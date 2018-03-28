using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Event
/// </summary>
public class Event
{
    private int eventID;
    private string name;
    private DateTime date;
    private int hostCompany;
    public Event(int eventID, string name, DateTime date, int hostCompany)
    {
        EventID = eventID;
        Name = name;
        Date = date;
        HostCompany = hostCompany;
    }

    public int EventID
    {
        get
        {
            return eventID;
        }
        private set
        {
            eventID = value;
        }
    }

    public string Name
    {
        get
        {
            return name;
        }
        private set
        {
            name = value;
        }
    }

    public DateTime Date
    {
        get
        {
            return date;
        }
        private set
        {
            date = value;
        }
    }

    public int HostCompany
    {
        get
        {
            return hostCompany;
        }
        private set
        {
            hostCompany = value;
        }
    }

}