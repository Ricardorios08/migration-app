// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Reportes.DTOPersonas
// Assembly: plugin-infogov, Version=1.0.0.18780, Culture=neutral, PublicKeyToken=null
// MVID: 33F9E52C-1C9C-4132-80FE-D29F95E246A9
// Assembly location: C:\nomade\para copiar\plugin-infogov.dll

using System;

#nullable disable
namespace InfoGov.Plugins.Infogov.Reportes;

public class DTOPersonas
{
  public long Cuit { get; set; }

  public int Dni { get; set; }

  public DateTime FechNaci { get; set; }

  public string FechNaciStr
  {
    get => this.FechNaci == DateTime.MinValue ? "" : this.FechNaci.ToString("dd/MM/yyyy");
  }

  public string Nombre { get; set; }

  public string Calle { get; set; }

  public string Nro { get; set; }

  public string Barrio { get; set; }

  public string Mza { get; set; }

  public string Casa { get; set; }

  public string Localidad { get; set; }

  public string Celular { get; set; }

  public string Email { get; set; }
}
