// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Entidades.MailBole
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using System;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Entidades;

public class MailBole
{
  public short CodiOfic { get; set; }

  public string CuenCtct { get; set; }

  public int CodiInmu { get; set; }

  public string Email { get; set; }

  public DateTime FechEnvi { get; set; }

  public string Adjunto { get; set; }

  public string Estado { get; set; }

  public int CodiAdwe { get; set; }
}
