// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Contabilidad.Reportes.Subdiarios.Devengados.DTOSubDevengados
// Assembly: plugin-contabilidad, Version=1.0.0.18781, Culture=neutral, PublicKeyToken=null
// MVID: 8CFFB2D7-E36F-490D-9F70-C8AAE980EAE1
// Assembly location: C:\nomade\para copiar\plugin-contabilidad.dll

using System;
using System.Collections.Generic;

#nullable disable
namespace InfoGov.Plugins.Contabilidad.Reportes.Subdiarios.Devengados;

public class DTOSubDevengados
{
  public DTOSubDevengados() => this.detalles = new List<DTOSubDevengadosDeta>();

  public string CodiCuco { get; set; }

  public string DetaCuco { get; set; }

  public Decimal totaldebe { get; set; }

  public Decimal totalhaber { get; set; }

  public List<DTOSubDevengadosDeta> detalles { get; set; }
}
