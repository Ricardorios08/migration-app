// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Reportes.Maipu.CajaDiaria.RepCajaDiariaMP
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Common;
using InfoGov.Core;
using InfoGov.Plugins.Recaudacion.Entidades;
using InfoGov.Resources;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Reportes.Maipu.CajaDiaria;

public class RepCajaDiariaMP
{
  public string ReporteCajaDiaria(DTORepCajaDiariaMP datos)
  {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine(this.ArmarHTMHead("Reporte Caja Diaria"));
    stringBuilder.AppendLine("<body style=\"padding: 2%;\">");
    stringBuilder.AppendLine(this.ArmarHTMLCabeceraCuerpo());
    stringBuilder.AppendLine("<br>");
    stringBuilder.AppendLine("<div style=\"width:100%; overflow:hidden;\">");
    stringBuilder.AppendLine($"<div style=\"width:49%; float:left;\">{this.HTMLDatosAperturaCajaDiaria(datos)}</div>");
    stringBuilder.AppendLine($"<div style=\"width:49%; float:right;\">{this.HTMLDatosCierreCajaDiaria(datos)}</div>");
    stringBuilder.AppendLine("</div>");
    stringBuilder.AppendLine("<div style=\"clear:both;\"></div>");
    stringBuilder.AppendLine("<br>");
    stringBuilder.AppendLine("<hr>");
    stringBuilder.AppendLine(this.HTMLBoletosPagadosCajaDiaria(datos));
    stringBuilder.AppendLine("<br>");
    if (datos.detallesBoletosAnulados != null && datos.detallesBoletosAnulados.Any<ResumenBoletosAnuladosMP>())
    {
      stringBuilder.AppendLine("<hr>");
      stringBuilder.AppendLine(this.HTMLBoletosAnuladosCajaDiaria(datos));
      stringBuilder.AppendLine("<br>");
    }
    stringBuilder.AppendLine("<hr>");
    stringBuilder.AppendLine("<div style=\"width:100%; overflow:hidden;\">");
    stringBuilder.AppendLine($"<div style=\"width:58%; float:left;\">{this.HTMLDatosResumenCajaDiaria(datos)}</div>");
    stringBuilder.AppendLine($"<div style=\"width:40%; float:right;\">{this.HTMLDatosFormasPagoCajaDiaria(datos)}</div>");
    stringBuilder.AppendLine("</div>");
    stringBuilder.AppendLine("<div style=\"clear:both;\"></div>");
    stringBuilder.AppendLine(this.HTMLResumenCajaDiaria(datos));
    stringBuilder.AppendLine("</body>");
    return this.ColocarEtiquetaHTML(stringBuilder.ToString());
  }

  public string ReporteCajaDiariaFormasPago(DTORepCajaDiariaMP datos)
  {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine(this.ArmarHTMHead("Reporte Caja Diaria - Formas de Pago"));
    stringBuilder.AppendLine("<body style=\"padding: 2%;\">");
    stringBuilder.AppendLine(this.ArmarHTMLCabeceraCuerpo());
    stringBuilder.AppendLine("<br>");
    stringBuilder.AppendLine("<p class=\"Titulo2\" align=\"center\"><b>Tipos de Pago</b></p>");
    stringBuilder.AppendLine(this.HTMLDetallesFormasPago(datos));
    stringBuilder.AppendLine("</body>");
    return this.ColocarEtiquetaHTML(stringBuilder.ToString());
  }

  private string ColocarEtiquetaHTML(string Contenido)
  {
    return $"<!DOCTYPE HTML> <html lang= \"es\" translate=\"no\"> {Contenido} </html>";
  }

  private string ArmarHTMHead(string Titulo = "")
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
    stringBuilder.AppendLine("<span align=\"center\">TESORERÍA</span><br>");
    stringBuilder.AppendLine("<span align=\"center\">LISTADO DE COBRANZAS</span><br>");
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

