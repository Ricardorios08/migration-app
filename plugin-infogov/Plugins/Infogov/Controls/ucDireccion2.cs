// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Controls.ucDireccion2
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
using System.ComponentModel;
using System.Drawing;
using System.Runtime.InteropServices;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Infogov.Controls;

public class ucDireccion2 : UserControl
{
  private EntityManager EM = new EntityManager(0);
  private ExpCodigoPostal expcopo;
  public string CampoCodiCall = "CodiCall";
  public string CampoDecaDire = "DecaDire";
  public string CampoNumeDire = "NumeDire";
  public string CampoPisoDire = "PisoDire";
  public string CampoDptoDire = "DptoDire";
  public string CampoLoteDire = PARAMS.Municipio == "Alvear" ? "LocCome" : "LoteDire";
  public string CampoManzDire = "ManzDire";
  public string CampoCasaDire = "CasaDire";
  public string CampoCodiBarr = "CodiBarr";
  public string CampoDebaDire = "DebaDire";
  public string CampoCodiDist = "CodiDist";
  public string CampoDediDire = "DediDire";
  public string CampoCodiDepa = "CodiDepa";
  public string CampoDedeDire = "DedeDire";
  public string CampoCodiLoca = "CodiLoca";
  public string CampoDeloDire = "DeloDire";
  public string CampoCopoDire = "CopoDire";
  public string CampoCodiProv = "CodiProv";
  public string CampoDeprDire = "DeprDire";
  private bool novalidardepto = false;
  private bool hasBeenValidated = false;
  private bool isValid = true;
  private MetroDetaBox CalleDetaText;
  private MetroLink CalleLink;
  private MetroTextBox NumeDireText;
  private MetroTextBox PisoDireText;
  private MetroLabel metroLabel2;
  private MetroTextBox DepaDireText;
  private MetroLabel metroLabel3;
  private MetroTextBox LoteDireText;
  private MetroLabel metroLabel4;
  private MetroTextBox ManzDireText;
  private MetroLabel metroLabel5;
  private MetroDetaBox BarrioDetaText;
  private MetroLink BarrioLink;
  private MetroDetaBox DistritoDetaText;
  private MetroDetaBox DepartamentoDetaText;
  private MetroLink DistritoLink;
  private MetroLink DepartamentoLink;
  private MetroTextBox CopoDireText;
  private MetroLabel metroLabel7;
  private MetroDetaBox ProvinciaDetaText;
  private MetroLink ProvinciaLink;
  private MetroLabel metroLabel1;
  private MetroLabel metroLabel8;
  private MetroTextBox CasaDireText;
  private MetroDetaBox LocalidadDetaText;
  private MetroLink LocalidadLink;

  public ucDireccion2()
  {
    this.InitializeComponent();
    this.addLinkEvents();
    this.addDetaTextBoxEvents();
    this.CopoDireText.KeyPress += new KeyPressEventHandler(this.CopoDireText_KeyPress);
    this.CopoDireText.ExternalValidation = new Func<string>(this.validarCodigoPostal);
    if (this.DesignMode)
      return;
    this.expcopo = new ExpCodigoPostal();
  }

  protected new bool DesignMode
  {
    get => base.DesignMode || LicenseManager.UsageMode == LicenseUsageMode.Designtime;
  }

  public void setCampos(string tabla)
  {
    this.CampoDecaDire = "Deca" + tabla;
    this.CampoNumeDire = "Nume" + tabla;
    this.CampoPisoDire = "Piso" + tabla;
    this.CampoDptoDire = "Dpto" + tabla;
    this.CampoLoteDire = "Lote" + tabla;
    this.CampoManzDire = "Manz" + tabla;
    this.CampoCasaDire = "Casa" + tabla;
    this.CampoDebaDire = "Deba" + tabla;
    this.CampoDediDire = "Dedi" + tabla;
    this.CampoDedeDire = "Dede" + tabla;
    this.CampoDeloDire = "Delo" + tabla;
    this.CampoCopoDire = "Copo" + tabla;
    this.CampoDeprDire = "Depr" + tabla;
  }

  public void mostrarDireccion(Entity entity)
  {
    this.CalleDetaText.TextCodi = this.readProperty(entity, this.CampoCodiCall);
    this.CalleDetaText.TextDeta = this.readProperty(entity, this.CampoDecaDire);
    this.NumeDireText.Text = this.readProperty(entity, this.CampoNumeDire);
    this.PisoDireText.Text = this.readProperty(entity, this.CampoPisoDire);
    this.DepaDireText.Text = this.readProperty(entity, this.CampoDptoDire);
    this.LoteDireText.Text = this.readProperty(entity, this.CampoLoteDire);
    this.ManzDireText.Text = this.readProperty(entity, this.CampoManzDire);
    this.CasaDireText.Text = this.readProperty(entity, this.CampoCasaDire);
    this.BarrioDetaText.TextCodi = this.readProperty(entity, this.CampoCodiBarr);
    this.BarrioDetaText.TextDeta = this.readProperty(entity, this.CampoDebaDire);
    this.DepartamentoDetaText.TextCodi = this.readProperty(entity, this.CampoCodiDepa);
    this.DepartamentoDetaText.TextDeta = this.readProperty(entity, this.CampoDedeDire);
    this.DistritoDetaText.TextCodi = this.readProperty(entity, this.CampoCodiDist);
    this.DistritoDetaText.TextDeta = this.readProperty(entity, this.CampoDediDire);
    this.LocalidadDetaText.TextCodi = this.readProperty(entity, this.CampoCodiLoca);
    this.LocalidadDetaText.TextDeta = this.readProperty(entity, this.CampoDeloDire);
    this.CopoDireText.Text = this.readProperty(entity, this.CampoCopoDire);
    this.ProvinciaDetaText.TextCodi = this.readProperty(entity, this.CampoCodiProv);
    this.ProvinciaDetaText.TextDeta = this.readProperty(entity, this.CampoDeprDire);
  }

