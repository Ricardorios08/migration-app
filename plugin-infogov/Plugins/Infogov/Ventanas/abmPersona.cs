// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Ventanas.abmPersona
// Assembly: plugin-infogov, Version=1.0.0.18780, Culture=neutral, PublicKeyToken=null
// MVID: 33F9E52C-1C9C-4132-80FE-D29F95E246A9
// Assembly location: C:\nomade\para copiar\plugin-infogov.dll

using DevExpress.XtraReports;
using DevExpress.XtraReports.UI;
using InfoGov.Common;
using InfoGov.Core;
using InfoGov.Forms;
using InfoGov.Metro.Controls;
using InfoGov.Plugins.Infogov.Entidades;
using InfoGov.Plugins.Infogov.Expertos;
using InfoGov.Plugins.Infogov.Reportes.Personas;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Infogov.Ventanas;

public class abmPersona : EntityForm<Persona>
{
  private BindingSource bstels = new BindingSource();
  private DataGridViewComboBoxColumn coltTipoTele;
  private DataGridViewTextBoxColumn coltNumeTele;
  private MetroLabel lblBorrarTel;
  private MetroLabel lblAgregarTel;
  private MetroTabPage panelDomicilio;
  private MetroTextBox NacionalidadText;
  private MetroLabel lbNacionalidad;
  private MetroTextBox DeptoText;
  private MetroLabel lbDepartamento;
  private MetroDetaBox BarrioDetaText;
  private MetroDetaBox LocalidadDetaText;
  private MetroDetaBox CalleDetaText;
  private MetroTextBox CodiPostalText;
  private MetroLabel metroLabel1;
  private MetroTextBox UbicacionText;
  private MetroLabel metroLabel7;
  private MetroLink LocalidadLink;
  private MetroLabel metroLabel8;
  private MetroTextBox CasaDireText;
  private MetroLabel metroLabel10;
  private MetroTextBox ManzDireText;
  private MetroLabel metroLabel12;
  private MetroTextBox NumeDireText;
  private MetroLink metroLink1;
  private MetroLink CalleLink;
  private MetroTextBox txtCelular;
  private MetroLabel metroLabel14;
  private MetroTextBox txtTelefono;
  private MetroLabel metroLabel15;
  private MetroComboBox ComboFiscal;
  private MetroLabel metroLabel16;
  private MetroComboBox ComboEstadoCivil;
  private MetroLabel metroLabel17;
  private MetroLabel lbCondicion;
  private MetroComboBox ComboCondicion;
  private MetroCheckBox CheckBoxCargaManual;
  private MetroCheckBox chkFallPers;
  private DataGridViewTextBoxColumn coltDetaTele;
  private MetroMaskedTextBox CucuPersMsk;
  private MetroLabel metroLabel2;
  private MetroTabControl Panel;
  private MetroTabPage mtabDatos;
  private MetroTabPage mtabTelefonos;
  private MetroLabel metroLabel9;
  private MetroTextBox MailPersText;
  private MetroMaskedTextBox NudoPersMsk;
  private MetroComboBox CodiTidoCbo;
  private MetroLabel metroLabel6;
  private MetroLabel metroLabel5;
  private MetroLabel metroLabel4;
  private MetroRadioButton SefePersRb;
  private MetroRadioButton SemaPersRb;
  private MetroCheckBox JuriPersChk;
  private MetroLabel metroLabel11;
  private MetroDateTextBox FenaPersDate;
  private MetroDataGridView gridTelefonos;
  private MetroLabel metroLabel3;
  private MetroTextBox DetaPersText;
  private MetroLink linkGenerar;
  private MetroPanel panelDatos;

  public abmPersona()
    : base("Persona")
  {
    this.InitializeComponent();
    if (PARAMS.Municipio != "Maipú")
    {
      this.llenarComboPosiFiscal();
      this.llenarComboEstadoCivil();
    }
    this.addDetaTextBoxEvents();
    if (PARAMS.Municipio != "Guaymallén" && PARAMS.Municipio != "Alvear" && PARAMS.Municipio != "Tunuyán" && PARAMS.Municipio != "Tupungato" && PARAMS.Municipio != "Malargüe" && PARAMS.Municipio != "SantaRosa" && PARAMS.Municipio != "SanMartín" && PARAMS.Municipio != "Maipú")
      this.Panel.Controls.Remove((Control) this.panelDomicilio);
    if (PARAMS.Municipio == "Guaymallén" || PARAMS.Municipio == "SantaRosa" || PARAMS.Municipio == "Alvear" || PARAMS.Municipio == "Tunuyán" || PARAMS.Municipio == "Tupungato" || PARAMS.Municipio == "Malargüe" || PARAMS.Municipio == "SanMartín")
      this.Panel.Controls.Remove((Control) this.mtabTelefonos);
    if (PARAMS.Municipio == "Alvear")
    {
      this.lbNacionalidad.Visible = true;
      this.NacionalidadText.Visible = true;
      this.lbDepartamento.Visible = true;
      this.DeptoText.Visible = true;
    }
    if (PARAMS.Municipio == "Maipú")
    {
      this.metroLabel16.Visible = this.metroLabel15.Visible = false;
      this.metroLabel17.Visible = this.metroLabel14.Visible = false;
      this.ComboEstadoCivil.Visible = false;
      this.ComboFiscal.Visible = false;
      this.txtTelefono.Visible = this.txtCelular.Visible = false;
      this.metroLabel9.Location = new Point(101, 195);
      this.MailPersText.Location = new Point(166, 191);
    }
    if (PARAMS.Municipio == "SantaRosa")
    {
      this.lbDepartamento.Visible = true;
      this.DeptoText.Visible = true;
    }
    if (PARAMS.Municipio == "Tunuyán")
    {
      this.llenarComboCondicion();
      this.lbCondicion.Visible = true;
      this.ComboCondicion.Visible = true;
    }
    this.chkFallPers.Visible = this.chkFallPers.Enabled = PARAMS.Municipio == "SanMartín";
  }

  protected override void initializeWindow(ActionMode mode, bool firstTime)
  {
    if (firstTime)
    {
      this.CucuPersMsk.ExternalValidation = new Func<string>(this.CucuPersMsk_ExternalValidation);
      this.llenarComboTipoDocumento();
      this.llenarComboTipoTelefono();
      this.gridTelefonos.EditMode = DataGridViewEditMode.EditOnKeystrokeOrF2;
      this.gridTelefonos.DataSource = (object) this.bstels;
      this.gridTelefonos.AllowUserToAddRows = false;
      this.gridTelefonos.AllowUserToDeleteRows = false;
      this.Shown += new EventHandler(this.abmPersona2_Shown);
      this.gridTelefonos.EditingControlShowing += new DataGridViewEditingControlShowingEventHandler(this.gridTelefonos_EditingControlShowing);
    }
    if (mode != ActionMode.View)
      return;
    this.Panel.SelectTab(0);
  }

  private void abmPersona2_Shown(object sender, EventArgs e) => this.Panel.SelectedIndex = 0;

  protected override void changeControlsMode(ActionMode mode)
  {
    this.CucuPersMsk.Enabled = false;
    this.panelDatos.Enabled = mode == ActionMode.New || mode == ActionMode.Edit;
    this.panelDomicilio.Enabled = mode == ActionMode.New || mode == ActionMode.Edit;
    this.gridTelefonos.ReadOnly = mode != ActionMode.New && mode != ActionMode.Edit;
    this.gridTelefonos.AllowUserToDeleteRows = mode == ActionMode.New || mode == ActionMode.Edit;
    this.lblAgregarTel.Visible = this.lblBorrarTel.Visible = mode == ActionMode.New || mode == ActionMode.Edit;
    this.linkGenerar.Enabled = mode == ActionMode.New;
    this.CodiTidoCbo.Enabled = mode == ActionMode.New || mode == ActionMode.Edit;
    this.NudoPersMsk.Enabled = mode == ActionMode.New || mode == ActionMode.Edit;
    this.SefePersRb.Enabled = mode == ActionMode.New || mode == ActionMode.Edit;
    this.SemaPersRb.Enabled = mode == ActionMode.New || mode == ActionMode.Edit;
    this.JuriPersChk.Enabled = this.CheckBoxCargaManual.Enabled = mode == ActionMode.New;
    this.NacionalidadText.Enabled = mode == ActionMode.New || mode == ActionMode.Edit;
    this.ComboCondicion.Enabled = mode == ActionMode.New || mode == ActionMode.Edit;
    this.chkFallPers.Enabled = mode == ActionMode.New || mode == ActionMode.Edit;
  }

