﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mime;
using OpenPop.Pop3;
using OpenPop.Mime;
using System.Data;

namespace Varopay.User
{
    public partial class InternalMail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            ReadEmails();
        }
        protected void ReadEmails()
        {
            Pop3Client pop3Client;
            if (Session["Pop3Client"] == null)
            {
                pop3Client = new Pop3Client();
                bool useSsl = true;
                pop3Client.Connect("pop.gmail.com", 995, useSsl);
                pop3Client.Authenticate("divya.kandhadi@amigoscube.com","tejaramm@1");
                Session["Pop3Client"] = pop3Client;
            }
            else
            {
                pop3Client = (Pop3Client)Session["Pop3Client"];
            }
            int count = pop3Client.GetMessageCount();
            DataTable dtMessages = new DataTable();
            dtMessages.Columns.Add("MessageNumber");
            dtMessages.Columns.Add("From");
            dtMessages.Columns.Add("Subject");
            dtMessages.Columns.Add("DateSent");
            int counter = 0;
            for (int i = count; i >= 1; i--)
            {
                Message message = pop3Client.GetMessage(i);
                dtMessages.Rows.Add();
                dtMessages.Rows[dtMessages.Rows.Count - 1]["MessageNumber"] = i;
                dtMessages.Rows[dtMessages.Rows.Count - 1]["From"] = message.Headers.From.Address;
                dtMessages.Rows[dtMessages.Rows.Count - 1]["Subject"] = message.Headers.Subject;
                dtMessages.Rows[dtMessages.Rows.Count - 1]["DateSent"] = message.Headers.DateSent.ToLocalTime();
                counter++;
                if (counter > 4)
                {
                    break;
                }
            }
        }
    }
}