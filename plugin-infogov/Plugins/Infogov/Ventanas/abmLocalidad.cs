// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Ventanas.abmLocalidad
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
using System.ComponentModel;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Infogov.Ventanas;

public class abmLocalidad : EntityForm<Localidad>
{
  private MetroTextBox DetaLocaTxt;
  private MetroLabel metroLabel2;
  private MetroLabel metroLabel1;
  private MetroEntityBox DistritoEB;
  private MetroLabel metroLabel3;
  private MetroMaskedTextBox CodiLocaMsk;

  public abmLocalidad()
    : base("infogov")
  {
    this.InitializeComponent();
    if (!(PARAMS.Municipio == "Malargüe") && !(PARAMS.Municipio == "Tupungato") && !(PARAMS.Municipio == "SanMartín"))
      return;
    this.DistritoEB.Visible = false;
    this.metroLabel3.Visible = false;
  }

  protected override void initializeWindow(ActionMode mode, bool firstTime)
  {
    if (!firstTime)
      return;
    this.DistritoEB.FindEntityFunction = new MetroEntityBox.FindEntityDelegate(this.EncontrarDistrito);
    this.DistritoEB.SearchEntityFunction = new MetroEntityBox.SearchEntityDelegate(this.BuscarDistrito);
  }

  protected override void changeControlsMode(ActionMode mode)
  {
    this.CodiLocaMsk.Enabled = false;
    this.DetaLocaTxt.Enabled = mode == ActionMode.New || mode == ActionMode.Edit;
    this.DistritoEB.Enabled = mode == ActionMode.New || mode == ActionMode.Edit;
  }

  protected override void showData()
  {
    this.CodiLocaMsk.IntText = this.windowMode == ActionMode.New ? new ExpLocalidad().getUltimoCodigo() : this.enti.CodiLoca;
    this.DetaLocaTxt.Text = this.enti.DetaLoca;
    if (this.enti.CodiDist == 0)
      this.DistritoEB.Entity = (Entity) null;
    else
      this.DistritoEB.Entity = (Entity) this.EM.Get<Distrito>(new ID("CodiDist", (object) this.enti.CodiDist));
  }

  protected override void readData()
  {
    this.enti.DetaLoca = this.DetaLocaTxt.Text;
    if (this.DistritoEB.Entity == null)
      this.enti.CodiDist = 0;
    else
      this.enti.CodiDist = ((Distrito) this.DistritoEB.Entity).CodiDist;
  }

  protected override bool isDataValid()
  {
    bool flag = true;
    StringBuilder stringBuilder = new StringBuilder();
    if (this.DetaLocaTxt.Text == "")
    {
      stringBuilder.AppendLine("El Detalle del Localidad esta vacío");
      flag = false;
    }
    if (PARAMS.Municipio != "Malargüe" && PARAMS.Municipio != "Tupungato" && PARAMS.Municipio != "SanMartín" && this.DistritoEB.Entity == null)
    {
      stringBuilder.AppendLine("Ingresar Distrito");
      flag = false;
    }
    if (stringBuilder.Length > 0)
      new frmMensaje((Form) this).mostrarError(stringBuilder.ToString());
    return flag;
  }

  private Entity EncontrarDistrito(string text, bool useSearch)
  {
    Filter filter = new Filter();
    if (Misc.IsNumeric(text))
      filter.Items.Add(new FilterItem("CodiDist", "Codigo", FilterMode.Equal, text));
    else if (text.Length > 0)
      filter.Items.Add(new FilterItem("DetaDist", "Detalle", FilterMode.Contains, text));
    return (Entity) this.EM.Find<Distrito>(filter, true, useSearch);
  }

  private Entity BuscarDistrito(string text)
  {
    Filter filter = new Filter();
    if (Misc.IsNumeric(text))
      filter.Items.Add(new FilterItem("CodiDist", "Codigo", FilterMode.Equal, text));
    else if (text.Length > 0)
      filter.Items.Add(new FilterItem("DetaDist", "Detalle", FilterMode.Contains, text));
    return (Entity) this.EM.Search<Distrito>(filter, true);
  }

