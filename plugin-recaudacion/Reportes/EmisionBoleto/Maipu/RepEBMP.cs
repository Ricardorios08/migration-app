// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Reportes.EmisionBoleto.Maipu.RepEBMP
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Common;
using InfoGov.Core;
using InfoGov.Plugins.Infogov.Entidades;
using InfoGov.Plugins.Recaudacion.Entidades.CuentaCorriente;
using InfoGov.Plugins.Recaudacion.Entidades.DerechosVarios;
using InfoGov.Plugins.Recaudacion.Entidades.EmisionBoleto;
using InfoGov.Plugins.Recaudacion.Entidades.PlanPago;
using InfoGov.Plugins.Recaudacion.Expertos.EmisionBoleto;
using InfoGov.Plugins.Recaudacion.Ventanas.EmisionBoleto.Herencia;
using InfoGov.Resources;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Reportes.EmisionBoleto.Maipu;

public class RepEBMP
{
  private string usuario;
  private readonly ExpEBMaipu experto = new ExpEBMaipu();

  public RepEBMP() => this.usuario = Misc.Usuario;

  public string ArmarReporte(IBoleto datos)
  {
    switch (datos.Tipo)
    {
      case TipoEB.VistaPreviaBoleDeuda:
        return this.ArmarHTMLVistaPreviaBoleDeuda(datos as DTOEmiBole);
      case TipoEB.ImprimirBoleDeuda:
        return this.ArmarHTMLImpresionBoletoDeuda(datos as DTOEmiBole);
      case TipoEB.VistaPreviaBoleDereVar:
        return this.ArmarHTMLVistaPreviaBoleDereVarios(datos as DTOEmiBoleDereVario);
      case TipoEB.ImprimirBoleDereVar:
        return this.ArmarHTMLImpresionBoletoDereVarios(datos as DTOEmiBoleDereVario);
      default:
        return string.Empty;
    }
  }

  private DateTime ObtenerFechaVencimiento(CtaCte cuenta)
  {
    return cuenta.FeveCtctBole == DateTime.MinValue ? cuenta.FeveCtct : cuenta.FeveCtctBole;
  }

  private string ArmarHTMLVistaPreviaBoleDeuda(DTOEmiBole datos)
  {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine(this.ArmarHTMHead(datos.Titulo));
    stringBuilder.AppendLine("<body style=\"padding: 2%;\">");
    stringBuilder.AppendLine(this.ArmarHTMLCabeceraCuerpo());
    stringBuilder.AppendLine("<div>");
    stringBuilder.AppendLine($"<div style=\"float:left;\">{this.ArmarHTMLDatosCuenta(datos)}</div>");
    stringBuilder.AppendLine($"<div style=\"float:right;\">{this.ArmarHTMLDatosTitular(datos)}</div>");
    stringBuilder.AppendLine("</div>");
    switch (datos.DatosCuenta.CodiOfic)
    {
      case 1:
        stringBuilder.AppendLine(this.ArmarHTMLDatosInmueble(datos));
        break;
      case 2:
        stringBuilder.AppendLine(this.ArmarHTMLDatosComercio(datos));
        break;
      case 3:
        stringBuilder.AppendLine(this.ArmarHTMLDatosDeudVari(datos));
        break;
      case 4:
        stringBuilder.AppendLine(this.ArmarHTMLDatosCementerio(datos));
        break;
      case 5:
        stringBuilder.AppendLine(this.ArmarHTMLDatosTransito(datos));
        break;
      case 6:
        stringBuilder.AppendLine(this.ArmarHTMLDatosPublicidad(datos));
        break;
      case 7:
        stringBuilder.AppendLine(this.ArmarHTMLDatosAntena(datos));
        break;
    }
    stringBuilder.AppendLine(this.ArmarHTMLDatosBoleto(datos));
    stringBuilder.AppendLine(this.ArmarHTMLCodigoBarras(datos.Tipo));
    stringBuilder.AppendLine(this.ArmarHTMLCuerpoBoletoDeuda(datos));
    stringBuilder.AppendLine("</body>");
    return this.ColocarEtiquetaHTML(stringBuilder.ToString());
  }

  private string ArmarHTMLVistaPreviaBoleDereVarios(DTOEmiBoleDereVario datos) => string.Empty;

  private string ArmarHTMLImpresionBoletoDeuda(DTOEmiBole datos)
  {
    StringBuilder stringBuilder = new StringBuilder();
    DateTime fechaVencimiento = this.ObtenerFechaVencimiento(datos.DatosCuenta);
    stringBuilder.AppendLine(this.ArmarHTMHead(datos.Titulo));
    stringBuilder.AppendLine("<body style=\"padding: 2%;\">");
    stringBuilder.AppendLine(this.ArmarHTMLCabeceraCuerpo());
    stringBuilder.AppendLine("<div style=\"overflow:auto;\">");
    stringBuilder.AppendLine($"<div style=\"float:left; width:48%;\">{this.ArmarHTMLDatosCuenta(datos)}</div>");
    stringBuilder.AppendLine($"<div style=\"float:right; width:48%;\">{this.ArmarHTMLDatosTitular(datos)}</div>");
    stringBuilder.AppendLine("</div>");
    stringBuilder.AppendLine("<div style=\"clear:both;\"></div>");
    switch (datos.DatosCuenta.CodiOfic)
    {
      case 1:
        stringBuilder.AppendLine(this.ArmarHTMLDatosInmueble(datos));
        break;
      case 2:
        stringBuilder.AppendLine(this.ArmarHTMLDatosComercio(datos));
        break;
      case 3:
        stringBuilder.AppendLine(this.ArmarHTMLDatosDeudVari(datos));
        break;
      case 4:
        stringBuilder.AppendLine(this.ArmarHTMLDatosCementerio(datos));
        break;
      case 5:
        stringBuilder.AppendLine(this.ArmarHTMLDatosTransito(datos));
        break;
      case 6:
        stringBuilder.AppendLine(this.ArmarHTMLDatosPublicidad(datos));
        break;
      case 7:
        stringBuilder.AppendLine(this.ArmarHTMLDatosAntena(datos));
        break;
    }
    stringBuilder.AppendLine(this.ArmarHTMLDatosBoleto(datos));
    Decimal importe = datos.EsPagoACuenta ? datos.ImpoPagoCuenta : datos.DeudaSeleccionada.Cast<CCMaipu>().SelectMany<CCMaipu, DetaCCMaipu>((Func<CCMaipu, IEnumerable<DetaCCMaipu>>) (x => (IEnumerable<DetaCCMaipu>) x.Detalles)).Sum<DetaCCMaipu>((Func<DetaCCMaipu, Decimal>) (s => s.TotaCtct));
    string codBarra1Base64;
    string codBarra2Base64;
    try
    {
      string empty = string.Empty;
      string boleto;
      if (datos.NewNumeBole.Contains("/"))
        boleto = datos.NewNumeBole.Split('/')[1] + datos.NewNumeBole.Split('/')[0].Substring(2, 2);
      else
        boleto = datos.NewNumeBole;
      Tuple<string, string> tuple = this.experto.GenerarCodigosBarras(boleto, fechaVencimiento, importe, ExpEBMaipu.TipoCodigoBarras.BoletoComun);
      codBarra1Base64 = tuple.Item1;
      codBarra2Base64 = tuple.Item2;
    }
    catch (Exception ex)
    {
      codBarra1Base64 = (string) null;
      codBarra2Base64 = (string) null;
    }
    stringBuilder.AppendLine(this.ArmarHTMLCodigoBarras(datos.Tipo, codBarra1Base64, codBarra2Base64));
    stringBuilder.AppendLine(this.ArmarHTMLCuerpoBoletoDeuda(datos));
    stringBuilder.AppendLine("</body>");
    return this.ColocarEtiquetaHTML(stringBuilder.ToString());
  }

  private string ArmarHTMLImpresionBoletoDereVarios(DTOEmiBoleDereVario datos)
  {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine(this.ArmarHTMHead(datos.Titulo));
    stringBuilder.AppendLine("<body style=\"padding: 2%;\">");
    stringBuilder.AppendLine(this.ArmarHTMLCabeceraCuerpo());
    stringBuilder.AppendLine("<div style=\"overflow:auto; margin-bottom: 10px;\">");
    stringBuilder.AppendLine($"<div style=\"float:left; width:48%;\">{this.ArmarHTMLDatosCuentaDereVar(datos)}</div>");
    stringBuilder.AppendLine($"<div style=\"float:right; width:48%;\">{this.ArmarHTMLDatosPersona(datos.PersonaSeleccionada)}</div>");
    stringBuilder.AppendLine("</div>");
    stringBuilder.AppendLine("<div style=\"clear:both;\"></div>");
    stringBuilder.AppendLine(this.ArmarHTMLDatosDeudVari(datos));
    stringBuilder.AppendLine(this.ArmarHTMLDatosBoleto(datos));
    string codBarra1Base64;
    string codBarra2Base64;
    try
    {
      string empty = string.Empty;
      string boleto;
      if (datos.PeriNumeBole.Contains("/"))
        boleto = datos.PeriNumeBole.Split('/')[1] + datos.PeriNumeBole.Split('/')[0].Substring(2, 2);
      else
        boleto = datos.PeriNumeBole;
      Tuple<string, string> tuple = this.experto.GenerarCodigosBarras(boleto, datos.FechBole, datos.TotaBole, ExpEBMaipu.TipoCodigoBarras.BoletoComun);
      codBarra1Base64 = tuple.Item1;
      codBarra2Base64 = tuple.Item2;
    }
    catch (Exception ex)
    {
      codBarra1Base64 = (string) null;
      codBarra2Base64 = (string) null;
    }
    stringBuilder.AppendLine(this.ArmarHTMLCodigoBarras(datos.Tipo, codBarra1Base64, codBarra2Base64));
    stringBuilder.AppendLine(this.ArmarHtmlCuerpoBoletoDereVario(datos));
    stringBuilder.AppendLine("</body>");
    return this.ColocarEtiquetaHTML(stringBuilder.ToString());
  }

  public List<string> ArmarReportesPlanPago(DTOImpresionPlanPago datos)
  {
    List<string> stringList = new List<string>()
    {
      this.ColocarEtiquetaHTML($"{this.ArmarHTMHead("Plan de Pagos")}<body style=\"padding: 2%;\">{this.ArmarHTMLConvenioFinanciacion(datos)}</body>")
    };
    stringList.Add(stringList[0]);
    stringList.Add(this.ColocarEtiquetaHTML($"{this.ArmarHTMHead("Plan de Pagos")}<body style=\"padding: 2%;\">{this.ArmarHTMLDeudaIncluida(datos)}</body>"));
    stringList.Add(this.ColocarEtiquetaHTML($"{this.ArmarHTMHead("Plan de Pagos")}<body style=\"padding: 2%;\">{this.ArmarHTMLDetallePlanPago(datos)}</body>"));
    if (datos.Plan is DTOFaciPagoMP plan && plan.ImprimirPPCompleto && plan.CacuFapa > (short) 1)
    {
      datos.Desde = (short) 2;
      datos.Hasta = plan.CacuFapa;
      stringList.Add(this.ColocarEtiquetaHTML($"{this.ArmarHTMHead("Plan de Pagos")}<body style=\"padding: 2%;\">{this.ArmarHTMLChequeraPlanPago(datos)}</body>"));
    }
    return stringList;
  }

