// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Expertos.ExpCambioVariablesInfogov
// Assembly: plugin-infogov, Version=1.0.0.18780, Culture=neutral, PublicKeyToken=null
// MVID: 33F9E52C-1C9C-4132-80FE-D29F95E246A9
// Assembly location: C:\nomade\para copiar\plugin-infogov.dll

using InfoGov.Forms;
using InfoGov.Metro.Forms;
using System;
using System.Collections.Generic;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Infogov.Expertos;

public class ExpCambioVariablesInfogov
{
  private static ExpCambioVariablesInfogov instance;
  private List<BaseForm> ActiveBaseForms = new List<BaseForm>();
  private List<MetroModalForm> ActiveEntityForms = new List<MetroModalForm>();

  private ExpCambioVariablesInfogov()
  {
  }

  public static ExpCambioVariablesInfogov Instance
  {
    get
    {
      if (ExpCambioVariablesInfogov.instance == null)
        ExpCambioVariablesInfogov.instance = new ExpCambioVariablesInfogov();
      return ExpCambioVariablesInfogov.instance;
    }
  }

  public void AddBaseForm(BaseForm b)
  {
    if (b == null)
      return;
    this.ActiveBaseForms.Add(b);
  }

  public void RemoveBaseForm(BaseForm b)
  {
    if (b == null)
      return;
    this.ActiveBaseForms.Remove(b);
  }

  public void AddEntityForm(MetroModalForm m)
  {
    if (m == null)
      return;
    this.ActiveEntityForms.Add(m);
  }

  public void RemoveEntityForm(MetroModalForm m)
  {
    if (m == null)
      return;
    this.ActiveEntityForms.Remove(m);
  }

  public void implementChanges(
    string Field,
    string Value,
    string EntityFormName = "",
    string BaseFormName = "")
  {
    if (this.ActiveBaseForms.Count <= 0 && this.ActiveEntityForms.Count <= 0)
      return;
    string str = "Se cerraran los formularios: " + Environment.NewLine;
    foreach (BaseForm activeBaseForm in this.ActiveBaseForms)
      str = $"{str}-{(BaseFormName.Length > 0 ? BaseFormName : activeBaseForm.Text)}{Environment.NewLine}";
    foreach (MetroModalForm activeEntityForm in this.ActiveEntityForms)
      str = $"{str}-{(EntityFormName.Length > 0 ? EntityFormName : activeEntityForm.Text)}{Environment.NewLine}";
    int num = (int) MessageBox.Show("Se cerrarán todos los formularios abiertos.", $"Cambio de {Field}:{Value}", MessageBoxButtons.OK, MessageBoxIcon.Asterisk);
    if (this.ActiveBaseForms.Count > 0)
    {
      for (int index = this.ActiveBaseForms.Count - 1; index >= 0; --index)
      {
        try
        {
          this.ActiveBaseForms[index].Close();
        }
        catch
        {
        }
      }
      this.ActiveBaseForms.Clear();
    }
    if (this.ActiveEntityForms.Count > 0)
    {
      for (int index = this.ActiveEntityForms.Count - 1; index >= 0; --index)
      {
        try
        {
          this.ActiveEntityForms[index].Close();
        }
        catch
        {
        }
      }
      this.ActiveEntityForms.Clear();
    }
  }
}
