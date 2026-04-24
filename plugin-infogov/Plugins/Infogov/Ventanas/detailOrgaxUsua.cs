// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Ventanas.detailOrgaxUsua
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
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Infogov.Ventanas;

public class detailOrgaxUsua : ABMDetailControl
{
  private IContainer components = (IContainer) null;
  private TabPane tabPane1;
  private TabNavigationPage tabNavigationPage1;
  private MetroLabel metroLabel2;
  private MetroLabel metroLabel1;
  private MetroEntityBox UsuarioEB;
  private MetroEntityBox mebOficina;
  private MetroCheckBox chkPermJera;

  public detailOrgaxUsua()
  {
    this.InitializeComponent();
    this.idPlugin = 0;
    this.UsuarioEB.FindEntityFunction = new MetroEntityBox.FindEntityDelegate(this.EncontrarUsuario);
    this.UsuarioEB.SearchEntityFunction = new MetroEntityBox.SearchEntityDelegate(this.BuscarUsuario);
    this.mebOficina.FindEntityFunction = new MetroEntityBox.FindEntityDelegate(this.EncontrarOficina);
    this.mebOficina.SearchEntityFunction = new MetroEntityBox.SearchEntityDelegate(this.BuscarOficina);
  }

  protected override void OnModeChanged(ActionMode mode)
  {
    this.chkPermJera.Checked = true;
    this.UsuarioEB.Enabled = this.mebOficina.Enabled = this.chkPermJera.Enabled = mode == ActionMode.New;
    if (mode != ActionMode.New)
      return;
    this.UsuarioEB.Focus();
  }

  protected override void OnEntityChanged(Entity enti)
  {
    OrgaxUsua orgaxUsua = (OrgaxUsua) enti;
    if (orgaxUsua == null)
    {
      this.LimpiarCampos();
    }
    else
    {
      this.UsuarioEB.Entity = orgaxUsua.CodiUsua != string.Empty ? (Entity) this.EM.Get<Usuario>(new ID("CodiUsua", (object) orgaxUsua.CodiUsua)) : (Entity) null;
      MetroEntityBox mebOficina = this.mebOficina;
      Organigrama organigrama;
      if (!(orgaxUsua.CodiOrga != string.Empty))
      {
        organigrama = (Organigrama) null;
      }
      else
      {
        EntityManager em = this.EM;
        ID id = new ID();
        id.Add((object) "PeriInfo", (object) PARAMS.Periodo);
        id.Add((object) "CodiOrga", (object) orgaxUsua.CodiOrga);
        organigrama = em.Get<Organigrama>(id);
      }
      mebOficina.Entity = (Entity) organigrama;
    }
  }

  protected override Entity LoadEntity()
  {
    return (Entity) new OrgaxUsua()
    {
      PeriInfo = PARAMS.Periodo,
      CodiOrga = (this.mebOficina.Entity != null ? ((Organigrama) this.mebOficina.Entity).CodiOrga : string.Empty),
      CodiUsua = (this.UsuarioEB.Entity != null ? ((Usuario) this.UsuarioEB.Entity).CodiUsua : string.Empty),
      PermJera = this.chkPermJera.Checked
    };
  }

  protected override List<string> IsDataValid()
  {
    List<string> stringList = new List<string>();
    if (this.UsuarioEB.Entity == null)
      stringList.Add("Ingresar Usuario.");
    if (this.mebOficina.Entity == null)
      stringList.Add("Ingresar Oficina.");
    return stringList;
  }

  protected override void LimpiarCampos()
  {
    this.UsuarioEB.Entity = this.mebOficina.Entity = (Entity) null;
    this.chkPermJera.Checked = false;
  }

  private Entity BuscarUsuario(string text)
  {
    return (Entity) this.EM.Search<Usuario>(new Filter()
    {
      Items = {
        new FilterItem("CodiUsua", "Código", FilterMode.Contains, text)
      }
    }, true);
  }

  private Entity EncontrarUsuario(string text, bool useSearch)
  {
    return (Entity) this.EM.Find<Usuario>(new Filter()
    {
      Items = {
        new FilterItem("CodiUsua", "Código", FilterMode.Contains, text)
      }
    }, true, true);
  }

  private Entity BuscarOficina(string text)
  {
    Filter filter = new Filter();
    filter.Restrictions.Add(new FilterItem("PeriInfo", "PeriInfo", FilterMode.Equal, PARAMS.Periodo.ToString()));
    if (Misc.IsNumeric(text))
      filter.Items.Add(new FilterItem("CodiOrga", "Código", PARAMS.Periodo <= 2023 ? FilterMode.StartsWith : FilterMode.Equal, text));
    else
      filter.Items.Add(new FilterItem("DetaOrga", "Detalle", FilterMode.Contains, text));
    return (Entity) this.EM.Search<Organigrama>(filter, true);
  }

  private Entity EncontrarOficina(string text, bool useSearch)
  {
    Filter filter = new Filter();
    filter.Restrictions.Add(new FilterItem("PeriInfo", "PeriInfo", FilterMode.Equal, PARAMS.Periodo.ToString()));
    if (Misc.IsNumeric(text))
      filter.Items.Add(new FilterItem("CodiOrga", "Código", PARAMS.Periodo <= 2023 ? FilterMode.StartsWith : FilterMode.Equal, text));
    else
      filter.Items.Add(new FilterItem("DetaOrga", "Detalle", FilterMode.Contains, text));
    return (Entity) this.EM.Find<Organigrama>(filter, true, true);
  }