  private string HTMLDetallesFormasPago(DTORepCajaDiariaMP datos)
  {
    StringBuilder html = new StringBuilder();
    List<ResumenTiposPagoMP> tiposPagosUtilizados = datos.detallesTiposPagosUtilizados;
    AgregarTablaTiposPago("Tarjetas", tiposPagosUtilizados.Where<ResumenTiposPagoMP>((Func<ResumenTiposPagoMP, bool>) (x => x.TipoTipa == (short) 1)));
    AgregarTablaTiposPago("Cheques", tiposPagosUtilizados.Where<ResumenTiposPagoMP>((Func<ResumenTiposPagoMP, bool>) (x => x.TipoTipa == (short) 2)));
    return html.ToString();

    void AgregarTablaTiposPago(string titulo, IEnumerable<ResumenTiposPagoMP> tipos)
    {
      List<ResumenTiposPagoMP> list1 = tipos.ToList<ResumenTiposPagoMP>();
      if (!list1.Any<ResumenTiposPagoMP>())
        return;
      html.AppendLine($"<p class=\"Titulo2\" align=\"center\"><b>{titulo}</b></p>");
      html.AppendLine("<table width=\"100%\" border=\"1\" cellpadding=\"0\" cellspacing=\"0\">");
      html.AppendLine("<thead>");
      html.AppendLine("<tr align=\"center\" class=\"Encabezado\" height=25px>");
      html.AppendLine("<th>Tipo de Pago</th>");
      html.AppendLine("<th>Detalle</th>");
      html.AppendLine("<th>Boletos</th>");
      html.AppendLine("<th>Importe</th>");
      html.AppendLine("</tr>");
      html.AppendLine("</thead>");
      html.AppendLine("<tbody>");
      foreach (IGrouping<\u003C\u003Ef__AnonymousType0<short, string>, ResumenTiposPagoMP> source in list1.GroupBy(x => new
      {
        CodiTipa = x.CodiTipa,
        DetaTipa = x.DetaTipa
      }).OrderBy<IGrouping<\u003C\u003Ef__AnonymousType0<short, string>, ResumenTiposPagoMP>, short>(x => x.Key.CodiTipa))
      {
        List<ResumenTiposPagoMP> list2 = source.ToList<ResumenTiposPagoMP>();
        for (int index = 0; index < list2.Count; ++index)
        {
          ResumenTiposPagoMP resumenTiposPagoMp = list2[index];
          html.AppendLine("<tr>");
          if (index == 0)
            html.AppendLine($"<td class=\"Normal\" style=\"text-align:left;\" rowspan=\"{list2.Count}\">{resumenTiposPagoMp.DetaTipa}</td>");
          html.AppendLine($"<td class=\"Normal\" style=\"text-align:left;\">{resumenTiposPagoMp.NuchFopa}</td>");
          html.AppendLine($"<td class=\"Normal\" style=\"text-align:left;\">{resumenTiposPagoMp.Boletos}</td>");
          html.AppendLine($"<td class=\"Normal\" style=\"text-align:right;\">{resumenTiposPagoMp.ImpoFopa:C2}</td>");
          html.AppendLine("</tr>");
        }
        html.AppendLine("<tr class=\"SubTotales\" vAlign=top>");
        html.AppendLine("<td vAlign=center align=right colspan=\"3\">Subtotal</td>");
        html.AppendLine($"<td vAlign=center align=right>{source.Sum<ResumenTiposPagoMP>((Func<ResumenTiposPagoMP, Decimal>) (x => x.ImpoFopa)):C2}</td>");
        html.AppendLine("</tr>");
      }
      html.AppendLine("<tr class=\"SubTotales\" vAlign=top>");
      html.AppendLine("<td vAlign=center align=right colspan=\"3\">TOTAL</td>");
      html.AppendLine($"<td vAlign=center align=right>{list1.Sum<ResumenTiposPagoMP>((Func<ResumenTiposPagoMP, Decimal>) (x => x.ImpoFopa)):C2}</td>");
      html.AppendLine("</tr>");
      html.AppendLine("</tbody>");
      html.AppendLine("</table>");
      html.AppendLine("<br>");
    }
  }

