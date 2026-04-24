// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Ventanas.detailUbfixUsua
// Assembly: plugin-infogov, Version=1.0.0.18780, Culture=neutral, PublicKeyToken=null
// MVID: 33F9E52C-1C9C-4132-80FE-D29F95E246A9
// Assembly location: C:\nomade\para copiar\plugin-infogov.dll

using DevExpress.XtraBars.Docking2010.Base;
using DevExpress.XtraBars.Navigation;
using InfoGov.Common;
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

public class detailUbfixUsua : ABMDetailControl
{
  private ExpUbfixUsua expert = new ExpUbfixUsua();
  private IContainer components = (IContainer) null;
  private TabPane tabPane1;
  private TabNavigationPage tabNavigationPage1;
  private MetroEntityBox UsuarioEB;
  private MetroLabel metroLabel2;
  private MetroEntityBox UbicacionFisicaEB;
  private MetroLabel metroLabel8;

  public detailUbfixUsua()
  {
    this.InitializeComponent();
    this.UbicacionFisicaEB.FindEntityFunction = new MetroEntityBox.FindEntityDelegate(this.EncontrarUbicacionFisica);
    this.UbicacionFisicaEB.SearchEntityFunction = new MetroEntityBox.SearchEntityDelegate(this.BuscarUbicacionFisica);
    this.UsuarioEB.FindEntityFunction = new MetroEntityBox.FindEntityDelegate(this.EncontrarUsuario);
    this.UsuarioEB.SearchEntityFunction = new MetroEntityBox.SearchEntityDelegate(this.BuscarUsuario);
  }

  protected override void OnModeChanged(ActionMode mode)
  {
    this.UbicacionFisicaEB.Enabled = mode == ActionMode.New || mode == ActionMode.Edit;
    this.UsuarioEB.Enabled = mode == ActionMode.New || mode == ActionMode.Edit;
  }

  protected override void OnEntityChanged(Entity enti)
  {
    UbfixUsua ubfixUsua = (UbfixUsua) enti;
    if (ubfixUsua == null)
    {
      this.LimpiarCampos();
    }
    else
    {
      this.UbicacionFisicaEB.Entity = ubfixUsua.IdUbfi != 0 ? (Entity) this.EM.Get<UbicacionFisica>(new ID("IdUbfi", (object) ubfixUsua.IdUbfi)) : (Entity) null;
      this.UsuarioEB.Entity = ubfixUsua.CodiUsua != "" ? (Entity) this.EM.Get<Usuario>(new ID("CodiUsua", (object) ubfixUsua.CodiUsua)) : (Entity) null;
    }
  }

  protected override Entity LoadEntity()
  {
    return (Entity) new UbfixUsua()
    {
      IdUbfi = (this.UbicacionFisicaEB.Entity != null ? ((UbicacionFisica) this.UbicacionFisicaEB.Entity).IdUbfi : 0),
      CodiUsua = (this.UsuarioEB.Entity != null ? ((Usuario) this.UsuarioEB.Entity).CodiUsua : "")
    };
  }

  protected override void LimpiarCampos()
  {
    this.UsuarioEB.Entity = (Entity) null;
    this.UbicacionFisicaEB.Entity = (Entity) null;
  }

  protected override List<string> IsDataValid()
  {
    List<string> stringList = new List<string>();
    if (this.UbicacionFisicaEB.Enabled && this.UbicacionFisicaEB.Entity == null)
      stringList.Add("Ingresar Ubicación");
    if (this.UsuarioEB.Enabled && this.UsuarioEB.Entity == null)
      stringList.Add("Ingresar Usuario");
    if (this.UbicacionFisicaEB.Entity != null && this.UsuarioEB.Entity != null && this.expert.consultarubicxusua(((UbicacionFisica) this.UbicacionFisicaEB.Entity).IdUbfi, ((Usuario) this.UsuarioEB.Entity).CodiUsua) > 0)
      stringList.Add("La combinación ya existe");
    return stringList;
  }

  private Entity BuscarUbicacionFisica(string text)
  {
    Filter filter = new Filter();
    if (Misc.IsNumeric(text))
      filter.Items.Add(new FilterItem("IdUbfi", "Código de la Unidad Física", FilterMode.Equal, text));
    else
      filter.Items.Add(new FilterItem("DetaUbfi", "Detalle de la Unidad Física", FilterMode.Contains, text));
    return (Entity) this.EM.Search<UbicacionFisica>(filter, true);
  }

  private Entity EncontrarUbicacionFisica(string text, bool useSearch)
  {
    Filter filter = new Filter();
    if (Misc.IsNumeric(text))
      filter.Items.Add(new FilterItem("IdUbfi", "Código de la Unidad Física", FilterMode.Equal, text));
    else
      filter.Items.Add(new FilterItem("DetaUbfi", "Detalle de la Unidad Física", FilterMode.Contains, text));
    return (Entity) this.EM.Find<UbicacionFisica>(filter, true, true);
  }

