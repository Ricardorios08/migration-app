// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Contabilidad.Reportes.Subdiarios.PagosPresupuestarios.DTOPagosPresupuestariosDeta
// Assembly: plugin-contabilidad, Version=1.0.0.18781, Culture=neutral, PublicKeyToken=null
// MVID: 8CFFB2D7-E36F-490D-9F70-C8AAE980EAE1
// Assembly location: C:\nomade\para copiar\plugin-contabilidad.dll

using System;

#nullable disable
namespace InfoGov.Plugins.Contabilidad.Reportes.Subdiarios.PagosPresupuestarios;

public class DTOPagosPresupuestariosDeta
{
  public string ExpeImpu { get; set; }

  public int NumeLiqu { get; set; }

  public long CucuPers { get; set; }

  public int CodiBanc { get; set; }

  public int NumeMoba { get; set; }

  public DateTime FechCaja { get; set; }

  public Decimal DebeCaja { get; set; }

  public Decimal HabeCaja { get; set; }
}