  protected override void showData()
  {
    this.CucuPersMsk.LongText = this.enti.CucuPers;
    this.DetaPersText.Text = this.enti.DetaPers;
    this.JuriPersChk.Checked = this.enti.JuriPers;
    this.SefePersRb.Checked = !this.enti.SexoPers;
    this.SemaPersRb.Checked = this.enti.SexoPers;
    int num1;
    if (PARAMS.Municipio == "Maipú")
    {
      this.CodiTidoCbo.SelectedIndex = (int) this.enti.CodiTido;
      MetroDetaBox barrioDetaText = this.BarrioDetaText;
      num1 = this.enti.CodiBarr;
      string str = num1.ToString();
      barrioDetaText.TextCodi = str;
      this.BarrioDetaText.TextDeta = this.enti.DebaPers;
      this.LocalidadDetaText.TextDeta = this.enti.DeloPers;
    }
    else
    {
      MetroComboBox codiTidoCbo = this.CodiTidoCbo;
      short num2 = this.enti.CodiTido;
      string str1 = num2.ToString();
      codiTidoCbo.SelectedValue = (object) str1;
      MetroDetaBox barrioDetaText = this.BarrioDetaText;
      num2 = this.enti.CobrPers;
      string str2 = num2.ToString();
      barrioDetaText.TextCodi = str2;
      this.BarrioDetaText.TextDeta = this.enti.DebrPers;
      this.LocalidadDetaText.TextDeta = this.enti.DelrPers;
    }
    MetroMaskedTextBox nudoPersMsk = this.NudoPersMsk;
    num1 = this.enti.NudoPers;
    string str3 = num1.ToString();
    nudoPersMsk.Text = str3;
    this.FenaPersDate.Date = this.enti.FenaPers;
    this.MailPersText.Text = this.enti.MailPers;
    if (PARAMS.Municipio != "Guaymallén" && PARAMS.Municipio != "SantaRosa" && PARAMS.Municipio != "Alvear" && PARAMS.Municipio != "Tunuyán" && PARAMS.Municipio != "Tupungato" && PARAMS.Municipio != "Malargüe" && PARAMS.Municipio != "SanMartín")
    {
      ((ExpPersona) this.expert).cargarTelefonos(this.enti);
      this.bstels.DataSource = (object) this.enti.Telefonos;
      this.gridTelefonos.Refresh();
      this.gridTelefonos.RowHeadersVisible = this.windowMode == ActionMode.New || this.windowMode == ActionMode.Edit;
    }
    if (PARAMS.Municipio != "SantaRosa")
      ((ExpPersona) this.expert).cargarDomicilio(this.enti);
    MetroDetaBox calleDetaText = this.CalleDetaText;
    num1 = this.enti.CocrPers;
    string str4 = num1.ToString();
    calleDetaText.TextCodi = str4;
    this.CalleDetaText.TextDeta = this.enti.DecrPers;
    MetroTextBox numeDireText = this.NumeDireText;
    num1 = this.enti.NurePers;
    string str5 = num1.ToString();
    numeDireText.Text = str5;
    this.ManzDireText.Text = this.enti.MarePers;
    this.CasaDireText.Text = this.enti.CarePers;
    this.UbicacionText.Text = this.enti.UbrePers;
    if (PARAMS.Municipio != "Maipú")
      this.CodiPostalText.Text = this.enti.CoprPers;
    if (PARAMS.Municipio == "Alvear")
    {
      this.NacionalidadText.Text = this.enti.NaciPers;
      this.DeptoText.Text = this.enti.DptoPers;
    }
    if (PARAMS.Municipio == "SantaRosa")
      this.DeptoText.Text = this.enti.DptoPers;
    MetroDetaBox localidadDetaText = this.LocalidadDetaText;
    num1 = this.enti.CodiLoca;
    string str6 = num1.ToString();
    localidadDetaText.TextCodi = str6;
    this.txtTelefono.Text = this.enti.TelePers;
    this.txtCelular.Text = this.enti.CeluPers;
    this.ComboEstadoCivil.SelectedItem = (object) this.enti.CodiEsci;
    this.ComboFiscal.SelectedValue = (object) this.enti.CodiPofi;
    if (PARAMS.Municipio == "Tunuyán")
      this.ComboCondicion.SelectedIndex = (int) this.enti.CodiCond;
    if (PARAMS.Municipio != "Tupungato")
      this.butPrint.Visible = this.butPrint.Enabled = false;
    if (!(PARAMS.Municipio == "SanMartín"))
      return;
    this.chkFallPers.Checked = this.enti.FallPers;
  }

  protected override void readData()
  {
    this.enti.CucuPers = this.CucuPersMsk.LongText;
    this.enti.DetaPers = this.DetaPersText.Text.Replace(",", "");
    this.enti.JuriPers = this.JuriPersChk.Checked;
    this.enti.SexoPers = this.SemaPersRb.Checked;
    this.enti.CodiTido = ((TipoDocumento) this.CodiTidoCbo.SelectedItem).CodiTido;
    this.enti.NudoPers = this.NudoPersMsk.IntText;
    this.enti.FenaPers = this.FenaPersDate.Date;
    this.enti.MailPers = this.MailPersText.Text;
    foreach (Telefono telefono in this.enti.Telefonos)
    {
      if (telefono.CodiTele == 0)
        telefono.status = EntityStatus.New;
      else
        telefono.status = EntityStatus.Modified;
    }
    this.enti.CocrPers = this.CalleDetaText.TextCodi.Length == 0 ? 0 : int.Parse(this.CalleDetaText.TextCodi);
    this.enti.DecrPers = this.CalleDetaText.TextDeta;
    this.enti.NurePers = this.NumeDireText.Text.Length == 0 ? 0 : int.Parse(this.NumeDireText.Text);
    this.enti.CobrPers = this.BarrioDetaText.TextCodi.Length == 0 ? (short) 0 : short.Parse(this.BarrioDetaText.TextCodi);
    this.enti.DebrPers = this.BarrioDetaText.TextDeta;
    if (PARAMS.Municipio != "Maipú")
      this.enti.MarePers = this.ManzDireText.Text;
    this.enti.CarePers = this.CasaDireText.Text;
    this.enti.UbrePers = this.UbicacionText.Text;
    this.enti.ColrPers = this.LocalidadDetaText.TextCodi.Length == 0 ? (short) 0 : short.Parse(this.LocalidadDetaText.TextCodi);
    this.enti.DelrPers = this.LocalidadDetaText.TextDeta;
    this.enti.CoprPers = this.CodiPostalText.Text;
    if (PARAMS.Municipio == "Alvear")
    {
      this.enti.NaciPers = this.NacionalidadText.Text;
      this.enti.DptoPers = this.DeptoText.Text;
    }
    if (PARAMS.Municipio == "SantaRosa")
      this.enti.DptoPers = this.DeptoText.Text;
    if (PARAMS.Municipio != "Maipú")
    {
      this.enti.TelePers = this.txtTelefono.Text;
      this.enti.CeluPers = this.txtCelular.Text;
      this.enti.CodiPofi = (short) ((PosicionFiscal) this.ComboFiscal.SelectedItem).CodiPofi;
      this.enti.CodiEsci = (short) ((EstadoCivil) this.ComboEstadoCivil.SelectedItem).CodiEsci;
    }
    if (PARAMS.Municipio == "Tunuyán")
      this.enti.CodiCond = (short) this.ComboCondicion.SelectedIndex;
    if (!(PARAMS.Municipio == "SanMartín"))
      return;
    this.enti.FallPers = this.chkFallPers.Checked;
  }

  protected override bool isDataValid()
  {
    StringBuilder stringBuilder = new StringBuilder();
    if (this.windowMode == ActionMode.New)
      stringBuilder.Append(this.validarCuil());
    if (this.DetaPersText.Text.Trim().Length == 0 || !this.DetaPersText.IsValid)
      stringBuilder.AppendLine("Apellido y Nombre incorrecto.");
    if (!this.FenaPersDate.IsValid)
      stringBuilder.AppendLine("Fecha de nacimiento incorrecta.");
    if (!this.NudoPersMsk.IsValid)
      stringBuilder.AppendLine("Número de documento incorrecto.");
    if (!this.MailPersText.IsValid)
      stringBuilder.AppendLine("Mail incorrecto.");
    for (int index = 0; index < this.bstels.Count; ++index)
    {
      Telefono bstel = (Telefono) this.bstels[index];
      if (bstel.TipoTelefono.Trim() == "")
      {
        stringBuilder.AppendLine($"Tipo teléfono incorrecto. (Fila:{index.ToString()})");
        break;
      }
      if (bstel.NumeTele.Trim() == "" || bstel.NumeTele.Trim() == "0")
      {
        stringBuilder.AppendLine($"Número teléfono incorrecto. (Fila {index.ToString()})");
        break;
      }
    }
    if (PARAMS.Municipio == "Tunuyán" && this.ComboCondicion.SelectedIndex == 1)
    {
      string str = new ExpPersona().tieneInmueble(this.CucuPersMsk.LongText);
      if (str != "0")
        stringBuilder.AppendLine("La persona posee uno o mas inmuebles a su nombre: " + str);
    }
    if (stringBuilder.Length > 0)
      new frmMensaje((Form) this).mostrarError(stringBuilder.ToString());
    return stringBuilder.Length == 0;
  }

