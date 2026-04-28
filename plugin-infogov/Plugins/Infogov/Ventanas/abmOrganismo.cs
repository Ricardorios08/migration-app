// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Ventanas.abmOrganismo
// Assembly: plugin-infogov, Version=1.0.0.18780, Culture=neutral, PublicKeyToken=null
// MVID: 33F9E52C-1C9C-4132-80FE-D29F95E246A9
// Assembly location: C:\nomade\para copiar\plugin-infogov.dll

using InfoGov.Common;
using InfoGov.Core;
using InfoGov.Forms;
using InfoGov.Metro.Controls;
using InfoGov.Plugins.Infogov.Entidades;
using InfoGov.Plugins.Infogov.Expertos;
using System;
using System.Drawing;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Infogov.Ventanas;

public class abmOrganismo : EntityForm<Organismo>
{
  private int CodiUnfi = PARAMS.CodiUnfi;
  private int CodiPerm = (int) PARAMS.PermisoCodiUnfi;
  private int PeriInfo = PARAMS.Periodo;
  private MetroLabel metroLabel2;
  private MetroLabel metroLabel3;
  private MetroEntityBox OrganismoCredEB;
  private MetroTextBox DetaOrgaTxt;
  private MetroIntTextBox CodiOrgaITxt;
  private MetroLabel metroLabel1;

  public abmOrganismo()
    : base("Oficina")
  {
    this.InitializeComponent();
    this.OrganismoCredEB.FindEntityFunction = new MetroEntityBox.FindEntityDelegate(this.EncontrarOrganismo);
    this.OrganismoCredEB.SearchEntityFunction = new MetroEntityBox.SearchEntityDelegate(this.BuscarOrganismo);
  }

  protected override void initializeWindow(ActionMode mode, bool firstTime)
  {
  }

  protected override void changeControlsMode(ActionMode mode)
  {
    this.CodiOrgaITxt.Enabled = false;
    this.DetaOrgaTxt.Enabled = this.OrganismoCredEB.Enabled = mode == ActionMode.New || mode == ActionMode.Edit;
  }

  protected override void showData()
  {
    this.CodiOrgaITxt.IntText = this.windowMode != ActionMode.New ? this.enti.CodiOrga : ((ExpOrganismo) this.expert).getMaxCodiOrga();
    this.DetaOrgaTxt.Text = this.enti.DetaOrga;
    ID id = new ID();
    id.Add((object) "PeriInfo", (object) PARAMS.Periodo);
    id.Add((object) "CodiOrga", (object) this.enti.CredOrga);
    this.OrganismoCredEB.Entity = this.enti.CredOrga != 0 ? (Entity) this.EM.Get<Organismo>(id) : (Entity) null;
  }

  protected override void readData()
  {
    this.enti.CodiOrga = int.Parse(this.CodiOrgaITxt.Text);
    this.enti.DetaOrga = this.DetaOrgaTxt.Text;
    this.enti.CredOrga = this.OrganismoCredEB.Entity != null ? ((Organismo) this.OrganismoCredEB.Entity).CodiOrga : 0;
  }

  protected override bool isDataValid() => this.OrganismoCredEB.Validate();

  private Entity BuscarOrganismo(string text)
  {
    Filter filter = new Filter();
    filter.Restrictions.Add(new FilterItem("o.PeriInfo", "periodo", FilterMode.Equal, this.PeriInfo.ToString()));
    filter.Restrictions.Add(new FilterItem("o.DetaOrga", "Responsable", FilterMode.Distinct, ""));
    if (Misc.IsNumeric(text))
      filter.Items.Add(new FilterItem("o.CodiOrga", "Cód. Crédito", FilterMode.Equal, text));
    else
      filter.Items.Add(new FilterItem("o.DetaOrga", "Det. Crédito", FilterMode.Contains, text));
    return (Entity) this.EM.Search<Organismo>(filter, true);
  }

  private Entity EncontrarOrganismo(string text, bool useSearch)
  {
    Filter filter = new Filter();
    filter.Restrictions.Add(new FilterItem("o.PeriInfo", "periodo", FilterMode.Equal, this.PeriInfo.ToString()));
    filter.Restrictions.Add(new FilterItem("o.DetaOrga", "Responsable", FilterMode.Distinct, ""));
    if (Misc.IsNumeric(text))
      filter.Items.Add(new FilterItem("o.CodiOrga", "Cód. Crédito", FilterMode.Equal, text));
    else
      filter.Items.Add(new FilterItem("o.DetaOrga", "Det. Crédito", FilterMode.Contains, text));
    return (Entity) this.EM.Find<Organismo>(filter, true, true);
  }

