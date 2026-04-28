// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Ventanas.PlanPago.Herencia.IPlanPago
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Plugins.Recaudacion.Entidades.CuentaCorriente;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Ventanas.PlanPago.Herencia;

public interface IPlanPago
{
  CtaCte Cuenta { get; set; }
}
