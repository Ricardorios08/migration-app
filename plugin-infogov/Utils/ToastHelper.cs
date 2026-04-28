// Decompiled with JetBrains decompiler
// Type: InfoGov.Utils.ToastHelper
// Assembly: plugin-infogov, Version=1.0.0.18780, Culture=neutral, PublicKeyToken=null
// MVID: 33F9E52C-1C9C-4132-80FE-D29F95E246A9
// Assembly location: C:\nomade\para copiar\plugin-infogov.dll

using InfoGov.Forms;
using Microsoft.Win32;
using System;
using System.Drawing;
using System.Windows.Forms;

#nullable disable
namespace InfoGov.Utils;

public static class ToastHelper
{
  public static void ShowOrFallback(
    Form owner,
    string message,
    ToastHelper.ToastType type,
    ToastHelper.ToastPosition position,
    int durationMs = 3000)
  {
    ToastHelper.IsNetFramework48Installed();
    try
    {
      ToastHelper.Show(owner, message, type, position, durationMs);
    }
    catch
    {
      ToastHelper.TryFallbackModal(owner, message);
    }
  }

  private static void TryFallbackModal(Form owner, string message)
  {
    try
    {
      if (owner != null && !owner.IsDisposed)
        new frmMensaje(owner).mostrarConfirmación(message);
      else
        new frmMensaje((Form) null).mostrarConfirmación(message);
    }
    catch
    {
      try
      {
        int num = (int) MessageBox.Show((IWin32Window) owner, message, "Información", MessageBoxButtons.OK, MessageBoxIcon.Asterisk);
      }
      catch
      {
      }
    }
  }

  private static bool IsNetFramework48Installed()
  {
    try
    {
      int? nullable = ToastHelper.GetReleaseFromRegistry(RegistryView.Registry64, "SOFTWARE\\Microsoft\\NET Framework Setup\\NDP\\v4\\Full\\") ?? ToastHelper.GetReleaseFromRegistry(RegistryView.Registry32, "SOFTWARE\\Microsoft\\NET Framework Setup\\NDP\\v4\\Full\\");
      return nullable.HasValue && nullable.Value >= 528040;
    }
    catch
    {
      return false;
    }
  }

  private static int? GetReleaseFromRegistry(RegistryView view, string subkey)
  {
    try
    {
      using (RegistryKey registryKey1 = RegistryKey.OpenBaseKey(RegistryHive.LocalMachine, view))
      {
        using (RegistryKey registryKey2 = registryKey1.OpenSubKey(subkey))
        {
          if (registryKey2 == null)
            return new int?();
          object obj = registryKey2.GetValue("Release");
          return obj == null ? new int?() : new int?(Convert.ToInt32(obj));
        }
      }
    }
    catch
    {
      return new int?();
    }
  }

  public static void Show(
    Form owner,
    string message,
    ToastHelper.ToastType type,
    ToastHelper.ToastPosition position,
    int durationMs = 3000)
  {
    ToastHelper.ToastForm toastForm = new ToastHelper.ToastForm(message, type, durationMs);
    Rectangle rectangle = owner == null || owner.IsDisposed ? Screen.PrimaryScreen.WorkingArea : Screen.FromControl((Control) owner).WorkingArea;
    int num1 = rectangle.Left + 8;
    int num2 = rectangle.Top + 8;
    int x;
    switch (position)
    {
      case ToastHelper.ToastPosition.TopLeft:
      case ToastHelper.ToastPosition.MiddleLeft:
      case ToastHelper.ToastPosition.BottomLeft:
        x = rectangle.Left + 8;
        break;
      case ToastHelper.ToastPosition.TopCenter:
      case ToastHelper.ToastPosition.MiddleCenter:
      case ToastHelper.ToastPosition.BottomCenter:
        x = rectangle.Left + Math.Max(0, (rectangle.Width - toastForm.Width) / 2);
        break;
      default:
        x = rectangle.Right - toastForm.Width - 8;
        break;
    }
    int y;
    switch (position)
    {
      case ToastHelper.ToastPosition.TopLeft:
      case ToastHelper.ToastPosition.TopCenter:
      case ToastHelper.ToastPosition.TopRight:
        y = rectangle.Top + 8;
        break;
      case ToastHelper.ToastPosition.MiddleLeft:
      case ToastHelper.ToastPosition.MiddleCenter:
      case ToastHelper.ToastPosition.MiddleRight:
        y = rectangle.Top + Math.Max(0, (rectangle.Height - toastForm.Height) / 2);
        break;
      default:
        y = rectangle.Bottom - toastForm.Height - 8;
        break;
    }
    toastForm.StartPosition = FormStartPosition.Manual;
    toastForm.Location = new Point(x, y);
    if (owner != null && !owner.IsDisposed)
      toastForm.Show((IWin32Window) owner);
    else
      toastForm.Show();
  }

