﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication9
{
    public partial class Menu_3_1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
            playerSource2.XPath = "/PlayerList/Player[@ID=" + GridView2.SelectedDataKey.Value.ToString() + "]";
        }
    }
}