  private void mebOficina_EntityChangedDone(object source, EntityChangedEventArgs e)
  {
    if (this.mebOficina.Entity != null)
      this.chkPermJera.Text = "Dar permiso tambien a las oficinas que dependan de " + ((Organigrama) this.mebOficina.Entity).DetaOrga;
    else
      this.chkPermJera.Text = string.Empty;
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
    this.chkPermJera = new MetroCheckBox();
    this.mebOficina = new MetroEntityBox();
    this.UsuarioEB = new MetroEntityBox();
    this.metroLabel2 = new MetroLabel();
    this.metroLabel1 = new MetroLabel();
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
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.chkPermJera);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.mebOficina);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.UsuarioEB);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.metroLabel2);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.metroLabel1);
    ((Control) this.tabNavigationPage1).Name = "tabNavigationPage1";
    ((NavigationPageBase) this.tabNavigationPage1).Size = new Size(700, 154);
    this.chkPermJera.AutoSize = false;
    this.chkPermJera.Location = new Point(137, 114);
    this.chkPermJera.Name = "chkPermJera";
    this.chkPermJera.Size = new Size(557, 19);
    this.chkPermJera.TabIndex = 3;
    this.chkPermJera.Text = "Dar permiso tambien a las oficinas que dependan de";
    this.mebOficina.AllowEmpty = false;
    this.mebOficina.AllowSqlCharacters = false;
    this.mebOficina.BackColor = Color.White;
    this.mebOficina.Entity = (Entity) null;
    this.mebOficina.ExternalValidation = (Func<string>) null;
    this.mebOficina.Font = new Font("Segoe UI", 14f, FontStyle.Regular, GraphicsUnit.Pixel);
    this.mebOficina.LabelText = "";
    this.mebOficina.Location = new Point(137, 81);
    this.mebOficina.MandatoryWrite = false;
    this.mebOficina.Margin = new Padding(3, 4, 3, 4);
    this.mebOficina.MaximumSize = new Size(3000, 23);
    this.mebOficina.MaxLenght = 50;
    this.mebOficina.MinimumSize = new Size(100, 23);
    this.mebOficina.Name = "mebOficina";
    this.mebOficina.PropertyDetail = "DetaOrga";
    this.mebOficina.PropertyID = "CodiOrga";
    this.mebOficina.ShowNewButton = false;
    this.mebOficina.ShowSearchButton = false;
    this.mebOficina.Size = new Size(400, 23);
    this.mebOficina.TabIndex = 2;
    this.mebOficina.TextAlign = HorizontalAlignment.Left;
    this.mebOficina.TextBoxWidth = 120;
    this.mebOficina.EntityChangedDone += new AfterEntityChange(this.mebOficina_EntityChangedDone);
    this.UsuarioEB.AllowEmpty = false;
    this.UsuarioEB.AllowSqlCharacters = false;
    this.UsuarioEB.BackColor = Color.White;
    this.UsuarioEB.Entity = (Entity) null;
    this.UsuarioEB.ExternalValidation = (Func<string>) null;
    this.UsuarioEB.Font = new Font("Segoe UI", 14f, FontStyle.Regular, GraphicsUnit.Pixel);
    this.UsuarioEB.LabelText = "";
    this.UsuarioEB.Location = new Point(137, 35);
    this.UsuarioEB.MandatoryWrite = false;
    this.UsuarioEB.Margin = new Padding(3, 4, 3, 4);
    this.UsuarioEB.MaximumSize = new Size(3000, 23);
    this.UsuarioEB.MaxLenght = 50;
    this.UsuarioEB.MinimumSize = new Size(100, 23);
    this.UsuarioEB.Name = "UsuarioEB";
    this.UsuarioEB.PropertyDetail = "DetaUsua";
    this.UsuarioEB.PropertyID = "CodiUsua";
    this.UsuarioEB.ShowNewButton = false;
    this.UsuarioEB.ShowSearchButton = false;
    this.UsuarioEB.Size = new Size(400, 23);
    this.UsuarioEB.TabIndex = 1;
    this.UsuarioEB.TextAlign = HorizontalAlignment.Left;
    this.UsuarioEB.TextBoxWidth = 120;
    this.metroLabel2.AutoSize = false;
    this.metroLabel2.Location = new Point(63 /*0x3F*/, 39);
    this.metroLabel2.Name = "metroLabel2";
    this.metroLabel2.Size = new Size(65, 19);
    this.metroLabel2.TabIndex = 3;
    this.metroLabel2.Text = "Usuario";
    this.metroLabel2.TextAlign = ContentAlignment.TopRight;
    this.metroLabel1.AutoSize = false;
    this.metroLabel1.Location = new Point(63 /*0x3F*/, 81);
    this.metroLabel1.Name = "metroLabel1";
    this.metroLabel1.Size = new Size(65, 19);
    this.metroLabel1.TabIndex = 2;
    this.metroLabel1.Text = "Oficina";
    this.metroLabel1.TextAlign = ContentAlignment.TopRight;
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.Controls.Add((Control) this.tabPane1);
    this.Name = nameof (detailOrgaxUsua);
    this.Size = new Size(700, 187);
    ((ISupportInitialize) this.tabPane1).EndInit();
    ((Control) this.tabPane1).ResumeLayout(false);
    ((Control) this.tabNavigationPage1).ResumeLayout(false);
    this.ResumeLayout(false);
  }
}
