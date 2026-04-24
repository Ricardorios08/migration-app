// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.ModuloInfogov
// Assembly: plugin-infogov, Version=1.0.0.18780, Culture=neutral, PublicKeyToken=null
// MVID: 33F9E52C-1C9C-4132-80FE-D29F95E246A9
// Assembly location: C:\nomade\para copiar\plugin-infogov.dll

using InfoGov.Core;
using System.Collections.Generic;
using System.Drawing;

#nullable disable
namespace InfoGov.Plugins.Infogov;

public class ModuloInfogov : Plugin
{
  public ModuloInfogov() => Modulo.setModulo(this);

  public override int id => 0;

  public override Image icon => (Image) null;

  public override string database => "infogov";

  public override WindowsFactory getWindowsFactory() => (WindowsFactory) new FabricaVentanas();

  public override ExpertsFactory getExpertsFactory() => (ExpertsFactory) new FabricaExpertos();

  public override List<Proceso> getProcesos() => new List<Proceso>();
}
