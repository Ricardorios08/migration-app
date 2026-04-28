// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Entidades.DTOCargaAforo
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using System;
using System.Collections.Generic;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Entidades;

public class DTOCargaAforo
{
  public int CodiCome { get; set; }

  public DateTime FeveAforo { get; set; }

  public int Periodo { get; set; }

  public int Bimestre { get; set; }

  public string ExpeAforo { get; set; } = string.Empty;

  public string DetaAforo { get; set; } = string.Empty;

  public int EmiteAforo { get; set; }

  public List<DTOAforo> aforos { get; set; } = new List<DTOAforo>();
}
