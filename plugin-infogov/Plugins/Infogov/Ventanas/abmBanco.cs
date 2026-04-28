// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Ventanas.abmBanco
// Assembly: plugin-infogov, Version=1.0.0.18780, Culture=neutral, PublicKeyToken=null
// MVID: 33F9E52C-1C9C-4132-80FE-D29F95E246A9
// Assembly location: C:\nomade\para copiar\plugin-infogov.dll

using InfoGov.Common;
using InfoGov.Core;
using InfoGov.Forms;
using InfoGov.Metro.Controls;
using InfoGov.Plugins.Infogov.Entidades;
using System;
using System.ComponentModel;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Infogov.Ventanas;

public class abmBanco : EntityForm<Banco>
{
  private MetroMaskedTextBox CodiBancMsk;
  private MetroTextBox DetaBancTxt;
  private MetroTextBox NumeBancTxt;
  private MetroMaskedTextBox UlchBancMsk;
  private MetroCheckBox EmauCheqChk;
  private MetroTextBox ProcBancTxt;
  private MetroTextBox DescBancTxt;
  private MetroLabel metroLabel1;
  private MetroLabel metroLabel2;
  private MetroLabel metroLabel3;
  private MetroLabel metroLabel4;
  private MetroLabel metroLabel5;
  private MetroLabel metroLabel6;
  private MetroLabel metroLabel7;
  private MetroLabel metroLabel8;
  private MetroLabel metroLabel9;
  private MetroLabel metroLabel10;
  private MetroEntityBox CuentaContableEB;
  private MetroMaskedTextBox PeriInfoMsk;

  public abmBanco()
    : base("Bancos")
  {
    this.InitializeComponent();
    this.CuentaContableEB.FindEntityFunction = new MetroEntityBox.FindEntityDelegate(this.EncontrarCuentaContable);
    this.CuentaContableEB.SearchEntityFunction = new MetroEntityBox.SearchEntityDelegate(this.BuscarCuentaContable);
  }

  protected override void initializeWindow(ActionMode mode, bool firstTime)
  {
    if (!firstTime)
      return;
    this.DescBancTxt.ExternalValidation = new Func<string>(this.validarNroDesc);
  }

  protected override void changeControlsMode(ActionMode mode)
  {
    this.PeriInfoMsk.Enabled = this.CodiBancMsk.Enabled = false;
    MetroTextBox detaBancTxt = this.DetaBancTxt;
    MetroTextBox numeBancTxt = this.NumeBancTxt;
    MetroEntityBox cuentaContableEb = this.CuentaContableEB;
    MetroMaskedTextBox ulchBancMsk = this.UlchBancMsk;
    MetroCheckBox emauCheqChk = this.EmauCheqChk;
    MetroTextBox procBancTxt = this.ProcBancTxt;
    bool flag1;
    this.DescBancTxt.Enabled = flag1 = mode == ActionMode.New || mode == ActionMode.Edit;
    int num1;
    bool flag2 = (num1 = flag1 ? 1 : 0) != 0;
    procBancTxt.Enabled = num1 != 0;
    int num2;
    bool flag3 = (num2 = flag2 ? 1 : 0) != 0;
    emauCheqChk.Enabled = num2 != 0;
    int num3;
    bool flag4 = (num3 = flag3 ? 1 : 0) != 0;
    ulchBancMsk.Enabled = num3 != 0;
    int num4;
    bool flag5 = (num4 = flag4 ? 1 : 0) != 0;
    cuentaContableEb.Enabled = num4 != 0;
    int num5;
    bool flag6 = (num5 = flag5 ? 1 : 0) != 0;
    numeBancTxt.Enabled = num5 != 0;
    int num6 = flag6 ? 1 : 0;
    detaBancTxt.Enabled = num6 != 0;
  }

