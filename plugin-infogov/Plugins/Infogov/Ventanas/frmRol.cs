// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Ventanas.frmRol
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
using System.Text;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Infogov.Ventanas;

public class frmRol : BaseForm
{
  private int CodiPerfAux = 0;
  private Rol currentRol = new Rol();
  private ExpRol expert = new ExpRol();
  private BindingSource bsRoles = new BindingSource();
  private List<Sistema> sistemasList = new List<Sistema>();
  private List<Rol> rolesList = new List<Rol>();
  private List<PermisoVentana> permisosVentanasList = new List<PermisoVentana>();
  private frmRol.EstadoVentana windowSate = frmRol.EstadoVentana.modificar;
  private SplitContainer splitContainer1;
  private MetroPanel metroPanel1;
  private MetroButton btnNew;
  private MetroDataGridView RolesGrid;
  private DataGridViewTextBoxColumn RolColumn;
  private MetroTextBox RolFilterTxt;
  private MetroPanel metroPanel2;
  private MetroButton btnRestaurar;
  private MetroButton btnGuardar;
  private MetroButton btnCopiar;
  private MetroTabControl RolTabControl;
  private MetroTabPage RolTabPage;
  private MetroComboBox SistemasCmBx;
  private MetroLabel metroLabel4;
  private MetroPanel metroPanel3;
  private SplitContainer splitContainer2;
  private TreeView tvWindows;
  private CheckedListBox clbWindowsPerm;
  private MetroTextBox RolNameTxt;
  private MetroLabel metroLabel1;
  private MetroButton btnCancelar;
  private MetroIntTextBox CodiRolTxt;
  private MetroLabel metroLabel2;
  private MetroButton btnCombinarRol;
  private MetroButton UsuariosBtn;
  private MetroButton btnEliminar;

  public frmRol()
  {
    this.InitializeComponent();
    this.RolesGrid.DataSource = (object) this.bsRoles;
    this.RolesGrid.BorderStyle = BorderStyle.FixedSingle;
  }

