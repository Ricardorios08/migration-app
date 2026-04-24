// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Reportes.Maipu.ConsultaBoleto.RepCBMP
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using InfoGov.Common;
using InfoGov.Core;
using InfoGov.Resources;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Reportes.Maipu.ConsultaBoleto;

public class RepCBMP
{
  public string ArmarHTMLConsultaBoleto(DTOConsultaBoletoMP dto)
  {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine(this.ArmarHTMHead("Consulta de Boleto"));
    stringBuilder.AppendLine("<body style=\"padding: 2%;\">");
    stringBuilder.AppendLine(this.ArmarHTMLCabeceraCuerpo());
    stringBuilder.AppendLine(this.ArmarHTMLDetalleConsultaBoleto(dto));
    stringBuilder.AppendLine("</body>");
    return this.ColocarEtiquetaHTML(stringBuilder.ToString());
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
    stringBuilder.AppendLine("<span align=\"center\">CONSULTA DE BOLETO</span><br>");
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

  private string ArmarHTMLDetalleConsultaBoleto(DTOConsultaBoletoMP dto)
  {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.AppendLine("<div style=\"width:100%; overflow:hidden;\">");
    stringBuilder.AppendLine("<div style=\"width:49%; float:left;\">");
    stringBuilder.AppendLine("<table width=\"100%\" border=\"0\" cellpadding=\"2\" cellspacing=\"0\">");
    stringBuilder.AppendLine($"<tr><td style=\"width:35%; text-align:right; background-color:#e6e6e6;\"><b>Nombre Completo</b></td><td style=\"text-align:left;\">{Texto(dto.DetaPers)}</td></tr>");
    stringBuilder.AppendLine($"<tr><td style=\"width:35%; text-align:right; background-color:#e6e6e6;\"><b>Domicilio</b></td><td style=\"text-align:left;\">{Texto(dto.DomiBole)}</td></tr>");
    stringBuilder.AppendLine($"<tr><td style=\"width:35%; text-align:right; background-color:#e6e6e6;\"><b>Periodo</b></td><td style=\"text-align:left;\">{dto.PeriBole}</td></tr>");
    stringBuilder.AppendLine($"<tr><td style=\"width:35%; text-align:right; background-color:#e6e6e6;\"><b>Boleto</b></td><td style=\"text-align:left;\">{dto.NumeBole}</td></tr>");
    stringBuilder.AppendLine($"<tr><td style=\"width:35%; text-align:right; background-color:#e6e6e6;\"><b>Estado</b></td><td style=\"text-align:left;\">{Texto(dto.EstaBole)}</td></tr>");
    stringBuilder.AppendLine($"<tr><td style=\"width:35%; text-align:right; background-color:#e6e6e6;\"><b>Tipo</b></td><td style=\"text-align:left;\">{Texto(dto.TipoBole)}</td></tr>");
    stringBuilder.AppendLine($"<tr><td style=\"width:35%; text-align:right; background-color:#e6e6e6;\"><b>Oficina</b></td><td style=\"text-align:left;\">{dto.CodiOfic} - {Texto(dto.DetaOfic)}</td></tr>");
    stringBuilder.AppendLine($"<tr><td style=\"width:35%; text-align:right; background-color:#e6e6e6;\"><b>Cuenta</b></td><td style=\"text-align:left;\">{Texto(dto.CuenCtct)}</td></tr>");
    stringBuilder.AppendLine($"<tr><td style=\"width:35%; text-align:right; background-color:#e6e6e6;\"><b>Usuario Boleto</b></td><td style=\"text-align:left;\">{Texto(dto.CodiUsuaBole)}</td></tr>");
    stringBuilder.AppendLine("</table>");
    stringBuilder.AppendLine("</div>");
    stringBuilder.AppendLine("<div style=\"width:49%; float:right;\">");
    stringBuilder.AppendLine("<table width=\"100%\" border=\"0\" cellpadding=\"2\" cellspacing=\"0\">");
    stringBuilder.AppendLine($"<tr><td style=\"width:35%; text-align:right; background-color:#e6e6e6;\"><b>CUIT/CUIT</b></td><td style=\"text-align:left;\">{dto.CucuPers}</td></tr>");
    stringBuilder.AppendLine($"<tr><td style=\"width:35%; text-align:right; background-color:#e6e6e6;\"><b>Expte</b></td><td style=\"text-align:left;\">{Texto(dto.ExpeBole)}</td></tr>");
    stringBuilder.AppendLine($"<tr><td style=\"width:35%; text-align:right; background-color:#e6e6e6;\"><b>Grupo</b></td><td style=\"text-align:left;\">{dto.NumeAcpa}</td></tr>");
    stringBuilder.AppendLine($"<tr><td style=\"width:35%; text-align:right; background-color:#e6e6e6;\"><b>Ente</b></td><td style=\"text-align:left;\">{dto.CodiEnre} - {Texto(dto.DetaEnre)}</td></tr>");
    stringBuilder.AppendLine($"<tr><td style=\"width:35%; text-align:right; background-color:#e6e6e6;\"><b>Fecha Emisión</b></td><td style=\"text-align:left;\">{Fecha(dto.FealBole)}</td></tr>");
    stringBuilder.AppendLine($"<tr><td style=\"width:35%; text-align:right; background-color:#e6e6e6;\"><b>Fecha de Envío</b></td><td style=\"text-align:left;\">{Fecha(dto.FeenAcpa)}</td></tr>");
    stringBuilder.AppendLine($"<tr><td style=\"width:35%; text-align:right; background-color:#e6e6e6;\"><b>Fecha de Pago</b></td><td style=\"text-align:left;\">{Fecha(dto.FepaPago)}</td></tr>");
    stringBuilder.AppendLine($"<tr><td style=\"width:35%; text-align:right; background-color:#e6e6e6;\"><b>Fecha de Actualización</b></td><td style=\"text-align:left;\">{Fecha(dto.FeacPago)}</td></tr>");
    stringBuilder.AppendLine($"<tr><td style=\"width:35%; text-align:right; background-color:#e6e6e6;\"><b>Fecha de Vencimiento</b></td><td style=\"text-align:left;\">{Fecha(dto.FeveBole)}</td></tr>");
    stringBuilder.AppendLine($"<tr><td style=\"width:35%; text-align:right; background-color:#e6e6e6;\"><b>Usuario Pago</b></td><td style=\"text-align:left;\">{Texto(dto.AltaUsuaPago)}</td></tr>");
    stringBuilder.AppendLine("</table>");
    stringBuilder.AppendLine("</div>");
    stringBuilder.AppendLine("</div>");
    stringBuilder.AppendLine("<div style=\"clear:both;\"></div>");
    if (!string.IsNullOrWhiteSpace(dto.ObseBole))
      stringBuilder.AppendLine($"<div class=\"Normal\" style=\"padding-left:2%;\"><b>Observación:</b> {Texto(dto.ObseBole)}</div>");
    stringBuilder.AppendLine("<hr>");
    if (dto.Detalles.Count > 0)
    {
      Decimal valor1 = 0M;
      Decimal valor2 = 0M;
      Decimal valor3 = 0M;
      Decimal valor4 = 0M;
      Decimal valor5 = 0M;
      stringBuilder.AppendLine("<table width=\"100%\" border=\"1\" cellpadding=\"2\" cellspacing=\"0\">");
      stringBuilder.AppendLine("<tr align=\"center\" class=\"Encabezado\" height=\"25px\">");
      stringBuilder.AppendLine("<th>DESCRIPCIÓN</th>");
      stringBuilder.AppendLine("<th>FACILIDAD</th>");
      stringBuilder.AppendLine("<th>CUOTA</th>");
      stringBuilder.AppendLine("<th>DERECHO</th>");
      stringBuilder.AppendLine("<th>RECARGO</th>");
      stringBuilder.AppendLine("<th>INTERÉS</th>");
      stringBuilder.AppendLine("<th>DESCUENTO</th>");
      stringBuilder.AppendLine("<th>TOTAL</th>");
      stringBuilder.AppendLine("</tr>");
      foreach (IGrouping<\u003C\u003Ef__AnonymousType1<string, string>, DTODetaBoleMP> source1 in dto.Detalles.GroupBy(x => new
      {
        CodiConc = x.CodiConc,
        DetaConc = x.DetaConc
      }))
      {
        stringBuilder.AppendLine("<tr class=\"Encabezado\">");
        stringBuilder.AppendLine($"<th colspan=\"8\" style=\"text-align:left;\">{Texto(source1.Key.CodiConc)} - {Texto(source1.Key.DetaConc)}</th>");
        stringBuilder.AppendLine("</tr>");
        foreach (IGrouping<short, DTODetaBoleMP> source2 in (IEnumerable<IGrouping<short, DTODetaBoleMP>>) source1.GroupBy<DTODetaBoleMP, short>((Func<DTODetaBoleMP, short>) (x => x.PeriCtct)).OrderBy<IGrouping<short, DTODetaBoleMP>, short>((Func<IGrouping<short, DTODetaBoleMP>, short>) (x => x.Key)))
        {
          stringBuilder.AppendLine("<tr class=\"Encabezado\">");
          stringBuilder.AppendLine($"<th colspan=\"8\" style=\"text-align:left;\">Periodo {source2.Key}</th>");
          stringBuilder.AppendLine("</tr>");
          foreach (DTODetaBoleMP dtoDetaBoleMp in (IEnumerable<DTODetaBoleMP>) source2.OrderBy<DTODetaBoleMP, short>((Func<DTODetaBoleMP, short>) (x => x.BimeCtct)))
          {
            valor1 += dtoDetaBoleMp.CapiDebo;
            valor2 += dtoDetaBoleMp.RecaDebo;
            valor3 += dtoDetaBoleMp.InteDebo;
            valor4 += dtoDetaBoleMp.DecaDebo + dtoDetaBoleMp.DereDebo;
            valor5 += dtoDetaBoleMp.TotaDebo;
            stringBuilder.AppendLine("<tr class=\"Normal\">");
            stringBuilder.AppendLine($"<td>Mes {dtoDetaBoleMp.BimeCtct}</td>");
            stringBuilder.AppendLine($"<td align=\"center\">{dtoDetaBoleMp.CodiFapa}</td>");
            stringBuilder.AppendLine($"<td align=\"center\">{dtoDetaBoleMp.CuotDefa}</td>");
            stringBuilder.AppendLine($"<td align=\"right\">{Moneda(dtoDetaBoleMp.CapiDebo)}</td>");
            stringBuilder.AppendLine($"<td align=\"right\">{Moneda(dtoDetaBoleMp.RecaDebo)}</td>");
            stringBuilder.AppendLine($"<td align=\"right\">{Moneda(dtoDetaBoleMp.InteDebo)}</td>");
            stringBuilder.AppendLine($"<td align=\"right\">{Moneda(dtoDetaBoleMp.DecaDebo + dtoDetaBoleMp.DereDebo)}</td>");
            stringBuilder.AppendLine($"<td align=\"right\">{Moneda(dtoDetaBoleMp.TotaDebo)}</td>");
            stringBuilder.AppendLine("</tr>");
          }
        }
      }
      stringBuilder.AppendLine("<tr class=\"SubTotales\">");
      stringBuilder.AppendLine("<th colspan=\"3\" style=\"text-align:right; background-color:#e6e6e6; color:black;\">TOTAL</th>");
      stringBuilder.AppendLine($"<th style=\"text-align:right;\">{Moneda(valor1)}</th>");
      stringBuilder.AppendLine($"<th style=\"text-align:right;\">{Moneda(valor2)}</th>");
      stringBuilder.AppendLine($"<th style=\"text-align:right;\">{Moneda(valor3)}</th>");
      stringBuilder.AppendLine($"<th style=\"text-align:right;\">{Moneda(valor4)}</th>");
      stringBuilder.AppendLine($"<th style=\"text-align:right;\">{Moneda(valor5)}</th>");
      stringBuilder.AppendLine("</tr>");
      stringBuilder.AppendLine("</table>");
    }
    else if (dto.Servicios.Count > 0)
    {
      Decimal valor6 = 0M;
      Decimal valor7 = 0M;
      Decimal valor8 = 0M;
      stringBuilder.AppendLine("<table width=\"100%\" border=\"1\" cellpadding=\"2\" cellspacing=\"0\">");
      stringBuilder.AppendLine("<tr align=\"center\" class=\"Encabezado\" height=\"25px\">");
      stringBuilder.AppendLine("<th>DETALLE</th>");
      stringBuilder.AppendLine("<th>CANTIDAD</th>");
      stringBuilder.AppendLine("<th>PRECIO UNITARIO</th>");
      stringBuilder.AppendLine("<th>SUBTOTAL</th>");
      stringBuilder.AppendLine("<th>DESCUENTO</th>");
      stringBuilder.AppendLine("<th>TOTAL</th>");
      stringBuilder.AppendLine("</tr>");
      foreach (DTOServiciosVariosMP servicio in dto.Servicios)
      {
        valor6 += servicio.SubtDede;
        valor7 += servicio.DescDede;
        valor8 += servicio.TotaDede;
        stringBuilder.AppendLine("<tr class=\"Normal\">");
        stringBuilder.AppendLine($"<td>{Texto(servicio.DetaSede)}</td>");
        stringBuilder.AppendLine($"<td align=\"center\">{Numero(servicio.CantDede)}</td>");
        stringBuilder.AppendLine($"<td align=\"right\">{Moneda(servicio.PrunDede)}</td>");
        stringBuilder.AppendLine($"<td align=\"right\">{Moneda(servicio.SubtDede)}</td>");
        stringBuilder.AppendLine($"<td align=\"right\">{Moneda(servicio.DescDede)}</td>");
        stringBuilder.AppendLine($"<td align=\"right\">{Moneda(servicio.TotaDede)}</td>");
        stringBuilder.AppendLine("</tr>");
      }
      stringBuilder.AppendLine("<tr class=\"SubTotales\">");
      stringBuilder.AppendLine("<th colspan=\"3\" style=\"text-align:right; background-color:#e6e6e6; color:black;\">TOTAL</th>");
      stringBuilder.AppendLine($"<th style=\"text-align:right;\">{Moneda(valor6)}</th>");
      stringBuilder.AppendLine($"<th style=\"text-align:right;\">{Moneda(valor7)}</th>");
      stringBuilder.AppendLine($"<th style=\"text-align:right;\">{Moneda(valor8)}</th>");
      stringBuilder.AppendLine("</tr>");
      stringBuilder.AppendLine("</table>");
    }
    else
      stringBuilder.AppendLine("<div class=\"Normal\" style=\"text-align:center;\">Sin detalles.</div>");
    return stringBuilder.ToString();

    static string Texto(string valor) => !string.IsNullOrWhiteSpace(valor) ? valor : "---";

    static string Fecha(DateTime valor)
    {
      return !(valor == DateTime.MinValue) ? valor.ToShortDateString() : "---";
    }

    static string Moneda(Decimal valor) => valor.ToString("C2");

    static string Numero(Decimal valor) => valor.ToString("0.##");
  }
}
