// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Entidades.DatoContactoPers
// Assembly: plugin-infogov, Version=1.0.0.18780, Culture=neutral, PublicKeyToken=null
// MVID: 33F9E52C-1C9C-4132-80FE-D29F95E246A9
// Assembly location: C:\nomade\para copiar\plugin-infogov.dll

using InfoGov.Common;
using System;

#nullable disable
namespace InfoGov.Plugins.Infogov.Entidades;

public class DatoContactoPers : Entity
{
  public long CucuPers { get; set; }

  public string DetaPers { get; set; } = string.Empty;

  public string TelePers { get; set; } = string.Empty;

  public string CeluPers { get; set; } = string.Empty;

  public string MailPers { get; set; } = string.Empty;

  public int NudoPers { get; set; }

  public string AltaFehoStr
  {
    get => this.AltaFeho != DateTime.MinValue ? this.AltaFeho.ToString() : string.Empty;
  }

  public string ModiFehoStr
  {
    get => this.ModiFeho != DateTime.MinValue ? this.ModiFeho.ToString() : string.Empty;
  }

  public override ID id => new ID("CucuPers", (object) this.CucuPers);
}
