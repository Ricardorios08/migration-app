// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Contabilidad.Ventanas.detailManualCuentaContable
// Assembly: plugin-contabilidad, Version=1.0.0.18781, Culture=neutral, PublicKeyToken=null
// MVID: 8CFFB2D7-E36F-490D-9F70-C8AAE980EAE1
// Assembly location: C:\nomade\para copiar\plugin-contabilidad.dll

using InfoGov.Common;
using InfoGov.Forms;
using InfoGov.Metro.Controls;
using InfoGov.Plugins.Contabilidad.Entidades;
using System.Collections.Generic;
using System.Drawing;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Contabilidad.Ventanas;

public class detailManualCuentaContable : ABMDetailControl
{
  private MetroTextBox mtbDebito;
  private MetroTextBox mtbDescripcion;
  private MetroTextBox mtbCredito;
  private MetroLabel lbDebito;
  private MetroLabel lbSaldo;
  private MetroLabel lbCredito;
  private MetroLabel lbDescripcion;
  private MetroComboBox cbSaldo;

  public detailManualCuentaContable()
  {
    this.InitializeComponent();
    this.CompletarCombo();
  }

  protected override void OnModeChanged(ActionMode mode)
  {
    this.cbSaldo.Enabled = mode == ActionMode.Edit;
    this.mtbCredito.Enabled = mode == ActionMode.Edit;
    this.mtbDebito.Enabled = mode == ActionMode.Edit;
    this.mtbDescripcion.Enabled = mode == ActionMode.Edit;
    this.lbCredito.Enabled = mode == ActionMode.Edit;
    this.lbDebito.Enabled = mode == ActionMode.Edit;
    this.lbDescripcion.Enabled = mode == ActionMode.Edit;
    this.lbSaldo.Enabled = mode == ActionMode.Edit;
  }

  protected override void OnEntityChanged(Entity enti)
  {
    ManualCuentaContable manualCuentaContable = (ManualCuentaContable) enti;
    if (manualCuentaContable == null)
    {
      this.LimpiarCampos();
    }
    else
    {
      this.mtbCredito.Text = manualCuentaContable.HabeCuco;
      this.mtbDebito.Text = manualCuentaContable.DebeCuco;
      this.mtbDescripcion.Text = manualCuentaContable.DescCuco;
      switch (manualCuentaContable.SaldCuco.ToLower())
      {
        case "deudor":
          this.cbSaldo.SelectedIndex = 0;
          break;
        case "acreedor":
          this.cbSaldo.SelectedIndex = 1;
          break;
        case "mixto":
          this.cbSaldo.SelectedIndex = 2;
          break;
        default:
          this.cbSaldo.SelectedIndex = -1;
          break;
      }
    }
  }

  protected override Entity LoadEntity()
  {
    return (Entity) new ManualCuentaContable()
    {
      HabeCuco = this.mtbCredito.Text,
      DebeCuco = this.mtbDebito.Text,
      DescCuco = this.mtbDescripcion.Text,
      SaldCuco = this.cbSaldo.Text
    };
  }

  protected override List<string> IsDataValid()
  {
    List<string> stringList = new List<string>();
    if (this.mtbCredito.Text == null || this.mtbCredito.Text == "")
      stringList.Add("Ingresar Detalle de Creadito");
    if (this.mtbDebito.Text == null || this.mtbDebito.Text == "")
      stringList.Add("Ingresar Detalle de Debito");
    if (this.mtbDescripcion.Text == null || this.mtbDescripcion.Text == "")
      stringList.Add("Ingresar Detalle");
    if (this.cbSaldo.SelectedItem == null)
      stringList.Add("Ingresar Saldo");
    return stringList;
  }

  protected override void LimpiarCampos()
  {
    this.mtbCredito.Text = "";
    this.mtbDebito.Text = "";
    this.mtbDescripcion.Text = "";
    this.cbSaldo.SelectedIndex = -1;
  }