  public void cargarDireccion(Entity entity)
  {
    this.writeProperty(entity, this.CampoCodiCall, (object) this.CalleDetaText.IntCodi);
    this.writeProperty(entity, this.CampoDecaDire, (object) this.CalleDetaText.TextDeta);
    this.writeProperty(entity, this.CampoNumeDire, (object) this.NumeDireText.Text);
    this.writeProperty(entity, this.CampoPisoDire, (object) this.PisoDireText.Text);
    this.writeProperty(entity, this.CampoDptoDire, (object) this.DepaDireText.Text);
    this.writeProperty(entity, this.CampoLoteDire, (object) this.LoteDireText.Text);
    this.writeProperty(entity, this.CampoManzDire, (object) this.ManzDireText.Text);
    this.writeProperty(entity, this.CampoCasaDire, (object) this.CasaDireText.Text);
    this.writeProperty(entity, this.CampoCodiBarr, (object) this.BarrioDetaText.ShortCodi);
    this.writeProperty(entity, this.CampoDebaDire, (object) this.BarrioDetaText.TextDeta);
    this.writeProperty(entity, this.CampoCodiDist, (object) this.DistritoDetaText.ShortCodi);
    this.writeProperty(entity, this.CampoDediDire, (object) this.DistritoDetaText.TextDeta);
    this.writeProperty(entity, this.CampoCodiDepa, (object) this.DepartamentoDetaText.ShortCodi);
    this.writeProperty(entity, this.CampoDedeDire, (object) this.DepartamentoDetaText.TextDeta);
    this.writeProperty(entity, this.CampoCodiLoca, (object) this.LocalidadDetaText.IntCodi);
    this.writeProperty(entity, this.CampoDeloDire, (object) this.LocalidadDetaText.TextDeta);
    this.writeProperty(entity, this.CampoCopoDire, (object) this.CopoDireText.Text);
    this.writeProperty(entity, this.CampoCodiProv, (object) this.ProvinciaDetaText.ShortCodi);
    this.writeProperty(entity, this.CampoDeprDire, (object) this.ProvinciaDetaText.TextDeta);
  }

  public void limpiarDirecion()
  {
    this.CalleDetaText.IntCodi = this.LocalidadDetaText.IntCodi = 0;
    this.BarrioDetaText.ShortCodi = this.DistritoDetaText.ShortCodi = this.DepartamentoDetaText.ShortCodi = this.ProvinciaDetaText.ShortCodi = (short) 0;
    this.CalleDetaText.TextDeta = this.NumeDireText.Text = this.PisoDireText.Text = this.DepaDireText.Text = this.LoteDireText.Text = this.ManzDireText.Text = this.CasaDireText.Text = this.BarrioDetaText.TextDeta = this.DistritoDetaText.TextDeta = this.DepartamentoDetaText.TextDeta = this.LocalidadDetaText.TextDeta = this.CopoDireText.Text = this.ProvinciaDetaText.TextDeta = "";
  }

  private string readProperty(Entity entity, string pname)
  {
    string str;
    try
    {
      str = entity.GetType().GetProperty(pname).GetValue((object) entity, (object[]) null).ToString();
    }
    catch
    {
      str = "";
    }
    return str;
  }

  private void writeProperty(Entity entity, string pname, object value)
  {
    try
    {
      entity.GetType().GetProperty(pname).SetValue((object) entity, value, (object[]) null);
    }
    catch
    {
    }
  }

  private void addLinkEvents()
  {
    this.CalleLink.Click += new EventHandler(this.CalleLink_Click);
    this.BarrioLink.Click += new EventHandler(this.BarrioLink_Click);
    this.DistritoLink.Click += new EventHandler(this.DistritoLink_Click);
    this.DepartamentoLink.Click += new EventHandler(this.DepartamentoLink_Click);
    this.LocalidadLink.Click += new EventHandler(this.LocalidadLink_Click);
    this.ProvinciaLink.Click += new EventHandler(this.ProvinciaLink_Click);
  }

  private void CalleLink_Click(object sender, EventArgs e)
  {
    Calle calle = this.EM.Search<Calle>(new Filter(), true);
    if (calle == null)
      return;
    this.CalleDetaText.Entity = (Entity) calle;
  }

  private void BarrioLink_Click(object sender, EventArgs e)
  {
    Barrio barrio = this.EM.Search<Barrio>(new Filter(), true);
    if (barrio == null)
      return;
    this.BarrioDetaText.Entity = (Entity) barrio;
  }

  private void DistritoLink_Click(object sender, EventArgs e)
  {
    Filter filter = new Filter();
    Departamento entity = (Departamento) this.DepartamentoDetaText.Entity;
    if (entity != null)
    {
      FilterItem filterItem = new FilterItem("CodiDepa", "Departamento", FilterMode.Equal, entity.CodiDepa.ToString());
      filter.Restrictions.Add(filterItem);
    }
    Distrito distrito = this.EM.Search<Distrito>(filter, true);
    if (distrito == null)
      return;
    this.DistritoDetaText.Entity = (Entity) distrito;
  }

  private void DepartamentoLink_Click(object sender, EventArgs e)
  {
    Departamento departamento = this.EM.Search<Departamento>(new Filter(), true);
    if (departamento == null)
      return;
    this.DepartamentoDetaText.Entity = (Entity) departamento;
  }

  private void LocalidadLink_Click(object sender, EventArgs e)
  {
    Localidad localidad = this.EM.Search<Localidad>(new Filter(), true);
    if (localidad == null)
      return;
    this.LocalidadDetaText.Entity = (Entity) localidad;
  }

  private void ProvinciaLink_Click(object sender, EventArgs e)
  {
    Provincia provincia = this.EM.Search<Provincia>(new Filter(), true);
    if (provincia == null)
      return;
    this.ProvinciaDetaText.Entity = (Entity) provincia;
  }

