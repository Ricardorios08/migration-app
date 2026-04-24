// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Entidades.CuentaCorriente.InstApreCtaCte
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using System;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Entidades.CuentaCorriente;

public class InstApreCtaCte
{
  public int NumeApre { get; set; }

  public short CodiInju { get; set; }

  public string DetaInju { get; set; } = string.Empty;

  public DateTime FealInap { get; set; }
}
