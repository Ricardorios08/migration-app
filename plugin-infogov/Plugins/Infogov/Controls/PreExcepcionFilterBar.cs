// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Controls.PreExcepcionFilterBar
// Assembly: plugin-infogov, Version=1.0.0.18780, Culture=neutral, PublicKeyToken=null
// MVID: 33F9E52C-1C9C-4132-80FE-D29F95E246A9
// Assembly location: C:\nomade\para copiar\plugin-infogov.dll

using InfoGov.Common;
using InfoGov.Forms;
using InfoGov.Metro.Controls;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Infogov.Controls;

public class PreExcepcionFilterBar : FilterBar
{
  public string fielCodiServ = "p.CodiServ";
  public string fieldPeriInfo = "p.PeriCtct";
  public string fieldCodiCauc = "p.CuenCtct1";
  public string fieldTitular = "Titular";
  public FilterMode filtermodeCodigoServ = FilterMode.Equal;
  public FilterMode filtermodePeriInfo = FilterMode.Equal;
  public FilterMode filtermodeTitular = FilterMode.Contains;
  public FilterMode filtermodeCodiCauc = FilterMode.Equal;
  private MetroToolStrip tsbar;
  private ToolStripLabel tsLabel1;
  private ToolStripTextBox tstextCodiServ;
  private ToolStripLabel tsLabel2;
  private ToolStripTextBox tstextPeriInfo;
  private ToolStripSeparator tsSeparator1;
  private ToolStripLabel tsLabel3;
  private ToolStripTextBox tstextCodiCauc;
  private ToolStripSeparator tsSeparator2;
  private Label labelFiltrado;
  private Label labelRemoveFilter;
  private ToolStripButton tsbFilter;
  private ToolStripLabel tsLabelTitular;
  private ToolStripTextBox tsTextTitular;

  public PreExcepcionFilterBar()
  {
    this.InitializeComponent();
    this.BackgroundColor = Color.WhiteSmoke;
    this.hideMessage();
    this.addInternalEvents();
    this.tsLabel2.Visible = this.tstextPeriInfo.Visible = false;
  }

  [Category("InfoGov")]
  [DisplayName("Background Color")]
  public Color BackgroundColor
  {
    get => this.BackColor;
    set
    {
      this.BackColor = this.tsbar.BackColor = value;
      this.Refresh();
    }
  }

  private void showMessage(string text)
  {
    this.labelFiltrado.Text = text;
    this.Height = text.Length > 0 ? 58 : 25;
  }

  private void hideMessage()
  {
    this.labelFiltrado.Text = "";
    this.Height = 25;
  }

  public override void setFilterFields(List<FilterField> ffields)
  {
  }

  public string detaCodigoServicio
  {
    get => this.tsLabel1.Text;
    set => this.tsLabel1.Text = value;
  }

  public string detaPeriInfo
  {
    get => this.tsLabel2.Text;
    set => this.tsLabel2.Text = value;
  }

  public string detaCodiCauc
  {
    get => this.tsLabel3.Text;
    set => this.tsLabel3.Text = value;
  }

  public string detaTitular
  {
    get => this.tsLabelTitular.Text;
    set => this.tsLabelTitular.Text = value;
  }

  private void addInternalEvents()
  {
    this.tstextCodiServ.GotFocus += new EventHandler(this.tstexts_GotFocus);
    this.tstextPeriInfo.GotFocus += new EventHandler(this.tstexts_GotFocus);
    this.tstextCodiCauc.GotFocus += new EventHandler(this.tstexts_GotFocus);
    this.tsTextTitular.GotFocus += new EventHandler(this.tstexts_GotFocus);
    this.tstextCodiServ.KeyPress += new KeyPressEventHandler(this.tstexts_KeyPress);
    this.tstextPeriInfo.KeyPress += new KeyPressEventHandler(this.tstexts_KeyPress);
    this.tstextCodiCauc.KeyPress += new KeyPressEventHandler(this.tstexts_KeyPress);
    this.tsTextTitular.KeyPress += new KeyPressEventHandler(this.tstexts_KeyPress);
    this.tsbFilter.Click += new EventHandler(this.tsbFilter_Click);
    this.labelRemoveFilter.Click += new EventHandler(this.labelRemoveFilter_Click);
  }

