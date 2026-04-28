// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Ventanas.frmUsuario
// Assembly: plugin-infogov, Version=1.0.0.18780, Culture=neutral, PublicKeyToken=null
// MVID: 33F9E52C-1C9C-4132-80FE-D29F95E246A9
// Assembly location: C:\nomade\para copiar\plugin-infogov.dll

using InfoGov.Common;
using InfoGov.Forms;
using InfoGov.Metro;
using InfoGov.Metro.Controls;
using InfoGov.Plugins.Infogov.Controls;
using InfoGov.Plugins.Infogov.Entidades;
using InfoGov.Plugins.Infogov.Expertos;
using InfoGov.Plugins.Infogov.Properties;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Infogov.Ventanas;

public class frmUsuario : BaseForm
{
  private string CodiUsuaAux = "";
  private frmUsuario.EstadoVentana windowSate = frmUsuario.EstadoVentana.ver;
  private BindingSource bsUsuarios = new BindingSource();
  private BindingSource bsTelefonos = new BindingSource();
  private BindingSource bsRoles = new BindingSource();
  private ExpUsuario expert = new ExpUsuario();
  private List<Usuario> usuariosList = new List<Usuario>();
  private MetroPanel metroPanel1;
  private MetroButton btnNew;
  private MetroDataGridView UsuariosGrid;
  private MetroTextBox UsuarioFilterTxt;
  private MetroPanel metroPanel2;
  private MetroButton btnCancelar;
  private MetroButton btnGuardar;
  private MetroButton btnModificar;
  private MetroButton btnAlta;
  private MetroButton btnBaja;
  private MetroLabel EstadoTxt;
  private MetroTabControl UsuarioTabControl;
  private MetroTabPage UsuarioTabPage;
  private MetroEntityBox PersonaEB;
  private MetroLabel metroLabel1;
  private MetroTextBox ObseUsuaTxt;
  private MetroLabel metroLabel2;
  private MetroLabel metroLabel3;
  private MetroTextBox DetaUsuaTxt;
  private MetroTextBox CodiUsuaTxt;
  private MetroLabel metroLabel6;
  private MetroTabPage TelefonosTabPage;
  private MetroDataGridView TelefonosGrid;
  private DataGridViewTextBoxColumn NumeTeleColumn;
  private DataGridViewTextBoxColumn TipoTeleColumn;
  private DataGridViewTextBoxColumn DetaTeleColumn;
  private MetroTabPage DomicilioTabPage;
  private ucDireccion2 DomicilioPersona;
  private MetroButton btnReiniciarClave;
  private DataGridViewTextBoxColumn CodiUsuaColumn;
  private MetroPanel panelRoles;
  private MetroDataGridView gridRoles;
  private DataGridViewImageColumn BorrarRolColumn;
  private DataGridViewTextBoxColumn CodiRolColumn;
  private DataGridViewTextBoxColumn DetaRolColumn;
  private MetroButton butAgregarRol;
  private MetroEntityBox RolEB;
  private MetroLabel metroLabel4;
  private SplitContainer splitContainer1;

  public frmUsuario()
  {
    this.InitializeComponent();
    this.UsuariosGrid.BorderStyle = BorderStyle.FixedSingle;
    this.UsuariosGrid.DataSource = (object) this.bsUsuarios;
    this.gridRoles.DataSource = (object) this.bsRoles;
    this.PersonaEB.FindEntityFunction = new MetroEntityBox.FindEntityDelegate(this.EncontrarPersona);
    this.PersonaEB.SearchEntityFunction = new MetroEntityBox.SearchEntityDelegate(this.BuscarPersona);
    this.RolEB.FindEntityFunction = new MetroEntityBox.FindEntityDelegate(this.EncontrarRol);
    this.RolEB.SearchEntityFunction = new MetroEntityBox.SearchEntityDelegate(this.BuscarRol);
  }

  private void frmUsuario_Load(object sender, EventArgs e)
  {
    this.windowSate = frmUsuario.EstadoVentana.ver;
    this.ChangeControlModePanel1();
    this.ChangeControlModePanel2();
    this.usuariosList = this.expert.getUsuarios();
    this.bsUsuarios.Clear();
    foreach (object usuarios in this.usuariosList)
      this.bsUsuarios.Add(usuarios);
    this.DomicilioPersona.setCampos("Pers");
    this.TelefonosGrid.DataSource = (object) this.bsTelefonos;
    this.UsuarioFilterTxt.Text = "";
    if (this.CodiUsuaAux.Length != 0)
    {
      Usuario entity = this.expert.GetEntity(new ID("CodiUsua", (object) this.CodiUsuaAux));
      if (entity != null)
      {
        for (int index = 0; index < this.UsuariosGrid.Rows.Count; ++index)
        {
          if (this.UsuariosGrid.Rows[index].Cells[0].Value.ToString() == entity.CodiUsua)
          {
            this.UsuariosGrid.Rows[index].Selected = true;
            this.ShowData(entity);
          }
        }
      }
    }
    this.UsuariosGrid.Refresh();
  }

  private void UsuarioFilterTxt_TextChanged(object sender, EventArgs e)
  {
    this.bsUsuarios.Clear();
    if (this.UsuarioFilterTxt.Text.Length == 0)
    {
      foreach (object usuarios in this.usuariosList)
        this.bsUsuarios.Add(usuarios);
    }
    else
    {
      foreach (Usuario usuarios in this.usuariosList)
      {
        if (usuarios.CodiUsua.Contains(this.UsuarioFilterTxt.Text))
          this.bsUsuarios.Add((object) usuarios);
      }
    }
  }

  private void btnNew_Click(object sender, EventArgs e)
  {
    Usuario enti = new Usuario();
    enti.status = EntityStatus.New;
    this.ShowData(enti);
    this.windowSate = frmUsuario.EstadoVentana.nuevo;
    this.ChangeControlModePanel1();
    this.ChangeControlModePanel2();
  }

  private void ChangeControlModePanel1()
  {
    switch (this.windowSate)
    {
      case frmUsuario.EstadoVentana.ver:
        this.UsuarioFilterTxt.Enabled = this.UsuariosGrid.Enabled = this.btnNew.Enabled = true;
        break;
      case frmUsuario.EstadoVentana.modificar:
        this.UsuarioFilterTxt.Enabled = this.UsuariosGrid.Enabled = this.btnNew.Enabled = false;
        break;
      case frmUsuario.EstadoVentana.nuevo:
        this.UsuarioFilterTxt.Enabled = this.UsuariosGrid.Enabled = this.btnNew.Enabled = false;
        break;
    }
  }

