// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.ar.com.epagos.api.DetallePago
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Xml.Serialization;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.ar.com.epagos.api;

[GeneratedCode("System.Xml", "4.8.4161.0")]
[DebuggerStepThrough]
[DesignerCategory("code")]
[SoapType(Namespace = "https://api.epagos.com.ar/")]
[Serializable]
public class DetallePago
{
  private int id_itemField;
  private string desc_itemField;
  private float monto_itemField;
  private int cantidad_itemField;

  public int id_item
  {
    get => this.id_itemField;
    set => this.id_itemField = value;
  }

  public string desc_item
  {
    get => this.desc_itemField;
    set => this.desc_itemField = value;
  }

  public float monto_item
  {
    get => this.monto_itemField;
    set => this.monto_itemField = value;
  }

  public int cantidad_item
  {
    get => this.cantidad_itemField;
    set => this.cantidad_itemField = value;
  }
}