  private string ArmarHTMLConvenioFinanciacion(DTOImpresionPlanPago datos)
  {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("<div class=\"page\">");
    stringBuilder.AppendLine(this.ArmarHTMLCabeceraPlanPago("CONVENIO DE FINANCIACIÓN"));
    stringBuilder.AppendLine(this.ArmarHTMLDatosCuentaPlan((DTOFaciPagoMP) datos.Plan));
    stringBuilder.AppendLine("<hr>");
    stringBuilder.AppendLine(this.ArmarHTMLDetalleConvenio((DTOFaciPagoMP) datos.Plan));
    stringBuilder.AppendLine("</div>");
    return stringBuilder.ToString();
  }

  private string ArmarHTMLDeudaIncluida(DTOImpresionPlanPago datos)
  {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("<div class=\"page\">");
    stringBuilder.AppendLine(this.ArmarHTMLCabeceraPlanPago("DETALLE DE DEUDA SELECCIONADA"));
    stringBuilder.AppendLine(this.ArmarHTMLDatosCuentaPlan((DTOFaciPagoMP) datos.Plan));
    stringBuilder.AppendLine("<hr>");
    stringBuilder.AppendLine(this.ArmarHTMLDetalleDeudaPlan((DTOFaciPagoMP) datos.Plan));
    stringBuilder.AppendLine("</div>");
    return stringBuilder.ToString();
  }

  private string ArmarHTMLDetallePlanPago(DTOImpresionPlanPago datos)
  {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("<div class=\"page\"\">");
    stringBuilder.AppendLine(this.ArmarHTMLCabeceraPlanPago("RESUMEN DE PLAN DE PAGO"));
    stringBuilder.AppendLine(this.ArmarHTMLDatosCuentaPlan((DTOFaciPagoMP) datos.Plan));
    stringBuilder.AppendLine("<hr>");
    stringBuilder.AppendLine(this.ArmarHTMLDetalleCuotasPlan((DTOFaciPagoMP) datos.Plan));
    stringBuilder.AppendLine("<hr>");
    stringBuilder.AppendLine(this.ArmarHTMLDetalleChequeraPP((DTOFaciPagoMP) datos.Plan, (short) 1, (short) 1, false));
    stringBuilder.AppendLine("</div>");
    return stringBuilder.ToString();
  }

  private string ArmarHTMLChequeraPlanPago(DTOImpresionPlanPago datos)
  {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine(this.ArmarHTMLDetalleChequeraPP((DTOFaciPagoMP) datos.Plan, datos.Desde, datos.Hasta));
    return stringBuilder.ToString();
  }

  private string ArmarHTMLCabeceraPlanPago(string titulo)
  {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("<table width=\"100%\" border=\"0\" align=\"center\" class=\"Titulo2\" style=\"table-layout: fixed;\">");
    stringBuilder.AppendLine("<tr valign=\"baseline\">");
    stringBuilder.AppendLine("<th width=\"25 % \" valign=\"bottom\" colspan=4 align=center>");
    stringBuilder.AppendLine($"<img alt=Logo src={ImagesManager.getInstance().getImageBase64("LogoMaipuBoleto.png", "Logos")} align=left height=\"110px\">");
    stringBuilder.AppendLine("</th>");
    stringBuilder.AppendLine("<th width=\"50 % \" valign=\"bottom\" colspan=4 align=center>");
    stringBuilder.AppendLine($"<p class=\"Titulo1\" align=\"center\">{PARAMS.NombreLargoMunicipio}</p>");
    stringBuilder.AppendLine("<div style=\"font-weight: normal;\">");
    stringBuilder.AppendLine("<span align=\"center\">PLAN DE FINANCIACIÓN</span><br>");
    stringBuilder.AppendLine($"<span align=\"center\">{titulo.ToUpper()}</span><br>");
    stringBuilder.AppendLine("</div>");
    stringBuilder.AppendLine("</th>");
    stringBuilder.AppendLine("<th width=\"25 % \" valign=\"bottom\" colspan=4 align=center>");
    stringBuilder.AppendLine($"<img alt=Logo src={ImagesManager.getInstance().getImageBase64("LogoMalvinas.png", "Logos")} align=right height=\"80px\" width=\"150px\">");
    stringBuilder.AppendLine("</th>");
    stringBuilder.AppendLine("</tr>");
    stringBuilder.AppendLine("<tr><th colspan=\"12\"><hr></th></tr>");
    stringBuilder.AppendLine("</table>");
    return stringBuilder.ToString();
  }

  private string ArmarHTMLDatosCuentaPlan(DTOFaciPagoMP datos)
  {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("<table width=\"100% \" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" style=\"table-layout: fixed; margin-top: 10px; margin-bottom: 10px;\">");
    stringBuilder.AppendLine("<tbody>");
    string valor1 = ((IEnumerable<string>) datos.ExtrTifa.Split(';')).Where<string>((Func<string, bool>) (x => x.StartsWith("ORDENANZA:"))).Select<string, string>((Func<string, string>) (x => x.Replace("ORDENANZA:", ""))).FirstOrDefault<string>() ?? "-";
    string valor2 = datos.CodiFapa.ToString();
    string detaPers = datos.Cuenta.DetaPers;
    string detaDomi = datos.Cuenta.DetaDomi;
    stringBuilder.AppendLine(Fila("Oficina", $"{datos.Cuenta.CodiOfic.ToString()} - {datos.Cuenta.DetaOfic}"));
    stringBuilder.AppendLine(Fila("Cuenta", datos.Cuenta.CuenCtct));
    stringBuilder.AppendLine(Fila("Ordenanza", valor1));
    stringBuilder.AppendLine(Fila("N° Facilidad", valor2));
    stringBuilder.AppendLine(Fila("Titular", detaPers));
    stringBuilder.AppendLine(Fila("Domicilio", detaDomi));
    stringBuilder.AppendLine("</tbody>");
    stringBuilder.AppendLine("</table>");
    return stringBuilder.ToString();

    static string Fila(string titulo, string valor)
    {
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.AppendLine("<tr class=\"Normal\" valign=\"top\">");
      stringBuilder.AppendLine($"<th vAlign=\"top\" align=left colspan=\"3\"><b>{titulo}:</b></th>");
      stringBuilder.AppendLine($"<th vAlign=\"top\" align=left colspan=\"9\"><b>{(string.IsNullOrWhiteSpace(valor) ? "-" : valor)}</b></th>");
      stringBuilder.AppendLine("</tr>");
      return stringBuilder.ToString();
    }
  }

  private string ArmarHTMLDetalleConvenio(DTOFaciPagoMP datos)
  {
    StringBuilder stringBuilder = new StringBuilder();
    string v1 = datos.CufiFapa.ToString();
    string detaTifp = datos.DetaTifp;
    string detaDomi = datos.Cuenta.DetaDomi;
    string str1 = datos.CacuFapa.ToString();
    string v2 = ((IEnumerable<string>) datos.ExtrTifa.Split(';')).Where<string>((Func<string, bool>) (x => x.StartsWith("ORDENANZA:"))).Select<string, string>((Func<string, string>) (x => x.Replace("ORDENANZA:", ""))).FirstOrDefault<string>() ?? "-";
    string firmFapa = datos.FirmFapa;
    string str2 = datos.FealFapa.ToString("D");
    stringBuilder.AppendLine("<div style=\"margin-top: 10px; margin-bottom: 15px;\">");
    stringBuilder.AppendLine("<p class=\"Normal\" style=\"text-align:justify;\">");
    stringBuilder.AppendLine($"En la fecha se presenta ante la Dirección de Rentas de la Municipalidad de Maipú el SR/A <b>{S(firmFapa)}</b>, <b>CUIT/CUIL N°: {S(v1)}</b> en carácter de <b>{S(detaTifp)}</b>, con el objeto de <b>RECONOCER LA DEUDA</b> que a la fecha de suscripción del presente instrumento se mantiene con éste Municipio, la cual se detalla en el estado de deuda adjunto.");
    stringBuilder.AppendLine("</p>");
    stringBuilder.AppendLine("<br>");
    stringBuilder.AppendLine("<p class=\"Normal\" style=\"text-align:justify;\">");
    stringBuilder.AppendLine($"Para ello constituye domicilio a todos los efectos legales que correspondan en <b>{S(detaDomi)}</b>, donde serán válidas todas las notificaciones extrajudiciales y/o judiciales que se cursen a todo efecto.</b>");
    stringBuilder.AppendLine("</p>");
    stringBuilder.AppendLine("<br>");
    stringBuilder.AppendLine("<p class=\"Normal\" style=\"text-align:justify;\">");
    stringBuilder.AppendLine($"El firmante se <b>COMPROMETE</b> por éste acto a pagar el total adeudado con más el interés establecido en el Art. 5 de la citada Ordenanza, mediante el pago de <b>{str1}</b> cuotas mensuales y consecutivas según detalle adjunto.");
    stringBuilder.AppendLine("En caso de mora en el pago de las cuotas, se aplicará un recargo establecido por el municipio; el cual se calculará diariamente desde la fecha de vencimiento pactada y hasta el efectivo pago.");
    stringBuilder.AppendLine("</p>");
    stringBuilder.AppendLine("<br>");
    stringBuilder.AppendLine("<p class=\"Normal\" style=\"text-align:justify;\">");
    stringBuilder.AppendLine("Se hace entrega de la chequera correspondiente, recibiéndose la misma conformidad.");
    stringBuilder.AppendLine("</p>");
    stringBuilder.AppendLine("<br>");
    stringBuilder.AppendLine("<p class=\"Normal\" style=\"text-align:justify;\">");
    stringBuilder.AppendLine($"El presente instrumento se firma ante el funcionario actuante y a los efectos de acceder a los beneficios de la Ordenanza N° <b>{S(v2)}<b/>.");
    stringBuilder.AppendLine("</p>");
    stringBuilder.AppendLine("<br>");
    stringBuilder.AppendLine("<p class=\"Normal\" style=\"text-align:justify;\">");
    stringBuilder.AppendLine("<b>CADUCIDAD DEL PLAN: </b> Art. 10: El plan de pagos caducará cuando se produzca la falta de pago de 3 (trés) o más cuotas, consecutivas o alternadas, o la falta de pago de 1 (una) cuota luego de transcurridos 60 (sesenta) días desde la fecha de su vencimiento de la última cuota de dicho plan.-");
    stringBuilder.AppendLine($"<br><b>Maipú, {str2}</b>");
    stringBuilder.AppendLine("</p>");
    stringBuilder.AppendLine("</div>");
    stringBuilder.AppendLine("<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>");
    stringBuilder.AppendLine("<table width=\"100%\" border=\"0\" align=\"center\" cellpadding=\"5\" cellspacing=\"0\" style=\"table-layout: fixed; margin-top: 20px;\">");
    stringBuilder.AppendLine("<tbody>");
    stringBuilder.AppendLine("<tr class=\"Normal\" valign=\"top\">");
    stringBuilder.AppendLine("<th vAlign=\"top\" align=left colspan=\"3\"><b>FIRMA:</b></th>");
    stringBuilder.AppendLine("<th vAlign=\"top\" align=left colspan=\"9\">&nbsp;</th>");
    stringBuilder.AppendLine("</tr>");
    stringBuilder.AppendLine("<tr class=\"Normal\" valign=\"top\">");
    stringBuilder.AppendLine("<th vAlign=\"top\" align=left colspan=\"3\"><b>ACLARACIÓN:</b></th>");
    stringBuilder.AppendLine($"<th vAlign=\"top\" align=left colspan=\"9\"><b>{S(firmFapa)}</b></th>");
    stringBuilder.AppendLine("</tr>");
    stringBuilder.AppendLine("<tr class=\"Normal\" valign=\"top\">");
    stringBuilder.AppendLine("<th vAlign=\"top\" align=left colspan=\"3\"><b>CUIT/CUIL:</b></th>");
    stringBuilder.AppendLine($"<th vAlign=\"top\" align=left colspan=\"9\"><b>{S(v1)}</b></th>");
    stringBuilder.AppendLine("</tr>");
    stringBuilder.AppendLine("<tr class=\"Normal\" valign=\"top\">");
    stringBuilder.AppendLine("<th vAlign=\"top\" align=left colspan=\"3\"><b>CARÁCTER:</b></th>");
    stringBuilder.AppendLine($"<th vAlign=\"top\" align=left colspan=\"9\"><b>{S(detaTifp)}</b></th>");
    stringBuilder.AppendLine("</tr>");
    stringBuilder.AppendLine("</tbody>");
    stringBuilder.AppendLine("</table>");
    return stringBuilder.ToString();

    static string S(string v) => !string.IsNullOrWhiteSpace(v) ? v : "-";
  }

