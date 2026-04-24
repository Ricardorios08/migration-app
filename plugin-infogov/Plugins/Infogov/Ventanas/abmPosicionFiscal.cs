// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Ventanas.abmPosicionFiscal
// Assembly: plugin-infogov, Version=1.0.0.18780, Culture=neutral, PublicKeyToken=null
// MVID: 33F9E52C-1C9C-4132-80FE-D29F95E246A9
// Assembly location: C:\nomade\para copiar\plugin-infogov.dll

using InfoGov.Common;
using InfoGov.Forms;
using InfoGov.Metro.Controls;
using InfoGov.Plugins.Infogov.Entidades;
using System;
using System.Drawing;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Infogov.Ventanas;

public class abmPosicionFiscal : EntityForm<PosicionFiscal>
{
  private MetroTextBox DetaPofiTxt;
  private MetroLabel metroLabel3;
  private MetroLabel metroLabel1;
  private MetroCheckBox DivaPofiChk;
  private MetroLabel metroLabel2;
  private MetroMaskedTextBox CodiPofiMsk;

  public abmPosicionFiscal()
    : base("Posición Fiscal")
  {
    this.InitializeComponent();
  }

  protected override void initializeWindow(ActionMode mode, bool firstTime)
  {
  }

  protected override void changeControlsMode(ActionMode mode)
  {
    this.CodiPofiMsk.Enabled = false;
    this.DetaPofiTxt.Enabled = this.DivaPofiChk.Enabled = mode == ActionMode.New || mode == ActionMode.Edit;
  }

  protected override void showData()
  {
    this.CodiPofiMsk.IntText = this.enti.CodiPofi;
    this.DetaPofiTxt.Text = this.enti.DetaPofi;
    this.DivaPofiChk.Checked = this.enti.DivaPofi;
  }

  protected override void readData()
  {
    this.enti.DetaPofi = this.DetaPofiTxt.Text;
    this.enti.DivaPofi = this.DivaPofiChk.Checked;
  }

  protected override bool isDataValid() => true & this.DetaPofiTxt.IsValid;

  private void InitializeComponent()
  {
    this.DetaPofiTxt = new MetroTextBox();
    this.metroLabel3 = new MetroLabel();
    this.metroLabel1 = new MetroLabel();
    this.CodiPofiMsk = new MetroMaskedTextBox();
    this.DivaPofiChk = new MetroCheckBox();
    this.metroLabel2 = new MetroLabel();
    this.SuspendLayout();
    this.DetaPofiTxt.AllowEmpty = false;
    this.DetaPofiTxt.AllowSqlCharacters = false;
    this.DetaPofiTxt.ExternalValidation = (Func<string>) null;
    this.DetaPofiTxt.Location = new Point(131, 152);
    this.DetaPofiTxt.MaxLength = 30;
    this.DetaPofiTxt.MinLenght = 0;
    this.DetaPofiTxt.Name = "DetaPofiTxt";
    this.DetaPofiTxt.PasswordChar = char.MinValue;
    this.DetaPofiTxt.ScrollBars = ScrollBars.None;
    this.DetaPofiTxt.SelectedText = "";
    this.DetaPofiTxt.ShowBorder = true;
    this.DetaPofiTxt.Size = new Size(250, 23);
    this.DetaPofiTxt.TabIndex = 39;
    this.DetaPofiTxt.UseSelectable = true;
    this.metroLabel3.AutoSize = true;
    this.metroLabel3.Location = new Point(76, 154);
    this.metroLabel3.Name = "metroLabel3";
    this.metroLabel3.Size = new Size(49, 19);
    this.metroLabel3.TabIndex = 38;
    this.metroLabel3.Text = "Detalle";
    this.metroLabel1.AutoSize = true;
    this.metroLabel1.Location = new Point(72, 114);
    this.metroLabel1.Name = "metroLabel1";
    this.metroLabel1.Size = new Size(53, 19);
    this.metroLabel1.TabIndex = 35;
    this.metroLabel1.Text = "Código";
    this.CodiPofiMsk.AllowEmpty = false;
    this.CodiPofiMsk.AllowSqlCharacters = false;
    this.CodiPofiMsk.CompleteMaskRequired = false;
    this.CodiPofiMsk.CutCopyMaskFormat = MaskFormat.IncludeLiterals;
    this.CodiPofiMsk.ExternalValidation = (Func<string>) null;
    this.CodiPofiMsk.IntText = 0;
    this.CodiPofiMsk.Location = new Point(131, 112 /*0x70*/);
    this.CodiPofiMsk.Mask = "99";
    this.CodiPofiMsk.Name = "CodiPofiMsk";
    this.CodiPofiMsk.PromptChar = '_';
    this.CodiPofiMsk.SelectedText = "";
    this.CodiPofiMsk.Size = new Size(35, 23);
    this.CodiPofiMsk.TabIndex = 34;
    this.CodiPofiMsk.TextAlign = HorizontalAlignment.Center;
    this.CodiPofiMsk.TextMaskFormat = MaskFormat.ExcludePromptAndLiterals;
    this.CodiPofiMsk.UseSelectable = true;
    this.DivaPofiChk.AutoSize = true;
    this.DivaPofiChk.ExternalValidation = (Func<string>) null;
    this.DivaPofiChk.Location = new Point(131, 196);
    this.DivaPofiChk.Name = "DivaPofiChk";
    this.DivaPofiChk.Size = new Size(26, 15);
    this.DivaPofiChk.TabIndex = 40;
    this.DivaPofiChk.Text = " ";
    this.DivaPofiChk.UseSelectable = true;
    this.metroLabel2.AutoSize = true;
    this.metroLabel2.Location = new Point(33, 194);
    this.metroLabel2.Name = "metroLabel2";
    this.metroLabel2.Size = new Size(92, 19);
    this.metroLabel2.TabIndex = 41;
    this.metroLabel2.Text = "Discrimina IVA";
    this.ClientSize = new Size(460, 300);
    this.Controls.Add((Control) this.metroLabel2);
    this.Controls.Add((Control) this.DivaPofiChk);
    this.Controls.Add((Control) this.DetaPofiTxt);
    this.Controls.Add((Control) this.metroLabel3);
    this.Controls.Add((Control) this.metroLabel1);
    this.Controls.Add((Control) this.CodiPofiMsk);
    this.Name = nameof (abmPosicionFiscal);
    this.Controls.SetChildIndex((Control) this.CodiPofiMsk, 0);
    this.Controls.SetChildIndex((Control) this.metroLabel1, 0);
    this.Controls.SetChildIndex((Control) this.metroLabel3, 0);
    this.Controls.SetChildIndex((Control) this.DetaPofiTxt, 0);
    this.Controls.SetChildIndex((Control) this.DivaPofiChk, 0);
    this.Controls.SetChildIndex((Control) this.metroLabel2, 0);
    this.ResumeLayout(false);
    this.PerformLayout();
  }
}
