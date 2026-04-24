// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Ventanas.abmDistrito
// Assembly: plugin-infogov, Version=1.0.0.18780, Culture=neutral, PublicKeyToken=null
// MVID: 33F9E52C-1C9C-4132-80FE-D29F95E246A9
// Assembly location: C:\nomade\para copiar\plugin-infogov.dll

using InfoGov.Common;
using InfoGov.Forms;
using InfoGov.Metro.Controls;
using InfoGov.Plugins.Infogov.Entidades;
using InfoGov.Plugins.Infogov.Expertos;
using System;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Infogov.Ventanas;

public class abmDistrito : EntityForm<Distrito>
{
  private MetroLabel metroLabel2;
  private MetroLabel metroLabel3;
  private MetroTextBox txtDetaDist;
  private MetroIntTextBox txtCodiDist;
  private MetroEntityBox DepartamentoEB;
  private MetroLabel metroLabel1;

  public abmDistrito()
    : base("Distrito")
  {
    this.InitializeComponent();
  }

  private void InitializeComponent()
  {
    this.metroLabel1 = new MetroLabel();
    this.metroLabel2 = new MetroLabel();
    this.metroLabel3 = new MetroLabel();
    this.txtDetaDist = new MetroTextBox();
    this.txtCodiDist = new MetroIntTextBox();
    this.DepartamentoEB = new MetroEntityBox();
    this.SuspendLayout();
    this.metroLabel1.AutoSize = true;
    this.metroLabel1.Location = new Point(23, 99);
    this.metroLabel1.Margin = new Padding(3, 4, 3, 4);
    this.metroLabel1.Name = "metroLabel1";
    this.metroLabel1.Size = new Size(95, 19);
    this.metroLabel1.TabIndex = 2;
    this.metroLabel1.Text = "Departamento";
    this.metroLabel2.AutoSize = true;
    this.metroLabel2.Location = new Point(20, 140);
    this.metroLabel2.Margin = new Padding(3, 4, 3, 4);
    this.metroLabel2.Name = "metroLabel2";
    this.metroLabel2.Size = new Size(98, 19);
    this.metroLabel2.TabIndex = 3;
    this.metroLabel2.Text = "Codigo Distrito";
    this.metroLabel3.AutoSize = true;
    this.metroLabel3.Location = new Point(24, 176 /*0xB0*/);
    this.metroLabel3.Margin = new Padding(3, 4, 3, 4);
    this.metroLabel3.Name = "metroLabel3";
    this.metroLabel3.Size = new Size(94, 19);
    this.metroLabel3.TabIndex = 4;
    this.metroLabel3.Text = "Detalle Distrito";
    this.txtDetaDist.AllowEmpty = false;
    this.txtDetaDist.AllowSqlCharacters = false;
    this.txtDetaDist.ExternalValidation = (Func<string>) null;
    this.txtDetaDist.Location = new Point(124, 176 /*0xB0*/);
    this.txtDetaDist.Margin = new Padding(3, 4, 3, 4);
    this.txtDetaDist.MaxLength = 30;
    this.txtDetaDist.MinLenght = 0;
    this.txtDetaDist.Name = "txtDetaDist";
    this.txtDetaDist.PasswordChar = char.MinValue;
    this.txtDetaDist.ScrollBars = ScrollBars.None;
    this.txtDetaDist.SelectedText = "";
    this.txtDetaDist.ShowBorder = true;
    this.txtDetaDist.Size = new Size(194, 23);
    this.txtDetaDist.TabIndex = 2;
    this.txtDetaDist.UseSelectable = true;
    this.txtCodiDist.AllowEmpty = false;
    this.txtCodiDist.AllowSqlCharacters = false;
    this.txtCodiDist.ExternalValidation = (Func<string>) null;
    this.txtCodiDist.IntText = 0;
    this.txtCodiDist.Location = new Point(124, 140);
    this.txtCodiDist.LongText = 0L;
    this.txtCodiDist.Margin = new Padding(3, 4, 3, 4);
    this.txtCodiDist.MaxLength = 2;
    this.txtCodiDist.MaxValue = 99;
    this.txtCodiDist.MinValue = 0;
    this.txtCodiDist.Name = "txtCodiDist";
    this.txtCodiDist.PasswordChar = char.MinValue;
    this.txtCodiDist.ScrollBars = ScrollBars.None;
    this.txtCodiDist.SelectedText = "";
    this.txtCodiDist.ShortText = (short) 0;
    this.txtCodiDist.ShowBorder = true;
    this.txtCodiDist.Size = new Size(75, 23);
    this.txtCodiDist.TabIndex = 1;
    this.txtCodiDist.UseSelectable = true;
    this.DepartamentoEB.AllowEmpty = false;
    this.DepartamentoEB.AllowSqlCharacters = false;
    this.DepartamentoEB.BackColor = Color.White;
    this.DepartamentoEB.Entity = (Entity) null;
    this.DepartamentoEB.ExternalValidation = (Func<string>) null;
    this.DepartamentoEB.Font = new Font("Segoe UI", 14f, FontStyle.Regular, GraphicsUnit.Pixel);
    this.DepartamentoEB.Location = new Point(124, 99);
    this.DepartamentoEB.Margin = new Padding(3, 4, 3, 4);
    this.DepartamentoEB.MaximumSize = new Size(3000, 23);
    this.DepartamentoEB.MaxLenght = 50;
    this.DepartamentoEB.MinimumSize = new Size(100, 23);
    this.DepartamentoEB.Name = "DepartamentoEB";
    this.DepartamentoEB.PropertyDetail = "DetaDepa";
    this.DepartamentoEB.PropertyID = "CodiDepa";
    this.DepartamentoEB.ShowNewButton = false;
    this.DepartamentoEB.ShowSearchButton = false;
    this.DepartamentoEB.Size = new Size(325, 23);
    this.DepartamentoEB.TabIndex = 0;
    this.DepartamentoEB.TextAlign = HorizontalAlignment.Left;
    this.DepartamentoEB.TextBoxWidth = 40;
    this.ClientSize = new Size(460, 300);
    this.Controls.Add((Control) this.DepartamentoEB);
    this.Controls.Add((Control) this.txtDetaDist);
    this.Controls.Add((Control) this.txtCodiDist);
    this.Controls.Add((Control) this.metroLabel3);
    this.Controls.Add((Control) this.metroLabel2);
    this.Controls.Add((Control) this.metroLabel1);
    this.Name = nameof (abmDistrito);
    this.Controls.SetChildIndex((Control) this.metroLabel1, 0);
    this.Controls.SetChildIndex((Control) this.metroLabel2, 0);
    this.Controls.SetChildIndex((Control) this.metroLabel3, 0);
    this.Controls.SetChildIndex((Control) this.txtCodiDist, 0);
    this.Controls.SetChildIndex((Control) this.txtDetaDist, 0);
    this.Controls.SetChildIndex((Control) this.DepartamentoEB, 0);
    this.ResumeLayout(false);
    this.PerformLayout();
  }