  private void gridTelefonos_CellEnter(object sender, DataGridViewCellEventArgs e)
  {
    if (this.gridTelefonos.CurrentCell == null)
      return;
    this.gridTelefonos.CurrentCell.Style.SelectionBackColor = Color.RoyalBlue;
  }

  private void gridTelefonos_CellLeave(object sender, DataGridViewCellEventArgs e)
  {
    if (this.gridTelefonos.CurrentCell == null)
      return;
    this.gridTelefonos.CurrentCell.Style.SelectionBackColor = Color.DodgerBlue;
  }

  private void metroTabControl1_SelectedIndexChanged(object sender, EventArgs e)
  {
    if (this.Panel.SelectedTab != this.mtabTelefonos)
      return;
    this.gridTelefonos.Focus();
  }

  private void gridTelefonos_KeyDown(object sender, KeyEventArgs e)
  {
    if (this.windowMode != ActionMode.New && this.windowMode != ActionMode.Edit || e.KeyData != Keys.Add)
      return;
    this.agregarTelefono();
  }

  private void agregarTelefono()
  {
    this.bstels.Add((object) new Telefono()
    {
      CucuPers = this.enti.CucuPers,
      CodiTele = 0,
      NumeTele = "",
      DetaTele = "",
      TipoTele = TipoTelefono.Fijo
    });
  }

  private void gridTelefonos_EditingControlShowing(
    object sender,
    DataGridViewEditingControlShowingEventArgs e)
  {
    if (this.gridTelefonos.Columns[this.gridTelefonos.CurrentCell.ColumnIndex] == this.coltTipoTele)
    {
      e.Control.KeyPress -= new KeyPressEventHandler(this.coltTipoTele_KeyPress);
      e.Control.KeyPress -= new KeyPressEventHandler(this.coltDetaTele_KeyPress);
      e.Control.KeyPress -= new KeyPressEventHandler(this.coltNumeTele_KeyPress);
      e.Control.KeyPress += new KeyPressEventHandler(this.coltTipoTele_KeyPress);
    }
    if (this.gridTelefonos.Columns[this.gridTelefonos.CurrentCell.ColumnIndex] == this.coltNumeTele)
    {
      ((TextBoxBase) e.Control).MaxLength = 20;
      e.Control.KeyPress -= new KeyPressEventHandler(this.coltTipoTele_KeyPress);
      e.Control.KeyPress -= new KeyPressEventHandler(this.coltDetaTele_KeyPress);
      e.Control.KeyPress -= new KeyPressEventHandler(this.coltNumeTele_KeyPress);
      e.Control.KeyPress += new KeyPressEventHandler(this.coltNumeTele_KeyPress);
    }
    if (this.gridTelefonos.Columns[this.gridTelefonos.CurrentCell.ColumnIndex] != this.coltDetaTele)
      return;
    ((TextBoxBase) e.Control).MaxLength = 40;
    e.Control.KeyPress -= new KeyPressEventHandler(this.coltTipoTele_KeyPress);
    e.Control.KeyPress -= new KeyPressEventHandler(this.coltDetaTele_KeyPress);
    e.Control.KeyPress -= new KeyPressEventHandler(this.coltNumeTele_KeyPress);
    e.Control.KeyPress += new KeyPressEventHandler(this.coltDetaTele_KeyPress);
  }

  private void coltTipoTele_KeyPress(object sender, KeyPressEventArgs e)
  {
    if (e.KeyChar == '+')
    {
      e.Handled = true;
      this.agregarTelefono();
    }
    else
    {
      if (char.IsControl(e.KeyChar) || char.IsDigit(e.KeyChar))
        return;
      e.Handled = true;
    }
  }

  private void coltNumeTele_KeyPress(object sender, KeyPressEventArgs e)
  {
    if (e.KeyChar == '+')
    {
      e.Handled = true;
      this.agregarTelefono();
    }
    else
    {
      if (char.IsControl(e.KeyChar) || char.IsDigit(e.KeyChar))
        return;
      e.Handled = true;
    }
  }

  private void coltDetaTele_KeyPress(object sender, KeyPressEventArgs e)
  {
    if (e.KeyChar == '+')
    {
      e.Handled = true;
      this.agregarTelefono();
    }
    else
      e.Handled = false;
  }

  private void linkGenerar_Click(object sender, EventArgs e)
  {
    string nudo = this.NudoPersMsk.Text.Trim();
    if (nudo.Length <= 0)
      return;
    this.CucuPersMsk.Text = Misc.generarCuil(nudo, this.SemaPersRb.Checked);
  }

  private string CucuPersMsk_ExternalValidation()
  {
    string text = this.validarCuil();
    if (text.Length == 0)
    {
      this.NudoPersMsk.Text = this.CucuPersMsk.Text.Substring(2, 8);
      this.SemaPersRb.Checked = this.CucuPersMsk.Text == Misc.generarCuil(this.NudoPersMsk.Text, true);
      this.SefePersRb.Checked = !this.SemaPersRb.Checked;
    }
    else
    {
      int num = (int) MessageBox.Show(text);
    }
    return text;
  }

  public string validarCuil()
  {
    StringBuilder stringBuilder = new StringBuilder();
    if (!this.JuriPersChk.Checked && !this.CheckBoxCargaManual.Checked && !Misc.cuilValido(this.CucuPersMsk.Text.Trim()))
    {
      stringBuilder.AppendLine("El Cuit/Cuil ingresado no es válido.");
    }
    else
    {
      string str = ((ExpPersona) this.expert).ExisteCucu(this.CucuPersMsk.Text.Trim());
      if (str.Length > 0 && this.CucuPersMsk.Text.Trim() != "0")
        stringBuilder.AppendLine($"El Cuit/Cuil ingresado ya existe en la base de datos. ({str})");
    }
    return stringBuilder.ToString();
  }