  public enum ToastType
  {
    Info,
    Success,
    Warning,
    Danger,
  }

  public enum ToastPosition
  {
    TopLeft,
    TopCenter,
    TopRight,
    MiddleLeft,
    MiddleCenter,
    MiddleRight,
    BottomLeft,
    BottomCenter,
    BottomRight,
  }

  private class ToastForm : Form
  {
    private readonly Timer _lifetimeTimer;
    private readonly Timer _fadeTimer;
    private readonly int _durationMs;
    private readonly int _fadeStepMs = 50;
    private readonly double _fadeStepAmount = 0.08;

    public ToastForm(string message, ToastHelper.ToastType type, int durationMs)
    {
      this._durationMs = Math.Max(800, durationMs);
      this.FormBorderStyle = FormBorderStyle.None;
      this.ShowInTaskbar = false;
      this.TopMost = true;
      this.StartPosition = FormStartPosition.Manual;
      this.Opacity = 0.98;
      this.AutoScaleMode = AutoScaleMode.None;
      System.Drawing.Color color1 = System.Drawing.Color.White;
      System.Drawing.Color color2;
      switch (type)
      {
        case ToastHelper.ToastType.Success:
          color2 = System.Drawing.Color.FromArgb(40, 167, 69);
          break;
        case ToastHelper.ToastType.Warning:
          color2 = System.Drawing.Color.FromArgb((int) byte.MaxValue, 193, 7);
          color1 = System.Drawing.Color.Black;
          break;
        case ToastHelper.ToastType.Danger:
          color2 = System.Drawing.Color.FromArgb(220, 53, 69);
          break;
        default:
          color2 = System.Drawing.Color.FromArgb(0, 123, (int) byte.MaxValue);
          break;
      }
      this.BackColor = color2;
      this.Padding = new Padding(14);
      Label label1 = new Label();
      label1.AutoSize = false;
      label1.Dock = DockStyle.Fill;
      label1.ForeColor = color1;
      label1.BackColor = System.Drawing.Color.Transparent;
      label1.Text = message;
      label1.TextAlign = ContentAlignment.MiddleLeft;
      label1.Font = new Font("Segoe UI", 10.5f, FontStyle.Regular);
      Label label2 = label1;
      this.Controls.Add((Control) label2);
      Size size = TextRenderer.MeasureText(message, label2.Font, new Size(520, 0), TextFormatFlags.WordBreak);
      int num1 = 260;
      int val1_1 = 560;
      int val1_2 = num1;
      int width = size.Width;
      Padding padding = this.Padding;
      int left = padding.Left;
      int num2 = width + left;
      padding = this.Padding;
      int right = padding.Right;
      int val2 = num2 + right + 24;
      this.Width = Math.Max(val1_2, val2);
      int height = size.Height;
      padding = this.Padding;
      int top = padding.Top;
      int num3 = height + top;
      padding = this.Padding;
      int bottom = padding.Bottom;
      this.Height = num3 + bottom + 12;
      this.Width = Math.Min(val1_1, this.Width);
      if (type == ToastHelper.ToastType.Warning)
        this.Paint += (PaintEventHandler) ((s, e) =>
        {
          using (Pen pen = new Pen(System.Drawing.Color.FromArgb(120, 0, 0, 0)))
            e.Graphics.DrawRectangle(pen, 0, 0, this.Width - 1, this.Height - 1);
        });
      this._lifetimeTimer = new Timer()
      {
        Interval = this._durationMs
      };
      this._lifetimeTimer.Tick += new EventHandler(this.LifetimeTimer_Tick);
      this._fadeTimer = new Timer()
      {
        Interval = this._fadeStepMs
      };
      this._fadeTimer.Tick += new EventHandler(this.FadeTimer_Tick);
      this.Click += (EventHandler) ((s, e) => this.Close());
      label2.Click += (EventHandler) ((s, e) => this.Close());
    }

    protected override void OnShown(EventArgs e)
    {
      base.OnShown(e);
      this._lifetimeTimer.Start();
    }

    private void LifetimeTimer_Tick(object sender, EventArgs e)
    {
      this._lifetimeTimer.Stop();
      this._fadeTimer.Start();
    }

    private void FadeTimer_Tick(object sender, EventArgs e)
    {
      this.Opacity -= this._fadeStepAmount;
      if (this.Opacity > 0.05)
        return;
      this._fadeTimer.Stop();
      this.Close();
    }

    protected override void Dispose(bool disposing)
    {
      if (disposing)
      {
        this._lifetimeTimer?.Dispose();
        this._fadeTimer?.Dispose();
      }
      base.Dispose(disposing);
    }
  }
}
