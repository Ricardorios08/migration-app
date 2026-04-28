// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Expertos.ImpresoraPredeterminada
// Assembly: plugin-infogov, Version=1.0.0.18780, Culture=neutral, PublicKeyToken=null
// MVID: 33F9E52C-1C9C-4132-80FE-D29F95E246A9
// Assembly location: C:\nomade\para copiar\plugin-infogov.dll

using System.Runtime.InteropServices;

#nullable disable
namespace InfoGov.Plugins.Infogov.Expertos;

public static class ImpresoraPredeterminada
{
  [DllImport("winspool.drv", CharSet = CharSet.Auto, SetLastError = true)]
  public static extern bool SetDefaultPrinter(string Name);
}
