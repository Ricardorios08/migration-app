// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Recaudacion.Reportes.CuentaCorriente.Maipu.ReportesMP
// Assembly: plugin-recaudacion, Version=1.0.0.18783, Culture=neutral, PublicKeyToken=null
// MVID: 568790AC-642D-4ABE-85AB-E331C53A996B
// Assembly location: C:\nomade\para copiar\plugin-recaudacion.dll

using DevExpress.Utils.Extensions;
using InfoGov.Common;
using InfoGov.Core;
using InfoGov.Plugins.Catastro.Entidades;
using InfoGov.Plugins.Recaudacion.Entidades.CuentaCorriente;
using InfoGov.Resources;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

#nullable disable
namespace InfoGov.Plugins.Recaudacion.Reportes.CuentaCorriente.Maipu;

public class ReportesMP
{
  public string ArmarReporte(DTOReporte datos)
  {
    switch (datos.TipoReporte)
    {
      case TipoReporte.VistaPrevia:
      case TipoReporte.Imprimir:
        return this.ArmarHTMLVistaPrevia(datos);
      default:
        return string.Empty;
    }
  }

  private string ArmarHTMLVistaPrevia(DTOReporte datos)
  {
    List<CCMaipu> list = datos.Movimientos.Cast<CCMaipu>().ToList<CCMaipu>();
    DTODetallesCuentaReporteMP detallesCuenta = datos.DetallesCuenta as DTODetallesCuentaReporteMP;
    bool flag = list != null && list.Any<CCMaipu>();
    StringBuilder html = new StringBuilder();
    html.AppendLine("<!DOCTYPE HTML>");
    html.AppendLine("<html lang= \"es\">");
    html.AppendLine("<head>");
    html.AppendLine("<meta http-equiv=\"Content-Type\" content =\"text/html; charset=utf-8\" />");
    html.AppendLine($"<title>Movimientos de la Cuenta Corriente N° {list.First<CCMaipu>().CuenCtct}</title>");
    html.AppendLine("<style type=\"text/css\">");
    html.AppendLine(HtmlStyles.EstiloReportesMaipu());
    html.AppendLine("</style>");
    html.AppendLine("</head>");
    html.AppendLine("<body>");
    html.AppendLine("<table width=\"100%\" border=\"0\" align=\"center\" class=\"Titulo2\" style=\"table-layout: fixed;\">");
    html.AppendLine("<tr valign=\"baseline\">");
    html.AppendLine("<th width=\"25 % \" valign=\"bottom\" colspan=4 align=center>");
    html.AppendLine($"<img alt=Logo src={ImagesManager.getInstance().getImageBase64("LogoMaipuBoleto.png", "Logos")} align=left height=\"110px\">");
    html.AppendLine("</th>");
    html.AppendLine("<th width=\"50 % \" valign=\"bottom\" colspan=4 align=center>");
    html.AppendLine($"<p class=\"Titulo1\" align=\"center\">{PARAMS.NombreLargoMunicipio}</p>");
    html.AppendLine("<div style=\"font-weight: normal;\">");
    html.AppendLine($"<span align=\"center\">Movimientos de la Cuenta Corriente de <b>{datos.DatosCuenta.DetaOfic}</b> N° {list.First<CCMaipu>().CuenCtct}</span><br>");
    html.AppendLine("</div>");
    html.AppendLine("</th>");
    html.AppendLine("<th width=\"25 % \" valign=\"bottom\" colspan=4 align=center>");
    html.AppendLine($"<img alt=Logo src={ImagesManager.getInstance().getImageBase64("LogoMalvinas.png", "Logos")} align=right height=\"80px\" width=\"150px\">");
    html.AppendLine("</th>");
    html.AppendLine("</tr>");
    html.AppendLine("</table>");
    html.AppendLine("<table width=\"100%\" border=\"0\" align=\"center\" class=\"Titulo2\">");
    html.AppendLine("<tr><th><hr></th></tr>");
    html.AppendLine("<tr align=\"right\"><th>");
    html.AppendLine($"<span <span class=\"Normal\"><b>{PARAMS.NombreCortoMunicipio}, {Misc.Now(false):D}</b></span><br>");
    html.AppendLine("</th></tr>");
    html.AppendLine("<tr align=\"left\"><th>");
    html.AppendLine("<span <span class=\"Normal\">RELACIONES</span><br>");
    if (detallesCuenta.Relaciones != null && detallesCuenta.Relaciones.Any<Relacion>())
      detallesCuenta.Relaciones.GroupBy<Relacion, string>((Func<Relacion, string>) (r => r.TipoRela)).ToList<IGrouping<string, Relacion>>().ForEach((Action<IGrouping<string, Relacion>>) (rela => html.AppendLine($"{rela.First<Relacion>().TipoRela.ToUpper()}: <span class=\"Normal\">{string.Join(", ", rela.Select<Relacion, string>((Func<Relacion, string>) (r => $"{r.CucuPers.ToString()} - {r.DetaPers}")))}</span><br>")));
    else
      html.AppendLine("<span>SIN DATOS</span>");
    html.AppendLine("<br>");
    html.AppendLine("<span <span class=\"Normal\">DOMICILIOS</span><br>");
    if (detallesCuenta.Domicilios != null && detallesCuenta.Domicilios.Any<DomInmuebleMP>())
      EnumerableExtensions.ForEach<DomInmuebleMP>((IEnumerable<DomInmuebleMP>) detallesCuenta.Domicilios.Where<DomInmuebleMP>((Func<DomInmuebleMP, bool>) (dom => dom.PrinDomi)).OrderBy<DomInmuebleMP, short>((Func<DomInmuebleMP, short>) (dom => dom.CodiTido)), (Action<DomInmuebleMP>) (domi => html.AppendLine($"{domi.DetaTido.ToUpper()}: <span class=\"Normal\">{FDD(domi.Calle)} N° {FDD(domi.NumeCalle)} Mzna/Casa: {FDD(domi.ManzCasa)} Piso: {FDD(domi.Piso)} Dpto: {FDD(domi.Dpto)} Bloque: {FDD(domi.Bloque)} - B°: {FDD(domi.Barrio)} - Localidad: {FDD(domi.Localidad)} - Distrito: {FDD(domi.Distrito)}</span><br>")));
    else
      html.AppendLine("<span>SIN DATOS</span>");
    html.AppendLine("</th>");
    html.AppendLine("</tr>");
    html.AppendLine("</table>");
    html.AppendLine("<tr><th><hr></th></tr>");
    html.AppendLine("<table width=\"100% \" border=\"2\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">");
    html.AppendLine("<thead>");
    html.AppendLine("<tr align=\"center\" class=\"Encabezado\" height=25px><th colspan=\"4\">RESUMEN</th></tr>");
    html.AppendLine("<tr align=\"center\" class=\"Encabezado\" height=25px>");
    html.AppendLine("<th rowspan=\"2\">Detalle</th>");
    html.AppendLine("<th rowspan=\"2\">Débito</th>");
    html.AppendLine("<th rowspan=\"2\">Recargo</th>");
    html.AppendLine("<th rowspan=\"2\">Total</th>");
    html.AppendLine("</tr></thead>");
    html.AppendLine("<tbody>");
    if (flag)
    {
      list.ForEach((Action<CCMaipu>) (mov =>
      {
        html.AppendLine("<tr class=\"Normal\" valign=\"top\">");
        html.AppendLine($"<th vAlign=\"top\" align=left><b>{mov.Detalle}</b></th>");
        if (mov.Saldo != 0M)
          html.AppendLine($"<td vAlign=center align=right>{mov.Saldo:C2}</td>");
        else
          html.AppendLine("<td vAlign=center align=center>---</td>");
        if (mov.Recargo != 0M)
          html.AppendLine($"<td vAlign=center align=right>{mov.Recargo:C2}</td>");
        else
          html.AppendLine("<td vAlign=center align=center>---</td>");
        if (mov.Total != 0M)
          html.AppendLine($"<td vAlign=center align=right>{mov.Total:C2}</td>");
        else
          html.AppendLine("<td vAlign=center align=center>---</td>");
        html.AppendLine("</tr>");
      }));
      html.AppendLine("<tr class=\"Totales\">");
      html.AppendLine("<td vAlign=center align=center>TOTALES</td>");
      html.AppendLine($"<td vAlign=center align=right>{list.Sum<CCMaipu>((Func<CCMaipu, Decimal>) (s => s.Saldo)):C2}</td>");
      html.AppendLine($"<td vAlign=center align=right>{list.Sum<CCMaipu>((Func<CCMaipu, Decimal>) (s => s.Recargo)):C2}</td>");
      html.AppendLine($"<td vAlign=center align=right>{list.Sum<CCMaipu>((Func<CCMaipu, Decimal>) (s => s.Total)):C2}</td>");
      html.AppendLine("</tr>");
    }
    else
    {
      html.AppendLine("<tr class=\"Totales\">");
      html.AppendLine("<td vAlign=center align=center>SIN MOVIMIENTOS</td>");
      html.AppendLine($"<td vAlign=center align=right>{0:C2}</td>");
      html.AppendLine($"<td vAlign=center align=right>{0:C2}</td>");
      html.AppendLine($"<td vAlign=center align=right>{0:C2}</td>");
      html.AppendLine("</tr>");
    }
    html.AppendLine("</tbody>");
    html.AppendLine("</table>");
    html.AppendLine("<br><br>");
    if (flag)
    {
      html.AppendLine("<table width=\"100% \" border=\"2\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">");
      html.AppendLine("<thead>");
      html.AppendLine("<tr align=\"center\" class=\"Encabezado\" height=25px><th colspan=\"11\">DETALLE DE MOVIMIENTOS</th></tr>");
      html.AppendLine("</thead>");
      list.ForEach((Action<CCMaipu>) (mov =>
      {
        switch (mov.Tipo)
        {
          case TipoResumenMP.Comun:
            html.AppendLine("<thead>");
            html.AppendLine("<tr align=\"center\" class=\"Encabezado\" height=25px><th colspan=\"11\">DEUDA COMÚN</th></tr>");
            html.AppendLine("<tr align=\"center\" class=\"Encabezado\" height=25px>");
            html.AppendLine("<th rowspan=\"2\">Periodo</th>");
            html.AppendLine("<th rowspan=\"2\">Fecha Emisión</th>");
            html.AppendLine("<th rowspan=\"2\" colspan=\"2\">Concepto</th>");
            html.AppendLine("<th rowspan=\"2\" colspan=\"2\">Detalle</th>");
            html.AppendLine("<th rowspan=\"2\">Tipo Mov.</th>");
            html.AppendLine("<th rowspan=\"2\">Débito</th>");
            html.AppendLine("<th rowspan=\"2\">Crédito</th>");
            html.AppendLine("<th rowspan=\"2\">Recargo</th>");
            html.AppendLine("<th rowspan=\"2\">Saldo Final</th>");
            html.AppendLine("</tr>");
            html.AppendLine("</thead>");
            html.AppendLine("<tbody>");
            mov.Detalles.ForEach((Action<DetaCCMaipu>) (deta =>
            {
              html.AppendLine("<tr class=\"Normal\" valign=\"top\">");
              html.AppendLine($"<th vAlign=\"top\" align=center><b>{deta.PeriBimestre}</b></th>");
              html.AppendLine($"<th vAlign=\"top\" align=center><b>{deta.FealCtctStr}</b></th>");
              html.AppendLine($"<th vAlign=\"top\" align=left colspan=\"2\"><b>{deta.DetaConc}</b></th>");
              html.AppendLine($"<th vAlign=\"top\" align={(string.IsNullOrWhiteSpace(deta.ExpeCtct) ? "center" : "left")} colspan=\"2\"><b>{FDM(deta.ExpeCtct)}</b></th>");
              html.AppendLine($"<th vAlign=\"top\" align=center><b>{deta.DetaTimo}</b></th>");
              html.AppendLine($"<th vAlign=\"top\" align=right><b>{deta.DebeCtct:C2}</b></th>");
              html.AppendLine($"<th vAlign=\"top\" align=right><b>{deta.CredCtct:C2}</b></th>");
              html.AppendLine($"<th vAlign=\"top\" align=right><b>{deta.RecaCtct:C2}</b></th>");
              html.AppendLine($"<th vAlign=\"top\" align=right><b>{deta.SaldCtct:C2}</b></th>");
              html.AppendLine("</tr>");
            }));
            html.AppendLine("<tr class=\"SubTotales\" vAlign=top>");
            html.AppendLine("<td vAlign=center align=center colspan=\"7\">Subtotal</td>");
            Decimal num1 = mov.Detalles.Sum<DetaCCMaipu>((Func<DetaCCMaipu, Decimal>) (s => s.DebeCtct));
            Decimal num2 = mov.Detalles.Sum<DetaCCMaipu>((Func<DetaCCMaipu, Decimal>) (s => s.CredCtct));
            Decimal num3 = mov.Detalles.Sum<DetaCCMaipu>((Func<DetaCCMaipu, Decimal>) (s => s.RecaCtct));
            Decimal num4 = mov.Detalles.Sum<DetaCCMaipu>((Func<DetaCCMaipu, Decimal>) (s => s.SaldCtct));
            html.AppendLine($"<td vAlign=center align=right>{num1:C2}</td>");
            html.AppendLine($"<td vAlign=center align=right>{num2:C2}</td>");
            html.AppendLine($"<td vAlign=center align=right>{num3:C2}</td>");
            html.AppendLine($"<td vAlign=center align=right>{num4:C2}</td>");
            html.AppendLine("</tr>");
            html.AppendLine("</tbody>");
            break;
          case TipoResumenMP.Apremio:
            html.AppendLine("<thead>");
            html.AppendLine("<tr align=\"center\" class=\"Encabezado\" height=25px><th colspan=\"11\">DEUDA DE APREMIO</th></tr>");
            html.AppendLine("<tr align=\"center\" class=\"Encabezado\" height=25px>");
            html.AppendLine("<th rowspan=\"2\">N° Apremio</th>");
            html.AppendLine("<th rowspan=\"2\">Fecha Emisión</th>");
            html.AppendLine("<th rowspan=\"2\" colspan=\"2\">Concepto</th>");
            html.AppendLine("<th rowspan=\"2\" colspan=\"2\">Detalle</th>");
            html.AppendLine("<th rowspan=\"2\">Apremio</th>");
            html.AppendLine("<th rowspan=\"2\">Débito</th>");
            html.AppendLine("<th rowspan=\"2\">Crédito</th>");
            html.AppendLine("<th rowspan=\"2\">Recargo</th>");
            html.AppendLine("<th rowspan=\"2\">Saldo Final</th>");
            html.AppendLine("</tr>");
            html.AppendLine("</thead>");
            html.AppendLine("<tbody>");
            mov.Detalles.ForEach((Action<DetaCCMaipu>) (deta =>
            {
              html.AppendLine("<tr class=\"Normal\" valign=\"top\">");
              html.AppendLine($"<th vAlign=\"top\" align=center><b>{deta.NumeApre}</b></th>");
              html.AppendLine($"<th vAlign=\"top\" align=center><b>{deta.FealCtctStr}</b></th>");
              html.AppendLine($"<th vAlign=\"top\" align=left colspan=\"2\"><b>{deta.DetaConc}</b></th>");
              html.AppendLine($"<th vAlign=\"top\" align={(string.IsNullOrWhiteSpace(deta.ExpeCtct) ? "center" : "left")} colspan=\"2\"><b>{FDM(deta.ExpeCtct)}</b></th>");
              html.AppendLine($"<th vAlign=\"top\" align=right><b>{deta.ApreCtct:C2}</b></th>");
              html.AppendLine($"<th vAlign=\"top\" align=right><b>{deta.DebeCtct:C2}</b></th>");
              html.AppendLine($"<th vAlign=\"top\" align=right><b>{deta.CredCtct:C2}</b></th>");
              html.AppendLine($"<th vAlign=\"top\" align=right><b>{deta.RecaCtct:C2}</b></th>");
              html.AppendLine($"<th vAlign=\"top\" align=right><b>{deta.SaldCtct:C2}</b></th>");
              html.AppendLine("</tr>");
            }));
            html.AppendLine("<tr class=\"SubTotales\" vAlign=top>");
            html.AppendLine("<td vAlign=center align=center colspan=\"6\">Subtotal</td>");
            Decimal num5 = mov.Detalles.Sum<DetaCCMaipu>((Func<DetaCCMaipu, Decimal>) (s => s.DebeCtct));
            Decimal num6 = mov.Detalles.Sum<DetaCCMaipu>((Func<DetaCCMaipu, Decimal>) (s => s.CredCtct));
            Decimal num7 = mov.Detalles.Sum<DetaCCMaipu>((Func<DetaCCMaipu, Decimal>) (s => s.RecaCtct));
            Decimal num8 = mov.Detalles.Sum<DetaCCMaipu>((Func<DetaCCMaipu, Decimal>) (s => s.ApreCtct));
            Decimal num9 = mov.Detalles.Sum<DetaCCMaipu>((Func<DetaCCMaipu, Decimal>) (s => s.SaldCtct));
            html.AppendLine($"<td vAlign=center align=right>{num5:C2}</td>");
            html.AppendLine($"<td vAlign=center align=right>{num6:C2}</td>");
            html.AppendLine($"<td vAlign=center align=right>{num7:C2}</td>");
            html.AppendLine($"<td vAlign=center align=right>{num8:C2}</td>");
            html.AppendLine($"<td vAlign=center align=right>{num9:C2}</td>");
            html.AppendLine("</tr>");
            html.AppendLine("</tbody>");
            break;
          case TipoResumenMP.Facilidad:
            html.AppendLine("<thead>");
            html.AppendLine("<tr align=\"center\" class=\"Encabezado\" height=25px><th colspan=\"11\">FACILIDADES DE PAGO</th></tr>");
            html.AppendLine("<tr align=\"center\" class=\"Encabezado\" height=25px>");
            html.AppendLine("<th rowspan=\"2\" colspan=\"3\">N° Facilidad</th>");
            html.AppendLine("<th rowspan=\"2\" colspan=\"2\">N° Cuota</th>");
            html.AppendLine("<th rowspan=\"2\" colspan=\"2\">Estado</th>");
            html.AppendLine("<th rowspan=\"2\">Débito</th>");
            html.AppendLine("<th rowspan=\"2\">Crédito</th>");
            html.AppendLine("<th rowspan=\"2\">Recargo</th>");
            html.AppendLine("<th rowspan=\"2\">Saldo Final</th>");
            html.AppendLine("</tr>");
            html.AppendLine("</thead>");
            html.AppendLine("<tbody>");
            mov.Detalles.ForEach((Action<DetaCCMaipu>) (deta =>
            {
              html.AppendLine("<tr class=\"Normal\" valign=\"top\">");
              html.AppendLine($"<th vAlign=\"top\" align=center colspan=\"3\"><b>{deta.CodiFapa}</b></th>");
              html.AppendLine($"<th vAlign=\"top\" align=center colspan=\"2\"><b>{deta.ExpeCtct}</b></th>");
              html.AppendLine($"<th vAlign=\"top\" align=center colspan=\"2\"><b>{deta.EstaDefa}</b></th>");
              html.AppendLine($"<th vAlign=\"top\" align=right><b>{deta.DebeCtct:C2}</b></th>");
              html.AppendLine($"<th vAlign=\"top\" align=right><b>{deta.CredCtct:C2}</b></th>");
              html.AppendLine($"<th vAlign=\"top\" align=right><b>{deta.RecaCtct:C2}</b></th>");
              html.AppendLine($"<th vAlign=\"top\" align=right><b>{deta.SaldCtct:C2}</b></th>");
              html.AppendLine("</tr>");
            }));
            html.AppendLine("<tr class=\"SubTotales\" vAlign=top>");
            html.AppendLine("<td vAlign=center align=center colspan=\"7\">Subtotal</td>");
            Decimal num10 = mov.Detalles.Sum<DetaCCMaipu>((Func<DetaCCMaipu, Decimal>) (s => s.DebeCtct));
            Decimal num11 = mov.Detalles.Sum<DetaCCMaipu>((Func<DetaCCMaipu, Decimal>) (s => s.CredCtct));
            Decimal num12 = mov.Detalles.Sum<DetaCCMaipu>((Func<DetaCCMaipu, Decimal>) (s => s.RecaCtct));
            Decimal num13 = mov.Detalles.Sum<DetaCCMaipu>((Func<DetaCCMaipu, Decimal>) (s => s.SaldCtct));
            html.AppendLine($"<td vAlign=center align=right>{num10:C2}</td>");
            html.AppendLine($"<td vAlign=center align=right>{num11:C2}</td>");
            html.AppendLine($"<td vAlign=center align=right>{num12:C2}</td>");
            html.AppendLine($"<td vAlign=center align=right>{num13:C2}</td>");
            html.AppendLine("</tr>");
            html.AppendLine("</tbody>");
            break;
          case TipoResumenMP.Historico:
            html.AppendLine("<thead>");
            html.AppendLine("<tr align=\"center\" class=\"Encabezado\" height=25px><th colspan=\"11\">SALDO HISTORICO</th></tr>");
            html.AppendLine("<tr align=\"center\" class=\"Encabezado\" height=25px>");
            html.AppendLine("<th rowspan=\"2\">Periodo</th>");
            html.AppendLine("<th rowspan=\"2\">N° Facilidad</th>");
            html.AppendLine("<th rowspan=\"2\">N° Apremio</th>");
            html.AppendLine("<th rowspan=\"2\">Fecha Emisión</th>");
            html.AppendLine("<th rowspan=\"2\">Concepto</th>");
            html.AppendLine("<th rowspan=\"2\">Detalle</th>");
            html.AppendLine("<th rowspan=\"2\">Tipo Mov.</th>");
            html.AppendLine("<th rowspan=\"2\">Débito</th>");
            html.AppendLine("<th rowspan=\"2\">Crédito</th>");
            html.AppendLine("<th rowspan=\"2\">Recargo</th>");
            html.AppendLine("<th rowspan=\"2\">Saldo Final</th>");
            html.AppendLine("</tr>");
            html.AppendLine("</thead>");
            html.AppendLine("<tbody>");
            mov.Detalles.ForEach((Action<DetaCCMaipu>) (deta =>
            {
              html.AppendLine("<tr class=\"Normal\" valign=\"top\">");
              html.AppendLine($"<th vAlign=\"top\" align=center><b>{deta.PeriBimestre}</b></th>");
              html.AppendLine($"<th vAlign=\"top\" align=center><b>{deta.CodiFapa}</b></th>");
              html.AppendLine($"<th vAlign=\"top\" align=center><b>{deta.NumeApre}</b></th>");
              html.AppendLine($"<th vAlign=\"top\" align=center><b>{deta.FealCtctStr}</b></th>");
              html.AppendLine($"<th vAlign=\"top\" align=left><b>{deta.DetaConc}</b></th>");
              html.AppendLine($"<th vAlign=\"top\" align={(string.IsNullOrWhiteSpace(deta.ExpeCtct) ? "center" : "left")}><b>{FDM(deta.ExpeCtct)}</b></th>");
              html.AppendLine($"<th vAlign=\"top\" align=center><b>{deta.DetaTimo}</b></th>");
              html.AppendLine($"<th vAlign=\"top\" align=right><b>{deta.DebeCtct:C2}</b></th>");
              html.AppendLine($"<th vAlign=\"top\" align=right><b>{deta.CredCtct:C2}</b></th>");
              html.AppendLine($"<th vAlign=\"top\" align=right><b>{deta.RecaCtct:C2}</b></th>");
              html.AppendLine($"<th vAlign=\"top\" align=right><b>{deta.SaldCtct:C2}</b></th>");
              html.AppendLine("</tr>");
            }));
            html.AppendLine("<tr class=\"SubTotales\" vAlign=top>");
            html.AppendLine("<td vAlign=center align=center colspan=\"7\">Subtotal</td>");
            Decimal num14 = mov.Detalles.Sum<DetaCCMaipu>((Func<DetaCCMaipu, Decimal>) (s => s.DebeCtct));
            Decimal num15 = mov.Detalles.Sum<DetaCCMaipu>((Func<DetaCCMaipu, Decimal>) (s => s.CredCtct));
            Decimal num16 = mov.Detalles.Sum<DetaCCMaipu>((Func<DetaCCMaipu, Decimal>) (s => s.RecaCtct));
            Decimal num17 = mov.Detalles.Sum<DetaCCMaipu>((Func<DetaCCMaipu, Decimal>) (s => s.SaldCtct));
            html.AppendLine($"<td vAlign=center align=right>{num14:C2}</td>");
            html.AppendLine($"<td vAlign=center align=right>{num15:C2}</td>");
            html.AppendLine($"<td vAlign=center align=right>{num16:C2}</td>");
            html.AppendLine($"<td vAlign=center align=right>{num17:C2}</td>");
            html.AppendLine("</tr>");
            html.AppendLine("</tbody>");
            break;
        }
      }));
      html.AppendLine("</table>");
    }
    html.AppendLine("<br><br>");
    if (flag)
    {
      html.AppendLine("<table width=\"260px\" border=\"1\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">");
      html.AppendLine("<thead><tr align=\"center\" class=\"Encabezado\" height=25px><th colspan=\"2\">SALDOS FINALES</th></tr></thead>");
      html.AppendLine("<tbody>");
      html.AppendLine($"<tr class=\"Normal\" valign=\"top\"><th vAlign=\"top\" align=right><b>Derecho:</b></th><th vAlign=\"top\" align=right><b>{list.Sum<CCMaipu>((Func<CCMaipu, Decimal>) (x => x.Detalles.Sum<DetaCCMaipu>((Func<DetaCCMaipu, Decimal>) (s => s.DebeCtct)))):C2}</b></th></tr>");
      html.AppendLine($"<tr class=\"Normal\" valign=\"top\"><th vAlign=\"top\" align=right><b>Crédito:</b></th><th vAlign=\"top\" align=right><b>{list.Sum<CCMaipu>((Func<CCMaipu, Decimal>) (x => x.Detalles.Sum<DetaCCMaipu>((Func<DetaCCMaipu, Decimal>) (s => s.CredCtct)))):C2}</b></th></tr>");
      html.AppendLine($"<tr class=\"Normal\" valign=\"top\"><th vAlign=\"top\" align=right><b>Recargo:</b></th><th vAlign=\"top\" align=right><b>{list.Sum<CCMaipu>((Func<CCMaipu, Decimal>) (x => x.Detalles.Sum<DetaCCMaipu>((Func<DetaCCMaipu, Decimal>) (s => s.RecaCtct)))):C2}</b></th></tr>");
      html.AppendLine($"<tr class=\"Normal\" valign=\"top\"><th vAlign=\"top\" align=right><b>Apremio:</b></th><th vAlign=\"top\" align=right><b>{list.Sum<CCMaipu>((Func<CCMaipu, Decimal>) (x => x.Detalles.Sum<DetaCCMaipu>((Func<DetaCCMaipu, Decimal>) (s => s.ApreCtct)))):C2}</b></th></tr>");
      html.AppendLine($"<tr class=\"Normal\" valign=\"top\"><th vAlign=\"top\" align=right><b>TOTAL:</b></th><th vAlign=\"top\" align=right><b>{list.Sum<CCMaipu>((Func<CCMaipu, Decimal>) (x => x.Detalles.Sum<DetaCCMaipu>((Func<DetaCCMaipu, Decimal>) (s => s.TotaCtct)))):C2}</b></th></tr>");
      html.AppendLine("</tbody>");
      html.AppendLine("</table>");
    }
    html.AppendLine("</body>");
    html.AppendLine("</html>");
    return html.ToString();

    static string FDD(string dato) => !string.IsNullOrWhiteSpace(dato) ? dato : "SIN DATOS";

    static string FDM(string dato) => !string.IsNullOrWhiteSpace(dato) ? dato : "-";
  }
}
