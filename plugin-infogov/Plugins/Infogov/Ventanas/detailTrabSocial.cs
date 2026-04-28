// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Ventanas.detailTrabSocial
// Assembly: plugin-infogov, Version=1.0.0.18780, Culture=neutral, PublicKeyToken=null
// MVID: 33F9E52C-1C9C-4132-80FE-D29F95E246A9
// Assembly location: C:\nomade\para copiar\plugin-infogov.dll

using DevExpress.XtraBars.Docking2010.Base;
using DevExpress.XtraBars.Navigation;
using InfoGov.Common;
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

public class detailTrabSocial : ABMDetailControl
{
  private IContainer components = (IContainer) null;
  private TabPane tabPane1;
  private TabNavigationPage tabNavigationPage1;
  private MetroLabel metroLabel1;
  private MetroEntityBox UsuarioEB;
  private MetroLabel metroLabel2;
  private MetroLongTextBox CuitText;

  public detailTrabSocial()
  {
    this.InitializeComponent();
    this.UsuarioEB.FindEntityFunction = new MetroEntityBox.FindEntityDelegate(this.EncontrarUsuario);
    this.UsuarioEB.SearchEntityFunction = new MetroEntityBox.SearchEntityDelegate(this.BuscarUsuario);
  }

  protected override void OnModeChanged(ActionMode mode)
  {
    this.UsuarioEB.Enabled = mode == ActionMode.New;
    this.CuitText.Enabled = mode == ActionMode.New || mode == ActionMode.Edit;
  }

  protected override void OnEntityChanged(Entity enti)
  {
    TrabSocial trabSocial = (TrabSocial) enti;
    if (trabSocial == null)
    {
      this.LimpiarCampos();
    }
    else
    {
      this.UsuarioEB.Entity = trabSocial.CucuPers != 0L ? (Entity) this.EM.Get<Usuario>(new ID("CodiUsua", (object) trabSocial.CodiUsua)) : (Entity) null;
      this.CuitText.LongText = trabSocial.CucuPers;
    }
  }

  protected override Entity LoadEntity()
  {
    return (Entity) new TrabSocial()
    {
      CodiUsua = (this.UsuarioEB.Entity != null ? ((Usuario) this.UsuarioEB.Entity).CodiUsua : ""),
      CucuPers = this.CuitText.LongText
    };
  }

  protected override List<string> IsDataValid()
  {
    List<string> stringList = new List<string>();
    if (this.UsuarioEB.Entity == null)
      stringList.Add("Ingresar Usuario");
    if (this.CuitText.Text == "")
      stringList.Add("Ingresar Cuit");
    return stringList;
  }

  protected override void LimpiarCampos()
  {
    this.UsuarioEB.Entity = (Entity) null;
    this.CuitText.Text = "";
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
    this.CuitText = new MetroLongTextBox();
    this.metroLabel1 = new MetroLabel();
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
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.CuitText);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.metroLabel1);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.UsuarioEB);
    ((Control) this.tabNavigationPage1).Controls.Add((Control) this.metroLabel2);
    ((Control) this.tabNavigationPage1).Name = "tabNavigationPage1";
    ((NavigationPageBase) this.tabNavigationPage1).Size = new Size(690, 150);
    this.CuitText.Location = new Point(161, 80 /*0x50*/);
    this.CuitText.MaxLength = 11;
    this.CuitText.MaxValue = 99999999999L;
    this.CuitText.Name = "CuitText";
    this.CuitText.Size = new Size(120, 23);
    this.CuitText.TabIndex = 10;
    this.metroLabel1.AutoSize = false;
    this.metroLabel1.Location = new Point(86, 85);
    this.metroLabel1.Name = "metroLabel1";
    this.metroLabel1.Size = new Size(65, 19);
    this.metroLabel1.TabIndex = 9;
    this.metroLabel1.Text = "Cuit";
    this.metroLabel1.TextAlign = ContentAlignment.TopRight;
    this.UsuarioEB.AllowEmpty = false;
    this.UsuarioEB.AllowSqlCharacters = false;
    this.UsuarioEB.BackColor = Color.White;
    this.UsuarioEB.Entity = (Entity) null;
    this.UsuarioEB.ExternalValidation = (Func<string>) null;
    this.UsuarioEB.Font = new Font("Segoe UI", 14f, FontStyle.Regular, GraphicsUnit.Pixel);
    this.UsuarioEB.Location = new Point(160 /*0xA0*/, 50);
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
    this.UsuarioEB.TabIndex = 7;
    this.UsuarioEB.TextAlign = HorizontalAlignment.Left;
    this.UsuarioEB.TextBoxWidth = 120;
    this.metroLabel2.AutoSize = false;
    this.metroLabel2.Location = new Point(86, 54);
    this.metroLabel2.Name = "metroLabel2";
    this.metroLabel2.Size = new Size(65, 19);
    this.metroLabel2.TabIndex = 8;
    this.metroLabel2.Text = "Usuario";
    this.metroLabel2.TextAlign = ContentAlignment.TopRight;
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.Controls.Add((Control) this.tabPane1);
    this.Name = nameof (detailTrabSocial);
    this.Size = new Size(700, 187);
    ((ISupportInitialize) this.tabPane1).EndInit();
    ((Control) this.tabPane1).ResumeLayout(false);
    ((Control) this.tabNavigationPage1).ResumeLayout(false);
    this.ResumeLayout(false);
  }
}
