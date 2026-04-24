// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Ventanas.detailFacixUsua
// Assembly: plugin-infogov, Version=1.0.0.18780, Culture=neutral, PublicKeyToken=null
// MVID: 33F9E52C-1C9C-4132-80FE-D29F95E246A9
// Assembly location: C:\nomade\para copiar\plugin-infogov.dll

using DevExpress.XtraBars.Docking2010.Base;
using DevExpress.XtraBars.Navigation;
using InfoGov.Common;
using InfoGov.Core;
using InfoGov.Forms;
using InfoGov.Metro.Controls;
using InfoGov.Plugins.Infogov.Entidades;
using InfoGov.Plugins.Infogov.Expertos;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Infogov.Ventanas;

public class detailFacixUsua : ABMDetailControl
{
  private IContainer components = (IContainer) null;
  private TabPane tabPane1;
  private TabNavigationPage tabNavigationPage1;
  private MetroLabel lblTipoFac;
  private MetroLabel lblUsuario;
  private MetroCheckBox chkTodasTifas;
  private MetroEntityBox mebTipoFapa;
  private MetroEntityBox mebUsuario;

  public detailFacixUsua()
  {
    this.InitializeComponent();
    this.idPlugin = 0;
    this.mebUsuario.FindEntityFunction = new MetroEntityBox.FindEntityDelegate(this.EncontrarUsuario);
    this.mebUsuario.SearchEntityFunction = new MetroEntityBox.SearchEntityDelegate(this.BuscarUsuario);
    this.mebTipoFapa.FindEntityFunction = new MetroEntityBox.FindEntityDelegate(this.EncontrarTipoFapa);
    this.mebTipoFapa.SearchEntityFunction = new MetroEntityBox.SearchEntityDelegate(this.BuscarTipoFapa);
    this.EM = new EntityManager(0);
  }

  protected override void OnModeChanged(ActionMode mode)
  {
    this.mebUsuario.Enabled = mode == ActionMode.New;
    this.mebTipoFapa.Enabled = this.chkTodasTifas.Checked = false;
    this.chkTodasTifas.Visible = this.chkTodasTifas.Enabled = mode == ActionMode.Deactivate;
    if (mode == ActionMode.New)
      this.chkTodasTifas.Text = "Dar permiso a todas las facilidades disponibles";
    else if (mode == ActionMode.Deactivate)
      this.chkTodasTifas.Text = "Quitar los permisos de todas las facilidades";
    if (mode != ActionMode.New)
      return;
    this.mebUsuario.Focus();
  }

  protected override void OnEntityChanged(Entity enti)
  {
    FacixUsua facixUsua = (FacixUsua) enti;
    if (facixUsua == null)
    {
      this.LimpiarCampos();
    }
    else
    {
      this.mebUsuario.Entity = (Entity) this.EM.Get<Usuario>(new ID("CodiUsua", (object) facixUsua.CodiUsua));
      this.mebTipoFapa.Entity = (Entity) this.EM.Get<TipoFapa>(new ID("CodiTifa", (object) facixUsua.CodiTifa));
    }
  }

  protected override Entity LoadEntity()
  {
    return (Entity) new FacixUsua()
    {
      CodiUsua = ((Usuario) this.mebUsuario.Entity).CodiUsua,
      CodiTifa = (this.mebTipoFapa.Entity != null ? ((TipoFapa) this.mebTipoFapa.Entity).CodiTifa : 0),
      TodasTifas = this.chkTodasTifas.Checked
    };
  }

  protected override List<string> IsDataValid()
  {
    List<string> stringList = new List<string>();
    if (this.mebUsuario.Entity == null)
      stringList.Add("Seleccionar Usuario.");
    else if (this.CurrentMode == ActionMode.New && !((ExpFacixUsua) this.Expert).ExistenFacilidades(((Usuario) this.mebUsuario.Entity).CodiUsua))
      stringList.Add("No hay facilidades disponibles para \nel usuario seleccionado.");
    if (this.mebTipoFapa.Entity == null && !this.chkTodasTifas.Checked)
      stringList.Add("Ingresar Tipo Facilidad.");
    return stringList;
  }

  protected override void LimpiarCampos()
  {
    this.mebUsuario.Entity = this.mebTipoFapa.Entity = (Entity) null;
    this.chkTodasTifas.Checked = false;
  }

