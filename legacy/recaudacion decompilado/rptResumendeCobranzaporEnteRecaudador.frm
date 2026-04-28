VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptResumendeCobranzaporEnteRecaudador
  Caption = "Resumen de Cobranza por Ente Recaudador"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptResumendeCobranzaporEnteRecaudador.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 10272
  ClientHeight = 8304
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
    Top = 8052
    Width = 10272
    Height = 252
    TabIndex = 31
    OleObjectBlob = "rptResumendeCobranzaporEnteRecaudador.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 8520
    Top = 6960
    Width = 855
    Height = 735
    TabIndex = 15
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
    Picture = "rptResumendeCobranzaporEnteRecaudador.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptResumendeCobranzaporEnteRecaudador.frx":0B9C
    Left = 9480
    Top = 7080
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 4320
    Top = 6720
    Width = 3495
    Height = 1215
    TabIndex = 30
    Begin VB.CommandButton cmdXLS
      Caption = "&XLS"
      Left = 1800
      Top = 360
      Width = 1335
      Height = 615
      TabIndex = 36
    End
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 615
      TabIndex = 13
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 6720
    Width = 4095
    Height = 1215
    TabIndex = 29
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1920
      Top = 360
      Width = 2055
      Height = 615
      TabIndex = 12
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1695
      Height = 615
      TabIndex = 11
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 10092
    Height = 6612
    TabIndex = 16
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 7,8
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.Frame PeriodoFra
      Caption = "Número de Grupo"
      Left = 0
      Top = 1920
      Width = 2652
      Height = 1092
      TabIndex = 37
      Begin MSMask.MaskEdBox NumerodeGrupoMsk
        Left = 1200
        Top = 480
        Width = 732
        Height = 360
        TabIndex = 38
        OleObjectBlob = "rptResumendeCobranzaporEnteRecaudador.frx":0C00
      End
      Begin VB.Label Label3
        Caption = "Grupo:"
        Left = 360
        Top = 480
        Width = 720
        Height = 300
        TabIndex = 39
        AutoSize = -1  'True
      End
    End
    Begin VB.Frame Frame6
      Caption = "Ordenar por"
      Left = 120
      Top = 4680
      Width = 8175
      Height = 855
      TabIndex = 26
      Begin VB.OptionButton CodiConcOpt
        Caption = "Código"
        Left = 2040
        Top = 360
        Width = 1335
        Height = 330
        TabIndex = 6
      End
      Begin VB.OptionButton DetaConcOpt
        Caption = "Detalle"
        Left = 4200
        Top = 360
        Width = 1095
        Height = 330
        TabIndex = 7
      End
    End
    Begin VB.Frame Frame5
      Caption = "Agrupar por"
      Left = 120
      Top = 5640
      Width = 8175
      Height = 855
      TabIndex = 27
      Begin VB.OptionButton EnteOpt
        Caption = "Ente Recaudador"
        Left = 1440
        Top = 360
        Width = 2295
        Height = 300
        TabIndex = 8
      End
      Begin VB.OptionButton BoletoOpt
        Caption = "Boleto"
        Left = 6120
        Top = 360
        Width = 1095
        Height = 300
        TabIndex = 10
      End
      Begin VB.OptionButton ConceptoOpt
        Caption = "Concepto"
        Left = 4200
        Top = 360
        Width = 1455
        Height = 300
        TabIndex = 9
      End
    End
    Begin VB.Frame Frame4
      Caption = "Concepto"
      Left = 120
      Top = 3000
      Width = 8175
      Height = 1575
      TabIndex = 21
      Begin MSMask.MaskEdBox CodiConcDesdeMsk
        Left = 1080
        Top = 480
        Width = 1215
        Height = 360
        TabIndex = 4
        OleObjectBlob = "rptResumendeCobranzaporEnteRecaudador.frx":0C90
      End
      Begin MSMask.MaskEdBox CodiConcHastaMsk
        Left = 1080
        Top = 960
        Width = 1215
        Height = 360
        TabIndex = 5
        OleObjectBlob = "rptResumendeCobranzaporEnteRecaudador.frx":0D28
      End
      Begin VB.Label DetaConcHastaLbl
        Left = 2400
        Top = 960
        Width = 5655
        Height = 375
        TabIndex = 25
        BorderStyle = 1 'Fixed Single
      End
      Begin VB.Label DetaConcDesdeLbl
        Left = 2400
        Top = 480
        Width = 5655
        Height = 375
        TabIndex = 23
        BorderStyle = 1 'Fixed Single
      End
      Begin VB.Label Label2
        Caption = "Desde:"
        Left = 240
        Top = 480
        Width = 765
        Height = 300
        TabIndex = 22
        AutoSize = -1  'True
        BeginProperty Font
          Name = "MS Sans Serif"
          Size = 12
          Charset = 0
          Weight = 400
          Underline = -1 'True
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
      Begin VB.Label Label1
        Caption = "Hasta:"
        Left = 300
        Top = 960
        Width = 705
        Height = 300
        TabIndex = 24
        AutoSize = -1  'True
        BeginProperty Font
          Name = "MS Sans Serif"
          Size = 12
          Charset = 0
          Weight = 400
          Underline = -1 'True
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
    End
    Begin VB.Frame FechaEmisionFra
      Caption = "Fecha de Envío"
      Left = 120
      Top = 240
      Width = 2535
      Height = 1575
      TabIndex = 17
      Begin MSMask.MaskEdBox FeenAcpaDesdeMsk
        Left = 960
        Top = 480
        Width = 1335
        Height = 360
        TabIndex = 0
        OleObjectBlob = "rptResumendeCobranzaporEnteRecaudador.frx":0DC0
      End
      Begin MSMask.MaskEdBox FeenAcpaHastaMsk
        Left = 960
        Top = 1005
        Width = 1335
        Height = 360
        TabIndex = 1
        OleObjectBlob = "rptResumendeCobranzaporEnteRecaudador.frx":0E70
      End
      Begin VB.Label Label6
        Caption = "Desde:"
        Left = 120
        Top = 480
        Width = 765
        Height = 300
        TabIndex = 18
        AutoSize = -1  'True
        BeginProperty Font
          Name = "MS Sans Serif"
          Size = 12
          Charset = 0
          Weight = 400
          Underline = -1 'True
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
      Begin VB.Label Label5
        Caption = "Hasta:"
        Left = 180
        Top = 1005
        Width = 705
        Height = 300
        TabIndex = 19
        AutoSize = -1  'True
        BeginProperty Font
          Name = "MS Sans Serif"
          Size = 12
          Charset = 0
          Weight = 400
          Underline = -1 'True
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
    End
    Begin VB.Frame EnteFra
      Caption = "Ente Recaudador"
      Left = 2880
      Top = 240
      Width = 5412
      Height = 1575
      TabIndex = 20
      Begin MSMask.MaskEdBox CodiEnreDesdeMsk
        Left = 960
        Top = 480
        Width = 615
        Height = 360
        TabIndex = 2
        OleObjectBlob = "rptResumendeCobranzaporEnteRecaudador.frx":0F20
      End
      Begin MSMask.MaskEdBox CodiEnreHastaMsk
        Left = 960
        Top = 960
        Width = 615
        Height = 360
        TabIndex = 3
        OleObjectBlob = "rptResumendeCobranzaporEnteRecaudador.frx":0FAE
      End
      Begin VB.Label Label8
        Caption = "Hasta:"
        Left = 180
        Top = 960
        Width = 705
        Height = 300
        TabIndex = 35
        AutoSize = -1  'True
        BeginProperty Font
          Name = "MS Sans Serif"
          Size = 12
          Charset = 0
          Weight = 400
          Underline = -1 'True
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
      Begin VB.Label Label7
        Caption = "Desde:"
        Left = 120
        Top = 480
        Width = 765
        Height = 300
        TabIndex = 34
        AutoSize = -1  'True
        BeginProperty Font
          Name = "MS Sans Serif"
          Size = 12
          Charset = 0
          Weight = 400
          Underline = -1 'True
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
      Begin VB.Label DetaEnreDesdeLbl
        Left = 1680
        Top = 480
        Width = 3612
        Height = 372
        TabIndex = 33
        BorderStyle = 1 'Fixed Single
      End
      Begin VB.Label DetaEnreHastaLbl
        Left = 1680
        Top = 960
        Width = 3612
        Height = 372
        TabIndex = 32
        BorderStyle = 1 'Fixed Single
      End
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 8400
      Top = 360
      Width = 1575
      Height = 615
      TabIndex = 14
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 8760
    Top = 7200
    Width = 492
    Height = 252
    TabStop = 0   'False
    TabIndex = 28
    OleObjectBlob = "rptResumendeCobranzaporEnteRecaudador.frx":103C
  End
End

Attribute VB_Name = "rptResumendeCobranzaporEnteRecaudador"

Public bLogos As Boolean
Public bGenerado As Boolean

Private Type UDT_1_00560A88
  bStruc(60) As Byte ' String fields: 15
End Type

Private Type UDT_2_00567C6C
  bStruc(84) As Byte ' String fields: 7
End Type

Private Type UDT_3_00567CC8
  bStruc(72) As Byte ' String fields: 4
End Type


Private Sub cmdXLS_Click() '9DEB6C
  'Data Table: 506598
  loc_9DEB50: LitI2_Byte &HFF
  loc_9DEB52: LitI2_Byte 0
  loc_9DEB54: ILdRf Me
  loc_9DEB57: CastAd
  loc_9DEB5A: FStAdFunc var_88
  loc_9DEB5D: FLdRfVar var_88
  loc_9DEB60: ImpAdCallFPR4 Proc_57_4_AFAAC0(, , )
  loc_9DEB65: FFree1Ad var_88
  loc_9DEB68: ExitProcHresult
End Sub

Private Sub CodiConcDesdeMsk_UnknownEvent_0 '9C7F28
  'Data Table: 506598
  loc_9C7F14: FLdPr Me
  loc_9C7F17: VCallAd Control_ID_CodiConcDesdeMsk
  loc_9C7F1A: CVarAd
  loc_9C7F1E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C7F23: FFree1Var var_94 = ""
  loc_9C7F26: ExitProcHresult
End Sub

Private Function CodiConcDesdeMsk_UnknownEvent_8(arg_C) 'AE3F34
  'Data Table: 506598
  loc_AE3DDC: FLdPr Me
  loc_AE3DDF: VCallAd Control_ID_CodiConcDesdeMsk
  loc_AE3DE2: FStAdFunc var_88
  loc_AE3DE5: FLdPr var_88
  loc_AE3DE8: LateIdLdVar var_98 DispID_22 0
  loc_AE3DEF: CStrVarTmp
  loc_AE3DF0: FStStrNoPop var_9C
  loc_AE3DF3: LitStr vbNullString
  loc_AE3DF6: NeStr
  loc_AE3DF8: FFree1Str var_9C
  loc_AE3DFB: FFree1Ad var_88
  loc_AE3DFE: FFree1Var var_98 = ""
  loc_AE3E01: BranchF loc_AE3F33
  loc_AE3E04: FLdPr Me
  loc_AE3E07: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_AE3E0A: FStAdFunc var_88
  loc_AE3E0D: FLdPr var_88
  loc_AE3E10: LateIdLdVar var_98 DispID_15 0
  loc_AE3E17: CStrVarTmp
  loc_AE3E18: CVarStr var_AC
  loc_AE3E1B: FLdRfVar var_BC
  loc_AE3E1E: ImpAdCallFPR4  = Year()
  loc_AE3E23: FLdPr Me
  loc_AE3E26: VCallAd Control_ID_CodiConcDesdeMsk
  loc_AE3E29: FStAdFunc var_C0
  loc_AE3E2C: FLdPr var_C0
  loc_AE3E2F: LateIdLdVar var_D0 DispID_22 0
  loc_AE3E36: PopAd
  loc_AE3E38: LitI2_Byte 0
  loc_AE3E3A: LitI2_Byte 0
  loc_AE3E3C: LitI2_Byte 0
  loc_AE3E3E: LitI2_Byte 0
  loc_AE3E40: LitI2_Byte 0
  loc_AE3E42: LitI2_Byte 0
  loc_AE3E44: LitI2_Byte 0
  loc_AE3E46: LitI2_Byte 0
  loc_AE3E48: LitI2_Byte 0
  loc_AE3E4A: FLdRfVar var_D0
  loc_AE3E4D: CStrVarTmp
  loc_AE3E4E: FStStrNoPop var_9C
  loc_AE3E51: FLdRfVar var_BC
  loc_AE3E54: CI2Var
  loc_AE3E55: ImpAdCallI2 Proc_18_26_B7A828(, , , , , , , , , , )
  loc_AE3E5A: FStStrNoPop var_D4
  loc_AE3E5D: FLdPr Me
  loc_AE3E60: MemStStrCopy
  loc_AE3E64: FFreeStr var_9C = ""
  loc_AE3E6B: FFreeAd var_88 = ""
  loc_AE3E72: FFreeVar var_98 = "": var_AC = "": var_D0 = ""
  loc_AE3E7D: FLdPr Me
  loc_AE3E80: VCallAd Control_ID_CodiConcDesdeMsk
  loc_AE3E83: FStAdFuncNoPop
  loc_AE3E86: CastAd
  loc_AE3E89: FStAdFunc var_C0
  loc_AE3E8C: FLdRfVar var_C0
  loc_AE3E8F: FLdPr Me
  loc_AE3E92: MemLdStr global_104
  loc_AE3E95: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_AE3E9A: IStI2 arg_C
  loc_AE3E9D: FFreeAd var_88 = ""
  loc_AE3EA4: ILdI2 arg_C
  loc_AE3EA7: NotI4
  loc_AE3EA8: BranchF loc_AE3F1C
  loc_AE3EAB: FLdPr Me
  loc_AE3EAE: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_AE3EB1: FStAdFunc var_88
  loc_AE3EB4: FLdPr var_88
  loc_AE3EB7: LateIdLdVar var_98 DispID_15 0
  loc_AE3EBE: CStrVarTmp
  loc_AE3EBF: CVarStr var_AC
  loc_AE3EC2: FLdRfVar var_BC
  loc_AE3EC5: ImpAdCallFPR4  = Year()
  loc_AE3ECA: FLdPr Me
  loc_AE3ECD: VCallAd Control_ID_CodiConcDesdeMsk
  loc_AE3ED0: FStAdFunc var_C0
  loc_AE3ED3: FLdPr var_C0
  loc_AE3ED6: LateIdLdVar var_D0 DispID_22 0
  loc_AE3EDD: CStrVarTmp
  loc_AE3EDE: FStStrNoPop var_9C
  loc_AE3EE1: FLdRfVar var_BC
  loc_AE3EE4: CI2Var
  loc_AE3EE5: ImpAdCallI2 Proc_270_24_A92D50(, )
  loc_AE3EEA: FStStrNoPop var_D4
  loc_AE3EED: FLdPr Me
  loc_AE3EF0: VCallAd Control_ID_DetaConcDesdeLbl
  loc_AE3EF3: FStAdFunc var_D8
  loc_AE3EF6: FLdPr var_D8
  loc_AE3EF9: Me.Caption = from_stack_1
  loc_AE3EFE: FFreeStr var_9C = ""
  loc_AE3F05: FFreeAd var_88 = "": var_C0 = ""
  loc_AE3F0E: FFreeVar var_98 = "": var_AC = "": var_D0 = ""
  loc_AE3F19: Branch loc_AE3F33
  loc_AE3F1C: LitStr vbNullString
  loc_AE3F1F: FLdPr Me
  loc_AE3F22: VCallAd Control_ID_DetaConcDesdeLbl
  loc_AE3F25: FStAdFunc var_88
  loc_AE3F28: FLdPr var_88
  loc_AE3F2B: Me.Caption = from_stack_1
  loc_AE3F30: FFree1Ad var_88
  loc_AE3F33: ExitProcHresult
End Function

Private Sub CodiConcDesdeMsk_KeyPress(KeyAscii As Integer) 'AC4D44
  'Data Table: 506598
  loc_AC4C48: ILdI2 KeyAscii
  loc_AC4C4B: CI4UI1
  loc_AC4C4C: LitI4 &H20
  loc_AC4C51: EqI4
  loc_AC4C52: BranchF loc_AC4D41
  loc_AC4C55: FLdPr Me
  loc_AC4C58: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_AC4C5B: FStAdFunc var_88
  loc_AC4C5E: FLdPr var_88
  loc_AC4C61: LateIdLdVar var_98 DispID_15 0
  loc_AC4C68: CStrVarTmp
  loc_AC4C69: CVarStr var_A8
  loc_AC4C6C: FLdRfVar var_B8
  loc_AC4C6F: ImpAdCallFPR4  = Year()
  loc_AC4C74: FLdRfVar var_B8
  loc_AC4C77: CI2Var
  loc_AC4C78: ImpAdLdRf MemVar_D94354
  loc_AC4C7B: NewIfNullPr dlgBuscarConceptoTodos
  loc_AC4C7E: Call dlgBuscarConceptoTodos.iPeriInfoPut(from_stack_1v)
  loc_AC4C83: FFree1Ad var_88
  loc_AC4C86: FFreeVar var_98 = "": var_A8 = ""
  loc_AC4C8F: LitVar_Missing var_D8
  loc_AC4C92: PopAdLdVar
  loc_AC4C93: LitVarI4
  loc_AC4C9B: PopAdLdVar
  loc_AC4C9C: ImpAdLdRf MemVar_D94354
  loc_AC4C9F: NewIfNullPr dlgBuscarConceptoTodos
  loc_AC4CA2: dlgBuscarConceptoTodos.Show from_stack_1, from_stack_2
  loc_AC4CA7: FLdRfVar var_DC
  loc_AC4CAA: FLdRfVar var_88
  loc_AC4CAD: ImpAdLdRf MemVar_D94354
  loc_AC4CB0: NewIfNullPr dlgBuscarConceptoTodos
  loc_AC4CB3: from_stack_1v = dlgBuscarConceptoTodos.global_4292008Get()
  loc_AC4CB8: FLdPr var_88
  loc_AC4CBB: from_stack_1 = clsconcepto.RecordCount
  loc_AC4CC0: ILdRf var_DC
  loc_AC4CC3: LitI4 0
  loc_AC4CC8: GtI4
  loc_AC4CC9: FFree1Ad var_88
  loc_AC4CCC: BranchF loc_AC4D41
  loc_AC4CCF: FLdRfVar var_E0
  loc_AC4CD2: FLdRfVar var_88
  loc_AC4CD5: ImpAdLdRf MemVar_D94354
  loc_AC4CD8: NewIfNullPr dlgBuscarConceptoTodos
  loc_AC4CDB: from_stack_1v = dlgBuscarConceptoTodos.global_4292008Get()
  loc_AC4CE0: FLdPr var_88
  loc_AC4CE3: from_stack_1 = clsconcepto.CodiConc
  loc_AC4CE8: FLdZeroAd var_E0
  loc_AC4CEB: CVarStr var_98
  loc_AC4CEE: PopAdLdVar
  loc_AC4CEF: FLdPr Me
  loc_AC4CF2: VCallAd Control_ID_CodiConcDesdeMsk
  loc_AC4CF5: FStAdFunc var_E4
  loc_AC4CF8: FLdPr var_E4
  loc_AC4CFB: LateIdSt
  loc_AC4D00: FFreeAd var_88 = ""
  loc_AC4D07: FFree1Var var_98 = ""
  loc_AC4D0A: FLdRfVar var_E0
  loc_AC4D0D: FLdRfVar var_88
  loc_AC4D10: ImpAdLdRf MemVar_D94354
  loc_AC4D13: NewIfNullPr dlgBuscarConceptoTodos
  loc_AC4D16: from_stack_1v = dlgBuscarConceptoTodos.global_4292008Get()
  loc_AC4D1B: FLdPr var_88
  loc_AC4D1E: from_stack_1 = clsconcepto.DetaConc
  loc_AC4D23: ILdRf var_E0
  loc_AC4D26: FLdPr Me
  loc_AC4D29: VCallAd Control_ID_DetaConcDesdeLbl
  loc_AC4D2C: FStAdFunc var_E4
  loc_AC4D2F: FLdPr var_E4
  loc_AC4D32: Me.Caption = from_stack_1
  loc_AC4D37: FFree1Str var_E0
  loc_AC4D3A: FFreeAd var_88 = ""
  loc_AC4D41: ExitProcHresult
End Sub

Private Sub CodiConcHastaMsk_UnknownEvent_0 '9C1838
  'Data Table: 506598
  loc_9C1824: FLdPr Me
  loc_9C1827: VCallAd Control_ID_CodiConcHastaMsk
  loc_9C182A: CVarAd
  loc_9C182E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C1833: FFree1Var var_94 = ""
  loc_9C1836: ExitProcHresult
End Sub

Private Sub CodiConcHastaMsk_UnknownEvent_8 'AE40E0
  'Data Table: 506598
  loc_AE3F88: FLdPr Me
  loc_AE3F8B: VCallAd Control_ID_CodiConcDesdeMsk
  loc_AE3F8E: FStAdFunc var_88
  loc_AE3F91: FLdPr var_88
  loc_AE3F94: LateIdLdVar var_98 DispID_22 0
  loc_AE3F9B: CStrVarTmp
  loc_AE3F9C: FStStrNoPop var_9C
  loc_AE3F9F: LitStr vbNullString
  loc_AE3FA2: NeStr
  loc_AE3FA4: FFree1Str var_9C
  loc_AE3FA7: FFree1Ad var_88
  loc_AE3FAA: FFree1Var var_98 = ""
  loc_AE3FAD: BranchF loc_AE40DF
  loc_AE3FB0: FLdPr Me
  loc_AE3FB3: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_AE3FB6: FStAdFunc var_88
  loc_AE3FB9: FLdPr var_88
  loc_AE3FBC: LateIdLdVar var_98 DispID_15 0
  loc_AE3FC3: CStrVarTmp
  loc_AE3FC4: CVarStr var_AC
  loc_AE3FC7: FLdRfVar var_BC
  loc_AE3FCA: ImpAdCallFPR4  = Year()
  loc_AE3FCF: FLdPr Me
  loc_AE3FD2: VCallAd Control_ID_CodiConcHastaMsk
  loc_AE3FD5: FStAdFunc var_C0
  loc_AE3FD8: FLdPr var_C0
  loc_AE3FDB: LateIdLdVar var_D0 DispID_22 0
  loc_AE3FE2: PopAd
  loc_AE3FE4: LitI2_Byte 0
  loc_AE3FE6: LitI2_Byte 0
  loc_AE3FE8: LitI2_Byte 0
  loc_AE3FEA: LitI2_Byte 0
  loc_AE3FEC: LitI2_Byte 0
  loc_AE3FEE: LitI2_Byte 0
  loc_AE3FF0: LitI2_Byte 0
  loc_AE3FF2: LitI2_Byte 0
  loc_AE3FF4: LitI2_Byte 0
  loc_AE3FF6: FLdRfVar var_D0
  loc_AE3FF9: CStrVarTmp
  loc_AE3FFA: FStStrNoPop var_9C
  loc_AE3FFD: FLdRfVar var_BC
  loc_AE4000: CI2Var
  loc_AE4001: ImpAdCallI2 Proc_18_26_B7A828(, , , , , , , , , , )
  loc_AE4006: FStStrNoPop var_D4
  loc_AE4009: FLdPr Me
  loc_AE400C: MemStStrCopy
  loc_AE4010: FFreeStr var_9C = ""
  loc_AE4017: FFreeAd var_88 = ""
  loc_AE401E: FFreeVar var_98 = "": var_AC = "": var_D0 = ""
  loc_AE4029: FLdPr Me
  loc_AE402C: VCallAd Control_ID_CodiConcHastaMsk
  loc_AE402F: FStAdFuncNoPop
  loc_AE4032: CastAd
  loc_AE4035: FStAdFunc var_C0
  loc_AE4038: FLdRfVar var_C0
  loc_AE403B: FLdPr Me
  loc_AE403E: MemLdStr global_104
  loc_AE4041: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_AE4046: IStI2 KeyAscii
  loc_AE4049: FFreeAd var_88 = ""
  loc_AE4050: ILdI2 KeyAscii
  loc_AE4053: NotI4
  loc_AE4054: BranchF loc_AE40C8
  loc_AE4057: FLdPr Me
  loc_AE405A: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_AE405D: FStAdFunc var_88
  loc_AE4060: FLdPr var_88
  loc_AE4063: LateIdLdVar var_98 DispID_15 0
  loc_AE406A: CStrVarTmp
  loc_AE406B: CVarStr var_AC
  loc_AE406E: FLdRfVar var_BC
  loc_AE4071: ImpAdCallFPR4  = Year()
  loc_AE4076: FLdPr Me
  loc_AE4079: VCallAd Control_ID_CodiConcHastaMsk
  loc_AE407C: FStAdFunc var_C0
  loc_AE407F: FLdPr var_C0
  loc_AE4082: LateIdLdVar var_D0 DispID_22 0
  loc_AE4089: CStrVarTmp
  loc_AE408A: FStStrNoPop var_9C
  loc_AE408D: FLdRfVar var_BC
  loc_AE4090: CI2Var
  loc_AE4091: ImpAdCallI2 Proc_270_24_A92D50(, )
  loc_AE4096: FStStrNoPop var_D4
  loc_AE4099: FLdPr Me
  loc_AE409C: VCallAd Control_ID_DetaConcHastaLbl
  loc_AE409F: FStAdFunc var_D8
  loc_AE40A2: FLdPr var_D8
  loc_AE40A5: Me.Caption = from_stack_1
  loc_AE40AA: FFreeStr var_9C = ""
  loc_AE40B1: FFreeAd var_88 = "": var_C0 = ""
  loc_AE40BA: FFreeVar var_98 = "": var_AC = "": var_D0 = ""
  loc_AE40C5: Branch loc_AE40DF
  loc_AE40C8: LitStr vbNullString
  loc_AE40CB: FLdPr Me
  loc_AE40CE: VCallAd Control_ID_DetaConcHastaLbl
  loc_AE40D1: FStAdFunc var_88
  loc_AE40D4: FLdPr var_88
  loc_AE40D7: Me.Caption = from_stack_1
  loc_AE40DC: FFree1Ad var_88
  loc_AE40DF: ExitProcHresult
End Sub

Private Sub CodiConcHastaMsk_KeyPress(KeyAscii As Integer) 'AC4C00
  'Data Table: 506598
  loc_AC4B04: ILdI2 KeyAscii
  loc_AC4B07: CI4UI1
  loc_AC4B08: LitI4 &H20
  loc_AC4B0D: EqI4
  loc_AC4B0E: BranchF loc_AC4BFD
  loc_AC4B11: FLdPr Me
  loc_AC4B14: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_AC4B17: FStAdFunc var_88
  loc_AC4B1A: FLdPr var_88
  loc_AC4B1D: LateIdLdVar var_98 DispID_15 0
  loc_AC4B24: CStrVarTmp
  loc_AC4B25: CVarStr var_A8
  loc_AC4B28: FLdRfVar var_B8
  loc_AC4B2B: ImpAdCallFPR4  = Year()
  loc_AC4B30: FLdRfVar var_B8
  loc_AC4B33: CI2Var
  loc_AC4B34: ImpAdLdRf MemVar_D94354
  loc_AC4B37: NewIfNullPr dlgBuscarConceptoTodos
  loc_AC4B3A: Call dlgBuscarConceptoTodos.iPeriInfoPut(from_stack_1v)
  loc_AC4B3F: FFree1Ad var_88
  loc_AC4B42: FFreeVar var_98 = "": var_A8 = ""
  loc_AC4B4B: LitVar_Missing var_D8
  loc_AC4B4E: PopAdLdVar
  loc_AC4B4F: LitVarI4
  loc_AC4B57: PopAdLdVar
  loc_AC4B58: ImpAdLdRf MemVar_D94354
  loc_AC4B5B: NewIfNullPr dlgBuscarConceptoTodos
  loc_AC4B5E: dlgBuscarConceptoTodos.Show from_stack_1, from_stack_2
  loc_AC4B63: FLdRfVar var_DC
  loc_AC4B66: FLdRfVar var_88
  loc_AC4B69: ImpAdLdRf MemVar_D94354
  loc_AC4B6C: NewIfNullPr dlgBuscarConceptoTodos
  loc_AC4B6F: from_stack_1v = dlgBuscarConceptoTodos.global_4292008Get()
  loc_AC4B74: FLdPr var_88
  loc_AC4B77: from_stack_1 = clsconcepto.RecordCount
  loc_AC4B7C: ILdRf var_DC
  loc_AC4B7F: LitI4 0
  loc_AC4B84: GtI4
  loc_AC4B85: FFree1Ad var_88
  loc_AC4B88: BranchF loc_AC4BFD
  loc_AC4B8B: FLdRfVar var_E0
  loc_AC4B8E: FLdRfVar var_88
  loc_AC4B91: ImpAdLdRf MemVar_D94354
  loc_AC4B94: NewIfNullPr dlgBuscarConceptoTodos
  loc_AC4B97: from_stack_1v = dlgBuscarConceptoTodos.global_4292008Get()
  loc_AC4B9C: FLdPr var_88
  loc_AC4B9F: from_stack_1 = clsconcepto.CodiConc
  loc_AC4BA4: FLdZeroAd var_E0
  loc_AC4BA7: CVarStr var_98
  loc_AC4BAA: PopAdLdVar
  loc_AC4BAB: FLdPr Me
  loc_AC4BAE: VCallAd Control_ID_CodiConcHastaMsk
  loc_AC4BB1: FStAdFunc var_E4
  loc_AC4BB4: FLdPr var_E4
  loc_AC4BB7: LateIdSt
  loc_AC4BBC: FFreeAd var_88 = ""
  loc_AC4BC3: FFree1Var var_98 = ""
  loc_AC4BC6: FLdRfVar var_E0
  loc_AC4BC9: FLdRfVar var_88
  loc_AC4BCC: ImpAdLdRf MemVar_D94354
  loc_AC4BCF: NewIfNullPr dlgBuscarConceptoTodos
  loc_AC4BD2: from_stack_1v = dlgBuscarConceptoTodos.global_4292008Get()
  loc_AC4BD7: FLdPr var_88
  loc_AC4BDA: from_stack_1 = clsconcepto.DetaConc
  loc_AC4BDF: ILdRf var_E0
  loc_AC4BE2: FLdPr Me
  loc_AC4BE5: VCallAd Control_ID_DetaConcHastaLbl
  loc_AC4BE8: FStAdFunc var_E4
  loc_AC4BEB: FLdPr var_E4
  loc_AC4BEE: Me.Caption = from_stack_1
  loc_AC4BF3: FFree1Str var_E0
  loc_AC4BF6: FFreeAd var_88 = ""
  loc_AC4BFD: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() '9FFC00
  'Data Table: 506598
  loc_9FFBD0: LitVarStr var_94, "Cerrando..."
  loc_9FFBD5: PopAdLdVar
  loc_9FFBD6: FLdPr Me
  loc_9FFBD9: VCallAd Control_ID_statusBar
  loc_9FFBDC: FStAdFunc var_A8
  loc_9FFBDF: FLdPr var_A8
  loc_9FFBE2: LateIdSt
  loc_9FFBE7: FFree1Ad var_A8
  loc_9FFBEA: ILdRf Me
  loc_9FFBED: FStAdNoPop
  loc_9FFBF1: ImpAdLdRf MemVar_D9C5D8
  loc_9FFBF4: NewIfNullPr Global
  loc_9FFBF7: Global.Unload from_stack_1
  loc_9FFBFC: FFree1Ad var_A8
  loc_9FFBFF: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '9D2E84
  'Data Table: 506598
  loc_9D2E6C: ILdRf Me
  loc_9D2E6F: CastAd
  loc_9D2E72: FStAdFunc var_88
  loc_9D2E75: FLdRfVar var_88
  loc_9D2E78: ImpAdCallFPR4 Proc_57_0_AB1718()
  loc_9D2E7D: FFree1Ad var_88
  loc_9D2E80: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '9E32AC
  'Data Table: 506598
  loc_9E3290: LitI2_Byte 0
  loc_9E3292: PopTmpLdAd2 var_8A
  loc_9E3295: ILdRf Me
  loc_9E3298: CastAd
  loc_9E329B: FStAdFunc var_88
  loc_9E329E: FLdRfVar var_88
  loc_9E32A1: ImpAdCallFPR4 Proc_57_2_B14778(, )
  loc_9E32A6: FFree1Ad var_88
  loc_9E32A9: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '9D2ED0
  'Data Table: 506598
  loc_9D2EB8: LitI2_Byte 0
  loc_9D2EBA: ILdRf Me
  loc_9D2EBD: CastAd
  loc_9D2EC0: FStAdFunc var_88
  loc_9D2EC3: FLdRfVar var_88
  loc_9D2EC6: ImpAdCallFPR4 Proc_57_1_AA9124(, )
  loc_9D2ECB: FFree1Ad var_88
  loc_9D2ECE: ExitProcHresult
End Sub

Private Sub CodiEnreHastaMsk_UnknownEvent_0 '9C6818
  'Data Table: 506598
  loc_9C6804: FLdPr Me
  loc_9C6807: VCallAd Control_ID_CodiEnreHastaMsk
  loc_9C680A: CVarAd
  loc_9C680E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C6813: FFree1Var var_94 = ""
  loc_9C6816: ExitProcHresult
End Sub

Private Function CodiEnreHastaMsk_UnknownEvent_8(arg_C) 'AB8BDC
  'Data Table: 506598
  loc_AB8AF4: FLdPr Me
  loc_AB8AF7: VCallAd Control_ID_CodiEnreHastaMsk
  loc_AB8AFA: FStAdFunc var_88
  loc_AB8AFD: FLdPr var_88
  loc_AB8B00: LateIdLdVar var_98 DispID_22 0
  loc_AB8B07: CStrVarTmp
  loc_AB8B08: FStStrNoPop var_9C
  loc_AB8B0B: LitStr vbNullString
  loc_AB8B0E: NeStr
  loc_AB8B10: FFree1Str var_9C
  loc_AB8B13: FFree1Ad var_88
  loc_AB8B16: FFree1Var var_98 = ""
  loc_AB8B19: BranchF loc_AB8BDA
  loc_AB8B1C: FLdPr Me
  loc_AB8B1F: VCallAd Control_ID_CodiEnreHastaMsk
  loc_AB8B22: FStAdFunc var_88
  loc_AB8B25: FLdPr var_88
  loc_AB8B28: LateIdLdVar var_98 DispID_22 0
  loc_AB8B2F: CStrVarTmp
  loc_AB8B30: FStStrNoPop var_9C
  loc_AB8B33: ImpAdCallI2 Proc_18_39_A5661C()
  loc_AB8B38: FStStrNoPop var_A0
  loc_AB8B3B: FLdPr Me
  loc_AB8B3E: MemStStrCopy
  loc_AB8B42: FFreeStr var_9C = ""
  loc_AB8B49: FFree1Ad var_88
  loc_AB8B4C: FFree1Var var_98 = ""
  loc_AB8B4F: FLdPr Me
  loc_AB8B52: VCallAd Control_ID_CodiEnreHastaMsk
  loc_AB8B55: FStAdFuncNoPop
  loc_AB8B58: CastAd
  loc_AB8B5B: FStAdFunc var_A4
  loc_AB8B5E: FLdRfVar var_A4
  loc_AB8B61: FLdPr Me
  loc_AB8B64: MemLdStr global_104
  loc_AB8B67: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_AB8B6C: IStI2 arg_C
  loc_AB8B6F: FFreeAd var_88 = ""
  loc_AB8B76: ILdI2 arg_C
  loc_AB8B79: NotI4
  loc_AB8B7A: BranchF loc_AB8BC3
  loc_AB8B7D: FLdPr Me
  loc_AB8B80: VCallAd Control_ID_CodiEnreHastaMsk
  loc_AB8B83: FStAdFunc var_88
  loc_AB8B86: FLdPr var_88
  loc_AB8B89: LateIdLdVar var_98 DispID_22 0
  loc_AB8B90: CStrVarTmp
  loc_AB8B91: FStStrNoPop var_9C
  loc_AB8B94: CI2Str
  loc_AB8B96: ImpAdCallI2 Proc_270_42_A7BB98()
  loc_AB8B9B: FStStrNoPop var_A0
  loc_AB8B9E: FLdPr Me
  loc_AB8BA1: VCallAd Control_ID_DetaEnreHastaLbl
  loc_AB8BA4: FStAdFunc var_A4
  loc_AB8BA7: FLdPr var_A4
  loc_AB8BAA: Me.Caption = from_stack_1
  loc_AB8BAF: FFreeStr var_9C = ""
  loc_AB8BB6: FFreeAd var_88 = ""
  loc_AB8BBD: FFree1Var var_98 = ""
  loc_AB8BC0: Branch loc_AB8BDA
  loc_AB8BC3: LitStr vbNullString
  loc_AB8BC6: FLdPr Me
  loc_AB8BC9: VCallAd Control_ID_DetaEnreHastaLbl
  loc_AB8BCC: FStAdFunc var_88
  loc_AB8BCF: FLdPr var_88
  loc_AB8BD2: Me.Caption = from_stack_1
  loc_AB8BD7: FFree1Ad var_88
  loc_AB8BDA: ExitProcHresult
End Function

