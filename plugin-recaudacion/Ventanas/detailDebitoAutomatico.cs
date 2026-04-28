// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Ventanas.detailDebitoAutomatico
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using DevExpress.XtraBars.Docking2010.Base;
using DevExpress.XtraBars.Navigation;
using InfoGov.Common;
using InfoGov.Forms;
using InfoGov.Metro.Controls;
using InfoGov.Plugins.Recaudacion.Entidades;
using InfoGov.Plugins.Recaudacion.Expertos;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Ventanas;

public class detailDebitoAutomatico : ABMDetailControl
{
  private ExpDebitoAutomatico expert = new ExpDebitoAutomatico();
  private IContainer components = (IContainer) null;
  private TabPane tabPane1;
  private TabNavigationPage tabNavigationPage1;
  private MetroLabel metroLabel2;
  private MetroLabel metroLabel1;
  private MetroTextBox Cuenta;
  private MetroComboBox ComboOficina;
  private MetroLabel metroLabel3;
  private MetroComboBox ComboTipoCuenta;
  private MetroTextBox Cbu;
  private MetroIntTextBox NroSucursal;
  private MetroLabel metroLabel6;
  private MetroLabel metroLabel5;
  private MetroLabel metroLabel4;
  private MetroLongTextBox NroCuenta;
  private MetroLabel metroLabel7;
  private MetroEntityBox BancoEB;
  private MetroDateTextBox FechaSolicidtud;
  private MetroLabel metroLabel8;

  public detailDebitoAutomatico()
  {
    this.InitializeComponent();
    this.idPlugin = 28;
    this.llenarComboOficina();
    this.llenarTipoCuenta();
    this.BancoEB.FindEntityFunction = new MetroEntityBox.FindEntityDelegate(this.EncontrarBanco);
    this.BancoEB.SearchEntityFunction = new MetroEntityBox.SearchEntityDelegate(this.BuscarBanco);
  }

  protected override void OnModeChanged(ActionMode mode)
  {
    this.ComboOficina.Enabled = mode == ActionMode.New;
    this.Cuenta.Enabled = mode == ActionMode.New;
    this.NroSucursal.Enabled = mode == ActionMode.New || mode == ActionMode.Edit;
    this.ComboTipoCuenta.Enabled = mode == ActionMode.New || mode == ActionMode.Edit;
    this.NroCuenta.Enabled = mode == ActionMode.New || mode == ActionMode.Edit;
    this.Cbu.Enabled = mode == ActionMode.New || mode == ActionMode.Edit;
    this.BancoEB.Enabled = mode == ActionMode.New || mode == ActionMode.Edit;
    this.FechaSolicidtud.Enabled = mode == ActionMode.New || mode == ActionMode.Edit;
    if (this.BancoEB.Entity == null || ((BancoRecaudacion) this.BancoEB.Entity).CodiBanc == 285)
      return;
    this.NroSucursal.Enabled = this.NroCuenta.Enabled = false;
    this.ComboTipoCuenta.Enabled = false;
  }

  protected override void OnEntityChanged(Entity enti)
  {
    DebitoAutomatico debitoAutomatico = (DebitoAutomatico) enti;
    if (debitoAutomatico == null)
    {
      this.LimpiarCampos();
    }
    else
    {
      this.Cuenta.Text = debitoAutomatico.CuenCtct;
      this.ComboOficina.SelectedIndex = (int) debitoAutomatico.CodiOfic;
      this.BancoEB.Entity = (Entity) this.EM.Get<BancoRecaudacion>(new ID("CodiBanc", (object) debitoAutomatico.CodiBanc));
      this.NroSucursal.IntText = (int) debitoAutomatico.NumeSucu;
      switch (debitoAutomatico.TipoCuenta)
      {
        case 0:
          this.ComboTipoCuenta.SelectedIndex = 0;
          break;
        case 3:
          this.ComboTipoCuenta.SelectedIndex = 1;
          break;
        case 4:
          this.ComboTipoCuenta.SelectedIndex = 2;
          break;
      }
      this.NroCuenta.LongText = debitoAutomatico.NumeCuenta;
      this.Cbu.Text = debitoAutomatico.Cbu;
      this.FechaSolicidtud.Date = debitoAutomatico.FechaSolic;
    }
  }

