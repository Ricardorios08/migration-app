// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Ventanas.frmCombinarRol
// Assembly: plugin-infogov, Version=1.0.0.18780, Culture=neutral, PublicKeyToken=null
// MVID: 33F9E52C-1C9C-4132-80FE-D29F95E246A9
// Assembly location: C:\nomade\para copiar\plugin-infogov.dll

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

public class frmCombinarRol : InfoGovModalForm
{
  private MetroToolStrip metroToolStrip1;
  private ToolStripButton tsGuardar;
  private ToolStripButton tsSalir;
  private MetroLabel metroLabel1;
  private MetroDataGridView grid;
  private MetroButton AgregarBtn;
  private MetroEntityBox PerfilEB;
  private MetroPanel metroPanel1;
  private ToolStripLabel toolStripLabel1;
  private MetroTextBox DetaPerfTxt;
  private MetroLabel metroLabel2;
  private BindingSource bs = new BindingSource();
  private DataGridViewTextBoxColumn CodiPerfColumn;
  private DataGridViewTextBoxColumn DetaPerfColumn;
  private ExpRol exp = new ExpRol();

  public frmCombinarRol()
    : base()
  {
    this.InitializeComponent();
  }

  private void InitializeComponent()
  {
    ComponentResourceManager componentResourceManager = new ComponentResourceManager(typeof (frmCombinarRol));
    DataGridViewCellStyle gridViewCellStyle1 = new DataGridViewCellStyle();
    DataGridViewCellStyle gridViewCellStyle2 = new DataGridViewCellStyle();
    this.PerfilEB = new MetroEntityBox();
    this.metroToolStrip1 = new MetroToolStrip();
    this.tsGuardar = new ToolStripButton();
    this.tsSalir = new ToolStripButton();
    this.metroLabel1 = new MetroLabel();
    this.grid = new MetroDataGridView();
    this.AgregarBtn = new MetroButton();
    this.metroPanel1 = new MetroPanel();
    this.toolStripLabel1 = new ToolStripLabel();
    this.metroLabel2 = new MetroLabel();
    this.DetaPerfTxt = new MetroTextBox();
    this.CodiPerfColumn = new DataGridViewTextBoxColumn();
    this.DetaPerfColumn = new DataGridViewTextBoxColumn();
    this.metroToolStrip1.SuspendLayout();
    ((ISupportInitialize) this.grid).BeginInit();
    this.metroPanel1.SuspendLayout();
    this.SuspendLayout();
    this.PerfilEB.AllowEmpty = false;
    this.PerfilEB.AllowSqlCharacters = false;
    this.PerfilEB.BackColor = Color.White;
    this.PerfilEB.Entity = (Entity) null;
    this.PerfilEB.ExternalValidation = (Func<string>) null;
    this.PerfilEB.Font = new Font("Segoe UI", 14f, FontStyle.Regular, GraphicsUnit.Pixel);
    this.PerfilEB.Location = new Point(153, 71);
    this.PerfilEB.Margin = new Padding(3, 4, 3, 4);
    this.PerfilEB.MaximumSize = new Size(3000, 23);
    this.PerfilEB.MaxLenght = 50;
    this.PerfilEB.MinimumSize = new Size(100, 23);
    this.PerfilEB.Name = "PerfilEB";
    this.PerfilEB.PropertyDetail = "DetaRol";
    this.PerfilEB.PropertyID = "CodiRol";
    this.PerfilEB.ShowNewButton = false;
    this.PerfilEB.ShowSearchButton = false;
    this.PerfilEB.Size = new Size(254, 23);
    this.PerfilEB.TabIndex = 1;
    this.PerfilEB.TextAlign = HorizontalAlignment.Left;
    this.PerfilEB.TextBoxWidth = 60;
    this.metroToolStrip1.Font = new Font("Segoe UI", 12f, FontStyle.Regular, GraphicsUnit.Pixel);
    this.metroToolStrip1.GripStyle = ToolStripGripStyle.Hidden;
    this.metroToolStrip1.Items.AddRange(new ToolStripItem[3]
    {
      (ToolStripItem) this.tsGuardar,
      (ToolStripItem) this.tsSalir,
      (ToolStripItem) this.toolStripLabel1
    });
    this.metroToolStrip1.Location = new Point(0, 0);
    this.metroToolStrip1.Name = "metroToolStrip1";
    this.metroToolStrip1.Size = new Size(663, 28);
    this.metroToolStrip1.TabIndex = 2;
    this.metroToolStrip1.Text = "metroToolStrip1";
    this.tsGuardar.Alignment = ToolStripItemAlignment.Right;
    this.tsGuardar.Font = new Font("Segoe UI", 12f, FontStyle.Regular, GraphicsUnit.Pixel);
    this.tsGuardar.Image = (Image) componentResourceManager.GetObject("tsGuardar.Image");
    this.tsGuardar.ImageTransparentColor = Color.Magenta;
    this.tsGuardar.Name = "tsGuardar";
    this.tsGuardar.Size = new Size(134, 25);
    this.tsGuardar.Text = "Combinar y Guardar";
    this.tsGuardar.Click += new EventHandler(this.tsGuardar_Click);
    this.tsSalir.Alignment = ToolStripItemAlignment.Right;
    this.tsSalir.Font = new Font("Segoe UI", 12f, FontStyle.Regular, GraphicsUnit.Pixel);
    this.tsSalir.Image = (Image) componentResourceManager.GetObject("tsSalir.Image");
    this.tsSalir.ImageTransparentColor = Color.Magenta;
    this.tsSalir.Name = "tsSalir";
    this.tsSalir.Size = new Size(49, 25);
    this.tsSalir.Text = "Salir";
    this.tsSalir.Click += new EventHandler(this.tsSalir_Click);
    this.metroLabel1.AutoSize = true;
    this.metroLabel1.Location = new Point(109, 75);
    this.metroLabel1.Margin = new Padding(3, 4, 3, 4);
    this.metroLabel1.Name = "metroLabel1";
    this.metroLabel1.Size = new Size(38, 19);
    this.metroLabel1.TabIndex = 3;
    this.metroLabel1.Text = "Rol";
    this.grid.AllowUserToAddRows = false;
    this.grid.AllowUserToDeleteRows = false;
    this.grid.AllowUserToOrderColumns = true;
    this.grid.AllowUserToResizeRows = false;
    this.grid.BackgroundColor = Color.White;
    this.grid.BorderStyle = BorderStyle.None;
    this.grid.ColumnHeadersBorderStyle = DataGridViewHeaderBorderStyle.Single;
    gridViewCellStyle1.Alignment = DataGridViewContentAlignment.MiddleLeft;
    gridViewCellStyle1.BackColor = SystemColors.Control;
    gridViewCellStyle1.Font = new Font("Microsoft Sans Serif", 8.25f, FontStyle.Regular, GraphicsUnit.Point, (byte) 0);
    gridViewCellStyle1.ForeColor = SystemColors.WindowText;
    gridViewCellStyle1.SelectionBackColor = SystemColors.Highlight;
    gridViewCellStyle1.SelectionForeColor = SystemColors.HighlightText;
    gridViewCellStyle1.WrapMode = DataGridViewTriState.True;
    this.grid.ColumnHeadersDefaultCellStyle = gridViewCellStyle1;
    this.grid.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.AutoSize;
    this.grid.Columns.AddRange((DataGridViewColumn) this.CodiPerfColumn, (DataGridViewColumn) this.DetaPerfColumn);
    gridViewCellStyle2.Alignment = DataGridViewContentAlignment.MiddleLeft;
    gridViewCellStyle2.BackColor = SystemColors.Window;
    gridViewCellStyle2.Font = new Font("Microsoft Sans Serif", 8.25f, FontStyle.Regular, GraphicsUnit.Point, (byte) 0);
    gridViewCellStyle2.ForeColor = SystemColors.ControlText;
    gridViewCellStyle2.SelectionBackColor = SystemColors.Highlight;
    gridViewCellStyle2.SelectionForeColor = SystemColors.HighlightText;
    gridViewCellStyle2.WrapMode = DataGridViewTriState.False;
    this.grid.DefaultCellStyle = gridViewCellStyle2;
    this.grid.Dock = DockStyle.Bottom;
    this.grid.EditMode = DataGridViewEditMode.EditProgrammatically;
    this.grid.GridColor = Color.White;
    this.grid.Location = new Point(0, 130);
    this.grid.MultiSelect = false;
    this.grid.Name = "grid";
    this.grid.ReadOnly = true;
    this.grid.RowHeadersVisible = false;
    this.grid.SelectionMode = DataGridViewSelectionMode.FullRowSelect;
    this.grid.Size = new Size(663, 129);
    this.grid.TabIndex = 4;
    this.AgregarBtn.Anchor = AnchorStyles.Top | AnchorStyles.Right;
    this.AgregarBtn.Location = new Point(583, 71);
    this.AgregarBtn.Margin = new Padding(3, 4, 3, 4);
    this.AgregarBtn.Name = "AgregarBtn";
    this.AgregarBtn.Size = new Size(75, 23);
    this.AgregarBtn.TabIndex = 2;
    this.AgregarBtn.Text = "Agregar";
    this.AgregarBtn.UseSelectable = true;
    this.AgregarBtn.Click += new EventHandler(this.AgregarBtn_Click);
    this.metroPanel1.BorderStyle = BorderStyle.FixedSingle;
    this.metroPanel1.Controls.Add((Control) this.DetaPerfTxt);
    this.metroPanel1.Controls.Add((Control) this.metroLabel2);
    this.metroPanel1.Controls.Add((Control) this.AgregarBtn);
    this.metroPanel1.Controls.Add((Control) this.grid);
    this.metroPanel1.Controls.Add((Control) this.metroToolStrip1);
    this.metroPanel1.Controls.Add((Control) this.metroLabel1);
    this.metroPanel1.Controls.Add((Control) this.PerfilEB);
    this.metroPanel1.Dock = DockStyle.Fill;
    this.metroPanel1.HorizontalScrollbarBarColor = true;
    this.metroPanel1.HorizontalScrollbarHighlightOnWheel = false;
    this.metroPanel1.HorizontalScrollbarSize = 10;
    this.metroPanel1.Location = new Point(0, 0);
    this.metroPanel1.Name = "metroPanel1";
    this.metroPanel1.Size = new Size(665, 261);
    this.metroPanel1.TabIndex = 6;
    this.metroPanel1.VerticalScrollbarBarColor = true;
    this.metroPanel1.VerticalScrollbarHighlightOnWheel = false;
    this.metroPanel1.VerticalScrollbarSize = 10;
    this.toolStripLabel1.Font = new Font("Segoe UI", 14.25f, FontStyle.Bold, GraphicsUnit.Point, (byte) 0);
    this.toolStripLabel1.Name = "toolStripLabel1";
    this.toolStripLabel1.Size = new Size(169, 25);
    this.toolStripLabel1.Text = "Combinar Perfiles";
    this.metroLabel2.AutoSize = true;
    this.metroLabel2.Location = new Point(13, 36);
    this.metroLabel2.Margin = new Padding(3, 4, 3, 4);
    this.metroLabel2.Name = "metroLabel2";
    this.metroLabel2.Size = new Size(134, 19);
    this.metroLabel2.TabIndex = 6;
    this.metroLabel2.Text = "Nombre Nuevo Rol";
    this.DetaPerfTxt.AllowEmpty = false;
    this.DetaPerfTxt.AllowSqlCharacters = false;
    this.DetaPerfTxt.ExternalValidation = (Func<string>) null;
    this.DetaPerfTxt.Location = new Point(153, 32 /*0x20*/);
    this.DetaPerfTxt.Margin = new Padding(3, 4, 3, 4);
    this.DetaPerfTxt.MaxLength = 50;
    this.DetaPerfTxt.MinLenght = 0;
    this.DetaPerfTxt.Name = "DetaPerfTxt";
    this.DetaPerfTxt.PasswordChar = char.MinValue;
    this.DetaPerfTxt.ScrollBars = ScrollBars.None;
    this.DetaPerfTxt.SelectedText = "";
    this.DetaPerfTxt.ShowBorder = true;
    this.DetaPerfTxt.Size = new Size(226, 23);
    this.DetaPerfTxt.TabIndex = 0;
    this.DetaPerfTxt.UseSelectable = true;
    this.CodiPerfColumn.DataPropertyName = "CodiRol";
    this.CodiPerfColumn.HeaderText = "Codigo";
    this.CodiPerfColumn.Name = "CodiPerfColumn";
    this.CodiPerfColumn.ReadOnly = true;
    this.DetaPerfColumn.AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;
    this.DetaPerfColumn.DataPropertyName = "DetaRol";
    this.DetaPerfColumn.HeaderText = "Detalle";
    this.DetaPerfColumn.Name = "DetaPerfColumn";
    this.DetaPerfColumn.ReadOnly = true;
    this.ClientSize = new Size(665, 261);
    this.Controls.Add((Control) this.metroPanel1);
    this.Font = new Font("Microsoft Sans Serif", 8.25f, FontStyle.Regular, GraphicsUnit.Point, (byte) 0);
    this.Name = nameof (frmCombinarRol);
    this.Text = "Combinar Perfiles";
    this.Load += new EventHandler(this.frmCombinarPerfil_Load);
    this.metroToolStrip1.ResumeLayout(false);
    this.metroToolStrip1.PerformLayout();
    ((ISupportInitialize) this.grid).EndInit();
    this.metroPanel1.ResumeLayout(false);
    this.metroPanel1.PerformLayout();
    this.ResumeLayout(false);
  }

