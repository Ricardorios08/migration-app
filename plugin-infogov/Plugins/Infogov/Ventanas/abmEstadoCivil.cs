// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Ventanas.abmEstadoCivil
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

public class abmEstadoCivil : EntityForm<EstadoCivil>
{
  private MetroTextBox DetaEsciTxt;
  private MetroLabel metroLabel1;
  private MetroLabel metroLabel2;
  private MetroMaskedTextBox CodiEsciMsk;

  public abmEstadoCivil()
    : base("Estado Civil")
  {
    this.InitializeComponent();
  }

  protected override void initializeWindow(ActionMode mode, bool firstTime)
  {
  }

  protected override void changeControlsMode(ActionMode mode)
  {
    this.CodiEsciMsk.Enabled = false;
    this.DetaEsciTxt.Enabled = mode == ActionMode.New || mode == ActionMode.Edit;
  }

  protected override void showData()
  {
    this.CodiEsciMsk.IntText = this.windowMode == ActionMode.New ? new ExpEstadoCivil().getUltimoCodigo() : this.enti.CodiEsci;
    this.DetaEsciTxt.Text = this.enti.DetaEsci;
  }

  protected override void readData() => this.enti.DetaEsci = this.DetaEsciTxt.Text;

  protected override bool isDataValid() => true & this.DetaEsciTxt.IsValid;

  private void InitializeComponent()
  {
    this.CodiEsciMsk = new MetroMaskedTextBox();
    this.DetaEsciTxt = new MetroTextBox();
    this.metroLabel1 = new MetroLabel();
    this.metroLabel2 = new MetroLabel();
    this.SuspendLayout();
    this.CodiEsciMsk.AllowEmpty = false;
    this.CodiEsciMsk.AllowSqlCharacters = false;
    this.CodiEsciMsk.CompleteMaskRequired = false;
    this.CodiEsciMsk.CutCopyMaskFormat = MaskFormat.IncludeLiterals;
    this.CodiEsciMsk.ExternalValidation = (Func<string>) null;
    this.CodiEsciMsk.IntText = 0;
    this.CodiEsciMsk.Location = new Point(152, 123);
    this.CodiEsciMsk.Mask = "999";
    this.CodiEsciMsk.Name = "CodiEsciMsk";
    this.CodiEsciMsk.PromptChar = '_';
    this.CodiEsciMsk.SelectedText = "";
    this.CodiEsciMsk.Size = new Size(45, 23);
    this.CodiEsciMsk.TabIndex = 2;
    this.CodiEsciMsk.TextAlign = HorizontalAlignment.Center;
    this.CodiEsciMsk.TextMaskFormat = MaskFormat.ExcludePromptAndLiterals;
    this.CodiEsciMsk.UseSelectable = true;
    this.DetaEsciTxt.AllowEmpty = false;
    this.DetaEsciTxt.AllowSqlCharacters = false;
    this.DetaEsciTxt.ExternalValidation = (Func<string>) null;
    this.DetaEsciTxt.Location = new Point(152, 158);
    this.DetaEsciTxt.MaxLength = 20;
    this.DetaEsciTxt.MinLenght = 0;
    this.DetaEsciTxt.Name = "DetaEsciTxt";
    this.DetaEsciTxt.PasswordChar = char.MinValue;
    this.DetaEsciTxt.ScrollBars = ScrollBars.None;
    this.DetaEsciTxt.SelectedText = "";
    this.DetaEsciTxt.ShowBorder = true;
    this.DetaEsciTxt.Size = new Size(180, 23);
    this.DetaEsciTxt.TabIndex = 3;
    this.DetaEsciTxt.UseSelectable = true;
    this.metroLabel1.AutoSize = true;
    this.metroLabel1.Location = new Point(93, 125);
    this.metroLabel1.Name = "metroLabel1";
    this.metroLabel1.Size = new Size(53, 19);
    this.metroLabel1.TabIndex = 4;
    this.metroLabel1.Text = "Código";
    this.metroLabel2.AutoSize = true;
    this.metroLabel2.Location = new Point(97, 160 /*0xA0*/);
    this.metroLabel2.Name = "metroLabel2";
    this.metroLabel2.Size = new Size(49, 19);
    this.metroLabel2.TabIndex = 5;
    this.metroLabel2.Text = "Detalle";
    this.ClientSize = new Size(460, 300);
    this.Controls.Add((Control) this.metroLabel2);
    this.Controls.Add((Control) this.metroLabel1);
    this.Controls.Add((Control) this.DetaEsciTxt);
    this.Controls.Add((Control) this.CodiEsciMsk);
    this.Name = nameof (abmEstadoCivil);
    this.Controls.SetChildIndex((Control) this.CodiEsciMsk, 0);
    this.Controls.SetChildIndex((Control) this.DetaEsciTxt, 0);
    this.Controls.SetChildIndex((Control) this.metroLabel1, 0);
    this.Controls.SetChildIndex((Control) this.metroLabel2, 0);
    this.ResumeLayout(false);
    this.PerformLayout();
  }
}
