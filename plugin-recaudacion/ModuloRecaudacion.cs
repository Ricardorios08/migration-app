// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.ModuloRecaudacion
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Core;
using System.Collections.Generic;
using System.Drawing;

#nullable disable
namespace InfoGov.Plugins.Recaudacion;

public class ModuloRecaudacion : Plugin
{
  public ModuloRecaudacion() => Modulo.setModulo(this);

  public override int id => 28;

  public override Image icon => (Image) null;

  public override string database => "recaudacion";

  public override WindowsFactory getWindowsFactory() => (WindowsFactory) new FabricaVentanas();

  public override ExpertsFactory getExpertsFactory() => (ExpertsFactory) new FabricaExpertos();

  public override List<Proceso> getProcesos() => new List<Proceso>();
}
