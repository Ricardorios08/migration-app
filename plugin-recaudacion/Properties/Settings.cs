// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Properties.Settings
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using System.CodeDom.Compiler;
using System.Configuration;
using System.Diagnostics;
using System.Runtime.CompilerServices;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Properties;

[CompilerGenerated]
[GeneratedCode("Microsoft.VisualStudio.Editors.SettingsDesigner.SettingsSingleFileGenerator", "17.0.3.0")]
internal sealed class Settings : ApplicationSettingsBase
{
  private static Settings defaultInstance = (Settings) SettingsBase.Synchronized((SettingsBase) new Settings());

  public static Settings Default
  {
    get
    {
      Settings defaultInstance = Settings.defaultInstance;
      return defaultInstance;
    }
  }

  [ApplicationScopedSetting]
  [DebuggerNonUserCode]
  [SpecialSetting(SpecialSetting.WebServiceUrl)]
  [DefaultSettingValue("http://api.epagos.com.ar/wsdl/2.0/index.php")]
  public string plugin_recaudacion_ar_com_epagos_api_EPagos
  {
    get => (string) this[nameof (plugin_recaudacion_ar_com_epagos_api_EPagos)];
  }
}
