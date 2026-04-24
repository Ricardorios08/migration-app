// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Ventanas.abmProvincia
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

public class abmProvincia : EntityForm<Provincia>
{
  private MetroLabel metroLabel1;
  private MetroLabel metroLabel2;
  private MetroIntTextBox CodiProvTxt;
  private MetroTextBox DetaProvTxt;

  public abmProvincia()
    : base("Provincia")
  {
    this.InitializeComponent();
  }

  private void InitializeComponent()
  {
    this.metroLabel1 = new MetroLabel();
    this.metroLabel2 = new MetroLabel();
    this.CodiProvTxt = new MetroIntTextBox();
    this.DetaProvTxt = new MetroTextBox();
    this.SuspendLayout();
    this.metroLabel1.AutoSize = true;
    this.metroLabel1.Location = new Point(95, 117);
    this.metroLabel1.Margin = new Padding(3, 4, 3, 4);
    this.metroLabel1.Name = "metroLabel1";
    this.metroLabel1.Size = new Size(53, 19);
    this.metroLabel1.TabIndex = 2;
    this.metroLabel1.Text = "Código";
    this.metroLabel2.AutoSize = true;
    this.metroLabel2.Location = new Point(99, 148);
    this.metroLabel2.Margin = new Padding(3, 4, 3, 4);
    this.metroLabel2.Name = "metroLabel2";
    this.metroLabel2.Size = new Size(49, 19);
    this.metroLabel2.TabIndex = 3;
    this.metroLabel2.Text = "Detalle";
    this.CodiProvTxt.AllowEmpty = false;
    this.CodiProvTxt.AllowSqlCharacters = false;
    this.CodiProvTxt.ExternalValidation = (Func<string>) null;
    this.CodiProvTxt.IntText = 0;
    this.CodiProvTxt.Location = new Point(154, 115);
    this.CodiProvTxt.LongText = 0L;
    this.CodiProvTxt.Margin = new Padding(3, 4, 3, 4);
    this.CodiProvTxt.MaxLength = (int) short.MaxValue;
    this.CodiProvTxt.MaxValue = 0;
    this.CodiProvTxt.MinValue = 0;
    this.CodiProvTxt.Name = "CodiProvTxt";
    this.CodiProvTxt.PasswordChar = char.MinValue;
    this.CodiProvTxt.ScrollBars = ScrollBars.None;
    this.CodiProvTxt.SelectedText = "";
    this.CodiProvTxt.ShortText = (short) 0;
    this.CodiProvTxt.ShowBorder = true;
    this.CodiProvTxt.Size = new Size(43, 23);
    this.CodiProvTxt.TabIndex = 4;
    this.CodiProvTxt.UseSelectable = true;
    this.DetaProvTxt.AllowEmpty = false;
    this.DetaProvTxt.AllowSqlCharacters = false;
    this.DetaProvTxt.ExternalValidation = (Func<string>) null;
    this.DetaProvTxt.Location = new Point(154, 146);
    this.DetaProvTxt.Margin = new Padding(3, 4, 3, 4);
    this.DetaProvTxt.MaxLength = (int) short.MaxValue;
    this.DetaProvTxt.MinLenght = 0;
    this.DetaProvTxt.Name = "DetaProvTxt";
    this.DetaProvTxt.PasswordChar = char.MinValue;
    this.DetaProvTxt.ScrollBars = ScrollBars.None;
    this.DetaProvTxt.SelectedText = "";
    this.DetaProvTxt.ShowBorder = true;
    this.DetaProvTxt.Size = new Size(241, 23);
    this.DetaProvTxt.TabIndex = 5;
    this.DetaProvTxt.UseSelectable = true;
    this.ClientSize = new Size(460, 300);
    this.Controls.Add((Control) this.DetaProvTxt);
    this.Controls.Add((Control) this.CodiProvTxt);
    this.Controls.Add((Control) this.metroLabel2);
    this.Controls.Add((Control) this.metroLabel1);
    this.Name = nameof (abmProvincia);
    this.Controls.SetChildIndex((Control) this.metroLabel1, 0);
    this.Controls.SetChildIndex((Control) this.metroLabel2, 0);
    this.Controls.SetChildIndex((Control) this.CodiProvTxt, 0);
    this.Controls.SetChildIndex((Control) this.DetaProvTxt, 0);
    this.ResumeLayout(false);
    this.PerformLayout();
  }

  protected override void initializeWindow(ActionMode mode, bool firstTime)
  {
  }

  protected override void changeControlsMode(ActionMode mode)
  {
    this.CodiProvTxt.Enabled = false;
    this.DetaProvTxt.Enabled = mode == ActionMode.New || mode == ActionMode.Edit;
  }

  protected override void showData()
  {
    this.CodiProvTxt.IntText = this.enti.CodiProv;
    this.DetaProvTxt.Text = this.enti.DetaProv;
  }

  protected override void readData() => this.enti.DetaProv = this.DetaProvTxt.Text;

  protected override bool isDataValid() => true & this.DetaProvTxt.IsValid;
}
