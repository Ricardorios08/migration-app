// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Ventanas.DerechosVarios.Herencia.BuscadorBase
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using System;
using System.Collections.Generic;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Ventanas.DerechosVarios.Herencia;

public abstract class BuscadorBase : UserControl, IBuscador
{
  protected void EjecutarEnUI(Action accion)
  {
    if (this.InvokeRequired)
      this.Invoke((Delegate) accion);
    else
      accion();
  }

  public abstract void Limpiar();

  public abstract List<string> ValidarDatos();
}