  protected override void initializeWindow(ActionMode mode, bool firstTime)
  {
    if (!firstTime)
      return;
    this.DepartamentoEB.FindEntityFunction = new MetroEntityBox.FindEntityDelegate(this.EncontrarDepartamento);
    this.DepartamentoEB.SearchEntityFunction = new MetroEntityBox.SearchEntityDelegate(this.BuscarDepartamento);
  }

  protected override void changeControlsMode(ActionMode mode)
  {
    this.txtCodiDist.Enabled = false;
    this.txtDetaDist.Enabled = mode == ActionMode.Edit || mode == ActionMode.New;
    this.DepartamentoEB.Enabled = mode == ActionMode.New || mode == ActionMode.Edit;
  }

  protected override void showData()
  {
    this.txtCodiDist.IntText = this.windowMode == ActionMode.New ? new ExpDistrito().getUltimoCodigo() : this.enti.CodiDist;
    this.txtDetaDist.Text = this.enti.DetaDist;
    if (this.enti.CodiDepa == (short) 0)
      this.DepartamentoEB.Entity = (Entity) null;
    else
      this.DepartamentoEB.Entity = (Entity) this.EM.Get<Departamento>(new ID("CodiDepa", (object) this.enti.CodiDepa));
  }

  protected override void readData()
  {
    this.enti.CodiDist = this.txtCodiDist.IntText;
    this.enti.DetaDist = this.txtDetaDist.Text;
    if (this.DepartamentoEB.Entity == null)
      this.enti.CodiDepa = (short) 0;
    else
      this.enti.CodiDepa = ((Departamento) this.DepartamentoEB.Entity).CodiDepa;
  }

  protected override bool isDataValid()
  {
    StringBuilder stringBuilder = new StringBuilder();
    bool flag = true;
    if (this.txtDetaDist.Text == "")
    {
      stringBuilder.AppendLine("El Detalle del Distrito esta vacío");
      flag = false;
    }
    if (this.DepartamentoEB.Entity == null)
    {
      stringBuilder.AppendLine("Ingresar Departamento");
      flag = false;
    }
    if (stringBuilder.Length > 0)
      new frmMensaje((Form) this).mostrarError(stringBuilder.ToString());
    return flag;
  }

  private Entity EncontrarDepartamento(string text, bool useSearch)
  {
    Filter filter = new Filter();
    if (Misc.IsNumeric(text))
      filter.Items.Add(new FilterItem("CodiDepa", "Codigo", FilterMode.Equal, text));
    else if (text.Length > 0)
      filter.Items.Add(new FilterItem("DetaDepa", "Detalle", FilterMode.Contains, text));
    return (Entity) this.EM.Find<Departamento>(filter, true, useSearch);
  }

  private Entity BuscarDepartamento(string text)
  {
    Filter filter = new Filter();
    if (Misc.IsNumeric(text))
      filter.Items.Add(new FilterItem("CodiDepa", "Codigo", FilterMode.Equal, text));
    else if (text.Length > 0)
      filter.Items.Add(new FilterItem("DetaDepa", "Detalle", FilterMode.Contains, text));
    return (Entity) this.EM.Search<Departamento>(filter, true);
  }
}
