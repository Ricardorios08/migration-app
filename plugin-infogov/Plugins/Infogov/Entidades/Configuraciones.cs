// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Entidades.Configuraciones
// Assembly: plugin-infogov, Version=1.0.0.18780, Culture=neutral, PublicKeyToken=null
// MVID: 33F9E52C-1C9C-4132-80FE-D29F95E246A9
// Assembly location: C:\nomade\para copiar\plugin-infogov.dll

using System.Collections.Generic;

#nullable disable
namespace InfoGov.Plugins.Infogov.Entidades;

public class Configuraciones
{
  public List<string> Impresoras { get; set; } = new List<string>();

  public string ImprGenerica { get; set; } = "Microsoft Print to PDF";

  public string ImprSistema { get; set; } = string.Empty;

  public string ImprBole { get; set; } = string.Empty;

  public string ImprRepo { get; set; } = string.Empty;
}
