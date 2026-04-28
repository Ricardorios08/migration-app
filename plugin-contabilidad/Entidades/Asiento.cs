// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Contabilidad.Entidades.Asiento
// Assembly: plugin-contabilidad, Version=1.0.0.18781, Culture=neutral, PublicKeyToken=null
// MVID: 8CFFB2D7-E36F-490D-9F70-C8AAE980EAE1
// Assembly location: C:\nomade\para copiar\plugin-contabilidad.dll

using InfoGov.SQL;
using System;

#nullable disable
namespace InfoGov.Plugins.Contabilidad.Entidades;

public class Asiento
{
  public Asiento() => this.DetaAsie = "";

  public int CodiAsie { get; set; }

  public DateTime FechAsie { get; set; }

  public int CodiTias { get; set; }

  public string DetaAsie { get; set; }

  public string NoleAsie { get; set; }

  public string MinuAsie { get; set; }

  public Decimal TotDebeMoas { get; set; }

  public Decimal TotHabeMoas { get; set; }

  public string TotDebeMoasS { get; set; }

  public string TotHabeMoasS { get; set; }

  public string DetaTias { get; set; }

  public string CodiCuco { get; set; }

  public string DetaCuco { get; set; }

  public Decimal DebeMoas { get; set; }

  public Decimal HabeMoas { get; set; }

  public int PeriInfo { get; set; }

  internal void readAuditory(InfoGovReader dr) => throw new NotImplementedException();
}