  private void tstexts_GotFocus(object sender, EventArgs e)
  {
    ((ToolStripTextBox) sender).SelectAll();
  }

  private void tstexts_KeyPress(object sender, KeyPressEventArgs e)
  {
    if (e.KeyChar != '\r' && ((ToolStripItem) sender).Name == "tstextCodiServ")
    {
      try
      {
        ((ToolStripItem) sender).Text = e.KeyChar.ToString().ToUpper();
      }
      catch
      {
      }
      e.Handled = true;
    }
    if (e.KeyChar != '\r')
      return;
    this.tsbFilter.PerformClick();
    e.Handled = true;
  }

  private void tsbFilter_Click(object sender, EventArgs e)
  {
    if (this.tstextCodiServ.Text.Trim().Length + this.tstextPeriInfo.Text.Trim().Length + this.tstextCodiCauc.Text.Trim().Length + this.tsTextTitular.Text.Trim().Length == 0)
      this.clearFilter();
    else
      this.checkAndFilter();
  }

  private void labelRemoveFilter_Click(object sender, EventArgs e) => this.clearFilter();

  public override void FilterData(Filter filter)
  {
    this.CurrentFilter = filter;
    if (this.FilteringFunction == null)
      return;
    if (filter != null && (filter.Items.Count > 0 || filter.Restrictions.Count > 0))
      this.doFilter();
    else
      this.clearFilter();
  }

  private void checkAndFilter()
  {
    string text1 = this.tstextCodiServ.Text.Trim();
    string str1 = this.tstextPeriInfo.Text.Trim();
    string str2 = this.tstextCodiCauc.Text.Trim();
    string text2 = this.tsTextTitular.Text.Trim();
    if (!this.isValidString(text1))
      text1 = "";
    if (!this.isValidString(str1))
      str1 = "";
    if (!this.isValidString(str2))
      str2 = "";
    if (!this.isValidString(text2))
      str2 = "";
    int result1 = -1;
    if (!int.TryParse(str1, out result1))
      result1 = -1;
    int result2 = -1;
    if (!int.TryParse(str2, out result2))
      result2 = -1;
    if (text1 + str1 + str2 + text2 == "")
    {
      this.tstextCodiServ.Text = text1;
      this.tstextPeriInfo.Text = str1;
      this.tstextCodiCauc.Text = str2;
      this.clearFilter();
    }
    else
    {
      this.tstextCodiServ.Text = this.tstextPeriInfo.Text = this.tstextCodiCauc.Text = "";
      if (this.CurrentFilter == null)
        this.CurrentFilter = new Filter();
      else
        this.CurrentFilter.Items.Clear();
      if (text1.Length > 0)
        this.CurrentFilter.Items.Add(new FilterItem(this.fielCodiServ, this.detaCodigoServicio, this.filtermodeCodigoServ, text1));
      if (result1 != -1)
        this.CurrentFilter.Items.Add(new FilterItem(this.fieldPeriInfo, this.detaPeriInfo, this.filtermodePeriInfo, str1));
      if (result2 != -1)
        this.CurrentFilter.Items.Add(new FilterItem(this.fieldCodiCauc, this.detaCodiCauc, this.filtermodeCodiCauc, str2));
      if (text2.Length > 0)
        this.CurrentFilter.Items.Add(new FilterItem(this.fieldTitular, this.detaTitular, this.filtermodeTitular, text2, true));
      this.doFilter();
    }
  }

  private void doFilter()
  {
    if (this.FilteringFunction != null)
    {
      this.FilteringFunction(this.CurrentFilter);
      if (this.CurrentFilter == null)
        this.hideMessage();
      else
        this.showMessage(this.CurrentFilter.filteredByText());
    }
    else
      this.hideMessage();
  }

  private void clearFilter()
  {
    this.tstextCodiServ.Text = this.tstextPeriInfo.Text = this.tstextCodiCauc.Text = this.tsTextTitular.Text = "";
    if (this.CurrentFilter != null)
      this.CurrentFilter.Items.Clear();
    if (this.FilteringFunction != null)
      this.FilteringFunction(this.CurrentFilter);
    if (this.CurrentFilter != null && this.CurrentFilter.Restrictions.Count > 0)
      this.showMessage(this.CurrentFilter.filteredByText());
    else
      this.hideMessage();
  }

