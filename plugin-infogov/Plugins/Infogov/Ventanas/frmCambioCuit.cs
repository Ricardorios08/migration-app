// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Ventanas.frmCambioCuit
// Assembly: plugin-infogov, Version=1.0.0.18780, Culture=neutral, PublicKeyToken=null
// MVID: 33F9E52C-1C9C-4132-80FE-D29F95E246A9
// Assembly location: C:\nomade\para copiar\plugin-infogov.dll

using DevExpress.XtraEditors;
using DevExpress.XtraEditors.Controls;
using InfoGov.Common;
using InfoGov.Core;
using InfoGov.Forms;
using InfoGov.Metro;
using InfoGov.Metro.Controls;
using InfoGov.Plugins.Infogov.Entidades;
using InfoGov.Plugins.Infogov.Expertos;
using System;
using System.ComponentModel;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Infogov.Ventanas;

public class frmCambioCuit : BaseForm
{
  private frmCambioCuit.modo Actual;
  private DataGridViewTextBoxColumn Oficina;
  private DataGridViewTextBoxColumn Cuenta;
  private DataGridViewTextBoxColumn Cuit;
  private DataGridViewTextBoxColumn Nombre;
  private DataGridViewTextBoxColumn Relacion;
  private MetroMaskedTextBox CucuPersMsk;
  private SimpleButton btnGenerar;
  private MetroLabel metroLabel5;
  private MetroRadioButton SemaPersRb;
  private MetroRadioButton SefePersRb;
  private MetroLabel metroLabel6;
  private MetroComboBox CodiTidoCbo;
  private MetroMaskedTextBox NudoPersMsk;
  private MetroTextBox DetaPersText;
  private MetroEntityBox PersonaEB;
  private MetroRadioButton PersJuri;
  private ExpPersona exp = new ExpPersona();
  private MetroLabel metroLabel4;
  private MetroEntityBox CucuPersonaActual;
  private MetroPanel metroPanel1;
  private MetroLabel metroLabel1;
  private MetroPanel metroPanel2;
  private MetroDataGridView metroDataGridView1;
  private MetroPanel metroPanel3;
  private SimpleButton BuscarBtn;
  private SimpleButton ModificarBtn;
  private SimpleButton GuardarBtn;
  private SimpleButton CancelarBtn;

  public frmCambioCuit()
  {
    this.InitializeComponent();
    this.CucuPersonaActual.SearchEntityFunction = new MetroEntityBox.SearchEntityDelegate(this.BuscarPersona);
    this.CucuPersonaActual.FindEntityFunction = new MetroEntityBox.FindEntityDelegate(this.EncontrarPersona);
    this.PersonaEB.SearchEntityFunction = new MetroEntityBox.SearchEntityDelegate(this.BuscarPersona);
    this.PersonaEB.FindEntityFunction = new MetroEntityBox.FindEntityDelegate(this.EncontrarPersona);
    this.Actual = frmCambioCuit.modo.Ver;
    this.changemode(this.Actual);
    this.llenarComboTipoDocumento();
    this.TabText = "Cambio CUIT";
  }

  private void limpiar()
  {
    this.CucuPersMsk.Text = "";
    this.NudoPersMsk.Text = "";
    this.DetaPersText.Text = "";
    this.metroDataGridView1.DataSource = (object) null;
    this.metroDataGridView1.Refresh();
  }

  private void changemode(frmCambioCuit.modo Actual)
  {
    this.Actual = Actual;
    this.CucuPersMsk.Enabled = Actual == frmCambioCuit.modo.Modificar && this.PersJuri.Checked;
    this.CucuPersonaActual.Enabled = ((Control) this.BuscarBtn).Enabled = Actual == frmCambioCuit.modo.Ver;
    ((Control) this.ModificarBtn).Enabled = Actual == frmCambioCuit.modo.Ver;
    ((Control) this.GuardarBtn).Enabled = ((Control) this.CancelarBtn).Enabled = Actual != 0;
    this.metroDataGridView1.Enabled = Actual == frmCambioCuit.modo.Ver;
  }

