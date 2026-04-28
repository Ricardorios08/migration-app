// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Reportes.DatosFijos.Persona.repDFPersona
// Assembly: plugin-infogov, Version=1.0.0.18780, Culture=neutral, PublicKeyToken=null
// MVID: 33F9E52C-1C9C-4132-80FE-D29F95E246A9
// Assembly location: C:\nomade\para copiar\plugin-infogov.dll

using InfoGov.Common;
using InfoGov.Forms;
using InfoGov.Metro.Controls;
using InfoGov.Reports;
using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Infogov.Reportes.DatosFijos.Persona;

public class repDFPersona : InfoGovPrintForm
{
  private IContainer components = (IContainer) null;
  private MetroLabel metroLabel1;
  private MetroEntityBox mebCucuPers;

  public repDFPersona()
    : base("Datos Fijos")
  {
    this.InitializeComponent();
    this.mebCucuPers.SearchEntityFunction = new MetroEntityBox.SearchEntityDelegate(this.BuscarPersona);
    this.mebCucuPers.FindEntityFunction = new MetroEntityBox.FindEntityDelegate(this.EncontrarPersona);
    this.mebCucuPers.Focus();
  }

  protected override string validateControls()
  {
    return this.mebCucuPers.Entity == null ? "Seleccionar una persona." : string.Empty;
  }

  protected override InfoGovReport createReport()
  {
    return (InfoGovReport) new irepDFPersona()
    {
      CucuPers = ((InfoGov.Plugins.Infogov.Entidades.Persona) this.mebCucuPers.Entity).CucuPers
    };
  }

  private Filter filtroPersona(string text)
  {
    if (!Misc.IsNumeric(text))
      return new Filter()
      {
        Items = {
          new FilterItem("DetaPers", "Nombre", FilterMode.Contains, text)
        }
      };
    return new Filter()
    {
      Items = {
        new FilterItem("CucuPers", "Cuit/Cuil", FilterMode.StartsWith, text)
      }
    };
  }

  private Entity EncontrarPersona(string text, bool usarBuscar)
  {
    return (Entity) this.EM.Find<InfoGov.Plugins.Infogov.Entidades.Persona>(this.filtroPersona(text), true, true);
  }

  private Entity BuscarPersona(string text)
  {
    return (Entity) this.EM.Search<InfoGov.Plugins.Infogov.Entidades.Persona>(this.filtroPersona(text), true);
  }

  protected override void Dispose(bool disposing)
  {
    if (disposing && this.components != null)
      this.components.Dispose();
    base.Dispose(disposing);
  }

  private void InitializeComponent()
  {
    this.metroLabel1 = new MetroLabel();
    this.mebCucuPers = new MetroEntityBox();
    this.SuspendLayout();
    this.butClose.Location = new Point(531, 10);
    this.butClose.TabIndex = 3;
    this.butGenerate.Location = new Point(246, 117);
    this.butGenerate.TabIndex = 2;
    this.metroLabel1.AutoSize = false;
    this.metroLabel1.Location = new Point(15, 71);
    this.metroLabel1.Name = "metroLabel1";
    this.metroLabel1.Size = new Size(74, 19);
    this.metroLabel1.TabIndex = 4;
    this.metroLabel1.Text = "CUIL/CUIT";
    this.metroLabel1.TextAlign = ContentAlignment.MiddleCenter;
    this.mebCucuPers.AllowEmpty = false;
    this.mebCucuPers.AllowSqlCharacters = false;
    this.mebCucuPers.BackColor = Color.White;
    this.mebCucuPers.CausesValidation = false;
    this.mebCucuPers.Entity = (Entity) null;
    this.mebCucuPers.ExternalValidation = (Func<string>) null;
    this.mebCucuPers.Font = new Font("Segoe UI", 14f, FontStyle.Regular, GraphicsUnit.Pixel);
    this.mebCucuPers.LabelText = "";
    this.mebCucuPers.Location = new Point(98, 71);
    this.mebCucuPers.MandatoryWrite = false;
    this.mebCucuPers.Margin = new Padding(3, 4, 3, 4);
    this.mebCucuPers.MaximumSize = new Size(3000, 23);
    this.mebCucuPers.MaxLenght = 50;
    this.mebCucuPers.MinimumSize = new Size(100, 23);
    this.mebCucuPers.Name = "mebCucuPers";
    this.mebCucuPers.PropertyDetail = "DetaPers";
    this.mebCucuPers.PropertyID = "CucuPers";
    this.mebCucuPers.ShowNewButton = false;
    this.mebCucuPers.ShowSearchButton = false;
    this.mebCucuPers.Size = new Size(456, 23);
    this.mebCucuPers.TabIndex = 1;
    this.mebCucuPers.TextAlign = HorizontalAlignment.Left;
    this.mebCucuPers.TextBoxWidth = 120;
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.ClientSize = new Size(566, 153);
    this.Controls.Add((Control) this.mebCucuPers);
    this.Controls.Add((Control) this.metroLabel1);
    this.Name = nameof (repDFPersona);
    this.Text = nameof (repDFPersona);
    this.Controls.SetChildIndex((Control) this.butClose, 0);
    this.Controls.SetChildIndex((Control) this.butGenerate, 0);
    this.Controls.SetChildIndex((Control) this.metroLabel1, 0);
    this.Controls.SetChildIndex((Control) this.mebCucuPers, 0);
    this.ResumeLayout(false);
    this.PerformLayout();
  }
}