Private Sub CodiEnreHastaMsk_KeyPress(KeyAscii As Integer) 'AAB694
  'Data Table: 506598
  loc_AAB5CC: ILdI2 KeyAscii
  loc_AAB5CF: CI4UI1
  loc_AAB5D0: LitI4 &H20
  loc_AAB5D5: EqI4
  loc_AAB5D6: BranchF loc_AAB691
  loc_AAB5D9: ImpAdLdRf MemVar_D941EC
  loc_AAB5DC: NewIfNullAd
  loc_AAB5DF: FStAd var_88 
  loc_AAB5E3: LitVar_Missing var_A8
  loc_AAB5E6: PopAdLdVar
  loc_AAB5E7: LitVarI4
  loc_AAB5EF: PopAdLdVar
  loc_AAB5F0: FLdPr var_88
  loc_AAB5F3: Me.Show from_stack_1, from_stack_2
  loc_AAB5F8: FLdRfVar var_B0
  loc_AAB5FB: FLdRfVar var_AC
  loc_AAB5FE: FLdPr var_88
  loc_AAB601: from_stack_1v = dlgBuscarEnteRecaudador.global_4259576Get()
  loc_AAB606: FLdPr var_AC
  loc_AAB609: from_stack_1 = clsentereca.RecordCount
  loc_AAB60E: ILdRf var_B0
  loc_AAB611: LitI4 0
  loc_AAB616: GtI4
  loc_AAB617: FFree1Ad var_AC
  loc_AAB61A: BranchF loc_AAB68B
  loc_AAB61D: FLdRfVar var_B2
  loc_AAB620: FLdRfVar var_AC
  loc_AAB623: FLdPr var_88
  loc_AAB626: from_stack_1v = dlgBuscarEnteRecaudador.global_4259576Get()
  loc_AAB62B: FLdPr var_AC
  loc_AAB62E: from_stack_1 = clsentereca.CodiEnre
  loc_AAB633: FLdI2 var_B2
  loc_AAB636: CStrUI1
  loc_AAB638: CVarStr var_C4
  loc_AAB63B: PopAdLdVar
  loc_AAB63C: FLdPr Me
  loc_AAB63F: VCallAd Control_ID_CodiEnreHastaMsk
  loc_AAB642: FStAdFunc var_C8
  loc_AAB645: FLdPr var_C8
  loc_AAB648: LateIdSt
  loc_AAB64D: FFreeAd var_AC = ""
  loc_AAB654: FFree1Var var_C4 = ""
  loc_AAB657: FLdRfVar var_CC
  loc_AAB65A: FLdRfVar var_AC
  loc_AAB65D: FLdPr var_88
  loc_AAB660: from_stack_1v = dlgBuscarEnteRecaudador.global_4259576Get()
  loc_AAB665: FLdPr var_AC
  loc_AAB668: from_stack_1 = clsentereca.DetaEnre
  loc_AAB66D: ILdRf var_CC
  loc_AAB670: FLdPr Me
  loc_AAB673: VCallAd Control_ID_DetaEnreHastaLbl
  loc_AAB676: FStAdFunc var_C8
  loc_AAB679: FLdPr var_C8
  loc_AAB67C: Me.Caption = from_stack_1
  loc_AAB681: FFree1Str var_CC
  loc_AAB684: FFreeAd var_AC = ""
  loc_AAB68B: LitNothing
  loc_AAB68D: FStAd var_88 
  loc_AAB691: ExitProcHresult
End Sub

Private Sub Form_Load() 'A96648
  'Data Table: 506598
  loc_A96598: ILdRf Me
  loc_A9659B: CastAd
  loc_A9659E: FStAdFunc var_88
  loc_A965A1: FLdRfVar var_88
  loc_A965A4: ImpAdCallFPR4 Proc_272_43_A93498()
  loc_A965A9: FFree1Ad var_88
  loc_A965AC: Call cmdNueva_Click()
  loc_A965B1: LitI2_Byte 0
  loc_A965B3: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_A965B8: CStrDate
  loc_A965BA: CVarStr var_98
  loc_A965BD: PopAdLdVar
  loc_A965BE: FLdPr Me
  loc_A965C1: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_A965C4: FStAdFunc var_88
  loc_A965C7: FLdPr var_88
  loc_A965CA: LateIdSt
  loc_A965CF: FFree1Ad var_88
  loc_A965D2: FFree1Var var_98 = ""
  loc_A965D5: FLdPr Me
  loc_A965D8: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_A965DB: FStAdFunc var_88
  loc_A965DE: FLdPr var_88
  loc_A965E1: LateIdLdVar var_98 DispID_0 0
  loc_A965E8: CStrVarTmp
  loc_A965E9: CVarStr var_B8
  loc_A965EC: PopAdLdVar
  loc_A965ED: FLdPr Me
  loc_A965F0: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_A965F3: FStAdFunc var_BC
  loc_A965F6: FLdPr var_BC
  loc_A965F9: LateIdSt
  loc_A965FE: FFreeAd var_88 = ""
  loc_A96605: FFreeVar var_98 = ""
  loc_A9660C: LitI2_Byte &HFF
  loc_A9660E: FLdPr Me
  loc_A96611: VCallAd Control_ID_CodiConcOpt
  loc_A96614: FStAdFunc var_88
  loc_A96617: FLdPr var_88
  loc_A9661A: Me.Value = from_stack_1b
  loc_A9661F: FFree1Ad var_88
  loc_A96622: LitI2_Byte &HFF
  loc_A96624: FLdPr Me
  loc_A96627: VCallAd Control_ID_ConceptoOpt
  loc_A9662A: FStAdFunc var_88
  loc_A9662D: FLdPr var_88
  loc_A96630: Me.Value = from_stack_1b
  loc_A96635: FFree1Ad var_88
  loc_A96638: ImpAdLdI2 MemVar_D93C8E
  loc_A9663B: FLdPr Me
  loc_A9663E: MemStI2 global_108
  loc_A96641: LitI2_Byte &HFF
  loc_A96643: ImpAdStI2 MemVar_D93C8E
  loc_A96646: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9E7370
  'Data Table: 506598
  loc_9E7350: FLdPr Me
  loc_9E7353: VCallAd Control_ID_wbbReporte
  loc_9E7356: FStAdFunc var_88
  loc_9E7359: FLdRfVar var_88
  loc_9E735C: ImpAdCallFPR4  = Proc_57_52_A24864()
  loc_9E7361: FFree1Ad var_88
  loc_9E7364: FLdPr Me
  loc_9E7367: MemLdI2 global_108
  loc_9E736A: ImpAdStI2 MemVar_D93C8E
  loc_9E736D: ExitProcHresult
End Sub

Private Sub FeenAcpaDesdeMsk_UnknownEvent_0 '9C68A8
  'Data Table: 506598
  loc_9C6894: FLdPr Me
  loc_9C6897: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_9C689A: CVarAd
  loc_9C689E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C68A3: FFree1Var var_94 = ""
  loc_9C68A6: ExitProcHresult
End Sub

Private Sub FeenAcpaDesdeMsk_UnknownEvent_8 'A61C20
  'Data Table: 506598
  loc_A61BC4: FLdPr Me
  loc_A61BC7: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_A61BCA: FStAdFunc var_88
  loc_A61BCD: FLdPr var_88
  loc_A61BD0: LateIdLdVar var_98 DispID_15 0
  loc_A61BD7: CStrVarTmp
  loc_A61BD8: FStStrNoPop var_9C
  loc_A61BDB: ImpAdCallI2 Proc_18_5_A95CFC()
  loc_A61BE0: FStStrNoPop var_A0
  loc_A61BE3: FLdPr Me
  loc_A61BE6: MemStStrCopy
  loc_A61BEA: FFreeStr var_9C = ""
  loc_A61BF1: FFree1Ad var_88
  loc_A61BF4: FFree1Var var_98 = ""
  loc_A61BF7: FLdPr Me
  loc_A61BFA: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_A61BFD: FStAdFuncNoPop
  loc_A61C00: CastAd
  loc_A61C03: FStAdFunc var_A4
  loc_A61C06: FLdRfVar var_A4
  loc_A61C09: FLdPr Me
  loc_A61C0C: MemLdStr global_104
  loc_A61C0F: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A61C14: IStI2 Cancel
  loc_A61C17: FFreeAd var_88 = ""
  loc_A61C1E: ExitProcHresult
End Sub

Private Sub FeenAcpaDesdeMsk_KeyPress(KeyAscii As Integer) 'A25CBC
  'Data Table: 506598
  loc_A25C74: ILdI2 KeyAscii
  loc_A25C77: CI4UI1
  loc_A25C78: LitI4 &H20
  loc_A25C7D: EqI4
  loc_A25C7E: BranchF loc_A25CBB
  loc_A25C81: LitVar_Missing var_A4
  loc_A25C84: PopAdLdVar
  loc_A25C85: LitVarI4
  loc_A25C8D: PopAdLdVar
  loc_A25C8E: ImpAdLdRf MemVar_D930A4
  loc_A25C91: NewIfNullPr frmCalendario
  loc_A25C94: frmCalendario.Show from_stack_1, from_stack_2
  loc_A25C99: ImpAdLdRf MemVar_D93028
  loc_A25C9C: CDargRef
  loc_A25CA0: FLdPr Me
  loc_A25CA3: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_A25CA6: FStAdFunc var_A8
  loc_A25CA9: FLdPr var_A8
  loc_A25CAC: LateIdSt
  loc_A25CB1: FFree1Ad var_A8
  loc_A25CB4: LitStr vbNullString
  loc_A25CB7: ImpAdStStrCopy MemVar_D93028
  loc_A25CBB: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() 'A124E4
  'Data Table: 506598
  loc_A124A4: LitI2_Byte 0
  loc_A124A6: FLdPr Me
  loc_A124A9: MemStI2 bGenerado
  loc_A124AC: LitI2_Byte &HFF
  loc_A124AE: FLdPr Me
  loc_A124B1: MemStI2 bLogos
  loc_A124B4: LitI2_Byte 0
  loc_A124B6: ILdRf Me
  loc_A124B9: CastAd
  loc_A124BC: FStAdFunc var_88
  loc_A124BF: FLdRfVar var_88
  loc_A124C2: ImpAdCallFPR4 Proc_272_46_B065FC(, )
  loc_A124C7: FFree1Ad var_88
  loc_A124CA: Call HabilitarCriterio()
  loc_A124CF: ILdRf Me
  loc_A124D2: CastAd
  loc_A124D5: FStAdFunc var_88
  loc_A124D8: FLdRfVar var_88
  loc_A124DB: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_A124E0: FFree1Ad var_88
  loc_A124E3: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) 'A13168
  'Data Table: 506598
  loc_A13130: FLdPr Me
  loc_A13133: VCallAd Control_ID_statusBar
  loc_A13136: FStAdFunc var_88
  loc_A13139: FLdPr var_88
  loc_A1313C: LateIdLdVar var_98 DispID_1 0
  loc_A13143: CStrVarTmp
  loc_A13144: CVarStr var_A8
  loc_A13147: PopAdLdVar
  loc_A13148: FLdPr Me
  loc_A1314B: VCallAd Control_ID_statusBar
  loc_A1314E: FStAdFunc var_BC
  loc_A13151: FLdPr var_BC
  loc_A13154: LateIdSt
  loc_A13159: FFreeAd var_88 = ""
  loc_A13160: FFreeVar var_98 = ""
  loc_A13167: ExitProcHresult
End Sub

Private Sub NumerodeGrupoMsk_UnknownEvent_0 '9C6938
  'Data Table: 506598
  loc_9C6924: FLdPr Me
  loc_9C6927: VCallAd Control_ID_NumerodeGrupoMsk
  loc_9C692A: CVarAd
  loc_9C692E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C6933: FFree1Var var_94 = ""
  loc_9C6936: ExitProcHresult
End Sub

Private Sub CodiEnreDesdeMsk_UnknownEvent_0 '9C0098
  'Data Table: 506598
  loc_9C0084: FLdPr Me
  loc_9C0087: VCallAd Control_ID_CodiEnreDesdeMsk
  loc_9C008A: CVarAd
  loc_9C008E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C0093: FFree1Var var_94 = ""
  loc_9C0096: ExitProcHresult
End Sub

Private Sub CodiEnreDesdeMsk_UnknownEvent_8 'AB8984
  'Data Table: 506598
  loc_AB889C: FLdPr Me
  loc_AB889F: VCallAd Control_ID_CodiEnreDesdeMsk
  loc_AB88A2: FStAdFunc var_88
  loc_AB88A5: FLdPr var_88
  loc_AB88A8: LateIdLdVar var_98 DispID_22 0
  loc_AB88AF: CStrVarTmp
  loc_AB88B0: FStStrNoPop var_9C
  loc_AB88B3: LitStr vbNullString
  loc_AB88B6: NeStr
  loc_AB88B8: FFree1Str var_9C
  loc_AB88BB: FFree1Ad var_88
  loc_AB88BE: FFree1Var var_98 = ""
  loc_AB88C1: BranchF loc_AB8982
  loc_AB88C4: FLdPr Me
  loc_AB88C7: VCallAd Control_ID_CodiEnreDesdeMsk
  loc_AB88CA: FStAdFunc var_88
  loc_AB88CD: FLdPr var_88
  loc_AB88D0: LateIdLdVar var_98 DispID_22 0
  loc_AB88D7: CStrVarTmp
  loc_AB88D8: FStStrNoPop var_9C
  loc_AB88DB: ImpAdCallI2 Proc_18_39_A5661C()
  loc_AB88E0: FStStrNoPop var_A0
  loc_AB88E3: FLdPr Me
  loc_AB88E6: MemStStrCopy
  loc_AB88EA: FFreeStr var_9C = ""
  loc_AB88F1: FFree1Ad var_88
  loc_AB88F4: FFree1Var var_98 = ""
  loc_AB88F7: FLdPr Me
  loc_AB88FA: VCallAd Control_ID_CodiEnreDesdeMsk
  loc_AB88FD: FStAdFuncNoPop
  loc_AB8900: CastAd
  loc_AB8903: FStAdFunc var_A4
  loc_AB8906: FLdRfVar var_A4
  loc_AB8909: FLdPr Me
  loc_AB890C: MemLdStr global_104
  loc_AB890F: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_AB8914: IStI2 Button
  loc_AB8917: FFreeAd var_88 = ""
  loc_AB891E: ILdI2 Button
  loc_AB8921: NotI4
  loc_AB8922: BranchF loc_AB896B
  loc_AB8925: FLdPr Me
  loc_AB8928: VCallAd Control_ID_CodiEnreDesdeMsk
  loc_AB892B: FStAdFunc var_88
  loc_AB892E: FLdPr var_88
  loc_AB8931: LateIdLdVar var_98 DispID_22 0
  loc_AB8938: CStrVarTmp
  loc_AB8939: FStStrNoPop var_9C
  loc_AB893C: CI2Str
  loc_AB893E: ImpAdCallI2 Proc_270_42_A7BB98()
  loc_AB8943: FStStrNoPop var_A0
  loc_AB8946: FLdPr Me
  loc_AB8949: VCallAd Control_ID_DetaEnreDesdeLbl
  loc_AB894C: FStAdFunc var_A4
  loc_AB894F: FLdPr var_A4
  loc_AB8952: Me.Caption = from_stack_1
  loc_AB8957: FFreeStr var_9C = ""
  loc_AB895E: FFreeAd var_88 = ""
  loc_AB8965: FFree1Var var_98 = ""
  loc_AB8968: Branch loc_AB8982
  loc_AB896B: LitStr vbNullString
  loc_AB896E: FLdPr Me
  loc_AB8971: VCallAd Control_ID_DetaEnreDesdeLbl
  loc_AB8974: FStAdFunc var_88
  loc_AB8977: FLdPr var_88
  loc_AB897A: Me.Caption = from_stack_1
  loc_AB897F: FFree1Ad var_88
  loc_AB8982: ExitProcHresult
End Sub

Private Sub CodiEnreDesdeMsk_KeyPress(KeyAscii As Integer) 'AAC218
  'Data Table: 506598
  loc_AAC150: ILdI2 KeyAscii
  loc_AAC153: CI4UI1
  loc_AAC154: LitI4 &H20
  loc_AAC159: EqI4
  loc_AAC15A: BranchF loc_AAC215
  loc_AAC15D: ImpAdLdRf MemVar_D941EC
  loc_AAC160: NewIfNullAd
  loc_AAC163: FStAd var_88 
  loc_AAC167: LitVar_Missing var_A8
  loc_AAC16A: PopAdLdVar
  loc_AAC16B: LitVarI4
  loc_AAC173: PopAdLdVar
  loc_AAC174: FLdPr var_88
  loc_AAC177: Me.Show from_stack_1, from_stack_2
  loc_AAC17C: FLdRfVar var_B0
  loc_AAC17F: FLdRfVar var_AC
  loc_AAC182: FLdPr var_88
  loc_AAC185: from_stack_1v = dlgBuscarEnteRecaudador.global_4259576Get()
  loc_AAC18A: FLdPr var_AC
  loc_AAC18D: from_stack_1 = clsentereca.RecordCount
  loc_AAC192: ILdRf var_B0
  loc_AAC195: LitI4 0
  loc_AAC19A: GtI4
  loc_AAC19B: FFree1Ad var_AC
  loc_AAC19E: BranchF loc_AAC20F
  loc_AAC1A1: FLdRfVar var_B2
  loc_AAC1A4: FLdRfVar var_AC
  loc_AAC1A7: FLdPr var_88
  loc_AAC1AA: from_stack_1v = dlgBuscarEnteRecaudador.global_4259576Get()
  loc_AAC1AF: FLdPr var_AC
  loc_AAC1B2: from_stack_1 = clsentereca.CodiEnre
  loc_AAC1B7: FLdI2 var_B2
  loc_AAC1BA: CStrUI1
  loc_AAC1BC: CVarStr var_C4
  loc_AAC1BF: PopAdLdVar
  loc_AAC1C0: FLdPr Me
  loc_AAC1C3: VCallAd Control_ID_CodiEnreDesdeMsk
  loc_AAC1C6: FStAdFunc var_C8
  loc_AAC1C9: FLdPr var_C8
  loc_AAC1CC: LateIdSt
  loc_AAC1D1: FFreeAd var_AC = ""
  loc_AAC1D8: FFree1Var var_C4 = ""
  loc_AAC1DB: FLdRfVar var_CC
  loc_AAC1DE: FLdRfVar var_AC
  loc_AAC1E1: FLdPr var_88
  loc_AAC1E4: from_stack_1v = dlgBuscarEnteRecaudador.global_4259576Get()
  loc_AAC1E9: FLdPr var_AC
  loc_AAC1EC: from_stack_1 = clsentereca.DetaEnre
  loc_AAC1F1: ILdRf var_CC
  loc_AAC1F4: FLdPr Me
  loc_AAC1F7: VCallAd Control_ID_DetaEnreDesdeLbl
  loc_AAC1FA: FStAdFunc var_C8
  loc_AAC1FD: FLdPr var_C8
  loc_AAC200: Me.Caption = from_stack_1
  loc_AAC205: FFree1Str var_CC
  loc_AAC208: FFreeAd var_AC = ""
  loc_AAC20F: LitNothing
  loc_AAC211: FStAd var_88 
  loc_AAC215: ExitProcHresult
End Sub

Private Sub FeenAcpaHastaMsk_UnknownEvent_0 '9C10E8
  'Data Table: 506598
  loc_9C10D4: FLdPr Me
  loc_9C10D7: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_9C10DA: CVarAd
  loc_9C10DE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C10E3: FFree1Var var_94 = ""
  loc_9C10E6: ExitProcHresult
End Sub

Private Sub FeenAcpaHastaMsk_UnknownEvent_8 'AC6844
  'Data Table: 506598
  loc_AC6750: FLdPr Me
  loc_AC6753: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_AC6756: FStAdFunc var_88
  loc_AC6759: FLdPr var_88
  loc_AC675C: LateIdLdVar var_98 DispID_15 0
  loc_AC6763: CStrVarTmp
  loc_AC6764: FStStrNoPop var_9C
  loc_AC6767: ImpAdCallI2 Proc_18_5_A95CFC()
  loc_AC676C: FStStrNoPop var_A0
  loc_AC676F: FLdPr Me
  loc_AC6772: MemStStrCopy
  loc_AC6776: FFreeStr var_9C = ""
  loc_AC677D: FFree1Ad var_88
  loc_AC6780: FFree1Var var_98 = ""
  loc_AC6783: FLdPr Me
  loc_AC6786: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_AC6789: FStAdFuncNoPop
  loc_AC678C: CastAd
  loc_AC678F: FStAdFunc var_A4
  loc_AC6792: FLdRfVar var_A4
  loc_AC6795: FLdPr Me
  loc_AC6798: MemLdStr global_104
  loc_AC679B: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_AC67A0: IStI2 KeyAscii
  loc_AC67A3: FFreeAd var_88 = ""
  loc_AC67AA: ILdI2 KeyAscii
  loc_AC67AD: BranchF loc_AC67B1
  loc_AC67B0: ExitProcHresult
  loc_AC67B1: FLdPr Me
  loc_AC67B4: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_AC67B7: FStAdFunc var_88
  loc_AC67BA: FLdPr var_88
  loc_AC67BD: LateIdLdVar var_98 DispID_15 0
  loc_AC67C4: CStrVarTmp
  loc_AC67C5: CVarStr var_B4
  loc_AC67C8: FLdRfVar var_C4
  loc_AC67CB: ImpAdCallFPR4  = Year()
  loc_AC67D0: FLdRfVar var_C4
  loc_AC67D3: FLdPr Me
  loc_AC67D6: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_AC67D9: FStAdFunc var_A4
  loc_AC67DC: FLdPr var_A4
  loc_AC67DF: LateIdLdVar var_D4 DispID_15 0
  loc_AC67E6: CStrVarTmp
  loc_AC67E7: CVarStr var_E4
  loc_AC67EA: FLdRfVar var_F4
  loc_AC67ED: ImpAdCallFPR4  = Year()
  loc_AC67F2: FLdRfVar var_F4
  loc_AC67F5: NeVarBool
  loc_AC67F7: FFreeAd var_88 = ""
  loc_AC67FE: FFreeVar var_98 = "": var_B4 = "": var_D4 = "": var_E4 = "": var_C4 = ""
  loc_AC680D: BranchF loc_AC6841
  loc_AC6810: LitStr "Las fechas ingresadas deben corresponder al mismo año."
  loc_AC6813: FLdPr Me
  loc_AC6816: MemStStrCopy
  loc_AC681A: FLdPr Me
  loc_AC681D: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_AC6820: FStAdFuncNoPop
  loc_AC6823: CastAd
  loc_AC6826: FStAdFunc var_A4
  loc_AC6829: FLdRfVar var_A4
  loc_AC682C: FLdPr Me
  loc_AC682F: MemLdStr global_104
  loc_AC6832: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_AC6837: IStI2 KeyAscii
  loc_AC683A: FFreeAd var_88 = ""
  loc_AC6841: ExitProcHresult
End Sub

Private Sub FeenAcpaHastaMsk_KeyPress(KeyAscii As Integer) 'A2530C
  'Data Table: 506598
  loc_A252C4: ILdI2 KeyAscii
  loc_A252C7: CI4UI1
  loc_A252C8: LitI4 &H20
  loc_A252CD: EqI4
  loc_A252CE: BranchF loc_A2530B
  loc_A252D1: LitVar_Missing var_A4
  loc_A252D4: PopAdLdVar
  loc_A252D5: LitVarI4
  loc_A252DD: PopAdLdVar
  loc_A252DE: ImpAdLdRf MemVar_D930A4
  loc_A252E1: NewIfNullPr frmCalendario
  loc_A252E4: frmCalendario.Show from_stack_1, from_stack_2
  loc_A252E9: ImpAdLdRf MemVar_D93028
  loc_A252EC: CDargRef
  loc_A252F0: FLdPr Me
  loc_A252F3: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_A252F6: FStAdFunc var_A8
  loc_A252F9: FLdPr var_A8
  loc_A252FC: LateIdSt
  loc_A25301: FFree1Ad var_A8
  loc_A25304: LitStr vbNullString
  loc_A25307: ImpAdStStrCopy MemVar_D93028
  loc_A2530B: ExitProcHresult
End Sub

Public Function bLogosGet() '508048
  bLogosGet = bLogos
End Function

Public Sub bLogosPut(Value) '508057
  bLogos = Value
End Sub

Public Function bGeneradoGet() '508066
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '508075
  bGenerado = Value
End Sub

Public Sub GeneraXLS() '9C1914
  'Data Table: 506598
  loc_9C18FC: LitI2_Byte 0
  loc_9C18FE: FLdPr Me
  loc_9C1901: MemStI2 bLogos
  loc_9C1904: Call GeneraHTML()
  loc_9C1909: LitI2_Byte &HFF
  loc_9C190B: FLdPr Me
  loc_9C190E: MemStI2 bLogos
  loc_9C1911: ExitProcHresult
End Sub

