using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace leinweber_research_de
{
	public partial class Site : System.Web.UI.MasterPage
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			//if (Page.AppRelativeVirtualPath.ToLower() == "~/lia/index.aspx")
#if DEBUG
			Page.ClientScript.RegisterClientScriptInclude(GetType(), "jqueryDev", "../scripts/jquery-2.2.3.js");
#endif
			Page.ClientScript.RegisterClientScriptInclude(GetType(), "jqueryMin", "../scripts/jquery-2.2.3.min.js");
		}
	}
}