  private void InitializeComponent()
  {
    this.splitContainer1 = new SplitContainer();
    this.metroPanel1 = new MetroPanel();
    this.btnCombinarRol = new MetroButton();
    this.btnEliminar = new MetroButton();
    this.btnNew = new MetroButton();
    this.RolesGrid = new MetroDataGridView();
    this.RolColumn = new DataGridViewTextBoxColumn();
    this.RolFilterTxt = new MetroTextBox();
    this.btnCopiar = new MetroButton();
    this.metroPanel2 = new MetroPanel();
    this.UsuariosBtn = new MetroButton();
    this.btnCancelar = new MetroButton();
    this.btnRestaurar = new MetroButton();
    this.btnGuardar = new MetroButton();
    this.RolTabControl = new MetroTabControl();
    this.RolTabPage = new MetroTabPage();
    this.CodiRolTxt = new MetroIntTextBox();
    this.metroLabel2 = new MetroLabel();
    this.RolNameTxt = new MetroTextBox();
    this.metroLabel1 = new MetroLabel();
    this.metroPanel3 = new MetroPanel();
    this.splitContainer2 = new SplitContainer();
    this.tvWindows = new TreeView();
    this.clbWindowsPerm = new CheckedListBox();
    this.SistemasCmBx = new MetroComboBox();
    this.metroLabel4 = new MetroLabel();
    this.splitContainer1.BeginInit();
    this.splitContainer1.Panel1.SuspendLayout();
    this.splitContainer1.Panel2.SuspendLayout();
    this.splitContainer1.SuspendLayout();
    this.metroPanel1.SuspendLayout();
    ((ISupportInitialize) this.RolesGrid).BeginInit();
    this.metroPanel2.SuspendLayout();
    this.RolTabControl.SuspendLayout();
    this.RolTabPage.SuspendLayout();
    this.metroPanel3.SuspendLayout();
    this.splitContainer2.BeginInit();
    this.splitContainer2.Panel1.SuspendLayout();
    this.splitContainer2.Panel2.SuspendLayout();
    this.splitContainer2.SuspendLayout();
    this.SuspendLayout();
    this.splitContainer1.Dock = DockStyle.Fill;
    this.splitContainer1.Location = new Point(0, 0);
    this.splitContainer1.Name = "splitContainer1";
    this.splitContainer1.Panel1.BackColor = SystemColors.ControlLightLight;
    this.splitContainer1.Panel1.Controls.Add((Control) this.metroPanel1);
    this.splitContainer1.Panel2.BackColor = SystemColors.ControlLightLight;
    this.splitContainer1.Panel2.Controls.Add((Control) this.metroPanel2);
    this.splitContainer1.Size = new Size(974, 534);
    this.splitContainer1.SplitterDistance = 246;
    this.splitContainer1.TabIndex = 1;
    this.metroPanel1.Controls.Add((Control) this.btnCombinarRol);
    this.metroPanel1.Controls.Add((Control) this.btnEliminar);
    this.metroPanel1.Controls.Add((Control) this.btnNew);
    this.metroPanel1.Controls.Add((Control) this.RolesGrid);
    this.metroPanel1.Controls.Add((Control) this.RolFilterTxt);
    this.metroPanel1.Controls.Add((Control) this.btnCopiar);
    this.metroPanel1.Dock = DockStyle.Fill;
    this.metroPanel1.HorizontalScrollbarBarColor = true;
    this.metroPanel1.HorizontalScrollbarHighlightOnWheel = false;
    this.metroPanel1.HorizontalScrollbarSize = 10;
    this.metroPanel1.Location = new Point(0, 0);
    this.metroPanel1.Name = "metroPanel1";
    this.metroPanel1.ShowBorder = true;
    this.metroPanel1.Size = new Size(246, 534);
    this.metroPanel1.TabIndex = 0;
    this.metroPanel1.VerticalScrollbarBarColor = true;
    this.metroPanel1.VerticalScrollbarHighlightOnWheel = false;
    this.metroPanel1.VerticalScrollbarSize = 10;
    this.btnCombinarRol.Anchor = AnchorStyles.Bottom | AnchorStyles.Left | AnchorStyles.Right;
    this.btnCombinarRol.Location = new Point(4, 445);
    this.btnCombinarRol.Margin = new Padding(3, 4, 3, 4);
    this.btnCombinarRol.Name = "btnCombinarRol";
    this.btnCombinarRol.Size = new Size(238, 23);
    this.btnCombinarRol.TabIndex = 7;
    this.btnCombinarRol.Text = "Combinar Roles";
    this.btnCombinarRol.UseSelectable = true;
    this.btnCombinarRol.Click += new EventHandler(this.btnCombinarRoles_Click);
    this.btnEliminar.Anchor = AnchorStyles.Bottom | AnchorStyles.Right;
    this.btnEliminar.Location = new Point(162, 507);
    this.btnEliminar.Margin = new Padding(3, 4, 3, 4);
    this.btnEliminar.Name = "btnEliminar";
    this.btnEliminar.Size = new Size(80 /*0x50*/, 23);
    this.btnEliminar.TabIndex = 6;
    this.btnEliminar.Text = "Eliminar";
    this.btnEliminar.UseSelectable = true;
    this.btnEliminar.Click += new EventHandler(this.btnEliminar_Click);
    this.btnNew.Anchor = AnchorStyles.Bottom | AnchorStyles.Left | AnchorStyles.Right;
    this.btnNew.Location = new Point(4, 507);
    this.btnNew.Margin = new Padding(3, 4, 3, 4);
    this.btnNew.Name = "btnNew";
    this.btnNew.Size = new Size(154, 23);
    this.btnNew.TabIndex = 5;
    this.btnNew.Text = "Nuevo";
    this.btnNew.UseSelectable = true;
    this.btnNew.Click += new EventHandler(this.btnNew_Click);
    this.RolesGrid.AllowUserToAddRows = false;
    this.RolesGrid.AllowUserToDeleteRows = false;
    this.RolesGrid.AllowUserToOrderColumns = true;
    this.RolesGrid.AllowUserToResizeRows = false;
    this.RolesGrid.Anchor = AnchorStyles.Top | AnchorStyles.Bottom | AnchorStyles.Left | AnchorStyles.Right;
    this.RolesGrid.BackgroundColor = Color.White;
    this.RolesGrid.BorderStyle = BorderStyle.None;
    this.RolesGrid.ColumnHeadersBorderStyle = DataGridViewHeaderBorderStyle.Single;
    this.RolesGrid.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.AutoSize;
    this.RolesGrid.ColumnHeadersVisible = false;
    this.RolesGrid.Columns.AddRange((DataGridViewColumn) this.RolColumn);
    this.RolesGrid.EditMode = DataGridViewEditMode.EditProgrammatically;
    this.RolesGrid.GridColor = Color.White;
    this.RolesGrid.Location = new Point(7, 50);
    this.RolesGrid.MultiSelect = false;
    this.RolesGrid.Name = "RolesGrid";
    this.RolesGrid.ReadOnly = true;
    this.RolesGrid.RowHeadersVisible = false;
    this.RolesGrid.SelectionMode = DataGridViewSelectionMode.FullRowSelect;
    this.RolesGrid.Size = new Size(235, 388);
    this.RolesGrid.TabIndex = 4;
    this.RolesGrid.SelectionChanged += new EventHandler(this.PerfilesGrid_SelectionChanged);
    this.RolColumn.AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;
    this.RolColumn.DataPropertyName = "DetaRol";
    this.RolColumn.HeaderText = "Rol";
    this.RolColumn.Name = "RolColumn";
    this.RolColumn.ReadOnly = true;
    this.RolFilterTxt.AllowEmpty = false;
    this.RolFilterTxt.AllowSqlCharacters = false;
    this.RolFilterTxt.Anchor = AnchorStyles.Top | AnchorStyles.Left | AnchorStyles.Right;
    this.RolFilterTxt.ExternalValidation = (Func<string>) null;
    this.RolFilterTxt.Location = new Point(20, 13);
    this.RolFilterTxt.Margin = new Padding(3, 4, 3, 4);
    this.RolFilterTxt.MaxLength = 50;
    this.RolFilterTxt.MinLenght = 0;
    this.RolFilterTxt.Name = "RolFilterTxt";
    this.RolFilterTxt.PasswordChar = char.MinValue;
    this.RolFilterTxt.ScrollBars = ScrollBars.None;
    this.RolFilterTxt.SelectedText = "";
    this.RolFilterTxt.ShowBorder = true;
    this.RolFilterTxt.Size = new Size(207, 23);
    this.RolFilterTxt.TabIndex = 3;
    this.RolFilterTxt.UseSelectable = true;
    this.RolFilterTxt.TextChanged += new EventHandler(this.PerfilFilterTxt_TextChanged);
    this.btnCopiar.Anchor = AnchorStyles.Bottom | AnchorStyles.Left | AnchorStyles.Right;
    this.btnCopiar.Location = new Point(4, 476);
    this.btnCopiar.Margin = new Padding(3, 4, 3, 4);
    this.btnCopiar.Name = "btnCopiar";
    this.btnCopiar.Size = new Size(238, 23);
    this.btnCopiar.TabIndex = 1;
    this.btnCopiar.Text = "Copiar Rol";
    this.btnCopiar.UseSelectable = true;
    this.btnCopiar.Click += new EventHandler(this.btnCopiar_Click);
    this.metroPanel2.Controls.Add((Control) this.UsuariosBtn);
    this.metroPanel2.Controls.Add((Control) this.btnCancelar);
    this.metroPanel2.Controls.Add((Control) this.btnRestaurar);
    this.metroPanel2.Controls.Add((Control) this.btnGuardar);
    this.metroPanel2.Controls.Add((Control) this.RolTabControl);
    this.metroPanel2.Dock = DockStyle.Fill;
    this.metroPanel2.HorizontalScrollbarBarColor = true;
    this.metroPanel2.HorizontalScrollbarHighlightOnWheel = false;
    this.metroPanel2.HorizontalScrollbarSize = 10;
    this.metroPanel2.Location = new Point(0, 0);
    this.metroPanel2.Name = "metroPanel2";
    this.metroPanel2.ShowBorder = true;
    this.metroPanel2.Size = new Size(724, 534);
    this.metroPanel2.TabIndex = 0;
    this.metroPanel2.VerticalScrollbarBarColor = true;
    this.metroPanel2.VerticalScrollbarHighlightOnWheel = false;
    this.metroPanel2.VerticalScrollbarSize = 10;
    this.UsuariosBtn.Anchor = AnchorStyles.Bottom | AnchorStyles.Right;
    this.UsuariosBtn.Location = new Point(640, 507);
    this.UsuariosBtn.Margin = new Padding(3, 4, 3, 4);
    this.UsuariosBtn.Name = "UsuariosBtn";
    this.UsuariosBtn.Size = new Size(75, 23);
    this.UsuariosBtn.TabIndex = 1;
    this.UsuariosBtn.Text = "Usuarios";
    this.UsuariosBtn.UseSelectable = true;
    this.UsuariosBtn.Click += new EventHandler(this.UsuariosBtn_Click);
    this.btnCancelar.Anchor = AnchorStyles.Bottom | AnchorStyles.Left;
    this.btnCancelar.Location = new Point(167, 507);
    this.btnCancelar.Margin = new Padding(3, 4, 3, 4);
    this.btnCancelar.Name = "btnCancelar";
    this.btnCancelar.Size = new Size(75, 23);
    this.btnCancelar.TabIndex = 13;
    this.btnCancelar.Text = "Cancelar";
    this.btnCancelar.UseSelectable = true;
    this.btnCancelar.Click += new EventHandler(this.btnCancelar_Click);
    this.btnRestaurar.Anchor = AnchorStyles.Bottom | AnchorStyles.Left;
    this.btnRestaurar.Location = new Point(86, 507);
    this.btnRestaurar.Margin = new Padding(3, 4, 3, 4);
    this.btnRestaurar.Name = "btnRestaurar";
    this.btnRestaurar.Size = new Size(75, 23);
    this.btnRestaurar.TabIndex = 5;
    this.btnRestaurar.Text = "Restaurar";
    this.btnRestaurar.UseSelectable = true;
    this.btnRestaurar.Click += new EventHandler(this.btnRestaurar_Click);
    this.btnGuardar.Anchor = AnchorStyles.Bottom | AnchorStyles.Left;
    this.btnGuardar.Location = new Point(5, 507);
    this.btnGuardar.Margin = new Padding(3, 4, 3, 4);
    this.btnGuardar.Name = "btnGuardar";
    this.btnGuardar.Size = new Size(75, 23);
    this.btnGuardar.TabIndex = 4;
    this.btnGuardar.Text = "Guardar";
    this.btnGuardar.UseSelectable = true;
    this.btnGuardar.Click += new EventHandler(this.btnGuardar_Click);
    this.RolTabControl.Anchor = AnchorStyles.Top | AnchorStyles.Bottom | AnchorStyles.Left | AnchorStyles.Right;
    this.RolTabControl.Controls.Add((Control) this.RolTabPage);
    this.RolTabControl.Location = new Point(3, 3);
    this.RolTabControl.Name = "RolTabControl";
    this.RolTabControl.SelectedIndex = 0;
    this.RolTabControl.Size = new Size(716, 497);
    this.RolTabControl.TabIndex = 12;
    this.RolTabControl.UseSelectable = true;
    this.RolTabPage.Controls.Add((Control) this.CodiRolTxt);
    this.RolTabPage.Controls.Add((Control) this.metroLabel2);
    this.RolTabPage.Controls.Add((Control) this.RolNameTxt);
    this.RolTabPage.Controls.Add((Control) this.metroLabel1);
    this.RolTabPage.Controls.Add((Control) this.metroPanel3);
    this.RolTabPage.Controls.Add((Control) this.SistemasCmBx);
    this.RolTabPage.Controls.Add((Control) this.metroLabel4);
    this.RolTabPage.HorizontalScrollbarBarColor = true;
    this.RolTabPage.HorizontalScrollbarHighlightOnWheel = false;
    this.RolTabPage.HorizontalScrollbarSize = 10;
    this.RolTabPage.Location = new Point(4, 35);
    this.RolTabPage.Name = "RolTabPage";
    this.RolTabPage.Size = new Size(708, 458);
    this.RolTabPage.TabIndex = 0;
    this.RolTabPage.Text = "Datos Rol";
    this.RolTabPage.VerticalScrollbarBarColor = true;
    this.RolTabPage.VerticalScrollbarHighlightOnWheel = false;
    this.RolTabPage.VerticalScrollbarSize = 10;
    this.CodiRolTxt.AllowEmpty = false;
    this.CodiRolTxt.AllowSqlCharacters = false;
    this.CodiRolTxt.ExternalValidation = (Func<string>) null;
    this.CodiRolTxt.IntText = 0;
    this.CodiRolTxt.Location = new Point(62, 6);
    this.CodiRolTxt.LongText = 0L;
    this.CodiRolTxt.Margin = new Padding(3, 4, 3, 4);
    this.CodiRolTxt.MaxLength = (int) short.MaxValue;
    this.CodiRolTxt.MaxValue = 0;
    this.CodiRolTxt.MinValue = 0;
    this.CodiRolTxt.Name = "CodiRolTxt";
    this.CodiRolTxt.PasswordChar = char.MinValue;
    this.CodiRolTxt.ScrollBars = ScrollBars.None;
    this.CodiRolTxt.SelectedText = "";
    this.CodiRolTxt.ShortText = (short) 0;
    this.CodiRolTxt.ShowBorder = true;
    this.CodiRolTxt.Size = new Size(75, 23);
    this.CodiRolTxt.TabIndex = 15;
    this.CodiRolTxt.Text = "0";
    this.CodiRolTxt.UseSelectable = true;
    this.metroLabel2.AutoSize = true;
    this.metroLabel2.Location = new Point(3, 9);
    this.metroLabel2.Margin = new Padding(3, 4, 3, 4);
    this.metroLabel2.Name = "metroLabel2";
    this.metroLabel2.Size = new Size(53, 19);
    this.metroLabel2.TabIndex = 14;
    this.metroLabel2.Text = "Código";
    this.RolNameTxt.AllowEmpty = false;
    this.RolNameTxt.AllowSqlCharacters = false;
    this.RolNameTxt.Anchor = AnchorStyles.Top | AnchorStyles.Left | AnchorStyles.Right;
    this.RolNameTxt.Enabled = false;
    this.RolNameTxt.ExternalValidation = (Func<string>) null;
    this.RolNameTxt.Location = new Point(208 /*0xD0*/, 6);
    this.RolNameTxt.Margin = new Padding(3, 4, 3, 4);
    this.RolNameTxt.MaxLength = 50;
    this.RolNameTxt.MinLenght = 0;
    this.RolNameTxt.Name = "RolNameTxt";
    this.RolNameTxt.PasswordChar = char.MinValue;
    this.RolNameTxt.ScrollBars = ScrollBars.None;
    this.RolNameTxt.SelectedText = "";
    this.RolNameTxt.ShowBorder = true;
    this.RolNameTxt.Size = new Size(177, 23);
    this.RolNameTxt.TabIndex = 13;
    this.RolNameTxt.UseSelectable = true;
    this.metroLabel1.AutoSize = true;
    this.metroLabel1.Location = new Point(143, 10);
    this.metroLabel1.Margin = new Padding(3, 4, 3, 4);
    this.metroLabel1.Name = "metroLabel1";
    this.metroLabel1.Size = new Size(59, 19);
    this.metroLabel1.TabIndex = 12;
    this.metroLabel1.Text = "Nombre";
    this.metroPanel3.Anchor = AnchorStyles.Top | AnchorStyles.Bottom | AnchorStyles.Left | AnchorStyles.Right;
    this.metroPanel3.BorderStyle = BorderStyle.FixedSingle;
    this.metroPanel3.Controls.Add((Control) this.splitContainer2);
    this.metroPanel3.HorizontalScrollbarBarColor = true;
    this.metroPanel3.HorizontalScrollbarHighlightOnWheel = false;
    this.metroPanel3.HorizontalScrollbarSize = 10;
    this.metroPanel3.Location = new Point(0, 35);
    this.metroPanel3.Name = "metroPanel3";
    this.metroPanel3.Size = new Size(708, 410);
    this.metroPanel3.TabIndex = 11;
    this.metroPanel3.VerticalScrollbarBarColor = true;
    this.metroPanel3.VerticalScrollbarHighlightOnWheel = false;
    this.metroPanel3.VerticalScrollbarSize = 10;
    this.splitContainer2.Dock = DockStyle.Fill;
    this.splitContainer2.Location = new Point(0, 0);
    this.splitContainer2.Name = "splitContainer2";
    this.splitContainer2.Panel1.BackColor = SystemColors.ControlLightLight;
    this.splitContainer2.Panel1.Controls.Add((Control) this.tvWindows);
    this.splitContainer2.Panel2.BackColor = SystemColors.ControlLightLight;
    this.splitContainer2.Panel2.Controls.Add((Control) this.clbWindowsPerm);
    this.splitContainer2.Size = new Size(706, 408);
    this.splitContainer2.SplitterDistance = 485;
    this.splitContainer2.TabIndex = 2;
    this.tvWindows.BorderStyle = BorderStyle.None;
    this.tvWindows.CheckBoxes = true;
    this.tvWindows.Dock = DockStyle.Fill;
    this.tvWindows.Location = new Point(0, 0);
    this.tvWindows.Name = "tvWindows";
    this.tvWindows.Size = new Size(485, 408);
    this.tvWindows.TabIndex = 0;
    this.tvWindows.AfterCheck += new TreeViewEventHandler(this.tvWindows_AfterCheck);
    this.tvWindows.AfterSelect += new TreeViewEventHandler(this.tvWindows_AfterSelect);
    this.clbWindowsPerm.BorderStyle = BorderStyle.None;
    this.clbWindowsPerm.CheckOnClick = true;
    this.clbWindowsPerm.Dock = DockStyle.Fill;
    this.clbWindowsPerm.FormattingEnabled = true;
    this.clbWindowsPerm.Location = new Point(0, 0);
    this.clbWindowsPerm.Name = "clbWindowsPerm";
    this.clbWindowsPerm.Size = new Size(217, 408);
    this.clbWindowsPerm.TabIndex = 0;
    this.clbWindowsPerm.ItemCheck += new ItemCheckEventHandler(this.clbWindowsPerm_ItemCheck);
    this.SistemasCmBx.Anchor = AnchorStyles.Top | AnchorStyles.Right;
    this.SistemasCmBx.ExternalValidation = (Func<string>) null;
    this.SistemasCmBx.FormattingEnabled = true;
    this.SistemasCmBx.ItemHeight = 17;
    this.SistemasCmBx.Location = new Point(460, 4);
    this.SistemasCmBx.Margin = new Padding(3, 4, 3, 4);
    this.SistemasCmBx.Name = "SistemasCmBx";
    this.SistemasCmBx.Size = new Size(244, 23);
    this.SistemasCmBx.TabIndex = 0;
    this.SistemasCmBx.UseSelectable = true;
    this.SistemasCmBx.SelectedIndexChanged += new EventHandler(this.SistemasCmBx_SelectedIndexChanged);
    this.metroLabel4.Anchor = AnchorStyles.Top | AnchorStyles.Right;
    this.metroLabel4.AutoSize = true;
    this.metroLabel4.Location = new Point(400, 8);
    this.metroLabel4.Margin = new Padding(3, 4, 3, 4);
    this.metroLabel4.Name = "metroLabel4";
    this.metroLabel4.Size = new Size(54, 19);
    this.metroLabel4.TabIndex = 10;
    this.metroLabel4.Text = "Sistema";
    this.ClientSize = new Size(974, 534);
    this.Controls.Add((Control) this.splitContainer1);
    this.Font = new Font("Microsoft Sans Serif", 8.25f, FontStyle.Regular, GraphicsUnit.Point, (byte) 0);
    this.Name = nameof (frmRol);
    this.Text = "Roles";
    this.Load += new EventHandler(this.frmPerfil_Load);
    this.splitContainer1.Panel1.ResumeLayout(false);
    this.splitContainer1.Panel2.ResumeLayout(false);
    this.splitContainer1.EndInit();
    this.splitContainer1.ResumeLayout(false);
    this.metroPanel1.ResumeLayout(false);
    ((ISupportInitialize) this.RolesGrid).EndInit();
    this.metroPanel2.ResumeLayout(false);
    this.RolTabControl.ResumeLayout(false);
    this.RolTabPage.ResumeLayout(false);
    this.RolTabPage.PerformLayout();
    this.metroPanel3.ResumeLayout(false);
    this.splitContainer2.Panel1.ResumeLayout(false);
    this.splitContainer2.Panel2.ResumeLayout(false);
    this.splitContainer2.EndInit();
    this.splitContainer2.ResumeLayout(false);
    this.ResumeLayout(false);
  }

