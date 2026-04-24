// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Entidades.CuentaCorriente.CtaCte
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using System;
using System.ComponentModel;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Entidades.CuentaCorriente;

public class CtaCte : INotifyPropertyChanged
{
  private string _detaPers = string.Empty;
  private string _detaDomi = string.Empty;

  public event PropertyChangedEventHandler PropertyChanged;

  public short CodiOfic { get; set; }

  public string CuenCtct { get; set; } = string.Empty;

  public string DetaOfic { get; set; } = string.Empty;

  public long CucuPers { get; set; }

  public string DetaPers
  {
    get => this._detaPers;
    set
    {
      if (!(this._detaPers != value))
        return;
      this._detaPers = value;
      PropertyChangedEventHandler propertyChanged = this.PropertyChanged;
      if (propertyChanged != null)
        propertyChanged((object) this, new PropertyChangedEventArgs(nameof (DetaPers)));
    }
  }

  public string DetaDomi
  {
    get => this._detaDomi;
    set
    {
      if (!(this._detaDomi != value))
        return;
      this._detaDomi = value;
      PropertyChangedEventHandler propertyChanged = this.PropertyChanged;
      if (propertyChanged != null)
        propertyChanged((object) this, new PropertyChangedEventArgs(nameof (DetaDomi)));
    }
  }

  public string DetaDomiPost { get; set; } = string.Empty;

  public DateTime FeveCtct { get; set; }

  public DateTime FeveCtctBole { get; set; }

  public bool SoloDeuda { get; set; }

  public bool Existe { get; set; }

  public bool ConCtasAsociadas { get; set; }

  public TipoResultadoCtaCte TipoResultado { get; set; } = TipoResultadoCtaCte.Ninguno;

  public CtaCte GenerarNuevaInstancia()
  {
    return new CtaCte()
    {
      CodiOfic = this.CodiOfic,
      CuenCtct = this.CuenCtct,
      DetaOfic = this.DetaOfic,
      CucuPers = this.CucuPers,
      DetaPers = this.DetaPers,
      DetaDomi = this.DetaDomi,
      DetaDomiPost = this.DetaDomiPost,
      FeveCtct = this.FeveCtct,
      FeveCtctBole = this.FeveCtctBole,
      SoloDeuda = this.SoloDeuda,
      Existe = this.Existe,
      ConCtasAsociadas = this.ConCtasAsociadas,
      TipoResultado = this.TipoResultado
    };
  }
}
