// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Contabilidad.Reportes.LibroMayorGeneral.repLibroMayorGeneral
// Assembly: plugin-contabilidad, Version=1.0.0.18781, Culture=neutral, PublicKeyToken=null
// MVID: 8CFFB2D7-E36F-490D-9F70-C8AAE980EAE1
// Assembly location: C:\nomade\para copiar\plugin-contabilidad.dll

using InfoGov.Common;
using InfoGov.Forms;
using InfoGov.Metro.Controls;
using InfoGov.Plugins.Contabilidad.Expertos;
using InfoGov.Plugins.Infogov.Entidades;
using InfoGov.Reports;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Text;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Contabilidad.Reportes.LibroMayorGeneral;

public class repLibroMayorGeneral : InfoGovPrintForm
{
  private ExpLibroMayorGeneral expert = new ExpLibroMayorGeneral();
  private MetroComboBox PeriInfoCmBx;
  private MetroDateTextBox txtFechaHasta;
  private MetroLabel metroLabel5;
  private MetroDateTextBox txtFechaDesde;
  private MetroLabel metroLabel6;
  private MetroComboBox comboTipoAsiento;
  private MetroLabel metroLabel3;
  private MetroLabel metroLabel2;
  private MetroButton btnTXT;
  private MetroEntityBox CuentaContaEB;
  private MetroCheckBox checkTodas;
  private MetroLabel metroLabel1;

  public repLibroMayorGeneral()
    : base("Libro Mayor General")
  {
    this.InitializeComponent();
    this.CompletarComboPeriodo();
    this.CompletarComboTipoAsiento();
    this.CuentaContaEB.FindEntityFunction = new MetroEntityBox.FindEntityDelegate(this.EncontrarCuentaContable);
    this.CuentaContaEB.SearchEntityFunction = new MetroEntityBox.SearchEntityDelegate(this.BuscarCuentaContable);
  }

