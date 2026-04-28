// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Entidades.Configuraciones
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using System.Collections.Generic;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Entidades;

internal class Configuraciones
{
  public List<string> Impresoras { get; set; } = new List<string>();

  public string ImprGenerica { get; set; } = "Microsoft Print to PDF";

  public string ImprSistema { get; set; } = string.Empty;

  public string ImprBole { get; set; } = string.Empty;

  public string ImprRepo { get; set; } = string.Empty;
}
