// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Ventanas.abmBarrio
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
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Infogov.Ventanas;

public class abmBarrio : EntityForm<Barrio>
{
  private MetroTextBox DetaBarrTxt;
  private MetroLabel metroLabel2;
  private MetroLabel metroLabel1;
  private MetroEntityBox LocalidadEbox;
  private MetroLabel metroLabel3;
  private MetroMaskedTextBox CodiBarrMsk;

  public abmBarrio()
    : base("Barrio")
  {
    this.InitializeComponent();
  }

  protected override void initializeWindow(ActionMode mode, bool firstTime)
  {
    if (!firstTime)
      return;
    this.LocalidadEbox.FindEntityFunction = new MetroEntityBox.FindEntityDelegate(this.encontrarLocalidad);
    this.LocalidadEbox.SearchEntityFunction = new MetroEntityBox.SearchEntityDelegate(this.buscarLocalidad);
  }

  protected override void changeControlsMode(ActionMode mode)
  {
    this.CodiBarrMsk.Enabled = false;
    this.DetaBarrTxt.Enabled = this.LocalidadEbox.Enabled = mode == ActionMode.New || mode == ActionMode.Edit;
  }

  protected override void showData()
  {
    this.CodiBarrMsk.IntText = this.windowMode == ActionMode.New ? new ExpBarrio().getUltimoCodigo() : this.enti.CodiBarr;
    this.DetaBarrTxt.Text = this.enti.DetaBarr;
    this.LocalidadEbox.Entity = (Entity) this.EM.Get<Localidad>(new ID("CodiLoca", (object) this.enti.CodiLoca));
  }

  protected override void readData()
  {
    this.enti.DetaBarr = this.DetaBarrTxt.Text;
    this.enti.CodiLoca = ((Localidad) this.LocalidadEbox.Entity).CodiLoca;
  }

  protected override bool isDataValid()
  {
    return true & this.DetaBarrTxt.IsValid & this.LocalidadEbox.IsValid;
  }

  private Filter filtroLocalidad(string text)
  {
    return !Misc.IsNumeric(text) ? new Filter(new FilterItem("DetaLoca", "Localidad", FilterMode.Contains, text)) : new Filter(new FilterItem("CodiLoca", "Código de Localidad", FilterMode.StartsWith, text));
  }

  private Entity encontrarLocalidad(string text, bool usarBuscar)
  {
    return (Entity) this.EM.Find<Localidad>(this.filtroLocalidad(text), true, usarBuscar);
  }

  private Entity buscarLocalidad(string text)
  {
    return (Entity) this.EM.Search<Localidad>(this.filtroLocalidad(text), true);
  }

