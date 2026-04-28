// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Ventanas.EmisionBoleto.Herencia.EmisionBoletoBase
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Plugins.Recaudacion.Entidades.CuentaCorriente;
using System;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Ventanas.EmisionBoleto.Herencia;

public abstract class EmisionBoletoBase : UserControl, IEmisionBoleto
{
  public bool TerminoCarga { get; set; }

  protected void EjecutarEnUI(Action accion)
  {
    if (this.InvokeRequired)
      this.Invoke((Delegate) accion);
    else
      accion();
  }

  public abstract void Buscar(CtaCte cuenta);

  public abstract void Limpiar();
}
