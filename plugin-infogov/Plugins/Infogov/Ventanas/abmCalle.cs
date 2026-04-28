// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Ventanas.abmCalle
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
using System.Text;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Infogov.Ventanas;

public class abmCalle : EntityForm<Calle>
{
  private MetroTextBox DetaCallTxt;
  private MetroLabel metroLabel2;
  private MetroLabel metroLabel1;
  private MetroEntityBox DepartamentoEB;
  private MetroLabel metroLabel3;
  private MetroEntityBox LocalidadEB;
  private MetroLabel LbLocalidad;
  private MetroMaskedTextBox CodiCallMsk;

  public abmCalle()
    : base("Calle")
  {
    this.InitializeComponent();
    if (PARAMS.Municipio == "Tupungato" || PARAMS.Municipio == "Malargüe" || PARAMS.Municipio == "SanMartín")
    {
      this.DepartamentoEB.Visible = false;
      this.metroLabel3.Visible = false;
    }
    if (!(PARAMS.Municipio == "SanMartín"))
      return;
    this.LbLocalidad.Visible = this.LocalidadEB.Visible = true;
    this.LocalidadEB.FindEntityFunction = new MetroEntityBox.FindEntityDelegate(this.encontrarLocalidad);
    this.LocalidadEB.SearchEntityFunction = new MetroEntityBox.SearchEntityDelegate(this.buscarLocalidad);
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
    switch (mode)
    {
      case ActionMode.New:
        this.CodiCallMsk.Enabled = false;
        this.DetaCallTxt.Enabled = true;
        this.DepartamentoEB.Enabled = PARAMS.Municipio != "SantaRosa";
        this.LocalidadEB.Enabled = PARAMS.Municipio == "SanMartín";
        break;
      case ActionMode.Edit:
        this.CodiCallMsk.Enabled = false;
        this.DetaCallTxt.Enabled = true;
        this.DepartamentoEB.Enabled = PARAMS.Municipio != "SantaRosa";
        this.LocalidadEB.Enabled = PARAMS.Municipio == "SanMartín";
        break;
      case ActionMode.View:
        this.CodiCallMsk.Enabled = false;
        this.DetaCallTxt.Enabled = false;
        this.DepartamentoEB.Enabled = false;
        this.LocalidadEB.Enabled = false;
        break;
    }
  }

  protected override void showData()
  {
    this.CodiCallMsk.IntText = this.windowMode == ActionMode.New ? new ExpCalle().getUltimoCodigo() : this.enti.CodiCall;
    this.DetaCallTxt.Text = this.enti.DetaCall;
    this.DepartamentoEB.Entity = this.enti.CodiDepa == 0 ? (Entity) null : (Entity) this.EM.Get<Departamento>(new ID("CodiDepa", (object) this.enti.CodiDepa));
    this.LocalidadEB.Entity = this.enti.CodiLoca == 0 ? (Entity) null : (Entity) this.EM.Get<Localidad>(new ID("CodiLoca", (object) this.enti.CodiLoca));
  }

  protected override void readData()
  {
    this.CodiCallMsk.IntText = this.windowMode == ActionMode.New ? new ExpCalle().getUltimoCodigo() : this.enti.CodiCall;
    this.enti.DetaCall = this.DetaCallTxt.Text;
    this.enti.CodiDepa = this.DepartamentoEB.Entity == null ? 0 : (int) ((Departamento) this.DepartamentoEB.Entity).CodiDepa;
    this.enti.CodiLoca = this.LocalidadEB.Entity == null ? 0 : ((Localidad) this.LocalidadEB.Entity).CodiLoca;
  }

  protected override bool isDataValid()
  {
    StringBuilder stringBuilder = new StringBuilder();
    bool flag = true;
    if (this.DetaCallTxt.Text == "")
    {
      stringBuilder.AppendLine("Debe ingresar la calle");
      flag = false;
    }
    if (this.DepartamentoEB.Entity == null && PARAMS.Municipio != "SantaRosa" && PARAMS.Municipio != "Tupungato" && PARAMS.Municipio != "Malargüe" && PARAMS.Municipio != "SanMartín")
    {
      stringBuilder.AppendLine("Ingresar Departamento");
      flag = false;
    }
    if (PARAMS.Municipio == "SanMartín" && this.LocalidadEB.Entity == null)
    {
      stringBuilder.AppendLine("Ingresar Localidad.");
      flag = false;
    }
    if (stringBuilder.Length > 0)
      new frmMensaje((Form) this).mostrarError(stringBuilder.ToString());
    return flag;
  }