  private Entity BuscarUsuario(string text)
  {
    Filter filter = new Filter();
    if (Misc.IsNumeric(text))
      filter.Items.Add(new FilterItem("CodiUsua", "Código", FilterMode.Equal, text));
    else
      filter.Items.Add(new FilterItem("DetaUsua", "Detalle", FilterMode.Contains, text));
    return (Entity) this.EM.Search<Usuario>(filter, true);
  }

  private Entity EncontrarUsuario(string text, bool useSearch)
  {
    Filter filter = new Filter();
    if (Misc.IsNumeric(text))
      filter.Items.Add(new FilterItem("CodiUsua", "Código", FilterMode.Equal, text));
    else
      filter.Items.Add(new FilterItem("DetaUsua", "Detalle", FilterMode.Contains, text));
    return (Entity) this.EM.Find<Usuario>(filter, true, true);
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
    this.UbicacionFisicaEB = new MetroEntityBox();
    this.metroLabel8 = new MetroLabel();
    this.UsuarioEB = new MetroEntityBox();
    this.metroLabel2 = new MetroLabel();
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
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.UbicacionFisicaEB);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.metroLabel8);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.UsuarioEB);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.metroLabel2);
    ((Control) this.tabNavigationPage1).Name = "tabNavigationPage1";
    ((NavigationPageBase) this.tabNavigationPage1).Size = new Size(690, 150);
    this.UbicacionFisicaEB.AllowEmpty = false;
    this.UbicacionFisicaEB.AllowSqlCharacters = false;
    this.UbicacionFisicaEB.BackColor = Color.White;
    this.UbicacionFisicaEB.Entity = (Entity) null;
    this.UbicacionFisicaEB.ExternalValidation = (Func<string>) null;
    this.UbicacionFisicaEB.Font = new Font("Segoe UI", 14f, FontStyle.Regular, GraphicsUnit.Pixel);
    this.UbicacionFisicaEB.Location = new Point(142, 46);
    this.UbicacionFisicaEB.MandatoryWrite = false;
    this.UbicacionFisicaEB.Margin = new Padding(3, 4, 3, 4);
    this.UbicacionFisicaEB.MaximumSize = new Size(3000, 23);
    this.UbicacionFisicaEB.MaxLenght = 50;
    this.UbicacionFisicaEB.MinimumSize = new Size(100, 23);
    this.UbicacionFisicaEB.Name = "UbicacionFisicaEB";
    this.UbicacionFisicaEB.PropertyDetail = "DetaUbfi";
    this.UbicacionFisicaEB.PropertyID = "IdUbfi";
    this.UbicacionFisicaEB.ShowNewButton = false;
    this.UbicacionFisicaEB.ShowSearchButton = false;
    this.UbicacionFisicaEB.Size = new Size(400, 23);
    this.UbicacionFisicaEB.TabIndex = 0;
    this.UbicacionFisicaEB.TextAlign = HorizontalAlignment.Left;
    this.UbicacionFisicaEB.TextBoxWidth = 120;
    this.metroLabel8.AutoSize = false;
    this.metroLabel8.Location = new Point(18, 50);
    this.metroLabel8.Name = "metroLabel8";
    this.metroLabel8.Size = new Size(115, 19);
    this.metroLabel8.TabIndex = 38;
    this.metroLabel8.Text = "Ubicación Física:";
    this.metroLabel8.TextAlign = ContentAlignment.MiddleRight;
    this.UsuarioEB.AllowEmpty = false;
    this.UsuarioEB.AllowSqlCharacters = false;
    this.UsuarioEB.BackColor = Color.White;
    this.UsuarioEB.Entity = (Entity) null;
    this.UsuarioEB.ExternalValidation = (Func<string>) null;
    this.UsuarioEB.Font = new Font("Segoe UI", 14f, FontStyle.Regular, GraphicsUnit.Pixel);
    this.UsuarioEB.Location = new Point(142, 77);
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
    this.metroLabel2.Location = new Point(68, 81);
    this.metroLabel2.Name = "metroLabel2";
    this.metroLabel2.Size = new Size(65, 19);
    this.metroLabel2.TabIndex = 6;
    this.metroLabel2.Text = "Usuario";
    this.metroLabel2.TextAlign = ContentAlignment.TopRight;
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.Controls.Add((Control) this.tabPane1);
    this.Name = nameof (detailUbfixUsua);
    this.Size = new Size(700, 187);
    ((ISupportInitialize) this.tabPane1).EndInit();
    ((Control) this.tabPane1).ResumeLayout(false);
    ((Control) this.tabNavigationPage1).ResumeLayout(false);
    this.ResumeLayout(false);
  }
}
