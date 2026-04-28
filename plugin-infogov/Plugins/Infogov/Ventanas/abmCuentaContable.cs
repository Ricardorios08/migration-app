// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Ventanas.abmCuentaContable
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
using System.Collections.Generic;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Infogov.Ventanas;

public class abmCuentaContable : EntityForm<CuentaContable>, ObsPeriodo
{
  private List<TipoCuentaContable> tipoCuenta = new List<TipoCuentaContable>();
  private MetroLabel metroLabel3;
  private MetroMaskedTextBox CodiCucoMasked;
  private MetroTextBox DetaCuco;
  private MetroLabel metroLabel2;
  private MetroCheckBox ImpuCucoChBx;
  private MetroComboBox TicuCucoCmBx;
  private MetroLabel metroLabel1;

  public abmCuentaContable()
    : base("Cuenta Contable")
  {
    this.InitializeComponent();
    this.IniciarDatosCliente();
  }

  protected override void initializeWindow(ActionMode mode, bool firstTime)
  {
    if (!firstTime)
      return;
    this.tipoCuenta = ((ExpCuentaContable) this.expert).getTiposCuenta();
    this.TicuCucoCmBx.Items.Clear();
    this.TicuCucoCmBx.DisplayMember = "DetaTicu";
    this.TicuCucoCmBx.ValueMember = "CodiTicu";
    foreach (object obj in this.tipoCuenta)
      this.TicuCucoCmBx.Items.Add(obj);
    this.TicuCucoCmBx.SelectedIndex = 0;
  }

  protected override void changeControlsMode(ActionMode mode)
  {
    this.ImpuCucoChBx.Enabled = false;
    MetroMaskedTextBox codiCucoMasked = this.CodiCucoMasked;
    MetroTextBox detaCuco = this.DetaCuco;
    bool flag1;
    this.TicuCucoCmBx.Enabled = flag1 = mode == ActionMode.New || mode == ActionMode.Edit;
    int num1;
    bool flag2 = (num1 = flag1 ? 1 : 0) != 0;
    detaCuco.Enabled = num1 != 0;
    int num2 = flag2 ? 1 : 0;
    codiCucoMasked.Enabled = num2 != 0;
  }

  protected override void showData()
  {
    this.CodiCucoMasked.Text = this.enti.CodiCuco;
    this.DetaCuco.Text = this.enti.DetaCuco;
    this.TicuCucoCmBx.SelectedIndex = 0;
    if (this.enti.CodiTicu.Length <= 0)
      return;
    this.TicuCucoCmBx.SelectedValue = (object) this.enti.CodiTicu;
  }

  protected override void readData()
  {
    this.enti.CodiCuco = this.CodiCucoMasked.Text;
    this.enti.DetaCuco = this.DetaCuco.Text;
    this.enti.ImpuCuco = this.ImpuCucoChBx.Checked;
    this.enti.CodiTicu = ((TipoCuentaContable) this.TicuCucoCmBx.SelectedItem).CodiTicu;
  }

  protected override bool isDataValid()
  {
    StringBuilder stringBuilder = new StringBuilder();
    if (this.CodiCucoMasked.Text.Length != 10)
      stringBuilder.AppendLine(" - El código debe tener 10 dígitos");
    if (this.DetaCuco.Text.Length == 0)
      stringBuilder.AppendLine(" - Detalle no puede quedar vacío");
    if (stringBuilder.Length > 0)
      new frmMensaje((Form) this).mostrarError(stringBuilder.ToString());
    return stringBuilder.Length == 0;
  }

  public void IniciarDatosCliente()
  {
    this.CodiCucoMasked.Mask = PARAMS.Parameters.GetString("MaskCodiCuco");
  }

  public void PeriodoChanged(int periodo)
  {
    frmMensaje frmMensaje = new frmMensaje((Form) null);
    this.Close();
    frmMensaje.mostrarError("Cierre la pestaña y vuelva abrir");
  }

