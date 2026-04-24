// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Reportes.PlanillaDistribucion.DTOPlanillaDistribucionBoletos
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Reportes.PlanillaDistribucion;

public class DTOPlanillaDistribucionBoletos
{
  public int CodiInmu { get; set; }

  public string Titular { get; set; }

  public int OrdeLita { get; set; }

  public string DomicilioPostal { get; set; }

  public string Distrito { get; set; }

  public int Periodo { get; set; }

  public string Bimestre { get; set; }
}