  private void frmPerfil_Load(object sender, EventArgs e)
  {
    this.expert.fillLists(this.sistemasList, this.rolesList);
    this.bsRoles.Clear();
    this.SistemasCmBx.Items.Clear();
    this.tvWindows.Nodes.Clear();
    this.clbWindowsPerm.Items.Clear();
    this.RolFilterTxt.Text = this.RolNameTxt.Text = "";
    this.SistemasCmBx.ValueMember = "CodiSist";
    this.SistemasCmBx.DisplayMember = "DetaSist";
    this.windowSate = frmRol.EstadoVentana.modificar;
    foreach (object roles in this.rolesList)
      this.bsRoles.Add(roles);
    this.ChangeControlModePanel1();
    this.ChangeControlModePanel2();
    if (this.CodiPerfAux != 0)
    {
      Rol rol = this.expert.getRol(this.CodiPerfAux);
      if (rol != null)
      {
        for (int index = 0; index < this.RolesGrid.Rows.Count; ++index)
        {
          if (this.RolesGrid.Rows[index].Cells[0].Value.ToString() == rol.DetaRol)
          {
            this.RolesGrid.Rows[index].Selected = true;
            this.currentRol = rol;
            if (this.currentRol != null)
              this.ShowData();
          }
        }
      }
    }
    this.RolesGrid.Refresh();
  }