  protected override void showData()
  {
    this.PeriInfoMsk.IntText = this.enti.PeriInfo;
    this.CodiBancMsk.IntText = this.enti.CodiBanc;
    this.DetaBancTxt.Text = this.enti.DetaBanc;
    this.NumeBancTxt.Text = this.enti.NumeBanc;
    ID id = new ID();
    id.Add((object) "PeriInfo", (object) this.enti.PeriInfo);
    id.Add((object) "CodiCuco", (object) this.enti.CodiCuco);
    this.UlchBancMsk.IntText = this.enti.UlchBanc;
    this.EmauCheqChk.Checked = this.enti.EmauCheq;
    this.ProcBancTxt.Text = this.enti.ProcBanc;
    this.DescBancTxt.Text = this.enti.DescBanc.ToString("0.00");
  }

  protected override void readData()
  {
    this.enti.DetaBanc = this.DetaBancTxt.Text;
    this.enti.NumeBanc = this.NumeBancTxt.Text;
    this.enti.CodiCuco = this.CuentaContableEB.Entity != null ? ((CuentaContable) this.CuentaContableEB.Entity).CodiCuco : "";
    this.enti.UlchBanc = this.UlchBancMsk.IntText;
    this.enti.EmauCheq = this.EmauCheqChk.Checked;
    this.enti.ProcBanc = this.ProcBancTxt.Text;
    Decimal result = 0M;
    if (!Decimal.TryParse(this.DescBancTxt.Text, out result))
      result = 0M;
    this.enti.DescBanc = result;
  }

  protected override bool isDataValid()
  {
    StringBuilder stringBuilder = new StringBuilder();
    if (this.DetaBancTxt.Text.Length == 0)
      stringBuilder.AppendLine("Ingresar Detalle");
    if (this.NumeBancTxt.Text.Length == 0)
      stringBuilder.AppendLine("Ingresar Número ");
    if (this.DescBancTxt.Text.Length == 0)
      stringBuilder.AppendLine("Ingresar Descripción");
    return stringBuilder.Length == 0;
  }

  private string validarNroDesc() => "";

  private Entity BuscarCuentaContable(string text)
  {
    Filter filter = new Filter();
    filter.Restrictions.Add(new FilterItem("c.PeriInfo", "periodo", FilterMode.Equal, PARAMS.Periodo.ToString()));
    if (Misc.IsNumeric(text))
      filter.Items.Add(new FilterItem("JeraCuco", "Cód. Cuenta", FilterMode.StartsWith, text));
    else
      filter.Items.Add(new FilterItem("DetaCuco", "Det. Cuenta", FilterMode.Contains, text));
    return (Entity) this.EM.Search<CuentaContable>(filter, true);
  }

  private Entity EncontrarCuentaContable(string text, bool useSearch)
  {
    Filter filter = new Filter();
    filter.Restrictions.Add(new FilterItem("c.PeriInfo", "periodo", FilterMode.Equal, PARAMS.Periodo.ToString()));
    if (Misc.IsNumeric(text))
      filter.Items.Add(new FilterItem("JeraCuco", "Cód. Cuenta", FilterMode.StartsWith, text));
    else
      filter.Items.Add(new FilterItem("DetaCuco", "Det. Cuenta", FilterMode.Contains, text));
    return (Entity) this.EM.Find<CuentaContable>(filter, true, true);
  }

