// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.ar.com.epagos.api.DatosContribuyenteObtenerPago
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
public class DatosContribuyenteObtenerPago
{
  private string nombreField;
  private string apellidoField;
  private string emailField;
  private IdentificacionPagador identificacionField;
  private string[] dominiosField;
  private DatosTurno[] turnoField;

  public string Nombre
  {
    get => this.nombreField;
    set => this.nombreField = value;
  }

  public string Apellido
  {
    get => this.apellidoField;
    set => this.apellidoField = value;
  }

  public string Email
  {
    get => this.emailField;
    set => this.emailField = value;
  }

  public IdentificacionPagador Identificacion
  {
    get => this.identificacionField;
    set => this.identificacionField = value;
  }

  public string[] Dominios
  {
    get => this.dominiosField;
    set => this.dominiosField = value;
  }

  public DatosTurno[] Turno
  {
    get => this.turnoField;
    set => this.turnoField = value;
  }
}