  private string HTMLBoletosPagadosCajaDiaria(DTORepCajaDiariaMP datos)
  {
    StringBuilder stringBuilder = new StringBuilder();
    List<ResumenBoletosPagadosMP> detallesBoletos = datos.detallesBoletos;
    stringBuilder.AppendLine("<p class=\"Titulo2\" align=\"center\"><b>Boletos Pagados</b></p>");
    stringBuilder.AppendLine("<table width=\"100%\" border=\"1\" cellpadding=\"0\" cellspacing=\"0\">");
    stringBuilder.AppendLine("<thead>");
    stringBuilder.AppendLine("<tr align=\"center\" class=\"Encabezado\" height=25px>");
    stringBuilder.AppendLine("<th>Periodo</th>");
    stringBuilder.AppendLine("<th>Número</th>");
    stringBuilder.AppendLine("<th>Oficina</th>");
    stringBuilder.AppendLine("<th>Cuenta</th>");
    stringBuilder.AppendLine("<th>Persona</th>");
    stringBuilder.AppendLine("<th>Forma de Pago</th>");
    stringBuilder.AppendLine("<th>Total</th>");
    stringBuilder.AppendLine("</tr>");
    stringBuilder.AppendLine("</thead>");
    stringBuilder.AppendLine("<tbody>");
    foreach (ResumenBoletosPagadosMP boletosPagadosMp in detallesBoletos)
    {
      stringBuilder.AppendLine("<tr>");
      stringBuilder.AppendLine($"<td class=\"Normal\" style=\"text-align:center;\">{boletosPagadosMp.PeriBole}</td>");
      stringBuilder.AppendLine($"<td class=\"Normal\" style=\"text-align:center;\">{boletosPagadosMp.NumeBole}</td>");
      stringBuilder.AppendLine($"<td class=\"Normal\" style=\"text-align:center;\">{boletosPagadosMp.DetaOfic}</td>");
      stringBuilder.AppendLine($"<td class=\"Normal\" style=\"text-align:center;\">{FSTRING(boletosPagadosMp.CuenCtct)}</td>");
      stringBuilder.AppendLine($"<td class=\"Normal\" style=\"text-align:left;\">{boletosPagadosMp.DetaPers}</td>");
      stringBuilder.AppendLine($"<td class=\"Normal\" style=\"text-align:left;\">{boletosPagadosMp.DetaTipa}</td>");
      stringBuilder.AppendLine($"<td class=\"Normal\" style=\"text-align:right;\">{boletosPagadosMp.TotaPago:C2}</td>");
      stringBuilder.AppendLine("</tr>");
    }
    stringBuilder.AppendLine("<tr class=\"SubTotales\" vAlign=top>");
    stringBuilder.AppendLine("<td vAlign=center align=right colspan=\"6\">TOTAL</td>");
    stringBuilder.AppendLine($"<td vAlign=center align=right>{detallesBoletos.Sum<ResumenBoletosPagadosMP>((Func<ResumenBoletosPagadosMP, Decimal>) (x => x.TotaPago)):C2}</td>");
    stringBuilder.AppendLine("</tr>");
    stringBuilder.AppendLine("</tbody>");
    stringBuilder.AppendLine("</table>");
    return stringBuilder.ToString();

    static string FSTRING(string valor) => !string.IsNullOrWhiteSpace(valor) ? valor : "---";
  }

