// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Entidades.DTOAcrePagoMP
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using System;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Entidades;

public class DTOAcrePagoMP
{
  public DateTime FeenAcpa { get; set; }

  public short NumeAcpa { get; set; }

  public short CodiEnre { get; set; }

  public string DetaEnre { get; set; }

  public Decimal MoinAcpa { get; set; }

  public string UsuaAcpa { get; set; } = string.Empty;

  public Decimal ImcaCierre { get; set; }

  public Decimal ImcoCierre { get; set; }

  public Decimal DifeCierre { get; set; }

  public bool VeriAcpa { get; set; }
}
