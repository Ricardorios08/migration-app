// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Reportes.RegistroEnvioCorreos.DTORegistroEnvioCorreos
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using System;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Reportes.RegistroEnvioCorreos;

public class DTORegistroEnvioCorreos
{
  public string Email { get; set; }

  public string Cuentas { get; set; }

  public DateTime FechaEnvio { get; set; }

  public int Periodo { get; set; }

  public short Bimestre { get; set; }

  public short CodLiqu { get; set; }

  public short NroLiqu { get; set; }

  public string Ofic { get; set; }
}