  private string HTMLBoletosAnuladosCajaDiaria(DTORepCajaDiariaMP datos)
  {
    StringBuilder stringBuilder = new StringBuilder();
    List<ResumenBoletosAnuladosMP> detallesBoletosAnulados = datos.detallesBoletosAnulados;
    stringBuilder.AppendLine("<p class=\"Titulo2\" align=\"center\"><b>Boletos Anulados</b></p>");
    stringBuilder.AppendLine("<table width=\"100%\" border=\"1\" cellpadding=\"0\" cellspacing=\"0\">");
    stringBuilder.AppendLine("<thead>");
    stringBuilder.AppendLine("<tr align=\"center\" class=\"Encabezado\" height=25px>");
    stringBuilder.AppendLine("<th>Periodo</th>");
    stringBuilder.AppendLine("<th>Número</th>");
    stringBuilder.AppendLine("<th>Oficina</th>");
    stringBuilder.AppendLine("<th>Cuenta</th>");
    stringBuilder.AppendLine("<th>Persona</th>");
    stringBuilder.AppendLine("<th>Motivo Anulación</th>");
    stringBuilder.AppendLine("<th>Anulado Por</th>");
    stringBuilder.AppendLine("<th>Total</th>");
    stringBuilder.AppendLine("</tr>");
    stringBuilder.AppendLine("</thead>");
    stringBuilder.AppendLine("<tbody>");
    foreach (ResumenBoletosAnuladosMP boletosAnuladosMp in detallesBoletosAnulados)
    {
      stringBuilder.AppendLine("<tr>");
      stringBuilder.AppendLine($"<td class=\"Normal\" style=\"text-align:center;\">{boletosAnuladosMp.PeriBole}</td>");
      stringBuilder.AppendLine($"<td class=\"Normal\" style=\"text-align:center;\">{boletosAnuladosMp.NumeBole}</td>");
      stringBuilder.AppendLine($"<td class=\"Normal\" style=\"text-align:center;\">{boletosAnuladosMp.DetaOfic}</td>");
      stringBuilder.AppendLine($"<td class=\"Normal\" style=\"text-align:center;\">{FSTRING(boletosAnuladosMp.CuenCtct)}</td>");
      stringBuilder.AppendLine($"<td class=\"Normal\" style=\"text-align:left;\">{boletosAnuladosMp.DetaPers}</td>");
      stringBuilder.AppendLine($"<td class=\"Normal\" style=\"text-align:left;\">{boletosAnuladosMp.MoanBole}</td>");
      stringBuilder.AppendLine($"<td class=\"Normal\" style=\"text-align:left;\">{boletosAnuladosMp.UsuaAnul} ({boletosAnuladosMp.FechAnulFormated})</td>");
      stringBuilder.AppendLine($"<td class=\"Normal\" style=\"text-align:right;\">{boletosAnuladosMp.TotaBole:C2}</td>");
      stringBuilder.AppendLine("</tr>");
    }
    stringBuilder.AppendLine("<tr class=\"SubTotales\" vAlign=top>");
    stringBuilder.AppendLine("<td vAlign=center align=right colspan=\"7\">TOTAL</td>");
    stringBuilder.AppendLine($"<td vAlign=center align=right>{detallesBoletosAnulados.Sum<ResumenBoletosAnuladosMP>((Func<ResumenBoletosAnuladosMP, Decimal>) (x => x.TotaBole)):C2}</td>");
    stringBuilder.AppendLine("</tr>");
    stringBuilder.AppendLine("</tbody>");
    stringBuilder.AppendLine("</table>");
    return stringBuilder.ToString();

    static string FSTRING(string valor) => !string.IsNullOrWhiteSpace(valor) ? valor : "---";
  }

  private string HTMLDatosAperturaCajaDiaria(DTORepCajaDiariaMP datos)
  {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("<table width=\"100%\" border=\"0\" cellpadding=\"5\" cellspacing=\"0\">");
    stringBuilder.AppendLine("<tr>");
    stringBuilder.AppendLine("<th colspan=4 class=\"Normal\" style=\"text-align:center;\">");
    stringBuilder.AppendLine("<span><b>DATOS APERTURA</b></span><br>");
    stringBuilder.AppendLine("</th>");
    stringBuilder.AppendLine("</tr>");
    stringBuilder.AppendLine("<tr>");
    stringBuilder.AppendLine("<th colspan=4 class=\"Normal\" style=\"text-align:left;\">");
    stringBuilder.AppendLine($"<span><b>FECHA CAJA:</b> {datos.FeenAcpa.ToShortDateString()}</span><br>");
    stringBuilder.AppendLine($"<span><b>GRUPO:</b> {datos.NumeAcpa}</span><br>");
    stringBuilder.AppendLine($"<span><b>ENTE RECA.:</b> {datos.CodiEnre} - {datos.DetaEnre}</span><br>");
    stringBuilder.AppendLine($"<span><b>MONTO INICIAL:</b> {datos.MoinAcpa:C2}</span><br>");
    stringBuilder.AppendLine($"<span><b>BOLETOS INGRESADOS:</b> {datos.TocoAcpa}</span><br>");
    stringBuilder.AppendLine($"<span><b>IMPORTE INGRESADO:</b> {datos.ImpoAcpa:C2}</span><br>");
    stringBuilder.AppendLine($"<span><b>ESTADO CAJA:</b> {datos.Verificada} / {datos.Actualizada}</span><br>");
    stringBuilder.AppendLine($"<span><b>USUARIO CREA:</b> {datos.UsuaCrea}</span><br>");
    stringBuilder.AppendLine($"<span><b>FECHA CREA:</b> {datos.FechaAlta:G}</span><br>");
    stringBuilder.AppendLine("</th>");
    stringBuilder.AppendLine("</tr>");
    stringBuilder.AppendLine("</table>");
    return stringBuilder.ToString();
  }