  private void InitializeComponent()
  {
    this.CucuPersMsk = new MetroMaskedTextBox();
    this.metroLabel2 = new MetroLabel();
    this.Panel = new MetroTabControl();
    this.mtabDatos = new MetroTabPage();
    this.panelDatos = new MetroPanel();
    this.CheckBoxCargaManual = new MetroCheckBox();
    this.lbCondicion = new MetroLabel();
    this.ComboCondicion = new MetroComboBox();
    this.ComboEstadoCivil = new MetroComboBox();
    this.metroLabel17 = new MetroLabel();
    this.ComboFiscal = new MetroComboBox();
    this.metroLabel16 = new MetroLabel();
    this.txtCelular = new MetroTextBox();
    this.metroLabel14 = new MetroLabel();
    this.txtTelefono = new MetroTextBox();
    this.metroLabel15 = new MetroLabel();
    this.NacionalidadText = new MetroTextBox();
    this.lbNacionalidad = new MetroLabel();
    this.linkGenerar = new MetroLink();
    this.JuriPersChk = new MetroCheckBox();
    this.metroLabel3 = new MetroLabel();
    this.SemaPersRb = new MetroRadioButton();
    this.SefePersRb = new MetroRadioButton();
    this.DetaPersText = new MetroTextBox();
    this.metroLabel4 = new MetroLabel();
    this.metroLabel5 = new MetroLabel();
    this.FenaPersDate = new MetroDateTextBox();
    this.metroLabel6 = new MetroLabel();
    this.metroLabel11 = new MetroLabel();
    this.CodiTidoCbo = new MetroComboBox();
    this.metroLabel9 = new MetroLabel();
    this.NudoPersMsk = new MetroMaskedTextBox();
    this.MailPersText = new MetroTextBox();
    this.panelDomicilio = new MetroTabPage();
    this.BarrioDetaText = new MetroDetaBox();
    this.LocalidadDetaText = new MetroDetaBox();
    this.CalleDetaText = new MetroDetaBox();
    this.CodiPostalText = new MetroTextBox();
    this.metroLabel1 = new MetroLabel();
    this.UbicacionText = new MetroTextBox();
    this.metroLabel7 = new MetroLabel();
    this.LocalidadLink = new MetroLink();
    this.metroLabel8 = new MetroLabel();
    this.CasaDireText = new MetroTextBox();
    this.metroLabel10 = new MetroLabel();
    this.ManzDireText = new MetroTextBox();
    this.metroLabel12 = new MetroLabel();
    this.NumeDireText = new MetroTextBox();
    this.metroLink1 = new MetroLink();
    this.CalleLink = new MetroLink();
    this.DeptoText = new MetroTextBox();
    this.lbDepartamento = new MetroLabel();
    this.mtabTelefonos = new MetroTabPage();
    this.lblBorrarTel = new MetroLabel();
    this.lblAgregarTel = new MetroLabel();
    this.gridTelefonos = new MetroDataGridView();
    this.coltTipoTele = new DataGridViewComboBoxColumn();
    this.coltNumeTele = new DataGridViewTextBoxColumn();
    this.coltDetaTele = new DataGridViewTextBoxColumn();
    this.chkFallPers = new MetroCheckBox();
    this.Panel.SuspendLayout();
    this.mtabDatos.SuspendLayout();
    this.panelDatos.SuspendLayout();
    this.panelDomicilio.SuspendLayout();
    this.mtabTelefonos.SuspendLayout();
    ((ISupportInitialize) this.gridTelefonos).BeginInit();
    this.SuspendLayout();
    this.CucuPersMsk.CompleteMaskRequired = true;
    this.CucuPersMsk.Location = new Point(141, 125);
    this.CucuPersMsk.Margin = new Padding(3, 4, 3, 4);
    this.CucuPersMsk.Mask = "00-00000000-0";
    this.CucuPersMsk.Name = "CucuPersMsk";
    this.CucuPersMsk.Size = new Size(115, 23);
    this.CucuPersMsk.TabIndex = 7;
    this.CucuPersMsk.Text = "0";
    this.CucuPersMsk.TextAlign = HorizontalAlignment.Center;
    this.metroLabel2.AutoSize = false;
    this.metroLabel2.Location = new Point(76, 129);
    this.metroLabel2.Margin = new Padding(3, 4, 3, 4);
    this.metroLabel2.Name = "metroLabel2";
    this.metroLabel2.Size = new Size(59, 19);
    this.metroLabel2.TabIndex = 5;
    this.metroLabel2.Text = "Cuit/Cuil";
    this.Panel.Anchor = AnchorStyles.Top | AnchorStyles.Bottom | AnchorStyles.Left | AnchorStyles.Right;
    this.Panel.Controls.Add((Control) this.mtabDatos);
    this.Panel.Controls.Add((Control) this.panelDomicilio);
    this.Panel.Controls.Add((Control) this.mtabTelefonos);
    this.Panel.Location = new Point(7, 57);
    this.Panel.Name = "Panel";
    this.Panel.Size = new Size(672, 302);
    this.Panel.TabIndex = 8;
    this.Panel.SelectedIndexChanged += new EventHandler(this.metroTabControl1_SelectedIndexChanged);
    this.mtabDatos.Controls.Add((Control) this.panelDatos);
    this.mtabDatos.Location = new Point(4, 35);
    this.mtabDatos.Name = "mtabDatos";
    this.mtabDatos.Size = new Size(664, 263);
    this.mtabDatos.TabIndex = 0;
    this.mtabDatos.Text = "Datos";
    this.panelDatos.Anchor = AnchorStyles.Top | AnchorStyles.Bottom | AnchorStyles.Left | AnchorStyles.Right;
    this.panelDatos.Controls.Add((Control) this.chkFallPers);
    this.panelDatos.Controls.Add((Control) this.CheckBoxCargaManual);
    this.panelDatos.Controls.Add((Control) this.lbCondicion);
    this.panelDatos.Controls.Add((Control) this.ComboCondicion);
    this.panelDatos.Controls.Add((Control) this.ComboEstadoCivil);
    this.panelDatos.Controls.Add((Control) this.metroLabel17);
    this.panelDatos.Controls.Add((Control) this.ComboFiscal);
    this.panelDatos.Controls.Add((Control) this.metroLabel16);
    this.panelDatos.Controls.Add((Control) this.txtCelular);
    this.panelDatos.Controls.Add((Control) this.metroLabel14);
    this.panelDatos.Controls.Add((Control) this.txtTelefono);
    this.panelDatos.Controls.Add((Control) this.metroLabel15);
    this.panelDatos.Controls.Add((Control) this.NacionalidadText);
    this.panelDatos.Controls.Add((Control) this.lbNacionalidad);
    this.panelDatos.Controls.Add((Control) this.CucuPersMsk);
    this.panelDatos.Controls.Add((Control) this.linkGenerar);
    this.panelDatos.Controls.Add((Control) this.JuriPersChk);
    this.panelDatos.Controls.Add((Control) this.metroLabel3);
    this.panelDatos.Controls.Add((Control) this.SemaPersRb);
    this.panelDatos.Controls.Add((Control) this.metroLabel2);
    this.panelDatos.Controls.Add((Control) this.SefePersRb);
    this.panelDatos.Controls.Add((Control) this.DetaPersText);
    this.panelDatos.Controls.Add((Control) this.metroLabel4);
    this.panelDatos.Controls.Add((Control) this.metroLabel5);
    this.panelDatos.Controls.Add((Control) this.FenaPersDate);
    this.panelDatos.Controls.Add((Control) this.metroLabel6);
    this.panelDatos.Controls.Add((Control) this.metroLabel11);
    this.panelDatos.Controls.Add((Control) this.CodiTidoCbo);
    this.panelDatos.Controls.Add((Control) this.metroLabel9);
    this.panelDatos.Controls.Add((Control) this.NudoPersMsk);
    this.panelDatos.Controls.Add((Control) this.MailPersText);
    this.panelDatos.Location = new Point(0, 3);
    this.panelDatos.Name = "panelDatos";
    this.panelDatos.Size = new Size(656, 260);
    this.panelDatos.TabIndex = 23;
    this.CheckBoxCargaManual.AutoSize = false;
    this.CheckBoxCargaManual.Location = new Point(333, (int) sbyte.MaxValue);
    this.CheckBoxCargaManual.Name = "CheckBoxCargaManual";
    this.CheckBoxCargaManual.Size = new Size(108, 19);
    this.CheckBoxCargaManual.TabIndex = 76;
    this.CheckBoxCargaManual.Text = "Carga Manual";
    this.CheckBoxCargaManual.CheckedChanged += new EventHandler(this.CheckBoxCargaManual_CheckedChanged);
    this.lbCondicion.AutoSize = false;
    this.lbCondicion.Location = new Point(276, 162);
    this.lbCondicion.Margin = new Padding(3, 4, 3, 4);
    this.lbCondicion.Name = "lbCondicion";
    this.lbCondicion.Size = new Size(68, 19);
    this.lbCondicion.TabIndex = 75;
    this.lbCondicion.Text = "Condición";
    this.lbCondicion.Visible = false;
    this.ComboCondicion.FormattingEnabled = false;
    this.ComboCondicion.Location = new Point(350, 158);
    this.ComboCondicion.Margin = new Padding(3, 4, 3, 4);
    this.ComboCondicion.Name = "ComboCondicion";
    this.ComboCondicion.Size = new Size(266, 23);
    this.ComboCondicion.TabIndex = 10;
    this.ComboCondicion.Visible = false;
    this.ComboEstadoCivil.FormattingEnabled = false;
    this.ComboEstadoCivil.Location = new Point(436, 96 /*0x60*/);
    this.ComboEstadoCivil.Margin = new Padding(3, 4, 3, 4);
    this.ComboEstadoCivil.Name = "ComboEstadoCivil";
    this.ComboEstadoCivil.Size = new Size(180, 23);
    this.ComboEstadoCivil.TabIndex = 6;
    this.metroLabel17.AutoSize = false;
    this.metroLabel17.Location = new Point(354, 98);
    this.metroLabel17.Margin = new Padding(3, 4, 3, 4);
    this.metroLabel17.Name = "metroLabel17";
    this.metroLabel17.Size = new Size(76, 19);
    this.metroLabel17.TabIndex = 73;
    this.metroLabel17.Text = "Estado Civil";
    this.ComboFiscal.FormattingEnabled = false;
    this.ComboFiscal.Location = new Point(373, 65);
    this.ComboFiscal.Margin = new Padding(3, 4, 3, 4);
    this.ComboFiscal.Name = "ComboFiscal";
    this.ComboFiscal.Size = new Size(243, 23);
    this.ComboFiscal.TabIndex = 4;
    this.metroLabel16.AutoSize = false;
    this.metroLabel16.Location = new Point(276, 69);
    this.metroLabel16.Margin = new Padding(3, 4, 3, 4);
    this.metroLabel16.Name = "metroLabel16";
    this.metroLabel16.Size = new Size(91, 19);
    this.metroLabel16.TabIndex = 70;
    this.metroLabel16.Text = "Posición Fiscal";
    this.txtCelular.AllowEmpty = true;
    this.txtCelular.Location = new Point(292, 191);
    this.txtCelular.MaxLength = 20;
    this.txtCelular.Name = "txtCelular";
    this.txtCelular.Size = new Size(101, 23);
    this.txtCelular.TabIndex = 12;
    this.metroLabel14.AutoSize = false;
    this.metroLabel14.Location = new Point(251, 195);
    this.metroLabel14.Margin = new Padding(3, 4, 3, 4);
    this.metroLabel14.Name = "metroLabel14";
    this.metroLabel14.Size = new Size(32 /*0x20*/, 19);
    this.metroLabel14.TabIndex = 67;
    this.metroLabel14.Text = "Cel.";
    this.txtTelefono.AllowEmpty = true;
    this.txtTelefono.Location = new Point(141, 191);
    this.txtTelefono.MaxLength = 20;
    this.txtTelefono.Name = "txtTelefono";
    this.txtTelefono.Size = new Size(101, 23);
    this.txtTelefono.TabIndex = 11;
    this.metroLabel15.AutoSize = false;
    this.metroLabel15.Location = new Point(74, 195);
    this.metroLabel15.Margin = new Padding(3, 4, 3, 4);
    this.metroLabel15.Name = "metroLabel15";
    this.metroLabel15.Size = new Size(58, 19);
    this.metroLabel15.TabIndex = 66;
    this.metroLabel15.Text = "Telefono";
    this.NacionalidadText.AllowEmpty = true;
    this.NacionalidadText.Location = new Point(488, 191);
    this.NacionalidadText.MaxLength = 20;
    this.NacionalidadText.Name = "NacionalidadText";
    this.NacionalidadText.Size = new Size(128 /*0x80*/, 23);
    this.NacionalidadText.TabIndex = 13;
    this.NacionalidadText.Visible = false;
    this.lbNacionalidad.AutoSize = false;
    this.lbNacionalidad.Location = new Point(398, 195);
    this.lbNacionalidad.Margin = new Padding(3, 4, 3, 4);
    this.lbNacionalidad.Name = "lbNacionalidad";
    this.lbNacionalidad.Size = new Size(88, 19);
    this.lbNacionalidad.TabIndex = 22;
    this.lbNacionalidad.Text = "Nacionalidad";
    this.lbNacionalidad.TextAlign = ContentAlignment.TopRight;
    this.lbNacionalidad.Visible = false;
    this.linkGenerar.FontSize = 12f;
    this.linkGenerar.ForeColor = Color.DarkBlue;
    this.linkGenerar.Location = new Point(265, 125);
    this.linkGenerar.Margin = new Padding(3, 4, 3, 4);
    this.linkGenerar.Name = "linkGenerar";
    this.linkGenerar.Size = new Size(59, 23);
    this.linkGenerar.TabIndex = 8;
    this.linkGenerar.Text = "Generar";
    this.linkGenerar.TextAlign = ContentAlignment.MiddleLeft;
    this.linkGenerar.UseCustomForeColor = true;
    this.linkGenerar.Click += new EventHandler(this.linkGenerar_Click);
    this.JuriPersChk.AutoSize = false;
    this.JuriPersChk.Location = new Point(141, 69);
    this.JuriPersChk.Margin = new Padding(3, 4, 3, 4);
    this.JuriPersChk.Name = "JuriPersChk";
    this.JuriPersChk.Size = new Size(29, 19);
    this.JuriPersChk.TabIndex = 3;
    this.JuriPersChk.Text = " ";
    this.JuriPersChk.CheckedChanged += new EventHandler(this.JuriPersChk_CheckedChanged);
    this.metroLabel3.AutoSize = false;
    this.metroLabel3.Location = new Point(13, 39);
    this.metroLabel3.Margin = new Padding(3, 4, 3, 4);
    this.metroLabel3.Name = "metroLabel3";
    this.metroLabel3.Size = new Size(122, 19);
    this.metroLabel3.TabIndex = 21;
    this.metroLabel3.Text = "Apellido y Nombre";
    this.SemaPersRb.AutoSize = false;
    this.SemaPersRb.Location = new Point(223, 98);
    this.SemaPersRb.Margin = new Padding(3, 4, 3, 4);
    this.SemaPersRb.Name = "SemaPersRb";
    this.SemaPersRb.Size = new Size(78, 15);
    this.SemaPersRb.TabIndex = 5;
    this.SemaPersRb.Text = "Masculino";
    this.SefePersRb.AutoSize = false;
    this.SefePersRb.Checked = true;
    this.SefePersRb.Location = new Point(141, 98);
    this.SefePersRb.Margin = new Padding(3, 4, 3, 4);
    this.SefePersRb.Name = "SefePersRb";
    this.SefePersRb.Size = new Size(76, 15);
    this.SefePersRb.TabIndex = 5;
    this.SefePersRb.TabStop = true;
    this.SefePersRb.Text = "Femenino";
    this.DetaPersText.Location = new Point(141, 37);
    this.DetaPersText.Margin = new Padding(3, 4, 3, 4);
    this.DetaPersText.MaxLength = 70;
    this.DetaPersText.Name = "DetaPersText";
    this.DetaPersText.Size = new Size(475, 23);
    this.DetaPersText.TabIndex = 2;
    this.DetaPersText.KeyPress += new KeyPressEventHandler(this.DetaPersText_KeyPress);
    this.metroLabel4.AutoSize = false;
    this.metroLabel4.Location = new Point(34, 67);
    this.metroLabel4.Margin = new Padding(3, 4, 3, 4);
    this.metroLabel4.Name = "metroLabel4";
    this.metroLabel4.Size = new Size(101, 19);
    this.metroLabel4.TabIndex = 5;
    this.metroLabel4.Text = "Persona jurídica";
    this.metroLabel5.AutoSize = false;
    this.metroLabel5.Location = new Point(98, 94);
    this.metroLabel5.Margin = new Padding(3, 4, 3, 4);
    this.metroLabel5.Name = "metroLabel5";
    this.metroLabel5.Size = new Size(37, 19);
    this.metroLabel5.TabIndex = 6;
    this.metroLabel5.Text = "Sexo";
    this.FenaPersDate.AllowEmpty = true;
    this.FenaPersDate.Location = new Point(141, 156);
    this.FenaPersDate.Margin = new Padding(3, 4, 3, 4);
    this.FenaPersDate.MaxDate = new DateTime(9999, 12, 31 /*0x1F*/, 23, 59, 59, 999);
    this.FenaPersDate.Name = "FenaPersDate";
    this.FenaPersDate.Size = new Size(90, 25);
    this.FenaPersDate.TabIndex = 9;
    this.metroLabel6.AutoSize = false;
    this.metroLabel6.Location = new Point(58, 10);
    this.metroLabel6.Margin = new Padding(3, 4, 3, 4);
    this.metroLabel6.Name = "metroLabel6";
    this.metroLabel6.Size = new Size(77, 19);
    this.metroLabel6.TabIndex = 7;
    this.metroLabel6.Text = "Documento";
    this.metroLabel11.AutoSize = false;
    this.metroLabel11.Location = new Point(21, 161);
    this.metroLabel11.Margin = new Padding(3, 4, 3, 4);
    this.metroLabel11.Name = "metroLabel11";
    this.metroLabel11.Size = new Size(114, 19);
    this.metroLabel11.TabIndex = 17;
    this.metroLabel11.Text = "Fecha Nacimiento";
    this.CodiTidoCbo.FormattingEnabled = false;
    this.CodiTidoCbo.Location = new Point(141, 6);
    this.CodiTidoCbo.Margin = new Padding(3, 4, 3, 4);
    this.CodiTidoCbo.Name = "CodiTidoCbo";
    this.CodiTidoCbo.Size = new Size(80 /*0x50*/, 23);
    this.CodiTidoCbo.TabIndex = 0;
    this.metroLabel9.AutoSize = false;
    this.metroLabel9.Location = new Point(76, 228);
    this.metroLabel9.Margin = new Padding(3, 4, 3, 4);
    this.metroLabel9.Name = "metroLabel9";
    this.metroLabel9.Size = new Size(47, 19);
    this.metroLabel9.TabIndex = 15;
    this.metroLabel9.Text = "E-Mail";
    this.NudoPersMsk.Location = new Point(227, 6);
    this.NudoPersMsk.Margin = new Padding(3, 4, 3, 4);
    this.NudoPersMsk.Mask = "90.000.000";
    this.NudoPersMsk.Name = "NudoPersMsk";
    this.NudoPersMsk.Size = new Size(94, 23);
    this.NudoPersMsk.TabIndex = 1;
    this.NudoPersMsk.Text = "0";
    this.NudoPersMsk.TextAlign = HorizontalAlignment.Right;
    this.MailPersText.AllowEmpty = true;
    this.MailPersText.Location = new Point(141, 224 /*0xE0*/);
    this.MailPersText.Margin = new Padding(3, 4, 3, 4);
    this.MailPersText.MaxLength = 200;
    this.MailPersText.Name = "MailPersText";
    this.MailPersText.Size = new Size(475, 23);
    this.MailPersText.TabIndex = 14;
    this.panelDomicilio.Controls.Add((Control) this.BarrioDetaText);
    this.panelDomicilio.Controls.Add((Control) this.LocalidadDetaText);
    this.panelDomicilio.Controls.Add((Control) this.CalleDetaText);
    this.panelDomicilio.Controls.Add((Control) this.CodiPostalText);
    this.panelDomicilio.Controls.Add((Control) this.metroLabel1);
    this.panelDomicilio.Controls.Add((Control) this.UbicacionText);
    this.panelDomicilio.Controls.Add((Control) this.metroLabel7);
    this.panelDomicilio.Controls.Add((Control) this.LocalidadLink);
    this.panelDomicilio.Controls.Add((Control) this.metroLabel8);
    this.panelDomicilio.Controls.Add((Control) this.CasaDireText);
    this.panelDomicilio.Controls.Add((Control) this.metroLabel10);
    this.panelDomicilio.Controls.Add((Control) this.ManzDireText);
    this.panelDomicilio.Controls.Add((Control) this.metroLabel12);
    this.panelDomicilio.Controls.Add((Control) this.NumeDireText);
    this.panelDomicilio.Controls.Add((Control) this.metroLink1);
    this.panelDomicilio.Controls.Add((Control) this.CalleLink);
    this.panelDomicilio.Controls.Add((Control) this.DeptoText);
    this.panelDomicilio.Controls.Add((Control) this.lbDepartamento);
    this.panelDomicilio.Location = new Point(4, 35);
    this.panelDomicilio.Name = "panelDomicilio";
    this.panelDomicilio.Size = new Size(192 /*0xC0*/, 61);
    this.panelDomicilio.TabIndex = 3;
    this.panelDomicilio.Text = "Domicilio";
    this.BarrioDetaText.AllowEmpty = true;
    this.BarrioDetaText.BackColor = Color.White;
    this.BarrioDetaText.EnableDetaOnCodi0 = true;
    this.BarrioDetaText.Entity = (Entity) null;
    this.BarrioDetaText.EscribirEn0 = true;
    this.BarrioDetaText.ExternalValidation = (Func<string>) null;
    this.BarrioDetaText.Font = new Font("Segoe UI", 14f, FontStyle.Regular, GraphicsUnit.Pixel);
    this.BarrioDetaText.IntCodi = 0;
    this.BarrioDetaText.Location = new Point(77, 83);
    this.BarrioDetaText.Margin = new Padding(3, 4, 3, 4);
    this.BarrioDetaText.MaximumSize = new Size(3000, 23);
    this.BarrioDetaText.MaxLengthCodi = 20;
    this.BarrioDetaText.MaxLengthDeta = 40;
    this.BarrioDetaText.MinimumSize = new Size(100, 23);
    this.BarrioDetaText.Name = "BarrioDetaText";
    this.BarrioDetaText.PropertyCodi = "CodiBarr";
    this.BarrioDetaText.PropertyDeta = "DetaBarr";
    this.BarrioDetaText.ShortCodi = (short) 0;
    this.BarrioDetaText.Size = new Size(577, 23);
    this.BarrioDetaText.TabIndex = 4;
    this.BarrioDetaText.TextAlignCodi = HorizontalAlignment.Right;
    this.BarrioDetaText.TextAlignDeta = HorizontalAlignment.Left;
    this.BarrioDetaText.TextCodi = "";
    this.BarrioDetaText.TextDeta = "";
    this.BarrioDetaText.WidthCodi = 80 /*0x50*/;
    this.LocalidadDetaText.AllowEmpty = true;
    this.LocalidadDetaText.BackColor = Color.White;
    this.LocalidadDetaText.EnableDetaOnCodi0 = true;
    this.LocalidadDetaText.Entity = (Entity) null;
    this.LocalidadDetaText.EscribirEn0 = true;
    this.LocalidadDetaText.ExternalValidation = (Func<string>) null;
    this.LocalidadDetaText.Font = new Font("Segoe UI", 14f, FontStyle.Regular, GraphicsUnit.Pixel);
    this.LocalidadDetaText.IntCodi = 0;
    this.LocalidadDetaText.Location = new Point(77, 114);
    this.LocalidadDetaText.Margin = new Padding(3, 4, 3, 4);
    this.LocalidadDetaText.MaximumSize = new Size(3000, 23);
    this.LocalidadDetaText.MaxLengthCodi = 20;
    this.LocalidadDetaText.MaxLengthDeta = 100;
    this.LocalidadDetaText.MinimumSize = new Size(100, 23);
    this.LocalidadDetaText.Name = "LocalidadDetaText";
    this.LocalidadDetaText.PropertyCodi = "CodiLoca";
    this.LocalidadDetaText.PropertyDeta = "DetaLoca";
    this.LocalidadDetaText.ShortCodi = (short) 0;
    this.LocalidadDetaText.Size = new Size(417, 23);
    this.LocalidadDetaText.TabIndex = 5;
    this.LocalidadDetaText.TextAlignCodi = HorizontalAlignment.Right;
    this.LocalidadDetaText.TextAlignDeta = HorizontalAlignment.Left;
    this.LocalidadDetaText.TextCodi = "";
    this.LocalidadDetaText.TextDeta = "";
    this.LocalidadDetaText.WidthCodi = 80 /*0x50*/;
    this.LocalidadDetaText.EntityChanged += new EntityChangedEventHandler(this.LocalidadEB_EntityChanged);
    this.CalleDetaText.AllowEmpty = true;
    this.CalleDetaText.BackColor = Color.White;
    this.CalleDetaText.EnableDetaOnCodi0 = true;
    this.CalleDetaText.Entity = (Entity) null;
    this.CalleDetaText.EscribirEn0 = true;
    this.CalleDetaText.ExternalValidation = (Func<string>) null;
    this.CalleDetaText.Font = new Font("Segoe UI", 14f, FontStyle.Regular, GraphicsUnit.Pixel);
    this.CalleDetaText.IntCodi = 0;
    this.CalleDetaText.Location = new Point(77, 21);
    this.CalleDetaText.Margin = new Padding(3, 4, 3, 4);
    this.CalleDetaText.MaximumSize = new Size(3000, 23);
    this.CalleDetaText.MaxLengthCodi = 20;
    this.CalleDetaText.MaxLengthDeta = 40;
    this.CalleDetaText.MinimumSize = new Size(100, 23);
    this.CalleDetaText.Name = "CalleDetaText";
    this.CalleDetaText.PropertyCodi = "CodiCall";
    this.CalleDetaText.PropertyDeta = "DetaCall";
    this.CalleDetaText.ShortCodi = (short) 0;
    this.CalleDetaText.Size = new Size(577, 23);
    this.CalleDetaText.TabIndex = 0;
    this.CalleDetaText.TextAlignCodi = HorizontalAlignment.Right;
    this.CalleDetaText.TextAlignDeta = HorizontalAlignment.Left;
    this.CalleDetaText.TextCodi = "";
    this.CalleDetaText.TextDeta = "";
    this.CalleDetaText.WidthCodi = 80 /*0x50*/;
    this.CodiPostalText.Location = new Point(579, 114);
    this.CodiPostalText.Name = "CodiPostalText";
    this.CodiPostalText.Size = new Size(75, 23);
    this.CodiPostalText.TabIndex = 6;
    this.metroLabel1.AutoSize = false;
    this.metroLabel1.Location = new Point(492, 116);
    this.metroLabel1.Margin = new Padding(3, 4, 3, 4);
    this.metroLabel1.Name = "metroLabel1";
    this.metroLabel1.Size = new Size(78, 19);
    this.metroLabel1.TabIndex = 115;
    this.metroLabel1.Text = "Cod. Postal";
    this.metroLabel1.TextAlign = ContentAlignment.TopRight;
    this.UbicacionText.AllowEmpty = true;
    this.UbicacionText.Location = new Point(77, 145);
    this.UbicacionText.MaxLength = 100;
    this.UbicacionText.Name = "UbicacionText";
    this.UbicacionText.Size = new Size(577, 23);
    this.UbicacionText.TabIndex = 7;
    this.metroLabel7.AutoSize = false;
    this.metroLabel7.Location = new Point(-1, 149);
    this.metroLabel7.Margin = new Padding(3, 4, 3, 4);
    this.metroLabel7.Name = "metroLabel7";
    this.metroLabel7.Size = new Size(66, 19);
    this.metroLabel7.TabIndex = 114;
    this.metroLabel7.Text = "Ubicación";
    this.LocalidadLink.Location = new Point(-4, 114);
    this.LocalidadLink.Margin = new Padding(3, 4, 3, 4);
    this.LocalidadLink.Name = "LocalidadLink";
    this.LocalidadLink.Size = new Size(69, 23);
    this.LocalidadLink.TabIndex = 113;
    this.LocalidadLink.TabStop = false;
    this.LocalidadLink.Text = "Localidad";
    this.LocalidadLink.TextAlign = ContentAlignment.MiddleRight;
    this.metroLabel8.AutoSize = false;
    this.metroLabel8.Location = new Point(296, 56);
    this.metroLabel8.Margin = new Padding(3, 4, 3, 4);
    this.metroLabel8.Name = "metroLabel8";
    this.metroLabel8.Size = new Size(37, 19);
    this.metroLabel8.TabIndex = 112 /*0x70*/;
    this.metroLabel8.Text = "Casa";
    this.CasaDireText.AllowEmpty = true;
    this.CasaDireText.Location = new Point(339, 53);
    this.CasaDireText.Margin = new Padding(3, 4, 3, 4);
    this.CasaDireText.MaxLength = 5;
    this.CasaDireText.Name = "CasaDireText";
    this.CasaDireText.Size = new Size(56, 23);
    this.CasaDireText.TabIndex = 3;
    this.CasaDireText.TextAlign = HorizontalAlignment.Right;
    this.metroLabel10.AutoSize = false;
    this.metroLabel10.Location = new Point(166, 56);
    this.metroLabel10.Margin = new Padding(3, 4, 3, 4);
    this.metroLabel10.Name = "metroLabel10";
    this.metroLabel10.Size = new Size(62, 19);
    this.metroLabel10.TabIndex = 111;
    this.metroLabel10.Text = "Manzana";
    this.ManzDireText.AllowEmpty = true;
    this.ManzDireText.Location = new Point(234, 53);
    this.ManzDireText.Margin = new Padding(3, 4, 3, 4);
    this.ManzDireText.MaxLength = 5;
    this.ManzDireText.Name = "ManzDireText";
    this.ManzDireText.Size = new Size(56, 23);
    this.ManzDireText.TabIndex = 2;
    this.ManzDireText.TextAlign = HorizontalAlignment.Right;
    this.metroLabel12.AutoSize = false;
    this.metroLabel12.Location = new Point(7, 56);
    this.metroLabel12.Margin = new Padding(3, 4, 3, 4);
    this.metroLabel12.Name = "metroLabel12";
    this.metroLabel12.Size = new Size(58, 19);
    this.metroLabel12.TabIndex = 110;
    this.metroLabel12.Text = "Número";
    this.NumeDireText.AllowEmpty = true;
    this.NumeDireText.Location = new Point(77, 52);
    this.NumeDireText.Margin = new Padding(3, 4, 3, 4);
    this.NumeDireText.MaxLength = 5;
    this.NumeDireText.Name = "NumeDireText";
    this.NumeDireText.Size = new Size(80 /*0x50*/, 23);
    this.NumeDireText.TabIndex = 1;
    this.NumeDireText.Text = "0";
    this.NumeDireText.TextAlign = HorizontalAlignment.Right;
    this.metroLink1.Location = new Point(7, 83);
    this.metroLink1.Margin = new Padding(3, 4, 3, 4);
    this.metroLink1.Name = "metroLink1";
    this.metroLink1.Size = new Size(58, 23);
    this.metroLink1.TabIndex = 107;
    this.metroLink1.TabStop = false;
    this.metroLink1.Text = "Barrio";
    this.metroLink1.TextAlign = ContentAlignment.MiddleRight;
    this.CalleLink.Location = new Point(7, 21);
    this.CalleLink.Margin = new Padding(3, 4, 3, 4);
    this.CalleLink.Name = "CalleLink";
    this.CalleLink.Size = new Size(58, 23);
    this.CalleLink.TabIndex = 103;
    this.CalleLink.TabStop = false;
    this.CalleLink.Text = "Calle";
    this.CalleLink.TextAlign = ContentAlignment.MiddleRight;
    this.DeptoText.AllowEmpty = true;
    this.DeptoText.Location = new Point(77, 176 /*0xB0*/);
    this.DeptoText.MaxLength = 30;
    this.DeptoText.Name = "DeptoText";
    this.DeptoText.Size = new Size(195, 23);
    this.DeptoText.TabIndex = 8;
    this.DeptoText.Visible = false;
    this.lbDepartamento.AutoSize = false;
    this.lbDepartamento.Location = new Point(12, 180);
    this.lbDepartamento.Margin = new Padding(3, 4, 3, 4);
    this.lbDepartamento.Name = "lbDepartamento";
    this.lbDepartamento.Size = new Size(53, 19);
    this.lbDepartamento.TabIndex = 98;
    this.lbDepartamento.Text = "Depto";
    this.lbDepartamento.TextAlign = ContentAlignment.TopRight;
    this.lbDepartamento.Visible = false;
    this.mtabTelefonos.Controls.Add((Control) this.lblBorrarTel);
    this.mtabTelefonos.Controls.Add((Control) this.lblAgregarTel);
    this.mtabTelefonos.Controls.Add((Control) this.gridTelefonos);
    this.mtabTelefonos.Location = new Point(4, 35);
    this.mtabTelefonos.Name = "mtabTelefonos";
    this.mtabTelefonos.Size = new Size(192 /*0xC0*/, 61);
    this.mtabTelefonos.TabIndex = 2;
    this.mtabTelefonos.Text = "Teléfonos";
    this.lblBorrarTel.Anchor = AnchorStyles.Bottom | AnchorStyles.Right;
    this.lblBorrarTel.AutoSize = false;
    this.lblBorrarTel.FontSize = 12f;
    this.lblBorrarTel.Location = new Point(12, -11);
    this.lblBorrarTel.Margin = new Padding(3, 4, 3, 4);
    this.lblBorrarTel.Name = "lblBorrarTel";
    this.lblBorrarTel.Size = new Size(177, 15);
    this.lblBorrarTel.TabIndex = 4;
    this.lblBorrarTel.Text = "Tecla SUPR para eliminar teléfonos";
    this.lblAgregarTel.Anchor = AnchorStyles.Bottom | AnchorStyles.Left;
    this.lblAgregarTel.AutoSize = false;
    this.lblAgregarTel.FontSize = 12f;
    this.lblAgregarTel.ForeColor = Color.DodgerBlue;
    this.lblAgregarTel.Location = new Point(3, -15);
    this.lblAgregarTel.Margin = new Padding(3, 4, 3, 4);
    this.lblAgregarTel.Name = "lblAgregarTel";
    this.lblAgregarTel.Size = new Size(197, 15);
    this.lblAgregarTel.TabIndex = 3;
    this.lblAgregarTel.Text = "Tecla + para agregar nuevos teléfonos";
    this.lblAgregarTel.UseCustomForeColor = true;
    this.gridTelefonos.Anchor = AnchorStyles.Top | AnchorStyles.Bottom | AnchorStyles.Left | AnchorStyles.Right;
    this.gridTelefonos.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.EnableResizing;
    this.gridTelefonos.Columns.AddRange((DataGridViewColumn) this.coltTipoTele, (DataGridViewColumn) this.coltNumeTele, (DataGridViewColumn) this.coltDetaTele);
    this.gridTelefonos.Location = new Point(3, 3);
    this.gridTelefonos.Name = "gridTelefonos";
    this.gridTelefonos.Size = new Size(189, 0);
    this.gridTelefonos.TabIndex = 2;
    this.gridTelefonos.CellEnter += new DataGridViewCellEventHandler(this.gridTelefonos_CellEnter);
    this.gridTelefonos.CellLeave += new DataGridViewCellEventHandler(this.gridTelefonos_CellLeave);
    this.gridTelefonos.KeyDown += new KeyEventHandler(this.gridTelefonos_KeyDown);
    this.coltTipoTele.AutoSizeMode = DataGridViewAutoSizeColumnMode.None;
    this.coltTipoTele.DataPropertyName = "TipoTelefono";
    this.coltTipoTele.HeaderText = "TIPO";
    this.coltTipoTele.Name = "coltTipoTele";
    this.coltTipoTele.ReadOnly = true;
    this.coltTipoTele.Resizable = DataGridViewTriState.True;
    this.coltTipoTele.SortMode = DataGridViewColumnSortMode.Automatic;
    this.coltTipoTele.Width = 120;
    this.coltNumeTele.AutoSizeMode = DataGridViewAutoSizeColumnMode.None;
    this.coltNumeTele.DataPropertyName = "NumeTele";
    this.coltNumeTele.HeaderText = "NÚMERO";
    this.coltNumeTele.Name = "coltNumeTele";
    this.coltNumeTele.ReadOnly = true;
    this.coltNumeTele.Width = 190;
    this.coltDetaTele.AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;
    this.coltDetaTele.DataPropertyName = "DetaTele";
    this.coltDetaTele.HeaderText = "DETALLE";
    this.coltDetaTele.Name = "coltDetaTele";
    this.coltDetaTele.ReadOnly = true;
    this.chkFallPers.AutoSize = false;
    this.chkFallPers.Location = new Point(453, 129);
    this.chkFallPers.Name = "chkFallPers";
    this.chkFallPers.Size = new Size(130, 19);
    this.chkFallPers.TabIndex = 77;
    this.chkFallPers.Text = "Persona Fallecida";
    this.ClientSize = new Size(682, 389);
    this.Controls.Add((Control) this.Panel);
    this.Name = nameof (abmPersona);
    this.Controls.SetChildIndex((Control) this.Panel, 0);
    this.Panel.ResumeLayout(false);
    this.mtabDatos.ResumeLayout(false);
    this.panelDatos.ResumeLayout(false);
    this.panelDomicilio.ResumeLayout(false);
    this.mtabTelefonos.ResumeLayout(false);
    ((ISupportInitialize) this.gridTelefonos).EndInit();
    this.ResumeLayout(false);
  }