  private void UsuariosGrid_SelectionChanged(object sender, EventArgs e)
  {
    Usuario current = (Usuario) this.bsUsuarios.Current;
    if (current == null)
      return;
    this.ShowData(current);
  }

  private void ChangeControlModePanel2()
  {
    this.EstadoTxt.Enabled = false;
    this.DomicilioPersona.Enabled = false;
    switch (this.windowSate)
    {
      case frmUsuario.EstadoVentana.ver:
        this.PersonaEB.Enabled = this.CodiUsuaTxt.Enabled = this.DetaUsuaTxt.Enabled = this.ObseUsuaTxt.Enabled = false;
        this.BorrarRolColumn.Visible = false;
        this.panelRoles.Enabled = false;
        this.btnBaja.Enabled = this.btnAlta.Enabled = false;
        this.btnReiniciarClave.Enabled = this.hasPermissionFor("Usuario_blanqueo");
        this.btnModificar.Visible = true;
        this.btnGuardar.Visible = this.btnCancelar.Visible = false;
        break;
      case frmUsuario.EstadoVentana.modificar:
        this.PersonaEB.Enabled = this.DetaUsuaTxt.Enabled = this.ObseUsuaTxt.Enabled = true;
        this.CodiUsuaTxt.Enabled = this.DomicilioPersona.Enabled = false;
        this.BorrarRolColumn.Visible = true;
        this.panelRoles.Enabled = true;
        this.btnModificar.Visible = false;
        this.btnGuardar.Visible = this.btnCancelar.Visible = true;
        this.btnAlta.Enabled = this.btnBaja.Enabled = false;
        this.btnReiniciarClave.Enabled = false;
        break;
      case frmUsuario.EstadoVentana.nuevo:
        this.PersonaEB.Enabled = this.CodiUsuaTxt.Enabled = this.DetaUsuaTxt.Enabled = this.ObseUsuaTxt.Enabled = true;
        this.DomicilioPersona.Enabled = false;
        this.BorrarRolColumn.Visible = true;
        this.panelRoles.Enabled = true;
        this.btnModificar.Visible = false;
        this.btnGuardar.Visible = this.btnCancelar.Visible = true;
        this.btnAlta.Enabled = this.btnBaja.Enabled = this.btnReiniciarClave.Enabled = false;
        break;
    }
    this.ReubicarControles();
  }

  private void ShowData(Usuario enti)
  {
    this.PersonaEB.Entity = enti.CucuPers != 0L ? (Entity) this.EM.Get<Persona>(new ID("CucuPers", (object) enti.CucuPers)) : (Entity) null;
    this.CodiUsuaTxt.Text = enti.CodiUsua;
    this.DetaUsuaTxt.Text = enti.DetaUsua;
    this.ObseUsuaTxt.Text = enti.ObseUsua;
    this.bsRoles.Clear();
    this.expert.cargarRoles(enti);
    foreach (object role in enti.roles)
      this.bsRoles.Add(role);
    this.RolEB.Entity = (Entity) null;
    if (enti.BajaFeho != DateTime.MinValue)
    {
      this.EstadoTxt.Text = $"BAJA - {enti.BajaFeho.ToShortDateString()}( {enti.BajaUsua} )";
      this.btnBaja.Enabled = false;
      this.btnAlta.Enabled = true;
    }
    else
    {
      this.EstadoTxt.Text = "ACTIVO";
      this.btnBaja.Enabled = true;
      this.btnAlta.Enabled = false;
    }
  }

  private void PersonaEB_EntityChanged(object source, EntityChangedEventArgs e)
  {
    Persona newEntity = (Persona) e.NewEntity;
    this.bsTelefonos.Clear();
    if (newEntity == null)
      return;
    this.DomicilioPersona.mostrarDireccion((Entity) newEntity);
    foreach (object telefono in newEntity.Telefonos)
      this.bsTelefonos.Add(telefono);
  }

  private void ReubicarControles()
  {
    switch (this.windowSate)
    {
      case frmUsuario.EstadoVentana.ver:
        this.btnModificar.Left = this.btnAlta.Left + this.btnAlta.Width + 3;
        this.btnReiniciarClave.Left = this.btnModificar.Left + this.btnModificar.Width + 3;
        break;
      case frmUsuario.EstadoVentana.modificar:
        this.btnGuardar.Left = this.btnAlta.Left + this.btnAlta.Width + 3;
        this.btnCancelar.Left = this.btnGuardar.Left + this.btnGuardar.Width + 3;
        this.btnReiniciarClave.Left = this.btnCancelar.Left + this.btnCancelar.Width + 3;
        break;
      case frmUsuario.EstadoVentana.nuevo:
        this.btnGuardar.Left = this.btnAlta.Left + this.btnAlta.Width + 3;
        this.btnCancelar.Left = this.btnGuardar.Left + this.btnGuardar.Width + 3;
        this.btnReiniciarClave.Left = this.btnCancelar.Left + this.btnCancelar.Width + 3;
        break;
    }
  }

  private void btnModificar_Click(object sender, EventArgs e)
  {
    this.windowSate = frmUsuario.EstadoVentana.modificar;
    this.ChangeControlModePanel1();
    this.ChangeControlModePanel2();
  }

  private void btnBaja_Click(object sender, EventArgs e)
  {
    if (MessageBox.Show("Desea dar de baja el usuario?", "Confirma Baja", MessageBoxButtons.YesNo) != DialogResult.Yes)
      return;
    Usuario current = (Usuario) this.bsUsuarios.Current;
    current.status = EntityStatus.Deactivated;
    if (this.expert.SaveOnDB(current))
      this.frmUsuario_Load(sender, e);
  }

  private void btnAlta_Click(object sender, EventArgs e)
  {
    if (MessageBox.Show("Desea dar de alta el usuario?", "Confirma Alta", MessageBoxButtons.YesNo) != DialogResult.Yes)
      return;
    Usuario current = (Usuario) this.bsUsuarios.Current;
    current.status = EntityStatus.Activated;
    if (this.expert.SaveOnDB(current))
      this.frmUsuario_Load(sender, e);
  }

  private void btnGuardar_Click(object sender, EventArgs e)
  {
    if (!this.validarDatos())
      return;
    Usuario entity = this.readData();
    this.CodiUsuaAux = entity.CodiUsua;
    if (this.windowSate == frmUsuario.EstadoVentana.nuevo)
      entity.status = EntityStatus.New;
    else if (this.windowSate == frmUsuario.EstadoVentana.modificar)
      entity.status = EntityStatus.Modified;
    if (this.expert.SaveOnDB(entity))
      this.frmUsuario_Load(sender, e);
  }

