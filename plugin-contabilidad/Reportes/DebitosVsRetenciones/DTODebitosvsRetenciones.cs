// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Contabilidad.Reportes.DebitosVsRetenciones.DTODebitosvsRetenciones
// Assembly: plugin-contabilidad, Version=1.0.0.18781, Culture=neutral, PublicKeyToken=null
// MVID: 8CFFB2D7-E36F-490D-9F70-C8AAE980EAE1
// Assembly location: C:\nomade\para copiar\plugin-contabilidad.dll

using System;

#nullable disable
namespace InfoGov.Plugins.Contabilidad.Reportes.DebitosVsRetenciones;

public class DTODebitosvsRetenciones
{
  public string Expediente { get; set; }

  public Decimal ImpuDebi { get; set; }

  public string NroDebi { get; set; }

  public Decimal ImpuPres { get; set; }

  public string NroOp { get; set; }

  public Decimal Diferencia { get; set; }
}