  private void InitializeComponent()
  {
    this.PeriInfoCmBx = new MetroComboBox();
    this.metroLabel1 = new MetroLabel();
    this.txtFechaHasta = new MetroDateTextBox();
    this.metroLabel5 = new MetroLabel();
    this.txtFechaDesde = new MetroDateTextBox();
    this.metroLabel6 = new MetroLabel();
    this.comboTipoAsiento = new MetroComboBox();
    this.metroLabel3 = new MetroLabel();
    this.metroLabel2 = new MetroLabel();
    this.btnTXT = new MetroButton();
    this.CuentaContaEB = new MetroEntityBox();
    this.checkTodas = new MetroCheckBox();
    this.SuspendLayout();
    this.butClose.Location = new Point(610, 7);
    this.butGenerate.Location = new Point(283, 268);
    this.PeriInfoCmBx.FormattingEnabled = false;
    this.PeriInfoCmBx.Location = new Point((int) sbyte.MaxValue, 54);
    this.PeriInfoCmBx.Margin = new Padding(3, 4, 3, 4);
    this.PeriInfoCmBx.Name = "PeriInfoCmBx";
    this.PeriInfoCmBx.Size = new Size(90, 23);
    this.PeriInfoCmBx.TabIndex = 16 /*0x10*/;
    this.PeriInfoCmBx.SelectedIndexChanged += new EventHandler(this.PeriInfoCmBx_SelectedIndexChanged);
    this.metroLabel1.AutoSize = false;
    this.metroLabel1.Location = new Point(34, 58);
    this.metroLabel1.Margin = new Padding(3, 4, 3, 4);
    this.metroLabel1.Name = "metroLabel1";
    this.metroLabel1.Size = new Size(93, 19);
    this.metroLabel1.TabIndex = 17;
    this.metroLabel1.Text = "Periodo:";
    this.metroLabel1.TextAlign = ContentAlignment.TopRight;
    this.txtFechaHasta.AllowEmpty = true;
    this.txtFechaHasta.Location = new Point((int) sbyte.MaxValue, 124);
    this.txtFechaHasta.Name = "txtFechaHasta";
    this.txtFechaHasta.Size = new Size(90, 25);
    this.txtFechaHasta.TabIndex = 59;
    this.metroLabel5.AutoSize = false;
    this.metroLabel5.Location = new Point(34, 130);
    this.metroLabel5.Name = "metroLabel5";
    this.metroLabel5.Size = new Size(93, 19);
    this.metroLabel5.TabIndex = 60;
    this.metroLabel5.Text = "Fecha Hasta:";
    this.metroLabel5.TextAlign = ContentAlignment.MiddleRight;
    this.txtFechaDesde.AllowEmpty = true;
    this.txtFechaDesde.Location = new Point((int) sbyte.MaxValue, 87);
    this.txtFechaDesde.Name = "txtFechaDesde";
    this.txtFechaDesde.Size = new Size(90, 25);
    this.txtFechaDesde.TabIndex = 57;
    this.metroLabel6.AutoSize = false;
    this.metroLabel6.Location = new Point(34, 93);
    this.metroLabel6.Name = "metroLabel6";
    this.metroLabel6.Size = new Size(93, 19);
    this.metroLabel6.TabIndex = 58;
    this.metroLabel6.Text = "Fecha Desde:";
    this.metroLabel6.TextAlign = ContentAlignment.MiddleRight;
    this.comboTipoAsiento.FormattingEnabled = false;
    this.comboTipoAsiento.Location = new Point((int) sbyte.MaxValue, 196);
    this.comboTipoAsiento.Name = "comboTipoAsiento";
    this.comboTipoAsiento.Size = new Size(498, 23);
    this.comboTipoAsiento.TabIndex = 62;
    this.metroLabel3.AutoSize = false;
    this.metroLabel3.Location = new Point(15, 200);
    this.metroLabel3.Name = "metroLabel3";
    this.metroLabel3.Size = new Size(112 /*0x70*/, 19);
    this.metroLabel3.TabIndex = 61;
    this.metroLabel3.Text = "Tipo de Asiento:";
    this.metroLabel3.TextAlign = ContentAlignment.MiddleRight;
    this.metroLabel2.AutoSize = false;
    this.metroLabel2.Location = new Point(12, 165);
    this.metroLabel2.Name = "metroLabel2";
    this.metroLabel2.Size = new Size(115, 19);
    this.metroLabel2.TabIndex = 65;
    this.metroLabel2.Text = "Cuenta Contable:";
    this.metroLabel2.TextAlign = ContentAlignment.MiddleRight;
    this.btnTXT.Location = new Point(366, 268);
    this.btnTXT.Name = "btnTXT";
    this.btnTXT.Size = new Size(75, 23);
    this.btnTXT.TabIndex = 66;
    this.btnTXT.Text = "TXT";
    this.btnTXT.Click += new EventHandler(this.btnTXT_Click);
    this.CuentaContaEB.AllowEmpty = false;
    this.CuentaContaEB.AllowSqlCharacters = false;
    this.CuentaContaEB.BackColor = Color.White;
    this.CuentaContaEB.Entity = (Entity) null;
    this.CuentaContaEB.ExternalValidation = (Func<string>) null;
    this.CuentaContaEB.Font = new Font("Segoe UI", 14f, FontStyle.Regular, GraphicsUnit.Pixel);
    this.CuentaContaEB.Location = new Point((int) sbyte.MaxValue, 160 /*0xA0*/);
    this.CuentaContaEB.MandatoryWrite = false;
    this.CuentaContaEB.Margin = new Padding(3, 4, 3, 4);
    this.CuentaContaEB.MaximumSize = new Size(3000, 23);
    this.CuentaContaEB.MaxLenght = 50;
    this.CuentaContaEB.MinimumSize = new Size(100, 23);
    this.CuentaContaEB.Name = "CuentaContaEB";
    this.CuentaContaEB.PropertyDetail = "DetaCuco";
    this.CuentaContaEB.PropertyID = "CodiCuco";
    this.CuentaContaEB.ShowNewButton = false;
    this.CuentaContaEB.ShowSearchButton = false;
    this.CuentaContaEB.Size = new Size(400, 23);
    this.CuentaContaEB.TabIndex = 67;
    this.CuentaContaEB.TextAlign = HorizontalAlignment.Left;
    this.CuentaContaEB.TextBoxWidth = 120;
    this.checkTodas.Checked = true;
    this.checkTodas.CheckState = CheckState.Checked;
    this.checkTodas.Location = new Point((int) sbyte.MaxValue, 229);
    this.checkTodas.Name = "checkTodas";
    this.checkTodas.Size = new Size(177, 19);
    this.checkTodas.TabIndex = 68;
    this.checkTodas.Text = "Mostrar Todas las Cuentas";
    this.ClientSize = new Size(640, 304);
    this.Controls.Add((Control) this.checkTodas);
    this.Controls.Add((Control) this.CuentaContaEB);
    this.Controls.Add((Control) this.btnTXT);
    this.Controls.Add((Control) this.metroLabel2);
    this.Controls.Add((Control) this.comboTipoAsiento);
    this.Controls.Add((Control) this.metroLabel3);
    this.Controls.Add((Control) this.txtFechaHasta);
    this.Controls.Add((Control) this.metroLabel5);
    this.Controls.Add((Control) this.txtFechaDesde);
    this.Controls.Add((Control) this.metroLabel6);
    this.Controls.Add((Control) this.PeriInfoCmBx);
    this.Controls.Add((Control) this.metroLabel1);
    this.Name = nameof (repLibroMayorGeneral);
    this.Controls.SetChildIndex((Control) this.metroLabel1, 0);
    this.Controls.SetChildIndex((Control) this.PeriInfoCmBx, 0);
    this.Controls.SetChildIndex((Control) this.metroLabel6, 0);
    this.Controls.SetChildIndex((Control) this.txtFechaDesde, 0);
    this.Controls.SetChildIndex((Control) this.metroLabel5, 0);
    this.Controls.SetChildIndex((Control) this.txtFechaHasta, 0);
    this.Controls.SetChildIndex((Control) this.metroLabel3, 0);
    this.Controls.SetChildIndex((Control) this.comboTipoAsiento, 0);
    this.Controls.SetChildIndex((Control) this.butClose, 0);
    this.Controls.SetChildIndex((Control) this.butGenerate, 0);
    this.Controls.SetChildIndex((Control) this.metroLabel2, 0);
    this.Controls.SetChildIndex((Control) this.btnTXT, 0);
    this.Controls.SetChildIndex((Control) this.CuentaContaEB, 0);
    this.Controls.SetChildIndex((Control) this.checkTodas, 0);
    this.ResumeLayout(false);
    this.PerformLayout();
  }