  private void InitializeComponent()
  {
    this.metroLabel3 = new MetroLabel();
    this.CodiCucoMasked = new MetroMaskedTextBox();
    this.DetaCuco = new MetroTextBox();
    this.metroLabel2 = new MetroLabel();
    this.metroLabel1 = new MetroLabel();
    this.ImpuCucoChBx = new MetroCheckBox();
    this.TicuCucoCmBx = new MetroComboBox();
    this.SuspendLayout();
    this.metroLabel3.AutoSize = true;
    this.metroLabel3.Location = new Point(18, 151);
    this.metroLabel3.Margin = new Padding(3, 4, 3, 4);
    this.metroLabel3.Name = "metroLabel3";
    this.metroLabel3.Size = new Size(99, 19);
    this.metroLabel3.TabIndex = 17;
    this.metroLabel3.Text = "Tipo de Cuenta";
    this.CodiCucoMasked.AllowEmpty = false;
    this.CodiCucoMasked.AllowSqlCharacters = false;
    this.CodiCucoMasked.CompleteMaskRequired = false;
    this.CodiCucoMasked.CutCopyMaskFormat = MaskFormat.IncludeLiterals;
    this.CodiCucoMasked.ExternalValidation = (Func<string>) null;
    this.CodiCucoMasked.IntText = 0;
    this.CodiCucoMasked.Location = new Point(123, 85);
    this.CodiCucoMasked.LongText = 0L;
    this.CodiCucoMasked.Margin = new Padding(3, 4, 3, 4);
    this.CodiCucoMasked.Mask = "#.#.#.##.####";
    this.CodiCucoMasked.Name = "CodiCucoMasked";
    this.CodiCucoMasked.PromptChar = '_';
    this.CodiCucoMasked.SelectedText = "";
    this.CodiCucoMasked.ShortText = (short) 0;
    this.CodiCucoMasked.Size = new Size(106, 23);
    this.CodiCucoMasked.TabIndex = 12;
    this.CodiCucoMasked.Text = "0";
    this.CodiCucoMasked.TextMaskFormat = MaskFormat.ExcludePromptAndLiterals;
    this.CodiCucoMasked.UseSelectable = true;
    this.DetaCuco.AllowEmpty = false;
    this.DetaCuco.AllowSqlCharacters = false;
    this.DetaCuco.ExternalValidation = (Func<string>) null;
    this.DetaCuco.Location = new Point(123, 116);
    this.DetaCuco.Margin = new Padding(3, 4, 3, 4);
    this.DetaCuco.MaxLength = (int) short.MaxValue;
    this.DetaCuco.MinLenght = 0;
    this.DetaCuco.Name = "DetaCuco";
    this.DetaCuco.PasswordChar = char.MinValue;
    this.DetaCuco.ScrollBars = ScrollBars.None;
    this.DetaCuco.SelectedText = "";
    this.DetaCuco.ShowBorder = true;
    this.DetaCuco.Size = new Size(317, 23);
    this.DetaCuco.TabIndex = 13;
    this.DetaCuco.UseSelectable = true;
    this.metroLabel2.AutoSize = true;
    this.metroLabel2.Location = new Point(68, 120);
    this.metroLabel2.Margin = new Padding(3, 4, 3, 4);
    this.metroLabel2.Name = "metroLabel2";
    this.metroLabel2.Size = new Size(49, 19);
    this.metroLabel2.TabIndex = 16 /*0x10*/;
    this.metroLabel2.Text = "Detalle";
    this.metroLabel1.AutoSize = true;
    this.metroLabel1.Location = new Point(38, 89);
    this.metroLabel1.Margin = new Padding(3, 4, 3, 4);
    this.metroLabel1.Name = "metroLabel1";
    this.metroLabel1.Size = new Size(79, 19);
    this.metroLabel1.TabIndex = 15;
    this.metroLabel1.Text = "Cód Cuenta";
    this.ImpuCucoChBx.AutoSize = true;
    this.ImpuCucoChBx.ExternalValidation = (Func<string>) null;
    this.ImpuCucoChBx.Location = new Point(123, 178);
    this.ImpuCucoChBx.Margin = new Padding(3, 4, 3, 4);
    this.ImpuCucoChBx.Name = "ImpuCucoChBx";
    this.ImpuCucoChBx.Size = new Size(84, 19);
    this.ImpuCucoChBx.TabIndex = 18;
    this.ImpuCucoChBx.Text = "Imputable";
    this.ImpuCucoChBx.UseSelectable = true;
    this.TicuCucoCmBx.ExternalValidation = (Func<string>) null;
    this.TicuCucoCmBx.FormattingEnabled = true;
    this.TicuCucoCmBx.ItemHeight = 17;
    this.TicuCucoCmBx.Location = new Point(123, 147);
    this.TicuCucoCmBx.Margin = new Padding(3, 4, 3, 4);
    this.TicuCucoCmBx.Name = "TicuCucoCmBx";
    this.TicuCucoCmBx.Size = new Size(263, 23);
    this.TicuCucoCmBx.TabIndex = 14;
    this.TicuCucoCmBx.UseSelectable = true;
    this.ClientSize = new Size(460, 300);
    this.Controls.Add((Control) this.ImpuCucoChBx);
    this.Controls.Add((Control) this.metroLabel3);
    this.Controls.Add((Control) this.TicuCucoCmBx);
    this.Controls.Add((Control) this.CodiCucoMasked);
    this.Controls.Add((Control) this.DetaCuco);
    this.Controls.Add((Control) this.metroLabel2);
    this.Controls.Add((Control) this.metroLabel1);
    this.Name = nameof (abmCuentaContable);
    this.Controls.SetChildIndex((Control) this.metroLabel1, 0);
    this.Controls.SetChildIndex((Control) this.metroLabel2, 0);
    this.Controls.SetChildIndex((Control) this.DetaCuco, 0);
    this.Controls.SetChildIndex((Control) this.CodiCucoMasked, 0);
    this.Controls.SetChildIndex((Control) this.TicuCucoCmBx, 0);
    this.Controls.SetChildIndex((Control) this.metroLabel3, 0);
    this.Controls.SetChildIndex((Control) this.ImpuCucoChBx, 0);
    this.ResumeLayout(false);
    this.PerformLayout();
  }
}
