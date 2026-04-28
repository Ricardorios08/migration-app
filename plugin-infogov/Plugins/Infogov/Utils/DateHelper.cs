// Decompiled with JetBrains decompiler
// Type: InfoGov.Plugins.Infogov.Utils.DateHelper
// Assembly: plugin-infogov, Version=1.0.0.18780, Culture=neutral, PublicKeyToken=null
// MVID: 33F9E52C-1C9C-4132-80FE-D29F95E246A9
// Assembly location: C:\nomade\para copiar\plugin-infogov.dll

using System;
using System.Collections.Generic;

#nullable disable
namespace InfoGov.Plugins.Infogov.Utils;

public static class DateHelper
{
  public static DateTime CalcularFechaVencimiento(
    DateTime fecha,
    short days,
    List<DateTime> feriados)
  {
    DateTime dateTime = fecha;
    bool flag = true;
    int num = 0;
    while (flag)
    {
      dateTime = dateTime.AddDays(1.0);
      if (dateTime.DayOfWeek != DayOfWeek.Saturday && dateTime.DayOfWeek != DayOfWeek.Sunday && !feriados.Contains(dateTime.Date))
      {
        ++num;
        if (num == (int) days)
          flag = false;
      }
    }
    return dateTime;
  }
}
