// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Entidades.MailMasivoTunuyan
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Entidades;

public class MailMasivoTunuyan
{
  public int PeriLiqu { get; set; }

  public short CodiTili { get; set; }

  public short NumeLiqu { get; set; }

  public short BimeLiqu { get; set; }

  public short CodiOfic { get; set; }

  public string CuenCtct { get; set; }

  public string Email { get; set; }

  public string Adjunto { get; set; }

  public string Estado { get; set; }

  public string CodiOficStr
  {
    get
    {
      string codiOficStr = "";
      switch (this.CodiOfic)
      {
        case 1:
          codiOficStr = "Inmueble";
          break;
        case 2:
          codiOficStr = "Comercio";
          break;
        case 4:
          codiOficStr = "Cementerio";
          break;
      }
      return codiOficStr;
    }
  }
}
