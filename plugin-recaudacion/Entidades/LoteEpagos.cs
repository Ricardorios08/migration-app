// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Entidades.LoteEpagos
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Plugins.Recaudacion.ar.com.epagos.api;
using System.Xml.Serialization;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Entidades;

internal class LoteEpagos : TipoLote
{
  [XmlIgnore]
  internal int CodiInmu = 0;
  [XmlIgnore]
  internal int id_transaccion = 0;
  [XmlIgnore]
  internal string Periodo = "";
}
