// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Expertos.ExpImpresionTicket
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Core;
using InfoGov.Plugins.Recaudacion.Entidades;
using InfoGov.Resources;
using InfoGov.SQL;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Drawing.Printing;
using System.Management;
using System.Text;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Expertos;

public class ExpImpresionTicket : Expert
{
  private BoletoCaja boletoImprimiendo;
  private BoletoCajaMP boletoImprimiendoMP;
  internal string tickeadoraActiva;
  private string tickeadora;
  private int copias = 0;
  private int copiaActual;
  private int vueltas;
  internal DateTime FeenAcpa;
  private bool reimpresion = false;

  public ExpImpresionTicket()
    : base(Modulo.Database)
  {
    this.tickeadoraActiva = PARAMS.Parameters.GetString("TickeadoraActiva");
    this.tickeadora = PARAMS.Parameters.GetString("Tickeadora");
    this.boletoImprimiendo = new BoletoCaja();
    int.TryParse(PARAMS.Parameters.GetString("TicketCopias"), out this.copias);
  }

  public void ImpresionTicket()
  {
    if (!(this.tickeadoraActiva == "True"))
      return;
    bool flag = false;
    foreach (object installedPrinter in PrinterSettings.InstalledPrinters)
    {
      if (installedPrinter.ToString() == this.tickeadora)
      {
        flag = true;
        break;
      }
    }
    if (!flag)
      throw new Exception("La tickeadora no existe, no se ingresa el pago.");
    foreach (ManagementObject managementObject in new ManagementObjectSearcher("SELECT * FROM Win32_Printer").Get())
    {
      if (managementObject["Name"].ToString().Equals(this.tickeadora))
      {
        if ((bool) managementObject["WorkOffline"])
          throw new Exception("La tickeadora se encuentra desconectada, no se ingresa el pago.");
        break;
      }
    }
  }

  public string ImpresionTicketStrResult()
  {
    if (!(this.tickeadoraActiva == "True"))
      return string.Empty;
    bool flag1 = false;
    foreach (object installedPrinter in PrinterSettings.InstalledPrinters)
    {
      if (installedPrinter.ToString() == this.tickeadora)
      {
        flag1 = true;
        break;
      }
    }
    if (!flag1)
      return "La tickeadora no existe, no se ingresa el pago.";
    ManagementObjectSearcher managementObjectSearcher = new ManagementObjectSearcher("SELECT * FROM Win32_Printer");
    bool flag2 = false;
    foreach (ManagementObject managementObject in managementObjectSearcher.Get())
    {
      if (managementObject["Name"].ToString().Equals(this.tickeadora))
      {
        flag2 = true;
        return (bool) managementObject["WorkOffline"] ? "La tickeadora se encuentra desconectada, no se ingresa el pago." : string.Empty;
      }
    }
    return !flag2 ? "La tickeadora no existe, no se ingresa el pago." : string.Empty;
  }

  public void ReimprimirTicket(BoletoCaja boleto)
  {
    this.ImpresionTicket();
    if (!this.IngresarTicket(boleto.PeriBole, boleto.NumeBole))
      throw new Exception("No se pudo reimprimir el ticket.");
    this.FeenAcpa = this.BuscarFechaEnvio(boleto.PeriBole, boleto.NumeBole);
    if (this.FeenAcpa == DateTime.MinValue)
      throw new Exception("Fecha de envío incorrecta del pago incorrecta.");
    this.reimpresion = true;
    this.copias = 1;
    this.ImprimirTicket(boleto);
    this.reimpresion = false;
    int.TryParse(PARAMS.Parameters.GetString("TicketCopias"), out this.copias);
  }

