// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Entidades.AforosDeudoresVarios.ServicioAforoDVMGSeleccionado
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using System;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Entidades.AforosDeudoresVarios;

public class ServicioAforoDVMGSeleccionado
{
  public short PeriOrde { get; set; }

  public long CodiSede { get; set; }

  public string DetaSede { get; set; } = string.Empty;

  public short PeriInfo { get; set; }

  public string CodiConc { get; set; } = string.Empty;

  public Decimal CantDede { get; set; }

  public bool VariSede { get; set; }

  public Decimal ImpoSede { get; set; }

  public Decimal SubtDede { get; set; }

  public Decimal DescDede { get; set; }

  public Decimal TotaDede { get; set; }
}
