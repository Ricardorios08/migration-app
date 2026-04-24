// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.ar.com.epagos.api.DatosCredenciales
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
public class DatosCredenciales
{
  private int id_organismoField;
  private string id_usuarioField;
  private string passwordField;
  private string hashField;

  public int id_organismo
  {
    get => this.id_organismoField;
    set => this.id_organismoField = value;
  }

  public string id_usuario
  {
    get => this.id_usuarioField;
    set => this.id_usuarioField = value;
  }

  public string password
  {
    get => this.passwordField;
    set => this.passwordField = value;
  }

  public string hash
  {
    get => this.hashField;
    set => this.hashField = value;
  }
}
