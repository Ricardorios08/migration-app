// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Entidades.ResumenCajaMP
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using System;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Entidades;

public class ResumenCajaMP
{
  public string DetaRecu { get; set; }

  public Decimal ValorPredeterminado { get; set; } = 0M;

  public short CantRecu { get; set; }

  public Decimal ImpoRecu { get; set; }

  public short TipoTipa { get; set; }
}
