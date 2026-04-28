VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptEstadisticadeApremio
  Caption = "Estadisticas de Apremio"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptEstadisticadeApremio.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 12000
  ClientHeight = 7680
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 7425
    Width = 12000
    Height = 255
    TabIndex = 33
    OleObjectBlob = "rptEstadisticadeApremio.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 9240
    Top = 6600
    Width = 855
    Height = 735
    TabIndex = 31
    Cancel = -1  'True
    Picture = "rptEstadisticadeApremio.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptEstadisticadeApremio.frx":0B9C
    Left = 9480
    Top = 6600
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 4440
    Top = 6120
    Width = 3615
    Height = 1215
    TabIndex = 29
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.CommandButton cmdXLS
      Caption = "&XLS"
      Left = 1920
      Top = 360
      Width = 1335
      Height = 615
      TabIndex = 36
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 615
      TabIndex = 30
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 240
    Top = 6120
    Width = 4095
    Height = 1215
    TabIndex = 26
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1920
      Top = 360
      Width = 2055
      Height = 615
      TabIndex = 28
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1695
      Height = 615
      TabIndex = 27
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin VB.Frame Frame1
    Left = 0
    Top = 0
    Width = 11655
    Height = 6015
    TabIndex = 0
    Begin VB.Frame Frame5
      Caption = "Estados de la Boleta de Apremio"
      Left = 360
      Top = 240
      Width = 8535
      Height = 2295
      TabIndex = 1
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Begin VB.OptionButton PagadaOpt
        Caption = "Pagadas (Gastos de Apremio)"
        Left = 1920
        Top = 1680
        Width = 3615
        Height = 375
        TabIndex = 5
        BeginProperty Font
          Name = "MS Sans Serif"
          Size = 12
          Charset = 0
          Weight = 400
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
      Begin VB.OptionButton SuspendidasOpt
        Caption = "Suspendidas"
        Left = 1920
        Top = 1200
        Width = 1935
        Height = 375
        TabIndex = 4
        BeginProperty Font
          Name = "MS Sans Serif"
          Size = 12
          Charset = 0
          Weight = 400
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
      Begin VB.OptionButton CanceladasOpt
        Caption = "Canceladas (la deuda de la cuenta corriente)"
        Left = 1920
        Top = 720
        Width = 5535
        Height = 375
        TabIndex = 3
        BeginProperty Font
          Name = "MS Sans Serif"
          Size = 12
          Charset = 0
          Weight = 400
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
      Begin VB.OptionButton ActivasOpt
        Caption = "Activas"
        Left = 1920
        Top = 240
        Width = 1215
        Height = 375
        TabIndex = 2
        BeginProperty Font
          Name = "MS Sans Serif"
          Size = 12
          Charset = 0
          Weight = 400
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
    End
    Begin VB.Frame Frame4
      Caption = "Ordenado según:"
      Left = 7320
      Top = 2640
      Width = 4095
      Height = 2415
      TabIndex = 16
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Begin VB.OptionButton ImporteOpt
        Caption = "Importe de la Boleta"
        Left = 840
        Top = 1800
        Width = 2775
        Height = 375
        TabIndex = 35
        BeginProperty Font
          Name = "MS Sans Serif"
          Size = 12
          Charset = 0
          Weight = 400
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
      Begin VB.OptionButton FechaBoletaOpt
        Caption = "Fecha de la Boleta"
        Left = 840
        Top = 1440
        Width = 2775
        Height = 375
        TabIndex = 34
        BeginProperty Font
          Name = "MS Sans Serif"
          Size = 12
          Charset = 0
          Weight = 400
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
      Begin VB.OptionButton RecaudadorOpt
        Caption = "Recaudador"
        Left = 840
        Top = 1080
        Width = 2295
        Height = 375
        TabIndex = 19
        BeginProperty Font
          Name = "MS Sans Serif"
          Size = 12
          Charset = 0
          Weight = 400
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
      Begin VB.OptionButton AutoApreOpt
        Caption = "Numero de Juicio"
        Left = 840
        Top = 720
        Width = 2295
        Height = 375
        TabIndex = 18
        BeginProperty Font
          Name = "MS Sans Serif"
          Size = 12
          Charset = 0
          Weight = 400
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
      Begin VB.OptionButton NumeApreOpt
        Caption = "Boleta de Apremio"
        Left = 840
        Top = 360
        Width = 2295
        Height = 375
        TabIndex = 17
        BeginProperty Font
          Name = "MS Sans Serif"
          Size = 12
          Charset = 0
          Weight = 400
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 9000
      Top = 960
      Width = 1575
      Height = 615
      TabIndex = 6
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin MSMask.MaskEdBox CodiOficMsk
      Left = 2040
      Top = 5400
      Width = 375
      Height = 360
      TabIndex = 24
      OleObjectBlob = "rptEstadisticadeApremio.frx":0C00
    End
    Begin MSMask.MaskEdBox CodiInjuDesdeMsk
      Left = 2040
      Top = 2880
      Width = 375
      Height = 360
      TabIndex = 8
      OleObjectBlob = "rptEstadisticadeApremio.frx":0C8A
    End
    Begin MSMask.MaskEdBox CodiInjuHastaMsk
      Left = 2040
      Top = 3360
      Width = 375
      Height = 360
      TabIndex = 11
      OleObjectBlob = "rptEstadisticadeApremio.frx":0D14
    End
    Begin MSMask.MaskEdBox CodiRecaDesdeMsk
      Left = 2040
      Top = 4080
      Width = 495
      Height = 360
      TabIndex = 14
      OleObjectBlob = "rptEstadisticadeApremio.frx":0D9E
    End
    Begin MSMask.MaskEdBox CodiRecaHastaMsk
      Left = 2040
      Top = 4560
      Width = 495
      Height = 360
      TabIndex = 21
      OleObjectBlob = "rptEstadisticadeApremio.frx":0E2C
    End
    Begin VB.Label DetaRecaDesdeLabel
      ForeColor = &HFF0000&
      Left = 2640
      Top = 4080
      Width = 4335
      Height = 360
      TabIndex = 15
      BorderStyle = 1 'Fixed Single
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label DetaRecaHastaLabel
      ForeColor = &HFF0000&
      Left = 2640
      Top = 3960
      Width = 4335
      Height = 360
      TabIndex = 22
      BorderStyle = 1 'Fixed Single
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label5
      Caption = "Desde Recaud.:"
      Left = 240
      Top = 4080
      Width = 1725
      Height = 300
      TabIndex = 13
      AutoSize = -1  'True
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label4
      Caption = "Hasta Recaud:"
      Left = 360
      Top = 4560
      Width = 1605
      Height = 300
      TabIndex = 20
      AutoSize = -1  'True
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label3
      Caption = "Hasta Instancia:"
      Left = 240
      Top = 3360
      Width = 1740
      Height = 300
      TabIndex = 10
      AutoSize = -1  'True
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label1
      Caption = "Desde Instancia:"
      Left = 240
      Top = 2880
      Width = 1800
      Height = 300
      TabIndex = 7
      AutoSize = -1  'True
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label DetaInjuHastaLbl
      ForeColor = &HFF0000&
      Left = 2520
      Top = 3360
      Width = 4455
      Height = 360
      TabIndex = 12
      BorderStyle = 1 'Fixed Single
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label DetaInjuDesdeLbl
      ForeColor = &HFF0000&
      Left = 2520
      Top = 2880
      Width = 4455
      Height = 360
      TabIndex = 9
      BorderStyle = 1 'Fixed Single
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label2
      Caption = "Oficina:"
      Left = 1200
      Top = 5400
      Width = 795
      Height = 300
      TabIndex = 23
      AutoSize = -1  'True
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label DetaOficLbl
      ForeColor = &HFF0000&
      Left = 2520
      Top = 5400
      Width = 4455
      Height = 360
      TabIndex = 25
      BorderStyle = 1 'Fixed Single
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 9480
    Top = 6600
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 32
    OleObjectBlob = "rptEstadisticadeApremio.frx":0EBA
  End
End

Attribute VB_Name = "rptEstadisticadeApremio"

Public bLogos As Boolean
Public bGenerado As Boolean

Private Type UDT_1_00562428
  bStruc(44) As Byte ' String fields: 11
End Type


Private Sub CodiInjuDesdeMsk_UnknownEvent_0 '9BF630
  'Data Table: 4F89CC
  loc_9BF61C: FLdPr Me
  loc_9BF61F: VCallAd Control_ID_CodiInjuDesdeMsk
  loc_9BF622: CVarAd
  loc_9BF626: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BF62B: FFree1Var var_94 = ""
  loc_9BF62E: ExitProcHresult
End Sub

Private Function CodiInjuDesdeMsk_UnknownEvent_8(arg_C) 'AC703C
  'Data Table: 4F89CC
  loc_AC6F30: FLdPr Me
  loc_AC6F33: VCallAd Control_ID_CodiInjuDesdeMsk
  loc_AC6F36: FStAdFunc var_88
  loc_AC6F39: FLdPr var_88
  loc_AC6F3C: LateIdLdVar var_98 DispID_13 -32767
  loc_AC6F43: CBoolVar
  loc_AC6F45: FFree1Ad var_88
  loc_AC6F48: FFree1Var var_98 = ""
  loc_AC6F4B: BranchF loc_AC703A
  loc_AC6F4E: FLdPr Me
  loc_AC6F51: VCallAd Control_ID_CodiInjuDesdeMsk
  loc_AC6F54: FStAdFunc var_88
  loc_AC6F57: FLdPr var_88
  loc_AC6F5A: LateIdLdVar var_98 DispID_22 0
  loc_AC6F61: CStrVarTmp
  loc_AC6F62: FStStrNoPop var_9C
  loc_AC6F65: CR8Str
  loc_AC6F67: LitI2_Byte 0
  loc_AC6F69: CR8I2
  loc_AC6F6A: NeR8
  loc_AC6F6B: FFree1Str var_9C
  loc_AC6F6E: FFree1Ad var_88
  loc_AC6F71: FFree1Var var_98 = ""
  loc_AC6F74: BranchF loc_AC7023
  loc_AC6F77: FLdPr Me
  loc_AC6F7A: VCallAd Control_ID_CodiInjuDesdeMsk
  loc_AC6F7D: FStAdFunc var_88
  loc_AC6F80: FLdPr var_88
  loc_AC6F83: LateIdLdVar var_98 DispID_22 0
  loc_AC6F8A: CStrVarTmp
  loc_AC6F8B: FStStrNoPop var_9C
  loc_AC6F8E: ImpAdCallI2 Proc_18_82_A5945C()
  loc_AC6F93: FStStrNoPop var_A0
  loc_AC6F96: FLdPr Me
  loc_AC6F99: MemStStrCopy
  loc_AC6F9D: FFreeStr var_9C = ""
  loc_AC6FA4: FFree1Ad var_88
  loc_AC6FA7: FFree1Var var_98 = ""
  loc_AC6FAA: FLdPr Me
  loc_AC6FAD: MemLdStr global_88
  loc_AC6FB0: LitStr vbNullString
  loc_AC6FB3: NeStr
  loc_AC6FB5: BranchF loc_AC6FDD
  loc_AC6FB8: FLdPr Me
  loc_AC6FBB: MemLdStr global_88
  loc_AC6FBE: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AC6FC3: FLdPr Me
  loc_AC6FC6: VCallAd Control_ID_CodiInjuDesdeMsk
  loc_AC6FC9: CVarAd
  loc_AC6FCD: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AC6FD2: FFree1Var var_98 = ""
  loc_AC6FD5: LitI2_Byte &HFF
  loc_AC6FD7: IStI2 arg_C
  loc_AC6FDA: Branch loc_AC7020
  loc_AC6FDD: FLdPr Me
  loc_AC6FE0: VCallAd Control_ID_CodiInjuDesdeMsk
  loc_AC6FE3: FStAdFunc var_88
  loc_AC6FE6: FLdPr var_88
  loc_AC6FE9: LateIdLdVar var_98 DispID_22 0
  loc_AC6FF0: CStrVarTmp
  loc_AC6FF1: FStStrNoPop var_9C
  loc_AC6FF4: CI2Str
  loc_AC6FF6: ImpAdCallI2 Proc_270_93_A79E20()
  loc_AC6FFB: FStStrNoPop var_A0
  loc_AC6FFE: FLdPr Me
  loc_AC7001: VCallAd Control_ID_DetaInjuDesdeLbl
  loc_AC7004: FStAdFunc var_A4
  loc_AC7007: FLdPr var_A4
  loc_AC700A: Me.Caption = from_stack_1
  loc_AC700F: FFreeStr var_9C = ""
  loc_AC7016: FFreeAd var_88 = ""
  loc_AC701D: FFree1Var var_98 = ""
  loc_AC7020: Branch loc_AC703A
  loc_AC7023: LitStr "TODAS LAS INSTANCIAS"
  loc_AC7026: FLdPr Me
  loc_AC7029: VCallAd Control_ID_DetaInjuDesdeLbl
  loc_AC702C: FStAdFunc var_88
  loc_AC702F: FLdPr var_88
  loc_AC7032: Me.Caption = from_stack_1
  loc_AC7037: FFree1Ad var_88
  loc_AC703A: ExitProcHresult
End Function

Private Sub CodiInjuHastaMsk_UnknownEvent_0 '9BF708
  'Data Table: 4F89CC
  loc_9BF6F4: FLdPr Me
  loc_9BF6F7: VCallAd Control_ID_CodiInjuHastaMsk
  loc_9BF6FA: CVarAd
  loc_9BF6FE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BF703: FFree1Var var_94 = ""
  loc_9BF706: ExitProcHresult
End Sub

Private Function CodiInjuHastaMsk_UnknownEvent_8(arg_C) 'AEAAE4
  'Data Table: 4F89CC
  loc_AEA964: FLdPr Me
  loc_AEA967: VCallAd Control_ID_CodiInjuHastaMsk
  loc_AEA96A: FStAdFunc var_88
  loc_AEA96D: FLdPr var_88
  loc_AEA970: LateIdLdVar var_98 DispID_13 -32767
  loc_AEA977: CBoolVar
  loc_AEA979: FFree1Ad var_88
  loc_AEA97C: FFree1Var var_98 = ""
  loc_AEA97F: BranchF loc_AEAAE2
  loc_AEA982: FLdPr Me
  loc_AEA985: VCallAd Control_ID_CodiInjuHastaMsk
  loc_AEA988: FStAdFunc var_88
  loc_AEA98B: FLdPr var_88
  loc_AEA98E: LateIdLdVar var_98 DispID_22 0
  loc_AEA995: CStrVarTmp
  loc_AEA996: FStStrNoPop var_9C
  loc_AEA999: CR8Str
  loc_AEA99B: LitI2_Byte 0
  loc_AEA99D: CR8I2
  loc_AEA99E: NeR8
  loc_AEA99F: FFree1Str var_9C
  loc_AEA9A2: FFree1Ad var_88
  loc_AEA9A5: FFree1Var var_98 = ""
  loc_AEA9A8: BranchF loc_AEAA57
  loc_AEA9AB: FLdPr Me
  loc_AEA9AE: VCallAd Control_ID_CodiInjuHastaMsk
  loc_AEA9B1: FStAdFunc var_88
  loc_AEA9B4: FLdPr var_88
  loc_AEA9B7: LateIdLdVar var_98 DispID_22 0
  loc_AEA9BE: CStrVarTmp
  loc_AEA9BF: FStStrNoPop var_9C
  loc_AEA9C2: ImpAdCallI2 Proc_18_82_A5945C()
  loc_AEA9C7: FStStrNoPop var_A0
  loc_AEA9CA: FLdPr Me
  loc_AEA9CD: MemStStrCopy
  loc_AEA9D1: FFreeStr var_9C = ""
  loc_AEA9D8: FFree1Ad var_88
  loc_AEA9DB: FFree1Var var_98 = ""
  loc_AEA9DE: FLdPr Me
  loc_AEA9E1: MemLdStr global_88
  loc_AEA9E4: LitStr vbNullString
  loc_AEA9E7: NeStr
  loc_AEA9E9: BranchF loc_AEAA11
  loc_AEA9EC: FLdPr Me
  loc_AEA9EF: MemLdStr global_88
  loc_AEA9F2: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AEA9F7: FLdPr Me
  loc_AEA9FA: VCallAd Control_ID_CodiInjuHastaMsk
  loc_AEA9FD: CVarAd
  loc_AEAA01: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AEAA06: FFree1Var var_98 = ""
  loc_AEAA09: LitI2_Byte &HFF
  loc_AEAA0B: IStI2 arg_C
  loc_AEAA0E: Branch loc_AEAA54
  loc_AEAA11: FLdPr Me
  loc_AEAA14: VCallAd Control_ID_CodiInjuHastaMsk
  loc_AEAA17: FStAdFunc var_88
  loc_AEAA1A: FLdPr var_88
  loc_AEAA1D: LateIdLdVar var_98 DispID_22 0
  loc_AEAA24: CStrVarTmp
  loc_AEAA25: FStStrNoPop var_9C
  loc_AEAA28: CI2Str
  loc_AEAA2A: ImpAdCallI2 Proc_270_93_A79E20()
  loc_AEAA2F: FStStrNoPop var_A0
  loc_AEAA32: FLdPr Me
  loc_AEAA35: VCallAd Control_ID_DetaInjuHastaLbl
  loc_AEAA38: FStAdFunc var_A4
  loc_AEAA3B: FLdPr var_A4
  loc_AEAA3E: Me.Caption = from_stack_1
  loc_AEAA43: FFreeStr var_9C = ""
  loc_AEAA4A: FFreeAd var_88 = ""
  loc_AEAA51: FFree1Var var_98 = ""
  loc_AEAA54: Branch loc_AEAA6E
  loc_AEAA57: LitStr "TODAS LAS INSTANCIAS"
  loc_AEAA5A: FLdPr Me
  loc_AEAA5D: VCallAd Control_ID_DetaInjuHastaLbl
  loc_AEAA60: FStAdFunc var_88
  loc_AEAA63: FLdPr var_88
  loc_AEAA66: Me.Caption = from_stack_1
  loc_AEAA6B: FFree1Ad var_88
  loc_AEAA6E: FLdPr Me
  loc_AEAA71: VCallAd Control_ID_CodiInjuHastaMsk
  loc_AEAA74: FStAdFunc var_88
  loc_AEAA77: FLdPr var_88
  loc_AEAA7A: LateIdLdVar var_98 DispID_22 0
  loc_AEAA81: CStrVarTmp
  loc_AEAA82: FStStrNoPop var_9C
  loc_AEAA85: FLdPr Me
  loc_AEAA88: VCallAd Control_ID_CodiInjuDesdeMsk
  loc_AEAA8B: FStAdFunc var_A4
  loc_AEAA8E: FLdPr var_A4
  loc_AEAA91: LateIdLdVar var_B4 DispID_22 0
  loc_AEAA98: CStrVarTmp
  loc_AEAA99: FStStrNoPop var_A0
  loc_AEAA9C: LtStr
  loc_AEAA9E: FFreeStr var_9C = ""
  loc_AEAAA5: FFreeAd var_88 = ""
  loc_AEAAAC: FFreeVar var_98 = ""
  loc_AEAAB3: BranchF loc_AEAAE2
  loc_AEAAB6: LitStr "El valor hasta no puede ser menor al valor desde. Verifique."
  loc_AEAAB9: FLdPr Me
  loc_AEAABC: MemStStrCopy
  loc_AEAAC0: FLdPr Me
  loc_AEAAC3: MemLdStr global_88
  loc_AEAAC6: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AEAACB: FLdPr Me
  loc_AEAACE: VCallAd Control_ID_CodiInjuHastaMsk
  loc_AEAAD1: CVarAd
  loc_AEAAD5: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AEAADA: FFree1Var var_98 = ""
  loc_AEAADD: LitI2_Byte &HFF
  loc_AEAADF: IStI2 arg_C
  loc_AEAAE2: ExitProcHresult
