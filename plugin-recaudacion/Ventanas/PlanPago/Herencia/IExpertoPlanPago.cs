// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Ventanas.PlanPago.Herencia.IExpertoPlanPago
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Ventanas.PlanPago.Herencia;

public interface IExpertoPlanPago
{
  string GenerarPlanPago(IPlanPago plan);

  string ImprimirPlanPago(IPlanPago plan);

  string ReimprimirPlanPago(long CodiFapa, short CuotDesde = 0, short CuotHasta = 0, string Impresora = "");
}
