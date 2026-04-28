// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.ar.com.epagos.api.TipoFormaPagoObtenerPago
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using System;
using System.CodeDom.Compiler;
using System.Xml.Serialization;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.ar.com.epagos.api;

[GeneratedCode("System.Xml", "4.8.4161.0")]
[SoapType(Namespace = "https://api.epagos.com.ar/")]
[Serializable]
public enum TipoFormaPagoObtenerPago
{
  tipo_fp_presencial,
  tipo_fp_credito,
  tipo_fp_debito,
  tipo_fp_prepago,
  tipo_fp_publicacion,
  tipo_fp_billetera,
  tipo_fp_transferencia,
  tipo_fp_otros,
}