  private void LocalidadEB_EntityChanged(object source, EntityChangedEventArgs e)
  {
    if (e.NewEntity == null)
      return;
    this.CodiPostalText.Text = ((Localidad) e.NewEntity).CodiPost;
  }

  private void DetaPersText_KeyPress(object sender, KeyPressEventArgs e)
  {
    if (e.KeyChar != ',' && e.KeyChar != '.')
      return;
    e.Handled = true;
  }

  private void addDetaTextBoxEvents()
  {
    this.CalleDetaText.FindEntityFunction = new MetroDetaBox.FindEntityDelegate(this.findCalle);
    this.CalleDetaText.SearchEntityFunction = new MetroDetaBox.SearchEntityDelegate(this.searchCalle);
    this.CalleDetaText.ExternalValidation = new Func<string>(this.validateCalle);
    this.BarrioDetaText.FindEntityFunction = new MetroDetaBox.FindEntityDelegate(this.findBarrio);
    this.BarrioDetaText.SearchEntityFunction = new MetroDetaBox.SearchEntityDelegate(this.searchBarrio);
    this.BarrioDetaText.ExternalValidation = new Func<string>(this.validateBarrio);
    this.LocalidadDetaText.FindEntityFunction = new MetroDetaBox.FindEntityDelegate(this.findLocalidad);
    this.LocalidadDetaText.SearchEntityFunction = new MetroDetaBox.SearchEntityDelegate(this.searchLocalidad);
    this.LocalidadDetaText.ExternalValidation = new Func<string>(this.validateLocalidad);
  }

