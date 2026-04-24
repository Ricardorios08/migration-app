// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Expertos.ExpReporte
// Assembly: plugin-infogov, Version=1.0.0.18780, Culture=neutral, PublicKeyToken=null
// MVID: 33F9E52C-1C9C-4132-80FE-D29F95E246A9
// Assembly location: C:\nomade\para copiar\plugin-infogov.dll

using System.Text;

#nullable disable
namespace InfoGov.Plugins.Infogov.Expertos;

public class ExpReporte
{
  public StringBuilder generateHead(string Title, bool apaisado = false)
  {
    StringBuilder head = new StringBuilder();
    head.AppendLine("<!DOCTYPE html>");
    head.AppendLine("<html lang=\"en\">");
    head.AppendLine("<head>");
    head.AppendLine($"<title>{Title}</title>");
    head.AppendLine("<meta charset=\"UTF-8\">");
    head.Append((object) this.generateHtmlStyle(apaisado));
    return head;
  }

  private StringBuilder generateHtmlStyle(bool apaisado)
  {
    StringBuilder htmlStyle = new StringBuilder();
    if (apaisado)
    {
      htmlStyle.AppendLine("<style type=\"text/css\" media=\"print\">");
      htmlStyle.AppendLine("div.page { ");
      htmlStyle.AppendLine("writing-mode: tb-rl;");
      htmlStyle.AppendLine("height: 80%;");
      htmlStyle.AppendLine("margin: 10% 0%;");
      htmlStyle.AppendLine("}");
      htmlStyle.AppendLine("</style>");
    }
    htmlStyle.AppendLine("<style type=text/css>");
    htmlStyle.AppendLine(".Titulo1 {");
    htmlStyle.AppendLine("font-family: Georgia, \"Times New Roman\", Times, serif;");
    htmlStyle.AppendLine("font-size: 16px;");
    htmlStyle.AppendLine("font-weight: bold;");
    htmlStyle.AppendLine("}");
    htmlStyle.AppendLine(".Titulo2 {");
    htmlStyle.AppendLine("font-family: Georgia, \"Times New Roman\", Times, serif;");
    htmlStyle.AppendLine("font-size: 14px;");
    htmlStyle.AppendLine("font-weight: bold;");
    htmlStyle.AppendLine("border: 1px solid black;");
    htmlStyle.AppendLine("border-collapse: collapse;");
    htmlStyle.AppendLine("}");
    htmlStyle.AppendLine(".Normal {");
    htmlStyle.AppendLine("font-family: Georgia, \"Times New Roman\", Times, serif;");
    htmlStyle.AppendLine("font-size: 12px;");
    htmlStyle.AppendLine("font-style: normal;");
    htmlStyle.AppendLine("font-weight: normal;");
    htmlStyle.AppendLine("font-variant: normal;");
    htmlStyle.AppendLine("}");
    htmlStyle.AppendLine(".Encabezado {");
    htmlStyle.AppendLine("font-family: \"Times New Roman\", Times, serif;");
    htmlStyle.AppendLine("font-size: 14px;");
    htmlStyle.AppendLine("font-weight: bold;");
    htmlStyle.AppendLine("background-color: #D3D3D3;");
    htmlStyle.AppendLine("vertical-align: middle;");
    htmlStyle.AppendLine("text-align:center;");
    htmlStyle.AppendLine("}");
    htmlStyle.AppendLine(".LineaDato {");
    htmlStyle.AppendLine("font-family: \"Courier New\", Courier, monospace;");
    htmlStyle.AppendLine("font-size: 10px;");
    htmlStyle.AppendLine("vertical-align: top;");
    htmlStyle.AppendLine("border: 1px solid black;");
    htmlStyle.AppendLine("border-collapse: collapse;");
    htmlStyle.AppendLine("}");
    htmlStyle.AppendLine(".LDCen {");
    htmlStyle.AppendLine("font-family: \"Courier New\", Courier, monospace;");
    htmlStyle.AppendLine("font-size: 10px;");
    htmlStyle.AppendLine("vertical-align: top;");
    htmlStyle.AppendLine("text-align:center;");
    htmlStyle.AppendLine("}");
    htmlStyle.AppendLine(".margin0 {");
    htmlStyle.AppendLine("font-family: \"Courier New\", Courier, monospace;");
    htmlStyle.AppendLine("font-size: 10px;");
    htmlStyle.AppendLine("vertical-align: top;");
    htmlStyle.AppendLine("text-align:left;");
    htmlStyle.AppendLine("padding-left:10px;");
    htmlStyle.AppendLine("}");
    htmlStyle.AppendLine(".margin2 {");
    htmlStyle.AppendLine("font-family: \"Courier New\", Courier, monospace;");
    htmlStyle.AppendLine("font-size: 10px;");
    htmlStyle.AppendLine("vertical-align: top;");
    htmlStyle.AppendLine("text-align:left;");
    htmlStyle.AppendLine("padding-left:20px;");
    htmlStyle.AppendLine("}");
    htmlStyle.AppendLine(".margin3 {");
    htmlStyle.AppendLine("font-family: \"Courier New\", Courier, monospace;");
    htmlStyle.AppendLine("font-size: 10px;");
    htmlStyle.AppendLine("vertical-align: top;");
    htmlStyle.AppendLine("text-align:left;");
    htmlStyle.AppendLine("padding-left:30px;");
    htmlStyle.AppendLine("}");
    htmlStyle.AppendLine(".margin4 {");
    htmlStyle.AppendLine("font-family: \"Courier New\", Courier, monospace;");
    htmlStyle.AppendLine("font-size: 10px;");
    htmlStyle.AppendLine("vertical-align: top;");
    htmlStyle.AppendLine("text-align:left;");
    htmlStyle.AppendLine("padding-left:40px;");
    htmlStyle.AppendLine("}");
    htmlStyle.AppendLine(".margin5 {");
    htmlStyle.AppendLine("font-family: \"Courier New\", Courier, monospace;");
    htmlStyle.AppendLine("font-size: 10px;");
    htmlStyle.AppendLine("vertical-align: top;");
    htmlStyle.AppendLine("text-align:left;");
    htmlStyle.AppendLine("padding-left:50px;");
    htmlStyle.AppendLine("}");
    htmlStyle.AppendLine(".LDIzq {");
    htmlStyle.AppendLine("font-family: \"Courier New\", Courier, monospace;");
    htmlStyle.AppendLine("font-size: 11px;");
    htmlStyle.AppendLine("vertical-align: top;");
    htmlStyle.AppendLine("text-align:left;");
    htmlStyle.AppendLine("}");
    htmlStyle.AppendLine(".LDDer {");
    htmlStyle.AppendLine("font-family: \"Courier New\", Courier, monospace;");
    htmlStyle.AppendLine("font-size: 10px;");
    htmlStyle.AppendLine("vertical-align: top;");
    htmlStyle.AppendLine("text-align:right;");
    htmlStyle.AppendLine("}");
    htmlStyle.AppendLine(".Totales {");
    htmlStyle.AppendLine("font-family: \"Courier New\", Courier, monospace;");
    htmlStyle.AppendLine("font-size: 14px;");
    htmlStyle.AppendLine("font-weight: bold;");
    htmlStyle.AppendLine("}");
    htmlStyle.AppendLine(".Totales2 {");
    htmlStyle.AppendLine("font-family: \"Courier New\", Courier, monospace;");
    htmlStyle.AppendLine("font-size: 10px;");
    htmlStyle.AppendLine("font-weight: bold;");
    htmlStyle.AppendLine("}");
    htmlStyle.AppendLine(".Totales3 {");
    htmlStyle.AppendLine("font-family: \"Courier New\", Courier, monospace;");
    htmlStyle.AppendLine("font-size: 10px;");
    htmlStyle.AppendLine("font-weight: bold;");
    htmlStyle.AppendLine("}");
    htmlStyle.AppendLine(".Totales4 {");
    htmlStyle.AppendLine("font-family: \"Courier New\", Courier, monospace;");
    htmlStyle.AppendLine("font-size: 10px;");
    htmlStyle.AppendLine("font-weight: bold;");
    htmlStyle.AppendLine("}");
    htmlStyle.AppendLine(".Totales5 {");
    htmlStyle.AppendLine("font-family: \"Courier New\", Courier, monospace;");
    htmlStyle.AppendLine("font-size: 10px;");
    htmlStyle.AppendLine("font-weight: bold;");
    htmlStyle.AppendLine("}");
    htmlStyle.AppendLine(".Firmas {");
    htmlStyle.AppendLine("font-family: Arial, Helvetica, sans-serif;");
    htmlStyle.AppendLine("font-size: 10px;");
    htmlStyle.AppendLine("font-weight: normal;");
    htmlStyle.AppendLine("}");
    htmlStyle.AppendLine(".Proveedor {");
    htmlStyle.AppendLine("font-family: \"Courier New\", Courier, monospace;");
    htmlStyle.AppendLine("font-size: 14px;");
    htmlStyle.AppendLine("}");
    htmlStyle.AppendLine("THEAD { display: table-header-group; }");
    htmlStyle.AppendLine("</style>");
    htmlStyle.AppendLine("</head>");
    return htmlStyle;
  }
}
