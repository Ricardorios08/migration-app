// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Expertos.ExpConfiguracion
// Assembly: plugin-infogov, Version=1.0.0.18780, Culture=neutral, PublicKeyToken=null
// MVID: 33F9E52C-1C9C-4132-80FE-D29F95E246A9
// Assembly location: C:\nomade\para copiar\plugin-infogov.dll

using InfoGov.Core;
using InfoGov.Plugins.Infogov.Entidades;
using InfoGov.SQL;
using System.Drawing.Printing;
using System.Management;
using System.Text;

#nullable disable
namespace InfoGov.Plugins.Infogov.Expertos;

public class ExpConfiguracion : Expert
{
  public Configuraciones config = new Configuraciones();

  public ExpConfiguracion(bool ConConfigUsuario)
    : base(Modulo.Database)
  {
    if (!ConConfigUsuario)
      return;
    this.CargarDatosConfig();
  }

  public void GetPrinters()
  {
    this.config.Impresoras.Clear();
    PrintDocument printDocument = new PrintDocument();
    if (printDocument.PrinterSettings.IsDefaultPrinter)
      this.config.ImprSistema = printDocument.PrinterSettings.PrinterName;
    foreach (object installedPrinter in PrinterSettings.InstalledPrinters)
      this.config.Impresoras.Add(installedPrinter.ToString());
  }

  public void TickeadoraActiva(bool activa)
  {
    this.conn.executeString($"UPDATE municipiov1.parametro SET ParaPara={this.sqlString(activa ? "True" : "False")} WHERE CodiPara='TickeadoraActiva';");
  }

  public void TickeadoraActual(string imp)
  {
    this.conn.executeString($"UPDATE municipiov1.parametro SET ParaPara={this.sqlString(imp)} WHERE CodiPara='Tickeadora';");
  }

  private void CargarDatosConfig()
  {
    InfoGovReader nfoGovReader = this.conn.executeReader($"SELECT * FROM infogov.usuaconfig WHERE CodiUsua = {this.sqlString(this.usuario)};");
    if (nfoGovReader != null && nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
      {
        this.config.ImprBole = nfoGovReader.readString("ImprBole");
        this.config.ImprRepo = nfoGovReader.readString("ImprRepo");
      }
    }
    nfoGovReader?.Close();
    this.GetPrinters();
  }

  public bool GuardarConfigUsuario()
  {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("INSERT INTO infogov.usuaconfig (CodiUsua, ImprBole, ImprRepo)");
    stringBuilder.AppendLine($"VALUES ({this.sqlString(this.usuario)}, {this.sqlString(this.config.ImprBole)}, {this.sqlString(this.config.ImprRepo)})");
    stringBuilder.AppendLine("ON DUPLICATE KEY UPDATE");
    stringBuilder.AppendLine("ImprBole = VALUES(ImprBole), ImprRepo = VALUES(ImprRepo);");
    return this.conn.executeNonQuery(stringBuilder.ToString()) & this.SetWindowsPrinter(this.config.ImprSistema);
  }

  public bool SetWindowsPrinter(string imp) => ImpresoraPredeterminada.SetDefaultPrinter(imp);

  public bool ImpresoraActiva(string impresora)
  {
    bool flag1 = false;
    bool flag2 = false;
    foreach (object installedPrinter in PrinterSettings.InstalledPrinters)
    {
      if (installedPrinter.ToString() == impresora)
      {
        flag1 = true;
        break;
      }
    }
    if (flag1)
    {
      foreach (ManagementObject managementObject in new ManagementObjectSearcher("SELECT * FROM Win32_Printer").Get())
      {
        if (managementObject["Name"].ToString().Equals(impresora))
        {
          flag2 = !(bool) managementObject["WorkOffline"];
          break;
        }
      }
    }
    return flag2;
  }
}