  private Entity findCalle(string text, bool useSearch)
  {
    return (Entity) this.EM.Find<Calle>(this.createFilter("CodiCall", "DetaCall", "Calle", text), true, useSearch);
  }

  private Entity searchCalle(string text)
  {
    return (Entity) this.EM.Search<Calle>(this.createFilter("CodiCall", "DetaCall", "Calle", text), true);
  }

  private string validateCalle() => "";

  private Entity findBarrio(string text, bool useSearch)
  {
    return (Entity) this.EM.Find<Barrio>(this.createFilter("CodiBarr", "DetaBarr", "Barrio", text), true, useSearch);
  }

  private Entity searchBarrio(string text)
  {
    return (Entity) this.EM.Search<Barrio>(this.createFilter("CodiBarr", "DetaBarr", "Barrio", text), true);
  }

  private string validateBarrio() => "";

  private Entity findLocalidad(string text, bool useSearch)
  {
    return (Entity) this.EM.Find<Localidad>(this.createFilter("CodiLoca", "DetaLoca", "Localidad", text), true, useSearch);
  }

  private Entity searchLocalidad(string text)
  {
    return (Entity) this.EM.Search<Localidad>(this.createFilter("CodiLoca", "DetaLoca", "Localidad", text), true);
  }

  private string validateLocalidad() => "";