  private void PerfilFilterTxt_TextChanged(object sender, EventArgs e)
  {
    this.bsRoles.Clear();
    if (this.RolFilterTxt.Text.Length == 0)
    {
      foreach (object roles in this.rolesList)
        this.bsRoles.Add(roles);
    }
    else
    {
      foreach (Rol roles in this.rolesList)
      {
        if (roles.DetaRol.ToLower().Contains(this.RolFilterTxt.Text.ToLower()))
          this.bsRoles.Add((object) roles);
      }
    }
  }

  private void PerfilesGrid_SelectionChanged(object sender, EventArgs e)
  {
    this.currentRol = (Rol) this.bsRoles.Current;
    if (this.currentRol == null)
      return;
    this.ShowData();
  }

  private void btnNew_Click(object sender, EventArgs e)
  {
    this.windowSate = frmRol.EstadoVentana.nuevo;
    this.currentRol = new Rol();
    this.expert.fillLists(this.sistemasList, this.rolesList);
    this.ShowData();
    this.ChangeControlModePanel1();
    this.ChangeControlModePanel2();
  }

  private void btnEliminar_Click(object sender, EventArgs e)
  {
    this.currentRol.status = EntityStatus.Deleted;
    if (!this.expert.saveOnDB(this.currentRol))
      return;
    this.frmPerfil_Load(sender, e);
  }

