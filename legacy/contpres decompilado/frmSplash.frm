VERSION 5.00
Begin VB.Form frmSplash
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 3 'Fixed Dialog
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ControlBox = 0   'False
  Visible = 0   'False
  ClientLeft = 45
  ClientTop = 45
  ClientWidth = 5895
  ClientHeight = 6495
  ShowInTaskbar = 0   'False
  StartUpPosition = 2 'CenterScreen
  Moveable = 0   'False
  Begin VB.Frame fraMainFrame
    Left = 120
    Top = -240
    Width = 5700
    Height = 6615
    TabIndex = 0
    Begin VB.PictureBox picLogo
      Picture = "frmSplash.frx":0000
      Left = 480
      Top = 720
      Width = 4695
      Height = 4905
      TabIndex = 2
      ScaleMode = 1
      AutoRedraw = False
      FontTransparent = True
    End
    Begin VB.Label lblLicenseTo
      Caption = "Producto licenciado a "
      Left = 480
      Top = 360
      Width = 1995
      Height = 240
      TabIndex = 1
      AutoSize = -1  'True
      Tag = "LicenciaA"
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9,75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label lblWarning
      Caption = "Advertencia: Todos los derechos reservados."
      Left = 480
      Top = 6120
      Width = 4110
      Height = 240
      TabIndex = 4
      AutoSize = -1  'True
      Tag = "Advertencia"
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9,75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label lblCopyright
      Caption = "Copyright©  2008/2021 - 647202"
      Left = 480
      Top = 5760
      Width = 2745
      Height = 240
      TabIndex = 3
      AutoSize = -1  'True
      Tag = "Copyright"
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9,75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
End

Attribute VB_Name = "frmSplash"


Private Sub Form_Load() '98F228
  'Data Table: 40984C
  loc_98F1E8: FLdRfVar var_8C
  loc_98F1EB: FLdPr Me
  loc_98F1EE: VCallAd Control_ID_lblLicenseTo
  loc_98F1F1: FStAdFunc var_88
  loc_98F1F4: FLdPr var_88
  loc_98F1F7:  = Me.Caption
  loc_98F1FC: ILdRf var_8C
  loc_98F1FF: LitStr "Municipalidad de Guaymallén"
  loc_98F202: ConcatStr
  loc_98F203: FStStrNoPop var_90
  loc_98F206: FLdPr Me
  loc_98F209: VCallAd Control_ID_lblLicenseTo
  loc_98F20C: FStAdFunc var_94
  loc_98F20F: FLdPr var_94
  loc_98F212: Me.Caption = from_stack_1
  loc_98F217: FFreeStr var_8C = ""
  loc_98F21E: FFreeAd var_88 = ""
  loc_98F225: ExitProcHresult
End Sub