  public void ReimprimirTicket(BoletoCajaMP boleto)
  {
    this.ImpresionTicket();
    if (!this.IngresarTicket(boleto.PeriBole, boleto.NumeBole))
      throw new Exception("No se pudo reimprimir el ticket.");
    this.FeenAcpa = this.BuscarFechaEnvio(boleto.PeriBole, boleto.NumeBole);
    if (this.FeenAcpa == DateTime.MinValue)
      throw new Exception("Fecha de envío incorrecta del pago incorrecta.");
    this.reimpresion = true;
    this.copias = 1;
    this.ImprimirTicketMP(boleto);
    this.reimpresion = false;
    int.TryParse(PARAMS.Parameters.GetString("TicketCopias"), out this.copias);
  }

  private DateTime BuscarFechaEnvio(int PeriBole, int NumeBole)
  {
    return this.conn.executeDateTime($"SELECT FeenAcpa FROM pago WHERE PeriBole = {PeriBole} AND NumeBole = {NumeBole} LIMIT 1;");
  }

  private List<string> ConceptoBoleto(int peribole, int numebole)
  {
    List<string> stringList = new List<string>();
    string str = string.Empty;
    switch (PARAMS.Municipio)
    {
      case "Alvear":
        str = $"SELECT DISTINCT DetaConc FROM detabole db INNER JOIN concepto c ON c.PeriInfo = db.PeriInfo AND c.CodiConc = db.CodiConc WHERE db.PeriBole = {peribole} AND db.NumeBole = {numebole} AND db.CodiConc NOT IN (SELECT DISTINCT c.CodiConc FROM concepto c WHERE c.DetaConc LIKE '%adic%');";
        break;
      case "Guaymallén":
      case "LaPaz":
      case "Lavalle":
      case "Maipú":
      case "Rivadavia":
      case "SanCarlos":
      case "SanMartín":
        str = $"SELECT DISTINCT DetaConc FROM detabole db INNER JOIN concepto c ON c.PeriInfo = db.PeriInfo AND c.CodiConc = db.CodiConc WHERE db.PeriBole = {peribole} AND db.NumeBole = {numebole};";
        break;
    }
    InfoGovReader nfoGovReader = this.conn.executeReader(str.ToString());
    if (nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
        stringList.Add(nfoGovReader.readString("DetaConc"));
    }
    nfoGovReader.Close();
    return stringList;
  }

  private DateTime ObtenerFechaPago(int PeriBole, int NumeBole)
  {
    return this.conn.executeDateTime($"SELECT IFNULL(AltaFeho,'') FROM pago WHERE PeriBole = {PeriBole} AND NumeBole = {NumeBole};");
  }

  private string ObtenerUsuarioPago(int PeriBole, int NumeBole)
  {
    return this.conn.executeString($"SELECT IFNULL(AltaUsua,'') FROM pago WHERE PeriBole = {PeriBole} AND NumeBole = {NumeBole};");
  }

  private string BuscarOficina(int CodiOfic)
  {
    return this.conn.executeString($"SELECT IFNULL(DetaOfic,'') FROM oficina WHERE CodiOfic = {CodiOfic};");
  }

  private string BuscarRecaudador(int PeriBole, int NumeBole)
  {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("SELECT IFNULL(e.DetaEnre,'') FROM infogov.entereca e");
    stringBuilder.AppendLine("INNER JOIN acrepago a ON a.CodiEnre = e.CodiEnre");
    stringBuilder.AppendLine("INNER JOIN pago p ON p.FeenAcpa = a.FeenAcpa AND p.NumeAcpa = a.NumeAcpa");
    stringBuilder.AppendLine($"WHERE p.PeriBole = {PeriBole} AND p.NumeBole = {NumeBole};");
    return this.conn.executeString(stringBuilder.ToString());
  }

  private string DividirString(string texto, int leng)
  {
    ++this.vueltas;
    string empty = string.Empty;
    if (texto.Length <= leng)
      return texto;
    string oldValue = texto.Substring(0, leng);
    return $"{empty}{oldValue}\n{this.DividirString(texto.Replace(oldValue, string.Empty), leng)}";
  }

