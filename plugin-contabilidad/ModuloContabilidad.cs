// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Contabilidad.ModuloContabilidad
// Assembly: plugin-contabilidad, Version=1.0.0.18781, Culture=neutral, PublicKeyToken=null
// MVID: 8CFFB2D7-E36F-490D-9F70-C8AAE980EAE1
// Assembly location: C:\nomade\para copiar\plugin-contabilidad.dll

using InfoGov.Core;
using System.Collections.Generic;
using System.Drawing;

#nullable disable
namespace InfoGov.Plugins.Contabilidad;

public class ModuloContabilidad : Plugin
{
  public ModuloContabilidad() => Modulo.setModulo(this);

  public override int id => 52;

  public override Image icon => (Image) null;

  public override string database => "contpres";

  public override WindowsFactory getWindowsFactory() => (WindowsFactory) new FabricaVentanas();

  public override ExpertsFactory getExpertsFactory() => (ExpertsFactory) new FabricaExpertos();

  public override List<Proceso> getProcesos() => new List<Proceso>();
}