End Function

Private Sub cmdPrevia_Click() '9CFDD4
  'Data Table: 4F89CC
  loc_9CFDBC: ILdRf Me
  loc_9CFDBF: CastAd
  loc_9CFDC2: FStAdFunc var_88
  loc_9CFDC5: FLdRfVar var_88
  loc_9CFDC8: ImpAdCallFPR4 Proc_57_0_AB1718()
  loc_9CFDCD: FFree1Ad var_88
  loc_9CFDD0: ExitProcHresult
  loc_9CFDD1: FnLBound
End Sub

Private Sub CodiRecaDesdeMsk_UnknownEvent_0 '9BF8B8
  'Data Table: 4F89CC
  loc_9BF8A4: FLdPr Me
  loc_9BF8A7: VCallAd Control_ID_CodiRecaDesdeMsk
  loc_9BF8AA: CVarAd
  loc_9BF8AE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BF8B3: FFree1Var var_94 = ""
  loc_9BF8B6: ExitProcHresult
End Sub

Private Function CodiRecaDesdeMsk_UnknownEvent_8(arg_C) 'AC718C
  'Data Table: 4F89CC
  loc_AC7080: FLdPr Me
  loc_AC7083: VCallAd Control_ID_CodiRecaDesdeMsk
  loc_AC7086: FStAdFunc var_88
  loc_AC7089: FLdPr var_88
  loc_AC708C: LateIdLdVar var_98 DispID_13 -32767
  loc_AC7093: CBoolVar
  loc_AC7095: FFree1Ad var_88
  loc_AC7098: FFree1Var var_98 = ""
  loc_AC709B: BranchF loc_AC718A
  loc_AC709E: FLdPr Me
  loc_AC70A1: VCallAd Control_ID_CodiRecaDesdeMsk
  loc_AC70A4: FStAdFunc var_88
  loc_AC70A7: FLdPr var_88
  loc_AC70AA: LateIdLdVar var_98 DispID_22 0
  loc_AC70B1: CStrVarTmp
  loc_AC70B2: FStStrNoPop var_9C
  loc_AC70B5: CR8Str
  loc_AC70B7: LitI2_Byte 0
  loc_AC70B9: CR8I2
  loc_AC70BA: NeR8
  loc_AC70BB: FFree1Str var_9C
  loc_AC70BE: FFree1Ad var_88
  loc_AC70C1: FFree1Var var_98 = ""
  loc_AC70C4: BranchF loc_AC7173
  loc_AC70C7: FLdPr Me
  loc_AC70CA: VCallAd Control_ID_CodiRecaDesdeMsk
  loc_AC70CD: FStAdFunc var_88
  loc_AC70D0: FLdPr var_88
  loc_AC70D3: LateIdLdVar var_98 DispID_22 0
  loc_AC70DA: CStrVarTmp
  loc_AC70DB: FStStrNoPop var_9C
  loc_AC70DE: ImpAdCallI2 Proc_18_40_A5686C()
  loc_AC70E3: FStStrNoPop var_A0
  loc_AC70E6: FLdPr Me
  loc_AC70E9: MemStStrCopy
  loc_AC70ED: FFreeStr var_9C = ""
  loc_AC70F4: FFree1Ad var_88
  loc_AC70F7: FFree1Var var_98 = ""
  loc_AC70FA: FLdPr Me
  loc_AC70FD: MemLdStr global_88
  loc_AC7100: LitStr vbNullString
  loc_AC7103: NeStr
  loc_AC7105: BranchF loc_AC712D
  loc_AC7108: FLdPr Me
  loc_AC710B: MemLdStr global_88
  loc_AC710E: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AC7113: FLdPr Me
  loc_AC7116: VCallAd Control_ID_CodiRecaDesdeMsk
  loc_AC7119: CVarAd
  loc_AC711D: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AC7122: FFree1Var var_98 = ""
  loc_AC7125: LitI2_Byte &HFF
  loc_AC7127: IStI2 arg_C
  loc_AC712A: Branch loc_AC7170
  loc_AC712D: FLdPr Me
  loc_AC7130: VCallAd Control_ID_CodiRecaDesdeMsk
  loc_AC7133: FStAdFunc var_88
  loc_AC7136: FLdPr var_88
  loc_AC7139: LateIdLdVar var_98 DispID_22 0
  loc_AC7140: CStrVarTmp
  loc_AC7141: FStStrNoPop var_9C
  loc_AC7144: CUI1Str
  loc_AC7146: ImpAdCallI2 Proc_270_46_A7A9A0()
  loc_AC714B: FStStrNoPop var_A0
  loc_AC714E: FLdPr Me
  loc_AC7151: VCallAd Control_ID_DetaRecaDesdeLabel
  loc_AC7154: FStAdFunc var_A4
  loc_AC7157: FLdPr var_A4
  loc_AC715A: Me.Caption = from_stack_1
  loc_AC715F: FFreeStr var_9C = ""
  loc_AC7166: FFreeAd var_88 = ""
  loc_AC716D: FFree1Var var_98 = ""
  loc_AC7170: Branch loc_AC718A
  loc_AC7173: LitStr "TODAS LOS RECAUDADORES"
  loc_AC7176: FLdPr Me
  loc_AC7179: VCallAd Control_ID_DetaRecaDesdeLabel
  loc_AC717C: FStAdFunc var_88
  loc_AC717F: FLdPr var_88
  loc_AC7182: Me.Caption = from_stack_1
  loc_AC7187: FFree1Ad var_88
  loc_AC718A: ExitProcHresult
End Function

Private Sub CodiRecaHastaMsk_UnknownEvent_0 '9BF948
  'Data Table: 4F89CC
  loc_9BF934: FLdPr Me
  loc_9BF937: VCallAd Control_ID_CodiRecaHastaMsk
  loc_9BF93A: CVarAd
  loc_9BF93E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BF943: FFree1Var var_94 = ""
  loc_9BF946: ExitProcHresult
End Sub

Private Function CodiRecaHastaMsk_UnknownEvent_8(arg_C) 'AEB774
  'Data Table: 4F89CC
  loc_AEB5F0: FLdPr Me
  loc_AEB5F3: VCallAd Control_ID_CodiRecaHastaMsk
  loc_AEB5F6: FStAdFunc var_88
  loc_AEB5F9: FLdPr var_88
  loc_AEB5FC: LateIdLdVar var_98 DispID_13 -32767
  loc_AEB603: CBoolVar
  loc_AEB605: FFree1Ad var_88
  loc_AEB608: FFree1Var var_98 = ""
  loc_AEB60B: BranchF loc_AEB771
  loc_AEB60E: FLdPr Me
  loc_AEB611: VCallAd Control_ID_CodiRecaHastaMsk
  loc_AEB614: FStAdFunc var_88
  loc_AEB617: FLdPr var_88
  loc_AEB61A: LateIdLdVar var_98 DispID_22 0
  loc_AEB621: CStrVarTmp
  loc_AEB622: FStStrNoPop var_9C
  loc_AEB625: CR8Str
  loc_AEB627: LitI2_Byte 0
  loc_AEB629: CR8I2
  loc_AEB62A: NeR8
  loc_AEB62B: FFree1Str var_9C
  loc_AEB62E: FFree1Ad var_88
  loc_AEB631: FFree1Var var_98 = ""
  loc_AEB634: BranchF loc_AEB6E3
  loc_AEB637: FLdPr Me
  loc_AEB63A: VCallAd Control_ID_CodiRecaHastaMsk
  loc_AEB63D: FStAdFunc var_88
  loc_AEB640: FLdPr var_88
  loc_AEB643: LateIdLdVar var_98 DispID_22 0
  loc_AEB64A: CStrVarTmp
  loc_AEB64B: FStStrNoPop var_9C
  loc_AEB64E: ImpAdCallI2 Proc_18_40_A5686C()
  loc_AEB653: FStStrNoPop var_A0
  loc_AEB656: FLdPr Me
  loc_AEB659: MemStStrCopy
  loc_AEB65D: FFreeStr var_9C = ""
  loc_AEB664: FFree1Ad var_88
  loc_AEB667: FFree1Var var_98 = ""
  loc_AEB66A: FLdPr Me
  loc_AEB66D: MemLdStr global_88
  loc_AEB670: LitStr vbNullString
  loc_AEB673: NeStr
  loc_AEB675: BranchF loc_AEB69D
  loc_AEB678: FLdPr Me
  loc_AEB67B: MemLdStr global_88
  loc_AEB67E: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AEB683: FLdPr Me
  loc_AEB686: VCallAd Control_ID_CodiRecaHastaMsk
  loc_AEB689: CVarAd
  loc_AEB68D: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AEB692: FFree1Var var_98 = ""
  loc_AEB695: LitI2_Byte &HFF
  loc_AEB697: IStI2 arg_C
  loc_AEB69A: Branch loc_AEB6E0
  loc_AEB69D: FLdPr Me
  loc_AEB6A0: VCallAd Control_ID_CodiRecaHastaMsk
  loc_AEB6A3: FStAdFunc var_88
  loc_AEB6A6: FLdPr var_88
  loc_AEB6A9: LateIdLdVar var_98 DispID_22 0
  loc_AEB6B0: CStrVarTmp
  loc_AEB6B1: FStStrNoPop var_9C
  loc_AEB6B4: CUI1Str
  loc_AEB6B6: ImpAdCallI2 Proc_270_46_A7A9A0()
  loc_AEB6BB: FStStrNoPop var_A0
  loc_AEB6BE: FLdPr Me
  loc_AEB6C1: VCallAd Control_ID_DetaRecaHastaLabel
  loc_AEB6C4: FStAdFunc var_A4
  loc_AEB6C7: FLdPr var_A4
  loc_AEB6CA: Me.Caption = from_stack_1
  loc_AEB6CF: FFreeStr var_9C = ""
  loc_AEB6D6: FFreeAd var_88 = ""
  loc_AEB6DD: FFree1Var var_98 = ""
  loc_AEB6E0: Branch loc_AEB6FA
  loc_AEB6E3: LitStr "TODAS LOS RECAUDADORES"
  loc_AEB6E6: FLdPr Me
  loc_AEB6E9: VCallAd Control_ID_DetaRecaHastaLabel
  loc_AEB6EC: FStAdFunc var_88
  loc_AEB6EF: FLdPr var_88
  loc_AEB6F2: Me.Caption = from_stack_1
  loc_AEB6F7: FFree1Ad var_88
  loc_AEB6FA: FLdPr Me
  loc_AEB6FD: VCallAd Control_ID_CodiRecaHastaMsk
  loc_AEB700: FStAdFunc var_88
  loc_AEB703: FLdPr var_88
  loc_AEB706: LateIdLdVar var_98 DispID_22 0
  loc_AEB70D: CStrVarTmp
  loc_AEB70E: FStStrNoPop var_9C
  loc_AEB711: CI2Str
  loc_AEB713: FLdPr Me
  loc_AEB716: VCallAd Control_ID_CodiRecaDesdeMsk
  loc_AEB719: FStAdFunc var_A4
  loc_AEB71C: FLdPr var_A4
  loc_AEB71F: LateIdLdVar var_B4 DispID_22 0
  loc_AEB726: CStrVarTmp
  loc_AEB727: FStStrNoPop var_A0
  loc_AEB72A: CI2Str
  loc_AEB72C: LtI2
  loc_AEB72D: FFreeStr var_9C = ""
  loc_AEB734: FFreeAd var_88 = ""
  loc_AEB73B: FFreeVar var_98 = ""
  loc_AEB742: BranchF loc_AEB771
  loc_AEB745: LitStr "El valor hasta no puede ser menor al valor desde. Verifique."
  loc_AEB748: FLdPr Me
  loc_AEB74B: MemStStrCopy
  loc_AEB74F: FLdPr Me
  loc_AEB752: MemLdStr global_88
  loc_AEB755: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AEB75A: FLdPr Me
  loc_AEB75D: VCallAd Control_ID_CodiRecaHastaMsk
  loc_AEB760: CVarAd
  loc_AEB764: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AEB769: FFree1Var var_98 = ""
  loc_AEB76C: LitI2_Byte &HFF
  loc_AEB76E: IStI2 arg_C
  loc_AEB771: ExitProcHresult
End Function

Private Sub cmdPredeterminada_Click() '9C9768
  'Data Table: 4F89CC
  loc_9C9750: LitI2_Byte 0
  loc_9C9752: ILdRf Me
  loc_9C9755: CastAd
  loc_9C9758: FStAdFunc var_88
  loc_9C975B: FLdRfVar var_88
  loc_9C975E: ImpAdCallFPR4 Proc_57_1_AA9124(, )
  loc_9C9763: FFree1Ad var_88
  loc_9C9766: ExitProcHresult
End Sub

Private Sub CodiOficMsk_UnknownEvent_0 '9BF750
  'Data Table: 4F89CC
  loc_9BF73C: FLdPr Me
  loc_9BF73F: VCallAd Control_ID_CodiOficMsk
  loc_9BF742: CVarAd
  loc_9BF746: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BF74B: FFree1Var var_94 = ""
  loc_9BF74E: ExitProcHresult
End Sub

Private Function CodiOficMsk_UnknownEvent_8(arg_C) 'AC6EEC
  'Data Table: 4F89CC
  loc_AC6DE0: FLdPr Me
  loc_AC6DE3: VCallAd Control_ID_CodiOficMsk
  loc_AC6DE6: FStAdFunc var_88
  loc_AC6DE9: FLdPr var_88
  loc_AC6DEC: LateIdLdVar var_98 DispID_13 -32767
  loc_AC6DF3: CBoolVar
  loc_AC6DF5: FFree1Ad var_88
  loc_AC6DF8: FFree1Var var_98 = ""
  loc_AC6DFB: BranchF loc_AC6EEA
  loc_AC6DFE: FLdPr Me
  loc_AC6E01: VCallAd Control_ID_CodiOficMsk
  loc_AC6E04: FStAdFunc var_88
  loc_AC6E07: FLdPr var_88
  loc_AC6E0A: LateIdLdVar var_98 DispID_0 0
  loc_AC6E11: CStrVarTmp
  loc_AC6E12: FStStrNoPop var_9C
  loc_AC6E15: CR8Str
  loc_AC6E17: LitI2_Byte 0
  loc_AC6E19: CR8I2
  loc_AC6E1A: NeR8
  loc_AC6E1B: FFree1Str var_9C
  loc_AC6E1E: FFree1Ad var_88
  loc_AC6E21: FFree1Var var_98 = ""
  loc_AC6E24: BranchF loc_AC6ED3
  loc_AC6E27: FLdPr Me
  loc_AC6E2A: VCallAd Control_ID_CodiOficMsk
  loc_AC6E2D: FStAdFunc var_88
  loc_AC6E30: FLdPr var_88
  loc_AC6E33: LateIdLdVar var_98 DispID_22 0
  loc_AC6E3A: CStrVarTmp
  loc_AC6E3B: FStStrNoPop var_9C
  loc_AC6E3E: ImpAdCallI2 Proc_18_24_A57368()
  loc_AC6E43: FStStrNoPop var_A0
  loc_AC6E46: FLdPr Me
  loc_AC6E49: MemStStrCopy
  loc_AC6E4D: FFreeStr var_9C = ""
  loc_AC6E54: FFree1Ad var_88
  loc_AC6E57: FFree1Var var_98 = ""
  loc_AC6E5A: FLdPr Me
  loc_AC6E5D: MemLdStr global_88
  loc_AC6E60: LitStr vbNullString
  loc_AC6E63: NeStr
  loc_AC6E65: BranchF loc_AC6E8D
  loc_AC6E68: FLdPr Me
  loc_AC6E6B: MemLdStr global_88
  loc_AC6E6E: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AC6E73: FLdPr Me
  loc_AC6E76: VCallAd Control_ID_CodiOficMsk
  loc_AC6E79: CVarAd
  loc_AC6E7D: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AC6E82: FFree1Var var_98 = ""
  loc_AC6E85: LitI2_Byte &HFF
  loc_AC6E87: IStI2 arg_C
  loc_AC6E8A: Branch loc_AC6ED0
  loc_AC6E8D: FLdPr Me
  loc_AC6E90: VCallAd Control_ID_CodiOficMsk
  loc_AC6E93: FStAdFunc var_88
  loc_AC6E96: FLdPr var_88
  loc_AC6E99: LateIdLdVar var_98 DispID_22 0
  loc_AC6EA0: CStrVarTmp
  loc_AC6EA1: FStStrNoPop var_9C
  loc_AC6EA4: CI2Str
  loc_AC6EA6: ImpAdCallI2 Proc_270_20_A7A6C0()
  loc_AC6EAB: FStStrNoPop var_A0
  loc_AC6EAE: FLdPr Me
  loc_AC6EB1: VCallAd Control_ID_DetaOficLbl
  loc_AC6EB4: FStAdFunc var_A4
  loc_AC6EB7: FLdPr var_A4
  loc_AC6EBA: Me.Caption = from_stack_1
  loc_AC6EBF: FFreeStr var_9C = ""
  loc_AC6EC6: FFreeAd var_88 = ""
  loc_AC6ECD: FFree1Var var_98 = ""
  loc_AC6ED0: Branch loc_AC6EEA
  loc_AC6ED3: LitStr "TODAS LAS OFICINAS"
  loc_AC6ED6: FLdPr Me
  loc_AC6ED9: VCallAd Control_ID_DetaOficLbl
  loc_AC6EDC: FStAdFunc var_88
  loc_AC6EDF: FLdPr var_88
  loc_AC6EE2: Me.Caption = from_stack_1
  loc_AC6EE7: FFree1Ad var_88
  loc_AC6EEA: ExitProcHresult