  private string HTMLDatosCierreCajaDiaria(DTORepCajaDiariaMP datos)
  {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("<table width=\"100%\" border=\"0\" cellpadding=\"5\" cellspacing=\"0\">");
    stringBuilder.AppendLine("<tr>");
    stringBuilder.AppendLine("<th colspan=4 class=\"Normal\" style=\"text-align:center;\">");
    stringBuilder.AppendLine("<span><b>DATOS CIERRE</b></span><br>");
    stringBuilder.AppendLine("</th>");
    stringBuilder.AppendLine("</tr>");
    stringBuilder.AppendLine("<tr>");
    stringBuilder.AppendLine("<th colspan=4 class=\"Normal\" style=\"text-align:left;\">");
    stringBuilder.AppendLine($"<span><b>USUARIO CIERRE:</b> {datos.UsuaCierre}</span><br>");
    stringBuilder.AppendLine($"<span><b>FECHA CIERRE:</b> {datos.FechaCierre:G}</span><br>");
    stringBuilder.AppendLine($"<span><b>IMPORTE EN CAJA:</b> {datos.ImcaCierre:C2}</span><br>");
    stringBuilder.AppendLine($"<span><b>IMPORTE INICIAL:</b> {datos.IminCierre:C2}</span><br>");
    stringBuilder.AppendLine($"<span><b>IMPORTE COBRADO:</b> {datos.ImcoCierre:C2}</span><br>");
    stringBuilder.AppendLine($"<span><b>DIFERENCIA:</b> {datos.DifeCierre:C2}</span><br>");
    stringBuilder.AppendLine("</th>");
    stringBuilder.AppendLine("</tr>");
    stringBuilder.AppendLine("</table>");
    return stringBuilder.ToString();
  }

  private string HTMLDatosResumenCajaDiaria(DTORepCajaDiariaMP datos)
  {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("<table width=\"100%\" border=\"2\" cellpadding=\"0\" cellspacing=\"0\">");
    stringBuilder.AppendLine("<thead>");
    stringBuilder.AppendLine("<tr align=\"center\" class=\"Encabezado\" height=25px><th colspan=\"5\">EXISTENCIA CAJA</th></tr>");
    stringBuilder.AppendLine("</thead>");
    stringBuilder.AppendLine("<tr align=\"center\" class=\"Encabezado\" height=25px>");
    stringBuilder.AppendLine("<th width=\"35%\" class=\"Normal\" style=\"text-align:center;\" colspan=\"2\">DETALLE</th>");
    stringBuilder.AppendLine("<th width=\"20%\" class=\"Normal\" style=\"text-align:center;\" colspan=\"1\">CANTIDAD</th>");
    stringBuilder.AppendLine("<th width=\"45%\" class=\"Normal\" style=\"text-align:center;\" colspan=\"2\">IMPORTE</th>");
    stringBuilder.AppendLine("</tr>");
    foreach (ResumenCajaMP resumenCajaMp in datos.detallesResumen)
    {
      stringBuilder.AppendLine("<tr>");
      stringBuilder.AppendLine($"<td class=\"Normal\" style=\"text-align:left;\" colspan=\"2\">{resumenCajaMp.DetaRecu}</td>");
      stringBuilder.AppendLine($"<td class=\"Normal\" style=\"text-align:center;\" colspan=\"1\">{resumenCajaMp.CantRecu}</td>");
      stringBuilder.AppendLine($"<td class=\"Normal\" style=\"text-align:right;\" colspan=\"2\">{resumenCajaMp.ImpoRecu:C2}</td>");
      stringBuilder.AppendLine("</tr>");
    }
    stringBuilder.AppendLine("<tr class=\"SubTotales\" vAlign=top>");
    stringBuilder.AppendLine("<td vAlign=center align=center colspan=\"3\">Subtotal</td>");
    stringBuilder.AppendLine($"<td vAlign=center align=right colspan=\"2\">{datos.detallesResumen.Sum<ResumenCajaMP>((Func<ResumenCajaMP, Decimal>) (x => x.ImpoRecu)):C2}</td>");
    stringBuilder.AppendLine("</tr>");
    stringBuilder.AppendLine("</table>");
    return stringBuilder.ToString();
  }