  public void ImprimirTicket(BoletoCaja boleto)
  {
    if (boleto == null)
      return;
    PrintDocument printDocument = new PrintDocument();
    printDocument.PrinterSettings.PrinterName = this.tickeadora;
    printDocument.DefaultPageSettings.PaperSize = new PaperSize("POS", 520, 30000);
    printDocument.DefaultPageSettings.Margins = new Margins(0, 0, 0, 0);
    this.boletoImprimiendo = boleto;
    for (this.copiaActual = 0; this.copiaActual < this.copias; ++this.copiaActual)
    {
      printDocument.PrintPage += new PrintPageEventHandler(this.CrearTicketBoleto);
      printDocument.Print();
    }
    this.boletoImprimiendo = (BoletoCaja) null;
  }

  public void ImprimirTicketMP(BoletoCajaMP boleto)
  {
    if (boleto == null)
      return;
    PrintDocument printDocument = new PrintDocument();
    printDocument.PrinterSettings.PrinterName = this.tickeadora;
    printDocument.DefaultPageSettings.PaperSize = new PaperSize("POS", 520, 30000);
    printDocument.DefaultPageSettings.Margins = new Margins(0, 0, 0, 0);
    this.boletoImprimiendoMP = boleto;
    for (this.copiaActual = 0; this.copiaActual < this.copias; ++this.copiaActual)
    {
      printDocument.PrintPage += new PrintPageEventHandler(this.CrearTicketBoletoMP);
      printDocument.Print();
    }
    this.boletoImprimiendoMP = (BoletoCajaMP) null;
  }