  private string ArmarHTMLDetalleDeudaPlan(DTOFaciPagoMP datos)
  {
    StringBuilder html = new StringBuilder();
    html.AppendLine("<table width=\"100% \" border=\"2\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">");
    html.AppendLine("<thead>");
    html.AppendLine("<tr align=\"center\" class=\"Encabezado\" height=25px><th colspan=\"11\">DETALLE DE MOVIMIENTOS SELECCIONADOS</th></tr>");
    html.AppendLine("</thead>");
    IEnumerable<CCMaipu> ccMaipus = datos.DeudaSeleccionada.Cast<CCMaipu>();
    List<int> intList = new List<int>();
    foreach (CCMaipu ccMaipu in ccMaipus)
    {
      switch (ccMaipu.Tipo)
      {
        case TipoResumenMP.Comun:
          IEnumerable<IGrouping<string, DetaCCMaipu>> groupings = ccMaipu.Detalles.GroupBy<DetaCCMaipu, string>((Func<DetaCCMaipu, string>) (g => g.DetaConc));
          html.AppendLine("<thead>");
          html.AppendLine("<tr align=\"center\" class=\"Encabezado\" height=25px><th colspan=\"11\">DEUDA COMÚN</th></tr>");
          html.AppendLine("<tr align=\"center\" class=\"Encabezado\" height=25px>");
          html.AppendLine("<th colspan=\"1\">Periodo</th>");
          html.AppendLine("<th colspan=\"1\">Bimestre</th>");
          html.AppendLine("<th colspan=\"2\">Detalle</th>");
          html.AppendLine("<th colspan=\"2\">Capital</th>");
          html.AppendLine("<th colspan=\"2\">Recargo</th>");
          html.AppendLine("<th colspan=\"1\">Descuento</th>");
          html.AppendLine("<th colspan=\"2\">Total</th>");
          html.AppendLine("</tr>");
          html.AppendLine("</thead>");
          html.AppendLine("<tbody>");
          foreach (IGrouping<string, DetaCCMaipu> source in groupings)
          {
            intList.Clear();
            html.AppendLine($"<tr class=\"Normal\" valign=\"top\"><th colspan=\"11\" ><b>{source.Key}</b></th></tr>");
            foreach (DetaCCMaipu detaCcMaipu in (IEnumerable<DetaCCMaipu>) source)
            {
              DetaCCMaipu deta = detaCcMaipu;
              html.AppendLine("<tr class=\"Normal\" valign=\"top\">");
              if (!intList.Contains((int) deta.PeriCtct))
              {
                intList.Add((int) deta.PeriCtct);
                html.AppendLine($"<th vAlign=\"top\" align=center rowSpan={source.Count<DetaCCMaipu>((Func<DetaCCMaipu, bool>) (g => (int) g.PeriCtct == (int) deta.PeriCtct))}><b>{deta.PeriCtct}</b></th>");
              }
              html.AppendLine($"<th vAlign=\"top\" align=center><b>{deta.BimeCtct}</b></th>");
              html.AppendLine($"<th vAlign=\"top\" align={(string.IsNullOrWhiteSpace(deta.ExpeCtct) ? "center" : "left")} colspan=\"2\"><b>{FDM(deta.ExpeCtct)}</b></th>");
              html.AppendLine($"<th vAlign=\"top\" align=right colspan=\"2\"><b>{deta.SaldCtct:C2}</b></th>");
              html.AppendLine($"<th vAlign=\"top\" align=right colspan=\"2\"><b>{deta.RecaCtct + deta.RecaApre:C2}</b></th>");
              html.AppendLine($"<th vAlign=\"top\" align=right colspan=\"1\"><b>{0:C2}</b></th>");
              html.AppendLine($"<th vAlign=\"top\" align=right colspan=\"2\"><b>{deta.TotaCtct:C2}</b></th>");
              html.AppendLine("</tr>");
            }
          }
          html.AppendLine("<tr class=\"SubTotales\" vAlign=top>");
          html.AppendLine("<td vAlign=center align=center colspan=\"4\">Subtotal</td>");
          Decimal num1 = ccMaipu.Detalles.Sum<DetaCCMaipu>((Func<DetaCCMaipu, Decimal>) (s => s.SaldCtct));
          Decimal num2 = ccMaipu.Detalles.Sum<DetaCCMaipu>((Func<DetaCCMaipu, Decimal>) (s => s.RecaCtct)) + ccMaipu.Detalles.Sum<DetaCCMaipu>((Func<DetaCCMaipu, Decimal>) (s => s.RecaApre));
          Decimal num3 = 0M;
          Decimal num4 = ccMaipu.Detalles.Sum<DetaCCMaipu>((Func<DetaCCMaipu, Decimal>) (s => s.TotaCtct));
          html.AppendLine($"<td vAlign=center align=right colspan=\"2\">{num1:C2}</td>");
          html.AppendLine($"<td vAlign=center align=right colspan=\"2\">{num2:C2}</td>");
          html.AppendLine($"<td vAlign=center align=right colspan=\"1\">{num3:C2}</td>");
          html.AppendLine($"<td vAlign=center align=right colspan=\"2\">{num4:C2}</td>");
          html.AppendLine("</tr>");
          html.AppendLine("</tbody>");
          break;
        case TipoResumenMP.Apremio:
          html.AppendLine("<thead>");
          html.AppendLine("<tr align=\"center\" class=\"Encabezado\" height=25px><th colspan=\"11\">DEUDA DE APREMIO</th></tr>");
          html.AppendLine("<tr align=\"center\" class=\"Encabezado\" height=25px>");
          html.AppendLine("<th colspan=\"1\">N° Apremio</th>");
          html.AppendLine("<th colspan=\"2\">Detalle</th>");
          html.AppendLine("<th colspan=\"1\">Apremio</th>");
          html.AppendLine("<th colspan=\"2\">Capital</th>");
          html.AppendLine("<th colspan=\"2\">Recargo</th>");
          html.AppendLine("<th colspan=\"1\">Descuento</th>");
          html.AppendLine("<th colspan=\"2\">Total</th>");
          html.AppendLine("</tr>");
          html.AppendLine("</thead>");
          html.AppendLine("<tbody>");
          ccMaipu.Detalles.ForEach((Action<DetaCCMaipu>) (deta =>
          {
            html.AppendLine("<tr class=\"Normal\" valign=\"top\">");
            html.AppendLine($"<th vAlign=\"top\" colspan=\"1\" align=center><b>{deta.NumeApre}</b></th>");
            html.AppendLine($"<th vAlign=\"top\" colspan=\"2\" align={(string.IsNullOrWhiteSpace(deta.ExpeCtct) ? "center" : "left")}><b>{FDM(deta.ExpeCtct)}</b></th>");
            html.AppendLine($"<th vAlign=\"top\" colspan=\"1\" align=right><b>{deta.ApreCtct:C2}</b></th>");
            html.AppendLine($"<th vAlign=\"top\" colspan=\"2\" align=right><b>{deta.SaldCtct:C2}</b></th>");
            html.AppendLine($"<th vAlign=\"top\" colspan=\"2\" align=right><b>{deta.RecaCtct + deta.RecaApre:C2}</b></th>");
            html.AppendLine($"<th vAlign=\"top\" colspan=\"1\" align=right><b>{0:C2}</b></th>");
            html.AppendLine($"<th vAlign=\"top\" colspan=\"2\" align=right><b>{deta.TotaCtct:C2}</b></th>");
            html.AppendLine("</tr>");
          }));
          html.AppendLine("<tr class=\"SubTotales\" vAlign=top>");
          html.AppendLine("<td vAlign=center align=center colspan=\"3\">Subtotal</td>");
          Decimal num5 = ccMaipu.Detalles.Sum<DetaCCMaipu>((Func<DetaCCMaipu, Decimal>) (s => s.ApreCtct));
          Decimal num6 = ccMaipu.Detalles.Sum<DetaCCMaipu>((Func<DetaCCMaipu, Decimal>) (s => s.SaldCtct));
          Decimal num7 = ccMaipu.Detalles.Sum<DetaCCMaipu>((Func<DetaCCMaipu, Decimal>) (s => s.RecaCtct)) + ccMaipu.Detalles.Sum<DetaCCMaipu>((Func<DetaCCMaipu, Decimal>) (s => s.RecaApre));
          Decimal num8 = 0M;
          Decimal num9 = ccMaipu.Detalles.Sum<DetaCCMaipu>((Func<DetaCCMaipu, Decimal>) (s => s.TotaCtct));
          html.AppendLine($"<td vAlign=center align=right>{num5:C2}</td>");
          html.AppendLine($"<td vAlign=center colspan=\"2\" align=right>{num6:C2}</td>");
          html.AppendLine($"<td vAlign=center colspan=\"2\" align=right>{num7:C2}</td>");
          html.AppendLine($"<td vAlign=center align=right>{num8:C2}</td>");
          html.AppendLine($"<td vAlign=center colspan=\"2\" align=right>{num9:C2}</td>");
          html.AppendLine("</tr>");
          html.AppendLine("</tbody>");
          break;
      }
    }
    html.AppendLine("</table>");
    Decimal num10 = 0M;
    Decimal num11 = 0M;
    Decimal num12 = 0M;
    Decimal num13 = 0M;
    Decimal num14 = 0M;
    foreach (CCMaipu ccMaipu in ccMaipus)
    {
      num10 += ccMaipu.Detalles.Sum<DetaCCMaipu>((Func<DetaCCMaipu, Decimal>) (s => s.SaldCtct));
      num11 += ccMaipu.Detalles.Sum<DetaCCMaipu>((Func<DetaCCMaipu, Decimal>) (s => s.RecaCtct)) + ccMaipu.Detalles.Sum<DetaCCMaipu>((Func<DetaCCMaipu, Decimal>) (s => s.RecaApre));
      num12 += 0M;
      num13 += ccMaipu.Detalles.Sum<DetaCCMaipu>((Func<DetaCCMaipu, Decimal>) (s => s.ApreCtct));
      num14 += ccMaipu.Detalles.Sum<DetaCCMaipu>((Func<DetaCCMaipu, Decimal>) (s => s.TotaCtct));
    }
    html.AppendLine("<br><br>");
    html.AppendLine("<table width=\"260px\" border=\"1\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">");
    html.AppendLine("<thead><tr align=\"center\" class=\"Encabezado\" height=25px><th colspan=\"2\">RESUMEN</th></tr></thead>");
    html.AppendLine("<tbody>");
    html.AppendLine($"<tr class=\"Normal\" valign=\"top\"><th vAlign=\"top\" align=right><b>Derecho:</b></th><th vAlign=\"top\" align=right><b>{num10:C2}</b></th></tr>");
    html.AppendLine($"<tr class=\"Normal\" valign=\"top\"><th vAlign=\"top\" align=right><b>Recargo:</b></th><th vAlign=\"top\" align=right><b>{num11:C2}</b></th></tr>");
    html.AppendLine($"<tr class=\"Normal\" valign=\"top\"><th vAlign=\"top\" align=right><b>Descuento:</b></th><th vAlign=\"top\" align=right><b>{num12:C2}</b></th></tr>");
    html.AppendLine($"<tr class=\"Normal\" valign=\"top\"><th vAlign=\"top\" align=right><b>Apremio:</b></th><th vAlign=\"top\" align=right><b>{num13:C2}</b></th></tr>");
    html.AppendLine($"<tr class=\"Normal\" valign=\"top\"><th vAlign=\"top\" align=right><b>TOTAL:</b></th><th vAlign=\"top\" align=right class=\"Totales\"><b>{num14:C2}</b></th></tr>");
    html.AppendLine("</tbody>");
    html.AppendLine("</table>");
    return html.ToString();

    static string FDM(string dato) => !string.IsNullOrWhiteSpace(dato) ? dato : "-";
  }

  private string ArmarHTMLDetalleCuotasPlan(DTOFaciPagoMP datos)
  {
    StringBuilder stringBuilder = new StringBuilder();
    List<DetaFapaMP> list = datos.DetallesFacilidad.OrderBy<DetaFapaMP, short>((Func<DetaFapaMP, short>) (x => x.CuotDefa)).ToList<DetaFapaMP>();
    stringBuilder.AppendLine("<table width=\"100% \" border=\"2\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">");
    stringBuilder.AppendLine("<thead>");
    stringBuilder.AppendLine("<tr align=\"center\" class=\"Encabezado\" height=25px><th colspan=\"12\">DETALLE DE CUOTAS GENERADAS</th></tr>");
    stringBuilder.AppendLine("<tr align=\"center\" class=\"Encabezado\" height=25px>");
    stringBuilder.AppendLine("<th colspan=\"1\">Cuota</th>");
    stringBuilder.AppendLine("<th colspan=\"1\">Fecha Venc.</th>");
    stringBuilder.AppendLine("<th colspan=\"1\">Boleto Original</th>");
    stringBuilder.AppendLine("<th colspan=\"2\">Capital</th>");
    stringBuilder.AppendLine("<th colspan=\"1\">Desc. Capital</th>");
    stringBuilder.AppendLine("<th colspan=\"1\">Recargo</th>");
    stringBuilder.AppendLine("<th colspan=\"1\">Desc. Recargo</th>");
    stringBuilder.AppendLine("<th colspan=\"1\">Apremio</th>");
    stringBuilder.AppendLine("<th colspan=\"1\">Interés</th>");
    stringBuilder.AppendLine("<th colspan=\"2\">Total Cuota</th>");
    stringBuilder.AppendLine("</tr>");
    stringBuilder.AppendLine("</thead>");
    stringBuilder.AppendLine("<tbody>");
    foreach (DetaFapaMP detaFapaMp in list)
    {
      stringBuilder.AppendLine("<tr class=\"Normal\" valign=\"top\">");
      stringBuilder.AppendLine($"<th colspan=\"1\" align=center><b>{detaFapaMp.CuotDefa}/{datos.CacuFapa}</b></th>");
      stringBuilder.AppendLine($"<th colspan=\"1\" align=center><b>{detaFapaMp.FeveDefa:d}</b></th>");
      stringBuilder.AppendLine($"<th colspan=\"1\" align=center><b>{detaFapaMp.PeriBole}/{detaFapaMp.NumeBole}</b></th>");
      stringBuilder.AppendLine($"<th colspan=\"2\" align=right><b>{detaFapaMp.CapiDefa:C2}</b></th>");
      stringBuilder.AppendLine($"<th colspan=\"1\" align=right><b>{detaFapaMp.DecaDefa:C2}</b></th>");
      stringBuilder.AppendLine($"<th colspan=\"1\" align=right><b>{detaFapaMp.RecaDefa:C2}</b></th>");
      stringBuilder.AppendLine($"<th colspan=\"1\" align=right><b>{detaFapaMp.DereDefa:C2}</b></th>");
      stringBuilder.AppendLine($"<th colspan=\"1\" align=right><b>{detaFapaMp.ApreDefa:C2}</b></th>");
      stringBuilder.AppendLine($"<th colspan=\"1\" align=right><b>{detaFapaMp.InteDefa:C2}</b></th>");
      stringBuilder.AppendLine($"<th colspan=\"2\" align=right><b>{detaFapaMp.TotaDefa:C2}</b></th>");
      stringBuilder.AppendLine("</tr>");
    }
    stringBuilder.AppendLine("<tr class=\"SubTotales\" vAlign=top>");
    stringBuilder.AppendLine("<td vAlign=center align=center colspan=\"3\">Totales</td>");
    stringBuilder.AppendLine($"<td vAlign=center colspan=\"2\" align=right>{datos.CapiFapa:C2}</td>");
    stringBuilder.AppendLine($"<td vAlign=center colspan=\"1\" align=right>{datos.DecaFapa:C2}</td>");
    stringBuilder.AppendLine($"<td vAlign=center colspan=\"1\" align=right>{datos.RecaFapa:C2}</td>");
    stringBuilder.AppendLine($"<td vAlign=center colspan=\"1\" align=right>{datos.DereFapa:C2}</td>");
    stringBuilder.AppendLine($"<td vAlign=center colspan=\"1\" align=right>{datos.ApreFapa:C2}</td>");
    stringBuilder.AppendLine($"<td vAlign=center colspan=\"1\" align=right>{datos.InteFapa:C2}</td>");
    stringBuilder.AppendLine($"<td vAlign=center colspan=\"2\" align=right>{datos.TotaFapa:C2}</td>");
    stringBuilder.AppendLine("</tr>");
    stringBuilder.AppendLine("</tbody>");
    stringBuilder.AppendLine("</table>");
    return stringBuilder.ToString();
  }

  private string ArmarHTMLDetalleChequeraPP(
    DTOFaciPagoMP datos,
    short desde,
    short hasta,
    bool incluirCabecera = true)
  {
    StringBuilder html = new StringBuilder();
    List<DetaFapaMP> detallesFacilidad = datos.DetallesFacilidad;
    List<DetaFapaMP> source = (detallesFacilidad != null ? detallesFacilidad.OrderBy<DetaFapaMP, short>((Func<DetaFapaMP, short>) (x => x.CuotDefa)).ToList<DetaFapaMP>() : (List<DetaFapaMP>) null) ?? new List<DetaFapaMP>();
    if (source.Count == 0)
      return string.Empty;
    short num1 = 1;
    short num2 = datos.CacuFapa > (short) 0 ? datos.CacuFapa : source.Max<DetaFapaMP, short>((Func<DetaFapaMP, short>) (x => x.CuotDefa));
    if ((int) desde < (int) num1)
      desde = num1;
    if ((int) hasta < (int) num1)
      hasta = num1;
    if ((int) hasta > (int) num2)
      hasta = num2;
    if ((int) desde > (int) hasta)
    {
      short num3 = desde;
      desde = hasta;
      hasta = num3;
    }
    List<DetaFapaMP> list = source.Where<DetaFapaMP>((Func<DetaFapaMP, bool>) (q => (int) q.CuotDefa >= (int) desde && (int) q.CuotDefa <= (int) hasta)).OrderBy<DetaFapaMP, short>((Func<DetaFapaMP, short>) (q => q.CuotDefa)).ToList<DetaFapaMP>();
    if (list.Count == 0)
      return string.Empty;
    int bloquesEnPagina = 0;
    AbrirPagina();
    DetaFapaMP cuota1;
    for (int index = 0; index < list.Count; index += cuota1 != null ? 2 : 1)
    {
      if (bloquesEnPagina >= 10)
      {
        bool agregarSalto = index < list.Count;
        CerrarPagina(agregarSalto);
        if (agregarSalto)
          AbrirPagina();
      }
      DetaFapaMP cuota2 = list[index];
      cuota1 = index + 1 < list.Count ? list[index + 1] : (DetaFapaMP) null;
      (string str1, string str2) = GenerarCodigos(cuota2);
      string str3;
      string str4;
      if (cuota1 == null)
      {
        str3 = (string) null;
        str4 = (string) null;
      }
      else
        (str3, str4) = GenerarCodigos(cuota1);
      html.AppendLine("<tr valign=\"top\">");
      html.AppendLine("<th width=\"50%\" colspan=6 style=\"vertical-align:top;\">");
      html.AppendLine(RenderBloque(cuota2, str1, str2));
      html.AppendLine("</th>");
      html.AppendLine("<th width=\"50%\" colspan=6 style=\"vertical-align:top;\">");
      if (cuota1 != null)
        html.AppendLine(RenderBloque(cuota1, str3, str4));
      else
        html.AppendLine("&nbsp;");
      html.AppendLine("</th>");
      html.AppendLine("</tr>");
      bloquesEnPagina += cuota1 != null ? 2 : 1;
    }
    CerrarPagina(false);
    return html.ToString();

    (string c1, string c2) GenerarCodigos(DetaFapaMP cuota)
    {
      string str1;
      string str2;
      try
      {
        string str3 = $"{cuota.PeriBole}/{cuota.NumeBole}";
        string boleto;
        if (!str3.Contains("/"))
          boleto = str3;
        else
          boleto = str3.Split('/')[1] + str3.Split('/')[0].Substring(2, 2);
        Tuple<string, string> tuple = this.experto.GenerarCodigosBarras(boleto, cuota.FeveDefa, cuota.TotaDefa, ExpEBMaipu.TipoCodigoBarras.PlanPago);
        str1 = tuple.Item1;
        str2 = tuple.Item2;
      }
      catch
      {
        str1 = (string) null;
        str2 = (string) null;
      }
      return (str1, str2);
    }

    string RenderBloque(DetaFapaMP cuota, string codBarra1, string codBarra2)
    {
      StringBuilder stringBuilder = new StringBuilder();
      stringBuilder.AppendLine("<table width=\"100%\" border=\"0\" align=\"center\" cellpadding=\"2\" cellspacing=\"0\" style=\"table-layout: fixed; margin-bottom: 4px;\">");
      stringBuilder.AppendLine("<tbody>");
      stringBuilder.AppendLine("<tr class=\"Normal\" valign=\"top\">");
      stringBuilder.AppendLine("<th colspan=\"1\" align=center><b>Cuota</b></th>");
      stringBuilder.AppendLine("<th colspan=\"1\" align=center><b>Vencimiento</b></th>");
      stringBuilder.AppendLine("<th colspan=\"1\" align=center><b>Boleto</b></th>");
      stringBuilder.AppendLine("<th colspan=\"2\" align=center><b>Importe</b></th>");
      stringBuilder.AppendLine("</tr>");
      stringBuilder.AppendLine("<tr class=\"Normal\" valign=\"top\">");
      stringBuilder.AppendLine($"<th colspan=\"1\" align=center><b>{cuota.CuotDefa}/{datos.CacuFapa}</b></th>");
      stringBuilder.AppendLine($"<th colspan=\"1\" align=center><b>{cuota.FeveDefa:dd/MM/yyyy}</b></th>");
      stringBuilder.AppendLine($"<th colspan=\"1\" align=center><b>{cuota.PeriBole}/{cuota.NumeBole}</b></th>");
      stringBuilder.AppendLine($"<th colspan=\"2\" align=center><b>{cuota.TotaDefa:C2}</b></th>");
      stringBuilder.AppendLine("</tr>");
      stringBuilder.AppendLine("</tbody>");
      stringBuilder.AppendLine("</table>");
      stringBuilder.AppendLine("<table width=\"100%\" border=\"0\" align=\"center\" cellpadding=\"2\" cellspacing=\"0\" style=\"table-layout: fixed;\">");
      if (string.IsNullOrEmpty(codBarra1) || string.IsNullOrEmpty(codBarra2))
      {
        stringBuilder.AppendLine("<tr><th width=\"100%\" style=\"text-align:center; padding: 4px;\"><span style=\"color:#d9534f; font-size: 11px; font-weight:bold;\">Código de barras inválido.</span></th></tr>");
      }
      else
      {
        stringBuilder.AppendLine($"<tr><th width=\"100%\" style=\"text-align:center; padding: 2px;\"><img alt=CodBarra1 src=\"{codBarra1}\" style=\"width:100%; height:56px;\"></th></tr>");
        stringBuilder.AppendLine($"<tr><th width=\"100%\" style=\"text-align:center; padding: 2px;\"><img alt=CodBarra2 src=\"{codBarra2}\" style=\"width:100%; height:56px;\"></th></tr>");
      }
      stringBuilder.AppendLine("</table>");
      return stringBuilder.ToString();
    }

    void AbrirPagina()
    {
      html.AppendLine("<div class=\"page\">");
      if (incluirCabecera)
      {
        html.AppendLine(this.ArmarHTMLCabeceraPlanPago("CHEQUERA DE PLAN DE PAGOS"));
        html.AppendLine(this.ArmarHTMLDatosCuentaPlan(datos));
        html.AppendLine("<hr>");
      }
      html.AppendLine("<table width=\"100%\" border=\"0\" align=\"center\" cellpadding=\"4\" cellspacing=\"0\" style=\"table-layout: fixed;\">");
    }

    void CerrarPagina(bool agregarSalto)
    {
      html.AppendLine("</table>");
      html.AppendLine("</div>");
      if (agregarSalto)
        html.AppendLine("<div style=\"page-break-after: always;\"></div>");
      bloquesEnPagina = 0;
    }
  }

  public string ReimprimirPlanPago(DTOImpresionPlanPago datos)
  {
    string empty = string.Empty;
    return this.ColocarEtiquetaHTML($"{this.ArmarHTMHead("Reimpresión Plan de Pagos")}<body style=\"padding: 2%;\">{this.ArmarHTMLChequeraPlanPago(datos)}</body>");
  }

  private string ColocarEtiquetaHTML(string Contenido)
  {
    return $"<!DOCTYPE HTML> <html lang= \"es\" translate=\"no\"> {Contenido} </html>";
  }

  private string ArmarHTMHead(string Titulo)
  {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("<head>");
    stringBuilder.AppendLine("<meta http-equiv=\"Content-Type\" content =\"text/html; charset=utf-8\"/>");
    stringBuilder.AppendLine($"<title>{Titulo.ToUpper()}</title>");
    stringBuilder.AppendLine("<style type=\"text/css\">");
    stringBuilder.AppendLine(HtmlStyles.EstiloReportesMaipu());
    stringBuilder.AppendLine("</style>");
    stringBuilder.AppendLine("</head>");
    return stringBuilder.ToString();
  }

  private string ArmarHTMLCabeceraCuerpo()
  {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("<table width=\"100%\" border=\"0\" align=\"center\" class=\"Titulo2\" style=\"table-layout: fixed;\">");
    stringBuilder.AppendLine("<tr valign=\"baseline\">");
    stringBuilder.AppendLine("<th width=\"25 % \" valign=\"bottom\" colspan=4 align=center>");
    stringBuilder.AppendLine($"<img alt=Logo src={ImagesManager.getInstance().getImageBase64("LogoMaipuBoleto.png", "Logos")} align=left height=\"110px\">");
    stringBuilder.AppendLine("</th>");
    stringBuilder.AppendLine("<th width=\"50 % \" valign=\"bottom\" colspan=4 align=center>");
    stringBuilder.AppendLine($"<p class=\"Titulo1\" align=\"center\">{PARAMS.NombreLargoMunicipio}</p>");
    stringBuilder.AppendLine("<div style=\"font-weight: normal;\">");
    stringBuilder.AppendLine("<span align=\"center\">Dirección de Rentas</span><br>");
    stringBuilder.AppendLine($"<span align=\"center\">{PARAMS.Domicilio}</span><br>");
    stringBuilder.AppendLine($"<span align=\"center\">Telefono: {PARAMS.TelefonoMunicipio} - C.U.I.T. {PARAMS.CuitMunicipio}</span><br>");
    stringBuilder.AppendLine("</div>");
    stringBuilder.AppendLine("</th>");
    stringBuilder.AppendLine("<th width=\"25 % \" valign=\"bottom\" colspan=4 align=center>");
    stringBuilder.AppendLine($"<img alt=Logo src={ImagesManager.getInstance().getImageBase64("LogoMalvinas.png", "Logos")} align=right height=\"80px\" width=\"150px\">");
    stringBuilder.AppendLine("</th>");
    stringBuilder.AppendLine("</tr>");
    stringBuilder.AppendLine("<tr><th colspan=\"12\"><hr></th></tr>");
    stringBuilder.AppendLine("</table>");
    return stringBuilder.ToString();
  }

  private string ArmarHTMLDatosCuenta(DTOEmiBole datos)
  {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("<table width=\"50% \" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" style=\"table-layout: fixed;\">");
    stringBuilder.AppendLine("<tr>");
    stringBuilder.AppendLine("<th width=\"100%\" colspan=6 class=\"Normal\" style=\"text-align:left;\"");
    stringBuilder.AppendLine($"<span><b>N° CUENTA:</b> {datos.DatosCuenta.CuenCtct}</span><br>");
    stringBuilder.AppendLine($"<span><b>DOMICILIO REAL:</b> {datos.DatosCuenta.DetaDomi}</span><br>");
    stringBuilder.AppendLine($"<span><b>DOMICILIO POSTAL:</b> {datos.DatosCuenta.DetaDomiPost}</span>");
    stringBuilder.AppendLine("</th>");
    stringBuilder.AppendLine("</tr>");
    stringBuilder.AppendLine("</table>");
    return stringBuilder.ToString();
  }

  private string ArmarHTMLDatosCuentaDereVar(DTOEmiBoleDereVario datos)
  {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("<table width=\"50% \" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" style=\"table-layout: fixed;\">");
    stringBuilder.AppendLine("<tr>");
    stringBuilder.AppendLine("<th width=\"100%\" colspan=6 class=\"Normal\" style=\"text-align:left;\"");
    stringBuilder.AppendLine($"<span><b>N° CUENTA:</b> {datos.PersonaSeleccionada.CucuPers}</span><br>");
    stringBuilder.AppendLine($"<span><b>DOMICILIO REAL:</b> {datos.PersonaSeleccionada.DecrPers} N° {datos.PersonaSeleccionada.NumePers} | Barrio: {datos.PersonaSeleccionada.DebrPers}| Manz/Casa: {datos.PersonaSeleccionada.ManzPers} | Piso: {datos.PersonaSeleccionada.PisoPers} | Lote: {datos.PersonaSeleccionada.LotePers} | Depto: {datos.PersonaSeleccionada.DptoPers} | Distrito: {datos.PersonaSeleccionada.DediPers} | CP: {datos.PersonaSeleccionada.CopoPers}</span><br>");
    stringBuilder.AppendLine("</th>");
    stringBuilder.AppendLine("</tr>");
    stringBuilder.AppendLine("</table>");
    return stringBuilder.ToString();
  }

  private string ArmarHTMLDatosTitular(DTOEmiBole datos)
  {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("<table width=\"50% \" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" style=\"table-layout: fixed;\">");
    stringBuilder.AppendLine("<tr>");
    stringBuilder.AppendLine("<th width=\"100%\" colspan=6 class=\"Normal\" style=\"text-align:left;\"");
    stringBuilder.AppendLine($"<span><b>{datos.DatosCuenta.DetaPers}</b></span><br>");
    stringBuilder.AppendLine("</th>");
    stringBuilder.AppendLine("</tr>");
    stringBuilder.AppendLine("</table>");
    return stringBuilder.ToString();
  }

  private string ArmarHTMLDatosPersona(Persona persona)
  {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("<table width=\"50% \" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" style=\"table-layout: fixed;\">");
    stringBuilder.AppendLine("<tr>");
    stringBuilder.AppendLine("<th width=\"100%\" colspan=6 class=\"Normal\" style=\"text-align:left;\"");
    stringBuilder.AppendLine($"<span><b>{persona.CucuPers} - {persona.DetaPers}</b></span><br>");
    stringBuilder.AppendLine("</th>");
    stringBuilder.AppendLine("</tr>");
    stringBuilder.AppendLine("</table>");
    return stringBuilder.ToString();
  }

  private string ArmarHTMLDatosInmueble(DTOEmiBole datos)
  {
    StringBuilder stringBuilder = new StringBuilder();
    DatosBoletoInmuebleMP datosInmueble = datos.DatosBoleto is EBMaipu datosBoleto ? datosBoleto.DatosInmueble : (DatosBoletoInmuebleMP) null;
    stringBuilder.AppendLine("<table width=\"100% \" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" style=\"table-layout: fixed; margin-top: 10px; margin-bottom: 10px;\">");
    stringBuilder.AppendLine("<tr>");
    stringBuilder.AppendLine("<th>Nomenclatura</th>");
    if (datosInmueble.MeedInmu > 0M)
      stringBuilder.AppendLine("<th>Met. Edificado</th>");
    if (datosInmueble.MecuInmu > 0M)
      stringBuilder.AppendLine("<th>Met. Cultivado</th>");
    if (datosInmueble.MebaInmu > 0M)
      stringBuilder.AppendLine("<th>Met. Baldio</th>");
    stringBuilder.AppendLine("<th>Clase</th>");
    stringBuilder.AppendLine("<th>Tipo</th>");
    stringBuilder.AppendLine("<th>Categoría</th>");
    stringBuilder.AppendLine("</tr>");
    stringBuilder.AppendLine("<tr class=\"Normal\" style=\"text-align:center;\">");
    stringBuilder.AppendLine($"<th><span>{datosInmueble.NomeInmu}</span></th>");
    if (datosInmueble.MeedInmu > 0M)
      stringBuilder.AppendLine($"<th><span>{datosInmueble.MeedInmu} m.</span></th>");
    if (datosInmueble.MecuInmu > 0M)
      stringBuilder.AppendLine($"<th><span>{datosInmueble.MecuInmu} m.</span></th>");
    if (datosInmueble.MebaInmu > 0M)
      stringBuilder.AppendLine($"<th><span>{datosInmueble.MebaInmu} m.</span></th>");
    stringBuilder.AppendLine($"<th><span>{datosInmueble.DetaClin}</span></th>");
    stringBuilder.AppendLine($"<th><span>{datosInmueble.DetaTiin}</span></th>");
    stringBuilder.AppendLine($"<th><span>{datosInmueble.DetaCate}</span></th>");
    stringBuilder.AppendLine("</tr>");
    stringBuilder.AppendLine("</table>");
    return stringBuilder.ToString();
  }

  private string ArmarHTMLDatosComercio(DTOEmiBole datos) => new StringBuilder().ToString();

  private string ArmarHTMLDatosDeudVari(DTOEmiBole datos) => new StringBuilder().ToString();

  private string ArmarHTMLDatosDeudVari(DTOEmiBoleDereVario datos)
  {
    return new StringBuilder().ToString();
  }

  private string ArmarHTMLDatosCementerio(DTOEmiBole datos) => new StringBuilder().ToString();

  private string ArmarHTMLDatosTransito(DTOEmiBole datos) => new StringBuilder().ToString();

  private string ArmarHTMLDatosPublicidad(DTOEmiBole datos) => new StringBuilder().ToString();

  private string ArmarHTMLDatosAntena(DTOEmiBole datos) => new StringBuilder().ToString();

  private string ArmarHTMLDatosBoleto(DTOEmiBole datos)
  {
    StringBuilder stringBuilder = new StringBuilder();
    DateTime dateTime = this.ObtenerFechaVencimiento(datos.DatosCuenta);
    switch (datos.Tipo)
    {
      case TipoEB.VistaPreviaBoleDeuda:
        stringBuilder.AppendLine("<table width=\"50% \" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" style=\"float: left;\">");
        stringBuilder.AppendLine("<tr>");
        stringBuilder.AppendLine("<th width=\"50%\" colspan=4 class=\"Normal\" style=\"text-align:left;\"");
        stringBuilder.AppendLine($"<span><b>CONCEPTO:</b> Emisión de Deuda - {datos.DatosCuenta.DetaOfic.ToUpper()}</span><br>");
        stringBuilder.AppendLine("<span><b>N° BOLETO:</b> XXXX/XXXXXXXXX</span><br>");
        stringBuilder.AppendLine($"<span><b>USUARIO:</b> {Misc.Usuario}</span><br>");
        stringBuilder.AppendLine($"<span><b>FECHA EMISIÓN:</b> {Misc.Now(false):dd-MM-yyyy}</span><br>");
        stringBuilder.AppendLine($"<span><b>FECHA VENCIMIENTO:</b> {dateTime:dd-MM-yyyy}</span><br>");
        stringBuilder.AppendLine($"<span><b>IMPORTE: </b>{(datos.EsPagoACuenta ? datos.ImpoPagoCuenta.ToString("C2") : datos.DeudaSeleccionada.Cast<CCMaipu>().SelectMany<CCMaipu, DetaCCMaipu>((Func<CCMaipu, IEnumerable<DetaCCMaipu>>) (x => (IEnumerable<DetaCCMaipu>) x.Detalles)).Sum<DetaCCMaipu>((Func<DetaCCMaipu, Decimal>) (s => s.TotaCtct)).ToString("C2"))}</span>");
        stringBuilder.AppendLine("</th>");
        stringBuilder.AppendLine("</tr>");
        stringBuilder.AppendLine("</table>");
        break;
      case TipoEB.ImprimirBoleDeuda:
        stringBuilder.AppendLine("<table width=\"48% \" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" style=\"display:inline-block; vertical-align:top;\">");
        stringBuilder.AppendLine("<tr>");
        stringBuilder.AppendLine("<th width=\"50%\" colspan=4 class=\"Normal\" style=\"text-align:left;\"");
        stringBuilder.AppendLine($"<span><b>CONCEPTO:</b> Emisión de Deuda - {datos.DatosCuenta.DetaOfic.ToUpper()}</span><br>");
        stringBuilder.AppendLine($"<span><b>N° BOLETO:</b> {datos.NewNumeBole}</span><br>");
        stringBuilder.AppendLine($"<span><b>USUARIO:</b> {Misc.Usuario}</span><br>");
        stringBuilder.AppendLine($"<span><b>FECHA EMISIÓN:</b> {Misc.Now(false):dd-MM-yyyy}</span><br>");
        stringBuilder.AppendLine($"<span><b>FECHA VENCIMIENTO:</b> {dateTime:dd-MM-yyyy}</span><br>");
        stringBuilder.AppendLine($"<span><b>IMPORTE: </b>{(datos.EsPagoACuenta ? datos.ImpoPagoCuenta.ToString("C2") : datos.DeudaSeleccionada.Cast<CCMaipu>().SelectMany<CCMaipu, DetaCCMaipu>((Func<CCMaipu, IEnumerable<DetaCCMaipu>>) (x => (IEnumerable<DetaCCMaipu>) x.Detalles)).Sum<DetaCCMaipu>((Func<DetaCCMaipu, Decimal>) (s => s.TotaCtct)).ToString("C2"))}</span>");
        stringBuilder.AppendLine("</th>");
        stringBuilder.AppendLine("</tr>");
        stringBuilder.AppendLine("</table>");
        break;
    }
    return stringBuilder.ToString();
  }

  private string ArmarHTMLDatosBoleto(DTOEmiBoleDereVario datos)
  {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("<table width=\"48% \" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" style=\"display:inline-block; vertical-align:top;\">");
    stringBuilder.AppendLine("<tr>");
    stringBuilder.AppendLine("<th width=\"50%\" colspan=4 class=\"Normal\" style=\"text-align:left;\"");
    stringBuilder.AppendLine("<span><b>CONCEPTO:</b>DERECHOS VARIOS</span><br>");
    stringBuilder.AppendLine($"<span><b>N° BOLETO:</b> {datos.PeriNumeBole}</span><br>");
    stringBuilder.AppendLine($"<span><b>EXPEDIENTE:</b> {datos.ExpeBole}</span><br>");
    stringBuilder.AppendLine($"<span><b>USUARIO:</b> {Misc.Usuario}</span><br>");
    stringBuilder.AppendLine($"<span><b>FECHA EMISIÓN:</b> {Misc.Now(false):dd-MM-yyyy}</span><br>");
    stringBuilder.AppendLine($"<span><b>FECHA VENCIMIENTO:</b> {datos.FechBole:dd-MM-yyyy}</span><br>");
    stringBuilder.AppendLine($"<span><b>IMPORTE: </b>{datos.TotaBole:C2}</span>");
    stringBuilder.AppendLine("</th>");
    stringBuilder.AppendLine("</tr>");
    stringBuilder.AppendLine("</table>");
    return stringBuilder.ToString();
  }

  private string ArmarHTMLCodigoBarras(TipoEB tipo, string codBarra1Base64 = null, string codBarra2Base64 = null)
  {
    StringBuilder stringBuilder = new StringBuilder();
    switch (tipo)
    {
      case TipoEB.VistaPreviaBoleDeuda:
        stringBuilder.AppendLine("<table width=\"50% \" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" style=\"float: left;\">");
        stringBuilder.AppendLine("<tr>");
        stringBuilder.AppendLine("<th width=\"50%\" colspan=6>");
        stringBuilder.AppendLine("<span style=\"color: red;\"><b>¡CODIGO BARRAS INVÁLIDO!</b></span><br>");
        stringBuilder.AppendLine($"<img alt=CodBarra src={ImagesManager.getInstance().getImageBase64("CodBarrasVistaPreviaMP.png", "Resources")} height=\"110px\">");
        stringBuilder.AppendLine("</th>");
        stringBuilder.AppendLine("</tr>");
        stringBuilder.AppendLine("</table>");
        break;
      case TipoEB.ImprimirBoleDeuda:
      case TipoEB.ImprimirBoleDereVar:
        stringBuilder.AppendLine("<table width=\"48% \" border=\"0\" align=\"center\" cellpadding=\"3\" cellspacing=\"0\" style=\"display:inline-block; vertical-align:top;\">");
        if (string.IsNullOrEmpty(codBarra1Base64) || string.IsNullOrEmpty(codBarra2Base64))
        {
          stringBuilder.AppendLine("<tr>");
          stringBuilder.AppendLine("<th width=\"100%\" style=\"text-align:center; padding: 10px;\">");
          stringBuilder.AppendLine("<div style=\"border-top: 2px solid #ccc; padding-top: 10px;\">");
          stringBuilder.AppendLine("<span style=\"color: #d9534f; font-size: 11px; font-weight: bold;\">Código de barras inválido.</span>");
          stringBuilder.AppendLine("</div>");
          stringBuilder.AppendLine("</th>");
          stringBuilder.AppendLine("</tr>");
        }
        else
        {
          stringBuilder.AppendLine("<tr>");
          stringBuilder.AppendLine("<th width=\"100%\" style=\"text-align:center; padding: 2px;\">");
          stringBuilder.AppendLine($"<img alt=CodBarra1 src=\"{codBarra1Base64}\" style=\"max-width:100%; height:60px; display:block; margin:0 auto;\">");
          stringBuilder.AppendLine("</th>");
          stringBuilder.AppendLine("</tr>");
          stringBuilder.AppendLine("<tr>");
          stringBuilder.AppendLine("<th width=\"100%\" style=\"text-align:center; padding: 2px;\">");
          stringBuilder.AppendLine($"<img alt=CodBarra2 src=\"{codBarra2Base64}\" style=\"max-width:100%; height:60px; display:block; margin:0 auto;\">");
          stringBuilder.AppendLine("</th>");
          stringBuilder.AppendLine("</tr>");
        }
        stringBuilder.AppendLine("</table>");
        break;
    }
    return stringBuilder.ToString();
  }

  private string ArmarHTMLCuerpoBoletoDeuda(DTOEmiBole datos)
  {
    StringBuilder html = new StringBuilder();
    html.AppendLine("<br>");
    html.AppendLine("<br>");
    html.AppendLine("<br>");
    html.AppendLine("<table width=\"100% \" border=\"2\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">");
    html.AppendLine("<thead>");
    html.AppendLine("<tr align=\"center\" class=\"Encabezado\" height=25px><th colspan=\"11\">DETALLE DE MOVIMIENTOS SELECCIONADOS</th></tr>");
    html.AppendLine("</thead>");
    IEnumerable<CCMaipu> ccMaipus = datos.DeudaSeleccionada.Cast<CCMaipu>();
    List<int> intList = new List<int>();
    foreach (CCMaipu ccMaipu in ccMaipus)
    {
      switch (ccMaipu.Tipo)
      {
        case TipoResumenMP.Comun:
          IOrderedEnumerable<IGrouping<string, DetaCCMaipu>> orderedEnumerable = ccMaipu.Detalles.GroupBy<DetaCCMaipu, string>((Func<DetaCCMaipu, string>) (g => g.DetaConc)).OrderBy<IGrouping<string, DetaCCMaipu>, string>((Func<IGrouping<string, DetaCCMaipu>, string>) (g => g.Key));
          html.AppendLine("<thead>");
          html.AppendLine("<tr align=\"center\" class=\"Encabezado\" height=25px><th colspan=\"11\">DEUDA COMÚN</th></tr>");
          html.AppendLine("<tr align=\"center\" class=\"Encabezado\" height=25px>");
          html.AppendLine("<th colspan=\"1\">Periodo</th>");
          html.AppendLine("<th colspan=\"1\">Bimestre</th>");
          html.AppendLine("<th colspan=\"2\">Detalle</th>");
          html.AppendLine("<th colspan=\"2\">Débito</th>");
          html.AppendLine("<th colspan=\"1\">Recargo</th>");
          html.AppendLine("<th colspan=\"1\">Interés</th>");
          html.AppendLine("<th colspan=\"1\">Descuento</th>");
          html.AppendLine("<th colspan=\"2\">Total</th>");
          html.AppendLine("</tr>");
          html.AppendLine("</thead>");
          html.AppendLine("<tbody>");
          foreach (IGrouping<string, DetaCCMaipu> source in (IEnumerable<IGrouping<string, DetaCCMaipu>>) orderedEnumerable)
          {
            intList.Clear();
            List<DetaCCMaipu> list = source.OrderBy<DetaCCMaipu, short>((Func<DetaCCMaipu, short>) (d => d.PeriCtct)).ThenBy<DetaCCMaipu, short>((Func<DetaCCMaipu, short>) (d => d.BimeCtct)).ToList<DetaCCMaipu>();
            html.AppendLine($"<tr class=\"Normal\" valign=\"top\"><th colspan=\"11\" ><b>{source.Key}</b></th></tr>");
            for (int index = 0; index < list.Count; ++index)
            {
              DetaCCMaipu deta = list[index];
              html.AppendLine("<tr class=\"Normal\" valign=\"top\">");
              if (!intList.Contains((int) deta.PeriCtct))
              {
                intList.Add((int) deta.PeriCtct);
                html.AppendLine($"<th vAlign=\"top\" align=center rowSpan={list.Count<DetaCCMaipu>((Func<DetaCCMaipu, bool>) (g => (int) g.PeriCtct == (int) deta.PeriCtct))}><b>{deta.PeriCtct}</b></th>");
              }
              html.AppendLine($"<th vAlign=\"top\" align=center><b>{deta.BimeCtct}</b></th>");
              html.AppendLine($"<th vAlign=\"top\" align={(string.IsNullOrWhiteSpace(deta.ExpeCtct) ? "center" : "left")} colspan=\"2\"><b>{FDM(deta.ExpeCtct)}</b></th>");
              html.AppendLine($"<th vAlign=\"top\" align=right colspan=\"2\"><b>{deta.SaldCtct:C2}</b></th>");
              html.AppendLine($"<th vAlign=\"top\" align=right><b>{deta.RecaCtct:C2}</b></th>");
              html.AppendLine($"<th vAlign=\"top\" align=right><b>{0:C2}</b></th>");
              html.AppendLine($"<th vAlign=\"top\" align=right colspan=\"1\"><b>{0:C2}</b></th>");
              html.AppendLine($"<th vAlign=\"top\" align=right colspan=\"2\"><b>{deta.TotaCtct:C2}</b></th>");
              html.AppendLine("</tr>");
            }
          }
          html.AppendLine("<tr class=\"SubTotales\" vAlign=top>");
          html.AppendLine("<td vAlign=center align=center colspan=\"4\">Subtotal</td>");
          Decimal num1 = ccMaipu.Detalles.Sum<DetaCCMaipu>((Func<DetaCCMaipu, Decimal>) (s => s.SaldCtct));
          Decimal num2 = ccMaipu.Detalles.Sum<DetaCCMaipu>((Func<DetaCCMaipu, Decimal>) (s => s.RecaCtct));
          Decimal num3 = 0M;
          Decimal num4 = 0M;
          Decimal num5 = ccMaipu.Detalles.Sum<DetaCCMaipu>((Func<DetaCCMaipu, Decimal>) (s => s.TotaCtct));
          html.AppendLine($"<td vAlign=center align=right colspan=\"2\">{num1:C2}</td>");
          html.AppendLine($"<td vAlign=center align=right>{num2:C2}</td>");
          html.AppendLine($"<td vAlign=center align=right>{num3:C2}</td>");
          html.AppendLine($"<td vAlign=center align=right colspan=\"1\">{num4:C2}</td>");
          html.AppendLine($"<td vAlign=center align=right colspan=\"2\">{num5:C2}</td>");
          html.AppendLine("</tr>");
          html.AppendLine("</tbody>");
          break;
        case TipoResumenMP.Apremio:
          html.AppendLine("<thead>");
          html.AppendLine("<tr align=\"center\" class=\"Encabezado\" height=25px><th colspan=\"11\">DEUDA DE APREMIO</th></tr>");
          html.AppendLine("<tr align=\"center\" class=\"Encabezado\" height=25px>");
          html.AppendLine("<th colspan=\"1\">N° Apremio</th>");
          html.AppendLine("<th colspan=\"2\">Detalle</th>");
          html.AppendLine("<th colspan=\"1\">Apremio</th>");
          html.AppendLine("<th colspan=\"2\">Débito</th>");
          html.AppendLine("<th colspan=\"1\">Recargo</th>");
          html.AppendLine("<th colspan=\"1\">Interés</th>");
          html.AppendLine("<th colspan=\"1\">Descuento</th>");
          html.AppendLine("<th colspan=\"2\">Total</th>");
          html.AppendLine("</tr>");
          html.AppendLine("</thead>");
          html.AppendLine("<tbody>");
          ccMaipu.Detalles.ForEach((Action<DetaCCMaipu>) (deta =>
          {
            html.AppendLine("<tr class=\"Normal\" valign=\"top\">");
            html.AppendLine($"<th vAlign=\"top\" colspan=\"1\" align=center><b>{deta.NumeApre}</b></th>");
            html.AppendLine($"<th vAlign=\"top\" colspan=\"2\" align={(string.IsNullOrWhiteSpace(deta.ExpeCtct) ? "center" : "left")}><b>{FDM(deta.ExpeCtct)}</b></th>");
            html.AppendLine($"<th vAlign=\"top\" colspan=\"1\" align=right><b>{deta.ApreCtct:C2}</b></th>");
            html.AppendLine($"<th vAlign=\"top\" colspan=\"2\" align=right><b>{deta.SaldCtct:C2}</b></th>");
            html.AppendLine($"<th vAlign=\"top\" colspan=\"1\" align=right><b>{deta.RecaCtct:C2}</b></th>");
            html.AppendLine($"<th vAlign=\"top\" colspan=\"1\" align=right><b>{0:C2}</b></th>");
            html.AppendLine($"<th vAlign=\"top\" colspan=\"1\" align=right><b>{0:C2}</b></th>");
            html.AppendLine($"<th vAlign=\"top\" colspan=\"2\" align=right><b>{deta.TotaCtct:C2}</b></th>");
            html.AppendLine("</tr>");
          }));
          html.AppendLine("<tr class=\"SubTotales\" vAlign=top>");
          html.AppendLine("<td vAlign=center align=center colspan=\"3\">Subtotal</td>");
          Decimal num6 = ccMaipu.Detalles.Sum<DetaCCMaipu>((Func<DetaCCMaipu, Decimal>) (s => s.ApreCtct));
          Decimal num7 = ccMaipu.Detalles.Sum<DetaCCMaipu>((Func<DetaCCMaipu, Decimal>) (s => s.SaldCtct));
          Decimal num8 = ccMaipu.Detalles.Sum<DetaCCMaipu>((Func<DetaCCMaipu, Decimal>) (s => s.RecaCtct)) + ccMaipu.Detalles.Sum<DetaCCMaipu>((Func<DetaCCMaipu, Decimal>) (x => x.RecaApre));
          Decimal num9 = 0M;
          Decimal num10 = 0M;
          Decimal num11 = ccMaipu.Detalles.Sum<DetaCCMaipu>((Func<DetaCCMaipu, Decimal>) (s => s.TotaCtct));
          html.AppendLine($"<td vAlign=center align=right>{num6:C2}</td>");
          html.AppendLine($"<td vAlign=center colspan=\"2\" align=right>{num7:C2}</td>");
          html.AppendLine($"<td vAlign=center align=right>{num8:C2}</td>");
          html.AppendLine($"<td vAlign=center align=right>{num9:C2}</td>");
          html.AppendLine($"<td vAlign=center align=right>{num10:C2}</td>");
          html.AppendLine($"<td vAlign=center colspan=\"2\" align=right>{num11:C2}</td>");
          html.AppendLine("</tr>");
          html.AppendLine("</tbody>");
          break;
        case TipoResumenMP.Facilidad:
          html.AppendLine("<thead>");
          html.AppendLine("<tr align=\"center\" class=\"Encabezado\" height=25px><th colspan=\"11\">FACILIDADES DE PAGO</th></tr>");
          html.AppendLine("<tr align=\"center\" class=\"Encabezado\" height=25px>");
          html.AppendLine("<th colspan=\"2\">N° Facilidad</th>");
          html.AppendLine("<th colspan=\"1\">N° Cuota</th>");
          html.AppendLine("<th colspan=\"2\">Débito</th>");
          html.AppendLine("<th colspan=\"2\">Recargo</th>");
          html.AppendLine("<th colspan=\"1\">Interés</th>");
          html.AppendLine("<th colspan=\"1\">Descuento</th>");
          html.AppendLine("<th colspan=\"2\">Total</th>");
          html.AppendLine("</tr>");
          html.AppendLine("</thead>");
          html.AppendLine("<tbody>");
          foreach (IEnumerable<DetaCCMaipu> source in (IEnumerable<IGrouping<int, DetaCCMaipu>>) ccMaipu.Detalles.GroupBy<DetaCCMaipu, int>((Func<DetaCCMaipu, int>) (d => d.CodiFapa)).OrderBy<IGrouping<int, DetaCCMaipu>, int>((Func<IGrouping<int, DetaCCMaipu>, int>) (g => g.Key)))
          {
            List<DetaCCMaipu> list = source.ToList<DetaCCMaipu>();
            for (int index = 0; index < list.Count; ++index)
            {
              DetaCCMaipu detaCcMaipu = list[index];
              html.AppendLine("<tr class=\"Normal\" valign=\"top\">");
              if (index == 0)
                html.AppendLine($"<th vAlign=\"top\" align=center colspan=\"2\" rowSpan=\"{list.Count}\"><b>{detaCcMaipu.CodiFapa}</b></th>");
              html.AppendLine($"<th vAlign=\"top\" align=center colspan=\"1\"><b>{detaCcMaipu.ExpeCtct}</b></th>");
              html.AppendLine($"<th vAlign=\"top\" align=right colspan=\"2\"><b>{detaCcMaipu.SaldCtct:C2}</b></th>");
              html.AppendLine($"<th vAlign=\"top\" align=right colspan=\"2\"><b>{detaCcMaipu.RecaCtct:C2}</b></th>");
              html.AppendLine($"<th vAlign=\"top\" align=right colspan=\"1\"><b>{0:C2}</b></th>");
              html.AppendLine($"<th vAlign=\"top\" align=right colspan=\"1\"><b>{0:C2}</b></th>");
              html.AppendLine($"<th vAlign=\"top\" align=right colspan=\"2\"><b>{detaCcMaipu.TotaCtct:C2}</b></th>");
              html.AppendLine("</tr>");
            }
          }
          html.AppendLine("<tr class=\"SubTotales\" vAlign=top>");
          html.AppendLine("<td vAlign=center align=center colspan=\"3\">Subtotal</td>");
          Decimal num12 = ccMaipu.Detalles.Sum<DetaCCMaipu>((Func<DetaCCMaipu, Decimal>) (s => s.SaldCtct));
          Decimal num13 = ccMaipu.Detalles.Sum<DetaCCMaipu>((Func<DetaCCMaipu, Decimal>) (s => s.RecaCtct));
          Decimal num14 = 0M;
          Decimal num15 = 0M;
          Decimal num16 = ccMaipu.Detalles.Sum<DetaCCMaipu>((Func<DetaCCMaipu, Decimal>) (s => s.TotaCtct));
          html.AppendLine($"<td vAlign=center colspan=\"2\" align=right>{num12:C2}</td>");
          html.AppendLine($"<td vAlign=center colspan=\"2\" align=right>{num13:C2}</td>");
          html.AppendLine($"<td vAlign=center colspan=\"1\" align=right>{num14:C2}</td>");
          html.AppendLine($"<td vAlign=center colspan=\"1\" align=right>{num15:C2}</td>");
          html.AppendLine($"<td vAlign=center colspan=\"2\" align=right>{num16:C2}</td>");
          html.AppendLine("</tr>");
          html.AppendLine("</tbody>");
          break;
      }
    }
    html.AppendLine("</table>");
    Decimal num17 = 0M;
    Decimal num18 = 0M;
    Decimal num19 = 0M;
    Decimal num20 = 0M;
    Decimal num21 = 0M;
    Decimal num22 = 0M;
    foreach (CCMaipu ccMaipu in ccMaipus)
    {
      num17 += ccMaipu.Detalles.Sum<DetaCCMaipu>((Func<DetaCCMaipu, Decimal>) (s => s.SaldCtct));
      num18 += ccMaipu.Detalles.Sum<DetaCCMaipu>((Func<DetaCCMaipu, Decimal>) (s => s.RecaCtct)) + ccMaipu.Detalles.Sum<DetaCCMaipu>((Func<DetaCCMaipu, Decimal>) (x => x.RecaApre));
      num19 += 0M;
      num20 += 0M;
      num21 += ccMaipu.Detalles.Sum<DetaCCMaipu>((Func<DetaCCMaipu, Decimal>) (s => s.ApreCtct));
      num22 += ccMaipu.Detalles.Sum<DetaCCMaipu>((Func<DetaCCMaipu, Decimal>) (s => s.TotaCtct));
    }
    html.AppendLine("<br><br>");
    html.AppendLine("<table width=\"260px\" border=\"1\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">");
    html.AppendLine("<thead><tr align=\"center\" class=\"Encabezado\" height=25px><th colspan=\"2\">RESUMEN</th></tr></thead>");
    html.AppendLine("<tbody>");
    html.AppendLine($"<tr class=\"Normal\" valign=\"top\"><th vAlign=\"top\" align=right><b>Derecho:</b></th><th vAlign=\"top\" align=right><b>{num17:C2}</b></th></tr>");
    html.AppendLine($"<tr class=\"Normal\" valign=\"top\"><th vAlign=\"top\" align=right><b>Recargo:</b></th><th vAlign=\"top\" align=right><b>{num18:C2}</b></th></tr>");
    html.AppendLine($"<tr class=\"Normal\" valign=\"top\"><th vAlign=\"top\" align=right><b>Interés:</b></th><th vAlign=\"top\" align=right><b>{num19:C2}</b></th></tr>");
    html.AppendLine($"<tr class=\"Normal\" valign=\"top\"><th vAlign=\"top\" align=right><b>Descuento:</b></th><th vAlign=\"top\" align=right><b>{num20:C2}</b></th></tr>");
    html.AppendLine($"<tr class=\"Normal\" valign=\"top\"><th vAlign=\"top\" align=right><b>Apremio:</b></th><th vAlign=\"top\" align=right><b>{num21:C2}</b></th></tr>");
    html.AppendLine($"<tr class=\"Normal\" valign=\"top\"><th vAlign=\"top\" align=right><b>TOTAL:</b></th><th vAlign=\"top\" align=right class=\"Totales\"><b>{num22:C2}</b></th></tr>");
    html.AppendLine("</tbody>");
    html.AppendLine("</table>");
    return html.ToString();

    static string FDM(string dato) => !string.IsNullOrWhiteSpace(dato) ? dato : "-";
  }

  private string ArmarHtmlCuerpoBoletoDereVario(DTOEmiBoleDereVario datos)
  {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("<table width=\"100% \" border=\"2\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">");
    stringBuilder.AppendLine("<thead>");
    stringBuilder.AppendLine("<tr align=\"center\" class=\"Encabezado\" height=25px><th colspan=\"10\">DETALLE DE SERVICIOS SELECCIONADOS</th></tr>");
    stringBuilder.AppendLine("</thead>");
    List<SevicioDerechoVarioSeleccionadoMP> source = datos.ServiciosSeleccionados.ConvertAll<SevicioDerechoVarioSeleccionadoMP>((Converter<IReporteBoleto, SevicioDerechoVarioSeleccionadoMP>) (x => (SevicioDerechoVarioSeleccionadoMP) x));
    stringBuilder.AppendLine("<thead>");
    stringBuilder.AppendLine("<tr align=\"center\" class=\"Encabezado\" height=25px>");
    stringBuilder.AppendLine("<th colspan=\"1\">Cantidad</th>");
    stringBuilder.AppendLine("<th colspan=\"3\">Detalle del Servicio</th>");
    stringBuilder.AppendLine("<th colspan=\"3\">Importe</th>");
    stringBuilder.AppendLine("<th colspan=\"3\">Sub Total</th>");
    stringBuilder.AppendLine("</tr>");
    stringBuilder.AppendLine("</thead>");
    stringBuilder.AppendLine("<tbody>");
    foreach (SevicioDerechoVarioSeleccionadoMP varioSeleccionadoMp in source)
    {
      string str1 = $"<span style=\"white-space:nowrap\">{varioSeleccionadoMp.PrunDede:C2}</span>";
      string str2 = $"<span style=\"white-space:nowrap\">{varioSeleccionadoMp.SubtDede:C2}</span>";
      stringBuilder.AppendLine("<tr class=\"Normal\" valign=\"top\">");
      stringBuilder.AppendLine($"<th vAlign=\"top\" colspan=\"1\" align=right><b>{varioSeleccionadoMp.CantDede}</b></th>");
      stringBuilder.AppendLine($"<th vAlign=\"top\" colspan=\"3\" align=left><b>{varioSeleccionadoMp.DetaDvpa.ToUpper()} - {varioSeleccionadoMp.DetaSede}</b></th>");
      stringBuilder.AppendLine($"<th vAlign=\"top\" colspan=\"3\" align=right><b>{str1}</b></th>");
      stringBuilder.AppendLine($"<th vAlign=\"top\" colspan=\"3\" align=right><b>{str2}</b></th>");
      stringBuilder.AppendLine("</tr>");
    }
    string str = $"<span style=\"white-space:nowrap\">{source.Sum<SevicioDerechoVarioSeleccionadoMP>((Func<SevicioDerechoVarioSeleccionadoMP, Decimal>) (s => s.SubtDede)):C2}</span>";
    stringBuilder.AppendLine("<tr class=\"SubTotales\" vAlign=center>");
    stringBuilder.AppendLine("<td vAlign=center align=center colspan=\"7\">TOTAL</td>");
    stringBuilder.AppendLine($"<td vAlign=center colspan=\"3\" align=right>{str}</td>");
    stringBuilder.AppendLine("</tr>");
    stringBuilder.AppendLine("<tr class=\"Normal\" vAlign=top>");
    stringBuilder.AppendLine($"<td vAlign=center colspan=\"11\">Detalle: <b>{datos.Detalle}</b></td>");
    stringBuilder.AppendLine("</tr>");
    stringBuilder.AppendLine("</tbody>");
    return stringBuilder.ToString();
  }
}
