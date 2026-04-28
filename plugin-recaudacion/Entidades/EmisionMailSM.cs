// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Entidades.EmisionMailSM
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using System;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Entidades;

public class EmisionMailSM
{
  public int PeriLiqu { get; set; }

  public short CodiOfic { get; set; }

  public short CodiTili { get; set; }

  public short NumeLiqu { get; set; }

  public string DetaTili { get; set; }

  public string ActuLiqu { get; set; }

  public string LeyeTili { get; set; }

  public DateTime FealLiqu { get; set; }

  public int MaxOrde { get; set; }
}
