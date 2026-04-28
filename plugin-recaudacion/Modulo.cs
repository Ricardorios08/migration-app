// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Modulo
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

#nullable disable
namespace InfoGov.Plugins.Recaudacion;

public static class Modulo
{
  private static ModuloRecaudacion mod;

  internal static void setModulo(ModuloRecaudacion modulo) => Modulo.mod = modulo;

  public static int IdPlugin => Modulo.mod.id;

  public static string Database => Modulo.mod.database;
}
