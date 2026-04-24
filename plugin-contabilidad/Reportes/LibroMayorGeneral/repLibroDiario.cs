// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Contabilidad.Reportes.LibroMayorGeneral.repLibroDiario
// Assembly: plugin-contabilidad, Version=1.0.0.18781, Culture=neutral, PublicKeyToken=null
// MVID: 8CFFB2D7-E36F-490D-9F70-C8AAE980EAE1
// Assembly location: C:\nomade\para copiar\plugin-contabilidad.dll

using DevExpress.XtraEditors;
using InfoGov.Common;
using InfoGov.Core;
using InfoGov.Forms;
using InfoGov.Metro.Controls;
using InfoGov.Plugins.Contabilidad.Entidades;
using InfoGov.Plugins.Contabilidad.Expertos;
using InfoGov.Plugins.Infogov.Entidades;
using InfoGov.Reports;
using NReco.PdfGenerator;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Contabilidad.Reportes.LibroMayorGeneral;

public class repLibroDiario : InfoGovPrintForm
{
  private MetroComboBox PeriInfoCmBx;
  private MetroLabel metroLabel1;
  private TextBox textAsiento;
  private MetroLabel metroLabel2;
  private MetroLabel metroLabel3;
  private MetroLabel metroLabel4;
  private MetroDateTimePicker DPFechaDesde;
  private MetroDateTimePicker DPFechaHasta;
  private MetroLabel metroLabel5;
  private MetroLabel metroLabel6;
  private MetroComboBox comboTipoAsiento;
  private MetroLabel metroLabel7;
  private MetroEntityBox CuentaContaEB;
  private MetroLabel metroLabel8;
  private MetroCheckBox chkSepararPag;
  private MetroCheckBox chkMostrarMinuta;
  private SimpleButton btnTxt;
  private SimpleButton btnPdf;
  private SimpleButton btnVistaPrevia;
  private MetroLabel metroLabel9;
  private MetroLabel metroLabel10;
  private ExpLibroDiario expert = new ExpLibroDiario();