  private Entity BuscarUsuario(string text)
  {
    return (Entity) this.EM.Search<Usuario>(new Filter()
    {
      Items = {
        new FilterItem("CodiUsua", "Usuario", FilterMode.Contains, text)
      }
    }, true);
  }

  private Entity EncontrarUsuario(string text, bool useSearch)
  {
    return (Entity) this.EM.Find<Usuario>(new Filter()
    {
      Items = {
        new FilterItem("CodiUsua", "Usuario", FilterMode.Contains, text)
      }
    }, true, true);
  }

  private Entity BuscarTipoFapa(string text)
  {
    Filter filter = new Filter();
    filter.condExtra = $"CodiTifa NOT IN (SELECT CodiTifa FROM infogov.usuariofaci WHERE CodiUsua = '{((Usuario) this.mebUsuario.Entity).CodiUsua}')";
    if (Misc.IsNumeric(text))
      filter.Items.Add(new FilterItem("CodiTifa", "Código", FilterMode.Equal, text));
    else if (text.Trim().Length != 0)
      filter.Items.Add(new FilterItem("DetaTifa", "Detalle", FilterMode.Contains, text));
    return (Entity) this.EM.Search<TipoFapa>(filter, true);
  }

  private Entity EncontrarTipoFapa(string text, bool useSearch)
  {
    Filter filter = new Filter();
    filter.condExtra = $"CodiTifa NOT IN (SELECT CodiTifa FROM infogov.usuariofaci WHERE CodiUsua = '{((Usuario) this.mebUsuario.Entity).CodiUsua}')";
    if (Misc.IsNumeric(text))
      filter.Items.Add(new FilterItem("CodiTifa", "Código", FilterMode.Equal, text));
    else if (text.Trim().Length != 0)
      filter.Items.Add(new FilterItem("DetaTifa", "Detalle", FilterMode.Contains, text));
    return (Entity) this.EM.Find<TipoFapa>(filter, true, true);
  }

  private void chkTodasTifas_CheckedChanged(object sender, EventArgs e)
  {
    this.mebTipoFapa.Enabled = !this.chkTodasTifas.Checked;
    if (!this.chkTodasTifas.Checked || this.CurrentMode == ActionMode.Deactivate)
      return;
    this.mebTipoFapa.Entity = (Entity) null;
  }

