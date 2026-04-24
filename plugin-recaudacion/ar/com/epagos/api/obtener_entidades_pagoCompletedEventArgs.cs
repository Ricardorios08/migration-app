// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.ar.com.epagos.api.obtener_entidades_pagoCompletedEventArgs
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.ar.com.epagos.api;

[GeneratedCode("System.Web.Services", "4.8.4161.0")]
[DebuggerStepThrough]
[DesignerCategory("code")]
public class obtener_entidades_pagoCompletedEventArgs : AsyncCompletedEventArgs
{
  private object[] results;

  internal obtener_entidades_pagoCompletedEventArgs(
    object[] results,
    Exception exception,
    bool cancelled,
    object userState)
    : base(exception, cancelled, userState)
  {
    this.results = results;
  }

  public int Result
  {
    get
    {
      this.RaiseExceptionIfNecessary();
      return (int) this.results[0];
    }
  }

  public string respuesta
  {
    get
    {
      this.RaiseExceptionIfNecessary();
      return (string) this.results[1];
    }
  }

  public string token
  {
    get
    {
      this.RaiseExceptionIfNecessary();
      return (string) this.results[2];
    }
  }

  public int id_organismo
  {
    get
    {
      this.RaiseExceptionIfNecessary();
      return (int) this.results[3];
    }
  }

  public DatosFormaPagoEntidades[] fp1
  {
    get
    {
      this.RaiseExceptionIfNecessary();
      return (DatosFormaPagoEntidades[]) this.results[4];
    }
  }
}
