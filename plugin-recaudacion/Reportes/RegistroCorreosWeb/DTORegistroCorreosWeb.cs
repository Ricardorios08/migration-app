// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Reportes.RegistroCorreosWeb.DTORegistroCorreosWeb
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using System;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Reportes.RegistroCorreosWeb;

public class DTORegistroCorreosWeb
{
  public short Ofic { get; set; }

  public string Oficina
  {
    get
    {
      string oficina = "";
      switch (this.Ofic)
      {
        case 1:
          oficina = "INMUEBLE";
          break;
        case 2:
          oficina = "COMERCIO";
          break;
        case 4:
          oficina = "CEMENTERIO";
          break;
      }
      return oficina;
    }
  }

  public string Cuenta { get; set; }

  public string Email { get; set; }

  public DateTime Fecha { get; set; }
}