  private void CrearTicketBoleto(object sender, PrintPageEventArgs e)
  {
    Graphics graphics = e.Graphics;
    Font font1 = new Font("Arial", 10f);
    Font font2 = new Font("Arial", 9f);
    SolidBrush solidBrush = new SolidBrush(Color.Black);
    float height1 = font1.GetHeight();
    int x = 0;
    int y = 0;
    int num1 = 10;
    Image logoMunicipio = ImagesManager.getInstance().getLogoMunicipio(PARAMS.Municipio);
    this.vueltas = 0;
    string s1 = this.DividirString("Contribuyente: " + this.boletoImprimiendo.DetaPers.ToUpper(), 36);
    List<string> stringList = this.ConceptoBoleto(this.boletoImprimiendo.PeriBole, this.boletoImprimiendo.NumeBole);
    string municipio = PARAMS.Municipio;
    // ISSUE: reference to a compiler-generated method
    switch (\u003CPrivateImplementationDetails\u003E.ComputeStringHash(municipio))
    {
      case 216528954:
        if (!(municipio == "SanMartín"))
          return;
        DateTime dateTime = this.ObtenerFechaPago(this.boletoImprimiendo.PeriBole, this.boletoImprimiendo.NumeBole);
        string str1 = this.BuscarOficina(this.boletoImprimiendo.CodiOfic);
        string str2 = this.BuscarRecaudador(this.boletoImprimiendo.PeriBole, this.boletoImprimiendo.NumeBole);
        string str3 = this.ObtenerUsuarioPago(this.boletoImprimiendo.PeriBole, this.boletoImprimiendo.NumeBole);
        string str4 = !string.IsNullOrEmpty(this.boletoImprimiendo.CuenCtct) ? this.boletoImprimiendo.CuenCtct : "------";
        if (logoMunicipio != null)
        {
          int height2 = 75;
          int width = 120;
          graphics.DrawImage(logoMunicipio, x + 90, y, width, height2);
          num1 += height2;
        }
        graphics.DrawString(PARAMS.NombreLargoMunicipio.ToUpper() ?? "", font1, (Brush) solidBrush, (float) x, (float) (y + num1));
        int num2 = num1 + ((int) height1 + 5);
        graphics.DrawString("C.U.I.T.: " + PARAMS.CuitMunicipio, font1, (Brush) solidBrush, (float) x, (float) (y + num2));
        int num3 = num2 + ((int) height1 + 5);
        graphics.DrawString($"FECHA PAGO: {dateTime}", font1, (Brush) solidBrush, (float) x, (float) (y + num3));
        int num4 = num3 + ((int) height1 + 5);
        int num5;
        if (!this.reimpresion)
        {
          string s2 = this.copiaActual == 0 ? "------------ COMPROBANTE ORIGINAL ------------" : "------------ COPIA DE COMPROBANTE ------------";
          graphics.DrawString(s2, font1, (Brush) solidBrush, (float) x, (float) (y + num4));
          num5 = num4 + ((int) height1 + 10);
        }
        else
        {
          graphics.DrawString("---------------- REIMPRESIÓN DE TICKET -----------------", font1, (Brush) solidBrush, (float) x, (float) (y + num4));
          num5 = num4 + ((int) height1 + 10);
        }
        graphics.DrawString(s1, font1, (Brush) solidBrush, (float) x, (float) (y + num5));
        int num6 = num5 + ((int) height1 * this.vueltas + 10) + (this.vueltas > 1 ? 5 : 0);
        graphics.DrawString($"Cuenta: {str4} - Oficina: {str1}", font1, (Brush) solidBrush, (float) x, (float) (y + num6));
        int num7 = num6 + ((int) height1 + 10);
        graphics.DrawString($"Boleto Nº: {this.boletoImprimiendo.PeriBole}-{this.boletoImprimiendo.NumeBole}", font1, (Brush) solidBrush, (float) x, (float) (y + num7));
        int num8 = num7 + ((int) height1 + 10);
        graphics.DrawString("Recaudador: " + str2, font1, (Brush) solidBrush, (float) x, (float) (y + num8));
        int num9 = num8 + ((int) height1 + 10);
        graphics.DrawString("Conceptos Abonados: ", font1, (Brush) solidBrush, (float) x, (float) (y + num9));
        int num10 = num9 + ((int) height1 + 10);
        foreach (string str5 in stringList)
        {
          this.vueltas = 0;
          string s3 = this.DividirString("  -> " + str5.ToUpper(), 36);
          graphics.DrawString(s3, font2, (Brush) solidBrush, (float) x, (float) (y + num10));
          num10 += (int) height1 * this.vueltas + 10;
        }
        int num11 = num10 + (stringList.Count == 1 ? 5 : 0);
        graphics.DrawString($"Impo. del Boleto Pagado: {this.boletoImprimiendo.TotaBole:C2}", font1, (Brush) solidBrush, (float) x, (float) (y + num11));
        int num12 = num11 + ((int) height1 + 10);
        graphics.DrawString("Usuario: " + str3, font1, (Brush) solidBrush, (float) x, (float) (y + num12));
        int num13 = num12 + ((int) height1 + 10);
        graphics.DrawString("Este comprobante es válido si los datos se", font1, (Brush) solidBrush, (float) x, (float) (y + num13));
        int num14 = num13 + (int) height1;
        graphics.DrawString("      corresponden con los del boleto.", font1, (Brush) solidBrush, (float) x, (float) (y + num14));
        int num15 = num14 + ((int) height1 + 30);
        graphics.DrawString("TICKET VÁLIDO COMO COMPROBANTE", font1, (Brush) solidBrush, (float) x, (float) (y + num15));
        int num16 = num15 + (int) height1;
        graphics.DrawString("DE PAGO", font1, (Brush) solidBrush, (float) (x + 105), (float) (y + num16));
        return;
      case 972124126:
        if (!(municipio == "Rivadavia"))
          return;
        break;
      case 1328804145:
        if (!(municipio == "LaPaz"))
          return;
        break;
      case 1396534850:
        if (!(municipio == "Guaymallén"))
          return;
        break;
      case 2132767226:
        if (!(municipio == "Alvear"))
          return;
        break;
      case 2306233178:
        if (!(municipio == "Lavalle"))
          return;
        break;
      case 4106675633:
        if (!(municipio == "SanCarlos"))
          return;
        break;
      default:
        return;
    }
    if (logoMunicipio != null)
    {
      int height3 = 75;
      int width = 120;
      graphics.DrawImage(logoMunicipio, x + 90, y, width, height3);
      num1 += height3;
    }
    graphics.DrawString(PARAMS.NombreLargoMunicipio.ToUpper() ?? "", font1, (Brush) solidBrush, (float) x, (float) (y + num1));
    int num17 = num1 + ((int) height1 + 5);
    graphics.DrawString("C.U.I.T.: " + PARAMS.CuitMunicipio, font1, (Brush) solidBrush, (float) x, (float) (y + num17));
    int num18 = num17 + ((int) height1 + 5);
    graphics.DrawString("FECHA: " + this.FeenAcpa.ToShortDateString(), font1, (Brush) solidBrush, (float) x, (float) (y + num18));
    int num19 = num18 + ((int) height1 + 5);
    int num20;
    if (!this.reimpresion)
    {
      graphics.DrawString("--------------------------------------------------------------", font1, (Brush) solidBrush, (float) x, (float) (y + num19));
      num20 = num19 + ((int) height1 + 10);
    }
    else
    {
      graphics.DrawString("---------------- REIMPRESIÓN DE TICKET -----------------", font1, (Brush) solidBrush, (float) x, (float) (y + num19));
      num20 = num19 + ((int) height1 + 10);
    }
    graphics.DrawString(s1, font1, (Brush) solidBrush, (float) x, (float) (y + num20));
    int num21 = num20 + ((int) height1 * this.vueltas + 10) + (this.vueltas > 1 ? 5 : 0);
    graphics.DrawString($"Boleto Nº: {this.boletoImprimiendo.PeriBole}-{this.boletoImprimiendo.NumeBole}", font1, (Brush) solidBrush, (float) x, (float) (y + num21));
    int num22 = num21 + ((int) height1 + 10);
    graphics.DrawString("Conceptos Abonados: ", font1, (Brush) solidBrush, (float) x, (float) (y + num22));
    int num23 = num22 + ((int) height1 + 10);
    foreach (string str6 in stringList)
    {
      this.vueltas = 0;
      string s4 = this.DividirString("  -> " + str6.ToUpper(), 36);
      graphics.DrawString(s4, font2, (Brush) solidBrush, (float) x, (float) (y + num23));
      num23 += (int) height1 * this.vueltas + 10;
    }
    int num24 = num23 + (stringList.Count == 1 ? 5 : 0);
    graphics.DrawString($"Impo. del Boleto Pagado: {this.boletoImprimiendo.TotaBole:C2}", font1, (Brush) solidBrush, (float) x, (float) (y + num24));
    int num25 = num24 + ((int) height1 + 20);
    graphics.DrawString("Este comprobante es válido si los datos se", font1, (Brush) solidBrush, (float) x, (float) (y + num25));
    int num26 = num25 + (int) height1;
    graphics.DrawString("      corresponden con los del boleto.", font1, (Brush) solidBrush, (float) x, (float) (y + num26));
    int num27 = num26 + ((int) height1 + 30);
    string s5 = this.copiaActual == 0 ? "            COMPROBANTE ORIGINAL" : "         COMPROBANTE DUPLICADO";
    graphics.DrawString(s5, font1, (Brush) solidBrush, (float) x, (float) (y + num27));
    int num28 = num27 + ((int) height1 + 30);
    graphics.DrawString("TICKET VÁLIDO COMO COMPROBANTE", font1, (Brush) solidBrush, (float) x, (float) (y + num28));
    int num29 = num28 + (int) height1;
    graphics.DrawString("DE PAGO", font1, (Brush) solidBrush, (float) (x + 105), (float) (y + num29));
  }