  private void ChangeControlModePanel1()
  {
    switch (this.windowSate)
    {
      case frmRol.EstadoVentana.copiar:
        this.metroPanel1.Enabled = false;
        break;
      case frmRol.EstadoVentana.modificar:
        this.metroPanel1.Enabled = true;
        break;
      case frmRol.EstadoVentana.nuevo:
        this.metroPanel1.Enabled = false;
        break;
    }
  }

  private void btnCopiar_Click(object sender, EventArgs e)
  {
    Rol rol = new Rol();
    rol.CodiRol = this.currentRol.CodiRol;
    rol.DetaRol = "Copia de " + this.currentRol.DetaRol;
    this.currentRol = rol;
    this.bsRoles.Add((object) rol);
    this.windowSate = frmRol.EstadoVentana.copiar;
    this.ChangeControlModePanel1();
    this.ChangeControlModePanel2();
    this.RolesGrid.Rows[this.RolesGrid.Rows.Count - 1].Selected = true;
    this.CodiRolTxt.IntText = this.expert.getCodiRolNew();
    this.RolNameTxt.Text = rol.DetaRol;
  }

  private void ShowData()
  {
    this.RolNameTxt.Text = this.currentRol.DetaRol;
    this.CodiRolTxt.IntText = this.windowSate == frmRol.EstadoVentana.nuevo ? this.expert.getCodiRolNew() : this.currentRol.CodiRol;
    this.AgregarSistemas();
    this.currentRol.permisos_rol.Clear();
    if (this.windowSate != frmRol.EstadoVentana.nuevo)
      this.currentRol.permisos_rol = this.expert.getPermisosRol(this.currentRol.CodiRol);
    this.currentRol.accesos_rol.Clear();
    if (this.windowSate != frmRol.EstadoVentana.nuevo)
      this.currentRol.accesos_rol = this.expert.getAccesosRol(this.currentRol.CodiRol);
    this.CargarPermisos();
    this.AgregarMenus();
  }

