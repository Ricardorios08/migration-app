// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Reportes.EmisionBoleto.DTOImpresionPlanPago
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Plugins.Recaudacion.Ventanas.PlanPago.Herencia;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Reportes.EmisionBoleto;

public class DTOImpresionPlanPago : IBoleto
{
  public TipoEB Tipo { get; set; }

  public IPlanPago Plan { get; set; }

  public short Desde { get; set; }

  public short Hasta { get; set; }
}