End Function

Private Sub cmdSalir_Click() 'A015C8
  'Data Table: 4F89CC
  loc_A01598: LitVarStr var_94, "Cerrando..."
  loc_A0159D: PopAdLdVar
  loc_A0159E: FLdPr Me
  loc_A015A1: VCallAd Control_ID_statusBar
  loc_A015A4: FStAdFunc var_A8
  loc_A015A7: FLdPr var_A8
  loc_A015AA: LateIdSt
  loc_A015AF: FFree1Ad var_A8
  loc_A015B2: ILdRf Me
  loc_A015B5: FStAdNoPop
  loc_A015B9: ImpAdLdRf MemVar_D9C5D8
  loc_A015BC: NewIfNullPr Global
  loc_A015BF: Global.Unload from_stack_1
  loc_A015C4: FFree1Ad var_A8
  loc_A015C7: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '9DEBBC
  'Data Table: 4F89CC
  loc_9DEBA0: LitI2_Byte 0
  loc_9DEBA2: PopTmpLdAd2 var_8A
  loc_9DEBA5: ILdRf Me
  loc_9DEBA8: CastAd
  loc_9DEBAB: FStAdFunc var_88
  loc_9DEBAE: FLdRfVar var_88
  loc_9DEBB1: ImpAdCallFPR4 Proc_57_2_B14778(, )
  loc_9DEBB6: FFree1Ad var_88
  loc_9DEBB9: ExitProcHresult
  loc_9DEBBA: LitStr "@ð"
End Sub

Private Sub cmdNueva_Click() 'AF6884
  'Data Table: 4F89CC
  loc_AF66B4: LitI2_Byte 0
  loc_AF66B6: FLdPr Me
  loc_AF66B9: MemStI2 bGenerado
  loc_AF66BC: LitI2_Byte &HFF
  loc_AF66BE: FLdPr Me
  loc_AF66C1: MemStI2 bLogos
  loc_AF66C4: LitI2_Byte 0
  loc_AF66C6: ILdRf Me
  loc_AF66C9: CastAd
  loc_AF66CC: FStAdFunc var_88
  loc_AF66CF: FLdRfVar var_88
  loc_AF66D2: ImpAdCallFPR4 Proc_272_46_B065FC(, )
  loc_AF66D7: FFree1Ad var_88
  loc_AF66DA: LitI2_Byte &HFF
  loc_AF66DC: FLdPr Me
  loc_AF66DF: VCallAd Control_ID_ActivasOpt
  loc_AF66E2: FStAdFunc var_88
  loc_AF66E5: FLdPr var_88
  loc_AF66E8: Me.Value = from_stack_1b
  loc_AF66ED: FFree1Ad var_88
  loc_AF66F0: LitI2_Byte 0
  loc_AF66F2: FLdPr Me
  loc_AF66F5: VCallAd Control_ID_PagadaOpt
  loc_AF66F8: FStAdFunc var_88
  loc_AF66FB: FLdPr var_88
  loc_AF66FE: Me.Value = from_stack_1b
  loc_AF6703: FFree1Ad var_88
  loc_AF6706: LitI2_Byte 0
  loc_AF6708: FLdPr Me
  loc_AF670B: VCallAd Control_ID_CanceladasOpt
  loc_AF670E: FStAdFunc var_88
  loc_AF6711: FLdPr var_88
  loc_AF6714: Me.Value = from_stack_1b
  loc_AF6719: FFree1Ad var_88
  loc_AF671C: LitI2_Byte 0
  loc_AF671E: FLdPr Me
  loc_AF6721: VCallAd Control_ID_SuspendidasOpt
  loc_AF6724: FStAdFunc var_88
  loc_AF6727: FLdPr var_88
  loc_AF672A: Me.Value = from_stack_1b
  loc_AF672F: FFree1Ad var_88
  loc_AF6732: LitI2_Byte 0
  loc_AF6734: CStrUI1
  loc_AF6736: CVarStr var_98
  loc_AF6739: PopAdLdVar
  loc_AF673A: FLdPr Me
  loc_AF673D: VCallAd Control_ID_CodiInjuDesdeMsk
  loc_AF6740: FStAdFunc var_88
  loc_AF6743: FLdPr var_88
  loc_AF6746: LateIdSt
  loc_AF674B: FFree1Ad var_88
  loc_AF674E: FFree1Var var_98 = ""
  loc_AF6751: LitStr vbNullString
  loc_AF6754: FLdPr Me
  loc_AF6757: VCallAd Control_ID_DetaInjuDesdeLbl
  loc_AF675A: FStAdFunc var_88
  loc_AF675D: FLdPr var_88
  loc_AF6760: Me.Caption = from_stack_1
  loc_AF6765: FFree1Ad var_88
  loc_AF6768: LitI2_Byte 0
  loc_AF676A: CStrUI1
  loc_AF676C: CVarStr var_98
  loc_AF676F: PopAdLdVar
  loc_AF6770: FLdPr Me
  loc_AF6773: VCallAd Control_ID_CodiInjuHastaMsk
  loc_AF6776: FStAdFunc var_88
  loc_AF6779: FLdPr var_88
  loc_AF677C: LateIdSt
  loc_AF6781: FFree1Ad var_88
  loc_AF6784: FFree1Var var_98 = ""
  loc_AF6787: LitStr vbNullString
  loc_AF678A: FLdPr Me
  loc_AF678D: VCallAd Control_ID_DetaInjuHastaLbl
  loc_AF6790: FStAdFunc var_88
  loc_AF6793: FLdPr var_88
  loc_AF6796: Me.Caption = from_stack_1
  loc_AF679B: FFree1Ad var_88
  loc_AF679E: LitI2_Byte 0
  loc_AF67A0: CStrUI1
  loc_AF67A2: CVarStr var_98
  loc_AF67A5: PopAdLdVar
  loc_AF67A6: FLdPr Me
  loc_AF67A9: VCallAd Control_ID_CodiRecaDesdeMsk
  loc_AF67AC: FStAdFunc var_88
  loc_AF67AF: FLdPr var_88
  loc_AF67B2: LateIdSt
  loc_AF67B7: FFree1Ad var_88
  loc_AF67BA: FFree1Var var_98 = ""
  loc_AF67BD: LitStr vbNullString
  loc_AF67C0: FLdPr Me
  loc_AF67C3: VCallAd Control_ID_DetaRecaDesdeLabel
  loc_AF67C6: FStAdFunc var_88
  loc_AF67C9: FLdPr var_88
  loc_AF67CC: Me.Caption = from_stack_1
  loc_AF67D1: FFree1Ad var_88
  loc_AF67D4: LitVarStr var_A8, "0"
  loc_AF67D9: PopAdLdVar
  loc_AF67DA: FLdPr Me
  loc_AF67DD: VCallAd Control_ID_CodiRecaHastaMsk
  loc_AF67E0: FStAdFunc var_88
  loc_AF67E3: FLdPr var_88
  loc_AF67E6: LateIdSt
  loc_AF67EB: FFree1Ad var_88
  loc_AF67EE: LitStr vbNullString
  loc_AF67F1: FLdPr Me
  loc_AF67F4: VCallAd Control_ID_DetaRecaHastaLabel
  loc_AF67F7: FStAdFunc var_88
  loc_AF67FA: FLdPr var_88
  loc_AF67FD: Me.Caption = from_stack_1
  loc_AF6802: FFree1Ad var_88
  loc_AF6805: LitI2_Byte 0
  loc_AF6807: CStrUI1
  loc_AF6809: CVarStr var_98
  loc_AF680C: PopAdLdVar
  loc_AF680D: FLdPr Me
  loc_AF6810: VCallAd Control_ID_CodiOficMsk
  loc_AF6813: FStAdFunc var_88
  loc_AF6816: FLdPr var_88
  loc_AF6819: LateIdSt
  loc_AF681E: FFree1Ad var_88
  loc_AF6821: FFree1Var var_98 = ""
  loc_AF6824: LitStr vbNullString
  loc_AF6827: FLdPr Me
  loc_AF682A: VCallAd Control_ID_DetaOficLbl
  loc_AF682D: FStAdFunc var_88
  loc_AF6830: FLdPr var_88
  loc_AF6833: Me.Caption = from_stack_1
  loc_AF6838: FFree1Ad var_88
  loc_AF683B: LitI2_Byte &HFF
  loc_AF683D: FLdPr Me
  loc_AF6840: VCallAd Control_ID_NumeApreOpt
  loc_AF6843: FStAdFunc var_88
  loc_AF6846: FLdPr var_88
  loc_AF6849: Me.Value = from_stack_1b
  loc_AF684E: FFree1Ad var_88
  loc_AF6851: LitI2_Byte 0
  loc_AF6853: FLdPr Me
  loc_AF6856: VCallAd Control_ID_AutoApreOpt
  loc_AF6859: FStAdFunc var_88
  loc_AF685C: FLdPr var_88
  loc_AF685F: Me.Value = from_stack_1b
  loc_AF6864: FFree1Ad var_88
  loc_AF6867: Call HabilitarCriterio()
  loc_AF686C: ILdRf Me
  loc_AF686F: CastAd
  loc_AF6872: FStAdFunc var_88
  loc_AF6875: FLdRfVar var_88
  loc_AF6878: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_AF687D: FFree1Ad var_88
  loc_AF6880: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) 'A204D0
  'Data Table: 4F89CC
  loc_A20498: FLdPr Me
  loc_A2049B: VCallAd Control_ID_statusBar
  loc_A2049E: FStAdFunc var_88
  loc_A204A1: FLdPr var_88
  loc_A204A4: LateIdLdVar var_98 DispID_1 0
  loc_A204AB: CStrVarTmp
  loc_A204AC: CVarStr var_A8
  loc_A204AF: PopAdLdVar
  loc_A204B0: FLdPr Me
  loc_A204B3: VCallAd Control_ID_statusBar
  loc_A204B6: FStAdFunc var_BC
  loc_A204B9: FLdPr var_BC
  loc_A204BC: LateIdSt
  loc_A204C1: FFreeAd var_88 = ""
  loc_A204C8: FFreeVar var_98 = ""
  loc_A204CF: ExitProcHresult
End Sub

Private Sub Form_Load() '9DED9C
  'Data Table: 4F89CC
  loc_9DED80: ILdRf Me
  loc_9DED83: CastAd
  loc_9DED86: FStAdFunc var_88
  loc_9DED89: FLdRfVar var_88
  loc_9DED8C: ImpAdCallFPR4 Proc_272_43_A93498()
  loc_9DED91: FFree1Ad var_88
  loc_9DED94: Call cmdNueva_Click()
  loc_9DED99: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9D0410
  'Data Table: 4F89CC
  loc_9D03F8: FLdPr Me
  loc_9D03FB: VCallAd Control_ID_wbbReporte
  loc_9D03FE: FStAdFunc var_88
  loc_9D0401: FLdRfVar var_88
  loc_9D0404: ImpAdCallFPR4  = Proc_57_52_A24864()
  loc_9D0409: FFree1Ad var_88
  loc_9D040C: ExitProcHresult
End Sub

Private Sub cmdXLS_Click() '9DEE3C
  'Data Table: 4F89CC
  loc_9DEE20: LitI2_Byte &HFF
  loc_9DEE22: LitI2_Byte 0
  loc_9DEE24: ILdRf Me
  loc_9DEE27: CastAd
  loc_9DEE2A: FStAdFunc var_88
  loc_9DEE2D: FLdRfVar var_88
  loc_9DEE30: ImpAdCallFPR4 Proc_57_4_AFAAC0(, , )
  loc_9DEE35: FFree1Ad var_88
  loc_9DEE38: ExitProcHresult
  loc_9DEE39: FStStrNoPop var_A8
End Sub

Public Function bLogosGet() '4FA1CC
  bLogosGet = bLogos
End Function

Public Sub bLogosPut(Value) '4FA1DB
  bLogos = Value
End Sub

Public Function bGeneradoGet() '4FA1EA
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '4FA1F9
  bGenerado = Value
End Sub

Public Sub GeneraXLS() '9BF5A4
  'Data Table: 4F89CC
  loc_9BF58C: LitI2_Byte 0
  loc_9BF58E: FLdPr Me
  loc_9BF591: MemStI2 bLogos
  loc_9BF594: Call GeneraHTML()
  loc_9BF599: LitI2_Byte &HFF
  loc_9BF59B: FLdPr Me
  loc_9BF59E: MemStI2 bLogos
  loc_9BF5A1: ExitProcHresult
  loc_9BF5A2: FLdRfVar arg_5400
End Sub