  public repLibroDiario()
    : base("Libro Diario")
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
    this.textAsiento = new TextBox();
    this.metroLabel2 = new MetroLabel();
    this.metroLabel3 = new MetroLabel();
    this.metroLabel4 = new MetroLabel();
    this.DPFechaDesde = new MetroDateTimePicker();
    this.DPFechaHasta = new MetroDateTimePicker();
    this.metroLabel5 = new MetroLabel();
    this.metroLabel6 = new MetroLabel();
    this.comboTipoAsiento = new MetroComboBox();
    this.metroLabel7 = new MetroLabel();
    this.CuentaContaEB = new MetroEntityBox();
    this.metroLabel8 = new MetroLabel();
    this.chkSepararPag = new MetroCheckBox();
    this.chkMostrarMinuta = new MetroCheckBox();
    this.btnTxt = new SimpleButton();
    this.btnPdf = new SimpleButton();
    this.btnVistaPrevia = new SimpleButton();
    this.metroLabel9 = new MetroLabel();
    this.metroLabel10 = new MetroLabel();
    this.SuspendLayout();
    this.butClose.Location = new Point(510, 7);
    this.butGenerate.Location = new Point(233, 454);
    this.butGenerate.Visible = false;
    this.PeriInfoCmBx.FormattingEnabled = false;
    this.PeriInfoCmBx.Location = new Point(101, 54);
    this.PeriInfoCmBx.Name = "PeriInfoCmBx";
    this.PeriInfoCmBx.Size = new Size(76, 23);
    this.PeriInfoCmBx.TabIndex = 4;
    this.PeriInfoCmBx.SelectedValueChanged += new EventHandler(this.PeriInfoCmBx_SelectedValueChanged);
    this.metroLabel1.AutoSize = false;
    this.metroLabel1.Location = new Point(34, 58);
    this.metroLabel1.Name = "metroLabel1";
    this.metroLabel1.Size = new Size(55, 19);
    this.metroLabel1.TabIndex = 5;
    this.metroLabel1.Text = "Periodo";
    this.textAsiento.Location = new Point(34, 126);
    this.textAsiento.Name = "textAsiento";
    this.textAsiento.Size = new Size(292, 20);
    this.textAsiento.TabIndex = 7;
    this.metroLabel2.AutoSize = false;
    this.metroLabel2.Location = new Point(34, 95);
    this.metroLabel2.Name = "metroLabel2";
    this.metroLabel2.Size = new Size(52, 19);
    this.metroLabel2.TabIndex = 8;
    this.metroLabel2.Text = "Asiento";
    this.metroLabel3.AutoSize = false;
    this.metroLabel3.FontSize = 12f;
    this.metroLabel3.Location = new Point(34, 155);
    this.metroLabel3.Name = "metroLabel3";
    this.metroLabel3.Size = new Size(292, 30);
    this.metroLabel3.TabIndex = 9;
    this.metroLabel3.Text = "(desde - hasta separar con guion, ejemplo: 18-21)\r\n(intercalar distintos asientos con coma; ejemplo: 18,21,25 )";
    this.metroLabel4.AutoSize = false;
    this.metroLabel4.Location = new Point(348, 95);
    this.metroLabel4.Name = "metroLabel4";
    this.metroLabel4.Size = new Size(43, 19);
    this.metroLabel4.TabIndex = 10;
    this.metroLabel4.Text = "Fecha";
    this.DPFechaDesde.Location = new Point(405, 126);
    this.DPFechaDesde.Name = "DPFechaDesde";
    this.DPFechaDesde.Size = new Size(100, 20);
    this.DPFechaDesde.TabIndex = 11;
    this.DPFechaHasta.Location = new Point(405, 156);
    this.DPFechaHasta.Name = "DPFechaHasta";
    this.DPFechaHasta.Size = new Size(100, 20);
    this.DPFechaHasta.TabIndex = 12;
    this.metroLabel5.AutoSize = false;
    this.metroLabel5.Location = new Point(348, 157);
    this.metroLabel5.Name = "metroLabel5";
    this.metroLabel5.Size = new Size(41, 19);
    this.metroLabel5.TabIndex = 13;
    this.metroLabel5.Text = "Hasta";
    this.metroLabel6.AutoSize = false;
    this.metroLabel6.Location = new Point(348, 126);
    this.metroLabel6.Name = "metroLabel6";
    this.metroLabel6.Size = new Size(45, 19);
    this.metroLabel6.TabIndex = 14;
    this.metroLabel6.Text = "Desde";
    this.comboTipoAsiento.FormattingEnabled = false;
    this.comboTipoAsiento.Location = new Point(34, 240 /*0xF0*/);
    this.comboTipoAsiento.Name = "comboTipoAsiento";
    this.comboTipoAsiento.Size = new Size(471, 23);
    this.comboTipoAsiento.TabIndex = 15;
    this.metroLabel7.AutoSize = false;
    this.metroLabel7.Location = new Point(34, 209);
    this.metroLabel7.Name = "metroLabel7";
    this.metroLabel7.Size = new Size(101, 19);
    this.metroLabel7.TabIndex = 16 /*0x10*/;
    this.metroLabel7.Text = "Tipo de Asiento";
    this.CuentaContaEB.AllowEmpty = false;
    this.CuentaContaEB.AllowSqlCharacters = false;
    this.CuentaContaEB.BackColor = Color.White;
    this.CuentaContaEB.Entity = (Entity) null;
    this.CuentaContaEB.ExternalValidation = (Func<string>) null;
    this.CuentaContaEB.Font = new Font("Segoe UI", 14f, FontStyle.Regular, GraphicsUnit.Pixel);
    this.CuentaContaEB.LabelText = "";
    this.CuentaContaEB.Location = new Point(34, 313);
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
    this.CuentaContaEB.TabIndex = 17;
    this.CuentaContaEB.TextAlign = HorizontalAlignment.Left;
    this.CuentaContaEB.TextBoxWidth = 120;
    this.metroLabel8.AutoSize = false;
    this.metroLabel8.Location = new Point(34, 284);
    this.metroLabel8.Name = "metroLabel8";
    this.metroLabel8.Size = new Size(107, 19);
    this.metroLabel8.TabIndex = 18;
    this.metroLabel8.Text = "Cuenta Contable";
    this.chkSepararPag.AutoSize = false;
    this.chkSepararPag.Location = new Point(34, 355);
    this.chkSepararPag.Name = "chkSepararPag";
    this.chkSepararPag.Size = new Size(190, 19);
    this.chkSepararPag.TabIndex = 19;
    this.chkSepararPag.Text = "Separar paginas por asiento";
    this.chkMostrarMinuta.AutoSize = false;
    this.chkMostrarMinuta.Location = new Point(249, 355);
    this.chkMostrarMinuta.Name = "chkMostrarMinuta";
    this.chkMostrarMinuta.Size = new Size(115, 19);
    this.chkMostrarMinuta.TabIndex = 20;
    this.chkMostrarMinuta.Text = "Mostrar minuta";
    ((Control) this.btnTxt).Location = new Point(365, 430);
    ((Control) this.btnTxt).Name = "btnTxt";
    ((Control) this.btnTxt).Size = new Size(102, 30);
    ((Control) this.btnTxt).TabIndex = 21;
    ((Control) this.btnTxt).Text = "TXT";
    ((Control) this.btnTxt).Click += new EventHandler(this.iniciarReporte);
    ((Control) this.btnPdf).Location = new Point(251, 430);
    ((Control) this.btnPdf).Name = "btnPdf";
    ((Control) this.btnPdf).Size = new Size(102, 30);
    ((Control) this.btnPdf).TabIndex = 23;
    ((Control) this.btnPdf).Text = "PDF";
    ((Control) this.btnPdf).Click += new EventHandler(this.iniciarReporte);
    ((Control) this.btnVistaPrevia).Location = new Point(33, 430);
    ((Control) this.btnVistaPrevia).Name = "btnVistaPrevia";
    ((Control) this.btnVistaPrevia).Size = new Size(102, 30);
    ((Control) this.btnVistaPrevia).TabIndex = 25;
    ((Control) this.btnVistaPrevia).Text = "Vista previa";
    ((Control) this.btnVistaPrevia).Click += new EventHandler(this.iniciarReporte);
    this.metroLabel9.AutoSize = false;
    this.metroLabel9.Location = new Point(34, 402);
    this.metroLabel9.Name = "metroLabel9";
    this.metroLabel9.Size = new Size(60, 19);
    this.metroLabel9.TabIndex = 26;
    this.metroLabel9.Text = "Imprimir";
    this.metroLabel10.AutoSize = false;
    this.metroLabel10.Location = new Point(251, 402);
    this.metroLabel10.Name = "metroLabel10";
    this.metroLabel10.Size = new Size(60, 19);
    this.metroLabel10.TabIndex = 27;
    this.metroLabel10.Text = "Exportar";
    this.ClientSize = new Size(540, 490);
    this.Controls.Add((Control) this.metroLabel10);
    this.Controls.Add((Control) this.metroLabel9);
    this.Controls.Add((Control) this.btnVistaPrevia);
    this.Controls.Add((Control) this.btnPdf);
    this.Controls.Add((Control) this.btnTxt);
    this.Controls.Add((Control) this.chkMostrarMinuta);
    this.Controls.Add((Control) this.chkSepararPag);
    this.Controls.Add((Control) this.metroLabel8);
    this.Controls.Add((Control) this.CuentaContaEB);
    this.Controls.Add((Control) this.metroLabel7);
    this.Controls.Add((Control) this.comboTipoAsiento);
    this.Controls.Add((Control) this.metroLabel6);
    this.Controls.Add((Control) this.metroLabel5);
    this.Controls.Add((Control) this.DPFechaHasta);
    this.Controls.Add((Control) this.DPFechaDesde);
    this.Controls.Add((Control) this.metroLabel4);
    this.Controls.Add((Control) this.metroLabel3);
    this.Controls.Add((Control) this.metroLabel2);
    this.Controls.Add((Control) this.textAsiento);
    this.Controls.Add((Control) this.metroLabel1);
    this.Controls.Add((Control) this.PeriInfoCmBx);
    this.Name = nameof (repLibroDiario);
    this.Controls.SetChildIndex((Control) this.butClose, 0);
    this.Controls.SetChildIndex((Control) this.butGenerate, 0);
    this.Controls.SetChildIndex((Control) this.PeriInfoCmBx, 0);
    this.Controls.SetChildIndex((Control) this.metroLabel1, 0);
    this.Controls.SetChildIndex((Control) this.textAsiento, 0);
    this.Controls.SetChildIndex((Control) this.metroLabel2, 0);
    this.Controls.SetChildIndex((Control) this.metroLabel3, 0);
    this.Controls.SetChildIndex((Control) this.metroLabel4, 0);
    this.Controls.SetChildIndex((Control) this.DPFechaDesde, 0);
    this.Controls.SetChildIndex((Control) this.DPFechaHasta, 0);
    this.Controls.SetChildIndex((Control) this.metroLabel5, 0);
    this.Controls.SetChildIndex((Control) this.metroLabel6, 0);
    this.Controls.SetChildIndex((Control) this.comboTipoAsiento, 0);
    this.Controls.SetChildIndex((Control) this.metroLabel7, 0);
    this.Controls.SetChildIndex((Control) this.CuentaContaEB, 0);
    this.Controls.SetChildIndex((Control) this.metroLabel8, 0);
    this.Controls.SetChildIndex((Control) this.chkSepararPag, 0);
    this.Controls.SetChildIndex((Control) this.chkMostrarMinuta, 0);
    this.Controls.SetChildIndex((Control) this.btnTxt, 0);
    this.Controls.SetChildIndex((Control) this.btnPdf, 0);
    this.Controls.SetChildIndex((Control) this.btnVistaPrevia, 0);
    this.Controls.SetChildIndex((Control) this.metroLabel9, 0);
    this.Controls.SetChildIndex((Control) this.metroLabel10, 0);
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
    this.comboTipoAsiento.DataSource = (object) this.expert.getTiposAsiento();
    this.comboTipoAsiento.SelectedIndex = 0;
  }

  protected List<string> validate()
  {
    List<string> stringList = new List<string>();
    if (this.DPFechaDesde.Value > this.DPFechaHasta.Value)
      stringList.Add("La fecha desde no puede ser mayor que la fecha hasta.");
    if (this.comboTipoAsiento.SelectedIndex == -1)
      stringList.Add("Debe seleccionar un tipo de asiento");
    if (this.textAsiento.Text.Contains(",") && this.textAsiento.Text.Contains("-"))
      stringList.Add("Solo una forma de seleccionar asientos es posible (,) o (-).");
    if (this.textAsiento.Text.Count<char>((Func<char, bool>) (c => c == '-')) > 1)
      stringList.Add("Solo es permitido 1 separador (-).");
    if (!Regex.IsMatch(this.textAsiento.Text, "^[\\d, -]+$"))
      stringList.Add("Caracteres no permitidos como separador de asientos.");
    if (!Regex.IsMatch(this.textAsiento.Text, "^\\d+(\\s*-\\s*\\d+)?(,\\d+(\\s*-\\s*\\d+)?)*$"))
      stringList.Add("Caracteres vacios entre comas no es valido.");
    return stringList;
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

  private void PeriInfoCmBx_SelectedValueChanged(object sender, EventArgs e)
  {
    if (this.PeriInfoCmBx == null || this.PeriInfoCmBx.Items.Count <= 0)
      return;
    Dictionary<int, string> maxAsiento = this.expert.getMaxAsiento(((ComboBoxItem) this.PeriInfoCmBx.SelectedItem).Value.ToString());
    int num = 0;
    DateTime minValue = DateTime.MinValue;
    foreach (KeyValuePair<int, string> keyValuePair in maxAsiento)
    {
      num = keyValuePair.Key;
      minValue = DateTime.Parse(keyValuePair.Value);
    }
    this.textAsiento.Text = "1 - " + num.ToString();
    this.DPFechaDesde.Value = new DateTime(Convert.ToInt32(minValue.Year), 1, 1);
    this.DPFechaHasta.Value = new DateTime(minValue.Year, minValue.Month, minValue.Day);
  }

  private void iniciarReporte(object sender, EventArgs e)
  {
    List<string> stringList = this.validate();
    string mensaje = "";
    string accion = "";
    if (sender is SimpleButton simpleButton)
      accion = ((Control) simpleButton).Text;
    if (stringList.Count != 0)
    {
      foreach (string str in stringList)
        mensaje = $"{mensaje}- {str.ToString()}{Environment.NewLine}";
      if (stringList.Count > 2)
        new frmMensaje(this.ParentForm, 380, 200).mostrarError(mensaje);
      else
        new frmMensaje(this.ParentForm).mostrarError(mensaje);
    }
    else
    {
      DateTime dateTime = this.DPFechaDesde.Value;
      string str1 = dateTime.ToString();
      dateTime = this.DPFechaHasta.Value;
      string str2 = dateTime.ToString();
      string str3 = $"{str1} AND {str2}";
      string CodiAsie;
      if (this.textAsiento.Text.Contains(","))
        CodiAsie = $"({this.textAsiento.Text})";
      else if (this.textAsiento.Text.Contains("-"))
      {
        string[] strArray = this.textAsiento.Text.Split('-');
        CodiAsie = $"{strArray[0]} AND {strArray[1]}";
      }
      else
        CodiAsie = this.textAsiento.Text;
      string CodiCuco = "";
      if ((CuentaContable) this.CuentaContaEB.Entity != null)
        CodiCuco = ((CuentaContable) this.CuentaContaEB.Entity).CodiCuco;
      List<List<Asiento>> libroDiario = this.expert.getLibroDiario(CodiCuco, ((ComboBoxItem) this.PeriInfoCmBx.SelectedItem).Value.ToString(), this.DPFechaDesde.Value, this.DPFechaHasta.Value, int.Parse(this.comboTipoAsiento.SelectedValue.ToString()), CodiAsie);
      if (libroDiario.Count != 0)
        this.generarReporte((Form) this, libroDiario, accion);
      else
        new frmMensaje(this.ParentForm).mostrarError("No existen registros para el criterio de busqueda especificado");
    }
  }

  public void generarReporte(Form formulario, List<List<Asiento>> asientos, string accion)
  {
    StringBuilder stringBuilder1 = new StringBuilder();
    Decimal num1 = 0M;
    Decimal num2 = 0M;
    stringBuilder1.AppendLine("");
    stringBuilder1.AppendLine("<!DOCTYPE HTML>");
    stringBuilder1.AppendLine("<HTML  lang= \"es\">");
    stringBuilder1.AppendLine("<STYLE> HTML { font-family : \"Times New Roman\" } </STYLE><TITLE>Libro diario</TITLE>");
    stringBuilder1.AppendLine("<META http-equiv=Content-Type content=\"text / html; charset = iso - 8859 - 1\">");
    stringBuilder1.AppendLine("<STYLE type=text/css>");
    stringBuilder1.AppendLine(".Titulo1 {");
    stringBuilder1.AppendLine(" font-family: Georgia, \"Times New Roman\", Times, serif;");
    stringBuilder1.AppendLine(" font-size: 16px;");
    stringBuilder1.AppendLine(" font-weight: bold;");
    stringBuilder1.AppendLine("}");
    stringBuilder1.AppendLine(".Titulo2 {");
    stringBuilder1.AppendLine(" font-family: Georgia, \"Times New Roman\", Times, serif;");
    stringBuilder1.AppendLine(" font-size: 14px;");
    stringBuilder1.AppendLine(" font-weight: bold;");
    stringBuilder1.AppendLine("}");
    stringBuilder1.AppendLine(".Normal {");
    stringBuilder1.AppendLine(" font-family: Georgia, \"Times New Roman\", Times, serif;");
    stringBuilder1.AppendLine(" font-size: 12px;");
    stringBuilder1.AppendLine(" font-style: normal;");
    stringBuilder1.AppendLine(" font-weight: normal;");
    stringBuilder1.AppendLine(" font-variant: normal;");
    stringBuilder1.AppendLine("}");
    stringBuilder1.AppendLine(".Encabezado {");
    stringBuilder1.AppendLine(" font-family: \"Times New Roman\", Times, serif;");
    stringBuilder1.AppendLine(" font-size: 11px;");
    stringBuilder1.AppendLine(" font-weight: bold;");
    stringBuilder1.AppendLine(" background-color: #D3D3D3;");
    stringBuilder1.AppendLine(" vertical-align: middle;");
    stringBuilder1.AppendLine(" text-align:center;");
    stringBuilder1.AppendLine("}");
    stringBuilder1.AppendLine(".EncabezadoLeft {");
    stringBuilder1.AppendLine(" font-family: \"Times New Roman\", Times, serif;");
    stringBuilder1.AppendLine(" font-size: 11px;");
    stringBuilder1.AppendLine(" font-weight: bold;");
    stringBuilder1.AppendLine(" background-color: #D3D3D3;");
    stringBuilder1.AppendLine(" vertical-align: middle;");
    stringBuilder1.AppendLine(" text-align:left;");
    stringBuilder1.AppendLine("}");
    stringBuilder1.AppendLine(".LineaDato {");
    stringBuilder1.AppendLine(" font-family: \"Courier New\", Courier, monospace;");
    stringBuilder1.AppendLine(" font-size: 11px;");
    stringBuilder1.AppendLine(" vertical-align: top;");
    stringBuilder1.AppendLine("}");
    stringBuilder1.AppendLine(".LDCen {");
    stringBuilder1.AppendLine(" font-family: \"Courier New\", Courier, monospace;");
    stringBuilder1.AppendLine(" font-size: 10px;");
    stringBuilder1.AppendLine(" vertical-align: top;");
    stringBuilder1.AppendLine(" text-align:center;");
    stringBuilder1.AppendLine("}");
    stringBuilder1.AppendLine(".LDIzq {");
    stringBuilder1.AppendLine(" font-family: \"Courier New\", Courier, monospace;");
    stringBuilder1.AppendLine(" font-size: 10px;");
    stringBuilder1.AppendLine(" vertical-align: top;");
    stringBuilder1.AppendLine(" text-align:left;");
    stringBuilder1.AppendLine("}");
    stringBuilder1.AppendLine(".LDDer {");
    stringBuilder1.AppendLine(" font-family: \"Courier New\", Courier, monospace;");
    stringBuilder1.AppendLine(" font-size: 10px;");
    stringBuilder1.AppendLine(" vertical-align: top;");
    stringBuilder1.AppendLine(" text-align:right;");
    stringBuilder1.AppendLine("}");
    stringBuilder1.AppendLine(".SubTotales {");
    stringBuilder1.AppendLine(" font-family: \"Courier New\", Courier, monospace;");
    stringBuilder1.AppendLine(" font-size: 10px;");
    stringBuilder1.AppendLine(" font-weight: bold;");
    stringBuilder1.AppendLine(" background-color: #7DC3E7;");
    stringBuilder1.AppendLine("}");
    stringBuilder1.AppendLine(".Totales {");
    stringBuilder1.AppendLine(" font-family: \"Courier New\", Courier, monospace;");
    stringBuilder1.AppendLine(" font-size: 11px;");
    stringBuilder1.AppendLine(" font-weight: bold;");
    stringBuilder1.AppendLine(" background-color: #7DC3E7;");
    stringBuilder1.AppendLine("}");
    stringBuilder1.AppendLine(".Totales2 {");
    stringBuilder1.AppendLine(" font-family: \"Courier New\", Courier, monospace;");
    stringBuilder1.AppendLine(" font-size: 10px;");
    stringBuilder1.AppendLine(" font-weight: bold;");
    stringBuilder1.AppendLine(" background-color: #9BCFEC;");
    stringBuilder1.AppendLine("}");
    stringBuilder1.AppendLine(".Totales3 {");
    stringBuilder1.AppendLine(" font-family: \"Courier New\", Courier, monospace;");
    stringBuilder1.AppendLine(" font-size: 10px;");
    stringBuilder1.AppendLine(" font-weight: bold;");
    stringBuilder1.AppendLine(" background-color: #C1E2F4;");
    stringBuilder1.AppendLine("}");
    stringBuilder1.AppendLine(".Totales4 {");
    stringBuilder1.AppendLine(" font-family: \"Courier New\", Courier, monospace;");
    stringBuilder1.AppendLine(" font-size: 10px;");
    stringBuilder1.AppendLine(" font-weight: bold;");
    stringBuilder1.AppendLine(" background-color: #DEEFFA;");
    stringBuilder1.AppendLine("}");
    stringBuilder1.AppendLine(".Totales5 {");
    stringBuilder1.AppendLine(" font-family: \"Courier New\", Courier, monospace;");
    stringBuilder1.AppendLine(" font-size: 10px;");
    stringBuilder1.AppendLine(" font-weight: bold;");
    stringBuilder1.AppendLine(" background-color: #EDF5FC;");
    stringBuilder1.AppendLine("}");
    stringBuilder1.AppendLine(".Firmas {");
    stringBuilder1.AppendLine(" font-family: Arial, Helvetica, sans-serif;");
    stringBuilder1.AppendLine(" font-size: 10px;");
    stringBuilder1.AppendLine(" font-weight: normal;");
    stringBuilder1.AppendLine("}");
    stringBuilder1.AppendLine(".Proveedor {");
    stringBuilder1.AppendLine(" font-family: \"Courier New\", Courier, monospace;");
    stringBuilder1.AppendLine(" font-size: 14px;");
    stringBuilder1.AppendLine("}");
    stringBuilder1.AppendLine(".Logo {");
    stringBuilder1.AppendLine(" width:10%;");
    stringBuilder1.AppendLine("}");
    stringBuilder1.AppendLine("THEAD { display: table-header-group; }");
    stringBuilder1.AppendLine("@media print{.saltoImpresion{page-break-after: always;}");
    stringBuilder1.AppendLine("</STYLE>");
    stringBuilder1.AppendLine("</HEAD>");
    stringBuilder1.AppendLine("<BODY>");
    stringBuilder1.AppendLine("<TABLE class=Titulo2 width=\"100%\" align=center border=0>");
    stringBuilder1.AppendLine("  <TBODY>");
    stringBuilder1.AppendLine("  <TR vAlign=baseline>");
    stringBuilder1.AppendLine("    <TH vAlign=bottom align=middle width=\"100%\" colSpan=2>");
    stringBuilder1.AppendLine($"      <IMG alt=Logo src={Misc.LogoBase64(PARAMS.Periodo)} align=left class =\"Logo\" ><br>");
    stringBuilder1.AppendLine($"      <P style=\"text-transform:uppercase;\">{PARAMS.NombreLargoMunicipio}</P>");
    stringBuilder1.AppendLine("      <P>Libro diario</P></TH></TR>");
    stringBuilder1.AppendLine("  <TR>");
    stringBuilder1.AppendLine("    <TH colSpan=2>");
    stringBuilder1.AppendLine("      <HR>");
    stringBuilder1.AppendLine("    </TH></TR>");
    stringBuilder1.AppendLine(" <TR class=Normal>");
    stringBuilder1.AppendLine($"   <TH align=left><STRONG>Periodo: </STRONG>{this.PeriInfoCmBx.Text}</TH>");
    stringBuilder1.AppendLine("   <TH>&nbsp;</TH></TR></TBODY></TABLE>");
    foreach (List<Asiento> asiento1 in asientos)
    {
      stringBuilder1.AppendLine("<TABLE cellSpacing=0 cellPadding=1 width=\"100%\" align=center border=1");
      if (this.chkSepararPag.Checked)
        stringBuilder1.AppendLine("class = saltoImpresion ");
      stringBuilder1.AppendLine(">");
      stringBuilder1.AppendLine("  <TBODY>");
      stringBuilder1.AppendLine("  <TR class=Normal vAlign=top align=left>");
      stringBuilder1.AppendLine("    <TH colSpan=4>");
      stringBuilder1.AppendLine("      <TABLE class=Encabezado cellSpacing=0 cellPadding=1 width=\"100%\" ");
      stringBuilder1.AppendLine("        border=0><TBODY>");
      stringBuilder1.AppendLine("        <TR vAlign=top>");
      stringBuilder1.AppendLine($"          <TD align=left width=\"25%\"><STRONG>Asiento:</STRONG> {asiento1[0].CodiAsie.ToString()}</TD>");
      stringBuilder1.AppendLine($"          <TD align=middle width=\"25%\"><STRONG>Fecha:</STRONG> {asiento1[0].FechAsie.ToShortDateString()}</TD>");
      stringBuilder1.AppendLine($"          <TD align=right><STRONG>Tipo:</STRONG> {asiento1[0].CodiTias.ToString()} - {asiento1[0].DetaTias}</TD>");
      stringBuilder1.AppendLine("        </TR>");
      stringBuilder1.AppendLine("        <TR>");
      stringBuilder1.AppendLine("          <TD align=left colSpan=3><STRONG>Detalle del asiento:</STRONG> ");
      stringBuilder1.AppendLine($"            {asiento1[0].DetaAsie}</TD></TR>");
      stringBuilder1.AppendLine("        <TR>");
      if (this.chkMostrarMinuta.Checked)
        stringBuilder1.AppendLine($"          <TD colSpan=3><STRONG>Minuta: </STRONG>{asiento1[0].MinuAsie} </TD></TR>");
      stringBuilder1.AppendLine("  </TBODY>");
      stringBuilder1.AppendLine("</TABLE></TH></TR>");
      stringBuilder1.AppendLine("  <TR class=Encabezado>");
      stringBuilder1.AppendLine("    <TH align=middle>Cuenta</TH>");
      stringBuilder1.AppendLine("    <TH align=middle>Nombre</TH>");
      stringBuilder1.AppendLine("    <TH align=middle>Debe</TH>");
      stringBuilder1.AppendLine("    <TH align=middle>Haber</TH></TR>");
      Decimal num3 = 0M;
      Decimal num4 = 0M;
      foreach (Asiento asiento2 in asiento1)
      {
        stringBuilder1.AppendLine("  <TR class=LineaDato vAlign=top>");
        stringBuilder1.AppendLine($"    <TH width=\"15%\" align=middle>{asiento2.CodiCuco}</TH>");
        stringBuilder1.AppendLine($"    <TH width=\"45%\" align=left>{asiento2.DetaCuco}</TH>");
        if (asiento2.DebeMoas != 0M)
        {
          stringBuilder1.AppendLine($"    <TH width=\"20%\" align=right>{asiento2.DebeMoas.ToString("N")}</TH>");
          num3 += asiento2.DebeMoas;
        }
        else
          stringBuilder1.AppendLine("    <TH align=right> &nbsp </TH>");
        if (asiento2.HabeMoas != 0M)
        {
          stringBuilder1.AppendLine($"    <TH width=\"20%\" align=right>{asiento2.HabeMoas.ToString("N")}</TH></TR>");
          num4 += asiento2.HabeMoas;
        }
        else
          stringBuilder1.AppendLine("    <TH align=right>&nbsp </TH></TR>");
      }
      stringBuilder1.AppendLine("  <TR>");
      stringBuilder1.AppendLine("    <TH align=middle colSpan=2>&nbsp;</TH>");
      stringBuilder1.AppendLine($"    <TH class=Totales align=right>{num3.ToString("N")}</TH> ");
      stringBuilder1.AppendLine($"    <TH class=Totales align=right>{num4.ToString("N")}</TH></TR>");
      stringBuilder1.AppendLine("  </TBODY>");
      stringBuilder1.AppendLine("</TABLE>");
      stringBuilder1.AppendLine("<BR>");
      num2 += num3;
      num1 += num4;
    }
    stringBuilder1.AppendLine("<TABLE cellSpacing=0 cellPadding=1 width=\"50%\" align=center border=1>");
    stringBuilder1.AppendLine("  <THEAD>");
    stringBuilder1.AppendLine("  <TR class=Normal vAlign=top align=left>");
    stringBuilder1.AppendLine("    <TH colSpan=4>");
    stringBuilder1.AppendLine("      <TABLE class=Encabezado cellSpacing=0 cellPadding=1 width=\"100%\" ");
    stringBuilder1.AppendLine("        border=0><TBODY>");
    stringBuilder1.AppendLine("        <TR vAlign=top>");
    stringBuilder1.AppendLine("          <TD align=middle width=\"25%\"><STRONG>TOTAL GENERAL</STRONG></TD>");
    stringBuilder1.AppendLine("        </TR>");
    stringBuilder1.AppendLine("\t\t\t </TABLE>");
    stringBuilder1.AppendLine("\t\t</TH>");
    stringBuilder1.AppendLine("\t </TR>");
    stringBuilder1.AppendLine("  </THEAD>");
    stringBuilder1.AppendLine("  </TBODY>");
    stringBuilder1.AppendLine("  <TR class=Encabezado>");
    stringBuilder1.AppendLine("    <TH align=middle>DEBE</TH>");
    stringBuilder1.AppendLine("    <TH align=middle>HABER</TH>");
    stringBuilder1.AppendLine("\t </TR>");
    stringBuilder1.AppendLine("  <TR>");
    stringBuilder1.AppendLine($"    <TH class=Totales align=right>{num2.ToString("N")}</TH> ");
    stringBuilder1.AppendLine($"    <TH class=Totales align=right>{num1.ToString("N")}</TH></TR>");
    stringBuilder1.AppendLine("  </TBODY>");
    stringBuilder1.AppendLine("</TABLE>");
    stringBuilder1.AppendLine("\t</TBODY>");
    stringBuilder1.AppendLine("</TABLE>");
    stringBuilder1.AppendLine("</BODY>");
    stringBuilder1.AppendLine("</HTML>");
    if (accion == "Vista previa")
    {
      Form form = new Form();
      form.WindowState = FormWindowState.Maximized;
      WebBrowser webBrowser = new WebBrowser();
      webBrowser.Dock = DockStyle.Fill;
      form.Controls.Add((Control) webBrowser);
      webBrowser.DocumentText = stringBuilder1.ToString();
      form.Show((IWin32Window) formulario);
    }
    if (accion == "PDF")
    {
      byte[] pdf = new HtmlToPdfConverter()
      {
        Size = ((PageSize) 1),
        Margins = new PageMargins()
        {
          Top = new float?(1f),
          Bottom = new float?(1f),
          Left = new float?(1f),
          Right = new float?(1f)
        }
      }.GeneratePdf(stringBuilder1.ToString());
      SaveFileDialog saveFileDialog = new SaveFileDialog();
      saveFileDialog.Filter = "Archivo PDF (*.pdf)|*.pdf";
      saveFileDialog.Title = "Guardar Libro diario.pdf";
      saveFileDialog.FileName = "Libro Diario";
      if (saveFileDialog.ShowDialog() == DialogResult.OK)
      {
        File.WriteAllBytes(saveFileDialog.FileName, pdf);
        new frmMensaje((Form) null).mostrarConfirmación("Archivo Guardado.");
      }
    }
    if (!(accion == "TXT"))
      return;
    StringBuilder stringBuilder2 = new StringBuilder();
    foreach (List<Asiento> asiento3 in asientos)
    {
      foreach (Asiento asiento4 in asiento3)
        stringBuilder2.AppendLine($"{asiento4.PeriInfo.ToString()}|{asiento4.CodiAsie.ToString()}|{this.expert.fechaTxt(asiento4.FechAsie).Replace("'", "")}|{asiento4.CodiTias.ToString()}|{asiento4.DetaTias.ToString()}|{asiento4.CodiCuco.ToString()}|{asiento4.DetaCuco.ToString()}|{asiento4.DebeMoas.ToString()}|{asiento4.HabeMoas.ToString()}|");
    }
    SaveFileDialog saveFileDialog1 = new SaveFileDialog();
    saveFileDialog1.Filter = "Archivo TXT (*.txt)|*.txt";
    saveFileDialog1.Title = "Guardar Libro diario.txt";
    saveFileDialog1.FileName = "Libro Diario";
    if (saveFileDialog1.ShowDialog() == DialogResult.OK)
    {
      using (StreamWriter streamWriter = new StreamWriter(saveFileDialog1.FileName))
      {
        streamWriter.Write(stringBuilder2.ToString());
        new frmMensaje((Form) null).mostrarConfirmación("Archivo Guardado.");
      }
    }
  }
}