  private new Filter createFilter(string codi, string deta, string name, string text)
  {
    Filter filter = new Filter();
    if (Misc.IsNumeric(text))
      filter.Items.Add(new FilterItem(codi, name, FilterMode.Equal, text));
    else
      filter.Items.Add(new FilterItem(deta, name, FilterMode.Contains, text));
    return filter;
  }

  private void JuriPersChk_CheckedChanged(object sender, EventArgs e)
  {
    if (this.JuriPersChk.Checked)
      this.CucuPersMsk.Enabled = true;
    else
      this.CucuPersMsk.Enabled = false;
    this.SefePersRb.Checked = this.SefePersRb.Enabled = this.SemaPersRb.Enabled = this.ComboEstadoCivil.Enabled = this.FenaPersDate.Enabled = !this.JuriPersChk.Checked;
  }

  private void llenarComboEstadoCivil()
  {
    this.ComboEstadoCivil.Items.Clear();
    this.ComboEstadoCivil.DisplayMember = "DetaEsci";
    this.ComboEstadoCivil.ValueMember = "CodiEsci";
    this.ComboEstadoCivil.Items.AddRange((object[]) new ExpEstadoCivil().getListEstadosCiviles().ToArray());
    if (this.ComboEstadoCivil.Items.Count <= 0)
      return;
    this.ComboEstadoCivil.SelectedIndex = 0;
  }