Public Sub HabilitarCriterio() 'AE54FC
  'Data Table: 4F89CC
  loc_AE53C8: LitI4 0
  loc_AE53CD: LitI4 &H10
  loc_AE53D2: FLdRfVar var_88
  loc_AE53D5: Redim
  loc_AE53DF: FLdPr Me
  loc_AE53E2: VCallAd Control_ID_ActivasOpt
  loc_AE53E5: CVarAd
  loc_AE53E9: ParmAry1St
  loc_AE53EF: FLdPr Me
  loc_AE53F2: VCallAd Control_ID_PagadaOpt
  loc_AE53F5: CVarAd
  loc_AE53F9: ParmAry1St
  loc_AE53FF: FLdPr Me
  loc_AE5402: VCallAd Control_ID_SuspendidasOpt
  loc_AE5405: CVarAd
  loc_AE5409: ParmAry1St
  loc_AE540F: FLdPr Me
  loc_AE5412: VCallAd Control_ID_CanceladasOpt
  loc_AE5415: CVarAd
  loc_AE5419: ParmAry1St
  loc_AE541F: FLdPr Me
  loc_AE5422: VCallAd Control_ID_CodiInjuDesdeMsk
  loc_AE5425: CVarAd
  loc_AE5429: ParmAry1St
  loc_AE542F: FLdPr Me
  loc_AE5432: VCallAd Control_ID_CodiInjuHastaMsk
  loc_AE5435: CVarAd
  loc_AE5439: ParmAry1St
  loc_AE543F: FLdPr Me
  loc_AE5442: VCallAd Control_ID_CodiRecaDesdeMsk
  loc_AE5445: CVarAd
  loc_AE5449: ParmAry1St
  loc_AE544F: FLdPr Me
  loc_AE5452: VCallAd Control_ID_DetaRecaDesdeLabel
  loc_AE5455: CVarAd
  loc_AE5459: ParmAry1St
  loc_AE545F: FLdPr Me
  loc_AE5462: VCallAd Control_ID_CodiRecaHastaMsk
  loc_AE5465: CVarAd
  loc_AE5469: ParmAry1St
  loc_AE546F: FLdPr Me
  loc_AE5472: VCallAd Control_ID_DetaRecaHastaLabel
  loc_AE5475: CVarAd
  loc_AE5479: ParmAry1St
  loc_AE547F: FLdPr Me
  loc_AE5482: VCallAd Control_ID_CodiOficMsk
  loc_AE5485: CVarAd
  loc_AE5489: ParmAry1St
  loc_AE548F: FLdPr Me
  loc_AE5492: VCallAd Control_ID_DetaOficLbl
  loc_AE5495: CVarAd
  loc_AE5499: ParmAry1St
  loc_AE549F: FLdPr Me
  loc_AE54A2: VCallAd Control_ID_AutoApreOpt
  loc_AE54A5: CVarAd
  loc_AE54A9: ParmAry1St
  loc_AE54AF: FLdPr Me
  loc_AE54B2: VCallAd Control_ID_NumeApreOpt
  loc_AE54B5: CVarAd
  loc_AE54B9: ParmAry1St
  loc_AE54BF: FLdPr Me
  loc_AE54C2: VCallAd Control_ID_RecaudadorOpt
  loc_AE54C5: CVarAd
  loc_AE54C9: ParmAry1St
  loc_AE54CF: FLdPr Me
  loc_AE54D2: VCallAd Control_ID_FechaBoletaOpt
  loc_AE54D5: CVarAd
  loc_AE54D9: ParmAry1St
  loc_AE54DF: FLdPr Me
  loc_AE54E2: VCallAd Control_ID_ImporteOpt
  loc_AE54E5: CVarAd
  loc_AE54E9: ParmAry1St
  loc_AE54EF: FLdRfVar var_88
  loc_AE54F2: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_AE54F7: FLdRfVar var_88
  loc_AE54FA: Erase
  loc_AE54FB: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'BD53CC
  'Data Table: 4F89CC
  loc_BD4C98: FLdPr Me
  loc_BD4C9B: MemLdI2 bGenerado
  loc_BD4C9E: BranchF loc_BD4CA2
  loc_BD4CA1: ExitProcHresult
  loc_BD4CA2: LitVarStr var_9C, "Generando reporte..."
  loc_BD4CA7: PopAdLdVar
  loc_BD4CA8: FLdPr Me
  loc_BD4CAB: VCallAd Control_ID_statusBar
  loc_BD4CAE: FStAdFunc var_B0
  loc_BD4CB1: FLdPr var_B0
  loc_BD4CB4: LateIdSt
  loc_BD4CB9: FFree1Ad var_B0
  loc_BD4CBC: LitI4 &HB
  loc_BD4CC1: CI2I4
  loc_BD4CC2: FLdPr Me
  loc_BD4CC5: Me.MousePointer = from_stack_1
  loc_BD4CCA: LitI2_Byte 0
  loc_BD4CCC: PopTmpLdAd2 var_B2
  loc_BD4CCF: from_stack_2v = CodiOficMsk_UnknownEvent_8(from_stack_1v)
  loc_BD4CD4: FLdPr Me
  loc_BD4CD7: MemLdStr global_88
  loc_BD4CDA: LitStr vbNullString
  loc_BD4CDD: NeStr
  loc_BD4CDF: BranchF loc_BD4CE5
  loc_BD4CE2: Branch loc_BD53A2
  loc_BD4CE5: LitStr vbNullString
  loc_BD4CE8: FStStrCopy var_88
  loc_BD4CEB: FLdRfVar var_B2
  loc_BD4CEE: FLdPr Me
  loc_BD4CF1: VCallAd Control_ID_ActivasOpt
  loc_BD4CF4: FStAdFunc var_B0
  loc_BD4CF7: FLdPr var_B0
  loc_BD4CFA:  = Me.Value
  loc_BD4CFF: FLdI2 var_B2
  loc_BD4D02: LitI2_Byte &HFF
  loc_BD4D04: EqI2
  loc_BD4D05: FFree1Ad var_B0
  loc_BD4D08: BranchF loc_BD4D11
  loc_BD4D0B: LitStr " WHERE EstaApre = 'Activo'"
  loc_BD4D0E: FStStrCopy var_88
  loc_BD4D11: FLdRfVar var_B2
  loc_BD4D14: FLdPr Me
  loc_BD4D17: VCallAd Control_ID_PagadaOpt
  loc_BD4D1A: FStAdFunc var_B0
  loc_BD4D1D: FLdPr var_B0
  loc_BD4D20:  = Me.Value
  loc_BD4D25: FLdI2 var_B2
  loc_BD4D28: LitI2_Byte &HFF
  loc_BD4D2A: EqI2
  loc_BD4D2B: FFree1Ad var_B0
  loc_BD4D2E: BranchF loc_BD4D37
  loc_BD4D31: LitStr " WHERE EstaApre = 'Pagado y Actualizado'"
  loc_BD4D34: FStStrCopy var_88
  loc_BD4D37: FLdRfVar var_B2
  loc_BD4D3A: FLdPr Me
  loc_BD4D3D: VCallAd Control_ID_SuspendidasOpt
  loc_BD4D40: FStAdFunc var_B0
  loc_BD4D43: FLdPr var_B0
  loc_BD4D46:  = Me.Value
  loc_BD4D4B: FLdI2 var_B2
  loc_BD4D4E: LitI2_Byte &HFF
  loc_BD4D50: EqI2
  loc_BD4D51: FFree1Ad var_B0
  loc_BD4D54: BranchF loc_BD4D5D
  loc_BD4D57: LitStr " WHERE EstaApre = 'Suspendido'"
  loc_BD4D5A: FStStrCopy var_88
  loc_BD4D5D: FLdRfVar var_B2
  loc_BD4D60: FLdPr Me
  loc_BD4D63: VCallAd Control_ID_CanceladasOpt
  loc_BD4D66: FStAdFunc var_B0
  loc_BD4D69: FLdPr var_B0
  loc_BD4D6C:  = Me.Value
  loc_BD4D71: FLdI2 var_B2
  loc_BD4D74: LitI2_Byte &HFF
  loc_BD4D76: EqI2
  loc_BD4D77: FFree1Ad var_B0
  loc_BD4D7A: BranchF loc_BD4D83
  loc_BD4D7D: LitStr " WHERE CancApre = 1"
  loc_BD4D80: FStStrCopy var_88
  loc_BD4D83: FLdPr Me
  loc_BD4D86: VCallAd Control_ID_CodiInjuDesdeMsk
  loc_BD4D89: FStAdFunc var_B0
  loc_BD4D8C: FLdPr var_B0
  loc_BD4D8F: LateIdLdVar var_C4 DispID_22 0
  loc_BD4D96: CStrVarTmp
  loc_BD4D97: FStStrNoPop var_C8
  loc_BD4D9A: CR8Str
  loc_BD4D9C: LitI2_Byte 0
  loc_BD4D9E: CR8I2
  loc_BD4D9F: NeR8
  loc_BD4DA0: FFree1Str var_C8
  loc_BD4DA3: FFree1Ad var_B0
  loc_BD4DA6: FFree1Var var_C4 = ""
  loc_BD4DA9: BranchF loc_BD4DDE
  loc_BD4DAC: ILdRf var_88
  loc_BD4DAF: LitStr " AND apremio.CodiInju >= "
  loc_BD4DB2: ConcatStr
  loc_BD4DB3: FStStrNoPop var_C8
  loc_BD4DB6: FLdPr Me
  loc_BD4DB9: VCallAd Control_ID_CodiInjuDesdeMsk
  loc_BD4DBC: FStAdFunc var_B0
  loc_BD4DBF: FLdPr var_B0
  loc_BD4DC2: LateIdLdVar var_C4 DispID_22 0
  loc_BD4DC9: CStrVarTmp
  loc_BD4DCA: FStStrNoPop var_CC
  loc_BD4DCD: ConcatStr
  loc_BD4DCE: FStStr var_88
  loc_BD4DD1: FFreeStr var_C8 = ""
  loc_BD4DD8: FFree1Ad var_B0
  loc_BD4DDB: FFree1Var var_C4 = ""
  loc_BD4DDE: FLdPr Me
  loc_BD4DE1: VCallAd Control_ID_CodiInjuHastaMsk
  loc_BD4DE4: FStAdFunc var_B0
  loc_BD4DE7: FLdPr var_B0
  loc_BD4DEA: LateIdLdVar var_C4 DispID_22 0
  loc_BD4DF1: CStrVarTmp
  loc_BD4DF2: FStStrNoPop var_C8
  loc_BD4DF5: CR8Str
  loc_BD4DF7: LitI2_Byte 0
  loc_BD4DF9: CR8I2
  loc_BD4DFA: NeR8
  loc_BD4DFB: FFree1Str var_C8
  loc_BD4DFE: FFree1Ad var_B0
  loc_BD4E01: FFree1Var var_C4 = ""
  loc_BD4E04: BranchF loc_BD4E39
  loc_BD4E07: ILdRf var_88
  loc_BD4E0A: LitStr " AND apremio.CodiInju <= "
  loc_BD4E0D: ConcatStr
  loc_BD4E0E: FStStrNoPop var_C8
  loc_BD4E11: FLdPr Me
  loc_BD4E14: VCallAd Control_ID_CodiInjuHastaMsk
  loc_BD4E17: FStAdFunc var_B0
  loc_BD4E1A: FLdPr var_B0
  loc_BD4E1D: LateIdLdVar var_C4 DispID_22 0
  loc_BD4E24: CStrVarTmp
  loc_BD4E25: FStStrNoPop var_CC
  loc_BD4E28: ConcatStr
  loc_BD4E29: FStStr var_88
  loc_BD4E2C: FFreeStr var_C8 = ""
  loc_BD4E33: FFree1Ad var_B0
  loc_BD4E36: FFree1Var var_C4 = ""
  loc_BD4E39: FLdPr Me
  loc_BD4E3C: VCallAd Control_ID_CodiRecaDesdeMsk
  loc_BD4E3F: FStAdFunc var_B0
  loc_BD4E42: FLdPr var_B0
  loc_BD4E45: LateIdLdVar var_C4 DispID_22 0
  loc_BD4E4C: CStrVarTmp
  loc_BD4E4D: FStStrNoPop var_C8
  loc_BD4E50: CR8Str
  loc_BD4E52: LitI2_Byte 0
  loc_BD4E54: CR8I2
  loc_BD4E55: NeR8
  loc_BD4E56: FFree1Str var_C8
  loc_BD4E59: FFree1Ad var_B0
  loc_BD4E5C: FFree1Var var_C4 = ""
  loc_BD4E5F: BranchF loc_BD4E94
  loc_BD4E62: ILdRf var_88
  loc_BD4E65: LitStr " AND apremio.Codireca >= "
  loc_BD4E68: ConcatStr
  loc_BD4E69: FStStrNoPop var_C8
  loc_BD4E6C: FLdPr Me
  loc_BD4E6F: VCallAd Control_ID_CodiRecaDesdeMsk
  loc_BD4E72: FStAdFunc var_B0
  loc_BD4E75: FLdPr var_B0
  loc_BD4E78: LateIdLdVar var_C4 DispID_22 0
  loc_BD4E7F: CStrVarTmp
  loc_BD4E80: FStStrNoPop var_CC
  loc_BD4E83: ConcatStr
  loc_BD4E84: FStStr var_88
  loc_BD4E87: FFreeStr var_C8 = ""
  loc_BD4E8E: FFree1Ad var_B0
  loc_BD4E91: FFree1Var var_C4 = ""
  loc_BD4E94: FLdPr Me
  loc_BD4E97: VCallAd Control_ID_CodiRecaHastaMsk
  loc_BD4E9A: FStAdFunc var_B0
  loc_BD4E9D: FLdPr var_B0
  loc_BD4EA0: LateIdLdVar var_C4 DispID_22 0
  loc_BD4EA7: CStrVarTmp
  loc_BD4EA8: FStStrNoPop var_C8
  loc_BD4EAB: CR8Str
  loc_BD4EAD: LitI2_Byte 0
  loc_BD4EAF: CR8I2
  loc_BD4EB0: NeR8
  loc_BD4EB1: FFree1Str var_C8
  loc_BD4EB4: FFree1Ad var_B0
  loc_BD4EB7: FFree1Var var_C4 = ""
  loc_BD4EBA: BranchF loc_BD4EEF
  loc_BD4EBD: ILdRf var_88
  loc_BD4EC0: LitStr " AND apremio.CodiReca <= "
  loc_BD4EC3: ConcatStr
  loc_BD4EC4: FStStrNoPop var_C8
  loc_BD4EC7: FLdPr Me
  loc_BD4ECA: VCallAd Control_ID_CodiRecaHastaMsk
  loc_BD4ECD: FStAdFunc var_B0
  loc_BD4ED0: FLdPr var_B0
  loc_BD4ED3: LateIdLdVar var_C4 DispID_22 0
  loc_BD4EDA: CStrVarTmp
  loc_BD4EDB: FStStrNoPop var_CC
  loc_BD4EDE: ConcatStr
  loc_BD4EDF: FStStr var_88
  loc_BD4EE2: FFreeStr var_C8 = ""
  loc_BD4EE9: FFree1Ad var_B0
  loc_BD4EEC: FFree1Var var_C4 = ""
  loc_BD4EEF: FLdPr Me
  loc_BD4EF2: VCallAd Control_ID_CodiOficMsk
  loc_BD4EF5: FStAdFunc var_B0
  loc_BD4EF8: FLdPr var_B0
  loc_BD4EFB: LateIdLdVar var_C4 DispID_22 0
  loc_BD4F02: CStrVarTmp
  loc_BD4F03: FStStrNoPop var_C8
  loc_BD4F06: CR8Str
  loc_BD4F08: LitI2_Byte 0
  loc_BD4F0A: CR8I2
  loc_BD4F0B: NeR8
  loc_BD4F0C: FFree1Str var_C8
  loc_BD4F0F: FFree1Ad var_B0
  loc_BD4F12: FFree1Var var_C4 = ""
  loc_BD4F15: BranchF loc_BD4F4A
  loc_BD4F18: ILdRf var_88
  loc_BD4F1B: LitStr " AND apremio.CodiOfic = "
  loc_BD4F1E: ConcatStr
  loc_BD4F1F: FStStrNoPop var_C8
  loc_BD4F22: FLdPr Me
  loc_BD4F25: VCallAd Control_ID_CodiOficMsk
  loc_BD4F28: FStAdFunc var_B0
  loc_BD4F2B: FLdPr var_B0
  loc_BD4F2E: LateIdLdVar var_C4 DispID_22 0
  loc_BD4F35: CStrVarTmp
  loc_BD4F36: FStStrNoPop var_CC
  loc_BD4F39: ConcatStr
  loc_BD4F3A: FStStr var_88
  loc_BD4F3D: FFreeStr var_C8 = ""
  loc_BD4F44: FFree1Ad var_B0
  loc_BD4F47: FFree1Var var_C4 = ""
  loc_BD4F4A: FLdRfVar var_B2
  loc_BD4F4D: FLdPr Me
  loc_BD4F50: VCallAd Control_ID_NumeApreOpt
  loc_BD4F53: FStAdFunc var_B0
  loc_BD4F56: FLdPr var_B0
  loc_BD4F59:  = Me.Value
  loc_BD4F5E: FLdI2 var_B2
  loc_BD4F61: LitI2_Byte &HFF
  loc_BD4F63: EqI2
  loc_BD4F64: FFree1Ad var_B0
  loc_BD4F67: BranchF loc_BD4F70
  loc_BD4F6A: LitStr " ORDER BY NumeApre"
  loc_BD4F6D: FStStrCopy var_8C
  loc_BD4F70: FLdRfVar var_B2
  loc_BD4F73: FLdPr Me
  loc_BD4F76: VCallAd Control_ID_AutoApreOpt
  loc_BD4F79: FStAdFunc var_B0
  loc_BD4F7C: FLdPr var_B0
  loc_BD4F7F:  = Me.Value
  loc_BD4F84: FLdI2 var_B2
  loc_BD4F87: LitI2_Byte &HFF
  loc_BD4F89: EqI2
  loc_BD4F8A: FFree1Ad var_B0
  loc_BD4F8D: BranchF loc_BD4F96
  loc_BD4F90: LitStr " ORDER BY AutoApre"
  loc_BD4F93: FStStrCopy var_8C
  loc_BD4F96: FLdRfVar var_B2
  loc_BD4F99: FLdPr Me
  loc_BD4F9C: VCallAd Control_ID_RecaudadorOpt
  loc_BD4F9F: FStAdFunc var_B0
  loc_BD4FA2: FLdPr var_B0
  loc_BD4FA5:  = Me.Value
  loc_BD4FAA: FLdI2 var_B2
  loc_BD4FAD: LitI2_Byte &HFF
  loc_BD4FAF: EqI2
  loc_BD4FB0: FFree1Ad var_B0
  loc_BD4FB3: BranchF loc_BD4FBC
  loc_BD4FB6: LitStr " ORDER BY CodiReca"
  loc_BD4FB9: FStStrCopy var_8C
  loc_BD4FBC: FLdRfVar var_B2
  loc_BD4FBF: FLdPr Me
  loc_BD4FC2: VCallAd Control_ID_FechaBoletaOpt
  loc_BD4FC5: FStAdFunc var_B0
  loc_BD4FC8: FLdPr var_B0
  loc_BD4FCB:  = Me.Value
  loc_BD4FD0: FLdI2 var_B2
  loc_BD4FD3: LitI2_Byte &HFF
  loc_BD4FD5: EqI2
  loc_BD4FD6: FFree1Ad var_B0
  loc_BD4FD9: BranchF loc_BD4FE2
  loc_BD4FDC: LitStr " ORDER BY apremio.FealApre"
  loc_BD4FDF: FStStrCopy var_8C
  loc_BD4FE2: FLdRfVar var_B2
  loc_BD4FE5: FLdPr Me
  loc_BD4FE8: VCallAd Control_ID_ImporteOpt
  loc_BD4FEB: FStAdFunc var_B0
  loc_BD4FEE: FLdPr var_B0
  loc_BD4FF1:  = Me.Value
  loc_BD4FF6: FLdI2 var_B2
  loc_BD4FF9: LitI2_Byte &HFF
  loc_BD4FFB: EqI2
  loc_BD4FFC: FFree1Ad var_B0
  loc_BD4FFF: BranchF loc_BD5008
  loc_BD5002: LitStr " ORDER BY apremio.TotaApre"
  loc_BD5005: FStStrCopy var_8C
  loc_BD5008: FLdPr Me
  loc_BD500B: MemLdRfVar from_stack_1.global_76
  loc_BD500E: NewIfNullAd
  loc_BD5011: FStAd var_D0 
  loc_BD5015: LitStr " SELECT apremio.NumeApre,  AutoApre, FealApre, IFNULL(persona.DetaPers,'') DetaPers, CodiOfic, CuenCtct, apremio.CodiReca, IFNULL(DetaReca,'') DetaReca, apremio.CodiInju, FechInap, TotaApre FROM apremio"
  loc_BD5018: LitStr " LEFT JOIN infogov.persona ON persona.CucuPers = apremio.CucuPers "
  loc_BD501B: ConcatStr
  loc_BD501C: FStStrNoPop var_C8
  loc_BD501F: LitStr " LEFT JOIN recaudador ON recaudador.CodiReca = apremio.CodiReca "
  loc_BD5022: ConcatStr
  loc_BD5023: FStStrNoPop var_CC
  loc_BD5026: LitStr " LEFT JOIN instapre ON instapre.NumeApre = apremio.NumeApre"
  loc_BD5029: ConcatStr
  loc_BD502A: FStStrNoPop var_D4
  loc_BD502D: LitStr " AND instapre.CodiInju = apremio.CodiInju"
  loc_BD5030: ConcatStr
  loc_BD5031: FStStrNoPop var_D8
  loc_BD5034: ILdRf var_88
  loc_BD5037: ConcatStr
  loc_BD5038: FStStrNoPop var_DC
  loc_BD503B: ILdRf var_8C
  loc_BD503E: ConcatStr
  loc_BD503F: FStStrNoPop var_E0
  loc_BD5042: FLdPr var_D0
  loc_BD5045: Call clsapremio.RedefineRS(from_stack_1v)
  loc_BD504A: FFreeStr var_C8 = "": var_CC = "": var_D4 = "": var_D8 = "": var_DC = ""
  loc_BD5059: FLdRfVar var_E4
  loc_BD505C: FLdPr var_D0
  loc_BD505F: from_stack_1 = clsapremio.RecordCount
  loc_BD5064: ILdRf var_E4
  loc_BD5067: LitI4 1
  loc_BD506C: LtI4
  loc_BD506D: BranchF loc_BD507B
  loc_BD5070: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_BD5073: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_BD5078: Branch loc_BD53A2
  loc_BD507B: LitI4 0
  loc_BD5080: FLdRfVar var_E4
  loc_BD5083: FLdPr var_D0
  loc_BD5086: from_stack_1 = clsapremio.RecordCount
  loc_BD508B: ILdRf var_E4
  loc_BD508E: FLdPr Me
  loc_BD5091: MemLdRfVar from_stack_1.global_80
  loc_BD5094: Redim
  loc_BD509E: FLdPr var_D0
  loc_BD50A1: Call clsapremio.MoveFirst()
  loc_BD50A6: LitI4 1
  loc_BD50AB: FLdPr Me
  loc_BD50AE: MemLdRfVar from_stack_1.global_84
  loc_BD50B1: FLdPr Me
  loc_BD50B4: MemLdStr global_80
  loc_BD50B7: LitI2_Byte 1
  loc_BD50B9: FnUBound
  loc_BD50BB: ForI4 var_EC
  loc_BD50C1: FLdRfVar var_E4
  loc_BD50C4: FLdPr var_D0
  loc_BD50C7: from_stack_1 = clsapremio.NumeApre
  loc_BD50CC: LitI2_Byte 0
  loc_BD50CE: LitVar_Missing var_C4
  loc_BD50D1: LitI2_Byte 0
  loc_BD50D3: ILdRf var_E4
  loc_BD50D6: CVarI4
  loc_BD50DA: PopAdLdVar
  loc_BD50DB: FLdPr Me
  loc_BD50DE: MemLdStr global_84
  loc_BD50E1: FLdPr Me
  loc_BD50E4: MemLdStr global_80
  loc_BD50E7: AryLock
  loc_BD50EA: Ary1LdPr
  loc_BD50EB: MemLdRfVar from_stack_1.global_0
  loc_BD50EE: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BD50F3: AryUnlock
  loc_BD50F6: FFree1Var var_C4 = ""
  loc_BD50F9: FLdRfVar var_E4
  loc_BD50FC: FLdPr var_D0
  loc_BD50FF: from_stack_1 = clsapremio.AutoApre
  loc_BD5104: LitI2_Byte 0
  loc_BD5106: LitVar_Missing var_C4
  loc_BD5109: LitI2_Byte 0
  loc_BD510B: ILdRf var_E4
  loc_BD510E: CVarI4
  loc_BD5112: PopAdLdVar
  loc_BD5113: FLdPr Me
  loc_BD5116: MemLdStr global_84
  loc_BD5119: FLdPr Me
  loc_BD511C: MemLdStr global_80
  loc_BD511F: AryLock
  loc_BD5122: Ary1LdPr
  loc_BD5123: MemLdRfVar from_stack_1.global_4
  loc_BD5126: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BD512B: AryUnlock
  loc_BD512E: FFree1Var var_C4 = ""
  loc_BD5131: FLdRfVar var_F8
  loc_BD5134: LitVarStr var_9C, "FealApre"
  loc_BD5139: PopAdLdVar
  loc_BD513A: FLdRfVar var_F4
  loc_BD513D: FLdRfVar var_B0
  loc_BD5140: FLdPr var_D0
  loc_BD5143: from_stack_1v = clsapremio.RsFrmGet()
  loc_BD5148: FLdPr var_B0
  loc_BD514B:  = Me.Fields
  loc_BD5150: FLdPr var_F4
  loc_BD5153: from_stack_2 = Me.Item(from_stack_1)
  loc_BD5158: LitI2_Byte 0
  loc_BD515A: LitVar_Missing var_108
  loc_BD515D: LitI2_Byte 0
  loc_BD515F: FLdZeroAd var_F8
  loc_BD5162: CVarAd
  loc_BD5166: PopAdLdVar
  loc_BD5167: FLdPr Me
  loc_BD516A: MemLdStr global_84
  loc_BD516D: FLdPr Me
  loc_BD5170: MemLdStr global_80
  loc_BD5173: AryLock
  loc_BD5176: Ary1LdPr
  loc_BD5177: MemLdRfVar from_stack_1.global_8
  loc_BD517A: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BD517F: AryUnlock
  loc_BD5182: FFreeAd var_B0 = ""
  loc_BD5189: FFreeVar var_C4 = ""
  loc_BD5190: FLdRfVar var_C4
  loc_BD5193: FLdPr var_D0
  loc_BD5196: from_stack_1 = clsapremio.DetaPers
  loc_BD519B: LitI2_Byte 0
  loc_BD519D: LitVar_Missing var_108
  loc_BD51A0: LitI2_Byte 0
  loc_BD51A2: FLdVar var_C4
  loc_BD51A6: FLdPr Me
  loc_BD51A9: MemLdStr global_84
  loc_BD51AC: FLdPr Me
  loc_BD51AF: MemLdStr global_80
  loc_BD51B2: AryLock
  loc_BD51B5: Ary1LdPr
  loc_BD51B6: MemLdRfVar from_stack_1.global_12
  loc_BD51B9: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BD51BE: AryUnlock
  loc_BD51C1: FFreeVar var_C4 = ""
  loc_BD51C8: FLdRfVar var_B2
  loc_BD51CB: FLdPr var_D0
  loc_BD51CE: from_stack_1 = clsapremio.CodiOfic
  loc_BD51D3: LitI2_Byte 0
  loc_BD51D5: LitVar_Missing var_C4
  loc_BD51D8: LitI2_Byte 0
  loc_BD51DA: FLdUI1
  loc_BD51DE: CVarUI1
  loc_BD51E2: PopAdLdVar
  loc_BD51E3: FLdPr Me
  loc_BD51E6: MemLdStr global_84
  loc_BD51E9: FLdPr Me
  loc_BD51EC: MemLdStr global_80
  loc_BD51EF: AryLock
  loc_BD51F2: Ary1LdPr
  loc_BD51F3: MemLdRfVar from_stack_1.global_16
  loc_BD51F6: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BD51FB: AryUnlock
  loc_BD51FE: FFree1Var var_C4 = ""
  loc_BD5201: FLdRfVar var_C8
  loc_BD5204: FLdPr var_D0
  loc_BD5207: from_stack_1 = clsapremio.CuenCtct
  loc_BD520C: LitI2_Byte 0
  loc_BD520E: LitVar_Missing var_108
  loc_BD5211: LitI2_Byte 0
  loc_BD5213: FLdZeroAd var_C8
  loc_BD5216: CVarStr var_C4
  loc_BD5219: PopAdLdVar
  loc_BD521A: FLdPr Me
  loc_BD521D: MemLdStr global_84
  loc_BD5220: FLdPr Me
  loc_BD5223: MemLdStr global_80
  loc_BD5226: AryLock
  loc_BD5229: Ary1LdPr
  loc_BD522A: MemLdRfVar from_stack_1.global_20
  loc_BD522D: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BD5232: AryUnlock
  loc_BD5235: FFreeVar var_C4 = ""
  loc_BD523C: FLdRfVar var_B2
  loc_BD523F: FLdPr var_D0
  loc_BD5242: from_stack_1 = clsapremio.CodiReca
  loc_BD5247: LitI2_Byte 0
  loc_BD5249: LitVar_Missing var_C4
  loc_BD524C: LitI2_Byte 0
  loc_BD524E: FLdI2 var_B2
  loc_BD5251: CVarI2 var_9C
  loc_BD5254: PopAdLdVar
  loc_BD5255: FLdPr Me
  loc_BD5258: MemLdStr global_84
  loc_BD525B: FLdPr Me
  loc_BD525E: MemLdStr global_80
  loc_BD5261: AryLock
  loc_BD5264: Ary1LdPr
  loc_BD5265: MemLdRfVar from_stack_1.global_24
  loc_BD5268: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BD526D: AryUnlock
  loc_BD5270: FFree1Var var_C4 = ""
  loc_BD5273: FLdRfVar var_C8
  loc_BD5276: FLdPr var_D0
  loc_BD5279: from_stack_1 = clsapremio.DetaReca
  loc_BD527E: LitI2_Byte 0
  loc_BD5280: LitVar_Missing var_108
  loc_BD5283: LitI2_Byte 0
  loc_BD5285: FLdZeroAd var_C8
  loc_BD5288: CVarStr var_C4
  loc_BD528B: PopAdLdVar
  loc_BD528C: FLdPr Me
  loc_BD528F: MemLdStr global_84
  loc_BD5292: FLdPr Me
  loc_BD5295: MemLdStr global_80
  loc_BD5298: AryLock
  loc_BD529B: Ary1LdPr
  loc_BD529C: MemLdRfVar from_stack_1.global_28
  loc_BD529F: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BD52A4: AryUnlock
  loc_BD52A7: FFreeVar var_C4 = ""
  loc_BD52AE: FLdRfVar var_B2
  loc_BD52B1: FLdPr var_D0
  loc_BD52B4: from_stack_1 = clsapremio.CodiInju
  loc_BD52B9: LitI2_Byte 0
  loc_BD52BB: LitVar_Missing var_C4
  loc_BD52BE: LitI2_Byte 0
  loc_BD52C0: FLdI2 var_B2
  loc_BD52C3: CVarI2 var_9C
  loc_BD52C6: PopAdLdVar
  loc_BD52C7: FLdPr Me
  loc_BD52CA: MemLdStr global_84
  loc_BD52CD: FLdPr Me
  loc_BD52D0: MemLdStr global_80
  loc_BD52D3: AryLock
  loc_BD52D6: Ary1LdPr
  loc_BD52D7: MemLdRfVar from_stack_1.global_32
  loc_BD52DA: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BD52DF: AryUnlock
  loc_BD52E2: FFree1Var var_C4 = ""
  loc_BD52E5: FLdRfVar var_F8
  loc_BD52E8: LitVarStr var_9C, "FechInap"
  loc_BD52ED: PopAdLdVar
  loc_BD52EE: FLdRfVar var_F4
  loc_BD52F1: FLdRfVar var_B0
  loc_BD52F4: FLdPr var_D0
  loc_BD52F7: from_stack_1v = clsapremio.RsFrmGet()
  loc_BD52FC: FLdPr var_B0
  loc_BD52FF:  = Me.Fields
  loc_BD5304: FLdPr var_F4
  loc_BD5307: from_stack_2 = Me.Item(from_stack_1)
  loc_BD530C: LitI2_Byte 0
  loc_BD530E: LitVar_Missing var_108
  loc_BD5311: LitI2_Byte 0
  loc_BD5313: FLdZeroAd var_F8
  loc_BD5316: CVarAd
  loc_BD531A: PopAdLdVar
  loc_BD531B: FLdPr Me
  loc_BD531E: MemLdStr global_84
  loc_BD5321: FLdPr Me
  loc_BD5324: MemLdStr global_80
  loc_BD5327: AryLock
  loc_BD532A: Ary1LdPr
  loc_BD532B: MemLdRfVar from_stack_1.global_36
  loc_BD532E: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BD5333: AryUnlock
  loc_BD5336: FFreeAd var_B0 = ""
  loc_BD533D: FFreeVar var_C4 = ""
  loc_BD5344: FLdRfVar var_110
  loc_BD5347: FLdPr var_D0
  loc_BD534A: from_stack_1 = clsapremio.TotaApre
  loc_BD534F: LitI2_Byte 0
  loc_BD5351: LitVar_Missing var_C4
  loc_BD5354: LitI2_Byte &HFF
  loc_BD5356: FLdFPR8 var_110
  loc_BD5359: CVarR8
  loc_BD535D: PopAdLdVar
  loc_BD535E: FLdPr Me
  loc_BD5361: MemLdStr global_84
  loc_BD5364: FLdPr Me
  loc_BD5367: MemLdStr global_80
  loc_BD536A: AryLock
  loc_BD536D: Ary1LdPr
  loc_BD536E: MemLdRfVar from_stack_1.global_40
  loc_BD5371: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BD5376: AryUnlock
  loc_BD5379: FFree1Var var_C4 = ""
  loc_BD537C: LitI2_Byte 1
  loc_BD537E: PopTmpLdAd2 var_B2
  loc_BD5381: FLdPr var_D0
  loc_BD5384: Call clsapremio.Move(from_stack_1v)
  loc_BD5389: FLdPr Me
  loc_BD538C: MemLdRfVar from_stack_1.global_84
  loc_BD538F: NextI4 var_EC, loc_BD50C1
  loc_BD5394: LitNothing
  loc_BD5396: FStAd var_D0 
  loc_BD539A: LitI2_Byte &HFF
  loc_BD539C: FLdPr Me
  loc_BD539F: MemStI2 bGenerado
  loc_BD53A2: LitI4 0
  loc_BD53A7: CI2I4
  loc_BD53A8: FLdPr Me
  loc_BD53AB: Me.MousePointer = from_stack_1
  loc_BD53B0: LitVarStr var_9C, vbNullString
  loc_BD53B5: PopAdLdVar
  loc_BD53B6: FLdPr Me
  loc_BD53B9: VCallAd Control_ID_statusBar
  loc_BD53BC: FStAdFunc var_B0
  loc_BD53BF: FLdPr var_B0
  loc_BD53C2: LateIdSt
  loc_BD53C7: FFree1Ad var_B0
  loc_BD53CA: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'B3924C
  'Data Table: 4F89CC
  loc_B38F3C: FLdRfVar var_88
  loc_B38F3F: LitI2_Byte 0
  loc_B38F41: LitI2_Byte &HFF
  loc_B38F43: ImpAdLdI4 MemVar_D93C84
  loc_B38F46: FLdPr Me
  loc_B38F49: MemLdRfVar from_stack_1.global_56
  loc_B38F4C: NewIfNullPr IFileSystem3
  loc_B38F4F: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_B38F54: ILdRf var_88
  loc_B38F57: FLdPr Me
  loc_B38F5A: MemStVarAd
  loc_B38F5E: FFree1Ad var_88
  loc_B38F61: LitI2_Byte &HFF
  loc_B38F63: ImpAdStI2 MemVar_D93C8A
  loc_B38F66: Call Proc_225_27_C406CC()
  loc_B38F6B: LitI4 1
  loc_B38F70: FLdPr Me
  loc_B38F73: MemLdRfVar from_stack_1.global_84
  loc_B38F76: FLdPr Me
  loc_B38F79: MemLdStr global_80
  loc_B38F7C: LitI2_Byte 1
  loc_B38F7E: FnUBound
  loc_B38F80: ForI4 var_90
  loc_B38F86: FLdPr Me
  loc_B38F89: MemLdStr global_84
  loc_B38F8C: FLdPr Me
  loc_B38F8F: MemLdStr global_80
  loc_B38F92: AryLock
  loc_B38F95: Ary1LdRf
  loc_B38F96: FStR4 var_98
  loc_B38F99: LitVarStr var_A8, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B38F9E: PopAdLdVar
  loc_B38F9F: FLdPr Me
  loc_B38FA2: MemLdRfVar from_stack_1.global_60
  loc_B38FA5: LdPrVar
  loc_B38FA7: LateMemCall
  loc_B38FAD: LitStr vbNullString
  loc_B38FB0: LitI2_Byte 0
  loc_B38FB2: LitI2_Byte 0
  loc_B38FB4: LitI2_Byte 0
  loc_B38FB6: LitStr "right"
  loc_B38FB9: FMemLdR4 var_98(0)
  loc_B38FBE: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B38FC3: CVarStr var_C8
  loc_B38FC6: PopAdLdVar
  loc_B38FC7: FLdPr Me
  loc_B38FCA: MemLdRfVar from_stack_1.global_60
  loc_B38FCD: LdPrVar
  loc_B38FCF: LateMemCall
  loc_B38FD5: FFree1Var var_C8 = ""
  loc_B38FD8: LitStr vbNullString
  loc_B38FDB: LitI2_Byte 0
  loc_B38FDD: LitI2_Byte 0
  loc_B38FDF: LitI2_Byte 0
  loc_B38FE1: LitStr "right"
  loc_B38FE4: FMemLdR4 var_98(4)
  loc_B38FE9: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B38FEE: CVarStr var_C8
  loc_B38FF1: PopAdLdVar
  loc_B38FF2: FLdPr Me
  loc_B38FF5: MemLdRfVar from_stack_1.global_60
  loc_B38FF8: LdPrVar
  loc_B38FFA: LateMemCall
  loc_B39000: FFree1Var var_C8 = ""
  loc_B39003: LitStr vbNullString
  loc_B39006: LitI2_Byte 0
  loc_B39008: LitI2_Byte 0
  loc_B3900A: LitI2_Byte 0
  loc_B3900C: LitStr "center"
  loc_B3900F: FMemLdR4 var_98(8)
  loc_B39014: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B39019: CVarStr var_C8
  loc_B3901C: PopAdLdVar
  loc_B3901D: FLdPr Me
  loc_B39020: MemLdRfVar from_stack_1.global_60
  loc_B39023: LdPrVar
  loc_B39025: LateMemCall
  loc_B3902B: FFree1Var var_C8 = ""
  loc_B3902E: LitStr vbNullString
  loc_B39031: LitI2_Byte 0
  loc_B39033: LitI2_Byte 0
  loc_B39035: LitI2_Byte 0
  loc_B39037: LitStr "left"
  loc_B3903A: FMemLdR4 var_98(12)
  loc_B3903F: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B39044: CVarStr var_C8
  loc_B39047: PopAdLdVar
  loc_B39048: FLdPr Me
  loc_B3904B: MemLdRfVar from_stack_1.global_60
  loc_B3904E: LdPrVar
  loc_B39050: LateMemCall
  loc_B39056: FFree1Var var_C8 = ""
  loc_B39059: LitStr vbNullString
  loc_B3905C: LitI2_Byte 0
  loc_B3905E: LitI2_Byte 0
  loc_B39060: LitI2_Byte 0
  loc_B39062: LitStr "right"
  loc_B39065: FMemLdR4 var_98(16)
  loc_B3906A: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B3906F: CVarStr var_C8
  loc_B39072: PopAdLdVar
  loc_B39073: FLdPr Me
  loc_B39076: MemLdRfVar from_stack_1.global_60
  loc_B39079: LdPrVar
  loc_B3907B: LateMemCall
  loc_B39081: FFree1Var var_C8 = ""
  loc_B39084: LitStr vbNullString
  loc_B39087: LitI2_Byte 0
  loc_B39089: LitI2_Byte 0
  loc_B3908B: LitI2_Byte 0
  loc_B3908D: LitStr "right"
  loc_B39090: FMemLdR4 var_98(20)
  loc_B39095: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B3909A: CVarStr var_C8
  loc_B3909D: PopAdLdVar
  loc_B3909E: FLdPr Me
  loc_B390A1: MemLdRfVar from_stack_1.global_60
  loc_B390A4: LdPrVar
  loc_B390A6: LateMemCall
  loc_B390AC: FFree1Var var_C8 = ""
  loc_B390AF: LitStr vbNullString
  loc_B390B2: LitI2_Byte 0
  loc_B390B4: LitI2_Byte 0
  loc_B390B6: LitI2_Byte 0
  loc_B390B8: LitStr "right"
  loc_B390BB: FMemLdR4 var_98(24)
  loc_B390C0: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B390C5: CVarStr var_C8
  loc_B390C8: PopAdLdVar
  loc_B390C9: FLdPr Me
  loc_B390CC: MemLdRfVar from_stack_1.global_60
  loc_B390CF: LdPrVar
  loc_B390D1: LateMemCall
  loc_B390D7: FFree1Var var_C8 = ""
  loc_B390DA: LitStr vbNullString
  loc_B390DD: LitI2_Byte 0
  loc_B390DF: LitI2_Byte 0
  loc_B390E1: LitI2_Byte 0
  loc_B390E3: LitStr "left"
  loc_B390E6: FMemLdR4 var_98(28)
  loc_B390EB: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B390F0: CVarStr var_C8
  loc_B390F3: PopAdLdVar
  loc_B390F4: FLdPr Me
  loc_B390F7: MemLdRfVar from_stack_1.global_60
  loc_B390FA: LdPrVar
  loc_B390FC: LateMemCall
  loc_B39102: FFree1Var var_C8 = ""
  loc_B39105: LitStr vbNullString
  loc_B39108: LitI2_Byte 0
  loc_B3910A: LitI2_Byte 0
  loc_B3910C: LitI2_Byte 0
  loc_B3910E: LitStr "right"
  loc_B39111: FMemLdR4 var_98(32)
  loc_B39116: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B3911B: CVarStr var_C8
  loc_B3911E: PopAdLdVar
  loc_B3911F: FLdPr Me
  loc_B39122: MemLdRfVar from_stack_1.global_60
  loc_B39125: LdPrVar
  loc_B39127: LateMemCall
  loc_B3912D: FFree1Var var_C8 = ""
  loc_B39130: LitStr vbNullString
  loc_B39133: LitI2_Byte 0
  loc_B39135: LitI2_Byte 0
  loc_B39137: LitI2_Byte 0
  loc_B39139: LitStr "center"
  loc_B3913C: FMemLdR4 var_98(36)
  loc_B39141: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B39146: CVarStr var_C8
  loc_B39149: PopAdLdVar
  loc_B3914A: FLdPr Me
  loc_B3914D: MemLdRfVar from_stack_1.global_60
  loc_B39150: LdPrVar
  loc_B39152: LateMemCall
  loc_B39158: FFree1Var var_C8 = ""
  loc_B3915B: LitStr vbNullString
  loc_B3915E: LitI2_Byte 0
  loc_B39160: LitI2_Byte 0
  loc_B39162: LitI2_Byte 0
  loc_B39164: LitStr "right"
  loc_B39167: FMemLdR4 var_98(40)
  loc_B3916C: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B39171: CVarStr var_C8
  loc_B39174: PopAdLdVar
  loc_B39175: FLdPr Me
  loc_B39178: MemLdRfVar from_stack_1.global_60
  loc_B3917B: LdPrVar
  loc_B3917D: LateMemCall
  loc_B39183: FFree1Var var_C8 = ""
  loc_B39186: LitVarStr var_A8, "     </tr>"
  loc_B3918B: PopAdLdVar
  loc_B3918C: FLdPr Me
  loc_B3918F: MemLdRfVar from_stack_1.global_60
  loc_B39192: LdPrVar
  loc_B39194: LateMemCall
  loc_B3919A: LitI4 0
  loc_B3919F: FStR4 var_98
  loc_B391A2: AryUnlock
  loc_B391A5: FLdPr Me
  loc_B391A8: MemLdRfVar from_stack_1.global_84
  loc_B391AB: NextI4 var_90, loc_B38F86
  loc_B391B0: LitVarStr var_A8, "  <tr align=""center"" class=""Totales"">"
  loc_B391B5: PopAdLdVar
  loc_B391B6: FLdPr Me
  loc_B391B9: MemLdRfVar from_stack_1.global_60
  loc_B391BC: LdPrVar
  loc_B391BE: LateMemCall
  loc_B391C4: LitStr "   <td colspan=""11"" align=""center"">Cantidad de Registros: "
  loc_B391C7: LitI4 -1
  loc_B391CC: LitI4 0
  loc_B391D1: LitI4 -1
  loc_B391D6: LitI4 0
  loc_B391DB: FLdPr Me
  loc_B391DE: MemLdStr global_80
  loc_B391E1: LitI2_Byte 1
  loc_B391E3: FnUBound
  loc_B391E5: CVarI4
  loc_B391E9: ImpAdCallI2 FormatNumber(, , , , )
  loc_B391EE: FStStrNoPop var_CC
  loc_B391F1: ConcatStr
  loc_B391F2: FStStrNoPop var_D0
  loc_B391F5: LitStr "</td>"
  loc_B391F8: ConcatStr
  loc_B391F9: CVarStr var_E0
  loc_B391FC: PopAdLdVar
  loc_B391FD: FLdPr Me
  loc_B39200: MemLdRfVar from_stack_1.global_60
  loc_B39203: LdPrVar
  loc_B39205: LateMemCall
  loc_B3920B: FFreeStr var_CC = ""
  loc_B39212: FFreeVar var_C8 = ""
  loc_B39219: LitVarStr var_A8, "  </tr>"
  loc_B3921E: PopAdLdVar
  loc_B3921F: FLdPr Me
  loc_B39222: MemLdRfVar from_stack_1.global_60
  loc_B39225: LdPrVar
  loc_B39227: LateMemCall
  loc_B3922D: Call Proc_225_28_A0D408()
  loc_B39232: FLdPr Me
  loc_B39235: MemLdRfVar from_stack_1.global_60
  loc_B39238: LdPrVar
  loc_B3923A: LateMemCall
  loc_B39240: LitStr vbNullString
  loc_B39243: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_B39248: ExitProcHresult
  loc_B39249: LdFixedStr
