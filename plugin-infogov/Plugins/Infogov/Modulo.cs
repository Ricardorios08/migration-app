// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Modulo
// Assembly: plugin-infogov, Version=1.0.0.18780, Culture=neutral, PublicKeyToken=null
// MVID: 33F9E52C-1C9C-4132-80FE-D29F95E246A9
// Assembly location: C:\nomade\para copiar\plugin-infogov.dll

#nullable disable
namespace InfoGov.Plugins.Infogov;

public static class Modulo
{
  private static ModuloInfogov mod;

  internal static void setModulo(ModuloInfogov modulo) => Modulo.mod = modulo;

  public static int IdPlugin => Modulo.mod.id;

  public static string Database => Modulo.mod.database;
}