  private string HTMLDatosFormasPagoCajaDiaria(DTORepCajaDiariaMP datos)
  {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("<table width=\"100%\" border=\"1\" cellpadding=\"0\" cellspacing=\"0\">");
    stringBuilder.AppendLine("<thead>");
    stringBuilder.AppendLine("<tr align=\"center\" class=\"Encabezado\" height=25px><th colspan=\"4\">FORMAS DE PAGO</th></tr>");
    stringBuilder.AppendLine("</thead>");
    stringBuilder.AppendLine("<tr align=\"center\" class=\"Encabezado\" height=25px>");
    stringBuilder.AppendLine("<th width=\"50%\" class=\"Normal\" style=\"text-align:center;\" colspan=\"2\">FORMA DE PAGO</th>");
    stringBuilder.AppendLine("<th width=\"50%\" class=\"Normal\" style=\"text-align:center;\" colspan=\"2\">TOTAL</th>");
    stringBuilder.AppendLine("</tr>");
    foreach (ResumenFormaPagoMP detallesFopa in datos.detallesFopas)
    {
      stringBuilder.AppendLine("<tr>");
      stringBuilder.AppendLine($"<td class=\"Normal\" style=\"text-align:left;\" colspan=\"2\">{detallesFopa.DetaFopa}</td>");
      stringBuilder.AppendLine($"<td class=\"Normal\" style=\"text-align:right;\" colspan=\"2\">{detallesFopa.TotaFopa:C2}</td>");
      stringBuilder.AppendLine("</tr>");
    }
    stringBuilder.AppendLine("<tr class=\"SubTotales\" vAlign=top>");
    stringBuilder.AppendLine("<td vAlign=center align=center colspan=\"2\">Subtotal</td>");
    stringBuilder.AppendLine($"<td vAlign=center align=right colspan=\"2\">{datos.detallesFopas.Sum<ResumenFormaPagoMP>((Func<ResumenFormaPagoMP, Decimal>) (x => x.TotaFopa)):C2}</td>");
    stringBuilder.AppendLine("</tr>");
    stringBuilder.AppendLine("</table>");
    return stringBuilder.ToString();
  }

  private string HTMLResumenCajaDiaria(DTORepCajaDiariaMP datos)
  {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("<br><br>");
    stringBuilder.AppendLine("<table width=\"450px\" border=\"1\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">");
    stringBuilder.AppendLine("<thead><tr align=\"center\" class=\"Encabezado\" height=25px><th colspan=\"2\">RESUMEN CIERRE</th></tr></thead>");
    stringBuilder.AppendLine("<tbody>");
    stringBuilder.AppendLine($"<tr class=\"Normal\" valign=\"top\"><th width=\"40%\" vAlign=\"top\" align=right><b>MONTO INICIAL:</b></th><th vAlign=\"top\" align=right><b>{datos.IminCierre:C2}</b></th></tr>");
    stringBuilder.AppendLine($"<tr class=\"Normal\" valign=\"top\"><th width=\"40%\" vAlign=\"top\" align=right><b>COBRADO:</b></th><th vAlign=\"top\" align=right><b>{datos.ImcoCierre:C2}</b></th></tr>");
    stringBuilder.AppendLine($"<tr class=\"Normal\" valign=\"top\"><th width=\"40%\" vAlign=\"top\" align=right><b>EXISTENCIA CAJA:</b></th><th vAlign=\"top\" align=right><b>{datos.ImcaCierre:C2}</b></th></tr>");
    stringBuilder.AppendLine($"<tr class=\"Normal\" valign=\"top\"><th width=\"40%\" vAlign=\"top\" align=right><b>DIFERENCIA:</b></th><th vAlign=\"top\" align=right class=\"Totales\"><b>{datos.DifeCierre:C2}</b></th></tr>");
    stringBuilder.AppendLine("</tbody>");
    stringBuilder.AppendLine("</table>");
    return stringBuilder.ToString();
  }
}
