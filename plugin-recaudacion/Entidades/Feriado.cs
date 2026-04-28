// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Entidades.Feriado
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Common;
using System;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Entidades;

public class Feriado : Entity
{
  public Feriado() => this.DetaFeri = "";

  public short CodiFeri { get; set; }

  public DateTime FechFeri { get; set; }

  public string DetaFeri { get; set; }

  public override ID id => new ID("CodiFeri", (object) this.CodiFeri);
}