  private void frmCombinarPerfil_Load(object sender, EventArgs e)
  {
    this.PerfilEB.FindEntityFunction = new MetroEntityBox.FindEntityDelegate(this.EncontrarPerfil);
    this.PerfilEB.SearchEntityFunction = new MetroEntityBox.SearchEntityDelegate(this.BuscarPerfil);
    this.grid.DataSource = (object) this.bs;
  }

  private void AgregarBtn_Click(object sender, EventArgs e)
  {
    if (this.PerfilEB.Entity == null || this.existeRol(((Rol) this.PerfilEB.Entity).CodiRol))
      return;
    this.bs.Add((object) (Rol) this.PerfilEB.Entity);
    this.PerfilEB.Entity = (Entity) null;
  }

  private Entity EncontrarPerfil(string text, bool useSearch)
  {
    Filter filter = new Filter();
    if (Misc.IsNumeric(text))
      filter.Items.Add(new FilterItem("CodiRol", "Codigo", FilterMode.Equal, text));
    else if (text.Length > 0)
      filter.Items.Add(new FilterItem("DetaRol", "Detalle", FilterMode.Equal, text));
    return (Entity) this.EM.Find<Rol>(filter, true, useSearch);
  }

  private Entity BuscarPerfil(string text)
  {
    Filter filter = new Filter();
    if (Misc.IsNumeric(text))
      filter.Items.Add(new FilterItem("CodiRol", "Codigo", FilterMode.Equal, text));
    else if (text.Length > 0)
      filter.Items.Add(new FilterItem("DetaRol", "Detalle", FilterMode.Equal, text));
    return (Entity) this.EM.Search<Rol>(filter, true);
  }

  private bool existeRol(int CodiRol)
  {
    foreach (Rol b in this.bs)
    {
      if (b.CodiRol == CodiRol)
        return true;
    }
    return false;
  }

  private void tsSalir_Click(object sender, EventArgs e) => this.Close();

  private void tsGuardar_Click(object sender, EventArgs e)
  {
    if (!this.validarGuardar())
      return;
    List<Rol> roles = new List<Rol>();
    foreach (Rol b in this.bs)
      roles.Add(b);
    if (this.exp.CombinarRoles(roles, this.DetaPerfTxt.Text))
      this.Close();
  }

  private bool validarGuardar()
  {
    string text = "";
    bool flag = true;
    if (this.bs.Count < 2)
      text = $"{text}Debe ingresar 2 o más perfiles{Environment.NewLine}";
    if (this.DetaPerfTxt.Text.Trim().Length == 0)
      text = $"{text}Debe ingresar nombre del nuevo perfil{Environment.NewLine}";
    if (text.Length > 0)
    {
      flag = false;
      int num = (int) MessageBox.Show(text);
    }
    return flag;
  }
}
