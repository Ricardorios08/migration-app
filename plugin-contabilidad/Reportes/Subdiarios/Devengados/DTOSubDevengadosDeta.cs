// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Contabilidad.Reportes.Subdiarios.Devengados.DTOSubDevengadosDeta
// Assembly: plugin-contabilidad, Version=1.0.0.18781, Culture=neutral, PublicKeyToken=null
// MVID: 8CFFB2D7-E36F-490D-9F70-C8AAE980EAE1
// Assembly location: C:\nomade\para copiar\plugin-contabilidad.dll

using System;

#nullable disable
namespace InfoGov.Plugins.Contabilidad.Reportes.Subdiarios.Devengados;

public class DTOSubDevengadosDeta
{
  public DateTime FechCaja { get; set; }

  public string ExpeImpu { get; set; }

  public string CodiPart { get; set; }

  public string DetaPart { get; set; }

  public string CodiOrga { get; set; }

  public string DetaOrga { get; set; }

  public Decimal DebeCaja { get; set; }

  public Decimal HabeCaja { get; set; }
}
