// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Ventanas.abmDepartamento
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

public class abmDepartamento : EntityForm<Departamento>
{
  private MetroLabel metroLabel1;
  private MetroLabel metroLabel2;
  private MetroTextBox DetaDepaText;
  private MetroIntTextBox CodiDepaIText;

  public abmDepartamento()
    : base("Departamento")
  {
    this.InitializeComponent();
  }

  protected override void initializeWindow(ActionMode mode, bool firstTime)
  {
  }

  protected override void changeControlsMode(ActionMode mode)
  {
    this.CodiDepaIText.Enabled = false;
    this.DetaDepaText.Enabled = mode == ActionMode.New || mode == ActionMode.Edit;
  }

  protected override void showData()
  {
    this.CodiDepaIText.IntText = (int) this.enti.CodiDepa;
    this.DetaDepaText.Text = this.enti.DetaDepa;
  }

  protected override void readData() => this.enti.DetaDepa = this.DetaDepaText.Text;

  protected override bool isDataValid() => true & this.DetaDepaText.IsValid;

  private void InitializeComponent()
  {
    this.metroLabel1 = new MetroLabel();
    this.metroLabel2 = new MetroLabel();
    this.DetaDepaText = new MetroTextBox();
    this.CodiDepaIText = new MetroIntTextBox();
    this.SuspendLayout();
    this.metroLabel1.AutoSize = true;
    this.metroLabel1.Location = new Point(48 /*0x30*/, 126);
    this.metroLabel1.Name = "metroLabel1";
    this.metroLabel1.Size = new Size(143, 19);
    this.metroLabel1.TabIndex = 2;
    this.metroLabel1.Text = "Código Departamento";
    this.metroLabel2.AutoSize = true;
    this.metroLabel2.Location = new Point(52, 154);
    this.metroLabel2.Name = "metroLabel2";
    this.metroLabel2.Size = new Size(139, 19);
    this.metroLabel2.TabIndex = 3;
    this.metroLabel2.Text = "Detalle Departamento";
    this.DetaDepaText.AllowEmpty = false;
    this.DetaDepaText.AllowSqlCharacters = false;
    this.DetaDepaText.ExternalValidation = (Func<string>) null;
    this.DetaDepaText.Location = new Point(197, 151);
    this.DetaDepaText.MaxLength = 60;
    this.DetaDepaText.MinLenght = 0;
    this.DetaDepaText.Name = "DetaDepaText";
    this.DetaDepaText.PasswordChar = char.MinValue;
    this.DetaDepaText.ScrollBars = ScrollBars.None;
    this.DetaDepaText.SelectedText = "";
    this.DetaDepaText.ShowBorder = true;
    this.DetaDepaText.Size = new Size(194, 23);
    this.DetaDepaText.TabIndex = 4;
    this.DetaDepaText.UseSelectable = true;
    this.CodiDepaIText.AllowEmpty = false;
    this.CodiDepaIText.AllowSqlCharacters = false;
    this.CodiDepaIText.ExternalValidation = (Func<string>) null;
    this.CodiDepaIText.IntText = 0;
    this.CodiDepaIText.Location = new Point(197, 122);
    this.CodiDepaIText.MaxLength = 2;
    this.CodiDepaIText.MaxValue = 50;
    this.CodiDepaIText.MinValue = 0;
    this.CodiDepaIText.Name = "CodiDepaIText";
    this.CodiDepaIText.PasswordChar = char.MinValue;
    this.CodiDepaIText.ScrollBars = ScrollBars.None;
    this.CodiDepaIText.SelectedText = "";
    this.CodiDepaIText.ShowBorder = true;
    this.CodiDepaIText.Size = new Size(75, 23);
    this.CodiDepaIText.TabIndex = 5;
    this.CodiDepaIText.UseSelectable = true;
    this.ClientSize = new Size(460, 300);
    this.Controls.Add((Control) this.CodiDepaIText);
    this.Controls.Add((Control) this.DetaDepaText);
    this.Controls.Add((Control) this.metroLabel2);
    this.Controls.Add((Control) this.metroLabel1);
    this.Name = nameof (abmDepartamento);
    this.Controls.SetChildIndex((Control) this.metroLabel1, 0);
    this.Controls.SetChildIndex((Control) this.metroLabel2, 0);
    this.Controls.SetChildIndex((Control) this.DetaDepaText, 0);
    this.Controls.SetChildIndex((Control) this.CodiDepaIText, 0);
    this.ResumeLayout(false);
    this.PerformLayout();
  }
}