  private void CargarPermisos()
  {
    foreach (Sistema sistemas in this.sistemasList)
    {
      foreach (Ventana ventana in sistemas.ventanas)
      {
        ventana.PermAcce = false;
        foreach (PermisoVentana permisoVentana in ventana.permisosVentana)
          permisoVentana.PermPerm = false;
      }
    }
    foreach (Ventana ventana1 in this.currentRol.accesos_rol)
    {
      foreach (Sistema sistemas in this.sistemasList)
      {
        foreach (Ventana ventana2 in sistemas.ventanas)
        {
          if (ventana2.WnamMenu == ventana1.WnamMenu)
            ventana2.PermAcce = ventana1.PermAcce;
        }
      }
    }
    foreach (PermisoVentana permisoVentana1 in this.currentRol.permisos_rol)
    {
      foreach (Sistema sistemas in this.sistemasList)
      {
        foreach (Ventana ventana in sistemas.ventanas)
        {
          foreach (PermisoVentana permisoVentana2 in ventana.permisosVentana)
          {
            if (permisoVentana2.CodiPerm == permisoVentana1.CodiPerm)
              permisoVentana2.PermPerm = permisoVentana1.PermPerm;
          }
        }
      }
    }
  }

  private void SistemasCmBx_SelectedIndexChanged(object sender, EventArgs e) => this.AgregarMenus();