  private void InitializeComponent()
  {
    ComponentResourceManager componentResourceManager = new ComponentResourceManager(typeof (abmLocalidad));
    this.DetaLocaTxt = new MetroTextBox();
    this.metroLabel2 = new MetroLabel();
    this.metroLabel1 = new MetroLabel();
    this.CodiLocaMsk = new MetroMaskedTextBox();
    this.DistritoEB = new MetroEntityBox();
    this.metroLabel3 = new MetroLabel();
    this.SuspendLayout();
    this.DetaLocaTxt.AllowEmpty = false;
    this.DetaLocaTxt.AllowSqlCharacters = false;
    this.DetaLocaTxt.ExternalValidation = (Func<string>) null;
    this.DetaLocaTxt.Location = new Point(106, 162);
    this.DetaLocaTxt.Margin = new Padding(3, 4, 3, 4);
    this.DetaLocaTxt.MaxLength = 30;
    this.DetaLocaTxt.MinLenght = 0;
    this.DetaLocaTxt.Name = "DetaLocaTxt";
    this.DetaLocaTxt.PasswordChar = char.MinValue;
    this.DetaLocaTxt.ScrollBars = ScrollBars.None;
    this.DetaLocaTxt.SelectedText = "";
    this.DetaLocaTxt.ShowBorder = true;
    this.DetaLocaTxt.Size = new Size(271, 23);
    this.DetaLocaTxt.TabIndex = 19;
    this.DetaLocaTxt.UseSelectable = true;
    this.metroLabel2.AutoSize = true;
    this.metroLabel2.Location = new Point(47, 166);
    this.metroLabel2.Margin = new Padding(3, 4, 3, 4);
    this.metroLabel2.Name = "metroLabel2";
    this.metroLabel2.Size = new Size(49, 19);
    this.metroLabel2.TabIndex = 18;
    this.metroLabel2.Text = "Detalle";
    this.metroLabel1.AutoSize = true;
    this.metroLabel1.Location = new Point(47, 133);
    this.metroLabel1.Margin = new Padding(3, 4, 3, 4);
    this.metroLabel1.Name = "metroLabel1";
    this.metroLabel1.Size = new Size(53, 19);
    this.metroLabel1.TabIndex = 17;
    this.metroLabel1.Text = "Código";
    this.CodiLocaMsk.AllowEmpty = false;
    this.CodiLocaMsk.AllowSqlCharacters = false;
    this.CodiLocaMsk.CompleteMaskRequired = false;
    this.CodiLocaMsk.CutCopyMaskFormat = MaskFormat.IncludeLiterals;
    this.CodiLocaMsk.ExternalValidation = (Func<string>) null;
    this.CodiLocaMsk.IntText = 0;
    this.CodiLocaMsk.Location = new Point(106, 131);
    this.CodiLocaMsk.LongText = 0L;
    this.CodiLocaMsk.Margin = new Padding(3, 4, 3, 4);
    this.CodiLocaMsk.Mask = "999";
    this.CodiLocaMsk.Name = "CodiLocaMsk";
    this.CodiLocaMsk.PromptChar = '_';
    this.CodiLocaMsk.SelectedText = "";
    this.CodiLocaMsk.ShortText = (short) 0;
    this.CodiLocaMsk.Size = new Size(51, 23);
    this.CodiLocaMsk.TabIndex = 16 /*0x10*/;
    this.CodiLocaMsk.Text = "0";
    this.CodiLocaMsk.TextAlign = HorizontalAlignment.Center;
    this.CodiLocaMsk.TextMaskFormat = MaskFormat.ExcludePromptAndLiterals;
    this.CodiLocaMsk.UseSelectable = true;
    this.DistritoEB.AllowEmpty = false;
    this.DistritoEB.AllowSqlCharacters = false;
    this.DistritoEB.BackColor = Color.White;
    this.DistritoEB.Entity = (Entity) null;
    this.DistritoEB.ExternalValidation = (Func<string>) null;
    this.DistritoEB.Font = new Font("Segoe UI", 14f, FontStyle.Regular, GraphicsUnit.Pixel);
    this.DistritoEB.Location = new Point(106, 99);
    this.DistritoEB.Margin = new Padding(3, 4, 3, 4);
    this.DistritoEB.MaximumSize = new Size(3000, 23);
    this.DistritoEB.MaxLenght = 50;
    this.DistritoEB.MinimumSize = new Size(100, 23);
    this.DistritoEB.Name = "DistritoEB";
    this.DistritoEB.PropertyDetail = "DetaDist";
    this.DistritoEB.PropertyID = "CodiDist";
    this.DistritoEB.ShowNewButton = false;
    this.DistritoEB.ShowSearchButton = false;
    this.DistritoEB.Size = new Size(281, 23);
    this.DistritoEB.TabIndex = 20;
    this.DistritoEB.TextAlign = HorizontalAlignment.Left;
    this.DistritoEB.TextBoxWidth = 50;
    this.metroLabel3.AutoSize = true;
    this.metroLabel3.Location = new Point(47, 99);
    this.metroLabel3.Margin = new Padding(3, 4, 3, 4);
    this.metroLabel3.Name = "metroLabel3";
    this.metroLabel3.Size = new Size(50, 19);
    this.metroLabel3.TabIndex = 21;
    this.metroLabel3.Text = "Distrito";
    this.ClientSize = new Size(460, 300);
    this.Controls.Add((Control) this.metroLabel3);
    this.Controls.Add((Control) this.DistritoEB);
    this.Controls.Add((Control) this.DetaLocaTxt);
    this.Controls.Add((Control) this.metroLabel2);
    this.Controls.Add((Control) this.metroLabel1);
    this.Controls.Add((Control) this.CodiLocaMsk);
    this.Name = nameof (abmLocalidad);
    this.Controls.SetChildIndex((Control) this.CodiLocaMsk, 0);
    this.Controls.SetChildIndex((Control) this.metroLabel1, 0);
    this.Controls.SetChildIndex((Control) this.metroLabel2, 0);
    this.Controls.SetChildIndex((Control) this.DetaLocaTxt, 0);
    this.Controls.SetChildIndex((Control) this.DistritoEB, 0);
    this.Controls.SetChildIndex((Control) this.metroLabel3, 0);
    this.ResumeLayout(false);
    this.PerformLayout();
  }
}