  private void btnCancelar_Click(object sender, EventArgs e) => this.frmUsuario_Load(sender, e);

  private void btnReiniciarClave_Click(object sender, EventArgs e)
  {
  }

  private bool validarDatos()
  {
    StringBuilder stringBuilder = new StringBuilder();
    bool flag = true;
    stringBuilder.Append(this.validarCodiUsua());
    if (stringBuilder.Length > 0)
    {
      flag = false;
      int num = (int) MessageBox.Show(stringBuilder.ToString());
    }
    return flag;
  }

  private string validarCodiUsua()
  {
    string str = "";
    if (this.windowSate == frmUsuario.EstadoVentana.nuevo)
    {
      if (this.CodiUsuaTxt.Text.Length == 0)
        str = "Ingresar Usuario.";
      else if (this.expert.existeUsuario(this.CodiUsuaTxt.Text))
        str = $"Ya existe el usuario {this.CodiUsuaTxt.Text}.";
    }
    return str;
  }

  private Usuario readData()
  {
    Usuario usuario = new Usuario();
    usuario.CodiUsua = this.CodiUsuaTxt.Text;
    usuario.CucuPers = this.PersonaEB.Entity != null ? ((Persona) this.PersonaEB.Entity).CucuPers : 0L;
    usuario.DetaUsua = this.DetaUsuaTxt.Text;
    usuario.ObseUsua = this.ObseUsuaTxt.Text;
    usuario.roles.Clear();
    foreach (Rol bsRole in this.bsRoles)
      usuario.roles.Add(bsRole);
    return usuario;
  }

  private void gridRoles_CellClick(object sender, DataGridViewCellEventArgs e)
  {
    if (e.ColumnIndex != this.BorrarRolColumn.Index || e.RowIndex < 0)
      return;
    this.bsRoles.RemoveCurrent();
  }

  private void butAgregarRol_Click(object sender, EventArgs e)
  {
    if (!this.validarNuevoRol())
      return;
    this.bsRoles.Add((object) (Rol) this.RolEB.Entity);
    this.RolEB.Entity = (Entity) null;
    this.RolEB.Focus();
  }

  private bool validarNuevoRol()
  {
    StringBuilder stringBuilder = new StringBuilder();
    if (this.RolEB.Entity == null)
    {
      stringBuilder.AppendLine("Ingresar Rol");
    }
    else
    {
      foreach (Rol bsRole in this.bsRoles)
      {
        if (bsRole.CodiRol == ((Rol) this.RolEB.Entity).CodiRol)
        {
          stringBuilder.AppendLine("Rol ya ingresado");
          break;
        }
      }
    }
    if (stringBuilder.Length > 0)
      new frmMensaje((Form) this).mostrarError(stringBuilder.ToString());
    return stringBuilder.Length == 0;
  }

  private Entity BuscarPersona(string text)
  {
    Filter filter = new Filter();
    if (Misc.IsNumeric(text))
      filter.Items.Add(new FilterItem("CucuPers", "Cuit. Persona", FilterMode.Equal, text));
    else
      filter.Items.Add(new FilterItem("DetaPers", "Det. Persona", FilterMode.Contains, text));
    return (Entity) this.EM.Search<Persona>(filter, true);
  }

  private Entity EncontrarPersona(string text, bool useSearch)
  {
    Filter filter = new Filter();
    if (Misc.IsNumeric(text))
      filter.Items.Add(new FilterItem("CucuPers", "Cuit. Persona", FilterMode.Equal, text));
    else
      filter.Items.Add(new FilterItem("DetaPers", "Det. Persona", FilterMode.Contains, text));
    return (Entity) this.EM.Find<Persona>(filter, true, true);
  }

  private Entity BuscarRol(string text)
  {
    Filter filter = new Filter();
    if (Misc.IsNumeric(text))
      filter.Items.Add(new FilterItem("CodiRol", "Cód. Rol", FilterMode.Equal, text));
    else
      filter.Items.Add(new FilterItem("DetaRol", "Det. Rol", FilterMode.Contains, text));
    return (Entity) this.EM.Search<Rol>(filter, true);
  }

  private Entity EncontrarRol(string text, bool useSearch)
  {
    Filter filter = new Filter();
    if (Misc.IsNumeric(text))
      filter.Items.Add(new FilterItem("CodiRol", "Cód. Rol", FilterMode.Equal, text));
    else
      filter.Items.Add(new FilterItem("DetaRol", "Det. Rol", FilterMode.Contains, text));
    return (Entity) this.EM.Find<Rol>(filter, true, true);
  }