  private void AgregarSistemas()
  {
    this.SistemasCmBx.Items.Clear();
    foreach (object sistemas in this.sistemasList)
      this.SistemasCmBx.Items.Add(sistemas);
    this.SistemasCmBx.SelectedIndex = 0;
  }

  private void AgregarMenus()
  {
    Sistema selectedItem = (Sistema) this.SistemasCmBx.SelectedItem;
    this.tvWindows.Nodes.Clear();
    this.clbWindowsPerm.Items.Clear();
    if (selectedItem == null)
      return;
    foreach (Ventana ventana in selectedItem.ventanas)
    {
      if (ventana.CmsuMenu == 0)
      {
        TreeNode treeNode = new TreeNode();
        treeNode.Text = ventana.DetaMenu;
        treeNode.Checked = ventana.PermAcce;
        treeNode.Tag = (object) ventana;
        this.AgregarSubMenus(selectedItem.ventanas, treeNode);
        this.tvWindows.Nodes.Add(treeNode);
      }
    }
    this.tvWindows.ExpandAll();
  }

  private void AgregarSubMenus(List<Ventana> ventanas, TreeNode tn)
  {
    foreach (Ventana ventana in ventanas)
    {
      if (ventana.CmsuMenu == ((Ventana) tn.Tag).CodiMenu)
      {
        TreeNode treeNode = new TreeNode();
        treeNode.Text = ventana.DetaMenu;
        treeNode.Checked = ventana.PermAcce;
        treeNode.Tag = (object) ventana;
        this.AgregarSubMenus(ventanas, treeNode);
        tn.Nodes.Add(treeNode);
      }
    }
  }

  private void ActualizarVentanasChecked(TreeNode tn, List<Ventana> accesos_rol)
  {
    foreach (TreeNode node in tn.Nodes)
    {
      for (int index = 0; index < accesos_rol.Count; ++index)
      {
        if (((Ventana) node.Tag).WnamMenu == accesos_rol[index].WnamMenu && accesos_rol[index].PermAcce)
        {
          node.Checked = true;
          break;
        }
        node.Checked = false;
      }
      this.ActualizarVentanasChecked(node, accesos_rol);
    }
  }

  private void tvWindows_AfterSelect(object sender, TreeViewEventArgs e)
  {
    this.AgregarPermisos(e.Node);
  }

  private void AgregarPermisos(TreeNode Node)
  {
    Ventana tag = (Ventana) Node.Tag;
    this.clbWindowsPerm.Items.Clear();
    if (tag != null)
    {
      for (int index = 0; index < tag.permisosVentana.Count; ++index)
      {
        this.clbWindowsPerm.Items.Add((object) tag.permisosVentana[index]);
        this.clbWindowsPerm.SetItemChecked(index, tag.permisosVentana[index].PermPerm);
      }
    }
    else
    {
      if (tag == null)
        return;
      for (int index = 0; index < tag.permisosVentana.Count; ++index)
      {
        this.clbWindowsPerm.Items.Add((object) tag.permisosVentana[index]);
        this.clbWindowsPerm.SetItemChecked(index, false);
      }
    }
  }

  private void ChangeControlModePanel2()
  {
    this.CodiRolTxt.Enabled = false;
    switch (this.windowSate)
    {
      case frmRol.EstadoVentana.copiar:
        this.btnCancelar.Enabled = true;
        this.RolNameTxt.Enabled = true;
        this.btnCancelar.Enabled = true;
        break;
      case frmRol.EstadoVentana.modificar:
        this.btnRestaurar.Enabled = true;
        this.RolNameTxt.Enabled = true;
        this.btnCancelar.Enabled = false;
        break;
      case frmRol.EstadoVentana.nuevo:
        this.btnRestaurar.Enabled = false;
        this.RolNameTxt.Enabled = true;
        this.btnCancelar.Enabled = true;
        break;
    }
  }

  private bool existeVentana(string WnamMenu, List<Ventana> ventanas)
  {
    foreach (Ventana ventana in ventanas)
    {
      if (ventana.WnamMenu == WnamMenu)
        return true;
    }
    return false;
  }

  private bool existePermiso(string CodiPerm, List<PermisoVentana> permisos)
  {
    foreach (PermisoVentana permiso in permisos)
    {
      if (permiso.CodiPerm == CodiPerm)
        return true;
    }
    return false;
  }