  private void CrearTicketBoletoMP(object sender, PrintPageEventArgs e)
  {
    Graphics graphics = e.Graphics;
    Font font1 = new Font("Arial", 10f);
    Font font2 = new Font("Arial", 9f);
    SolidBrush solidBrush = new SolidBrush(Color.Black);
    float height1 = font1.GetHeight();
    int x = 0;
    int y = 0;
    int num1 = 10;
    Image logoMunicipio = ImagesManager.getInstance().getLogoMunicipio(PARAMS.Municipio);
    this.vueltas = 0;
    string s1 = this.DividirString("Contribuyente: " + this.boletoImprimiendoMP.DetaPers.ToUpper(), 36);
    List<string> stringList = this.ConceptoBoleto(this.boletoImprimiendoMP.PeriBole, this.boletoImprimiendoMP.NumeBole);
    DateTime dateTime = this.ObtenerFechaPago(this.boletoImprimiendoMP.PeriBole, this.boletoImprimiendoMP.NumeBole);
    string str1 = this.BuscarOficina(this.boletoImprimiendoMP.CodiOfic);
    string str2 = this.BuscarRecaudador(this.boletoImprimiendoMP.PeriBole, this.boletoImprimiendoMP.NumeBole);
    string str3 = this.ObtenerUsuarioPago(this.boletoImprimiendoMP.PeriBole, this.boletoImprimiendoMP.NumeBole);
    string str4 = !string.IsNullOrEmpty(this.boletoImprimiendoMP.CuenCtct) ? this.boletoImprimiendoMP.CuenCtct : "------";
    if (logoMunicipio != null)
    {
      int height2 = 75;
      int width = 120;
      graphics.DrawImage(logoMunicipio, x + 90, y, width, height2);
      num1 += height2;
    }
    graphics.DrawString(PARAMS.NombreLargoMunicipio.ToUpper() ?? "", font1, (Brush) solidBrush, (float) x, (float) (y + num1));
    int num2 = num1 + ((int) height1 + 5);
    graphics.DrawString("C.U.I.T.: " + PARAMS.CuitMunicipio, font1, (Brush) solidBrush, (float) x, (float) (y + num2));
    int num3 = num2 + ((int) height1 + 5);
    graphics.DrawString($"FECHA PAGO: {dateTime}", font1, (Brush) solidBrush, (float) x, (float) (y + num3));
    int num4 = num3 + ((int) height1 + 5);
    int num5;
    if (!this.reimpresion)
    {
      string s2 = this.copiaActual == 0 ? "------------ COMPROBANTE ORIGINAL ------------" : "------------ COPIA DE COMPROBANTE ------------";
      graphics.DrawString(s2, font1, (Brush) solidBrush, (float) x, (float) (y + num4));
      num5 = num4 + ((int) height1 + 10);
    }
    else
    {
      graphics.DrawString("---------------- REIMPRESIÓN DE TICKET -----------------", font1, (Brush) solidBrush, (float) x, (float) (y + num4));
      num5 = num4 + ((int) height1 + 10);
    }
    graphics.DrawString(s1, font1, (Brush) solidBrush, (float) x, (float) (y + num5));
    int num6 = num5 + ((int) height1 * this.vueltas + 10) + (this.vueltas > 1 ? 5 : 0);
    graphics.DrawString($"Cuenta: {str4} - Oficina: {str1}", font1, (Brush) solidBrush, (float) x, (float) (y + num6));
    int num7 = num6 + ((int) height1 + 10);
    graphics.DrawString($"Boleto Nº: {this.boletoImprimiendoMP.PeriBole}-{this.boletoImprimiendoMP.NumeBole}", font1, (Brush) solidBrush, (float) x, (float) (y + num7));
    int num8 = num7 + ((int) height1 + 10);
    graphics.DrawString("Recaudador: " + str2, font1, (Brush) solidBrush, (float) x, (float) (y + num8));
    int num9 = num8 + ((int) height1 + 10);
    graphics.DrawString("Conceptos Abonados: ", font1, (Brush) solidBrush, (float) x, (float) (y + num9));
    int num10 = num9 + ((int) height1 + 10);
    foreach (string str5 in stringList)
    {
      this.vueltas = 0;
      string s3 = this.DividirString("  -> " + str5.ToUpper(), 36);
      graphics.DrawString(s3, font2, (Brush) solidBrush, (float) x, (float) (y + num10));
      num10 += (int) height1 * this.vueltas + 10;
    }
    int num11 = num10 + (stringList.Count == 1 ? 5 : 0);
    graphics.DrawString($"Imp. del Boleto Pagado: {this.boletoImprimiendoMP.TotaBole:C2}", font1, (Brush) solidBrush, (float) x, (float) (y + num11));
    int num12 = num11 + ((int) height1 + 10);
    graphics.DrawString("Usuario: " + str3, font1, (Brush) solidBrush, (float) x, (float) (y + num12));
    int num13 = num12 + ((int) height1 + 10);
    graphics.DrawString("Este comprobante es válido si los datos se", font1, (Brush) solidBrush, (float) x, (float) (y + num13));
    int num14 = num13 + (int) height1;
    graphics.DrawString("      corresponden con los del boleto.", font1, (Brush) solidBrush, (float) x, (float) (y + num14));
    int num15 = num14 + ((int) height1 + 30);
    graphics.DrawString("TICKET VÁLIDO COMO COMPROBANTE", font1, (Brush) solidBrush, (float) x, (float) (y + num15));
    int num16 = num15 + (int) height1;
    graphics.DrawString("DE PAGO", font1, (Brush) solidBrush, (float) (x + 105), (float) (y + num16));
  }