  private void CompletarComboPeriodo()
  {
    this.PeriInfoCmBx.Items.Clear();
    this.PeriInfoCmBx.ValueMember = "Value";
    this.PeriInfoCmBx.DisplayMember = "Text";
    this.PeriInfoCmBx.Items.AddRange((object[]) this.expert.getPeriodos().ToArray());
    this.PeriInfoCmBx.SelectedIndex = 0;
  }

  private void CompletarComboTipoAsiento()
  {
    this.comboTipoAsiento.Items.Clear();
    this.comboTipoAsiento.ValueMember = "Value";
    this.comboTipoAsiento.DisplayMember = "Text";
    this.comboTipoAsiento.Items.AddRange((object[]) this.expert.getTiposAsiento().ToArray());
    this.comboTipoAsiento.SelectedIndex = 0;
  }

  protected override InfoGovReport createReport()
  {
    irepLibroMayorGeneral report = new irepLibroMayorGeneral();
    report.desde = this.txtFechaDesde.Date;
    report.hasta = this.txtFechaHasta.Date;
    report.PeriInfo = Convert.ToInt32(((ComboBoxItem) this.PeriInfoCmBx.SelectedItem).Value);
    report.CodiTias = Convert.ToInt32(((ComboBoxItem) this.comboTipoAsiento.SelectedItem).Value);
    report.DetaTias = ((ComboBoxItem) this.comboTipoAsiento.SelectedItem).Text;
    irepLibroMayorGeneral libroMayorGeneral = report;
    string str;
    if (this.CuentaContaEB.Entity != null)
      str = ((CuentaContable) this.CuentaContaEB.Entity).CodiCuco.Replace(".", "").TrimEnd('0');
    else
      str = "";
    libroMayorGeneral.CodiCuco = str;
    report.todaslascuentas = this.checkTodas.Checked;
    return (InfoGovReport) report;
  }

  protected override string validateControls()
  {
    StringBuilder stringBuilder = new StringBuilder();
    if (this.txtFechaDesde.Date > this.txtFechaHasta.Date)
      stringBuilder.AppendLine("La fecha desde no puede ser mayor que la fecha hasta");
    if (this.txtFechaDesde.Date == DateTime.MinValue)
      stringBuilder.AppendLine("Debe ingresar fecha desde");
    if (this.txtFechaHasta.Date == DateTime.MinValue)
      stringBuilder.AppendLine("Debe ingresar fecha hasta");
    return stringBuilder.ToString();
  }

  private Entity BuscarCuentaContable(string text)
  {
    Filter filter = new Filter();
    filter.Restrictions.Add(new FilterItem("c.PeriInfo", "periodo", FilterMode.Equal, this.PeriInfoCmBx.Text));
    if (Misc.IsNumeric(text))
      filter.Items.Add(new FilterItem("CodiCuco", "Cód. Cuenta", FilterMode.StartsWith, text));
    else
      filter.Items.Add(new FilterItem("DetaCuco", "Det. Cuenta", FilterMode.Contains, text));
    return (Entity) this.EM.Search<CuentaContable>(filter, true);
  }

  private Entity EncontrarCuentaContable(string text, bool useSearch)
  {
    Filter filter = new Filter();
    filter.Restrictions.Add(new FilterItem("c.PeriInfo", "periodo", FilterMode.Equal, this.PeriInfoCmBx.Text));
    if (Misc.IsNumeric(text))
      filter.Items.Add(new FilterItem("CodiCuco", "Cód. Cuenta", FilterMode.StartsWith, text));
    else
      filter.Items.Add(new FilterItem("DetaCuco", "Det. Cuenta", FilterMode.Contains, text));
    return (Entity) this.EM.Find<CuentaContable>(filter, true, true);
  }