  private void tvWindows_AfterCheck(object sender, TreeViewEventArgs e)
  {
    ((Ventana) e.Node.Tag).PermAcce = e.Node.Checked;
    foreach (Sistema sistemas in this.sistemasList)
    {
      foreach (Ventana ventana in sistemas.ventanas)
      {
        if (((Ventana) e.Node.Tag).WnamMenu.Length > 0 && ventana.WnamMenu == ((Ventana) e.Node.Tag).WnamMenu)
          ventana.PermAcce = e.Node.Checked;
        if (((Ventana) e.Node.Tag).CmsuMenu == 0 && ventana.CmsuMenu == ((Ventana) e.Node.Tag).CodiMenu)
          ventana.PermAcce = e.Node.Checked;
      }
    }
    foreach (TreeNode node in e.Node.Nodes)
      node.Checked = ((Ventana) node.Tag).PermAcce;
  }

  private void clbWindowsPerm_ItemCheck(object sender, ItemCheckEventArgs e)
  {
    ((PermisoVentana) this.clbWindowsPerm.Items[e.Index]).PermPerm = e.NewValue == CheckState.Checked;
  }

  private void btnGuardar_Click(object sender, EventArgs e)
  {
    if (!this.ValidarPerfil())
      return;
    this.CodiPerfAux = this.currentRol.CodiRol;
    switch (this.windowSate)
    {
      case frmRol.EstadoVentana.copiar:
        this.currentRol.DetaRol = this.RolNameTxt.Text;
        this.currentRol.accesos_rol.Clear();
        this.currentRol.permisos_rol.Clear();
        this.cargarAccesosyPermisosPerfil();
        this.currentRol.status = EntityStatus.New;
        if (this.expert.saveOnDB(this.currentRol))
        {
          new frmMensaje((Form) this).mostrarConfirmación("Guardado Correctamente");
          this.frmPerfil_Load(sender, e);
          break;
        }
        new frmMensaje((Form) this).mostrarConfirmación("Error al guardar");
        break;
      case frmRol.EstadoVentana.modificar:
        this.currentRol.accesos_rol.Clear();
        this.currentRol.permisos_rol.Clear();
        this.cargarAccesosyPermisosPerfil();
        this.currentRol.status = EntityStatus.Modified;
        this.currentRol.DetaRol = this.RolNameTxt.Text;
        if (this.expert.saveOnDB(this.currentRol))
        {
          new frmMensaje((Form) this).mostrarConfirmación("Guardado Correctamente");
          this.frmPerfil_Load(sender, e);
          break;
        }
        new frmMensaje((Form) this).mostrarConfirmación("Error al guardar");
        break;
      case frmRol.EstadoVentana.nuevo:
        this.currentRol.DetaRol = this.RolNameTxt.Text;
        this.currentRol.accesos_rol.Clear();
        this.currentRol.permisos_rol.Clear();
        this.cargarAccesosyPermisosPerfil();
        this.currentRol.status = EntityStatus.New;
        if (this.expert.saveOnDB(this.currentRol))
        {
          new frmMensaje((Form) this).mostrarConfirmación("Guardado Correctamente");
          this.frmPerfil_Load(sender, e);
          break;
        }
        new frmMensaje((Form) this).mostrarConfirmación("Error al guardar");
        break;
    }
  }

  private void cargarAccesosyPermisosPerfil()
  {
    foreach (Sistema sistemas in this.sistemasList)
    {
      foreach (Ventana ventana in sistemas.ventanas)
      {
        if (ventana.PermAcce && !this.existeVentana(ventana.WnamMenu, this.currentRol.accesos_rol) && ventana.CmsuMenu != 0)
          this.currentRol.accesos_rol.Add(ventana);
        foreach (PermisoVentana permisoVentana in ventana.permisosVentana)
        {
          if (permisoVentana.PermPerm && !this.existePermiso(permisoVentana.CodiPerm, this.currentRol.permisos_rol))
            this.currentRol.permisos_rol.Add(permisoVentana);
        }
      }
    }
  }

  private void btnRestaurar_Click(object sender, EventArgs e)
  {
    this.currentRol = this.expert.getRol(this.currentRol.CodiRol);
    this.ShowData();
  }

  private void btnCancelar_Click(object sender, EventArgs e) => this.frmPerfil_Load(sender, e);

  private bool ValidarPerfil()
  {
    StringBuilder stringBuilder = new StringBuilder();
    bool flag = true;
    if (this.RolNameTxt.Text.Length == 0)
      stringBuilder.AppendLine("Ingresar Nombre del perfil.");
    if (stringBuilder.Length > 0)
    {
      flag = false;
      int num = (int) MessageBox.Show(stringBuilder.ToString());
    }
    return flag;
  }

  private void btnCombinarRoles_Click(object sender, EventArgs e)
  {
    int num = (int) new frmCombinarRol().ShowDialog();
    this.frmPerfil_Load(sender, e);
  }

  private void UsuariosBtn_Click(object sender, EventArgs e)
  {
  }

  private enum EstadoVentana
  {
    copiar,
    modificar,
    nuevo,
  }
}