  public override void DoFocus() => this.tstextCodiServ.Focus();

  private void InitializeComponent()
  {
    this.tsbar = new MetroToolStrip();
    this.tsLabel1 = new ToolStripLabel();
    this.tstextCodiServ = new ToolStripTextBox();
    this.tsLabel2 = new ToolStripLabel();
    this.tstextPeriInfo = new ToolStripTextBox();
    this.tsSeparator1 = new ToolStripSeparator();
    this.tsLabel3 = new ToolStripLabel();
    this.tstextCodiCauc = new ToolStripTextBox();
    this.tsSeparator2 = new ToolStripSeparator();
    this.tsbFilter = new ToolStripButton();
    this.labelFiltrado = new Label();
    this.labelRemoveFilter = new Label();
    this.tsLabelTitular = new ToolStripLabel();
    this.tsTextTitular = new ToolStripTextBox();
    this.tsbar.SuspendLayout();
    this.SuspendLayout();
    this.tsbar.BackColor = Color.WhiteSmoke;
    this.tsbar.Font = new Font("Segoe UI", 12f, FontStyle.Regular, GraphicsUnit.Pixel);
    this.tsbar.GripStyle = ToolStripGripStyle.Hidden;
    this.tsbar.Items.AddRange(new ToolStripItem[11]
    {
      (ToolStripItem) this.tsLabel1,
      (ToolStripItem) this.tstextCodiServ,
      (ToolStripItem) this.tsLabel2,
      (ToolStripItem) this.tstextPeriInfo,
      (ToolStripItem) this.tsSeparator1,
      (ToolStripItem) this.tsLabel3,
      (ToolStripItem) this.tstextCodiCauc,
      (ToolStripItem) this.tsSeparator2,
      (ToolStripItem) this.tsbFilter,
      (ToolStripItem) this.tsLabelTitular,
      (ToolStripItem) this.tsTextTitular
    });
    this.tsbar.Location = new Point(0, 0);
    this.tsbar.Name = "tsbar";
    this.tsbar.Size = new Size(768 /*0x0300*/, 25);
    this.tsbar.TabIndex = 1;
    this.tsLabel1.Font = new Font("Segoe UI", 12f, FontStyle.Regular, GraphicsUnit.Pixel);
    this.tsLabel1.Name = "tsLabel1";
    this.tsLabel1.Size = new Size(48 /*0x30*/, 22);
    this.tsLabel1.Text = "Servicio";
    this.tstextCodiServ.BorderStyle = BorderStyle.FixedSingle;
    this.tstextCodiServ.Enabled = false;
    this.tstextCodiServ.Font = new Font("Segoe UI", 12f, FontStyle.Regular, GraphicsUnit.Pixel);
    this.tstextCodiServ.Name = "tstextCodiServ";
    this.tstextCodiServ.Size = new Size(50, 25);
    this.tstextCodiServ.Text = "A";
    this.tsLabel2.Font = new Font("Segoe UI", 12f, FontStyle.Regular, GraphicsUnit.Pixel);
    this.tsLabel2.Name = "tsLabel2";
    this.tsLabel2.Size = new Size(48 /*0x30*/, 22);
    this.tsLabel2.Text = "Periodo";
    this.tstextPeriInfo.BorderStyle = BorderStyle.FixedSingle;
    this.tstextPeriInfo.Font = new Font("Segoe UI", 12f, FontStyle.Regular, GraphicsUnit.Pixel);
    this.tstextPeriInfo.Name = "tstextPeriInfo";
    this.tstextPeriInfo.Size = new Size(50, 25);
    this.tsSeparator1.Margin = new Padding(3, 0, 1, 0);
    this.tsSeparator1.Name = "tsSeparator1";
    this.tsSeparator1.Size = new Size(6, 25);
    this.tsLabel3.Font = new Font("Segoe UI", 12f, FontStyle.Regular, GraphicsUnit.Pixel);
    this.tsLabel3.Name = "tsLabel3";
    this.tsLabel3.Size = new Size(40, 22);
    this.tsLabel3.Text = "Cauce";
    this.tstextCodiCauc.BorderStyle = BorderStyle.FixedSingle;
    this.tstextCodiCauc.Font = new Font("Segoe UI", 12f, FontStyle.Regular, GraphicsUnit.Pixel);
    this.tstextCodiCauc.Name = "tstextCodiCauc";
    this.tstextCodiCauc.Size = new Size(50, 25);
    this.tsSeparator2.Alignment = ToolStripItemAlignment.Right;
    this.tsSeparator2.Margin = new Padding(3, 0, 1, 0);
    this.tsSeparator2.Name = "tsSeparator2";
    this.tsSeparator2.Size = new Size(6, 25);
    this.tsbFilter.Alignment = ToolStripItemAlignment.Right;
    this.tsbFilter.Font = new Font("Segoe UI", 12f, FontStyle.Regular, GraphicsUnit.Pixel);
    this.tsbFilter.ImageTransparentColor = Color.Magenta;
    this.tsbFilter.Name = "tsbFilter";
    this.tsbFilter.Size = new Size(41, 22);
    this.tsbFilter.Text = "Filtrar";
    this.tsbFilter.ToolTipText = "Filtrar datos.";
    this.labelFiltrado.Anchor = AnchorStyles.Top | AnchorStyles.Left | AnchorStyles.Right;
    this.labelFiltrado.BackColor = Color.Transparent;
    this.labelFiltrado.Font = new Font("Segoe UI", 12f, FontStyle.Regular, GraphicsUnit.Pixel);
    this.labelFiltrado.ForeColor = Color.DimGray;
    this.labelFiltrado.Location = new Point(0, 25);
    this.labelFiltrado.Margin = new Padding(0);
    this.labelFiltrado.Name = "labelFiltrado";
    this.labelFiltrado.Size = new Size(788, 17);
    this.labelFiltrado.TabIndex = 2;
    this.labelFiltrado.Text = "filtered by";
    this.labelFiltrado.TextAlign = ContentAlignment.MiddleLeft;
    this.labelRemoveFilter.Anchor = AnchorStyles.Top | AnchorStyles.Right;
    this.labelRemoveFilter.BackColor = Color.Transparent;
    this.labelRemoveFilter.Font = new Font("Segoe UI", 12f, FontStyle.Bold, GraphicsUnit.Pixel);
    this.labelRemoveFilter.ForeColor = Color.DimGray;
    this.labelRemoveFilter.Location = new Point(755, 27);
    this.labelRemoveFilter.Margin = new Padding(0);
    this.labelRemoveFilter.Name = "labelRemoveFilter";
    this.labelRemoveFilter.Size = new Size(13, 13);
    this.labelRemoveFilter.TabIndex = 3;
    this.labelRemoveFilter.Text = "X";
    this.labelRemoveFilter.TextAlign = ContentAlignment.MiddleCenter;
    this.tsLabelTitular.Font = new Font("Segoe UI", 12f, FontStyle.Regular, GraphicsUnit.Pixel);
    this.tsLabelTitular.Name = "tsLabelTitular";
    this.tsLabelTitular.Size = new Size(41, 22);
    this.tsLabelTitular.Text = "Titular";
    this.tsTextTitular.BorderStyle = BorderStyle.FixedSingle;
    this.tsTextTitular.Font = new Font("Segoe UI", 12f, FontStyle.Regular, GraphicsUnit.Pixel);
    this.tsTextTitular.Name = "tsTextTitular";
    this.tsTextTitular.Size = new Size(200, 25);
    this.Controls.Add((Control) this.labelRemoveFilter);
    this.Controls.Add((Control) this.labelFiltrado);
    this.Controls.Add((Control) this.tsbar);
    this.Name = nameof (PreExcepcionFilterBar);
    this.Size = new Size(768 /*0x0300*/, 511 /*0x01FF*/);
    this.tsbar.ResumeLayout(false);
    this.tsbar.PerformLayout();
    this.ResumeLayout(false);
    this.PerformLayout();
  }
}