  public bool IngresarTicket(int PeriBole, int NumeBole)
  {
    return this.conn.executeNonQuery($"INSERT INTO ticket (PeriBole, NumeBole, AltaUsua) VALUES ({PeriBole}, {NumeBole}, {this.sqlString(this.usuario)});");
  }

  public List<Ticket> ListarTicketsReimpresos()
  {
    List<Ticket> ticketList = new List<Ticket>();
    InfoGovReader nfoGovReader = this.conn.executeReader("SELECT * FROM ticket ORDER BY AltaFeho DESC;");
    if (nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
      {
        Ticket ticket = new Ticket();
        ticket.PeriBole = nfoGovReader.readInt("PeriBole");
        ticket.NumeBole = nfoGovReader.readInt("NumeBole");
        ticket.AltaUsua = nfoGovReader.readString("AltaUsua");
        ticket.AltaFeho = nfoGovReader.readDateTime("AltaFeho");
        ticketList.Add(ticket);
      }
    }
    nfoGovReader.Close();
    return ticketList;
  }

  public BoletoCaja ObtenerBoletoImpresion(int PeriBole, int NumeBole)
  {
    BoletoCaja boletoCaja = new BoletoCaja();
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("SELECT b.*, p.DetaPers FROM boleto b");
    stringBuilder.AppendLine("LEFT JOIN infogov.persona p ON b.CucuPers = p.CucuPers");
    stringBuilder.AppendLine("INNER JOIN pago pa ON pa.PeriBole = b.PeriBole AND pa.NumeBole = b.NumeBole");
    stringBuilder.AppendLine($"WHERE b.PeriBole = {PeriBole} AND b.NumeBole = {NumeBole} AND b.EstaBole IN ('Pagado','Actualizado');");
    InfoGovReader nfoGovReader = this.conn.executeReader(stringBuilder.ToString());
    if (nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
      {
        boletoCaja.PeriBole = nfoGovReader.readInt(nameof (PeriBole));
        boletoCaja.NumeBole = nfoGovReader.readInt(nameof (NumeBole));
        boletoCaja.CodiOfic = nfoGovReader.readInt("CodiOfic");
        boletoCaja.CuenCtct = nfoGovReader.readString("CuenCtct");
        boletoCaja.CucuPers = nfoGovReader.readLong("CucuPers");
        boletoCaja.FeveBole = nfoGovReader.readDateTime("FeveBole");
        boletoCaja.CodiFapa = nfoGovReader.readInt("CodiFapa");
        boletoCaja.CuotDefa = nfoGovReader.readInt("CuotDefa");
        boletoCaja.TipoBole = nfoGovReader.readString("TipoBole");
        boletoCaja.EstaBole = nfoGovReader.readString("EstaBole");
        boletoCaja.CapiBole = nfoGovReader.readDecimal("CapiBole");
        boletoCaja.DecaBole = nfoGovReader.readDecimal("DecaBole");
        boletoCaja.RecaBole = nfoGovReader.readDecimal("RecaBole");
        boletoCaja.DereBole = nfoGovReader.readDecimal("DereBole");
        boletoCaja.InteBole = nfoGovReader.readDecimal("InteBole");
        boletoCaja.ExenBole = nfoGovReader.readDecimal("ExenBole");
        boletoCaja.ApreBole = nfoGovReader.readDecimal("ApreBole");
        boletoCaja.TotaBole = nfoGovReader.readDecimal("TotaBole");
        boletoCaja.CodiUsua = nfoGovReader.readString("CodiUsua");
        boletoCaja.CrafBole = nfoGovReader.readDecimal("CrafBole");
        boletoCaja.DetaPers = nfoGovReader.readString("DetaPers");
        if (PARAMS.Municipio == "Alvear")
          boletoCaja.AdicBole = nfoGovReader.readDecimal("AdicBole");
      }
    }
    nfoGovReader.Close();
    return boletoCaja;
  }