  private void mebUsuario_EntityChangedDone(object source, EntityChangedEventArgs e)
  {
    if (this.CurrentMode == ActionMode.View)
      return;
    this.mebTipoFapa.Enabled = this.chkTodasTifas.Enabled = this.chkTodasTifas.Visible = this.mebUsuario.Entity != null;
    this.chkTodasTifas.Checked = false;
    this.mebTipoFapa.Entity = (Entity) null;
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
    this.mebTipoFapa = new MetroEntityBox();
    this.mebUsuario = new MetroEntityBox();
    this.chkTodasTifas = new MetroCheckBox();
    this.lblTipoFac = new MetroLabel();
    this.lblUsuario = new MetroLabel();
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
    ((NavigationPane) this.tabPane1).RegularSize = new Size(700, 187);
    this.tabPane1.SelectedPage = this.tabNavigationPage1;
    ((Control) this.tabPane1).Size = new Size(700, 187);
    ((Control) this.tabPane1).TabIndex = 0;
    ((Control) this.tabPane1).Text = "tabPane1";
    ((NavigationPageBase) this.tabNavigationPage1).BackgroundPadding = new Padding(4);
    ((NavigationPageBase) this.tabNavigationPage1).Caption = "Detalles";
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.mebTipoFapa);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.mebUsuario);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.chkTodasTifas);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.lblTipoFac);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.lblUsuario);
    ((Control) this.tabNavigationPage1).Name = "tabNavigationPage1";
    ((NavigationPageBase) this.tabNavigationPage1).Size = new Size(700, 154);
    this.mebTipoFapa.AllowEmpty = false;
    this.mebTipoFapa.AllowSqlCharacters = false;
    this.mebTipoFapa.BackColor = Color.White;
    this.mebTipoFapa.Entity = (Entity) null;
    this.mebTipoFapa.ExternalValidation = (Func<string>) null;
    this.mebTipoFapa.Font = new Font("Segoe UI", 14f, FontStyle.Regular, GraphicsUnit.Pixel);
    this.mebTipoFapa.LabelText = "";
    this.mebTipoFapa.Location = new Point((int) sbyte.MaxValue, 72);
    this.mebTipoFapa.MandatoryWrite = false;
    this.mebTipoFapa.Margin = new Padding(3, 4, 3, 4);
    this.mebTipoFapa.MaximumSize = new Size(3000, 23);
    this.mebTipoFapa.MaxLenght = 50;
    this.mebTipoFapa.MinimumSize = new Size(100, 23);
    this.mebTipoFapa.Name = "mebTipoFapa";
    this.mebTipoFapa.PropertyDetail = "DetaTifa";
    this.mebTipoFapa.PropertyID = "CodiTifa";
    this.mebTipoFapa.ShowNewButton = false;
    this.mebTipoFapa.ShowSearchButton = false;
    this.mebTipoFapa.Size = new Size(562, 23);
    this.mebTipoFapa.TabIndex = 2;
    this.mebTipoFapa.TextAlign = HorizontalAlignment.Left;
    this.mebTipoFapa.TextBoxWidth = 40;
    this.mebUsuario.AllowEmpty = false;
    this.mebUsuario.AllowSqlCharacters = false;
    this.mebUsuario.BackColor = Color.White;
    this.mebUsuario.Entity = (Entity) null;
    this.mebUsuario.ExternalValidation = (Func<string>) null;
    this.mebUsuario.Font = new Font("Segoe UI", 14f, FontStyle.Regular, GraphicsUnit.Pixel);
    this.mebUsuario.LabelText = "";
    this.mebUsuario.Location = new Point((int) sbyte.MaxValue, 41);
    this.mebUsuario.MandatoryWrite = false;
    this.mebUsuario.Margin = new Padding(3, 4, 3, 4);
    this.mebUsuario.MaximumSize = new Size(3000, 23);
    this.mebUsuario.MaxLenght = 50;
    this.mebUsuario.MinimumSize = new Size(100, 23);
    this.mebUsuario.Name = "mebUsuario";
    this.mebUsuario.PropertyDetail = "DetaUsua";
    this.mebUsuario.PropertyID = "CodiUsua";
    this.mebUsuario.ShowNewButton = false;
    this.mebUsuario.ShowSearchButton = false;
    this.mebUsuario.Size = new Size(562, 23);
    this.mebUsuario.TabIndex = 1;
    this.mebUsuario.TextAlign = HorizontalAlignment.Left;
    this.mebUsuario.TextBoxWidth = 100;
    this.mebUsuario.EntityChangedDone += new AfterEntityChange(this.mebUsuario_EntityChangedDone);
    this.chkTodasTifas.AutoSize = false;
    this.chkTodasTifas.Location = new Point((int) sbyte.MaxValue, 116);
    this.chkTodasTifas.Name = "chkTodasTifas";
    this.chkTodasTifas.Size = new Size(506, 19);
    this.chkTodasTifas.TabIndex = 3;
    this.chkTodasTifas.Text = "Texto TodasTifas";
    this.chkTodasTifas.CheckedChanged += new EventHandler(this.chkTodasTifas_CheckedChanged);
    this.lblTipoFac.AutoSize = false;
    this.lblTipoFac.Location = new Point(57, 74);
    this.lblTipoFac.Name = "lblTipoFac";
    this.lblTipoFac.Size = new Size(61, 19);
    this.lblTipoFac.TabIndex = 3;
    this.lblTipoFac.Text = "Facilidad";
    this.lblUsuario.AutoSize = false;
    this.lblUsuario.Location = new Point(65, 42);
    this.lblUsuario.Name = "lblUsuario";
    this.lblUsuario.Size = new Size(53, 19);
    this.lblUsuario.TabIndex = 2;
    this.lblUsuario.Text = "Usuario";
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.Controls.Add((Control) this.tabPane1);
    this.Name = nameof (detailFacixUsua);
    this.Size = new Size(700, 187);
    ((ISupportInitialize) this.tabPane1).EndInit();
    ((Control) this.tabPane1).ResumeLayout(false);
    ((Control) this.tabNavigationPage1).ResumeLayout(false);
    this.ResumeLayout(false);
  }
}