End Sub

Private Function Proc_225_27_C406CC() 'C406CC
  'Data Table: 4F89CC
  loc_C3FA90: LitVarStr var_94, "<html>"
  loc_C3FA95: PopAdLdVar
  loc_C3FA96: FLdPr Me
  loc_C3FA99: MemLdRfVar from_stack_1.global_60
  loc_C3FA9C: LdPrVar
  loc_C3FA9E: LateMemCall
  loc_C3FAA4: LitVarStr var_94, "<head>"
  loc_C3FAA9: PopAdLdVar
  loc_C3FAAA: FLdPr Me
  loc_C3FAAD: MemLdRfVar from_stack_1.global_60
  loc_C3FAB0: LdPrVar
  loc_C3FAB2: LateMemCall
  loc_C3FAB8: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_C3FABD: PopAdLdVar
  loc_C3FABE: FLdPr Me
  loc_C3FAC1: MemLdRfVar from_stack_1.global_60
  loc_C3FAC4: LdPrVar
  loc_C3FAC6: LateMemCall
  loc_C3FACC: LitStr "<title>"
  loc_C3FACF: FLdRfVar var_A8
  loc_C3FAD2: FLdPr Me
  loc_C3FAD5:  = Me.Caption
  loc_C3FADA: ILdRf var_A8
  loc_C3FADD: ConcatStr
  loc_C3FADE: FStStrNoPop var_AC
  loc_C3FAE1: LitStr "</title>"
  loc_C3FAE4: ConcatStr
  loc_C3FAE5: CVarStr var_BC
  loc_C3FAE8: PopAdLdVar
  loc_C3FAE9: FLdPr Me
  loc_C3FAEC: MemLdRfVar from_stack_1.global_60
  loc_C3FAEF: LdPrVar
  loc_C3FAF1: LateMemCall
  loc_C3FAF7: FFreeStr var_A8 = ""
  loc_C3FAFE: FFree1Var var_BC = ""
  loc_C3FB01: LitVarStr var_94, "<style type=""text/css"">"
  loc_C3FB06: PopAdLdVar
  loc_C3FB07: FLdPr Me
  loc_C3FB0A: MemLdRfVar from_stack_1.global_60
  loc_C3FB0D: LdPrVar
  loc_C3FB0F: LateMemCall
  loc_C3FB15: LitVarStr var_94, ".Titulo1 {"
  loc_C3FB1A: PopAdLdVar
  loc_C3FB1B: FLdPr Me
  loc_C3FB1E: MemLdRfVar from_stack_1.global_60
  loc_C3FB21: LdPrVar
  loc_C3FB23: LateMemCall
  loc_C3FB29: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_C3FB2E: PopAdLdVar
  loc_C3FB2F: FLdPr Me
  loc_C3FB32: MemLdRfVar from_stack_1.global_60
  loc_C3FB35: LdPrVar
  loc_C3FB37: LateMemCall
  loc_C3FB3D: LitVarStr var_94, " font-size: 18px;"
  loc_C3FB42: PopAdLdVar
  loc_C3FB43: FLdPr Me
  loc_C3FB46: MemLdRfVar from_stack_1.global_60
  loc_C3FB49: LdPrVar
  loc_C3FB4B: LateMemCall
  loc_C3FB51: LitVarStr var_94, " font-weight: bold;"
  loc_C3FB56: PopAdLdVar
  loc_C3FB57: FLdPr Me
  loc_C3FB5A: MemLdRfVar from_stack_1.global_60
  loc_C3FB5D: LdPrVar
  loc_C3FB5F: LateMemCall
  loc_C3FB65: LitVarStr var_94, "}"
  loc_C3FB6A: PopAdLdVar
  loc_C3FB6B: FLdPr Me
  loc_C3FB6E: MemLdRfVar from_stack_1.global_60
  loc_C3FB71: LdPrVar
  loc_C3FB73: LateMemCall
  loc_C3FB79: LitVarStr var_94, ".Titulo2 {"
  loc_C3FB7E: PopAdLdVar
  loc_C3FB7F: FLdPr Me
  loc_C3FB82: MemLdRfVar from_stack_1.global_60
  loc_C3FB85: LdPrVar
  loc_C3FB87: LateMemCall
  loc_C3FB8D: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_C3FB92: PopAdLdVar
  loc_C3FB93: FLdPr Me
  loc_C3FB96: MemLdRfVar from_stack_1.global_60
  loc_C3FB99: LdPrVar
  loc_C3FB9B: LateMemCall
  loc_C3FBA1: LitVarStr var_94, " font-size: 14px;"
  loc_C3FBA6: PopAdLdVar
  loc_C3FBA7: FLdPr Me
  loc_C3FBAA: MemLdRfVar from_stack_1.global_60
  loc_C3FBAD: LdPrVar
  loc_C3FBAF: LateMemCall
  loc_C3FBB5: LitVarStr var_94, " font-weight: bold;"
  loc_C3FBBA: PopAdLdVar
  loc_C3FBBB: FLdPr Me
  loc_C3FBBE: MemLdRfVar from_stack_1.global_60
  loc_C3FBC1: LdPrVar
  loc_C3FBC3: LateMemCall
  loc_C3FBC9: LitVarStr var_94, "}"
  loc_C3FBCE: PopAdLdVar
  loc_C3FBCF: FLdPr Me
  loc_C3FBD2: MemLdRfVar from_stack_1.global_60
  loc_C3FBD5: LdPrVar
  loc_C3FBD7: LateMemCall
  loc_C3FBDD: LitVarStr var_94, ".Normal {"
  loc_C3FBE2: PopAdLdVar
  loc_C3FBE3: FLdPr Me
  loc_C3FBE6: MemLdRfVar from_stack_1.global_60
  loc_C3FBE9: LdPrVar
  loc_C3FBEB: LateMemCall
  loc_C3FBF1: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_C3FBF6: PopAdLdVar
  loc_C3FBF7: FLdPr Me
  loc_C3FBFA: MemLdRfVar from_stack_1.global_60
  loc_C3FBFD: LdPrVar
  loc_C3FBFF: LateMemCall
  loc_C3FC05: LitVarStr var_94, " font-size: 12px;"
  loc_C3FC0A: PopAdLdVar
  loc_C3FC0B: FLdPr Me
  loc_C3FC0E: MemLdRfVar from_stack_1.global_60
  loc_C3FC11: LdPrVar
  loc_C3FC13: LateMemCall
  loc_C3FC19: LitVarStr var_94, " font-style: normal;"
  loc_C3FC1E: PopAdLdVar
  loc_C3FC1F: FLdPr Me
  loc_C3FC22: MemLdRfVar from_stack_1.global_60
  loc_C3FC25: LdPrVar
  loc_C3FC27: LateMemCall
  loc_C3FC2D: LitVarStr var_94, " font-weight: normal;"
  loc_C3FC32: PopAdLdVar
  loc_C3FC33: FLdPr Me
  loc_C3FC36: MemLdRfVar from_stack_1.global_60
  loc_C3FC39: LdPrVar
  loc_C3FC3B: LateMemCall
  loc_C3FC41: LitVarStr var_94, " font-variant: normal;"
  loc_C3FC46: PopAdLdVar
  loc_C3FC47: FLdPr Me
  loc_C3FC4A: MemLdRfVar from_stack_1.global_60
  loc_C3FC4D: LdPrVar
  loc_C3FC4F: LateMemCall
  loc_C3FC55: LitVarStr var_94, "}"
  loc_C3FC5A: PopAdLdVar
  loc_C3FC5B: FLdPr Me
  loc_C3FC5E: MemLdRfVar from_stack_1.global_60
  loc_C3FC61: LdPrVar
  loc_C3FC63: LateMemCall
  loc_C3FC69: LitVarStr var_94, ".Encabezado {"
  loc_C3FC6E: PopAdLdVar
  loc_C3FC6F: FLdPr Me
  loc_C3FC72: MemLdRfVar from_stack_1.global_60
  loc_C3FC75: LdPrVar
  loc_C3FC77: LateMemCall
  loc_C3FC7D: LitVarStr var_94, " font-family: ""Times New Roman"", Times, serif;"
  loc_C3FC82: PopAdLdVar
  loc_C3FC83: FLdPr Me
  loc_C3FC86: MemLdRfVar from_stack_1.global_60
  loc_C3FC89: LdPrVar
  loc_C3FC8B: LateMemCall
  loc_C3FC91: LitVarStr var_94, " font-size: 11px;"
  loc_C3FC96: PopAdLdVar
  loc_C3FC97: FLdPr Me
  loc_C3FC9A: MemLdRfVar from_stack_1.global_60
  loc_C3FC9D: LdPrVar
  loc_C3FC9F: LateMemCall
  loc_C3FCA5: LitVarStr var_94, " font-weight: bold;"
  loc_C3FCAA: PopAdLdVar
  loc_C3FCAB: FLdPr Me
  loc_C3FCAE: MemLdRfVar from_stack_1.global_60
  loc_C3FCB1: LdPrVar
  loc_C3FCB3: LateMemCall
  loc_C3FCB9: LitVarStr var_94, " background-color: #D3D3D3;"
  loc_C3FCBE: PopAdLdVar
  loc_C3FCBF: FLdPr Me
  loc_C3FCC2: MemLdRfVar from_stack_1.global_60
  loc_C3FCC5: LdPrVar
  loc_C3FCC7: LateMemCall
  loc_C3FCCD: LitVarStr var_94, "}"
  loc_C3FCD2: PopAdLdVar
  loc_C3FCD3: FLdPr Me
  loc_C3FCD6: MemLdRfVar from_stack_1.global_60
  loc_C3FCD9: LdPrVar
  loc_C3FCDB: LateMemCall
  loc_C3FCE1: LitVarStr var_94, ".LineaDato {"
  loc_C3FCE6: PopAdLdVar
  loc_C3FCE7: FLdPr Me
  loc_C3FCEA: MemLdRfVar from_stack_1.global_60
  loc_C3FCED: LdPrVar
  loc_C3FCEF: LateMemCall
  loc_C3FCF5: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C3FCFA: PopAdLdVar
  loc_C3FCFB: FLdPr Me
  loc_C3FCFE: MemLdRfVar from_stack_1.global_60
  loc_C3FD01: LdPrVar
  loc_C3FD03: LateMemCall
  loc_C3FD09: LitVarStr var_94, " font-size: 10px;"
  loc_C3FD0E: PopAdLdVar
  loc_C3FD0F: FLdPr Me
  loc_C3FD12: MemLdRfVar from_stack_1.global_60
  loc_C3FD15: LdPrVar
  loc_C3FD17: LateMemCall
  loc_C3FD1D: LitVarStr var_94, "}"
  loc_C3FD22: PopAdLdVar
  loc_C3FD23: FLdPr Me
  loc_C3FD26: MemLdRfVar from_stack_1.global_60
  loc_C3FD29: LdPrVar
  loc_C3FD2B: LateMemCall
  loc_C3FD31: LitVarStr var_94, ".Totales {"
  loc_C3FD36: PopAdLdVar
  loc_C3FD37: FLdPr Me
  loc_C3FD3A: MemLdRfVar from_stack_1.global_60
  loc_C3FD3D: LdPrVar
  loc_C3FD3F: LateMemCall
  loc_C3FD45: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C3FD4A: PopAdLdVar
  loc_C3FD4B: FLdPr Me
  loc_C3FD4E: MemLdRfVar from_stack_1.global_60
  loc_C3FD51: LdPrVar
  loc_C3FD53: LateMemCall
  loc_C3FD59: LitVarStr var_94, " font-size: 12px;"
  loc_C3FD5E: PopAdLdVar
  loc_C3FD5F: FLdPr Me
  loc_C3FD62: MemLdRfVar from_stack_1.global_60
  loc_C3FD65: LdPrVar
  loc_C3FD67: LateMemCall
  loc_C3FD6D: LitVarStr var_94, " font-weight: bold;"
  loc_C3FD72: PopAdLdVar
  loc_C3FD73: FLdPr Me
  loc_C3FD76: MemLdRfVar from_stack_1.global_60
  loc_C3FD79: LdPrVar
  loc_C3FD7B: LateMemCall
  loc_C3FD81: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_C3FD86: PopAdLdVar
  loc_C3FD87: FLdPr Me
  loc_C3FD8A: MemLdRfVar from_stack_1.global_60
  loc_C3FD8D: LdPrVar
  loc_C3FD8F: LateMemCall
  loc_C3FD95: LitVarStr var_94, "}"
  loc_C3FD9A: PopAdLdVar
  loc_C3FD9B: FLdPr Me
  loc_C3FD9E: MemLdRfVar from_stack_1.global_60
  loc_C3FDA1: LdPrVar
  loc_C3FDA3: LateMemCall
  loc_C3FDA9: LitVarStr var_94, ".SubTotales {"
  loc_C3FDAE: PopAdLdVar
  loc_C3FDAF: FLdPr Me
  loc_C3FDB2: MemLdRfVar from_stack_1.global_60
  loc_C3FDB5: LdPrVar
  loc_C3FDB7: LateMemCall
  loc_C3FDBD: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C3FDC2: PopAdLdVar
  loc_C3FDC3: FLdPr Me
  loc_C3FDC6: MemLdRfVar from_stack_1.global_60
  loc_C3FDC9: LdPrVar
  loc_C3FDCB: LateMemCall
  loc_C3FDD1: LitVarStr var_94, " font-size: 10px;"
  loc_C3FDD6: PopAdLdVar
  loc_C3FDD7: FLdPr Me
  loc_C3FDDA: MemLdRfVar from_stack_1.global_60
  loc_C3FDDD: LdPrVar
  loc_C3FDDF: LateMemCall
  loc_C3FDE5: LitVarStr var_94, " font-weight: bold;"
  loc_C3FDEA: PopAdLdVar
  loc_C3FDEB: FLdPr Me
  loc_C3FDEE: MemLdRfVar from_stack_1.global_60
  loc_C3FDF1: LdPrVar
  loc_C3FDF3: LateMemCall
  loc_C3FDF9: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_C3FDFE: PopAdLdVar
  loc_C3FDFF: FLdPr Me
  loc_C3FE02: MemLdRfVar from_stack_1.global_60
  loc_C3FE05: LdPrVar
  loc_C3FE07: LateMemCall
  loc_C3FE0D: LitVarStr var_94, "}"
  loc_C3FE12: PopAdLdVar
  loc_C3FE13: FLdPr Me
  loc_C3FE16: MemLdRfVar from_stack_1.global_60
  loc_C3FE19: LdPrVar
  loc_C3FE1B: LateMemCall
  loc_C3FE21: LitVarStr var_94, ".Tilde {"
  loc_C3FE26: PopAdLdVar
  loc_C3FE27: FLdPr Me
  loc_C3FE2A: MemLdRfVar from_stack_1.global_60
  loc_C3FE2D: LdPrVar
  loc_C3FE2F: LateMemCall
  loc_C3FE35: LitVarStr var_94, " font-family: Wingdings;"
  loc_C3FE3A: PopAdLdVar
  loc_C3FE3B: FLdPr Me
  loc_C3FE3E: MemLdRfVar from_stack_1.global_60
  loc_C3FE41: LdPrVar
  loc_C3FE43: LateMemCall
  loc_C3FE49: LitVarStr var_94, " font-size: 16px;"
  loc_C3FE4E: PopAdLdVar
  loc_C3FE4F: FLdPr Me
  loc_C3FE52: MemLdRfVar from_stack_1.global_60
  loc_C3FE55: LdPrVar
  loc_C3FE57: LateMemCall
  loc_C3FE5D: LitVarStr var_94, "}"
  loc_C3FE62: PopAdLdVar
  loc_C3FE63: FLdPr Me
  loc_C3FE66: MemLdRfVar from_stack_1.global_60
  loc_C3FE69: LdPrVar
  loc_C3FE6B: LateMemCall
  loc_C3FE71: LitVarStr var_94, "THEAD { display: table-header-group; }"
  loc_C3FE76: PopAdLdVar
  loc_C3FE77: FLdPr Me
  loc_C3FE7A: MemLdRfVar from_stack_1.global_60
  loc_C3FE7D: LdPrVar
  loc_C3FE7F: LateMemCall
  loc_C3FE85: LitVarStr var_94, "</style>"
  loc_C3FE8A: PopAdLdVar
  loc_C3FE8B: FLdPr Me
  loc_C3FE8E: MemLdRfVar from_stack_1.global_60
  loc_C3FE91: LdPrVar
  loc_C3FE93: LateMemCall
  loc_C3FE99: LitI4 0
  loc_C3FE9E: FStStrCopy var_AC
  loc_C3FEA1: FLdRfVar var_AC
  loc_C3FEA4: LitI4 0
  loc_C3FEA9: FStStrCopy var_A8
  loc_C3FEAC: FLdRfVar var_A8
  loc_C3FEAF: LitI2_Byte 0
  loc_C3FEB1: PopTmpLdAd2 var_BE
  loc_C3FEB4: FLdPr Me
  loc_C3FEB7: MemLdRfVar from_stack_1.global_60
  loc_C3FEBA: ImpAdCallFPR4  = Proc_57_7_B5E738(, )
  loc_C3FEBF: FFreeStr var_A8 = ""
  loc_C3FEC6: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_C3FECB: PopAdLdVar
  loc_C3FECC: FLdPr Me
  loc_C3FECF: MemLdRfVar from_stack_1.global_60
  loc_C3FED2: LdPrVar
  loc_C3FED4: LateMemCall
  loc_C3FEDA: LitVarStr var_94, "  <tr valign=""middle"">"
  loc_C3FEDF: PopAdLdVar
  loc_C3FEE0: FLdPr Me
  loc_C3FEE3: MemLdRfVar from_stack_1.global_60
  loc_C3FEE6: LdPrVar
  loc_C3FEE8: LateMemCall
  loc_C3FEEE: LitVarStr var_94, "    <th width=""100" & Chr(37) & """ colspan=""2"" align=""center"" valign=""middle""><p>"
  loc_C3FEF3: PopAdLdVar
  loc_C3FEF4: FLdPr Me
  loc_C3FEF7: MemLdRfVar from_stack_1.global_60
  loc_C3FEFA: LdPrVar
  loc_C3FEFC: LateMemCall
  loc_C3FF02: FLdPr Me
  loc_C3FF05: MemLdI2 bLogos
  loc_C3FF08: BranchF loc_C3FF51
  loc_C3FF0B: LitStr "    <img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_C3FF0E: LitI2_Byte &H5F
  loc_C3FF10: CStrUI1
  loc_C3FF12: FStStrNoPop var_A8
  loc_C3FF15: ConcatStr
  loc_C3FF16: FStStrNoPop var_AC
  loc_C3FF19: LitStr """ height="""
  loc_C3FF1C: ConcatStr
  loc_C3FF1D: FStStrNoPop var_C4
  loc_C3FF20: LitI2_Byte &H3C
  loc_C3FF22: CStrUI1
  loc_C3FF24: FStStrNoPop var_C8
  loc_C3FF27: ConcatStr
  loc_C3FF28: FStStrNoPop var_CC
  loc_C3FF2B: LitStr """ align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right"">"
  loc_C3FF2E: ConcatStr
  loc_C3FF2F: CVarStr var_BC
  loc_C3FF32: PopAdLdVar
  loc_C3FF33: FLdPr Me
  loc_C3FF36: MemLdRfVar from_stack_1.global_60
  loc_C3FF39: LdPrVar
  loc_C3FF3B: LateMemCall
  loc_C3FF41: FFreeStr var_A8 = "": var_AC = "": var_C4 = "": var_C8 = ""
  loc_C3FF4E: FFree1Var var_BC = ""
  loc_C3FF51: LitStr "    <br>"
  loc_C3FF54: LitStr "Municipalidad de Guaymallén"
  loc_C3FF57: ConcatStr
  loc_C3FF58: FStStrNoPop var_A8
  loc_C3FF5B: LitStr "</p>"
  loc_C3FF5E: ConcatStr
  loc_C3FF5F: CVarStr var_BC
  loc_C3FF62: PopAdLdVar
  loc_C3FF63: FLdPr Me
  loc_C3FF66: MemLdRfVar from_stack_1.global_60
  loc_C3FF69: LdPrVar
  loc_C3FF6B: LateMemCall
  loc_C3FF71: FFree1Str var_A8
  loc_C3FF74: FFree1Var var_BC = ""
  loc_C3FF77: LitStr "    <p>"
  loc_C3FF7A: FLdRfVar var_A8
  loc_C3FF7D: FLdPr Me
  loc_C3FF80:  = Me.Caption
  loc_C3FF85: ILdRf var_A8
  loc_C3FF88: ConcatStr
  loc_C3FF89: FStStrNoPop var_AC
  loc_C3FF8C: LitStr "</p></th>"
  loc_C3FF8F: ConcatStr
  loc_C3FF90: CVarStr var_BC
  loc_C3FF93: PopAdLdVar
  loc_C3FF94: FLdPr Me
  loc_C3FF97: MemLdRfVar from_stack_1.global_60
  loc_C3FF9A: LdPrVar
  loc_C3FF9C: LateMemCall
  loc_C3FFA2: FFreeStr var_A8 = ""
  loc_C3FFA9: FFree1Var var_BC = ""
  loc_C3FFAC: LitVarStr var_94, "  </tr>"
  loc_C3FFB1: PopAdLdVar
  loc_C3FFB2: FLdPr Me
  loc_C3FFB5: MemLdRfVar from_stack_1.global_60
  loc_C3FFB8: LdPrVar
  loc_C3FFBA: LateMemCall
  loc_C3FFC0: LitVarStr var_94, "  <tr>"
  loc_C3FFC5: PopAdLdVar
  loc_C3FFC6: FLdPr Me
  loc_C3FFC9: MemLdRfVar from_stack_1.global_60
  loc_C3FFCC: LdPrVar
  loc_C3FFCE: LateMemCall
  loc_C3FFD4: LitVarStr var_94, "    <th colspan=""3"" align=""center"" valign=""middle""><hr></th>"
  loc_C3FFD9: PopAdLdVar
  loc_C3FFDA: FLdPr Me
  loc_C3FFDD: MemLdRfVar from_stack_1.global_60
  loc_C3FFE0: LdPrVar
  loc_C3FFE2: LateMemCall
  loc_C3FFE8: LitVarStr var_94, "  </tr>"
  loc_C3FFED: PopAdLdVar
  loc_C3FFEE: FLdPr Me
  loc_C3FFF1: MemLdRfVar from_stack_1.global_60
  loc_C3FFF4: LdPrVar
  loc_C3FFF6: LateMemCall
  loc_C3FFFC: LitVarStr var_94, "  <tr valign=""top"" class=""Normal"">"
  loc_C40001: PopAdLdVar
  loc_C40002: FLdPr Me
  loc_C40005: MemLdRfVar from_stack_1.global_60
  loc_C40008: LdPrVar
  loc_C4000A: LateMemCall
  loc_C40010: FLdRfVar var_BE
  loc_C40013: FLdPr Me
  loc_C40016: VCallAd Control_ID_ActivasOpt
  loc_C40019: FStAdFunc var_D0
  loc_C4001C: FLdPr var_D0
  loc_C4001F:  = Me.Value
  loc_C40024: FLdRfVar var_126
  loc_C40027: FLdPr Me
  loc_C4002A: VCallAd Control_ID_PagadaOpt
  loc_C4002D: FStAdFunc var_124
  loc_C40030: FLdPr var_124
  loc_C40033:  = Me.Value
  loc_C40038: FLdRfVar var_19E
  loc_C4003B: FLdPr Me
  loc_C4003E: VCallAd Control_ID_SuspendidasOpt
  loc_C40041: FStAdFunc var_19C
  loc_C40044: FLdPr var_19C
  loc_C40047:  = Me.Value
  loc_C4004C: FLdRfVar var_216
  loc_C4004F: FLdPr Me
  loc_C40052: VCallAd Control_ID_CanceladasOpt
  loc_C40055: FStAdFunc var_214
  loc_C40058: FLdPr var_214
  loc_C4005B:  = Me.Value
  loc_C40060: LitVarStr var_110, "    <td align=""left""><strong>Estado: </strong>"
  loc_C40065: LitVarStr var_E0, vbNullString
  loc_C4006A: FStVarCopyObj var_F0
  loc_C4006D: FLdRfVar var_F0
  loc_C40070: LitVarStr var_A4, "Activas"
  loc_C40075: FStVarCopyObj var_BC
  loc_C40078: FLdRfVar var_BC
  loc_C4007B: FLdI2 var_BE
  loc_C4007E: LitI2_Byte &HFF
  loc_C40080: EqI2
  loc_C40081: CVarBoolI2 var_94
  loc_C40085: FLdRfVar var_100
  loc_C40088: ImpAdCallFPR4  = IIf(, , )
  loc_C4008D: FLdRfVar var_100
  loc_C40090: ConcatVar var_120
  loc_C40094: LitVarStr var_168, vbNullString
  loc_C40099: FStVarCopyObj var_178
  loc_C4009C: FLdRfVar var_178
  loc_C4009F: LitVarStr var_148, "Pagada (Los gastos del apremio)"
  loc_C400A4: FStVarCopyObj var_158
  loc_C400A7: FLdRfVar var_158
  loc_C400AA: FLdI2 var_126
  loc_C400AD: LitI2_Byte &HFF
  loc_C400AF: EqI2
  loc_C400B0: CVarBoolI2 var_138
  loc_C400B4: FLdRfVar var_188
  loc_C400B7: ImpAdCallFPR4  = IIf(, , )
  loc_C400BC: FLdRfVar var_188
  loc_C400BF: ConcatVar var_198
  loc_C400C3: LitVarStr var_1E0, vbNullString
  loc_C400C8: FStVarCopyObj var_1F0
  loc_C400CB: FLdRfVar var_1F0
  loc_C400CE: LitVarStr var_1C0, "Suspendias"
  loc_C400D3: FStVarCopyObj var_1D0
  loc_C400D6: FLdRfVar var_1D0
  loc_C400D9: FLdI2 var_19E
  loc_C400DC: LitI2_Byte &HFF
  loc_C400DE: EqI2
  loc_C400DF: CVarBoolI2 var_1B0
  loc_C400E3: FLdRfVar var_200
  loc_C400E6: ImpAdCallFPR4  = IIf(, , )
  loc_C400EB: FLdRfVar var_200
  loc_C400EE: ConcatVar var_210
  loc_C400F2: LitVarStr var_258, vbNullString
  loc_C400F7: FStVarCopyObj var_268
  loc_C400FA: FLdRfVar var_268
  loc_C400FD: LitVarStr var_238, "Canceladas"
  loc_C40102: FStVarCopyObj var_248
  loc_C40105: FLdRfVar var_248
  loc_C40108: FLdI2 var_216
  loc_C4010B: LitI2_Byte &HFF
  loc_C4010D: EqI2
  loc_C4010E: CVarBoolI2 var_228
  loc_C40112: FLdRfVar var_278
  loc_C40115: ImpAdCallFPR4  = IIf(, , )
  loc_C4011A: FLdRfVar var_278
  loc_C4011D: ConcatVar var_288
  loc_C40121: LitVarStr var_298, "</td>"
  loc_C40126: ConcatVar var_2A8
  loc_C4012A: PopAdLdVar
  loc_C4012B: FLdPr Me
  loc_C4012E: MemLdRfVar from_stack_1.global_60
  loc_C40131: LdPrVar
  loc_C40133: LateMemCall
  loc_C40139: FFreeAd var_D0 = "": var_124 = "": var_19C = ""
  loc_C40144: FFreeVar var_94 = "": var_BC = "": var_F0 = "": var_100 = "": var_138 = "": var_158 = "": var_178 = "": var_120 = "": var_188 = "": var_1B0 = "": var_1D0 = "": var_1F0 = "": var_198 = "": var_200 = "": var_228 = "": var_248 = "": var_268 = "": var_210 = "": var_278 = "": var_288 = ""
  loc_C40171: LitVarStr var_94, "  </tr>"
  loc_C40176: PopAdLdVar
  loc_C40177: FLdPr Me
  loc_C4017A: MemLdRfVar from_stack_1.global_60
  loc_C4017D: LdPrVar
  loc_C4017F: LateMemCall
  loc_C40185: LitVarStr var_94, "  <tr valign=""top"" class=""Normal"">"
  loc_C4018A: PopAdLdVar
  loc_C4018B: FLdPr Me
  loc_C4018E: MemLdRfVar from_stack_1.global_60
  loc_C40191: LdPrVar
  loc_C40193: LateMemCall
  loc_C40199: FLdPr Me
  loc_C4019C: VCallAd Control_ID_CodiInjuDesdeMsk
  loc_C4019F: FStAdFunc var_D0
  loc_C401A2: FLdPr var_D0
  loc_C401A5: LateIdLdVar var_BC DispID_22 0
  loc_C401AC: PopAd
  loc_C401AE: FLdPr Me
  loc_C401B1: VCallAd Control_ID_CodiInjuDesdeMsk
  loc_C401B4: FStAdFunc var_124
  loc_C401B7: FLdPr var_124
  loc_C401BA: LateIdLdVar var_F0 DispID_22 0
  loc_C401C1: PopAd
  loc_C401C3: LitVarStr var_E0, "    <td align=""left""><strong>"
  loc_C401C8: LitVarStr var_A4, vbNullString
  loc_C401CD: FStVarCopyObj var_120
  loc_C401D0: FLdRfVar var_120
  loc_C401D3: LitStr "Desde Inst. Jud.: </strong>"
  loc_C401D6: FLdRfVar var_F0
  loc_C401D9: CStrVarTmp
  loc_C401DA: FStStrNoPop var_AC
  loc_C401DD: ConcatStr
  loc_C401DE: CVarStr var_100
  loc_C401E1: FLdRfVar var_BC
  loc_C401E4: CStrVarTmp
  loc_C401E5: FStStrNoPop var_A8
  loc_C401E8: CR8Str
  loc_C401EA: LitI2_Byte 0
  loc_C401EC: CR8I2
  loc_C401ED: NeR8
  loc_C401EE: CVarBoolI2 var_94
  loc_C401F2: FLdRfVar var_158
  loc_C401F5: ImpAdCallFPR4  = IIf(, , )
  loc_C401FA: FLdRfVar var_158
  loc_C401FD: ConcatVar var_178
  loc_C40201: LitVarStr var_110, "</td>"
  loc_C40206: ConcatVar var_188
  loc_C4020A: PopAdLdVar
  loc_C4020B: FLdPr Me
  loc_C4020E: MemLdRfVar from_stack_1.global_60
  loc_C40211: LdPrVar
  loc_C40213: LateMemCall
  loc_C40219: FFreeStr var_A8 = ""
  loc_C40220: FFreeAd var_D0 = ""
  loc_C40227: FFreeVar var_BC = "": var_F0 = "": var_94 = "": var_100 = "": var_120 = "": var_158 = "": var_178 = ""
  loc_C4023A: LitVarStr var_94, "  </tr>"
  loc_C4023F: PopAdLdVar
  loc_C40240: FLdPr Me
  loc_C40243: MemLdRfVar from_stack_1.global_60
  loc_C40246: LdPrVar
  loc_C40248: LateMemCall
  loc_C4024E: LitVarStr var_94, "  <tr valign=""top"" class=""Normal"">"
  loc_C40253: PopAdLdVar
  loc_C40254: FLdPr Me
  loc_C40257: MemLdRfVar from_stack_1.global_60
  loc_C4025A: LdPrVar
  loc_C4025C: LateMemCall
  loc_C40262: FLdPr Me
  loc_C40265: VCallAd Control_ID_CodiInjuHastaMsk
  loc_C40268: FStAdFunc var_D0
  loc_C4026B: FLdPr var_D0
  loc_C4026E: LateIdLdVar var_BC DispID_22 0
  loc_C40275: PopAd
  loc_C40277: FLdPr Me
  loc_C4027A: VCallAd Control_ID_CodiInjuHastaMsk
  loc_C4027D: FStAdFunc var_124
  loc_C40280: FLdPr var_124
  loc_C40283: LateIdLdVar var_F0 DispID_22 0
  loc_C4028A: PopAd
  loc_C4028C: LitVarStr var_E0, "    <td align=""left""><strong>"
  loc_C40291: LitVarStr var_A4, vbNullString
  loc_C40296: FStVarCopyObj var_120
  loc_C40299: FLdRfVar var_120
  loc_C4029C: LitStr "Hasta Inst. Jud.: </strong>"
  loc_C4029F: FLdRfVar var_F0
  loc_C402A2: CStrVarTmp
  loc_C402A3: FStStrNoPop var_AC
  loc_C402A6: ConcatStr
  loc_C402A7: CVarStr var_100
  loc_C402AA: FLdRfVar var_BC
  loc_C402AD: CStrVarTmp
  loc_C402AE: FStStrNoPop var_A8
  loc_C402B1: CR8Str
  loc_C402B3: LitI2_Byte 0
  loc_C402B5: CR8I2
  loc_C402B6: NeR8
  loc_C402B7: CVarBoolI2 var_94
  loc_C402BB: FLdRfVar var_158
  loc_C402BE: ImpAdCallFPR4  = IIf(, , )
  loc_C402C3: FLdRfVar var_158
  loc_C402C6: ConcatVar var_178
  loc_C402CA: LitVarStr var_110, "</td>"
  loc_C402CF: ConcatVar var_188
  loc_C402D3: PopAdLdVar
  loc_C402D4: FLdPr Me
  loc_C402D7: MemLdRfVar from_stack_1.global_60
  loc_C402DA: LdPrVar
  loc_C402DC: LateMemCall
  loc_C402E2: FFreeStr var_A8 = ""
  loc_C402E9: FFreeAd var_D0 = ""
  loc_C402F0: FFreeVar var_BC = "": var_F0 = "": var_94 = "": var_100 = "": var_120 = "": var_158 = "": var_178 = ""
  loc_C40303: LitVarStr var_94, "  </tr>"
  loc_C40308: PopAdLdVar
  loc_C40309: FLdPr Me
  loc_C4030C: MemLdRfVar from_stack_1.global_60
  loc_C4030F: LdPrVar
  loc_C40311: LateMemCall
  loc_C40317: LitVarStr var_94, "  <tr valign=""top"" class=""Normal"">"
  loc_C4031C: PopAdLdVar
  loc_C4031D: FLdPr Me
  loc_C40320: MemLdRfVar from_stack_1.global_60
  loc_C40323: LdPrVar
  loc_C40325: LateMemCall
  loc_C4032B: FLdPr Me
  loc_C4032E: VCallAd Control_ID_CodiRecaDesdeMsk
  loc_C40331: FStAdFunc var_D0
  loc_C40334: FLdPr var_D0
  loc_C40337: LateIdLdVar var_BC DispID_22 0
  loc_C4033E: PopAd
  loc_C40340: FLdPr Me
  loc_C40343: VCallAd Control_ID_CodiRecaDesdeMsk
  loc_C40346: FStAdFunc var_124
  loc_C40349: FLdPr var_124
  loc_C4034C: LateIdLdVar var_F0 DispID_22 0
  loc_C40353: PopAd
  loc_C40355: LitVarStr var_E0, "    <td align=""left""><strong>"
  loc_C4035A: LitVarStr var_A4, vbNullString
  loc_C4035F: FStVarCopyObj var_120
  loc_C40362: FLdRfVar var_120
  loc_C40365: LitStr "Desde Cod. Reca.: </strong>"
  loc_C40368: FLdRfVar var_F0
  loc_C4036B: CStrVarTmp
  loc_C4036C: FStStrNoPop var_AC
  loc_C4036F: ConcatStr
  loc_C40370: CVarStr var_100
  loc_C40373: FLdRfVar var_BC
  loc_C40376: CStrVarTmp
  loc_C40377: FStStrNoPop var_A8
  loc_C4037A: CR8Str
  loc_C4037C: LitI2_Byte 0
  loc_C4037E: CR8I2
  loc_C4037F: NeR8
  loc_C40380: CVarBoolI2 var_94
  loc_C40384: FLdRfVar var_158
  loc_C40387: ImpAdCallFPR4  = IIf(, , )
  loc_C4038C: FLdRfVar var_158
  loc_C4038F: ConcatVar var_178
  loc_C40393: LitVarStr var_110, "</td>"
  loc_C40398: ConcatVar var_188
  loc_C4039C: PopAdLdVar
  loc_C4039D: FLdPr Me
  loc_C403A0: MemLdRfVar from_stack_1.global_60
  loc_C403A3: LdPrVar
  loc_C403A5: LateMemCall
  loc_C403AB: FFreeStr var_A8 = ""
  loc_C403B2: FFreeAd var_D0 = ""
  loc_C403B9: FFreeVar var_BC = "": var_F0 = "": var_94 = "": var_100 = "": var_120 = "": var_158 = "": var_178 = ""
  loc_C403CC: LitVarStr var_94, "  </tr>"
  loc_C403D1: PopAdLdVar
  loc_C403D2: FLdPr Me
  loc_C403D5: MemLdRfVar from_stack_1.global_60
  loc_C403D8: LdPrVar
  loc_C403DA: LateMemCall
  loc_C403E0: LitVarStr var_94, "  <tr valign=""top"" class=""Normal"">"
  loc_C403E5: PopAdLdVar
  loc_C403E6: FLdPr Me
  loc_C403E9: MemLdRfVar from_stack_1.global_60
  loc_C403EC: LdPrVar
  loc_C403EE: LateMemCall
  loc_C403F4: FLdPr Me
  loc_C403F7: VCallAd Control_ID_CodiRecaHastaMsk
  loc_C403FA: FStAdFunc var_D0
  loc_C403FD: FLdPr var_D0
  loc_C40400: LateIdLdVar var_BC DispID_22 0
  loc_C40407: PopAd
  loc_C40409: FLdPr Me
  loc_C4040C: VCallAd Control_ID_CodiRecaHastaMsk
  loc_C4040F: FStAdFunc var_124
  loc_C40412: FLdPr var_124
  loc_C40415: LateIdLdVar var_F0 DispID_22 0
  loc_C4041C: PopAd
  loc_C4041E: LitVarStr var_E0, "    <td align=""left""><strong>"
  loc_C40423: LitVarStr var_A4, vbNullString
  loc_C40428: FStVarCopyObj var_120
  loc_C4042B: FLdRfVar var_120
  loc_C4042E: LitStr "Hasta Cod. Reca.: </strong>"
  loc_C40431: FLdRfVar var_F0
  loc_C40434: CStrVarTmp
  loc_C40435: FStStrNoPop var_AC
  loc_C40438: ConcatStr
  loc_C40439: CVarStr var_100
  loc_C4043C: FLdRfVar var_BC
  loc_C4043F: CStrVarTmp
  loc_C40440: FStStrNoPop var_A8
  loc_C40443: CR8Str
  loc_C40445: LitI2_Byte 0
  loc_C40447: CR8I2
  loc_C40448: NeR8
  loc_C40449: CVarBoolI2 var_94
  loc_C4044D: FLdRfVar var_158
  loc_C40450: ImpAdCallFPR4  = IIf(, , )
  loc_C40455: FLdRfVar var_158
  loc_C40458: ConcatVar var_178
  loc_C4045C: LitVarStr var_110, "</td>"
  loc_C40461: ConcatVar var_188
  loc_C40465: PopAdLdVar
  loc_C40466: FLdPr Me
  loc_C40469: MemLdRfVar from_stack_1.global_60
  loc_C4046C: LdPrVar
  loc_C4046E: LateMemCall
  loc_C40474: FFreeStr var_A8 = ""
  loc_C4047B: FFreeAd var_D0 = ""
  loc_C40482: FFreeVar var_BC = "": var_F0 = "": var_94 = "": var_100 = "": var_120 = "": var_158 = "": var_178 = ""
  loc_C40495: LitVarStr var_94, "  </tr>"
  loc_C4049A: PopAdLdVar
  loc_C4049B: FLdPr Me
  loc_C4049E: MemLdRfVar from_stack_1.global_60
  loc_C404A1: LdPrVar
  loc_C404A3: LateMemCall
  loc_C404A9: LitVarStr var_94, "  <tr valign=""top"" class=""Normal"">"
  loc_C404AE: PopAdLdVar
  loc_C404AF: FLdPr Me
  loc_C404B2: MemLdRfVar from_stack_1.global_60
  loc_C404B5: LdPrVar
  loc_C404B7: LateMemCall
  loc_C404BD: FLdPr Me
  loc_C404C0: VCallAd Control_ID_CodiOficMsk
  loc_C404C3: FStAdFunc var_D0
  loc_C404C6: FLdPr var_D0
  loc_C404C9: LateIdLdVar var_BC DispID_22 0
  loc_C404D0: PopAd
  loc_C404D2: FLdPr Me
  loc_C404D5: VCallAd Control_ID_CodiOficMsk
  loc_C404D8: FStAdFunc var_124
  loc_C404DB: FLdPr var_124
  loc_C404DE: LateIdLdVar var_F0 DispID_22 0
  loc_C404E5: PopAd
  loc_C404E7: LitVarStr var_E0, "    <td align=""left""><strong>"
  loc_C404EC: LitVarStr var_A4, vbNullString
  loc_C404F1: FStVarCopyObj var_120
  loc_C404F4: FLdRfVar var_120
  loc_C404F7: LitStr "Oficina: </strong>"
  loc_C404FA: FLdRfVar var_F0
  loc_C404FD: CStrVarTmp
  loc_C404FE: FStStrNoPop var_AC
  loc_C40501: ConcatStr
  loc_C40502: CVarStr var_100
  loc_C40505: FLdRfVar var_BC
  loc_C40508: CStrVarTmp
  loc_C40509: FStStrNoPop var_A8
  loc_C4050C: CR8Str
  loc_C4050E: LitI2_Byte 0
  loc_C40510: CR8I2
  loc_C40511: NeR8
  loc_C40512: CVarBoolI2 var_94
  loc_C40516: FLdRfVar var_158
  loc_C40519: ImpAdCallFPR4  = IIf(, , )
  loc_C4051E: FLdRfVar var_158
  loc_C40521: ConcatVar var_178
  loc_C40525: LitVarStr var_110, "</td>"
  loc_C4052A: ConcatVar var_188
  loc_C4052E: PopAdLdVar
  loc_C4052F: FLdPr Me
  loc_C40532: MemLdRfVar from_stack_1.global_60
  loc_C40535: LdPrVar
  loc_C40537: LateMemCall
  loc_C4053D: FFreeStr var_A8 = ""
  loc_C40544: FFreeAd var_D0 = ""
  loc_C4054B: FFreeVar var_BC = "": var_F0 = "": var_94 = "": var_100 = "": var_120 = "": var_158 = "": var_178 = ""
  loc_C4055E: LitVarStr var_94, "  </tr>"
  loc_C40563: PopAdLdVar
  loc_C40564: FLdPr Me
  loc_C40567: MemLdRfVar from_stack_1.global_60
  loc_C4056A: LdPrVar
  loc_C4056C: LateMemCall
  loc_C40572: LitVarStr var_94, "</table>"
  loc_C40577: PopAdLdVar
  loc_C40578: FLdPr Me
  loc_C4057B: MemLdRfVar from_stack_1.global_60
  loc_C4057E: LdPrVar
  loc_C40580: LateMemCall
  loc_C40586: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_C4058B: PopAdLdVar
  loc_C4058C: FLdPr Me
  loc_C4058F: MemLdRfVar from_stack_1.global_60
  loc_C40592: LdPrVar
  loc_C40594: LateMemCall
  loc_C4059A: LitVarStr var_94, "  <thead>"
  loc_C4059F: PopAdLdVar
  loc_C405A0: FLdPr Me
  loc_C405A3: MemLdRfVar from_stack_1.global_60
  loc_C405A6: LdPrVar
  loc_C405A8: LateMemCall
  loc_C405AE: LitI2_Byte &HFF
  loc_C405B0: ImpAdStI2 MemVar_D93C88
  loc_C405B3: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_C405B8: PopAdLdVar
  loc_C405B9: FLdPr Me
  loc_C405BC: MemLdRfVar from_stack_1.global_60
  loc_C405BF: LdPrVar
  loc_C405C1: LateMemCall
  loc_C405C7: LitVarStr var_94, "    <th>Nro de Boleta</th>"
  loc_C405CC: PopAdLdVar
  loc_C405CD: FLdPr Me
  loc_C405D0: MemLdRfVar from_stack_1.global_60
  loc_C405D3: LdPrVar
  loc_C405D5: LateMemCall
  loc_C405DB: LitVarStr var_94, "    <th>Nro de Juicio</th>"
  loc_C405E0: PopAdLdVar
  loc_C405E1: FLdPr Me
  loc_C405E4: MemLdRfVar from_stack_1.global_60
  loc_C405E7: LdPrVar
  loc_C405E9: LateMemCall
  loc_C405EF: LitVarStr var_94, "    <th>Fecha de Alta</th>"
  loc_C405F4: PopAdLdVar
  loc_C405F5: FLdPr Me
  loc_C405F8: MemLdRfVar from_stack_1.global_60
  loc_C405FB: LdPrVar
  loc_C405FD: LateMemCall
  loc_C40603: LitVarStr var_94, "    <th>Apellido y Nombre</th>"
  loc_C40608: PopAdLdVar
  loc_C40609: FLdPr Me
  loc_C4060C: MemLdRfVar from_stack_1.global_60
  loc_C4060F: LdPrVar
  loc_C40611: LateMemCall
  loc_C40617: LitVarStr var_94, "    <th>Of.</th>"
  loc_C4061C: PopAdLdVar
  loc_C4061D: FLdPr Me
  loc_C40620: MemLdRfVar from_stack_1.global_60
  loc_C40623: LdPrVar
  loc_C40625: LateMemCall
  loc_C4062B: LitVarStr var_94, "    <th>Cuenta</th>"
  loc_C40630: PopAdLdVar
  loc_C40631: FLdPr Me
  loc_C40634: MemLdRfVar from_stack_1.global_60
  loc_C40637: LdPrVar
  loc_C40639: LateMemCall
  loc_C4063F: LitVarStr var_94, "    <th>Cod. Rec</th>"
  loc_C40644: PopAdLdVar
  loc_C40645: FLdPr Me
  loc_C40648: MemLdRfVar from_stack_1.global_60
  loc_C4064B: LdPrVar
  loc_C4064D: LateMemCall
  loc_C40653: LitVarStr var_94, "    <th>Nombre del Recaudador</th>"
  loc_C40658: PopAdLdVar
  loc_C40659: FLdPr Me
  loc_C4065C: MemLdRfVar from_stack_1.global_60
  loc_C4065F: LdPrVar
  loc_C40661: LateMemCall
  loc_C40667: LitVarStr var_94, "    <th>Inst.</th>"
  loc_C4066C: PopAdLdVar
  loc_C4066D: FLdPr Me
  loc_C40670: MemLdRfVar from_stack_1.global_60
  loc_C40673: LdPrVar
  loc_C40675: LateMemCall
  loc_C4067B: LitVarStr var_94, "    <th>Fecha Inst.</th>"
  loc_C40680: PopAdLdVar
  loc_C40681: FLdPr Me
  loc_C40684: MemLdRfVar from_stack_1.global_60
  loc_C40687: LdPrVar
  loc_C40689: LateMemCall
  loc_C4068F: LitVarStr var_94, "    <th>Importe</th>"
  loc_C40694: PopAdLdVar
  loc_C40695: FLdPr Me
  loc_C40698: MemLdRfVar from_stack_1.global_60
  loc_C4069B: LdPrVar
  loc_C4069D: LateMemCall
  loc_C406A3: LitVarStr var_94, "  </tr>"
  loc_C406A8: PopAdLdVar
  loc_C406A9: FLdPr Me
  loc_C406AC: MemLdRfVar from_stack_1.global_60
  loc_C406AF: LdPrVar
  loc_C406B1: LateMemCall
  loc_C406B7: LitVarStr var_94, "  </thead>"
  loc_C406BC: PopAdLdVar
  loc_C406BD: FLdPr Me
  loc_C406C0: MemLdRfVar from_stack_1.global_60
  loc_C406C3: LdPrVar
  loc_C406C5: LateMemCall
  loc_C406CB: ExitProcHresult
End Function

Private Function Proc_225_28_A0D408() 'A0D408
  'Data Table: 4F89CC
  loc_A0D3C8: LitVarStr var_94, "</table>"
  loc_A0D3CD: PopAdLdVar
  loc_A0D3CE: FLdPr Me
  loc_A0D3D1: MemLdRfVar from_stack_1.global_60
  loc_A0D3D4: LdPrVar
  loc_A0D3D6: LateMemCall
  loc_A0D3DC: LitVarStr var_94, "</body>"
  loc_A0D3E1: PopAdLdVar
  loc_A0D3E2: FLdPr Me
  loc_A0D3E5: MemLdRfVar from_stack_1.global_60
  loc_A0D3E8: LdPrVar
  loc_A0D3EA: LateMemCall
  loc_A0D3F0: LitVarStr var_94, "</html>"
  loc_A0D3F5: PopAdLdVar
  loc_A0D3F6: FLdPr Me
  loc_A0D3F9: MemLdRfVar from_stack_1.global_60
  loc_A0D3FC: LdPrVar
  loc_A0D3FE: LateMemCall
  loc_A0D404: ExitProcHresult
  loc_A0D405: Ary1StVar
End Function