  public BoletoCajaMP ObtenerBoletoImpresionMP(int PeriBole, int NumeBole)
  {
    BoletoCajaMP boletoCajaMp = new BoletoCajaMP();
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("SELECT b.*, p.DetaPers FROM boleto b");
    stringBuilder.AppendLine("LEFT JOIN infogov.persona p ON b.CucuPers = p.CucuPers");
    stringBuilder.AppendLine("INNER JOIN pago pa ON pa.PeriBole = b.PeriBole AND pa.NumeBole = b.NumeBole");
    stringBuilder.AppendLine($"WHERE b.PeriBole = {PeriBole} AND b.NumeBole = {NumeBole} AND b.EstaBole IN ('Pagado','Actualizado');");
    InfoGovReader nfoGovReader = this.conn.executeReader(stringBuilder.ToString());
    if (nfoGovReader.HasRows)
    {
      while (nfoGovReader.Read())
      {
        boletoCajaMp.PeriBole = nfoGovReader.readInt(nameof (PeriBole));
        boletoCajaMp.NumeBole = nfoGovReader.readInt(nameof (NumeBole));
        boletoCajaMp.CodiOfic = nfoGovReader.readInt("CodiOfic");
        boletoCajaMp.CuenCtct = nfoGovReader.readString("CuenCtct");
        boletoCajaMp.CucuPers = nfoGovReader.readLong("CucuPers");
        boletoCajaMp.FeveBole = nfoGovReader.readDateTime("FeveBole");
        boletoCajaMp.CodiFapa = nfoGovReader.readInt("CodiFapa");
        boletoCajaMp.CuotDefa = nfoGovReader.readInt("CuotDefa");
        boletoCajaMp.TipoBole = nfoGovReader.readString("TipoBole");
        boletoCajaMp.EstaBole = nfoGovReader.readString("EstaBole");
        boletoCajaMp.CapiBole = nfoGovReader.readDecimal("CapiBole");
        boletoCajaMp.DecaBole = nfoGovReader.readDecimal("DecaBole");
        boletoCajaMp.RecaBole = nfoGovReader.readDecimal("RecaBole");
        boletoCajaMp.DereBole = nfoGovReader.readDecimal("DereBole");
        boletoCajaMp.InteBole = nfoGovReader.readDecimal("InteBole");
        boletoCajaMp.ExenBole = nfoGovReader.readDecimal("ExenBole");
        boletoCajaMp.ApreBole = nfoGovReader.readDecimal("ApreBole");
        boletoCajaMp.TotaBole = nfoGovReader.readDecimal("TotaBole");
        boletoCajaMp.CodiUsua = nfoGovReader.readString("CodiUsua");
        boletoCajaMp.CrafBole = nfoGovReader.readDecimal("CrafBole");
        boletoCajaMp.DetaPers = nfoGovReader.readString("DetaPers");
      }
    }
    nfoGovReader.Close();
    return boletoCajaMp;
  }
}