  private Filter filtroPersona(string text)
  {
    if (!Misc.IsNumeric(text))
      return new Filter()
      {
        Items = {
          new FilterItem("DetaPers", "Nombre", FilterMode.Contains, text)
        }
      };
    return new Filter()
    {
      Items = {
        new FilterItem("CucuPers", "Cuit/Cuil", FilterMode.StartsWith, text)
      }
    };
  }

  private Entity EncontrarPersona(string text, bool usarBuscar)
  {
    return (Entity) this.EM.Find<Persona>(this.filtroPersona(text), true, true);
  }

  private Entity BuscarPersona(string text)
  {
    return (Entity) this.EM.Search<Persona>(this.filtroPersona(text), true);
  }

  public string validarCuil()
  {
    StringBuilder stringBuilder = new StringBuilder();
    if (this.PersJuri.Checked)
    {
      if (PARAMS.Municipio == "Guaymallén" && this.CucuPersMsk.Text.Substring(0, 2) != "30" && this.CucuPersMsk.Text.Substring(0, 2) != "31" && this.CucuPersMsk.Text.Substring(0, 2) != "32" && this.CucuPersMsk.Text.Substring(0, 2) != "33" && this.CucuPersMsk.Text.Substring(0, 2) != "34")
        stringBuilder.AppendLine("El Cuit/Cuil ingresado no es válido.");
      if (this.CucuPersMsk.Text.Length < 11)
        stringBuilder.AppendLine("La longitud del cuit no es válida.");
    }
    else if (!Misc.cuilValido(this.CucuPersMsk.Text.Trim()))
      stringBuilder.AppendLine("El Cuit/Cuil ingresado no es válido.");
    return stringBuilder.Length == 0 ? "" : stringBuilder.ToString();
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

  private void BuscarBtn_Click(object sender, EventArgs e)
  {
    if (this.CucuPersonaActual.Entity != null)
    {
      this.metroDataGridView1.DataSource = (object) this.exp.getRelaciones(((Persona) this.CucuPersonaActual.Entity).CucuPers);
      this.metroDataGridView1.Refresh();
    }
    else
    {
      new frmMensaje((Form) this).mostrarError("Ingrese la persona a buscar.");
      this.CucuPersonaActual.Focus();
    }
  }

  private void ModificarBtn_Click(object sender, EventArgs e)
  {
    if (this.CucuPersonaActual.Entity != null)
    {
      this.changemode(frmCambioCuit.modo.Modificar);
      this.CucuPersMsk.Focus();
    }
    else
    {
      new frmMensaje((Form) this).mostrarError("Seleccione una Persona valida.");
      this.CucuPersonaActual.Focus();
    }
  }

  private void GuardarBtn_Click(object sender, EventArgs e)
  {
    string mensaje = this.validarCuil();
    if (((Persona) this.CucuPersonaActual.Entity).CucuPers == this.CucuPersMsk.LongText)
      new frmMensaje((Form) this).mostrarError("El Cuit debe ser distinto");
    else if (mensaje.Length == 0)
    {
      bool flag;
      switch (PARAMS.Municipio)
      {
        case "Guaymallén":
          flag = new frmEsperar((Form) this).calcular<bool>((Func<bool>) (() => this.exp.actualizarCucuPers(((Persona) this.CucuPersonaActual.Entity).CucuPers, this.CucuPersMsk.LongText)), "Procesando...");
          break;
        case "Tupungato":
          flag = new frmEsperar((Form) this).calcular<bool>((Func<bool>) (() => this.exp.actualizarCucuPersTupungato(((Persona) this.CucuPersonaActual.Entity).CucuPers, this.CucuPersMsk.LongText)), "Procesando...");
          break;
        default:
          flag = new frmEsperar((Form) this).calcular<bool>((Func<bool>) (() => this.exp.actualizarCucuPersOtrosMuni(((Persona) this.CucuPersonaActual.Entity).CucuPers, this.CucuPersMsk.LongText)), "Procesando...");
          break;
      }
      if (flag)
      {
        new frmMensaje((Form) this).mostrarConfirmación($"El cambio de CUIT se realizo de forma correcta. CUIT: {((Persona) this.CucuPersonaActual.Entity).CucuPers.ToString()} a  CUIT: {this.CucuPersMsk.LongText.ToString()}");
        this.changemode(frmCambioCuit.modo.Ver);
        this.limpiar();
      }
      else
        new frmMensaje((Form) this).mostrarError("Se produjo un error al guardar en la base de datos.");
    }
    else
    {
      new frmMensaje((Form) this).mostrarError(mensaje);
      this.CucuPersMsk.Focus();
    }
  }

  private void CancelarBtn_Click(object sender, EventArgs e)
  {
    this.limpiar();
    this.changemode(frmCambioCuit.modo.Ver);
  }

  private void CucuPersonaActual_EntityChanged(object source, EntityChangedEventArgs e)
  {
    this.limpiar();
  }

  private void InitializeComponent()
  {
    ComponentResourceManager componentResourceManager = new ComponentResourceManager(typeof (frmCambioCuit));
    this.metroLabel4 = new MetroLabel();
    this.CucuPersonaActual = new MetroEntityBox();
    this.metroPanel1 = new MetroPanel();
    this.PersonaEB = new MetroEntityBox();
    this.DetaPersText = new MetroTextBox();
    this.btnGenerar = new SimpleButton();
    this.metroLabel5 = new MetroLabel();
    this.SemaPersRb = new MetroRadioButton();
    this.SefePersRb = new MetroRadioButton();
    this.metroLabel6 = new MetroLabel();
    this.CodiTidoCbo = new MetroComboBox();
    this.NudoPersMsk = new MetroMaskedTextBox();
    this.CucuPersMsk = new MetroMaskedTextBox();
    this.metroLabel1 = new MetroLabel();
    this.metroPanel2 = new MetroPanel();
    this.metroDataGridView1 = new MetroDataGridView();
    this.Oficina = new DataGridViewTextBoxColumn();
    this.Cuenta = new DataGridViewTextBoxColumn();
    this.Cuit = new DataGridViewTextBoxColumn();
    this.Nombre = new DataGridViewTextBoxColumn();
    this.Relacion = new DataGridViewTextBoxColumn();
    this.metroPanel3 = new MetroPanel();
    this.ModificarBtn = new SimpleButton();
    this.BuscarBtn = new SimpleButton();
    this.GuardarBtn = new SimpleButton();
    this.CancelarBtn = new SimpleButton();
    this.PersJuri = new MetroRadioButton();
    this.metroPanel1.SuspendLayout();
    this.metroPanel2.SuspendLayout();
    ((ISupportInitialize) this.metroDataGridView1).BeginInit();
    this.metroPanel3.SuspendLayout();
    this.SuspendLayout();
    this.metroLabel4.AutoSize = false;
    this.metroLabel4.FontWeight = MetroFontWeight.Bold;
    this.metroLabel4.Location = new Point(27, 16 /*0x10*/);
    this.metroLabel4.Name = "metroLabel4";
    this.metroLabel4.Size = new Size(123, 19);
    this.metroLabel4.TabIndex = 9;
    this.metroLabel4.Text = "CUIT/CUIL";
    this.metroLabel4.TextAlign = ContentAlignment.MiddleRight;
    this.CucuPersonaActual.AllowEmpty = false;
    this.CucuPersonaActual.AllowSqlCharacters = false;
    this.CucuPersonaActual.BackColor = Color.White;
    this.CucuPersonaActual.Entity = (Entity) null;
    this.CucuPersonaActual.ExternalValidation = (Func<string>) null;
    this.CucuPersonaActual.Font = new Font("Segoe UI", 14f, FontStyle.Regular, GraphicsUnit.Pixel);
    this.CucuPersonaActual.Location = new Point(175, 12);
    this.CucuPersonaActual.MandatoryWrite = false;
    this.CucuPersonaActual.Margin = new Padding(3, 4, 3, 4);
    this.CucuPersonaActual.MaximumSize = new Size(3000, 23);
    this.CucuPersonaActual.MaxLenght = 50;
    this.CucuPersonaActual.MinimumSize = new Size(100, 23);
    this.CucuPersonaActual.Name = "CucuPersonaActual";
    this.CucuPersonaActual.PropertyDetail = "DetaPers";
    this.CucuPersonaActual.PropertyID = "CucuPers";
    this.CucuPersonaActual.ShowNewButton = false;
    this.CucuPersonaActual.ShowSearchButton = false;
    this.CucuPersonaActual.Size = new Size(384, 23);
    this.CucuPersonaActual.TabIndex = 0;
    this.CucuPersonaActual.TextAlign = HorizontalAlignment.Left;
    this.CucuPersonaActual.TextBoxWidth = 120;
    this.CucuPersonaActual.EntityChanged += new EntityChangedEventHandler(this.CucuPersonaActual_EntityChanged);
    this.metroPanel1.Anchor = AnchorStyles.Top | AnchorStyles.Bottom | AnchorStyles.Left | AnchorStyles.Right;
    this.metroPanel1.BorderStyle = BorderStyle.FixedSingle;
    this.metroPanel1.Controls.Add((Control) this.PersJuri);
    this.metroPanel1.Controls.Add((Control) this.PersonaEB);
    this.metroPanel1.Controls.Add((Control) this.DetaPersText);
    this.metroPanel1.Controls.Add((Control) this.btnGenerar);
    this.metroPanel1.Controls.Add((Control) this.metroLabel5);
    this.metroPanel1.Controls.Add((Control) this.SemaPersRb);
    this.metroPanel1.Controls.Add((Control) this.SefePersRb);
    this.metroPanel1.Controls.Add((Control) this.metroLabel6);
    this.metroPanel1.Controls.Add((Control) this.CodiTidoCbo);
    this.metroPanel1.Controls.Add((Control) this.NudoPersMsk);
    this.metroPanel1.Controls.Add((Control) this.CucuPersMsk);
    this.metroPanel1.Controls.Add((Control) this.metroLabel1);
    this.metroPanel1.Location = new Point(0, 44);
    this.metroPanel1.Name = "metroPanel1";
    this.metroPanel1.ShowBorder = true;
    this.metroPanel1.Size = new Size(927, 113);
    this.metroPanel1.TabIndex = 10;
    this.PersonaEB.AllowEmpty = false;
    this.PersonaEB.AllowSqlCharacters = false;
    this.PersonaEB.BackColor = Color.White;
    this.PersonaEB.Entity = (Entity) null;
    this.PersonaEB.ExternalValidation = (Func<string>) null;
    this.PersonaEB.Font = new Font("Segoe UI", 14f, FontStyle.Regular, GraphicsUnit.Pixel);
    this.PersonaEB.Location = new Point(395, 46);
    this.PersonaEB.MandatoryWrite = false;
    this.PersonaEB.Margin = new Padding(3, 4, 3, 4);
    this.PersonaEB.MaximumSize = new Size(3000, 23);
    this.PersonaEB.MaxLenght = 50;
    this.PersonaEB.MinimumSize = new Size(100, 23);
    this.PersonaEB.Name = "PersonaEB";
    this.PersonaEB.PropertyDetail = "";
    this.PersonaEB.PropertyID = "CucuPers";
    this.PersonaEB.ShowNewButton = false;
    this.PersonaEB.ShowSearchButton = false;
    this.PersonaEB.Size = new Size(400, 23);
    this.PersonaEB.TabIndex = 66;
    this.PersonaEB.TextAlign = HorizontalAlignment.Left;
    this.PersonaEB.TextBoxWidth = 120;
    this.PersonaEB.Visible = false;
    this.DetaPersText.Enabled = false;
    this.DetaPersText.Location = new Point(395, 79);
    this.DetaPersText.Name = "DetaPersText";
    this.DetaPersText.Size = new Size(369, 23);
    this.DetaPersText.TabIndex = 65;
    ((BaseButton) this.btnGenerar).ButtonStyle = (BorderStyles) 3;
    ((Control) this.btnGenerar).Location = new Point(303, 80 /*0x50*/);
    ((Control) this.btnGenerar).Name = "btnGenerar";
    ((Control) this.btnGenerar).Size = new Size(75, 23);
    ((Control) this.btnGenerar).TabIndex = 5;
    ((Control) this.btnGenerar).Text = "Generar";
    ((Control) this.btnGenerar).Click += new EventHandler(this.btnGenerar_Click);
    this.metroLabel5.AutoSize = false;
    this.metroLabel5.Location = new Point(113, 16 /*0x10*/);
    this.metroLabel5.Margin = new Padding(3, 4, 3, 4);
    this.metroLabel5.Name = "metroLabel5";
    this.metroLabel5.Size = new Size(37, 19);
    this.metroLabel5.TabIndex = 63 /*0x3F*/;
    this.metroLabel5.Text = "Sexo";
    this.SemaPersRb.AutoSize = false;
    this.SemaPersRb.Location = new Point(257, 21);
    this.SemaPersRb.Margin = new Padding(3, 4, 3, 4);
    this.SemaPersRb.Name = "SemaPersRb";
    this.SemaPersRb.Size = new Size(78, 15);
    this.SemaPersRb.TabIndex = 1;
    this.SemaPersRb.Text = "Masculino";
    this.SefePersRb.AutoSize = false;
    this.SefePersRb.Checked = true;
    this.SefePersRb.Location = new Point(169, 20);
    this.SefePersRb.Margin = new Padding(3, 4, 3, 4);
    this.SefePersRb.Name = "SefePersRb";
    this.SefePersRb.Size = new Size(76, 15);
    this.SefePersRb.TabIndex = 0;
    this.SefePersRb.TabStop = true;
    this.SefePersRb.Text = "Femenino";
    this.metroLabel6.AutoSize = false;
    this.metroLabel6.Location = new Point(73, 51);
    this.metroLabel6.Margin = new Padding(3, 4, 3, 4);
    this.metroLabel6.Name = "metroLabel6";
    this.metroLabel6.Size = new Size(77, 19);
    this.metroLabel6.TabIndex = 64 /*0x40*/;
    this.metroLabel6.Text = "Documento";
    this.CodiTidoCbo.FormattingEnabled = false;
    this.CodiTidoCbo.Location = new Point(169, 47);
    this.CodiTidoCbo.Margin = new Padding(3, 4, 3, 4);
    this.CodiTidoCbo.Name = "CodiTidoCbo";
    this.CodiTidoCbo.Size = new Size(80 /*0x50*/, 23);
    this.CodiTidoCbo.TabIndex = 2;
    this.NudoPersMsk.Location = new Point((int) byte.MaxValue, 47);
    this.NudoPersMsk.Margin = new Padding(3, 4, 3, 4);
    this.NudoPersMsk.Mask = "90.000.000";
    this.NudoPersMsk.Name = "NudoPersMsk";
    this.NudoPersMsk.Size = new Size(94, 23);
    this.NudoPersMsk.TabIndex = 3;
    this.NudoPersMsk.TextAlign = HorizontalAlignment.Right;
    this.CucuPersMsk.CompleteMaskRequired = true;
    this.CucuPersMsk.Location = new Point(169, 80 /*0x50*/);
    this.CucuPersMsk.Margin = new Padding(3, 4, 3, 4);
    this.CucuPersMsk.Mask = "00-00000000-0";
    this.CucuPersMsk.Name = "CucuPersMsk";
    this.CucuPersMsk.Size = new Size(115, 23);
    this.CucuPersMsk.TabIndex = 4;
    this.CucuPersMsk.TextAlign = HorizontalAlignment.Center;
    this.metroLabel1.AutoSize = false;
    this.metroLabel1.FontWeight = MetroFontWeight.Bold;
    this.metroLabel1.Location = new Point(6, 84);
    this.metroLabel1.Name = "metroLabel1";
    this.metroLabel1.Size = new Size(144 /*0x90*/, 19);
    this.metroLabel1.TabIndex = 12;
    this.metroLabel1.Text = "NUEVO CUIT/CUIL";
    this.metroLabel1.TextAlign = ContentAlignment.MiddleRight;
    this.metroPanel2.Anchor = AnchorStyles.Top | AnchorStyles.Bottom | AnchorStyles.Left | AnchorStyles.Right;
    this.metroPanel2.BorderStyle = BorderStyle.FixedSingle;
    this.metroPanel2.Controls.Add((Control) this.metroDataGridView1);
    this.metroPanel2.Location = new Point(0, 163);
    this.metroPanel2.Name = "metroPanel2";
    this.metroPanel2.Size = new Size(927, 253);
    this.metroPanel2.TabIndex = 11;
    this.metroDataGridView1.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.EnableResizing;
    this.metroDataGridView1.Columns.AddRange((DataGridViewColumn) this.Oficina, (DataGridViewColumn) this.Cuenta, (DataGridViewColumn) this.Cuit, (DataGridViewColumn) this.Nombre, (DataGridViewColumn) this.Relacion);
    this.metroDataGridView1.Dock = DockStyle.Fill;
    this.metroDataGridView1.Location = new Point(0, 0);
    this.metroDataGridView1.Name = "metroDataGridView1";
    this.metroDataGridView1.Size = new Size(925, 251);
    this.metroDataGridView1.TabIndex = 2;
    this.Oficina.DataPropertyName = "Oficina";
    this.Oficina.HeaderText = "Oficina";
    this.Oficina.Name = "Oficina";
    this.Oficina.ReadOnly = true;
    this.Oficina.Width = 150;
    this.Cuenta.DataPropertyName = "Cuenta";
    this.Cuenta.HeaderText = "Cuenta";
    this.Cuenta.Name = "Cuenta";
    this.Cuenta.ReadOnly = true;
    this.Cuit.DataPropertyName = "Cuit";
    this.Cuit.HeaderText = "CUIT";
    this.Cuit.Name = "Cuit";
    this.Cuit.ReadOnly = true;
    this.Cuit.Width = 150;
    this.Nombre.AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;
    this.Nombre.DataPropertyName = "Nombre";
    this.Nombre.HeaderText = "Nombre";
    this.Nombre.Name = "Nombre";
    this.Nombre.ReadOnly = true;
    this.Relacion.DataPropertyName = "Relacion";
    this.Relacion.HeaderText = "Relacion";
    this.Relacion.Name = "Relacion";
    this.Relacion.ReadOnly = true;
    this.Relacion.Width = 150;
    this.metroPanel3.Anchor = AnchorStyles.Top | AnchorStyles.Bottom | AnchorStyles.Left | AnchorStyles.Right;
    this.metroPanel3.BorderStyle = BorderStyle.FixedSingle;
    this.metroPanel3.Controls.Add((Control) this.ModificarBtn);
    this.metroPanel3.Controls.Add((Control) this.BuscarBtn);
    this.metroPanel3.Controls.Add((Control) this.GuardarBtn);
    this.metroPanel3.Controls.Add((Control) this.CancelarBtn);
    this.metroPanel3.Controls.Add((Control) this.CucuPersonaActual);
    this.metroPanel3.Controls.Add((Control) this.metroLabel4);
    this.metroPanel3.Location = new Point(0, 0);
    this.metroPanel3.Name = "metroPanel3";
    this.metroPanel3.Size = new Size(927, 42);
    this.metroPanel3.TabIndex = 12;
    ((Control) this.ModificarBtn).Anchor = AnchorStyles.Top | AnchorStyles.Right;
    this.ModificarBtn.Image = (Image) componentResourceManager.GetObject("ModificarBtn.Image");
    ((Control) this.ModificarBtn).Location = new Point(663, 12);
    ((Control) this.ModificarBtn).Name = "ModificarBtn";
    ((Control) this.ModificarBtn).Size = new Size(79, 23);
    ((Control) this.ModificarBtn).TabIndex = 2;
    ((Control) this.ModificarBtn).Text = "Modificar";
    ((Control) this.ModificarBtn).Click += new EventHandler(this.ModificarBtn_Click);
    ((Control) this.BuscarBtn).Anchor = AnchorStyles.Top | AnchorStyles.Right;
    this.BuscarBtn.Image = (Image) componentResourceManager.GetObject("BuscarBtn.Image");
    ((Control) this.BuscarBtn).Location = new Point(578, 12);
    ((Control) this.BuscarBtn).Name = "BuscarBtn";
    ((Control) this.BuscarBtn).Size = new Size(79, 23);
    ((Control) this.BuscarBtn).TabIndex = 1;
    ((Control) this.BuscarBtn).Text = "Buscar";
    ((Control) this.BuscarBtn).Click += new EventHandler(this.BuscarBtn_Click);
    ((Control) this.GuardarBtn).Anchor = AnchorStyles.Top | AnchorStyles.Right;
    this.GuardarBtn.Image = (Image) componentResourceManager.GetObject("GuardarBtn.Image");
    ((Control) this.GuardarBtn).Location = new Point(753, 12);
    ((Control) this.GuardarBtn).Name = "GuardarBtn";
    ((Control) this.GuardarBtn).Size = new Size(79, 23);
    ((Control) this.GuardarBtn).TabIndex = 3;
    ((Control) this.GuardarBtn).Text = "Guardar";
    ((Control) this.GuardarBtn).Click += new EventHandler(this.GuardarBtn_Click);
    ((Control) this.CancelarBtn).Anchor = AnchorStyles.Top | AnchorStyles.Right;
    this.CancelarBtn.Image = (Image) componentResourceManager.GetObject("CancelarBtn.Image");
    ((Control) this.CancelarBtn).Location = new Point(838, 12);
    ((Control) this.CancelarBtn).Name = "CancelarBtn";
    ((Control) this.CancelarBtn).Size = new Size(75, 23);
    ((Control) this.CancelarBtn).TabIndex = 4;
    ((Control) this.CancelarBtn).Text = "Cancelar";
    ((Control) this.CancelarBtn).Click += new EventHandler(this.CancelarBtn_Click);
    this.PersJuri.AutoSize = false;
    this.PersJuri.Location = new Point(352, 18);
    this.PersJuri.Margin = new Padding(3, 4, 3, 4);
    this.PersJuri.Name = "PersJuri";
    this.PersJuri.Size = new Size((int) sbyte.MaxValue, 18);
    this.PersJuri.TabIndex = 67;
    this.PersJuri.Text = "Persona Jurídica";
    this.PersJuri.CheckedChanged += new EventHandler(this.PersJuri_CheckedChanged);
    this.ClientSize = new Size(927, 416);
    this.Controls.Add((Control) this.metroPanel2);
    this.Controls.Add((Control) this.metroPanel1);
    this.Controls.Add((Control) this.metroPanel3);
    this.Font = new Font("Microsoft Sans Serif", 8.25f, FontStyle.Regular, GraphicsUnit.Point, (byte) 0);
    this.Name = nameof (frmCambioCuit);
    this.metroPanel1.ResumeLayout(false);
    this.metroPanel2.ResumeLayout(false);
    ((ISupportInitialize) this.metroDataGridView1).EndInit();
    this.metroPanel3.ResumeLayout(false);
    this.ResumeLayout(false);
  }

  private void btnGenerar_Click(object sender, EventArgs e)
  {
    string nudo = this.NudoPersMsk.Text.Trim();
    if (nudo.Length <= 0)
      return;
    this.CucuPersMsk.Text = Misc.generarCuil(nudo, this.SemaPersRb.Checked);
    Persona persona = this.EM.Get<Persona>(new ID("CucuPers", (object) this.CucuPersMsk.LongText));
    if (persona != null)
      this.DetaPersText.Text = persona.DetaPers;
    else
      this.DetaPersText.Text = "";
  }

  private void PersJuri_CheckedChanged(object sender, EventArgs e)
  {
    if (this.PersJuri.Checked)
    {
      this.NudoPersMsk.Enabled = false;
      this.CodiTidoCbo.Enabled = false;
      ((Control) this.btnGenerar).Enabled = false;
      this.CucuPersMsk.Enabled = true;
      this.NudoPersMsk.Text = this.CucuPersMsk.Text = "";
    }
    else
    {
      this.NudoPersMsk.Enabled = true;
      this.CodiTidoCbo.Enabled = true;
      ((Control) this.btnGenerar).Enabled = true;
      this.CucuPersMsk.Enabled = false;
    }
  }

  private enum modo
  {
    Ver,
    Modificar,
  }
}