  private void InitializeComponent()
  {
    this.DetaBarrTxt = new MetroTextBox();
    this.metroLabel2 = new MetroLabel();
    this.metroLabel1 = new MetroLabel();
    this.CodiBarrMsk = new MetroMaskedTextBox();
    this.LocalidadEbox = new MetroEntityBox();
    this.metroLabel3 = new MetroLabel();
    this.SuspendLayout();
    this.DetaBarrTxt.AllowEmpty = false;
    this.DetaBarrTxt.AllowSqlCharacters = false;
    this.DetaBarrTxt.ExternalValidation = (Func<string>) null;
    this.DetaBarrTxt.Location = new Point(113, 139);
    this.DetaBarrTxt.MaxLength = 40;
    this.DetaBarrTxt.MinLenght = 0;
    this.DetaBarrTxt.Name = "DetaBarrTxt";
    this.DetaBarrTxt.PasswordChar = char.MinValue;
    this.DetaBarrTxt.ScrollBars = ScrollBars.None;
    this.DetaBarrTxt.SelectedText = "";
    this.DetaBarrTxt.ShowBorder = true;
    this.DetaBarrTxt.Size = new Size(330, 23);
    this.DetaBarrTxt.TabIndex = 9;
    this.DetaBarrTxt.UseSelectable = true;
    this.metroLabel2.AutoSize = true;
    this.metroLabel2.Location = new Point(58, 141);
    this.metroLabel2.Name = "metroLabel2";
    this.metroLabel2.Size = new Size(49, 19);
    this.metroLabel2.TabIndex = 8;
    this.metroLabel2.Text = "Detalle";
    this.metroLabel1.AutoSize = true;
    this.metroLabel1.Location = new Point(54, 102);
    this.metroLabel1.Name = "metroLabel1";
    this.metroLabel1.Size = new Size(53, 19);
    this.metroLabel1.TabIndex = 7;
    this.metroLabel1.Text = "Código";
    this.CodiBarrMsk.AllowEmpty = false;
    this.CodiBarrMsk.AllowSqlCharacters = false;
    this.CodiBarrMsk.CompleteMaskRequired = false;
    this.CodiBarrMsk.CutCopyMaskFormat = MaskFormat.IncludeLiterals;
    this.CodiBarrMsk.ExternalValidation = (Func<string>) null;
    this.CodiBarrMsk.IntText = 0;
    this.CodiBarrMsk.Location = new Point(113, 100);
    this.CodiBarrMsk.Mask = "9999";
    this.CodiBarrMsk.Name = "CodiBarrMsk";
    this.CodiBarrMsk.PromptChar = '_';
    this.CodiBarrMsk.SelectedText = "";
    this.CodiBarrMsk.Size = new Size(45, 23);
    this.CodiBarrMsk.TabIndex = 6;
    this.CodiBarrMsk.TextAlign = HorizontalAlignment.Center;
    this.CodiBarrMsk.TextMaskFormat = MaskFormat.ExcludePromptAndLiterals;
    this.CodiBarrMsk.UseSelectable = true;
    this.LocalidadEbox.AllowEmpty = false;
    this.LocalidadEbox.AllowSqlCharacters = false;
    this.LocalidadEbox.BackColor = Color.White;
    this.LocalidadEbox.Entity = (Entity) null;
    this.LocalidadEbox.ExternalValidation = (Func<string>) null;
    this.LocalidadEbox.Font = new Font("Segoe UI", 14f, FontStyle.Regular, GraphicsUnit.Pixel);
    this.LocalidadEbox.Location = new Point(113, 176 /*0xB0*/);
    this.LocalidadEbox.MaximumSize = new Size(3000, 23);
    this.LocalidadEbox.MaxLenght = 50;
    this.LocalidadEbox.MinimumSize = new Size(100, 23);
    this.LocalidadEbox.Name = "LocalidadEbox";
    this.LocalidadEbox.PropertyDetail = "DetaLoca";
    this.LocalidadEbox.PropertyID = "CodiLoca";
    this.LocalidadEbox.ShowNewButton = false;
    this.LocalidadEbox.ShowSearchButton = true;
    this.LocalidadEbox.Size = new Size(440, 23);
    this.LocalidadEbox.TabIndex = 10;
    this.LocalidadEbox.TextAlign = HorizontalAlignment.Left;
    this.LocalidadEbox.TextBoxWidth = 120;
    this.metroLabel3.AutoSize = true;
    this.metroLabel3.Location = new Point(42, 178);
    this.metroLabel3.Name = "metroLabel3";
    this.metroLabel3.Size = new Size(65, 19);
    this.metroLabel3.TabIndex = 11;
    this.metroLabel3.Text = "Localidad";
    this.ClientSize = new Size(570, 300);
    this.Controls.Add((Control) this.metroLabel3);
    this.Controls.Add((Control) this.LocalidadEbox);
    this.Controls.Add((Control) this.DetaBarrTxt);
    this.Controls.Add((Control) this.metroLabel2);
    this.Controls.Add((Control) this.metroLabel1);
    this.Controls.Add((Control) this.CodiBarrMsk);
    this.Name = nameof (abmBarrio);
    this.Controls.SetChildIndex((Control) this.CodiBarrMsk, 0);
    this.Controls.SetChildIndex((Control) this.metroLabel1, 0);
    this.Controls.SetChildIndex((Control) this.metroLabel2, 0);
    this.Controls.SetChildIndex((Control) this.DetaBarrTxt, 0);
    this.Controls.SetChildIndex((Control) this.LocalidadEbox, 0);
    this.Controls.SetChildIndex((Control) this.metroLabel3, 0);
    this.ResumeLayout(false);
    this.PerformLayout();
  }
}