  private void llenarComboPosiFiscal()
  {
    this.ComboFiscal.Items.Clear();
    this.ComboFiscal.DisplayMember = "DetaPofi";
    this.ComboFiscal.ValueMember = "CodiPofi";
    this.ComboFiscal.Items.AddRange((object[]) new ExpPosicionFiscal().getListPosicionesFiscales().ToArray());
    if (this.ComboFiscal.Items.Count <= 0)
      return;
    this.ComboFiscal.SelectedIndex = 0;
  }

  private void llenarComboTipoDocumento()
  {
    this.CodiTidoCbo.Items.Clear();
    this.CodiTidoCbo.DisplayMember = "DetaTido";
    this.CodiTidoCbo.ValueMember = "CodiTido";
    this.CodiTidoCbo.Items.AddRange((object[]) new ExpTipoDocumento().getListTiposDocumento().ToArray());
    if (this.CodiTidoCbo.Items.Count <= 0)
      return;
    this.CodiTidoCbo.SelectedIndex = 0;
  }

  private void llenarComboTipoTelefono()
  {
    this.coltTipoTele.DataSource = (object) Enum.GetNames(typeof (TipoTelefono));
  }

  private void llenarComboCondicion()
  {
    this.ComboCondicion.Items.Clear();
    this.ComboCondicion.ValueMember = "Value";
    this.ComboCondicion.DisplayMember = "Text";
    this.ComboCondicion.Items.Add((object) new ComboBoxItem("Sin Seleccionar", (object) "0"));
    this.ComboCondicion.Items.Add((object) new ComboBoxItem("Insolvencia Financiera o Patrimonial", (object) "1"));
    this.ComboCondicion.Items.Add((object) new ComboBoxItem("Desaparición del sujeto pasivo", (object) "2"));
    this.ComboCondicion.Items.Add((object) new ComboBoxItem("Domicilio fuera de la juridicción departamental", (object) "3"));
    this.ComboCondicion.SelectedIndex = 0;
  }

  private void CheckBoxCargaManual_CheckedChanged(object sender, EventArgs e)
  {
    if (this.CheckBoxCargaManual.Checked)
    {
      this.CucuPersMsk.Enabled = true;
    }
    else
    {
      this.CucuPersMsk.Enabled = false;
      this.CucuPersMsk.Text = "";
    }
  }

  protected override void butPrint_Click(object sender, EventArgs e)
  {
    List<DTOPersonaTupu> dtoPersonaTupuList1 = new ExpPersona().ObtenerPersonaTupu(this.enti.CucuPers);
    List<DTOPersonaTupu> dtoPersonaTupuList2 = new List<DTOPersonaTupu>();
    bool rete = dtoPersonaTupuList1[0].retenciones.Count != 0;
    irepPersonaTupu irepPersonaTupu = new irepPersonaTupu(dtoPersonaTupuList1[0].JuriPers, rete);
    ((XtraReportBase) irepPersonaTupu).DataSource = (object) dtoPersonaTupuList1;
    irepPersonaTupu.setTitulo("Municipalidad de " + PARAMS.Municipio);
    XtraReportPreviewExtensions.ShowPreview((IReport) irepPersonaTupu);
  }
}
