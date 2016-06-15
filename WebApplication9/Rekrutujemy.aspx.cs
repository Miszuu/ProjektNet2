using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication9
{
    public partial class Rekrutujemy : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
        }

        protected void Wroc_Click(object sender, EventArgs e)
        {
            String url = "";
            url += "Strona_Glowna.aspx";
            Server.Transfer(url, true);
        }
        protected void Zatwierdz_Click(object sender, EventArgs e)
        {
            if(Page.IsValid)
            {
                mvTresc.SetActiveView(vSuccess);
                mvGora.SetActiveView(vKoniec);
                string name = TBImie.Text;
                string surname = TBNazwisko.Text;
                string email = TBEmail.Text;
                LabelImie.Text = TBImie.Text;
                LabelNazwisko.Text = TBNazwisko.Text;
                LabelEmail.Text = TBEmail.Text;
                string dni = "";
                foreach (ListItem item in CBLDniTygodnia.Items)
            {
                if (item.Selected)
                {
                    dni += item.Value + " ,";
                }
            }
                LabelDni.Text = dni;
                LabelRBTakNie.Text = RBVtakNie.SelectedItem.Text;
                LabelRasa.Text = DDLRasa.SelectedItem.Text;

                // send message and clear form

                TBImie.Text = string.Empty;
                TBNazwisko.Text = string.Empty;
                TBEmail.Text = string.Empty;
                DDLRasa.SelectedValue = null;
                CBLDniTygodnia.SelectedValue = null;
                RBVtakNie.SelectedValue = null;
            }
        }

        protected void ButtonWysDalej_Click(object sender, EventArgs e)
        {
            String url = "";
            url += "Strona_Glowna.aspx";
            Server.Transfer(url, true);
        }
    }
}