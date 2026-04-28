VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{BDC217C8-ED16-11CD-956C0000C04E4C0A}#1.1#0"; "C:\Windows\SysWow64\TABCTL32.OCX"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptCertificadodeLibreDeuda
  Caption = "Certificado de Libre Deuda"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptCertificadodeLibreDeuda.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 10908
  ClientHeight = 9300
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 12
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 9045
    Width = 10905
    Height = 255
    TabIndex = 48
    OleObjectBlob = "rptCertificadodeLibreDeuda.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 9600
    Top = 8040
    Width = 855
    Height = 735
    TabIndex = 45
    Cancel = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 7,8
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Picture = "rptCertificadodeLibreDeuda.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptCertificadodeLibreDeuda.frx":0B9C
    Left = 6720
    Top = 8160
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 4320
    Top = 7800
    Width = 1815
    Height = 1215
    TabIndex = 43
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 615
      TabIndex = 44
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 7800
    Width = 4095
    Height = 1215
    TabIndex = 40
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1920
      Top = 360
      Width = 2055
      Height = 615
      TabIndex = 42
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1695
      Height = 615
      TabIndex = 41
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 10695
    Height = 7695
    TabIndex = 46
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 7,8
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.Frame Frame5
      Caption = "Certifica:"
      Left = 120
      Top = 4800
      Width = 10455
      Height = 1575
      TabIndex = 32
      Begin VB.ComboBox CertificaCbo
        Style = 2
        Left = 120
        Top = 360
        Width = 10215
        Height = 420
        TabIndex = 33
        IntegralHeight = 0   'False
      End
      Begin VB.Label CertificaLbl
        Caption = "Certifica"
        Left = 120
        Top = 840
        Width = 10185
        Height = 660
        TabIndex = 34
      End
    End
    Begin VB.Frame Frame4
      Caption = "A solicitud de:"
      Left = 120
      Top = 6480
      Width = 10455
      Height = 1095
      TabIndex = 35
      Begin VB.TextBox InteresadoTxt
        Left = 1080
        Top = 480
        Width = 7335
        Height = 420
        TabIndex = 37
        MaxLength = 100
      End
      Begin MSMask.MaskEdBox DNIInteresadoMsk
        Left = 9120
        Top = 480
        Width = 1215
        Height = 420
        TabIndex = 39
        OleObjectBlob = "rptCertificadodeLibreDeuda.frx":0C00
      End
      Begin VB.Label Label4
        Caption = "DNI:"
        Left = 8520
        Top = 480
        Width = 480
        Height = 300
        TabIndex = 38
        AutoSize = -1  'True
      End
      Begin VB.Label Label3
        Caption = "Nombre:"
        Left = 120
        Top = 480
        Width = 900
        Height = 300
        TabIndex = 36
        AutoSize = -1  'True
      End
    End
    Begin TabDlg.SSTab ssTab
      Left = 120
      Top = 1080
      Width = 10455
      Height = 3615
      TabIndex = 1
      OleObjectBlob = "rptCertificadodeLibreDeuda.frx":0C98
      Begin VB.TextBox ObseInNCTxt
        Left = -68520
        Top = 1800
        Width = 3855
        Height = 1500
        TabIndex = 27
        MultiLine = -1  'True
        MaxLength = 300
        ToolTipText = "No es necesario ingresar el punto final ya que se adiciona automáticamente."
      End
      Begin VB.TextBox ObseDevaTxt
        Left = -73080
        Top = 1560
        Width = 8295
        Height = 1620
        TabIndex = 31
        MultiLine = -1  'True
        MaxLength = 300
        ToolTipText = "No es necesario ingresar el punto final ya que se adiciona automáticamente."
      End
      Begin VB.CommandButton HastaInmuCmd
        Left = 3600
        Top = 1260
        Width = 375
        Height = 375
        TabIndex = 9
        BeginProperty Font
          Name = "MS Sans Serif"
          Size = 7,8
          Charset = 0
          Weight = 400
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
        Picture = "rptCertificadodeLibreDeuda.frx":158E
        Style = 1
        CausesValidation = 0   'False
      End
      Begin VB.CommandButton HastaComeCmd
        Left = -71280
        Top = 1020
        Width = 375
        Height = 375
        TabIndex = 4
        BeginProperty Font
          Name = "MS Sans Serif"
          Size = 7,8
          Charset = 0
          Weight = 400
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
        Picture = "rptCertificadodeLibreDeuda.frx":1AD0
        Style = 1
        CausesValidation = 0   'False
      End
      Begin VB.ComboBox TipoDNICbo
        Style = 2
        Left = -73680
        Top = 1380
        Width = 1575
        Height = 420
        TabIndex = 14
      End
      Begin VB.TextBox CPTxt
        Left = -69840
        Top = 2940
        Width = 975
        Height = 420
        TabIndex = 25
        MaxLength = 15
      End
      Begin VB.TextBox LocalidadTxt
        Left = -73680
        Top = 2940
        Width = 3375
        Height = 420
        TabIndex = 23
        MaxLength = 30
      End
      Begin VB.TextBox UbicacionTxt
        Left = -73680
        Top = 2460
        Width = 3375
        Height = 420
        TabIndex = 21
        MaxLength = 80
      End
      Begin VB.TextBox CalleTxt
        Left = -73680
        Top = 1980
        Width = 3375
        Height = 420
        TabIndex = 17
        MaxLength = 40
      End
      Begin VB.TextBox NombreTxt
        Left = -73680
        Top = 900
        Width = 9015
        Height = 420
        TabIndex = 13
        MaxLength = 50
      End
      Begin VB.CheckBox ComercioChk
        Caption = "Comercio"
        Left = -69360
        Top = 540
        Width = 1335
        Height = 300
        TabIndex = 11
      End
      Begin VB.CheckBox InmuebleChk
        Caption = "Inmueble"
        Left = -71400
        Top = 540
        Width = 1335
        Height = 300
        TabIndex = 10
      End
      Begin VB.ComboBox ConceptoCbo
        Left = -73080
        Top = 1020
        Width = 8295
        Height = 420
        TabIndex = 29
      End
      Begin VB.ComboBox RubroCbo
        Style = 2
        Left = -73680
        Top = 1500
        Width = 8775
        Height = 420
        TabIndex = 6
      End
      Begin MSMask.MaskEdBox DNIMsk
        Left = -72000
        Top = 1380
        Width = 1695
        Height = 420
        TabIndex = 15
        OleObjectBlob = "rptCertificadodeLibreDeuda.frx":2012
      End
      Begin MSMask.MaskEdBox NucaMsk
        Left = -69840
        Top = 1980
        Width = 975
        Height = 420
        TabIndex = 19
        OleObjectBlob = "rptCertificadodeLibreDeuda.frx":20B0
      End
      Begin MSMask.MaskEdBox HastaComeMsk
        Left = -72720
        Top = 1020
        Width = 1335
        Height = 360
        TabIndex = 3
        OleObjectBlob = "rptCertificadodeLibreDeuda.frx":2144
      End
      Begin MSMask.MaskEdBox HastaInmuMsk
        Left = 2160
        Top = 1260
        Width = 1335
        Height = 360
        TabIndex = 8
        OleObjectBlob = "rptCertificadodeLibreDeuda.frx":21F4
      End
      Begin VB.Label Label17
        Caption = "Observaciones:"
        Left = -68520
        Top = 1440
        Width = 1635
        Height = 300
        TabIndex = 26
        AutoSize = -1  'True
      End
      Begin VB.Label Label16
        Caption = "Observaciones:"
        Left = -74820
        Top = 1560
        Width = 1635
        Height = 300
        TabIndex = 30
        AutoSize = -1  'True
      End
      Begin VB.Label Label13
        Caption = "Hasta:"
        Left = 1320
        Top = 1260
        Width = 705
        Height = 300
        TabIndex = 7
        AutoSize = -1  'True
      End
      Begin VB.Label Label6
        Caption = "Hasta:"
        Left = -73605
        Top = 1020
        Width = 705
        Height = 300
        TabIndex = 2
        AutoSize = -1  'True
      End
      Begin VB.Label Label12
        Caption = "CP:"
        Left = -70260
        Top = 2940
        Width = 375
        Height = 300
        TabIndex = 24
        AutoSize = -1  'True
      End
      Begin VB.Label Label11
        Caption = "Localidad:"
        Left = -74880
        Top = 2940
        Width = 1080
        Height = 300
        TabIndex = 22
        AutoSize = -1  'True
      End
      Begin VB.Label Label10
        Caption = "Ubicación:"
        Left = -74910
        Top = 2460
        Width = 1110
        Height = 300
        TabIndex = 20
        AutoSize = -1  'True
      End
      Begin VB.Label Label9
        Caption = "Nº:"
        Left = -70200
        Top = 1980
        Width = 315
        Height = 300
        TabIndex = 18
        AutoSize = -1  'True
      End
      Begin VB.Label Label8
        Caption = "Calle:"
        Left = -74385
        Top = 1980
        Width = 585
        Height = 300
        TabIndex = 16
        AutoSize = -1  'True
      End
      Begin VB.Label Label7
        Caption = "Apellido y Nombre:"
        Left = -74805
        Top = 780
        Width = 1005
        Height = 540
        TabIndex = 12
      End
      Begin VB.Label Label5
        Caption = "Concepto:"
        Left = -74280
        Top = 1020
        Width = 1095
        Height = 300
        TabIndex = 28
        AutoSize = -1  'True
      End
      Begin VB.Label Label2
        Caption = "Rubro:"
        Left = -74400
        Top = 1500
        Width = 720
        Height = 300
        TabIndex = 5
        AutoSize = -1  'True
      End
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 9000
      Top = 240
      Width = 1575
      Height = 615
      TabIndex = 50
    End
    Begin MSMask.MaskEdBox CuenCtctMsk
      Left = 1200
      Top = 360
      Width = 1695
      Height = 360
      TabIndex = 0
      OleObjectBlob = "rptCertificadodeLibreDeuda.frx":22A4
    End
    Begin VB.Label Label1
      Caption = "Cuenta:"
      Left = 120
      Top = 360
      Width = 840
      Height = 300
      TabIndex = 49
      AutoSize = -1  'True
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 9600
    Top = 8400
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 47
    OleObjectBlob = "rptCertificadodeLibreDeuda.frx":232C
  End
End

Attribute VB_Name = "rptCertificadodeLibreDeuda"

Public bGenerado As Boolean

Private Type UDT_1_00560FDC
  bStruc(8) As Byte ' String fields: 2
End Type

Private Type UDT_2_005621FC
  bStruc(124) As Byte ' String fields: 30
End Type


Private Sub CuenCtctMsk_UnknownEvent_0 '9BC348
  'Data Table: 51F20C
  loc_9BC334: FLdPr Me
  loc_9BC337: VCallAd Control_ID_CuenCtctMsk
  loc_9BC33A: CVarAd
  loc_9BC33E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BC343: FFree1Var var_94 = ""
  loc_9BC346: ExitProcHresult
End Sub

Private Function CuenCtctMsk_UnknownEvent_8(arg_C) 'A9DDA4
  'Data Table: 51F20C
  loc_A9DCF0: FLdPrThis
  loc_A9DCF1: VCallAd Control_ID_ssTab
  loc_A9DCF4: FStAdFunc var_88
  loc_A9DCF7: FLdPr var_88
  loc_A9DCFA: LateIdLdVar var_98 DispID_4 0
  loc_A9DD01: CI2Var
  loc_A9DD02: LitI2_Byte 3
  loc_A9DD04: EqI2
  loc_A9DD05: FFree1Ad var_88
  loc_A9DD08: FFree1Var var_98 = ""
  loc_A9DD0B: BranchF loc_A9DD0F
  loc_A9DD0E: ExitProcHresult
  loc_A9DD0F: FLdPr Me
  loc_A9DD12: VCallAd Control_ID_CuenCtctMsk
  loc_A9DD15: FStAdFunc var_88
  loc_A9DD18: FLdPr var_88
  loc_A9DD1B: LateIdLdVar var_98 DispID_0 0
  loc_A9DD22: CStrVarTmp
  loc_A9DD23: FStStrNoPop var_9C
  loc_A9DD26: LitStr "Cuenta"
  loc_A9DD29: ImpAdCallI2 Proc_18_12_A83B84(, )
  loc_A9DD2E: FStStrNoPop var_A0
  loc_A9DD31: FLdPr Me
  loc_A9DD34: MemStStrCopy
  loc_A9DD38: FFreeStr var_9C = ""
  loc_A9DD3F: FFree1Ad var_88
  loc_A9DD42: FFree1Var var_98 = ""
  loc_A9DD45: FLdPr Me
  loc_A9DD48: MemLdStr global_104
  loc_A9DD4B: LitStr vbNullString
  loc_A9DD4E: NeStr
  loc_A9DD50: BranchF loc_A9DD78
  loc_A9DD53: FLdPr Me
  loc_A9DD56: MemLdStr global_104
  loc_A9DD59: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A9DD5E: FLdPr Me
  loc_A9DD61: VCallAd Control_ID_CuenCtctMsk
  loc_A9DD64: CVarAd
  loc_A9DD68: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A9DD6D: FFree1Var var_98 = ""
  loc_A9DD70: LitI2_Byte &HFF
  loc_A9DD72: IStI2 arg_C
  loc_A9DD75: Branch loc_A9DDA3
  loc_A9DD78: FLdPr Me
  loc_A9DD7B: VCallAd Control_ID_ssTab
  loc_A9DD7E: FStAdFunc var_88
  loc_A9DD81: FLdPr var_88
  loc_A9DD84: LateIdLdVar var_98 DispID_4 0
  loc_A9DD8B: CI2Var
  loc_A9DD8C: FStI2 var_A2
  loc_A9DD8F: FFree1Ad var_88
  loc_A9DD92: FFree1Var var_98 = ""
  loc_A9DD95: FLdI2 var_A2
  loc_A9DD98: LitI2_Byte 1
  loc_A9DD9A: EqI2
  loc_A9DD9B: BranchF loc_A9DDA3
  loc_A9DD9E: Call Proc_301_38_ADEA88()
  loc_A9DDA3: ExitProcHresult
End Function

Private Sub HastaComeMsk_UnknownEvent_0 '9BD4B8
  'Data Table: 51F20C
  loc_9BD4A4: FLdPr Me
  loc_9BD4A7: VCallAd Control_ID_HastaComeMsk
  loc_9BD4AA: CVarAd
  loc_9BD4AE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BD4B3: FFree1Var var_94 = ""
  loc_9BD4B6: ExitProcHresult
End Sub

Private Function HastaComeMsk_UnknownEvent_8(arg_C) 'A623A0
  'Data Table: 51F20C
  loc_A62344: FLdPr Me
  loc_A62347: VCallAd Control_ID_HastaComeMsk
  loc_A6234A: FStAdFunc var_88
  loc_A6234D: FLdPr var_88
  loc_A62350: LateIdLdVar var_98 DispID_15 0
  loc_A62357: CStrVarTmp
  loc_A62358: FStStrNoPop var_9C
  loc_A6235B: ImpAdCallI2 Proc_18_5_A95CFC()
  loc_A62360: FStStrNoPop var_A0
  loc_A62363: FLdPr Me
  loc_A62366: MemStStrCopy
  loc_A6236A: FFreeStr var_9C = ""
  loc_A62371: FFree1Ad var_88
  loc_A62374: FFree1Var var_98 = ""
  loc_A62377: FLdPr Me
  loc_A6237A: VCallAd Control_ID_HastaComeMsk
  loc_A6237D: FStAdFuncNoPop
  loc_A62380: CastAd
  loc_A62383: FStAdFunc var_A4
  loc_A62386: FLdRfVar var_A4
  loc_A62389: FLdPr Me
  loc_A6238C: MemLdStr global_104
  loc_A6238F: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A62394: IStI2 arg_C
  loc_A62397: FFreeAd var_88 = ""
  loc_A6239E: ExitProcHresult
End Function

Private Sub HastaInmuMsk_UnknownEvent_0 '9BC108
  'Data Table: 51F20C
  loc_9BC0F4: FLdPr Me
  loc_9BC0F7: VCallAd Control_ID_HastaInmuMsk
  loc_9BC0FA: CVarAd
  loc_9BC0FE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BC103: FFree1Var var_94 = ""
  loc_9BC106: ExitProcHresult
End Sub

Private Function HastaInmuMsk_UnknownEvent_8(arg_C) 'A626C0
  'Data Table: 51F20C
  loc_A62664: FLdPr Me
  loc_A62667: VCallAd Control_ID_HastaComeMsk
  loc_A6266A: FStAdFunc var_88
  loc_A6266D: FLdPr var_88
  loc_A62670: LateIdLdVar var_98 DispID_15 0
  loc_A62677: CStrVarTmp
  loc_A62678: FStStrNoPop var_9C
  loc_A6267B: ImpAdCallI2 Proc_18_5_A95CFC()
  loc_A62680: FStStrNoPop var_A0
  loc_A62683: FLdPr Me
  loc_A62686: MemStStrCopy
  loc_A6268A: FFreeStr var_9C = ""
  loc_A62691: FFree1Ad var_88
  loc_A62694: FFree1Var var_98 = ""
  loc_A62697: FLdPr Me
  loc_A6269A: VCallAd Control_ID_HastaInmuMsk
  loc_A6269D: FStAdFuncNoPop
  loc_A626A0: CastAd
  loc_A626A3: FStAdFunc var_A4
  loc_A626A6: FLdRfVar var_A4
  loc_A626A9: FLdPr Me
  loc_A626AC: MemLdStr global_104
  loc_A626AF: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A626B4: IStI2 arg_C
  loc_A626B7: FFreeAd var_88 = ""
  loc_A626BE: ExitProcHresult
End Function

Private Sub ssTab_UnknownEvent_0 '9B18A8
  'Data Table: 51F20C
  loc_9B189C: LitI2_Byte 0
  loc_9B189E: PopTmpLdAd2 var_86
  loc_9B18A1: from_stack_2v = CuenCtctMsk_UnknownEvent_8(from_stack_1v)
  loc_9B18A6: ExitProcHresult
End Sub

Private Sub ssTab_Click(PreviousTab As Integer) 'A7D0D4
  'Data Table: 51F20C
  loc_A7D050: LitI2_Byte 0
  loc_A7D052: PopTmpLdAd2 var_86
  loc_A7D055: from_stack_2v = CuenCtctMsk_UnknownEvent_8(from_stack_1v)
  loc_A7D05A: FLdPr Me
  loc_A7D05D: MemLdStr global_104
  loc_A7D060: LitStr vbNullString
  loc_A7D063: NeStr
  loc_A7D065: BranchF loc_A7D069
  loc_A7D068: ExitProcHresult
  loc_A7D069: FLdPr Me
  loc_A7D06C: VCallAd Control_ID_ssTab
  loc_A7D06F: FStAdFunc var_8C
  loc_A7D072: FLdPr var_8C
  loc_A7D075: LateIdLdVar var_9C DispID_4 0
  loc_A7D07C: CI2Var
  loc_A7D07D: FStI2 var_9E
  loc_A7D080: FFree1Ad var_8C
  loc_A7D083: FFree1Var var_9C = ""
  loc_A7D086: FLdI2 var_9E
  loc_A7D089: LitI2_Byte 0
  loc_A7D08B: EqI2
  loc_A7D08C: BranchF loc_A7D092
  loc_A7D08F: Branch loc_A7D0D0
  loc_A7D092: FLdI2 var_9E
  loc_A7D095: LitI2_Byte 1
  loc_A7D097: EqI2
  loc_A7D098: BranchF loc_A7D0A3
  loc_A7D09B: Call Proc_301_38_ADEA88()
  loc_A7D0A0: Branch loc_A7D0D0
  loc_A7D0A3: FLdI2 var_9E
  loc_A7D0A6: LitI2_Byte 2
  loc_A7D0A8: EqI2
  loc_A7D0A9: BranchF loc_A7D0AF
  loc_A7D0AC: Branch loc_A7D0D0
  loc_A7D0AF: FLdI2 var_9E
  loc_A7D0B2: LitI2_Byte 3
  loc_A7D0B4: EqI2
  loc_A7D0B5: BranchF loc_A7D0BB
  loc_A7D0B8: Branch loc_A7D0D0
  loc_A7D0BB: FLdI2 var_9E
  loc_A7D0BE: LitI2_Byte 4
  loc_A7D0C0: EqI2
  loc_A7D0C1: BranchF loc_A7D0C7
  loc_A7D0C4: Branch loc_A7D0D0
  loc_A7D0C7: FLdI2 var_9E
  loc_A7D0CA: LitI2_Byte 5
  loc_A7D0CC: EqI2
  loc_A7D0CD: BranchF loc_A7D0D0
  loc_A7D0D0: ExitProcHresult
End Sub

Private Sub NucaMsk_UnknownEvent_0 '9BE358
  'Data Table: 51F20C
  loc_9BE344: FLdPr Me
  loc_9BE347: VCallAd Control_ID_NucaMsk
  loc_9BE34A: CVarAd
  loc_9BE34E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BE353: FFree1Var var_94 = ""
  loc_9BE356: ExitProcHresult
End Sub

Private Sub UbicacionTxt_GotFocus() '9BC660
  'Data Table: 51F20C
  loc_9BC64C: FLdPr Me
  loc_9BC64F: VCallAd Control_ID_UbicacionTxt
  loc_9BC652: CVarAd
  loc_9BC656: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BC65B: FFree1Var var_94 = ""
  loc_9BC65E: ExitProcHresult
End Sub

Private Sub CPTxt_GotFocus() '9BE478
  'Data Table: 51F20C
  loc_9BE464: FLdPr Me
  loc_9BE467: VCallAd Control_ID_CPTxt
  loc_9BE46A: CVarAd
  loc_9BE46E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BE473: FFree1Var var_94 = ""
  loc_9BE476: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() 'A0324C
  'Data Table: 51F20C
  loc_A0321C: LitVar_FALSE
  loc_A03220: PopAdLdVar
  loc_A03221: FLdPr Me
  loc_A03224: VCallAd Control_ID_ssTab
  loc_A03227: FStAdFunc var_A8
  loc_A0322A: FLdPr var_A8
  loc_A0322D: LateIdSt
  loc_A03232: FFree1Ad var_A8
  loc_A03235: ILdRf Me
  loc_A03238: CastAd
  loc_A0323B: FStAdFunc var_A8
  loc_A0323E: FLdRfVar var_A8
  loc_A03241: ImpAdCallFPR4 Proc_57_0_AB1718()
  loc_A03246: FFree1Ad var_A8
  loc_A03249: ExitProcHresult
End Sub

Private Sub ConceptoCbo_KeyPress(KeyAscii As Integer) '9FD4D0
  'Data Table: 51F20C
  loc_9FD4A8: FLdPr Me
  loc_9FD4AB: VCallAd Control_ID_ConceptoCbo
  loc_9FD4AE: FStAdFunc var_8C
  loc_9FD4B1: ILdI2 KeyAscii
  loc_9FD4B4: FLdZeroAd var_8C
  loc_9FD4B7: FStAdFunc var_88
  loc_9FD4BA: FLdRfVar var_88
  loc_9FD4BD: ImpAdCallI2 Proc_17_14_B37E58(, )
  loc_9FD4C2: IStI2 KeyAscii
  loc_9FD4C5: FFreeAd var_88 = ""
  loc_9FD4CC: ExitProcHresult
End Sub

Private Sub InteresadoTxt_GotFocus() '9BC738
  'Data Table: 51F20C
  loc_9BC724: FLdPr Me
  loc_9BC727: VCallAd Control_ID_InteresadoTxt
  loc_9BC72A: CVarAd
  loc_9BC72E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BC733: FFree1Var var_94 = ""
  loc_9BC736: ExitProcHresult
End Sub

Private Sub DNIInteresadoMsk_UnknownEvent_0 '9BC780
  'Data Table: 51F20C
  loc_9BC76C: FLdPr Me
  loc_9BC76F: VCallAd Control_ID_DNIInteresadoMsk
  loc_9BC772: CVarAd
  loc_9BC776: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BC77B: FFree1Var var_94 = ""
  loc_9BC77E: ExitProcHresult
End Sub

Private Sub HastaComeCmd_Click() 'A07168
  'Data Table: 51F20C
  loc_A07134: LitVar_Missing var_A4
  loc_A07137: PopAdLdVar
  loc_A07138: LitVarI4
  loc_A07140: PopAdLdVar
  loc_A07141: ImpAdLdRf MemVar_D930A4
  loc_A07144: NewIfNullPr frmCalendario
  loc_A07147: frmCalendario.Show from_stack_1, from_stack_2
  loc_A0714C: ImpAdLdRf MemVar_D93028
  loc_A0714F: CDargRef
  loc_A07153: FLdPr Me
  loc_A07156: VCallAd Control_ID_HastaComeMsk
  loc_A07159: FStAdFunc var_A8
  loc_A0715C: FLdPr var_A8
  loc_A0715F: LateIdSt
  loc_A07164: FFree1Ad var_A8
  loc_A07167: ExitProcHresult
End Sub

Private Sub HastaInmuCmd_Click() 'A07308
  'Data Table: 51F20C
  loc_A072D4: LitVar_Missing var_A4
  loc_A072D7: PopAdLdVar
  loc_A072D8: LitVarI4
  loc_A072E0: PopAdLdVar
  loc_A072E1: ImpAdLdRf MemVar_D930A4
  loc_A072E4: NewIfNullPr frmCalendario
  loc_A072E7: frmCalendario.Show from_stack_1, from_stack_2
  loc_A072EC: ImpAdLdRf MemVar_D93028
  loc_A072EF: CDargRef
  loc_A072F3: FLdPr Me
  loc_A072F6: VCallAd Control_ID_HastaInmuMsk
  loc_A072F9: FStAdFunc var_A8
  loc_A072FC: FLdPr var_A8
  loc_A072FF: LateIdSt
  loc_A07304: FFree1Ad var_A8
  loc_A07307: ExitProcHresult
End Sub

Private Sub DNIMsk_UnknownEvent_0 '9BC4F8
  'Data Table: 51F20C
  loc_9BC4E4: FLdPr Me
  loc_9BC4E7: VCallAd Control_ID_DNIMsk
  loc_9BC4EA: CVarAd
  loc_9BC4EE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BC4F3: FFree1Var var_94 = ""
  loc_9BC4F6: ExitProcHresult
End Sub

Private Sub InmuebleChk_Click() 'A11508
  'Data Table: 51F20C
  loc_A114C8: FLdRfVar var_8A
  loc_A114CB: FLdPr Me
  loc_A114CE: VCallAd Control_ID_ComercioChk
  loc_A114D1: FStAdFunc var_88
  loc_A114D4: FLdPr var_88
  loc_A114D7:  = Me.Value
  loc_A114DC: FLdI2 var_8A
  loc_A114DF: CI4UI1
  loc_A114E0: LitI4 0
  loc_A114E5: EqI4
  loc_A114E6: FFree1Ad var_88
  loc_A114E9: BranchF loc_A11506
  loc_A114EC: LitI4 1
  loc_A114F1: CI2I4
  loc_A114F2: FLdPr Me
  loc_A114F5: VCallAd Control_ID_InmuebleChk
  loc_A114F8: FStAdFunc var_88
  loc_A114FB: FLdPr var_88
  loc_A114FE: Me.Value = from_stack_1
  loc_A11503: FFree1Ad var_88
  loc_A11506: ExitProcHresult
End Sub

Private Sub ComercioChk_Click() 'A11494
  'Data Table: 51F20C
  loc_A11454: FLdRfVar var_8A
  loc_A11457: FLdPr Me
  loc_A1145A: VCallAd Control_ID_InmuebleChk
  loc_A1145D: FStAdFunc var_88
  loc_A11460: FLdPr var_88
  loc_A11463:  = Me.Value
  loc_A11468: FLdI2 var_8A
  loc_A1146B: CI4UI1
  loc_A1146C: LitI4 0
  loc_A11471: EqI4
  loc_A11472: FFree1Ad var_88
  loc_A11475: BranchF loc_A11492
  loc_A11478: LitI4 1
  loc_A1147D: CI2I4
  loc_A1147E: FLdPr Me
  loc_A11481: VCallAd Control_ID_ComercioChk
  loc_A11484: FStAdFunc var_88
  loc_A11487: FLdPr var_88
  loc_A1148A: Me.Value = from_stack_1
  loc_A1148F: FFree1Ad var_88
  loc_A11492: ExitProcHresult
End Sub

Private Sub NombreTxt_GotFocus() '9BDE00
  'Data Table: 51F20C
  loc_9BDDEC: FLdPr Me
  loc_9BDDEF: VCallAd Control_ID_NombreTxt
  loc_9BDDF2: CVarAd
  loc_9BDDF6: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BDDFB: FFree1Var var_94 = ""
  loc_9BDDFE: ExitProcHresult
End Sub