  private void addDetaTextBoxEvents()
  {
    this.CalleDetaText.FindEntityFunction = new MetroDetaBox.FindEntityDelegate(this.findCalle);
    this.CalleDetaText.SearchEntityFunction = new MetroDetaBox.SearchEntityDelegate(this.searchCalle);
    this.CalleDetaText.ExternalValidation = new Func<string>(this.validateCalle);
    this.BarrioDetaText.FindEntityFunction = new MetroDetaBox.FindEntityDelegate(this.findBarrio);
    this.BarrioDetaText.SearchEntityFunction = new MetroDetaBox.SearchEntityDelegate(this.searchBarrio);
    this.BarrioDetaText.ExternalValidation = new Func<string>(this.validateBarrio);
    this.DistritoDetaText.FindEntityFunction = new MetroDetaBox.FindEntityDelegate(this.findDistrito);
    this.DistritoDetaText.SearchEntityFunction = new MetroDetaBox.SearchEntityDelegate(this.searchDistrito);
    this.DistritoDetaText.ExternalValidation = new Func<string>(this.validateDistrito);
    this.DepartamentoDetaText.FindEntityFunction = new MetroDetaBox.FindEntityDelegate(this.findDepartamento);
    this.DepartamentoDetaText.SearchEntityFunction = new MetroDetaBox.SearchEntityDelegate(this.searchDepartamento);
    this.DepartamentoDetaText.ExternalValidation = new Func<string>(this.validateDepartamento);
    this.LocalidadDetaText.FindEntityFunction = new MetroDetaBox.FindEntityDelegate(this.findLocalidad);
    this.LocalidadDetaText.SearchEntityFunction = new MetroDetaBox.SearchEntityDelegate(this.searchLocalidad);
    this.LocalidadDetaText.ExternalValidation = new Func<string>(this.validateLocalidad);
    this.ProvinciaDetaText.FindEntityFunction = new MetroDetaBox.FindEntityDelegate(this.findProvincia);
    this.ProvinciaDetaText.SearchEntityFunction = new MetroDetaBox.SearchEntityDelegate(this.searchProvincia);
    this.ProvinciaDetaText.ExternalValidation = new Func<string>(this.validateProvincia);
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

  private Entity findDistrito(string text, bool useSearch)
  {
    Filter filter = this.createFilter("CodiDist", "DetaDist", "Distrito", text);
    Departamento entity = (Departamento) this.DepartamentoDetaText.Entity;
    if (entity != null)
    {
      FilterItem filterItem = new FilterItem("CodiDepa", "Departamento", FilterMode.Equal, entity.CodiDepa.ToString());
      filter.Restrictions.Add(filterItem);
    }
    return (Entity) this.EM.Find<Distrito>(filter, true, useSearch);
  }

  private Entity searchDistrito(string text)
  {
    Filter filter = this.createFilter("CodiDist", "DetaDist", "Distrito", text);
    Departamento entity = (Departamento) this.DepartamentoDetaText.Entity;
    if (entity != null)
    {
      FilterItem filterItem = new FilterItem("departamento.CodiDepa", "Departamento", FilterMode.Equal, entity.CodiDepa.ToString());
      filter.Restrictions.Add(filterItem);
    }
    return (Entity) this.EM.Search<Distrito>(filter, true);
  }

  private string validateDistrito() => "";

  private Entity findDepartamento(string text, bool useSearch)
  {
    Departamento entity;
    if (this.DepartamentoDetaText.Entity == null || ((Departamento) this.DepartamentoDetaText.Entity).CodiDepa.ToString() != text)
    {
      entity = this.EM.Find<Departamento>(this.createFilter("CodiDepa", "DetaDepa", "Departamento", text), true, useSearch);
      if (entity != null)
        this.DistritoDetaText.Entity = (Entity) null;
    }
    else
      entity = (Departamento) this.DepartamentoDetaText.Entity;
    return (Entity) entity;
  }

  private Entity searchDepartamento(string text)
  {
    return (Entity) this.EM.Search<Departamento>(this.createFilter("CodiDepa", "DetaDepa", "Departamento", text), true);
  }

  private string validateDepartamento()
  {
    if (!this.novalidardepto)
      ;
    return "";
  }

  private Entity findLocalidad(string text, bool useSearch)
  {
    return (Entity) this.EM.Find<Localidad>(this.createFilter("CodiLoca", "DetaLoca", "Localidad", text), true, useSearch);
  }

  private Entity searchLocalidad(string text)
  {
    return (Entity) this.EM.Search<Localidad>(this.createFilter("CodiLoca", "DetaLoca", "Localidad", text), true);
  }

  private string validateLocalidad() => "";

  private Entity findProvincia(string text, bool useSearch)
  {
    return (Entity) this.EM.Find<Provincia>(this.createFilter("CodiProv", "DetaProv", "Provincia", text), true, useSearch);
  }

  private Entity searchProvincia(string text)
  {
    return (Entity) this.EM.Search<Provincia>(this.createFilter("CodiProv", "DetaProv", "Provincia", text), true);
  }

  private string validateProvincia()
  {
    if ((Provincia) this.ProvinciaDetaText.Entity == null)
      ;
    return "";
  }

  private Filter createFilter(string codi, string deta, string name, string text)
  {
    Filter filter = new Filter();
    if (Misc.IsNumeric(text))
      filter.Items.Add(new FilterItem(codi, name, FilterMode.Equal, text));
    else
      filter.Items.Add(new FilterItem(deta, name, FilterMode.Contains, text));
    return filter;
  }

  protected override void OnEnabledChanged(EventArgs e)
  {
    base.OnEnabledChanged(e);
    if (!this.Enabled)
      ;
  }

  private void CopoDireText_KeyPress(object sender, KeyPressEventArgs e)
  {
    if (e.KeyChar != '+')
      return;
    e.Handled = true;
    Filter filter = new Filter();
    if (this.CopoDireText.Text.Trim().Length > 0)
    {
      FilterItem filterItem = new FilterItem("CodiCopo", "Código Postal", FilterMode.StartsWith, this.CopoDireText.Text.Trim());
      filter.Items.Add(filterItem);
    }
    CodigoPostal codigoPostal = this.EM.Find<CodigoPostal>(filter, false, true);
    if (codigoPostal != null)
      this.CopoDireText.Text = codigoPostal.CodiCopo.ToString();
    else
      this.CopoDireText.Text = "";
  }

  private string validarCodigoPostal()
  {
    string str = "";
    if (this.CopoDireText.Text.Trim().Length > 0)
    {
      if (!this.expcopo.existeCopo(this.CopoDireText.Text.Trim()))
        str = "Código inválido";
    }
    else
      str = "El campo no puede quedar vacío.";
    if (str.Length > 0)
      this.CopoDireText.Text = "";
    return str;
  }

  [Browsable(false)]
  public bool IsValid
  {
    get
    {
      if (!this.Enabled)
        return true;
      if (!this.hasBeenValidated)
        this.Validate();
      return this.isValid;
    }
    set
    {
      this.hasBeenValidated = true;
      this.isValid = value;
      this.Refresh();
    }
  }

  public new bool Validate()
  {
    bool flag1 = true & this.CalleDetaText.IsValid & this.NumeDireText.IsValid & this.PisoDireText.IsValid;
    this.novalidardepto = true;
    bool flag2 = flag1 & this.DepaDireText.IsValid;
    this.novalidardepto = false;
    bool flag3 = flag2 & this.LoteDireText.IsValid & this.ManzDireText.IsValid & this.CasaDireText.IsValid & this.BarrioDetaText.IsValid & this.DistritoDetaText.IsValid & this.DepartamentoDetaText.IsValid & this.LocalidadDetaText.IsValid & this.CopoDireText.IsValid & this.ProvinciaDetaText.IsValid;
    this.IsValid = flag3;
    return flag3;
  }

  private void InitializeComponent()
  {
    ComponentResourceManager componentResourceManager = new ComponentResourceManager(typeof (ucDireccion2));
    this.ProvinciaLink = new MetroLink();
    this.ProvinciaDetaText = new MetroDetaBox();
    this.metroLabel7 = new MetroLabel();
    this.CopoDireText = new MetroTextBox();
    this.DepartamentoLink = new MetroLink();
    this.DistritoLink = new MetroLink();
    this.DepartamentoDetaText = new MetroDetaBox();
    this.DistritoDetaText = new MetroDetaBox();
    this.BarrioLink = new MetroLink();
    this.BarrioDetaText = new MetroDetaBox();
    this.metroLabel5 = new MetroLabel();
    this.ManzDireText = new MetroTextBox();
    this.metroLabel4 = new MetroLabel();
    this.LoteDireText = new MetroTextBox();
    this.metroLabel3 = new MetroLabel();
    this.DepaDireText = new MetroTextBox();
    this.metroLabel2 = new MetroLabel();
    this.PisoDireText = new MetroTextBox();
    this.metroLabel1 = new MetroLabel();
    this.NumeDireText = new MetroTextBox();
    this.CalleLink = new MetroLink();
    this.CalleDetaText = new MetroDetaBox();
    this.metroLabel8 = new MetroLabel();
    this.CasaDireText = new MetroTextBox();
    this.LocalidadDetaText = new MetroDetaBox();
    this.LocalidadLink = new MetroLink();
    this.SuspendLayout();
    this.ProvinciaLink.Location = new Point(259, 190);
    this.ProvinciaLink.Margin = new Padding(3, 4, 3, 4);
    this.ProvinciaLink.Name = "ProvinciaLink";
    this.ProvinciaLink.Size = new Size(62, 23);
    this.ProvinciaLink.TabIndex = 23;
    this.ProvinciaLink.Text = "Provincia";
    this.ProvinciaLink.TextAlign = ContentAlignment.MiddleRight;
    this.ProvinciaLink.UseSelectable = true;
    this.ProvinciaDetaText.AllowEmpty = true;
    this.ProvinciaDetaText.BackColor = Color.White;
    this.ProvinciaDetaText.EnableDetaOnCodi0 = true;
    this.ProvinciaDetaText.Entity = (Entity) null;
    this.ProvinciaDetaText.ExternalValidation = (Func<string>) null;
    this.ProvinciaDetaText.Font = new Font("Segoe UI", 14f, FontStyle.Regular, GraphicsUnit.Pixel);
    this.ProvinciaDetaText.IntCodi = 0;
    this.ProvinciaDetaText.Location = new Point(327, 190);
    this.ProvinciaDetaText.Margin = new Padding(3, 4, 3, 4);
    this.ProvinciaDetaText.MaximumSize = new Size(3000, 23);
    this.ProvinciaDetaText.MaxLengthCodi = 20;
    this.ProvinciaDetaText.MaxLengthDeta = 40;
    this.ProvinciaDetaText.MinimumSize = new Size(100, 23);
    this.ProvinciaDetaText.Name = "ProvinciaDetaText";
    this.ProvinciaDetaText.PropertyCodi = "CodiProv";
    this.ProvinciaDetaText.PropertyDeta = "DetaProv";
    this.ProvinciaDetaText.ShortCodi = (short) 0;
    this.ProvinciaDetaText.Size = new Size(409, 23);
    this.ProvinciaDetaText.TabIndex = 12;
    this.ProvinciaDetaText.TextAlignCodi = HorizontalAlignment.Right;
    this.ProvinciaDetaText.TextAlignDeta = HorizontalAlignment.Left;
    this.ProvinciaDetaText.TextCodi = "";
    this.ProvinciaDetaText.TextDeta = "";
    this.ProvinciaDetaText.WidthCodi = 70;
    this.metroLabel7.AutoSize = true;
    this.metroLabel7.Location = new Point(12, 190);
    this.metroLabel7.Margin = new Padding(3, 4, 3, 4);
    this.metroLabel7.Name = "metroLabel7";
    this.metroLabel7.Size = new Size(91, 19);
    this.metroLabel7.TabIndex = 21;
    this.metroLabel7.Text = "Código Postal";
    this.CopoDireText.AllowEmpty = false;
    this.CopoDireText.AllowSqlCharacters = false;
    this.CopoDireText.ExternalValidation = (Func<string>) null;
    this.CopoDireText.Location = new Point(109, 190);
    this.CopoDireText.Margin = new Padding(3, 4, 3, 4);
    this.CopoDireText.MaxLength = 15;
    this.CopoDireText.MinLenght = 0;
    this.CopoDireText.Name = "CopoDireText";
    this.CopoDireText.PasswordChar = char.MinValue;
    this.CopoDireText.ScrollBars = ScrollBars.None;
    this.CopoDireText.SelectedText = "";
    this.CopoDireText.ShowBorder = true;
    this.CopoDireText.Size = new Size(144 /*0x90*/, 23);
    this.CopoDireText.TabIndex = 11;
    this.CopoDireText.TextAlign = HorizontalAlignment.Center;
    this.CopoDireText.UseSelectable = true;
    this.DepartamentoLink.Location = new Point(3, 97);
    this.DepartamentoLink.Margin = new Padding(3, 4, 3, 4);
    this.DepartamentoLink.Name = "DepartamentoLink";
    this.DepartamentoLink.Size = new Size(100, 23);
    this.DepartamentoLink.TabIndex = 17;
    this.DepartamentoLink.TabStop = false;
    this.DepartamentoLink.Text = "Departamento";
    this.DepartamentoLink.TextAlign = ContentAlignment.MiddleRight;
    this.DepartamentoLink.UseSelectable = true;
    this.DistritoLink.Location = new Point(45, 128 /*0x80*/);
    this.DistritoLink.Margin = new Padding(3, 4, 3, 4);
    this.DistritoLink.Name = "DistritoLink";
    this.DistritoLink.Size = new Size(58, 23);
    this.DistritoLink.TabIndex = 16 /*0x10*/;
    this.DistritoLink.TabStop = false;
    this.DistritoLink.Text = "Distrito";
    this.DistritoLink.TextAlign = ContentAlignment.MiddleRight;
    this.DistritoLink.UseSelectable = true;
    this.DepartamentoDetaText.AllowEmpty = true;
    this.DepartamentoDetaText.BackColor = Color.White;
    this.DepartamentoDetaText.EnableDetaOnCodi0 = true;
    this.DepartamentoDetaText.Entity = (Entity) null;
    this.DepartamentoDetaText.ExternalValidation = (Func<string>) null;
    this.DepartamentoDetaText.Font = new Font("Segoe UI", 14f, FontStyle.Regular, GraphicsUnit.Pixel);
    this.DepartamentoDetaText.IntCodi = 0;
    this.DepartamentoDetaText.Location = new Point(109, 97);
    this.DepartamentoDetaText.Margin = new Padding(3, 4, 3, 4);
    this.DepartamentoDetaText.MaximumSize = new Size(3000, 23);
    this.DepartamentoDetaText.MaxLengthCodi = 20;
    this.DepartamentoDetaText.MaxLengthDeta = 100;
    this.DepartamentoDetaText.MinimumSize = new Size(100, 23);
    this.DepartamentoDetaText.Name = "DepartamentoDetaText";
    this.DepartamentoDetaText.PropertyCodi = "CodiDepa";
    this.DepartamentoDetaText.PropertyDeta = "DetaDepa";
    this.DepartamentoDetaText.ShortCodi = (short) 0;
    this.DepartamentoDetaText.Size = new Size(627, 23);
    this.DepartamentoDetaText.TabIndex = 8;
    this.DepartamentoDetaText.TextAlignCodi = HorizontalAlignment.Right;
    this.DepartamentoDetaText.TextAlignDeta = HorizontalAlignment.Left;
    this.DepartamentoDetaText.TextCodi = "";
    this.DepartamentoDetaText.TextDeta = "";
    this.DepartamentoDetaText.WidthCodi = 80 /*0x50*/;
    this.DistritoDetaText.AllowEmpty = true;
    this.DistritoDetaText.BackColor = Color.White;
    this.DistritoDetaText.EnableDetaOnCodi0 = true;
    this.DistritoDetaText.Entity = (Entity) null;
    this.DistritoDetaText.ExternalValidation = (Func<string>) null;
    this.DistritoDetaText.Font = new Font("Segoe UI", 14f, FontStyle.Regular, GraphicsUnit.Pixel);
    this.DistritoDetaText.IntCodi = 0;
    this.DistritoDetaText.Location = new Point(109, 128 /*0x80*/);
    this.DistritoDetaText.Margin = new Padding(3, 4, 3, 4);
    this.DistritoDetaText.MaximumSize = new Size(3000, 23);
    this.DistritoDetaText.MaxLengthCodi = 20;
    this.DistritoDetaText.MaxLengthDeta = 100;
    this.DistritoDetaText.MinimumSize = new Size(100, 23);
    this.DistritoDetaText.Name = "DistritoDetaText";
    this.DistritoDetaText.PropertyCodi = "CodiDist";
    this.DistritoDetaText.PropertyDeta = "DetaDist";
    this.DistritoDetaText.ShortCodi = (short) 0;
    this.DistritoDetaText.Size = new Size(627, 23);
    this.DistritoDetaText.TabIndex = 9;
    this.DistritoDetaText.TextAlignCodi = HorizontalAlignment.Right;
    this.DistritoDetaText.TextAlignDeta = HorizontalAlignment.Left;
    this.DistritoDetaText.TextCodi = "";
    this.DistritoDetaText.TextDeta = "";
    this.DistritoDetaText.WidthCodi = 80 /*0x50*/;
    this.BarrioLink.Location = new Point(45, 66);
    this.BarrioLink.Margin = new Padding(3, 4, 3, 4);
    this.BarrioLink.Name = "BarrioLink";
    this.BarrioLink.Size = new Size(58, 23);
    this.BarrioLink.TabIndex = 13;
    this.BarrioLink.TabStop = false;
    this.BarrioLink.Text = "Barrio";
    this.BarrioLink.TextAlign = ContentAlignment.MiddleRight;
    this.BarrioLink.UseSelectable = true;
    this.BarrioDetaText.AllowEmpty = true;
    this.BarrioDetaText.BackColor = Color.White;
    this.BarrioDetaText.EnableDetaOnCodi0 = true;
    this.BarrioDetaText.Entity = (Entity) null;
    this.BarrioDetaText.EscribirEn0 = true;
    this.BarrioDetaText.ExternalValidation = (Func<string>) null;
    this.BarrioDetaText.Font = new Font("Segoe UI", 14f, FontStyle.Regular, GraphicsUnit.Pixel);
    this.BarrioDetaText.IntCodi = 0;
    this.BarrioDetaText.Location = new Point(109, 66);
    this.BarrioDetaText.Margin = new Padding(3, 4, 3, 4);
    this.BarrioDetaText.MaximumSize = new Size(3000, 23);
    this.BarrioDetaText.MaxLengthCodi = 20;
    this.BarrioDetaText.MaxLengthDeta = 40;
    this.BarrioDetaText.MinimumSize = new Size(100, 23);
    this.BarrioDetaText.Name = "BarrioDetaText";
    this.BarrioDetaText.PropertyCodi = "CodiBarr";
    this.BarrioDetaText.PropertyDeta = "DetaBarr";
    this.BarrioDetaText.ShortCodi = (short) 0;
    this.BarrioDetaText.Size = new Size(627, 23);
    this.BarrioDetaText.TabIndex = 7;
    this.BarrioDetaText.TextAlignCodi = HorizontalAlignment.Right;
    this.BarrioDetaText.TextAlignDeta = HorizontalAlignment.Left;
    this.BarrioDetaText.TextCodi = "";
    this.BarrioDetaText.TextDeta = "";
    this.BarrioDetaText.WidthCodi = 80 /*0x50*/;
    this.metroLabel5.AutoSize = true;
    this.metroLabel5.Location = new Point(503, 36);
    this.metroLabel5.Margin = new Padding(3, 4, 3, 4);
    this.metroLabel5.Name = "metroLabel5";
    this.metroLabel5.Size = new Size(62, 19);
    this.metroLabel5.TabIndex = 11;
    this.metroLabel5.Text = "Manzana";
    this.ManzDireText.AllowEmpty = true;
    this.ManzDireText.AllowSqlCharacters = false;
    this.ManzDireText.ExternalValidation = (Func<string>) null;
    this.ManzDireText.Location = new Point(571, 35);
    this.ManzDireText.Margin = new Padding(3, 4, 3, 4);
    this.ManzDireText.MaxLength = 5;
    this.ManzDireText.MinLenght = 0;
    this.ManzDireText.Name = "ManzDireText";
    this.ManzDireText.PasswordChar = char.MinValue;
    this.ManzDireText.ScrollBars = ScrollBars.None;
    this.ManzDireText.SelectedText = "";
    this.ManzDireText.ShowBorder = true;
    this.ManzDireText.Size = new Size(56, 23);
    this.ManzDireText.TabIndex = 5;
    this.ManzDireText.TextAlign = HorizontalAlignment.Right;
    this.ManzDireText.UseSelectable = true;
    this.metroLabel4.AutoSize = true;
    this.metroLabel4.Location = new Point(397, 36);
    this.metroLabel4.Margin = new Padding(3, 4, 3, 4);
    this.metroLabel4.Name = "metroLabel4";
    this.metroLabel4.Size = new Size(34, 19);
    this.metroLabel4.TabIndex = 9;
    this.metroLabel4.Text = "Lote";
    this.LoteDireText.AllowEmpty = true;
    this.LoteDireText.AllowSqlCharacters = false;
    this.LoteDireText.ExternalValidation = (Func<string>) null;
    this.LoteDireText.Location = new Point(437, 35);
    this.LoteDireText.Margin = new Padding(3, 4, 3, 4);
    this.LoteDireText.MaxLength = 5;
    this.LoteDireText.MinLenght = 0;
    this.LoteDireText.Name = "LoteDireText";
    this.LoteDireText.PasswordChar = char.MinValue;
    this.LoteDireText.ScrollBars = ScrollBars.None;
    this.LoteDireText.SelectedText = "";
    this.LoteDireText.ShowBorder = true;
    this.LoteDireText.Size = new Size(56, 23);
    this.LoteDireText.TabIndex = 4;
    this.LoteDireText.TextAlign = HorizontalAlignment.Right;
    this.LoteDireText.UseSelectable = true;
    this.metroLabel3.AutoSize = true;
    this.metroLabel3.Location = new Point(280, 36);
    this.metroLabel3.Margin = new Padding(3, 4, 3, 4);
    this.metroLabel3.Name = "metroLabel3";
    this.metroLabel3.Size = new Size(45, 19);
    this.metroLabel3.TabIndex = 7;
    this.metroLabel3.Text = "Depto";
    this.DepaDireText.AllowEmpty = true;
    this.DepaDireText.AllowSqlCharacters = false;
    this.DepaDireText.ExternalValidation = (Func<string>) null;
    this.DepaDireText.Location = new Point(331, 35);
    this.DepaDireText.Margin = new Padding(3, 4, 3, 4);
    this.DepaDireText.MaxLength = 5;
    this.DepaDireText.MinLenght = 0;
    this.DepaDireText.Name = "DepaDireText";
    this.DepaDireText.PasswordChar = char.MinValue;
    this.DepaDireText.ScrollBars = ScrollBars.None;
    this.DepaDireText.SelectedText = "";
    this.DepaDireText.ShowBorder = true;
    this.DepaDireText.Size = new Size(56, 23);
    this.DepaDireText.TabIndex = 3;
    this.DepaDireText.TextAlign = HorizontalAlignment.Right;
    this.DepaDireText.UseSelectable = true;
    this.metroLabel2.AutoSize = true;
    this.metroLabel2.Location = new Point(175, 36);
    this.metroLabel2.Margin = new Padding(3, 4, 3, 4);
    this.metroLabel2.Name = "metroLabel2";
    this.metroLabel2.Size = new Size(33, 19);
    this.metroLabel2.TabIndex = 5;
    this.metroLabel2.Text = "Piso";
    this.PisoDireText.AllowEmpty = true;
    this.PisoDireText.AllowSqlCharacters = false;
    this.PisoDireText.ExternalValidation = (Func<string>) null;
    this.PisoDireText.Location = new Point(214, 35);
    this.PisoDireText.Margin = new Padding(3, 4, 3, 4);
    this.PisoDireText.MaxLength = 5;
    this.PisoDireText.MinLenght = 0;
    this.PisoDireText.Name = "PisoDireText";
    this.PisoDireText.PasswordChar = char.MinValue;
    this.PisoDireText.ScrollBars = ScrollBars.None;
    this.PisoDireText.SelectedText = "";
    this.PisoDireText.ShowBorder = true;
    this.PisoDireText.Size = new Size(56, 23);
    this.PisoDireText.TabIndex = 2;
    this.PisoDireText.TextAlign = HorizontalAlignment.Right;
    this.PisoDireText.UseSelectable = true;
    this.metroLabel1.AutoSize = true;
    this.metroLabel1.Location = new Point(45, 36);
    this.metroLabel1.Margin = new Padding(3, 4, 3, 4);
    this.metroLabel1.Name = "metroLabel1";
    this.metroLabel1.Size = new Size(58, 19);
    this.metroLabel1.TabIndex = 3;
    this.metroLabel1.Text = "Número";
    this.NumeDireText.AllowEmpty = true;
    this.NumeDireText.AllowSqlCharacters = false;
    this.NumeDireText.ExternalValidation = (Func<string>) null;
    this.NumeDireText.Location = new Point(109, 35);
    this.NumeDireText.Margin = new Padding(3, 4, 3, 4);
    this.NumeDireText.MaxLength = 5;
    this.NumeDireText.MinLenght = 0;
    this.NumeDireText.Name = "NumeDireText";
    this.NumeDireText.PasswordChar = char.MinValue;
    this.NumeDireText.ScrollBars = ScrollBars.None;
    this.NumeDireText.SelectedText = "";
    this.NumeDireText.ShowBorder = true;
    this.NumeDireText.Size = new Size(56, 23);
    this.NumeDireText.TabIndex = 1;
    this.NumeDireText.Text = "0";
    this.NumeDireText.TextAlign = HorizontalAlignment.Right;
    this.NumeDireText.UseSelectable = true;
    this.CalleLink.Location = new Point(45, 4);
    this.CalleLink.Margin = new Padding(3, 4, 3, 4);
    this.CalleLink.Name = "CalleLink";
    this.CalleLink.Size = new Size(58, 23);
    this.CalleLink.TabIndex = 1;
    this.CalleLink.TabStop = false;
    this.CalleLink.Text = "Calle";
    this.CalleLink.TextAlign = ContentAlignment.MiddleRight;
    this.CalleLink.UseSelectable = true;
    this.CalleDetaText.AllowEmpty = true;
    this.CalleDetaText.BackColor = Color.White;
    this.CalleDetaText.EnableDetaOnCodi0 = true;
    this.CalleDetaText.Entity = (Entity) null;
    this.CalleDetaText.EscribirEn0 = true;
    this.CalleDetaText.ExternalValidation = (Func<string>) null;
    this.CalleDetaText.Font = new Font("Segoe UI", 14f, FontStyle.Regular, GraphicsUnit.Pixel);
    this.CalleDetaText.IntCodi = 0;
    this.CalleDetaText.Location = new Point(109, 4);
    this.CalleDetaText.Margin = new Padding(3, 4, 3, 4);
    this.CalleDetaText.MaximumSize = new Size(3000, 23);
    this.CalleDetaText.MaxLengthCodi = 20;
    this.CalleDetaText.MaxLengthDeta = 40;
    this.CalleDetaText.MinimumSize = new Size(100, 23);
    this.CalleDetaText.Name = "CalleDetaText";
    this.CalleDetaText.PropertyCodi = "CodiCall";
    this.CalleDetaText.PropertyDeta = "DetaCall";
    this.CalleDetaText.ShortCodi = (short) 0;
    this.CalleDetaText.Size = new Size(627, 23);
    this.CalleDetaText.TabIndex = 0;
    this.CalleDetaText.TextAlignCodi = HorizontalAlignment.Right;
    this.CalleDetaText.TextAlignDeta = HorizontalAlignment.Left;
    this.CalleDetaText.TextCodi = "";
    this.CalleDetaText.TextDeta = "";
    this.CalleDetaText.WidthCodi = 80 /*0x50*/;
    this.metroLabel8.AutoSize = true;
    this.metroLabel8.Location = new Point(637, 36);
    this.metroLabel8.Margin = new Padding(3, 4, 3, 4);
    this.metroLabel8.Name = "metroLabel8";
    this.metroLabel8.Size = new Size(37, 19);
    this.metroLabel8.TabIndex = 25;
    this.metroLabel8.Text = "Casa";
    this.CasaDireText.AllowEmpty = true;
    this.CasaDireText.AllowSqlCharacters = false;
    this.CasaDireText.ExternalValidation = (Func<string>) null;
    this.CasaDireText.Location = new Point(680, 35);
    this.CasaDireText.Margin = new Padding(3, 4, 3, 4);
    this.CasaDireText.MaxLength = 5;
    this.CasaDireText.MinLenght = 0;
    this.CasaDireText.Name = "CasaDireText";
    this.CasaDireText.PasswordChar = char.MinValue;
    this.CasaDireText.ScrollBars = ScrollBars.None;
    this.CasaDireText.SelectedText = "";
    this.CasaDireText.ShowBorder = true;
    this.CasaDireText.Size = new Size(56, 23);
    this.CasaDireText.TabIndex = 6;
    this.CasaDireText.TextAlign = HorizontalAlignment.Right;
    this.CasaDireText.UseSelectable = true;
    this.LocalidadDetaText.AllowEmpty = true;
    this.LocalidadDetaText.BackColor = Color.White;
    this.LocalidadDetaText.EnableDetaOnCodi0 = true;
    this.LocalidadDetaText.EscribirEn0 = true;
    this.LocalidadDetaText.Entity = (Entity) null;
    this.LocalidadDetaText.ExternalValidation = (Func<string>) null;
    this.LocalidadDetaText.Font = new Font("Segoe UI", 14f, FontStyle.Regular, GraphicsUnit.Pixel);
    this.LocalidadDetaText.IntCodi = 0;
    this.LocalidadDetaText.Location = new Point(109, 159);
    this.LocalidadDetaText.Margin = new Padding(3, 4, 3, 4);
    this.LocalidadDetaText.MaximumSize = new Size(3000, 23);
    this.LocalidadDetaText.MaxLengthCodi = 20;
    this.LocalidadDetaText.MaxLengthDeta = 100;
    this.LocalidadDetaText.MinimumSize = new Size(100, 23);
    this.LocalidadDetaText.Name = "LocalidadDetaText";
    this.LocalidadDetaText.PropertyCodi = "CodiLoca";
    this.LocalidadDetaText.PropertyDeta = "DetaLoca";
    this.LocalidadDetaText.ShortCodi = (short) 0;
    this.LocalidadDetaText.Size = new Size(627, 23);
    this.LocalidadDetaText.TabIndex = 10;
    this.LocalidadDetaText.TextAlignCodi = HorizontalAlignment.Right;
    this.LocalidadDetaText.TextAlignDeta = HorizontalAlignment.Left;
    this.LocalidadDetaText.TextCodi = "";
    this.LocalidadDetaText.TextDeta = "";
    this.LocalidadDetaText.WidthCodi = 80 /*0x50*/;
    this.LocalidadLink.Location = new Point(34, 159);
    this.LocalidadLink.Margin = new Padding(3, 4, 3, 4);
    this.LocalidadLink.Name = "LocalidadLink";
    this.LocalidadLink.Size = new Size(69, 23);
    this.LocalidadLink.TabIndex = 27;
    this.LocalidadLink.TabStop = false;
    this.LocalidadLink.Text = "Localidad";
    this.LocalidadLink.TextAlign = ContentAlignment.MiddleRight;
    this.LocalidadLink.UseSelectable = true;
    this.BackColor = Color.White;
    this.Controls.Add((Control) this.LocalidadLink);
    this.Controls.Add((Control) this.LocalidadDetaText);
    this.Controls.Add((Control) this.metroLabel8);
    this.Controls.Add((Control) this.CasaDireText);
    this.Controls.Add((Control) this.ProvinciaLink);
    this.Controls.Add((Control) this.ProvinciaDetaText);
    this.Controls.Add((Control) this.metroLabel7);
    this.Controls.Add((Control) this.CopoDireText);
    this.Controls.Add((Control) this.DepartamentoLink);
    this.Controls.Add((Control) this.DistritoLink);
    this.Controls.Add((Control) this.DepartamentoDetaText);
    this.Controls.Add((Control) this.DistritoDetaText);
    this.Controls.Add((Control) this.BarrioLink);
    this.Controls.Add((Control) this.BarrioDetaText);
    this.Controls.Add((Control) this.metroLabel5);
    this.Controls.Add((Control) this.ManzDireText);
    this.Controls.Add((Control) this.metroLabel4);
    this.Controls.Add((Control) this.LoteDireText);
    this.Controls.Add((Control) this.metroLabel3);
    this.Controls.Add((Control) this.DepaDireText);
    this.Controls.Add((Control) this.metroLabel2);
    this.Controls.Add((Control) this.PisoDireText);
    this.Controls.Add((Control) this.metroLabel1);
    this.Controls.Add((Control) this.NumeDireText);
    this.Controls.Add((Control) this.CalleLink);
    this.Controls.Add((Control) this.CalleDetaText);
    this.Name = nameof (ucDireccion2);
    this.Size = new Size(737, 217);
    this.ResumeLayout(false);
    this.PerformLayout();
  }

  public void habilitarLocalidad(bool habilitado) => this.LocalidadDetaText.Enabled = habilitado;

  [DllImport("user32.dll", CharSet = CharSet.Auto)]
  private static extern bool PeekMessage(
    [In, Out] ref ucDireccion2.MSG msg,
    HandleRef hwnd,
    int msgMin,
    int msgMax,
    int remove);

  protected override bool ProcessKeyPreview(ref Message m)
  {
    if (m.Msg != 258 && m.Msg != 262 && m.Msg != 646)
    {
      KeyEventArgs e = new KeyEventArgs((Keys) (long) m.WParam | Control.ModifierKeys);
      if (m.Msg == 256 /*0x0100*/ || m.Msg == 260)
        this.TrappedKeyDown(e);
      if (e.SuppressKeyPress)
      {
        this.RemovePendingMessages(258, 258);
        this.RemovePendingMessages(262, 262);
        this.RemovePendingMessages(646, 646);
      }
      if (e.Handled)
        return e.Handled;
    }
    return base.ProcessKeyPreview(ref m);
  }

  private void RemovePendingMessages(int msgMin, int msgMax)
  {
    if (this.IsDisposed)
      return;
    ucDireccion2.MSG msg = new ucDireccion2.MSG();
    IntPtr handle = this.Handle;
    do
      ;
    while (ucDireccion2.PeekMessage(ref msg, new HandleRef((object) this, handle), msgMin, msgMax, 1));
  }

  private void TrappedKeyDown(KeyEventArgs e)
  {
    if (e.KeyCode != Keys.Return)
      return;
    this.SelectNextControl(this.ActiveControl, true, true, true, false);
    e.Handled = true;
    e.SuppressKeyPress = true;
  }

  private struct MSG
  {
    public IntPtr hwnd;
    public int message;
    public IntPtr wParam;
    public IntPtr lParam;
    public int time;
    public int pt_x;
    public int pt_y;
  }
}
