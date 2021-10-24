using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Validation
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            String str;
            str = args.Value;
            if (str.Length > 3)
            {
                args.IsValid = true;

            }
            else
            {
                args.IsValid = false;

            }




        }
    }
}