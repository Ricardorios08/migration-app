// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Ventanas.abmTipoDocumento
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

public class abmTipoDocumento : EntityForm<TipoDocumento>
{
  private MetroTextBox DetaTidoTxt;
  private MetroLabel metroLabel2;
  private MetroLabel metroLabel1;
  private MetroMaskedTextBox CodiTidoMsk;
  private MetroTextBox DelaTidoTxt;
  private MetroLabel metroLabel3;

  public abmTipoDocumento()
    : base("Tipo de Documento")
  {
    this.InitializeComponent();
  }

  protected override void initializeWindow(ActionMode mode, bool firstTime)
  {
  }

  protected override void changeControlsMode(ActionMode mode)
  {
    this.CodiTidoMsk.Enabled = false;
    this.DetaTidoTxt.Enabled = this.DelaTidoTxt.Enabled = mode == ActionMode.New || mode == ActionMode.Edit;
  }

  protected override void showData()
  {
    this.CodiTidoMsk.IntText = (int) this.enti.CodiTido;
    this.DetaTidoTxt.Text = this.enti.DetaTido;
    this.DelaTidoTxt.Text = this.enti.DelaTido;
  }

  protected override void readData()
  {
    this.enti.DetaTido = this.DetaTidoTxt.Text;
    this.enti.DelaTido = this.DelaTidoTxt.Text;
  }

  protected override bool isDataValid()
  {
    return true & this.DetaTidoTxt.IsValid & this.DelaTidoTxt.IsValid;
  }

  private void InitializeComponent()
  {
    this.DetaTidoTxt = new MetroTextBox();
    this.metroLabel2 = new MetroLabel();
    this.metroLabel1 = new MetroLabel();
    this.CodiTidoMsk = new MetroMaskedTextBox();
    this.DelaTidoTxt = new MetroTextBox();
    this.metroLabel3 = new MetroLabel();
    this.SuspendLayout();
    this.DetaTidoTxt.AllowEmpty = false;
    this.DetaTidoTxt.AllowSqlCharacters = false;
    this.DetaTidoTxt.ExternalValidation = (Func<string>) null;
    this.DetaTidoTxt.Location = new Point(128 /*0x80*/, 145);
    this.DetaTidoTxt.MaxLength = 12;
    this.DetaTidoTxt.MinLenght = 0;
    this.DetaTidoTxt.Name = "DetaTidoTxt";
    this.DetaTidoTxt.PasswordChar = char.MinValue;
    this.DetaTidoTxt.ScrollBars = ScrollBars.None;
    this.DetaTidoTxt.SelectedText = "";
    this.DetaTidoTxt.ShowBorder = true;
    this.DetaTidoTxt.Size = new Size(110, 23);
    this.DetaTidoTxt.TabIndex = 31 /*0x1F*/;
    this.DetaTidoTxt.UseSelectable = true;
    this.metroLabel2.AutoSize = true;
    this.metroLabel2.Location = new Point(51, 147);
    this.metroLabel2.Name = "metroLabel2";
    this.metroLabel2.Size = new Size(71, 19);
    this.metroLabel2.TabIndex = 30;
    this.metroLabel2.Text = "Abrviatura";
    this.metroLabel1.AutoSize = true;
    this.metroLabel1.Location = new Point(69, 108);
    this.metroLabel1.Name = "metroLabel1";
    this.metroLabel1.Size = new Size(53, 19);
    this.metroLabel1.TabIndex = 29;
    this.metroLabel1.Text = "Código";
    this.CodiTidoMsk.AllowEmpty = false;
    this.CodiTidoMsk.AllowSqlCharacters = false;
    this.CodiTidoMsk.CompleteMaskRequired = false;
    this.CodiTidoMsk.CutCopyMaskFormat = MaskFormat.IncludeLiterals;
    this.CodiTidoMsk.ExternalValidation = (Func<string>) null;
    this.CodiTidoMsk.IntText = 0;
    this.CodiTidoMsk.Location = new Point(128 /*0x80*/, 106);
    this.CodiTidoMsk.Mask = "99";
    this.CodiTidoMsk.Name = "CodiTidoMsk";
    this.CodiTidoMsk.PromptChar = '_';
    this.CodiTidoMsk.SelectedText = "";
    this.CodiTidoMsk.Size = new Size(35, 23);
    this.CodiTidoMsk.TabIndex = 28;
    this.CodiTidoMsk.TextAlign = HorizontalAlignment.Center;
    this.CodiTidoMsk.TextMaskFormat = MaskFormat.ExcludePromptAndLiterals;
    this.CodiTidoMsk.UseSelectable = true;
    this.DelaTidoTxt.AllowEmpty = false;
    this.DelaTidoTxt.AllowSqlCharacters = false;
    this.DelaTidoTxt.ExternalValidation = (Func<string>) null;
    this.DelaTidoTxt.Location = new Point(128 /*0x80*/, 182);
    this.DelaTidoTxt.MaxLength = 30;
    this.DelaTidoTxt.MinLenght = 0;
    this.DelaTidoTxt.Name = "DelaTidoTxt";
    this.DelaTidoTxt.PasswordChar = char.MinValue;
    this.DelaTidoTxt.ScrollBars = ScrollBars.None;
    this.DelaTidoTxt.SelectedText = "";
    this.DelaTidoTxt.ShowBorder = true;
    this.DelaTidoTxt.Size = new Size(250, 23);
    this.DelaTidoTxt.TabIndex = 33;
    this.DelaTidoTxt.UseSelectable = true;
    this.metroLabel3.AutoSize = true;
    this.metroLabel3.Location = new Point(73, 184);
    this.metroLabel3.Name = "metroLabel3";
    this.metroLabel3.Size = new Size(49, 19);
    this.metroLabel3.TabIndex = 32 /*0x20*/;
    this.metroLabel3.Text = "Detalle";
    this.ClientSize = new Size(460, 300);
    this.Controls.Add((Control) this.DelaTidoTxt);
    this.Controls.Add((Control) this.metroLabel3);
    this.Controls.Add((Control) this.DetaTidoTxt);
    this.Controls.Add((Control) this.metroLabel2);
    this.Controls.Add((Control) this.metroLabel1);
    this.Controls.Add((Control) this.CodiTidoMsk);
    this.Name = nameof (abmTipoDocumento);
    this.Controls.SetChildIndex((Control) this.CodiTidoMsk, 0);
    this.Controls.SetChildIndex((Control) this.metroLabel1, 0);
    this.Controls.SetChildIndex((Control) this.metroLabel2, 0);
    this.Controls.SetChildIndex((Control) this.DetaTidoTxt, 0);
    this.Controls.SetChildIndex((Control) this.metroLabel3, 0);
    this.Controls.SetChildIndex((Control) this.DelaTidoTxt, 0);
    this.ResumeLayout(false);
    this.PerformLayout();
  }
}
