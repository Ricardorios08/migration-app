// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Reportes.Maipu.DTORepCajaDiariaMP
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Plugins.Recaudacion.Entidades;
using System;
using System.Collections.Generic;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Reportes.Maipu;

public class DTORepCajaDiariaMP
{
  public DateTime FeenAcpa { get; set; }

  public short NumeAcpa { get; set; }

  public short CodiEnre { get; set; }

  public string DetaEnre { get; set; }

  public int TocoAcpa { get; set; }

  public Decimal ImpoAcpa { get; set; }

  public Decimal MoinAcpa { get; set; }

  public string Verificada { get; set; } = string.Empty;

  public string Actualizada { get; set; } = string.Empty;

  public string UsuaCrea { get; set; } = string.Empty;

  public DateTime FechaAlta { get; set; }

  public Decimal ImcaCierre { get; set; }

  public Decimal IminCierre { get; set; }

  public Decimal ImcoCierre { get; set; }

  public Decimal DifeCierre { get; set; }

  public string UsuaCierre { get; set; } = string.Empty;

  public DateTime FechaCierre { get; set; }

  public List<ResumenCajaMP> detallesResumen { get; set; } = new List<ResumenCajaMP>();

  public List<ResumenFormaPagoMP> detallesFopas { get; set; } = new List<ResumenFormaPagoMP>();

  public List<ResumenBoletosPagadosMP> detallesBoletos { get; set; } = new List<ResumenBoletosPagadosMP>();

  public List<ResumenTiposPagoMP> detallesTiposPagosUtilizados { get; set; } = new List<ResumenTiposPagoMP>();

  public List<ResumenBoletosAnuladosMP> detallesBoletosAnulados { get; set; } = new List<ResumenBoletosAnuladosMP>();
}
