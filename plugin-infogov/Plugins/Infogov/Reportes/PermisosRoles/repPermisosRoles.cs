// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Reportes.PermisosRoles.repPermisosRoles
// Assembly: plugin-infogov, Version=1.0.0.18780, Culture=neutral, PublicKeyToken=null
// MVID: 33F9E52C-1C9C-4132-80FE-D29F95E246A9
// Assembly location: C:\nomade\para copiar\plugin-infogov.dll

using InfoGov.Common;
using InfoGov.Forms;
using InfoGov.Metro.Controls;
using InfoGov.Plugins.Infogov.Entidades;
using InfoGov.Reports;
using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Infogov.Reportes.PermisosRoles;

public class repPermisosRoles : InfoGovPrintForm
{
  private IContainer components = (IContainer) null;
  private MetroEntityBox UsuarioEB;
  private MetroEntityBox SistemaEB;
  private MetroLabel metroLabel1;
  private MetroLabel metroLabel2;

  public repPermisosRoles()
    : base("Permisos y Roles")
  {
    this.InitializeComponent();
    this.UsuarioEB.FindEntityFunction = new MetroEntityBox.FindEntityDelegate(this.EncontrarUsuario);
    this.UsuarioEB.SearchEntityFunction = new MetroEntityBox.SearchEntityDelegate(this.BuscarUsuario);
    this.SistemaEB.FindEntityFunction = new MetroEntityBox.FindEntityDelegate(this.EncontrarSistema);
    this.SistemaEB.SearchEntityFunction = new MetroEntityBox.SearchEntityDelegate(this.BuscarSistema);
  }

  private Entity BuscarUsuario(string text)
  {
    Filter filter = new Filter();
    if (Misc.IsNumeric(text))
      filter.Items.Add(new FilterItem("CodiUsua", "Cód. Usuario", FilterMode.StartsWith, text));
    else
      filter.Items.Add(new FilterItem("DetaUsua", "Det. Usuario", FilterMode.Contains, text));
    return (Entity) this.EM.Search<UserEntity>(filter, true);
  }

  private Entity EncontrarUsuario(string text, bool useSearch)
  {
    Filter filter = new Filter();
    if (Misc.IsNumeric(text))
      filter.Items.Add(new FilterItem("CodiUsua", "Cód. Usuario", FilterMode.StartsWith, text));
    else
      filter.Items.Add(new FilterItem("DetaUsua", "Det. Usuario", FilterMode.Contains, text));
    return (Entity) this.EM.Find<UserEntity>(filter, true, true);
  }

  private Entity BuscarSistema(string text)
  {
    Filter filter = new Filter();
    if (Misc.IsNumeric(text))
      filter.Items.Add(new FilterItem("CodiSist", "Cód. Sist.", FilterMode.StartsWith, text));
    else
      filter.Items.Add(new FilterItem("DetaSist", "Sistema", FilterMode.Contains, text));
    return (Entity) this.EM.Search<Sistema>(filter, true);
  }

  private Entity EncontrarSistema(string text, bool useSearch)
  {
    Filter filter = new Filter();
    if (Misc.IsNumeric(text))
      filter.Items.Add(new FilterItem("CodiSist", "Cód. Sist.", FilterMode.StartsWith, text));
    else
      filter.Items.Add(new FilterItem("DetaSist", "Sistema", FilterMode.Contains, text));
    return (Entity) this.EM.Find<Sistema>(filter, true, true);
  }

  protected override void Dispose(bool disposing)
  {
    if (disposing && this.components != null)
      this.components.Dispose();
    base.Dispose(disposing);
  }