Public Sub HabilitarCriterio() 'AC7A94
  'Data Table: 506598
  loc_AC79B0: LitI4 0
  loc_AC79B5: LitI4 &HB
  loc_AC79BA: FLdRfVar var_88
  loc_AC79BD: Redim
  loc_AC79C7: FLdPr Me
  loc_AC79CA: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_AC79CD: CVarAd
  loc_AC79D1: ParmAry1St
  loc_AC79D7: FLdPr Me
  loc_AC79DA: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_AC79DD: CVarAd
  loc_AC79E1: ParmAry1St
  loc_AC79E7: FLdPr Me
  loc_AC79EA: VCallAd Control_ID_CodiEnreDesdeMsk
  loc_AC79ED: CVarAd
  loc_AC79F1: ParmAry1St
  loc_AC79F7: FLdPr Me
  loc_AC79FA: VCallAd Control_ID_CodiEnreHastaMsk
  loc_AC79FD: CVarAd
  loc_AC7A01: ParmAry1St
  loc_AC7A07: FLdPr Me
  loc_AC7A0A: VCallAd Control_ID_CodiConcDesdeMsk
  loc_AC7A0D: CVarAd
  loc_AC7A11: ParmAry1St
  loc_AC7A17: FLdPr Me
  loc_AC7A1A: VCallAd Control_ID_CodiConcHastaMsk
  loc_AC7A1D: CVarAd
  loc_AC7A21: ParmAry1St
  loc_AC7A27: FLdPr Me
  loc_AC7A2A: VCallAd Control_ID_NumerodeGrupoMsk
  loc_AC7A2D: CVarAd
  loc_AC7A31: ParmAry1St
  loc_AC7A37: FLdPr Me
  loc_AC7A3A: VCallAd Control_ID_CodiConcOpt
  loc_AC7A3D: CVarAd
  loc_AC7A41: ParmAry1St
  loc_AC7A47: FLdPr Me
  loc_AC7A4A: VCallAd Control_ID_DetaConcOpt
  loc_AC7A4D: CVarAd
  loc_AC7A51: ParmAry1St
  loc_AC7A57: FLdPr Me
  loc_AC7A5A: VCallAd Control_ID_EnteOpt
  loc_AC7A5D: CVarAd
  loc_AC7A61: ParmAry1St
  loc_AC7A67: FLdPr Me
  loc_AC7A6A: VCallAd Control_ID_ConceptoOpt
  loc_AC7A6D: CVarAd
  loc_AC7A71: ParmAry1St
  loc_AC7A77: FLdPr Me
  loc_AC7A7A: VCallAd Control_ID_BoletoOpt
  loc_AC7A7D: CVarAd
  loc_AC7A81: ParmAry1St
  loc_AC7A87: FLdRfVar var_88
  loc_AC7A8A: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_AC7A8F: FLdRfVar var_88
  loc_AC7A92: Erase
  loc_AC7A93: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'CB1198
  'Data Table: 506598
  loc_CAF400: FLdPr Me
  loc_CAF403: MemLdI2 bGenerado
  loc_CAF406: BranchF loc_CAF40A
  loc_CAF409: ExitProcHresult
  loc_CAF40A: LitVarStr var_B4, "Generando reporte..."
  loc_CAF40F: PopAdLdVar
  loc_CAF410: FLdPr Me
  loc_CAF413: VCallAd Control_ID_statusBar
  loc_CAF416: FStAdFunc var_C8
  loc_CAF419: FLdPr var_C8
  loc_CAF41C: LateIdSt
  loc_CAF421: FFree1Ad var_C8
  loc_CAF424: LitI4 &HB
  loc_CAF429: CI2I4
  loc_CAF42A: FLdPr Me
  loc_CAF42D: Me.MousePointer = from_stack_1
  loc_CAF432: LitI2_Byte 0
  loc_CAF434: PopTmpLdAd2 var_CA
  loc_CAF437: Call FeenAcpaDesdeMsk_UnknownEvent_8()
  loc_CAF43C: FLdPr Me
  loc_CAF43F: MemLdStr global_104
  loc_CAF442: LitStr vbNullString
  loc_CAF445: NeStr
  loc_CAF447: BranchF loc_CAF44D
  loc_CAF44A: Branch loc_CB116E
  loc_CAF44D: LitI2_Byte 0
  loc_CAF44F: PopTmpLdAd2 var_CA
  loc_CAF452: Call FeenAcpaHastaMsk_UnknownEvent_8()
  loc_CAF457: FLdPr Me
  loc_CAF45A: MemLdStr global_104
  loc_CAF45D: LitStr vbNullString
  loc_CAF460: NeStr
  loc_CAF462: BranchF loc_CAF468
  loc_CAF465: Branch loc_CB116E
  loc_CAF468: LitI2_Byte 0
  loc_CAF46A: PopTmpLdAd2 var_CA
  loc_CAF46D: Call CodiEnreDesdeMsk_UnknownEvent_8()
  loc_CAF472: FLdPr Me
  loc_CAF475: MemLdStr global_104
  loc_CAF478: LitStr vbNullString
  loc_CAF47B: NeStr
  loc_CAF47D: BranchF loc_CAF483
  loc_CAF480: Branch loc_CB116E
  loc_CAF483: LitI2_Byte 0
  loc_CAF485: PopTmpLdAd2 var_CA
  loc_CAF488: from_stack_2v = CodiEnreHastaMsk_UnknownEvent_8(from_stack_1v)
  loc_CAF48D: FLdPr Me
  loc_CAF490: MemLdStr global_104
  loc_CAF493: LitStr vbNullString
  loc_CAF496: NeStr
  loc_CAF498: BranchF loc_CAF49E
  loc_CAF49B: Branch loc_CB116E
  loc_CAF49E: LitI2_Byte 0
  loc_CAF4A0: PopTmpLdAd2 var_CA
  loc_CAF4A3: from_stack_2v = CodiConcDesdeMsk_UnknownEvent_8(from_stack_1v)
  loc_CAF4A8: FLdPr Me
  loc_CAF4AB: MemLdStr global_104
  loc_CAF4AE: LitStr vbNullString
  loc_CAF4B1: NeStr
  loc_CAF4B3: BranchF loc_CAF4B9
  loc_CAF4B6: Branch loc_CB116E
  loc_CAF4B9: LitI2_Byte 0
  loc_CAF4BB: PopTmpLdAd2 var_CA
  loc_CAF4BE: Call CodiConcHastaMsk_UnknownEvent_8()
  loc_CAF4C3: FLdPr Me
  loc_CAF4C6: MemLdStr global_104
  loc_CAF4C9: LitStr vbNullString
  loc_CAF4CC: NeStr
  loc_CAF4CE: BranchF loc_CAF4D4
  loc_CAF4D1: Branch loc_CB116E
  loc_CAF4D4: FLdPr Me
  loc_CAF4D7: VCallAd Control_ID_CodiEnreDesdeMsk
  loc_CAF4DA: FStAdFunc var_C8
  loc_CAF4DD: FLdPr var_C8
  loc_CAF4E0: LateIdLdVar var_DC DispID_22 0
  loc_CAF4E7: PopAd
  loc_CAF4E9: FLdPr Me
  loc_CAF4EC: VCallAd Control_ID_CodiEnreDesdeMsk
  loc_CAF4EF: FStAdFunc var_E4
  loc_CAF4F2: FLdPr var_E4
  loc_CAF4F5: LateIdLdVar var_F4 DispID_22 0
  loc_CAF4FC: PopAd
  loc_CAF4FE: LitVarStr var_C4, vbNullString
  loc_CAF503: FStVarCopyObj var_118
  loc_CAF506: FLdRfVar var_118
  loc_CAF509: LitStr " AND deta.CodiEnre >= "
  loc_CAF50C: FLdRfVar var_F4
  loc_CAF50F: CStrVarTmp
  loc_CAF510: FStStrNoPop var_F8
  loc_CAF513: ConcatStr
  loc_CAF514: CVarStr var_108
  loc_CAF517: FLdRfVar var_DC
  loc_CAF51A: CStrVarTmp
  loc_CAF51B: FStStrNoPop var_E0
  loc_CAF51E: LitStr vbNullString
  loc_CAF521: NeStr
  loc_CAF523: CVarBoolI2 var_B4
  loc_CAF527: FLdRfVar var_128
  loc_CAF52A: ImpAdCallFPR4  = IIf(, , )
  loc_CAF52F: FLdRfVar var_128
  loc_CAF532: CStrVarTmp
  loc_CAF533: FStStr var_88
  loc_CAF536: FFreeStr var_E0 = ""
  loc_CAF53D: FFreeAd var_C8 = ""
  loc_CAF544: FFreeVar var_DC = "": var_F4 = "": var_B4 = "": var_108 = "": var_118 = ""
  loc_CAF553: FLdPr Me
  loc_CAF556: VCallAd Control_ID_CodiEnreHastaMsk
  loc_CAF559: FStAdFunc var_C8
  loc_CAF55C: FLdPr var_C8
  loc_CAF55F: LateIdLdVar var_DC DispID_22 0
  loc_CAF566: PopAd
  loc_CAF568: FLdPr Me
  loc_CAF56B: VCallAd Control_ID_CodiEnreHastaMsk
  loc_CAF56E: FStAdFunc var_E4
  loc_CAF571: FLdPr var_E4
  loc_CAF574: LateIdLdVar var_F4 DispID_22 0
  loc_CAF57B: PopAd
  loc_CAF57D: LitVarStr var_C4, vbNullString
  loc_CAF582: FStVarCopyObj var_118
  loc_CAF585: FLdRfVar var_118
  loc_CAF588: LitStr " AND deta.CodiEnre <= "
  loc_CAF58B: FLdRfVar var_F4
  loc_CAF58E: CStrVarTmp
  loc_CAF58F: FStStrNoPop var_F8
  loc_CAF592: ConcatStr
  loc_CAF593: CVarStr var_108
  loc_CAF596: FLdRfVar var_DC
  loc_CAF599: CStrVarTmp
  loc_CAF59A: FStStrNoPop var_E0
  loc_CAF59D: LitStr vbNullString
  loc_CAF5A0: NeStr
  loc_CAF5A2: CVarBoolI2 var_B4
  loc_CAF5A6: FLdRfVar var_128
  loc_CAF5A9: ImpAdCallFPR4  = IIf(, , )
  loc_CAF5AE: FLdRfVar var_128
  loc_CAF5B1: CStrVarTmp
  loc_CAF5B2: FStStr var_8C
  loc_CAF5B5: FFreeStr var_E0 = ""
  loc_CAF5BC: FFreeAd var_C8 = ""
  loc_CAF5C3: FFreeVar var_DC = "": var_F4 = "": var_B4 = "": var_108 = "": var_118 = ""
  loc_CAF5D2: FLdPr Me
  loc_CAF5D5: VCallAd Control_ID_CodiConcDesdeMsk
  loc_CAF5D8: FStAdFunc var_C8
  loc_CAF5DB: FLdPr var_C8
  loc_CAF5DE: LateIdLdVar var_DC DispID_22 0
  loc_CAF5E5: PopAd
  loc_CAF5E7: FLdPr Me
  loc_CAF5EA: VCallAd Control_ID_CodiConcDesdeMsk
  loc_CAF5ED: FStAdFunc var_E4
  loc_CAF5F0: FLdPr var_E4
  loc_CAF5F3: LateIdLdVar var_F4 DispID_22 0
  loc_CAF5FA: PopAd
  loc_CAF5FC: LitVarStr var_C4, vbNullString
  loc_CAF601: FStVarCopyObj var_118
  loc_CAF604: FLdRfVar var_118
  loc_CAF607: LitStr " AND deta.CodiConc >= '"
  loc_CAF60A: FLdRfVar var_F4
  loc_CAF60D: CStrVarTmp
  loc_CAF60E: FStStrNoPop var_F8
  loc_CAF611: ConcatStr
  loc_CAF612: FStStrNoPop var_12C
  loc_CAF615: LitStr "'"
  loc_CAF618: ConcatStr
  loc_CAF619: CVarStr var_108
  loc_CAF61C: FLdRfVar var_DC
  loc_CAF61F: CStrVarTmp
  loc_CAF620: FStStrNoPop var_E0
  loc_CAF623: LitStr vbNullString
  loc_CAF626: NeStr
  loc_CAF628: CVarBoolI2 var_B4
  loc_CAF62C: FLdRfVar var_128
  loc_CAF62F: ImpAdCallFPR4  = IIf(, , )
  loc_CAF634: FLdRfVar var_128
  loc_CAF637: CStrVarTmp
  loc_CAF638: FStStr var_90
  loc_CAF63B: FFreeStr var_E0 = "": var_F8 = ""
  loc_CAF644: FFreeAd var_C8 = ""
  loc_CAF64B: FFreeVar var_DC = "": var_F4 = "": var_B4 = "": var_108 = "": var_118 = ""
  loc_CAF65A: FLdPr Me
  loc_CAF65D: VCallAd Control_ID_CodiConcHastaMsk
  loc_CAF660: FStAdFunc var_C8
  loc_CAF663: FLdPr var_C8
  loc_CAF666: LateIdLdVar var_DC DispID_22 0
  loc_CAF66D: PopAd
  loc_CAF66F: FLdPr Me
  loc_CAF672: VCallAd Control_ID_CodiConcHastaMsk
  loc_CAF675: FStAdFunc var_E4
  loc_CAF678: FLdPr var_E4
  loc_CAF67B: LateIdLdVar var_F4 DispID_22 0
  loc_CAF682: PopAd
  loc_CAF684: LitVarStr var_C4, vbNullString
  loc_CAF689: FStVarCopyObj var_118
  loc_CAF68C: FLdRfVar var_118
  loc_CAF68F: LitStr " AND deta.CodiConc <= '"
  loc_CAF692: FLdRfVar var_F4
  loc_CAF695: CStrVarTmp
  loc_CAF696: FStStrNoPop var_F8
  loc_CAF699: ConcatStr
  loc_CAF69A: FStStrNoPop var_12C
  loc_CAF69D: LitStr "'"
  loc_CAF6A0: ConcatStr
  loc_CAF6A1: CVarStr var_108
  loc_CAF6A4: FLdRfVar var_DC
  loc_CAF6A7: CStrVarTmp
  loc_CAF6A8: FStStrNoPop var_E0
  loc_CAF6AB: LitStr vbNullString
  loc_CAF6AE: NeStr
  loc_CAF6B0: CVarBoolI2 var_B4
  loc_CAF6B4: FLdRfVar var_128
  loc_CAF6B7: ImpAdCallFPR4  = IIf(, , )
  loc_CAF6BC: FLdRfVar var_128
  loc_CAF6BF: CStrVarTmp
  loc_CAF6C0: FStStr var_94
  loc_CAF6C3: FFreeStr var_E0 = "": var_F8 = ""
  loc_CAF6CC: FFreeAd var_C8 = ""
  loc_CAF6D3: FFreeVar var_DC = "": var_F4 = "": var_B4 = "": var_108 = "": var_118 = ""
  loc_CAF6E2: FLdPr Me
  loc_CAF6E5: VCallAd Control_ID_NumerodeGrupoMsk
  loc_CAF6E8: FStAdFunc var_C8
  loc_CAF6EB: FLdPr var_C8
  loc_CAF6EE: LateIdLdVar var_DC DispID_22 0
  loc_CAF6F5: PopAd
  loc_CAF6F7: FLdPr Me
  loc_CAF6FA: VCallAd Control_ID_NumerodeGrupoMsk
  loc_CAF6FD: FStAdFunc var_E4
  loc_CAF700: FLdPr var_E4
  loc_CAF703: LateIdLdVar var_F4 DispID_22 0
  loc_CAF70A: PopAd
  loc_CAF70C: LitVarStr var_C4, vbNullString
  loc_CAF711: FStVarCopyObj var_118
  loc_CAF714: FLdRfVar var_118
  loc_CAF717: LitStr " AND detapago.NumeAcpa = "
  loc_CAF71A: FLdRfVar var_F4
  loc_CAF71D: CStrVarTmp
  loc_CAF71E: FStStrNoPop var_F8
  loc_CAF721: ConcatStr
  loc_CAF722: CVarStr var_108
  loc_CAF725: FLdRfVar var_DC
  loc_CAF728: CStrVarTmp
  loc_CAF729: FStStrNoPop var_E0
  loc_CAF72C: LitStr vbNullString
  loc_CAF72F: NeStr
  loc_CAF731: CVarBoolI2 var_B4
  loc_CAF735: FLdRfVar var_128
  loc_CAF738: ImpAdCallFPR4  = IIf(, , )
  loc_CAF73D: FLdRfVar var_128
  loc_CAF740: CStrVarTmp
  loc_CAF741: FStStr var_9C
  loc_CAF744: FFreeStr var_E0 = ""
  loc_CAF74B: FFreeAd var_C8 = ""
  loc_CAF752: FFreeVar var_DC = "": var_F4 = "": var_B4 = "": var_108 = "": var_118 = ""
  loc_CAF761: FLdPr Me
  loc_CAF764: VCallAd Control_ID_NumerodeGrupoMsk
  loc_CAF767: FStAdFunc var_C8
  loc_CAF76A: FLdPr var_C8
  loc_CAF76D: LateIdLdVar var_DC DispID_22 0
  loc_CAF774: PopAd
  loc_CAF776: FLdPr Me
  loc_CAF779: VCallAd Control_ID_NumerodeGrupoMsk
  loc_CAF77C: FStAdFunc var_E4
  loc_CAF77F: FLdPr var_E4
  loc_CAF782: LateIdLdVar var_F4 DispID_22 0
  loc_CAF789: PopAd
  loc_CAF78B: LitVarStr var_C4, vbNullString
  loc_CAF790: FStVarCopyObj var_118
  loc_CAF793: FLdRfVar var_118
  loc_CAF796: LitStr " AND pago.NumeAcpa = "
  loc_CAF799: FLdRfVar var_F4
  loc_CAF79C: CStrVarTmp
  loc_CAF79D: FStStrNoPop var_F8
  loc_CAF7A0: ConcatStr
  loc_CAF7A1: CVarStr var_108
  loc_CAF7A4: FLdRfVar var_DC
  loc_CAF7A7: CStrVarTmp
  loc_CAF7A8: FStStrNoPop var_E0
  loc_CAF7AB: LitStr vbNullString
  loc_CAF7AE: NeStr
  loc_CAF7B0: CVarBoolI2 var_B4
  loc_CAF7B4: FLdRfVar var_128
  loc_CAF7B7: ImpAdCallFPR4  = IIf(, , )
  loc_CAF7BC: FLdRfVar var_128
  loc_CAF7BF: CStrVarTmp
  loc_CAF7C0: FStStr var_A0
  loc_CAF7C3: FFreeStr var_E0 = ""
  loc_CAF7CA: FFreeAd var_C8 = ""
  loc_CAF7D1: FFreeVar var_DC = "": var_F4 = "": var_B4 = "": var_108 = "": var_118 = ""
  loc_CAF7E0: FLdRfVar var_CA
  loc_CAF7E3: FLdPrThis
  loc_CAF7E4: VCallAd Control_ID_EnteOpt
  loc_CAF7E7: FStAdFunc var_C8
  loc_CAF7EA: FLdPr var_C8
  loc_CAF7ED:  = Me.Value
  loc_CAF7F2: FLdI2 var_CA
  loc_CAF7F5: LitI2_Byte &HFF
  loc_CAF7F7: EqI2
  loc_CAF7F8: FFree1Ad var_C8
  loc_CAF7FB: BranchF loc_CAF807
  loc_CAF7FE: LitStr "acrepago.CodiEnre"
  loc_CAF801: FStStrCopy var_98
  loc_CAF804: Branch loc_CAF856
  loc_CAF807: FLdRfVar var_CA
  loc_CAF80A: FLdPr Me
  loc_CAF80D: VCallAd Control_ID_ConceptoOpt
  loc_CAF810: FStAdFunc var_C8
  loc_CAF813: FLdPr var_C8
  loc_CAF816:  = Me.Value
  loc_CAF81B: FLdI2 var_CA
  loc_CAF81E: LitI2_Byte &HFF
  loc_CAF820: EqI2
  loc_CAF821: FFree1Ad var_C8
  loc_CAF824: BranchF loc_CAF830
  loc_CAF827: LitStr "acrepago.CodiEnre, detapago.CodiConc"
  loc_CAF82A: FStStrCopy var_98
  loc_CAF82D: Branch loc_CAF856
  loc_CAF830: FLdRfVar var_CA
  loc_CAF833: FLdPr Me
  loc_CAF836: VCallAd Control_ID_BoletoOpt
  loc_CAF839: FStAdFunc var_C8
  loc_CAF83C: FLdPr var_C8
  loc_CAF83F:  = Me.Value
  loc_CAF844: FLdI2 var_CA
  loc_CAF847: LitI2_Byte &HFF
  loc_CAF849: EqI2
  loc_CAF84A: FFree1Ad var_C8
  loc_CAF84D: BranchF loc_CAF856
  loc_CAF850: LitStr "acrepago.CodiEnre, detapago.CodiConc, PeriBole, NumeBole"
  loc_CAF853: FStStrCopy var_98
  loc_CAF856: FLdRfVar var_CA
  loc_CAF859: FLdPr Me
  loc_CAF85C: VCallAd Control_ID_CodiConcOpt
  loc_CAF85F: FStAdFunc var_C8
  loc_CAF862: FLdPr var_C8
  loc_CAF865:  = Me.Value
  loc_CAF86A: FLdI2 var_CA
  loc_CAF86D: FFree1Ad var_C8
  loc_CAF870: BranchF loc_CAF87C
  loc_CAF873: LitStr "deta.CodiEnre, CodiConc, FeenAcpa"
  loc_CAF876: FStStrCopy var_A4
  loc_CAF879: Branch loc_CAF89F
  loc_CAF87C: FLdRfVar var_CA
  loc_CAF87F: FLdPr Me
  loc_CAF882: VCallAd Control_ID_DetaConcOpt
  loc_CAF885: FStAdFunc var_C8
  loc_CAF888: FLdPr var_C8
  loc_CAF88B:  = Me.Value
  loc_CAF890: FLdI2 var_CA
  loc_CAF893: FFree1Ad var_C8
  loc_CAF896: BranchF loc_CAF89F
  loc_CAF899: LitStr "DetaEnre, DetaConc, FeenAcpa"
  loc_CAF89C: FStStrCopy var_A4
  loc_CAF89F: FLdPr Me
  loc_CAF8A2: MemLdRfVar from_stack_1.global_76
  loc_CAF8A5: NewIfNullAd
  loc_CAF8A8: FStAd var_130 
  loc_CAF8AC: FLdPr Me
  loc_CAF8AF: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CAF8B2: FStAdFunc var_C8
  loc_CAF8B5: FLdPr var_C8
  loc_CAF8B8: LateIdLdVar var_DC DispID_15 0
  loc_CAF8BF: PopAd
  loc_CAF8C1: FLdPr Me
  loc_CAF8C4: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_CAF8C7: FStAdFunc var_E4
  loc_CAF8CA: FLdPr var_E4
  loc_CAF8CD: LateIdLdVar var_118 DispID_15 0
  loc_CAF8D4: PopAd
  loc_CAF8D6: LitStr "DROP TEMPORARY TABLE IF EXISTS deta;"
  loc_CAF8D9: LitStr " CREATE TEMPORARY TABLE deta"
  loc_CAF8DC: ConcatStr
  loc_CAF8DD: FStStrNoPop var_E0
  loc_CAF8E0: LitStr " SELECT acrepago.CodiEnre, acrepago.NumeAcpa, detapago.CodiConc, sum(CapiDepa-DecaDepa-ExenDepa-CrafDepa) as TotaDepa, "
  loc_CAF8E3: ConcatStr
  loc_CAF8E4: FStStrNoPop var_F8
  loc_CAF8E7: LitStr " detapago.FeenAcpa, CodiOfic, CuenCtct, PeriBole, NumeBole, sum(CapiDepa) as CapiDepa, sum(DecaDepa) as DecaDepa, sum(ExenDepa) as ExenDepa"
  loc_CAF8EA: ConcatStr
  loc_CAF8EB: FStStrNoPop var_12C
  loc_CAF8EE: LitStr " FROM detapago INNER JOIN acrepago ON acrepago.FeenAcpa = detapago.FeenAcpa AND acrepago.NumeAcpa = detapago.NumeAcpa"
  loc_CAF8F1: ConcatStr
  loc_CAF8F2: FStStrNoPop var_134
  loc_CAF8F5: LitStr " WHERE detapago.FeenAcpa BETWEEN '"
  loc_CAF8F8: ConcatStr
  loc_CAF8F9: FStStrNoPop var_138
  loc_CAF8FC: LitI4 1
  loc_CAF901: LitI4 1
  loc_CAF906: LitVarStr var_B4, "yyyy-mm-dd"
  loc_CAF90B: FStVarCopyObj var_108
  loc_CAF90E: FLdRfVar var_108
  loc_CAF911: FLdRfVar var_DC
  loc_CAF914: CStrVarTmp
  loc_CAF915: CVarStr var_F4
  loc_CAF918: ImpAdCallI2 Format$(, )
  loc_CAF91D: FStStrNoPop var_13C
  loc_CAF920: ConcatStr
  loc_CAF921: FStStrNoPop var_140
  loc_CAF924: LitStr "' AND '"
  loc_CAF927: ConcatStr
  loc_CAF928: FStStrNoPop var_154
  loc_CAF92B: LitI4 1
  loc_CAF930: LitI4 1
  loc_CAF935: LitVarStr var_C4, "yyyy-mm-dd"
  loc_CAF93A: FStVarCopyObj var_150
  loc_CAF93D: FLdRfVar var_150
  loc_CAF940: FLdRfVar var_118
  loc_CAF943: CStrVarTmp
  loc_CAF944: CVarStr var_128
  loc_CAF947: ImpAdCallI2 Format$(, )
  loc_CAF94C: FStStrNoPop var_158
  loc_CAF94F: ConcatStr
  loc_CAF950: FStStrNoPop var_15C
  loc_CAF953: LitStr "'"
  loc_CAF956: ConcatStr
  loc_CAF957: FStStrNoPop var_160
  loc_CAF95A: ILdRf var_9C
  loc_CAF95D: ConcatStr
  loc_CAF95E: FStStrNoPop var_164
  loc_CAF961: LitStr " GROUP BY "
  loc_CAF964: ConcatStr
  loc_CAF965: FStStrNoPop var_168
  loc_CAF968: ILdRf var_98
  loc_CAF96B: ConcatStr
  loc_CAF96C: FStStrNoPop var_16C
  loc_CAF96F: LitStr ";"
  loc_CAF972: ConcatStr
  loc_CAF973: FStStrNoPop var_170
  loc_CAF976: FLdPr var_130
  loc_CAF979: Call clsconcepto.RedefineRS(from_stack_1v)
  loc_CAF97E: FFreeStr var_E0 = "": var_F8 = "": var_12C = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = ""
  loc_CAF99F: FFreeAd var_C8 = ""
  loc_CAF9A6: FFreeVar var_DC = "": var_F4 = "": var_108 = "": var_118 = "": var_128 = ""
  loc_CAF9B5: LitStr "Municipalidad de Guaymallén"
  loc_CAF9B8: LitStr "Municipalidad de Rivadavia"
  loc_CAF9BB: EqStr
  loc_CAF9BD: BranchF loc_CAFF55
  loc_CAF9C0: FLdPr Me
  loc_CAF9C3: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CAF9C6: FStAdFunc var_E4
  loc_CAF9C9: FLdPr var_E4
  loc_CAF9CC: LateIdLdVar var_190 DispID_15 0
  loc_CAF9D3: PopAd
  loc_CAF9D5: FLdPr Me
  loc_CAF9D8: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_CAF9DB: FStAdFunc var_204
  loc_CAF9DE: FLdPr var_204
  loc_CAF9E1: LateIdLdVar var_214 DispID_15 0
  loc_CAF9E8: PopAd
  loc_CAF9EA: FLdPr Me
  loc_CAF9ED: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CAF9F0: FStAdFunc var_38C
  loc_CAF9F3: FLdPr var_38C
  loc_CAF9F6: LateIdLdVar var_39C DispID_15 0
  loc_CAF9FD: PopAd
  loc_CAF9FF: FLdPr Me
  loc_CAFA02: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_CAFA05: FStAdFunc var_410
  loc_CAFA08: FLdPr var_410
  loc_CAFA0B: LateIdLdVar var_420 DispID_15 0
  loc_CAFA12: PopAd
  loc_CAFA14: FLdPr Me
  loc_CAFA17: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CAFA1A: FStAdFunc var_5B8
  loc_CAFA1D: FLdPr var_5B8
  loc_CAFA20: LateIdLdVar var_5C8 DispID_15 0
  loc_CAFA27: PopAd
  loc_CAFA29: FLdPr Me
  loc_CAFA2C: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_CAFA2F: FStAdFunc var_63C
  loc_CAFA32: FLdPr var_63C
  loc_CAFA35: LateIdLdVar var_64C DispID_15 0
  loc_CAFA3C: PopAd
  loc_CAFA3E: FLdPr Me
  loc_CAFA41: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CAFA44: FStAdFunc var_7E4
  loc_CAFA47: FLdPr var_7E4
  loc_CAFA4A: LateIdLdVar var_7F4 DispID_15 0
  loc_CAFA51: PopAd
  loc_CAFA53: FLdPr Me
  loc_CAFA56: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_CAFA59: FStAdFunc var_868
  loc_CAFA5C: FLdPr var_868
  loc_CAFA5F: LateIdLdVar var_878 DispID_15 0
  loc_CAFA66: PopAd
  loc_CAFA68: FLdPr Me
  loc_CAFA6B: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CAFA6E: FStAdFunc var_9B0
  loc_CAFA71: FLdPr var_9B0
  loc_CAFA74: LateIdLdVar var_9C0 DispID_15 0
  loc_CAFA7B: PopAd
  loc_CAFA7D: FLdPr Me
  loc_CAFA80: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_CAFA83: FStAdFunc var_A34
  loc_CAFA86: FLdPr var_A34
  loc_CAFA89: LateIdLdVar var_A44 DispID_15 0
  loc_CAFA90: PopAd
  loc_CAFA92: LitStr " INSERT INTO deta SELECT acrepago.CodiEnre, acrepago.NumeAcpa, pararenta.CorePare as CodiConc, sum(RecaDepa-DereDepa) as TotaDepa, detapago.FeenAcpa, CodiOfic, CuenCtct, PeriBole, NumeBole, 0 as CapiDepa, 0 as DecaDepa, 0 as ExenDepa"
  loc_CAFA95: LitStr " FROM detapago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CAFA98: ConcatStr
  loc_CAFA99: CVarStr var_118
  loc_CAFA9C: FLdPr Me
  loc_CAFA9F: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CAFAA2: FStAdFunc var_C8
  loc_CAFAA5: FLdPr var_C8
  loc_CAFAA8: LateIdLdVar var_DC DispID_15 0
  loc_CAFAAF: CStrVarTmp
  loc_CAFAB0: CVarStr var_F4
  loc_CAFAB3: FLdRfVar var_108
  loc_CAFAB6: ImpAdCallFPR4  = Year()
  loc_CAFABB: FLdRfVar var_108
  loc_CAFABE: ConcatVar var_128
  loc_CAFAC2: LitVarStr var_B4, " INNER JOIN acrepago ON acrepago.FeenAcpa = detapago.FeenAcpa AND acrepago.NumeAcpa = detapago.NumeAcpa"
  loc_CAFAC7: ConcatVar var_150
  loc_CAFACB: LitVarStr var_C4, " WHERE detapago.FeenAcpa BETWEEN '"
  loc_CAFAD0: ConcatVar var_180
  loc_CAFAD4: LitI4 1
  loc_CAFAD9: LitI4 1
  loc_CAFADE: LitVarStr var_1B0, "yyyy-mm-dd"
  loc_CAFAE3: FStVarCopyObj var_1C0
  loc_CAFAE6: FLdRfVar var_1C0
  loc_CAFAE9: FLdRfVar var_190
  loc_CAFAEC: CStrVarTmp
  loc_CAFAED: CVarStr var_1A0
  loc_CAFAF0: ImpAdCallI2 Format$(, )
  loc_CAFAF5: CVarStr var_1D0
  loc_CAFAF8: ConcatVar var_1E0
  loc_CAFAFC: LitVarStr var_1F0, "' AND '"
  loc_CAFB01: ConcatVar var_200
  loc_CAFB05: LitI4 1
  loc_CAFB0A: LitI4 1
  loc_CAFB0F: LitVarStr var_234, "yyyy-mm-dd"
  loc_CAFB14: FStVarCopyObj var_244
  loc_CAFB17: FLdRfVar var_244
  loc_CAFB1A: FLdRfVar var_214
  loc_CAFB1D: CStrVarTmp
  loc_CAFB1E: CVarStr var_224
  loc_CAFB21: ImpAdCallI2 Format$(, )
  loc_CAFB26: CVarStr var_254
  loc_CAFB29: ConcatVar var_264
  loc_CAFB2D: LitVarStr var_274, "'"
  loc_CAFB32: ConcatVar var_284
  loc_CAFB36: ILdRf var_9C
  loc_CAFB39: CVarStr var_294
  loc_CAFB3C: ConcatVar var_2A4
  loc_CAFB40: LitVarStr var_2B4, " GROUP BY TRUE;"
  loc_CAFB45: ConcatVar var_2C4
  loc_CAFB49: LitVarStr var_2D4, " INSERT INTO deta SELECT acrepago.CodiEnre, acrepago.NumeAcpa, pararenta.CoadPare as CodiConc, sum(CoadBoap) as TotaDepa, pago.FeenAcpa, CodiOfic, CuenCtct, pago.PeriBole, pago.NumeBole, 0 as CapiDepa, 0 as DecaDepa, 0 as ExenDepa"
  loc_CAFB4E: ConcatVar var_2E4
  loc_CAFB52: LitVarStr var_2F4, " FROM pago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CAFB57: ConcatVar var_304
  loc_CAFB5B: FLdPr Me
  loc_CAFB5E: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CAFB61: FStAdFunc var_308
  loc_CAFB64: FLdPr var_308
  loc_CAFB67: LateIdLdVar var_318 DispID_15 0
  loc_CAFB6E: CStrVarTmp
  loc_CAFB6F: CVarStr var_328
  loc_CAFB72: FLdRfVar var_338
  loc_CAFB75: ImpAdCallFPR4  = Year()
  loc_CAFB7A: FLdRfVar var_338
  loc_CAFB7D: ConcatVar var_348
  loc_CAFB81: LitVarStr var_358, " INNER JOIN boleapre ON boleapre.PeriBole = pago.PeriBole AND boleapre.NumeBole = pago.NumeBole INNER JOIN acrepago ON acrepago.FeenAcpa = pago.FeenAcpa AND acrepago.NumeAcpa = pago.NumeAcpa"
  loc_CAFB86: ConcatVar var_368
  loc_CAFB8A: LitVarStr var_378, " WHERE pago.FeenAcpa BETWEEN '"
  loc_CAFB8F: ConcatVar var_388
  loc_CAFB93: LitI4 1
  loc_CAFB98: LitI4 1
  loc_CAFB9D: LitVarStr var_3BC, "yyyy-mm-dd"
  loc_CAFBA2: FStVarCopyObj var_3CC
  loc_CAFBA5: FLdRfVar var_3CC
  loc_CAFBA8: FLdRfVar var_39C
  loc_CAFBAB: CStrVarTmp
  loc_CAFBAC: CVarStr var_3AC
  loc_CAFBAF: ImpAdCallI2 Format$(, )
  loc_CAFBB4: CVarStr var_3DC
  loc_CAFBB7: ConcatVar var_3EC
  loc_CAFBBB: LitVarStr var_3FC, "' AND '"
  loc_CAFBC0: ConcatVar var_40C
  loc_CAFBC4: LitI4 1
  loc_CAFBC9: LitI4 1
  loc_CAFBCE: LitVarStr var_440, "yyyy-mm-dd"
  loc_CAFBD3: FStVarCopyObj var_450
  loc_CAFBD6: FLdRfVar var_450
  loc_CAFBD9: FLdRfVar var_420
  loc_CAFBDC: CStrVarTmp
  loc_CAFBDD: CVarStr var_430
  loc_CAFBE0: ImpAdCallI2 Format$(, )
  loc_CAFBE5: CVarStr var_460
  loc_CAFBE8: ConcatVar var_470
  loc_CAFBEC: LitVarStr var_480, "'"
  loc_CAFBF1: ConcatVar var_490
  loc_CAFBF5: ILdRf var_A0
  loc_CAFBF8: CVarStr var_4A0
  loc_CAFBFB: ConcatVar var_4B0
  loc_CAFBFF: LitVarStr var_4C0, " GROUP BY TRUE;"
  loc_CAFC04: ConcatVar var_4D0
  loc_CAFC08: LitVarStr var_4E0, " INSERT INTO deta SELECT acrepago.CodiEnre, acrepago.NumeAcpa, pararenta.CoapPare as CodiConc, sum(HoreBoap+HoofBoap+MoreBoap+MoofBoap) as TotaDepa, "
  loc_CAFC0D: ConcatVar var_4F0
  loc_CAFC11: LitVarStr var_500, " pago.FeenAcpa, CodiOfic, CuenCtct, pago.PeriBole, pago.NumeBole, 0 as CapiDepa, 0 as DecaDepa, 0 as ExenDepa"
  loc_CAFC16: ConcatVar var_510
  loc_CAFC1A: LitVarStr var_520, " FROM pago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CAFC1F: ConcatVar var_530
  loc_CAFC23: FLdPr Me
  loc_CAFC26: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CAFC29: FStAdFunc var_534
  loc_CAFC2C: FLdPr var_534
  loc_CAFC2F: LateIdLdVar var_544 DispID_15 0
  loc_CAFC36: CStrVarTmp
  loc_CAFC37: CVarStr var_554
  loc_CAFC3A: FLdRfVar var_564
  loc_CAFC3D: ImpAdCallFPR4  = Year()
  loc_CAFC42: FLdRfVar var_564
  loc_CAFC45: ConcatVar var_574
  loc_CAFC49: LitVarStr var_584, " INNER JOIN boleapre ON boleapre.PeriBole = pago.PeriBole AND boleapre.NumeBole = pago.NumeBole INNER JOIN acrepago ON acrepago.FeenAcpa = pago.FeenAcpa AND acrepago.NumeAcpa = pago.NumeAcpa"
  loc_CAFC4E: ConcatVar var_594
  loc_CAFC52: LitVarStr var_5A4, " WHERE pago.FeenAcpa BETWEEN '"
  loc_CAFC57: ConcatVar var_5B4
  loc_CAFC5B: LitI4 1
  loc_CAFC60: LitI4 1
  loc_CAFC65: LitVarStr var_5E8, "yyyy-mm-dd"
  loc_CAFC6A: FStVarCopyObj var_5F8
  loc_CAFC6D: FLdRfVar var_5F8
  loc_CAFC70: FLdRfVar var_5C8
  loc_CAFC73: CStrVarTmp
  loc_CAFC74: CVarStr var_5D8
  loc_CAFC77: ImpAdCallI2 Format$(, )
  loc_CAFC7C: CVarStr var_608
  loc_CAFC7F: ConcatVar var_618
  loc_CAFC83: LitVarStr var_628, "' AND '"
  loc_CAFC88: ConcatVar var_638
  loc_CAFC8C: LitI4 1
  loc_CAFC91: LitI4 1
  loc_CAFC96: LitVarStr var_66C, "yyyy-mm-dd"
  loc_CAFC9B: FStVarCopyObj var_67C
  loc_CAFC9E: FLdRfVar var_67C
  loc_CAFCA1: FLdRfVar var_64C
  loc_CAFCA4: CStrVarTmp
  loc_CAFCA5: CVarStr var_65C
  loc_CAFCA8: ImpAdCallI2 Format$(, )
  loc_CAFCAD: CVarStr var_68C
  loc_CAFCB0: ConcatVar var_69C
  loc_CAFCB4: LitVarStr var_6AC, "'"
  loc_CAFCB9: ConcatVar var_6BC
  loc_CAFCBD: ILdRf var_A0
  loc_CAFCC0: CVarStr var_6CC
  loc_CAFCC3: ConcatVar var_6DC
  loc_CAFCC7: LitVarStr var_6EC, " GROUP BY TRUE;"
  loc_CAFCCC: ConcatVar var_6FC
  loc_CAFCD0: LitVarStr var_70C, " INSERT INTO deta SELECT acrepago.CodiEnre, acrepago.NumeAcpa, pararenta.CoimPare as CodiConc, sum(ApleBoap+DefiBoap+ReseBoap) as TotaDepa, "
  loc_CAFCD5: ConcatVar var_71C
  loc_CAFCD9: LitVarStr var_72C, " pago.FeenAcpa, CodiOfic, CuenCtct, pago.PeriBole, pago.NumeBole, 0 as CapiDepa, 0 as DecaDepa, 0 as ExenDepa"
  loc_CAFCDE: ConcatVar var_73C
  loc_CAFCE2: LitVarStr var_74C, " FROM pago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CAFCE7: ConcatVar var_75C
  loc_CAFCEB: FLdPr Me
  loc_CAFCEE: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CAFCF1: FStAdFunc var_760
  loc_CAFCF4: FLdPr var_760
  loc_CAFCF7: LateIdLdVar var_770 DispID_15 0
  loc_CAFCFE: CStrVarTmp
  loc_CAFCFF: CVarStr var_780
  loc_CAFD02: FLdRfVar var_790
  loc_CAFD05: ImpAdCallFPR4  = Year()
  loc_CAFD0A: FLdRfVar var_790
  loc_CAFD0D: ConcatVar var_7A0
  loc_CAFD11: LitVarStr var_7B0, " INNER JOIN boleapre ON boleapre.PeriBole = pago.PeriBole AND boleapre.NumeBole = pago.NumeBole INNER JOIN acrepago ON acrepago.FeenAcpa = pago.FeenAcpa AND acrepago.NumeAcpa = pago.NumeAcpa"
  loc_CAFD16: ConcatVar var_7C0
  loc_CAFD1A: LitVarStr var_7D0, " WHERE pago.FeenAcpa BETWEEN '"
  loc_CAFD1F: ConcatVar var_7E0
  loc_CAFD23: LitI4 1
  loc_CAFD28: LitI4 1
  loc_CAFD2D: LitVarStr var_814, "yyyy-mm-dd"
  loc_CAFD32: FStVarCopyObj var_824
  loc_CAFD35: FLdRfVar var_824
  loc_CAFD38: FLdRfVar var_7F4
  loc_CAFD3B: CStrVarTmp
  loc_CAFD3C: CVarStr var_804
  loc_CAFD3F: ImpAdCallI2 Format$(, )
  loc_CAFD44: CVarStr var_834
  loc_CAFD47: ConcatVar var_844
  loc_CAFD4B: LitVarStr var_854, "' AND '"
  loc_CAFD50: ConcatVar var_864
  loc_CAFD54: LitI4 1
  loc_CAFD59: LitI4 1
  loc_CAFD5E: LitVarStr var_898, "yyyy-mm-dd"
  loc_CAFD63: FStVarCopyObj var_8A8
  loc_CAFD66: FLdRfVar var_8A8
  loc_CAFD69: FLdRfVar var_878
  loc_CAFD6C: CStrVarTmp
  loc_CAFD6D: CVarStr var_888
  loc_CAFD70: ImpAdCallI2 Format$(, )
  loc_CAFD75: CVarStr var_8B8
  loc_CAFD78: ConcatVar var_8C8
  loc_CAFD7C: LitVarStr var_8D8, "'"
  loc_CAFD81: ConcatVar var_8E8
  loc_CAFD85: ILdRf var_A0
  loc_CAFD88: CVarStr var_8F8
  loc_CAFD8B: ConcatVar var_908
  loc_CAFD8F: LitVarStr var_918, " GROUP BY TRUE; INSERT INTO deta SELECT acrepago.CodiEnre, acrepago.NumeAcpa, pararenta.CoinPare as CodiConc, sum(InteDepa) as TotaDepa, detapago.FeenAcpa, CodiOfic, CuenCtct, PeriBole, NumeBole, 0 as CapiDepa, 0 as DecaDepa, 0 as ExenDepa FROM detapago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CAFD94: ConcatVar var_928
  loc_CAFD98: FLdPr Me
  loc_CAFD9B: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CAFD9E: FStAdFunc var_92C
  loc_CAFDA1: FLdPr var_92C
  loc_CAFDA4: LateIdLdVar var_93C DispID_15 0
  loc_CAFDAB: CStrVarTmp
  loc_CAFDAC: CVarStr var_94C
  loc_CAFDAF: FLdRfVar var_95C
  loc_CAFDB2: ImpAdCallFPR4  = Year()
  loc_CAFDB7: FLdRfVar var_95C
  loc_CAFDBA: ConcatVar var_96C
  loc_CAFDBE: LitVarStr var_97C, " INNER JOIN acrepago ON acrepago.FeenAcpa = detapago.FeenAcpa AND acrepago.NumeAcpa = detapago.NumeAcpa "
  loc_CAFDC3: ConcatVar var_98C
  loc_CAFDC7: LitVarStr var_99C, " WHERE detapago.FeenAcpa BETWEEN '"
  loc_CAFDCC: ConcatVar var_9AC
  loc_CAFDD0: LitI4 1
  loc_CAFDD5: LitI4 1
  loc_CAFDDA: LitVarStr var_9E0, "yyyy-mm-dd"
  loc_CAFDDF: FStVarCopyObj var_9F0
  loc_CAFDE2: FLdRfVar var_9F0
  loc_CAFDE5: FLdRfVar var_9C0
  loc_CAFDE8: CStrVarTmp
  loc_CAFDE9: CVarStr var_9D0
  loc_CAFDEC: ImpAdCallI2 Format$(, )
  loc_CAFDF1: CVarStr var_A00
  loc_CAFDF4: ConcatVar var_A10
  loc_CAFDF8: LitVarStr var_A20, "' AND '"
  loc_CAFDFD: ConcatVar var_A30
  loc_CAFE01: LitI4 1
  loc_CAFE06: LitI4 1
  loc_CAFE0B: LitVarStr var_A64, "yyyy-mm-dd"
  loc_CAFE10: FStVarCopyObj var_A74
  loc_CAFE13: FLdRfVar var_A74
  loc_CAFE16: FLdRfVar var_A44
  loc_CAFE19: CStrVarTmp
  loc_CAFE1A: CVarStr var_A54
  loc_CAFE1D: ImpAdCallI2 Format$(, )
  loc_CAFE22: CVarStr var_A84
  loc_CAFE25: ConcatVar var_A94
  loc_CAFE29: LitVarStr var_AA4, "'"
  loc_CAFE2E: ConcatVar var_AB4
  loc_CAFE32: ILdRf var_9C
  loc_CAFE35: CVarStr var_AC4
  loc_CAFE38: ConcatVar var_AD4
  loc_CAFE3C: LitVarStr var_AE4, " GROUP BY TRUE;"
  loc_CAFE41: ConcatVar var_AF4
  loc_CAFE45: CStrVarVal var_E0
  loc_CAFE49: FLdPr var_130
  loc_CAFE4C: Call clsconcepto.RedefineRS(from_stack_1v)
  loc_CAFE51: FFree1Str var_E0
  loc_CAFE54: FFreeAd var_C8 = "": var_E4 = "": var_204 = "": var_308 = "": var_38C = "": var_410 = "": var_534 = "": var_5B8 = "": var_63C = "": var_760 = "": var_7E4 = "": var_868 = "": var_92C = "": var_9B0 = ""
  loc_CAFE75: FFreeVar var_928 = "": var_95C = "": var_96C = "": var_98C = "": var_9C0 = "": var_9D0 = "": var_9F0 = "": var_9AC = "": var_A00 = "": var_A10 = "": var_A44 = "": var_A54 = "": var_A74 = "": var_A30 = "": var_A84 = "": var_A94 = "": var_AB4 = "": var_AD4 = "": var_AF4 = "": var_638 = "": var_68C = "": var_69C = "": var_6BC = "": var_6DC = "": var_6FC = "": var_71C = "": var_73C = "": var_770 = "": var_780 = "": var_75C = "": var_790 = "": var_7A0 = "": var_7C0 = "": var_7F4 = "": var_804 = "": var_824 = "": var_7E0 = "": var_834 = "": var_844 = "": var_878 = "": var_888 = "": var_8A8 = "": var_864 = "": var_8B8 = "": var_8C8 = "": var_8E8 = "": var_908 = "": var_93C = "": var_94C = "": var_3CC = "": var_388 = "": var_3DC = "": var_3EC = "": var_420 = "": var_430 = "": var_450 = "": var_40C = "": var_460 = "": var_470 = "": var_490 = "": var_4B0 = "": var_4D0 = "": var_4F0 = "": var_510 = "": var_544 = "": var_554 = "": var_530 = "": var_564 = "": var_574 = "": var_594 = "": var_5C8 = "": var_5D8 = "": var_5F8 = "": var_5B4 = "": var_608 = "": var_618 = "": var_64C = "": var_65C = "": var_67C = "": var_DC = "": var_F4 = "": var_118 = "": var_108 = "": var_128 = "": var_150 = "": var_190 = "": var_1A0 = "": var_1C0 = "": var_180 = "": var_1D0 = "": var_1E0 = "": var_214 = "": var_224 = "": var_244 = "": var_200 = "": var_254 = "": var_264 = "": var_284 = "": var_2A4 = "": var_2C4 = "": var_2E4 = "": var_318 = "": var_328 = "": var_304 = "": var_338 = "": var_348 = "": var_368 = "": var_39C = ""
  loc_CAFF52: Branch loc_CB0E28
  loc_CAFF55: LitStr "Municipalidad de Guaymallén"
  loc_CAFF58: LitStr "Municipalidad de Guaymallén"
  loc_CAFF5B: EqStr
  loc_CAFF5D: BranchF loc_CB04F5
  loc_CAFF60: FLdPr Me
  loc_CAFF63: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CAFF66: FStAdFunc var_E4
  loc_CAFF69: FLdPr var_E4
  loc_CAFF6C: LateIdLdVar var_190 DispID_15 0
  loc_CAFF73: PopAd
  loc_CAFF75: FLdPr Me
  loc_CAFF78: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_CAFF7B: FStAdFunc var_204
  loc_CAFF7E: FLdPr var_204
  loc_CAFF81: LateIdLdVar var_214 DispID_15 0
  loc_CAFF88: PopAd
  loc_CAFF8A: FLdPr Me
  loc_CAFF8D: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CAFF90: FStAdFunc var_38C
  loc_CAFF93: FLdPr var_38C
  loc_CAFF96: LateIdLdVar var_39C DispID_15 0
  loc_CAFF9D: PopAd
  loc_CAFF9F: FLdPr Me
  loc_CAFFA2: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_CAFFA5: FStAdFunc var_410
  loc_CAFFA8: FLdPr var_410
  loc_CAFFAB: LateIdLdVar var_420 DispID_15 0
  loc_CAFFB2: PopAd
  loc_CAFFB4: FLdPr Me
  loc_CAFFB7: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CAFFBA: FStAdFunc var_5B8
  loc_CAFFBD: FLdPr var_5B8
  loc_CAFFC0: LateIdLdVar var_5C8 DispID_15 0
  loc_CAFFC7: PopAd
  loc_CAFFC9: FLdPr Me
  loc_CAFFCC: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_CAFFCF: FStAdFunc var_63C
  loc_CAFFD2: FLdPr var_63C
  loc_CAFFD5: LateIdLdVar var_64C DispID_15 0
  loc_CAFFDC: PopAd
  loc_CAFFDE: FLdPr Me
  loc_CAFFE1: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CAFFE4: FStAdFunc var_7E4
  loc_CAFFE7: FLdPr var_7E4
  loc_CAFFEA: LateIdLdVar var_7F4 DispID_15 0
  loc_CAFFF1: PopAd
  loc_CAFFF3: FLdPr Me
  loc_CAFFF6: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_CAFFF9: FStAdFunc var_868
  loc_CAFFFC: FLdPr var_868
  loc_CAFFFF: LateIdLdVar var_878 DispID_15 0
  loc_CB0006: PopAd
  loc_CB0008: FLdPr Me
  loc_CB000B: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CB000E: FStAdFunc var_9B0
  loc_CB0011: FLdPr var_9B0
  loc_CB0014: LateIdLdVar var_9C0 DispID_15 0
  loc_CB001B: PopAd
  loc_CB001D: FLdPr Me
  loc_CB0020: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_CB0023: FStAdFunc var_A34
  loc_CB0026: FLdPr var_A34
  loc_CB0029: LateIdLdVar var_A44 DispID_15 0
  loc_CB0030: PopAd
  loc_CB0032: LitStr " INSERT INTO deta SELECT acrepago.CodiEnre, acrepago.NumeAcpa, pararenta.CorePare as CodiConc, sum(RecaDepa-DereDepa) as TotaDepa, detapago.FeenAcpa, CodiOfic, CuenCtct, PeriBole, NumeBole, 0 as CapiDepa, 0 as DecaDepa, 0 as ExenDepa"
  loc_CB0035: LitStr " FROM detapago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CB0038: ConcatStr
  loc_CB0039: CVarStr var_118
  loc_CB003C: FLdPr Me
  loc_CB003F: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CB0042: FStAdFunc var_C8
  loc_CB0045: FLdPr var_C8
  loc_CB0048: LateIdLdVar var_DC DispID_15 0
  loc_CB004F: CStrVarTmp
  loc_CB0050: CVarStr var_F4
  loc_CB0053: FLdRfVar var_108
  loc_CB0056: ImpAdCallFPR4  = Year()
  loc_CB005B: FLdRfVar var_108
  loc_CB005E: ConcatVar var_128
  loc_CB0062: LitVarStr var_B4, " INNER JOIN acrepago ON acrepago.FeenAcpa = detapago.FeenAcpa AND acrepago.NumeAcpa = detapago.NumeAcpa"
  loc_CB0067: ConcatVar var_150
  loc_CB006B: LitVarStr var_C4, " WHERE detapago.FeenAcpa BETWEEN '"
  loc_CB0070: ConcatVar var_180
  loc_CB0074: LitI4 1
  loc_CB0079: LitI4 1
  loc_CB007E: LitVarStr var_1B0, "yyyy-mm-dd"
  loc_CB0083: FStVarCopyObj var_1C0
  loc_CB0086: FLdRfVar var_1C0
  loc_CB0089: FLdRfVar var_190
  loc_CB008C: CStrVarTmp
  loc_CB008D: CVarStr var_1A0
  loc_CB0090: ImpAdCallI2 Format$(, )
  loc_CB0095: CVarStr var_1D0
  loc_CB0098: ConcatVar var_1E0
  loc_CB009C: LitVarStr var_1F0, "' AND '"
  loc_CB00A1: ConcatVar var_200
  loc_CB00A5: LitI4 1
  loc_CB00AA: LitI4 1
  loc_CB00AF: LitVarStr var_234, "yyyy-mm-dd"
  loc_CB00B4: FStVarCopyObj var_244
  loc_CB00B7: FLdRfVar var_244
  loc_CB00BA: FLdRfVar var_214
  loc_CB00BD: CStrVarTmp
  loc_CB00BE: CVarStr var_224
  loc_CB00C1: ImpAdCallI2 Format$(, )
  loc_CB00C6: CVarStr var_254
  loc_CB00C9: ConcatVar var_264
  loc_CB00CD: LitVarStr var_274, "'"
  loc_CB00D2: ConcatVar var_284
  loc_CB00D6: ILdRf var_9C
  loc_CB00D9: CVarStr var_294
  loc_CB00DC: ConcatVar var_2A4
  loc_CB00E0: LitVarStr var_2B4, " GROUP BY TRUE;"
  loc_CB00E5: ConcatVar var_2C4
  loc_CB00E9: LitVarStr var_2D4, " INSERT INTO deta SELECT acrepago.CodiEnre, acrepago.NumeAcpa, pararenta.CoadPare as CodiConc, SUM(CoadBoap+IcomBoap) as TotaDepa, pago.FeenAcpa, CodiOfic, CuenCtct, pago.PeriBole, pago.NumeBole, 0 as CapiDepa, 0 as DecaDepa, 0 as ExenDepa"
  loc_CB00EE: ConcatVar var_2E4
  loc_CB00F2: LitVarStr var_2F4, " FROM pago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CB00F7: ConcatVar var_304
  loc_CB00FB: FLdPr Me
  loc_CB00FE: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CB0101: FStAdFunc var_308
  loc_CB0104: FLdPr var_308
  loc_CB0107: LateIdLdVar var_318 DispID_15 0
  loc_CB010E: CStrVarTmp
  loc_CB010F: CVarStr var_328
  loc_CB0112: FLdRfVar var_338
  loc_CB0115: ImpAdCallFPR4  = Year()
  loc_CB011A: FLdRfVar var_338
  loc_CB011D: ConcatVar var_348
  loc_CB0121: LitVarStr var_358, " INNER JOIN boleapre ON boleapre.PeriBole = pago.PeriBole AND boleapre.NumeBole = pago.NumeBole  INNER JOIN acrepago ON acrepago.FeenAcpa = pago.FeenAcpa AND acrepago.NumeAcpa = pago.NumeAcpa"
  loc_CB0126: ConcatVar var_368
  loc_CB012A: LitVarStr var_378, " WHERE pago.FeenAcpa BETWEEN '"
  loc_CB012F: ConcatVar var_388
  loc_CB0133: LitI4 1
  loc_CB0138: LitI4 1
  loc_CB013D: LitVarStr var_3BC, "yyyy-mm-dd"
  loc_CB0142: FStVarCopyObj var_3CC
  loc_CB0145: FLdRfVar var_3CC
  loc_CB0148: FLdRfVar var_39C
  loc_CB014B: CStrVarTmp
  loc_CB014C: CVarStr var_3AC
  loc_CB014F: ImpAdCallI2 Format$(, )
  loc_CB0154: CVarStr var_3DC
  loc_CB0157: ConcatVar var_3EC
  loc_CB015B: LitVarStr var_3FC, "' AND '"
  loc_CB0160: ConcatVar var_40C
  loc_CB0164: LitI4 1
  loc_CB0169: LitI4 1
  loc_CB016E: LitVarStr var_440, "yyyy-mm-dd"
  loc_CB0173: FStVarCopyObj var_450
  loc_CB0176: FLdRfVar var_450
  loc_CB0179: FLdRfVar var_420
  loc_CB017C: CStrVarTmp
  loc_CB017D: CVarStr var_430
  loc_CB0180: ImpAdCallI2 Format$(, )
  loc_CB0185: CVarStr var_460
  loc_CB0188: ConcatVar var_470
  loc_CB018C: LitVarStr var_480, "'"
  loc_CB0191: ConcatVar var_490
  loc_CB0195: ILdRf var_A0
  loc_CB0198: CVarStr var_4A0
  loc_CB019B: ConcatVar var_4B0
  loc_CB019F: LitVarStr var_4C0, " GROUP BY TRUE;"
  loc_CB01A4: ConcatVar var_4D0
  loc_CB01A8: LitVarStr var_4E0, " INSERT INTO deta SELECT acrepago.CodiEnre, acrepago.NumeAcpa, pararenta.CoapPare as CodiConc, SUM(HoreBoap+HoofBoap+MoreBoap+MoofBoap+IrecBoap+IofiBoap) as TotaDepa, "
  loc_CB01AD: ConcatVar var_4F0
  loc_CB01B1: LitVarStr var_500, " pago.FeenAcpa, CodiOfic, CuenCtct, pago.PeriBole, pago.NumeBole, 0 as CapiDepa, 0 as DecaDepa, 0 as ExenDepa"
  loc_CB01B6: ConcatVar var_510
  loc_CB01BA: LitVarStr var_520, " FROM pago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CB01BF: ConcatVar var_530
  loc_CB01C3: FLdPr Me
  loc_CB01C6: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CB01C9: FStAdFunc var_534
  loc_CB01CC: FLdPr var_534
  loc_CB01CF: LateIdLdVar var_544 DispID_15 0
  loc_CB01D6: CStrVarTmp
  loc_CB01D7: CVarStr var_554
  loc_CB01DA: FLdRfVar var_564
  loc_CB01DD: ImpAdCallFPR4  = Year()
  loc_CB01E2: FLdRfVar var_564
  loc_CB01E5: ConcatVar var_574
  loc_CB01E9: LitVarStr var_584, " INNER JOIN boleapre ON boleapre.PeriBole = pago.PeriBole AND boleapre.NumeBole = pago.NumeBole INNER JOIN acrepago ON acrepago.FeenAcpa = pago.FeenAcpa AND acrepago.NumeAcpa = pago.NumeAcpa"
  loc_CB01EE: ConcatVar var_594
  loc_CB01F2: LitVarStr var_5A4, " WHERE pago.FeenAcpa BETWEEN '"
  loc_CB01F7: ConcatVar var_5B4
  loc_CB01FB: LitI4 1
  loc_CB0200: LitI4 1
  loc_CB0205: LitVarStr var_5E8, "yyyy-mm-dd"
  loc_CB020A: FStVarCopyObj var_5F8
  loc_CB020D: FLdRfVar var_5F8
  loc_CB0210: FLdRfVar var_5C8
  loc_CB0213: CStrVarTmp
  loc_CB0214: CVarStr var_5D8
  loc_CB0217: ImpAdCallI2 Format$(, )
  loc_CB021C: CVarStr var_608
  loc_CB021F: ConcatVar var_618
  loc_CB0223: LitVarStr var_628, "' AND '"
  loc_CB0228: ConcatVar var_638
  loc_CB022C: LitI4 1
  loc_CB0231: LitI4 1
  loc_CB0236: LitVarStr var_66C, "yyyy-mm-dd"
  loc_CB023B: FStVarCopyObj var_67C
  loc_CB023E: FLdRfVar var_67C
  loc_CB0241: FLdRfVar var_64C
  loc_CB0244: CStrVarTmp
  loc_CB0245: CVarStr var_65C
  loc_CB0248: ImpAdCallI2 Format$(, )
  loc_CB024D: CVarStr var_68C
  loc_CB0250: ConcatVar var_69C
  loc_CB0254: LitVarStr var_6AC, "'"
  loc_CB0259: ConcatVar var_6BC
  loc_CB025D: ILdRf var_A0
  loc_CB0260: CVarStr var_6CC
  loc_CB0263: ConcatVar var_6DC
  loc_CB0267: LitVarStr var_6EC, " GROUP BY TRUE;"
  loc_CB026C: ConcatVar var_6FC
  loc_CB0270: LitVarStr var_70C, " INSERT INTO deta SELECT acrepago.CodiEnre, acrepago.NumeAcpa, pararenta.CoimPare as CodiConc, SUM(ApleBoap+DefiBoap+ReseBoap) as TotaDepa, "
  loc_CB0275: ConcatVar var_71C
  loc_CB0279: LitVarStr var_72C, " pago.FeenAcpa, CodiOfic, CuenCtct, pago.PeriBole, pago.NumeBole, 0 as CapiDepa, 0 as DecaDepa, 0 as ExenDepa"
  loc_CB027E: ConcatVar var_73C
  loc_CB0282: LitVarStr var_74C, " FROM pago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CB0287: ConcatVar var_75C
  loc_CB028B: FLdPr Me
  loc_CB028E: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CB0291: FStAdFunc var_760
  loc_CB0294: FLdPr var_760
  loc_CB0297: LateIdLdVar var_770 DispID_15 0
  loc_CB029E: CStrVarTmp
  loc_CB029F: CVarStr var_780
  loc_CB02A2: FLdRfVar var_790
  loc_CB02A5: ImpAdCallFPR4  = Year()
  loc_CB02AA: FLdRfVar var_790
  loc_CB02AD: ConcatVar var_7A0
  loc_CB02B1: LitVarStr var_7B0, " INNER JOIN boleapre ON boleapre.PeriBole = pago.PeriBole AND boleapre.NumeBole = pago.NumeBole INNER JOIN acrepago ON acrepago.FeenAcpa = pago.FeenAcpa AND acrepago.NumeAcpa = pago.NumeAcpa"
  loc_CB02B6: ConcatVar var_7C0
  loc_CB02BA: LitVarStr var_7D0, " WHERE pago.FeenAcpa BETWEEN '"
  loc_CB02BF: ConcatVar var_7E0
  loc_CB02C3: LitI4 1
  loc_CB02C8: LitI4 1
  loc_CB02CD: LitVarStr var_814, "yyyy-mm-dd"
  loc_CB02D2: FStVarCopyObj var_824
  loc_CB02D5: FLdRfVar var_824
  loc_CB02D8: FLdRfVar var_7F4
  loc_CB02DB: CStrVarTmp
  loc_CB02DC: CVarStr var_804
  loc_CB02DF: ImpAdCallI2 Format$(, )
  loc_CB02E4: CVarStr var_834
  loc_CB02E7: ConcatVar var_844
  loc_CB02EB: LitVarStr var_854, "' AND '"
  loc_CB02F0: ConcatVar var_864
  loc_CB02F4: LitI4 1
  loc_CB02F9: LitI4 1
  loc_CB02FE: LitVarStr var_898, "yyyy-mm-dd"
  loc_CB0303: FStVarCopyObj var_8A8
  loc_CB0306: FLdRfVar var_8A8
  loc_CB0309: FLdRfVar var_878
  loc_CB030C: CStrVarTmp
  loc_CB030D: CVarStr var_888
  loc_CB0310: ImpAdCallI2 Format$(, )
  loc_CB0315: CVarStr var_8B8
  loc_CB0318: ConcatVar var_8C8
  loc_CB031C: LitVarStr var_8D8, "'"
  loc_CB0321: ConcatVar var_8E8
  loc_CB0325: ILdRf var_A0
  loc_CB0328: CVarStr var_8F8
  loc_CB032B: ConcatVar var_908
  loc_CB032F: LitVarStr var_918, " GROUP BY TRUE; INSERT INTO deta SELECT acrepago.CodiEnre, acrepago.NumeAcpa, pararenta.CoinPare as CodiConc, sum(InteDepa) as TotaDepa, detapago.FeenAcpa, CodiOfic, CuenCtct, PeriBole, NumeBole, 0 as CapiDepa, 0 as DecaDepa, 0 as ExenDepa FROM detapago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CB0334: ConcatVar var_928
  loc_CB0338: FLdPr Me
  loc_CB033B: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CB033E: FStAdFunc var_92C
  loc_CB0341: FLdPr var_92C
  loc_CB0344: LateIdLdVar var_93C DispID_15 0
  loc_CB034B: CStrVarTmp
  loc_CB034C: CVarStr var_94C
  loc_CB034F: FLdRfVar var_95C
  loc_CB0352: ImpAdCallFPR4  = Year()
  loc_CB0357: FLdRfVar var_95C
  loc_CB035A: ConcatVar var_96C
  loc_CB035E: LitVarStr var_97C, " INNER JOIN acrepago ON acrepago.FeenAcpa = detapago.FeenAcpa AND acrepago.NumeAcpa = detapago.NumeAcpa "
  loc_CB0363: ConcatVar var_98C
  loc_CB0367: LitVarStr var_99C, " WHERE detapago.FeenAcpa BETWEEN '"
  loc_CB036C: ConcatVar var_9AC
  loc_CB0370: LitI4 1
  loc_CB0375: LitI4 1
  loc_CB037A: LitVarStr var_9E0, "yyyy-mm-dd"
  loc_CB037F: FStVarCopyObj var_9F0
  loc_CB0382: FLdRfVar var_9F0
  loc_CB0385: FLdRfVar var_9C0
  loc_CB0388: CStrVarTmp
  loc_CB0389: CVarStr var_9D0
  loc_CB038C: ImpAdCallI2 Format$(, )
  loc_CB0391: CVarStr var_A00
  loc_CB0394: ConcatVar var_A10
  loc_CB0398: LitVarStr var_A20, "' AND '"
  loc_CB039D: ConcatVar var_A30
  loc_CB03A1: LitI4 1
  loc_CB03A6: LitI4 1
  loc_CB03AB: LitVarStr var_A64, "yyyy-mm-dd"
  loc_CB03B0: FStVarCopyObj var_A74
  loc_CB03B3: FLdRfVar var_A74
  loc_CB03B6: FLdRfVar var_A44
  loc_CB03B9: CStrVarTmp
  loc_CB03BA: CVarStr var_A54
  loc_CB03BD: ImpAdCallI2 Format$(, )
  loc_CB03C2: CVarStr var_A84
  loc_CB03C5: ConcatVar var_A94
  loc_CB03C9: LitVarStr var_AA4, "'"
  loc_CB03CE: ConcatVar var_AB4
  loc_CB03D2: ILdRf var_9C
  loc_CB03D5: CVarStr var_AC4
  loc_CB03D8: ConcatVar var_AD4
  loc_CB03DC: LitVarStr var_AE4, " GROUP BY TRUE;"
  loc_CB03E1: ConcatVar var_AF4
  loc_CB03E5: CStrVarVal var_E0
  loc_CB03E9: FLdPr var_130
  loc_CB03EC: Call clsconcepto.RedefineRS(from_stack_1v)
  loc_CB03F1: FFree1Str var_E0
  loc_CB03F4: FFreeAd var_C8 = "": var_E4 = "": var_204 = "": var_308 = "": var_38C = "": var_410 = "": var_534 = "": var_5B8 = "": var_63C = "": var_760 = "": var_7E4 = "": var_868 = "": var_92C = "": var_9B0 = ""
  loc_CB0415: FFreeVar var_928 = "": var_95C = "": var_96C = "": var_98C = "": var_9C0 = "": var_9D0 = "": var_9F0 = "": var_9AC = "": var_A00 = "": var_A10 = "": var_A44 = "": var_A54 = "": var_A74 = "": var_A30 = "": var_A84 = "": var_A94 = "": var_AB4 = "": var_AD4 = "": var_AF4 = "": var_638 = "": var_68C = "": var_69C = "": var_6BC = "": var_6DC = "": var_6FC = "": var_71C = "": var_73C = "": var_770 = "": var_780 = "": var_75C = "": var_790 = "": var_7A0 = "": var_7C0 = "": var_7F4 = "": var_804 = "": var_824 = "": var_7E0 = "": var_834 = "": var_844 = "": var_878 = "": var_888 = "": var_8A8 = "": var_864 = "": var_8B8 = "": var_8C8 = "": var_8E8 = "": var_908 = "": var_93C = "": var_94C = "": var_3CC = "": var_388 = "": var_3DC = "": var_3EC = "": var_420 = "": var_430 = "": var_450 = "": var_40C = "": var_460 = "": var_470 = "": var_490 = "": var_4B0 = "": var_4D0 = "": var_4F0 = "": var_510 = "": var_544 = "": var_554 = "": var_530 = "": var_564 = "": var_574 = "": var_594 = "": var_5C8 = "": var_5D8 = "": var_5F8 = "": var_5B4 = "": var_608 = "": var_618 = "": var_64C = "": var_65C = "": var_67C = "": var_DC = "": var_F4 = "": var_118 = "": var_108 = "": var_128 = "": var_150 = "": var_190 = "": var_1A0 = "": var_1C0 = "": var_180 = "": var_1D0 = "": var_1E0 = "": var_214 = "": var_224 = "": var_244 = "": var_200 = "": var_254 = "": var_264 = "": var_284 = "": var_2A4 = "": var_2C4 = "": var_2E4 = "": var_318 = "": var_328 = "": var_304 = "": var_338 = "": var_348 = "": var_368 = "": var_39C = ""
  loc_CB04F2: Branch loc_CB0E28
  loc_CB04F5: LitStr "Municipalidad de Guaymallén"
  loc_CB04F8: LitStr "Municipalidad de San Martin"
  loc_CB04FB: EqStr
  loc_CB04FD: BranchF loc_CB0985
  loc_CB0500: FLdPr Me
  loc_CB0503: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CB0506: FStAdFunc var_E4
  loc_CB0509: FLdPr var_E4
  loc_CB050C: LateIdLdVar var_190 DispID_15 0
  loc_CB0513: PopAd
  loc_CB0515: FLdPr Me
  loc_CB0518: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_CB051B: FStAdFunc var_204
  loc_CB051E: FLdPr var_204
  loc_CB0521: LateIdLdVar var_214 DispID_15 0
  loc_CB0528: PopAd
  loc_CB052A: FLdPr Me
  loc_CB052D: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CB0530: FStAdFunc var_38C
  loc_CB0533: FLdPr var_38C
  loc_CB0536: LateIdLdVar var_3AC DispID_15 0
  loc_CB053D: PopAd
  loc_CB053F: FLdPr Me
  loc_CB0542: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_CB0545: FStAdFunc var_410
  loc_CB0548: FLdPr var_410
  loc_CB054B: LateIdLdVar var_430 DispID_15 0
  loc_CB0552: PopAd
  loc_CB0554: FLdPr Me
  loc_CB0557: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CB055A: FStAdFunc var_5B8
  loc_CB055D: FLdPr var_5B8
  loc_CB0560: LateIdLdVar var_5D8 DispID_15 0
  loc_CB0567: PopAd
  loc_CB0569: FLdPr Me
  loc_CB056C: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_CB056F: FStAdFunc var_63C
  loc_CB0572: FLdPr var_63C
  loc_CB0575: LateIdLdVar var_65C DispID_15 0
  loc_CB057C: PopAd
  loc_CB057E: FLdPr Me
  loc_CB0581: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CB0584: FStAdFunc var_7E4
  loc_CB0587: FLdPr var_7E4
  loc_CB058A: LateIdLdVar var_7E0 DispID_15 0
  loc_CB0591: PopAd
  loc_CB0593: FLdPr Me
  loc_CB0596: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_CB0599: FStAdFunc var_868
  loc_CB059C: FLdPr var_868
  loc_CB059F: LateIdLdVar var_864 DispID_15 0
  loc_CB05A6: PopAd
  loc_CB05A8: LitStr " INSERT INTO deta SELECT acrepago.CodiEnre, acrepago.NumeAcpa, pararenta.CorePare as CodiConc, sum(RecaDepa-DereDepa) as TotaDepa, detapago.FeenAcpa, CodiOfic, CuenCtct, PeriBole, NumeBole, 0 as CapiDepa, 0 as DecaDepa, 0 as ExenDepa"
  loc_CB05AB: LitStr " FROM detapago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CB05AE: ConcatStr
  loc_CB05AF: CVarStr var_118
  loc_CB05B2: FLdPr Me
  loc_CB05B5: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CB05B8: FStAdFunc var_C8
  loc_CB05BB: FLdPr var_C8
  loc_CB05BE: LateIdLdVar var_DC DispID_15 0
  loc_CB05C5: CStrVarTmp
  loc_CB05C6: CVarStr var_F4
  loc_CB05C9: FLdRfVar var_108
  loc_CB05CC: ImpAdCallFPR4  = Year()
  loc_CB05D1: FLdRfVar var_108
  loc_CB05D4: ConcatVar var_128
  loc_CB05D8: LitVarStr var_B4, " INNER JOIN acrepago ON acrepago.FeenAcpa = detapago.FeenAcpa AND acrepago.NumeAcpa = detapago.NumeAcpa"
  loc_CB05DD: ConcatVar var_150
  loc_CB05E1: LitVarStr var_C4, " WHERE detapago.FeenAcpa BETWEEN '"
  loc_CB05E6: ConcatVar var_180
  loc_CB05EA: LitI4 1
  loc_CB05EF: LitI4 1
  loc_CB05F4: LitVarStr var_1B0, "yyyy-mm-dd"
  loc_CB05F9: FStVarCopyObj var_1C0
  loc_CB05FC: FLdRfVar var_1C0
  loc_CB05FF: FLdRfVar var_190
  loc_CB0602: CStrVarTmp
  loc_CB0603: CVarStr var_1A0
  loc_CB0606: ImpAdCallI2 Format$(, )
  loc_CB060B: CVarStr var_1D0
  loc_CB060E: ConcatVar var_1E0
  loc_CB0612: LitVarStr var_1F0, "' AND '"
  loc_CB0617: ConcatVar var_200
  loc_CB061B: LitI4 1
  loc_CB0620: LitI4 1
  loc_CB0625: LitVarStr var_234, "yyyy-mm-dd"
  loc_CB062A: FStVarCopyObj var_244
  loc_CB062D: FLdRfVar var_244
  loc_CB0630: FLdRfVar var_214
  loc_CB0633: CStrVarTmp
  loc_CB0634: CVarStr var_224
  loc_CB0637: ImpAdCallI2 Format$(, )
  loc_CB063C: CVarStr var_254
  loc_CB063F: ConcatVar var_264
  loc_CB0643: LitVarStr var_274, "'"
  loc_CB0648: ConcatVar var_284
  loc_CB064C: ILdRf var_9C
  loc_CB064F: CVarStr var_294
  loc_CB0652: ConcatVar var_2A4
  loc_CB0656: LitVarStr var_2B4, " GROUP BY TRUE;"
  loc_CB065B: ConcatVar var_2C4
  loc_CB065F: LitVarStr var_2D4, " INSERT INTO deta SELECT acrepago.CodiEnre, acrepago.NumeAcpa, pararenta.CoapPare as CodiConc, SUM(HoreBoap+HoofBoap+HoofBoapDema+MoreBoap+MoofBoap+MoofBoapDema+IrecBoap+IofiBoap+TrabBoap) as TotaDepa, "
  loc_CB0664: ConcatVar var_2E4
  loc_CB0668: LitVarStr var_2F4, " pago.FeenAcpa, CodiOfic, CuenCtct, pago.PeriBole, pago.NumeBole, 0 as CapiDepa, 0 as DecaDepa, 0 as ExenDepa"
  loc_CB066D: ConcatVar var_304
  loc_CB0671: LitVarStr var_358, " FROM pago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CB0676: ConcatVar var_318
  loc_CB067A: FLdPr Me
  loc_CB067D: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CB0680: FStAdFunc var_308
  loc_CB0683: FLdPr var_308
  loc_CB0686: LateIdLdVar var_328 DispID_15 0
  loc_CB068D: CStrVarTmp
  loc_CB068E: CVarStr var_338
  loc_CB0691: FLdRfVar var_348
  loc_CB0694: ImpAdCallFPR4  = Year()
  loc_CB0699: FLdRfVar var_348
  loc_CB069C: ConcatVar var_368
  loc_CB06A0: LitVarStr var_378, " INNER JOIN boleapre ON boleapre.PeriBole = pago.PeriBole AND boleapre.NumeBole = pago.NumeBole INNER JOIN acrepago ON acrepago.FeenAcpa = pago.FeenAcpa AND acrepago.NumeAcpa = pago.NumeAcpa"
  loc_CB06A5: ConcatVar var_388
  loc_CB06A9: LitVarStr var_3BC, " WHERE pago.FeenAcpa BETWEEN '"
  loc_CB06AE: ConcatVar var_39C
  loc_CB06B2: LitI4 1
  loc_CB06B7: LitI4 1
  loc_CB06BC: LitVarStr var_3FC, "yyyy-mm-dd"
  loc_CB06C1: FStVarCopyObj var_3DC
  loc_CB06C4: FLdRfVar var_3DC
  loc_CB06C7: FLdRfVar var_3AC
  loc_CB06CA: CStrVarTmp
  loc_CB06CB: CVarStr var_3CC
  loc_CB06CE: ImpAdCallI2 Format$(, )
  loc_CB06D3: CVarStr var_3EC
  loc_CB06D6: ConcatVar var_40C
  loc_CB06DA: LitVarStr var_440, "' AND '"
  loc_CB06DF: ConcatVar var_420
  loc_CB06E3: LitI4 1
  loc_CB06E8: LitI4 1
  loc_CB06ED: LitVarStr var_480, "yyyy-mm-dd"
  loc_CB06F2: FStVarCopyObj var_460
  loc_CB06F5: FLdRfVar var_460
  loc_CB06F8: FLdRfVar var_430
  loc_CB06FB: CStrVarTmp
  loc_CB06FC: CVarStr var_450
  loc_CB06FF: ImpAdCallI2 Format$(, )
  loc_CB0704: CVarStr var_470
  loc_CB0707: ConcatVar var_490
  loc_CB070B: LitVarStr var_4A0, "'"
  loc_CB0710: ConcatVar var_4B0
  loc_CB0714: ILdRf var_A0
  loc_CB0717: CVarStr var_4C0
  loc_CB071A: ConcatVar var_4D0
  loc_CB071E: LitVarStr var_4E0, " GROUP BY TRUE;"
  loc_CB0723: ConcatVar var_4F0
  loc_CB0727: LitVarStr var_500, " INSERT INTO deta SELECT acrepago.CodiEnre, acrepago.NumeAcpa, pararenta.CoimPare as CodiConc, SUM(CoadBoap+IcomBoap+ApleBoap+DefiBoap+ReseBoap) as TotaDepa, "
  loc_CB072C: ConcatVar var_510
  loc_CB0730: LitVarStr var_520, " pago.FeenAcpa, CodiOfic, CuenCtct, pago.PeriBole, pago.NumeBole, 0 as CapiDepa, 0 as DecaDepa, 0 as ExenDepa"
  loc_CB0735: ConcatVar var_530
  loc_CB0739: LitVarStr var_584, " FROM pago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CB073E: ConcatVar var_544
  loc_CB0742: FLdPr Me
  loc_CB0745: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CB0748: FStAdFunc var_534
  loc_CB074B: FLdPr var_534
  loc_CB074E: LateIdLdVar var_554 DispID_15 0
  loc_CB0755: CStrVarTmp
  loc_CB0756: CVarStr var_564
  loc_CB0759: FLdRfVar var_574
  loc_CB075C: ImpAdCallFPR4  = Year()
  loc_CB0761: FLdRfVar var_574
  loc_CB0764: ConcatVar var_594
  loc_CB0768: LitVarStr var_5A4, " INNER JOIN boleapre ON boleapre.PeriBole = pago.PeriBole AND boleapre.NumeBole = pago.NumeBole INNER JOIN acrepago ON acrepago.FeenAcpa = pago.FeenAcpa AND acrepago.NumeAcpa = pago.NumeAcpa"
  loc_CB076D: ConcatVar var_5B4
  loc_CB0771: LitVarStr var_5E8, " WHERE pago.FeenAcpa BETWEEN '"
  loc_CB0776: ConcatVar var_5C8
  loc_CB077A: LitI4 1
  loc_CB077F: LitI4 1
  loc_CB0784: LitVarStr var_628, "yyyy-mm-dd"
  loc_CB0789: FStVarCopyObj var_608
  loc_CB078C: FLdRfVar var_608
  loc_CB078F: FLdRfVar var_5D8
  loc_CB0792: CStrVarTmp
  loc_CB0793: CVarStr var_5F8
  loc_CB0796: ImpAdCallI2 Format$(, )
  loc_CB079B: CVarStr var_618
  loc_CB079E: ConcatVar var_638
  loc_CB07A2: LitVarStr var_66C, "' AND '"
  loc_CB07A7: ConcatVar var_64C
  loc_CB07AB: LitI4 1
  loc_CB07B0: LitI4 1
  loc_CB07B5: LitVarStr var_6AC, "yyyy-mm-dd"
  loc_CB07BA: FStVarCopyObj var_68C
  loc_CB07BD: FLdRfVar var_68C
  loc_CB07C0: FLdRfVar var_65C
  loc_CB07C3: CStrVarTmp
  loc_CB07C4: CVarStr var_67C
  loc_CB07C7: ImpAdCallI2 Format$(, )
  loc_CB07CC: CVarStr var_69C
  loc_CB07CF: ConcatVar var_6BC
  loc_CB07D3: LitVarStr var_6CC, "'"
  loc_CB07D8: ConcatVar var_6DC
  loc_CB07DC: ILdRf var_A0
  loc_CB07DF: CVarStr var_6EC
  loc_CB07E2: ConcatVar var_6FC
  loc_CB07E6: LitVarStr var_70C, " GROUP BY TRUE; "
  loc_CB07EB: ConcatVar var_71C
  loc_CB07EF: LitVarStr var_72C, " INSERT INTO deta SELECT acrepago.CodiEnre, acrepago.NumeAcpa, pararenta.CoinPare as CodiConc, sum(InteDepa) as TotaDepa, detapago.FeenAcpa, CodiOfic, CuenCtct, PeriBole, NumeBole, 0 as CapiDepa, 0 as DecaDepa, 0 as ExenDepa FROM detapago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CB07F4: ConcatVar var_73C
  loc_CB07F8: FLdPr Me
  loc_CB07FB: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CB07FE: FStAdFunc var_760
  loc_CB0801: FLdPr var_760
  loc_CB0804: LateIdLdVar var_75C DispID_15 0
  loc_CB080B: CStrVarTmp
  loc_CB080C: CVarStr var_770
  loc_CB080F: FLdRfVar var_780
  loc_CB0812: ImpAdCallFPR4  = Year()
  loc_CB0817: FLdRfVar var_780
  loc_CB081A: ConcatVar var_790
  loc_CB081E: LitVarStr var_74C, " INNER JOIN acrepago ON acrepago.FeenAcpa = detapago.FeenAcpa AND acrepago.NumeAcpa = detapago.NumeAcpa "
  loc_CB0823: ConcatVar var_7A0
  loc_CB0827: LitVarStr var_7B0, " WHERE detapago.FeenAcpa BETWEEN '"
  loc_CB082C: ConcatVar var_7C0
  loc_CB0830: LitI4 1
  loc_CB0835: LitI4 1
  loc_CB083A: LitVarStr var_7D0, "yyyy-mm-dd"
  loc_CB083F: FStVarCopyObj var_804
  loc_CB0842: FLdRfVar var_804
  loc_CB0845: FLdRfVar var_7E0
  loc_CB0848: CStrVarTmp
  loc_CB0849: CVarStr var_7F4
  loc_CB084C: ImpAdCallI2 Format$(, )
  loc_CB0851: CVarStr var_824
  loc_CB0854: ConcatVar var_834
  loc_CB0858: LitVarStr var_814, "' AND '"
  loc_CB085D: ConcatVar var_844
  loc_CB0861: LitI4 1
  loc_CB0866: LitI4 1
  loc_CB086B: LitVarStr var_854, "yyyy-mm-dd"
  loc_CB0870: FStVarCopyObj var_888
  loc_CB0873: FLdRfVar var_888
  loc_CB0876: FLdRfVar var_864
  loc_CB0879: CStrVarTmp
  loc_CB087A: CVarStr var_878
  loc_CB087D: ImpAdCallI2 Format$(, )
  loc_CB0882: CVarStr var_8A8
  loc_CB0885: ConcatVar var_8B8
  loc_CB0889: LitVarStr var_898, "'"
  loc_CB088E: ConcatVar var_8C8
  loc_CB0892: ILdRf var_9C
  loc_CB0895: CVarStr var_8D8
  loc_CB0898: ConcatVar var_8E8
  loc_CB089C: LitVarStr var_8F8, " GROUP BY TRUE;"
  loc_CB08A1: ConcatVar var_908
  loc_CB08A5: CStrVarVal var_E0
  loc_CB08A9: FLdPr var_130
  loc_CB08AC: Call clsconcepto.RedefineRS(from_stack_1v)
  loc_CB08B1: FFree1Str var_E0
  loc_CB08B4: FFreeAd var_C8 = "": var_E4 = "": var_204 = "": var_308 = "": var_38C = "": var_410 = "": var_534 = "": var_5B8 = "": var_63C = "": var_760 = "": var_7E4 = ""
  loc_CB08CF: FFreeVar var_68C = "": var_64C = "": var_69C = "": var_6BC = "": var_6DC = "": var_6FC = "": var_71C = "": var_75C = "": var_770 = "": var_73C = "": var_780 = "": var_790 = "": var_7A0 = "": var_7E0 = "": var_7F4 = "": var_804 = "": var_7C0 = "": var_824 = "": var_834 = "": var_864 = "": var_878 = "": var_888 = "": var_844 = "": var_8A8 = "": var_8B8 = "": var_8C8 = "": var_8E8 = "": var_908 = "": var_3CC = "": var_3DC = "": var_39C = "": var_3EC = "": var_40C = "": var_430 = "": var_450 = "": var_460 = "": var_420 = "": var_470 = "": var_490 = "": var_4B0 = "": var_4D0 = "": var_4F0 = "": var_510 = "": var_530 = "": var_554 = "": var_564 = "": var_544 = "": var_574 = "": var_594 = "": var_5B4 = "": var_5D8 = "": var_5F8 = "": var_608 = "": var_5C8 = "": var_618 = "": var_638 = "": var_65C = "": var_67C = "": var_DC = "": var_F4 = "": var_118 = "": var_108 = "": var_128 = "": var_150 = "": var_190 = "": var_1A0 = "": var_1C0 = "": var_180 = "": var_1D0 = "": var_1E0 = "": var_214 = "": var_224 = "": var_244 = "": var_200 = "": var_254 = "": var_264 = "": var_284 = "": var_2A4 = "": var_2C4 = "": var_2E4 = "": var_304 = "": var_328 = "": var_338 = "": var_318 = "": var_348 = "": var_368 = "": var_388 = ""
  loc_CB0982: Branch loc_CB0E28
  loc_CB0985: FLdPr Me
  loc_CB0988: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CB098B: FStAdFunc var_E4
  loc_CB098E: FLdPr var_E4
  loc_CB0991: LateIdLdVar var_190 DispID_15 0
  loc_CB0998: PopAd
  loc_CB099A: FLdPr Me
  loc_CB099D: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_CB09A0: FStAdFunc var_204
  loc_CB09A3: FLdPr var_204
  loc_CB09A6: LateIdLdVar var_214 DispID_15 0
  loc_CB09AD: PopAd
  loc_CB09AF: FLdPr Me
  loc_CB09B2: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CB09B5: FStAdFunc var_38C
  loc_CB09B8: FLdPr var_38C
  loc_CB09BB: LateIdLdVar var_3CC DispID_15 0
  loc_CB09C2: PopAd
  loc_CB09C4: FLdPr Me
  loc_CB09C7: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_CB09CA: FStAdFunc var_410
  loc_CB09CD: FLdPr var_410
  loc_CB09D0: LateIdLdVar var_450 DispID_15 0
  loc_CB09D7: PopAd
  loc_CB09D9: FLdPr Me
  loc_CB09DC: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CB09DF: FStAdFunc var_5B8
  loc_CB09E2: FLdPr var_5B8
  loc_CB09E5: LateIdLdVar var_608 DispID_15 0
  loc_CB09EC: PopAd
  loc_CB09EE: FLdPr Me
  loc_CB09F1: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_CB09F4: FStAdFunc var_63C
  loc_CB09F7: FLdPr var_63C
  loc_CB09FA: LateIdLdVar var_68C DispID_15 0
  loc_CB0A01: PopAd
  loc_CB0A03: FLdPr Me
  loc_CB0A06: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CB0A09: FStAdFunc var_7E4
  loc_CB0A0C: FLdPr var_7E4
  loc_CB0A0F: LateIdLdVar var_804 DispID_15 0
  loc_CB0A16: PopAd
  loc_CB0A18: FLdPr Me
  loc_CB0A1B: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_CB0A1E: FStAdFunc var_868
  loc_CB0A21: FLdPr var_868
  loc_CB0A24: LateIdLdVar var_888 DispID_15 0
  loc_CB0A2B: PopAd
  loc_CB0A2D: LitStr " INSERT INTO deta SELECT acrepago.CodiEnre, acrepago.NumeAcpa, pararenta.CorePare as CodiConc, sum(RecaDepa-DereDepa) as TotaDepa,"
  loc_CB0A30: LitStr " detapago.FeenAcpa, CodiOfic, CuenCtct, PeriBole, NumeBole, 0 as CapiDepa, 0 as DecaDepa, 0 as ExenDepa"
  loc_CB0A33: ConcatStr
  loc_CB0A34: FStStrNoPop var_E0
  loc_CB0A37: LitStr " FROM detapago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CB0A3A: ConcatStr
  loc_CB0A3B: CVarStr var_118
  loc_CB0A3E: FLdPr Me
  loc_CB0A41: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CB0A44: FStAdFunc var_C8
  loc_CB0A47: FLdPr var_C8
  loc_CB0A4A: LateIdLdVar var_DC DispID_15 0
  loc_CB0A51: CStrVarTmp
  loc_CB0A52: CVarStr var_F4
  loc_CB0A55: FLdRfVar var_108
  loc_CB0A58: ImpAdCallFPR4  = Year()
  loc_CB0A5D: FLdRfVar var_108
  loc_CB0A60: ConcatVar var_128
  loc_CB0A64: LitVarStr var_B4, " INNER JOIN acrepago ON acrepago.FeenAcpa = detapago.FeenAcpa AND acrepago.NumeAcpa = detapago.NumeAcpa"
  loc_CB0A69: ConcatVar var_150
  loc_CB0A6D: LitVarStr var_C4, " WHERE detapago.FeenAcpa BETWEEN '"
  loc_CB0A72: ConcatVar var_180
  loc_CB0A76: LitI4 1
  loc_CB0A7B: LitI4 1
  loc_CB0A80: LitVarStr var_1B0, "yyyy-mm-dd"
  loc_CB0A85: FStVarCopyObj var_1C0
  loc_CB0A88: FLdRfVar var_1C0
  loc_CB0A8B: FLdRfVar var_190
  loc_CB0A8E: CStrVarTmp
  loc_CB0A8F: CVarStr var_1A0
  loc_CB0A92: ImpAdCallI2 Format$(, )
  loc_CB0A97: CVarStr var_1D0
  loc_CB0A9A: ConcatVar var_1E0
  loc_CB0A9E: LitVarStr var_1F0, "' AND '"
  loc_CB0AA3: ConcatVar var_200
  loc_CB0AA7: LitI4 1
  loc_CB0AAC: LitI4 1
  loc_CB0AB1: LitVarStr var_234, "yyyy-mm-dd"
  loc_CB0AB6: FStVarCopyObj var_244
  loc_CB0AB9: FLdRfVar var_244
  loc_CB0ABC: FLdRfVar var_214
  loc_CB0ABF: CStrVarTmp
  loc_CB0AC0: CVarStr var_224
  loc_CB0AC3: ImpAdCallI2 Format$(, )
  loc_CB0AC8: CVarStr var_254
  loc_CB0ACB: ConcatVar var_264
  loc_CB0ACF: LitVarStr var_274, "'"
  loc_CB0AD4: ConcatVar var_284
  loc_CB0AD8: ILdRf var_9C
  loc_CB0ADB: CVarStr var_294
  loc_CB0ADE: ConcatVar var_2A4
  loc_CB0AE2: LitVarStr var_2B4, " GROUP BY TRUE;"
  loc_CB0AE7: ConcatVar var_2C4
  loc_CB0AEB: LitVarStr var_2D4, " INSERT INTO deta SELECT acrepago.CodiEnre, acrepago.NumeAcpa, pararenta.CoadPare as CodiConc, sum(CoadBoap) as TotaDepa, "
  loc_CB0AF0: ConcatVar var_2E4
  loc_CB0AF4: LitVarStr var_2F4, " pago.FeenAcpa, CodiOfic, CuenCtct, pago.PeriBole, pago.NumeBole, 0 as CapiDepa, 0 as DecaDepa, 0 as ExenDepa"
  loc_CB0AF9: ConcatVar var_304
  loc_CB0AFD: LitVarStr var_358, " FROM pago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CB0B02: ConcatVar var_318
  loc_CB0B06: FLdPr Me
  loc_CB0B09: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CB0B0C: FStAdFunc var_308
  loc_CB0B0F: FLdPr var_308
  loc_CB0B12: LateIdLdVar var_328 DispID_15 0
  loc_CB0B19: CStrVarTmp
  loc_CB0B1A: CVarStr var_338
  loc_CB0B1D: FLdRfVar var_348
  loc_CB0B20: ImpAdCallFPR4  = Year()
  loc_CB0B25: FLdRfVar var_348
  loc_CB0B28: ConcatVar var_368
  loc_CB0B2C: LitVarStr var_378, " INNER JOIN boleapre ON boleapre.PeriBole = pago.PeriBole AND boleapre.NumeBole = pago.NumeBole"
  loc_CB0B31: ConcatVar var_388
  loc_CB0B35: LitVarStr var_3BC, " INNER JOIN acrepago ON acrepago.FeenAcpa = pago.FeenAcpa AND acrepago.NumeAcpa = pago.NumeAcpa"
  loc_CB0B3A: ConcatVar var_39C
  loc_CB0B3E: LitVarStr var_3FC, " WHERE pago.FeenAcpa BETWEEN '"
  loc_CB0B43: ConcatVar var_3AC
  loc_CB0B47: LitI4 1
  loc_CB0B4C: LitI4 1
  loc_CB0B51: LitVarStr var_440, "yyyy-mm-dd"
  loc_CB0B56: FStVarCopyObj var_3EC
  loc_CB0B59: FLdRfVar var_3EC
  loc_CB0B5C: FLdRfVar var_3CC
  loc_CB0B5F: CStrVarTmp
  loc_CB0B60: CVarStr var_3DC
  loc_CB0B63: ImpAdCallI2 Format$(, )
  loc_CB0B68: CVarStr var_40C
  loc_CB0B6B: ConcatVar var_420
  loc_CB0B6F: LitVarStr var_480, "' AND '"
  loc_CB0B74: ConcatVar var_430
  loc_CB0B78: LitI4 1
  loc_CB0B7D: LitI4 1
  loc_CB0B82: LitVarStr var_4A0, "yyyy-mm-dd"
  loc_CB0B87: FStVarCopyObj var_470
  loc_CB0B8A: FLdRfVar var_470
  loc_CB0B8D: FLdRfVar var_450
  loc_CB0B90: CStrVarTmp
  loc_CB0B91: CVarStr var_460
  loc_CB0B94: ImpAdCallI2 Format$(, )
  loc_CB0B99: CVarStr var_490
  loc_CB0B9C: ConcatVar var_4B0
  loc_CB0BA0: LitVarStr var_4C0, "'"
  loc_CB0BA5: ConcatVar var_4D0
  loc_CB0BA9: ILdRf var_A0
  loc_CB0BAC: CVarStr var_4E0
  loc_CB0BAF: ConcatVar var_4F0
  loc_CB0BB3: LitVarStr var_500, " GROUP BY TRUE;"
  loc_CB0BB8: ConcatVar var_510
  loc_CB0BBC: LitVarStr var_520, " INSERT INTO deta SELECT acrepago.CodiEnre, acrepago.NumeAcpa, pararenta.CoapPare as CodiConc, sum(ApleBoap+DefiBoap+ReseBoap+HoreBoap+HoofBoap+MoreBoap+MoofBoap) as TotaDepa, "
  loc_CB0BC1: ConcatVar var_530
  loc_CB0BC5: LitVarStr var_584, " pago.FeenAcpa, CodiOfic, CuenCtct, pago.PeriBole, pago.NumeBole, 0 as CapiDepa, 0 as DecaDepa, 0 as ExenDepa"
  loc_CB0BCA: ConcatVar var_544
  loc_CB0BCE: LitVarStr var_5A4, " FROM pago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CB0BD3: ConcatVar var_554
  loc_CB0BD7: FLdPr Me
  loc_CB0BDA: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CB0BDD: FStAdFunc var_534
  loc_CB0BE0: FLdPr var_534
  loc_CB0BE3: LateIdLdVar var_564 DispID_15 0
  loc_CB0BEA: CStrVarTmp
  loc_CB0BEB: CVarStr var_574
  loc_CB0BEE: FLdRfVar var_594
  loc_CB0BF1: ImpAdCallFPR4  = Year()
  loc_CB0BF6: FLdRfVar var_594
  loc_CB0BF9: ConcatVar var_5B4
  loc_CB0BFD: LitVarStr var_5E8, " INNER JOIN boleapre ON boleapre.PeriBole = pago.PeriBole AND boleapre.NumeBole = pago.NumeBole"
  loc_CB0C02: ConcatVar var_5C8
  loc_CB0C06: LitVarStr var_628, " INNER JOIN acrepago ON acrepago.FeenAcpa = pago.FeenAcpa AND acrepago.NumeAcpa = pago.NumeAcpa"
  loc_CB0C0B: ConcatVar var_5D8
  loc_CB0C0F: LitVarStr var_66C, " WHERE pago.FeenAcpa BETWEEN '"
  loc_CB0C14: ConcatVar var_5F8
  loc_CB0C18: LitI4 1
  loc_CB0C1D: LitI4 1
  loc_CB0C22: LitVarStr var_6AC, "yyyy-mm-dd"
  loc_CB0C27: FStVarCopyObj var_638
  loc_CB0C2A: FLdRfVar var_638
  loc_CB0C2D: FLdRfVar var_608
  loc_CB0C30: CStrVarTmp
  loc_CB0C31: CVarStr var_618
  loc_CB0C34: ImpAdCallI2 Format$(, )
  loc_CB0C39: CVarStr var_64C
  loc_CB0C3C: ConcatVar var_65C
  loc_CB0C40: LitVarStr var_6CC, "' AND '"
  loc_CB0C45: ConcatVar var_67C
  loc_CB0C49: LitI4 1
  loc_CB0C4E: LitI4 1
  loc_CB0C53: LitVarStr var_6EC, "yyyy-mm-dd"
  loc_CB0C58: FStVarCopyObj var_6BC
  loc_CB0C5B: FLdRfVar var_6BC
  loc_CB0C5E: FLdRfVar var_68C
  loc_CB0C61: CStrVarTmp
  loc_CB0C62: CVarStr var_69C
  loc_CB0C65: ImpAdCallI2 Format$(, )
  loc_CB0C6A: CVarStr var_6DC
  loc_CB0C6D: ConcatVar var_6FC
  loc_CB0C71: LitVarStr var_70C, "'"
  loc_CB0C76: ConcatVar var_71C
  loc_CB0C7A: ILdRf var_A0
  loc_CB0C7D: CVarStr var_72C
  loc_CB0C80: ConcatVar var_73C
  loc_CB0C84: LitVarStr var_74C, " GROUP BY TRUE;"
  loc_CB0C89: ConcatVar var_75C
  loc_CB0C8D: LitVarStr var_7B0, " INSERT INTO deta SELECT acrepago.CodiEnre, acrepago.NumeAcpa, pararenta.CoinPare as CodiConc, sum(InteDepa) as TotaDepa, detapago.FeenAcpa, CodiOfic, CuenCtct, PeriBole, NumeBole, 0 as CapiDepa, 0 as DecaDepa, 0 as ExenDepa FROM detapago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_CB0C92: ConcatVar var_770
  loc_CB0C96: FLdPr Me
  loc_CB0C99: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CB0C9C: FStAdFunc var_760
  loc_CB0C9F: FLdPr var_760
  loc_CB0CA2: LateIdLdVar var_780 DispID_15 0
  loc_CB0CA9: CStrVarTmp
  loc_CB0CAA: CVarStr var_790
  loc_CB0CAD: FLdRfVar var_7A0
  loc_CB0CB0: ImpAdCallFPR4  = Year()
  loc_CB0CB5: FLdRfVar var_7A0
  loc_CB0CB8: ConcatVar var_7C0
  loc_CB0CBC: LitVarStr var_7D0, " INNER JOIN acrepago ON acrepago.FeenAcpa = detapago.FeenAcpa AND acrepago.NumeAcpa = detapago.NumeAcpa"
  loc_CB0CC1: ConcatVar var_7E0
  loc_CB0CC5: LitVarStr var_814, " WHERE acrepago.FeenAcpa BETWEEN '"
  loc_CB0CCA: ConcatVar var_7F4
  loc_CB0CCE: LitI4 1
  loc_CB0CD3: LitI4 1
  loc_CB0CD8: LitVarStr var_854, "yyyy-mm-dd"
  loc_CB0CDD: FStVarCopyObj var_834
  loc_CB0CE0: FLdRfVar var_834
  loc_CB0CE3: FLdRfVar var_804
  loc_CB0CE6: CStrVarTmp
  loc_CB0CE7: CVarStr var_824
  loc_CB0CEA: ImpAdCallI2 Format$(, )
  loc_CB0CEF: CVarStr var_844
  loc_CB0CF2: ConcatVar var_864
  loc_CB0CF6: LitVarStr var_898, "' AND '"
  loc_CB0CFB: ConcatVar var_878
  loc_CB0CFF: LitI4 1
  loc_CB0D04: LitI4 1
  loc_CB0D09: LitVarStr var_8D8, "yyyy-mm-dd"
  loc_CB0D0E: FStVarCopyObj var_8B8
  loc_CB0D11: FLdRfVar var_8B8
  loc_CB0D14: FLdRfVar var_888
  loc_CB0D17: CStrVarTmp
  loc_CB0D18: CVarStr var_8A8
  loc_CB0D1B: ImpAdCallI2 Format$(, )
  loc_CB0D20: CVarStr var_8C8
  loc_CB0D23: ConcatVar var_8E8
  loc_CB0D27: LitVarStr var_8F8, "'"
  loc_CB0D2C: ConcatVar var_908
  loc_CB0D30: ILdRf var_9C
  loc_CB0D33: CVarStr var_918
  loc_CB0D36: ConcatVar var_928
  loc_CB0D3A: LitVarStr var_97C, " GROUP BY TRUE;"
  loc_CB0D3F: ConcatVar var_93C
  loc_CB0D43: CStrVarVal var_F8
  loc_CB0D47: FLdPr var_130
  loc_CB0D4A: Call clsconcepto.RedefineRS(from_stack_1v)
  loc_CB0D4F: FFreeStr var_E0 = ""
  loc_CB0D56: FFreeAd var_C8 = "": var_E4 = "": var_204 = "": var_308 = "": var_38C = "": var_410 = "": var_534 = "": var_5B8 = "": var_63C = "": var_760 = "": var_7E4 = ""
  loc_CB0D71: FFreeVar var_68C = "": var_69C = "": var_6BC = "": var_67C = "": var_6DC = "": var_6FC = "": var_71C = "": var_73C = "": var_75C = "": var_780 = "": var_790 = "": var_770 = "": var_7A0 = "": var_7C0 = "": var_7E0 = "": var_804 = "": var_824 = "": var_834 = "": var_7F4 = "": var_844 = "": var_864 = "": var_888 = "": var_8A8 = "": var_8B8 = "": var_878 = "": var_8C8 = "": var_8E8 = "": var_908 = "": var_928 = "": var_93C = "": var_3CC = "": var_3DC = "": var_3EC = "": var_3AC = "": var_40C = "": var_420 = "": var_450 = "": var_460 = "": var_470 = "": var_430 = "": var_490 = "": var_4B0 = "": var_4D0 = "": var_4F0 = "": var_510 = "": var_530 = "": var_544 = "": var_564 = "": var_574 = "": var_554 = "": var_594 = "": var_5B4 = "": var_5C8 = "": var_5D8 = "": var_608 = "": var_618 = "": var_638 = "": var_5F8 = "": var_64C = "": var_65C = "": var_DC = "": var_F4 = "": var_118 = "": var_108 = "": var_128 = "": var_150 = "": var_190 = "": var_1A0 = "": var_1C0 = "": var_180 = "": var_1D0 = "": var_1E0 = "": var_214 = "": var_224 = "": var_244 = "": var_200 = "": var_254 = "": var_264 = "": var_284 = "": var_2A4 = "": var_2C4 = "": var_2E4 = "": var_304 = "": var_328 = "": var_338 = "": var_318 = "": var_348 = "": var_368 = "": var_388 = ""
  loc_CB0E28: LitStr "SELECT cast(deta.CodiEnre as UNSIGNED) as CodiEnre, DetaEnre, cast(deta.NumeAcpa as UNSIGNED) as NumeAcpa, deta.CodiConc, ifnull(DetaConc,'') as DetaConc, DetaPers, ExpeBole, TotaDepa, ifnull(IngrConc,'') as IngrConc, DetaCuco, "
  loc_CB0E2B: LitStr " deta.FeenAcpa, deta.CodiOfic, deta.CuenCtct, deta.PeriBole, deta.NumeBole, CapiDepa, DecaDepa, ExenDepa FROM deta"
  loc_CB0E2E: ConcatStr
  loc_CB0E2F: FStStrNoPop var_E0
  loc_CB0E32: LitStr " LEFT JOIN concepto ON concepto.PeriInfo = "
  loc_CB0E35: ConcatStr
  loc_CB0E36: CVarStr var_118
  loc_CB0E39: FLdPr Me
  loc_CB0E3C: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_CB0E3F: FStAdFunc var_C8
  loc_CB0E42: FLdPr var_C8
  loc_CB0E45: LateIdLdVar var_DC DispID_15 0
  loc_CB0E4C: CStrVarTmp
  loc_CB0E4D: CVarStr var_F4
  loc_CB0E50: FLdRfVar var_108
  loc_CB0E53: ImpAdCallFPR4  = Year()
  loc_CB0E58: FLdRfVar var_108
  loc_CB0E5B: ConcatVar var_128
  loc_CB0E5F: LitVarStr var_B4, " AND concepto.CodiConc = deta.CodiConc"
  loc_CB0E64: ConcatVar var_150
  loc_CB0E68: LitVarStr var_C4, " LEFT JOIN boleto ON boleto.PeriBole = deta.PeriBole AND boleto.NumeBole = deta.NumeBole"
  loc_CB0E6D: ConcatVar var_180
  loc_CB0E71: LitVarStr var_1B0, " LEFT JOIN infogov.persona ON infogov.persona.CucuPers = boleto.CucuPers"
  loc_CB0E76: ConcatVar var_190
  loc_CB0E7A: LitVarStr var_1F0, " LEFT JOIN infogov.cuentacontable ON infogov.cuentacontable.PeriInfo = concepto.PeriInfo AND infogov.cuentacontable.CodiCuco = concepto.IngrConc"
  loc_CB0E7F: ConcatVar var_1A0
  loc_CB0E83: LitVarStr var_234, " LEFT JOIN infogov.entereca as ente ON ente.CodiEnre = deta.CodiEnre"
  loc_CB0E88: ConcatVar var_1C0
  loc_CB0E8C: LitVarStr var_274, " WHERE TotaDepa <> 0 "
  loc_CB0E91: ConcatVar var_1D0
  loc_CB0E95: ILdRf var_88
  loc_CB0E98: CVarStr var_294
  loc_CB0E9B: ConcatVar var_1E0
  loc_CB0E9F: ILdRf var_8C
  loc_CB0EA2: CVarStr var_2B4
  loc_CB0EA5: ConcatVar var_200
  loc_CB0EA9: ILdRf var_90
  loc_CB0EAC: CVarStr var_2D4
  loc_CB0EAF: ConcatVar var_214
  loc_CB0EB3: ILdRf var_94
  loc_CB0EB6: CVarStr var_2F4
  loc_CB0EB9: ConcatVar var_224
  loc_CB0EBD: LitVarStr var_358, " ORDER BY "
  loc_CB0EC2: ConcatVar var_244
  loc_CB0EC6: ILdRf var_A4
  loc_CB0EC9: CVarStr var_378
  loc_CB0ECC: ConcatVar var_254
  loc_CB0ED0: LitVarStr var_3BC, ";"
  loc_CB0ED5: ConcatVar var_264
  loc_CB0ED9: CStrVarVal var_F8
  loc_CB0EDD: FLdPr var_130
  loc_CB0EE0: Call clsconcepto.RedefineRS(from_stack_1v)
  loc_CB0EE5: FFreeStr var_E0 = ""
  loc_CB0EEC: FFree1Ad var_C8
  loc_CB0EEF: FFreeVar var_DC = "": var_F4 = "": var_118 = "": var_108 = "": var_128 = "": var_150 = "": var_180 = "": var_190 = "": var_1A0 = "": var_1C0 = "": var_1D0 = "": var_1E0 = "": var_200 = "": var_214 = "": var_224 = "": var_244 = "": var_254 = ""
  loc_CB0F16: FLdRfVar var_AF8
  loc_CB0F19: FLdPr var_130
  loc_CB0F1C: from_stack_1 = clsconcepto.RecordCount
  loc_CB0F21: ILdRf var_AF8
  loc_CB0F24: LitI4 0
  loc_CB0F29: EqI4
  loc_CB0F2A: BranchF loc_CB0F38
  loc_CB0F2D: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_CB0F30: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CB0F35: Branch loc_CB116E
  loc_CB0F38: LitI2_Byte 0
  loc_CB0F3A: LitVar_Missing var_DC
  loc_CB0F3D: LitI2_Byte &HFF
  loc_CB0F3F: LitVarI2 var_B4, 0
  loc_CB0F44: PopAdLdVar
  loc_CB0F45: FLdPr Me
  loc_CB0F48: MemLdRfVar from_stack_1.global_88
  loc_CB0F4B: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CB0F50: FFree1Var var_DC = ""
  loc_CB0F53: LitI2_Byte 0
  loc_CB0F55: FLdPr Me
  loc_CB0F58: MemStI2 global_92
  loc_CB0F5B: LitI4 0
  loc_CB0F60: FLdPr Me
  loc_CB0F63: MemLdI2 global_92
  loc_CB0F66: CI4UI1
  loc_CB0F67: FLdPr Me
  loc_CB0F6A: MemLdRfVar from_stack_1.global_84
  loc_CB0F6D: Redim
  loc_CB0F77: Call Proc_221_36_AA19B4()
  loc_CB0F7C: FLdRfVar var_CA
  loc_CB0F7F: FLdPr var_130
  loc_CB0F82: from_stack_1 = clsconcepto.EOF
  loc_CB0F87: FLdI2 var_CA
  loc_CB0F8A: NotI4
  loc_CB0F8B: BranchF loc_CB100B
  loc_CB0F8E: FLdRfVar var_DC
  loc_CB0F91: FLdPr var_130
  loc_CB0F94: from_stack_1 = clsconcepto.CodiEnre
  loc_CB0F99: FLdRfVar var_DC
  loc_CB0F9C: FnCStrVar
  loc_CB0F9E: FStStrNoPop var_E0
  loc_CB0FA1: FLdPr Me
  loc_CB0FA4: MemLdI2 global_92
  loc_CB0FA7: CI4UI1
  loc_CB0FA8: FLdPr Me
  loc_CB0FAB: MemLdStr global_84
  loc_CB0FAE: Ary1LdPr
  loc_CB0FAF: MemLdStr global_0
  loc_CB0FB2: NeStr
  loc_CB0FB4: FFree1Str var_E0
  loc_CB0FB7: FFreeVar var_DC = ""
  loc_CB0FBE: BranchF loc_CB0FC9
  loc_CB0FC1: Call Proc_221_36_AA19B4()
  loc_CB0FC6: Branch loc_CB1008
  loc_CB0FC9: FLdRfVar var_E0
  loc_CB0FCC: FLdPr var_130
  loc_CB0FCF: from_stack_1 = clsconcepto.CodiConc
  loc_CB0FD4: ILdRf var_E0
  loc_CB0FD7: FLdPr Me
  loc_CB0FDA: MemLdI2 global_94
  loc_CB0FDD: CI4UI1
  loc_CB0FDE: FLdPr Me
  loc_CB0FE1: MemLdI2 global_92
  loc_CB0FE4: CI4UI1
  loc_CB0FE5: FLdPr Me
  loc_CB0FE8: MemLdStr global_84
  loc_CB0FEB: Ary1LdPr
  loc_CB0FEC: MemLdStr global_8
  loc_CB0FEF: Ary1LdPr
  loc_CB0FF0: MemLdStr global_0
  loc_CB0FF3: NeStr
  loc_CB0FF5: FFree1Str var_E0
  loc_CB0FF8: BranchF loc_CB1003
  loc_CB0FFB: Call Proc_221_37_AED640()
  loc_CB1000: Branch loc_CB1008
  loc_CB1003: Call Proc_221_38_B3EE4C()
  loc_CB1008: Branch loc_CB0F7C
  loc_CB100B: LitI2_Byte 1
  loc_CB100D: FLdPr Me
  loc_CB1010: MemLdRfVar from_stack_1.global_92
  loc_CB1013: FLdPr Me
  loc_CB1016: MemLdStr global_84
  loc_CB1019: LitI2_Byte 1
  loc_CB101B: FnUBound
  loc_CB101D: CI2I4
  loc_CB101E: ForI2 var_AFC
  loc_CB1024: LitI2_Byte 1
  loc_CB1026: FLdPr Me
  loc_CB1029: MemLdRfVar from_stack_1.global_94
  loc_CB102C: FLdPr Me
  loc_CB102F: MemLdI2 global_92
  loc_CB1032: CI4UI1
  loc_CB1033: FLdPr Me
  loc_CB1036: MemLdStr global_84
  loc_CB1039: Ary1LdPr
  loc_CB103A: MemLdStr global_8
  loc_CB103D: LitI2_Byte 1
  loc_CB103F: FnUBound
  loc_CB1041: CI2I4
  loc_CB1042: ForI2 var_B00
  loc_CB1048: FLdPr Me
  loc_CB104B: MemLdI2 global_92
  loc_CB104E: CI4UI1
  loc_CB104F: FLdPr Me
  loc_CB1052: MemLdStr global_84
  loc_CB1055: AryLock
  loc_CB1058: Ary1LdRf
  loc_CB1059: FStR4 var_B08
  loc_CB105C: LitI2_Byte 0
  loc_CB105E: FMemLdRf CodiConcHastaMsk_UnknownEvent_8_ADDAA4()
  loc_CB1063: CVarRef
  loc_CB1068: LitI2_Byte &HFF
  loc_CB106A: FLdPr Me
  loc_CB106D: MemLdI2 global_94
  loc_CB1070: CI4UI1
  loc_CB1071: FMemLdR4 var_B08(8)
  loc_CB1076: Ary1LdPr
  loc_CB1077: MemLdStr bLogos
  loc_CB107A: CVarStr var_B4
  loc_CB107D: PopAdLdVar
  loc_CB107E: FLdPr Me
  loc_CB1081: MemLdRfVar from_stack_1.global_100
  loc_CB1084: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CB1089: LitI2_Byte 0
  loc_CB108B: FMemLdRf CodiConcHastaMsk_UnknownEvent_8_ADDAA4()
  loc_CB1090: CVarRef
  loc_CB1095: LitI2_Byte &HFF
  loc_CB1097: FLdPr Me
  loc_CB109A: MemLdI2 global_94
  loc_CB109D: CI4UI1
  loc_CB109E: FMemLdR4 var_B08(8)
  loc_CB10A3: Ary1LdPr
  loc_CB10A4: MemLdStr global_56
  loc_CB10A7: CVarStr var_B4
  loc_CB10AA: PopAdLdVar
  loc_CB10AB: FLdPr Me
  loc_CB10AE: MemLdRfVar from_stack_1.global_100
  loc_CB10B1: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CB10B6: LitI2_Byte 0
  loc_CB10B8: FMemLdRf CodiConcHastaMsk_UnknownEvent_8_ADDAA4()
  loc_CB10BD: CVarRef
  loc_CB10C2: LitI2_Byte &HFF
  loc_CB10C4: FLdPr Me
  loc_CB10C7: MemLdI2 global_94
  loc_CB10CA: CI4UI1
  loc_CB10CB: FMemLdR4 var_B08(8)
  loc_CB10D0: Ary1LdPr
  loc_CB10D1: MemLdStr global_72
  loc_CB10D4: CVarStr var_B4
  loc_CB10D7: PopAdLdVar
  loc_CB10D8: FLdPr Me
  loc_CB10DB: MemLdRfVar from_stack_1.global_100
  loc_CB10DE: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CB10E3: LitI2_Byte 0
  loc_CB10E5: FMemLdRf CodiConcHastaMsk_UnknownEvent_8_ADDAA4()
  loc_CB10EA: CVarRef
  loc_CB10EF: LitI2_Byte &HFF
  loc_CB10F1: FLdPr Me
  loc_CB10F4: MemLdI2 global_94
  loc_CB10F7: CI4UI1
  loc_CB10F8: FMemLdR4 var_B08(8)
  loc_CB10FD: Ary1LdPr
  loc_CB10FE: MemLdStr global_80
  loc_CB1101: CVarStr var_B4
  loc_CB1104: PopAdLdVar
  loc_CB1105: FLdPr Me
  loc_CB1108: MemLdRfVar from_stack_1.global_100
  loc_CB110B: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CB1110: LitI4 0
  loc_CB1115: FStR4 var_B08
  loc_CB1118: AryUnlock
  loc_CB111B: FLdPr Me
  loc_CB111E: MemLdRfVar from_stack_1.global_94
  loc_CB1121: NextI2 var_B00, loc_CB1048
  loc_CB1126: LitI2_Byte 0
  loc_CB1128: FLdPr Me
  loc_CB112B: MemLdRfVar from_stack_1.global_88
  loc_CB112E: CVarRef
  loc_CB1133: LitI2_Byte &HFF
  loc_CB1135: FLdPr Me
  loc_CB1138: MemLdI2 global_92
  loc_CB113B: CI4UI1
  loc_CB113C: FLdPr Me
  loc_CB113F: MemLdStr global_84
  loc_CB1142: Ary1LdPr
  loc_CB1143: MemLdStr global_68
  loc_CB1146: CVarStr var_B4
  loc_CB1149: PopAdLdVar
  loc_CB114A: FLdPr Me
  loc_CB114D: MemLdRfVar from_stack_1.global_100
  loc_CB1150: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_CB1155: FLdPr Me
  loc_CB1158: MemLdRfVar from_stack_1.global_92
  loc_CB115B: NextI2 var_AFC, loc_CB1024
  loc_CB1160: LitNothing
  loc_CB1162: FStAd var_130 
  loc_CB1166: LitI2_Byte &HFF
  loc_CB1168: FLdPr Me
  loc_CB116B: MemStI2 bGenerado
  loc_CB116E: LitI4 0
  loc_CB1173: CI2I4
  loc_CB1174: FLdPr Me
  loc_CB1177: Me.MousePointer = from_stack_1
  loc_CB117C: LitVarStr var_B4, vbNullString
  loc_CB1181: PopAdLdVar
  loc_CB1182: FLdPr Me
  loc_CB1185: VCallAd Control_ID_statusBar
  loc_CB1188: FStAdFunc var_C8
  loc_CB118B: FLdPr var_C8
  loc_CB118E: LateIdSt
  loc_CB1193: FFree1Ad var_C8
  loc_CB1196: ExitProcHresult
  loc_CB1197: UMiI4