  protected override Entity LoadEntity()
  {
    return (Entity) new DebitoAutomatico()
    {
      CodiOfic = short.Parse(((ComboBoxItem) this.ComboOficina.SelectedItem).Value.ToString()),
      CuenCtct = this.Cuenta.Text,
      CodiBanc = (this.BancoEB.Entity != null ? ((BancoRecaudacion) this.BancoEB.Entity).CodiBanc : 0),
      NumeSucu = (short) this.NroSucursal.IntText,
      TipoCuenta = short.Parse(((ComboBoxItem) this.ComboTipoCuenta.SelectedItem).Value.ToString()),
      NumeCuenta = this.NroCuenta.LongText,
      Cbu = this.Cbu.Text,
      FechaSolic = this.FechaSolicidtud.Date
    };
  }

  protected override List<string> IsDataValid()
  {
    List<string> stringList = new List<string>();
    if (this.ComboOficina.SelectedIndex == 0)
      stringList.Add("Debe seleccionar oficina");
    if (this.Cuenta.Text.Length == 0)
      stringList.Add("Debe ingresar cuenta");
    if (this.BancoEB.Entity == null)
      stringList.Add("Debe ingresar banco");
    if (this.CurrentMode == ActionMode.New && this.ComboOficina.SelectedIndex != 0 && this.Cuenta.Text.Length > 0)
    {
      if (!this.expert.existecuenta((short) this.ComboOficina.SelectedIndex, this.Cuenta.Text))
        stringList.Add("La cuenta no existe. Verifique...");
      else if (this.expert.existecuentacargadas((short) this.ComboOficina.SelectedIndex, this.Cuenta.Text))
        stringList.Add("La Cuenta/CBU ya esta cargada. Verifique...");
    }
    if (this.BancoEB.Entity != null && ((BancoRecaudacion) this.BancoEB.Entity).CodiBanc != 285 && this.Cbu.Text.Length < 22)
      stringList.Add("El cbu deben ser de 22 digitos");
    if (this.BancoEB.Entity != null && ((BancoRecaudacion) this.BancoEB.Entity).CodiBanc == 285)
    {
      if (this.NroCuenta.Text.Length == 0)
        stringList.Add($"Debe ingresar nro. de cuenta {Environment.NewLine} de banco Macro");
      if (this.ComboTipoCuenta.SelectedIndex == 0)
        stringList.Add($"Debe indicar tipo de cuenta {Environment.NewLine} de banco Macro");
      if (this.NroSucursal.Text.Length == 0)
        stringList.Add($"Debe ingresar nro. de sucursal {Environment.NewLine} de banco Macro");
    }
    return stringList;
  }

  private void llenarComboOficina()
  {
    this.ComboOficina.Items.Clear();
    this.ComboOficina.ValueMember = "Value";
    this.ComboOficina.DisplayMember = "Text";
    this.ComboOficina.Items.Add((object) new ComboBoxItem("SIN SELECCIONAR", (object) "0"));
    this.ComboOficina.Items.Add((object) new ComboBoxItem("INMUEBLE", (object) "1"));
    this.ComboOficina.Items.Add((object) new ComboBoxItem("COMERCIO", (object) "2"));
    this.ComboOficina.Items.Add((object) new ComboBoxItem("DEUDORES VARIOS", (object) "3"));
    this.ComboOficina.Items.Add((object) new ComboBoxItem("CEMENTERIO", (object) "4"));
    this.ComboOficina.Items.Add((object) new ComboBoxItem("TRANSITO", (object) "5"));
    this.ComboOficina.SelectedIndex = 0;
  }

  private void llenarTipoCuenta()
  {
    this.ComboTipoCuenta.Items.Clear();
    this.ComboTipoCuenta.ValueMember = "Value";
    this.ComboTipoCuenta.DisplayMember = "Text";
    this.ComboTipoCuenta.Items.Add((object) new ComboBoxItem("Sin Seleccionar", (object) "0"));
    this.ComboTipoCuenta.Items.Add((object) new ComboBoxItem("Cta.Cte.", (object) "3"));
    this.ComboTipoCuenta.Items.Add((object) new ComboBoxItem("Caja de Ahorro", (object) "4"));
    this.ComboTipoCuenta.SelectedIndex = 0;
  }