  private void InitializeComponent()
  {
    ComponentResourceManager componentResourceManager = new ComponentResourceManager(typeof (abmBanco));
    this.PeriInfoMsk = new MetroMaskedTextBox();
    this.CodiBancMsk = new MetroMaskedTextBox();
    this.DetaBancTxt = new MetroTextBox();
    this.NumeBancTxt = new MetroTextBox();
    this.UlchBancMsk = new MetroMaskedTextBox();
    this.EmauCheqChk = new MetroCheckBox();
    this.ProcBancTxt = new MetroTextBox();
    this.DescBancTxt = new MetroTextBox();
    this.metroLabel1 = new MetroLabel();
    this.metroLabel2 = new MetroLabel();
    this.metroLabel3 = new MetroLabel();
    this.metroLabel4 = new MetroLabel();
    this.metroLabel5 = new MetroLabel();
    this.metroLabel6 = new MetroLabel();
    this.metroLabel7 = new MetroLabel();
    this.metroLabel8 = new MetroLabel();
    this.metroLabel9 = new MetroLabel();
    this.metroLabel10 = new MetroLabel();
    this.CuentaContableEB = new MetroEntityBox();
    this.SuspendLayout();
    this.PeriInfoMsk.AllowEmpty = false;
    this.PeriInfoMsk.AllowSqlCharacters = false;
    this.PeriInfoMsk.CompleteMaskRequired = false;
    this.PeriInfoMsk.CutCopyMaskFormat = MaskFormat.IncludeLiterals;
    this.PeriInfoMsk.ExternalValidation = (Func<string>) null;
    this.PeriInfoMsk.IntText = 0;
    this.PeriInfoMsk.Location = new Point(158, 71);
    this.PeriInfoMsk.LongText = 0L;
    this.PeriInfoMsk.Margin = new Padding(3, 4, 3, 4);
    this.PeriInfoMsk.Mask = "0000";
    this.PeriInfoMsk.Name = "PeriInfoMsk";
    this.PeriInfoMsk.PromptChar = '_';
    this.PeriInfoMsk.SelectedText = "";
    this.PeriInfoMsk.ShortText = (short) 0;
    this.PeriInfoMsk.Size = new Size(44, 23);
    this.PeriInfoMsk.TabIndex = 2;
    this.PeriInfoMsk.TextAlign = HorizontalAlignment.Center;
    this.PeriInfoMsk.TextMaskFormat = MaskFormat.ExcludePromptAndLiterals;
    this.PeriInfoMsk.UseSelectable = true;
    this.CodiBancMsk.AllowEmpty = false;
    this.CodiBancMsk.AllowSqlCharacters = false;
    this.CodiBancMsk.CompleteMaskRequired = false;
    this.CodiBancMsk.CutCopyMaskFormat = MaskFormat.IncludeLiterals;
    this.CodiBancMsk.ExternalValidation = (Func<string>) null;
    this.CodiBancMsk.IntText = 0;
    this.CodiBancMsk.Location = new Point(158, 102);
    this.CodiBancMsk.LongText = 0L;
    this.CodiBancMsk.Margin = new Padding(3, 4, 3, 4);
    this.CodiBancMsk.Mask = "99";
    this.CodiBancMsk.Name = "CodiBancMsk";
    this.CodiBancMsk.PromptChar = '_';
    this.CodiBancMsk.SelectedText = "";
    this.CodiBancMsk.ShortText = (short) 0;
    this.CodiBancMsk.Size = new Size(35, 23);
    this.CodiBancMsk.TabIndex = 3;
    this.CodiBancMsk.TextMaskFormat = MaskFormat.ExcludePromptAndLiterals;
    this.CodiBancMsk.UseSelectable = true;
    this.DetaBancTxt.AllowEmpty = false;
    this.DetaBancTxt.AllowSqlCharacters = false;
    this.DetaBancTxt.ExternalValidation = (Func<string>) null;
    this.DetaBancTxt.Location = new Point(158, 133);
    this.DetaBancTxt.Margin = new Padding(3, 4, 3, 4);
    this.DetaBancTxt.MaxLength = 40;
    this.DetaBancTxt.MinLenght = 0;
    this.DetaBancTxt.Name = "DetaBancTxt";
    this.DetaBancTxt.PasswordChar = char.MinValue;
    this.DetaBancTxt.ScrollBars = ScrollBars.None;
    this.DetaBancTxt.SelectedText = "";
    this.DetaBancTxt.ShowBorder = true;
    this.DetaBancTxt.Size = new Size(400, 23);
    this.DetaBancTxt.TabIndex = 4;
    this.DetaBancTxt.UseSelectable = true;
    this.NumeBancTxt.AllowEmpty = false;
    this.NumeBancTxt.AllowSqlCharacters = false;
    this.NumeBancTxt.ExternalValidation = (Func<string>) null;
    this.NumeBancTxt.Location = new Point(158, 164);
    this.NumeBancTxt.Margin = new Padding(3, 4, 3, 4);
    this.NumeBancTxt.MaxLength = 20;
    this.NumeBancTxt.MinLenght = 0;
    this.NumeBancTxt.Name = "NumeBancTxt";
    this.NumeBancTxt.PasswordChar = char.MinValue;
    this.NumeBancTxt.ScrollBars = ScrollBars.None;
    this.NumeBancTxt.SelectedText = "";
    this.NumeBancTxt.ShowBorder = true;
    this.NumeBancTxt.Size = new Size(200, 23);
    this.NumeBancTxt.TabIndex = 5;
    this.NumeBancTxt.UseSelectable = true;
    this.UlchBancMsk.AllowEmpty = false;
    this.UlchBancMsk.AllowSqlCharacters = false;
    this.UlchBancMsk.CompleteMaskRequired = false;
    this.UlchBancMsk.CutCopyMaskFormat = MaskFormat.IncludeLiterals;
    this.UlchBancMsk.ExternalValidation = (Func<string>) null;
    this.UlchBancMsk.IntText = 0;
    this.UlchBancMsk.Location = new Point(158, 254);
    this.UlchBancMsk.LongText = 0L;
    this.UlchBancMsk.Margin = new Padding(3, 4, 3, 4);
    this.UlchBancMsk.Mask = "99999999";
    this.UlchBancMsk.Name = "UlchBancMsk";
    this.UlchBancMsk.PromptChar = '_';
    this.UlchBancMsk.SelectedText = "";
    this.UlchBancMsk.ShortText = (short) 0;
    this.UlchBancMsk.Size = new Size(80 /*0x50*/, 23);
    this.UlchBancMsk.TabIndex = 8;
    this.UlchBancMsk.TextMaskFormat = MaskFormat.ExcludePromptAndLiterals;
    this.UlchBancMsk.UseSelectable = true;
    this.EmauCheqChk.AutoSize = true;
    this.EmauCheqChk.ExternalValidation = (Func<string>) null;
    this.EmauCheqChk.Location = new Point(158, 286);
    this.EmauCheqChk.Margin = new Padding(3, 4, 3, 4);
    this.EmauCheqChk.Name = "EmauCheqChk";
    this.EmauCheqChk.Size = new Size(29, 19);
    this.EmauCheqChk.TabIndex = 9;
    this.EmauCheqChk.Text = " ";
    this.EmauCheqChk.UseSelectable = true;
    this.ProcBancTxt.AllowEmpty = false;
    this.ProcBancTxt.AllowSqlCharacters = false;
    this.ProcBancTxt.ExternalValidation = (Func<string>) null;
    this.ProcBancTxt.Location = new Point(158, 310);
    this.ProcBancTxt.Margin = new Padding(3, 4, 3, 4);
    this.ProcBancTxt.MaxLength = 50;
    this.ProcBancTxt.MinLenght = 0;
    this.ProcBancTxt.Name = "ProcBancTxt";
    this.ProcBancTxt.PasswordChar = char.MinValue;
    this.ProcBancTxt.ScrollBars = ScrollBars.None;
    this.ProcBancTxt.SelectedText = "";
    this.ProcBancTxt.ShowBorder = true;
    this.ProcBancTxt.Size = new Size(500, 23);
    this.ProcBancTxt.TabIndex = 10;
    this.ProcBancTxt.UseSelectable = true;
    this.DescBancTxt.AllowEmpty = false;
    this.DescBancTxt.AllowSqlCharacters = false;
    this.DescBancTxt.ExternalValidation = (Func<string>) null;
    this.DescBancTxt.Location = new Point(158, 341);
    this.DescBancTxt.Margin = new Padding(3, 4, 3, 4);
    this.DescBancTxt.MaxLength = 13;
    this.DescBancTxt.MinLenght = 0;
    this.DescBancTxt.Name = "DescBancTxt";
    this.DescBancTxt.PasswordChar = char.MinValue;
    this.DescBancTxt.ScrollBars = ScrollBars.None;
    this.DescBancTxt.SelectedText = "";
    this.DescBancTxt.ShowBorder = true;
    this.DescBancTxt.Size = new Size(130, 23);
    this.DescBancTxt.TabIndex = 11;
    this.DescBancTxt.UseSelectable = true;
    this.metroLabel1.AutoSize = true;
    this.metroLabel1.Location = new Point(97, 73);
    this.metroLabel1.Margin = new Padding(3, 4, 3, 4);
    this.metroLabel1.Name = "metroLabel1";
    this.metroLabel1.Size = new Size(55, 19);
    this.metroLabel1.TabIndex = 12;
    this.metroLabel1.Text = "Periodo";
    this.metroLabel2.AutoSize = true;
    this.metroLabel2.Location = new Point(99, 104);
    this.metroLabel2.Margin = new Padding(3, 4, 3, 4);
    this.metroLabel2.Name = "metroLabel2";
    this.metroLabel2.Size = new Size(53, 19);
    this.metroLabel2.TabIndex = 13;
    this.metroLabel2.Text = "Código";
    this.metroLabel3.AutoSize = true;
    this.metroLabel3.Location = new Point(103, 135);
    this.metroLabel3.Margin = new Padding(3, 4, 3, 4);
    this.metroLabel3.Name = "metroLabel3";
    this.metroLabel3.Size = new Size(49, 19);
    this.metroLabel3.TabIndex = 14;
    this.metroLabel3.Text = "Detalle";
    this.metroLabel4.AutoSize = true;
    this.metroLabel4.Location = new Point(94, 166);
    this.metroLabel4.Margin = new Padding(3, 4, 3, 4);
    this.metroLabel4.Name = "metroLabel4";
    this.metroLabel4.Size = new Size(58, 19);
    this.metroLabel4.TabIndex = 15;
    this.metroLabel4.Text = "Número";
    this.metroLabel5.AutoSize = true;
    this.metroLabel5.Location = new Point(81, 197);
    this.metroLabel5.Margin = new Padding(3, 4, 3, 4);
    this.metroLabel5.Name = "metroLabel5";
    this.metroLabel5.Size = new Size(71, 19);
    this.metroLabel5.TabIndex = 19;
    this.metroLabel5.Text = "Cód. Cuco";
    this.metroLabel6.AutoSize = true;
    this.metroLabel6.Location = new Point(109, 228);
    this.metroLabel6.Margin = new Padding(3, 4, 3, 4);
    this.metroLabel6.Name = "metroLabel6";
    this.metroLabel6.Size = new Size(43, 19);
    this.metroLabel6.TabIndex = 18;
    this.metroLabel6.Text = "Fecha";
    this.metroLabel7.AutoSize = true;
    this.metroLabel7.Location = new Point(58, 256 /*0x0100*/);
    this.metroLabel7.Margin = new Padding(3, 4, 3, 4);
    this.metroLabel7.Name = "metroLabel7";
    this.metroLabel7.Size = new Size(94, 19);
    this.metroLabel7.TabIndex = 17;
    this.metroLabel7.Text = "Último cheque";
    this.metroLabel8.AutoSize = true;
    this.metroLabel8.Location = new Point(79, 284);
    this.metroLabel8.Margin = new Padding(3, 4, 3, 4);
    this.metroLabel8.Name = "metroLabel8";
    this.metroLabel8.Size = new Size(73, 19);
    this.metroLabel8.TabIndex = 16 /*0x10*/;
    this.metroLabel8.Text = "EmauCheq";
    this.metroLabel9.AutoSize = true;
    this.metroLabel9.Location = new Point(113, 312);
    this.metroLabel9.Margin = new Padding(3, 4, 3, 4);
    this.metroLabel9.Name = "metroLabel9";
    this.metroLabel9.Size = new Size(39, 19);
    this.metroLabel9.TabIndex = 22;
    this.metroLabel9.Text = "Proc.";
    this.metroLabel10.AutoSize = true;
    this.metroLabel10.Location = new Point(113, 343);
    this.metroLabel10.Margin = new Padding(3, 4, 3, 4);
    this.metroLabel10.Name = "metroLabel10";
    this.metroLabel10.Size = new Size(39, 19);
    this.metroLabel10.TabIndex = 21;
    this.metroLabel10.Text = "Desc.";
    this.CuentaContableEB.AllowEmpty = false;
    this.CuentaContableEB.AllowSqlCharacters = false;
    this.CuentaContableEB.BackColor = Color.White;
    this.CuentaContableEB.Entity = (Entity) null;
    this.CuentaContableEB.ExternalValidation = (Func<string>) null;
    this.CuentaContableEB.Font = new Font("Segoe UI", 14f, FontStyle.Regular, GraphicsUnit.Pixel);
    this.CuentaContableEB.Location = new Point(158, 195);
    this.CuentaContableEB.Margin = new Padding(3, 4, 3, 4);
    this.CuentaContableEB.MaximumSize = new Size(3000, 23);
    this.CuentaContableEB.MaxLenght = 50;
    this.CuentaContableEB.MinimumSize = new Size(100, 23);
    this.CuentaContableEB.Name = "CuentaContableEB";
    this.CuentaContableEB.PropertyDetail = "DetaCuco";
    this.CuentaContableEB.PropertyID = "JeraCuco";
    this.CuentaContableEB.ShowNewButton = false;
    this.CuentaContableEB.ShowSearchButton = false;
    this.CuentaContableEB.Size = new Size(500, 23);
    this.CuentaContableEB.TabIndex = 6;
    this.CuentaContableEB.TextAlign = HorizontalAlignment.Left;
    this.CuentaContableEB.TextBoxWidth = 130;
    this.ClientSize = new Size(714, 428);
    this.Controls.Add((Control) this.CuentaContableEB);
    this.Controls.Add((Control) this.metroLabel9);
    this.Controls.Add((Control) this.metroLabel10);
    this.Controls.Add((Control) this.metroLabel5);
    this.Controls.Add((Control) this.metroLabel6);
    this.Controls.Add((Control) this.metroLabel7);
    this.Controls.Add((Control) this.metroLabel8);
    this.Controls.Add((Control) this.metroLabel4);
    this.Controls.Add((Control) this.metroLabel3);
    this.Controls.Add((Control) this.metroLabel2);
    this.Controls.Add((Control) this.metroLabel1);
    this.Controls.Add((Control) this.DescBancTxt);
    this.Controls.Add((Control) this.ProcBancTxt);
    this.Controls.Add((Control) this.EmauCheqChk);
    this.Controls.Add((Control) this.UlchBancMsk);
    this.Controls.Add((Control) this.NumeBancTxt);
    this.Controls.Add((Control) this.DetaBancTxt);
    this.Controls.Add((Control) this.CodiBancMsk);
    this.Controls.Add((Control) this.PeriInfoMsk);
    this.Name = nameof (abmBanco);
    this.Controls.SetChildIndex((Control) this.PeriInfoMsk, 0);
    this.Controls.SetChildIndex((Control) this.CodiBancMsk, 0);
    this.Controls.SetChildIndex((Control) this.DetaBancTxt, 0);
    this.Controls.SetChildIndex((Control) this.NumeBancTxt, 0);
    this.Controls.SetChildIndex((Control) this.UlchBancMsk, 0);
    this.Controls.SetChildIndex((Control) this.EmauCheqChk, 0);
    this.Controls.SetChildIndex((Control) this.ProcBancTxt, 0);
    this.Controls.SetChildIndex((Control) this.DescBancTxt, 0);
    this.Controls.SetChildIndex((Control) this.metroLabel1, 0);
    this.Controls.SetChildIndex((Control) this.metroLabel2, 0);
    this.Controls.SetChildIndex((Control) this.metroLabel3, 0);
    this.Controls.SetChildIndex((Control) this.metroLabel4, 0);
    this.Controls.SetChildIndex((Control) this.metroLabel8, 0);
    this.Controls.SetChildIndex((Control) this.metroLabel7, 0);
    this.Controls.SetChildIndex((Control) this.metroLabel6, 0);
    this.Controls.SetChildIndex((Control) this.metroLabel5, 0);
    this.Controls.SetChildIndex((Control) this.metroLabel10, 0);
    this.Controls.SetChildIndex((Control) this.metroLabel9, 0);
    this.Controls.SetChildIndex((Control) this.CuentaContableEB, 0);
    this.ResumeLayout(false);
    this.PerformLayout();
  }
}