  private void btnTXT_Click(object sender, EventArgs e)
  {
    SaveFileDialog saveFileDialog = new SaveFileDialog();
    saveFileDialog.AddExtension = true;
    saveFileDialog.AutoUpgradeEnabled = true;
    saveFileDialog.CheckFileExists = false;
    saveFileDialog.CheckPathExists = true;
    saveFileDialog.CreatePrompt = false;
    saveFileDialog.DefaultExt = "txt";
    saveFileDialog.Filter = "Archivo TXT|*.txt";
    saveFileDialog.FilterIndex = 1;
    saveFileDialog.OverwritePrompt = true;
    saveFileDialog.ShowHelp = false;
    saveFileDialog.SupportMultiDottedExtensions = true;
    saveFileDialog.Title = "Exportar a TXT";
    saveFileDialog.ValidateNames = true;
    if (saveFileDialog.ShowDialog((IWin32Window) this) != DialogResult.OK)
      return;
    DateTime date1 = this.txtFechaDesde.Date;
    DateTime date2 = this.txtFechaHasta.Date;
    int int32_1 = Convert.ToInt32(((ComboBoxItem) this.PeriInfoCmBx.SelectedItem).Value);
    int int32_2 = Convert.ToInt32(((ComboBoxItem) this.comboTipoAsiento.SelectedItem).Value);
    string str1;
    if (this.CuentaContaEB.Entity != null)
      str1 = ((CuentaContable) this.CuentaContaEB.Entity).CodiCuco.Replace(".", "").TrimEnd('0');
    else
      str1 = "";
    string CodiCuco = str1;
    bool todaslascuentas = this.checkTodas.Checked;
    List<DTOLibroMayorGeneral> libroMayorGeneral1 = new ExpLibroMayorGeneral().getLibroMayorGeneral(int32_1, date1, date2, int32_2, CodiCuco, todaslascuentas);
    StreamWriter streamWriter1 = new StreamWriter(saveFileDialog.FileName);
    string str2 = "|";
    string str3 = $"Periodo{str2}Cuenta{str2}Nombre{str2}Fecha{str2}Asiento{str2}Tipo{str2}Detalle_asiento{str2}Debe{str2}Haber{str2}Saldo_Deudor{str2}Saldo_Acreedor";
    streamWriter1.WriteLine(str3);
    foreach (DTOLibroMayorGeneral libroMayorGeneral2 in libroMayorGeneral1)
    {
      foreach (DTOLibroMayorGeneralDeta detalle in libroMayorGeneral2.detalles)
      {
        if (detalle.CodiAsie != 0)
        {
          StreamWriter streamWriter2 = streamWriter1;
          string[] strArray = new string[21];
          strArray[0] = detalle.PeriInfo.ToString();
          strArray[1] = str2;
          strArray[2] = libroMayorGeneral2.CodiCuco;
          strArray[3] = str2;
          strArray[4] = libroMayorGeneral2.DetaCuco;
          strArray[5] = str2;
          strArray[6] = detalle.FechAsie.ToShortDateString();
          strArray[7] = str2;
          int num1 = detalle.CodiAsie;
          strArray[8] = num1.ToString();
          strArray[9] = str2;
          num1 = detalle.CodiTias;
          strArray[10] = num1.ToString();
          strArray[11] = str2;
          strArray[12] = detalle.DetaAsie;
          strArray[13] = str2;
          strArray[14] = detalle.DebeMoas.ToString();
          strArray[15] = str2;
          strArray[16 /*0x10*/] = detalle.HabeMoas.ToString();
          strArray[17] = str2;
          Decimal num2 = detalle.Deudor;
          strArray[18] = num2.ToString();
          strArray[19] = str2;
          num2 = detalle.Acreedor;
          strArray[20] = num2.ToString();
          string str4 = string.Concat(strArray);
          streamWriter2.WriteLine(str4);
        }
      }
    }
    streamWriter1.Close();
    new frmMensaje((Form) this).mostrarConfirmación("Archivo Generado Correctamente");
  }

  private void PeriInfoCmBx_SelectedIndexChanged(object sender, EventArgs e)
  {
    this.txtFechaDesde.Date = this.expert.consultarMinFecha(Convert.ToInt32(((ComboBoxItem) this.PeriInfoCmBx.SelectedItem).Value));
    this.txtFechaHasta.Date = this.expert.consultarMaxFecha(Convert.ToInt32(((ComboBoxItem) this.PeriInfoCmBx.SelectedItem).Value));
  }
}