  protected override void LimpiarCampos()
  {
    this.ComboOficina.SelectedIndex = 0;
    this.Cuenta.Text = "";
    this.NroSucursal.Text = "";
    this.ComboTipoCuenta.SelectedIndex = 0;
    this.NroCuenta.Text = "";
    this.Cbu.Text = "";
    this.BancoEB.Entity = (Entity) null;
    this.FechaSolicidtud.Text = "";
  }

  private Entity BuscarBanco(string text)
  {
    Filter filter = new Filter();
    if (Misc.IsNumeric(text))
      filter.Items.Add(new FilterItem("CodiBanc", "Código", FilterMode.Equal, text));
    else if (text.Trim().Length != 0)
      filter.Items.Add(new FilterItem("DetaBanc", "Detalle", FilterMode.Contains, text));
    return (Entity) this.EM.Search<BancoRecaudacion>(filter, true);
  }

  private Entity EncontrarBanco(string text, bool useSearch)
  {
    Filter filter = new Filter();
    if (Misc.IsNumeric(text))
      filter.Items.Add(new FilterItem("CodiBanc", "Código", FilterMode.Equal, text));
    else if (text.Trim().Length != 0)
      filter.Items.Add(new FilterItem("DetaBanc", "Detalle", FilterMode.Contains, text));
    return (Entity) this.EM.Find<BancoRecaudacion>(filter, true, true);
  }

  private void BancoEB_EntityChanged(object source, EntityChangedEventArgs e)
  {
    if (this.CurrentMode == ActionMode.View || e.NewEntity == null)
      return;
    if (((BancoRecaudacion) e.NewEntity).CodiBanc == 285)
    {
      this.NroSucursal.Enabled = true;
      this.NroCuenta.Enabled = true;
      this.ComboTipoCuenta.Enabled = true;
      this.Cbu.Enabled = false;
    }
    else
    {
      this.NroSucursal.Enabled = false;
      this.NroCuenta.Enabled = false;
      this.ComboTipoCuenta.Enabled = false;
      this.Cbu.Enabled = true;
      this.NroSucursal.Text = this.NroCuenta.Text = "";
      this.ComboTipoCuenta.SelectedIndex = 0;
    }
  }

  protected override void Dispose(bool disposing)
  {
    if (disposing && this.components != null)
      this.components.Dispose();
    base.Dispose(disposing);
  }