Private Sub NombreTxt_KeyPress(KeyAscii As Integer) 'B315F0
  'Data Table: 51F20C
  loc_B312F8: ILdI2 KeyAscii
  loc_B312FB: CI4UI1
  loc_B312FC: LitI4 &HD
  loc_B31301: EqI4
  loc_B31302: BranchF loc_B315ED
  loc_B31305: FLdRfVar var_8C
  loc_B31308: FLdPr Me
  loc_B3130B: VCallAd Control_ID_NombreTxt
  loc_B3130E: FStAdFunc var_88
  loc_B31311: FLdPr var_88
  loc_B31314:  = Me.Text
  loc_B31319: ILdRf var_8C
  loc_B3131C: ImpAdLdRf MemVar_D94B90
  loc_B3131F: NewIfNullPr dlgBuscarPersonaPorCucuPersNuevo
  loc_B31322: VCallAd Control_ID_Campo2Txt
  loc_B31325: FStAdFunc var_90
  loc_B31328: FLdPr var_90
  loc_B3132B: dlgBuscarPersonaPorCucuPersNuevo.TextBox.Text = from_stack_1
  loc_B31330: FFree1Str var_8C
  loc_B31333: FFreeAd var_88 = ""
  loc_B3133A: FLdRfVar var_8C
  loc_B3133D: FLdPr Me
  loc_B31340: VCallAd Control_ID_NombreTxt
  loc_B31343: FStAdFunc var_88
  loc_B31346: FLdPr var_88
  loc_B31349:  = Me.Text
  loc_B3134E: ILdRf var_8C
  loc_B31351: ImpAdLdRf MemVar_D94B90
  loc_B31354: NewIfNullPr dlgBuscarPersonaPorCucuPersNuevo
  loc_B31357: Call dlgBuscarPersonaPorCucuPersNuevo.sWherePut(from_stack_1v)
  loc_B3135C: FFree1Str var_8C
  loc_B3135F: FFree1Ad var_88
  loc_B31362: LitVar_Missing var_B0
  loc_B31365: PopAdLdVar
  loc_B31366: LitVarI4
  loc_B3136E: PopAdLdVar
  loc_B3136F: ImpAdLdRf MemVar_D94B90
  loc_B31372: NewIfNullPr dlgBuscarPersonaPorCucuPersNuevo
  loc_B31375: dlgBuscarPersonaPorCucuPersNuevo.Show from_stack_1, from_stack_2
  loc_B3137A: FLdRfVar var_B4
  loc_B3137D: FLdRfVar var_88
  loc_B31380: ImpAdLdRf MemVar_D94B90
  loc_B31383: NewIfNullPr dlgBuscarPersonaPorCucuPersNuevo
  loc_B31386: from_stack_1v = dlgBuscarPersonaPorCucuPersNuevo.global_4382940Get()
  loc_B3138B: FLdPr var_88
  loc_B3138E: from_stack_1 = clspersonas.RecordCount
  loc_B31393: ILdRf var_B4
  loc_B31396: LitI4 0
  loc_B3139B: GtI4
  loc_B3139C: FFree1Ad var_88
  loc_B3139F: BranchF loc_B31546
  loc_B313A2: FLdRfVar var_8C
  loc_B313A5: FLdRfVar var_88
  loc_B313A8: ImpAdLdRf MemVar_D94B90
  loc_B313AB: NewIfNullPr dlgBuscarPersonaPorCucuPersNuevo
  loc_B313AE: from_stack_1v = dlgBuscarPersonaPorCucuPersNuevo.global_4382940Get()
  loc_B313B3: FLdPr var_88
  loc_B313B6: from_stack_1 = clspersonas.DetaPers
  loc_B313BB: ILdRf var_8C
  loc_B313BE: FLdPr Me
  loc_B313C1: VCallAd Control_ID_NombreTxt
  loc_B313C4: FStAdFunc var_90
  loc_B313C7: FLdPr var_90
  loc_B313CA: Me.Text = from_stack_1
  loc_B313CF: FFree1Str var_8C
  loc_B313D2: FFreeAd var_88 = ""
  loc_B313D9: FLdRfVar var_8C
  loc_B313DC: FLdRfVar var_88
  loc_B313DF: ImpAdLdRf MemVar_D94B90
  loc_B313E2: NewIfNullPr dlgBuscarPersonaPorCucuPersNuevo
  loc_B313E5: from_stack_1v = dlgBuscarPersonaPorCucuPersNuevo.global_4382940Get()
  loc_B313EA: FLdPr var_88
  loc_B313ED: from_stack_1 = clspersonas.CucuPers
  loc_B313F2: FLdZeroAd var_8C
  loc_B313F5: CVarStr var_C4
  loc_B313F8: PopAdLdVar
  loc_B313F9: FLdPr Me
  loc_B313FC: VCallAd Control_ID_DNIMsk
  loc_B313FF: FStAdFunc var_90
  loc_B31402: FLdPr var_90
  loc_B31405: LateIdSt
  loc_B3140A: FFreeAd var_88 = ""
  loc_B31411: FFree1Var var_C4 = ""
  loc_B31414: LitI2_Byte 1
  loc_B31416: FLdPr Me
  loc_B31419: VCallAd Control_ID_TipoDNICbo
  loc_B3141C: FStAdFunc var_88
  loc_B3141F: FLdPr var_88
  loc_B31422: Me.ListIndex = from_stack_1
  loc_B31427: FFree1Ad var_88
  loc_B3142A: FLdRfVar var_8C
  loc_B3142D: FLdRfVar var_88
  loc_B31430: ImpAdLdRf MemVar_D94B90
  loc_B31433: NewIfNullPr dlgBuscarPersonaPorCucuPersNuevo
  loc_B31436: from_stack_1v = dlgBuscarPersonaPorCucuPersNuevo.global_4382940Get()
  loc_B3143B: FLdPr var_88
  loc_B3143E: from_stack_1 = clspersonas.DecrPers
  loc_B31443: ILdRf var_8C
  loc_B31446: FLdPr Me
  loc_B31449: VCallAd Control_ID_CalleTxt
  loc_B3144C: FStAdFunc var_90
  loc_B3144F: FLdPr var_90
  loc_B31452: Me.Text = from_stack_1
  loc_B31457: FFree1Str var_8C
  loc_B3145A: FFreeAd var_88 = ""
  loc_B31461: FLdRfVar var_B4
  loc_B31464: FLdRfVar var_88
  loc_B31467: ImpAdLdRf MemVar_D94B90
  loc_B3146A: NewIfNullPr dlgBuscarPersonaPorCucuPersNuevo
  loc_B3146D: from_stack_1v = dlgBuscarPersonaPorCucuPersNuevo.global_4382940Get()
  loc_B31472: FLdPr var_88
  loc_B31475: from_stack_1 = clspersonas.NurePers
  loc_B3147A: ILdRf var_B4
  loc_B3147D: CStrI4
  loc_B3147F: CVarStr var_C4
  loc_B31482: PopAdLdVar
  loc_B31483: FLdPr Me
  loc_B31486: VCallAd Control_ID_NucaMsk
  loc_B31489: FStAdFunc var_90
  loc_B3148C: FLdPr var_90
  loc_B3148F: LateIdSt
  loc_B31494: FFreeAd var_88 = ""
  loc_B3149B: FFree1Var var_C4 = ""
  loc_B3149E: FLdRfVar var_8C
  loc_B314A1: FLdRfVar var_88
  loc_B314A4: ImpAdLdRf MemVar_D94B90
  loc_B314A7: NewIfNullPr dlgBuscarPersonaPorCucuPersNuevo
  loc_B314AA: from_stack_1v = dlgBuscarPersonaPorCucuPersNuevo.global_4382940Get()
  loc_B314AF: FLdPr var_88
  loc_B314B2: from_stack_1 = clspersonas.UbrePers
  loc_B314B7: ILdRf var_8C
  loc_B314BA: FLdPr Me
  loc_B314BD: VCallAd Control_ID_UbicacionTxt
  loc_B314C0: FStAdFunc var_90
  loc_B314C3: FLdPr var_90
  loc_B314C6: Me.Text = from_stack_1
  loc_B314CB: FFree1Str var_8C
  loc_B314CE: FFreeAd var_88 = ""
  loc_B314D5: FLdRfVar var_8C
  loc_B314D8: FLdRfVar var_88
  loc_B314DB: ImpAdLdRf MemVar_D94B90
  loc_B314DE: NewIfNullPr dlgBuscarPersonaPorCucuPersNuevo
  loc_B314E1: from_stack_1v = dlgBuscarPersonaPorCucuPersNuevo.global_4382940Get()
  loc_B314E6: FLdPr var_88
  loc_B314E9: from_stack_1 = clspersonas.DelrPers
  loc_B314EE: ILdRf var_8C
  loc_B314F1: FLdPr Me
  loc_B314F4: VCallAd Control_ID_LocalidadTxt
  loc_B314F7: FStAdFunc var_90
  loc_B314FA: FLdPr var_90
  loc_B314FD: Me.Text = from_stack_1
  loc_B31502: FFree1Str var_8C
  loc_B31505: FFreeAd var_88 = ""
  loc_B3150C: FLdRfVar var_8C
  loc_B3150F: FLdRfVar var_88
  loc_B31512: ImpAdLdRf MemVar_D94B90
  loc_B31515: NewIfNullPr dlgBuscarPersonaPorCucuPersNuevo
  loc_B31518: from_stack_1v = dlgBuscarPersonaPorCucuPersNuevo.global_4382940Get()
  loc_B3151D: FLdPr var_88
  loc_B31520: from_stack_1 = clspersonas.CoprPers
  loc_B31525: ILdRf var_8C
  loc_B31528: FLdPr Me
  loc_B3152B: VCallAd Control_ID_CPTxt
  loc_B3152E: FStAdFunc var_90
  loc_B31531: FLdPr var_90
  loc_B31534: Me.Text = from_stack_1
  loc_B31539: FFree1Str var_8C
  loc_B3153C: FFreeAd var_88 = ""
  loc_B31543: Branch loc_B315ED
  loc_B31546: LitStr vbNullString
  loc_B31549: FLdPr Me
  loc_B3154C: VCallAd Control_ID_NombreTxt
  loc_B3154F: FStAdFunc var_88
  loc_B31552: FLdPr var_88
  loc_B31555: Me.Text = from_stack_1
  loc_B3155A: FFree1Ad var_88
  loc_B3155D: LitVarStr var_A0, vbNullString
  loc_B31562: PopAdLdVar
  loc_B31563: FLdPr Me
  loc_B31566: VCallAd Control_ID_DNIMsk
  loc_B31569: FStAdFunc var_88
  loc_B3156C: FLdPr var_88
  loc_B3156F: LateIdSt
  loc_B31574: FFree1Ad var_88
  loc_B31577: LitStr vbNullString
  loc_B3157A: FLdPr Me
  loc_B3157D: VCallAd Control_ID_CalleTxt
  loc_B31580: FStAdFunc var_88
  loc_B31583: FLdPr var_88
  loc_B31586: Me.Text = from_stack_1
  loc_B3158B: FFree1Ad var_88
  loc_B3158E: LitVarStr var_A0, vbNullString
  loc_B31593: PopAdLdVar
  loc_B31594: FLdPr Me
  loc_B31597: VCallAd Control_ID_NucaMsk
  loc_B3159A: FStAdFunc var_88
  loc_B3159D: FLdPr var_88
  loc_B315A0: LateIdSt
  loc_B315A5: FFree1Ad var_88
  loc_B315A8: LitStr vbNullString
  loc_B315AB: FLdPr Me
  loc_B315AE: VCallAd Control_ID_UbicacionTxt
  loc_B315B1: FStAdFunc var_88
  loc_B315B4: FLdPr var_88
  loc_B315B7: Me.Text = from_stack_1
  loc_B315BC: FFree1Ad var_88
  loc_B315BF: LitStr vbNullString
  loc_B315C2: FLdPr Me
  loc_B315C5: VCallAd Control_ID_LocalidadTxt
  loc_B315C8: FStAdFunc var_88
  loc_B315CB: FLdPr var_88
  loc_B315CE: Me.Text = from_stack_1
  loc_B315D3: FFree1Ad var_88
  loc_B315D6: LitStr vbNullString
  loc_B315D9: FLdPr Me
  loc_B315DC: VCallAd Control_ID_CPTxt
  loc_B315DF: FStAdFunc var_88
  loc_B315E2: FLdPr var_88
  loc_B315E5: Me.Text = from_stack_1
  loc_B315EA: FFree1Ad var_88
  loc_B315ED: ExitProcHresult
End Sub

Private Sub NombreTxt_Validate(Cancel As Boolean) 'B08220
  'Data Table: 51F20C
  loc_B08018: FLdRfVar var_8C
  loc_B0801B: FLdPr Me
  loc_B0801E: VCallAd Control_ID_NombreTxt
  loc_B08021: FStAdFunc var_88
  loc_B08024: FLdPr var_88
  loc_B08027:  = Me.Text
  loc_B0802C: ILdRf var_8C
  loc_B0802F: LitStr "Nombre"
  loc_B08032: ImpAdCallI2 Proc_18_12_A83B84(, )
  loc_B08037: FStStrNoPop var_90
  loc_B0803A: FLdPr Me
  loc_B0803D: MemStStrCopy
  loc_B08041: FFreeStr var_8C = ""
  loc_B08048: FFree1Ad var_88
  loc_B0804B: FLdPr Me
  loc_B0804E: MemLdStr global_104
  loc_B08051: LitStr vbNullString
  loc_B08054: NeStr
  loc_B08056: BranchF loc_B0807E
  loc_B08059: FLdPr Me
  loc_B0805C: MemLdStr global_104
  loc_B0805F: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B08064: FLdPr Me
  loc_B08067: VCallAd Control_ID_NombreTxt
  loc_B0806A: CVarAd
  loc_B0806E: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B08073: FFree1Var var_A0 = ""
  loc_B08076: LitI2_Byte &HFF
  loc_B08078: IStI2 Cancel
  loc_B0807B: Branch loc_B0821F
  loc_B0807E: FLdPr Me
  loc_B08081: MemLdRfVar from_stack_1.global_84
  loc_B08084: NewIfNullAd
  loc_B08087: FStAd var_A4 
  loc_B0808B: LitI4 &HB
  loc_B08090: CI2I4
  loc_B08091: FLdPr Me
  loc_B08094: Me.MousePointer = from_stack_1
  loc_B08099: FLdRfVar var_A6
  loc_B0809C: FLdPr Me
  loc_B0809F: VCallAd Control_ID_InmuebleChk
  loc_B080A2: FStAdFunc var_88
  loc_B080A5: FLdPr var_88
  loc_B080A8:  = Me.Value
  loc_B080AD: FLdI2 var_A6
  loc_B080B0: CI4UI1
  loc_B080B1: LitI4 1
  loc_B080B6: EqI4
  loc_B080B7: FFree1Ad var_88
  loc_B080BA: BranchF loc_B08152
  loc_B080BD: LitStr "SELECT persona.CucuPers, DetaPers"
  loc_B080C0: LitStr " FROM infogov.persona"
  loc_B080C3: ConcatStr
  loc_B080C4: FStStrNoPop var_8C
  loc_B080C7: LitStr " INNER JOIN inmueble ON inmueble.CucuPers = infogov.persona.CucuPers AND inmueble.BajaFeho is null"
  loc_B080CA: ConcatStr
  loc_B080CB: FStStrNoPop var_90
  loc_B080CE: LitStr " WHERE DetaPers LIKE '" & Chr(37)
  loc_B080D1: ConcatStr
  loc_B080D2: FStStrNoPop var_B0
  loc_B080D5: FLdRfVar var_AC
  loc_B080D8: FLdPr Me
  loc_B080DB: VCallAd Control_ID_NombreTxt
  loc_B080DE: FStAdFunc var_88
  loc_B080E1: FLdPr var_88
  loc_B080E4:  = Me.Text
  loc_B080E9: ILdRf var_AC
  loc_B080EC: ConcatStr
  loc_B080ED: FStStrNoPop var_B4
  loc_B080F0: LitStr Chr(37) & "' LIMIT 1"
  loc_B080F3: ConcatStr
  loc_B080F4: FStStrNoPop var_B8
  loc_B080F7: FLdPr var_A4
  loc_B080FA: Call clspersonas.RedefineRS(from_stack_1v)
  loc_B080FF: FFreeStr var_8C = "": var_90 = "": var_B0 = "": var_AC = "": var_B4 = ""
  loc_B0810E: FFree1Ad var_88
  loc_B08111: FLdRfVar var_BC
  loc_B08114: FLdPr var_A4
  loc_B08117: from_stack_1 = clspersonas.RecordCount
  loc_B0811C: ILdRf var_BC
  loc_B0811F: LitI4 0
  loc_B08124: GtI4
  loc_B08125: BranchF loc_B08152
  loc_B08128: LitStr "ADVERTENCIA: "
  loc_B0812B: FLdRfVar var_8C
  loc_B0812E: FLdPr var_A4
  loc_B08131: from_stack_1 = clspersonas.DetaPers
  loc_B08136: ILdRf var_8C
  loc_B08139: ConcatStr
  loc_B0813A: FStStrNoPop var_90
  loc_B0813D: LitStr " existe como contribuyente de: INMUEBLE"
  loc_B08140: ConcatStr
  loc_B08141: FStStrNoPop var_AC
  loc_B08144: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B08149: FFreeStr var_8C = "": var_90 = ""
  loc_B08152: FLdRfVar var_A6
  loc_B08155: FLdPr Me
  loc_B08158: VCallAd Control_ID_ComercioChk
  loc_B0815B: FStAdFunc var_88
  loc_B0815E: FLdPr var_88
  loc_B08161:  = Me.Value
  loc_B08166: FLdI2 var_A6
  loc_B08169: CI4UI1
  loc_B0816A: LitI4 1
  loc_B0816F: EqI4
  loc_B08170: FFree1Ad var_88
  loc_B08173: BranchF loc_B0820B
  loc_B08176: LitStr "SELECT persona.CucuPers, DetaPers"
  loc_B08179: LitStr " FROM infogov.persona"
  loc_B0817C: ConcatStr
  loc_B0817D: FStStrNoPop var_8C
  loc_B08180: LitStr " INNER JOIN comercio ON comercio.CucuPers = infogov.persona.CucuPers AND FebaCome is null"
  loc_B08183: ConcatStr
  loc_B08184: FStStrNoPop var_90
  loc_B08187: LitStr " WHERE DetaPers LIKE '" & Chr(37)
  loc_B0818A: ConcatStr
  loc_B0818B: FStStrNoPop var_B0
  loc_B0818E: FLdRfVar var_AC
  loc_B08191: FLdPr Me
  loc_B08194: VCallAd Control_ID_NombreTxt
  loc_B08197: FStAdFunc var_88
  loc_B0819A: FLdPr var_88
  loc_B0819D:  = Me.Text
  loc_B081A2: ILdRf var_AC
  loc_B081A5: ConcatStr
  loc_B081A6: FStStrNoPop var_B4
  loc_B081A9: LitStr Chr(37) & "' LIMIT 1"
  loc_B081AC: ConcatStr
  loc_B081AD: FStStrNoPop var_B8
  loc_B081B0: FLdPr var_A4
  loc_B081B3: Call clspersonas.RedefineRS(from_stack_1v)
  loc_B081B8: FFreeStr var_8C = "": var_90 = "": var_B0 = "": var_AC = "": var_B4 = ""
  loc_B081C7: FFree1Ad var_88
  loc_B081CA: FLdRfVar var_BC
  loc_B081CD: FLdPr var_A4
  loc_B081D0: from_stack_1 = clspersonas.RecordCount
  loc_B081D5: ILdRf var_BC
  loc_B081D8: LitI4 0
  loc_B081DD: GtI4
  loc_B081DE: BranchF loc_B0820B
  loc_B081E1: LitStr "ADVERTENCIA: "
  loc_B081E4: FLdRfVar var_8C
  loc_B081E7: FLdPr var_A4
  loc_B081EA: from_stack_1 = clspersonas.DetaPers
  loc_B081EF: ILdRf var_8C
  loc_B081F2: ConcatStr
  loc_B081F3: FStStrNoPop var_90
  loc_B081F6: LitStr " existe como contribuyente de: COMERCIO"
  loc_B081F9: ConcatStr
  loc_B081FA: FStStrNoPop var_AC
  loc_B081FD: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B08202: FFreeStr var_8C = "": var_90 = ""
  loc_B0820B: LitI4 0
  loc_B08210: CI2I4
  loc_B08211: FLdPr Me
  loc_B08214: Me.MousePointer = from_stack_1
  loc_B08219: LitNothing
  loc_B0821B: FStAd var_A4 
  loc_B0821F: ExitProcHresult
End Sub

Private Sub CalleTxt_GotFocus() '9BE160
  'Data Table: 51F20C
  loc_9BE14C: FLdPr Me
  loc_9BE14F: VCallAd Control_ID_CalleTxt
  loc_9BE152: CVarAd
  loc_9BE156: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BE15B: FFree1Var var_94 = ""
  loc_9BE15E: ExitProcHresult
End Sub

Private Sub Form_Load() 'ACA80C
  'Data Table: 51F20C
  loc_ACA6F4: ILdRf Me
  loc_ACA6F7: CastAd
  loc_ACA6FA: FStAdFunc var_88
  loc_ACA6FD: FLdRfVar var_88
  loc_ACA700: ImpAdCallFPR4  = Proc_272_43_A93498()
  loc_ACA705: FFree1Ad var_88
  loc_ACA708: LitStr "SELECT * FROM cargo"
  loc_ACA70B: FLdPr Me
  loc_ACA70E: MemLdRfVar from_stack_1.global_92
  loc_ACA711: NewIfNullPr clscargo
  loc_ACA714: Call clscargo.RedefineRS(from_stack_1v)
  loc_ACA719: FLdPr Me
  loc_ACA71C: VCallAd Control_ID_CertificaCbo
  loc_ACA71F: FStAdFunc var_8C
  loc_ACA722: FLdPr var_8C
  loc_ACA725: Me.Clear
  loc_ACA72A: FLdPr Me
  loc_ACA72D: MemLdRfVar from_stack_1.global_92
  loc_ACA730: NewIfNullPr clscargo
  loc_ACA733: Call clscargo.MoveFirst()
  loc_ACA738: FLdRfVar var_8E
  loc_ACA73B: FLdPr Me
  loc_ACA73E: MemLdRfVar from_stack_1.global_92
  loc_ACA741: NewIfNullPr clscargo
  loc_ACA744: from_stack_1 = clscargo.EOF
  loc_ACA749: FLdI2 var_8E
  loc_ACA74C: NotI4
  loc_ACA74D: BranchF loc_ACA7B4
  loc_ACA750: LitVar_Missing var_A4
  loc_ACA753: PopAdLdVar
  loc_ACA754: FLdRfVar var_94
  loc_ACA757: FLdPr Me
  loc_ACA75A: MemLdRfVar from_stack_1.global_92
  loc_ACA75D: NewIfNullPr clscargo
  loc_ACA760: from_stack_1 = clscargo.NombCarg
  loc_ACA765: ILdRf var_94
  loc_ACA768: FLdPr var_8C
  loc_ACA76B: Me.AddItem from_stack_1, from_stack_2
  loc_ACA770: FFree1Str var_94
  loc_ACA773: FLdRfVar var_8E
  loc_ACA776: FLdPr Me
  loc_ACA779: MemLdRfVar from_stack_1.global_92
  loc_ACA77C: NewIfNullPr clscargo
  loc_ACA77F: from_stack_1 = clscargo.CodiCarg
  loc_ACA784: FLdI2 var_8E
  loc_ACA787: CI4UI1
  loc_ACA788: FLdRfVar var_A6
  loc_ACA78B: FLdPr var_8C
  loc_ACA78E:  = Me.NewIndex
  loc_ACA793: FLdI2 var_A6
  loc_ACA796: FLdPr var_8C
  loc_ACA799: Me.ItemData = from_stack_1
  loc_ACA79E: LitI2_Byte 1
  loc_ACA7A0: PopTmpLdAd2 var_8E
  loc_ACA7A3: FLdPr Me
  loc_ACA7A6: MemLdRfVar from_stack_1.global_92
  loc_ACA7A9: NewIfNullPr clscargo
  loc_ACA7AC: Call clscargo.Move(from_stack_1v)
  loc_ACA7B1: Branch loc_ACA738
  loc_ACA7B4: LitI2_Byte 0
  loc_ACA7B6: FLdPr var_8C
  loc_ACA7B9: Me.ListIndex = from_stack_1
  loc_ACA7BE: Call CertificaCbo_Click()
  loc_ACA7C3: LitNothing
  loc_ACA7C5: FStAd var_8C 
  loc_ACA7C9: FLdPr Me
  loc_ACA7CC: VCallAd Control_ID_TipoDNICbo
  loc_ACA7CF: FStAdFunc var_AC
  loc_ACA7D2: FLdPr var_AC
  loc_ACA7D5: Me.Clear
  loc_ACA7DA: LitVar_Missing var_A4
  loc_ACA7DD: PopAdLdVar
  loc_ACA7DE: LitStr "DNI"
  loc_ACA7E1: FLdPr var_AC
  loc_ACA7E4: Me.AddItem from_stack_1, from_stack_2
  loc_ACA7E9: LitVar_Missing var_A4
  loc_ACA7EC: PopAdLdVar
  loc_ACA7ED: LitStr "CUIT"
  loc_ACA7F0: FLdPr var_AC
  loc_ACA7F3: Me.AddItem from_stack_1, from_stack_2
  loc_ACA7F8: LitNothing
  loc_ACA7FA: FStAd var_AC 
  loc_ACA7FE: Call Proc_301_39_A96828()
  loc_ACA803: Call cmdNueva_Click()
  loc_ACA808: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9CADAC
  'Data Table: 51F20C
  loc_9CAD94: FLdPr Me
  loc_9CAD97: VCallAd Control_ID_wbbReporte
  loc_9CAD9A: FStAdFunc var_88
  loc_9CAD9D: FLdRfVar var_88
  loc_9CADA0: ImpAdCallFPR4  = Proc_57_52_A24864()
  loc_9CADA5: FFree1Ad var_88
  loc_9CADA8: ExitProcHresult
  loc_9CADA9: FStI2 Form_UnloadCB
End Sub

Private Sub LocalidadTxt_GotFocus() '9BC6A8
  'Data Table: 51F20C
  loc_9BC694: FLdPr Me
  loc_9BC697: VCallAd Control_ID_LocalidadTxt
  loc_9BC69A: CVarAd
  loc_9BC69E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BC6A3: FFree1Var var_94 = ""
  loc_9BC6A6: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() 'A06608
  'Data Table: 51F20C
  loc_A065D4: LitVar_FALSE
  loc_A065D8: PopAdLdVar
  loc_A065D9: FLdPr Me
  loc_A065DC: VCallAd Control_ID_ssTab
  loc_A065DF: FStAdFunc var_A8
  loc_A065E2: FLdPr var_A8
  loc_A065E5: LateIdSt
  loc_A065EA: FFree1Ad var_A8
  loc_A065ED: LitI2_Byte 0
  loc_A065EF: PopTmpLdAd2 var_AA
  loc_A065F2: ILdRf Me
  loc_A065F5: CastAd
  loc_A065F8: FStAdFunc var_A8
  loc_A065FB: FLdRfVar var_A8
  loc_A065FE: ImpAdCallFPR4 Proc_57_2_B14778(, )
  loc_A06603: FFree1Ad var_A8
  loc_A06606: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() 'B06198
  'Data Table: 51F20C
  loc_B05F80: LitI2_Byte 0
  loc_B05F82: FLdPr Me
  loc_B05F85: MemStI2 bGenerado
  loc_B05F88: LitI2_Byte 0
  loc_B05F8A: ILdRf Me
  loc_B05F8D: CastAd
  loc_B05F90: FStAdFunc var_88
  loc_B05F93: FLdRfVar var_88
  loc_B05F96: ImpAdCallFPR4  = Proc_272_46_B065FC()
  loc_B05F9B: FFree1Ad var_88
  loc_B05F9E: LitVarStr var_98, vbNullString
  loc_B05FA3: PopAdLdVar
  loc_B05FA4: FLdPr Me
  loc_B05FA7: VCallAd Control_ID_CuenCtctMsk
  loc_B05FAA: FStAdFunc var_88
  loc_B05FAD: FLdPr var_88
  loc_B05FB0: LateIdSt
  loc_B05FB5: FFree1Ad var_88
  loc_B05FB8: LitI4 1
  loc_B05FBD: CI2I4
  loc_B05FBE: FLdPr Me
  loc_B05FC1: VCallAd Control_ID_InmuebleChk
  loc_B05FC4: FStAdFunc var_88
  loc_B05FC7: FLdPr var_88
  loc_B05FCA: Me.Value = from_stack_1
  loc_B05FCF: FFree1Ad var_88
  loc_B05FD2: LitI4 1
  loc_B05FD7: CI2I4
  loc_B05FD8: FLdPr Me
  loc_B05FDB: VCallAd Control_ID_ComercioChk
  loc_B05FDE: FStAdFunc var_88
  loc_B05FE1: FLdPr var_88
  loc_B05FE4: Me.Value = from_stack_1
  loc_B05FE9: FFree1Ad var_88
  loc_B05FEC: LitI2_Byte 0
  loc_B05FEE: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_B05FF3: CStrDate
  loc_B05FF5: CVarStr var_B8
  loc_B05FF8: PopAdLdVar
  loc_B05FF9: FLdPr Me
  loc_B05FFC: VCallAd Control_ID_HastaComeMsk
  loc_B05FFF: FStAdFunc var_88
  loc_B06002: FLdPr var_88
  loc_B06005: LateIdSt
  loc_B0600A: FFree1Ad var_88
  loc_B0600D: FFree1Var var_B8 = ""
  loc_B06010: LitI2_Byte 0
  loc_B06012: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_B06017: CStrDate
  loc_B06019: CVarStr var_B8
  loc_B0601C: PopAdLdVar
  loc_B0601D: FLdPr Me
  loc_B06020: VCallAd Control_ID_HastaInmuMsk
  loc_B06023: FStAdFunc var_88
  loc_B06026: FLdPr var_88
  loc_B06029: LateIdSt
  loc_B0602E: FFree1Ad var_88
  loc_B06031: FFree1Var var_B8 = ""
  loc_B06034: LitStr vbNullString
  loc_B06037: FLdPr Me
  loc_B0603A: VCallAd Control_ID_NombreTxt
  loc_B0603D: FStAdFunc var_88
  loc_B06040: FLdPr var_88
  loc_B06043: Me.Text = from_stack_1
  loc_B06048: FFree1Ad var_88
  loc_B0604B: LitVarStr var_98, vbNullString
  loc_B06050: PopAdLdVar
  loc_B06051: FLdPr Me
  loc_B06054: VCallAd Control_ID_DNIMsk
  loc_B06057: FStAdFunc var_88
  loc_B0605A: FLdPr var_88
  loc_B0605D: LateIdSt
  loc_B06062: FFree1Ad var_88
  loc_B06065: LitStr vbNullString
  loc_B06068: FLdPr Me
  loc_B0606B: VCallAd Control_ID_CalleTxt
  loc_B0606E: FStAdFunc var_88
  loc_B06071: FLdPr var_88
  loc_B06074: Me.Text = from_stack_1
  loc_B06079: FFree1Ad var_88
  loc_B0607C: LitVarStr var_98, vbNullString
  loc_B06081: PopAdLdVar
  loc_B06082: FLdPr Me
  loc_B06085: VCallAd Control_ID_NucaMsk
  loc_B06088: FStAdFunc var_88
  loc_B0608B: FLdPr var_88
  loc_B0608E: LateIdSt
  loc_B06093: FFree1Ad var_88
  loc_B06096: LitStr vbNullString
  loc_B06099: FLdPr Me
  loc_B0609C: VCallAd Control_ID_UbicacionTxt
  loc_B0609F: FStAdFunc var_88
  loc_B060A2: FLdPr var_88
  loc_B060A5: Me.Text = from_stack_1
  loc_B060AA: FFree1Ad var_88
  loc_B060AD: LitStr "Ciudad"
  loc_B060B0: FLdPr Me
  loc_B060B3: VCallAd Control_ID_LocalidadTxt
  loc_B060B6: FStAdFunc var_88
  loc_B060B9: FLdPr var_88
  loc_B060BC: Me.Text = from_stack_1
  loc_B060C1: FFree1Ad var_88
  loc_B060C4: LitStr "0000"
  loc_B060C7: FLdPr Me
  loc_B060CA: VCallAd Control_ID_CPTxt
  loc_B060CD: FStAdFunc var_88
  loc_B060D0: FLdPr var_88
  loc_B060D3: Me.Text = from_stack_1
  loc_B060D8: FFree1Ad var_88
  loc_B060DB: LitStr vbNullString
  loc_B060DE: FLdPr Me
  loc_B060E1: VCallAd Control_ID_ObseInNCTxt
  loc_B060E4: FStAdFunc var_88
  loc_B060E7: FLdPr var_88
  loc_B060EA: Me.Text = from_stack_1
  loc_B060EF: FFree1Ad var_88
  loc_B060F2: LitStr vbNullString
  loc_B060F5: FLdPr Me
  loc_B060F8: VCallAd Control_ID_ObseDevaTxt
  loc_B060FB: FStAdFunc var_88
  loc_B060FE: FLdPr var_88
  loc_B06101: Me.Text = from_stack_1
  loc_B06106: FFree1Ad var_88
  loc_B06109: LitI2_Byte 0
  loc_B0610B: FLdPr Me
  loc_B0610E: VCallAd Control_ID_CertificaCbo
  loc_B06111: FStAdFunc var_88
  loc_B06114: FLdPr var_88
  loc_B06117: Me.ListIndex = from_stack_1
  loc_B0611C: FFree1Ad var_88
  loc_B0611F: LitI2_Byte 0
  loc_B06121: FLdPr Me
  loc_B06124: VCallAd Control_ID_ConceptoCbo
  loc_B06127: FStAdFunc var_88
  loc_B0612A: FLdPr var_88
  loc_B0612D: Me.ListIndex = from_stack_1
  loc_B06132: FFree1Ad var_88
  loc_B06135: LitI2_Byte 0
  loc_B06137: FLdPr Me
  loc_B0613A: VCallAd Control_ID_TipoDNICbo
  loc_B0613D: FStAdFunc var_88
  loc_B06140: FLdPr var_88
  loc_B06143: Me.ListIndex = from_stack_1
  loc_B06148: FFree1Ad var_88
  loc_B0614B: LitStr vbNullString
  loc_B0614E: FLdPr Me
  loc_B06151: VCallAd Control_ID_InteresadoTxt
  loc_B06154: FStAdFunc var_88
  loc_B06157: FLdPr var_88
  loc_B0615A: Me.Text = from_stack_1
  loc_B0615F: FFree1Ad var_88
  loc_B06162: LitVarStr var_98, vbNullString
  loc_B06167: PopAdLdVar
  loc_B06168: FLdPr Me
  loc_B0616B: VCallAd Control_ID_DNIInteresadoMsk
  loc_B0616E: FStAdFunc var_88
  loc_B06171: FLdPr var_88
  loc_B06174: LateIdSt
  loc_B06179: FFree1Ad var_88
  loc_B0617C: Call HabilitarCriterio()
  loc_B06181: ILdRf Me
  loc_B06184: CastAd
  loc_B06187: FStAdFunc var_88
  loc_B0618A: FLdRfVar var_88
  loc_B0618D: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_B06192: FFree1Ad var_88
  loc_B06195: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() 'A03184
  'Data Table: 51F20C
  loc_A03154: LitVarStr var_94, "Cerrando..."
  loc_A03159: PopAdLdVar
  loc_A0315A: FLdPr Me
  loc_A0315D: VCallAd Control_ID_statusBar
  loc_A03160: FStAdFunc var_A8
  loc_A03163: FLdPr var_A8
  loc_A03166: LateIdSt
  loc_A0316B: FFree1Ad var_A8
  loc_A0316E: ILdRf Me
  loc_A03171: FStAdNoPop
  loc_A03175: ImpAdLdRf MemVar_D9C5D8
  loc_A03178: NewIfNullPr Global
  loc_A0317B: Global.Unload from_stack_1
  loc_A03180: FFree1Ad var_A8
  loc_A03183: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() 'A62270
  'Data Table: 51F20C
  loc_A62204: LitVar_FALSE
  loc_A62208: PopAdLdVar
  loc_A62209: FLdPr Me
  loc_A6220C: VCallAd Control_ID_ssTab
  loc_A6220F: FStAdFunc var_A8
  loc_A62212: FLdPr var_A8
  loc_A62215: LateIdSt
  loc_A6221A: FFree1Ad var_A8
  loc_A6221D: LitI2_Byte 0
  loc_A6221F: ILdRf Me
  loc_A62222: CastAd
  loc_A62225: FStAdFunc var_A8
  loc_A62228: FLdRfVar var_A8
  loc_A6222B: ImpAdCallFPR4 Proc_57_1_AA9124(, )
  loc_A62230: FFree1Ad var_A8
  loc_A62233: FLdRfVar var_AA
  loc_A62236: FLdPr Me
  loc_A62239: VCallAd Control_ID_cmdPredeterminada
  loc_A6223C: FStAdFunc var_A8
  loc_A6223F: FLdPr var_A8
  loc_A62242:  = Me.Enabled
  loc_A62247: FLdI2 var_AA
  loc_A6224A: NotI4
  loc_A6224B: FFree1Ad var_A8
  loc_A6224E: BranchF loc_A62259
  loc_A62251: ImpAdCallFPR4 DoEvents()
  loc_A62256: Branch loc_A62233
  loc_A62259: ILdRf Me
  loc_A6225C: FStAdNoPop
  loc_A62260: ImpAdLdRf MemVar_D9C5D8
  loc_A62263: NewIfNullPr Global
  loc_A62266: Global.Unload from_stack_1
  loc_A6226B: FFree1Ad var_A8
  loc_A6226E: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) 'A19450
  'Data Table: 51F20C
  loc_A19418: FLdPr Me
  loc_A1941B: VCallAd Control_ID_statusBar
  loc_A1941E: FStAdFunc var_88
  loc_A19421: FLdPr var_88
  loc_A19424: LateIdLdVar var_98 DispID_1 0
  loc_A1942B: CStrVarTmp
  loc_A1942C: CVarStr var_A8
  loc_A1942F: PopAdLdVar
  loc_A19430: FLdPr Me
  loc_A19433: VCallAd Control_ID_statusBar
  loc_A19436: FStAdFunc var_BC
  loc_A19439: FLdPr var_BC
  loc_A1943C: LateIdSt
  loc_A19441: FFreeAd var_88 = ""
  loc_A19448: FFreeVar var_98 = ""
  loc_A1944F: ExitProcHresult
End Sub

Private Sub CertificaCbo_Click() 'ACFF84
  'Data Table: 51F20C
  loc_ACFE7C: FLdPr Me
  loc_ACFE7F: MemLdRfVar from_stack_1.global_92
  loc_ACFE82: NewIfNullAd
  loc_ACFE85: FStAd var_88 
  loc_ACFE89: LitStr "CodiCarg = "
  loc_ACFE8C: FLdRfVar var_98
  loc_ACFE8F: FLdRfVar var_8E
  loc_ACFE92: FLdPr Me
  loc_ACFE95: VCallAd Control_ID_CertificaCbo
  loc_ACFE98: FStAdFunc var_8C
  loc_ACFE9B: FLdPr var_8C
  loc_ACFE9E:  = Me.ListIndex
  loc_ACFEA3: FLdI2 var_8E
  loc_ACFEA6: FLdPr Me
  loc_ACFEA9: VCallAd Control_ID_CertificaCbo
  loc_ACFEAC: FStAdFunc var_94
  loc_ACFEAF: FLdPr var_94
  loc_ACFEB2:  = Me.ItemData
  loc_ACFEB7: ILdRf var_98
  loc_ACFEBA: CStrI4
  loc_ACFEBC: FStStrNoPop var_9C
  loc_ACFEBF: ConcatStr
  loc_ACFEC0: PopTmpLdAdStr
  loc_ACFEC4: FLdPr var_88
  loc_ACFEC7: Call clscargo.Filter(from_stack_1v)
  loc_ACFECC: FFreeStr var_9C = ""
  loc_ACFED3: FFreeAd var_8C = ""
  loc_ACFEDA: FLdRfVar var_98
  loc_ACFEDD: FLdPr var_88
  loc_ACFEE0: from_stack_1 = clscargo.RecordCount
  loc_ACFEE5: ILdRf var_98
  loc_ACFEE8: LitI4 0
  loc_ACFEED: GtI4
  loc_ACFEEE: BranchF loc_ACFF7B
  loc_ACFEF1: FLdRfVar var_9C
  loc_ACFEF4: FLdPr Me
  loc_ACFEF7: VCallAd Control_ID_CertificaCbo
  loc_ACFEFA: FStAdFunc var_8C
  loc_ACFEFD: FLdPr var_8C
  loc_ACFF00:  = Me.Text
  loc_ACFF05: ILdRf var_9C
  loc_ACFF08: LitStr " DE LA "
  loc_ACFF0B: ConcatStr
  loc_ACFF0C: CVarStr var_E0
  loc_ACFF0F: LitVarStr var_B0, "Municipalidad de Guaymallén"
  loc_ACFF14: FStVarCopyObj var_C0
  loc_ACFF17: FLdRfVar var_C0
  loc_ACFF1A: FLdRfVar var_D0
  loc_ACFF1D: ImpAdCallFPR4  = Ucase()
  loc_ACFF22: FLdRfVar var_D0
  loc_ACFF25: ConcatVar var_F0
  loc_ACFF29: LitVarStr var_100, ", "
  loc_ACFF2E: ConcatVar var_110
  loc_ACFF32: FLdRfVar var_A0
  loc_ACFF35: FLdPr var_88
  loc_ACFF38: from_stack_1 = clscargo.PersCarg
  loc_ACFF3D: FLdZeroAd var_A0
  loc_ACFF40: CVarStr var_120
  loc_ACFF43: ConcatVar var_130
  loc_ACFF47: CStrVarVal var_134
  loc_ACFF4B: FLdPr Me
  loc_ACFF4E: VCallAd Control_ID_CertificaLbl
  loc_ACFF51: FStAdFunc var_94
  loc_ACFF54: FLdPr var_94
  loc_ACFF57: Me.Caption = from_stack_1
  loc_ACFF5C: FFreeStr var_9C = ""
  loc_ACFF63: FFreeAd var_8C = ""
  loc_ACFF6A: FFreeVar var_C0 = "": var_E0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_120 = ""
  loc_ACFF7B: LitNothing
  loc_ACFF7D: FStAd var_88 
  loc_ACFF81: ExitProcHresult
  loc_ACFF82: EqCyR8
