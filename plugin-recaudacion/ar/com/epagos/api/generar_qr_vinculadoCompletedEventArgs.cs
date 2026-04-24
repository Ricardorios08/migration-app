// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.ar.com.epagos.api.generar_qr_vinculadoCompletedEventArgs
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
public class generar_qr_vinculadoCompletedEventArgs : AsyncCompletedEventArgs
{
  private object[] results;

  internal generar_qr_vinculadoCompletedEventArgs(
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

  public byte[] qr
  {
    get
    {
      this.RaiseExceptionIfNecessary();
      return (byte[]) this.results[2];
    }
  }
}