  private void InitializeComponent()
  {
    this.tabPane1 = new TabPane();
    this.tabNavigationPage1 = new TabNavigationPage();
    this.metroLabel7 = new MetroLabel();
    this.BancoEB = new MetroEntityBox();
    this.NroCuenta = new MetroLongTextBox();
    this.ComboTipoCuenta = new MetroComboBox();
    this.Cbu = new MetroTextBox();
    this.NroSucursal = new MetroIntTextBox();
    this.metroLabel6 = new MetroLabel();
    this.metroLabel5 = new MetroLabel();
    this.metroLabel4 = new MetroLabel();
    this.metroLabel3 = new MetroLabel();
    this.ComboOficina = new MetroComboBox();
    this.metroLabel2 = new MetroLabel();
    this.metroLabel1 = new MetroLabel();
    this.Cuenta = new MetroTextBox();
    this.metroLabel8 = new MetroLabel();
    this.FechaSolicidtud = new MetroDateTextBox();
    ((ISupportInitialize) this.tabPane1).BeginInit();
    ((Control) this.tabPane1).SuspendLayout();
    ((Control) this.tabNavigationPage1).SuspendLayout();
    this.SuspendLayout();
    ((Control) this.tabPane1).Controls.Add((Control) this.tabNavigationPage1);
    ((Control) this.tabPane1).Dock = DockStyle.Fill;
    ((Control) this.tabPane1).Location = new Point(0, 0);
    ((Control) this.tabPane1).Name = "tabPane1";
    ((BaseMutableList<NavigationPageBase>) ((NavigationFrame) this.tabPane1).Pages).AddRange(new NavigationPageBase[1]
    {
      (NavigationPageBase) this.tabNavigationPage1
    });
    ((NavigationPane) this.tabPane1).RegularSize = new Size(700, 312);
    this.tabPane1.SelectedPage = this.tabNavigationPage1;
    ((Control) this.tabPane1).Size = new Size(700, 312);
    ((Control) this.tabPane1).TabIndex = 0;
    ((Control) this.tabPane1).Text = "tabPane1";
    ((NavigationPageBase) this.tabNavigationPage1).BackgroundPadding = new Padding(4);
    ((NavigationPageBase) this.tabNavigationPage1).Caption = "Detalles";
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.FechaSolicidtud);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.metroLabel8);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.metroLabel7);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.BancoEB);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.NroCuenta);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.ComboTipoCuenta);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.Cbu);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.NroSucursal);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.metroLabel6);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.metroLabel5);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.metroLabel4);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.metroLabel3);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.ComboOficina);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.metroLabel2);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.metroLabel1);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.Cuenta);
    ((Control) this.tabNavigationPage1).Name = "tabNavigationPage1";
    ((NavigationPageBase) this.tabNavigationPage1).Size = new Size(700, 279);
    this.metroLabel7.AutoSize = false;
    this.metroLabel7.Location = new Point(78, 84);
    this.metroLabel7.Name = "metroLabel7";
    this.metroLabel7.Size = new Size(55, 19);
    this.metroLabel7.TabIndex = 18;
    this.metroLabel7.Text = "Banco";
    this.metroLabel7.TextAlign = ContentAlignment.TopRight;
    this.BancoEB.AllowEmpty = false;
    this.BancoEB.AllowSqlCharacters = false;
    this.BancoEB.BackColor = Color.White;
    this.BancoEB.Entity = (Entity) null;
    this.BancoEB.ExternalValidation = (Func<string>) null;
    this.BancoEB.Font = new Font("Segoe UI", 14f, FontStyle.Regular, GraphicsUnit.Pixel);
    this.BancoEB.LabelText = "";
    this.BancoEB.Location = new Point(150, 79);
    this.BancoEB.MandatoryWrite = false;
    this.BancoEB.Margin = new Padding(3, 4, 3, 4);
    this.BancoEB.MaximumSize = new Size(3000, 23);
    this.BancoEB.MaxLenght = 50;
    this.BancoEB.MinimumSize = new Size(100, 23);
    this.BancoEB.Name = "BancoEB";
    this.BancoEB.PropertyDetail = "DetaBanc";
    this.BancoEB.PropertyID = "CodiBanc";
    this.BancoEB.ShowNewButton = false;
    this.BancoEB.ShowSearchButton = false;
    this.BancoEB.Size = new Size(400, 23);
    this.BancoEB.TabIndex = 2;
    this.BancoEB.TextAlign = HorizontalAlignment.Left;
    this.BancoEB.TextBoxWidth = 120;
    this.BancoEB.EntityChanged += new EntityChangedEventHandler(this.BancoEB_EntityChanged);
    this.NroCuenta.AllowEmpty = true;
    this.NroCuenta.Location = new Point(150, 174);
    this.NroCuenta.MaxLength = 15;
    this.NroCuenta.MaxValue = 999999999999999L;
    this.NroCuenta.Name = "NroCuenta";
    this.NroCuenta.Size = new Size(212, 23);
    this.NroCuenta.TabIndex = 5;
    this.ComboTipoCuenta.FormattingEnabled = false;
    this.ComboTipoCuenta.ImeMode = ImeMode.NoControl;
    this.ComboTipoCuenta.Location = new Point(150, 143);
    this.ComboTipoCuenta.Name = "ComboTipoCuenta";
    this.ComboTipoCuenta.Size = new Size(121, 23);
    this.ComboTipoCuenta.TabIndex = 4;
    this.Cbu.AllowEmpty = true;
    this.Cbu.Location = new Point(150, 209);
    this.Cbu.MaxLength = 22;
    this.Cbu.Name = "Cbu";
    this.Cbu.Size = new Size(366, 23);
    this.Cbu.TabIndex = 6;
    this.NroSucursal.AllowEmpty = true;
    this.NroSucursal.Location = new Point(150, 111);
    this.NroSucursal.MaxLength = 4;
    this.NroSucursal.MaxValue = 9999;
    this.NroSucursal.Name = "NroSucursal";
    this.NroSucursal.Size = new Size(121, 23);
    this.NroSucursal.TabIndex = 3;
    this.metroLabel6.AutoSize = false;
    this.metroLabel6.Location = new Point(96 /*0x60*/, 214);
    this.metroLabel6.Name = "metroLabel6";
    this.metroLabel6.Size = new Size(35, 19);
    this.metroLabel6.TabIndex = 10;
    this.metroLabel6.Text = "CBU";
    this.metroLabel6.TextAlign = ContentAlignment.TopRight;
    this.metroLabel5.AutoSize = false;
    this.metroLabel5.Location = new Point(46, 179);
    this.metroLabel5.Name = "metroLabel5";
    this.metroLabel5.Size = new Size(87, 19);
    this.metroLabel5.TabIndex = 9;
    this.metroLabel5.Text = "Nro. Cuenta";
    this.metroLabel5.TextAlign = ContentAlignment.TopRight;
    this.metroLabel4.AutoSize = false;
    this.metroLabel4.Location = new Point(46, 148);
    this.metroLabel4.Name = "metroLabel4";
    this.metroLabel4.Size = new Size(87, 19);
    this.metroLabel4.TabIndex = 8;
    this.metroLabel4.Text = "Tipo Cuenta";
    this.metroLabel4.TextAlign = ContentAlignment.TopRight;
    this.metroLabel3.AutoSize = false;
    this.metroLabel3.Location = new Point(46, 117);
    this.metroLabel3.Name = "metroLabel3";
    this.metroLabel3.Size = new Size(87, 19);
    this.metroLabel3.TabIndex = 7;
    this.metroLabel3.Text = "Nro. Sucursal";
    this.metroLabel3.TextAlign = ContentAlignment.TopRight;
    this.ComboOficina.FormattingEnabled = false;
    this.ComboOficina.Location = new Point(150, 16 /*0x10*/);
    this.ComboOficina.Name = "ComboOficina";
    this.ComboOficina.Size = new Size(121, 23);
    this.ComboOficina.TabIndex = 0;
    this.metroLabel2.AutoSize = false;
    this.metroLabel2.Location = new Point(76, 51);
    this.metroLabel2.Name = "metroLabel2";
    this.metroLabel2.Size = new Size(55, 19);
    this.metroLabel2.TabIndex = 3;
    this.metroLabel2.Text = "Cuenta";
    this.metroLabel2.TextAlign = ContentAlignment.TopRight;
    this.metroLabel1.AutoSize = false;
    this.metroLabel1.Location = new Point(78, 20);
    this.metroLabel1.Name = "metroLabel1";
    this.metroLabel1.Size = new Size(53, 19);
    this.metroLabel1.TabIndex = 2;
    this.metroLabel1.Text = "Oficina";
    this.metroLabel1.TextAlign = ContentAlignment.TopRight;
    this.Cuenta.Location = new Point(150, 46);
    this.Cuenta.MaxLength = 11;
    this.Cuenta.Name = "Cuenta";
    this.Cuenta.Size = new Size(121, 23);
    this.Cuenta.TabIndex = 1;
    this.metroLabel8.AutoSize = false;
    this.metroLabel8.Location = new Point(16 /*0x10*/, 250);
    this.metroLabel8.Name = "metroLabel8";
    this.metroLabel8.Size = new Size(117, 19);
    this.metroLabel8.TabIndex = 19;
    this.metroLabel8.Text = "Fecha de Solicitud";
    this.metroLabel8.TextAlign = ContentAlignment.TopRight;
    this.FechaSolicidtud.Location = new Point(150, 244);
    this.FechaSolicidtud.Name = "FechaSolicidtud";
    this.FechaSolicidtud.Size = new Size(90, 25);
    this.FechaSolicidtud.TabIndex = 20;
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.Controls.Add((Control) this.tabPane1);
    this.Name = nameof (detailDebitoAutomatico);
    this.Size = new Size(700, 312);
    ((ISupportInitialize) this.tabPane1).EndInit();
    ((Control) this.tabPane1).ResumeLayout(false);
    ((Control) this.tabNavigationPage1).ResumeLayout(false);
    this.ResumeLayout(false);
  }
}