End Sub

Public Function bGeneradoGet() '5214BC
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '5214CB
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() 'AFE210
  'Data Table: 51F20C
  loc_AFE07C: LitI4 0
  loc_AFE081: LitI4 &H16
  loc_AFE086: FLdRfVar var_88
  loc_AFE089: Redim
  loc_AFE093: FLdPr Me
  loc_AFE096: VCallAd Control_ID_CuenCtctMsk
  loc_AFE099: CVarAd
  loc_AFE09D: ParmAry1St
  loc_AFE0A3: FLdPr Me
  loc_AFE0A6: VCallAd Control_ID_ssTab
  loc_AFE0A9: CVarAd
  loc_AFE0AD: ParmAry1St
  loc_AFE0B3: FLdPr Me
  loc_AFE0B6: VCallAd Control_ID_HastaComeMsk
  loc_AFE0B9: CVarAd
  loc_AFE0BD: ParmAry1St
  loc_AFE0C3: FLdPr Me
  loc_AFE0C6: VCallAd Control_ID_HastaComeCmd
  loc_AFE0C9: CVarAd
  loc_AFE0CD: ParmAry1St
  loc_AFE0D3: FLdPr Me
  loc_AFE0D6: VCallAd Control_ID_HastaInmuMsk
  loc_AFE0D9: CVarAd
  loc_AFE0DD: ParmAry1St
  loc_AFE0E3: FLdPr Me
  loc_AFE0E6: VCallAd Control_ID_HastaInmuCmd
  loc_AFE0E9: CVarAd
  loc_AFE0ED: ParmAry1St
  loc_AFE0F3: FLdPr Me
  loc_AFE0F6: VCallAd Control_ID_RubroCbo
  loc_AFE0F9: CVarAd
  loc_AFE0FD: ParmAry1St
  loc_AFE103: FLdPr Me
  loc_AFE106: VCallAd Control_ID_InmuebleChk
  loc_AFE109: CVarAd
  loc_AFE10D: ParmAry1St
  loc_AFE113: FLdPr Me
  loc_AFE116: VCallAd Control_ID_ComercioChk
  loc_AFE119: CVarAd
  loc_AFE11D: ParmAry1St
  loc_AFE123: FLdPr Me
  loc_AFE126: VCallAd Control_ID_NombreTxt
  loc_AFE129: CVarAd
  loc_AFE12D: ParmAry1St
  loc_AFE133: FLdPr Me
  loc_AFE136: VCallAd Control_ID_TipoDNICbo
  loc_AFE139: CVarAd
  loc_AFE13D: ParmAry1St
  loc_AFE143: FLdPr Me
  loc_AFE146: VCallAd Control_ID_DNIMsk
  loc_AFE149: CVarAd
  loc_AFE14D: ParmAry1St
  loc_AFE153: FLdPr Me
  loc_AFE156: VCallAd Control_ID_CalleTxt
  loc_AFE159: CVarAd
  loc_AFE15D: ParmAry1St
  loc_AFE163: FLdPr Me
  loc_AFE166: VCallAd Control_ID_NucaMsk
  loc_AFE169: CVarAd
  loc_AFE16D: ParmAry1St
  loc_AFE173: FLdPr Me
  loc_AFE176: VCallAd Control_ID_UbicacionTxt
  loc_AFE179: CVarAd
  loc_AFE17D: ParmAry1St
  loc_AFE183: FLdPr Me
  loc_AFE186: VCallAd Control_ID_LocalidadTxt
  loc_AFE189: CVarAd
  loc_AFE18D: ParmAry1St
  loc_AFE193: FLdPr Me
  loc_AFE196: VCallAd Control_ID_CPTxt
  loc_AFE199: CVarAd
  loc_AFE19D: ParmAry1St
  loc_AFE1A3: FLdPr Me
  loc_AFE1A6: VCallAd Control_ID_ObseInNCTxt
  loc_AFE1A9: CVarAd
  loc_AFE1AD: ParmAry1St
  loc_AFE1B3: FLdPr Me
  loc_AFE1B6: VCallAd Control_ID_ConceptoCbo
  loc_AFE1B9: CVarAd
  loc_AFE1BD: ParmAry1St
  loc_AFE1C3: FLdPr Me
  loc_AFE1C6: VCallAd Control_ID_ObseDevaTxt
  loc_AFE1C9: CVarAd
  loc_AFE1CD: ParmAry1St
  loc_AFE1D3: FLdPr Me
  loc_AFE1D6: VCallAd Control_ID_CertificaCbo
  loc_AFE1D9: CVarAd
  loc_AFE1DD: ParmAry1St
  loc_AFE1E3: FLdPr Me
  loc_AFE1E6: VCallAd Control_ID_InteresadoTxt
  loc_AFE1E9: CVarAd
  loc_AFE1ED: ParmAry1St
  loc_AFE1F3: FLdPr Me
  loc_AFE1F6: VCallAd Control_ID_DNIInteresadoMsk
  loc_AFE1F9: CVarAd
  loc_AFE1FD: ParmAry1St
  loc_AFE203: FLdRfVar var_88
  loc_AFE206: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_AFE20B: FLdRfVar var_88
  loc_AFE20E: Erase
  loc_AFE20F: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'C9FF04
  'Data Table: 51F20C
  loc_C9E3EC: LitStr vbNullString
  loc_C9E3EF: FLdPr Me
  loc_C9E3F2: MemStStrCopy
  loc_C9E3F6: LitI2_Byte 0
  loc_C9E3F8: PopTmpLdAd2 var_92
  loc_C9E3FB: from_stack_2v = CuenCtctMsk_UnknownEvent_8(from_stack_1v)
  loc_C9E400: FLdPr Me
  loc_C9E403: MemLdStr global_104
  loc_C9E406: LitStr vbNullString
  loc_C9E409: NeStr
  loc_C9E40B: BranchF loc_C9E40F
  loc_C9E40E: ExitProcHresult
  loc_C9E40F: FLdPr Me
  loc_C9E412: MemLdI2 bGenerado
  loc_C9E415: BranchF loc_C9E419
  loc_C9E418: ExitProcHresult
  loc_C9E419: LitVarStr var_A4, "Generando reporte..."
  loc_C9E41E: PopAdLdVar
  loc_C9E41F: FLdPr Me
  loc_C9E422: VCallAd Control_ID_statusBar
  loc_C9E425: FStAdFunc var_B8
  loc_C9E428: FLdPr var_B8
  loc_C9E42B: LateIdSt
  loc_C9E430: FFree1Ad var_B8
  loc_C9E433: LitI4 &HB
  loc_C9E438: CI2I4
  loc_C9E439: FLdPr Me
  loc_C9E43C: Me.MousePointer = from_stack_1
  loc_C9E441: LitI4 0
  loc_C9E446: LitI4 1
  loc_C9E44B: FLdPr Me
  loc_C9E44E: MemLdRfVar from_stack_1.global_96
  loc_C9E451: Redim
  loc_C9E45B: FLdPr Me
  loc_C9E45E: VCallAd Control_ID_ssTab
  loc_C9E461: FStAdFunc var_B8
  loc_C9E464: FLdPr var_B8
  loc_C9E467: LateIdLdVar var_C8 DispID_4 0
  loc_C9E46E: CI2Var
  loc_C9E46F: FStI2 var_CA
  loc_C9E472: FFree1Ad var_B8
  loc_C9E475: FFree1Var var_C8 = ""
  loc_C9E478: FLdI2 var_CA
  loc_C9E47B: LitI2_Byte 0
  loc_C9E47D: EqI2
  loc_C9E47E: BranchF loc_C9E48F
  loc_C9E481: LitI2_Byte 2
  loc_C9E483: CUI1I2
  loc_C9E485: FLdPr Me
  loc_C9E488: MemStUI1
  loc_C9E48C: Branch loc_C9FCFD
  loc_C9E48F: FLdI2 var_CA
  loc_C9E492: LitI2_Byte 1
  loc_C9E494: EqI2
  loc_C9E495: BranchF loc_C9E49B
  loc_C9E498: Branch loc_C9FCFD
  loc_C9E49B: FLdI2 var_CA
  loc_C9E49E: LitI2_Byte 2
  loc_C9E4A0: EqI2
  loc_C9E4A1: BranchF loc_C9EE8B
  loc_C9E4A4: LitI2_Byte 1
  loc_C9E4A6: CUI1I2
  loc_C9E4A8: FLdPr Me
  loc_C9E4AB: MemStUI1
  loc_C9E4AF: FLdPr Me
  loc_C9E4B2: MemLdRfVar from_stack_1.global_80
  loc_C9E4B5: NewIfNullAd
  loc_C9E4B8: FStAd var_D0 
  loc_C9E4BC: LitStr " SELECT vpadrones_parcela.nro_padron CodiInmu, IFNULL(CUIT,'') cuit, denominacion DetaPers, '' Vinculo, vpadrones_parcela.dependencia, vpadrones_parcela.distrito, vpadrones_parcela.seccion, vpadrones_parcela.manzana, IFNULL(vpadrones_parcela.parcela,0) parcela, IFNULL(vpadrones_parcela.subparcela,0) subparcela, IFNULL(vpadrones_parcela.dig_veri,'0') DigiVeri, "
  loc_C9E4BF: LitStr " IFNULL(domicilio.Calle,'') DetaCallReal, IFNULL(domicilio.NumeCalle,'') NucaInmuReal, IFNULL(domicilio.Barrio,'') DetaBarrReal, IFNULL(domicilio.Manzana,'') ManzInmuReal, IFNULL(domicilio.Casa,'') CasaInmuReal, IFNULL(domicilio.Localidad,'') DetaLocaReal, "
  loc_C9E4C2: ConcatStr
  loc_C9E4C3: FStStrNoPop var_D4
  loc_C9E4C6: LitStr " concat(domicilio.Monoblock,"
  loc_C9E4C9: ConcatStr
  loc_C9E4CA: FStStrNoPop var_D8
  loc_C9E4CD: LitStr " IF(ifnull(domicilio.Torre,'')<>'' AND ifnull(domicilio.Torre,'')<>'0',' - Torre: ',''), IF(ifnull(domicilio.Torre,'')<>'' AND ifnull(domicilio.Torre,'')<>'0',ifnull(domicilio.Torre,''),''),"
  loc_C9E4D0: ConcatStr
  loc_C9E4D1: FStStrNoPop var_DC
  loc_C9E4D4: LitStr " IF(ifnull(domicilio.piso,'')<>'' AND ifnull(domicilio.piso,'')<>'0',' - Piso: ',''), IF(ifnull(domicilio.Piso,'')<>'' AND ifnull(domicilio.Piso,'')<>'0',ifnull(domicilio.Piso,''),''),"
  loc_C9E4D7: ConcatStr
  loc_C9E4D8: FStStrNoPop var_E0
  loc_C9E4DB: LitStr " IF(ifnull(domicilio.Dpto,'')<>'' AND ifnull(domicilio.Dpto,'')<>'0',' - Dpto: ',''), IF(ifnull(domicilio.Dpto,'')<>'' AND ifnull(domicilio.Dpto,'')<>'0',ifnull(domicilio.Dpto,''),''),"
  loc_C9E4DE: ConcatStr
  loc_C9E4DF: FStStrNoPop var_E4
  loc_C9E4E2: LitStr " IF(ifnull(domicilio.NroLocal,'')<>'' AND ifnull(domicilio.NroLocal,'')<>'0',' - Nro Local: ',''), IF(ifnull(domicilio.NroLocal,'')<>'' AND ifnull(domicilio.NroLocal,'')<>'0',ifnull(domicilio.NroLocal,''),''),"
  loc_C9E4E5: ConcatStr
  loc_C9E4E6: FStStrNoPop var_E8
  loc_C9E4E9: LitStr " IF(domicilio.Planta<>'',' - ',''),domicilio.Planta) UbicInmuReal,"
  loc_C9E4EC: ConcatStr
  loc_C9E4ED: FStStrNoPop var_EC
  loc_C9E4F0: LitStr " IFNULL(domicilio.CodPostal,'0') as CopoInmuReal"
  loc_C9E4F3: ConcatStr
  loc_C9E4F4: FStStrNoPop var_F0
  loc_C9E4F7: LitStr " FROM vpadrones_parcela"
  loc_C9E4FA: ConcatStr
  loc_C9E4FB: FStStrNoPop var_F4
  loc_C9E4FE: LitStr " INNER JOIN vpadrones_persona ON vpadrones_persona.nro_padron = vpadrones_parcela.nro_padron"
  loc_C9E501: ConcatStr
  loc_C9E502: FStStrNoPop var_F8
  loc_C9E505: LitStr " LEFT JOIN domicilio ON domicilio.CodiOfic = 1 AND domicilio.CodiCome = vpadrones_parcela.nro_padron AND domicilio.Tipo = 'Real'"
  loc_C9E508: ConcatStr
  loc_C9E509: FStStrNoPop var_FC
  loc_C9E50C: LitStr " WHERE vpadrones_parcela.nro_padron = '"
  loc_C9E50F: ConcatStr
  loc_C9E510: FStStrNoPop var_100
  loc_C9E513: FLdPr Me
  loc_C9E516: VCallAd Control_ID_CuenCtctMsk
  loc_C9E519: FStAdFunc var_B8
  loc_C9E51C: FLdPr var_B8
  loc_C9E51F: LateIdLdVar var_C8 DispID_22 0
  loc_C9E526: CStrVarTmp
  loc_C9E527: FStStrNoPop var_104
  loc_C9E52A: ConcatStr
  loc_C9E52B: FStStrNoPop var_108
  loc_C9E52E: LitStr "' AND principal = 'Si'"
  loc_C9E531: ConcatStr
  loc_C9E532: FStStrNoPop var_10C
  loc_C9E535: FLdPr var_D0
  loc_C9E538: Call clsboleto.RedefineRS(from_stack_1v)
  loc_C9E53D: FFreeStr var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = ""
  loc_C9E55E: FFree1Ad var_B8
  loc_C9E561: FFree1Var var_C8 = ""
  loc_C9E564: FLdRfVar var_110
  loc_C9E567: FLdPr var_D0
  loc_C9E56A: from_stack_1 = clsboleto.RecordCount
  loc_C9E56F: ILdRf var_110
  loc_C9E572: LitI4 0
  loc_C9E577: EqI4
  loc_C9E578: BranchF loc_C9E645
  loc_C9E57B: LitStr " SELECT vpadrones_parcela.nro_padron CodiInmu, IFNULL(CUIT,'') cuit, denominacion DetaPers, '' Vinculo, vpadrones_parcela.dependencia, vpadrones_parcela.distrito, vpadrones_parcela.seccion, vpadrones_parcela.manzana, IFNULL(vpadrones_parcela.parcela,0) parcela, IFNULL(vpadrones_parcela.subparcela,0) subparcela, IFNULL(vpadrones_parcela.dig_veri,'0') DigiVeri, "
  loc_C9E57E: LitStr " IFNULL(domicilio.Calle,'') DetaCallReal, IFNULL(domicilio.NumeCalle,'') NucaInmuReal, IFNULL(domicilio.Barrio,'') DetaBarrReal, IFNULL(domicilio.Manzana,'') ManzInmuReal, IFNULL(domicilio.Casa,'') CasaInmuReal, IFNULL(domicilio.Localidad,'') DetaLocaReal, "
  loc_C9E581: ConcatStr
  loc_C9E582: FStStrNoPop var_D4
  loc_C9E585: LitStr " concat(domicilio.Monoblock,"
  loc_C9E588: ConcatStr
  loc_C9E589: FStStrNoPop var_D8
  loc_C9E58C: LitStr " IF(ifnull(domicilio.Torre,'')<>'' AND ifnull(domicilio.Torre,'')<>'0',' - Torre: ',''), IF(ifnull(domicilio.Torre,'')<>'' AND ifnull(domicilio.Torre,'')<>'0',ifnull(domicilio.Torre,''),''),"
  loc_C9E58F: ConcatStr
  loc_C9E590: FStStrNoPop var_DC
  loc_C9E593: LitStr " IF(ifnull(domicilio.piso,'')<>'' AND ifnull(domicilio.piso,'')<>'0',' - Piso: ',''), IF(ifnull(domicilio.Piso,'')<>'' AND ifnull(domicilio.Piso,'')<>'0',ifnull(domicilio.Piso,''),''),"
  loc_C9E596: ConcatStr
  loc_C9E597: FStStrNoPop var_E0
  loc_C9E59A: LitStr " IF(ifnull(domicilio.Dpto,'')<>'' AND ifnull(domicilio.Dpto,'')<>'0',' - Dpto: ',''), IF(ifnull(domicilio.Dpto,'')<>'' AND ifnull(domicilio.Dpto,'')<>'0',ifnull(domicilio.Dpto,''),''),"
  loc_C9E59D: ConcatStr
  loc_C9E59E: FStStrNoPop var_E4
  loc_C9E5A1: LitStr " IF(ifnull(domicilio.NroLocal,'')<>'' AND ifnull(domicilio.NroLocal,'')<>'0',' - Nro Local: ',''), IF(ifnull(domicilio.NroLocal,'')<>'' AND ifnull(domicilio.NroLocal,'')<>'0',ifnull(domicilio.NroLocal,''),''),"
  loc_C9E5A4: ConcatStr
  loc_C9E5A5: FStStrNoPop var_E8
  loc_C9E5A8: LitStr " IF(domicilio.Planta<>'',' - ',''),domicilio.Planta) UbicInmuReal,"
  loc_C9E5AB: ConcatStr
  loc_C9E5AC: FStStrNoPop var_EC
  loc_C9E5AF: LitStr " IFNULL(domicilio.CodPostal,'0') as CopoInmuReal"
  loc_C9E5B2: ConcatStr
  loc_C9E5B3: FStStrNoPop var_F0
  loc_C9E5B6: LitStr " FROM vpadrones_parcela"
  loc_C9E5B9: ConcatStr
  loc_C9E5BA: FStStrNoPop var_F4
  loc_C9E5BD: LitStr " INNER JOIN vpadrones_persona ON vpadrones_persona.nro_padron = vpadrones_parcela.nro_padron"
  loc_C9E5C0: ConcatStr
  loc_C9E5C1: FStStrNoPop var_F8
  loc_C9E5C4: LitStr " LEFT JOIN domicilio ON domicilio.CodiOfic = 1 AND domicilio.CodiCome = vpadrones_parcela.nro_padron AND domicilio.Tipo = 'Real'"
  loc_C9E5C7: ConcatStr
  loc_C9E5C8: FStStrNoPop var_FC
  loc_C9E5CB: LitStr " WHERE vpadrones_parcela.nro_padron = '"
  loc_C9E5CE: ConcatStr
  loc_C9E5CF: FStStrNoPop var_100
  loc_C9E5D2: FLdPr Me
  loc_C9E5D5: VCallAd Control_ID_CuenCtctMsk
  loc_C9E5D8: FStAdFunc var_B8
  loc_C9E5DB: FLdPr var_B8
  loc_C9E5DE: LateIdLdVar var_C8 DispID_22 0
  loc_C9E5E5: CStrVarTmp
  loc_C9E5E6: FStStrNoPop var_104
  loc_C9E5E9: ConcatStr
  loc_C9E5EA: FStStrNoPop var_108
  loc_C9E5ED: LitStr "'"
  loc_C9E5F0: ConcatStr
  loc_C9E5F1: FStStrNoPop var_10C
  loc_C9E5F4: FLdPr var_D0
  loc_C9E5F7: Call clsboleto.RedefineRS(from_stack_1v)
  loc_C9E5FC: FFreeStr var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = ""
  loc_C9E61D: FFree1Ad var_B8
  loc_C9E620: FFree1Var var_C8 = ""
  loc_C9E623: FLdRfVar var_110
  loc_C9E626: FLdPr var_D0
  loc_C9E629: from_stack_1 = clsboleto.RecordCount
  loc_C9E62E: ILdRf var_110
  loc_C9E631: LitI4 0
  loc_C9E636: EqI4
  loc_C9E637: BranchF loc_C9E645
  loc_C9E63A: LitStr "La cuenta no existe"
  loc_C9E63D: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_C9E642: Branch loc_C9FEDA
  loc_C9E645: FLdRfVar var_110
  loc_C9E648: FLdPr var_D0
  loc_C9E64B: from_stack_1 = clsboleto.RecordCount
  loc_C9E650: ILdRf var_110
  loc_C9E653: LitI4 0
  loc_C9E658: GtI4
  loc_C9E659: BranchF loc_C9EE82
  loc_C9E65C: FLdRfVar var_B8
  loc_C9E65F: FLdPr var_D0
  loc_C9E662: from_stack_1v = clsboleto.RsFrmGet()
  loc_C9E667: FLdPr var_B8
  loc_C9E66A: Me.MoveFirst
  loc_C9E66F: FFree1Ad var_B8
  loc_C9E672: FLdPr Me
  loc_C9E675: VCallAd Control_ID_CuenCtctMsk
  loc_C9E678: FStAdFunc var_B8
  loc_C9E67B: FLdPr var_B8
  loc_C9E67E: LateIdLdVar var_C8 DispID_22 0
  loc_C9E685: PopAd
  loc_C9E687: FLdPr Me
  loc_C9E68A: VCallAd Control_ID_HastaInmuMsk
  loc_C9E68D: FStAdFunc var_114
  loc_C9E690: FLdPr var_114
  loc_C9E693: LateIdLdVar var_124 DispID_15 0
  loc_C9E69A: CStrVarTmp
  loc_C9E69B: FStStrNoPop var_D8
  loc_C9E69E: FLdRfVar var_C8
  loc_C9E6A1: CStrVarTmp
  loc_C9E6A2: FStStrNoPop var_D4
  loc_C9E6A5: LitI2_Byte 1
  loc_C9E6A7: CUI1I2
  loc_C9E6A9: ImpAdCallFPR4  = Proc_270_104_B20D90(, )
  loc_C9E6AE: FStFPR8 var_90
  loc_C9E6B1: FFreeStr var_D4 = ""
  loc_C9E6B8: FFreeAd var_B8 = ""
  loc_C9E6BF: FFreeVar var_C8 = ""
  loc_C9E6C6: FLdFPR8 var_90
  loc_C9E6C9: LitI2_Byte 0
  loc_C9E6CB: CR8I2
  loc_C9E6CC: LeR8
  loc_C9E6CD: BranchF loc_C9EE48
  loc_C9E6D0: LitI2_Byte 0
  loc_C9E6D2: LitVar_Missing var_C8
  loc_C9E6D5: LitI2_Byte 0
  loc_C9E6D7: LitVarStr var_A4, "SERVICIOS MUNICIPALES"
  loc_C9E6DC: PopAdLdVar
  loc_C9E6DD: LitI4 1
  loc_C9E6E2: FLdPr Me
  loc_C9E6E5: MemLdStr global_96
  loc_C9E6E8: AryLock
  loc_C9E6EB: Ary1LdPr
  loc_C9E6EC: MemLdRfVar from_stack_1.global_0
  loc_C9E6EF: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C9E6F4: AryUnlock
  loc_C9E6F7: FFree1Var var_C8 = ""
  loc_C9E6FA: FLdRfVar var_12C
  loc_C9E6FD: LitVarStr var_A4, "CodiInmu"
  loc_C9E702: PopAdLdVar
  loc_C9E703: FLdRfVar var_114
  loc_C9E706: FLdRfVar var_B8
  loc_C9E709: FLdPr var_D0
  loc_C9E70C: from_stack_1v = clsboleto.RsFrmGet()
  loc_C9E711: FLdPr var_B8
  loc_C9E714:  = Me.Fields
  loc_C9E719: FLdPr var_114
  loc_C9E71C: from_stack_2 = Me.Item(from_stack_1)
  loc_C9E721: LitI2_Byte 0
  loc_C9E723: LitVar_Missing var_124
  loc_C9E726: LitI2_Byte 0
  loc_C9E728: FLdZeroAd var_12C
  loc_C9E72B: CVarAd
  loc_C9E72F: PopAdLdVar
  loc_C9E730: LitI4 1
  loc_C9E735: FLdPr Me
  loc_C9E738: MemLdStr global_96
  loc_C9E73B: AryLock
  loc_C9E73E: Ary1LdPr
  loc_C9E73F: MemLdRfVar from_stack_1.global_4
  loc_C9E742: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C9E747: AryUnlock
  loc_C9E74A: FFreeAd var_B8 = ""
  loc_C9E751: FFreeVar var_C8 = ""
  loc_C9E758: FLdRfVar var_12C
  loc_C9E75B: LitVarStr var_A4, "DetaPers"
  loc_C9E760: PopAdLdVar
  loc_C9E761: FLdRfVar var_114
  loc_C9E764: FLdRfVar var_B8
  loc_C9E767: FLdPr var_D0
  loc_C9E76A: from_stack_1v = clsboleto.RsFrmGet()
  loc_C9E76F: FLdPr var_B8
  loc_C9E772:  = Me.Fields
  loc_C9E777: FLdPr var_114
  loc_C9E77A: from_stack_2 = Me.Item(from_stack_1)
  loc_C9E77F: LitI2_Byte 0
  loc_C9E781: LitVar_Missing var_124
  loc_C9E784: LitI2_Byte 0
  loc_C9E786: FLdZeroAd var_12C
  loc_C9E789: CVarAd
  loc_C9E78D: PopAdLdVar
  loc_C9E78E: LitI4 1
  loc_C9E793: FLdPr Me
  loc_C9E796: MemLdStr global_96
  loc_C9E799: AryLock
  loc_C9E79C: Ary1LdPr
  loc_C9E79D: MemLdRfVar from_stack_1.global_20
  loc_C9E7A0: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C9E7A5: AryUnlock
  loc_C9E7A8: FFreeAd var_B8 = ""
  loc_C9E7AF: FFreeVar var_C8 = ""
  loc_C9E7B6: FLdRfVar var_12C
  loc_C9E7B9: LitVarStr var_A4, "Vinculo"
  loc_C9E7BE: PopAdLdVar
  loc_C9E7BF: FLdRfVar var_114
  loc_C9E7C2: FLdRfVar var_B8
  loc_C9E7C5: FLdPr var_D0
  loc_C9E7C8: from_stack_1v = clsboleto.RsFrmGet()
  loc_C9E7CD: FLdPr var_B8
  loc_C9E7D0:  = Me.Fields
  loc_C9E7D5: FLdPr var_114
  loc_C9E7D8: from_stack_2 = Me.Item(from_stack_1)
  loc_C9E7DD: LitI2_Byte 0
  loc_C9E7DF: LitVar_Missing var_124
  loc_C9E7E2: LitI2_Byte 0
  loc_C9E7E4: FLdZeroAd var_12C
  loc_C9E7E7: CVarAd
  loc_C9E7EB: PopAdLdVar
  loc_C9E7EC: LitI4 1
  loc_C9E7F1: FLdPr Me
  loc_C9E7F4: MemLdStr global_96
  loc_C9E7F7: AryLock
  loc_C9E7FA: Ary1LdPr
  loc_C9E7FB: MemLdRfVar from_stack_1.global_24
  loc_C9E7FE: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C9E803: AryUnlock
  loc_C9E806: FFreeAd var_B8 = ""
  loc_C9E80D: FFreeVar var_C8 = ""
  loc_C9E814: FLdRfVar var_12C
  loc_C9E817: LitVarStr var_A4, "DetaCallReal"
  loc_C9E81C: PopAdLdVar
  loc_C9E81D: FLdRfVar var_114
  loc_C9E820: FLdRfVar var_B8
  loc_C9E823: FLdPr var_D0
  loc_C9E826: from_stack_1v = clsboleto.RsFrmGet()
  loc_C9E82B: FLdPr var_B8
  loc_C9E82E:  = Me.Fields
  loc_C9E833: FLdPr var_114
  loc_C9E836: from_stack_2 = Me.Item(from_stack_1)
  loc_C9E83B: LitI2_Byte 0
  loc_C9E83D: LitVar_Missing var_124
  loc_C9E840: LitI2_Byte 0
  loc_C9E842: FLdZeroAd var_12C
  loc_C9E845: CVarAd
  loc_C9E849: PopAdLdVar
  loc_C9E84A: LitI4 1
  loc_C9E84F: FLdPr Me
  loc_C9E852: MemLdStr global_96
  loc_C9E855: AryLock
  loc_C9E858: Ary1LdPr
  loc_C9E859: MemLdRfVar from_stack_1.global_28
  loc_C9E85C: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C9E861: AryUnlock
  loc_C9E864: FFreeAd var_B8 = ""
  loc_C9E86B: FFreeVar var_C8 = ""
  loc_C9E872: FLdRfVar var_12C
  loc_C9E875: LitVarStr var_A4, "NucaInmuReal"
  loc_C9E87A: PopAdLdVar
  loc_C9E87B: FLdRfVar var_114
  loc_C9E87E: FLdRfVar var_B8
  loc_C9E881: FLdPr var_D0
  loc_C9E884: from_stack_1v = clsboleto.RsFrmGet()
  loc_C9E889: FLdPr var_B8
  loc_C9E88C:  = Me.Fields
  loc_C9E891: FLdPr var_114
  loc_C9E894: from_stack_2 = Me.Item(from_stack_1)
  loc_C9E899: LitI2_Byte 0
  loc_C9E89B: LitVar_Missing var_124
  loc_C9E89E: LitI2_Byte 0
  loc_C9E8A0: FLdZeroAd var_12C
  loc_C9E8A3: CVarAd
  loc_C9E8A7: PopAdLdVar
  loc_C9E8A8: LitI4 1
  loc_C9E8AD: FLdPr Me
  loc_C9E8B0: MemLdStr global_96
  loc_C9E8B3: AryLock
  loc_C9E8B6: Ary1LdPr
  loc_C9E8B7: MemLdRfVar from_stack_1.global_32
  loc_C9E8BA: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C9E8BF: AryUnlock
  loc_C9E8C2: FFreeAd var_B8 = ""
  loc_C9E8C9: FFreeVar var_C8 = ""
  loc_C9E8D0: FLdRfVar var_12C
  loc_C9E8D3: LitVarStr var_A4, "DetaBarrReal"
  loc_C9E8D8: PopAdLdVar
  loc_C9E8D9: FLdRfVar var_114
  loc_C9E8DC: FLdRfVar var_B8
  loc_C9E8DF: FLdPr var_D0
  loc_C9E8E2: from_stack_1v = clsboleto.RsFrmGet()
  loc_C9E8E7: FLdPr var_B8
  loc_C9E8EA:  = Me.Fields
  loc_C9E8EF: FLdPr var_114
  loc_C9E8F2: from_stack_2 = Me.Item(from_stack_1)
  loc_C9E8F7: LitI2_Byte 0
  loc_C9E8F9: LitVar_Missing var_124
  loc_C9E8FC: LitI2_Byte 0
  loc_C9E8FE: FLdZeroAd var_12C
  loc_C9E901: CVarAd
  loc_C9E905: PopAdLdVar
  loc_C9E906: LitI4 1
  loc_C9E90B: FLdPr Me
  loc_C9E90E: MemLdStr global_96
  loc_C9E911: AryLock
  loc_C9E914: Ary1LdPr
  loc_C9E915: MemLdRfVar from_stack_1.global_36
  loc_C9E918: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C9E91D: AryUnlock
  loc_C9E920: FFreeAd var_B8 = ""
  loc_C9E927: FFreeVar var_C8 = ""
  loc_C9E92E: FLdRfVar var_12C
  loc_C9E931: LitVarStr var_A4, "ManzInmuReal"
  loc_C9E936: PopAdLdVar
  loc_C9E937: FLdRfVar var_114
  loc_C9E93A: FLdRfVar var_B8
  loc_C9E93D: FLdPr var_D0
  loc_C9E940: from_stack_1v = clsboleto.RsFrmGet()
  loc_C9E945: FLdPr var_B8
  loc_C9E948:  = Me.Fields
  loc_C9E94D: FLdPr var_114
  loc_C9E950: from_stack_2 = Me.Item(from_stack_1)
  loc_C9E955: LitI2_Byte 0
  loc_C9E957: LitVar_Missing var_124
  loc_C9E95A: LitI2_Byte 0
  loc_C9E95C: FLdZeroAd var_12C
  loc_C9E95F: CVarAd
  loc_C9E963: PopAdLdVar
  loc_C9E964: LitI4 1
  loc_C9E969: FLdPr Me
  loc_C9E96C: MemLdStr global_96
  loc_C9E96F: AryLock
  loc_C9E972: Ary1LdPr
  loc_C9E973: MemLdRfVar from_stack_1.global_40
  loc_C9E976: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C9E97B: AryUnlock
  loc_C9E97E: FFreeAd var_B8 = ""
  loc_C9E985: FFreeVar var_C8 = ""
  loc_C9E98C: FLdRfVar var_12C
  loc_C9E98F: LitVarStr var_A4, "CasaInmuReal"
  loc_C9E994: PopAdLdVar
  loc_C9E995: FLdRfVar var_114
  loc_C9E998: FLdRfVar var_B8
  loc_C9E99B: FLdPr var_D0
  loc_C9E99E: from_stack_1v = clsboleto.RsFrmGet()
  loc_C9E9A3: FLdPr var_B8
  loc_C9E9A6:  = Me.Fields
  loc_C9E9AB: FLdPr var_114
  loc_C9E9AE: from_stack_2 = Me.Item(from_stack_1)
  loc_C9E9B3: LitI2_Byte 0
  loc_C9E9B5: LitVar_Missing var_124
  loc_C9E9B8: LitI2_Byte 0
  loc_C9E9BA: FLdZeroAd var_12C
  loc_C9E9BD: CVarAd
  loc_C9E9C1: PopAdLdVar
  loc_C9E9C2: LitI4 1
  loc_C9E9C7: FLdPr Me
  loc_C9E9CA: MemLdStr global_96
  loc_C9E9CD: AryLock
  loc_C9E9D0: Ary1LdPr
  loc_C9E9D1: MemLdRfVar from_stack_1.global_44
  loc_C9E9D4: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C9E9D9: AryUnlock
  loc_C9E9DC: FFreeAd var_B8 = ""
  loc_C9E9E3: FFreeVar var_C8 = ""
  loc_C9E9EA: FLdRfVar var_12C
  loc_C9E9ED: LitVarStr var_A4, "UbicInmuReal"
  loc_C9E9F2: PopAdLdVar
  loc_C9E9F3: FLdRfVar var_114
  loc_C9E9F6: FLdRfVar var_B8
  loc_C9E9F9: FLdPr var_D0
  loc_C9E9FC: from_stack_1v = clsboleto.RsFrmGet()
  loc_C9EA01: FLdPr var_B8
  loc_C9EA04:  = Me.Fields
  loc_C9EA09: FLdPr var_114
  loc_C9EA0C: from_stack_2 = Me.Item(from_stack_1)
  loc_C9EA11: LitI2_Byte 0
  loc_C9EA13: LitVar_Missing var_124
  loc_C9EA16: LitI2_Byte 0
  loc_C9EA18: FLdZeroAd var_12C
  loc_C9EA1B: CVarAd
  loc_C9EA1F: PopAdLdVar
  loc_C9EA20: LitI4 1
  loc_C9EA25: FLdPr Me
  loc_C9EA28: MemLdStr global_96
  loc_C9EA2B: AryLock
  loc_C9EA2E: Ary1LdPr
  loc_C9EA2F: MemLdRfVar from_stack_1.global_48
  loc_C9EA32: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C9EA37: AryUnlock
  loc_C9EA3A: FFreeAd var_B8 = ""
  loc_C9EA41: FFreeVar var_C8 = ""
  loc_C9EA48: FLdRfVar var_12C
  loc_C9EA4B: LitVarStr var_A4, "DetaLocaReal"
  loc_C9EA50: PopAdLdVar
  loc_C9EA51: FLdRfVar var_114
  loc_C9EA54: FLdRfVar var_B8
  loc_C9EA57: FLdPr var_D0
  loc_C9EA5A: from_stack_1v = clsboleto.RsFrmGet()
  loc_C9EA5F: FLdPr var_B8
  loc_C9EA62:  = Me.Fields
  loc_C9EA67: FLdPr var_114
  loc_C9EA6A: from_stack_2 = Me.Item(from_stack_1)
  loc_C9EA6F: LitI2_Byte 0
  loc_C9EA71: LitVar_Missing var_124
  loc_C9EA74: LitI2_Byte 0
  loc_C9EA76: FLdZeroAd var_12C
  loc_C9EA79: CVarAd
  loc_C9EA7D: PopAdLdVar
  loc_C9EA7E: LitI4 1
  loc_C9EA83: FLdPr Me
  loc_C9EA86: MemLdStr global_96
  loc_C9EA89: AryLock
  loc_C9EA8C: Ary1LdPr
  loc_C9EA8D: MemLdRfVar from_stack_1.bGenerado
  loc_C9EA90: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C9EA95: AryUnlock
  loc_C9EA98: FFreeAd var_B8 = ""
  loc_C9EA9F: FFreeVar var_C8 = ""
  loc_C9EAA6: FLdRfVar var_12C
  loc_C9EAA9: LitVarStr var_A4, "CopoInmuReal"
  loc_C9EAAE: PopAdLdVar
  loc_C9EAAF: FLdRfVar var_114
  loc_C9EAB2: FLdRfVar var_B8
  loc_C9EAB5: FLdPr var_D0
  loc_C9EAB8: from_stack_1v = clsboleto.RsFrmGet()
  loc_C9EABD: FLdPr var_B8
  loc_C9EAC0:  = Me.Fields
  loc_C9EAC5: FLdPr var_114
  loc_C9EAC8: from_stack_2 = Me.Item(from_stack_1)
  loc_C9EACD: LitI2_Byte 0
  loc_C9EACF: LitVar_Missing var_124
  loc_C9EAD2: LitI2_Byte 0
  loc_C9EAD4: FLdZeroAd var_12C
  loc_C9EAD7: CVarAd
  loc_C9EADB: PopAdLdVar
  loc_C9EADC: LitI4 1
  loc_C9EAE1: FLdPr Me
  loc_C9EAE4: MemLdStr global_96
  loc_C9EAE7: AryLock
  loc_C9EAEA: Ary1LdPr
  loc_C9EAEB: MemLdRfVar from_stack_1.global_56
  loc_C9EAEE: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C9EAF3: AryUnlock
  loc_C9EAF6: FFreeAd var_B8 = ""
  loc_C9EAFD: FFreeVar var_C8 = ""
  loc_C9EB04: FLdRfVar var_12C
  loc_C9EB07: LitVarStr var_A4, "cuit"
  loc_C9EB0C: PopAdLdVar
  loc_C9EB0D: FLdRfVar var_114
  loc_C9EB10: FLdRfVar var_B8
  loc_C9EB13: FLdPr var_D0
  loc_C9EB16: from_stack_1v = clsboleto.RsFrmGet()
  loc_C9EB1B: FLdPr var_B8
  loc_C9EB1E:  = Me.Fields
  loc_C9EB23: FLdPr var_114
  loc_C9EB26: from_stack_2 = Me.Item(from_stack_1)
  loc_C9EB2B: LitI2_Byte 0
  loc_C9EB2D: LitVar_Missing var_124
  loc_C9EB30: LitI2_Byte 0
  loc_C9EB32: FLdZeroAd var_12C
  loc_C9EB35: CVarAd
  loc_C9EB39: PopAdLdVar
  loc_C9EB3A: LitI4 1
  loc_C9EB3F: FLdPr Me
  loc_C9EB42: MemLdStr global_96
  loc_C9EB45: AryLock
  loc_C9EB48: Ary1LdPr
  loc_C9EB49: MemLdRfVar from_stack_1.global_12
  loc_C9EB4C: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C9EB51: AryUnlock
  loc_C9EB54: FFreeAd var_B8 = ""
  loc_C9EB5B: FFreeVar var_C8 = ""
  loc_C9EB62: LitI2_Byte 0
  loc_C9EB64: LitVar_Missing var_C8
  loc_C9EB67: LitI2_Byte 0
  loc_C9EB69: LitVarStr var_A4, vbNullString
  loc_C9EB6E: PopAdLdVar
  loc_C9EB6F: LitI4 1
  loc_C9EB74: FLdPr Me
  loc_C9EB77: MemLdStr global_96
  loc_C9EB7A: AryLock
  loc_C9EB7D: Ary1LdPr
  loc_C9EB7E: MemLdRfVar from_stack_1.global_60
  loc_C9EB81: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C9EB86: AryUnlock
  loc_C9EB89: FFree1Var var_C8 = ""
  loc_C9EB8C: FLdRfVar var_C8
  loc_C9EB8F: FLdRfVar var_12C
  loc_C9EB92: LitVarStr var_A4, "Dependencia"
  loc_C9EB97: PopAdLdVar
  loc_C9EB98: FLdRfVar var_114
  loc_C9EB9B: FLdRfVar var_B8
  loc_C9EB9E: FLdPr var_D0
  loc_C9EBA1: from_stack_1v = clsboleto.RsFrmGet()
  loc_C9EBA6: FLdPr var_B8
  loc_C9EBA9:  = Me.Fields
  loc_C9EBAE: FLdPr var_114
  loc_C9EBB1: from_stack_2 = Me.Item(from_stack_1)
  loc_C9EBB6: FLdPr var_12C
  loc_C9EBB9:  = Me.Value
  loc_C9EBBE: FLdRfVar var_158
  loc_C9EBC1: FLdRfVar var_148
  loc_C9EBC4: LitVarStr var_144, "Distrito"
  loc_C9EBC9: PopAdLdVar
  loc_C9EBCA: FLdRfVar var_134
  loc_C9EBCD: FLdRfVar var_130
  loc_C9EBD0: FLdPr var_D0
  loc_C9EBD3: from_stack_1v = clsboleto.RsFrmGet()
  loc_C9EBD8: FLdPr var_130
  loc_C9EBDB:  = Me.Fields
  loc_C9EBE0: FLdPr var_134
  loc_C9EBE3: from_stack_2 = Me.Item(from_stack_1)
  loc_C9EBE8: FLdPr var_148
  loc_C9EBEB:  = Me.Value
  loc_C9EBF0: FLdRfVar var_1B4
  loc_C9EBF3: FLdRfVar var_1A4
  loc_C9EBF6: LitVarStr var_1A0, "Seccion"
  loc_C9EBFB: PopAdLdVar
  loc_C9EBFC: FLdRfVar var_190
  loc_C9EBFF: FLdRfVar var_18C
  loc_C9EC02: FLdPr var_D0
  loc_C9EC05: from_stack_1v = clsboleto.RsFrmGet()
  loc_C9EC0A: FLdPr var_18C
  loc_C9EC0D:  = Me.Fields
  loc_C9EC12: FLdPr var_190
  loc_C9EC15: from_stack_2 = Me.Item(from_stack_1)
  loc_C9EC1A: FLdPr var_1A4
  loc_C9EC1D:  = Me.Value
  loc_C9EC22: FLdRfVar var_210
  loc_C9EC25: FLdRfVar var_200
  loc_C9EC28: LitVarStr var_1FC, "Manzana"
  loc_C9EC2D: PopAdLdVar
  loc_C9EC2E: FLdRfVar var_1EC
  loc_C9EC31: FLdRfVar var_1E8
  loc_C9EC34: FLdPr var_D0
  loc_C9EC37: from_stack_1v = clsboleto.RsFrmGet()
  loc_C9EC3C: FLdPr var_1E8
  loc_C9EC3F:  = Me.Fields
  loc_C9EC44: FLdPr var_1EC
  loc_C9EC47: from_stack_2 = Me.Item(from_stack_1)
  loc_C9EC4C: FLdPr var_200
  loc_C9EC4F:  = Me.Value
  loc_C9EC54: FLdRfVar var_26C
  loc_C9EC57: FLdRfVar var_25C
  loc_C9EC5A: LitVarStr var_258, "Parcela"
  loc_C9EC5F: PopAdLdVar
  loc_C9EC60: FLdRfVar var_248
  loc_C9EC63: FLdRfVar var_244
  loc_C9EC66: FLdPr var_D0
  loc_C9EC69: from_stack_1v = clsboleto.RsFrmGet()
  loc_C9EC6E: FLdPr var_244
  loc_C9EC71:  = Me.Fields
  loc_C9EC76: FLdPr var_248
  loc_C9EC79: from_stack_2 = Me.Item(from_stack_1)
  loc_C9EC7E: FLdPr var_25C
  loc_C9EC81:  = Me.Value
  loc_C9EC86: FLdRfVar var_2C8
  loc_C9EC89: FLdRfVar var_2B8
  loc_C9EC8C: LitVarStr var_2B4, "Subparcela"
  loc_C9EC91: PopAdLdVar
  loc_C9EC92: FLdRfVar var_2A4
  loc_C9EC95: FLdRfVar var_2A0
  loc_C9EC98: FLdPr var_D0
  loc_C9EC9B: from_stack_1v = clsboleto.RsFrmGet()
  loc_C9ECA0: FLdPr var_2A0
  loc_C9ECA3:  = Me.Fields
  loc_C9ECA8: FLdPr var_2A4
  loc_C9ECAB: from_stack_2 = Me.Item(from_stack_1)
  loc_C9ECB0: FLdPr var_2B8
  loc_C9ECB3:  = Me.Value
  loc_C9ECB8: FLdRfVar var_324
  loc_C9ECBB: FLdRfVar var_314
  loc_C9ECBE: LitVarStr var_310, "DigiVeri"
  loc_C9ECC3: PopAdLdVar
  loc_C9ECC4: FLdRfVar var_300
  loc_C9ECC7: FLdRfVar var_2FC
  loc_C9ECCA: FLdPr var_D0
  loc_C9ECCD: from_stack_1v = clsboleto.RsFrmGet()
  loc_C9ECD2: FLdPr var_2FC
  loc_C9ECD5:  = Me.Fields
  loc_C9ECDA: FLdPr var_300
  loc_C9ECDD: from_stack_2 = Me.Item(from_stack_1)
  loc_C9ECE2: FLdPr var_314
  loc_C9ECE5:  = Me.Value
  loc_C9ECEA: LitI2_Byte 0
  loc_C9ECEC: LitVar_Missing var_354
  loc_C9ECEF: LitI2_Byte 0
  loc_C9ECF1: FLdRfVar var_C8
  loc_C9ECF4: LitVarStr var_B4, "-"
  loc_C9ECF9: ConcatVar var_124
  loc_C9ECFD: FLdRfVar var_158
  loc_C9ED00: ConcatVar var_168
  loc_C9ED04: LitVarStr var_178, "-"
  loc_C9ED09: ConcatVar var_188
  loc_C9ED0D: FLdRfVar var_1B4
  loc_C9ED10: ConcatVar var_1C4
  loc_C9ED14: LitVarStr var_1D4, "-"
  loc_C9ED19: ConcatVar var_1E4
  loc_C9ED1D: FLdRfVar var_210
  loc_C9ED20: ConcatVar var_220
  loc_C9ED24: LitVarStr var_230, "-"
  loc_C9ED29: ConcatVar var_240
  loc_C9ED2D: FLdRfVar var_26C
  loc_C9ED30: ConcatVar var_27C
  loc_C9ED34: LitVarStr var_28C, "-"
  loc_C9ED39: ConcatVar var_29C
  loc_C9ED3D: FLdRfVar var_2C8
  loc_C9ED40: ConcatVar var_2D8
  loc_C9ED44: LitVarStr var_2E8, "-"
  loc_C9ED49: ConcatVar var_2F8
  loc_C9ED4D: FLdRfVar var_324
  loc_C9ED50: ConcatVar var_334
  loc_C9ED54: PopAdLdVar
  loc_C9ED55: LitI4 1
  loc_C9ED5A: FLdPr Me
  loc_C9ED5D: MemLdStr global_96
  loc_C9ED60: AryLock
  loc_C9ED63: Ary1LdPr
  loc_C9ED64: MemLdRfVar from_stack_1.global_76
  loc_C9ED67: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C9ED6C: AryUnlock
  loc_C9ED6F: FFreeAd var_B8 = "": var_114 = "": var_12C = "": var_130 = "": var_134 = "": var_148 = "": var_18C = "": var_190 = "": var_1A4 = "": var_1E8 = "": var_1EC = "": var_200 = "": var_244 = "": var_248 = "": var_25C = "": var_2A0 = "": var_2A4 = "": var_2B8 = "": var_2FC = "": var_300 = ""
  loc_C9ED9C: FFreeVar var_C8 = "": var_124 = "": var_158 = "": var_168 = "": var_188 = "": var_1B4 = "": var_1C4 = "": var_1E4 = "": var_210 = "": var_220 = "": var_240 = "": var_26C = "": var_27C = "": var_29C = "": var_2C8 = "": var_2D8 = "": var_2F8 = "": var_324 = "": var_334 = ""
  loc_C9EDC7: LitI2_Byte 0
  loc_C9EDC9: LitVar_Missing var_C8
  loc_C9EDCC: LitI2_Byte 0
  loc_C9EDCE: LitVarStr var_A4, vbNullString
  loc_C9EDD3: PopAdLdVar
  loc_C9EDD4: LitI4 1
  loc_C9EDD9: FLdPr Me
  loc_C9EDDC: MemLdStr global_96
  loc_C9EDDF: AryLock
  loc_C9EDE2: Ary1LdPr
  loc_C9EDE3: MemLdRfVar from_stack_1.global_64
  loc_C9EDE6: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C9EDEB: AryUnlock
  loc_C9EDEE: FFree1Var var_C8 = ""
  loc_C9EDF1: LitI2_Byte 0
  loc_C9EDF3: LitVar_Missing var_C8
  loc_C9EDF6: LitI2_Byte 0
  loc_C9EDF8: LitVarStr var_A4, vbNullString
  loc_C9EDFD: PopAdLdVar
  loc_C9EDFE: LitI4 1
  loc_C9EE03: FLdPr Me
  loc_C9EE06: MemLdStr global_96
  loc_C9EE09: AryLock
  loc_C9EE0C: Ary1LdPr
  loc_C9EE0D: MemLdRfVar from_stack_1.global_68
  loc_C9EE10: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C9EE15: AryUnlock
  loc_C9EE18: FFree1Var var_C8 = ""
  loc_C9EE1B: LitI2_Byte 0
  loc_C9EE1D: LitVar_Missing var_C8
  loc_C9EE20: LitI2_Byte 0
  loc_C9EE22: LitVarStr var_A4, vbNullString
  loc_C9EE27: PopAdLdVar
  loc_C9EE28: LitI4 1
  loc_C9EE2D: FLdPr Me
  loc_C9EE30: MemLdStr global_96
  loc_C9EE33: AryLock
  loc_C9EE36: Ary1LdPr
  loc_C9EE37: MemLdRfVar from_stack_1.global_72
  loc_C9EE3A: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C9EE3F: AryUnlock
  loc_C9EE42: FFree1Var var_C8 = ""
  loc_C9EE45: Branch loc_C9EE82
  loc_C9EE48: LitStr "El contribuyente posee una deuda de $ "
  loc_C9EE4B: LitI4 -1
  loc_C9EE50: LitI4 0
  loc_C9EE55: LitI4 -1
  loc_C9EE5A: LitI4 2
  loc_C9EE5F: FLdRfVar var_90
  loc_C9EE62: CVarRef
  loc_C9EE67: ImpAdCallI2 FormatNumber(, , , , )
  loc_C9EE6C: FStStrNoPop var_D4
  loc_C9EE6F: ConcatStr
  loc_C9EE70: FStStrNoPop var_D8
  loc_C9EE73: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_C9EE78: FFreeStr var_D4 = ""
  loc_C9EE7F: Branch loc_C9FEDA
  loc_C9EE82: LitNothing
  loc_C9EE84: FStAd var_D0 
  loc_C9EE88: Branch loc_C9FCFD
  loc_C9EE8B: FLdI2 var_CA
  loc_C9EE8E: LitI2_Byte 3
  loc_C9EE90: EqI2
  loc_C9EE91: BranchF loc_C9F06C
  loc_C9EE94: LitI2_Byte 0
  loc_C9EE96: CUI1I2
  loc_C9EE98: FLdPr Me
  loc_C9EE9B: MemStUI1
  loc_C9EE9F: LitI4 1
  loc_C9EEA4: FLdPr Me
  loc_C9EEA7: MemLdStr global_96
  loc_C9EEAA: AryLock
  loc_C9EEAD: Ary1LdRf
  loc_C9EEAE: FStR4 var_35C
  loc_C9EEB1: FLdPr Me
  loc_C9EEB4: VCallAd Control_ID_NombreTxt
  loc_C9EEB7: FStAdFunc var_B8
  loc_C9EEBA: LitI2_Byte 0
  loc_C9EEBC: LitVar_Missing var_124
  loc_C9EEBF: LitI2_Byte 0
  loc_C9EEC1: FLdZeroAd var_B8
  loc_C9EEC4: CVarAd
  loc_C9EEC8: PopAdLdVar
  loc_C9EEC9: FMemLdRf unk_51EEB1
  loc_C9EECE: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C9EED3: FFree1Ad var_B8
  loc_C9EED6: FFreeVar var_C8 = ""
  loc_C9EEDD: FLdRfVar var_92
  loc_C9EEE0: FLdPr Me
  loc_C9EEE3: VCallAd Control_ID_TipoDNICbo
  loc_C9EEE6: FStAdFunc var_B8
  loc_C9EEE9: FLdPr var_B8
  loc_C9EEEC:  = Me.ListIndex
  loc_C9EEF1: FLdI2 var_92
  loc_C9EEF4: LitI2_Byte 0
  loc_C9EEF6: EqI2
  loc_C9EEF7: FFree1Ad var_B8
  loc_C9EEFA: BranchF loc_C9EF56
  loc_C9EEFD: FLdPr Me
  loc_C9EF00: VCallAd Control_ID_DNIMsk
  loc_C9EF03: FStAdFunc var_B8
  loc_C9EF06: LitI4 1
  loc_C9EF0B: LitI4 1
  loc_C9EF10: LitVarStr var_A4, "##\.###\.###"
  loc_C9EF15: FStVarCopyObj var_124
  loc_C9EF18: FLdRfVar var_124
  loc_C9EF1B: FLdZeroAd var_B8
  loc_C9EF1E: CVarAd
  loc_C9EF22: ImpAdCallI2 Format$(, )
  loc_C9EF27: FStStr var_D4
  loc_C9EF2A: LitI2_Byte 0
  loc_C9EF2C: LitVar_Missing var_168
  loc_C9EF2F: LitI2_Byte 0
  loc_C9EF31: FLdZeroAd var_D4
  loc_C9EF34: CVarStr var_158
  loc_C9EF37: PopAdLdVar
  loc_C9EF38: FMemLdRf unk_51EEB1
  loc_C9EF3D: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C9EF42: FFree1Str var_D4
  loc_C9EF45: FFree1Ad var_B8
  loc_C9EF48: FFreeVar var_C8 = "": var_124 = "": var_158 = ""
  loc_C9EF53: Branch loc_C9EF82
  loc_C9EF56: FLdPr Me
  loc_C9EF59: VCallAd Control_ID_DNIMsk
  loc_C9EF5C: FStAdFunc var_B8
  loc_C9EF5F: LitI2_Byte 0
  loc_C9EF61: LitVar_Missing var_124
  loc_C9EF64: LitI2_Byte 0
  loc_C9EF66: FLdZeroAd var_B8
  loc_C9EF69: CVarAd
  loc_C9EF6D: PopAdLdVar
  loc_C9EF6E: FMemLdRf unk_51EEB1
  loc_C9EF73: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C9EF78: FFree1Ad var_B8
  loc_C9EF7B: FFreeVar var_C8 = ""
  loc_C9EF82: FLdPr Me
  loc_C9EF85: VCallAd Control_ID_CalleTxt
  loc_C9EF88: FStAdFunc var_B8
  loc_C9EF8B: LitI2_Byte 0
  loc_C9EF8D: LitVar_Missing var_124
  loc_C9EF90: LitI2_Byte 0
  loc_C9EF92: FLdZeroAd var_B8
  loc_C9EF95: CVarAd
  loc_C9EF99: PopAdLdVar
  loc_C9EF9A: FMemLdRf unk_51EEB1
  loc_C9EF9F: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C9EFA4: FFree1Ad var_B8
  loc_C9EFA7: FFreeVar var_C8 = ""
  loc_C9EFAE: FLdPr Me
  loc_C9EFB1: VCallAd Control_ID_NucaMsk
  loc_C9EFB4: FStAdFunc var_B8
  loc_C9EFB7: LitI2_Byte 0
  loc_C9EFB9: LitVar_Missing var_124
  loc_C9EFBC: LitI2_Byte 0
  loc_C9EFBE: FLdZeroAd var_B8
  loc_C9EFC1: CVarAd
  loc_C9EFC5: PopAdLdVar
  loc_C9EFC6: FMemLdRf unk_51EEB1
  loc_C9EFCB: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C9EFD0: FFree1Ad var_B8
  loc_C9EFD3: FFreeVar var_C8 = ""
  loc_C9EFDA: FLdPr Me
  loc_C9EFDD: VCallAd Control_ID_UbicacionTxt
  loc_C9EFE0: FStAdFunc var_B8
  loc_C9EFE3: LitI2_Byte 0
  loc_C9EFE5: LitVar_Missing var_124
  loc_C9EFE8: LitI2_Byte 0
  loc_C9EFEA: FLdZeroAd var_B8
  loc_C9EFED: CVarAd
  loc_C9EFF1: PopAdLdVar
  loc_C9EFF2: FMemLdRf unk_51EEB1
  loc_C9EFF7: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C9EFFC: FFree1Ad var_B8
  loc_C9EFFF: FFreeVar var_C8 = ""
  loc_C9F006: FLdPr Me
  loc_C9F009: VCallAd Control_ID_LocalidadTxt
  loc_C9F00C: FStAdFunc var_B8
  loc_C9F00F: LitI2_Byte 0
  loc_C9F011: LitVar_Missing var_124
  loc_C9F014: LitI2_Byte 0
  loc_C9F016: FLdZeroAd var_B8
  loc_C9F019: CVarAd
  loc_C9F01D: PopAdLdVar
  loc_C9F01E: FMemLdRf unk_51EEB1
  loc_C9F023: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C9F028: FFree1Ad var_B8
  loc_C9F02B: FFreeVar var_C8 = ""
  loc_C9F032: FLdPr Me
  loc_C9F035: VCallAd Control_ID_CPTxt
  loc_C9F038: FStAdFunc var_B8
  loc_C9F03B: LitI2_Byte 0
  loc_C9F03D: LitVar_Missing var_124
  loc_C9F040: LitI2_Byte 0
  loc_C9F042: FLdZeroAd var_B8
  loc_C9F045: CVarAd
  loc_C9F049: PopAdLdVar
  loc_C9F04A: FMemLdRf unk_51EEB1
  loc_C9F04F: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C9F054: FFree1Ad var_B8
  loc_C9F057: FFreeVar var_C8 = ""
  loc_C9F05E: LitI4 0
  loc_C9F063: FStR4 var_35C
  loc_C9F066: AryUnlock
  loc_C9F069: Branch loc_C9FCFD
  loc_C9F06C: FLdI2 var_CA
  loc_C9F06F: LitI2_Byte 4
  loc_C9F071: EqI2
  loc_C9F072: BranchF loc_C9F45C
  loc_C9F075: LitI2_Byte 3
  loc_C9F077: CUI1I2
  loc_C9F079: FLdPr Me
  loc_C9F07C: MemStUI1
  loc_C9F080: FLdPr Me
  loc_C9F083: MemLdRfVar from_stack_1.global_84
  loc_C9F086: NewIfNullAd
  loc_C9F089: FStAd var_360 
  loc_C9F08D: LitStr "SELECT DetaPers, relacion.CuenCtct, NudoPers,"
  loc_C9F090: LitStr " persona.DecrPers as DecaPost,"
  loc_C9F093: ConcatStr
  loc_C9F094: FStStrNoPop var_D4
  loc_C9F097: LitStr " persona.NurePers as NumePost,"
  loc_C9F09A: ConcatStr
  loc_C9F09B: FStStrNoPop var_D8
  loc_C9F09E: LitStr " persona.DebrPers as DebaPost,"
  loc_C9F0A1: ConcatStr
  loc_C9F0A2: FStStrNoPop var_DC
  loc_C9F0A5: LitStr " persona.MarePers as ManzPost,"
  loc_C9F0A8: ConcatStr
  loc_C9F0A9: FStStrNoPop var_E0
  loc_C9F0AC: LitStr " persona.CarePers as CasaPost,"
  loc_C9F0AF: ConcatStr
  loc_C9F0B0: FStStrNoPop var_E4
  loc_C9F0B3: LitStr " persona.UbrePers as UbicPost,"
  loc_C9F0B6: ConcatStr
  loc_C9F0B7: FStStrNoPop var_E8
  loc_C9F0BA: LitStr " persona.DelrPers as DeloPost,"
  loc_C9F0BD: ConcatStr
  loc_C9F0BE: FStStrNoPop var_EC
  loc_C9F0C1: LitStr " persona.CoprPers as CopoPost,"
  loc_C9F0C4: ConcatStr
  loc_C9F0C5: FStStrNoPop var_F0
  loc_C9F0C8: LitStr " relacion.CucuPers , persona.CucuPers"
  loc_C9F0CB: ConcatStr
  loc_C9F0CC: FStStrNoPop var_F4
  loc_C9F0CF: LitStr " FROM relacion LEFT JOIN infogov.persona ON infogov.persona.CucuPers = relacion.CucuPers"
  loc_C9F0D2: ConcatStr
  loc_C9F0D3: FStStrNoPop var_F8
  loc_C9F0D6: LitStr " WHERE relacion.CodiOfic = 3 AND relacion.CuenCtct = '"
  loc_C9F0D9: ConcatStr
  loc_C9F0DA: FStStrNoPop var_FC
  loc_C9F0DD: FLdPr Me
  loc_C9F0E0: VCallAd Control_ID_CuenCtctMsk
  loc_C9F0E3: FStAdFunc var_B8
  loc_C9F0E6: FLdPr var_B8
  loc_C9F0E9: LateIdLdVar var_C8 DispID_22 0
  loc_C9F0F0: CStrVarTmp
  loc_C9F0F1: FStStrNoPop var_100
  loc_C9F0F4: ConcatStr
  loc_C9F0F5: FStStrNoPop var_104
  loc_C9F0F8: LitStr "'"
  loc_C9F0FB: ConcatStr
  loc_C9F0FC: FStStrNoPop var_108
  loc_C9F0FF: FLdPr var_360
  loc_C9F102: Call clspersonas.RedefineRS(from_stack_1v)
  loc_C9F107: FFreeStr var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = ""
  loc_C9F126: FFree1Ad var_B8
  loc_C9F129: FFree1Var var_C8 = ""
  loc_C9F12C: FLdRfVar var_110
  loc_C9F12F: FLdPr var_360
  loc_C9F132: from_stack_1 = clspersonas.RecordCount
  loc_C9F137: ILdRf var_110
  loc_C9F13A: LitI4 0
  loc_C9F13F: GtI4
  loc_C9F140: BranchF loc_C9F448
  loc_C9F143: FLdPr Me
  loc_C9F146: VCallAd Control_ID_CuenCtctMsk
  loc_C9F149: FStAdFunc var_B8
  loc_C9F14C: FLdPr var_B8
  loc_C9F14F: LateIdLdVar var_C8 DispID_0 0
  loc_C9F156: PopAd
  loc_C9F158: FLdRfVar var_368
  loc_C9F15B: LitI4 0
  loc_C9F160: LitI4 0
  loc_C9F165: FLdRfVar var_C8
  loc_C9F168: CStrVarTmp
  loc_C9F169: FStStrNoPop var_D4
  loc_C9F16C: LitI2_Byte 3
  loc_C9F16E: FLdRfVar var_88
  loc_C9F171: NewIfNullPr clsctacte
  loc_C9F174: from_stack_5v = clsctacte.BuscaDeudaParaLibreDeuda(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_C9F179: FLdFPR8 var_368
  loc_C9F17C: FStFPR8 var_90
  loc_C9F17F: FFree1Str var_D4
  loc_C9F182: FFree1Ad var_B8
  loc_C9F185: FFree1Var var_C8 = ""
  loc_C9F188: FLdFPR8 var_90
  loc_C9F18B: LitI2_Byte 0
  loc_C9F18D: CR8I2
  loc_C9F18E: EqR4
  loc_C9F18F: BranchF loc_C9F43A
  loc_C9F192: LitI2_Byte 0
  loc_C9F194: LitVar_Missing var_C8
  loc_C9F197: LitI2_Byte 0
  loc_C9F199: LitVarStr var_A4, "DEUDORES VARIOS"
  loc_C9F19E: PopAdLdVar
  loc_C9F19F: LitI4 1
  loc_C9F1A4: FLdPr Me
  loc_C9F1A7: MemLdStr global_96
  loc_C9F1AA: AryLock
  loc_C9F1AD: Ary1LdPr
  loc_C9F1AE: MemLdRfVar from_stack_1.global_0
  loc_C9F1B1: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C9F1B6: AryUnlock
  loc_C9F1B9: FFree1Var var_C8 = ""
  loc_C9F1BC: FLdRfVar var_C8
  loc_C9F1BF: FLdPr var_360
  loc_C9F1C2: from_stack_1 = clspersonas.CuenCtct
  loc_C9F1C7: LitI2_Byte 0
  loc_C9F1C9: LitVar_Missing var_124
  loc_C9F1CC: LitI2_Byte 0
  loc_C9F1CE: FLdVar var_C8
  loc_C9F1D2: LitI4 1
  loc_C9F1D7: FLdPr Me
  loc_C9F1DA: MemLdStr global_96
  loc_C9F1DD: AryLock
  loc_C9F1E0: Ary1LdPr
  loc_C9F1E1: MemLdRfVar from_stack_1.global_4
  loc_C9F1E4: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C9F1E9: AryUnlock
  loc_C9F1EC: FFreeVar var_C8 = ""
  loc_C9F1F3: FLdRfVar var_D4
  loc_C9F1F6: FLdPr var_360
  loc_C9F1F9: from_stack_1 = clspersonas.DetaPers
  loc_C9F1FE: LitI2_Byte 0
  loc_C9F200: LitVar_Missing var_124
  loc_C9F203: LitI2_Byte 0
  loc_C9F205: FLdZeroAd var_D4
  loc_C9F208: CVarStr var_C8
  loc_C9F20B: PopAdLdVar
  loc_C9F20C: LitI4 1
  loc_C9F211: FLdPr Me
  loc_C9F214: MemLdStr global_96
  loc_C9F217: AryLock
  loc_C9F21A: Ary1LdPr
  loc_C9F21B: MemLdRfVar from_stack_1.global_20
  loc_C9F21E: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C9F223: AryUnlock
  loc_C9F226: FFreeVar var_C8 = ""
  loc_C9F22D: FLdRfVar var_D4
  loc_C9F230: FLdPr var_360
  loc_C9F233: from_stack_1 = clspersonas.DecaPost
  loc_C9F238: LitI2_Byte 0
  loc_C9F23A: LitVar_Missing var_124
  loc_C9F23D: LitI2_Byte 0
  loc_C9F23F: FLdZeroAd var_D4
  loc_C9F242: CVarStr var_C8
  loc_C9F245: PopAdLdVar
  loc_C9F246: LitI4 1
  loc_C9F24B: FLdPr Me
  loc_C9F24E: MemLdStr global_96
  loc_C9F251: AryLock
  loc_C9F254: Ary1LdPr
  loc_C9F255: MemLdRfVar from_stack_1.global_28
  loc_C9F258: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C9F25D: AryUnlock
  loc_C9F260: FFreeVar var_C8 = ""
  loc_C9F267: FLdRfVar var_D4
  loc_C9F26A: FLdPr var_360
  loc_C9F26D: from_stack_1 = clspersonas.NumePost
  loc_C9F272: LitI2_Byte 0
  loc_C9F274: LitVar_Missing var_124
  loc_C9F277: LitI2_Byte 0
  loc_C9F279: FLdZeroAd var_D4
  loc_C9F27C: CVarStr var_C8
  loc_C9F27F: PopAdLdVar
  loc_C9F280: LitI4 1
  loc_C9F285: FLdPr Me
  loc_C9F288: MemLdStr global_96
  loc_C9F28B: AryLock
  loc_C9F28E: Ary1LdPr
  loc_C9F28F: MemLdRfVar from_stack_1.global_32
  loc_C9F292: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C9F297: AryUnlock
  loc_C9F29A: FFreeVar var_C8 = ""
  loc_C9F2A1: FLdRfVar var_D4
  loc_C9F2A4: FLdPr var_360
  loc_C9F2A7: from_stack_1 = clspersonas.DebaPost
  loc_C9F2AC: LitI2_Byte 0
  loc_C9F2AE: LitVar_Missing var_124
  loc_C9F2B1: LitI2_Byte 0
  loc_C9F2B3: FLdZeroAd var_D4
  loc_C9F2B6: CVarStr var_C8
  loc_C9F2B9: PopAdLdVar
  loc_C9F2BA: LitI4 1
  loc_C9F2BF: FLdPr Me
  loc_C9F2C2: MemLdStr global_96
  loc_C9F2C5: AryLock
  loc_C9F2C8: Ary1LdPr
  loc_C9F2C9: MemLdRfVar from_stack_1.global_36
  loc_C9F2CC: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C9F2D1: AryUnlock
  loc_C9F2D4: FFreeVar var_C8 = ""
  loc_C9F2DB: FLdRfVar var_D4
  loc_C9F2DE: FLdPr var_360
  loc_C9F2E1: from_stack_1 = clspersonas.ManzPost
  loc_C9F2E6: LitI2_Byte 0
  loc_C9F2E8: LitVar_Missing var_124
  loc_C9F2EB: LitI2_Byte 0
  loc_C9F2ED: FLdZeroAd var_D4
  loc_C9F2F0: CVarStr var_C8
  loc_C9F2F3: PopAdLdVar
  loc_C9F2F4: LitI4 1
  loc_C9F2F9: FLdPr Me
  loc_C9F2FC: MemLdStr global_96
  loc_C9F2FF: AryLock
  loc_C9F302: Ary1LdPr
  loc_C9F303: MemLdRfVar from_stack_1.global_40
  loc_C9F306: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C9F30B: AryUnlock
  loc_C9F30E: FFreeVar var_C8 = ""
  loc_C9F315: FLdRfVar var_D4
  loc_C9F318: FLdPr var_360
  loc_C9F31B: from_stack_1 = clspersonas.CasaPost
  loc_C9F320: LitI2_Byte 0
  loc_C9F322: LitVar_Missing var_124
  loc_C9F325: LitI2_Byte 0
  loc_C9F327: FLdZeroAd var_D4
  loc_C9F32A: CVarStr var_C8
  loc_C9F32D: PopAdLdVar
  loc_C9F32E: LitI4 1
  loc_C9F333: FLdPr Me
  loc_C9F336: MemLdStr global_96
  loc_C9F339: AryLock
  loc_C9F33C: Ary1LdPr
  loc_C9F33D: MemLdRfVar from_stack_1.global_44
  loc_C9F340: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C9F345: AryUnlock
  loc_C9F348: FFreeVar var_C8 = ""
  loc_C9F34F: FLdRfVar var_D4
  loc_C9F352: FLdPr var_360
  loc_C9F355: from_stack_1 = clspersonas.UbicPost
  loc_C9F35A: LitI2_Byte 0
  loc_C9F35C: LitVar_Missing var_124
  loc_C9F35F: LitI2_Byte 0
  loc_C9F361: FLdZeroAd var_D4
  loc_C9F364: CVarStr var_C8
  loc_C9F367: PopAdLdVar
  loc_C9F368: LitI4 1
  loc_C9F36D: FLdPr Me
  loc_C9F370: MemLdStr global_96
  loc_C9F373: AryLock
  loc_C9F376: Ary1LdPr
  loc_C9F377: MemLdRfVar from_stack_1.global_48
  loc_C9F37A: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C9F37F: AryUnlock
  loc_C9F382: FFreeVar var_C8 = ""
  loc_C9F389: FLdRfVar var_D4
  loc_C9F38C: FLdPr var_360
  loc_C9F38F: from_stack_1 = clspersonas.DeloPost
  loc_C9F394: LitI2_Byte 0
  loc_C9F396: LitVar_Missing var_124
  loc_C9F399: LitI2_Byte 0
  loc_C9F39B: FLdZeroAd var_D4
  loc_C9F39E: CVarStr var_C8
  loc_C9F3A1: PopAdLdVar
  loc_C9F3A2: LitI4 1
  loc_C9F3A7: FLdPr Me
  loc_C9F3AA: MemLdStr global_96
  loc_C9F3AD: AryLock
  loc_C9F3B0: Ary1LdPr
  loc_C9F3B1: MemLdRfVar from_stack_1.bGenerado
  loc_C9F3B4: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C9F3B9: AryUnlock
  loc_C9F3BC: FFreeVar var_C8 = ""
  loc_C9F3C3: FLdRfVar var_D4
  loc_C9F3C6: FLdPr var_360
  loc_C9F3C9: from_stack_1 = clspersonas.CopoPost
  loc_C9F3CE: LitI2_Byte 0
  loc_C9F3D0: LitVar_Missing var_124
  loc_C9F3D3: LitI2_Byte 0
  loc_C9F3D5: FLdZeroAd var_D4
  loc_C9F3D8: CVarStr var_C8
  loc_C9F3DB: PopAdLdVar
  loc_C9F3DC: LitI4 1
  loc_C9F3E1: FLdPr Me
  loc_C9F3E4: MemLdStr global_96
  loc_C9F3E7: AryLock
  loc_C9F3EA: Ary1LdPr
  loc_C9F3EB: MemLdRfVar from_stack_1.global_56
  loc_C9F3EE: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C9F3F3: AryUnlock
  loc_C9F3F6: FFreeVar var_C8 = ""
  loc_C9F3FD: FLdRfVar var_D4
  loc_C9F400: FLdPr var_360
  loc_C9F403: from_stack_1 = clspersonas.CucuPers
  loc_C9F408: LitI2_Byte 0
  loc_C9F40A: LitVar_Missing var_124
  loc_C9F40D: LitI2_Byte 0
  loc_C9F40F: FLdZeroAd var_D4
  loc_C9F412: CVarStr var_C8
  loc_C9F415: PopAdLdVar
  loc_C9F416: LitI4 1
  loc_C9F41B: FLdPr Me
  loc_C9F41E: MemLdStr global_96
  loc_C9F421: AryLock
  loc_C9F424: Ary1LdPr
  loc_C9F425: MemLdRfVar from_stack_1.global_12
  loc_C9F428: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C9F42D: AryUnlock
  loc_C9F430: FFreeVar var_C8 = ""
  loc_C9F437: Branch loc_C9F445
  loc_C9F43A: LitStr "El contribuyente no existe como deudor"
  loc_C9F43D: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_C9F442: Branch loc_C9FEDA
  loc_C9F445: Branch loc_C9F453
  loc_C9F448: LitStr "La cuenta no existe"
  loc_C9F44B: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_C9F450: Branch loc_C9FEDA
  loc_C9F453: LitNothing
  loc_C9F455: FStAd var_360 
  loc_C9F459: Branch loc_C9FCFD
  loc_C9F45C: FLdI2 var_CA
  loc_C9F45F: LitI2_Byte 5
  loc_C9F461: EqI2
  loc_C9F462: BranchF loc_C9FCFD
  loc_C9F465: LitI2_Byte 4
  loc_C9F467: CUI1I2
  loc_C9F469: FLdPr Me
  loc_C9F46C: MemStUI1
  loc_C9F470: FLdPr Me
  loc_C9F473: MemLdRfVar from_stack_1.global_88
  loc_C9F476: NewIfNullAd
  loc_C9F479: FStAd var_36C 
  loc_C9F47D: LitStr "SELECT difunto.CodiDifu, DetaPers, difunto.CodiDifu, NudoPers,"
  loc_C9F480: LitStr " IFNULL(domipostal.calle,'') as DecaPost,"
  loc_C9F483: ConcatStr
  loc_C9F484: FStStrNoPop var_D4
  loc_C9F487: LitStr " IFNULL(domipostal.NumeCalle,'') as NumePost,"
  loc_C9F48A: ConcatStr
  loc_C9F48B: FStStrNoPop var_D8
  loc_C9F48E: LitStr " IFNULL(domipostal.barrio,'') as DebaPost,"
  loc_C9F491: ConcatStr
  loc_C9F492: FStStrNoPop var_DC
  loc_C9F495: LitStr " IFNULL(domipostal.Manzana,'') as ManzPost,"
  loc_C9F498: ConcatStr
  loc_C9F499: FStStrNoPop var_E0
  loc_C9F49C: LitStr " IFNULL(domipostal.Casa,'') as CasaPost,"
  loc_C9F49F: ConcatStr
  loc_C9F4A0: FStStrNoPop var_E4
  loc_C9F4A3: LitStr " IFNULL(concat(domipostal.Monoblock,IF(domipostal.Dpto<>'',' - ',''),domipostal.Dpto,IF(domipostal.Planta<>'',' - ',''),domipostal.Planta,IF(domipostal.NroLocal<>'',' - ',''), domipostal.NroLocal),'') as UbicPost,"
  loc_C9F4A6: ConcatStr
  loc_C9F4A7: FStStrNoPop var_E8
  loc_C9F4AA: LitStr " IFNULL(domipostal.Localidad,'') as DeloPost,"
  loc_C9F4AD: ConcatStr
  loc_C9F4AE: FStStrNoPop var_EC
  loc_C9F4B1: LitStr " IFNULL(domipostal.CodPostal,'') as CopoPost,"
  loc_C9F4B4: ConcatStr
  loc_C9F4B5: FStStrNoPop var_F0
  loc_C9F4B8: LitStr " difunto.CucuPers, DetaTise, FeveDifu, persona.CucuPers, '' NumeDifu, '' FilaDifu, '' SeccDifu, DetaDedi"
  loc_C9F4BB: ConcatStr
  loc_C9F4BC: FStStrNoPop var_F4
  loc_C9F4BF: LitStr " FROM difunto LEFT JOIN infogov.persona ON infogov.persona.CucuPers = difunto.CucuPers"
  loc_C9F4C2: ConcatStr
  loc_C9F4C3: FStStrNoPop var_F8
  loc_C9F4C6: LitStr " LEFT JOIN tiposepu ON tiposepu.CodiTise = difunto.CodiTise"
  loc_C9F4C9: ConcatStr
  loc_C9F4CA: FStStrNoPop var_FC
  loc_C9F4CD: LitStr " LEFT JOIN detadifu ON detadifu.CodiDifu = difunto.CodiDifu"
  loc_C9F4D0: ConcatStr
  loc_C9F4D1: FStStrNoPop var_100
  loc_C9F4D4: LitStr " LEFT JOIN domicilio domipostal ON domipostal.CodiOfic = 4 AND domipostal.CodiCome = difunto.CodiDifu AND domipostal.Tipo = 'Postal'"
  loc_C9F4D7: ConcatStr
  loc_C9F4D8: FStStrNoPop var_104
  loc_C9F4DB: LitStr " WHERE difunto.CodiDifu = "
  loc_C9F4DE: ConcatStr
  loc_C9F4DF: FStStrNoPop var_108
  loc_C9F4E2: FLdPr Me
  loc_C9F4E5: VCallAd Control_ID_CuenCtctMsk
  loc_C9F4E8: FStAdFunc var_B8
  loc_C9F4EB: FLdPr var_B8
  loc_C9F4EE: LateIdLdVar var_C8 DispID_22 0
  loc_C9F4F5: CStrVarTmp
  loc_C9F4F6: FStStrNoPop var_10C
  loc_C9F4F9: ConcatStr
  loc_C9F4FA: FStStrNoPop var_370
  loc_C9F4FD: LitStr " ORDER BY NumeDedi"
  loc_C9F500: ConcatStr
  loc_C9F501: FStStrNoPop var_374
  loc_C9F504: FLdPr var_36C
  loc_C9F507: Call clsdifunto.RedefineRS(from_stack_1v)
  loc_C9F50C: FFreeStr var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_370 = ""
  loc_C9F531: FFree1Ad var_B8
  loc_C9F534: FFree1Var var_C8 = ""
  loc_C9F537: FLdRfVar var_110
  loc_C9F53A: FLdPr var_36C
  loc_C9F53D: from_stack_1 = clsdifunto.RecordCount
  loc_C9F542: ILdRf var_110
  loc_C9F545: LitI4 0
  loc_C9F54A: GtI4
  loc_C9F54B: BranchF loc_C9FCEC
  loc_C9F54E: FLdPr Me
  loc_C9F551: VCallAd Control_ID_CuenCtctMsk
  loc_C9F554: FStAdFunc var_B8
  loc_C9F557: FLdPr var_B8
  loc_C9F55A: LateIdLdVar var_C8 DispID_22 0
  loc_C9F561: PopAd
  loc_C9F563: FLdPr Me
  loc_C9F566: VCallAd Control_ID_HastaInmuMsk
  loc_C9F569: FStAdFunc var_114
  loc_C9F56C: FLdPr var_114
  loc_C9F56F: LateIdLdVar var_124 DispID_15 0
  loc_C9F576: CStrVarTmp
  loc_C9F577: FStStrNoPop var_D8
  loc_C9F57A: FLdRfVar var_C8
  loc_C9F57D: CStrVarTmp
  loc_C9F57E: FStStrNoPop var_D4
  loc_C9F581: LitI2_Byte 1
  loc_C9F583: CUI1I2
  loc_C9F585: ImpAdCallFPR4  = Proc_270_104_B20D90(, )
  loc_C9F58A: FStFPR8 var_90
  loc_C9F58D: FFreeStr var_D4 = ""
  loc_C9F594: FFreeAd var_B8 = ""
  loc_C9F59B: FFreeVar var_C8 = ""
  loc_C9F5A2: FLdPr Me
  loc_C9F5A5: VCallAd Control_ID_CuenCtctMsk
  loc_C9F5A8: FStAdFunc var_B8
  loc_C9F5AB: FLdPr var_B8
  loc_C9F5AE: LateIdLdVar var_C8 DispID_22 0
  loc_C9F5B5: PopAd
  loc_C9F5B7: FLdPr Me
  loc_C9F5BA: VCallAd Control_ID_HastaInmuMsk
  loc_C9F5BD: FStAdFunc var_114
  loc_C9F5C0: FLdPr var_114
  loc_C9F5C3: LateIdLdVar var_124 DispID_15 0
  loc_C9F5CA: CStrVarTmp
  loc_C9F5CB: FStStrNoPop var_D8
  loc_C9F5CE: FLdRfVar var_C8
  loc_C9F5D1: CStrVarTmp
  loc_C9F5D2: FStStrNoPop var_D4
  loc_C9F5D5: LitI2_Byte 4
  loc_C9F5D7: CUI1I2
  loc_C9F5D9: ImpAdCallFPR4  = Proc_270_104_B20D90(, )
  loc_C9F5DE: FStFPR8 var_90
  loc_C9F5E1: FFreeStr var_D4 = ""
  loc_C9F5E8: FFreeAd var_B8 = ""
  loc_C9F5EF: FFreeVar var_C8 = ""
  loc_C9F5F6: FLdFPR8 var_90
  loc_C9F5F9: LitI2_Byte 0
  loc_C9F5FB: CR8I2
  loc_C9F5FC: LeR8
  loc_C9F5FD: BranchF loc_C9FCE9
  loc_C9F600: LitI2_Byte 0
  loc_C9F602: LitVar_Missing var_C8
  loc_C9F605: LitI2_Byte 0
  loc_C9F607: LitVarStr var_A4, "CEMENTERIO"
  loc_C9F60C: PopAdLdVar
  loc_C9F60D: LitI4 1
  loc_C9F612: FLdPr Me
  loc_C9F615: MemLdStr global_96
  loc_C9F618: AryLock
  loc_C9F61B: Ary1LdPr
  loc_C9F61C: MemLdRfVar from_stack_1.global_0
  loc_C9F61F: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C9F624: AryUnlock
  loc_C9F627: FFree1Var var_C8 = ""
  loc_C9F62A: FLdRfVar var_12C
  loc_C9F62D: LitVarStr var_A4, "CodiDifu"
  loc_C9F632: PopAdLdVar
  loc_C9F633: FLdRfVar var_114
  loc_C9F636: FLdRfVar var_B8
  loc_C9F639: FLdPr var_36C
  loc_C9F63C: from_stack_1v = clsdifunto.RsFrmGet()
  loc_C9F641: FLdPr var_B8
  loc_C9F644:  = Me.Fields
  loc_C9F649: FLdPr var_114
  loc_C9F64C: from_stack_2 = Me.Item(from_stack_1)
  loc_C9F651: LitI2_Byte 0
  loc_C9F653: LitVar_Missing var_124
  loc_C9F656: LitI2_Byte 0
  loc_C9F658: FLdZeroAd var_12C
  loc_C9F65B: CVarAd
  loc_C9F65F: PopAdLdVar
  loc_C9F660: LitI4 1
  loc_C9F665: FLdPr Me
  loc_C9F668: MemLdStr global_96
  loc_C9F66B: AryLock
  loc_C9F66E: Ary1LdPr
  loc_C9F66F: MemLdRfVar from_stack_1.global_4
  loc_C9F672: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C9F677: AryUnlock
  loc_C9F67A: FFreeAd var_B8 = ""
  loc_C9F681: FFreeVar var_C8 = ""
  loc_C9F688: FLdRfVar var_12C
  loc_C9F68B: LitVarStr var_A4, "DetaPers"
  loc_C9F690: PopAdLdVar
  loc_C9F691: FLdRfVar var_114
  loc_C9F694: FLdRfVar var_B8
  loc_C9F697: FLdPr var_36C
  loc_C9F69A: from_stack_1v = clsdifunto.RsFrmGet()
  loc_C9F69F: FLdPr var_B8
  loc_C9F6A2:  = Me.Fields
  loc_C9F6A7: FLdPr var_114
  loc_C9F6AA: from_stack_2 = Me.Item(from_stack_1)
  loc_C9F6AF: LitI2_Byte 0
  loc_C9F6B1: LitVar_Missing var_124
  loc_C9F6B4: LitI2_Byte 0
  loc_C9F6B6: FLdZeroAd var_12C
  loc_C9F6B9: CVarAd
  loc_C9F6BD: PopAdLdVar
  loc_C9F6BE: LitI4 1
  loc_C9F6C3: FLdPr Me
  loc_C9F6C6: MemLdStr global_96
  loc_C9F6C9: AryLock
  loc_C9F6CC: Ary1LdPr
  loc_C9F6CD: MemLdRfVar from_stack_1.global_20
  loc_C9F6D0: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C9F6D5: AryUnlock
  loc_C9F6D8: FFreeAd var_B8 = ""
  loc_C9F6DF: FFreeVar var_C8 = ""
  loc_C9F6E6: FLdRfVar var_12C
  loc_C9F6E9: LitVarStr var_A4, "DecaPost"
  loc_C9F6EE: PopAdLdVar
  loc_C9F6EF: FLdRfVar var_114
  loc_C9F6F2: FLdRfVar var_B8
  loc_C9F6F5: FLdPr var_36C
  loc_C9F6F8: from_stack_1v = clsdifunto.RsFrmGet()
  loc_C9F6FD: FLdPr var_B8
  loc_C9F700:  = Me.Fields
  loc_C9F705: FLdPr var_114
  loc_C9F708: from_stack_2 = Me.Item(from_stack_1)
  loc_C9F70D: LitI2_Byte 0
  loc_C9F70F: LitVar_Missing var_124
  loc_C9F712: LitI2_Byte 0
  loc_C9F714: FLdZeroAd var_12C
  loc_C9F717: CVarAd
  loc_C9F71B: PopAdLdVar
  loc_C9F71C: LitI4 1
  loc_C9F721: FLdPr Me
  loc_C9F724: MemLdStr global_96
  loc_C9F727: AryLock
  loc_C9F72A: Ary1LdPr
  loc_C9F72B: MemLdRfVar from_stack_1.global_28
  loc_C9F72E: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C9F733: AryUnlock
  loc_C9F736: FFreeAd var_B8 = ""
  loc_C9F73D: FFreeVar var_C8 = ""
  loc_C9F744: FLdRfVar var_12C
  loc_C9F747: LitVarStr var_A4, "NumePost"
  loc_C9F74C: PopAdLdVar
  loc_C9F74D: FLdRfVar var_114
  loc_C9F750: FLdRfVar var_B8
  loc_C9F753: FLdPr var_36C
  loc_C9F756: from_stack_1v = clsdifunto.RsFrmGet()
  loc_C9F75B: FLdPr var_B8
  loc_C9F75E:  = Me.Fields
  loc_C9F763: FLdPr var_114
  loc_C9F766: from_stack_2 = Me.Item(from_stack_1)
  loc_C9F76B: LitI2_Byte 0
  loc_C9F76D: LitVar_Missing var_124
  loc_C9F770: LitI2_Byte 0
  loc_C9F772: FLdZeroAd var_12C
  loc_C9F775: CVarAd
  loc_C9F779: PopAdLdVar
  loc_C9F77A: LitI4 1
  loc_C9F77F: FLdPr Me
  loc_C9F782: MemLdStr global_96
  loc_C9F785: AryLock
  loc_C9F788: Ary1LdPr
  loc_C9F789: MemLdRfVar from_stack_1.global_32
  loc_C9F78C: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C9F791: AryUnlock
  loc_C9F794: FFreeAd var_B8 = ""
  loc_C9F79B: FFreeVar var_C8 = ""
  loc_C9F7A2: FLdRfVar var_12C
  loc_C9F7A5: LitVarStr var_A4, "DebaPost"
  loc_C9F7AA: PopAdLdVar
  loc_C9F7AB: FLdRfVar var_114
  loc_C9F7AE: FLdRfVar var_B8
  loc_C9F7B1: FLdPr var_36C
  loc_C9F7B4: from_stack_1v = clsdifunto.RsFrmGet()
  loc_C9F7B9: FLdPr var_B8
  loc_C9F7BC:  = Me.Fields
  loc_C9F7C1: FLdPr var_114
  loc_C9F7C4: from_stack_2 = Me.Item(from_stack_1)
  loc_C9F7C9: LitI2_Byte 0
  loc_C9F7CB: LitVar_Missing var_124
  loc_C9F7CE: LitI2_Byte 0
  loc_C9F7D0: FLdZeroAd var_12C
  loc_C9F7D3: CVarAd
  loc_C9F7D7: PopAdLdVar
  loc_C9F7D8: LitI4 1
  loc_C9F7DD: FLdPr Me
  loc_C9F7E0: MemLdStr global_96
  loc_C9F7E3: AryLock
  loc_C9F7E6: Ary1LdPr
  loc_C9F7E7: MemLdRfVar from_stack_1.global_36
  loc_C9F7EA: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C9F7EF: AryUnlock
  loc_C9F7F2: FFreeAd var_B8 = ""
  loc_C9F7F9: FFreeVar var_C8 = ""
  loc_C9F800: FLdRfVar var_12C
  loc_C9F803: LitVarStr var_A4, "ManzPost"
  loc_C9F808: PopAdLdVar
  loc_C9F809: FLdRfVar var_114
  loc_C9F80C: FLdRfVar var_B8
  loc_C9F80F: FLdPr var_36C
  loc_C9F812: from_stack_1v = clsdifunto.RsFrmGet()
  loc_C9F817: FLdPr var_B8
  loc_C9F81A:  = Me.Fields
  loc_C9F81F: FLdPr var_114
  loc_C9F822: from_stack_2 = Me.Item(from_stack_1)
  loc_C9F827: LitI2_Byte 0
  loc_C9F829: LitVar_Missing var_124
  loc_C9F82C: LitI2_Byte 0
  loc_C9F82E: FLdZeroAd var_12C
  loc_C9F831: CVarAd
  loc_C9F835: PopAdLdVar
  loc_C9F836: LitI4 1
  loc_C9F83B: FLdPr Me
  loc_C9F83E: MemLdStr global_96
  loc_C9F841: AryLock
  loc_C9F844: Ary1LdPr
  loc_C9F845: MemLdRfVar from_stack_1.global_40
  loc_C9F848: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C9F84D: AryUnlock
  loc_C9F850: FFreeAd var_B8 = ""
  loc_C9F857: FFreeVar var_C8 = ""
  loc_C9F85E: FLdRfVar var_12C
  loc_C9F861: LitVarStr var_A4, "CasaPost"
  loc_C9F866: PopAdLdVar
  loc_C9F867: FLdRfVar var_114
  loc_C9F86A: FLdRfVar var_B8
  loc_C9F86D: FLdPr var_36C
  loc_C9F870: from_stack_1v = clsdifunto.RsFrmGet()
  loc_C9F875: FLdPr var_B8
  loc_C9F878:  = Me.Fields
  loc_C9F87D: FLdPr var_114
  loc_C9F880: from_stack_2 = Me.Item(from_stack_1)
  loc_C9F885: LitI2_Byte 0
  loc_C9F887: LitVar_Missing var_124
  loc_C9F88A: LitI2_Byte 0
  loc_C9F88C: FLdZeroAd var_12C
  loc_C9F88F: CVarAd
  loc_C9F893: PopAdLdVar
  loc_C9F894: LitI4 1
  loc_C9F899: FLdPr Me
  loc_C9F89C: MemLdStr global_96
  loc_C9F89F: AryLock
  loc_C9F8A2: Ary1LdPr
  loc_C9F8A3: MemLdRfVar from_stack_1.global_44
  loc_C9F8A6: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C9F8AB: AryUnlock
  loc_C9F8AE: FFreeAd var_B8 = ""
  loc_C9F8B5: FFreeVar var_C8 = ""
  loc_C9F8BC: FLdRfVar var_12C
  loc_C9F8BF: LitVarStr var_A4, "UbicPost"
  loc_C9F8C4: PopAdLdVar
  loc_C9F8C5: FLdRfVar var_114
  loc_C9F8C8: FLdRfVar var_B8
  loc_C9F8CB: FLdPr var_36C
  loc_C9F8CE: from_stack_1v = clsdifunto.RsFrmGet()
  loc_C9F8D3: FLdPr var_B8
  loc_C9F8D6:  = Me.Fields
  loc_C9F8DB: FLdPr var_114
  loc_C9F8DE: from_stack_2 = Me.Item(from_stack_1)
  loc_C9F8E3: LitI2_Byte 0
  loc_C9F8E5: LitVar_Missing var_124
  loc_C9F8E8: LitI2_Byte 0
  loc_C9F8EA: FLdZeroAd var_12C
  loc_C9F8ED: CVarAd
  loc_C9F8F1: PopAdLdVar
  loc_C9F8F2: LitI4 1
  loc_C9F8F7: FLdPr Me
  loc_C9F8FA: MemLdStr global_96
  loc_C9F8FD: AryLock
  loc_C9F900: Ary1LdPr
  loc_C9F901: MemLdRfVar from_stack_1.global_48
  loc_C9F904: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C9F909: AryUnlock
  loc_C9F90C: FFreeAd var_B8 = ""
  loc_C9F913: FFreeVar var_C8 = ""
  loc_C9F91A: FLdRfVar var_12C
  loc_C9F91D: LitVarStr var_A4, "DeloPost"
  loc_C9F922: PopAdLdVar
  loc_C9F923: FLdRfVar var_114
  loc_C9F926: FLdRfVar var_B8
  loc_C9F929: FLdPr var_36C
  loc_C9F92C: from_stack_1v = clsdifunto.RsFrmGet()
  loc_C9F931: FLdPr var_B8
  loc_C9F934:  = Me.Fields
  loc_C9F939: FLdPr var_114
  loc_C9F93C: from_stack_2 = Me.Item(from_stack_1)
  loc_C9F941: LitI2_Byte 0
  loc_C9F943: LitVar_Missing var_124
  loc_C9F946: LitI2_Byte 0
  loc_C9F948: FLdZeroAd var_12C
  loc_C9F94B: CVarAd
  loc_C9F94F: PopAdLdVar
  loc_C9F950: LitI4 1
  loc_C9F955: FLdPr Me
  loc_C9F958: MemLdStr global_96
  loc_C9F95B: AryLock
  loc_C9F95E: Ary1LdPr
  loc_C9F95F: MemLdRfVar from_stack_1.bGenerado
  loc_C9F962: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C9F967: AryUnlock
  loc_C9F96A: FFreeAd var_B8 = ""
  loc_C9F971: FFreeVar var_C8 = ""
  loc_C9F978: FLdRfVar var_12C
  loc_C9F97B: LitVarStr var_A4, "CopoPost"
  loc_C9F980: PopAdLdVar
  loc_C9F981: FLdRfVar var_114
  loc_C9F984: FLdRfVar var_B8
  loc_C9F987: FLdPr var_36C
  loc_C9F98A: from_stack_1v = clsdifunto.RsFrmGet()
  loc_C9F98F: FLdPr var_B8
  loc_C9F992:  = Me.Fields
  loc_C9F997: FLdPr var_114
  loc_C9F99A: from_stack_2 = Me.Item(from_stack_1)
  loc_C9F99F: LitI2_Byte 0
  loc_C9F9A1: LitVar_Missing var_124
  loc_C9F9A4: LitI2_Byte 0
  loc_C9F9A6: FLdZeroAd var_12C
  loc_C9F9A9: CVarAd
  loc_C9F9AD: PopAdLdVar
  loc_C9F9AE: LitI4 1
  loc_C9F9B3: FLdPr Me
  loc_C9F9B6: MemLdStr global_96
  loc_C9F9B9: AryLock
  loc_C9F9BC: Ary1LdPr
  loc_C9F9BD: MemLdRfVar from_stack_1.global_56
  loc_C9F9C0: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C9F9C5: AryUnlock
  loc_C9F9C8: FFreeAd var_B8 = ""
  loc_C9F9CF: FFreeVar var_C8 = ""
  loc_C9F9D6: FLdRfVar var_12C
  loc_C9F9D9: LitVarStr var_A4, "CucuPers"
  loc_C9F9DE: PopAdLdVar
  loc_C9F9DF: FLdRfVar var_114
  loc_C9F9E2: FLdRfVar var_B8
  loc_C9F9E5: FLdPr var_36C
  loc_C9F9E8: from_stack_1v = clsdifunto.RsFrmGet()
  loc_C9F9ED: FLdPr var_B8
  loc_C9F9F0:  = Me.Fields
  loc_C9F9F5: FLdPr var_114
  loc_C9F9F8: from_stack_2 = Me.Item(from_stack_1)
  loc_C9F9FD: LitI2_Byte 0
  loc_C9F9FF: LitVar_Missing var_124
  loc_C9FA02: LitI2_Byte 0
  loc_C9FA04: FLdZeroAd var_12C
  loc_C9FA07: CVarAd
  loc_C9FA0B: PopAdLdVar
  loc_C9FA0C: LitI4 1
  loc_C9FA11: FLdPr Me
  loc_C9FA14: MemLdStr global_96
  loc_C9FA17: AryLock
  loc_C9FA1A: Ary1LdPr
  loc_C9FA1B: MemLdRfVar from_stack_1.global_12
  loc_C9FA1E: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C9FA23: AryUnlock
  loc_C9FA26: FFreeAd var_B8 = ""
  loc_C9FA2D: FFreeVar var_C8 = ""
  loc_C9FA34: FLdRfVar var_12C
  loc_C9FA37: LitVarStr var_A4, "FeveDifu"
  loc_C9FA3C: PopAdLdVar
  loc_C9FA3D: FLdRfVar var_114
  loc_C9FA40: FLdRfVar var_B8
  loc_C9FA43: FLdPr var_36C
  loc_C9FA46: from_stack_1v = clsdifunto.RsFrmGet()
  loc_C9FA4B: FLdPr var_B8
  loc_C9FA4E:  = Me.Fields
  loc_C9FA53: FLdPr var_114
  loc_C9FA56: from_stack_2 = Me.Item(from_stack_1)
  loc_C9FA5B: LitI2_Byte 0
  loc_C9FA5D: LitVar_Missing var_124
  loc_C9FA60: LitI2_Byte 0
  loc_C9FA62: FLdZeroAd var_12C
  loc_C9FA65: CVarAd
  loc_C9FA69: PopAdLdVar
  loc_C9FA6A: LitI4 1
  loc_C9FA6F: FLdPr Me
  loc_C9FA72: MemLdStr global_96
  loc_C9FA75: AryLock
  loc_C9FA78: Ary1LdPr
  loc_C9FA79: MemLdRfVar from_stack_1.global_92
  loc_C9FA7C: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C9FA81: AryUnlock
  loc_C9FA84: FFreeAd var_B8 = ""
  loc_C9FA8B: FFreeVar var_C8 = ""
  loc_C9FA92: FLdRfVar var_12C
  loc_C9FA95: LitVarStr var_A4, "DetaTise"
  loc_C9FA9A: PopAdLdVar
  loc_C9FA9B: FLdRfVar var_114
  loc_C9FA9E: FLdRfVar var_B8
  loc_C9FAA1: FLdPr var_36C
  loc_C9FAA4: from_stack_1v = clsdifunto.RsFrmGet()
  loc_C9FAA9: FLdPr var_B8
  loc_C9FAAC:  = Me.Fields
  loc_C9FAB1: FLdPr var_114
  loc_C9FAB4: from_stack_2 = Me.Item(from_stack_1)
  loc_C9FAB9: LitI2_Byte 0
  loc_C9FABB: LitVar_Missing var_124
  loc_C9FABE: LitI2_Byte 0
  loc_C9FAC0: FLdZeroAd var_12C
  loc_C9FAC3: CVarAd
  loc_C9FAC7: PopAdLdVar
  loc_C9FAC8: LitI4 1
  loc_C9FACD: FLdPr Me
  loc_C9FAD0: MemLdStr global_96
  loc_C9FAD3: AryLock
  loc_C9FAD6: Ary1LdPr
  loc_C9FAD7: MemLdRfVar from_stack_1.global_96
  loc_C9FADA: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C9FADF: AryUnlock
  loc_C9FAE2: FFreeAd var_B8 = ""
  loc_C9FAE9: FFreeVar var_C8 = ""
  loc_C9FAF0: FLdRfVar var_12C
  loc_C9FAF3: LitVarStr var_A4, "NumeDifu"
  loc_C9FAF8: PopAdLdVar
  loc_C9FAF9: FLdRfVar var_114
  loc_C9FAFC: FLdRfVar var_B8
  loc_C9FAFF: FLdPr var_36C
  loc_C9FB02: from_stack_1v = clsdifunto.RsFrmGet()
  loc_C9FB07: FLdPr var_B8
  loc_C9FB0A:  = Me.Fields
  loc_C9FB0F: FLdPr var_114
  loc_C9FB12: from_stack_2 = Me.Item(from_stack_1)
  loc_C9FB17: LitI2_Byte 0
  loc_C9FB19: LitVar_Missing var_124
  loc_C9FB1C: LitI2_Byte 0
  loc_C9FB1E: FLdZeroAd var_12C
  loc_C9FB21: CVarAd
  loc_C9FB25: PopAdLdVar
  loc_C9FB26: LitI4 1
  loc_C9FB2B: FLdPr Me
  loc_C9FB2E: MemLdStr global_96
  loc_C9FB31: AryLock
  loc_C9FB34: Ary1LdPr
  loc_C9FB35: MemLdRfVar from_stack_1.global_100
  loc_C9FB38: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C9FB3D: AryUnlock
  loc_C9FB40: FFreeAd var_B8 = ""
  loc_C9FB47: FFreeVar var_C8 = ""
  loc_C9FB4E: FLdRfVar var_12C
  loc_C9FB51: LitVarStr var_A4, "FilaDifu"
  loc_C9FB56: PopAdLdVar
  loc_C9FB57: FLdRfVar var_114
  loc_C9FB5A: FLdRfVar var_B8
  loc_C9FB5D: FLdPr var_36C
  loc_C9FB60: from_stack_1v = clsdifunto.RsFrmGet()
  loc_C9FB65: FLdPr var_B8
  loc_C9FB68:  = Me.Fields
  loc_C9FB6D: FLdPr var_114
  loc_C9FB70: from_stack_2 = Me.Item(from_stack_1)
  loc_C9FB75: LitI2_Byte 0
  loc_C9FB77: LitVar_Missing var_124
  loc_C9FB7A: LitI2_Byte 0
  loc_C9FB7C: FLdZeroAd var_12C
  loc_C9FB7F: CVarAd
  loc_C9FB83: PopAdLdVar
  loc_C9FB84: LitI4 1
  loc_C9FB89: FLdPr Me
  loc_C9FB8C: MemLdStr global_96
  loc_C9FB8F: AryLock
  loc_C9FB92: Ary1LdPr
  loc_C9FB93: MemLdRfVar from_stack_1.global_104
  loc_C9FB96: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C9FB9B: AryUnlock
  loc_C9FB9E: FFreeAd var_B8 = ""
  loc_C9FBA5: FFreeVar var_C8 = ""
  loc_C9FBAC: FLdRfVar var_12C
  loc_C9FBAF: LitVarStr var_A4, "SeccDifu"
  loc_C9FBB4: PopAdLdVar
  loc_C9FBB5: FLdRfVar var_114
  loc_C9FBB8: FLdRfVar var_B8
  loc_C9FBBB: FLdPr var_36C
  loc_C9FBBE: from_stack_1v = clsdifunto.RsFrmGet()
  loc_C9FBC3: FLdPr var_B8
  loc_C9FBC6:  = Me.Fields
  loc_C9FBCB: FLdPr var_114
  loc_C9FBCE: from_stack_2 = Me.Item(from_stack_1)
  loc_C9FBD3: LitI2_Byte 0
  loc_C9FBD5: LitVar_Missing var_124
  loc_C9FBD8: LitI2_Byte 0
  loc_C9FBDA: FLdZeroAd var_12C
  loc_C9FBDD: CVarAd
  loc_C9FBE1: PopAdLdVar
  loc_C9FBE2: LitI4 1
  loc_C9FBE7: FLdPr Me
  loc_C9FBEA: MemLdStr global_96
  loc_C9FBED: AryLock
  loc_C9FBF0: Ary1LdPr
  loc_C9FBF1: MemLdRfVar from_stack_1.global_108
  loc_C9FBF4: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C9FBF9: AryUnlock
  loc_C9FBFC: FFreeAd var_B8 = ""
  loc_C9FC03: FFreeVar var_C8 = ""
  loc_C9FC0A: FLdRfVar var_92
  loc_C9FC0D: FLdPr var_36C
  loc_C9FC10: from_stack_1 = clsdifunto.EOF
  loc_C9FC15: FLdI2 var_92
  loc_C9FC18: NotI4
  loc_C9FC19: BranchF loc_C9FCA9
  loc_C9FC1C: LitI4 1
  loc_C9FC21: FLdPr Me
  loc_C9FC24: MemLdStr global_96
  loc_C9FC27: Ary1LdPr
  loc_C9FC28: MemLdStr global_112
  loc_C9FC2B: CVarStr var_B4
  loc_C9FC2E: FLdRfVar var_C8
  loc_C9FC31: FLdRfVar var_12C
  loc_C9FC34: LitVarStr var_A4, "DetaDedi"
  loc_C9FC39: PopAdLdVar
  loc_C9FC3A: FLdRfVar var_114
  loc_C9FC3D: FLdRfVar var_B8
  loc_C9FC40: FLdPr var_36C
  loc_C9FC43: from_stack_1v = clsdifunto.RsFrmGet()
  loc_C9FC48: FLdPr var_B8
  loc_C9FC4B:  = Me.Fields
  loc_C9FC50: FLdPr var_114
  loc_C9FC53: from_stack_2 = Me.Item(from_stack_1)
  loc_C9FC58: FLdPr var_12C
  loc_C9FC5B:  = Me.Value
  loc_C9FC60: FLdRfVar var_C8
  loc_C9FC63: ConcatVar var_124
  loc_C9FC67: LitVarStr var_144, ", "
  loc_C9FC6C: ConcatVar var_158
  loc_C9FC70: CStrVarTmp
  loc_C9FC71: FStStrNoPop var_D4
  loc_C9FC74: LitI4 1
  loc_C9FC79: FLdPr Me
  loc_C9FC7C: MemLdStr global_96
  loc_C9FC7F: Ary1LdPr
  loc_C9FC80: MemStStrCopy
  loc_C9FC84: FFree1Str var_D4
  loc_C9FC87: FFreeAd var_B8 = "": var_114 = ""
  loc_C9FC90: FFreeVar var_C8 = "": var_124 = ""
  loc_C9FC99: LitI2_Byte 1
  loc_C9FC9B: PopTmpLdAd2 var_92
  loc_C9FC9E: FLdPr var_36C
  loc_C9FCA1: Call clsdifunto.Move(from_stack_1v)
  loc_C9FCA6: Branch loc_C9FC0A
  loc_C9FCA9: LitI4 1
  loc_C9FCAE: FLdPr Me
  loc_C9FCB1: MemLdStr global_96
  loc_C9FCB4: Ary1LdPr
  loc_C9FCB5: MemLdStr global_112
  loc_C9FCB8: FnLenStr
  loc_C9FCB9: LitI4 2
  loc_C9FCBE: SubI4
  loc_C9FCBF: LitI4 1
  loc_C9FCC4: FLdPr Me
  loc_C9FCC7: MemLdStr global_96
  loc_C9FCCA: Ary1LdPr
  loc_C9FCCB: MemLdStr global_112
  loc_C9FCCE: ImpAdCallI2 Left$(, )
  loc_C9FCD3: FStStrNoPop var_D4
  loc_C9FCD6: LitI4 1
  loc_C9FCDB: FLdPr Me
  loc_C9FCDE: MemLdStr global_96
  loc_C9FCE1: Ary1LdPr
  loc_C9FCE2: MemStStrCopy
  loc_C9FCE6: FFree1Str var_D4
  loc_C9FCE9: Branch loc_C9FCF7
  loc_C9FCEC: LitStr "La cuenta no existe"
  loc_C9FCEF: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_C9FCF4: Branch loc_C9FEDA
  loc_C9FCF7: LitNothing
  loc_C9FCF9: FStAd var_36C 
  loc_C9FCFD: FLdPr Me
  loc_C9FD00: MemLdUI1 global_112
  loc_C9FD04: CI2UI1
  loc_C9FD06: LitI2_Byte 0
  loc_C9FD08: NeI2
  loc_C9FD09: BranchF loc_C9FED2
  loc_C9FD0C: FLdRfVar var_378
  loc_C9FD0F: NewIfNullAd
  loc_C9FD12: FStAd var_37C 
  loc_C9FD16: LitStr "SELECT  facipago.CodiFapa, count(detafapa.CodiFapa) as CacuFapa FROM facipago LEFT JOIN detafapa ON detafapa.CodiFapa = facipago.CodiFapa"
  loc_C9FD19: LitStr " WHERE facipago.CodiOfic = "
  loc_C9FD1C: ConcatStr
  loc_C9FD1D: FStStrNoPop var_D4
  loc_C9FD20: FLdPr Me
  loc_C9FD23: MemLdUI1 global_112
  loc_C9FD27: CStrI2
  loc_C9FD29: FStStrNoPop var_D8
  loc_C9FD2C: ConcatStr
  loc_C9FD2D: FStStrNoPop var_DC
  loc_C9FD30: LitStr " AND facipago.CuenCtct = '"
  loc_C9FD33: ConcatStr
  loc_C9FD34: FStStrNoPop var_E0
  loc_C9FD37: FLdPr Me
  loc_C9FD3A: VCallAd Control_ID_CuenCtctMsk
  loc_C9FD3D: FStAdFunc var_B8
  loc_C9FD40: FLdPr var_B8
  loc_C9FD43: LateIdLdVar var_C8 DispID_22 0
  loc_C9FD4A: CStrVarTmp
  loc_C9FD4B: FStStrNoPop var_E4
  loc_C9FD4E: ConcatStr
  loc_C9FD4F: FStStrNoPop var_E8
  loc_C9FD52: LitStr "' AND EstaFapa = 'Activa' AND FepaDefa IS NULL GROUP BY facipago.CodiFapa"
  loc_C9FD55: ConcatStr
  loc_C9FD56: FStStrNoPop var_EC
  loc_C9FD59: FLdPr var_37C
  loc_C9FD5C: Call clsfacipago.RedefineRS(from_stack_1v)
  loc_C9FD61: FFreeStr var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = ""
  loc_C9FD72: FFree1Ad var_B8
  loc_C9FD75: FFree1Var var_C8 = ""
  loc_C9FD78: FLdRfVar var_110
  loc_C9FD7B: FLdPr var_37C
  loc_C9FD7E: from_stack_1 = clsfacipago.RecordCount
  loc_C9FD83: ILdRf var_110
  loc_C9FD86: LitI4 0
  loc_C9FD8B: GtI4
  loc_C9FD8C: BranchF loc_C9FE98
  loc_C9FD8F: FLdRfVar var_110
  loc_C9FD92: FLdPr var_37C
  loc_C9FD95: from_stack_1 = clsfacipago.RecordCount
  loc_C9FD9A: LitI4 0
  loc_C9FD9F: ILdRf var_110
  loc_C9FDA2: LitI4 1
  loc_C9FDA7: FLdPr Me
  loc_C9FDAA: MemLdStr global_96
  loc_C9FDAD: Ary1LdPr
  loc_C9FDAE: MemLdRfVar from_stack_1.global_120
  loc_C9FDB1: Redim
  loc_C9FDBB: LitI2_Byte &HFF
  loc_C9FDBD: LitI4 1
  loc_C9FDC2: FLdPr Me
  loc_C9FDC5: MemLdStr global_96
  loc_C9FDC8: Ary1LdPr
  loc_C9FDC9: MemStI2 global_116
  loc_C9FDCC: LitI2_Byte 1
  loc_C9FDCE: FLdPr Me
  loc_C9FDD1: MemLdRfVar from_stack_1.global_100
  loc_C9FDD4: LitI4 1
  loc_C9FDD9: FLdPr Me
  loc_C9FDDC: MemLdStr global_96
  loc_C9FDDF: Ary1LdPr
  loc_C9FDE0: MemLdStr global_120
  loc_C9FDE3: LitI2_Byte 1
  loc_C9FDE5: FnUBound
  loc_C9FDE7: CI2I4
  loc_C9FDE8: ForI2 var_380
  loc_C9FDEE: FLdRfVar var_110
  loc_C9FDF1: FLdPr var_37C
  loc_C9FDF4: from_stack_1 = clsfacipago.CodiFapa
  loc_C9FDF9: LitI2_Byte 0
  loc_C9FDFB: LitVar_Missing var_C8
  loc_C9FDFE: LitI2_Byte 0
  loc_C9FE00: ILdRf var_110
  loc_C9FE03: CVarI4
  loc_C9FE07: PopAdLdVar
  loc_C9FE08: FLdPr Me
  loc_C9FE0B: MemLdI2 global_100
  loc_C9FE0E: CI4UI1
  loc_C9FE0F: LitI4 1
  loc_C9FE14: FLdPr Me
  loc_C9FE17: MemLdStr global_96
  loc_C9FE1A: AryLock
  loc_C9FE1D: Ary1LdPr
  loc_C9FE1E: MemLdStr global_120
  loc_C9FE21: AryLock
  loc_C9FE24: Ary1LdPr
  loc_C9FE25: MemLdRfVar from_stack_1.global_0
  loc_C9FE28: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C9FE2D: AryUnlock
  loc_C9FE30: AryUnlock
  loc_C9FE33: FFree1Var var_C8 = ""
  loc_C9FE36: FLdRfVar var_92
  loc_C9FE39: FLdPr var_37C
  loc_C9FE3C: from_stack_1 = clsfacipago.CacuFapa
  loc_C9FE41: LitI2_Byte 0
  loc_C9FE43: LitVar_Missing var_C8
  loc_C9FE46: LitI2_Byte 0
  loc_C9FE48: FLdI2 var_92
  loc_C9FE4B: CVarI2 var_A4
  loc_C9FE4E: PopAdLdVar
  loc_C9FE4F: FLdPr Me
  loc_C9FE52: MemLdI2 global_100
  loc_C9FE55: CI4UI1
  loc_C9FE56: LitI4 1
  loc_C9FE5B: FLdPr Me
  loc_C9FE5E: MemLdStr global_96
  loc_C9FE61: AryLock
  loc_C9FE64: Ary1LdPr
  loc_C9FE65: MemLdStr global_120
  loc_C9FE68: AryLock
  loc_C9FE6B: Ary1LdPr
  loc_C9FE6C: MemLdRfVar from_stack_1.global_4
  loc_C9FE6F: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C9FE74: AryUnlock
  loc_C9FE77: AryUnlock
  loc_C9FE7A: FFree1Var var_C8 = ""
  loc_C9FE7D: LitI2_Byte 1
  loc_C9FE7F: PopTmpLdAd2 var_92
  loc_C9FE82: FLdPr var_37C
  loc_C9FE85: Call clsfacipago.Move(from_stack_1v)
  loc_C9FE8A: FLdPr Me
  loc_C9FE8D: MemLdRfVar from_stack_1.global_100
  loc_C9FE90: NextI2 var_380, loc_C9FDEE
  loc_C9FE95: Branch loc_C9FECC
  loc_C9FE98: LitI4 0
  loc_C9FE9D: LitI4 0
  loc_C9FEA2: LitI4 1
  loc_C9FEA7: FLdPr Me
  loc_C9FEAA: MemLdStr global_96
  loc_C9FEAD: Ary1LdPr
  loc_C9FEAE: MemLdRfVar from_stack_1.global_120
  loc_C9FEB1: Redim
  loc_C9FEBB: LitI2_Byte 0
  loc_C9FEBD: LitI4 1
  loc_C9FEC2: FLdPr Me
  loc_C9FEC5: MemLdStr global_96
  loc_C9FEC8: Ary1LdPr
  loc_C9FEC9: MemStI2 global_116
  loc_C9FECC: LitNothing
  loc_C9FECE: FStAd var_37C 
  loc_C9FED2: LitI2_Byte &HFF
  loc_C9FED4: FLdPr Me
  loc_C9FED7: MemStI2 bGenerado
  loc_C9FEDA: LitI4 0
  loc_C9FEDF: CI2I4
  loc_C9FEE0: FLdPr Me
  loc_C9FEE3: Me.MousePointer = from_stack_1
  loc_C9FEE8: LitVarStr var_A4, vbNullString
  loc_C9FEED: PopAdLdVar
  loc_C9FEEE: FLdPr Me
  loc_C9FEF1: VCallAd Control_ID_statusBar
  loc_C9FEF4: FStAdFunc var_B8
  loc_C9FEF7: FLdPr var_B8
  loc_C9FEFA: LateIdSt
  loc_C9FEFF: FFree1Ad var_B8
  loc_C9FF02: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'A3E2CC
  'Data Table: 51F20C
  loc_A3E27C: FLdRfVar var_88
  loc_A3E27F: LitI2_Byte 0
  loc_A3E281: LitI2_Byte &HFF
  loc_A3E283: ImpAdLdI4 MemVar_D93C84
  loc_A3E286: FLdPr Me
  loc_A3E289: MemLdRfVar from_stack_1.global_56
  loc_A3E28C: NewIfNullPr IFileSystem3
  loc_A3E28F: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_A3E294: ILdRf var_88
  loc_A3E297: FLdPr Me
  loc_A3E29A: MemStVarAd
  loc_A3E29E: FFree1Ad var_88
  loc_A3E2A1: LitI2_Byte 0
  loc_A3E2A3: ImpAdStI2 MemVar_D93C8A
  loc_A3E2A6: Call Proc_301_40_BA2550()
  loc_A3E2AB: Call Proc_301_41_C2B61C()
  loc_A3E2B0: Call Proc_301_42_AF6E78()
  loc_A3E2B5: FLdPr Me
  loc_A3E2B8: MemLdRfVar from_stack_1.global_60
  loc_A3E2BB: LdPrVar
  loc_A3E2BD: LateMemCall
  loc_A3E2C3: LitStr vbNullString
  loc_A3E2C6: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_A3E2CB: ExitProcHresult
End Sub

Private Function Proc_301_38_ADEA88() 'ADEA88
  'Data Table: 51F20C
  loc_ADE94C: FLdRfVar var_88
  loc_ADE94F: NewIfNullAd
  loc_ADE952: FStAd var_8C 
  loc_ADE956: LitStr "SELECT servcome.CodiSubr, DetaSubr FROM subrubro INNER JOIN servcome ON servcome.CodiRamo = subrubro.CodiRamo AND servcome.CodiRubr = subrubro.CodiRubr"
  loc_ADE959: LitStr " AND servcome.CodiSubr = subrubro.CodiSubr LEFT JOIN comercio ON comercio.CodiCome = servcome.CodiCome"
  loc_ADE95C: ConcatStr
  loc_ADE95D: FStStrNoPop var_90
  loc_ADE960: LitStr " WHERE servcome.CodiCome = "
  loc_ADE963: ConcatStr
  loc_ADE964: FStStrNoPop var_A8
  loc_ADE967: FLdPr Me
  loc_ADE96A: VCallAd Control_ID_CuenCtctMsk
  loc_ADE96D: FStAdFunc var_94
  loc_ADE970: FLdPr var_94
  loc_ADE973: LateIdLdVar var_A4 DispID_0 0
  loc_ADE97A: CStrVarTmp
  loc_ADE97B: FStStrNoPop var_AC
  loc_ADE97E: ConcatStr
  loc_ADE97F: FStStrNoPop var_B0
  loc_ADE982: LitStr " AND (FebaSeco is not null OR FebaCome is not null)"
  loc_ADE985: ConcatStr
  loc_ADE986: FStStrNoPop var_B4
  loc_ADE989: LitStr " AND (servcome.CodiRubr BETWEEN 1 AND 9 OR servcome.CodiRubr = 190000 OR servcome.CodiRubr = 220000 OR servcome.CodiRubr = 230000 OR servcome.CodiRubr = 240000)"
  loc_ADE98C: ConcatStr
  loc_ADE98D: FStStrNoPop var_B8
  loc_ADE990: FLdPr var_8C
  loc_ADE993: Call clssubrubro.RedefineRS(from_stack_1v)
  loc_ADE998: FFreeStr var_90 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = ""
  loc_ADE9A7: FFree1Ad var_94
  loc_ADE9AA: FFree1Var var_A4 = ""
  loc_ADE9AD: FLdPr Me
  loc_ADE9B0: VCallAd Control_ID_RubroCbo
  loc_ADE9B3: FStAdFunc var_94
  loc_ADE9B6: FLdPr var_94
  loc_ADE9B9: Me.Clear
  loc_ADE9BE: FFree1Ad var_94
  loc_ADE9C1: FLdRfVar var_BC
  loc_ADE9C4: FLdPr var_8C
  loc_ADE9C7: from_stack_1 = clssubrubro.RecordCount
  loc_ADE9CC: ILdRf var_BC
  loc_ADE9CF: LitI4 0
  loc_ADE9D4: GtI4
  loc_ADE9D5: BranchF loc_ADEA7F
  loc_ADE9D8: FLdPr var_8C
  loc_ADE9DB: Call clssubrubro.MoveFirst()
  loc_ADE9E0: LitVar_Missing var_CC
  loc_ADE9E3: PopAdLdVar
  loc_ADE9E4: FLdRfVar var_90
  loc_ADE9E7: FLdPr var_8C
  loc_ADE9EA: from_stack_1 = clssubrubro.DetaSubr
  loc_ADE9EF: ILdRf var_90
  loc_ADE9F2: FLdPr Me
  loc_ADE9F5: VCallAd Control_ID_RubroCbo
  loc_ADE9F8: FStAdFunc var_94
  loc_ADE9FB: FLdPr var_94
  loc_ADE9FE: Me.AddItem from_stack_1, from_stack_2
  loc_ADEA03: FFree1Str var_90
  loc_ADEA06: FFree1Ad var_94
  loc_ADEA09: FLdRfVar var_90
  loc_ADEA0C: FLdPr var_8C
  loc_ADEA0F: from_stack_1 = clssubrubro.CodiSubr
  loc_ADEA14: ILdRf var_90
  loc_ADEA17: CI4Str
  loc_ADEA18: FLdRfVar var_CE
  loc_ADEA1B: FLdPr Me
  loc_ADEA1E: VCallAd Control_ID_RubroCbo
  loc_ADEA21: FStAdFunc var_94
  loc_ADEA24: FLdPr var_94
  loc_ADEA27:  = Me.NewIndex
  loc_ADEA2C: FLdI2 var_CE
  loc_ADEA2F: FLdPr Me
  loc_ADEA32: VCallAd Control_ID_RubroCbo
  loc_ADEA35: FStAdFunc var_D4
  loc_ADEA38: FLdPr var_D4
  loc_ADEA3B: Me.ItemData = from_stack_1
  loc_ADEA40: FFree1Str var_90
  loc_ADEA43: FFreeAd var_94 = ""
  loc_ADEA4A: LitI2_Byte 1
  loc_ADEA4C: PopTmpLdAd2 var_CE
  loc_ADEA4F: FLdPr var_8C
  loc_ADEA52: Call clssubrubro.Move(from_stack_1v)
  loc_ADEA57: FLdRfVar var_CE
  loc_ADEA5A: FLdPr var_8C
  loc_ADEA5D: from_stack_1 = clssubrubro.EOF
  loc_ADEA62: FLdI2 var_CE
  loc_ADEA65: NotI4
  loc_ADEA66: BranchT loc_ADE9E0
  loc_ADEA69: LitI2_Byte 0
  loc_ADEA6B: FLdPr Me
  loc_ADEA6E: VCallAd Control_ID_RubroCbo
  loc_ADEA71: FStAdFunc var_94
  loc_ADEA74: FLdPr var_94
  loc_ADEA77: Me.ListIndex = from_stack_1
  loc_ADEA7C: FFree1Ad var_94
  loc_ADEA7F: LitNothing
  loc_ADEA81: FStAd var_8C 
  loc_ADEA85: ExitProcHresult
  loc_ADEA86: ExitProcI2
End Function

Private Function Proc_301_39_A96828() 'A96828
  'Data Table: 51F20C
  loc_A96778: FLdRfVar var_88
  loc_A9677B: NewIfNullAd
  loc_A9677E: FStAd var_8C 
  loc_A96782: LitStr "SELECT DISTINCT concepto.DetaConc FROM concepto WHERE DetaConc <> '' ORDER BY DetaConc"
  loc_A96785: FLdPr var_8C
  loc_A96788: Call clsconcepto.RedefineRS(from_stack_1v)
  loc_A9678D: FLdRfVar var_90
  loc_A96790: FLdPr var_8C
  loc_A96793: from_stack_1 = clsconcepto.RecordCount
  loc_A96798: ILdRf var_90
  loc_A9679B: LitI4 0
  loc_A967A0: GtI4
  loc_A967A1: BranchF loc_A9681E
  loc_A967A4: FLdPr var_8C
  loc_A967A7: Call clsconcepto.MoveFirst()
  loc_A967AC: FLdPr Me
  loc_A967AF: VCallAd Control_ID_ConceptoCbo
  loc_A967B2: FStAdFunc var_94
  loc_A967B5: FLdPr var_94
  loc_A967B8: Me.Clear
  loc_A967BD: FFree1Ad var_94
  loc_A967C0: LitVar_Missing var_A8
  loc_A967C3: PopAdLdVar
  loc_A967C4: FLdRfVar var_98
  loc_A967C7: FLdPr var_8C
  loc_A967CA: from_stack_1 = clsconcepto.DetaConc
  loc_A967CF: ILdRf var_98
  loc_A967D2: FLdPr Me
  loc_A967D5: VCallAd Control_ID_ConceptoCbo
  loc_A967D8: FStAdFunc var_94
  loc_A967DB: FLdPr var_94
  loc_A967DE: Me.AddItem from_stack_1, from_stack_2
  loc_A967E3: FFree1Str var_98
  loc_A967E6: FFree1Ad var_94
  loc_A967E9: LitI2_Byte 1
  loc_A967EB: PopTmpLdAd2 var_AA
  loc_A967EE: FLdPr var_8C
  loc_A967F1: Call clsconcepto.Move(from_stack_1v)
  loc_A967F6: FLdRfVar var_AA
  loc_A967F9: FLdPr var_8C
  loc_A967FC: from_stack_1 = clsconcepto.EOF
  loc_A96801: FLdI2 var_AA
  loc_A96804: NotI4
  loc_A96805: BranchT loc_A967C0
  loc_A96808: LitI2_Byte 0
  loc_A9680A: FLdPr Me
  loc_A9680D: VCallAd Control_ID_ConceptoCbo
  loc_A96810: FStAdFunc var_94
  loc_A96813: FLdPr var_94
  loc_A96816: Me.ListIndex = from_stack_1
  loc_A9681B: FFree1Ad var_94
  loc_A9681E: LitNothing
  loc_A96820: FStAd var_8C 
  loc_A96824: ExitProcHresult
End Function

Private Function Proc_301_40_BA2550() 'BA2550
  'Data Table: 51F20C
  loc_BA1F4C: LitVarStr var_94, "<html>"
  loc_BA1F51: PopAdLdVar
  loc_BA1F52: FLdPr Me
  loc_BA1F55: MemLdRfVar from_stack_1.global_60
  loc_BA1F58: LdPrVar
  loc_BA1F5A: LateMemCall
  loc_BA1F60: LitVarStr var_94, "<head>"
  loc_BA1F65: PopAdLdVar
  loc_BA1F66: FLdPr Me
  loc_BA1F69: MemLdRfVar from_stack_1.global_60
  loc_BA1F6C: LdPrVar
  loc_BA1F6E: LateMemCall
  loc_BA1F74: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_BA1F79: PopAdLdVar
  loc_BA1F7A: FLdPr Me
  loc_BA1F7D: MemLdRfVar from_stack_1.global_60
  loc_BA1F80: LdPrVar
  loc_BA1F82: LateMemCall
  loc_BA1F88: LitStr "<title>"
  loc_BA1F8B: FLdRfVar var_A8
  loc_BA1F8E: FLdPr Me
  loc_BA1F91:  = Me.Caption
  loc_BA1F96: ILdRf var_A8
  loc_BA1F99: ConcatStr
  loc_BA1F9A: FStStrNoPop var_AC
  loc_BA1F9D: LitStr "</title>"
  loc_BA1FA0: ConcatStr
  loc_BA1FA1: CVarStr var_BC
  loc_BA1FA4: PopAdLdVar
  loc_BA1FA5: FLdPr Me
  loc_BA1FA8: MemLdRfVar from_stack_1.global_60
  loc_BA1FAB: LdPrVar
  loc_BA1FAD: LateMemCall
  loc_BA1FB3: FFreeStr var_A8 = ""
  loc_BA1FBA: FFree1Var var_BC = ""
  loc_BA1FBD: LitVarStr var_94, "<style type=""text/css"">"
  loc_BA1FC2: PopAdLdVar
  loc_BA1FC3: FLdPr Me
  loc_BA1FC6: MemLdRfVar from_stack_1.global_60
  loc_BA1FC9: LdPrVar
  loc_BA1FCB: LateMemCall
  loc_BA1FD1: LitVarStr var_94, ".Titulo1 {"
  loc_BA1FD6: PopAdLdVar
  loc_BA1FD7: FLdPr Me
  loc_BA1FDA: MemLdRfVar from_stack_1.global_60
  loc_BA1FDD: LdPrVar
  loc_BA1FDF: LateMemCall
  loc_BA1FE5: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BA1FEA: PopAdLdVar
  loc_BA1FEB: FLdPr Me
  loc_BA1FEE: MemLdRfVar from_stack_1.global_60
  loc_BA1FF1: LdPrVar
  loc_BA1FF3: LateMemCall
  loc_BA1FF9: LitVarStr var_94, " font-size: 22px;"
  loc_BA1FFE: PopAdLdVar
  loc_BA1FFF: FLdPr Me
  loc_BA2002: MemLdRfVar from_stack_1.global_60
  loc_BA2005: LdPrVar
  loc_BA2007: LateMemCall
  loc_BA200D: LitVarStr var_94, " font-weight: bold;"
  loc_BA2012: PopAdLdVar
  loc_BA2013: FLdPr Me
  loc_BA2016: MemLdRfVar from_stack_1.global_60
  loc_BA2019: LdPrVar
  loc_BA201B: LateMemCall
  loc_BA2021: LitVarStr var_94, "}"
  loc_BA2026: PopAdLdVar
  loc_BA2027: FLdPr Me
  loc_BA202A: MemLdRfVar from_stack_1.global_60
  loc_BA202D: LdPrVar
  loc_BA202F: LateMemCall
  loc_BA2035: LitVarStr var_94, ".Titulo2 {"
  loc_BA203A: PopAdLdVar
  loc_BA203B: FLdPr Me
  loc_BA203E: MemLdRfVar from_stack_1.global_60
  loc_BA2041: LdPrVar
  loc_BA2043: LateMemCall
  loc_BA2049: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BA204E: PopAdLdVar
  loc_BA204F: FLdPr Me
  loc_BA2052: MemLdRfVar from_stack_1.global_60
  loc_BA2055: LdPrVar
  loc_BA2057: LateMemCall
  loc_BA205D: LitVarStr var_94, " font-size: 18px;"
  loc_BA2062: PopAdLdVar
  loc_BA2063: FLdPr Me
  loc_BA2066: MemLdRfVar from_stack_1.global_60
  loc_BA2069: LdPrVar
  loc_BA206B: LateMemCall
  loc_BA2071: LitVarStr var_94, " font-weight: bold;"
  loc_BA2076: PopAdLdVar
  loc_BA2077: FLdPr Me
  loc_BA207A: MemLdRfVar from_stack_1.global_60
  loc_BA207D: LdPrVar
  loc_BA207F: LateMemCall
  loc_BA2085: LitVarStr var_94, "}"
  loc_BA208A: PopAdLdVar
  loc_BA208B: FLdPr Me
  loc_BA208E: MemLdRfVar from_stack_1.global_60
  loc_BA2091: LdPrVar
  loc_BA2093: LateMemCall
  loc_BA2099: LitVarStr var_94, ".Normal {"
  loc_BA209E: PopAdLdVar
  loc_BA209F: FLdPr Me
  loc_BA20A2: MemLdRfVar from_stack_1.global_60
  loc_BA20A5: LdPrVar
  loc_BA20A7: LateMemCall
  loc_BA20AD: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BA20B2: PopAdLdVar
  loc_BA20B3: FLdPr Me
  loc_BA20B6: MemLdRfVar from_stack_1.global_60
  loc_BA20B9: LdPrVar
  loc_BA20BB: LateMemCall
  loc_BA20C1: LitVarStr var_94, " font-size: 18px;"
  loc_BA20C6: PopAdLdVar
  loc_BA20C7: FLdPr Me
  loc_BA20CA: MemLdRfVar from_stack_1.global_60
  loc_BA20CD: LdPrVar
  loc_BA20CF: LateMemCall
  loc_BA20D5: LitVarStr var_94, " font-style: normal;"
  loc_BA20DA: PopAdLdVar
  loc_BA20DB: FLdPr Me
  loc_BA20DE: MemLdRfVar from_stack_1.global_60
  loc_BA20E1: LdPrVar
  loc_BA20E3: LateMemCall
  loc_BA20E9: LitVarStr var_94, " font-weight: bold;"
  loc_BA20EE: PopAdLdVar
  loc_BA20EF: FLdPr Me
  loc_BA20F2: MemLdRfVar from_stack_1.global_60
  loc_BA20F5: LdPrVar
  loc_BA20F7: LateMemCall
  loc_BA20FD: LitVarStr var_94, " font-variant: normal;"
  loc_BA2102: PopAdLdVar
  loc_BA2103: FLdPr Me
  loc_BA2106: MemLdRfVar from_stack_1.global_60
  loc_BA2109: LdPrVar
  loc_BA210B: LateMemCall
  loc_BA2111: LitVarStr var_94, "}"
  loc_BA2116: PopAdLdVar
  loc_BA2117: FLdPr Me
  loc_BA211A: MemLdRfVar from_stack_1.global_60
  loc_BA211D: LdPrVar
  loc_BA211F: LateMemCall
  loc_BA2125: LitVarStr var_94, ".Encabezado {"
  loc_BA212A: PopAdLdVar
  loc_BA212B: FLdPr Me
  loc_BA212E: MemLdRfVar from_stack_1.global_60
  loc_BA2131: LdPrVar
  loc_BA2133: LateMemCall
  loc_BA2139: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BA213E: PopAdLdVar
  loc_BA213F: FLdPr Me
  loc_BA2142: MemLdRfVar from_stack_1.global_60
  loc_BA2145: LdPrVar
  loc_BA2147: LateMemCall
  loc_BA214D: LitVarStr var_94, " font-size: 18px;"
  loc_BA2152: PopAdLdVar
  loc_BA2153: FLdPr Me
  loc_BA2156: MemLdRfVar from_stack_1.global_60
  loc_BA2159: LdPrVar
  loc_BA215B: LateMemCall
  loc_BA2161: LitVarStr var_94, " font-style: normal;"
  loc_BA2166: PopAdLdVar
  loc_BA2167: FLdPr Me
  loc_BA216A: MemLdRfVar from_stack_1.global_60
  loc_BA216D: LdPrVar
  loc_BA216F: LateMemCall
  loc_BA2175: LitVarStr var_94, " font-weight: normal;"
  loc_BA217A: PopAdLdVar
  loc_BA217B: FLdPr Me
  loc_BA217E: MemLdRfVar from_stack_1.global_60
  loc_BA2181: LdPrVar
  loc_BA2183: LateMemCall
  loc_BA2189: LitVarStr var_94, " font-variant: normal;"
  loc_BA218E: PopAdLdVar
  loc_BA218F: FLdPr Me
  loc_BA2192: MemLdRfVar from_stack_1.global_60
  loc_BA2195: LdPrVar
  loc_BA2197: LateMemCall
  loc_BA219D: LitVarStr var_94, "}"
  loc_BA21A2: PopAdLdVar
  loc_BA21A3: FLdPr Me
  loc_BA21A6: MemLdRfVar from_stack_1.global_60
  loc_BA21A9: LdPrVar
  loc_BA21AB: LateMemCall
  loc_BA21B1: LitVarStr var_94, ".Recuadro {"
  loc_BA21B6: PopAdLdVar
  loc_BA21B7: FLdPr Me
  loc_BA21BA: MemLdRfVar from_stack_1.global_60
  loc_BA21BD: LdPrVar
  loc_BA21BF: LateMemCall
  loc_BA21C5: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BA21CA: PopAdLdVar
  loc_BA21CB: FLdPr Me
  loc_BA21CE: MemLdRfVar from_stack_1.global_60
  loc_BA21D1: LdPrVar
  loc_BA21D3: LateMemCall
  loc_BA21D9: LitVarStr var_94, " font-weight: bold;"
  loc_BA21DE: PopAdLdVar
  loc_BA21DF: FLdPr Me
  loc_BA21E2: MemLdRfVar from_stack_1.global_60
  loc_BA21E5: LdPrVar
  loc_BA21E7: LateMemCall
  loc_BA21ED: LitVarStr var_94, " float: right;"
  loc_BA21F2: PopAdLdVar
  loc_BA21F3: FLdPr Me
  loc_BA21F6: MemLdRfVar from_stack_1.global_60
  loc_BA21F9: LdPrVar
  loc_BA21FB: LateMemCall
  loc_BA2201: LitVarStr var_94, " font-size: 13px;"
  loc_BA2206: PopAdLdVar
  loc_BA2207: FLdPr Me
  loc_BA220A: MemLdRfVar from_stack_1.global_60
  loc_BA220D: LdPrVar
  loc_BA220F: LateMemCall
  loc_BA2215: LitVarStr var_94, " border: medium doble #000000;"
  loc_BA221A: PopAdLdVar
  loc_BA221B: FLdPr Me
  loc_BA221E: MemLdRfVar from_stack_1.global_60
  loc_BA2221: LdPrVar
  loc_BA2223: LateMemCall
  loc_BA2229: LitVarStr var_94, "}"
  loc_BA222E: PopAdLdVar
  loc_BA222F: FLdPr Me
  loc_BA2232: MemLdRfVar from_stack_1.global_60
  loc_BA2235: LdPrVar
  loc_BA2237: LateMemCall
  loc_BA223D: LitVarStr var_94, ".Revision {"
  loc_BA2242: PopAdLdVar
  loc_BA2243: FLdPr Me
  loc_BA2246: MemLdRfVar from_stack_1.global_60
  loc_BA2249: LdPrVar
  loc_BA224B: LateMemCall
  loc_BA2251: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BA2256: PopAdLdVar
  loc_BA2257: FLdPr Me
  loc_BA225A: MemLdRfVar from_stack_1.global_60
  loc_BA225D: LdPrVar
  loc_BA225F: LateMemCall
  loc_BA2265: LitVarStr var_94, " font-size: 12px;"
  loc_BA226A: PopAdLdVar
  loc_BA226B: FLdPr Me
  loc_BA226E: MemLdRfVar from_stack_1.global_60
  loc_BA2271: LdPrVar
  loc_BA2273: LateMemCall
  loc_BA2279: LitVarStr var_94, " font-style: normal;"
  loc_BA227E: PopAdLdVar
  loc_BA227F: FLdPr Me
  loc_BA2282: MemLdRfVar from_stack_1.global_60
  loc_BA2285: LdPrVar
  loc_BA2287: LateMemCall
  loc_BA228D: LitVarStr var_94, " font-variant: normal;"
  loc_BA2292: PopAdLdVar
  loc_BA2293: FLdPr Me
  loc_BA2296: MemLdRfVar from_stack_1.global_60
  loc_BA2299: LdPrVar
  loc_BA229B: LateMemCall
  loc_BA22A1: LitVarStr var_94, "}"
  loc_BA22A6: PopAdLdVar
  loc_BA22A7: FLdPr Me
  loc_BA22AA: MemLdRfVar from_stack_1.global_60
  loc_BA22AD: LdPrVar
  loc_BA22AF: LateMemCall
  loc_BA22B5: LitVarStr var_94, "</style>"
  loc_BA22BA: PopAdLdVar
  loc_BA22BB: FLdPr Me
  loc_BA22BE: MemLdRfVar from_stack_1.global_60
  loc_BA22C1: LdPrVar
  loc_BA22C3: LateMemCall
  loc_BA22C9: LitI4 0
  loc_BA22CE: FStStrCopy var_AC
  loc_BA22D1: FLdRfVar var_AC
  loc_BA22D4: LitI4 0
  loc_BA22D9: FStStrCopy var_A8
  loc_BA22DC: FLdRfVar var_A8
  loc_BA22DF: LitI2_Byte 0
  loc_BA22E1: PopTmpLdAd2 var_BE
  loc_BA22E4: FLdPr Me
  loc_BA22E7: MemLdRfVar from_stack_1.global_60
  loc_BA22EA: ImpAdCallFPR4  = Proc_57_7_B5E738(, )
  loc_BA22EF: FFreeStr var_A8 = ""
  loc_BA22F6: LitVarStr var_94, "<table background=""l5.jpg"" width=""725"" height=""1100"" border=""0"" align=""center"" cellpadding=""5"" cellspacing=""0""><tr><td>"
  loc_BA22FB: PopAdLdVar
  loc_BA22FC: FLdPr Me
  loc_BA22FF: MemLdRfVar from_stack_1.global_60
  loc_BA2302: LdPrVar
  loc_BA2304: LateMemCall
  loc_BA230A: LitVarStr var_94, "<table width=""91" & Chr(37) & """ height=""1027"" border=""0"" align=""center"" cellpadding=""5"" cellspacing=""0"" class=""Titulo2"">"
  loc_BA230F: PopAdLdVar
  loc_BA2310: FLdPr Me
  loc_BA2313: MemLdRfVar from_stack_1.global_60
  loc_BA2316: LdPrVar
  loc_BA2318: LateMemCall
  loc_BA231E: LitVarStr var_94, "  <tr align=""center"" valign=""middle"" class=""Titulo1"">"
  loc_BA2323: PopAdLdVar
  loc_BA2324: FLdPr Me
  loc_BA2327: MemLdRfVar from_stack_1.global_60
  loc_BA232A: LdPrVar
  loc_BA232C: LateMemCall
  loc_BA2332: FLdPr Me
  loc_BA2335: VCallAd Control_ID_ssTab
  loc_BA2338: FStAdFunc var_C4
  loc_BA233B: FLdPr var_C4
  loc_BA233E: LateIdLdVar var_BC DispID_4 0
  loc_BA2345: CI2Var
  loc_BA2346: FStI2 var_C6
  loc_BA2349: FFree1Ad var_C4
  loc_BA234C: FFree1Var var_BC = ""
  loc_BA234F: FLdI2 var_C6
  loc_BA2352: LitI2_Byte 0
  loc_BA2354: EqI2
  loc_BA2355: BranchF loc_BA23A1
  loc_BA2358: LitStr "    <td colspan=""2"" height=""106""><img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_BA235B: LitI2_Byte &H5F
  loc_BA235D: CStrUI1
  loc_BA235F: FStStrNoPop var_A8
  loc_BA2362: ConcatStr
  loc_BA2363: FStStrNoPop var_AC
  loc_BA2366: LitStr """ height="""
  loc_BA2369: ConcatStr
  loc_BA236A: FStStrNoPop var_CC
  loc_BA236D: LitI2_Byte &H3C
  loc_BA236F: CStrUI1
  loc_BA2371: FStStrNoPop var_D0
  loc_BA2374: ConcatStr
  loc_BA2375: FStStrNoPop var_D4
  loc_BA2378: LitStr """ align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>CERTIFICADO DE LIBRE DE DEUDA</td>"
  loc_BA237B: ConcatStr
  loc_BA237C: CVarStr var_BC
  loc_BA237F: PopAdLdVar
  loc_BA2380: FLdPr Me
  loc_BA2383: MemLdRfVar from_stack_1.global_60
  loc_BA2386: LdPrVar
  loc_BA2388: LateMemCall
  loc_BA238E: FFreeStr var_A8 = "": var_AC = "": var_CC = "": var_D0 = ""
  loc_BA239B: FFree1Var var_BC = ""
  loc_BA239E: Branch loc_BA2538
  loc_BA23A1: FLdI2 var_C6
  loc_BA23A4: LitI2_Byte 1
  loc_BA23A6: EqI2
  loc_BA23A7: BranchF loc_BA23F3
  loc_BA23AA: LitStr "    <td colspan=""2"" height=""106""><img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_BA23AD: LitI2_Byte &H5F
  loc_BA23AF: CStrUI1
  loc_BA23B1: FStStrNoPop var_A8
  loc_BA23B4: ConcatStr
  loc_BA23B5: FStStrNoPop var_AC
  loc_BA23B8: LitStr """ height="""
  loc_BA23BB: ConcatStr
  loc_BA23BC: FStStrNoPop var_CC
  loc_BA23BF: LitI2_Byte &H3C
  loc_BA23C1: CStrUI1
  loc_BA23C3: FStStrNoPop var_D0
  loc_BA23C6: ConcatStr
  loc_BA23C7: FStStrNoPop var_D4
  loc_BA23CA: LitStr """ align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>CERTIFICADO DE CESE DE ACTIVIDAD</td>"
  loc_BA23CD: ConcatStr
  loc_BA23CE: CVarStr var_BC
  loc_BA23D1: PopAdLdVar
  loc_BA23D2: FLdPr Me
  loc_BA23D5: MemLdRfVar from_stack_1.global_60
  loc_BA23D8: LdPrVar
  loc_BA23DA: LateMemCall
  loc_BA23E0: FFreeStr var_A8 = "": var_AC = "": var_CC = "": var_D0 = ""
  loc_BA23ED: FFree1Var var_BC = ""
  loc_BA23F0: Branch loc_BA2538
  loc_BA23F3: FLdI2 var_C6
  loc_BA23F6: LitI2_Byte 2
  loc_BA23F8: EqI2
  loc_BA23F9: BranchF loc_BA2445
  loc_BA23FC: LitStr "    <td colspan=""2"" height=""106""><img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_BA23FF: LitI2_Byte &H5F
  loc_BA2401: CStrUI1
  loc_BA2403: FStStrNoPop var_A8
  loc_BA2406: ConcatStr
  loc_BA2407: FStStrNoPop var_AC
  loc_BA240A: LitStr """ height="""
  loc_BA240D: ConcatStr
  loc_BA240E: FStStrNoPop var_CC
  loc_BA2411: LitI2_Byte &H3C
  loc_BA2413: CStrUI1
  loc_BA2415: FStStrNoPop var_D0
  loc_BA2418: ConcatStr
  loc_BA2419: FStStrNoPop var_D4
  loc_BA241C: LitStr """ align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>CERTIFICADO DE LIBRE DE DEUDA</td>"
  loc_BA241F: ConcatStr
  loc_BA2420: CVarStr var_BC
  loc_BA2423: PopAdLdVar
  loc_BA2424: FLdPr Me
  loc_BA2427: MemLdRfVar from_stack_1.global_60
  loc_BA242A: LdPrVar
  loc_BA242C: LateMemCall
  loc_BA2432: FFreeStr var_A8 = "": var_AC = "": var_CC = "": var_D0 = ""
  loc_BA243F: FFree1Var var_BC = ""
  loc_BA2442: Branch loc_BA2538
  loc_BA2445: FLdI2 var_C6
  loc_BA2448: LitI2_Byte 3
  loc_BA244A: EqI2
  loc_BA244B: BranchF loc_BA2497
  loc_BA244E: LitStr "    <td colspan=""2"" height=""106""><img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_BA2451: LitI2_Byte &H5F
  loc_BA2453: CStrUI1
  loc_BA2455: FStStrNoPop var_A8
  loc_BA2458: ConcatStr
  loc_BA2459: FStStrNoPop var_AC
  loc_BA245C: LitStr """ height="""
  loc_BA245F: ConcatStr
  loc_BA2460: FStStrNoPop var_CC
  loc_BA2463: LitI2_Byte &H3C
  loc_BA2465: CStrUI1
  loc_BA2467: FStStrNoPop var_D0
  loc_BA246A: ConcatStr
  loc_BA246B: FStStrNoPop var_D4
  loc_BA246E: LitStr """ align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>CERTIFICADO NO CONTRIBUYENTE</td>"
  loc_BA2471: ConcatStr
  loc_BA2472: CVarStr var_BC
  loc_BA2475: PopAdLdVar
  loc_BA2476: FLdPr Me
  loc_BA2479: MemLdRfVar from_stack_1.global_60
  loc_BA247C: LdPrVar
  loc_BA247E: LateMemCall
  loc_BA2484: FFreeStr var_A8 = "": var_AC = "": var_CC = "": var_D0 = ""
  loc_BA2491: FFree1Var var_BC = ""
  loc_BA2494: Branch loc_BA2538
  loc_BA2497: FLdI2 var_C6
  loc_BA249A: LitI2_Byte 4
  loc_BA249C: EqI2
  loc_BA249D: BranchF loc_BA24E9
  loc_BA24A0: LitStr "    <td colspan=""2"" height=""106""><img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_BA24A3: LitI2_Byte &H5F
  loc_BA24A5: CStrUI1
  loc_BA24A7: FStStrNoPop var_A8
  loc_BA24AA: ConcatStr
  loc_BA24AB: FStStrNoPop var_AC
  loc_BA24AE: LitStr """ height="""
  loc_BA24B1: ConcatStr
  loc_BA24B2: FStStrNoPop var_CC
  loc_BA24B5: LitI2_Byte &H3C
  loc_BA24B7: CStrUI1
  loc_BA24B9: FStStrNoPop var_D0
  loc_BA24BC: ConcatStr
  loc_BA24BD: FStStrNoPop var_D4
  loc_BA24C0: LitStr """ align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>CERTIFICADO DE LIBRE DE DEUDA</td>"
  loc_BA24C3: ConcatStr
  loc_BA24C4: CVarStr var_BC
  loc_BA24C7: PopAdLdVar
  loc_BA24C8: FLdPr Me
  loc_BA24CB: MemLdRfVar from_stack_1.global_60
  loc_BA24CE: LdPrVar
  loc_BA24D0: LateMemCall
  loc_BA24D6: FFreeStr var_A8 = "": var_AC = "": var_CC = "": var_D0 = ""
  loc_BA24E3: FFree1Var var_BC = ""
  loc_BA24E6: Branch loc_BA2538
  loc_BA24E9: FLdI2 var_C6
  loc_BA24EC: LitI2_Byte 5
  loc_BA24EE: EqI2
  loc_BA24EF: BranchF loc_BA2538
  loc_BA24F2: LitStr "    <td colspan=""2"" height=""106""><img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_BA24F5: LitI2_Byte &H5F
  loc_BA24F7: CStrUI1
  loc_BA24F9: FStStrNoPop var_A8
  loc_BA24FC: ConcatStr
  loc_BA24FD: FStStrNoPop var_AC
  loc_BA2500: LitStr """ height="""
  loc_BA2503: ConcatStr
  loc_BA2504: FStStrNoPop var_CC
  loc_BA2507: LitI2_Byte &H3C
  loc_BA2509: CStrUI1
  loc_BA250B: FStStrNoPop var_D0
  loc_BA250E: ConcatStr
  loc_BA250F: FStStrNoPop var_D4
  loc_BA2512: LitStr """ align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>CERTIFICADO DE LIBRE DE DEUDA</td>"
  loc_BA2515: ConcatStr
  loc_BA2516: CVarStr var_BC
  loc_BA2519: PopAdLdVar
  loc_BA251A: FLdPr Me
  loc_BA251D: MemLdRfVar from_stack_1.global_60
  loc_BA2520: LdPrVar
  loc_BA2522: LateMemCall
  loc_BA2528: FFreeStr var_A8 = "": var_AC = "": var_CC = "": var_D0 = ""
  loc_BA2535: FFree1Var var_BC = ""
  loc_BA2538: LitVarStr var_94, "  </tr>"
  loc_BA253D: PopAdLdVar
  loc_BA253E: FLdPr Me
  loc_BA2541: MemLdRfVar from_stack_1.global_60
  loc_BA2544: LdPrVar
  loc_BA2546: LateMemCall
  loc_BA254C: ExitProcHresult
End Function

Private Function Proc_301_41_C2B61C() 'C2B61C
  'Data Table: 51F20C
  loc_C2AB44: FLdRfVar var_90
  loc_C2AB47: FLdPr Me
  loc_C2AB4A: VCallAd Control_ID_InteresadoTxt
  loc_C2AB4D: FStAdFunc var_8C
  loc_C2AB50: FLdPr var_8C
  loc_C2AB53:  = Me.Text
  loc_C2AB58: ILdRf var_90
  loc_C2AB5B: ImpAdCallI2 Trim$()
  loc_C2AB60: FStStrNoPop var_94
  loc_C2AB63: LitStr vbNullString
  loc_C2AB66: NeStr
  loc_C2AB68: FFreeStr var_90 = ""
  loc_C2AB6F: FFree1Ad var_8C
  loc_C2AB72: BranchF loc_C2AC1C
  loc_C2AB75: LitStr "Se extiende el presente CERTIFICADO a solicitud de: "
  loc_C2AB78: FLdRfVar var_90
  loc_C2AB7B: FLdPr Me
  loc_C2AB7E: VCallAd Control_ID_InteresadoTxt
  loc_C2AB81: FStAdFunc var_8C
  loc_C2AB84: FLdPr var_8C
  loc_C2AB87:  = Me.Text
  loc_C2AB8C: ILdRf var_90
  loc_C2AB8F: ConcatStr
  loc_C2AB90: FStStr var_88
  loc_C2AB93: FFree1Str var_90
  loc_C2AB96: FFree1Ad var_8C
  loc_C2AB99: FLdPr Me
  loc_C2AB9C: VCallAd Control_ID_DNIInteresadoMsk
  loc_C2AB9F: FStAdFunc var_8C
  loc_C2ABA2: FLdPr var_8C
  loc_C2ABA5: LateIdLdVar var_A4 DispID_0 0
  loc_C2ABAC: CStrVarTmp
  loc_C2ABAD: FStStrNoPop var_90
  loc_C2ABB0: ImpAdCallI2 Trim$()
  loc_C2ABB5: FStStrNoPop var_94
  loc_C2ABB8: LitStr vbNullString
  loc_C2ABBB: NeStr
  loc_C2ABBD: FFreeStr var_90 = ""
  loc_C2ABC4: FFree1Ad var_8C
  loc_C2ABC7: FFree1Var var_A4 = ""
  loc_C2ABCA: BranchF loc_C2AC19
  loc_C2ABCD: FLdPr Me
  loc_C2ABD0: VCallAd Control_ID_DNIInteresadoMsk
  loc_C2ABD3: FStAdFunc var_8C
  loc_C2ABD6: ILdRf var_88
  loc_C2ABD9: LitStr " con DNI "
  loc_C2ABDC: ConcatStr
  loc_C2ABDD: FStStrNoPop var_90
  loc_C2ABE0: LitI4 1
  loc_C2ABE5: LitI4 1
  loc_C2ABEA: LitVarStr var_B4, "##\.###\.###"
  loc_C2ABEF: FStVarCopyObj var_C4
  loc_C2ABF2: FLdRfVar var_C4
  loc_C2ABF5: FLdZeroAd var_8C
  loc_C2ABF8: CVarAd
  loc_C2ABFC: ImpAdCallI2 Format$(, )
  loc_C2AC01: FStStrNoPop var_94
  loc_C2AC04: ConcatStr
  loc_C2AC05: FStStr var_88
  loc_C2AC08: FFreeStr var_90 = ""
  loc_C2AC0F: FFree1Ad var_8C
  loc_C2AC12: FFreeVar var_A4 = ""
  loc_C2AC19: Branch loc_C2AC22
  loc_C2AC1C: LitStr "Se extiende el presente CERTIFICADO para ser presentado ante quien corresponda"
  loc_C2AC1F: FStStrCopy var_88
  loc_C2AC22: LitI4 1
  loc_C2AC27: FLdPr Me
  loc_C2AC2A: MemLdStr global_96
  loc_C2AC2D: AryLock
  loc_C2AC30: Ary1LdRf
  loc_C2AC31: FStR4 var_CC
  loc_C2AC34: LitVarStr var_B4, "  <tr>"
  loc_C2AC39: PopAdLdVar
  loc_C2AC3A: FLdPr Me
  loc_C2AC3D: MemLdRfVar from_stack_1.global_60
  loc_C2AC40: LdPrVar
  loc_C2AC42: LateMemCall
  loc_C2AC48: LitVarStr var_B4, "     <td height=""298"" colspan=""2"" align=""center"" valign=""top""><table border=""0"" cellpadding=""5"" cellspacing=""5"" class=""Encabezado"">"
  loc_C2AC4D: PopAdLdVar
  loc_C2AC4E: FLdPr Me
  loc_C2AC51: MemLdRfVar from_stack_1.global_60
  loc_C2AC54: LdPrVar
  loc_C2AC56: LateMemCall
  loc_C2AC5C: LitVarStr var_B4, "      <tr valign=""top"">"
  loc_C2AC61: PopAdLdVar
  loc_C2AC62: FLdPr Me
  loc_C2AC65: MemLdRfVar from_stack_1.global_60
  loc_C2AC68: LdPrVar
  loc_C2AC6A: LateMemCall
  loc_C2AC70: LitVarStr var_B4, "        <td align=""right"" nowrap=""nowrap"">Referencia:</td>"
  loc_C2AC75: PopAdLdVar
  loc_C2AC76: FLdPr Me
  loc_C2AC79: MemLdRfVar from_stack_1.global_60
  loc_C2AC7C: LdPrVar
  loc_C2AC7E: LateMemCall
  loc_C2AC84: FLdPr Me
  loc_C2AC87: VCallAd Control_ID_ssTab
  loc_C2AC8A: FStAdFunc var_8C
  loc_C2AC8D: FLdPr var_8C
  loc_C2AC90: LateIdLdVar var_A4 DispID_4 0
  loc_C2AC97: PopAd
  loc_C2AC99: FLdPr Me
  loc_C2AC9C: VCallAd Control_ID_NombreTxt
  loc_C2AC9F: FStAdFunc var_140
  loc_C2ACA2: LitVarStr var_FC, "        <td class=""Normal"">"
  loc_C2ACA7: FMemLdRf unk_51F141
  loc_C2ACAC: CVarRef
  loc_C2ACB1: FLdZeroAd var_140
  loc_C2ACB4: CVarAd
  loc_C2ACB8: FLdRfVar var_A4
  loc_C2ACBB: CI2Var
  loc_C2ACBC: LitI2_Byte 3
  loc_C2ACBE: EqI2
  loc_C2ACBF: CVarBoolI2 var_B4
  loc_C2ACC3: FLdRfVar var_EC
  loc_C2ACC6: ImpAdCallFPR4  = IIf(, , )
  loc_C2ACCB: FLdRfVar var_EC
  loc_C2ACCE: ConcatVar var_10C
  loc_C2ACD2: LitVarStr var_11C, "</td>"
  loc_C2ACD7: ConcatVar var_12C
  loc_C2ACDB: PopAdLdVar
  loc_C2ACDC: FLdPr Me
  loc_C2ACDF: MemLdRfVar from_stack_1.global_60
  loc_C2ACE2: LdPrVar
  loc_C2ACE4: LateMemCall
  loc_C2ACEA: FFreeAd var_8C = ""
  loc_C2ACF1: FFreeVar var_A4 = "": var_B4 = "": var_C4 = "": var_EC = "": var_10C = ""
  loc_C2AD00: LitVarStr var_B4, "      </tr>"
  loc_C2AD05: PopAdLdVar
  loc_C2AD06: FLdPr Me
  loc_C2AD09: MemLdRfVar from_stack_1.global_60
  loc_C2AD0C: LdPrVar
  loc_C2AD0E: LateMemCall
  loc_C2AD14: FLdPr Me
  loc_C2AD17: VCallAd Control_ID_ssTab
  loc_C2AD1A: FStAdFunc var_8C
  loc_C2AD1D: FLdPr var_8C
  loc_C2AD20: LateIdLdVar var_A4 DispID_4 0
  loc_C2AD27: CI2Var
  loc_C2AD28: LitI2_Byte 3
  loc_C2AD2A: NeI2
  loc_C2AD2B: FFree1Ad var_8C
  loc_C2AD2E: FFree1Var var_A4 = ""
  loc_C2AD31: BranchF loc_C2AF41
  loc_C2AD34: LitVarStr var_B4, "      <tr valign=""top"">"
  loc_C2AD39: PopAdLdVar
  loc_C2AD3A: FLdPr Me
  loc_C2AD3D: MemLdRfVar from_stack_1.global_60
  loc_C2AD40: LdPrVar
  loc_C2AD42: LateMemCall
  loc_C2AD48: LitVarStr var_B4, "        <td align=""right"" nowrap=""nowrap"">Cuenta:</td>"
  loc_C2AD4D: PopAdLdVar
  loc_C2AD4E: FLdPr Me
  loc_C2AD51: MemLdRfVar from_stack_1.global_60
  loc_C2AD54: LdPrVar
  loc_C2AD56: LateMemCall
  loc_C2AD5C: LitStr "        <td class=""Normal"">"
  loc_C2AD5F: FMemLdR4 var_CC(4)
  loc_C2AD64: ConcatStr
  loc_C2AD65: FStStrNoPop var_90
  loc_C2AD68: LitStr "</td>"
  loc_C2AD6B: ConcatStr
  loc_C2AD6C: CVarStr var_A4
  loc_C2AD6F: PopAdLdVar
  loc_C2AD70: FLdPr Me
  loc_C2AD73: MemLdRfVar from_stack_1.global_60
  loc_C2AD76: LdPrVar
  loc_C2AD78: LateMemCall
  loc_C2AD7E: FFree1Str var_90
  loc_C2AD81: FFree1Var var_A4 = ""
  loc_C2AD84: LitVarStr var_B4, "      </tr>"
  loc_C2AD89: PopAdLdVar
  loc_C2AD8A: FLdPr Me
  loc_C2AD8D: MemLdRfVar from_stack_1.global_60
  loc_C2AD90: LdPrVar
  loc_C2AD92: LateMemCall
  loc_C2AD98: LitVarStr var_B4, "      <tr valign=""top"">"
  loc_C2AD9D: PopAdLdVar
  loc_C2AD9E: FLdPr Me
  loc_C2ADA1: MemLdRfVar from_stack_1.global_60
  loc_C2ADA4: LdPrVar
  loc_C2ADA6: LateMemCall
  loc_C2ADAC: FLdPr Me
  loc_C2ADAF: VCallAd Control_ID_ssTab
  loc_C2ADB2: FStAdFunc var_8C
  loc_C2ADB5: FLdPr var_8C
  loc_C2ADB8: LateIdLdVar var_A4 DispID_4 0
  loc_C2ADBF: CI2Var
  loc_C2ADC0: LitI2_Byte 5
  loc_C2ADC2: NeI2
  loc_C2ADC3: FFree1Ad var_8C
  loc_C2ADC6: FFree1Var var_A4 = ""
  loc_C2ADC9: BranchF loc_C2ADE3
  loc_C2ADCC: LitVarStr var_B4, "        <td align=""right"" nowrap=""nowrap"">Contribuyente:</td>"
  loc_C2ADD1: PopAdLdVar
  loc_C2ADD2: FLdPr Me
  loc_C2ADD5: MemLdRfVar from_stack_1.global_60
  loc_C2ADD8: LdPrVar
  loc_C2ADDA: LateMemCall
  loc_C2ADE0: Branch loc_C2ADF7
  loc_C2ADE3: LitVarStr var_B4, "        <td align=""right"" nowrap=""nowrap"">Titular:</td>"
  loc_C2ADE8: PopAdLdVar
  loc_C2ADE9: FLdPr Me
  loc_C2ADEC: MemLdRfVar from_stack_1.global_60
  loc_C2ADEF: LdPrVar
  loc_C2ADF1: LateMemCall
  loc_C2ADF7: LitStr "        <td class=""Normal"">"
  loc_C2ADFA: FMemLdR4 var_CC(20)
  loc_C2ADFF: ConcatStr
  loc_C2AE00: FStStrNoPop var_90
  loc_C2AE03: LitStr "</td>"
  loc_C2AE06: ConcatStr
  loc_C2AE07: CVarStr var_A4
  loc_C2AE0A: PopAdLdVar
  loc_C2AE0B: FLdPr Me
  loc_C2AE0E: MemLdRfVar from_stack_1.global_60
  loc_C2AE11: LdPrVar
  loc_C2AE13: LateMemCall
  loc_C2AE19: FFree1Str var_90
  loc_C2AE1C: FFree1Var var_A4 = ""
  loc_C2AE1F: LitVarStr var_B4, "      </tr>"
  loc_C2AE24: PopAdLdVar
  loc_C2AE25: FLdPr Me
  loc_C2AE28: MemLdRfVar from_stack_1.global_60
  loc_C2AE2B: LdPrVar
  loc_C2AE2D: LateMemCall
  loc_C2AE33: FMemLdR4 var_CC(4)
  loc_C2AE38: FLdPr Me
  loc_C2AE3B: MemLdUI1 global_112
  loc_C2AE3F: CI2UI1
  loc_C2AE41: ImpAdCallI2 Proc_270_137_AC2610(, )
  loc_C2AE46: FStStrNoPop var_90
  loc_C2AE49: LitStr vbNullString
  loc_C2AE4C: NeStr
  loc_C2AE4E: FFree1Str var_90
  loc_C2AE51: BranchF loc_C2AECD
  loc_C2AE54: LitVarStr var_B4, "      <tr valign=""top"">"
  loc_C2AE59: PopAdLdVar
  loc_C2AE5A: FLdPr Me
  loc_C2AE5D: MemLdRfVar from_stack_1.global_60
  loc_C2AE60: LdPrVar
  loc_C2AE62: LateMemCall
  loc_C2AE68: LitVarStr var_B4, "        <td align=""right"" nowrap=""nowrap"">Otros Titulares:</td>"
  loc_C2AE6D: PopAdLdVar
  loc_C2AE6E: FLdPr Me
  loc_C2AE71: MemLdRfVar from_stack_1.global_60
  loc_C2AE74: LdPrVar
  loc_C2AE76: LateMemCall
  loc_C2AE7C: LitStr "        <td class=""Normal"">"
  loc_C2AE7F: FMemLdR4 var_CC(4)
  loc_C2AE84: FLdPr Me
  loc_C2AE87: MemLdUI1 global_112
  loc_C2AE8B: CI2UI1
  loc_C2AE8D: ImpAdCallI2 Proc_270_137_AC2610(, )
  loc_C2AE92: FStStrNoPop var_90
  loc_C2AE95: ConcatStr
  loc_C2AE96: FStStrNoPop var_94
  loc_C2AE99: LitStr "</td>"
  loc_C2AE9C: ConcatStr
  loc_C2AE9D: CVarStr var_A4
  loc_C2AEA0: PopAdLdVar
  loc_C2AEA1: FLdPr Me
  loc_C2AEA4: MemLdRfVar from_stack_1.global_60
  loc_C2AEA7: LdPrVar
  loc_C2AEA9: LateMemCall
  loc_C2AEAF: FFreeStr var_90 = ""
  loc_C2AEB6: FFree1Var var_A4 = ""
  loc_C2AEB9: LitVarStr var_B4, "      </tr>"
  loc_C2AEBE: PopAdLdVar
  loc_C2AEBF: FLdPr Me
  loc_C2AEC2: MemLdRfVar from_stack_1.global_60
  loc_C2AEC5: LdPrVar
  loc_C2AEC7: LateMemCall
  loc_C2AECD: FMemLdR4 var_CC(24)
  loc_C2AED2: LitStr vbNullString
  loc_C2AED5: NeStr
  loc_C2AED7: BranchF loc_C2AF3E
  loc_C2AEDA: LitVarStr var_B4, "      <tr valign=""top"">"
  loc_C2AEDF: PopAdLdVar
  loc_C2AEE0: FLdPr Me
  loc_C2AEE3: MemLdRfVar from_stack_1.global_60
  loc_C2AEE6: LdPrVar
  loc_C2AEE8: LateMemCall
  loc_C2AEEE: LitVarStr var_B4, "        <td align=""right"" nowrap=""nowrap"">Vinculo:</td>"
  loc_C2AEF3: PopAdLdVar
  loc_C2AEF4: FLdPr Me
  loc_C2AEF7: MemLdRfVar from_stack_1.global_60
  loc_C2AEFA: LdPrVar
  loc_C2AEFC: LateMemCall
  loc_C2AF02: LitStr "        <td class=""Normal"">"
  loc_C2AF05: FMemLdR4 var_CC(24)
  loc_C2AF0A: ConcatStr
  loc_C2AF0B: FStStrNoPop var_90
  loc_C2AF0E: LitStr "</td>"
  loc_C2AF11: ConcatStr
  loc_C2AF12: CVarStr var_A4
  loc_C2AF15: PopAdLdVar
  loc_C2AF16: FLdPr Me
  loc_C2AF19: MemLdRfVar from_stack_1.global_60
  loc_C2AF1C: LdPrVar
  loc_C2AF1E: LateMemCall
  loc_C2AF24: FFree1Str var_90
  loc_C2AF27: FFree1Var var_A4 = ""
  loc_C2AF2A: LitVarStr var_B4, "      </tr>"
  loc_C2AF2F: PopAdLdVar
  loc_C2AF30: FLdPr Me
  loc_C2AF33: MemLdRfVar from_stack_1.global_60
  loc_C2AF36: LdPrVar
  loc_C2AF38: LateMemCall
  loc_C2AF3E: Branch loc_C2B016
  loc_C2AF41: LitVarStr var_B4, "      <tr valign=""top"">"
  loc_C2AF46: PopAdLdVar
  loc_C2AF47: FLdPr Me
  loc_C2AF4A: MemLdRfVar from_stack_1.global_60
  loc_C2AF4D: LdPrVar
  loc_C2AF4F: LateMemCall
  loc_C2AF55: LitStr "        <td align=""right"" nowrap=""nowrap"">"
  loc_C2AF58: FLdRfVar var_90
  loc_C2AF5B: FLdPr Me
  loc_C2AF5E: VCallAd Control_ID_TipoDNICbo
  loc_C2AF61: FStAdFunc var_8C
  loc_C2AF64: FLdPr var_8C
  loc_C2AF67:  = Me.Text
  loc_C2AF6C: ILdRf var_90
  loc_C2AF6F: ConcatStr
  loc_C2AF70: FStStrNoPop var_94
  loc_C2AF73: LitStr ":</td>"
  loc_C2AF76: ConcatStr
  loc_C2AF77: CVarStr var_A4
  loc_C2AF7A: PopAdLdVar
  loc_C2AF7B: FLdPr Me
  loc_C2AF7E: MemLdRfVar from_stack_1.global_60
  loc_C2AF81: LdPrVar
  loc_C2AF83: LateMemCall
  loc_C2AF89: FFreeStr var_90 = ""
  loc_C2AF90: FFree1Ad var_8C
  loc_C2AF93: FFree1Var var_A4 = ""
  loc_C2AF96: FLdRfVar var_142
  loc_C2AF99: FLdPr Me
  loc_C2AF9C: VCallAd Control_ID_TipoDNICbo
  loc_C2AF9F: FStAdFunc var_8C
  loc_C2AFA2: FLdPr var_8C
  loc_C2AFA5:  = Me.ListIndex
  loc_C2AFAA: LitVarStr var_11C, "        <td class=""Normal"">"
  loc_C2AFAF: FMemLdRf unk_51F141
  loc_C2AFB4: CVarRef
  loc_C2AFB9: FMemLdRf unk_51F141
  loc_C2AFBE: CVarRef
  loc_C2AFC3: FLdI2 var_142
  loc_C2AFC6: LitI2_Byte 0
  loc_C2AFC8: EqI2
  loc_C2AFC9: CVarBoolI2 var_B4
  loc_C2AFCD: FLdRfVar var_A4
  loc_C2AFD0: ImpAdCallFPR4  = IIf(, , )
  loc_C2AFD5: FLdRfVar var_A4
  loc_C2AFD8: ConcatVar var_C4
  loc_C2AFDC: LitVarStr var_13C, "</td>"
  loc_C2AFE1: ConcatVar var_EC
  loc_C2AFE5: PopAdLdVar
  loc_C2AFE6: FLdPr Me
  loc_C2AFE9: MemLdRfVar from_stack_1.global_60
  loc_C2AFEC: LdPrVar
  loc_C2AFEE: LateMemCall
  loc_C2AFF4: FFree1Ad var_8C
  loc_C2AFF7: FFreeVar var_B4 = "": var_A4 = "": var_C4 = ""
  loc_C2B002: LitVarStr var_B4, "      </tr>"
  loc_C2B007: PopAdLdVar
  loc_C2B008: FLdPr Me
  loc_C2B00B: MemLdRfVar from_stack_1.global_60
  loc_C2B00E: LdPrVar
  loc_C2B010: LateMemCall
  loc_C2B016: LitVarStr var_B4, "      <tr valign=""top"">"
  loc_C2B01B: PopAdLdVar
  loc_C2B01C: FLdPr Me
  loc_C2B01F: MemLdRfVar from_stack_1.global_60
  loc_C2B022: LdPrVar
  loc_C2B024: LateMemCall
  loc_C2B02A: LitVarStr var_B4, "        <td align=""right"" nowrap=""nowrap"">Domicilio:</td>"
  loc_C2B02F: PopAdLdVar
  loc_C2B030: FLdPr Me
  loc_C2B033: MemLdRfVar from_stack_1.global_60
  loc_C2B036: LdPrVar
  loc_C2B038: LateMemCall
  loc_C2B03E: LitVarStr var_11C, "        <td class=""Normal"">"
  loc_C2B043: FMemLdRf unk_51F141
  loc_C2B048: CVarRef
  loc_C2B04D: FMemLdRf unk_51F141
  loc_C2B052: CVarRef
  loc_C2B057: FMemLdR4 var_CC(28)
  loc_C2B05C: LitStr " "
  loc_C2B05F: NeStr
  loc_C2B061: FMemLdR4 var_CC(28)
  loc_C2B066: LitStr vbNullString
  loc_C2B069: NeStr
  loc_C2B06B: AndI4
  loc_C2B06C: CVarBoolI2 var_B4
  loc_C2B070: FLdRfVar var_A4
  loc_C2B073: ImpAdCallFPR4  = IIf(, , )
  loc_C2B078: FLdRfVar var_A4
  loc_C2B07B: ConcatVar var_C4
  loc_C2B07F: LitVarStr var_13C, "&nbsp;"
  loc_C2B084: ConcatVar var_EC
  loc_C2B088: LitVarStr var_164, vbNullString
  loc_C2B08D: FStVarCopyObj var_12C
  loc_C2B090: FLdRfVar var_12C
  loc_C2B093: LitStr "Nro: "
  loc_C2B096: FMemLdR4 var_CC(32)
  loc_C2B09B: ConcatStr
  loc_C2B09C: CVarStr var_10C
  loc_C2B09F: FMemLdR4 var_CC(32)
  loc_C2B0A4: LitStr vbNullString
  loc_C2B0A7: NeStr
  loc_C2B0A9: FMemLdR4 var_CC(32)
  loc_C2B0AE: LitStr " "
  loc_C2B0B1: NeStr
  loc_C2B0B3: AndI4
  loc_C2B0B4: CVarBoolI2 var_154
  loc_C2B0B8: FLdRfVar var_174
  loc_C2B0BB: ImpAdCallFPR4  = IIf(, , )
  loc_C2B0C0: FLdRfVar var_174
  loc_C2B0C3: ConcatVar var_184
  loc_C2B0C7: LitVarStr var_194, "</td>"
  loc_C2B0CC: ConcatVar var_1A4
  loc_C2B0D0: PopAdLdVar
  loc_C2B0D1: FLdPr Me
  loc_C2B0D4: MemLdRfVar from_stack_1.global_60
  loc_C2B0D7: LdPrVar
  loc_C2B0D9: LateMemCall
  loc_C2B0DF: FFreeVar var_B4 = "": var_A4 = "": var_C4 = "": var_154 = "": var_10C = "": var_12C = "": var_EC = "": var_174 = "": var_184 = ""
  loc_C2B0F6: LitVarStr var_B4, "      </tr>"
  loc_C2B0FB: PopAdLdVar
  loc_C2B0FC: FLdPr Me
  loc_C2B0FF: MemLdRfVar from_stack_1.global_60
  loc_C2B102: LdPrVar
  loc_C2B104: LateMemCall
  loc_C2B10A: FMemLdR4 var_CC(36)
  loc_C2B10F: LitStr vbNullString
  loc_C2B112: NeStr
  loc_C2B114: BranchF loc_C2B36B
  loc_C2B117: LitVarStr var_B4, "      <tr valign=""top"">"
  loc_C2B11C: PopAdLdVar
  loc_C2B11D: FLdPr Me
  loc_C2B120: MemLdRfVar from_stack_1.global_60
  loc_C2B123: LdPrVar
  loc_C2B125: LateMemCall
  loc_C2B12B: LitVarStr var_B4, "        <td align=""right"" nowrap=""nowrap"">Ubicaci&oacute;n:</td>"
  loc_C2B130: PopAdLdVar
  loc_C2B131: FLdPr Me
  loc_C2B134: MemLdRfVar from_stack_1.global_60
  loc_C2B137: LdPrVar
  loc_C2B139: LateMemCall
  loc_C2B13F: LitStr "        <td class=""Normal"">"
  loc_C2B142: FMemLdR4 var_CC(36)
  loc_C2B147: ConcatStr
  loc_C2B148: FStStrNoPop var_90
  loc_C2B14B: LitStr "</td>"
  loc_C2B14E: ConcatStr
  loc_C2B14F: CVarStr var_A4
  loc_C2B152: PopAdLdVar
  loc_C2B153: FLdPr Me
  loc_C2B156: MemLdRfVar from_stack_1.global_60
  loc_C2B159: LdPrVar
  loc_C2B15B: LateMemCall
  loc_C2B161: FFree1Str var_90
  loc_C2B164: FFree1Var var_A4 = ""
  loc_C2B167: LitVarStr var_B4, "      </tr>"
  loc_C2B16C: PopAdLdVar
  loc_C2B16D: FLdPr Me
  loc_C2B170: MemLdRfVar from_stack_1.global_60
  loc_C2B173: LdPrVar
  loc_C2B175: LateMemCall
  loc_C2B17B: FMemLdRf unk_51F141
  loc_C2B180: CVarRef
  loc_C2B185: FLdRfVar var_A4
  loc_C2B188: ImpAdCallFPR4  = Trim()
  loc_C2B18D: FLdRfVar var_A4
  loc_C2B190: LitVarStr var_DC, vbNullString
  loc_C2B195: HardType
  loc_C2B196: NeVar var_C4
  loc_C2B19A: FMemLdRf unk_51F141
  loc_C2B19F: CVarRef
  loc_C2B1A4: FLdRfVar var_EC
  loc_C2B1A7: ImpAdCallFPR4  = Trim()
  loc_C2B1AC: FLdRfVar var_EC
  loc_C2B1AF: LitVarStr var_11C, "0"
  loc_C2B1B4: HardType
  loc_C2B1B5: NeVar var_10C
  loc_C2B1B9: OrVar var_12C
  loc_C2B1BD: FMemLdRf unk_51F141
  loc_C2B1C2: CVarRef
  loc_C2B1C7: FLdRfVar var_174
  loc_C2B1CA: ImpAdCallFPR4  = Trim()
  loc_C2B1CF: FLdRfVar var_174
  loc_C2B1D2: LitVarStr var_154, vbNullString
  loc_C2B1D7: HardType
  loc_C2B1D8: NeVar var_184
  loc_C2B1DC: OrVar var_1A4
  loc_C2B1E0: FMemLdRf unk_51F141
  loc_C2B1E5: CVarRef
  loc_C2B1EA: FLdRfVar var_1C4
  loc_C2B1ED: ImpAdCallFPR4  = Trim()
  loc_C2B1F2: FLdRfVar var_1C4
  loc_C2B1F5: LitVarStr var_194, "0"
  loc_C2B1FA: HardType
  loc_C2B1FB: NeVar var_1D4
  loc_C2B1FF: OrVar var_1E4
  loc_C2B203: CBoolVarNull
  loc_C2B205: FFreeVar var_A4 = "": var_EC = "": var_174 = ""
  loc_C2B210: BranchF loc_C2B36B
  loc_C2B213: LitVarStr var_B4, "      <tr valign=""top"">"
  loc_C2B218: PopAdLdVar
  loc_C2B219: FLdPr Me
  loc_C2B21C: MemLdRfVar from_stack_1.global_60
  loc_C2B21F: LdPrVar
  loc_C2B221: LateMemCall
  loc_C2B227: LitVarStr var_B4, "        <td align=""right"" nowrap=""nowrap"">&nbsp;</td>"
  loc_C2B22C: PopAdLdVar
  loc_C2B22D: FLdPr Me
  loc_C2B230: MemLdRfVar from_stack_1.global_60
  loc_C2B233: LdPrVar
  loc_C2B235: LateMemCall
  loc_C2B23B: FMemLdRf unk_51F141
  loc_C2B240: CVarRef
  loc_C2B245: FLdRfVar var_A4
  loc_C2B248: ImpAdCallFPR4  = Trim()
  loc_C2B24D: FMemLdRf unk_51F141
  loc_C2B252: CVarRef
  loc_C2B257: FLdRfVar var_EC
  loc_C2B25A: ImpAdCallFPR4  = Trim()
  loc_C2B25F: FMemLdRf unk_51F141
  loc_C2B264: CVarRef
  loc_C2B269: FLdRfVar var_1E4
  loc_C2B26C: ImpAdCallFPR4  = Trim()
  loc_C2B271: FMemLdRf unk_51F141
  loc_C2B276: CVarRef
  loc_C2B27B: FLdRfVar var_204
  loc_C2B27E: ImpAdCallFPR4  = Trim()
  loc_C2B283: LitVarStr var_154, "        <td class=""Normal"">"
  loc_C2B288: LitVarStr var_13C, vbNullString
  loc_C2B28D: FStVarCopyObj var_1A4
  loc_C2B290: FLdRfVar var_1A4
  loc_C2B293: LitStr "Manzana:&nbsp;"
  loc_C2B296: FMemLdR4 var_CC(40)
  loc_C2B29B: ConcatStr
  loc_C2B29C: CVarStr var_184
  loc_C2B29F: FLdRfVar var_A4
  loc_C2B2A2: LitVarStr var_DC, vbNullString
  loc_C2B2A7: HardType
  loc_C2B2A8: NeVar var_C4
  loc_C2B2AC: FLdRfVar var_EC
  loc_C2B2AF: LitVarStr var_11C, "0"
  loc_C2B2B4: HardType
  loc_C2B2B5: NeVar var_10C
  loc_C2B2B9: AndVar var_12C
  loc_C2B2BD: FStVar var_174
  loc_C2B2C1: FLdRfVar var_174
  loc_C2B2C4: FLdRfVar var_1C4
  loc_C2B2C7: ImpAdCallFPR4  = IIf(, , )
  loc_C2B2CC: FLdRfVar var_1C4
  loc_C2B2CF: ConcatVar var_1D4
  loc_C2B2D3: LitVarStr var_264, vbNullString
  loc_C2B2D8: FStVarCopyObj var_274
  loc_C2B2DB: FLdRfVar var_274
  loc_C2B2DE: LitStr " Casa:&nbsp;"
  loc_C2B2E1: FMemLdR4 var_CC(44)
  loc_C2B2E6: ConcatStr
  loc_C2B2E7: CVarStr var_254
  loc_C2B2EA: FLdRfVar var_1E4
  loc_C2B2ED: LitVarStr var_194, vbNullString
  loc_C2B2F2: HardType
  loc_C2B2F3: NeVar var_1F4
  loc_C2B2F7: FLdRfVar var_204
  loc_C2B2FA: LitVarStr var_214, "0"
  loc_C2B2FF: HardType
  loc_C2B300: NeVar var_224
  loc_C2B304: AndVar var_234
  loc_C2B308: FStVar var_244
  loc_C2B30C: FLdRfVar var_244
  loc_C2B30F: FLdRfVar var_284
  loc_C2B312: ImpAdCallFPR4  = IIf(, , )
  loc_C2B317: FLdRfVar var_284
  loc_C2B31A: ConcatVar var_294
  loc_C2B31E: LitVarStr var_2A4, "</td>"
  loc_C2B323: ConcatVar var_2B4
  loc_C2B327: PopAdLdVar
  loc_C2B328: FLdPr Me
  loc_C2B32B: MemLdRfVar from_stack_1.global_60
  loc_C2B32E: LdPrVar
  loc_C2B330: LateMemCall
  loc_C2B336: FFreeVar var_A4 = "": var_EC = "": var_174 = "": var_184 = "": var_1A4 = "": var_1C4 = "": var_1E4 = "": var_204 = "": var_244 = "": var_254 = "": var_274 = "": var_1D4 = "": var_284 = "": var_294 = ""
  loc_C2B357: LitVarStr var_B4, "      </tr>"
  loc_C2B35C: PopAdLdVar
  loc_C2B35D: FLdPr Me
  loc_C2B360: MemLdRfVar from_stack_1.global_60
  loc_C2B363: LdPrVar
  loc_C2B365: LateMemCall
  loc_C2B36B: LitVarStr var_B4, "      <tr valign=""top"">"
  loc_C2B370: PopAdLdVar
  loc_C2B371: FLdPr Me
  loc_C2B374: MemLdRfVar from_stack_1.global_60
  loc_C2B377: LdPrVar
  loc_C2B379: LateMemCall
  loc_C2B37F: LitVarStr var_B4, "        <td align=""right"" nowrap=""nowrap"">Localidad:</td>"
  loc_C2B384: PopAdLdVar
  loc_C2B385: FLdPr Me
  loc_C2B388: MemLdRfVar from_stack_1.global_60
  loc_C2B38B: LdPrVar
  loc_C2B38D: LateMemCall
  loc_C2B393: LitStr "        <td class=""Normal"">"
  loc_C2B396: FMemLdR4 var_CC(52)
  loc_C2B39B: ConcatStr
  loc_C2B39C: CVarStr var_10C
  loc_C2B39F: LitVarStr var_DC, vbNullString
  loc_C2B3A4: FStVarCopyObj var_C4
  loc_C2B3A7: FLdRfVar var_C4
  loc_C2B3AA: LitStr "&nbsp;C.P:"
  loc_C2B3AD: FMemLdR4 var_CC(56)
  loc_C2B3B2: ConcatStr
  loc_C2B3B3: CVarStr var_A4
  loc_C2B3B6: FMemLdR4 var_CC(56)
  loc_C2B3BB: LitStr "0"
  loc_C2B3BE: NeStr
  loc_C2B3C0: FMemLdR4 var_CC(56)
  loc_C2B3C5: LitStr vbNullString
  loc_C2B3C8: NeStr
  loc_C2B3CA: AndI4
  loc_C2B3CB: CVarBoolI2 var_B4
  loc_C2B3CF: FLdRfVar var_EC
  loc_C2B3D2: ImpAdCallFPR4  = IIf(, , )
  loc_C2B3D7: FLdRfVar var_EC
  loc_C2B3DA: ConcatVar var_12C
  loc_C2B3DE: LitVarStr var_FC, "</td>"
  loc_C2B3E3: ConcatVar var_174
  loc_C2B3E7: PopAdLdVar
  loc_C2B3E8: FLdPr Me
  loc_C2B3EB: MemLdRfVar from_stack_1.global_60
  loc_C2B3EE: LdPrVar
  loc_C2B3F0: LateMemCall
  loc_C2B3F6: FFreeVar var_B4 = "": var_A4 = "": var_C4 = "": var_10C = "": var_EC = "": var_12C = ""
  loc_C2B407: LitVarStr var_B4, "      </tr>"
  loc_C2B40C: PopAdLdVar
  loc_C2B40D: FLdPr Me
  loc_C2B410: MemLdRfVar from_stack_1.global_60
  loc_C2B413: LdPrVar
  loc_C2B415: LateMemCall
  loc_C2B41B: LitVarStr var_B4, "    </table></td>"
  loc_C2B420: PopAdLdVar
  loc_C2B421: FLdPr Me
  loc_C2B424: MemLdRfVar from_stack_1.global_60
  loc_C2B427: LdPrVar
  loc_C2B429: LateMemCall
  loc_C2B42F: LitVarStr var_B4, "  </tr>"
  loc_C2B434: PopAdLdVar
  loc_C2B435: FLdPr Me
  loc_C2B438: MemLdRfVar from_stack_1.global_60
  loc_C2B43B: LdPrVar
  loc_C2B43D: LateMemCall
  loc_C2B443: LitVarStr var_B4, "  <tr>"
  loc_C2B448: PopAdLdVar
  loc_C2B449: FLdPr Me
  loc_C2B44C: MemLdRfVar from_stack_1.global_60
  loc_C2B44F: LdPrVar
  loc_C2B451: LateMemCall
  loc_C2B457: LitVarStr var_B4, "    <td height=""454"" colspan=""2"" valign=""top""><table width=""98" & Chr(37) & """ align=""center""><tr class=""Normal""><td>"
  loc_C2B45C: PopAdLdVar
  loc_C2B45D: FLdPr Me
  loc_C2B460: MemLdRfVar from_stack_1.global_60
  loc_C2B463: LdPrVar
  loc_C2B465: LateMemCall
  loc_C2B46B: FLdPr Me
  loc_C2B46E: VCallAd Control_ID_ssTab
  loc_C2B471: FStAdFunc var_8C
  loc_C2B474: FLdPr var_8C
  loc_C2B477: LateIdLdVar var_A4 DispID_4 0
  loc_C2B47E: CI2Var
  loc_C2B47F: FStI2 var_2C6
  loc_C2B482: FFree1Ad var_8C
  loc_C2B485: FFree1Var var_A4 = ""
  loc_C2B488: FLdI2 var_2C6
  loc_C2B48B: LitI2_Byte 0
  loc_C2B48D: EqI2
  loc_C2B48E: BranchF loc_C2B494
  loc_C2B491: Branch loc_C2B51D
  loc_C2B494: FLdI2 var_2C6
  loc_C2B497: LitI2_Byte 1
  loc_C2B499: EqI2
  loc_C2B49A: BranchF loc_C2B4A0
  loc_C2B49D: Branch loc_C2B51D
  loc_C2B4A0: FLdI2 var_2C6
  loc_C2B4A3: LitI2_Byte 2
  loc_C2B4A5: EqI2
  loc_C2B4A6: BranchF loc_C2B4D4
  loc_C2B4A9: LitVarStr var_B4, " <p style=""text-indent:150"" align=""justify""> Notificamos a Ud. que a la fecha, se encuentra libre de deuda de nuestros registros por SERVICIOS MUNICIPALES.</p>"
  loc_C2B4AE: PopAdLdVar
  loc_C2B4AF: FLdPr Me
  loc_C2B4B2: MemLdRfVar from_stack_1.global_60
  loc_C2B4B5: LdPrVar
  loc_C2B4B7: LateMemCall
  loc_C2B4BD: LitVarStr var_B4, "      <p style=""text-indent:150"" align=""justify"">El presente certificado tiene efecto liberatorio en cuanto a los datos que contiene, salvo que hubiese sido obtenido mediante dolo, fraude, simulación u ocultación maliciosa de circunstancias relevantes a los fines de su determinación y carece de validez sin la firma del director o jefe/a de área.</p>"
  loc_C2B4C2: PopAdLdVar
  loc_C2B4C3: FLdPr Me
  loc_C2B4C6: MemLdRfVar from_stack_1.global_60
  loc_C2B4C9: LdPrVar
  loc_C2B4CB: LateMemCall
  loc_C2B4D1: Branch loc_C2B51D
  loc_C2B4D4: FLdI2 var_2C6
  loc_C2B4D7: LitI2_Byte 3
  loc_C2B4D9: EqI2
  loc_C2B4DA: BranchF loc_C2B4E0
  loc_C2B4DD: Branch loc_C2B51D
  loc_C2B4E0: FLdI2 var_2C6
  loc_C2B4E3: LitI2_Byte 4
  loc_C2B4E5: EqI2
  loc_C2B4E6: BranchF loc_C2B4EC
  loc_C2B4E9: Branch loc_C2B51D
  loc_C2B4EC: FLdI2 var_2C6
  loc_C2B4EF: LitI2_Byte 5
  loc_C2B4F1: EqI2
  loc_C2B4F2: BranchF loc_C2B51D
  loc_C2B4F5: LitVarStr var_B4, " <p style=""text-indent:150"" align=""justify""> Notificamos a Ud. que a la fecha, se encuentra libre de deuda de nuestros registros por DERECHOS DE CEMENTERIO.</p>"
  loc_C2B4FA: PopAdLdVar
  loc_C2B4FB: FLdPr Me
  loc_C2B4FE: MemLdRfVar from_stack_1.global_60
  loc_C2B501: LdPrVar
  loc_C2B503: LateMemCall
  loc_C2B509: LitVarStr var_B4, "      <p style=""text-indent:150"" align=""justify"">El presente certificado tiene efecto liberatorio en cuanto a los datos que contiene, salvo que hubiese sido obtenido mediante dolo, fraude, simulación u ocultación maliciosa de circunstancias relevantes a los fines de su determinación y carece de validez sin la firma del director o jefe/a de área.</p>"
  loc_C2B50E: PopAdLdVar
  loc_C2B50F: FLdPr Me
  loc_C2B512: MemLdRfVar from_stack_1.global_60
  loc_C2B515: LdPrVar
  loc_C2B517: LateMemCall
  loc_C2B51D: LitVarStr var_B4, "   </td></tr></table></td>"
  loc_C2B522: PopAdLdVar
  loc_C2B523: FLdPr Me
  loc_C2B526: MemLdRfVar from_stack_1.global_60
  loc_C2B529: LdPrVar
  loc_C2B52B: LateMemCall
  loc_C2B531: LitVarStr var_B4, "  </tr>"
  loc_C2B536: PopAdLdVar
  loc_C2B537: FLdPr Me
  loc_C2B53A: MemLdRfVar from_stack_1.global_60
  loc_C2B53D: LdPrVar
  loc_C2B53F: LateMemCall
  loc_C2B545: LitVarStr var_B4, "  <tr>"
  loc_C2B54A: PopAdLdVar
  loc_C2B54B: FLdPr Me
  loc_C2B54E: MemLdRfVar from_stack_1.global_60
  loc_C2B551: LdPrVar
  loc_C2B553: LateMemCall
  loc_C2B559: LitVarStr var_B4, "    <td colspan=""2"" align=""right"" valign=""top"" height=""31""><table width=""98" & Chr(37) & """ align=""center"">"
  loc_C2B55E: PopAdLdVar
  loc_C2B55F: FLdPr Me
  loc_C2B562: MemLdRfVar from_stack_1.global_60
  loc_C2B565: LdPrVar
  loc_C2B567: LateMemCall
  loc_C2B56D: FLdPr Me
  loc_C2B570: VCallAd Control_ID_HastaInmuMsk
  loc_C2B573: FStAdFunc var_8C
  loc_C2B576: FLdPr var_8C
  loc_C2B579: LateIdLdVar var_A4 DispID_15 0
  loc_C2B580: PopAd
  loc_C2B582: LitStr "      <tr align=""right"" class=""Normal""><td>"
  loc_C2B585: LitStr "Guaymallén"
  loc_C2B588: ConcatStr
  loc_C2B589: FStStrNoPop var_90
  loc_C2B58C: LitStr ", "
  loc_C2B58F: ConcatStr
  loc_C2B590: FStStrNoPop var_94
  loc_C2B593: LitStr "Mendoza"
  loc_C2B596: ConcatStr
  loc_C2B597: FStStrNoPop var_2CC
  loc_C2B59A: LitStr ", "
  loc_C2B59D: ConcatStr
  loc_C2B59E: FStStrNoPop var_2D0
  loc_C2B5A1: LitI4 1
  loc_C2B5A6: LitI4 1
  loc_C2B5AB: LitVarStr var_B4, "dddd d \de mmmm \de yyyy"
  loc_C2B5B0: FStVarCopyObj var_EC
  loc_C2B5B3: FLdRfVar var_EC
  loc_C2B5B6: FLdRfVar var_A4
  loc_C2B5B9: CStrVarTmp
  loc_C2B5BA: CVarStr var_C4
  loc_C2B5BD: ImpAdCallI2 Format$(, )
  loc_C2B5C2: FStStrNoPop var_2D4
  loc_C2B5C5: ConcatStr
  loc_C2B5C6: FStStrNoPop var_2D8
  loc_C2B5C9: LitStr ".-</td></tr></table></td>"
  loc_C2B5CC: ConcatStr
  loc_C2B5CD: CVarStr var_10C
  loc_C2B5D0: PopAdLdVar
  loc_C2B5D1: FLdPr Me
  loc_C2B5D4: MemLdRfVar from_stack_1.global_60
  loc_C2B5D7: LdPrVar
  loc_C2B5D9: LateMemCall
  loc_C2B5DF: FFreeStr var_90 = "": var_94 = "": var_2CC = "": var_2D0 = "": var_2D4 = ""
  loc_C2B5EE: FFree1Ad var_8C
  loc_C2B5F1: FFreeVar var_A4 = "": var_C4 = "": var_EC = ""
  loc_C2B5FC: LitVarStr var_B4, "  </tr>"
  loc_C2B601: PopAdLdVar
  loc_C2B602: FLdPr Me
  loc_C2B605: MemLdRfVar from_stack_1.global_60
  loc_C2B608: LdPrVar
  loc_C2B60A: LateMemCall
  loc_C2B610: LitI4 0
  loc_C2B615: FStR4 var_CC
  loc_C2B618: AryUnlock
  loc_C2B61B: ExitProcHresult
End Function

Private Function Proc_301_42_AF6E78() 'AF6E78
  'Data Table: 51F20C
  loc_AF6CCC: LitVarStr var_94, "  <tr><td colspan=""2"" height=""81""><table align=""center"" border=""1"" width=""98" & Chr(37) & """>"
  loc_AF6CD1: PopAdLdVar
  loc_AF6CD2: FLdPr Me
  loc_AF6CD5: MemLdRfVar from_stack_1.global_60
  loc_AF6CD8: LdPrVar
  loc_AF6CDA: LateMemCall
  loc_AF6CE0: LitVarStr var_94, "  <tr align=""center"" valign=""middle"">"
  loc_AF6CE5: PopAdLdVar
  loc_AF6CE6: FLdPr Me
  loc_AF6CE9: MemLdRfVar from_stack_1.global_60
  loc_AF6CEC: LdPrVar
  loc_AF6CEE: LateMemCall
  loc_AF6CF4: LitVarStr var_A4, "     <td height=""50"" class=""Recuadro"">"
  loc_AF6CF9: LitVarStr var_94, "Dirección de Rentas"
  loc_AF6CFE: FStVarCopyObj var_B4
  loc_AF6D01: FLdRfVar var_B4
  loc_AF6D04: FLdRfVar var_C4
  loc_AF6D07: ImpAdCallFPR4  = Ucase()
  loc_AF6D0C: FLdRfVar var_C4
  loc_AF6D0F: ConcatVar var_D4
  loc_AF6D13: LitVarStr var_E4, " - "
  loc_AF6D18: ConcatVar var_F4
  loc_AF6D1C: LitVarStr var_104, "Municipalidad de Guaymallén"
  loc_AF6D21: FStVarCopyObj var_114
  loc_AF6D24: FLdRfVar var_114
  loc_AF6D27: FLdRfVar var_124
  loc_AF6D2A: ImpAdCallFPR4  = Ucase()
  loc_AF6D2F: FLdRfVar var_124
  loc_AF6D32: ConcatVar var_134
  loc_AF6D36: LitVarStr var_144, "<br>"
  loc_AF6D3B: ConcatVar var_154
  loc_AF6D3F: PopAdLdVar
  loc_AF6D40: FLdPr Me
  loc_AF6D43: MemLdRfVar from_stack_1.global_60
  loc_AF6D46: LdPrVar
  loc_AF6D48: LateMemCall
  loc_AF6D4E: FFreeVar var_B4 = "": var_C4 = "": var_D4 = "": var_114 = "": var_F4 = "": var_124 = "": var_134 = ""
  loc_AF6D61: LitStr "       "
  loc_AF6D64: LitStr "Libertad 720 - Villa Nueva"
  loc_AF6D67: ConcatStr
  loc_AF6D68: FStStrNoPop var_168
  loc_AF6D6B: LitStr " - TEL.: "
  loc_AF6D6E: ConcatStr
  loc_AF6D6F: FStStrNoPop var_16C
  loc_AF6D72: LitStr "Atención y mejora Continua 4498181 o por Asistencia Virtual vÍa wsp al 2615068885"
  loc_AF6D75: ConcatStr
  loc_AF6D76: FStStrNoPop var_170
  loc_AF6D79: LitStr "</td>"
  loc_AF6D7C: ConcatStr
  loc_AF6D7D: CVarStr var_B4
  loc_AF6D80: PopAdLdVar
  loc_AF6D81: FLdPr Me
  loc_AF6D84: MemLdRfVar from_stack_1.global_60
  loc_AF6D87: LdPrVar
  loc_AF6D89: LateMemCall
  loc_AF6D8F: FFreeStr var_168 = "": var_16C = ""
  loc_AF6D98: FFree1Var var_B4 = ""
  loc_AF6D9B: LitVarStr var_94, "  </tr>"
  loc_AF6DA0: PopAdLdVar
  loc_AF6DA1: FLdPr Me
  loc_AF6DA4: MemLdRfVar from_stack_1.global_60
  loc_AF6DA7: LdPrVar
  loc_AF6DA9: LateMemCall
  loc_AF6DAF: LitVarStr var_94, "  </table></td></tr>"
  loc_AF6DB4: PopAdLdVar
  loc_AF6DB5: FLdPr Me
  loc_AF6DB8: MemLdRfVar from_stack_1.global_60
  loc_AF6DBB: LdPrVar
  loc_AF6DBD: LateMemCall
  loc_AF6DC3: LitVarStr var_94, "  <tr class=""Revision"">"
  loc_AF6DC8: PopAdLdVar
  loc_AF6DC9: FLdPr Me
  loc_AF6DCC: MemLdRfVar from_stack_1.global_60
  loc_AF6DCF: LdPrVar
  loc_AF6DD1: LateMemCall
  loc_AF6DD7: LitVarStr var_94, "    <td nowrap=""nowrap"" height=""40"" align=""left"" valign=""bottom"">www.infogov.com.ar</td>"
  loc_AF6DDC: PopAdLdVar
  loc_AF6DDD: FLdPr Me
  loc_AF6DE0: MemLdRfVar from_stack_1.global_60
  loc_AF6DE3: LdPrVar
  loc_AF6DE5: LateMemCall
  loc_AF6DEB: LitStr "    <td nowrap=""nowrap"" height=""40"" align=""right"" valign=""bottom"">Usuario: "
  loc_AF6DEE: ImpAdLdI4 MemVar_D9302C
  loc_AF6DF1: ConcatStr
  loc_AF6DF2: FStStrNoPop var_168
  loc_AF6DF5: LitStr "</td>"
  loc_AF6DF8: ConcatStr
  loc_AF6DF9: CVarStr var_B4
  loc_AF6DFC: PopAdLdVar
  loc_AF6DFD: FLdPr Me
  loc_AF6E00: MemLdRfVar from_stack_1.global_60
  loc_AF6E03: LdPrVar
  loc_AF6E05: LateMemCall
  loc_AF6E0B: FFree1Str var_168
  loc_AF6E0E: FFree1Var var_B4 = ""
  loc_AF6E11: LitVarStr var_94, "  </tr>"
  loc_AF6E16: PopAdLdVar
  loc_AF6E17: FLdPr Me
  loc_AF6E1A: MemLdRfVar from_stack_1.global_60
  loc_AF6E1D: LdPrVar
  loc_AF6E1F: LateMemCall
  loc_AF6E25: LitVarStr var_94, "</table></td></tr>"
  loc_AF6E2A: PopAdLdVar
  loc_AF6E2B: FLdPr Me
  loc_AF6E2E: MemLdRfVar from_stack_1.global_60
  loc_AF6E31: LdPrVar
  loc_AF6E33: LateMemCall
  loc_AF6E39: LitVarStr var_94, "</table>"
  loc_AF6E3E: PopAdLdVar
  loc_AF6E3F: FLdPr Me
  loc_AF6E42: MemLdRfVar from_stack_1.global_60
  loc_AF6E45: LdPrVar
  loc_AF6E47: LateMemCall
  loc_AF6E4D: LitVarStr var_94, "</body>"
  loc_AF6E52: PopAdLdVar
  loc_AF6E53: FLdPr Me
  loc_AF6E56: MemLdRfVar from_stack_1.global_60
  loc_AF6E59: LdPrVar
  loc_AF6E5B: LateMemCall
  loc_AF6E61: LitVarStr var_94, "</html>"
  loc_AF6E66: PopAdLdVar
  loc_AF6E67: FLdPr Me
  loc_AF6E6A: MemLdRfVar from_stack_1.global_60
  loc_AF6E6D: LdPrVar
  loc_AF6E6F: LateMemCall
  loc_AF6E75: ExitProcHresult
End Function