  private void InitializeComponent()
  {
    this.splitContainer1 = new SplitContainer();
    this.metroPanel1 = new MetroPanel();
    this.btnNew = new MetroButton();
    this.UsuariosGrid = new MetroDataGridView();
    this.CodiUsuaColumn = new DataGridViewTextBoxColumn();
    this.UsuarioFilterTxt = new MetroTextBox();
    this.metroPanel2 = new MetroPanel();
    this.panelRoles = new MetroPanel();
    this.butAgregarRol = new MetroButton();
    this.RolEB = new MetroEntityBox();
    this.metroLabel4 = new MetroLabel();
    this.gridRoles = new MetroDataGridView();
    this.BorrarRolColumn = new DataGridViewImageColumn();
    this.CodiRolColumn = new DataGridViewTextBoxColumn();
    this.DetaRolColumn = new DataGridViewTextBoxColumn();
    this.EstadoTxt = new MetroLabel();
    this.btnCancelar = new MetroButton();
    this.btnGuardar = new MetroButton();
    this.btnModificar = new MetroButton();
    this.btnAlta = new MetroButton();
    this.btnBaja = new MetroButton();
    this.UsuarioTabControl = new MetroTabControl();
    this.UsuarioTabPage = new MetroTabPage();
    this.PersonaEB = new MetroEntityBox();
    this.metroLabel1 = new MetroLabel();
    this.ObseUsuaTxt = new MetroTextBox();
    this.metroLabel2 = new MetroLabel();
    this.metroLabel3 = new MetroLabel();
    this.DetaUsuaTxt = new MetroTextBox();
    this.CodiUsuaTxt = new MetroTextBox();
    this.metroLabel6 = new MetroLabel();
    this.TelefonosTabPage = new MetroTabPage();
    this.TelefonosGrid = new MetroDataGridView();
    this.NumeTeleColumn = new DataGridViewTextBoxColumn();
    this.TipoTeleColumn = new DataGridViewTextBoxColumn();
    this.DetaTeleColumn = new DataGridViewTextBoxColumn();
    this.DomicilioTabPage = new MetroTabPage();
    this.DomicilioPersona = new ucDireccion2();
    this.btnReiniciarClave = new MetroButton();
    this.splitContainer1.BeginInit();
    this.splitContainer1.Panel1.SuspendLayout();
    this.splitContainer1.Panel2.SuspendLayout();
    this.splitContainer1.SuspendLayout();
    this.metroPanel1.SuspendLayout();
    ((ISupportInitialize) this.UsuariosGrid).BeginInit();
    this.metroPanel2.SuspendLayout();
    this.panelRoles.SuspendLayout();
    ((ISupportInitialize) this.gridRoles).BeginInit();
    this.UsuarioTabControl.SuspendLayout();
    this.UsuarioTabPage.SuspendLayout();
    this.TelefonosTabPage.SuspendLayout();
    ((ISupportInitialize) this.TelefonosGrid).BeginInit();
    this.DomicilioTabPage.SuspendLayout();
    this.SuspendLayout();
    this.splitContainer1.Dock = DockStyle.Fill;
    this.splitContainer1.Location = new Point(0, 0);
    this.splitContainer1.Name = "splitContainer1";
    this.splitContainer1.Panel1.BackColor = SystemColors.ControlLightLight;
    this.splitContainer1.Panel1.Controls.Add((Control) this.metroPanel1);
    this.splitContainer1.Panel2.BackColor = SystemColors.ControlLightLight;
    this.splitContainer1.Panel2.Controls.Add((Control) this.metroPanel2);
    this.splitContainer1.Size = new Size(940, 489);
    this.splitContainer1.SplitterDistance = 177;
    this.splitContainer1.TabIndex = 0;
    this.metroPanel1.Controls.Add((Control) this.btnNew);
    this.metroPanel1.Controls.Add((Control) this.UsuariosGrid);
    this.metroPanel1.Controls.Add((Control) this.UsuarioFilterTxt);
    this.metroPanel1.Dock = DockStyle.Fill;
    this.metroPanel1.HorizontalScrollbarBarColor = true;
    this.metroPanel1.HorizontalScrollbarHighlightOnWheel = false;
    this.metroPanel1.HorizontalScrollbarSize = 10;
    this.metroPanel1.Location = new Point(0, 0);
    this.metroPanel1.Name = "metroPanel1";
    this.metroPanel1.ShowBorder = true;
    this.metroPanel1.Size = new Size(177, 489);
    this.metroPanel1.TabIndex = 0;
    this.metroPanel1.VerticalScrollbarBarColor = true;
    this.metroPanel1.VerticalScrollbarHighlightOnWheel = false;
    this.metroPanel1.VerticalScrollbarSize = 10;
    this.btnNew.Anchor = AnchorStyles.Bottom | AnchorStyles.Right;
    this.btnNew.Location = new Point(94, 453);
    this.btnNew.Margin = new Padding(3, 4, 3, 4);
    this.btnNew.Name = "btnNew";
    this.btnNew.Size = new Size(75, 23);
    this.btnNew.TabIndex = 5;
    this.btnNew.Text = "Nuevo";
    this.btnNew.UseSelectable = true;
    this.btnNew.Click += new EventHandler(this.btnNew_Click);
    this.UsuariosGrid.AllowUserToAddRows = false;
    this.UsuariosGrid.AllowUserToDeleteRows = false;
    this.UsuariosGrid.AllowUserToOrderColumns = true;
    this.UsuariosGrid.AllowUserToResizeRows = false;
    this.UsuariosGrid.Anchor = AnchorStyles.Top | AnchorStyles.Bottom | AnchorStyles.Left | AnchorStyles.Right;
    this.UsuariosGrid.BackgroundColor = Color.White;
    this.UsuariosGrid.BorderStyle = BorderStyle.None;
    this.UsuariosGrid.ColumnHeadersBorderStyle = DataGridViewHeaderBorderStyle.Single;
    this.UsuariosGrid.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.AutoSize;
    this.UsuariosGrid.ColumnHeadersVisible = false;
    this.UsuariosGrid.Columns.AddRange((DataGridViewColumn) this.CodiUsuaColumn);
    this.UsuariosGrid.EditMode = DataGridViewEditMode.EditProgrammatically;
    this.UsuariosGrid.GridColor = Color.White;
    this.UsuariosGrid.Location = new Point(7, 50);
    this.UsuariosGrid.MultiSelect = false;
    this.UsuariosGrid.Name = "UsuariosGrid";
    this.UsuariosGrid.ReadOnly = true;
    this.UsuariosGrid.RowHeadersVisible = false;
    this.UsuariosGrid.SelectionMode = DataGridViewSelectionMode.FullRowSelect;
    this.UsuariosGrid.Size = new Size(162, 388);
    this.UsuariosGrid.TabIndex = 4;
    this.UsuariosGrid.SelectionChanged += new EventHandler(this.UsuariosGrid_SelectionChanged);
    this.CodiUsuaColumn.AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;
    this.CodiUsuaColumn.DataPropertyName = "CodiUsua";
    this.CodiUsuaColumn.HeaderText = "Usuario";
    this.CodiUsuaColumn.Name = "CodiUsuaColumn";
    this.CodiUsuaColumn.ReadOnly = true;
    this.UsuarioFilterTxt.AllowEmpty = false;
    this.UsuarioFilterTxt.AllowSqlCharacters = false;
    this.UsuarioFilterTxt.Anchor = AnchorStyles.Top | AnchorStyles.Left | AnchorStyles.Right;
    this.UsuarioFilterTxt.ExternalValidation = (Func<string>) null;
    this.UsuarioFilterTxt.Location = new Point(20, 13);
    this.UsuarioFilterTxt.Margin = new Padding(3, 4, 3, 4);
    this.UsuarioFilterTxt.MaxLength = 50;
    this.UsuarioFilterTxt.MinLenght = 0;
    this.UsuarioFilterTxt.Name = "UsuarioFilterTxt";
    this.UsuarioFilterTxt.PasswordChar = char.MinValue;
    this.UsuarioFilterTxt.ScrollBars = ScrollBars.None;
    this.UsuarioFilterTxt.SelectedText = "";
    this.UsuarioFilterTxt.ShowBorder = true;
    this.UsuarioFilterTxt.Size = new Size(141, 23);
    this.UsuarioFilterTxt.TabIndex = 3;
    this.UsuarioFilterTxt.UseSelectable = true;
    this.UsuarioFilterTxt.TextChanged += new EventHandler(this.UsuarioFilterTxt_TextChanged);
    this.metroPanel2.Controls.Add((Control) this.panelRoles);
    this.metroPanel2.Controls.Add((Control) this.EstadoTxt);
    this.metroPanel2.Controls.Add((Control) this.btnCancelar);
    this.metroPanel2.Controls.Add((Control) this.btnGuardar);
    this.metroPanel2.Controls.Add((Control) this.btnModificar);
    this.metroPanel2.Controls.Add((Control) this.btnAlta);
    this.metroPanel2.Controls.Add((Control) this.btnBaja);
    this.metroPanel2.Controls.Add((Control) this.UsuarioTabControl);
    this.metroPanel2.Controls.Add((Control) this.btnReiniciarClave);
    this.metroPanel2.Dock = DockStyle.Fill;
    this.metroPanel2.HorizontalScrollbarBarColor = true;
    this.metroPanel2.HorizontalScrollbarHighlightOnWheel = false;
    this.metroPanel2.HorizontalScrollbarSize = 10;
    this.metroPanel2.Location = new Point(0, 0);
    this.metroPanel2.Name = "metroPanel2";
    this.metroPanel2.ShowBorder = true;
    this.metroPanel2.Size = new Size(759, 489);
    this.metroPanel2.TabIndex = 0;
    this.metroPanel2.VerticalScrollbarBarColor = true;
    this.metroPanel2.VerticalScrollbarHighlightOnWheel = false;
    this.metroPanel2.VerticalScrollbarSize = 10;
    this.panelRoles.Anchor = AnchorStyles.Top | AnchorStyles.Bottom | AnchorStyles.Left | AnchorStyles.Right;
    this.panelRoles.Controls.Add((Control) this.butAgregarRol);
    this.panelRoles.Controls.Add((Control) this.RolEB);
    this.panelRoles.Controls.Add((Control) this.metroLabel4);
    this.panelRoles.Controls.Add((Control) this.gridRoles);
    this.panelRoles.HorizontalScrollbarBarColor = true;
    this.panelRoles.HorizontalScrollbarHighlightOnWheel = false;
    this.panelRoles.HorizontalScrollbarSize = 10;
    this.panelRoles.Location = new Point(0, 261);
    this.panelRoles.Name = "panelRoles";
    this.panelRoles.Size = new Size(756, 177);
    this.panelRoles.TabIndex = 1;
    this.panelRoles.VerticalScrollbarBarColor = true;
    this.panelRoles.VerticalScrollbarHighlightOnWheel = false;
    this.panelRoles.VerticalScrollbarSize = 10;
    this.butAgregarRol.Anchor = AnchorStyles.Bottom | AnchorStyles.Right;
    this.butAgregarRol.Location = new Point(672, 150);
    this.butAgregarRol.Margin = new Padding(3, 4, 3, 4);
    this.butAgregarRol.Name = "butAgregarRol";
    this.butAgregarRol.Size = new Size(75, 23);
    this.butAgregarRol.TabIndex = 1;
    this.butAgregarRol.Text = "Agregar";
    this.butAgregarRol.UseSelectable = true;
    this.butAgregarRol.Click += new EventHandler(this.butAgregarRol_Click);
    this.RolEB.AllowEmpty = false;
    this.RolEB.AllowSqlCharacters = false;
    this.RolEB.Anchor = AnchorStyles.Bottom | AnchorStyles.Left | AnchorStyles.Right;
    this.RolEB.BackColor = Color.White;
    this.RolEB.BorderStyle = BorderStyle.FixedSingle;
    this.RolEB.Entity = (Entity) null;
    this.RolEB.ExternalValidation = (Func<string>) null;
    this.RolEB.Font = new Font("Segoe UI", 14f, FontStyle.Regular, GraphicsUnit.Pixel);
    this.RolEB.Location = new Point(58, 150);
    this.RolEB.Margin = new Padding(3, 4, 3, 4);
    this.RolEB.MaximumSize = new Size(3000, 23);
    this.RolEB.MaxLenght = 50;
    this.RolEB.MinimumSize = new Size(100, 23);
    this.RolEB.Name = "RolEB";
    this.RolEB.PropertyDetail = "DetaRol";
    this.RolEB.PropertyID = "CodiRol";
    this.RolEB.ShowNewButton = false;
    this.RolEB.ShowSearchButton = false;
    this.RolEB.Size = new Size(608, 23);
    this.RolEB.TabIndex = 0;
    this.RolEB.TextAlign = HorizontalAlignment.Left;
    this.RolEB.TextBoxWidth = 70;
    this.metroLabel4.Anchor = AnchorStyles.Bottom | AnchorStyles.Left;
    this.metroLabel4.AutoSize = true;
    this.metroLabel4.Location = new Point(24, 154);
    this.metroLabel4.Margin = new Padding(3, 4, 3, 4);
    this.metroLabel4.Name = "metroLabel4";
    this.metroLabel4.Size = new Size(28, 19);
    this.metroLabel4.TabIndex = 4;
    this.metroLabel4.Text = "Rol";
    this.gridRoles.AllowUserToAddRows = false;
    this.gridRoles.AllowUserToDeleteRows = false;
    this.gridRoles.AllowUserToOrderColumns = true;
    this.gridRoles.AllowUserToResizeRows = false;
    this.gridRoles.Anchor = AnchorStyles.Top | AnchorStyles.Bottom | AnchorStyles.Left | AnchorStyles.Right;
    this.gridRoles.BackgroundColor = Color.White;
    this.gridRoles.BorderStyle = BorderStyle.None;
    this.gridRoles.ColumnHeadersBorderStyle = DataGridViewHeaderBorderStyle.Single;
    this.gridRoles.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.AutoSize;
    this.gridRoles.Columns.AddRange((DataGridViewColumn) this.BorrarRolColumn, (DataGridViewColumn) this.CodiRolColumn, (DataGridViewColumn) this.DetaRolColumn);
    this.gridRoles.EditMode = DataGridViewEditMode.EditProgrammatically;
    this.gridRoles.GridColor = Color.White;
    this.gridRoles.Location = new Point(2, 4);
    this.gridRoles.MultiSelect = false;
    this.gridRoles.Name = "gridRoles";
    this.gridRoles.ReadOnly = true;
    this.gridRoles.RowHeadersVisible = false;
    this.gridRoles.SelectionMode = DataGridViewSelectionMode.FullRowSelect;
    this.gridRoles.Size = new Size(754, 139);
    this.gridRoles.TabIndex = 2;
    this.gridRoles.CellClick += new DataGridViewCellEventHandler(this.gridRoles_CellClick);
    this.BorrarRolColumn.HeaderText = "";
    this.BorrarRolColumn.Image = (Image) Resources.delete;
    this.BorrarRolColumn.Name = "BorrarRolColumn";
    this.BorrarRolColumn.ReadOnly = true;
    this.BorrarRolColumn.Width = 30;
    this.CodiRolColumn.DataPropertyName = "CodiRol";
    this.CodiRolColumn.HeaderText = "COD.";
    this.CodiRolColumn.Name = "CodiRolColumn";
    this.CodiRolColumn.ReadOnly = true;
    this.CodiRolColumn.Width = 70;
    this.DetaRolColumn.AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;
    this.DetaRolColumn.DataPropertyName = "DetaRol";
    this.DetaRolColumn.HeaderText = "DETALLE";
    this.DetaRolColumn.Name = "DetaRolColumn";
    this.DetaRolColumn.ReadOnly = true;
    this.EstadoTxt.Anchor = AnchorStyles.Top | AnchorStyles.Right;
    this.EstadoTxt.AutoSize = true;
    this.EstadoTxt.FontWeight = MetroFontWeight.Bold;
    this.EstadoTxt.Location = new Point(268, 10);
    this.EstadoTxt.Margin = new Padding(3, 4, 3, 4);
    this.EstadoTxt.Name = "EstadoTxt";
    this.EstadoTxt.Size = new Size(53, 19);
    this.EstadoTxt.TabIndex = 13;
    this.EstadoTxt.Text = "Estado";
    this.btnCancelar.Anchor = AnchorStyles.Bottom | AnchorStyles.Left;
    this.btnCancelar.Location = new Point(383, 453);
    this.btnCancelar.Margin = new Padding(3, 4, 3, 4);
    this.btnCancelar.Name = "btnCancelar";
    this.btnCancelar.Size = new Size(75, 23);
    this.btnCancelar.TabIndex = 6;
    this.btnCancelar.Text = "Cancelar";
    this.btnCancelar.UseSelectable = true;
    this.btnCancelar.Click += new EventHandler(this.btnCancelar_Click);
    this.btnGuardar.Anchor = AnchorStyles.Bottom | AnchorStyles.Left;
    this.btnGuardar.Location = new Point(302, 453);
    this.btnGuardar.Margin = new Padding(3, 4, 3, 4);
    this.btnGuardar.Name = "btnGuardar";
    this.btnGuardar.Size = new Size(75, 23);
    this.btnGuardar.TabIndex = 5;
    this.btnGuardar.Text = "Guardar";
    this.btnGuardar.UseSelectable = true;
    this.btnGuardar.Click += new EventHandler(this.btnGuardar_Click);
    this.btnModificar.Anchor = AnchorStyles.Bottom | AnchorStyles.Left;
    this.btnModificar.Location = new Point(221, 453);
    this.btnModificar.Margin = new Padding(3, 4, 3, 4);
    this.btnModificar.Name = "btnModificar";
    this.btnModificar.Size = new Size(75, 23);
    this.btnModificar.TabIndex = 4;
    this.btnModificar.Text = "Modificar";
    this.btnModificar.UseSelectable = true;
    this.btnModificar.Click += new EventHandler(this.btnModificar_Click);
    this.btnAlta.Anchor = AnchorStyles.Bottom | AnchorStyles.Left;
    this.btnAlta.Location = new Point(140, 453);
    this.btnAlta.Margin = new Padding(3, 4, 3, 4);
    this.btnAlta.Name = "btnAlta";
    this.btnAlta.Size = new Size(75, 23);
    this.btnAlta.TabIndex = 3;
    this.btnAlta.Text = "Alta";
    this.btnAlta.UseSelectable = true;
    this.btnAlta.Click += new EventHandler(this.btnAlta_Click);
    this.btnBaja.Anchor = AnchorStyles.Bottom | AnchorStyles.Left;
    this.btnBaja.Location = new Point(59, 453);
    this.btnBaja.Margin = new Padding(3, 4, 3, 4);
    this.btnBaja.Name = "btnBaja";
    this.btnBaja.Size = new Size(75, 23);
    this.btnBaja.TabIndex = 2;
    this.btnBaja.Text = "Baja";
    this.btnBaja.UseSelectable = true;
    this.btnBaja.Click += new EventHandler(this.btnBaja_Click);
    this.UsuarioTabControl.Anchor = AnchorStyles.Top | AnchorStyles.Left | AnchorStyles.Right;
    this.UsuarioTabControl.Controls.Add((Control) this.UsuarioTabPage);
    this.UsuarioTabControl.Controls.Add((Control) this.TelefonosTabPage);
    this.UsuarioTabControl.Controls.Add((Control) this.DomicilioTabPage);
    this.UsuarioTabControl.Location = new Point(3, 3);
    this.UsuarioTabControl.Name = "UsuarioTabControl";
    this.UsuarioTabControl.SelectedIndex = 2;
    this.UsuarioTabControl.Size = new Size(753, 252);
    this.UsuarioTabControl.TabIndex = 0;
    this.UsuarioTabControl.UseSelectable = true;
    this.UsuarioTabPage.Controls.Add((Control) this.PersonaEB);
    this.UsuarioTabPage.Controls.Add((Control) this.metroLabel1);
    this.UsuarioTabPage.Controls.Add((Control) this.ObseUsuaTxt);
    this.UsuarioTabPage.Controls.Add((Control) this.metroLabel2);
    this.UsuarioTabPage.Controls.Add((Control) this.metroLabel3);
    this.UsuarioTabPage.Controls.Add((Control) this.DetaUsuaTxt);
    this.UsuarioTabPage.Controls.Add((Control) this.CodiUsuaTxt);
    this.UsuarioTabPage.Controls.Add((Control) this.metroLabel6);
    this.UsuarioTabPage.HorizontalScrollbarBarColor = true;
    this.UsuarioTabPage.HorizontalScrollbarHighlightOnWheel = false;
    this.UsuarioTabPage.HorizontalScrollbarSize = 10;
    this.UsuarioTabPage.Location = new Point(4, 35);
    this.UsuarioTabPage.Name = "UsuarioTabPage";
    this.UsuarioTabPage.Size = new Size(745, 213);
    this.UsuarioTabPage.TabIndex = 0;
    this.UsuarioTabPage.Text = "Usuario";
    this.UsuarioTabPage.VerticalScrollbarBarColor = true;
    this.UsuarioTabPage.VerticalScrollbarHighlightOnWheel = false;
    this.UsuarioTabPage.VerticalScrollbarSize = 10;
    this.PersonaEB.AllowEmpty = false;
    this.PersonaEB.AllowSqlCharacters = false;
    this.PersonaEB.BackColor = Color.White;
    this.PersonaEB.Entity = (Entity) null;
    this.PersonaEB.ExternalValidation = (Func<string>) null;
    this.PersonaEB.Font = new Font("Segoe UI", 14f, FontStyle.Regular, GraphicsUnit.Pixel);
    this.PersonaEB.Location = new Point(123, 12);
    this.PersonaEB.Margin = new Padding(3, 4, 3, 4);
    this.PersonaEB.MaximumSize = new Size(3000, 23);
    this.PersonaEB.MaxLenght = 50;
    this.PersonaEB.MinimumSize = new Size(100, 23);
    this.PersonaEB.Name = "PersonaEB";
    this.PersonaEB.PropertyDetail = "DetaPers";
    this.PersonaEB.PropertyID = "CucuPers";
    this.PersonaEB.ShowNewButton = false;
    this.PersonaEB.ShowSearchButton = false;
    this.PersonaEB.Size = new Size(400, 23);
    this.PersonaEB.TabIndex = 0;
    this.PersonaEB.TextAlign = HorizontalAlignment.Left;
    this.PersonaEB.TextBoxWidth = 120;
    this.PersonaEB.EntityChanged += new EntityChangedEventHandler(this.PersonaEB_EntityChanged);
    this.metroLabel1.AutoSize = true;
    this.metroLabel1.Location = new Point(62, 16 /*0x10*/);
    this.metroLabel1.Margin = new Padding(3, 4, 3, 4);
    this.metroLabel1.Name = "metroLabel1";
    this.metroLabel1.Size = new Size(55, 19);
    this.metroLabel1.TabIndex = 2;
    this.metroLabel1.Text = "Persona";
    this.ObseUsuaTxt.AllowEmpty = false;
    this.ObseUsuaTxt.AllowSqlCharacters = false;
    this.ObseUsuaTxt.ExternalValidation = (Func<string>) null;
    this.ObseUsuaTxt.Location = new Point(123, 105);
    this.ObseUsuaTxt.Margin = new Padding(3, 4, 3, 4);
    this.ObseUsuaTxt.MaxLength = (int) short.MaxValue;
    this.ObseUsuaTxt.MinLenght = 0;
    this.ObseUsuaTxt.Name = "ObseUsuaTxt";
    this.ObseUsuaTxt.PasswordChar = char.MinValue;
    this.ObseUsuaTxt.ScrollBars = ScrollBars.None;
    this.ObseUsuaTxt.SelectedText = "";
    this.ObseUsuaTxt.ShowBorder = true;
    this.ObseUsuaTxt.Size = new Size(428, 23);
    this.ObseUsuaTxt.TabIndex = 3;
    this.ObseUsuaTxt.UseSelectable = true;
    this.metroLabel2.AutoSize = true;
    this.metroLabel2.Location = new Point(64 /*0x40*/, 47);
    this.metroLabel2.Margin = new Padding(3, 4, 3, 4);
    this.metroLabel2.Name = "metroLabel2";
    this.metroLabel2.Size = new Size(53, 19);
    this.metroLabel2.TabIndex = 3;
    this.metroLabel2.Text = "Usuario";
    this.metroLabel3.AutoSize = true;
    this.metroLabel3.Location = new Point(20, 78);
    this.metroLabel3.Margin = new Padding(3, 4, 3, 4);
    this.metroLabel3.Name = "metroLabel3";
    this.metroLabel3.Size = new Size(97, 19);
    this.metroLabel3.TabIndex = 4;
    this.metroLabel3.Text = "Detalle Usuario";
    this.DetaUsuaTxt.AllowEmpty = false;
    this.DetaUsuaTxt.AllowSqlCharacters = false;
    this.DetaUsuaTxt.ExternalValidation = (Func<string>) null;
    this.DetaUsuaTxt.Location = new Point(123, 74);
    this.DetaUsuaTxt.Margin = new Padding(3, 4, 3, 4);
    this.DetaUsuaTxt.MaxLength = (int) short.MaxValue;
    this.DetaUsuaTxt.MinLenght = 0;
    this.DetaUsuaTxt.Name = "DetaUsuaTxt";
    this.DetaUsuaTxt.PasswordChar = char.MinValue;
    this.DetaUsuaTxt.ScrollBars = ScrollBars.None;
    this.DetaUsuaTxt.SelectedText = "";
    this.DetaUsuaTxt.ShowBorder = true;
    this.DetaUsuaTxt.Size = new Size(428, 23);
    this.DetaUsuaTxt.TabIndex = 2;
    this.DetaUsuaTxt.UseSelectable = true;
    this.CodiUsuaTxt.AllowEmpty = false;
    this.CodiUsuaTxt.AllowSqlCharacters = false;
    this.CodiUsuaTxt.ExternalValidation = (Func<string>) null;
    this.CodiUsuaTxt.Location = new Point(123, 43);
    this.CodiUsuaTxt.Margin = new Padding(3, 4, 3, 4);
    this.CodiUsuaTxt.MaxLength = 20;
    this.CodiUsuaTxt.MinLenght = 0;
    this.CodiUsuaTxt.Name = "CodiUsuaTxt";
    this.CodiUsuaTxt.PasswordChar = char.MinValue;
    this.CodiUsuaTxt.ScrollBars = ScrollBars.None;
    this.CodiUsuaTxt.SelectedText = "";
    this.CodiUsuaTxt.ShowBorder = true;
    this.CodiUsuaTxt.Size = new Size(121, 23);
    this.CodiUsuaTxt.TabIndex = 1;
    this.CodiUsuaTxt.UseSelectable = true;
    this.metroLabel6.AutoSize = true;
    this.metroLabel6.Location = new Point(22, 109);
    this.metroLabel6.Margin = new Padding(3, 4, 3, 4);
    this.metroLabel6.Name = "metroLabel6";
    this.metroLabel6.Size = new Size(95, 19);
    this.metroLabel6.TabIndex = 7;
    this.metroLabel6.Text = "Observaciones";
    this.TelefonosTabPage.Controls.Add((Control) this.TelefonosGrid);
    this.TelefonosTabPage.HorizontalScrollbarBarColor = true;
    this.TelefonosTabPage.HorizontalScrollbarHighlightOnWheel = false;
    this.TelefonosTabPage.HorizontalScrollbarSize = 10;
    this.TelefonosTabPage.Location = new Point(4, 35);
    this.TelefonosTabPage.Name = "TelefonosTabPage";
    this.TelefonosTabPage.Size = new Size(745, 213);
    this.TelefonosTabPage.TabIndex = 2;
    this.TelefonosTabPage.Text = "Telefonos";
    this.TelefonosTabPage.VerticalScrollbarBarColor = true;
    this.TelefonosTabPage.VerticalScrollbarHighlightOnWheel = false;
    this.TelefonosTabPage.VerticalScrollbarSize = 10;
    this.TelefonosGrid.AllowUserToAddRows = false;
    this.TelefonosGrid.AllowUserToDeleteRows = false;
    this.TelefonosGrid.AllowUserToOrderColumns = true;
    this.TelefonosGrid.AllowUserToResizeRows = false;
    this.TelefonosGrid.BackgroundColor = Color.White;
    this.TelefonosGrid.BorderStyle = BorderStyle.None;
    this.TelefonosGrid.ColumnHeadersBorderStyle = DataGridViewHeaderBorderStyle.Single;
    this.TelefonosGrid.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.AutoSize;
    this.TelefonosGrid.Columns.AddRange((DataGridViewColumn) this.NumeTeleColumn, (DataGridViewColumn) this.TipoTeleColumn, (DataGridViewColumn) this.DetaTeleColumn);
    this.TelefonosGrid.EditMode = DataGridViewEditMode.EditProgrammatically;
    this.TelefonosGrid.GridColor = Color.White;
    this.TelefonosGrid.Location = new Point(0, 0);
    this.TelefonosGrid.MultiSelect = false;
    this.TelefonosGrid.Name = "TelefonosGrid";
    this.TelefonosGrid.ReadOnly = true;
    this.TelefonosGrid.RowHeadersVisible = false;
    this.TelefonosGrid.SelectionMode = DataGridViewSelectionMode.FullRowSelect;
    this.TelefonosGrid.Size = new Size(745, 210);
    this.TelefonosGrid.TabIndex = 2;
    this.NumeTeleColumn.DataPropertyName = "NumeTele";
    this.NumeTeleColumn.HeaderText = "Número";
    this.NumeTeleColumn.Name = "NumeTeleColumn";
    this.NumeTeleColumn.ReadOnly = true;
    this.TipoTeleColumn.DataPropertyName = "TipoTele";
    this.TipoTeleColumn.HeaderText = "Tipo Teléfono";
    this.TipoTeleColumn.Name = "TipoTeleColumn";
    this.TipoTeleColumn.ReadOnly = true;
    this.DetaTeleColumn.AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;
    this.DetaTeleColumn.DataPropertyName = "DetaTele";
    this.DetaTeleColumn.HeaderText = "Detalle";
    this.DetaTeleColumn.Name = "DetaTeleColumn";
    this.DetaTeleColumn.ReadOnly = true;
    this.DomicilioTabPage.Controls.Add((Control) this.DomicilioPersona);
    this.DomicilioTabPage.HorizontalScrollbarBarColor = true;
    this.DomicilioTabPage.HorizontalScrollbarHighlightOnWheel = false;
    this.DomicilioTabPage.HorizontalScrollbarSize = 10;
    this.DomicilioTabPage.Location = new Point(4, 35);
    this.DomicilioTabPage.Name = "DomicilioTabPage";
    this.DomicilioTabPage.Size = new Size(745, 213);
    this.DomicilioTabPage.TabIndex = 1;
    this.DomicilioTabPage.Text = "Domicilio";
    this.DomicilioTabPage.VerticalScrollbarBarColor = true;
    this.DomicilioTabPage.VerticalScrollbarHighlightOnWheel = false;
    this.DomicilioTabPage.VerticalScrollbarSize = 10;
    this.DomicilioPersona.BackColor = Color.White;
    this.DomicilioPersona.IsValid = true;
    this.DomicilioPersona.Location = new Point(5, 0);
    this.DomicilioPersona.Name = "DomicilioPersona";
    this.DomicilioPersona.Size = new Size(737, 217);
    this.DomicilioPersona.TabIndex = 2;
    this.btnReiniciarClave.Anchor = AnchorStyles.Bottom | AnchorStyles.Left;
    this.btnReiniciarClave.Location = new Point(464, 453);
    this.btnReiniciarClave.Margin = new Padding(3, 4, 3, 4);
    this.btnReiniciarClave.Name = "btnReiniciarClave";
    this.btnReiniciarClave.Size = new Size(114, 23);
    this.btnReiniciarClave.TabIndex = 7;
    this.btnReiniciarClave.Text = "Reiniciar Clave";
    this.btnReiniciarClave.UseSelectable = true;
    this.btnReiniciarClave.Click += new EventHandler(this.btnReiniciarClave_Click);
    this.ClientSize = new Size(940, 489);
    this.Controls.Add((Control) this.splitContainer1);
    this.Font = new Font("Microsoft Sans Serif", 8.25f, FontStyle.Regular, GraphicsUnit.Point, (byte) 0);
    this.Name = nameof (frmUsuario);
    this.Text = "Usuarios";
    this.Load += new EventHandler(this.frmUsuario_Load);
    this.splitContainer1.Panel1.ResumeLayout(false);
    this.splitContainer1.Panel2.ResumeLayout(false);
    this.splitContainer1.EndInit();
    this.splitContainer1.ResumeLayout(false);
    this.metroPanel1.ResumeLayout(false);
    ((ISupportInitialize) this.UsuariosGrid).EndInit();
    this.metroPanel2.ResumeLayout(false);
    this.metroPanel2.PerformLayout();
    this.panelRoles.ResumeLayout(false);
    this.panelRoles.PerformLayout();
    ((ISupportInitialize) this.gridRoles).EndInit();
    this.UsuarioTabControl.ResumeLayout(false);
    this.UsuarioTabPage.ResumeLayout(false);
    this.UsuarioTabPage.PerformLayout();
    this.TelefonosTabPage.ResumeLayout(false);
    ((ISupportInitialize) this.TelefonosGrid).EndInit();
    this.DomicilioTabPage.ResumeLayout(false);
    this.ResumeLayout(false);
  }

  private enum EstadoVentana
  {
    ver,
    modificar,
    nuevo,
  }
}
