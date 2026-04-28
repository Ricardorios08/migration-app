// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Entidades.EmisionBoleto.EBMaipu
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Plugins.Recaudacion.Ventanas.EmisionBoleto.Herencia;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Entidades.EmisionBoleto;

public class EBMaipu : IDatosBoleto
{
  public DatosBoletoInmuebleMP DatosInmueble { get; set; } = new DatosBoletoInmuebleMP();

  public DatosBoletoComercioMP DatosComercio { get; set; } = new DatosBoletoComercioMP();

  public DatosBoletoDeudVariMP DatosDeudVari { get; set; } = new DatosBoletoDeudVariMP();

  public DatosBoletoCementerioMP DatosCementerio { get; set; } = new DatosBoletoCementerioMP();

  public DatosBoletoTransitoMP DatosTransito { get; set; } = new DatosBoletoTransitoMP();

  public DatosBoletoPubliMP DatosPublicidad { get; set; } = new DatosBoletoPubliMP();

  public DatosBoletoAnteMP DatosAntena { get; set; } = new DatosBoletoAnteMP();
}