End Sub

Public Sub GeneraHTML() 'BDBFF0
  'Data Table: 506598
  loc_BDB894: FLdRfVar var_88
  loc_BDB897: LitI2_Byte 0
  loc_BDB899: LitI2_Byte &HFF
  loc_BDB89B: ImpAdLdI4 MemVar_D93C84
  loc_BDB89E: FLdPr Me
  loc_BDB8A1: MemLdRfVar from_stack_1.global_56
  loc_BDB8A4: NewIfNullPr IFileSystem3
  loc_BDB8A7: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_BDB8AC: ILdRf var_88
  loc_BDB8AF: FLdPr Me
  loc_BDB8B2: MemStVarAd
  loc_BDB8B6: FFree1Ad var_88
  loc_BDB8B9: LitI2_Byte &HFF
  loc_BDB8BB: ImpAdStI2 MemVar_D93C8A
  loc_BDB8BE: Call Proc_221_39_C5DF08()
  loc_BDB8C3: LitI2_Byte 1
  loc_BDB8C5: FLdPr Me
  loc_BDB8C8: MemLdRfVar from_stack_1.global_92
  loc_BDB8CB: FLdPr Me
  loc_BDB8CE: MemLdStr global_84
  loc_BDB8D1: LitI2_Byte 1
  loc_BDB8D3: FnUBound
  loc_BDB8D5: CI2I4
  loc_BDB8D6: ForI2 var_8C
  loc_BDB8DC: FLdPr Me
  loc_BDB8DF: MemLdI2 global_92
  loc_BDB8E2: CI4UI1
  loc_BDB8E3: FLdPr Me
  loc_BDB8E6: MemLdStr global_84
  loc_BDB8E9: AryLock
  loc_BDB8EC: Ary1LdRf
  loc_BDB8ED: FStR4 var_94
  loc_BDB8F0: FLdRfVar var_96
  loc_BDB8F3: FLdPr Me
  loc_BDB8F6: VCallAd Control_ID_EnteOpt
  loc_BDB8F9: FStAdFunc var_88
  loc_BDB8FC: FLdPr var_88
  loc_BDB8FF:  = Me.Value
  loc_BDB904: FLdI2 var_96
  loc_BDB907: FFree1Ad var_88
  loc_BDB90A: BranchF loc_BDB924
  loc_BDB90D: LitVarStr var_A8, "    <tr valign=""top"" class=""LineaDato"">"
  loc_BDB912: PopAdLdVar
  loc_BDB913: FLdPr Me
  loc_BDB916: MemLdRfVar from_stack_1.global_60
  loc_BDB919: LdPrVar
  loc_BDB91B: LateMemCall
  loc_BDB921: Branch loc_BDB938
  loc_BDB924: LitVarStr var_A8, "  <tr valign=""top"" align=""center"" class=""Encabezado"">"
  loc_BDB929: PopAdLdVar
  loc_BDB92A: FLdPr Me
  loc_BDB92D: MemLdRfVar from_stack_1.global_60
  loc_BDB930: LdPrVar
  loc_BDB932: LateMemCall
  loc_BDB938: FLdRfVar var_96
  loc_BDB93B: FLdPr Me
  loc_BDB93E: VCallAd Control_ID_BoletoOpt
  loc_BDB941: FStAdFunc var_88
  loc_BDB944: FLdPr var_88
  loc_BDB947:  = Me.Value
  loc_BDB94C: FLdRfVar var_C2
  loc_BDB94F: FLdPr Me
  loc_BDB952: VCallAd Control_ID_EnteOpt
  loc_BDB955: FStAdFunc var_C0
  loc_BDB958: FLdPr var_C0
  loc_BDB95B:  = Me.Value
  loc_BDB960: LitVarI2 var_F4, 2
  loc_BDB965: LitVarI2 var_D4, 1
  loc_BDB96A: FLdI2 var_C2
  loc_BDB96D: CVarBoolI2 var_A8
  loc_BDB971: FLdRfVar var_104
  loc_BDB974: ImpAdCallFPR4  = IIf(, , )
  loc_BDB979: FLdRfVar var_104
  loc_BDB97C: LitVarI2 var_134, 9
  loc_BDB981: FLdI2 var_96
  loc_BDB984: CVarBoolI2 var_114
  loc_BDB988: FLdRfVar var_144
  loc_BDB98B: ImpAdCallFPR4  = IIf(, , )
  loc_BDB990: LitStr vbNullString
  loc_BDB993: FLdRfVar var_144
  loc_BDB996: CI2Var
  loc_BDB997: LitI2_Byte 0
  loc_BDB999: LitI2_Byte 0
  loc_BDB99B: LitStr "left"
  loc_BDB99E: FMemLdR4 var_94(0)
  loc_BDB9A3: LitStr " - "
  loc_BDB9A6: ConcatStr
  loc_BDB9A7: FStStrNoPop var_BC
  loc_BDB9AA: FMemLdR4 var_94(4)
  loc_BDB9AF: ConcatStr
  loc_BDB9B0: FStStrNoPop var_148
  loc_BDB9B3: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BDB9B8: CVarStr var_158
  loc_BDB9BB: PopAdLdVar
  loc_BDB9BC: FLdPr Me
  loc_BDB9BF: MemLdRfVar from_stack_1.global_60
  loc_BDB9C2: LdPrVar
  loc_BDB9C4: LateMemCall
  loc_BDB9CA: FFreeStr var_BC = ""
  loc_BDB9D1: FFreeAd var_88 = ""
  loc_BDB9D8: FFreeVar var_A8 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_104 = "": var_144 = ""
  loc_BDB9EB: LitStr "SubTotales"
  loc_BDB9EE: LitI2_Byte 0
  loc_BDB9F0: LitI2_Byte 0
  loc_BDB9F2: LitI2_Byte 0
  loc_BDB9F4: LitStr "right"
  loc_BDB9F7: FMemLdR4 var_94(68)
  loc_BDB9FC: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BDBA01: CVarStr var_D4
  loc_BDBA04: PopAdLdVar
  loc_BDBA05: FLdPr Me
  loc_BDBA08: MemLdRfVar from_stack_1.global_60
  loc_BDBA0B: LdPrVar
  loc_BDBA0D: LateMemCall
  loc_BDBA13: FFree1Var var_D4 = ""
  loc_BDBA16: LitVarStr var_A8, "     </tr>"
  loc_BDBA1B: PopAdLdVar
  loc_BDBA1C: FLdPr Me
  loc_BDBA1F: MemLdRfVar from_stack_1.global_60
  loc_BDBA22: LdPrVar
  loc_BDBA24: LateMemCall
  loc_BDBA2A: FLdRfVar var_96
  loc_BDBA2D: FLdPr Me
  loc_BDBA30: VCallAd Control_ID_EnteOpt
  loc_BDBA33: FStAdFunc var_88
  loc_BDBA36: FLdPr var_88
  loc_BDBA39:  = Me.Value
  loc_BDBA3E: FLdI2 var_96
  loc_BDBA41: NotI4
  loc_BDBA42: FFree1Ad var_88
  loc_BDBA45: BranchF loc_BDBED2
  loc_BDBA48: LitI2_Byte 1
  loc_BDBA4A: FLdPr Me
  loc_BDBA4D: MemLdRfVar from_stack_1.global_94
  loc_BDBA50: FMemLdR4 var_94(8)
  loc_BDBA55: LitI2_Byte 1
  loc_BDBA57: FnUBound
  loc_BDBA59: CI2I4
  loc_BDBA5A: ForI2 var_16C
  loc_BDBA60: LitVarStr var_A8, "    <tr valign=""top"" class=""LineaDato"">"
  loc_BDBA65: PopAdLdVar
  loc_BDBA66: FLdPr Me
  loc_BDBA69: MemLdRfVar from_stack_1.global_60
  loc_BDBA6C: LdPrVar
  loc_BDBA6E: LateMemCall
  loc_BDBA74: FLdPr Me
  loc_BDBA77: MemLdI2 global_94
  loc_BDBA7A: CI4UI1
  loc_BDBA7B: FMemLdR4 var_94(8)
  loc_BDBA80: AryLock
  loc_BDBA83: Ary1LdRf
  loc_BDBA84: FStR4 var_174
  loc_BDBA87: FLdRfVar var_96
  loc_BDBA8A: FLdPr Me
  loc_BDBA8D: VCallAd Control_ID_BoletoOpt
  loc_BDBA90: FStAdFunc var_88
  loc_BDBA93: FLdPr var_88
  loc_BDBA96:  = Me.Value
  loc_BDBA9B: LitVarI2 var_F4, 1
  loc_BDBAA0: LitVarI2 var_D4, 5
  loc_BDBAA5: FLdI2 var_96
  loc_BDBAA8: CVarBoolI2 var_A8
  loc_BDBAAC: FLdRfVar var_104
  loc_BDBAAF: ImpAdCallFPR4  = IIf(, , )
  loc_BDBAB4: LitStr vbNullString
  loc_BDBAB7: FLdRfVar var_104
  loc_BDBABA: CI2Var
  loc_BDBABB: LitI2_Byte 0
  loc_BDBABD: LitI2_Byte 0
  loc_BDBABF: LitStr "left"
  loc_BDBAC2: LitStr "<em><strong>"
  loc_BDBAC5: FMemLdR4 var_174(0)
  loc_BDBACA: ConcatStr
  loc_BDBACB: FStStrNoPop var_BC
  loc_BDBACE: LitStr " - "
  loc_BDBAD1: ConcatStr
  loc_BDBAD2: FStStrNoPop var_148
  loc_BDBAD5: FMemLdR4 var_174(4)
  loc_BDBADA: ConcatStr
  loc_BDBADB: FStStrNoPop var_178
  loc_BDBADE: LitStr "</strong></em>"
  loc_BDBAE1: ConcatStr
  loc_BDBAE2: FStStrNoPop var_17C
  loc_BDBAE5: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BDBAEA: CVarStr var_134
  loc_BDBAED: PopAdLdVar
  loc_BDBAEE: FLdPr Me
  loc_BDBAF1: MemLdRfVar from_stack_1.global_60
  loc_BDBAF4: LdPrVar
  loc_BDBAF6: LateMemCall
  loc_BDBAFC: FFreeStr var_BC = "": var_148 = "": var_178 = ""
  loc_BDBB07: FFree1Ad var_88
  loc_BDBB0A: FFreeVar var_A8 = "": var_D4 = "": var_F4 = "": var_104 = ""
  loc_BDBB17: FLdRfVar var_96
  loc_BDBB1A: FLdPr Me
  loc_BDBB1D: VCallAd Control_ID_BoletoOpt
  loc_BDBB20: FStAdFunc var_88
  loc_BDBB23: FLdPr var_88
  loc_BDBB26:  = Me.Value
  loc_BDBB2B: LitVarI2 var_F4, 1
  loc_BDBB30: LitVarI2 var_D4, 4
  loc_BDBB35: FLdI2 var_96
  loc_BDBB38: CVarBoolI2 var_A8
  loc_BDBB3C: FLdRfVar var_104
  loc_BDBB3F: ImpAdCallFPR4  = IIf(, , )
  loc_BDBB44: LitStr vbNullString
  loc_BDBB47: FLdRfVar var_104
  loc_BDBB4A: CI2Var
  loc_BDBB4B: LitI2_Byte 0
  loc_BDBB4D: LitI2_Byte 0
  loc_BDBB4F: LitStr "left"
  loc_BDBB52: LitStr "<em><strong>"
  loc_BDBB55: FMemLdR4 var_174(12)
  loc_BDBB5A: ConcatStr
  loc_BDBB5B: FStStrNoPop var_BC
  loc_BDBB5E: LitStr " - "
  loc_BDBB61: ConcatStr
  loc_BDBB62: FStStrNoPop var_148
  loc_BDBB65: FMemLdR4 var_174(16)
  loc_BDBB6A: ConcatStr
  loc_BDBB6B: FStStrNoPop var_178
  loc_BDBB6E: LitStr "</strong></em>"
  loc_BDBB71: ConcatStr
  loc_BDBB72: FStStrNoPop var_17C
  loc_BDBB75: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BDBB7A: CVarStr var_134
  loc_BDBB7D: PopAdLdVar
  loc_BDBB7E: FLdPr Me
  loc_BDBB81: MemLdRfVar from_stack_1.global_60
  loc_BDBB84: LdPrVar
  loc_BDBB86: LateMemCall
  loc_BDBB8C: FFreeStr var_BC = "": var_148 = "": var_178 = ""
  loc_BDBB97: FFree1Ad var_88
  loc_BDBB9A: FFreeVar var_A8 = "": var_D4 = "": var_F4 = "": var_104 = ""
  loc_BDBBA7: LitStr "SubTotales2"
  loc_BDBBAA: LitI2_Byte 0
  loc_BDBBAC: LitI2_Byte 0
  loc_BDBBAE: LitI2_Byte 0
  loc_BDBBB0: LitStr "right"
  loc_BDBBB3: FMemLdR4 var_174(80)
  loc_BDBBB8: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BDBBBD: CVarStr var_D4
  loc_BDBBC0: PopAdLdVar
  loc_BDBBC1: FLdPr Me
  loc_BDBBC4: MemLdRfVar from_stack_1.global_60
  loc_BDBBC7: LdPrVar
  loc_BDBBC9: LateMemCall
  loc_BDBBCF: FFree1Var var_D4 = ""
  loc_BDBBD2: LitI4 0
  loc_BDBBD7: FStR4 var_174
  loc_BDBBDA: AryUnlock
  loc_BDBBDD: LitVarStr var_A8, "     </tr>"
  loc_BDBBE2: PopAdLdVar
  loc_BDBBE3: FLdPr Me
  loc_BDBBE6: MemLdRfVar from_stack_1.global_60
  loc_BDBBE9: LdPrVar
  loc_BDBBEB: LateMemCall
  loc_BDBBF1: FLdRfVar var_96
  loc_BDBBF4: FLdPr Me
  loc_BDBBF7: VCallAd Control_ID_BoletoOpt
  loc_BDBBFA: FStAdFunc var_88
  loc_BDBBFD: FLdPr var_88
  loc_BDBC00:  = Me.Value
  loc_BDBC05: FLdI2 var_96
  loc_BDBC08: FFree1Ad var_88
  loc_BDBC0B: BranchF loc_BDBEC7
  loc_BDBC0E: LitI4 1
  loc_BDBC13: FLdPr Me
  loc_BDBC16: MemLdRfVar from_stack_1.global_96
  loc_BDBC19: FLdPr Me
  loc_BDBC1C: MemLdI2 global_94
  loc_BDBC1F: CI4UI1
  loc_BDBC20: FMemLdR4 var_94(8)
  loc_BDBC25: Ary1LdPr
  loc_BDBC26: MemLdStr global_20
  loc_BDBC29: LitI2_Byte 1
  loc_BDBC2B: FnUBound
  loc_BDBC2D: ForI4 var_184
  loc_BDBC33: LitVarStr var_A8, "    <tr valign=""top"" class=""LineaDato"">"
  loc_BDBC38: PopAdLdVar
  loc_BDBC39: FLdPr Me
  loc_BDBC3C: MemLdRfVar from_stack_1.global_60
  loc_BDBC3F: LdPrVar
  loc_BDBC41: LateMemCall
  loc_BDBC47: FLdPr Me
  loc_BDBC4A: MemLdStr global_96
  loc_BDBC4D: FLdPr Me
  loc_BDBC50: MemLdI2 global_94
  loc_BDBC53: CI4UI1
  loc_BDBC54: FMemLdR4 var_94(8)
  loc_BDBC59: AryLock
  loc_BDBC5C: Ary1LdPr
  loc_BDBC5D: MemLdStr global_20
  loc_BDBC60: AryLock
  loc_BDBC63: Ary1LdRf
  loc_BDBC64: FStR4 var_190
  loc_BDBC67: LitStr vbNullString
  loc_BDBC6A: LitI2_Byte 0
  loc_BDBC6C: LitI2_Byte 0
  loc_BDBC6E: LitI2_Byte 0
  loc_BDBC70: LitStr "center"
  loc_BDBC73: FMemLdR4 var_190(0)
  loc_BDBC78: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BDBC7D: CVarStr var_D4
  loc_BDBC80: PopAdLdVar
  loc_BDBC81: FLdPr Me
  loc_BDBC84: MemLdRfVar from_stack_1.global_60
  loc_BDBC87: LdPrVar
  loc_BDBC89: LateMemCall
  loc_BDBC8F: FFree1Var var_D4 = ""
  loc_BDBC92: LitStr vbNullString
  loc_BDBC95: LitI2_Byte 0
  loc_BDBC97: LitI2_Byte 0
  loc_BDBC99: LitI2_Byte 0
  loc_BDBC9B: LitStr "right"
  loc_BDBC9E: FMemLdR4 var_190(4)
  loc_BDBCA3: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BDBCA8: CVarStr var_D4
  loc_BDBCAB: PopAdLdVar
  loc_BDBCAC: FLdPr Me
  loc_BDBCAF: MemLdRfVar from_stack_1.global_60
  loc_BDBCB2: LdPrVar
  loc_BDBCB4: LateMemCall
  loc_BDBCBA: FFree1Var var_D4 = ""
  loc_BDBCBD: LitStr vbNullString
  loc_BDBCC0: LitI2_Byte 0
  loc_BDBCC2: LitI2_Byte 0
  loc_BDBCC4: LitI2_Byte 0
  loc_BDBCC6: LitStr "right"
  loc_BDBCC9: FMemLdR4 var_190(8)
  loc_BDBCCE: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BDBCD3: CVarStr var_D4
  loc_BDBCD6: PopAdLdVar
  loc_BDBCD7: FLdPr Me
  loc_BDBCDA: MemLdRfVar from_stack_1.global_60
  loc_BDBCDD: LdPrVar
  loc_BDBCDF: LateMemCall
  loc_BDBCE5: FFree1Var var_D4 = ""
  loc_BDBCE8: LitStr vbNullString
  loc_BDBCEB: LitI2_Byte 0
  loc_BDBCED: LitI2_Byte 0
  loc_BDBCEF: LitI2_Byte 0
  loc_BDBCF1: LitStr "right"
  loc_BDBCF4: FMemLdR4 var_190(12)
  loc_BDBCF9: LitStr "/"
  loc_BDBCFC: ConcatStr
  loc_BDBCFD: FStStrNoPop var_BC
  loc_BDBD00: FMemLdR4 var_190(16)
  loc_BDBD05: ConcatStr
  loc_BDBD06: FStStrNoPop var_148
  loc_BDBD09: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BDBD0E: CVarStr var_D4
  loc_BDBD11: PopAdLdVar
  loc_BDBD12: FLdPr Me
  loc_BDBD15: MemLdRfVar from_stack_1.global_60
  loc_BDBD18: LdPrVar
  loc_BDBD1A: LateMemCall
  loc_BDBD20: FFreeStr var_BC = ""
  loc_BDBD27: FFree1Var var_D4 = ""
  loc_BDBD2A: LitStr vbNullString
  loc_BDBD2D: LitI2_Byte 0
  loc_BDBD2F: LitI2_Byte 0
  loc_BDBD31: LitI2_Byte 0
  loc_BDBD33: LitStr "left"
  loc_BDBD36: FMemLdR4 var_190(20)
  loc_BDBD3B: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BDBD40: CVarStr var_D4
  loc_BDBD43: PopAdLdVar
  loc_BDBD44: FLdPr Me
  loc_BDBD47: MemLdRfVar from_stack_1.global_60
  loc_BDBD4A: LdPrVar
  loc_BDBD4C: LateMemCall
  loc_BDBD52: FFree1Var var_D4 = ""
  loc_BDBD55: LitStr vbNullString
  loc_BDBD58: LitI2_Byte 0
  loc_BDBD5A: LitI2_Byte 0
  loc_BDBD5C: LitI2_Byte 0
  loc_BDBD5E: LitStr "left"
  loc_BDBD61: FMemLdR4 var_190(24)
  loc_BDBD66: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BDBD6B: CVarStr var_D4
  loc_BDBD6E: PopAdLdVar
  loc_BDBD6F: FLdPr Me
  loc_BDBD72: MemLdRfVar from_stack_1.global_60
  loc_BDBD75: LdPrVar
  loc_BDBD77: LateMemCall
  loc_BDBD7D: FFree1Var var_D4 = ""
  loc_BDBD80: LitStr vbNullString
  loc_BDBD83: LitI2_Byte 0
  loc_BDBD85: LitI2_Byte 0
  loc_BDBD87: LitI2_Byte 0
  loc_BDBD89: LitStr "right"
  loc_BDBD8C: FMemLdR4 var_190(28)
  loc_BDBD91: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BDBD96: CVarStr var_D4
  loc_BDBD99: PopAdLdVar
  loc_BDBD9A: FLdPr Me
  loc_BDBD9D: MemLdRfVar from_stack_1.global_60
  loc_BDBDA0: LdPrVar
  loc_BDBDA2: LateMemCall
  loc_BDBDA8: FFree1Var var_D4 = ""
  loc_BDBDAB: LitStr vbNullString
  loc_BDBDAE: LitI2_Byte 0
  loc_BDBDB0: LitI2_Byte 0
  loc_BDBDB2: LitI2_Byte 0
  loc_BDBDB4: LitStr "right"
  loc_BDBDB7: FMemLdR4 var_190(32)
  loc_BDBDBC: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BDBDC1: CVarStr var_D4
  loc_BDBDC4: PopAdLdVar
  loc_BDBDC5: FLdPr Me
  loc_BDBDC8: MemLdRfVar from_stack_1.global_60
  loc_BDBDCB: LdPrVar
  loc_BDBDCD: LateMemCall
  loc_BDBDD3: FFree1Var var_D4 = ""
  loc_BDBDD6: LitStr vbNullString
  loc_BDBDD9: LitI2_Byte 0
  loc_BDBDDB: LitI2_Byte 0
  loc_BDBDDD: LitI2_Byte 0
  loc_BDBDDF: LitStr "right"
  loc_BDBDE2: FMemLdR4 var_190(48)
  loc_BDBDE7: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BDBDEC: CVarStr var_D4
  loc_BDBDEF: PopAdLdVar
  loc_BDBDF0: FLdPr Me
  loc_BDBDF3: MemLdRfVar from_stack_1.global_60
  loc_BDBDF6: LdPrVar
  loc_BDBDF8: LateMemCall
  loc_BDBDFE: FFree1Var var_D4 = ""
  loc_BDBE01: LitStr vbNullString
  loc_BDBE04: LitI2_Byte 0
  loc_BDBE06: LitI2_Byte 0
  loc_BDBE08: LitI2_Byte 0
  loc_BDBE0A: LitStr "right"
  loc_BDBE0D: FMemLdR4 var_190(56)
  loc_BDBE12: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BDBE17: CVarStr var_D4
  loc_BDBE1A: PopAdLdVar
  loc_BDBE1B: FLdPr Me
  loc_BDBE1E: MemLdRfVar from_stack_1.global_60
  loc_BDBE21: LdPrVar
  loc_BDBE23: LateMemCall
  loc_BDBE29: FFree1Var var_D4 = ""
  loc_BDBE2C: LitI4 0
  loc_BDBE31: FStR4 var_190
  loc_BDBE34: AryUnlock
  loc_BDBE37: AryUnlock
  loc_BDBE3A: LitVarStr var_A8, "     </tr>"
  loc_BDBE3F: PopAdLdVar
  loc_BDBE40: FLdPr Me
  loc_BDBE43: MemLdRfVar from_stack_1.global_60
  loc_BDBE46: LdPrVar
  loc_BDBE48: LateMemCall
  loc_BDBE4E: FLdPr Me
  loc_BDBE51: MemLdRfVar from_stack_1.global_96
  loc_BDBE54: NextI4 var_184, loc_BDBC33
  loc_BDBE59: FLdRfVar var_96
  loc_BDBE5C: FLdPr Me
  loc_BDBE5F: VCallAd Control_ID_BoletoOpt
  loc_BDBE62: FStAdFunc var_88
  loc_BDBE65: FLdPr var_88
  loc_BDBE68:  = Me.Value
  loc_BDBE6D: FLdI2 var_96
  loc_BDBE70: FFree1Ad var_88
  loc_BDBE73: BranchF loc_BDBEC7
  loc_BDBE76: LitVarStr var_A8, "    <tr valign=""top"" class=""LineaDato"">"
  loc_BDBE7B: PopAdLdVar
  loc_BDBE7C: FLdPr Me
  loc_BDBE7F: MemLdRfVar from_stack_1.global_60
  loc_BDBE82: LdPrVar
  loc_BDBE84: LateMemCall
  loc_BDBE8A: LitStr vbNullString
  loc_BDBE8D: LitI2_Byte &HA
  loc_BDBE8F: LitI2_Byte 0
  loc_BDBE91: LitI2_Byte 0
  loc_BDBE93: LitStr "center"
  loc_BDBE96: LitStr vbNullString
  loc_BDBE99: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BDBE9E: CVarStr var_D4
  loc_BDBEA1: PopAdLdVar
  loc_BDBEA2: FLdPr Me
  loc_BDBEA5: MemLdRfVar from_stack_1.global_60
  loc_BDBEA8: LdPrVar
  loc_BDBEAA: LateMemCall
  loc_BDBEB0: FFree1Var var_D4 = ""
  loc_BDBEB3: LitVarStr var_A8, "     </tr>"
  loc_BDBEB8: PopAdLdVar
  loc_BDBEB9: FLdPr Me
  loc_BDBEBC: MemLdRfVar from_stack_1.global_60
  loc_BDBEBF: LdPrVar
  loc_BDBEC1: LateMemCall
  loc_BDBEC7: FLdPr Me
  loc_BDBECA: MemLdRfVar from_stack_1.global_94
  loc_BDBECD: NextI2 var_16C, loc_BDBA60
  loc_BDBED2: LitI4 0
  loc_BDBED7: FStR4 var_94
  loc_BDBEDA: AryUnlock
  loc_BDBEDD: FLdPr Me
  loc_BDBEE0: MemLdRfVar from_stack_1.global_92
  loc_BDBEE3: NextI2 var_8C, loc_BDB8DC
  loc_BDBEE8: LitVarStr var_A8, "    <tr class=""Totales"">"
  loc_BDBEED: PopAdLdVar
  loc_BDBEEE: FLdPr Me
  loc_BDBEF1: MemLdRfVar from_stack_1.global_60
  loc_BDBEF4: LdPrVar
  loc_BDBEF6: LateMemCall
  loc_BDBEFC: FLdRfVar var_96
  loc_BDBEFF: FLdPr Me
  loc_BDBF02: VCallAd Control_ID_BoletoOpt
  loc_BDBF05: FStAdFunc var_88
  loc_BDBF08: FLdPr var_88
  loc_BDBF0B:  = Me.Value
  loc_BDBF10: FLdRfVar var_C2
  loc_BDBF13: FLdPr Me
  loc_BDBF16: VCallAd Control_ID_EnteOpt
  loc_BDBF19: FStAdFunc var_C0
  loc_BDBF1C: FLdPr var_C0
  loc_BDBF1F:  = Me.Value
  loc_BDBF24: LitVarStr var_168, "    <td colspan="""
  loc_BDBF29: LitVarI2 var_F4, 2
  loc_BDBF2E: LitVarI2 var_D4, 1
  loc_BDBF33: FLdI2 var_C2
  loc_BDBF36: CVarBoolI2 var_A8
  loc_BDBF3A: FLdRfVar var_104
  loc_BDBF3D: ImpAdCallFPR4  = IIf(, , )
  loc_BDBF42: FLdRfVar var_104
  loc_BDBF45: LitVarI2 var_134, 9
  loc_BDBF4A: FLdI2 var_96
  loc_BDBF4D: CVarBoolI2 var_114
  loc_BDBF51: FLdRfVar var_144
  loc_BDBF54: ImpAdCallFPR4  = IIf(, , )
  loc_BDBF59: FLdRfVar var_144
  loc_BDBF5C: ConcatVar var_158
  loc_BDBF60: LitVarStr var_1A0, """ align=""right"">Total</td>"
  loc_BDBF65: ConcatVar var_1B0
  loc_BDBF69: PopAdLdVar
  loc_BDBF6A: FLdPr Me
  loc_BDBF6D: MemLdRfVar from_stack_1.global_60
  loc_BDBF70: LdPrVar
  loc_BDBF72: LateMemCall
  loc_BDBF78: FFreeAd var_88 = ""
  loc_BDBF7F: FFreeVar var_A8 = "": var_D4 = "": var_F4 = "": var_114 = "": var_134 = "": var_104 = "": var_144 = "": var_158 = ""
  loc_BDBF94: LitStr vbNullString
  loc_BDBF97: LitI2_Byte 0
  loc_BDBF99: LitI2_Byte 0
  loc_BDBF9B: LitI2_Byte 0
  loc_BDBF9D: LitStr "right"
  loc_BDBFA0: FLdPr Me
  loc_BDBFA3: MemLdStr global_88
  loc_BDBFA6: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BDBFAB: CVarStr var_D4
  loc_BDBFAE: PopAdLdVar
  loc_BDBFAF: FLdPr Me
  loc_BDBFB2: MemLdRfVar from_stack_1.global_60
  loc_BDBFB5: LdPrVar
  loc_BDBFB7: LateMemCall
  loc_BDBFBD: FFree1Var var_D4 = ""
  loc_BDBFC0: LitVarStr var_A8, "     </tr>"
  loc_BDBFC5: PopAdLdVar
  loc_BDBFC6: FLdPr Me
  loc_BDBFC9: MemLdRfVar from_stack_1.global_60
  loc_BDBFCC: LdPrVar
  loc_BDBFCE: LateMemCall
  loc_BDBFD4: Call Proc_221_40_A0F858()
  loc_BDBFD9: FLdPr Me
  loc_BDBFDC: MemLdRfVar from_stack_1.global_60
  loc_BDBFDF: LdPrVar
  loc_BDBFE1: LateMemCall
  loc_BDBFE7: LitStr vbNullString
  loc_BDBFEA: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_BDBFEF: ExitProcHresult
End Sub

Private Function Proc_221_36_AA19B4() 'AA19B4
  'Data Table: 506598
  loc_AA18FC: FLdPr Me
  loc_AA18FF: MemLdI2 global_92
  loc_AA1902: LitI2_Byte 1
  loc_AA1904: AddI2
  loc_AA1905: FLdPr Me
  loc_AA1908: MemStI2 global_92
  loc_AA190B: LitI2_Byte 0
  loc_AA190D: FLdPr Me
  loc_AA1910: MemStI2 global_94
  loc_AA1913: LitI4 0
  loc_AA1918: FLdPr Me
  loc_AA191B: MemLdI2 global_92
  loc_AA191E: CI4UI1
  loc_AA191F: FLdPr Me
  loc_AA1922: MemLdRfVar from_stack_1.global_84
  loc_AA1925: RedimPreserve
  loc_AA192F: FLdRfVar var_94
  loc_AA1932: FLdPr Me
  loc_AA1935: MemLdRfVar from_stack_1.global_76
  loc_AA1938: NewIfNullPr clsconcepto
  loc_AA193B: from_stack_1 = clsconcepto.CodiEnre
  loc_AA1940: LitI2_Byte 0
  loc_AA1942: LitVar_Missing var_B8
  loc_AA1945: LitI2_Byte 0
  loc_AA1947: FLdVar var_94
  loc_AA194B: FLdPr Me
  loc_AA194E: MemLdI2 global_92
  loc_AA1951: CI4UI1
  loc_AA1952: FLdPr Me
  loc_AA1955: MemLdStr global_84
  loc_AA1958: AryLock
  loc_AA195B: Ary1LdPr
  loc_AA195C: MemLdRfVar from_stack_1.global_0
  loc_AA195F: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_AA1964: AryUnlock
  loc_AA1967: FFreeVar var_94 = ""
  loc_AA196E: FLdRfVar var_94
  loc_AA1971: FLdPr Me
  loc_AA1974: MemLdRfVar from_stack_1.global_76
  loc_AA1977: NewIfNullPr clsconcepto
  loc_AA197A: from_stack_1 = clsconcepto.DetaEnre
  loc_AA197F: LitI2_Byte 0
  loc_AA1981: LitVar_Missing var_B8
  loc_AA1984: LitI2_Byte 0
  loc_AA1986: FLdVar var_94
  loc_AA198A: FLdPr Me
  loc_AA198D: MemLdI2 global_92
  loc_AA1990: CI4UI1
  loc_AA1991: FLdPr Me
  loc_AA1994: MemLdStr global_84
  loc_AA1997: AryLock
  loc_AA199A: Ary1LdPr
  loc_AA199B: MemLdRfVar from_stack_1.global_4
  loc_AA199E: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_AA19A3: AryUnlock
  loc_AA19A6: FFreeVar var_94 = ""
  loc_AA19AD: Call Proc_221_37_AED640()
  loc_AA19B2: ExitProcHresult
End Function

Private Function Proc_221_37_AED640() 'AED640
  'Data Table: 506598
  loc_AED4B4: FLdPr Me
  loc_AED4B7: MemLdI2 global_94
  loc_AED4BA: LitI2_Byte 1
  loc_AED4BC: AddI2
  loc_AED4BD: FLdPr Me
  loc_AED4C0: MemStI2 global_94
  loc_AED4C3: LitI4 0
  loc_AED4C8: FLdPr Me
  loc_AED4CB: MemStI4 global_96
  loc_AED4CE: LitI4 0
  loc_AED4D3: FLdPr Me
  loc_AED4D6: MemLdI2 global_94
  loc_AED4D9: CI4UI1
  loc_AED4DA: FLdPr Me
  loc_AED4DD: MemLdI2 global_92
  loc_AED4E0: CI4UI1
  loc_AED4E1: FLdPr Me
  loc_AED4E4: MemLdStr global_84
  loc_AED4E7: Ary1LdPr
  loc_AED4E8: MemLdRfVar from_stack_1.global_8
  loc_AED4EB: RedimPreserve
  loc_AED4F5: FLdPr Me
  loc_AED4F8: MemLdRfVar from_stack_1.global_76
  loc_AED4FB: NewIfNullAd
  loc_AED4FE: FStAd var_88 
  loc_AED502: FLdRfVar var_8C
  loc_AED505: FLdPr var_88
  loc_AED508: from_stack_1 = clsconcepto.CodiConc
  loc_AED50D: LitI2_Byte 0
  loc_AED50F: LitVar_Missing var_C4
  loc_AED512: LitI2_Byte 0
  loc_AED514: FLdZeroAd var_8C
  loc_AED517: CVarStr var_A4
  loc_AED51A: PopAdLdVar
  loc_AED51B: FLdPr Me
  loc_AED51E: MemLdI2 global_94
  loc_AED521: CI4UI1
  loc_AED522: FLdPr Me
  loc_AED525: MemLdI2 global_92
  loc_AED528: CI4UI1
  loc_AED529: FLdPr Me
  loc_AED52C: MemLdStr global_84
  loc_AED52F: AryLock
  loc_AED532: Ary1LdPr
  loc_AED533: MemLdStr global_8
  loc_AED536: AryLock
  loc_AED539: Ary1LdPr
  loc_AED53A: MemLdRfVar from_stack_1.global_0
  loc_AED53D: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_AED542: AryUnlock
  loc_AED545: AryUnlock
  loc_AED548: FFreeVar var_A4 = ""
  loc_AED54F: FLdRfVar var_8C
  loc_AED552: FLdPr var_88
  loc_AED555: from_stack_1 = clsconcepto.DetaConc
  loc_AED55A: LitI2_Byte 0
  loc_AED55C: LitVar_Missing var_C4
  loc_AED55F: LitI2_Byte 0
  loc_AED561: FLdZeroAd var_8C
  loc_AED564: CVarStr var_A4
  loc_AED567: PopAdLdVar
  loc_AED568: FLdPr Me
  loc_AED56B: MemLdI2 global_94
  loc_AED56E: CI4UI1
  loc_AED56F: FLdPr Me
  loc_AED572: MemLdI2 global_92
  loc_AED575: CI4UI1
  loc_AED576: FLdPr Me
  loc_AED579: MemLdStr global_84
  loc_AED57C: AryLock
  loc_AED57F: Ary1LdPr
  loc_AED580: MemLdStr global_8
  loc_AED583: AryLock
  loc_AED586: Ary1LdPr
  loc_AED587: MemLdRfVar from_stack_1.global_4
  loc_AED58A: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_AED58F: AryUnlock
  loc_AED592: AryUnlock
  loc_AED595: FFreeVar var_A4 = ""
  loc_AED59C: FLdRfVar var_8C
  loc_AED59F: FLdPr var_88
  loc_AED5A2: from_stack_1 = clsconcepto.IngrConc
  loc_AED5A7: LitI2_Byte 0
  loc_AED5A9: LitVar_Missing var_C4
  loc_AED5AC: LitI2_Byte 0
  loc_AED5AE: FLdZeroAd var_8C
  loc_AED5B1: CVarStr var_A4
  loc_AED5B4: PopAdLdVar
  loc_AED5B5: FLdPr Me
  loc_AED5B8: MemLdI2 global_94
  loc_AED5BB: CI4UI1
  loc_AED5BC: FLdPr Me
  loc_AED5BF: MemLdI2 global_92
  loc_AED5C2: CI4UI1
  loc_AED5C3: FLdPr Me
  loc_AED5C6: MemLdStr global_84
  loc_AED5C9: AryLock
  loc_AED5CC: Ary1LdPr
  loc_AED5CD: MemLdStr global_8
  loc_AED5D0: AryLock
  loc_AED5D3: Ary1LdPr
  loc_AED5D4: MemLdRfVar from_stack_1.global_12
  loc_AED5D7: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_AED5DC: AryUnlock
  loc_AED5DF: AryUnlock
  loc_AED5E2: FFreeVar var_A4 = ""
  loc_AED5E9: FLdRfVar var_A4
  loc_AED5EC: FLdPr var_88
  loc_AED5EF: from_stack_1 = clsconcepto.DetaCuco
  loc_AED5F4: LitI2_Byte 0
  loc_AED5F6: LitVar_Missing var_C4
  loc_AED5F9: LitI2_Byte 0
  loc_AED5FB: FLdVar var_A4
  loc_AED5FF: FLdPr Me
  loc_AED602: MemLdI2 global_94
  loc_AED605: CI4UI1
  loc_AED606: FLdPr Me
  loc_AED609: MemLdI2 global_92
  loc_AED60C: CI4UI1
  loc_AED60D: FLdPr Me
  loc_AED610: MemLdStr global_84
  loc_AED613: AryLock
  loc_AED616: Ary1LdPr
  loc_AED617: MemLdStr global_8
  loc_AED61A: AryLock
  loc_AED61D: Ary1LdPr
  loc_AED61E: MemLdRfVar from_stack_1.global_16
  loc_AED621: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_AED626: AryUnlock
  loc_AED629: AryUnlock
  loc_AED62C: FFreeVar var_A4 = ""
  loc_AED633: LitNothing
  loc_AED635: FStAd var_88 
  loc_AED639: Call Proc_221_38_B3EE4C()
  loc_AED63E: ExitProcHresult
End Function

Private Function Proc_221_38_B3EE4C() 'B3EE4C
  'Data Table: 506598
  loc_B3EB24: FLdPr Me
  loc_B3EB27: MemLdStr global_96
  loc_B3EB2A: LitI4 1
  loc_B3EB2F: AddI4
  loc_B3EB30: FLdPr Me
  loc_B3EB33: MemStI4 global_96
  loc_B3EB36: LitI4 0
  loc_B3EB3B: FLdPr Me
  loc_B3EB3E: MemLdStr global_96
  loc_B3EB41: FLdPr Me
  loc_B3EB44: MemLdI2 global_94
  loc_B3EB47: CI4UI1
  loc_B3EB48: FLdPr Me
  loc_B3EB4B: MemLdI2 global_92
  loc_B3EB4E: CI4UI1
  loc_B3EB4F: FLdPr Me
  loc_B3EB52: MemLdStr global_84
  loc_B3EB55: Ary1LdPr
  loc_B3EB56: MemLdStr global_8
  loc_B3EB59: Ary1LdPr
  loc_B3EB5A: MemLdRfVar from_stack_1.global_20
  loc_B3EB5D: RedimPreserve
  loc_B3EB67: FLdPr Me
  loc_B3EB6A: MemLdStr global_96
  loc_B3EB6D: FLdPr Me
  loc_B3EB70: MemLdI2 global_94
  loc_B3EB73: CI4UI1
  loc_B3EB74: FLdPr Me
  loc_B3EB77: MemLdI2 global_92
  loc_B3EB7A: CI4UI1
  loc_B3EB7B: FLdPr Me
  loc_B3EB7E: MemLdStr global_84
  loc_B3EB81: AryLock
  loc_B3EB84: Ary1LdPr
  loc_B3EB85: MemLdStr global_8
  loc_B3EB88: AryLock
  loc_B3EB8B: Ary1LdPr
  loc_B3EB8C: MemLdStr global_20
  loc_B3EB8F: AryLock
  loc_B3EB92: Ary1LdRf
  loc_B3EB93: FStR4 var_94
  loc_B3EB96: FLdRfVar var_98
  loc_B3EB99: FLdPr Me
  loc_B3EB9C: MemLdRfVar from_stack_1.global_76
  loc_B3EB9F: NewIfNullPr clsconcepto
  loc_B3EBA2: from_stack_1 = clsconcepto.FeenAcpa
  loc_B3EBA7: LitI2_Byte 0
  loc_B3EBA9: LitVar_Missing var_C8
  loc_B3EBAC: LitI2_Byte 0
  loc_B3EBAE: FLdZeroAd var_98
  loc_B3EBB1: CVarStr var_A8
  loc_B3EBB4: PopAdLdVar
  loc_B3EBB5: FMemLdRf unk_506505
  loc_B3EBBA: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B3EBBF: FFreeVar var_A8 = ""
  loc_B3EBC6: FLdRfVar var_CA
  loc_B3EBC9: FLdPr Me
  loc_B3EBCC: MemLdRfVar from_stack_1.global_76
  loc_B3EBCF: NewIfNullPr clsconcepto
  loc_B3EBD2: from_stack_1 = clsconcepto.CodiOfic
  loc_B3EBD7: LitI2_Byte 0
  loc_B3EBD9: LitVar_Missing var_A8
  loc_B3EBDC: LitI2_Byte 0
  loc_B3EBDE: FLdUI1
  loc_B3EBE2: CVarUI1
  loc_B3EBE6: PopAdLdVar
  loc_B3EBE7: FMemLdRf unk_506505
  loc_B3EBEC: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B3EBF1: FFree1Var var_A8 = ""
  loc_B3EBF4: FLdRfVar var_98
  loc_B3EBF7: FLdPr Me
  loc_B3EBFA: MemLdRfVar from_stack_1.global_76
  loc_B3EBFD: NewIfNullPr clsconcepto
  loc_B3EC00: from_stack_1 = clsconcepto.CuenCtct
  loc_B3EC05: LitI2_Byte 0
  loc_B3EC07: LitVar_Missing var_C8
  loc_B3EC0A: LitI2_Byte 0
  loc_B3EC0C: FLdZeroAd var_98
  loc_B3EC0F: CVarStr var_A8
  loc_B3EC12: PopAdLdVar
  loc_B3EC13: FMemLdRf unk_506505
  loc_B3EC18: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B3EC1D: FFreeVar var_A8 = ""
  loc_B3EC24: FLdRfVar var_CA
  loc_B3EC27: FLdPr Me
  loc_B3EC2A: MemLdRfVar from_stack_1.global_76
  loc_B3EC2D: NewIfNullPr clsconcepto
  loc_B3EC30: from_stack_1 = clsconcepto.PeriBole
  loc_B3EC35: LitI2_Byte 0
  loc_B3EC37: LitVar_Missing var_A8
  loc_B3EC3A: LitI2_Byte 0
  loc_B3EC3C: FLdI2 var_CA
  loc_B3EC3F: CVarI2 var_B8
  loc_B3EC42: PopAdLdVar
  loc_B3EC43: FMemLdRf unk_506505
  loc_B3EC48: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B3EC4D: FFree1Var var_A8 = ""
  loc_B3EC50: FLdRfVar var_E0
  loc_B3EC53: FLdPr Me
  loc_B3EC56: MemLdRfVar from_stack_1.global_76
  loc_B3EC59: NewIfNullPr clsconcepto
  loc_B3EC5C: from_stack_1 = clsconcepto.NumeBole
  loc_B3EC61: LitI2_Byte 0
  loc_B3EC63: LitVar_Missing var_A8
  loc_B3EC66: LitI2_Byte 0
  loc_B3EC68: ILdRf var_E0
  loc_B3EC6B: CVarI4
  loc_B3EC6F: PopAdLdVar
  loc_B3EC70: FMemLdRf unk_506505
  loc_B3EC75: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B3EC7A: FFree1Var var_A8 = ""
  loc_B3EC7D: FLdRfVar var_A8
  loc_B3EC80: FLdPr Me
  loc_B3EC83: MemLdRfVar from_stack_1.global_76
  loc_B3EC86: NewIfNullPr clsconcepto
  loc_B3EC89: from_stack_1 = clsconcepto.DetaPers
  loc_B3EC8E: LitI2_Byte 0
  loc_B3EC90: LitVar_Missing var_C8
  loc_B3EC93: LitI2_Byte 0
  loc_B3EC95: FLdVar var_A8
  loc_B3EC99: FMemLdRf unk_506505
  loc_B3EC9E: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B3ECA3: FFreeVar var_A8 = ""
  loc_B3ECAA: FLdRfVar var_A8
  loc_B3ECAD: FLdPr Me
  loc_B3ECB0: MemLdRfVar from_stack_1.global_76
  loc_B3ECB3: NewIfNullPr clsconcepto
  loc_B3ECB6: from_stack_1 = clsconcepto.ExpeBole
  loc_B3ECBB: LitI2_Byte 0
  loc_B3ECBD: LitVar_Missing var_C8
  loc_B3ECC0: LitI2_Byte 0
  loc_B3ECC2: FLdVar var_A8
  loc_B3ECC6: FMemLdRf unk_506505
  loc_B3ECCB: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B3ECD0: FFreeVar var_A8 = ""
  loc_B3ECD7: FLdRfVar var_E8
  loc_B3ECDA: FLdPr Me
  loc_B3ECDD: MemLdRfVar from_stack_1.global_76
  loc_B3ECE0: NewIfNullPr clsconcepto
  loc_B3ECE3: from_stack_1 = clsconcepto.CapiDepa
  loc_B3ECE8: LitI2_Byte 0
  loc_B3ECEA: FLdPr Me
  loc_B3ECED: MemLdI2 global_94
  loc_B3ECF0: CI4UI1
  loc_B3ECF1: FLdPr Me
  loc_B3ECF4: MemLdI2 global_92
  loc_B3ECF7: CI4UI1
  loc_B3ECF8: FLdPr Me
  loc_B3ECFB: MemLdStr global_84
  loc_B3ECFE: AryLock
  loc_B3ED01: Ary1LdPr
  loc_B3ED02: MemLdStr global_8
  loc_B3ED05: AryLock
  loc_B3ED08: Ary1LdPr
  loc_B3ED09: MemLdRfVar from_stack_1.bLogos
  loc_B3ED0C: CVarRef
  loc_B3ED11: LitI2_Byte &HFF
  loc_B3ED13: FLdFPR8 var_E8
  loc_B3ED16: CVarR8
  loc_B3ED1A: PopAdLdVar
  loc_B3ED1B: FMemLdRf unk_506505
  loc_B3ED20: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B3ED25: AryUnlock
  loc_B3ED28: AryUnlock
  loc_B3ED2B: FLdRfVar var_E8
  loc_B3ED2E: FLdPr Me
  loc_B3ED31: MemLdRfVar from_stack_1.global_76
  loc_B3ED34: NewIfNullPr clsconcepto
  loc_B3ED37: from_stack_1 = clsconcepto.DecaDepa
  loc_B3ED3C: LitI2_Byte 0
  loc_B3ED3E: FLdPr Me
  loc_B3ED41: MemLdI2 global_94
  loc_B3ED44: CI4UI1
  loc_B3ED45: FLdPr Me
  loc_B3ED48: MemLdI2 global_92
  loc_B3ED4B: CI4UI1
  loc_B3ED4C: FLdPr Me
  loc_B3ED4F: MemLdStr global_84
  loc_B3ED52: AryLock
  loc_B3ED55: Ary1LdPr
  loc_B3ED56: MemLdStr global_8
  loc_B3ED59: AryLock
  loc_B3ED5C: Ary1LdPr
  loc_B3ED5D: MemLdRfVar from_stack_1.global_56
  loc_B3ED60: CVarRef
  loc_B3ED65: LitI2_Byte &HFF
  loc_B3ED67: FLdFPR8 var_E8
  loc_B3ED6A: CVarR8
  loc_B3ED6E: PopAdLdVar
  loc_B3ED6F: FMemLdRf unk_506505
  loc_B3ED74: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B3ED79: AryUnlock
  loc_B3ED7C: AryUnlock
  loc_B3ED7F: FLdRfVar var_E8
  loc_B3ED82: FLdPr Me
  loc_B3ED85: MemLdRfVar from_stack_1.global_76
  loc_B3ED88: NewIfNullPr clsconcepto
  loc_B3ED8B: from_stack_1 = clsconcepto.ExenDepa
  loc_B3ED90: LitI2_Byte 0
  loc_B3ED92: FLdPr Me
  loc_B3ED95: MemLdI2 global_94
  loc_B3ED98: CI4UI1
  loc_B3ED99: FLdPr Me
  loc_B3ED9C: MemLdI2 global_92
  loc_B3ED9F: CI4UI1
  loc_B3EDA0: FLdPr Me
  loc_B3EDA3: MemLdStr global_84
  loc_B3EDA6: AryLock
  loc_B3EDA9: Ary1LdPr
  loc_B3EDAA: MemLdStr global_8
  loc_B3EDAD: AryLock
  loc_B3EDB0: Ary1LdPr
  loc_B3EDB1: MemLdRfVar from_stack_1.global_72
  loc_B3EDB4: CVarRef
  loc_B3EDB9: LitI2_Byte &HFF
  loc_B3EDBB: FLdFPR8 var_E8
  loc_B3EDBE: CVarR8
  loc_B3EDC2: PopAdLdVar
  loc_B3EDC3: FMemLdRf unk_506505
  loc_B3EDC8: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B3EDCD: AryUnlock
  loc_B3EDD0: AryUnlock
  loc_B3EDD3: FLdRfVar var_A8
  loc_B3EDD6: FLdPr Me
  loc_B3EDD9: MemLdRfVar from_stack_1.global_76
  loc_B3EDDC: NewIfNullPr clsconcepto
  loc_B3EDDF: from_stack_1 = clsconcepto.TotaDepa
  loc_B3EDE4: LitI2_Byte 0
  loc_B3EDE6: FLdPr Me
  loc_B3EDE9: MemLdI2 global_94
  loc_B3EDEC: CI4UI1
  loc_B3EDED: FLdPr Me
  loc_B3EDF0: MemLdI2 global_92
  loc_B3EDF3: CI4UI1
  loc_B3EDF4: FLdPr Me
  loc_B3EDF7: MemLdStr global_84
  loc_B3EDFA: AryLock
  loc_B3EDFD: Ary1LdPr
  loc_B3EDFE: MemLdStr global_8
  loc_B3EE01: AryLock
  loc_B3EE04: Ary1LdPr
  loc_B3EE05: MemLdRfVar from_stack_1.global_80
  loc_B3EE08: CVarRef
  loc_B3EE0D: LitI2_Byte &HFF
  loc_B3EE0F: FLdVar var_A8
  loc_B3EE13: FMemLdRf unk_506505
  loc_B3EE18: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B3EE1D: AryUnlock
  loc_B3EE20: AryUnlock
  loc_B3EE23: FFree1Var var_A8 = ""
  loc_B3EE26: LitI4 0
  loc_B3EE2B: FStR4 var_94
  loc_B3EE2E: AryUnlock
  loc_B3EE31: AryUnlock
  loc_B3EE34: AryUnlock
  loc_B3EE37: LitI2_Byte 1
  loc_B3EE39: PopTmpLdAd2 var_CA
  loc_B3EE3C: FLdPr Me
  loc_B3EE3F: MemLdRfVar from_stack_1.global_76
  loc_B3EE42: NewIfNullPr clsconcepto
  loc_B3EE45: Call clsconcepto.Move(from_stack_1v)
  loc_B3EE4A: ExitProcHresult
End Function

Private Function Proc_221_39_C5DF08() 'C5DF08
  'Data Table: 506598
  loc_C5CFB0: LitVarStr var_94, "<html>"
  loc_C5CFB5: PopAdLdVar
  loc_C5CFB6: FLdPr Me
  loc_C5CFB9: MemLdRfVar from_stack_1.global_60
  loc_C5CFBC: LdPrVar
  loc_C5CFBE: LateMemCall
  loc_C5CFC4: LitVarStr var_94, "<head>"
  loc_C5CFC9: PopAdLdVar
  loc_C5CFCA: FLdPr Me
  loc_C5CFCD: MemLdRfVar from_stack_1.global_60
  loc_C5CFD0: LdPrVar
  loc_C5CFD2: LateMemCall
  loc_C5CFD8: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_C5CFDD: PopAdLdVar
  loc_C5CFDE: FLdPr Me
  loc_C5CFE1: MemLdRfVar from_stack_1.global_60
  loc_C5CFE4: LdPrVar
  loc_C5CFE6: LateMemCall
  loc_C5CFEC: LitStr "<title>"
  loc_C5CFEF: FLdRfVar var_A8
  loc_C5CFF2: FLdPr Me
  loc_C5CFF5:  = Me.Caption
  loc_C5CFFA: ILdRf var_A8
  loc_C5CFFD: ConcatStr
  loc_C5CFFE: FStStrNoPop var_AC
  loc_C5D001: LitStr "</title>"
  loc_C5D004: ConcatStr
  loc_C5D005: CVarStr var_BC
  loc_C5D008: PopAdLdVar
  loc_C5D009: FLdPr Me
  loc_C5D00C: MemLdRfVar from_stack_1.global_60
  loc_C5D00F: LdPrVar
  loc_C5D011: LateMemCall
  loc_C5D017: FFreeStr var_A8 = ""
  loc_C5D01E: FFree1Var var_BC = ""
  loc_C5D021: LitVarStr var_94, "<style type=""text/css"">"
  loc_C5D026: PopAdLdVar
  loc_C5D027: FLdPr Me
  loc_C5D02A: MemLdRfVar from_stack_1.global_60
  loc_C5D02D: LdPrVar
  loc_C5D02F: LateMemCall
  loc_C5D035: LitVarStr var_94, ".Titulo1 {"
  loc_C5D03A: PopAdLdVar
  loc_C5D03B: FLdPr Me
  loc_C5D03E: MemLdRfVar from_stack_1.global_60
  loc_C5D041: LdPrVar
  loc_C5D043: LateMemCall
  loc_C5D049: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_C5D04E: PopAdLdVar
  loc_C5D04F: FLdPr Me
  loc_C5D052: MemLdRfVar from_stack_1.global_60
  loc_C5D055: LdPrVar
  loc_C5D057: LateMemCall
  loc_C5D05D: LitVarStr var_94, " font-size: 18px;"
  loc_C5D062: PopAdLdVar
  loc_C5D063: FLdPr Me
  loc_C5D066: MemLdRfVar from_stack_1.global_60
  loc_C5D069: LdPrVar
  loc_C5D06B: LateMemCall
  loc_C5D071: LitVarStr var_94, " font-weight: bold;"
  loc_C5D076: PopAdLdVar
  loc_C5D077: FLdPr Me
  loc_C5D07A: MemLdRfVar from_stack_1.global_60
  loc_C5D07D: LdPrVar
  loc_C5D07F: LateMemCall
  loc_C5D085: LitVarStr var_94, "}"
  loc_C5D08A: PopAdLdVar
  loc_C5D08B: FLdPr Me
  loc_C5D08E: MemLdRfVar from_stack_1.global_60
  loc_C5D091: LdPrVar
  loc_C5D093: LateMemCall
  loc_C5D099: LitVarStr var_94, ".Titulo2 {"
  loc_C5D09E: PopAdLdVar
  loc_C5D09F: FLdPr Me
  loc_C5D0A2: MemLdRfVar from_stack_1.global_60
  loc_C5D0A5: LdPrVar
  loc_C5D0A7: LateMemCall
  loc_C5D0AD: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_C5D0B2: PopAdLdVar
  loc_C5D0B3: FLdPr Me
  loc_C5D0B6: MemLdRfVar from_stack_1.global_60
  loc_C5D0B9: LdPrVar
  loc_C5D0BB: LateMemCall
  loc_C5D0C1: LitVarStr var_94, " font-size: 14px;"
  loc_C5D0C6: PopAdLdVar
  loc_C5D0C7: FLdPr Me
  loc_C5D0CA: MemLdRfVar from_stack_1.global_60
  loc_C5D0CD: LdPrVar
  loc_C5D0CF: LateMemCall
  loc_C5D0D5: LitVarStr var_94, " font-weight: bold;"
  loc_C5D0DA: PopAdLdVar
  loc_C5D0DB: FLdPr Me
  loc_C5D0DE: MemLdRfVar from_stack_1.global_60
  loc_C5D0E1: LdPrVar
  loc_C5D0E3: LateMemCall
  loc_C5D0E9: LitVarStr var_94, "}"
  loc_C5D0EE: PopAdLdVar
  loc_C5D0EF: FLdPr Me
  loc_C5D0F2: MemLdRfVar from_stack_1.global_60
  loc_C5D0F5: LdPrVar
  loc_C5D0F7: LateMemCall
  loc_C5D0FD: LitVarStr var_94, ".Normal {"
  loc_C5D102: PopAdLdVar
  loc_C5D103: FLdPr Me
  loc_C5D106: MemLdRfVar from_stack_1.global_60
  loc_C5D109: LdPrVar
  loc_C5D10B: LateMemCall
  loc_C5D111: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_C5D116: PopAdLdVar
  loc_C5D117: FLdPr Me
  loc_C5D11A: MemLdRfVar from_stack_1.global_60
  loc_C5D11D: LdPrVar
  loc_C5D11F: LateMemCall
  loc_C5D125: LitVarStr var_94, " font-size: 12px;"
  loc_C5D12A: PopAdLdVar
  loc_C5D12B: FLdPr Me
  loc_C5D12E: MemLdRfVar from_stack_1.global_60
  loc_C5D131: LdPrVar
  loc_C5D133: LateMemCall
  loc_C5D139: LitVarStr var_94, " font-style: normal;"
  loc_C5D13E: PopAdLdVar
  loc_C5D13F: FLdPr Me
  loc_C5D142: MemLdRfVar from_stack_1.global_60
  loc_C5D145: LdPrVar
  loc_C5D147: LateMemCall
  loc_C5D14D: LitVarStr var_94, " font-weight: normal;"
  loc_C5D152: PopAdLdVar
  loc_C5D153: FLdPr Me
  loc_C5D156: MemLdRfVar from_stack_1.global_60
  loc_C5D159: LdPrVar
  loc_C5D15B: LateMemCall
  loc_C5D161: LitVarStr var_94, " font-variant: normal;"
  loc_C5D166: PopAdLdVar
  loc_C5D167: FLdPr Me
  loc_C5D16A: MemLdRfVar from_stack_1.global_60
  loc_C5D16D: LdPrVar
  loc_C5D16F: LateMemCall
  loc_C5D175: LitVarStr var_94, "}"
  loc_C5D17A: PopAdLdVar
  loc_C5D17B: FLdPr Me
  loc_C5D17E: MemLdRfVar from_stack_1.global_60
  loc_C5D181: LdPrVar
  loc_C5D183: LateMemCall
  loc_C5D189: LitVarStr var_94, ".Encabezado {"
  loc_C5D18E: PopAdLdVar
  loc_C5D18F: FLdPr Me
  loc_C5D192: MemLdRfVar from_stack_1.global_60
  loc_C5D195: LdPrVar
  loc_C5D197: LateMemCall
  loc_C5D19D: LitVarStr var_94, " font-family: ""Times New Roman"", Times, serif;"
  loc_C5D1A2: PopAdLdVar
  loc_C5D1A3: FLdPr Me
  loc_C5D1A6: MemLdRfVar from_stack_1.global_60
  loc_C5D1A9: LdPrVar
  loc_C5D1AB: LateMemCall
  loc_C5D1B1: LitVarStr var_94, " font-size: 11px;"
  loc_C5D1B6: PopAdLdVar
  loc_C5D1B7: FLdPr Me
  loc_C5D1BA: MemLdRfVar from_stack_1.global_60
  loc_C5D1BD: LdPrVar
  loc_C5D1BF: LateMemCall
  loc_C5D1C5: LitVarStr var_94, " font-weight: bold;"
  loc_C5D1CA: PopAdLdVar
  loc_C5D1CB: FLdPr Me
  loc_C5D1CE: MemLdRfVar from_stack_1.global_60
  loc_C5D1D1: LdPrVar
  loc_C5D1D3: LateMemCall
  loc_C5D1D9: LitVarStr var_94, " background-color: #D3D3D3;"
  loc_C5D1DE: PopAdLdVar
  loc_C5D1DF: FLdPr Me
  loc_C5D1E2: MemLdRfVar from_stack_1.global_60
  loc_C5D1E5: LdPrVar
  loc_C5D1E7: LateMemCall
  loc_C5D1ED: LitVarStr var_94, "}"
  loc_C5D1F2: PopAdLdVar
  loc_C5D1F3: FLdPr Me
  loc_C5D1F6: MemLdRfVar from_stack_1.global_60
  loc_C5D1F9: LdPrVar
  loc_C5D1FB: LateMemCall
  loc_C5D201: LitVarStr var_94, ".LineaDato {"
  loc_C5D206: PopAdLdVar
  loc_C5D207: FLdPr Me
  loc_C5D20A: MemLdRfVar from_stack_1.global_60
  loc_C5D20D: LdPrVar
  loc_C5D20F: LateMemCall
  loc_C5D215: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C5D21A: PopAdLdVar
  loc_C5D21B: FLdPr Me
  loc_C5D21E: MemLdRfVar from_stack_1.global_60
  loc_C5D221: LdPrVar
  loc_C5D223: LateMemCall
  loc_C5D229: LitVarStr var_94, " font-size: 10px;"
  loc_C5D22E: PopAdLdVar
  loc_C5D22F: FLdPr Me
  loc_C5D232: MemLdRfVar from_stack_1.global_60
  loc_C5D235: LdPrVar
  loc_C5D237: LateMemCall
  loc_C5D23D: LitVarStr var_94, "}"
  loc_C5D242: PopAdLdVar
  loc_C5D243: FLdPr Me
  loc_C5D246: MemLdRfVar from_stack_1.global_60
  loc_C5D249: LdPrVar
  loc_C5D24B: LateMemCall
  loc_C5D251: LitVarStr var_94, ".Totales {"
  loc_C5D256: PopAdLdVar
  loc_C5D257: FLdPr Me
  loc_C5D25A: MemLdRfVar from_stack_1.global_60
  loc_C5D25D: LdPrVar
  loc_C5D25F: LateMemCall
  loc_C5D265: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C5D26A: PopAdLdVar
  loc_C5D26B: FLdPr Me
  loc_C5D26E: MemLdRfVar from_stack_1.global_60
  loc_C5D271: LdPrVar
  loc_C5D273: LateMemCall
  loc_C5D279: LitVarStr var_94, " font-size: 12px;"
  loc_C5D27E: PopAdLdVar
  loc_C5D27F: FLdPr Me
  loc_C5D282: MemLdRfVar from_stack_1.global_60
  loc_C5D285: LdPrVar
  loc_C5D287: LateMemCall
  loc_C5D28D: LitVarStr var_94, " font-weight: bold;"
  loc_C5D292: PopAdLdVar
  loc_C5D293: FLdPr Me
  loc_C5D296: MemLdRfVar from_stack_1.global_60
  loc_C5D299: LdPrVar
  loc_C5D29B: LateMemCall
  loc_C5D2A1: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_C5D2A6: PopAdLdVar
  loc_C5D2A7: FLdPr Me
  loc_C5D2AA: MemLdRfVar from_stack_1.global_60
  loc_C5D2AD: LdPrVar
  loc_C5D2AF: LateMemCall
  loc_C5D2B5: LitVarStr var_94, "}"
  loc_C5D2BA: PopAdLdVar
  loc_C5D2BB: FLdPr Me
  loc_C5D2BE: MemLdRfVar from_stack_1.global_60
  loc_C5D2C1: LdPrVar
  loc_C5D2C3: LateMemCall
  loc_C5D2C9: LitVarStr var_94, ".SubTotales {"
  loc_C5D2CE: PopAdLdVar
  loc_C5D2CF: FLdPr Me
  loc_C5D2D2: MemLdRfVar from_stack_1.global_60
  loc_C5D2D5: LdPrVar
  loc_C5D2D7: LateMemCall
  loc_C5D2DD: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C5D2E2: PopAdLdVar
  loc_C5D2E3: FLdPr Me
  loc_C5D2E6: MemLdRfVar from_stack_1.global_60
  loc_C5D2E9: LdPrVar
  loc_C5D2EB: LateMemCall
  loc_C5D2F1: LitVarStr var_94, " font-size: 10px;"
  loc_C5D2F6: PopAdLdVar
  loc_C5D2F7: FLdPr Me
  loc_C5D2FA: MemLdRfVar from_stack_1.global_60
  loc_C5D2FD: LdPrVar
  loc_C5D2FF: LateMemCall
  loc_C5D305: LitVarStr var_94, " font-weight: bold;"
  loc_C5D30A: PopAdLdVar
  loc_C5D30B: FLdPr Me
  loc_C5D30E: MemLdRfVar from_stack_1.global_60
  loc_C5D311: LdPrVar
  loc_C5D313: LateMemCall
  loc_C5D319: LitVarStr var_94, " background-color: #7DC3E1;"
  loc_C5D31E: PopAdLdVar
  loc_C5D31F: FLdPr Me
  loc_C5D322: MemLdRfVar from_stack_1.global_60
  loc_C5D325: LdPrVar
  loc_C5D327: LateMemCall
  loc_C5D32D: LitVarStr var_94, "}"
  loc_C5D332: PopAdLdVar
  loc_C5D333: FLdPr Me
  loc_C5D336: MemLdRfVar from_stack_1.global_60
  loc_C5D339: LdPrVar
  loc_C5D33B: LateMemCall
  loc_C5D341: LitVarStr var_94, ".SubTotales2 {"
  loc_C5D346: PopAdLdVar
  loc_C5D347: FLdPr Me
  loc_C5D34A: MemLdRfVar from_stack_1.global_60
  loc_C5D34D: LdPrVar
  loc_C5D34F: LateMemCall
  loc_C5D355: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C5D35A: PopAdLdVar
  loc_C5D35B: FLdPr Me
  loc_C5D35E: MemLdRfVar from_stack_1.global_60
  loc_C5D361: LdPrVar
  loc_C5D363: LateMemCall
  loc_C5D369: LitVarStr var_94, " font-size: 10px;"
  loc_C5D36E: PopAdLdVar
  loc_C5D36F: FLdPr Me
  loc_C5D372: MemLdRfVar from_stack_1.global_60
  loc_C5D375: LdPrVar
  loc_C5D377: LateMemCall
  loc_C5D37D: LitVarStr var_94, " font-weight: bold;"
  loc_C5D382: PopAdLdVar
  loc_C5D383: FLdPr Me
  loc_C5D386: MemLdRfVar from_stack_1.global_60
  loc_C5D389: LdPrVar
  loc_C5D38B: LateMemCall
  loc_C5D391: LitVarStr var_94, " background-color: #DEEFFA;"
  loc_C5D396: PopAdLdVar
  loc_C5D397: FLdPr Me
  loc_C5D39A: MemLdRfVar from_stack_1.global_60
  loc_C5D39D: LdPrVar
  loc_C5D39F: LateMemCall
  loc_C5D3A5: LitVarStr var_94, "}"
  loc_C5D3AA: PopAdLdVar
  loc_C5D3AB: FLdPr Me
  loc_C5D3AE: MemLdRfVar from_stack_1.global_60
  loc_C5D3B1: LdPrVar
  loc_C5D3B3: LateMemCall
  loc_C5D3B9: LitVarStr var_94, ".SubTotales {"
  loc_C5D3BE: PopAdLdVar
  loc_C5D3BF: FLdPr Me
  loc_C5D3C2: MemLdRfVar from_stack_1.global_60
  loc_C5D3C5: LdPrVar
  loc_C5D3C7: LateMemCall
  loc_C5D3CD: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C5D3D2: PopAdLdVar
  loc_C5D3D3: FLdPr Me
  loc_C5D3D6: MemLdRfVar from_stack_1.global_60
  loc_C5D3D9: LdPrVar
  loc_C5D3DB: LateMemCall
  loc_C5D3E1: LitVarStr var_94, " font-size: 10px;"
  loc_C5D3E6: PopAdLdVar
  loc_C5D3E7: FLdPr Me
  loc_C5D3EA: MemLdRfVar from_stack_1.global_60
  loc_C5D3ED: LdPrVar
  loc_C5D3EF: LateMemCall
  loc_C5D3F5: LitVarStr var_94, " font-weight: bold;"
  loc_C5D3FA: PopAdLdVar
  loc_C5D3FB: FLdPr Me
  loc_C5D3FE: MemLdRfVar from_stack_1.global_60
  loc_C5D401: LdPrVar
  loc_C5D403: LateMemCall
  loc_C5D409: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_C5D40E: PopAdLdVar
  loc_C5D40F: FLdPr Me
  loc_C5D412: MemLdRfVar from_stack_1.global_60
  loc_C5D415: LdPrVar
  loc_C5D417: LateMemCall
  loc_C5D41D: LitVarStr var_94, "}"
  loc_C5D422: PopAdLdVar
  loc_C5D423: FLdPr Me
  loc_C5D426: MemLdRfVar from_stack_1.global_60
  loc_C5D429: LdPrVar
  loc_C5D42B: LateMemCall
  loc_C5D431: LitVarStr var_94, "THEAD { display: table-header-group; }"
  loc_C5D436: PopAdLdVar
  loc_C5D437: FLdPr Me
  loc_C5D43A: MemLdRfVar from_stack_1.global_60
  loc_C5D43D: LdPrVar
  loc_C5D43F: LateMemCall
  loc_C5D445: LitVarStr var_94, "</style>"
  loc_C5D44A: PopAdLdVar
  loc_C5D44B: FLdPr Me
  loc_C5D44E: MemLdRfVar from_stack_1.global_60
  loc_C5D451: LdPrVar
  loc_C5D453: LateMemCall
  loc_C5D459: LitI4 0
  loc_C5D45E: FStStrCopy var_AC
  loc_C5D461: FLdRfVar var_AC
  loc_C5D464: LitI4 0
  loc_C5D469: FStStrCopy var_A8
  loc_C5D46C: FLdRfVar var_A8
  loc_C5D46F: LitI2_Byte 0
  loc_C5D471: PopTmpLdAd2 var_BE
  loc_C5D474: FLdPr Me
  loc_C5D477: MemLdRfVar from_stack_1.global_60
  loc_C5D47A: ImpAdCallFPR4  = Proc_57_7_B5E738(, )
  loc_C5D47F: FFreeStr var_A8 = ""
  loc_C5D486: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_C5D48B: PopAdLdVar
  loc_C5D48C: FLdPr Me
  loc_C5D48F: MemLdRfVar from_stack_1.global_60
  loc_C5D492: LdPrVar
  loc_C5D494: LateMemCall
  loc_C5D49A: LitVarStr var_94, "  <tr valign=""middle"">"
  loc_C5D49F: PopAdLdVar
  loc_C5D4A0: FLdPr Me
  loc_C5D4A3: MemLdRfVar from_stack_1.global_60
  loc_C5D4A6: LdPrVar
  loc_C5D4A8: LateMemCall
  loc_C5D4AE: LitVarStr var_94, "    <th width=""100" & Chr(37) & """ colspan=""3"" align=""center"" valign=""middle""><p>"
  loc_C5D4B3: PopAdLdVar
  loc_C5D4B4: FLdPr Me
  loc_C5D4B7: MemLdRfVar from_stack_1.global_60
  loc_C5D4BA: LdPrVar
  loc_C5D4BC: LateMemCall
  loc_C5D4C2: FLdPr Me
  loc_C5D4C5: MemLdI2 bLogos
  loc_C5D4C8: BranchF loc_C5D511
  loc_C5D4CB: LitStr "    <img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_C5D4CE: LitI2_Byte &H5F
  loc_C5D4D0: CStrUI1
  loc_C5D4D2: FStStrNoPop var_A8
  loc_C5D4D5: ConcatStr
  loc_C5D4D6: FStStrNoPop var_AC
  loc_C5D4D9: LitStr """ height="""
  loc_C5D4DC: ConcatStr
  loc_C5D4DD: FStStrNoPop var_C4
  loc_C5D4E0: LitI2_Byte &H3C
  loc_C5D4E2: CStrUI1
  loc_C5D4E4: FStStrNoPop var_C8
  loc_C5D4E7: ConcatStr
  loc_C5D4E8: FStStrNoPop var_CC
  loc_C5D4EB: LitStr """ align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right"">"
  loc_C5D4EE: ConcatStr
  loc_C5D4EF: CVarStr var_BC
  loc_C5D4F2: PopAdLdVar
  loc_C5D4F3: FLdPr Me
  loc_C5D4F6: MemLdRfVar from_stack_1.global_60
  loc_C5D4F9: LdPrVar
  loc_C5D4FB: LateMemCall
  loc_C5D501: FFreeStr var_A8 = "": var_AC = "": var_C4 = "": var_C8 = ""
  loc_C5D50E: FFree1Var var_BC = ""
  loc_C5D511: LitStr "    <br>"
  loc_C5D514: LitStr "Municipalidad de Guaymallén"
  loc_C5D517: ConcatStr
  loc_C5D518: FStStrNoPop var_A8
  loc_C5D51B: LitStr "</p>"
  loc_C5D51E: ConcatStr
  loc_C5D51F: CVarStr var_BC
  loc_C5D522: PopAdLdVar
  loc_C5D523: FLdPr Me
  loc_C5D526: MemLdRfVar from_stack_1.global_60
  loc_C5D529: LdPrVar
  loc_C5D52B: LateMemCall
  loc_C5D531: FFree1Str var_A8
  loc_C5D534: FFree1Var var_BC = ""
  loc_C5D537: LitStr "    <p>"
  loc_C5D53A: FLdRfVar var_A8
  loc_C5D53D: FLdPr Me
  loc_C5D540:  = Me.Caption
  loc_C5D545: ILdRf var_A8
  loc_C5D548: ConcatStr
  loc_C5D549: FStStrNoPop var_AC
  loc_C5D54C: LitStr "</p></th>"
  loc_C5D54F: ConcatStr
  loc_C5D550: CVarStr var_BC
  loc_C5D553: PopAdLdVar
  loc_C5D554: FLdPr Me
  loc_C5D557: MemLdRfVar from_stack_1.global_60
  loc_C5D55A: LdPrVar
  loc_C5D55C: LateMemCall
  loc_C5D562: FFreeStr var_A8 = ""
  loc_C5D569: FFree1Var var_BC = ""
  loc_C5D56C: LitVarStr var_94, "  </tr>"
  loc_C5D571: PopAdLdVar
  loc_C5D572: FLdPr Me
  loc_C5D575: MemLdRfVar from_stack_1.global_60
  loc_C5D578: LdPrVar
  loc_C5D57A: LateMemCall
  loc_C5D580: LitVarStr var_94, "  <tr>"
  loc_C5D585: PopAdLdVar
  loc_C5D586: FLdPr Me
  loc_C5D589: MemLdRfVar from_stack_1.global_60
  loc_C5D58C: LdPrVar
  loc_C5D58E: LateMemCall
  loc_C5D594: LitVarStr var_94, "    <th colspan=""3"" align=""center"" valign=""middle""><hr></th>"
  loc_C5D599: PopAdLdVar
  loc_C5D59A: FLdPr Me
  loc_C5D59D: MemLdRfVar from_stack_1.global_60
  loc_C5D5A0: LdPrVar
  loc_C5D5A2: LateMemCall
  loc_C5D5A8: LitVarStr var_94, "  </tr>"
  loc_C5D5AD: PopAdLdVar
  loc_C5D5AE: FLdPr Me
  loc_C5D5B1: MemLdRfVar from_stack_1.global_60
  loc_C5D5B4: LdPrVar
  loc_C5D5B6: LateMemCall
  loc_C5D5BC: LitVarStr var_94, "  <tr valign=""top"" class=""Normal"">"
  loc_C5D5C1: PopAdLdVar
  loc_C5D5C2: FLdPr Me
  loc_C5D5C5: MemLdRfVar from_stack_1.global_60
  loc_C5D5C8: LdPrVar
  loc_C5D5CA: LateMemCall
  loc_C5D5D0: LitStr "    <td align=""left"" valign=""top""><strong>Desde: </strong>"
  loc_C5D5D3: FLdPr Me
  loc_C5D5D6: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_C5D5D9: FStAdFunc var_D0
  loc_C5D5DC: FLdPr var_D0
  loc_C5D5DF: LateIdLdVar var_BC DispID_15 0
  loc_C5D5E6: CStrVarTmp
  loc_C5D5E7: FStStrNoPop var_A8
  loc_C5D5EA: ConcatStr
  loc_C5D5EB: FStStrNoPop var_AC
  loc_C5D5EE: LitStr "<br>"
  loc_C5D5F1: ConcatStr
  loc_C5D5F2: CVarStr var_E0
  loc_C5D5F5: PopAdLdVar
  loc_C5D5F6: FLdPr Me
  loc_C5D5F9: MemLdRfVar from_stack_1.global_60
  loc_C5D5FC: LdPrVar
  loc_C5D5FE: LateMemCall
  loc_C5D604: FFreeStr var_A8 = ""
  loc_C5D60B: FFree1Ad var_D0
  loc_C5D60E: FFreeVar var_BC = ""
  loc_C5D615: LitStr "                                      <strong>Hasta: </strong>"
  loc_C5D618: FLdPr Me
  loc_C5D61B: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_C5D61E: FStAdFunc var_D0
  loc_C5D621: FLdPr var_D0
  loc_C5D624: LateIdLdVar var_BC DispID_15 0
  loc_C5D62B: CStrVarTmp
  loc_C5D62C: FStStrNoPop var_A8
  loc_C5D62F: ConcatStr
  loc_C5D630: FStStrNoPop var_AC
  loc_C5D633: LitStr "<br></td>"
  loc_C5D636: ConcatStr
  loc_C5D637: CVarStr var_E0
  loc_C5D63A: PopAdLdVar
  loc_C5D63B: FLdPr Me
  loc_C5D63E: MemLdRfVar from_stack_1.global_60
  loc_C5D641: LdPrVar
  loc_C5D643: LateMemCall
  loc_C5D649: FFreeStr var_A8 = ""
  loc_C5D650: FFree1Ad var_D0
  loc_C5D653: FFreeVar var_BC = ""
  loc_C5D65A: LitVarStr var_94, "    <td align=""left"" valign=""top"">"
  loc_C5D65F: PopAdLdVar
  loc_C5D660: FLdPr Me
  loc_C5D663: MemLdRfVar from_stack_1.global_60
  loc_C5D666: LdPrVar
  loc_C5D668: LateMemCall
  loc_C5D66E: FLdPr Me
  loc_C5D671: VCallAd Control_ID_CodiEnreDesdeMsk
  loc_C5D674: FStAdFunc var_D0
  loc_C5D677: FLdPr var_D0
  loc_C5D67A: LateIdLdVar var_BC DispID_0 0
  loc_C5D681: CStrVarTmp
  loc_C5D682: FStStrNoPop var_A8
  loc_C5D685: LitStr vbNullString
  loc_C5D688: NeStr
  loc_C5D68A: FLdPr Me
  loc_C5D68D: VCallAd Control_ID_CodiEnreHastaMsk
  loc_C5D690: FStAdFunc var_E4
  loc_C5D693: FLdPr var_E4
  loc_C5D696: LateIdLdVar var_E0 DispID_0 0
  loc_C5D69D: CStrVarTmp
  loc_C5D69E: FStStrNoPop var_AC
  loc_C5D6A1: LitStr vbNullString
  loc_C5D6A4: NeStr
  loc_C5D6A6: OrI4
  loc_C5D6A7: FFreeStr var_A8 = ""
  loc_C5D6AE: FFreeAd var_D0 = ""
  loc_C5D6B5: FFreeVar var_BC = ""
  loc_C5D6BC: BranchF loc_C5D846
  loc_C5D6BF: FLdPr Me
  loc_C5D6C2: VCallAd Control_ID_CodiEnreDesdeMsk
  loc_C5D6C5: FStAdFunc var_D0
  loc_C5D6C8: FLdPr var_D0
  loc_C5D6CB: LateIdLdVar var_BC DispID_0 0
  loc_C5D6D2: PopAd
  loc_C5D6D4: FLdPr Me
  loc_C5D6D7: VCallAd Control_ID_CodiEnreDesdeMsk
  loc_C5D6DA: FStAdFunc var_E4
  loc_C5D6DD: FLdPr var_E4
  loc_C5D6E0: LateIdLdVar var_E0 DispID_0 0
  loc_C5D6E7: PopAd
  loc_C5D6E9: FLdRfVar var_C8
  loc_C5D6EC: FLdPr Me
  loc_C5D6EF: VCallAd Control_ID_DetaEnreDesdeLbl
  loc_C5D6F2: FStAdFunc var_E8
  loc_C5D6F5: FLdPr var_E8
  loc_C5D6F8:  = Me.Caption
  loc_C5D6FD: LitVarStr var_12C, "                               "
  loc_C5D702: LitVarStr var_A4, vbNullString
  loc_C5D707: FStVarCopyObj var_10C
  loc_C5D70A: FLdRfVar var_10C
  loc_C5D70D: LitStr "<strong>Desde Ente Recaudador: </strong>"
  loc_C5D710: FLdRfVar var_E0
  loc_C5D713: CStrVarTmp
  loc_C5D714: FStStrNoPop var_AC
  loc_C5D717: ConcatStr
  loc_C5D718: FStStrNoPop var_C4
  loc_C5D71B: LitStr " - "
  loc_C5D71E: ConcatStr
  loc_C5D71F: FStStrNoPop var_CC
  loc_C5D722: ILdRf var_C8
  loc_C5D725: ConcatStr
  loc_C5D726: FStStrNoPop var_EC
  loc_C5D729: LitStr "<br>"
  loc_C5D72C: ConcatStr
  loc_C5D72D: CVarStr var_FC
  loc_C5D730: FLdRfVar var_BC
  loc_C5D733: CStrVarTmp
  loc_C5D734: FStStrNoPop var_A8
  loc_C5D737: LitStr vbNullString
  loc_C5D73A: NeStr
  loc_C5D73C: CVarBoolI2 var_94
  loc_C5D740: FLdRfVar var_11C
  loc_C5D743: ImpAdCallFPR4  = IIf(, , )
  loc_C5D748: FLdRfVar var_11C
  loc_C5D74B: ConcatVar var_13C
  loc_C5D74F: PopAdLdVar
  loc_C5D750: FLdPr Me
  loc_C5D753: MemLdRfVar from_stack_1.global_60
  loc_C5D756: LdPrVar
  loc_C5D758: LateMemCall
  loc_C5D75E: FFreeStr var_A8 = "": var_AC = "": var_C4 = "": var_CC = "": var_C8 = ""
  loc_C5D76D: FFreeAd var_D0 = "": var_E4 = ""
  loc_C5D776: FFreeVar var_BC = "": var_E0 = "": var_94 = "": var_FC = "": var_10C = "": var_11C = ""
  loc_C5D787: FLdPr Me
  loc_C5D78A: VCallAd Control_ID_CodiEnreHastaMsk
  loc_C5D78D: FStAdFunc var_D0
  loc_C5D790: FLdPr var_D0
  loc_C5D793: LateIdLdVar var_BC DispID_0 0
  loc_C5D79A: PopAd
  loc_C5D79C: FLdPr Me
  loc_C5D79F: VCallAd Control_ID_CodiEnreHastaMsk
  loc_C5D7A2: FStAdFunc var_E4
  loc_C5D7A5: FLdPr var_E4
  loc_C5D7A8: LateIdLdVar var_E0 DispID_0 0
  loc_C5D7AF: PopAd
  loc_C5D7B1: FLdRfVar var_C8
  loc_C5D7B4: FLdPr Me
  loc_C5D7B7: VCallAd Control_ID_DetaEnreDesdeLbl
  loc_C5D7BA: FStAdFunc var_E8
  loc_C5D7BD: FLdPr var_E8
  loc_C5D7C0:  = Me.Caption
  loc_C5D7C5: LitVarStr var_12C, "                               "
  loc_C5D7CA: LitVarStr var_A4, "&nbsp;"
  loc_C5D7CF: FStVarCopyObj var_10C
  loc_C5D7D2: FLdRfVar var_10C
  loc_C5D7D5: LitStr "<strong>Hasta Ente Recaudador: </strong>"
  loc_C5D7D8: FLdRfVar var_E0
  loc_C5D7DB: CStrVarTmp
  loc_C5D7DC: FStStrNoPop var_AC
  loc_C5D7DF: ConcatStr
  loc_C5D7E0: FStStrNoPop var_C4
  loc_C5D7E3: LitStr " - "
  loc_C5D7E6: ConcatStr
  loc_C5D7E7: FStStrNoPop var_CC
  loc_C5D7EA: ILdRf var_C8
  loc_C5D7ED: ConcatStr
  loc_C5D7EE: CVarStr var_FC
  loc_C5D7F1: FLdRfVar var_BC
  loc_C5D7F4: CStrVarTmp
  loc_C5D7F5: FStStrNoPop var_A8
  loc_C5D7F8: LitStr vbNullString
  loc_C5D7FB: NeStr
  loc_C5D7FD: CVarBoolI2 var_94
  loc_C5D801: FLdRfVar var_11C
  loc_C5D804: ImpAdCallFPR4  = IIf(, , )
  loc_C5D809: FLdRfVar var_11C
  loc_C5D80C: ConcatVar var_13C
  loc_C5D810: PopAdLdVar
  loc_C5D811: FLdPr Me
  loc_C5D814: MemLdRfVar from_stack_1.global_60
  loc_C5D817: LdPrVar
  loc_C5D819: LateMemCall
  loc_C5D81F: FFreeStr var_A8 = "": var_AC = "": var_C4 = "": var_CC = ""
  loc_C5D82C: FFreeAd var_D0 = "": var_E4 = ""
  loc_C5D835: FFreeVar var_BC = "": var_E0 = "": var_94 = "": var_FC = "": var_10C = "": var_11C = ""
  loc_C5D846: LitVarStr var_94, " </td>"
  loc_C5D84B: PopAdLdVar
  loc_C5D84C: FLdPr Me
  loc_C5D84F: MemLdRfVar from_stack_1.global_60
  loc_C5D852: LdPrVar
  loc_C5D854: LateMemCall
  loc_C5D85A: LitVarStr var_94, "    <td align=""left"" valign=""top"">"
  loc_C5D85F: PopAdLdVar
  loc_C5D860: FLdPr Me
  loc_C5D863: MemLdRfVar from_stack_1.global_60
  loc_C5D866: LdPrVar
  loc_C5D868: LateMemCall
  loc_C5D86E: FLdPr Me
  loc_C5D871: VCallAd Control_ID_NumerodeGrupoMsk
  loc_C5D874: FStAdFunc var_D0
  loc_C5D877: FLdPr var_D0
  loc_C5D87A: LateIdLdVar var_BC DispID_22 0
  loc_C5D881: CStrVarTmp
  loc_C5D882: FStStrNoPop var_A8
  loc_C5D885: LitStr vbNullString
  loc_C5D888: NeStr
  loc_C5D88A: FFree1Str var_A8
  loc_C5D88D: FFree1Ad var_D0
  loc_C5D890: FFree1Var var_BC = ""
  loc_C5D893: BranchF loc_C5D9A7
  loc_C5D896: FLdPr Me
  loc_C5D899: VCallAd Control_ID_NumerodeGrupoMsk
  loc_C5D89C: FStAdFunc var_D0
  loc_C5D89F: FLdPr var_D0
  loc_C5D8A2: LateIdLdVar var_BC DispID_22 0
  loc_C5D8A9: PopAd
  loc_C5D8AB: FLdPr Me
  loc_C5D8AE: VCallAd Control_ID_NumerodeGrupoMsk
  loc_C5D8B1: FStAdFunc var_E4
  loc_C5D8B4: FLdPr var_E4
  loc_C5D8B7: LateIdLdVar var_E0 DispID_22 0
  loc_C5D8BE: PopAd
  loc_C5D8C0: LitVarStr var_12C, "                               "
  loc_C5D8C5: LitVarStr var_A4, vbNullString
  loc_C5D8CA: FStVarCopyObj var_10C
  loc_C5D8CD: FLdRfVar var_10C
  loc_C5D8D0: LitStr "<strong>Numero de Grupo: </strong>"
  loc_C5D8D3: FLdRfVar var_E0
  loc_C5D8D6: CStrVarTmp
  loc_C5D8D7: FStStrNoPop var_AC
  loc_C5D8DA: ConcatStr
  loc_C5D8DB: FStStrNoPop var_C4
  loc_C5D8DE: LitStr "<br>"
  loc_C5D8E1: ConcatStr
  loc_C5D8E2: CVarStr var_FC
  loc_C5D8E5: FLdRfVar var_BC
  loc_C5D8E8: CStrVarTmp
  loc_C5D8E9: FStStrNoPop var_A8
  loc_C5D8EC: LitStr vbNullString
  loc_C5D8EF: NeStr
  loc_C5D8F1: CVarBoolI2 var_94
  loc_C5D8F5: FLdRfVar var_11C
  loc_C5D8F8: ImpAdCallFPR4  = IIf(, , )
  loc_C5D8FD: FLdRfVar var_11C
  loc_C5D900: ConcatVar var_13C
  loc_C5D904: PopAdLdVar
  loc_C5D905: FLdPr Me
  loc_C5D908: MemLdRfVar from_stack_1.global_60
  loc_C5D90B: LdPrVar
  loc_C5D90D: LateMemCall
  loc_C5D913: FFreeStr var_A8 = "": var_AC = ""
  loc_C5D91C: FFreeAd var_D0 = ""
  loc_C5D923: FFreeVar var_BC = "": var_E0 = "": var_94 = "": var_FC = "": var_10C = "": var_11C = ""
  loc_C5D934: FLdPr Me
  loc_C5D937: VCallAd Control_ID_NumerodeGrupoMsk
  loc_C5D93A: FStAdFunc var_D0
  loc_C5D93D: FLdPr var_D0
  loc_C5D940: LateIdLdVar var_BC DispID_22 0
  loc_C5D947: PopAd
  loc_C5D949: LitVarStr var_14C, "                               "
  loc_C5D94E: LitVarStr var_12C, "&nbsp;"
  loc_C5D953: FStVarCopyObj var_FC
  loc_C5D956: FLdRfVar var_FC
  loc_C5D959: LitVarStr var_A4, "&nbsp;"
  loc_C5D95E: FStVarCopyObj var_E0
  loc_C5D961: FLdRfVar var_E0
  loc_C5D964: FLdRfVar var_BC
  loc_C5D967: CStrVarTmp
  loc_C5D968: FStStrNoPop var_A8
  loc_C5D96B: LitStr vbNullString
  loc_C5D96E: NeStr
  loc_C5D970: CVarBoolI2 var_94
  loc_C5D974: FLdRfVar var_10C
  loc_C5D977: ImpAdCallFPR4  = IIf(, , )
  loc_C5D97C: FLdRfVar var_10C
  loc_C5D97F: ConcatVar var_11C
  loc_C5D983: PopAdLdVar
  loc_C5D984: FLdPr Me
  loc_C5D987: MemLdRfVar from_stack_1.global_60
  loc_C5D98A: LdPrVar
  loc_C5D98C: LateMemCall
  loc_C5D992: FFree1Str var_A8
  loc_C5D995: FFree1Ad var_D0
  loc_C5D998: FFreeVar var_BC = "": var_94 = "": var_E0 = "": var_FC = "": var_10C = ""
  loc_C5D9A7: LitVarStr var_94, " </td>"
  loc_C5D9AC: PopAdLdVar
  loc_C5D9AD: FLdPr Me
  loc_C5D9B0: MemLdRfVar from_stack_1.global_60
  loc_C5D9B3: LdPrVar
  loc_C5D9B5: LateMemCall
  loc_C5D9BB: LitVarStr var_94, "    <td align=""left"" valign=""top"">"
  loc_C5D9C0: PopAdLdVar
  loc_C5D9C1: FLdPr Me
  loc_C5D9C4: MemLdRfVar from_stack_1.global_60
  loc_C5D9C7: LdPrVar
  loc_C5D9C9: LateMemCall
  loc_C5D9CF: FLdPr Me
  loc_C5D9D2: VCallAd Control_ID_CodiConcDesdeMsk
  loc_C5D9D5: FStAdFunc var_D0
  loc_C5D9D8: FLdPr var_D0
  loc_C5D9DB: LateIdLdVar var_BC DispID_22 0
  loc_C5D9E2: CStrVarTmp
  loc_C5D9E3: FStStrNoPop var_A8
  loc_C5D9E6: LitStr vbNullString
  loc_C5D9E9: NeStr
  loc_C5D9EB: FLdPr Me
  loc_C5D9EE: VCallAd Control_ID_CodiConcHastaMsk
  loc_C5D9F1: FStAdFunc var_E4
  loc_C5D9F4: FLdPr var_E4
  loc_C5D9F7: LateIdLdVar var_E0 DispID_22 0
  loc_C5D9FE: CStrVarTmp
  loc_C5D9FF: FStStrNoPop var_AC
  loc_C5DA02: LitStr vbNullString
  loc_C5DA05: NeStr
  loc_C5DA07: OrI4
  loc_C5DA08: FFreeStr var_A8 = ""
  loc_C5DA0F: FFreeAd var_D0 = ""
  loc_C5DA16: FFreeVar var_BC = ""
  loc_C5DA1D: BranchF loc_C5DB53
  loc_C5DA20: FLdPr Me
  loc_C5DA23: VCallAd Control_ID_CodiConcDesdeMsk
  loc_C5DA26: FStAdFunc var_D0
  loc_C5DA29: FLdPr var_D0
  loc_C5DA2C: LateIdLdVar var_BC DispID_22 0
  loc_C5DA33: PopAd
  loc_C5DA35: FLdPr Me
  loc_C5DA38: VCallAd Control_ID_CodiConcDesdeMsk
  loc_C5DA3B: FStAdFunc var_E4
  loc_C5DA3E: FLdPr var_E4
  loc_C5DA41: LateIdLdVar var_E0 DispID_22 0
  loc_C5DA48: PopAd
  loc_C5DA4A: LitVarStr var_12C, "                               "
  loc_C5DA4F: LitVarStr var_A4, vbNullString
  loc_C5DA54: FStVarCopyObj var_10C
  loc_C5DA57: FLdRfVar var_10C
  loc_C5DA5A: LitStr "<strong>Desde Concepto: </strong>"
  loc_C5DA5D: FLdRfVar var_E0
  loc_C5DA60: CStrVarTmp
  loc_C5DA61: FStStrNoPop var_AC
  loc_C5DA64: ConcatStr
  loc_C5DA65: FStStrNoPop var_C4
  loc_C5DA68: LitStr "<br>"
  loc_C5DA6B: ConcatStr
  loc_C5DA6C: CVarStr var_FC
  loc_C5DA6F: FLdRfVar var_BC
  loc_C5DA72: CStrVarTmp
  loc_C5DA73: FStStrNoPop var_A8
  loc_C5DA76: LitStr vbNullString
  loc_C5DA79: NeStr
  loc_C5DA7B: CVarBoolI2 var_94
  loc_C5DA7F: FLdRfVar var_11C
  loc_C5DA82: ImpAdCallFPR4  = IIf(, , )
  loc_C5DA87: FLdRfVar var_11C
  loc_C5DA8A: ConcatVar var_13C
  loc_C5DA8E: PopAdLdVar
  loc_C5DA8F: FLdPr Me
  loc_C5DA92: MemLdRfVar from_stack_1.global_60
  loc_C5DA95: LdPrVar
  loc_C5DA97: LateMemCall
  loc_C5DA9D: FFreeStr var_A8 = "": var_AC = ""
  loc_C5DAA6: FFreeAd var_D0 = ""
  loc_C5DAAD: FFreeVar var_BC = "": var_E0 = "": var_94 = "": var_FC = "": var_10C = "": var_11C = ""
  loc_C5DABE: FLdPr Me
  loc_C5DAC1: VCallAd Control_ID_CodiConcHastaMsk
  loc_C5DAC4: FStAdFunc var_D0
  loc_C5DAC7: FLdPr var_D0
  loc_C5DACA: LateIdLdVar var_BC DispID_22 0
  loc_C5DAD1: PopAd
  loc_C5DAD3: FLdPr Me
  loc_C5DAD6: VCallAd Control_ID_CodiConcHastaMsk
  loc_C5DAD9: FStAdFunc var_E4
  loc_C5DADC: FLdPr var_E4
  loc_C5DADF: LateIdLdVar var_E0 DispID_22 0
  loc_C5DAE6: PopAd
  loc_C5DAE8: LitVarStr var_12C, "                               "
  loc_C5DAED: LitVarStr var_A4, "&nbsp;"
  loc_C5DAF2: FStVarCopyObj var_10C
  loc_C5DAF5: FLdRfVar var_10C
  loc_C5DAF8: LitStr "<strong>Hasta Concepto: </strong>"
  loc_C5DAFB: FLdRfVar var_E0
  loc_C5DAFE: CStrVarTmp
  loc_C5DAFF: FStStrNoPop var_AC
  loc_C5DB02: ConcatStr
  loc_C5DB03: CVarStr var_FC
  loc_C5DB06: FLdRfVar var_BC
  loc_C5DB09: CStrVarTmp
  loc_C5DB0A: FStStrNoPop var_A8
  loc_C5DB0D: LitStr vbNullString
  loc_C5DB10: NeStr
  loc_C5DB12: CVarBoolI2 var_94
  loc_C5DB16: FLdRfVar var_11C
  loc_C5DB19: ImpAdCallFPR4  = IIf(, , )
  loc_C5DB1E: FLdRfVar var_11C
  loc_C5DB21: ConcatVar var_13C
  loc_C5DB25: PopAdLdVar
  loc_C5DB26: FLdPr Me
  loc_C5DB29: MemLdRfVar from_stack_1.global_60
  loc_C5DB2C: LdPrVar
  loc_C5DB2E: LateMemCall
  loc_C5DB34: FFreeStr var_A8 = ""
  loc_C5DB3B: FFreeAd var_D0 = ""
  loc_C5DB42: FFreeVar var_BC = "": var_E0 = "": var_94 = "": var_FC = "": var_10C = "": var_11C = ""
  loc_C5DB53: LitVarStr var_94, " </td>"
  loc_C5DB58: PopAdLdVar
  loc_C5DB59: FLdPr Me
  loc_C5DB5C: MemLdRfVar from_stack_1.global_60
  loc_C5DB5F: LdPrVar
  loc_C5DB61: LateMemCall
  loc_C5DB67: LitVarStr var_94, "  </tr>"
  loc_C5DB6C: PopAdLdVar
  loc_C5DB6D: FLdPr Me
  loc_C5DB70: MemLdRfVar from_stack_1.global_60
  loc_C5DB73: LdPrVar
  loc_C5DB75: LateMemCall
  loc_C5DB7B: LitVarStr var_94, "</table>"
  loc_C5DB80: PopAdLdVar
  loc_C5DB81: FLdPr Me
  loc_C5DB84: MemLdRfVar from_stack_1.global_60
  loc_C5DB87: LdPrVar
  loc_C5DB89: LateMemCall
  loc_C5DB8F: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_C5DB94: PopAdLdVar
  loc_C5DB95: FLdPr Me
  loc_C5DB98: MemLdRfVar from_stack_1.global_60
  loc_C5DB9B: LdPrVar
  loc_C5DB9D: LateMemCall
  loc_C5DBA3: LitVarStr var_94, "  <thead>"
  loc_C5DBA8: PopAdLdVar
  loc_C5DBA9: FLdPr Me
  loc_C5DBAC: MemLdRfVar from_stack_1.global_60
  loc_C5DBAF: LdPrVar
  loc_C5DBB1: LateMemCall
  loc_C5DBB7: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_C5DBBC: PopAdLdVar
  loc_C5DBBD: FLdPr Me
  loc_C5DBC0: MemLdRfVar from_stack_1.global_60
  loc_C5DBC3: LdPrVar
  loc_C5DBC5: LateMemCall
  loc_C5DBCB: FLdRfVar var_BE
  loc_C5DBCE: FLdPr Me
  loc_C5DBD1: VCallAd Control_ID_BoletoOpt
  loc_C5DBD4: FStAdFunc var_D0
  loc_C5DBD7: FLdPr var_D0
  loc_C5DBDA:  = Me.Value
  loc_C5DBDF: FLdRfVar var_15E
  loc_C5DBE2: FLdPr Me
  loc_C5DBE5: VCallAd Control_ID_ConceptoOpt
  loc_C5DBE8: FStAdFunc var_E4
  loc_C5DBEB: FLdPr var_E4
  loc_C5DBEE:  = Me.Value
  loc_C5DBF3: LitVarStr var_170, "    <th colspan="""
  loc_C5DBF8: LitVarI2 var_E0, 1
  loc_C5DBFD: LitVarI2 var_BC, 2
  loc_C5DC02: FLdI2 var_15E
  loc_C5DC05: CVarBoolI2 var_94
  loc_C5DC09: FLdRfVar var_FC
  loc_C5DC0C: ImpAdCallFPR4  = IIf(, , )
  loc_C5DC11: FLdRfVar var_FC
  loc_C5DC14: LitVarI2 var_10C, 9
  loc_C5DC19: FLdI2 var_BE
  loc_C5DC1C: CVarBoolI2 var_14C
  loc_C5DC20: FLdRfVar var_11C
  loc_C5DC23: ImpAdCallFPR4  = IIf(, , )
  loc_C5DC28: FLdRfVar var_11C
  loc_C5DC2B: ConcatVar var_13C
  loc_C5DC2F: LitVarStr var_180, """>Ente Recaudador</th>"
  loc_C5DC34: ConcatVar var_190
  loc_C5DC38: PopAdLdVar
  loc_C5DC39: FLdPr Me
  loc_C5DC3C: MemLdRfVar from_stack_1.global_60
  loc_C5DC3F: LdPrVar
  loc_C5DC41: LateMemCall
  loc_C5DC47: FFreeAd var_D0 = ""
  loc_C5DC4E: FFreeVar var_94 = "": var_BC = "": var_E0 = "": var_14C = "": var_10C = "": var_FC = "": var_11C = "": var_13C = ""
  loc_C5DC63: FLdRfVar var_BE
  loc_C5DC66: FLdPr Me
  loc_C5DC69: VCallAd Control_ID_EnteOpt
  loc_C5DC6C: FStAdFunc var_D0
  loc_C5DC6F: FLdPr var_D0
  loc_C5DC72:  = Me.Value
  loc_C5DC77: LitVarStr var_14C, "    <th width=""8" & Chr(37) & """ rowspan="""
  loc_C5DC7C: LitVarI2 var_E0, 2
  loc_C5DC81: LitVarI2 var_BC, 1
  loc_C5DC86: FLdI2 var_BE
  loc_C5DC89: CVarBoolI2 var_94
  loc_C5DC8D: FLdRfVar var_FC
  loc_C5DC90: ImpAdCallFPR4  = IIf(, , )
  loc_C5DC95: FLdRfVar var_FC
  loc_C5DC98: ConcatVar var_10C
  loc_C5DC9C: LitVarStr var_15C, """>Importe</th>"
  loc_C5DCA1: ConcatVar var_11C
  loc_C5DCA5: PopAdLdVar
  loc_C5DCA6: FLdPr Me
  loc_C5DCA9: MemLdRfVar from_stack_1.global_60
  loc_C5DCAC: LdPrVar
  loc_C5DCAE: LateMemCall
  loc_C5DCB4: FFree1Ad var_D0
  loc_C5DCB7: FFreeVar var_94 = "": var_BC = "": var_E0 = "": var_FC = "": var_10C = ""
  loc_C5DCC6: LitVarStr var_94, "  </tr>"
  loc_C5DCCB: PopAdLdVar
  loc_C5DCCC: FLdPr Me
  loc_C5DCCF: MemLdRfVar from_stack_1.global_60
  loc_C5DCD2: LdPrVar
  loc_C5DCD4: LateMemCall
  loc_C5DCDA: FLdRfVar var_BE
  loc_C5DCDD: FLdPr Me
  loc_C5DCE0: VCallAd Control_ID_EnteOpt
  loc_C5DCE3: FStAdFunc var_D0
  loc_C5DCE6: FLdPr var_D0
  loc_C5DCE9:  = Me.Value
  loc_C5DCEE: FLdI2 var_BE
  loc_C5DCF1: NotI4
  loc_C5DCF2: FFree1Ad var_D0
  loc_C5DCF5: BranchF loc_C5DDE6
  loc_C5DCF8: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_C5DCFD: PopAdLdVar
  loc_C5DCFE: FLdPr Me
  loc_C5DD01: MemLdRfVar from_stack_1.global_60
  loc_C5DD04: LdPrVar
  loc_C5DD06: LateMemCall
  loc_C5DD0C: FLdRfVar var_BE
  loc_C5DD0F: FLdPr Me
  loc_C5DD12: VCallAd Control_ID_BoletoOpt
  loc_C5DD15: FStAdFunc var_D0
  loc_C5DD18: FLdPr var_D0
  loc_C5DD1B:  = Me.Value
  loc_C5DD20: LitVarStr var_14C, "    <th colspan="""
  loc_C5DD25: LitVarI2 var_E0, 1
  loc_C5DD2A: LitVarI2 var_BC, 5
  loc_C5DD2F: FLdI2 var_BE
  loc_C5DD32: CVarBoolI2 var_94
  loc_C5DD36: FLdRfVar var_FC
  loc_C5DD39: ImpAdCallFPR4  = IIf(, , )
  loc_C5DD3E: FLdRfVar var_FC
  loc_C5DD41: ConcatVar var_10C
  loc_C5DD45: LitVarStr var_15C, """><em>Concepto</em></th>"
  loc_C5DD4A: ConcatVar var_11C
  loc_C5DD4E: PopAdLdVar
  loc_C5DD4F: FLdPr Me
  loc_C5DD52: MemLdRfVar from_stack_1.global_60
  loc_C5DD55: LdPrVar
  loc_C5DD57: LateMemCall
  loc_C5DD5D: FFree1Ad var_D0
  loc_C5DD60: FFreeVar var_94 = "": var_BC = "": var_E0 = "": var_FC = "": var_10C = ""
  loc_C5DD6F: FLdRfVar var_BE
  loc_C5DD72: FLdPr Me
  loc_C5DD75: VCallAd Control_ID_BoletoOpt
  loc_C5DD78: FStAdFunc var_D0
  loc_C5DD7B: FLdPr var_D0
  loc_C5DD7E:  = Me.Value
  loc_C5DD83: LitVarStr var_14C, "    <th colspan="""
  loc_C5DD88: LitVarI2 var_E0, 1
  loc_C5DD8D: LitVarI2 var_BC, 4
  loc_C5DD92: FLdI2 var_BE
  loc_C5DD95: CVarBoolI2 var_94
  loc_C5DD99: FLdRfVar var_FC
  loc_C5DD9C: ImpAdCallFPR4  = IIf(, , )
  loc_C5DDA1: FLdRfVar var_FC
  loc_C5DDA4: ConcatVar var_10C
  loc_C5DDA8: LitVarStr var_15C, """><em>Cuenta Contable</em></th>"
  loc_C5DDAD: ConcatVar var_11C
  loc_C5DDB1: PopAdLdVar
  loc_C5DDB2: FLdPr Me
  loc_C5DDB5: MemLdRfVar from_stack_1.global_60
  loc_C5DDB8: LdPrVar
  loc_C5DDBA: LateMemCall
  loc_C5DDC0: FFree1Ad var_D0
  loc_C5DDC3: FFreeVar var_94 = "": var_BC = "": var_E0 = "": var_FC = "": var_10C = ""
  loc_C5DDD2: LitVarStr var_94, "  </tr>"
  loc_C5DDD7: PopAdLdVar
  loc_C5DDD8: FLdPr Me
  loc_C5DDDB: MemLdRfVar from_stack_1.global_60
  loc_C5DDDE: LdPrVar
  loc_C5DDE0: LateMemCall
  loc_C5DDE6: FLdRfVar var_BE
  loc_C5DDE9: FLdPr Me
  loc_C5DDEC: VCallAd Control_ID_BoletoOpt
  loc_C5DDEF: FStAdFunc var_D0
  loc_C5DDF2: FLdPr var_D0
  loc_C5DDF5:  = Me.Value
  loc_C5DDFA: FLdI2 var_BE
  loc_C5DDFD: FFree1Ad var_D0
  loc_C5DE00: BranchF loc_C5DEF3
  loc_C5DE03: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_C5DE08: PopAdLdVar
  loc_C5DE09: FLdPr Me
  loc_C5DE0C: MemLdRfVar from_stack_1.global_60
  loc_C5DE0F: LdPrVar
  loc_C5DE11: LateMemCall
  loc_C5DE17: LitVarStr var_94, "    <th>Fecha</th>"
  loc_C5DE1C: PopAdLdVar
  loc_C5DE1D: FLdPr Me
  loc_C5DE20: MemLdRfVar from_stack_1.global_60
  loc_C5DE23: LdPrVar
  loc_C5DE25: LateMemCall
  loc_C5DE2B: LitVarStr var_94, "    <th>Ofic.</th>"
  loc_C5DE30: PopAdLdVar
  loc_C5DE31: FLdPr Me
  loc_C5DE34: MemLdRfVar from_stack_1.global_60
  loc_C5DE37: LdPrVar
  loc_C5DE39: LateMemCall
  loc_C5DE3F: LitVarStr var_94, "    <th>Cuenta</th>"
  loc_C5DE44: PopAdLdVar
  loc_C5DE45: FLdPr Me
  loc_C5DE48: MemLdRfVar from_stack_1.global_60
  loc_C5DE4B: LdPrVar
  loc_C5DE4D: LateMemCall
  loc_C5DE53: LitVarStr var_94, "    <th>Boleto</th>"
  loc_C5DE58: PopAdLdVar
  loc_C5DE59: FLdPr Me
  loc_C5DE5C: MemLdRfVar from_stack_1.global_60
  loc_C5DE5F: LdPrVar
  loc_C5DE61: LateMemCall
  loc_C5DE67: LitVarStr var_94, "    <th>Apellido y Nombre</th>"
  loc_C5DE6C: PopAdLdVar
  loc_C5DE6D: FLdPr Me
  loc_C5DE70: MemLdRfVar from_stack_1.global_60
  loc_C5DE73: LdPrVar
  loc_C5DE75: LateMemCall
  loc_C5DE7B: LitVarStr var_94, "    <th>Exped.</th>"
  loc_C5DE80: PopAdLdVar
  loc_C5DE81: FLdPr Me
  loc_C5DE84: MemLdRfVar from_stack_1.global_60
  loc_C5DE87: LdPrVar
  loc_C5DE89: LateMemCall
  loc_C5DE8F: LitVarStr var_94, "    <th>Capital</th>"
  loc_C5DE94: PopAdLdVar
  loc_C5DE95: FLdPr Me
  loc_C5DE98: MemLdRfVar from_stack_1.global_60
  loc_C5DE9B: LdPrVar
  loc_C5DE9D: LateMemCall
  loc_C5DEA3: LitVarStr var_94, "    <th>Desc. de<br>capital</th>"
  loc_C5DEA8: PopAdLdVar
  loc_C5DEA9: FLdPr Me
  loc_C5DEAC: MemLdRfVar from_stack_1.global_60
  loc_C5DEAF: LdPrVar
  loc_C5DEB1: LateMemCall
  loc_C5DEB7: LitVarStr var_94, "    <th>Exen.</th>"
  loc_C5DEBC: PopAdLdVar
  loc_C5DEBD: FLdPr Me
  loc_C5DEC0: MemLdRfVar from_stack_1.global_60
  loc_C5DEC3: LdPrVar
  loc_C5DEC5: LateMemCall
  loc_C5DECB: LitVarStr var_94, "    <th>Total</th>"
  loc_C5DED0: PopAdLdVar
  loc_C5DED1: FLdPr Me
  loc_C5DED4: MemLdRfVar from_stack_1.global_60
  loc_C5DED7: LdPrVar
  loc_C5DED9: LateMemCall
  loc_C5DEDF: LitVarStr var_94, "  </tr>"
  loc_C5DEE4: PopAdLdVar
  loc_C5DEE5: FLdPr Me
  loc_C5DEE8: MemLdRfVar from_stack_1.global_60
  loc_C5DEEB: LdPrVar
  loc_C5DEED: LateMemCall
  loc_C5DEF3: LitVarStr var_94, "  </thead>"
  loc_C5DEF8: PopAdLdVar
  loc_C5DEF9: FLdPr Me
  loc_C5DEFC: MemLdRfVar from_stack_1.global_60
  loc_C5DEFF: LdPrVar
  loc_C5DF01: LateMemCall
  loc_C5DF07: ExitProcHresult
End Function

Private Function Proc_221_40_A0F858() 'A0F858
  'Data Table: 506598
  loc_A0F818: LitVarStr var_94, "</table>"
  loc_A0F81D: PopAdLdVar
  loc_A0F81E: FLdPr Me
  loc_A0F821: MemLdRfVar from_stack_1.global_60
  loc_A0F824: LdPrVar
  loc_A0F826: LateMemCall
  loc_A0F82C: LitVarStr var_94, "</body>"
  loc_A0F831: PopAdLdVar
  loc_A0F832: FLdPr Me
  loc_A0F835: MemLdRfVar from_stack_1.global_60
  loc_A0F838: LdPrVar
  loc_A0F83A: LateMemCall
  loc_A0F840: LitVarStr var_94, "</html>"
  loc_A0F845: PopAdLdVar
  loc_A0F846: FLdPr Me
  loc_A0F849: MemLdRfVar from_stack_1.global_60
  loc_A0F84C: LdPrVar
  loc_A0F84E: LateMemCall
  loc_A0F854: ExitProcHresult
End Function