  private void InitializeComponent()
  {
    this.metroLabel1 = new MetroLabel();
    this.metroLabel2 = new MetroLabel();
    this.metroLabel3 = new MetroLabel();
    this.OrganismoCredEB = new MetroEntityBox();
    this.DetaOrgaTxt = new MetroTextBox();
    this.CodiOrgaITxt = new MetroIntTextBox();
    this.SuspendLayout();
    this.metroLabel1.AutoSize = true;
    this.metroLabel1.Location = new Point(105, 110);
    this.metroLabel1.Margin = new Padding(3, 4, 3, 4);
    this.metroLabel1.Name = "metroLabel1";
    this.metroLabel1.Size = new Size(53, 19);
    this.metroLabel1.TabIndex = 2;
    this.metroLabel1.Text = "Código";
    this.metroLabel2.AutoSize = true;
    this.metroLabel2.Location = new Point(109, 141);
    this.metroLabel2.Margin = new Padding(3, 4, 3, 4);
    this.metroLabel2.Name = "metroLabel2";
    this.metroLabel2.Size = new Size(49, 19);
    this.metroLabel2.TabIndex = 3;
    this.metroLabel2.Text = "Detalle";
    this.metroLabel3.AutoSize = true;
    this.metroLabel3.Location = new Point(60, 172);
    this.metroLabel3.Margin = new Padding(3, 4, 3, 4);
    this.metroLabel3.Name = "metroLabel3";
    this.metroLabel3.Size = new Size(98, 19);
    this.metroLabel3.TabIndex = 4;
    this.metroLabel3.Text = "Oficina Crédito";
    this.OrganismoCredEB.AllowEmpty = true;
    this.OrganismoCredEB.AllowSqlCharacters = false;
    this.OrganismoCredEB.BackColor = Color.White;
    this.OrganismoCredEB.Entity = (Entity) null;
    this.OrganismoCredEB.ExternalValidation = (Func<string>) null;
    this.OrganismoCredEB.Font = new Font("Segoe UI", 14f, FontStyle.Regular, GraphicsUnit.Pixel);
    this.OrganismoCredEB.Location = new Point(164, 168);
    this.OrganismoCredEB.Margin = new Padding(3, 4, 3, 4);
    this.OrganismoCredEB.MaximumSize = new Size(3000, 23);
    this.OrganismoCredEB.MaxLenght = 50;
    this.OrganismoCredEB.MinimumSize = new Size(100, 23);
    this.OrganismoCredEB.Name = "OrganismoCredEB";
    this.OrganismoCredEB.PropertyDetail = "DetaOrga";
    this.OrganismoCredEB.PropertyID = "CodiOrga";
    this.OrganismoCredEB.ShowNewButton = false;
    this.OrganismoCredEB.ShowSearchButton = false;
    this.OrganismoCredEB.Size = new Size(400, 23);
    this.OrganismoCredEB.TabIndex = 2;
    this.OrganismoCredEB.TextAlign = HorizontalAlignment.Left;
    this.OrganismoCredEB.TextBoxWidth = 60;
    this.DetaOrgaTxt.AllowEmpty = false;
    this.DetaOrgaTxt.AllowSqlCharacters = false;
    this.DetaOrgaTxt.Anchor = AnchorStyles.Top | AnchorStyles.Left | AnchorStyles.Right;
    this.DetaOrgaTxt.ExternalValidation = (Func<string>) null;
    this.DetaOrgaTxt.Location = new Point(164, 137);
    this.DetaOrgaTxt.Margin = new Padding(3, 4, 3, 4);
    this.DetaOrgaTxt.MaxLength = 150;
    this.DetaOrgaTxt.MinLenght = 0;
    this.DetaOrgaTxt.Name = "DetaOrgaTxt";
    this.DetaOrgaTxt.PasswordChar = char.MinValue;
    this.DetaOrgaTxt.ScrollBars = ScrollBars.None;
    this.DetaOrgaTxt.SelectedText = "";
    this.DetaOrgaTxt.ShowBorder = true;
    this.DetaOrgaTxt.Size = new Size(400, 23);
    this.DetaOrgaTxt.TabIndex = 1;
    this.DetaOrgaTxt.UseSelectable = true;
    this.CodiOrgaITxt.AllowEmpty = false;
    this.CodiOrgaITxt.AllowSqlCharacters = false;
    this.CodiOrgaITxt.ExternalValidation = (Func<string>) null;
    this.CodiOrgaITxt.IntText = 0;
    this.CodiOrgaITxt.Location = new Point(164, 106);
    this.CodiOrgaITxt.LongText = 0L;
    this.CodiOrgaITxt.Margin = new Padding(3, 4, 3, 4);
    this.CodiOrgaITxt.MaxLength = (int) short.MaxValue;
    this.CodiOrgaITxt.MaxValue = 0;
    this.CodiOrgaITxt.MinValue = 0;
    this.CodiOrgaITxt.Name = "CodiOrgaITxt";
    this.CodiOrgaITxt.PasswordChar = char.MinValue;
    this.CodiOrgaITxt.ScrollBars = ScrollBars.None;
    this.CodiOrgaITxt.SelectedText = "";
    this.CodiOrgaITxt.ShortText = (short) 0;
    this.CodiOrgaITxt.ShowBorder = true;
    this.CodiOrgaITxt.Size = new Size(75, 23);
    this.CodiOrgaITxt.TabIndex = 0;
    this.CodiOrgaITxt.Text = "0";
    this.CodiOrgaITxt.UseSelectable = true;
    this.ClientSize = new Size(590, 300);
    this.Controls.Add((Control) this.CodiOrgaITxt);
    this.Controls.Add((Control) this.DetaOrgaTxt);
    this.Controls.Add((Control) this.OrganismoCredEB);
    this.Controls.Add((Control) this.metroLabel3);
    this.Controls.Add((Control) this.metroLabel2);
    this.Controls.Add((Control) this.metroLabel1);
    this.Name = nameof (abmOrganismo);
    this.Controls.SetChildIndex((Control) this.metroLabel1, 0);
    this.Controls.SetChildIndex((Control) this.metroLabel2, 0);
    this.Controls.SetChildIndex((Control) this.metroLabel3, 0);
    this.Controls.SetChildIndex((Control) this.OrganismoCredEB, 0);
    this.Controls.SetChildIndex((Control) this.DetaOrgaTxt, 0);
    this.Controls.SetChildIndex((Control) this.CodiOrgaITxt, 0);
    this.ResumeLayout(false);
    this.PerformLayout();
  }
}