  private void CompletarCombo()
  {
    this.cbSaldo.Items.Clear();
    this.cbSaldo.ValueMember = "Value";
    this.cbSaldo.DisplayMember = "Text";
    this.cbSaldo.Items.Add((object) new ComboBoxItem("Deudor", (object) 0));
    this.cbSaldo.Items.Add((object) new ComboBoxItem("Acreedor", (object) 1));
    this.cbSaldo.Items.Add((object) new ComboBoxItem("Mixto", (object) 2));
    this.cbSaldo.SelectedIndex = -1;
  }

  private void InitializeComponent()
  {
    this.mtbDebito = new MetroTextBox();
    this.mtbDescripcion = new MetroTextBox();
    this.mtbCredito = new MetroTextBox();
    this.lbDebito = new MetroLabel();
    this.lbSaldo = new MetroLabel();
    this.lbCredito = new MetroLabel();
    this.lbDescripcion = new MetroLabel();
    this.cbSaldo = new MetroComboBox();
    this.SuspendLayout();
    this.mtbDebito.Location = new Point((int) sbyte.MaxValue, 62);
    this.mtbDebito.Name = "mtbDebito";
    this.mtbDebito.Size = new Size(546, 23);
    this.mtbDebito.TabIndex = 0;
    this.mtbDescripcion.Location = new Point((int) sbyte.MaxValue, 132);
    this.mtbDescripcion.Name = "mtbDescripcion";
    this.mtbDescripcion.Size = new Size(546, 23);
    this.mtbDescripcion.TabIndex = 1;
    this.mtbCredito.Location = new Point((int) sbyte.MaxValue, 97);
    this.mtbCredito.Name = "mtbCredito";
    this.mtbCredito.Size = new Size(546, 23);
    this.mtbCredito.TabIndex = 3;
    this.lbDebito.AutoSize = false;
    this.lbDebito.Location = new Point(34, 66);
    this.lbDebito.Name = "lbDebito";
    this.lbDebito.Size = new Size(48 /*0x30*/, 19);
    this.lbDebito.TabIndex = 4;
    this.lbDebito.Text = "Debito";
    this.lbSaldo.AutoSize = false;
    this.lbSaldo.Location = new Point(34, 171);
    this.lbSaldo.Name = "lbSaldo";
    this.lbSaldo.Size = new Size(42, 19);
    this.lbSaldo.TabIndex = 5;
    this.lbSaldo.Text = "Saldo";
    this.lbCredito.AutoSize = false;
    this.lbCredito.Location = new Point(34, 101);
    this.lbCredito.Name = "lbCredito";
    this.lbCredito.Size = new Size(53, 19);
    this.lbCredito.TabIndex = 6;
    this.lbCredito.Text = "Credito";
    this.lbDescripcion.AutoSize = false;
    this.lbDescripcion.Location = new Point(34, 136);
    this.lbDescripcion.Name = "lbDescripcion";
    this.lbDescripcion.Size = new Size(76, 19);
    this.lbDescripcion.TabIndex = 7;
    this.lbDescripcion.Text = "Descripcion";
    this.cbSaldo.FormattingEnabled = false;
    this.cbSaldo.Location = new Point((int) sbyte.MaxValue, 167);
    this.cbSaldo.Name = "cbSaldo";
    this.cbSaldo.Size = new Size(180, 23);
    this.cbSaldo.TabIndex = 8;
    this.Controls.Add((Control) this.cbSaldo);
    this.Controls.Add((Control) this.lbDescripcion);
    this.Controls.Add((Control) this.lbCredito);
    this.Controls.Add((Control) this.lbSaldo);
    this.Controls.Add((Control) this.lbDebito);
    this.Controls.Add((Control) this.mtbCredito);
    this.Controls.Add((Control) this.mtbDescripcion);
    this.Controls.Add((Control) this.mtbDebito);
    this.Name = nameof (detailManualCuentaContable);
    this.ResumeLayout(false);
  }
}
