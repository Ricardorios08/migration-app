// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Expertos.ImpresoraPredeterminada
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using System.Runtime.InteropServices;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Expertos;

public static class ImpresoraPredeterminada
{
  [DllImport("winspool.drv", CharSet = CharSet.Auto, SetLastError = true)]
  public static extern bool SetDefaultPrinter(string Name);
}