  private void InitializeComponent()
  {
    this.DetaCallTxt = new MetroTextBox();
    this.metroLabel2 = new MetroLabel();
    this.metroLabel1 = new MetroLabel();
    this.CodiCallMsk = new MetroMaskedTextBox();
    this.DepartamentoEB = new MetroEntityBox();
    this.metroLabel3 = new MetroLabel();
    this.LocalidadEB = new MetroEntityBox();
    this.LbLocalidad = new MetroLabel();
    this.SuspendLayout();
    this.DetaCallTxt.Location = new Point(113, 167);
    this.DetaCallTxt.Margin = new Padding(3, 4, 3, 4);
    this.DetaCallTxt.MaxLength = 40;
    this.DetaCallTxt.Name = "DetaCallTxt";
    this.DetaCallTxt.Size = new Size(330, 23);
    this.DetaCallTxt.TabIndex = 15;
    this.metroLabel2.Location = new Point(58, 171);
    this.metroLabel2.Margin = new Padding(3, 4, 3, 4);
    this.metroLabel2.Name = "metroLabel2";
    this.metroLabel2.Size = new Size(49, 19);
    this.metroLabel2.TabIndex = 14;
    this.metroLabel2.Text = "Detalle";
    this.metroLabel1.Location = new Point(54, 138);
    this.metroLabel1.Margin = new Padding(3, 4, 3, 4);
    this.metroLabel1.Name = "metroLabel1";
    this.metroLabel1.Size = new Size(53, 19);
    this.metroLabel1.TabIndex = 13;
    this.metroLabel1.Text = "Código";
    this.CodiCallMsk.Location = new Point(113, 136);
    this.CodiCallMsk.Margin = new Padding(3, 4, 3, 4);
    this.CodiCallMsk.Mask = "99999";
    this.CodiCallMsk.Name = "CodiCallMsk";
    this.CodiCallMsk.Size = new Size(50, 23);
    this.CodiCallMsk.TabIndex = 12;
    this.CodiCallMsk.Text = "0";
    this.CodiCallMsk.TextAlign = HorizontalAlignment.Center;
    this.DepartamentoEB.AllowEmpty = false;
    this.DepartamentoEB.AllowSqlCharacters = false;
    this.DepartamentoEB.BackColor = Color.White;
    this.DepartamentoEB.Entity = (Entity) null;
    this.DepartamentoEB.ExternalValidation = (Func<string>) null;
    this.DepartamentoEB.Font = new Font("Segoe UI", 14f, FontStyle.Regular, GraphicsUnit.Pixel);
    this.DepartamentoEB.LabelText = "";
    this.DepartamentoEB.Location = new Point(113, 103);
    this.DepartamentoEB.MandatoryWrite = false;
    this.DepartamentoEB.Margin = new Padding(3, 4, 3, 4);
    this.DepartamentoEB.MaximumSize = new Size(3000, 23);
    this.DepartamentoEB.MaxLenght = 50;
    this.DepartamentoEB.MinimumSize = new Size(100, 23);
    this.DepartamentoEB.Name = "DepartamentoEB";
    this.DepartamentoEB.PropertyDetail = "DetaDepa";
    this.DepartamentoEB.PropertyID = "CodiDepa";
    this.DepartamentoEB.ShowNewButton = false;
    this.DepartamentoEB.ShowSearchButton = false;
    this.DepartamentoEB.Size = new Size(330, 23);
    this.DepartamentoEB.TabIndex = 16 /*0x10*/;
    this.DepartamentoEB.TextAlign = HorizontalAlignment.Left;
    this.DepartamentoEB.TextBoxWidth = 50;
    this.metroLabel3.Location = new Point(7, 107);
    this.metroLabel3.Margin = new Padding(3, 4, 3, 4);
    this.metroLabel3.Name = "metroLabel3";
    this.metroLabel3.Size = new Size(95, 19);
    this.metroLabel3.TabIndex = 17;
    this.metroLabel3.Text = "Departamento";
    this.LocalidadEB.AllowEmpty = false;
    this.LocalidadEB.AllowSqlCharacters = false;
    this.LocalidadEB.BackColor = Color.White;
    this.LocalidadEB.Entity = (Entity) null;
    this.LocalidadEB.ExternalValidation = (Func<string>) null;
    this.LocalidadEB.Font = new Font("Segoe UI", 14f, FontStyle.Regular, GraphicsUnit.Pixel);
    this.LocalidadEB.LabelText = "";
    this.LocalidadEB.Location = new Point(113, 198);
    this.LocalidadEB.MandatoryWrite = false;
    this.LocalidadEB.Margin = new Padding(3, 4, 3, 4);
    this.LocalidadEB.MaximumSize = new Size(3000, 23);
    this.LocalidadEB.MaxLenght = 50;
    this.LocalidadEB.MinimumSize = new Size(100, 23);
    this.LocalidadEB.Name = "LocalidadEB";
    this.LocalidadEB.PropertyDetail = "DetaLoca";
    this.LocalidadEB.PropertyID = "CodiLoca";
    this.LocalidadEB.ShowNewButton = false;
    this.LocalidadEB.ShowSearchButton = false;
    this.LocalidadEB.Size = new Size(330, 23);
    this.LocalidadEB.TabIndex = 18;
    this.LocalidadEB.TextAlign = HorizontalAlignment.Left;
    this.LocalidadEB.TextBoxWidth = 50;
    this.LocalidadEB.Visible = false;
    this.LbLocalidad.Location = new Point(42, 202);
    this.LbLocalidad.Margin = new Padding(3, 4, 3, 4);
    this.LbLocalidad.Name = "LbLocalidad";
    this.LbLocalidad.Size = new Size(65, 19);
    this.LbLocalidad.TabIndex = 19;
    this.LbLocalidad.Text = "Localidad";
    this.LbLocalidad.Visible = false;
    this.ClientSize = new Size(570, 300);
    this.Controls.Add((Control) this.LbLocalidad);
    this.Controls.Add((Control) this.LocalidadEB);
    this.Controls.Add((Control) this.metroLabel3);
    this.Controls.Add((Control) this.DepartamentoEB);
    this.Controls.Add((Control) this.DetaCallTxt);
    this.Controls.Add((Control) this.metroLabel2);
    this.Controls.Add((Control) this.metroLabel1);
    this.Controls.Add((Control) this.CodiCallMsk);
    this.Name = nameof (abmCalle);
    this.Controls.SetChildIndex((Control) this.CodiCallMsk, 0);
    this.Controls.SetChildIndex((Control) this.metroLabel1, 0);
    this.Controls.SetChildIndex((Control) this.metroLabel2, 0);
    this.Controls.SetChildIndex((Control) this.DetaCallTxt, 0);
    this.Controls.SetChildIndex((Control) this.DepartamentoEB, 0);
    this.Controls.SetChildIndex((Control) this.metroLabel3, 0);
    this.Controls.SetChildIndex((Control) this.LocalidadEB, 0);
    this.Controls.SetChildIndex((Control) this.LbLocalidad, 0);
    this.ResumeLayout(false);
    this.PerformLayout();
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

  private Filter filtroLocalidad(string text)
  {
    return !Misc.IsNumeric(text) ? new Filter(new FilterItem("DetaLoca", "Detalle", FilterMode.Contains, text)) : new Filter(new FilterItem("CodiLoca", "Código de Localidad", FilterMode.StartsWith, text));
  }

  private Entity encontrarLocalidad(string text, bool usarBuscar)
  {
    return (Entity) this.EM.Find<Localidad>(this.filtroLocalidad(text), true, usarBuscar);
  }

  private Entity buscarLocalidad(string text)
  {
    return (Entity) this.EM.Search<Localidad>(this.filtroLocalidad(text), true);
  }
}