  private void InitializeComponent()
  {
    this.UsuarioEB = new MetroEntityBox();
    this.SistemaEB = new MetroEntityBox();
    this.metroLabel1 = new MetroLabel();
    this.metroLabel2 = new MetroLabel();
    this.SuspendLayout();
    this.butClose.Location = new Point(550, 13);
    this.butGenerate.Location = new Point((int) byte.MaxValue, 221);
    this.UsuarioEB.AllowEmpty = false;
    this.UsuarioEB.AllowSqlCharacters = false;
    this.UsuarioEB.BackColor = Color.White;
    this.UsuarioEB.Entity = (Entity) null;
    this.UsuarioEB.ExternalValidation = (Func<string>) null;
    this.UsuarioEB.Font = new Font("Segoe UI", 14f, FontStyle.Regular, GraphicsUnit.Pixel);
    this.UsuarioEB.LabelText = "";
    this.UsuarioEB.Location = new Point(75, 88);
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
    this.UsuarioEB.TabIndex = 4;
    this.UsuarioEB.TextAlign = HorizontalAlignment.Left;
    this.UsuarioEB.TextBoxWidth = 120;
    this.SistemaEB.AllowEmpty = false;
    this.SistemaEB.AllowSqlCharacters = false;
    this.SistemaEB.BackColor = Color.White;
    this.SistemaEB.Entity = (Entity) null;
    this.SistemaEB.ExternalValidation = (Func<string>) null;
    this.SistemaEB.Font = new Font("Segoe UI", 14f, FontStyle.Regular, GraphicsUnit.Pixel);
    this.SistemaEB.LabelText = "";
    this.SistemaEB.Location = new Point(75, 137);
    this.SistemaEB.MandatoryWrite = false;
    this.SistemaEB.Margin = new Padding(3, 4, 3, 4);
    this.SistemaEB.MaximumSize = new Size(3000, 23);
    this.SistemaEB.MaxLenght = 50;
    this.SistemaEB.MinimumSize = new Size(100, 23);
    this.SistemaEB.Name = "SistemaEB";
    this.SistemaEB.PropertyDetail = "DetaSist";
    this.SistemaEB.PropertyID = "CodiSist";
    this.SistemaEB.ShowNewButton = false;
    this.SistemaEB.ShowSearchButton = false;
    this.SistemaEB.Size = new Size(400, 23);
    this.SistemaEB.TabIndex = 5;
    this.SistemaEB.TextAlign = HorizontalAlignment.Left;
    this.SistemaEB.TextBoxWidth = 120;
    this.metroLabel1.AutoSize = false;
    this.metroLabel1.Location = new Point(13, 92);
    this.metroLabel1.Name = "metroLabel1";
    this.metroLabel1.Size = new Size(53, 19);
    this.metroLabel1.TabIndex = 6;
    this.metroLabel1.Text = "Usuario";
    this.metroLabel1.TextAlign = ContentAlignment.TopRight;
    this.metroLabel2.AutoSize = false;
    this.metroLabel2.Location = new Point(15, 141);
    this.metroLabel2.Name = "metroLabel2";
    this.metroLabel2.Size = new Size(54, 19);
    this.metroLabel2.TabIndex = 7;
    this.metroLabel2.Text = "Sistema";
    this.metroLabel2.TextAlign = ContentAlignment.TopRight;
    this.AutoScaleDimensions = new SizeF(6f, 13f);
    this.AutoScaleMode = AutoScaleMode.Font;
    this.ClientSize = new Size(585, 257);
    this.Controls.Add((Control) this.metroLabel2);
    this.Controls.Add((Control) this.metroLabel1);
    this.Controls.Add((Control) this.SistemaEB);
    this.Controls.Add((Control) this.UsuarioEB);
    this.Name = nameof (repPermisosRoles);
    this.Text = nameof (repPermisosRoles);
    this.Controls.SetChildIndex((Control) this.butClose, 0);
    this.Controls.SetChildIndex((Control) this.butGenerate, 0);
    this.Controls.SetChildIndex((Control) this.UsuarioEB, 0);
    this.Controls.SetChildIndex((Control) this.SistemaEB, 0);
    this.Controls.SetChildIndex((Control) this.metroLabel1, 0);
    this.Controls.SetChildIndex((Control) this.metroLabel2, 0);
    this.ResumeLayout(false);
    this.PerformLayout();
  }
}
