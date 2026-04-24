// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Reportes.GeneracionArchivoBanelcoLink.DTOGeneracionArchivoBanelcoLink
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using System;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Reportes.GeneracionArchivoBanelcoLink;

public class DTOGeneracionArchivoBanelcoLink
{
  public int PeriBole { get; set; }

  public int NumeBole { get; set; }

  public string CuenCtct { get; set; }

  public short BimeCtct { get; set; }

  public string CuotaAnual { get; set; }

  public DateTime FeveBole { get; set; }

  public string TipoBole { get; set; }

  public string Oficina { get; set; }

  public string Cod_Concep { get; set; }

  public string Referencia { get; set; }

  public string Factura { get; set; }

  public string Leyenda { get; set; }

  public string LeyendaP { get; set; }

  public string Venc1 { get; set; }

  public string Venc2 { get; set; }

  public string UltimoVenc { get; set; }

  public string Importe { get; set; }

  public Decimal TotaBole { get; set; }

  public string CodBarra { get; set; }
}
