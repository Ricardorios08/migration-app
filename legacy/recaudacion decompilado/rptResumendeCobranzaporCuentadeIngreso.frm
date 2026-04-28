VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptResumendeCobranzaporCuentadeIngreso
  Caption = "Resumen de Cobranza por Cuenta de Ingreso"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptResumendeCobranzaporCuentadeIngreso.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 8748
  ClientHeight = 5412
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
    Top = 5160
    Width = 8745
    Height = 255
    TabIndex = 24
    OleObjectBlob = "rptResumendeCobranzaporCuentadeIngreso.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 7560
    Top = 4080
    Width = 855
    Height = 735
    TabIndex = 22
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
    Picture = "rptResumendeCobranzaporCuentadeIngreso.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptResumendeCobranzaporCuentadeIngreso.frx":0B9C
    Left = 8160
    Top = 4320
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 4320
    Top = 3840
    Width = 3132
    Height = 1215
    TabIndex = 19
    Begin VB.CommandButton cmdXLS
      Caption = "&XLS"
      Left = 1680
      Top = 360
      Width = 1335
      Height = 615
      TabIndex = 21
    End
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 615
      TabIndex = 20
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 3840
    Width = 4095
    Height = 1215
    TabIndex = 16
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1920
      Top = 360
      Width = 2055
      Height = 615
      TabIndex = 18
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1695
      Height = 615
      TabIndex = 17
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 8535
    Height = 3735
    TabIndex = 0
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
      Caption = "Agrupación"
      Left = 120
      Top = 2760
      Width = 8175
      Height = 855
      TabIndex = 13
      Begin VB.OptionButton AnaliticoOpt
        Caption = "Analítico"
        Left = 4200
        Top = 360
        Width = 1215
        Height = 300
        TabIndex = 15
      End
      Begin VB.OptionButton SinteticoOpt
        Caption = "Sintético"
        Left = 2040
        Top = 360
        Width = 1335
        Height = 300
        TabIndex = 14
      End
    End
    Begin VB.Frame Frame4
      Caption = "Cuenta de Ingreso"
      Left = 120
      Top = 1560
      Width = 8175
      Height = 1095
      TabIndex = 9
      Begin VB.CommandButton IngrConcCmd
        Left = 1800
        Top = 480
        Width = 450
        Height = 360
        TabIndex = 11
        BeginProperty Font
          Name = "MS Sans Serif"
          Size = 7,8
          Charset = 0
          Weight = 400
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
        Picture = "rptResumendeCobranzaporCuentadeIngreso.frx":0C00
        Style = 1
        CausesValidation = 0   'False
      End
      Begin MSMask.MaskEdBox IngrConcMsk
        Left = 120
        Top = 480
        Width = 1575
        Height = 360
        TabIndex = 10
        OleObjectBlob = "rptResumendeCobranzaporCuentadeIngreso.frx":0CFA
      End
      Begin VB.Label DetaCucoLbl
        Left = 2400
        Top = 480
        Width = 5655
        Height = 375
        TabIndex = 12
        BorderStyle = 1 'Fixed Single
      End
    End
    Begin VB.Frame FechaEmisionFra
      Caption = "Fecha de Envío"
      Left = 120
      Top = 240
      Width = 6375
      Height = 1215
      TabIndex = 1
      Begin VB.CommandButton DesdeFechaCmd
        Left = 2400
        Top = 480
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
        Picture = "rptResumendeCobranzaporCuentadeIngreso.frx":0D96
        Style = 1
        CausesValidation = 0   'False
      End
      Begin VB.CommandButton HastaFechaCmd
        Left = 5760
        Top = 480
        Width = 375
        Height = 375
        TabIndex = 7
        BeginProperty Font
          Name = "MS Sans Serif"
          Size = 7,8
          Charset = 0
          Weight = 400
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
        Picture = "rptResumendeCobranzaporCuentadeIngreso.frx":12D8
        Style = 1
        CausesValidation = 0   'False
      End
      Begin MSMask.MaskEdBox FeenAcpaDesdeMsk
        Left = 960
        Top = 480
        Width = 1335
        Height = 360
        TabIndex = 3
        OleObjectBlob = "rptResumendeCobranzaporCuentadeIngreso.frx":181A
      End
      Begin MSMask.MaskEdBox FeenAcpaHastaMsk
        Left = 4320
        Top = 480
        Width = 1335
        Height = 360
        TabIndex = 6
        OleObjectBlob = "rptResumendeCobranzaporCuentadeIngreso.frx":18CA
      End
      Begin VB.Label Label6
        Caption = "Desde:"
        Left = 120
        Top = 480
        Width = 765
        Height = 300
        TabIndex = 2
        AutoSize = -1  'True
      End
      Begin VB.Label Label5
        Caption = "Hasta:"
        Left = 3540
        Top = 480
        Width = 705
        Height = 300
        TabIndex = 5
        AutoSize = -1  'True
      End
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 6720
      Top = 360
      Width = 1575
      Height = 615
      TabIndex = 8
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 7680
    Top = 4320
    Width = 492
    Height = 252
    TabStop = 0   'False
    TabIndex = 23
    OleObjectBlob = "rptResumendeCobranzaporCuentadeIngreso.frx":197A
  End
End

Attribute VB_Name = "rptResumendeCobranzaporCuentadeIngreso"

Public bLogos As Boolean
Public bGenerado As Boolean

Private Type UDT_1_00562428
  bStruc(44) As Byte ' String fields: 11
End Type

Private Type UDT_2_00567B20
  bStruc(60) As Byte ' String fields: 5
End Type

Private Type UDT_3_00567950
  bStruc(56) As Byte ' String fields: 4
End Type


Private Sub cmdNueva_Click() 'A12144
  'Data Table: 4CC9E0
  loc_A12104: LitI2_Byte 0
  loc_A12106: FLdPr Me
  loc_A12109: MemStI2 bGenerado
  loc_A1210C: LitI2_Byte &HFF
  loc_A1210E: FLdPr Me
  loc_A12111: MemStI2 bLogos
  loc_A12114: LitI2_Byte 0
  loc_A12116: ILdRf Me
  loc_A12119: CastAd
  loc_A1211C: FStAdFunc var_88
  loc_A1211F: FLdRfVar var_88
  loc_A12122: ImpAdCallFPR4 Proc_272_46_B065FC(, )
  loc_A12127: FFree1Ad var_88
  loc_A1212A: Call HabilitarCriterio()
  loc_A1212F: ILdRf Me
  loc_A12132: CastAd
  loc_A12135: FStAdFunc var_88
  loc_A12138: FLdRfVar var_88
  loc_A1213B: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_A12140: FFree1Ad var_88
  loc_A12143: ExitProcHresult
End Sub

Private Sub IngrConcMsk_UnknownEvent_0 '9C6980
  'Data Table: 4CC9E0
  loc_9C696C: FLdPr Me
  loc_9C696F: VCallAd Control_ID_IngrConcMsk
  loc_9C6972: CVarAd
  loc_9C6976: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C697B: FFree1Var var_94 = ""
  loc_9C697E: ExitProcHresult
End Sub

Private Function IngrConcMsk_UnknownEvent_8(arg_C) 'AF7AB4
  'Data Table: 4CC9E0
  loc_AF790C: FLdPr Me
  loc_AF790F: VCallAd Control_ID_IngrConcMsk
  loc_AF7912: FStAdFunc var_88
  loc_AF7915: FLdPr var_88
  loc_AF7918: LateIdLdVar var_98 DispID_22 0
  loc_AF791F: CStrVarTmp
  loc_AF7920: FStStrNoPop var_9C
  loc_AF7923: FnLenStr
  loc_AF7924: FLdPr Me
  loc_AF7927: VCallAd Control_ID_IngrConcMsk
  loc_AF792A: FStAdFunc var_A0
  loc_AF792D: FLdPr var_A0
  loc_AF7930: LateIdLdVar var_B0 DispID_13 0
  loc_AF7937: CI2Var
  loc_AF7938: CI4UI1
  loc_AF7939: EqI4
  loc_AF793A: FFree1Str var_9C
  loc_AF793D: FFreeAd var_88 = ""
  loc_AF7944: FFreeVar var_98 = ""
  loc_AF794B: BranchF loc_AF7A3E
  loc_AF794E: FLdPr Me
  loc_AF7951: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_AF7954: FStAdFunc var_88
  loc_AF7957: FLdPr var_88
  loc_AF795A: LateIdLdVar var_98 DispID_15 0
  loc_AF7961: CStrVarTmp
  loc_AF7962: CVarStr var_B0
  loc_AF7965: FLdRfVar var_C0
  loc_AF7968: ImpAdCallFPR4  = Year()
  loc_AF796D: FLdPr Me
  loc_AF7970: VCallAd Control_ID_IngrConcMsk
  loc_AF7973: FStAdFunc var_A0
  loc_AF7976: FLdPr var_A0
  loc_AF7979: LateIdLdVar var_D0 DispID_22 0
  loc_AF7980: PopAd
  loc_AF7982: LitI4 0
  loc_AF7987: LitI4 3
  loc_AF798C: FLdRfVar var_D8
  loc_AF798F: Redim
  loc_AF7999: LitVarStr var_E8, "1"
  loc_AF799E: LitI4 0
  loc_AF79A3: ILdRf var_D8
  loc_AF79A6: Ary1StVarCopy
  loc_AF79A8: LitVarStr var_F8, "5"
  loc_AF79AD: LitI4 1
  loc_AF79B2: ILdRf var_D8
  loc_AF79B5: Ary1StVarCopy
  loc_AF79B7: LitVarStr var_108, "7"
  loc_AF79BC: LitI4 2
  loc_AF79C1: ILdRf var_D8
  loc_AF79C4: Ary1StVarCopy
  loc_AF79C6: LitVarStr var_118, "21"
  loc_AF79CB: LitI4 3
  loc_AF79D0: ILdRf var_D8
  loc_AF79D3: Ary1StVarCopy
  loc_AF79D5: FLdRfVar var_D8
  loc_AF79D8: FLdRfVar var_D0
  loc_AF79DB: CStrVarTmp
  loc_AF79DC: FStStrNoPop var_D4
  loc_AF79DF: FLdRfVar var_C0
  loc_AF79E2: CStrVarVal var_9C
  loc_AF79E6: ImpAdCallI2 Proc_18_132_AF3A7C(, , )
  loc_AF79EB: FStStr var_11C
  loc_AF79EE: FLdRfVar var_D8
  loc_AF79F1: Erase
  loc_AF79F2: ILdRf var_11C
  loc_AF79F5: FLdPr Me
  loc_AF79F8: MemStStrCopy
  loc_AF79FC: FFreeStr var_9C = "": var_D4 = ""
  loc_AF7A05: FFreeAd var_88 = ""
  loc_AF7A0C: FFreeVar var_98 = "": var_B0 = "": var_D0 = ""
  loc_AF7A17: FLdPr Me
  loc_AF7A1A: VCallAd Control_ID_IngrConcMsk
  loc_AF7A1D: FStAdFuncNoPop
  loc_AF7A20: CastAd
  loc_AF7A23: FStAdFunc var_A0
  loc_AF7A26: FLdRfVar var_A0
  loc_AF7A29: FLdPr Me
  loc_AF7A2C: MemLdStr global_100
  loc_AF7A2F: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_AF7A34: IStI2 arg_C
  loc_AF7A37: FFreeAd var_88 = ""
  loc_AF7A3E: ILdI2 arg_C
  loc_AF7A41: NotI4
  loc_AF7A42: BranchF loc_AF7AB3
  loc_AF7A45: FLdPr Me
  loc_AF7A48: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_AF7A4B: FStAdFunc var_88
  loc_AF7A4E: FLdPr var_88
  loc_AF7A51: LateIdLdVar var_98 DispID_15 0
  loc_AF7A58: CStrVarTmp
  loc_AF7A59: CVarStr var_B0
  loc_AF7A5C: FLdRfVar var_C0
  loc_AF7A5F: ImpAdCallFPR4  = Year()
  loc_AF7A64: FLdPr Me
  loc_AF7A67: VCallAd Control_ID_IngrConcMsk
  loc_AF7A6A: FStAdFunc var_A0
  loc_AF7A6D: FLdPr var_A0
  loc_AF7A70: LateIdLdVar var_D0 DispID_22 0
  loc_AF7A77: CStrVarTmp
  loc_AF7A78: FStStrNoPop var_9C
  loc_AF7A7B: FLdRfVar var_C0
  loc_AF7A7E: CI2Var
  loc_AF7A7F: ImpAdCallI2 Proc_270_69_A92C68(, )
  loc_AF7A84: FStStrNoPop var_D4
  loc_AF7A87: FLdPr Me
  loc_AF7A8A: VCallAd Control_ID_DetaCucoLbl
  loc_AF7A8D: FStAdFunc var_120
  loc_AF7A90: FLdPr var_120
  loc_AF7A93: Me.Caption = from_stack_1
  loc_AF7A98: FFreeStr var_9C = ""
  loc_AF7A9F: FFreeAd var_88 = "": var_A0 = ""
  loc_AF7AA8: FFreeVar var_98 = "": var_B0 = "": var_D0 = ""
  loc_AF7AB3: ExitProcHresult
End Function

Private Sub IngrConcCmd_Click() 'AC4E78
  'Data Table: 4CC9E0
  loc_AC4D8C: ImpAdLdRf MemVar_D9468C
  loc_AC4D8F: NewIfNullAd
  loc_AC4D92: FStAd var_88 
  loc_AC4D96: LitStr "SELECT DISTINCT(CodiCuco), cu.* FROM infogov.cuentacontable as cu"
  loc_AC4D99: LitStr " LEFT JOIN concepto as co ON co.PeriInfo = cu.PeriInfo AND co.IngrConc = cu.CodiCuco AND IngrConc <> ''"
  loc_AC4D9C: ConcatStr
  loc_AC4D9D: FStStrNoPop var_8C
  loc_AC4DA0: LitStr " WHERE co.PeriInfo = "
  loc_AC4DA3: ConcatStr
  loc_AC4DA4: CVarStr var_D0
  loc_AC4DA7: FLdPr Me
  loc_AC4DAA: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_AC4DAD: FStAdFunc var_90
  loc_AC4DB0: FLdPr var_90
  loc_AC4DB3: LateIdLdVar var_A0 DispID_15 0
  loc_AC4DBA: CStrVarTmp
  loc_AC4DBB: CVarStr var_B0
  loc_AC4DBE: FLdRfVar var_C0
  loc_AC4DC1: ImpAdCallFPR4  = Year()
  loc_AC4DC6: FLdRfVar var_C0
  loc_AC4DC9: ConcatVar var_E0
  loc_AC4DCD: LitVarStr var_F0, " ORDER BY co.ActiConc"
  loc_AC4DD2: ConcatVar var_100
  loc_AC4DD6: CStrVarVal var_104
  loc_AC4DDA: FLdPr var_88
  loc_AC4DDD: Call dlgBuscarCuentaContable.sPasaSelectPut(from_stack_1v)
  loc_AC4DE2: FFreeStr var_8C = ""
  loc_AC4DE9: FFree1Ad var_90
  loc_AC4DEC: FFreeVar var_A0 = "": var_B0 = "": var_D0 = "": var_C0 = "": var_E0 = ""
  loc_AC4DFB: LitVar_Missing var_114
  loc_AC4DFE: PopAdLdVar
  loc_AC4DFF: LitVarI4
  loc_AC4E07: PopAdLdVar
  loc_AC4E08: FLdPr var_88
  loc_AC4E0B: Me.Show from_stack_1, from_stack_2
  loc_AC4E10: FLdRfVar var_8C
  loc_AC4E13: FLdPr var_88
  loc_AC4E16: from_stack_1v = dlgBuscarCuentaContable.sPasaCodigoGet()
  loc_AC4E1B: FLdZeroAd var_8C
  loc_AC4E1E: CVarStr var_A0
  loc_AC4E21: PopAdLdVar
  loc_AC4E22: FLdPr Me
  loc_AC4E25: VCallAd Control_ID_IngrConcMsk
  loc_AC4E28: FStAdFunc var_90
  loc_AC4E2B: FLdPr var_90
  loc_AC4E2E: LateIdSt
  loc_AC4E33: FFree1Ad var_90
  loc_AC4E36: FFree1Var var_A0 = ""
  loc_AC4E39: LitStr vbNullString
  loc_AC4E3C: FLdPr var_88
  loc_AC4E3F: Call dlgBuscarCuentaContable.sPasaCodigoPut(from_stack_1v)
  loc_AC4E44: FLdRfVar var_8C
  loc_AC4E47: FLdPr var_88
  loc_AC4E4A: from_stack_1v = dlgBuscarCuentaContable.sPasaDetalleGet()
  loc_AC4E4F: ILdRf var_8C
  loc_AC4E52: FLdPr Me
  loc_AC4E55: VCallAd Control_ID_DetaCucoLbl
  loc_AC4E58: FStAdFunc var_90
  loc_AC4E5B: FLdPr var_90
  loc_AC4E5E: Me.Caption = from_stack_1
  loc_AC4E63: FFree1Str var_8C
  loc_AC4E66: FFree1Ad var_90
  loc_AC4E69: LitNothing
  loc_AC4E6B: FStAd var_88 
  loc_AC4E6F: ImpAdCallFPR4 Proc_272_49_9E343C()
  loc_AC4E74: ExitProcHresult
  loc_AC4E75: ArrayRebase1Var
End Sub

Private Sub cmdSalir_Click() '9FF110
  'Data Table: 4CC9E0
  loc_9FF0E0: LitVarStr var_94, "Cerrando..."
  loc_9FF0E5: PopAdLdVar
  loc_9FF0E6: FLdPr Me
  loc_9FF0E9: VCallAd Control_ID_statusBar
  loc_9FF0EC: FStAdFunc var_A8
  loc_9FF0EF: FLdPr var_A8
  loc_9FF0F2: LateIdSt
  loc_9FF0F7: FFree1Ad var_A8
  loc_9FF0FA: ILdRf Me
  loc_9FF0FD: FStAdNoPop
  loc_9FF101: ImpAdLdRf MemVar_D9C5D8
  loc_9FF104: NewIfNullPr Global
  loc_9FF107: Global.Unload from_stack_1
  loc_9FF10C: FFree1Ad var_A8
  loc_9FF10F: ExitProcHresult
End Sub

Private Sub DesdeFechaCmd_Click() 'A0EB34
  'Data Table: 4CC9E0
  loc_A0EAF8: LitVar_Missing var_A4
  loc_A0EAFB: PopAdLdVar
  loc_A0EAFC: LitVarI4
  loc_A0EB04: PopAdLdVar
  loc_A0EB05: ImpAdLdRf MemVar_D930A4
  loc_A0EB08: NewIfNullPr frmCalendario
  loc_A0EB0B: frmCalendario.Show from_stack_1, from_stack_2
  loc_A0EB10: ImpAdLdRf MemVar_D93028
  loc_A0EB13: CDargRef
  loc_A0EB17: FLdPr Me
  loc_A0EB1A: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_A0EB1D: FStAdFunc var_A8
  loc_A0EB20: FLdPr var_A8
  loc_A0EB23: LateIdSt
  loc_A0EB28: FFree1Ad var_A8
  loc_A0EB2B: ImpAdCallFPR4 Proc_272_49_9E343C()
  loc_A0EB30: ExitProcHresult
  loc_A0EB31: StAryMove
End Sub

Private Sub HastaFechaCmd_Click() 'A0EBA4
  'Data Table: 4CC9E0
  loc_A0EB68: LitVar_Missing var_A4
  loc_A0EB6B: PopAdLdVar
  loc_A0EB6C: LitVarI4
  loc_A0EB74: PopAdLdVar
  loc_A0EB75: ImpAdLdRf MemVar_D930A4
  loc_A0EB78: NewIfNullPr frmCalendario
  loc_A0EB7B: frmCalendario.Show from_stack_1, from_stack_2
  loc_A0EB80: ImpAdLdRf MemVar_D93028
  loc_A0EB83: CDargRef
  loc_A0EB87: FLdPr Me
  loc_A0EB8A: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_A0EB8D: FStAdFunc var_A8
  loc_A0EB90: FLdPr var_A8
  loc_A0EB93: LateIdSt
  loc_A0EB98: FFree1Ad var_A8
  loc_A0EB9B: ImpAdCallFPR4 Proc_272_49_9E343C()
  loc_A0EBA0: ExitProcHresult
End Sub

Private Sub Form_Load() 'AABBD4
  'Data Table: 4CC9E0
  loc_AABB08: ILdRf Me
  loc_AABB0B: CastAd
  loc_AABB0E: FStAdFunc var_88
  loc_AABB11: FLdRfVar var_88
  loc_AABB14: ImpAdCallFPR4 Proc_272_43_A93498()
  loc_AABB19: FFree1Ad var_88
  loc_AABB1C: LitI2_Byte 0
  loc_AABB1E: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_AABB23: CStrDate
  loc_AABB25: CVarStr var_98
  loc_AABB28: PopAdLdVar
  loc_AABB29: FLdPr Me
  loc_AABB2C: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_AABB2F: FStAdFunc var_88
  loc_AABB32: FLdPr var_88
  loc_AABB35: LateIdSt
  loc_AABB3A: FFree1Ad var_88
  loc_AABB3D: FFree1Var var_98 = ""
  loc_AABB40: FLdPr Me
  loc_AABB43: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_AABB46: FStAdFunc var_88
  loc_AABB49: FLdPr var_88
  loc_AABB4C: LateIdLdVar var_98 DispID_0 0
  loc_AABB53: CStrVarTmp
  loc_AABB54: CVarStr var_B8
  loc_AABB57: PopAdLdVar
  loc_AABB58: FLdPr Me
  loc_AABB5B: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_AABB5E: FStAdFunc var_BC
  loc_AABB61: FLdPr var_BC
  loc_AABB64: LateIdSt
  loc_AABB69: FFreeAd var_88 = ""
  loc_AABB70: FFreeVar var_98 = ""
  loc_AABB77: LitVarStr var_A8, vbNullString
  loc_AABB7C: PopAdLdVar
  loc_AABB7D: FLdPr Me
  loc_AABB80: VCallAd Control_ID_IngrConcMsk
  loc_AABB83: FStAdFunc var_88
  loc_AABB86: FLdPr var_88
  loc_AABB89: LateIdSt
  loc_AABB8E: FFree1Ad var_88
  loc_AABB91: LitStr vbNullString
  loc_AABB94: FLdPr Me
  loc_AABB97: VCallAd Control_ID_DetaCucoLbl
  loc_AABB9A: FStAdFunc var_88
  loc_AABB9D: FLdPr var_88
  loc_AABBA0: Me.Caption = from_stack_1
  loc_AABBA5: FFree1Ad var_88
  loc_AABBA8: LitI2_Byte &HFF
  loc_AABBAA: FLdPr Me
  loc_AABBAD: VCallAd Control_ID_SinteticoOpt
  loc_AABBB0: FStAdFunc var_88
  loc_AABBB3: FLdPr var_88
  loc_AABBB6: Me.Value = from_stack_1b
  loc_AABBBB: FFree1Ad var_88
  loc_AABBBE: Call cmdNueva_Click()
  loc_AABBC3: ImpAdLdI2 MemVar_D93C8E
  loc_AABBC6: FLdPr Me
  loc_AABBC9: MemStI2 global_104
  loc_AABBCC: LitI2_Byte &HFF
  loc_AABBCE: ImpAdStI2 MemVar_D93C8E
  loc_AABBD1: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9E73C4
  'Data Table: 4CC9E0
  loc_9E73A4: FLdPr Me
  loc_9E73A7: VCallAd Control_ID_wbbReporte
  loc_9E73AA: FStAdFunc var_88
  loc_9E73AD: FLdRfVar var_88
  loc_9E73B0: ImpAdCallFPR4  = Proc_57_52_A24864()
  loc_9E73B5: FFree1Ad var_88
  loc_9E73B8: FLdPr Me
  loc_9E73BB: MemLdI2 global_104
  loc_9E73BE: ImpAdStI2 MemVar_D93C8E
  loc_9E73C1: ExitProcHresult
  loc_9E73C2: PopAdLdVar
End Sub

Private Sub cmdPredeterminada_Click() '9D2A5C
  'Data Table: 4CC9E0
  loc_9D2A44: LitI2_Byte 0
  loc_9D2A46: ILdRf Me
  loc_9D2A49: CastAd
  loc_9D2A4C: FStAdFunc var_88
  loc_9D2A4F: FLdRfVar var_88
  loc_9D2A52: ImpAdCallFPR4 Proc_57_1_AA9124(, )
  loc_9D2A57: FFree1Ad var_88
  loc_9D2A5A: ExitProcHresult
End Sub

Private Sub FeenAcpaDesdeMsk_UnknownEvent_0 '9C19E8
  'Data Table: 4CC9E0
  loc_9C19D4: FLdPr Me
  loc_9C19D7: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_9C19DA: CVarAd
  loc_9C19DE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C19E3: FFree1Var var_94 = ""
  loc_9C19E6: ExitProcHresult
End Sub

Private Function FeenAcpaDesdeMsk_UnknownEvent_8(arg_C) 'A653C0
  'Data Table: 4CC9E0
  loc_A65364: FLdPr Me
  loc_A65367: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_A6536A: FStAdFunc var_88
  loc_A6536D: FLdPr var_88
  loc_A65370: LateIdLdVar var_98 DispID_15 0
  loc_A65377: CStrVarTmp
  loc_A65378: FStStrNoPop var_9C
  loc_A6537B: ImpAdCallI2 Proc_18_5_A95CFC()
  loc_A65380: FStStrNoPop var_A0
  loc_A65383: FLdPr Me
  loc_A65386: MemStStrCopy
  loc_A6538A: FFreeStr var_9C = ""
  loc_A65391: FFree1Ad var_88
  loc_A65394: FFree1Var var_98 = ""
  loc_A65397: FLdPr Me
  loc_A6539A: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_A6539D: FStAdFuncNoPop
  loc_A653A0: CastAd
  loc_A653A3: FStAdFunc var_A4
  loc_A653A6: FLdRfVar var_A4
  loc_A653A9: FLdPr Me
  loc_A653AC: MemLdStr global_100
  loc_A653AF: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A653B4: IStI2 arg_C
  loc_A653B7: FFreeAd var_88 = ""
  loc_A653BE: ExitProcHresult
End Function

Private Sub FeenAcpaHastaMsk_UnknownEvent_0 '9C19A0
  'Data Table: 4CC9E0
  loc_9C198C: FLdPr Me
  loc_9C198F: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_9C1992: CVarAd
  loc_9C1996: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C199B: FFree1Var var_94 = ""
  loc_9C199E: ExitProcHresult
End Sub

Private Function FeenAcpaHastaMsk_UnknownEvent_8(arg_C) 'AC76B4
  'Data Table: 4CC9E0
  loc_AC75C0: FLdPr Me
  loc_AC75C3: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_AC75C6: FStAdFunc var_88
  loc_AC75C9: FLdPr var_88
  loc_AC75CC: LateIdLdVar var_98 DispID_15 0
  loc_AC75D3: CStrVarTmp
  loc_AC75D4: FStStrNoPop var_9C
  loc_AC75D7: ImpAdCallI2 Proc_18_5_A95CFC()
  loc_AC75DC: FStStrNoPop var_A0
  loc_AC75DF: FLdPr Me
  loc_AC75E2: MemStStrCopy
  loc_AC75E6: FFreeStr var_9C = ""
  loc_AC75ED: FFree1Ad var_88
  loc_AC75F0: FFree1Var var_98 = ""
  loc_AC75F3: FLdPr Me
  loc_AC75F6: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_AC75F9: FStAdFuncNoPop
  loc_AC75FC: CastAd
  loc_AC75FF: FStAdFunc var_A4
  loc_AC7602: FLdRfVar var_A4
  loc_AC7605: FLdPr Me
  loc_AC7608: MemLdStr global_100
  loc_AC760B: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_AC7610: IStI2 arg_C
  loc_AC7613: FFreeAd var_88 = ""
  loc_AC761A: ILdI2 arg_C
  loc_AC761D: BranchF loc_AC7621
  loc_AC7620: ExitProcHresult
  loc_AC7621: FLdPr Me
  loc_AC7624: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_AC7627: FStAdFunc var_88
  loc_AC762A: FLdPr var_88
  loc_AC762D: LateIdLdVar var_98 DispID_15 0
  loc_AC7634: CStrVarTmp
  loc_AC7635: CVarStr var_B4
  loc_AC7638: FLdRfVar var_C4
  loc_AC763B: ImpAdCallFPR4  = Year()
  loc_AC7640: FLdRfVar var_C4
  loc_AC7643: FLdPr Me
  loc_AC7646: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_AC7649: FStAdFunc var_A4
  loc_AC764C: FLdPr var_A4
  loc_AC764F: LateIdLdVar var_D4 DispID_15 0
  loc_AC7656: CStrVarTmp
  loc_AC7657: CVarStr var_E4
  loc_AC765A: FLdRfVar var_F4
  loc_AC765D: ImpAdCallFPR4  = Year()
  loc_AC7662: FLdRfVar var_F4
  loc_AC7665: NeVarBool
  loc_AC7667: FFreeAd var_88 = ""
  loc_AC766E: FFreeVar var_98 = "": var_B4 = "": var_D4 = "": var_E4 = "": var_C4 = ""
  loc_AC767D: BranchF loc_AC76B1
  loc_AC7680: LitStr "Las fechas ingresadas deben corresponder al mismo año."
  loc_AC7683: FLdPr Me
  loc_AC7686: MemStStrCopy
  loc_AC768A: FLdPr Me
  loc_AC768D: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_AC7690: FStAdFuncNoPop
  loc_AC7693: CastAd
  loc_AC7696: FStAdFunc var_A4
  loc_AC7699: FLdRfVar var_A4
  loc_AC769C: FLdPr Me
  loc_AC769F: MemLdStr global_100
  loc_AC76A2: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_AC76A7: IStI2 arg_C
  loc_AC76AA: FFreeAd var_88 = ""
  loc_AC76B1: ExitProcHresult
End Function

Private Sub cmdPrevia_Click() '9D27FC
  'Data Table: 4CC9E0
  loc_9D27E4: ILdRf Me
  loc_9D27E7: CastAd
  loc_9D27EA: FStAdFunc var_88
  loc_9D27ED: FLdRfVar var_88
  loc_9D27F0: ImpAdCallFPR4 Proc_57_0_AB1718()
  loc_9D27F5: FFree1Ad var_88
  loc_9D27F8: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) 'A13780
  'Data Table: 4CC9E0
  loc_A13748: FLdPr Me
  loc_A1374B: VCallAd Control_ID_statusBar
  loc_A1374E: FStAdFunc var_88
  loc_A13751: FLdPr var_88
  loc_A13754: LateIdLdVar var_98 DispID_1 0
  loc_A1375B: CStrVarTmp
  loc_A1375C: CVarStr var_A8
  loc_A1375F: PopAdLdVar
  loc_A13760: FLdPr Me
  loc_A13763: VCallAd Control_ID_statusBar
  loc_A13766: FStAdFunc var_BC
  loc_A13769: FLdPr var_BC
  loc_A1376C: LateIdSt
  loc_A13771: FFreeAd var_88 = ""
  loc_A13778: FFreeVar var_98 = ""
  loc_A1377F: ExitProcHresult
End Sub

Private Sub cmdXLS_Click() '9E348C
  'Data Table: 4CC9E0
  loc_9E3470: LitI2_Byte &HFF
  loc_9E3472: LitI2_Byte 0
  loc_9E3474: ILdRf Me
  loc_9E3477: CastAd
  loc_9E347A: FStAdFunc var_88
  loc_9E347D: FLdRfVar var_88
  loc_9E3480: ImpAdCallFPR4 Proc_57_4_AFAAC0(, , )
  loc_9E3485: FFree1Ad var_88
  loc_9E3488: ExitProcHresult
  loc_9E3489: AddCy
  loc_9E348A: DOC
End Sub

Private Sub cmdPdf_Click() '9DD3AC
  'Data Table: 4CC9E0
  loc_9DD390: LitI2_Byte 0
  loc_9DD392: PopTmpLdAd2 var_8A
  loc_9DD395: ILdRf Me
  loc_9DD398: CastAd
  loc_9DD39B: FStAdFunc var_88
  loc_9DD39E: FLdRfVar var_88
  loc_9DD3A1: ImpAdCallFPR4 Proc_57_2_B14778(, )
  loc_9DD3A6: FFree1Ad var_88
  loc_9DD3A9: ExitProcHresult
  loc_9DD3AA: FLdPr arg_6800
End Sub

Public Function bLogosGet() '4CDC10
  bLogosGet = bLogos
End Function

Public Sub bLogosPut(Value) '4CDC1F
  bLogos = Value
End Sub

Public Function bGeneradoGet() '4CDC2E
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '4CDC3D
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() 'AAFEE8
  'Data Table: 4CC9E0
  loc_AAFE34: LitI4 0
  loc_AAFE39: LitI4 8
  loc_AAFE3E: FLdRfVar var_88
  loc_AAFE41: Redim
  loc_AAFE4B: FLdPr Me
  loc_AAFE4E: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_AAFE51: CVarAd
  loc_AAFE55: ParmAry1St
  loc_AAFE5B: FLdPr Me
  loc_AAFE5E: VCallAd Control_ID_DesdeFechaCmd
  loc_AAFE61: CVarAd
  loc_AAFE65: ParmAry1St
  loc_AAFE6B: FLdPr Me
  loc_AAFE6E: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_AAFE71: CVarAd
  loc_AAFE75: ParmAry1St
  loc_AAFE7B: FLdPr Me
  loc_AAFE7E: VCallAd Control_ID_HastaFechaCmd
  loc_AAFE81: CVarAd
  loc_AAFE85: ParmAry1St
  loc_AAFE8B: FLdPr Me
  loc_AAFE8E: VCallAd Control_ID_IngrConcMsk
  loc_AAFE91: CVarAd
  loc_AAFE95: ParmAry1St
  loc_AAFE9B: FLdPr Me
  loc_AAFE9E: VCallAd Control_ID_IngrConcCmd
  loc_AAFEA1: CVarAd
  loc_AAFEA5: ParmAry1St
  loc_AAFEAB: FLdPr Me
  loc_AAFEAE: VCallAd Control_ID_DetaCucoLbl
  loc_AAFEB1: CVarAd
  loc_AAFEB5: ParmAry1St
  loc_AAFEBB: FLdPr Me
  loc_AAFEBE: VCallAd Control_ID_SinteticoOpt
  loc_AAFEC1: CVarAd
  loc_AAFEC5: ParmAry1St
  loc_AAFECB: FLdPr Me
  loc_AAFECE: VCallAd Control_ID_AnaliticoOpt
  loc_AAFED1: CVarAd
  loc_AAFED5: ParmAry1St
  loc_AAFEDB: FLdRfVar var_88
  loc_AAFEDE: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_AAFEE3: FLdRfVar var_88
  loc_AAFEE6: Erase
  loc_AAFEE7: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'C90E34
  'Data Table: 4CC9E0
  loc_C8F7F0: FLdPr Me
  loc_C8F7F3: MemLdI2 bGenerado
  loc_C8F7F6: BranchF loc_C8F7FA
  loc_C8F7F9: ExitProcHresult
  loc_C8F7FA: LitVarStr var_98, "Generando reporte..."
  loc_C8F7FF: PopAdLdVar
  loc_C8F800: FLdPr Me
  loc_C8F803: VCallAd Control_ID_statusBar
  loc_C8F806: FStAdFunc var_AC
  loc_C8F809: FLdPr var_AC
  loc_C8F80C: LateIdSt
  loc_C8F811: FFree1Ad var_AC
  loc_C8F814: LitI4 &HB
  loc_C8F819: CI2I4
  loc_C8F81A: FLdPr Me
  loc_C8F81D: Me.MousePointer = from_stack_1
  loc_C8F822: LitI2_Byte 0
  loc_C8F824: PopTmpLdAd2 var_AE
  loc_C8F827: from_stack_2v = FeenAcpaDesdeMsk_UnknownEvent_8(from_stack_1v)
  loc_C8F82C: FLdPr Me
  loc_C8F82F: MemLdStr global_100
  loc_C8F832: LitStr vbNullString
  loc_C8F835: NeStr
  loc_C8F837: BranchF loc_C8F83D
  loc_C8F83A: Branch loc_C90E09
  loc_C8F83D: LitI2_Byte 0
  loc_C8F83F: PopTmpLdAd2 var_AE
  loc_C8F842: from_stack_2v = FeenAcpaHastaMsk_UnknownEvent_8(from_stack_1v)
  loc_C8F847: FLdPr Me
  loc_C8F84A: MemLdStr global_100
  loc_C8F84D: LitStr vbNullString
  loc_C8F850: NeStr
  loc_C8F852: BranchF loc_C8F858
  loc_C8F855: Branch loc_C90E09
  loc_C8F858: FLdRfVar var_AE
  loc_C8F85B: FLdPr Me
  loc_C8F85E: VCallAd Control_ID_AnaliticoOpt
  loc_C8F861: FStAdFunc var_AC
  loc_C8F864: FLdPr var_AC
  loc_C8F867:  = Me.Value
  loc_C8F86C: LitVarStr var_D0, vbNullString
  loc_C8F871: FStVarCopyObj var_E0
  loc_C8F874: FLdRfVar var_E0
  loc_C8F877: LitVarStr var_A8, ", PeriBole, NumeBole"
  loc_C8F87C: FStVarCopyObj var_C0
  loc_C8F87F: FLdRfVar var_C0
  loc_C8F882: FLdI2 var_AE
  loc_C8F885: CVarBoolI2 var_98
  loc_C8F889: FLdRfVar var_F0
  loc_C8F88C: ImpAdCallFPR4  = IIf(, , )
  loc_C8F891: FLdRfVar var_F0
  loc_C8F894: CStrVarTmp
  loc_C8F895: FStStr var_88
  loc_C8F898: FFree1Ad var_AC
  loc_C8F89B: FFreeVar var_98 = "": var_C0 = "": var_E0 = ""
  loc_C8F8A6: FLdPr Me
  loc_C8F8A9: MemLdRfVar from_stack_1.global_76
  loc_C8F8AC: NewIfNullAd
  loc_C8F8AF: FStAd var_F4 
  loc_C8F8B3: FLdPr Me
  loc_C8F8B6: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_C8F8B9: FStAdFunc var_AC
  loc_C8F8BC: FLdPr var_AC
  loc_C8F8BF: LateIdLdVar var_C0 DispID_15 0
  loc_C8F8C6: PopAd
  loc_C8F8C8: FLdPr Me
  loc_C8F8CB: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_C8F8CE: FStAdFunc var_114
  loc_C8F8D1: FLdPr var_114
  loc_C8F8D4: LateIdLdVar var_124 DispID_15 0
  loc_C8F8DB: PopAd
  loc_C8F8DD: LitStr "DROP TEMPORARY TABLE IF EXISTS deta;"
  loc_C8F8E0: LitStr " CREATE TEMPORARY TABLE deta"
  loc_C8F8E3: ConcatStr
  loc_C8F8E4: FStStrNoPop var_F8
  loc_C8F8E7: LitStr " SELECT detapago.CodiConc, sum(CapiDepa-DecaDepa-ExenDepa-CrafDepa) as TotaDepa, "
  loc_C8F8EA: ConcatStr
  loc_C8F8EB: FStStrNoPop var_FC
  loc_C8F8EE: LitStr " FeenAcpa, CodiOfic, CuenCtct, PeriBole, NumeBole, sum(CapiDepa) as CapiDepa, sum(DecaDepa) as DecaDepa, sum(ExenDepa) as ExenDepa"
  loc_C8F8F1: ConcatStr
  loc_C8F8F2: FStStrNoPop var_100
  loc_C8F8F5: LitStr " FROM detapago"
  loc_C8F8F8: ConcatStr
  loc_C8F8F9: FStStrNoPop var_104
  loc_C8F8FC: LitStr " WHERE FeenAcpa BETWEEN '"
  loc_C8F8FF: ConcatStr
  loc_C8F900: FStStrNoPop var_108
  loc_C8F903: LitI4 1
  loc_C8F908: LitI4 1
  loc_C8F90D: LitVarStr var_98, "yyyy-mm-dd"
  loc_C8F912: FStVarCopyObj var_F0
  loc_C8F915: FLdRfVar var_F0
  loc_C8F918: FLdRfVar var_C0
  loc_C8F91B: CStrVarTmp
  loc_C8F91C: CVarStr var_E0
  loc_C8F91F: ImpAdCallI2 Format$(, )
  loc_C8F924: FStStrNoPop var_10C
  loc_C8F927: ConcatStr
  loc_C8F928: FStStrNoPop var_110
  loc_C8F92B: LitStr "' AND '"
  loc_C8F92E: ConcatStr
  loc_C8F92F: FStStrNoPop var_148
  loc_C8F932: LitI4 1
  loc_C8F937: LitI4 1
  loc_C8F93C: LitVarStr var_A8, "yyyy-mm-dd"
  loc_C8F941: FStVarCopyObj var_144
  loc_C8F944: FLdRfVar var_144
  loc_C8F947: FLdRfVar var_124
  loc_C8F94A: CStrVarTmp
  loc_C8F94B: CVarStr var_134
  loc_C8F94E: ImpAdCallI2 Format$(, )
  loc_C8F953: FStStrNoPop var_14C
  loc_C8F956: ConcatStr
  loc_C8F957: FStStrNoPop var_150
  loc_C8F95A: LitStr "'"
  loc_C8F95D: ConcatStr
  loc_C8F95E: FStStrNoPop var_154
  loc_C8F961: LitStr " GROUP BY detapago.CodiConc"
  loc_C8F964: ConcatStr
  loc_C8F965: FStStrNoPop var_158
  loc_C8F968: ILdRf var_88
  loc_C8F96B: ConcatStr
  loc_C8F96C: FStStrNoPop var_15C
  loc_C8F96F: LitStr ";"
  loc_C8F972: ConcatStr
  loc_C8F973: FStStrNoPop var_160
  loc_C8F976: FLdPr var_F4
  loc_C8F979: Call clsconcepto.RedefineRS(from_stack_1v)
  loc_C8F97E: FFreeStr var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = ""
  loc_C8F99D: FFreeAd var_AC = ""
  loc_C8F9A4: FFreeVar var_C0 = "": var_E0 = "": var_F0 = "": var_124 = "": var_134 = ""
  loc_C8F9B3: LitStr "Municipalidad de Guaymallén"
  loc_C8F9B6: LitStr "Municipalidad de Rivadavia"
  loc_C8F9B9: EqStr
  loc_C8F9BB: BranchF loc_C8FF17
  loc_C8F9BE: FLdPr Me
  loc_C8F9C1: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_C8F9C4: FStAdFunc var_114
  loc_C8F9C7: FLdPr var_114
  loc_C8F9CA: LateIdLdVar var_170 DispID_15 0
  loc_C8F9D1: PopAd
  loc_C8F9D3: FLdPr Me
  loc_C8F9D6: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_C8F9D9: FStAdFunc var_1C4
  loc_C8F9DC: FLdPr var_1C4
  loc_C8F9DF: LateIdLdVar var_1D4 DispID_15 0
  loc_C8F9E6: PopAd
  loc_C8F9E8: FLdPr Me
  loc_C8F9EB: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_C8F9EE: FStAdFunc var_34C
  loc_C8F9F1: FLdPr var_34C
  loc_C8F9F4: LateIdLdVar var_35C DispID_15 0
  loc_C8F9FB: PopAd
  loc_C8F9FD: FLdPr Me
  loc_C8FA00: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_C8FA03: FStAdFunc var_3D0
  loc_C8FA06: FLdPr var_3D0
  loc_C8FA09: LateIdLdVar var_3E0 DispID_15 0
  loc_C8FA10: PopAd
  loc_C8FA12: FLdPr Me
  loc_C8FA15: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_C8FA18: FStAdFunc var_558
  loc_C8FA1B: FLdPr var_558
  loc_C8FA1E: LateIdLdVar var_568 DispID_15 0
  loc_C8FA25: PopAd
  loc_C8FA27: FLdPr Me
  loc_C8FA2A: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_C8FA2D: FStAdFunc var_5DC
  loc_C8FA30: FLdPr var_5DC
  loc_C8FA33: LateIdLdVar var_5EC DispID_15 0
  loc_C8FA3A: PopAd
  loc_C8FA3C: FLdPr Me
  loc_C8FA3F: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_C8FA42: FStAdFunc var_764
  loc_C8FA45: FLdPr var_764
  loc_C8FA48: LateIdLdVar var_774 DispID_15 0
  loc_C8FA4F: PopAd
  loc_C8FA51: FLdPr Me
  loc_C8FA54: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_C8FA57: FStAdFunc var_7E8
  loc_C8FA5A: FLdPr var_7E8
  loc_C8FA5D: LateIdLdVar var_7F8 DispID_15 0
  loc_C8FA64: PopAd
  loc_C8FA66: FLdPr Me
  loc_C8FA69: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_C8FA6C: FStAdFunc var_8F0
  loc_C8FA6F: FLdPr var_8F0
  loc_C8FA72: LateIdLdVar var_900 DispID_15 0
  loc_C8FA79: PopAd
  loc_C8FA7B: FLdPr Me
  loc_C8FA7E: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_C8FA81: FStAdFunc var_974
  loc_C8FA84: FLdPr var_974
  loc_C8FA87: LateIdLdVar var_984 DispID_15 0
  loc_C8FA8E: PopAd
  loc_C8FA90: LitStr " INSERT INTO deta SELECT pararenta.CorePare as CodiConc, sum(RecaDepa-DereDepa) as TotaDepa,"
  loc_C8FA93: LitStr " FeenAcpa, CodiOfic, CuenCtct, PeriBole, NumeBole, 0 as CapiDepa, 0 as DecaDepa, 0 as ExenDepa"
  loc_C8FA96: ConcatStr
  loc_C8FA97: FStStrNoPop var_F8
  loc_C8FA9A: LitStr " FROM detapago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_C8FA9D: ConcatStr
  loc_C8FA9E: CVarStr var_124
  loc_C8FAA1: FLdPr Me
  loc_C8FAA4: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_C8FAA7: FStAdFunc var_AC
  loc_C8FAAA: FLdPr var_AC
  loc_C8FAAD: LateIdLdVar var_C0 DispID_15 0
  loc_C8FAB4: CStrVarTmp
  loc_C8FAB5: CVarStr var_E0
  loc_C8FAB8: FLdRfVar var_F0
  loc_C8FABB: ImpAdCallFPR4  = Year()
  loc_C8FAC0: FLdRfVar var_F0
  loc_C8FAC3: ConcatVar var_134
  loc_C8FAC7: LitVarStr var_98, " WHERE FeenAcpa BETWEEN '"
  loc_C8FACC: ConcatVar var_144
  loc_C8FAD0: LitI4 1
  loc_C8FAD5: LitI4 1
  loc_C8FADA: LitVarStr var_A8, "yyyy-mm-dd"
  loc_C8FADF: FStVarCopyObj var_190
  loc_C8FAE2: FLdRfVar var_190
  loc_C8FAE5: FLdRfVar var_170
  loc_C8FAE8: CStrVarTmp
  loc_C8FAE9: CVarStr var_180
  loc_C8FAEC: ImpAdCallI2 Format$(, )
  loc_C8FAF1: CVarStr var_1A0
  loc_C8FAF4: ConcatVar var_1B0
  loc_C8FAF8: LitVarStr var_D0, "' AND '"
  loc_C8FAFD: ConcatVar var_1C0
  loc_C8FB01: LitI4 1
  loc_C8FB06: LitI4 1
  loc_C8FB0B: LitVarStr var_1F4, "yyyy-mm-dd"
  loc_C8FB10: FStVarCopyObj var_204
  loc_C8FB13: FLdRfVar var_204
  loc_C8FB16: FLdRfVar var_1D4
  loc_C8FB19: CStrVarTmp
  loc_C8FB1A: CVarStr var_1E4
  loc_C8FB1D: ImpAdCallI2 Format$(, )
  loc_C8FB22: CVarStr var_214
  loc_C8FB25: ConcatVar var_224
  loc_C8FB29: LitVarStr var_234, "'"
  loc_C8FB2E: ConcatVar var_244
  loc_C8FB32: LitVarStr var_254, " GROUP BY TRUE;"
  loc_C8FB37: ConcatVar var_264
  loc_C8FB3B: LitVarStr var_274, " INSERT INTO deta SELECT pararenta.CoadPare as CodiConc, sum(CoadBoap) as TotaDepa, "
  loc_C8FB40: ConcatVar var_284
  loc_C8FB44: LitVarStr var_294, " pago.FeenAcpa, CodiOfic, CuenCtct, pago.PeriBole, pago.NumeBole, 0 as CapiDepa, 0 as DecaDepa, 0 as ExenDepa"
  loc_C8FB49: ConcatVar var_2A4
  loc_C8FB4D: LitVarStr var_2B4, " FROM pago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_C8FB52: ConcatVar var_2C4
  loc_C8FB56: FLdPr Me
  loc_C8FB59: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_C8FB5C: FStAdFunc var_2C8
  loc_C8FB5F: FLdPr var_2C8
  loc_C8FB62: LateIdLdVar var_2D8 DispID_15 0
  loc_C8FB69: CStrVarTmp
  loc_C8FB6A: CVarStr var_2E8
  loc_C8FB6D: FLdRfVar var_2F8
  loc_C8FB70: ImpAdCallFPR4  = Year()
  loc_C8FB75: FLdRfVar var_2F8
  loc_C8FB78: ConcatVar var_308
  loc_C8FB7C: LitVarStr var_318, " INNER JOIN boleapre ON boleapre.PeriBole = pago.PeriBole AND boleapre.NumeBole = pago.NumeBole"
  loc_C8FB81: ConcatVar var_328
  loc_C8FB85: LitVarStr var_338, " WHERE pago.FeenAcpa BETWEEN '"
  loc_C8FB8A: ConcatVar var_348
  loc_C8FB8E: LitI4 1
  loc_C8FB93: LitI4 1
  loc_C8FB98: LitVarStr var_37C, "yyyy-mm-dd"
  loc_C8FB9D: FStVarCopyObj var_38C
  loc_C8FBA0: FLdRfVar var_38C
  loc_C8FBA3: FLdRfVar var_35C
  loc_C8FBA6: CStrVarTmp
  loc_C8FBA7: CVarStr var_36C
  loc_C8FBAA: ImpAdCallI2 Format$(, )
  loc_C8FBAF: CVarStr var_39C
  loc_C8FBB2: ConcatVar var_3AC
  loc_C8FBB6: LitVarStr var_3BC, "' AND '"
  loc_C8FBBB: ConcatVar var_3CC
  loc_C8FBBF: LitI4 1
  loc_C8FBC4: LitI4 1
  loc_C8FBC9: LitVarStr var_400, "yyyy-mm-dd"
  loc_C8FBCE: FStVarCopyObj var_410
  loc_C8FBD1: FLdRfVar var_410
  loc_C8FBD4: FLdRfVar var_3E0
  loc_C8FBD7: CStrVarTmp
  loc_C8FBD8: CVarStr var_3F0
  loc_C8FBDB: ImpAdCallI2 Format$(, )
  loc_C8FBE0: CVarStr var_420
  loc_C8FBE3: ConcatVar var_430
  loc_C8FBE7: LitVarStr var_440, "'"
  loc_C8FBEC: ConcatVar var_450
  loc_C8FBF0: LitVarStr var_460, " GROUP BY TRUE;"
  loc_C8FBF5: ConcatVar var_470
  loc_C8FBF9: LitVarStr var_480, " INSERT INTO deta SELECT pararenta.CoapPare as CodiConc, sum(ApleBoap+DefiBoap+ReseBoap+HoreBoap+HoofBoap+MoreBoap+MoofBoap) as TotaDepa, "
  loc_C8FBFE: ConcatVar var_490
  loc_C8FC02: LitVarStr var_4A0, " pago.FeenAcpa, CodiOfic, CuenCtct, pago.PeriBole, pago.NumeBole, 0 as CapiDepa, 0 as DecaDepa, 0 as ExenDepa"
  loc_C8FC07: ConcatVar var_4B0
  loc_C8FC0B: LitVarStr var_4C0, " FROM pago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_C8FC10: ConcatVar var_4D0
  loc_C8FC14: FLdPr Me
  loc_C8FC17: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_C8FC1A: FStAdFunc var_4D4
  loc_C8FC1D: FLdPr var_4D4
  loc_C8FC20: LateIdLdVar var_4E4 DispID_15 0
  loc_C8FC27: CStrVarTmp
  loc_C8FC28: CVarStr var_4F4
  loc_C8FC2B: FLdRfVar var_504
  loc_C8FC2E: ImpAdCallFPR4  = Year()
  loc_C8FC33: FLdRfVar var_504
  loc_C8FC36: ConcatVar var_514
  loc_C8FC3A: LitVarStr var_524, " INNER JOIN boleapre ON boleapre.PeriBole = pago.PeriBole AND boleapre.NumeBole = pago.NumeBole"
  loc_C8FC3F: ConcatVar var_534
  loc_C8FC43: LitVarStr var_544, " WHERE pago.FeenAcpa BETWEEN '"
  loc_C8FC48: ConcatVar var_554
  loc_C8FC4C: LitI4 1
  loc_C8FC51: LitI4 1
  loc_C8FC56: LitVarStr var_588, "yyyy-mm-dd"
  loc_C8FC5B: FStVarCopyObj var_598
  loc_C8FC5E: FLdRfVar var_598
  loc_C8FC61: FLdRfVar var_568
  loc_C8FC64: CStrVarTmp
  loc_C8FC65: CVarStr var_578
  loc_C8FC68: ImpAdCallI2 Format$(, )
  loc_C8FC6D: CVarStr var_5A8
  loc_C8FC70: ConcatVar var_5B8
  loc_C8FC74: LitVarStr var_5C8, "' AND '"
  loc_C8FC79: ConcatVar var_5D8
  loc_C8FC7D: LitI4 1
  loc_C8FC82: LitI4 1
  loc_C8FC87: LitVarStr var_60C, "yyyy-mm-dd"
  loc_C8FC8C: FStVarCopyObj var_61C
  loc_C8FC8F: FLdRfVar var_61C
  loc_C8FC92: FLdRfVar var_5EC
  loc_C8FC95: CStrVarTmp
  loc_C8FC96: CVarStr var_5FC
  loc_C8FC99: ImpAdCallI2 Format$(, )
  loc_C8FC9E: CVarStr var_62C
  loc_C8FCA1: ConcatVar var_63C
  loc_C8FCA5: LitVarStr var_64C, "'"
  loc_C8FCAA: ConcatVar var_65C
  loc_C8FCAE: LitVarStr var_66C, " GROUP BY TRUE;"
  loc_C8FCB3: ConcatVar var_67C
  loc_C8FCB7: LitVarStr var_68C, " INSERT INTO deta SELECT pararenta.CoimPare as CodiConc, sum(ApleBoap+DefiBoap+ReseBoap) as TotaDepa, "
  loc_C8FCBC: ConcatVar var_69C
  loc_C8FCC0: LitVarStr var_6AC, " pago.FeenAcpa, CodiOfic, CuenCtct, pago.PeriBole, pago.NumeBole, 0 as CapiDepa, 0 as DecaDepa, 0 as ExenDepa"
  loc_C8FCC5: ConcatVar var_6BC
  loc_C8FCC9: LitVarStr var_6CC, " FROM pago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_C8FCCE: ConcatVar var_6DC
  loc_C8FCD2: FLdPr Me
  loc_C8FCD5: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_C8FCD8: FStAdFunc var_6E0
  loc_C8FCDB: FLdPr var_6E0
  loc_C8FCDE: LateIdLdVar var_6F0 DispID_15 0
  loc_C8FCE5: CStrVarTmp
  loc_C8FCE6: CVarStr var_700
  loc_C8FCE9: FLdRfVar var_710
  loc_C8FCEC: ImpAdCallFPR4  = Year()
  loc_C8FCF1: FLdRfVar var_710
  loc_C8FCF4: ConcatVar var_720
  loc_C8FCF8: LitVarStr var_730, " INNER JOIN boleapre ON boleapre.PeriBole = pago.PeriBole AND boleapre.NumeBole = pago.NumeBole"
  loc_C8FCFD: ConcatVar var_740
  loc_C8FD01: LitVarStr var_750, " WHERE pago.FeenAcpa BETWEEN '"
  loc_C8FD06: ConcatVar var_760
  loc_C8FD0A: LitI4 1
  loc_C8FD0F: LitI4 1
  loc_C8FD14: LitVarStr var_794, "yyyy-mm-dd"
  loc_C8FD19: FStVarCopyObj var_7A4
  loc_C8FD1C: FLdRfVar var_7A4
  loc_C8FD1F: FLdRfVar var_774
  loc_C8FD22: CStrVarTmp
  loc_C8FD23: CVarStr var_784
  loc_C8FD26: ImpAdCallI2 Format$(, )
  loc_C8FD2B: CVarStr var_7B4
  loc_C8FD2E: ConcatVar var_7C4
  loc_C8FD32: LitVarStr var_7D4, "' AND '"
  loc_C8FD37: ConcatVar var_7E4
  loc_C8FD3B: LitI4 1
  loc_C8FD40: LitI4 1
  loc_C8FD45: LitVarStr var_818, "yyyy-mm-dd"
  loc_C8FD4A: FStVarCopyObj var_828
  loc_C8FD4D: FLdRfVar var_828
  loc_C8FD50: FLdRfVar var_7F8
  loc_C8FD53: CStrVarTmp
  loc_C8FD54: CVarStr var_808
  loc_C8FD57: ImpAdCallI2 Format$(, )
  loc_C8FD5C: CVarStr var_838
  loc_C8FD5F: ConcatVar var_848
  loc_C8FD63: LitVarStr var_858, "'"
  loc_C8FD68: ConcatVar var_868
  loc_C8FD6C: LitVarStr var_878, " GROUP BY TRUE; INSERT INTO deta SELECT pararenta.CoinPare as CodiConc, sum(InteDepa) as TotaDepa, FeenAcpa, CodiOfic, CuenCtct, PeriBole, NumeBole, 0 as CapiDepa, 0 as DecaDepa, 0 as ExenDepa FROM detapago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_C8FD71: ConcatVar var_888
  loc_C8FD75: FLdPr Me
  loc_C8FD78: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_C8FD7B: FStAdFunc var_88C
  loc_C8FD7E: FLdPr var_88C
  loc_C8FD81: LateIdLdVar var_89C DispID_15 0
  loc_C8FD88: CStrVarTmp
  loc_C8FD89: CVarStr var_8AC
  loc_C8FD8C: FLdRfVar var_8BC
  loc_C8FD8F: ImpAdCallFPR4  = Year()
  loc_C8FD94: FLdRfVar var_8BC
  loc_C8FD97: ConcatVar var_8CC
  loc_C8FD9B: LitVarStr var_8DC, " WHERE FeenAcpa BETWEEN '"
  loc_C8FDA0: ConcatVar var_8EC
  loc_C8FDA4: LitI4 1
  loc_C8FDA9: LitI4 1
  loc_C8FDAE: LitVarStr var_920, "yyyy-mm-dd"
  loc_C8FDB3: FStVarCopyObj var_930
  loc_C8FDB6: FLdRfVar var_930
  loc_C8FDB9: FLdRfVar var_900
  loc_C8FDBC: CStrVarTmp
  loc_C8FDBD: CVarStr var_910
  loc_C8FDC0: ImpAdCallI2 Format$(, )
  loc_C8FDC5: CVarStr var_940
  loc_C8FDC8: ConcatVar var_950
  loc_C8FDCC: LitVarStr var_960, "' AND '"
  loc_C8FDD1: ConcatVar var_970
  loc_C8FDD5: LitI4 1
  loc_C8FDDA: LitI4 1
  loc_C8FDDF: LitVarStr var_9A4, "yyyy-mm-dd"
  loc_C8FDE4: FStVarCopyObj var_9B4
  loc_C8FDE7: FLdRfVar var_9B4
  loc_C8FDEA: FLdRfVar var_984
  loc_C8FDED: CStrVarTmp
  loc_C8FDEE: CVarStr var_994
  loc_C8FDF1: ImpAdCallI2 Format$(, )
  loc_C8FDF6: CVarStr var_9C4
  loc_C8FDF9: ConcatVar var_9D4
  loc_C8FDFD: LitVarStr var_9E4, "'"
  loc_C8FE02: ConcatVar var_9F4
  loc_C8FE06: LitVarStr var_A04, " GROUP BY TRUE;"
  loc_C8FE0B: ConcatVar var_A14
  loc_C8FE0F: CStrVarVal var_FC
  loc_C8FE13: FLdPr var_F4
  loc_C8FE16: Call clsconcepto.RedefineRS(from_stack_1v)
  loc_C8FE1B: FFreeStr var_F8 = ""
  loc_C8FE22: FFreeAd var_AC = "": var_114 = "": var_1C4 = "": var_2C8 = "": var_34C = "": var_3D0 = "": var_4D4 = "": var_558 = "": var_5DC = "": var_6E0 = "": var_764 = "": var_7E8 = "": var_88C = "": var_8F0 = ""
  loc_C8FE43: FFreeVar var_910 = "": var_930 = "": var_8EC = "": var_940 = "": var_950 = "": var_984 = "": var_994 = "": var_9B4 = "": var_970 = "": var_9C4 = "": var_9D4 = "": var_9F4 = "": var_A14 = "": var_63C = "": var_65C = "": var_67C = "": var_69C = "": var_6BC = "": var_6F0 = "": var_700 = "": var_6DC = "": var_710 = "": var_720 = "": var_740 = "": var_774 = "": var_784 = "": var_7A4 = "": var_760 = "": var_7B4 = "": var_7C4 = "": var_7F8 = "": var_808 = "": var_828 = "": var_7E4 = "": var_838 = "": var_848 = "": var_868 = "": var_89C = "": var_8AC = "": var_888 = "": var_8BC = "": var_8CC = "": var_900 = "": var_348 = "": var_39C = "": var_3AC = "": var_3E0 = "": var_3F0 = "": var_410 = "": var_3CC = "": var_420 = "": var_430 = "": var_450 = "": var_470 = "": var_490 = "": var_4B0 = "": var_4E4 = "": var_4F4 = "": var_4D0 = "": var_504 = "": var_514 = "": var_534 = "": var_568 = "": var_578 = "": var_598 = "": var_554 = "": var_5A8 = "": var_5B8 = "": var_5EC = "": var_5FC = "": var_61C = "": var_5D8 = "": var_62C = "": var_C0 = "": var_E0 = "": var_124 = "": var_F0 = "": var_134 = "": var_170 = "": var_180 = "": var_190 = "": var_144 = "": var_1A0 = "": var_1B0 = "": var_1D4 = "": var_1E4 = "": var_204 = "": var_1C0 = "": var_214 = "": var_224 = "": var_244 = "": var_264 = "": var_284 = "": var_2A4 = "": var_2D8 = "": var_2E8 = "": var_2C4 = "": var_2F8 = "": var_308 = "": var_328 = "": var_35C = "": var_36C = ""
  loc_C8FF14: Branch loc_C908C2
  loc_C8FF17: LitStr "Municipalidad de Guaymallén"
  loc_C8FF1A: LitStr "Municipalidad de Guaymallén"
  loc_C8FF1D: EqStr
  loc_C8FF1F: BranchF loc_C90465
  loc_C8FF22: FLdPr Me
  loc_C8FF25: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_C8FF28: FStAdFunc var_114
  loc_C8FF2B: FLdPr var_114
  loc_C8FF2E: LateIdLdVar var_170 DispID_15 0
  loc_C8FF35: PopAd
  loc_C8FF37: FLdPr Me
  loc_C8FF3A: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_C8FF3D: FStAdFunc var_1C4
  loc_C8FF40: FLdPr var_1C4
  loc_C8FF43: LateIdLdVar var_1D4 DispID_15 0
  loc_C8FF4A: PopAd
  loc_C8FF4C: FLdPr Me
  loc_C8FF4F: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_C8FF52: FStAdFunc var_34C
  loc_C8FF55: FLdPr var_34C
  loc_C8FF58: LateIdLdVar var_348 DispID_15 0
  loc_C8FF5F: PopAd
  loc_C8FF61: FLdPr Me
  loc_C8FF64: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_C8FF67: FStAdFunc var_3D0
  loc_C8FF6A: FLdPr var_3D0
  loc_C8FF6D: LateIdLdVar var_3CC DispID_15 0
  loc_C8FF74: PopAd
  loc_C8FF76: FLdPr Me
  loc_C8FF79: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_C8FF7C: FStAdFunc var_558
  loc_C8FF7F: FLdPr var_558
  loc_C8FF82: LateIdLdVar var_554 DispID_15 0
  loc_C8FF89: PopAd
  loc_C8FF8B: FLdPr Me
  loc_C8FF8E: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_C8FF91: FStAdFunc var_5DC
  loc_C8FF94: FLdPr var_5DC
  loc_C8FF97: LateIdLdVar var_5D8 DispID_15 0
  loc_C8FF9E: PopAd
  loc_C8FFA0: FLdPr Me
  loc_C8FFA3: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_C8FFA6: FStAdFunc var_764
  loc_C8FFA9: FLdPr var_764
  loc_C8FFAC: LateIdLdVar var_760 DispID_15 0
  loc_C8FFB3: PopAd
  loc_C8FFB5: FLdPr Me
  loc_C8FFB8: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_C8FFBB: FStAdFunc var_7E8
  loc_C8FFBE: FLdPr var_7E8
  loc_C8FFC1: LateIdLdVar var_7E4 DispID_15 0
  loc_C8FFC8: PopAd
  loc_C8FFCA: FLdPr Me
  loc_C8FFCD: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_C8FFD0: FStAdFunc var_8F0
  loc_C8FFD3: FLdPr var_8F0
  loc_C8FFD6: LateIdLdVar var_8EC DispID_15 0
  loc_C8FFDD: PopAd
  loc_C8FFDF: FLdPr Me
  loc_C8FFE2: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_C8FFE5: FStAdFunc var_974
  loc_C8FFE8: FLdPr var_974
  loc_C8FFEB: LateIdLdVar var_970 DispID_15 0
  loc_C8FFF2: PopAd
  loc_C8FFF4: LitStr " INSERT INTO deta SELECT pararenta.CorePare as CodiConc, sum(RecaDepa-DereDepa) as TotaDepa, detapago.FeenAcpa, CodiOfic, CuenCtct, PeriBole, NumeBole, 0 as CapiDepa, 0 as DecaDepa, 0 as ExenDepa"
  loc_C8FFF7: LitStr " FROM detapago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_C8FFFA: ConcatStr
  loc_C8FFFB: CVarStr var_124
  loc_C8FFFE: FLdPr Me
  loc_C90001: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_C90004: FStAdFunc var_AC
  loc_C90007: FLdPr var_AC
  loc_C9000A: LateIdLdVar var_C0 DispID_15 0
  loc_C90011: CStrVarTmp
  loc_C90012: CVarStr var_E0
  loc_C90015: FLdRfVar var_F0
  loc_C90018: ImpAdCallFPR4  = Year()
  loc_C9001D: FLdRfVar var_F0
  loc_C90020: ConcatVar var_134
  loc_C90024: LitVarStr var_98, " WHERE detapago.FeenAcpa BETWEEN '"
  loc_C90029: ConcatVar var_144
  loc_C9002D: LitI4 1
  loc_C90032: LitI4 1
  loc_C90037: LitVarStr var_A8, "yyyy-mm-dd"
  loc_C9003C: FStVarCopyObj var_190
  loc_C9003F: FLdRfVar var_190
  loc_C90042: FLdRfVar var_170
  loc_C90045: CStrVarTmp
  loc_C90046: CVarStr var_180
  loc_C90049: ImpAdCallI2 Format$(, )
  loc_C9004E: CVarStr var_1A0
  loc_C90051: ConcatVar var_1B0
  loc_C90055: LitVarStr var_D0, "' AND '"
  loc_C9005A: ConcatVar var_1C0
  loc_C9005E: LitI4 1
  loc_C90063: LitI4 1
  loc_C90068: LitVarStr var_1F4, "yyyy-mm-dd"
  loc_C9006D: FStVarCopyObj var_204
  loc_C90070: FLdRfVar var_204
  loc_C90073: FLdRfVar var_1D4
  loc_C90076: CStrVarTmp
  loc_C90077: CVarStr var_1E4
  loc_C9007A: ImpAdCallI2 Format$(, )
  loc_C9007F: CVarStr var_214
  loc_C90082: ConcatVar var_224
  loc_C90086: LitVarStr var_234, "'"
  loc_C9008B: ConcatVar var_244
  loc_C9008F: LitVarStr var_254, " GROUP BY TRUE;"
  loc_C90094: ConcatVar var_264
  loc_C90098: LitVarStr var_274, " INSERT INTO deta SELECT pararenta.CoadPare as CodiConc, SUM(CoadBoap+IcomBoap) as TotaDepa, pago.FeenAcpa, CodiOfic, CuenCtct, pago.PeriBole, pago.NumeBole, 0 as CapiDepa, 0 as DecaDepa, 0 as ExenDepa"
  loc_C9009D: ConcatVar var_284
  loc_C900A1: LitVarStr var_294, " FROM pago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_C900A6: ConcatVar var_2A4
  loc_C900AA: FLdPr Me
  loc_C900AD: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_C900B0: FStAdFunc var_2C8
  loc_C900B3: FLdPr var_2C8
  loc_C900B6: LateIdLdVar var_2C4 DispID_15 0
  loc_C900BD: CStrVarTmp
  loc_C900BE: CVarStr var_2D8
  loc_C900C1: FLdRfVar var_2E8
  loc_C900C4: ImpAdCallFPR4  = Year()
  loc_C900C9: FLdRfVar var_2E8
  loc_C900CC: ConcatVar var_2F8
  loc_C900D0: LitVarStr var_2B4, " INNER JOIN boleapre ON boleapre.PeriBole = pago.PeriBole AND boleapre.NumeBole = pago.NumeBole "
  loc_C900D5: ConcatVar var_308
  loc_C900D9: LitVarStr var_318, " WHERE pago.FeenAcpa BETWEEN '"
  loc_C900DE: ConcatVar var_328
  loc_C900E2: LitI4 1
  loc_C900E7: LitI4 1
  loc_C900EC: LitVarStr var_338, "yyyy-mm-dd"
  loc_C900F1: FStVarCopyObj var_36C
  loc_C900F4: FLdRfVar var_36C
  loc_C900F7: FLdRfVar var_348
  loc_C900FA: CStrVarTmp
  loc_C900FB: CVarStr var_35C
  loc_C900FE: ImpAdCallI2 Format$(, )
  loc_C90103: CVarStr var_38C
  loc_C90106: ConcatVar var_39C
  loc_C9010A: LitVarStr var_37C, "' AND '"
  loc_C9010F: ConcatVar var_3AC
  loc_C90113: LitI4 1
  loc_C90118: LitI4 1
  loc_C9011D: LitVarStr var_3BC, "yyyy-mm-dd"
  loc_C90122: FStVarCopyObj var_3F0
  loc_C90125: FLdRfVar var_3F0
  loc_C90128: FLdRfVar var_3CC
  loc_C9012B: CStrVarTmp
  loc_C9012C: CVarStr var_3E0
  loc_C9012F: ImpAdCallI2 Format$(, )
  loc_C90134: CVarStr var_410
  loc_C90137: ConcatVar var_420
  loc_C9013B: LitVarStr var_400, "'"
  loc_C90140: ConcatVar var_430
  loc_C90144: LitVarStr var_440, " GROUP BY TRUE;"
  loc_C90149: ConcatVar var_450
  loc_C9014D: LitVarStr var_460, " INSERT INTO deta SELECT pararenta.CoapPare as CodiConc, SUM(HoreBoap+HoofBoap+MoreBoap+MoofBoap+IrecBoap+IofiBoap) as TotaDepa, "
  loc_C90152: ConcatVar var_470
  loc_C90156: LitVarStr var_480, " pago.FeenAcpa, CodiOfic, CuenCtct, pago.PeriBole, pago.NumeBole, 0 as CapiDepa, 0 as DecaDepa, 0 as ExenDepa"
  loc_C9015B: ConcatVar var_490
  loc_C9015F: LitVarStr var_4A0, " FROM pago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_C90164: ConcatVar var_4B0
  loc_C90168: FLdPr Me
  loc_C9016B: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_C9016E: FStAdFunc var_4D4
  loc_C90171: FLdPr var_4D4
  loc_C90174: LateIdLdVar var_4D0 DispID_15 0
  loc_C9017B: CStrVarTmp
  loc_C9017C: CVarStr var_4E4
  loc_C9017F: FLdRfVar var_4F4
  loc_C90182: ImpAdCallFPR4  = Year()
  loc_C90187: FLdRfVar var_4F4
  loc_C9018A: ConcatVar var_504
  loc_C9018E: LitVarStr var_4C0, " INNER JOIN boleapre ON boleapre.PeriBole = pago.PeriBole AND boleapre.NumeBole = pago.NumeBole "
  loc_C90193: ConcatVar var_514
  loc_C90197: LitVarStr var_524, " WHERE pago.FeenAcpa BETWEEN '"
  loc_C9019C: ConcatVar var_534
  loc_C901A0: LitI4 1
  loc_C901A5: LitI4 1
  loc_C901AA: LitVarStr var_544, "yyyy-mm-dd"
  loc_C901AF: FStVarCopyObj var_578
  loc_C901B2: FLdRfVar var_578
  loc_C901B5: FLdRfVar var_554
  loc_C901B8: CStrVarTmp
  loc_C901B9: CVarStr var_568
  loc_C901BC: ImpAdCallI2 Format$(, )
  loc_C901C1: CVarStr var_598
  loc_C901C4: ConcatVar var_5A8
  loc_C901C8: LitVarStr var_588, "' AND '"
  loc_C901CD: ConcatVar var_5B8
  loc_C901D1: LitI4 1
  loc_C901D6: LitI4 1
  loc_C901DB: LitVarStr var_5C8, "yyyy-mm-dd"
  loc_C901E0: FStVarCopyObj var_5FC
  loc_C901E3: FLdRfVar var_5FC
  loc_C901E6: FLdRfVar var_5D8
  loc_C901E9: CStrVarTmp
  loc_C901EA: CVarStr var_5EC
  loc_C901ED: ImpAdCallI2 Format$(, )
  loc_C901F2: CVarStr var_61C
  loc_C901F5: ConcatVar var_62C
  loc_C901F9: LitVarStr var_60C, "'"
  loc_C901FE: ConcatVar var_63C
  loc_C90202: LitVarStr var_64C, " GROUP BY TRUE;"
  loc_C90207: ConcatVar var_65C
  loc_C9020B: LitVarStr var_66C, " INSERT INTO deta SELECT pararenta.CoimPare as CodiConc, SUM(ApleBoap+DefiBoap+ReseBoap) as TotaDepa, "
  loc_C90210: ConcatVar var_67C
  loc_C90214: LitVarStr var_68C, " pago.FeenAcpa, CodiOfic, CuenCtct, pago.PeriBole, pago.NumeBole, 0 as CapiDepa, 0 as DecaDepa, 0 as ExenDepa"
  loc_C90219: ConcatVar var_69C
  loc_C9021D: LitVarStr var_6AC, " FROM pago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_C90222: ConcatVar var_6BC
  loc_C90226: FLdPr Me
  loc_C90229: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_C9022C: FStAdFunc var_6E0
  loc_C9022F: FLdPr var_6E0
  loc_C90232: LateIdLdVar var_6DC DispID_15 0
  loc_C90239: CStrVarTmp
  loc_C9023A: CVarStr var_6F0
  loc_C9023D: FLdRfVar var_700
  loc_C90240: ImpAdCallFPR4  = Year()
  loc_C90245: FLdRfVar var_700
  loc_C90248: ConcatVar var_710
  loc_C9024C: LitVarStr var_6CC, " INNER JOIN boleapre ON boleapre.PeriBole = pago.PeriBole AND boleapre.NumeBole = pago.NumeBole "
  loc_C90251: ConcatVar var_720
  loc_C90255: LitVarStr var_730, " WHERE pago.FeenAcpa BETWEEN '"
  loc_C9025A: ConcatVar var_740
  loc_C9025E: LitI4 1
  loc_C90263: LitI4 1
  loc_C90268: LitVarStr var_750, "yyyy-mm-dd"
  loc_C9026D: FStVarCopyObj var_784
  loc_C90270: FLdRfVar var_784
  loc_C90273: FLdRfVar var_760
  loc_C90276: CStrVarTmp
  loc_C90277: CVarStr var_774
  loc_C9027A: ImpAdCallI2 Format$(, )
  loc_C9027F: CVarStr var_7A4
  loc_C90282: ConcatVar var_7B4
  loc_C90286: LitVarStr var_794, "' AND '"
  loc_C9028B: ConcatVar var_7C4
  loc_C9028F: LitI4 1
  loc_C90294: LitI4 1
  loc_C90299: LitVarStr var_7D4, "yyyy-mm-dd"
  loc_C9029E: FStVarCopyObj var_808
  loc_C902A1: FLdRfVar var_808
  loc_C902A4: FLdRfVar var_7E4
  loc_C902A7: CStrVarTmp
  loc_C902A8: CVarStr var_7F8
  loc_C902AB: ImpAdCallI2 Format$(, )
  loc_C902B0: CVarStr var_828
  loc_C902B3: ConcatVar var_838
  loc_C902B7: LitVarStr var_818, "'"
  loc_C902BC: ConcatVar var_848
  loc_C902C0: LitVarStr var_858, " GROUP BY TRUE; INSERT INTO deta SELECT pararenta.CoinPare as CodiConc, sum(InteDepa) as TotaDepa, detapago.FeenAcpa, CodiOfic, CuenCtct, PeriBole, NumeBole, 0 as CapiDepa, 0 as DecaDepa, 0 as ExenDepa FROM detapago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_C902C5: ConcatVar var_868
  loc_C902C9: FLdPr Me
  loc_C902CC: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_C902CF: FStAdFunc var_88C
  loc_C902D2: FLdPr var_88C
  loc_C902D5: LateIdLdVar var_888 DispID_15 0
  loc_C902DC: CStrVarTmp
  loc_C902DD: CVarStr var_89C
  loc_C902E0: FLdRfVar var_8AC
  loc_C902E3: ImpAdCallFPR4  = Year()
  loc_C902E8: FLdRfVar var_8AC
  loc_C902EB: ConcatVar var_8BC
  loc_C902EF: LitVarStr var_878, " WHERE detapago.FeenAcpa BETWEEN '"
  loc_C902F4: ConcatVar var_8CC
  loc_C902F8: LitI4 1
  loc_C902FD: LitI4 1
  loc_C90302: LitVarStr var_8DC, "yyyy-mm-dd"
  loc_C90307: FStVarCopyObj var_910
  loc_C9030A: FLdRfVar var_910
  loc_C9030D: FLdRfVar var_8EC
  loc_C90310: CStrVarTmp
  loc_C90311: CVarStr var_900
  loc_C90314: ImpAdCallI2 Format$(, )
  loc_C90319: CVarStr var_930
  loc_C9031C: ConcatVar var_940
  loc_C90320: LitVarStr var_920, "' AND '"
  loc_C90325: ConcatVar var_950
  loc_C90329: LitI4 1
  loc_C9032E: LitI4 1
  loc_C90333: LitVarStr var_960, "yyyy-mm-dd"
  loc_C90338: FStVarCopyObj var_994
  loc_C9033B: FLdRfVar var_994
  loc_C9033E: FLdRfVar var_970
  loc_C90341: CStrVarTmp
  loc_C90342: CVarStr var_984
  loc_C90345: ImpAdCallI2 Format$(, )
  loc_C9034A: CVarStr var_9B4
  loc_C9034D: ConcatVar var_9C4
  loc_C90351: LitVarStr var_9A4, "'"
  loc_C90356: ConcatVar var_9D4
  loc_C9035A: LitVarStr var_9E4, " GROUP BY TRUE;"
  loc_C9035F: ConcatVar var_9F4
  loc_C90363: CStrVarVal var_F8
  loc_C90367: FLdPr var_F4
  loc_C9036A: Call clsconcepto.RedefineRS(from_stack_1v)
  loc_C9036F: FFree1Str var_F8
  loc_C90372: FFreeAd var_AC = "": var_114 = "": var_1C4 = "": var_2C8 = "": var_34C = "": var_3D0 = "": var_4D4 = "": var_558 = "": var_5DC = "": var_6E0 = "": var_764 = "": var_7E8 = "": var_88C = "": var_8F0 = ""
  loc_C90393: FFreeVar var_910 = "": var_8CC = "": var_930 = "": var_940 = "": var_970 = "": var_984 = "": var_994 = "": var_950 = "": var_9B4 = "": var_9C4 = "": var_9D4 = "": var_9F4 = "": var_63C = "": var_65C = "": var_67C = "": var_69C = "": var_6DC = "": var_6F0 = "": var_6BC = "": var_700 = "": var_710 = "": var_720 = "": var_760 = "": var_774 = "": var_784 = "": var_740 = "": var_7A4 = "": var_7B4 = "": var_7E4 = "": var_7F8 = "": var_808 = "": var_7C4 = "": var_828 = "": var_838 = "": var_848 = "": var_888 = "": var_89C = "": var_868 = "": var_8AC = "": var_8BC = "": var_8EC = "": var_900 = "": var_38C = "": var_39C = "": var_3CC = "": var_3E0 = "": var_3F0 = "": var_3AC = "": var_410 = "": var_420 = "": var_430 = "": var_450 = "": var_470 = "": var_490 = "": var_4D0 = "": var_4E4 = "": var_4B0 = "": var_4F4 = "": var_504 = "": var_514 = "": var_554 = "": var_568 = "": var_578 = "": var_534 = "": var_598 = "": var_5A8 = "": var_5D8 = "": var_5EC = "": var_5FC = "": var_5B8 = "": var_61C = "": var_62C = "": var_C0 = "": var_E0 = "": var_124 = "": var_F0 = "": var_134 = "": var_170 = "": var_180 = "": var_190 = "": var_144 = "": var_1A0 = "": var_1B0 = "": var_1D4 = "": var_1E4 = "": var_204 = "": var_1C0 = "": var_214 = "": var_224 = "": var_244 = "": var_264 = "": var_284 = "": var_2C4 = "": var_2D8 = "": var_2A4 = "": var_2E8 = "": var_2F8 = "": var_308 = "": var_348 = "": var_35C = "": var_36C = ""
  loc_C90462: Branch loc_C908C2
  loc_C90465: FLdPr Me
  loc_C90468: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_C9046B: FStAdFunc var_114
  loc_C9046E: FLdPr var_114
  loc_C90471: LateIdLdVar var_170 DispID_15 0
  loc_C90478: PopAd
  loc_C9047A: FLdPr Me
  loc_C9047D: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_C90480: FStAdFunc var_1C4
  loc_C90483: FLdPr var_1C4
  loc_C90486: LateIdLdVar var_1D4 DispID_15 0
  loc_C9048D: PopAd
  loc_C9048F: FLdPr Me
  loc_C90492: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_C90495: FStAdFunc var_34C
  loc_C90498: FLdPr var_34C
  loc_C9049B: LateIdLdVar var_35C DispID_15 0
  loc_C904A2: PopAd
  loc_C904A4: FLdPr Me
  loc_C904A7: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_C904AA: FStAdFunc var_3D0
  loc_C904AD: FLdPr var_3D0
  loc_C904B0: LateIdLdVar var_3E0 DispID_15 0
  loc_C904B7: PopAd
  loc_C904B9: FLdPr Me
  loc_C904BC: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_C904BF: FStAdFunc var_558
  loc_C904C2: FLdPr var_558
  loc_C904C5: LateIdLdVar var_568 DispID_15 0
  loc_C904CC: PopAd
  loc_C904CE: FLdPr Me
  loc_C904D1: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_C904D4: FStAdFunc var_5DC
  loc_C904D7: FLdPr var_5DC
  loc_C904DA: LateIdLdVar var_5EC DispID_15 0
  loc_C904E1: PopAd
  loc_C904E3: FLdPr Me
  loc_C904E6: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_C904E9: FStAdFunc var_764
  loc_C904EC: FLdPr var_764
  loc_C904EF: LateIdLdVar var_760 DispID_15 0
  loc_C904F6: PopAd
  loc_C904F8: FLdPr Me
  loc_C904FB: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_C904FE: FStAdFunc var_7E8
  loc_C90501: FLdPr var_7E8
  loc_C90504: LateIdLdVar var_7E4 DispID_15 0
  loc_C9050B: PopAd
  loc_C9050D: LitStr " INSERT INTO deta SELECT pararenta.CorePare as CodiConc, sum(RecaDepa-DereDepa) as TotaDepa,"
  loc_C90510: LitStr " FeenAcpa, CodiOfic, CuenCtct, PeriBole, NumeBole, 0 as CapiDepa, 0 as DecaDepa, 0 as ExenDepa"
  loc_C90513: ConcatStr
  loc_C90514: FStStrNoPop var_F8
  loc_C90517: LitStr " FROM detapago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_C9051A: ConcatStr
  loc_C9051B: CVarStr var_124
  loc_C9051E: FLdPr Me
  loc_C90521: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_C90524: FStAdFunc var_AC
  loc_C90527: FLdPr var_AC
  loc_C9052A: LateIdLdVar var_C0 DispID_15 0
  loc_C90531: CStrVarTmp
  loc_C90532: CVarStr var_E0
  loc_C90535: FLdRfVar var_F0
  loc_C90538: ImpAdCallFPR4  = Year()
  loc_C9053D: FLdRfVar var_F0
  loc_C90540: ConcatVar var_134
  loc_C90544: LitVarStr var_98, " WHERE FeenAcpa BETWEEN '"
  loc_C90549: ConcatVar var_144
  loc_C9054D: LitI4 1
  loc_C90552: LitI4 1
  loc_C90557: LitVarStr var_A8, "yyyy-mm-dd"
  loc_C9055C: FStVarCopyObj var_190
  loc_C9055F: FLdRfVar var_190
  loc_C90562: FLdRfVar var_170
  loc_C90565: CStrVarTmp
  loc_C90566: CVarStr var_180
  loc_C90569: ImpAdCallI2 Format$(, )
  loc_C9056E: CVarStr var_1A0
  loc_C90571: ConcatVar var_1B0
  loc_C90575: LitVarStr var_D0, "' AND '"
  loc_C9057A: ConcatVar var_1C0
  loc_C9057E: LitI4 1
  loc_C90583: LitI4 1
  loc_C90588: LitVarStr var_1F4, "yyyy-mm-dd"
  loc_C9058D: FStVarCopyObj var_204
  loc_C90590: FLdRfVar var_204
  loc_C90593: FLdRfVar var_1D4
  loc_C90596: CStrVarTmp
  loc_C90597: CVarStr var_1E4
  loc_C9059A: ImpAdCallI2 Format$(, )
  loc_C9059F: CVarStr var_214
  loc_C905A2: ConcatVar var_224
  loc_C905A6: LitVarStr var_234, "'"
  loc_C905AB: ConcatVar var_244
  loc_C905AF: LitVarStr var_254, " GROUP BY TRUE;"
  loc_C905B4: ConcatVar var_264
  loc_C905B8: LitVarStr var_274, " INSERT INTO deta SELECT pararenta.CoadPare as CodiConc, sum(CoadBoap) as TotaDepa, "
  loc_C905BD: ConcatVar var_284
  loc_C905C1: LitVarStr var_294, " pago.FeenAcpa, CodiOfic, CuenCtct, pago.PeriBole, pago.NumeBole, 0 as CapiDepa, 0 as DecaDepa, 0 as ExenDepa"
  loc_C905C6: ConcatVar var_2A4
  loc_C905CA: LitVarStr var_2B4, " FROM pago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_C905CF: ConcatVar var_2C4
  loc_C905D3: FLdPr Me
  loc_C905D6: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_C905D9: FStAdFunc var_2C8
  loc_C905DC: FLdPr var_2C8
  loc_C905DF: LateIdLdVar var_2D8 DispID_15 0
  loc_C905E6: CStrVarTmp
  loc_C905E7: CVarStr var_2E8
  loc_C905EA: FLdRfVar var_2F8
  loc_C905ED: ImpAdCallFPR4  = Year()
  loc_C905F2: FLdRfVar var_2F8
  loc_C905F5: ConcatVar var_308
  loc_C905F9: LitVarStr var_318, " INNER JOIN boleapre ON boleapre.PeriBole = pago.PeriBole AND boleapre.NumeBole = pago.NumeBole"
  loc_C905FE: ConcatVar var_328
  loc_C90602: LitVarStr var_338, " WHERE pago.FeenAcpa BETWEEN '"
  loc_C90607: ConcatVar var_348
  loc_C9060B: LitI4 1
  loc_C90610: LitI4 1
  loc_C90615: LitVarStr var_37C, "yyyy-mm-dd"
  loc_C9061A: FStVarCopyObj var_38C
  loc_C9061D: FLdRfVar var_38C
  loc_C90620: FLdRfVar var_35C
  loc_C90623: CStrVarTmp
  loc_C90624: CVarStr var_36C
  loc_C90627: ImpAdCallI2 Format$(, )
  loc_C9062C: CVarStr var_39C
  loc_C9062F: ConcatVar var_3AC
  loc_C90633: LitVarStr var_3BC, "' AND '"
  loc_C90638: ConcatVar var_3CC
  loc_C9063C: LitI4 1
  loc_C90641: LitI4 1
  loc_C90646: LitVarStr var_400, "yyyy-mm-dd"
  loc_C9064B: FStVarCopyObj var_410
  loc_C9064E: FLdRfVar var_410
  loc_C90651: FLdRfVar var_3E0
  loc_C90654: CStrVarTmp
  loc_C90655: CVarStr var_3F0
  loc_C90658: ImpAdCallI2 Format$(, )
  loc_C9065D: CVarStr var_420
  loc_C90660: ConcatVar var_430
  loc_C90664: LitVarStr var_440, "'"
  loc_C90669: ConcatVar var_450
  loc_C9066D: LitVarStr var_460, " GROUP BY TRUE;"
  loc_C90672: ConcatVar var_470
  loc_C90676: LitVarStr var_480, " INSERT INTO deta SELECT pararenta.CoapPare as CodiConc, sum(ApleBoap+DefiBoap+ReseBoap+HoreBoap+HoofBoap+MoreBoap+MoofBoap) as TotaDepa, "
  loc_C9067B: ConcatVar var_490
  loc_C9067F: LitVarStr var_4A0, " pago.FeenAcpa, CodiOfic, CuenCtct, pago.PeriBole, pago.NumeBole, 0 as CapiDepa, 0 as DecaDepa, 0 as ExenDepa"
  loc_C90684: ConcatVar var_4B0
  loc_C90688: LitVarStr var_4C0, " FROM pago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_C9068D: ConcatVar var_4D0
  loc_C90691: FLdPr Me
  loc_C90694: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_C90697: FStAdFunc var_4D4
  loc_C9069A: FLdPr var_4D4
  loc_C9069D: LateIdLdVar var_4E4 DispID_15 0
  loc_C906A4: CStrVarTmp
  loc_C906A5: CVarStr var_4F4
  loc_C906A8: FLdRfVar var_504
  loc_C906AB: ImpAdCallFPR4  = Year()
  loc_C906B0: FLdRfVar var_504
  loc_C906B3: ConcatVar var_514
  loc_C906B7: LitVarStr var_524, " INNER JOIN boleapre ON boleapre.PeriBole = pago.PeriBole AND boleapre.NumeBole = pago.NumeBole"
  loc_C906BC: ConcatVar var_534
  loc_C906C0: LitVarStr var_544, " WHERE pago.FeenAcpa BETWEEN '"
  loc_C906C5: ConcatVar var_554
  loc_C906C9: LitI4 1
  loc_C906CE: LitI4 1
  loc_C906D3: LitVarStr var_588, "yyyy-mm-dd"
  loc_C906D8: FStVarCopyObj var_598
  loc_C906DB: FLdRfVar var_598
  loc_C906DE: FLdRfVar var_568
  loc_C906E1: CStrVarTmp
  loc_C906E2: CVarStr var_578
  loc_C906E5: ImpAdCallI2 Format$(, )
  loc_C906EA: CVarStr var_5A8
  loc_C906ED: ConcatVar var_5B8
  loc_C906F1: LitVarStr var_5C8, "' AND '"
  loc_C906F6: ConcatVar var_5D8
  loc_C906FA: LitI4 1
  loc_C906FF: LitI4 1
  loc_C90704: LitVarStr var_60C, "yyyy-mm-dd"
  loc_C90709: FStVarCopyObj var_61C
  loc_C9070C: FLdRfVar var_61C
  loc_C9070F: FLdRfVar var_5EC
  loc_C90712: CStrVarTmp
  loc_C90713: CVarStr var_5FC
  loc_C90716: ImpAdCallI2 Format$(, )
  loc_C9071B: CVarStr var_62C
  loc_C9071E: ConcatVar var_63C
  loc_C90722: LitVarStr var_64C, "'"
  loc_C90727: ConcatVar var_65C
  loc_C9072B: LitVarStr var_66C, " GROUP BY TRUE;"
  loc_C90730: ConcatVar var_67C
  loc_C90734: LitVarStr var_68C, " INSERT INTO deta SELECT pararenta.CoinPare as CodiConc, sum(InteDepa) as TotaDepa, "
  loc_C90739: ConcatVar var_69C
  loc_C9073D: LitVarStr var_6AC, " FeenAcpa, CodiOfic, CuenCtct, PeriBole, NumeBole, 0 as CapiDepa, 0 as DecaDepa, 0 as ExenDepa"
  loc_C90742: ConcatVar var_6BC
  loc_C90746: LitVarStr var_6CC, " FROM detapago LEFT JOIN pararenta ON pararenta.PeriInfo = "
  loc_C9074B: ConcatVar var_6DC
  loc_C9074F: FLdPr Me
  loc_C90752: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_C90755: FStAdFunc var_6E0
  loc_C90758: FLdPr var_6E0
  loc_C9075B: LateIdLdVar var_6F0 DispID_15 0
  loc_C90762: CStrVarTmp
  loc_C90763: CVarStr var_700
  loc_C90766: FLdRfVar var_710
  loc_C90769: ImpAdCallFPR4  = Year()
  loc_C9076E: FLdRfVar var_710
  loc_C90771: ConcatVar var_720
  loc_C90775: LitVarStr var_730, " WHERE FeenAcpa BETWEEN '"
  loc_C9077A: ConcatVar var_740
  loc_C9077E: LitI4 1
  loc_C90783: LitI4 1
  loc_C90788: LitVarStr var_750, "yyyy-mm-dd"
  loc_C9078D: FStVarCopyObj var_784
  loc_C90790: FLdRfVar var_784
  loc_C90793: FLdRfVar var_760
  loc_C90796: CStrVarTmp
  loc_C90797: CVarStr var_774
  loc_C9079A: ImpAdCallI2 Format$(, )
  loc_C9079F: CVarStr var_7A4
  loc_C907A2: ConcatVar var_7B4
  loc_C907A6: LitVarStr var_794, "' AND '"
  loc_C907AB: ConcatVar var_7C4
  loc_C907AF: LitI4 1
  loc_C907B4: LitI4 1
  loc_C907B9: LitVarStr var_7D4, "yyyy-mm-dd"
  loc_C907BE: FStVarCopyObj var_808
  loc_C907C1: FLdRfVar var_808
  loc_C907C4: FLdRfVar var_7E4
  loc_C907C7: CStrVarTmp
  loc_C907C8: CVarStr var_7F8
  loc_C907CB: ImpAdCallI2 Format$(, )
  loc_C907D0: CVarStr var_828
  loc_C907D3: ConcatVar var_838
  loc_C907D7: LitVarStr var_818, "'"
  loc_C907DC: ConcatVar var_848
  loc_C907E0: LitVarStr var_858, " GROUP BY TRUE;"
  loc_C907E5: ConcatVar var_868
  loc_C907E9: CStrVarVal var_FC
  loc_C907ED: FLdPr var_F4
  loc_C907F0: Call clsconcepto.RedefineRS(from_stack_1v)
  loc_C907F5: FFreeStr var_F8 = ""
  loc_C907FC: FFreeAd var_AC = "": var_114 = "": var_1C4 = "": var_2C8 = "": var_34C = "": var_3D0 = "": var_4D4 = "": var_558 = "": var_5DC = "": var_6E0 = "": var_764 = ""
  loc_C90817: FFreeVar var_63C = "": var_65C = "": var_67C = "": var_69C = "": var_6BC = "": var_6F0 = "": var_700 = "": var_6DC = "": var_710 = "": var_720 = "": var_760 = "": var_774 = "": var_784 = "": var_740 = "": var_7A4 = "": var_7B4 = "": var_7E4 = "": var_7F8 = "": var_808 = "": var_7C4 = "": var_828 = "": var_838 = "": var_848 = "": var_868 = "": var_348 = "": var_39C = "": var_3AC = "": var_3E0 = "": var_3F0 = "": var_410 = "": var_3CC = "": var_420 = "": var_430 = "": var_450 = "": var_470 = "": var_490 = "": var_4B0 = "": var_4E4 = "": var_4F4 = "": var_4D0 = "": var_504 = "": var_514 = "": var_534 = "": var_568 = "": var_578 = "": var_598 = "": var_554 = "": var_5A8 = "": var_5B8 = "": var_5EC = "": var_5FC = "": var_61C = "": var_5D8 = "": var_62C = "": var_C0 = "": var_E0 = "": var_124 = "": var_F0 = "": var_134 = "": var_170 = "": var_180 = "": var_190 = "": var_144 = "": var_1A0 = "": var_1B0 = "": var_1D4 = "": var_1E4 = "": var_204 = "": var_1C0 = "": var_214 = "": var_224 = "": var_244 = "": var_264 = "": var_284 = "": var_2A4 = "": var_2D8 = "": var_2E8 = "": var_2C4 = "": var_2F8 = "": var_308 = "": var_328 = "": var_35C = "": var_36C = ""
  loc_C908C2: FLdPr Me
  loc_C908C5: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_C908C8: FStAdFunc var_AC
  loc_C908CB: FLdPr var_AC
  loc_C908CE: LateIdLdVar var_C0 DispID_15 0
  loc_C908D5: PopAd
  loc_C908D7: FLdPr Me
  loc_C908DA: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_C908DD: FStAdFunc var_114
  loc_C908E0: FLdPr var_114
  loc_C908E3: LateIdLdVar var_124 DispID_15 0
  loc_C908EA: PopAd
  loc_C908EC: LitStr " INSERT INTO deta SELECT detainre.CodiConc, (SUM(TotaDeir) * -1) TotaDepa,"
  loc_C908EF: LitStr " FechInre FeenAcpa, 0 CodiOfic, '' CuenCtct, 0 PeriBole, 0 NumeBole, 0 as CapiDepa, 0 as DecaDepa, 0 as ExenDepa"
  loc_C908F2: ConcatStr
  loc_C908F3: FStStrNoPop var_F8
  loc_C908F6: LitStr " FROM detainre"
  loc_C908F9: ConcatStr
  loc_C908FA: FStStrNoPop var_FC
  loc_C908FD: LitStr " WHERE FechInre BETWEEN '"
  loc_C90900: ConcatStr
  loc_C90901: FStStrNoPop var_100
  loc_C90904: LitI4 1
  loc_C90909: LitI4 1
  loc_C9090E: LitVarStr var_98, "yyyy-mm-dd"
  loc_C90913: FStVarCopyObj var_F0
  loc_C90916: FLdRfVar var_F0
  loc_C90919: FLdRfVar var_C0
  loc_C9091C: CStrVarTmp
  loc_C9091D: CVarStr var_E0
  loc_C90920: ImpAdCallI2 Format$(, )
  loc_C90925: FStStrNoPop var_104
  loc_C90928: ConcatStr
  loc_C90929: FStStrNoPop var_108
  loc_C9092C: LitStr "' AND '"
  loc_C9092F: ConcatStr
  loc_C90930: FStStrNoPop var_10C
  loc_C90933: LitI4 1
  loc_C90938: LitI4 1
  loc_C9093D: LitVarStr var_A8, "yyyy-mm-dd"
  loc_C90942: FStVarCopyObj var_144
  loc_C90945: FLdRfVar var_144
  loc_C90948: FLdRfVar var_124
  loc_C9094B: CStrVarTmp
  loc_C9094C: CVarStr var_134
  loc_C9094F: ImpAdCallI2 Format$(, )
  loc_C90954: FStStrNoPop var_110
  loc_C90957: ConcatStr
  loc_C90958: FStStrNoPop var_148
  loc_C9095B: LitStr "' AND IdContra > 0"
  loc_C9095E: ConcatStr
  loc_C9095F: FStStrNoPop var_14C
  loc_C90962: LitStr " GROUP BY detainre.CodiConc"
  loc_C90965: ConcatStr
  loc_C90966: FStStrNoPop var_150
  loc_C90969: FLdPr var_F4
  loc_C9096C: Call clsconcepto.RedefineRS(from_stack_1v)
  loc_C90971: FFreeStr var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_148 = "": var_14C = ""
  loc_C90988: FFreeAd var_AC = ""
  loc_C9098F: FFreeVar var_C0 = "": var_E0 = "": var_F0 = "": var_124 = "": var_134 = ""
  loc_C9099E: LitStr "SELECT c.CodiCuco, DetaCuco, deta.CodiConc, ifnull(DetaConc,'') as DetaConc, DetaPers, ExpeBole, TotaDepa, ifnull(IngrConc,'') as IngrConc, "
  loc_C909A1: LitStr " deta.FeenAcpa, deta.CodiOfic, deta.CuenCtct, deta.PeriBole, deta.NumeBole, CapiDepa, DecaDepa, ExenDepa FROM deta"
  loc_C909A4: ConcatStr
  loc_C909A5: FStStrNoPop var_F8
  loc_C909A8: LitStr " LEFT JOIN concepto ON concepto.PeriInfo = "
  loc_C909AB: ConcatStr
  loc_C909AC: CVarStr var_124
  loc_C909AF: FLdPr Me
  loc_C909B2: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_C909B5: FStAdFunc var_AC
  loc_C909B8: FLdPr var_AC
  loc_C909BB: LateIdLdVar var_C0 DispID_15 0
  loc_C909C2: CStrVarTmp
  loc_C909C3: CVarStr var_E0
  loc_C909C6: FLdRfVar var_F0
  loc_C909C9: ImpAdCallFPR4  = Year()
  loc_C909CE: FLdRfVar var_F0
  loc_C909D1: ConcatVar var_134
  loc_C909D5: LitVarStr var_98, " AND concepto.CodiConc = deta.CodiConc"
  loc_C909DA: ConcatVar var_144
  loc_C909DE: LitVarStr var_A8, " LEFT JOIN boleto ON boleto.PeriBole = deta.PeriBole AND boleto.NumeBole = deta.NumeBole"
  loc_C909E3: ConcatVar var_170
  loc_C909E7: LitVarStr var_D0, " LEFT JOIN infogov.persona ON infogov.persona.CucuPers = boleto.CucuPers"
  loc_C909EC: ConcatVar var_180
  loc_C909F0: LitVarStr var_1F4, " LEFT JOIN infogov.cuentacontable as c ON c.PeriInfo = "
  loc_C909F5: ConcatVar var_190
  loc_C909F9: FLdPr Me
  loc_C909FC: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_C909FF: FStAdFunc var_114
  loc_C90A02: FLdPr var_114
  loc_C90A05: LateIdLdVar var_1A0 DispID_15 0
  loc_C90A0C: CStrVarTmp
  loc_C90A0D: CVarStr var_1B0
  loc_C90A10: FLdRfVar var_1C0
  loc_C90A13: ImpAdCallFPR4  = Year()
  loc_C90A18: FLdRfVar var_1C0
  loc_C90A1B: ConcatVar var_1D4
  loc_C90A1F: LitVarStr var_234, " AND c.CodiCuco = concepto.IngrConc"
  loc_C90A24: ConcatVar var_1E4
  loc_C90A28: LitVarStr var_254, " WHERE TotaDepa <> 0 AND concepto.IngrConc like '"
  loc_C90A2D: ConcatVar var_204
  loc_C90A31: FLdPr Me
  loc_C90A34: VCallAd Control_ID_IngrConcMsk
  loc_C90A37: FStAdFunc var_1C4
  loc_C90A3A: FLdPr var_1C4
  loc_C90A3D: LateIdLdVar var_214 DispID_22 0
  loc_C90A44: CStrVarTmp
  loc_C90A45: CVarStr var_224
  loc_C90A48: ConcatVar var_244
  loc_C90A4C: LitVarStr var_274, Chr(37) & "' ORDER BY CodiCuco, CodiConc;"
  loc_C90A51: ConcatVar var_264
  loc_C90A55: CStrVarVal var_FC
  loc_C90A59: FLdPr var_F4
  loc_C90A5C: Call clsconcepto.RedefineRS(from_stack_1v)
  loc_C90A61: FFreeStr var_F8 = ""
  loc_C90A68: FFreeAd var_AC = "": var_114 = ""
  loc_C90A71: FFreeVar var_C0 = "": var_E0 = "": var_124 = "": var_F0 = "": var_134 = "": var_144 = "": var_170 = "": var_180 = "": var_1A0 = "": var_1B0 = "": var_190 = "": var_1C0 = "": var_1D4 = "": var_1E4 = "": var_214 = "": var_204 = "": var_224 = "": var_244 = ""
  loc_C90A9A: FLdRfVar var_A18
  loc_C90A9D: FLdPr var_F4
  loc_C90AA0: from_stack_1 = clsconcepto.RecordCount
  loc_C90AA5: ILdRf var_A18
  loc_C90AA8: LitI4 0
  loc_C90AAD: EqI4
  loc_C90AAE: BranchF loc_C90ABC
  loc_C90AB1: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_C90AB4: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_C90AB9: Branch loc_C90E09
  loc_C90ABC: LitI4 0
  loc_C90AC1: LitI4 1
  loc_C90AC6: FLdPr Me
  loc_C90AC9: MemLdRfVar from_stack_1.global_84
  loc_C90ACC: Redim
  loc_C90AD6: LitI2_Byte 0
  loc_C90AD8: FLdPr Me
  loc_C90ADB: MemStI2 global_88
  loc_C90ADE: LitI4 0
  loc_C90AE3: LitI4 0
  loc_C90AE8: FLdPr Me
  loc_C90AEB: MemLdRfVar from_stack_1.global_80
  loc_C90AEE: Redim
  loc_C90AF8: Call Proc_177_26_A9EA0C()
  loc_C90AFD: FLdRfVar var_AE
  loc_C90B00: FLdPr var_F4
  loc_C90B03: from_stack_1 = clsconcepto.EOF
  loc_C90B08: FLdI2 var_AE
  loc_C90B0B: NotI4
  loc_C90B0C: BranchF loc_C90B84
  loc_C90B0F: FLdRfVar var_C0
  loc_C90B12: FLdPr var_F4
  loc_C90B15: from_stack_1 = clsconcepto.CodiCuco
  loc_C90B1A: FLdRfVar var_C0
  loc_C90B1D: FLdPr Me
  loc_C90B20: MemLdI2 global_88
  loc_C90B23: CI4UI1
  loc_C90B24: FLdPr Me
  loc_C90B27: MemLdStr global_80
  loc_C90B2A: Ary1LdPr
  loc_C90B2B: MemLdStr global_0
  loc_C90B2E: CVarStr var_98
  loc_C90B31: HardType
  loc_C90B32: NeVarBool
  loc_C90B34: FFree1Var var_C0 = ""
  loc_C90B37: BranchF loc_C90B42
  loc_C90B3A: Call Proc_177_26_A9EA0C()
  loc_C90B3F: Branch loc_C90B81
  loc_C90B42: FLdRfVar var_F8
  loc_C90B45: FLdPr var_F4
  loc_C90B48: from_stack_1 = clsconcepto.CodiConc
  loc_C90B4D: ILdRf var_F8
  loc_C90B50: FLdPr Me
  loc_C90B53: MemLdI2 global_90
  loc_C90B56: CI4UI1
  loc_C90B57: FLdPr Me
  loc_C90B5A: MemLdI2 global_88
  loc_C90B5D: CI4UI1
  loc_C90B5E: FLdPr Me
  loc_C90B61: MemLdStr global_80
  loc_C90B64: Ary1LdPr
  loc_C90B65: MemLdStr global_8
  loc_C90B68: Ary1LdPr
  loc_C90B69: MemLdStr global_0
  loc_C90B6C: NeStr
  loc_C90B6E: FFree1Str var_F8
  loc_C90B71: BranchF loc_C90B7C
  loc_C90B74: Call Proc_177_27_AC1368()
  loc_C90B79: Branch loc_C90B81
  loc_C90B7C: Call Proc_177_28_B43FC8()
  loc_C90B81: Branch loc_C90AFD
  loc_C90B84: LitNothing
  loc_C90B86: FStAd var_F4 
  loc_C90B8A: LitI2_Byte 1
  loc_C90B8C: FLdPr Me
  loc_C90B8F: MemLdRfVar from_stack_1.global_88
  loc_C90B92: FLdPr Me
  loc_C90B95: MemLdStr global_80
  loc_C90B98: LitI2_Byte 1
  loc_C90B9A: FnUBound
  loc_C90B9C: CI2I4
  loc_C90B9D: ForI2 var_A1C
  loc_C90BA3: LitI2_Byte 1
  loc_C90BA5: FLdPr Me
  loc_C90BA8: MemLdRfVar from_stack_1.global_90
  loc_C90BAB: FLdPr Me
  loc_C90BAE: MemLdI2 global_88
  loc_C90BB1: CI4UI1
  loc_C90BB2: FLdPr Me
  loc_C90BB5: MemLdStr global_80
  loc_C90BB8: Ary1LdPr
  loc_C90BB9: MemLdStr global_8
  loc_C90BBC: LitI2_Byte 1
  loc_C90BBE: FnUBound
  loc_C90BC0: CI2I4
  loc_C90BC1: ForI2 var_A20
  loc_C90BC7: FLdPr Me
  loc_C90BCA: MemLdI2 global_90
  loc_C90BCD: CI4UI1
  loc_C90BCE: FLdPr Me
  loc_C90BD1: MemLdI2 global_88
  loc_C90BD4: CI4UI1
  loc_C90BD5: FLdPr Me
  loc_C90BD8: MemLdStr global_80
  loc_C90BDB: AryLock
  loc_C90BDE: Ary1LdPr
  loc_C90BDF: MemLdStr global_8
  loc_C90BE2: AryLock
  loc_C90BE5: Ary1LdRf
  loc_C90BE6: FStR4 var_A2C
  loc_C90BE9: FLdRfVar var_AE
  loc_C90BEC: FLdPr Me
  loc_C90BEF: VCallAd Control_ID_AnaliticoOpt
  loc_C90BF2: FStAdFunc var_AC
  loc_C90BF5: FLdPr var_AC
  loc_C90BF8:  = Me.Value
  loc_C90BFD: FLdI2 var_AE
  loc_C90C00: FFree1Ad var_AC
  loc_C90C03: BranchF loc_C90CA2
  loc_C90C06: LitI2_Byte 0
  loc_C90C08: FLdPr Me
  loc_C90C0B: MemLdI2 global_88
  loc_C90C0E: CI4UI1
  loc_C90C0F: FLdPr Me
  loc_C90C12: MemLdStr global_80
  loc_C90C15: AryLock
  loc_C90C18: Ary1LdPr
  loc_C90C19: MemLdRfVar from_stack_1.global_40
  loc_C90C1C: CVarRef
  loc_C90C21: LitI2_Byte &HFF
  loc_C90C23: FMemLdR4 var_A2C(44)
  loc_C90C28: CVarStr var_98
  loc_C90C2B: PopAdLdVar
  loc_C90C2C: FLdPr Me
  loc_C90C2F: MemLdRfVar from_stack_1.global_96
  loc_C90C32: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C90C37: AryUnlock
  loc_C90C3A: LitI2_Byte 0
  loc_C90C3C: FLdPr Me
  loc_C90C3F: MemLdI2 global_88
  loc_C90C42: CI4UI1
  loc_C90C43: FLdPr Me
  loc_C90C46: MemLdStr global_80
  loc_C90C49: AryLock
  loc_C90C4C: Ary1LdPr
  loc_C90C4D: MemLdRfVar from_stack_1.global_44
  loc_C90C50: CVarRef
  loc_C90C55: LitI2_Byte &HFF
  loc_C90C57: FMemLdR4 var_A2C(48)
  loc_C90C5C: CVarStr var_98
  loc_C90C5F: PopAdLdVar
  loc_C90C60: FLdPr Me
  loc_C90C63: MemLdRfVar from_stack_1.global_96
  loc_C90C66: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C90C6B: AryUnlock
  loc_C90C6E: LitI2_Byte 0
  loc_C90C70: FLdPr Me
  loc_C90C73: MemLdI2 global_88
  loc_C90C76: CI4UI1
  loc_C90C77: FLdPr Me
  loc_C90C7A: MemLdStr global_80
  loc_C90C7D: AryLock
  loc_C90C80: Ary1LdPr
  loc_C90C81: MemLdRfVar from_stack_1.global_48
  loc_C90C84: CVarRef
  loc_C90C89: LitI2_Byte &HFF
  loc_C90C8B: FMemLdR4 var_A2C(52)
  loc_C90C90: CVarStr var_98
  loc_C90C93: PopAdLdVar
  loc_C90C94: FLdPr Me
  loc_C90C97: MemLdRfVar from_stack_1.global_96
  loc_C90C9A: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C90C9F: AryUnlock
  loc_C90CA2: LitI2_Byte 0
  loc_C90CA4: FLdPr Me
  loc_C90CA7: MemLdI2 global_88
  loc_C90CAA: CI4UI1
  loc_C90CAB: FLdPr Me
  loc_C90CAE: MemLdStr global_80
  loc_C90CB1: AryLock
  loc_C90CB4: Ary1LdPr
  loc_C90CB5: MemLdRfVar from_stack_1.bLogos
  loc_C90CB8: CVarRef
  loc_C90CBD: LitI2_Byte &HFF
  loc_C90CBF: FMemLdR4 var_A2C(56)
  loc_C90CC4: CVarStr var_98
  loc_C90CC7: PopAdLdVar
  loc_C90CC8: FLdPr Me
  loc_C90CCB: MemLdRfVar from_stack_1.global_96
  loc_C90CCE: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C90CD3: AryUnlock
  loc_C90CD6: LitI4 0
  loc_C90CDB: FStR4 var_A2C
  loc_C90CDE: AryUnlock
  loc_C90CE1: AryUnlock
  loc_C90CE4: FLdPr Me
  loc_C90CE7: MemLdRfVar from_stack_1.global_90
  loc_C90CEA: NextI2 var_A20, loc_C90BC7
  loc_C90CEF: FLdPr Me
  loc_C90CF2: MemLdI2 global_88
  loc_C90CF5: CI4UI1
  loc_C90CF6: FLdPr Me
  loc_C90CF9: MemLdStr global_80
  loc_C90CFC: AryLock
  loc_C90CFF: Ary1LdPr
  loc_C90D00: MemLdRfVar from_stack_1.global_12
  loc_C90D03: FStR4 var_A38
  loc_C90D06: FLdRfVar var_AE
  loc_C90D09: FLdPr Me
  loc_C90D0C: VCallAd Control_ID_AnaliticoOpt
  loc_C90D0F: FStAdFunc var_AC
  loc_C90D12: FLdPr var_AC
  loc_C90D15:  = Me.Value
  loc_C90D1A: FLdI2 var_AE
  loc_C90D1D: FFree1Ad var_AC
  loc_C90D20: BranchF loc_C90DB9
  loc_C90D23: LitI2_Byte 0
  loc_C90D25: LitI4 1
  loc_C90D2A: FLdPr Me
  loc_C90D2D: MemLdStr global_84
  loc_C90D30: AryLock
  loc_C90D33: Ary1LdPr
  loc_C90D34: MemLdRfVar from_stack_1.global_28
  loc_C90D37: CVarRef
  loc_C90D3C: LitI2_Byte &HFF
  loc_C90D3E: FMemLdR4 var_A38(28)
  loc_C90D43: CVarStr var_98
  loc_C90D46: PopAdLdVar
  loc_C90D47: FLdPr Me
  loc_C90D4A: MemLdRfVar from_stack_1.global_96
  loc_C90D4D: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C90D52: AryUnlock
  loc_C90D55: LitI2_Byte 0
  loc_C90D57: LitI4 1
  loc_C90D5C: FLdPr Me
  loc_C90D5F: MemLdStr global_84
  loc_C90D62: AryLock
  loc_C90D65: Ary1LdPr
  loc_C90D66: MemLdRfVar from_stack_1.global_32
  loc_C90D69: CVarRef
  loc_C90D6E: LitI2_Byte &HFF
  loc_C90D70: FMemLdR4 var_A38(32)
  loc_C90D75: CVarStr var_98
  loc_C90D78: PopAdLdVar
  loc_C90D79: FLdPr Me
  loc_C90D7C: MemLdRfVar from_stack_1.global_96
  loc_C90D7F: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C90D84: AryUnlock
  loc_C90D87: LitI2_Byte 0
  loc_C90D89: LitI4 1
  loc_C90D8E: FLdPr Me
  loc_C90D91: MemLdStr global_84
  loc_C90D94: AryLock
  loc_C90D97: Ary1LdPr
  loc_C90D98: MemLdRfVar from_stack_1.global_36
  loc_C90D9B: CVarRef
  loc_C90DA0: LitI2_Byte &HFF
  loc_C90DA2: FMemLdR4 var_A38(36)
  loc_C90DA7: CVarStr var_98
  loc_C90DAA: PopAdLdVar
  loc_C90DAB: FLdPr Me
  loc_C90DAE: MemLdRfVar from_stack_1.global_96
  loc_C90DB1: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C90DB6: AryUnlock
  loc_C90DB9: LitI2_Byte 0
  loc_C90DBB: LitI4 1
  loc_C90DC0: FLdPr Me
  loc_C90DC3: MemLdStr global_84
  loc_C90DC6: AryLock
  loc_C90DC9: Ary1LdPr
  loc_C90DCA: MemLdRfVar from_stack_1.global_40
  loc_C90DCD: CVarRef
  loc_C90DD2: LitI2_Byte &HFF
  loc_C90DD4: FMemLdR4 var_A38(40)
  loc_C90DD9: CVarStr var_98
  loc_C90DDC: PopAdLdVar
  loc_C90DDD: FLdPr Me
  loc_C90DE0: MemLdRfVar from_stack_1.global_96
  loc_C90DE3: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C90DE8: AryUnlock
  loc_C90DEB: LitI4 0
  loc_C90DF0: FStR4 var_A38
  loc_C90DF3: AryUnlock
  loc_C90DF6: FLdPr Me
  loc_C90DF9: MemLdRfVar from_stack_1.global_88
  loc_C90DFC: NextI2 var_A1C, loc_C90BA3
  loc_C90E01: LitI2_Byte &HFF
  loc_C90E03: FLdPr Me
  loc_C90E06: MemStI2 bGenerado
  loc_C90E09: LitI4 0
  loc_C90E0E: CI2I4
  loc_C90E0F: FLdPr Me
  loc_C90E12: Me.MousePointer = from_stack_1
  loc_C90E17: LitVarStr var_98, vbNullString
  loc_C90E1C: PopAdLdVar
  loc_C90E1D: FLdPr Me
  loc_C90E20: VCallAd Control_ID_statusBar
  loc_C90E23: FStAdFunc var_AC
  loc_C90E26: FLdPr var_AC
  loc_C90E29: LateIdSt
  loc_C90E2E: FFree1Ad var_AC
  loc_C90E31: ExitProcHresult
  loc_C90E32: CVarI2 arg_6800
End Sub

Public Sub GeneraHTML() 'BE3F1C
  'Data Table: 4CC9E0
  loc_BE3768: FLdRfVar var_88
  loc_BE376B: LitI2_Byte 0
  loc_BE376D: LitI2_Byte &HFF
  loc_BE376F: ImpAdLdI4 MemVar_D93C84
  loc_BE3772: FLdPr Me
  loc_BE3775: MemLdRfVar from_stack_1.global_56
  loc_BE3778: NewIfNullPr IFileSystem3
  loc_BE377B: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_BE3780: ILdRf var_88
  loc_BE3783: FLdPr Me
  loc_BE3786: MemStVarAd
  loc_BE378A: FFree1Ad var_88
  loc_BE378D: LitI2_Byte &HFF
  loc_BE378F: ImpAdStI2 MemVar_D93C8A
  loc_BE3792: Call Proc_177_29_C2D920()
  loc_BE3797: LitI2_Byte 1
  loc_BE3799: FLdPr Me
  loc_BE379C: MemLdRfVar from_stack_1.global_88
  loc_BE379F: FLdPr Me
  loc_BE37A2: MemLdStr global_80
  loc_BE37A5: LitI2_Byte 1
  loc_BE37A7: FnUBound
  loc_BE37A9: CI2I4
  loc_BE37AA: ForI2 var_8C
  loc_BE37B0: LitVarStr var_9C, "  <tr valign=""top"">"
  loc_BE37B5: PopAdLdVar
  loc_BE37B6: FLdPr Me
  loc_BE37B9: MemLdRfVar from_stack_1.global_60
  loc_BE37BC: LdPrVar
  loc_BE37BE: LateMemCall
  loc_BE37C4: FLdPr Me
  loc_BE37C7: MemLdI2 global_88
  loc_BE37CA: CI4UI1
  loc_BE37CB: FLdPr Me
  loc_BE37CE: MemLdStr global_80
  loc_BE37D1: AryLock
  loc_BE37D4: Ary1LdRf
  loc_BE37D5: FStR4 var_B4
  loc_BE37D8: FLdRfVar var_BE
  loc_BE37DB: FLdPr Me
  loc_BE37DE: VCallAd Control_ID_AnaliticoOpt
  loc_BE37E1: FStAdFunc var_88
  loc_BE37E4: FLdPr var_88
  loc_BE37E7:  = Me.Value
  loc_BE37EC: LitVarI2 var_F0, 0
  loc_BE37F1: LitVarI2 var_D0, 6
  loc_BE37F6: FLdI2 var_BE
  loc_BE37F9: CVarBoolI2 var_9C
  loc_BE37FD: FLdRfVar var_100
  loc_BE3800: ImpAdCallFPR4  = IIf(, , )
  loc_BE3805: LitStr "CuentaContable"
  loc_BE3808: FLdRfVar var_100
  loc_BE380B: CI2Var
  loc_BE380C: LitI2_Byte 0
  loc_BE380E: LitI2_Byte 0
  loc_BE3810: LitStr "left"
  loc_BE3813: LitStr "Cuenta Contable: "
  loc_BE3816: FMemLdR4 var_B4(0)
  loc_BE381B: ConcatStr
  loc_BE381C: FStStrNoPop var_B8
  loc_BE381F: LitStr " - "
  loc_BE3822: ConcatStr
  loc_BE3823: FStStrNoPop var_BC
  loc_BE3826: FMemLdR4 var_B4(4)
  loc_BE382B: ConcatStr
  loc_BE382C: FStStrNoPop var_104
  loc_BE382F: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BE3834: CVarStr var_114
  loc_BE3837: PopAdLdVar
  loc_BE3838: FLdPr Me
  loc_BE383B: MemLdRfVar from_stack_1.global_60
  loc_BE383E: LdPrVar
  loc_BE3840: LateMemCall
  loc_BE3846: FFreeStr var_B8 = "": var_BC = ""
  loc_BE384F: FFree1Ad var_88
  loc_BE3852: FFreeVar var_9C = "": var_D0 = "": var_F0 = "": var_100 = ""
  loc_BE385F: FMemLdRf 0
  loc_BE3864: FStR4 var_128
  loc_BE3867: FLdRfVar var_BE
  loc_BE386A: FLdPr Me
  loc_BE386D: VCallAd Control_ID_AnaliticoOpt
  loc_BE3870: FStAdFunc var_88
  loc_BE3873: FLdPr var_88
  loc_BE3876:  = Me.Value
  loc_BE387B: FLdI2 var_BE
  loc_BE387E: FFree1Ad var_88
  loc_BE3881: BranchF loc_BE3905
  loc_BE3884: LitStr "SubTotalesCuco"
  loc_BE3887: LitI2_Byte 0
  loc_BE3889: LitI2_Byte 0
  loc_BE388B: LitI2_Byte 0
  loc_BE388D: LitStr "right"
  loc_BE3890: FMemLdR4 var_128(28)
  loc_BE3895: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BE389A: CVarStr var_D0
  loc_BE389D: PopAdLdVar
  loc_BE389E: FLdPr Me
  loc_BE38A1: MemLdRfVar from_stack_1.global_60
  loc_BE38A4: LdPrVar
  loc_BE38A6: LateMemCall
  loc_BE38AC: FFree1Var var_D0 = ""
  loc_BE38AF: LitStr "SubTotalesCuco"
  loc_BE38B2: LitI2_Byte 0
  loc_BE38B4: LitI2_Byte 0
  loc_BE38B6: LitI2_Byte 0
  loc_BE38B8: LitStr "right"
  loc_BE38BB: FMemLdR4 var_128(32)
  loc_BE38C0: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BE38C5: CVarStr var_D0
  loc_BE38C8: PopAdLdVar
  loc_BE38C9: FLdPr Me
  loc_BE38CC: MemLdRfVar from_stack_1.global_60
  loc_BE38CF: LdPrVar
  loc_BE38D1: LateMemCall
  loc_BE38D7: FFree1Var var_D0 = ""
  loc_BE38DA: LitStr "SubTotalesCuco"
  loc_BE38DD: LitI2_Byte 0
  loc_BE38DF: LitI2_Byte 0
  loc_BE38E1: LitI2_Byte 0
  loc_BE38E3: LitStr "right"
  loc_BE38E6: FMemLdR4 var_128(36)
  loc_BE38EB: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BE38F0: CVarStr var_D0
  loc_BE38F3: PopAdLdVar
  loc_BE38F4: FLdPr Me
  loc_BE38F7: MemLdRfVar from_stack_1.global_60
  loc_BE38FA: LdPrVar
  loc_BE38FC: LateMemCall
  loc_BE3902: FFree1Var var_D0 = ""
  loc_BE3905: LitStr "SubTotalesCuco"
  loc_BE3908: LitI2_Byte 0
  loc_BE390A: LitI2_Byte 0
  loc_BE390C: LitI2_Byte 0
  loc_BE390E: LitStr "right"
  loc_BE3911: FMemLdR4 var_128(40)
  loc_BE3916: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BE391B: CVarStr var_D0
  loc_BE391E: PopAdLdVar
  loc_BE391F: FLdPr Me
  loc_BE3922: MemLdRfVar from_stack_1.global_60
  loc_BE3925: LdPrVar
  loc_BE3927: LateMemCall
  loc_BE392D: FFree1Var var_D0 = ""
  loc_BE3930: LitI4 0
  loc_BE3935: FStR4 var_128
  loc_BE3938: LitVarStr var_9C, "     </tr>"
  loc_BE393D: PopAdLdVar
  loc_BE393E: FLdPr Me
  loc_BE3941: MemLdRfVar from_stack_1.global_60
  loc_BE3944: LdPrVar
  loc_BE3946: LateMemCall
  loc_BE394C: LitI2_Byte 1
  loc_BE394E: FLdPr Me
  loc_BE3951: MemLdRfVar from_stack_1.global_90
  loc_BE3954: FMemLdR4 var_B4(8)
  loc_BE3959: LitI2_Byte 1
  loc_BE395B: FnUBound
  loc_BE395D: CI2I4
  loc_BE395E: ForI2 var_12C
  loc_BE3964: FLdPr Me
  loc_BE3967: MemLdI2 global_90
  loc_BE396A: CI4UI1
  loc_BE396B: FMemLdR4 var_B4(8)
  loc_BE3970: AryLock
  loc_BE3973: Ary1LdRf
  loc_BE3974: FStR4 var_134
  loc_BE3977: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_BE397C: PopAdLdVar
  loc_BE397D: FLdPr Me
  loc_BE3980: MemLdRfVar from_stack_1.global_60
  loc_BE3983: LdPrVar
  loc_BE3985: LateMemCall
  loc_BE398B: FLdRfVar var_BE
  loc_BE398E: FLdPr Me
  loc_BE3991: VCallAd Control_ID_AnaliticoOpt
  loc_BE3994: FStAdFunc var_88
  loc_BE3997: FLdPr var_88
  loc_BE399A:  = Me.Value
  loc_BE399F: LitVarI2 var_F0, 0
  loc_BE39A4: LitVarI2 var_D0, 6
  loc_BE39A9: FLdI2 var_BE
  loc_BE39AC: CVarBoolI2 var_9C
  loc_BE39B0: FLdRfVar var_100
  loc_BE39B3: ImpAdCallFPR4  = IIf(, , )
  loc_BE39B8: LitStr "Concepto"
  loc_BE39BB: FLdRfVar var_100
  loc_BE39BE: CI2Var
  loc_BE39BF: LitI2_Byte 0
  loc_BE39C1: LitI2_Byte 0
  loc_BE39C3: LitStr "left"
  loc_BE39C6: FMemLdR4 var_134(0)
  loc_BE39CB: LitStr " - "
  loc_BE39CE: ConcatStr
  loc_BE39CF: FStStrNoPop var_B8
  loc_BE39D2: FMemLdR4 var_134(4)
  loc_BE39D7: ConcatStr
  loc_BE39D8: FStStrNoPop var_BC
  loc_BE39DB: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BE39E0: CVarStr var_114
  loc_BE39E3: PopAdLdVar
  loc_BE39E4: FLdPr Me
  loc_BE39E7: MemLdRfVar from_stack_1.global_60
  loc_BE39EA: LdPrVar
  loc_BE39EC: LateMemCall
  loc_BE39F2: FFreeStr var_B8 = ""
  loc_BE39F9: FFree1Ad var_88
  loc_BE39FC: FFreeVar var_9C = "": var_D0 = "": var_F0 = "": var_100 = ""
  loc_BE3A09: FMemLdRf 0
  loc_BE3A0E: FStR4 var_138
  loc_BE3A11: FLdRfVar var_BE
  loc_BE3A14: FLdPr Me
  loc_BE3A17: VCallAd Control_ID_AnaliticoOpt
  loc_BE3A1A: FStAdFunc var_88
  loc_BE3A1D: FLdPr var_88
  loc_BE3A20:  = Me.Value
  loc_BE3A25: FLdI2 var_BE
  loc_BE3A28: FFree1Ad var_88
  loc_BE3A2B: BranchF loc_BE3AAF
  loc_BE3A2E: LitStr "SubTotalesConc"
  loc_BE3A31: LitI2_Byte 0
  loc_BE3A33: LitI2_Byte 0
  loc_BE3A35: LitI2_Byte 0
  loc_BE3A37: LitStr "right"
  loc_BE3A3A: FMemLdR4 var_138(28)
  loc_BE3A3F: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BE3A44: CVarStr var_D0
  loc_BE3A47: PopAdLdVar
  loc_BE3A48: FLdPr Me
  loc_BE3A4B: MemLdRfVar from_stack_1.global_60
  loc_BE3A4E: LdPrVar
  loc_BE3A50: LateMemCall
  loc_BE3A56: FFree1Var var_D0 = ""
  loc_BE3A59: LitStr "SubTotalesConc"
  loc_BE3A5C: LitI2_Byte 0
  loc_BE3A5E: LitI2_Byte 0
  loc_BE3A60: LitI2_Byte 0
  loc_BE3A62: LitStr "right"
  loc_BE3A65: FMemLdR4 var_138(32)
  loc_BE3A6A: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BE3A6F: CVarStr var_D0
  loc_BE3A72: PopAdLdVar
  loc_BE3A73: FLdPr Me
  loc_BE3A76: MemLdRfVar from_stack_1.global_60
  loc_BE3A79: LdPrVar
  loc_BE3A7B: LateMemCall
  loc_BE3A81: FFree1Var var_D0 = ""
  loc_BE3A84: LitStr "SubTotalesConc"
  loc_BE3A87: LitI2_Byte 0
  loc_BE3A89: LitI2_Byte 0
  loc_BE3A8B: LitI2_Byte 0
  loc_BE3A8D: LitStr "right"
  loc_BE3A90: FMemLdR4 var_138(36)
  loc_BE3A95: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BE3A9A: CVarStr var_D0
  loc_BE3A9D: PopAdLdVar
  loc_BE3A9E: FLdPr Me
  loc_BE3AA1: MemLdRfVar from_stack_1.global_60
  loc_BE3AA4: LdPrVar
  loc_BE3AA6: LateMemCall
  loc_BE3AAC: FFree1Var var_D0 = ""
  loc_BE3AAF: LitStr "SubTotalesConc"
  loc_BE3AB2: LitI2_Byte 0
  loc_BE3AB4: LitI2_Byte 0
  loc_BE3AB6: LitI2_Byte 0
  loc_BE3AB8: LitStr "right"
  loc_BE3ABB: FMemLdR4 var_138(40)
  loc_BE3AC0: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BE3AC5: CVarStr var_D0
  loc_BE3AC8: PopAdLdVar
  loc_BE3AC9: FLdPr Me
  loc_BE3ACC: MemLdRfVar from_stack_1.global_60
  loc_BE3ACF: LdPrVar
  loc_BE3AD1: LateMemCall
  loc_BE3AD7: FFree1Var var_D0 = ""
  loc_BE3ADA: LitI4 0
  loc_BE3ADF: FStR4 var_138
  loc_BE3AE2: LitVarStr var_9C, "     </tr>"
  loc_BE3AE7: PopAdLdVar
  loc_BE3AE8: FLdPr Me
  loc_BE3AEB: MemLdRfVar from_stack_1.global_60
  loc_BE3AEE: LdPrVar
  loc_BE3AF0: LateMemCall
  loc_BE3AF6: FLdRfVar var_BE
  loc_BE3AF9: FLdPr Me
  loc_BE3AFC: VCallAd Control_ID_AnaliticoOpt
  loc_BE3AFF: FStAdFunc var_88
  loc_BE3B02: FLdPr var_88
  loc_BE3B05:  = Me.Value
  loc_BE3B0A: FLdI2 var_BE
  loc_BE3B0D: FFree1Ad var_88
  loc_BE3B10: BranchF loc_BE3D5F
  loc_BE3B13: LitI4 1
  loc_BE3B18: FLdPr Me
  loc_BE3B1B: MemLdRfVar from_stack_1.global_92
  loc_BE3B1E: FMemLdR4 var_134(12)
  loc_BE3B23: LitI2_Byte 1
  loc_BE3B25: FnUBound
  loc_BE3B27: ForI4 var_140
  loc_BE3B2D: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_BE3B32: PopAdLdVar
  loc_BE3B33: FLdPr Me
  loc_BE3B36: MemLdRfVar from_stack_1.global_60
  loc_BE3B39: LdPrVar
  loc_BE3B3B: LateMemCall
  loc_BE3B41: FLdPr Me
  loc_BE3B44: MemLdStr global_92
  loc_BE3B47: FMemLdR4 var_134(12)
  loc_BE3B4C: AryLock
  loc_BE3B4F: Ary1LdRf
  loc_BE3B50: FStR4 var_148
  loc_BE3B53: LitStr vbNullString
  loc_BE3B56: LitI2_Byte 0
  loc_BE3B58: LitI2_Byte 0
  loc_BE3B5A: LitI2_Byte 0
  loc_BE3B5C: LitStr "center"
  loc_BE3B5F: FMemLdR4 var_148(0)
  loc_BE3B64: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BE3B69: CVarStr var_D0
  loc_BE3B6C: PopAdLdVar
  loc_BE3B6D: FLdPr Me
  loc_BE3B70: MemLdRfVar from_stack_1.global_60
  loc_BE3B73: LdPrVar
  loc_BE3B75: LateMemCall
  loc_BE3B7B: FFree1Var var_D0 = ""
  loc_BE3B7E: LitStr vbNullString
  loc_BE3B81: LitI2_Byte 0
  loc_BE3B83: LitI2_Byte 0
  loc_BE3B85: LitI2_Byte 0
  loc_BE3B87: LitStr "right"
  loc_BE3B8A: FMemLdR4 var_148(4)
  loc_BE3B8F: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BE3B94: CVarStr var_D0
  loc_BE3B97: PopAdLdVar
  loc_BE3B98: FLdPr Me
  loc_BE3B9B: MemLdRfVar from_stack_1.global_60
  loc_BE3B9E: LdPrVar
  loc_BE3BA0: LateMemCall
  loc_BE3BA6: FFree1Var var_D0 = ""
  loc_BE3BA9: LitStr vbNullString
  loc_BE3BAC: LitI2_Byte 0
  loc_BE3BAE: LitI2_Byte 0
  loc_BE3BB0: LitI2_Byte 0
  loc_BE3BB2: LitStr "right"
  loc_BE3BB5: FMemLdR4 var_148(8)
  loc_BE3BBA: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BE3BBF: CVarStr var_D0
  loc_BE3BC2: PopAdLdVar
  loc_BE3BC3: FLdPr Me
  loc_BE3BC6: MemLdRfVar from_stack_1.global_60
  loc_BE3BC9: LdPrVar
  loc_BE3BCB: LateMemCall
  loc_BE3BD1: FFree1Var var_D0 = ""
  loc_BE3BD4: LitStr vbNullString
  loc_BE3BD7: LitI2_Byte 0
  loc_BE3BD9: LitI2_Byte 0
  loc_BE3BDB: LitI2_Byte 0
  loc_BE3BDD: LitStr "right"
  loc_BE3BE0: FMemLdR4 var_148(12)
  loc_BE3BE5: LitStr "/"
  loc_BE3BE8: ConcatStr
  loc_BE3BE9: FStStrNoPop var_B8
  loc_BE3BEC: FMemLdR4 var_148(16)
  loc_BE3BF1: ConcatStr
  loc_BE3BF2: FStStrNoPop var_BC
  loc_BE3BF5: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BE3BFA: CVarStr var_D0
  loc_BE3BFD: PopAdLdVar
  loc_BE3BFE: FLdPr Me
  loc_BE3C01: MemLdRfVar from_stack_1.global_60
  loc_BE3C04: LdPrVar
  loc_BE3C06: LateMemCall
  loc_BE3C0C: FFreeStr var_B8 = ""
  loc_BE3C13: FFree1Var var_D0 = ""
  loc_BE3C16: LitStr vbNullString
  loc_BE3C19: LitI2_Byte 0
  loc_BE3C1B: LitI2_Byte 0
  loc_BE3C1D: LitI2_Byte 0
  loc_BE3C1F: LitStr "left"
  loc_BE3C22: FMemLdR4 var_148(20)
  loc_BE3C27: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BE3C2C: CVarStr var_D0
  loc_BE3C2F: PopAdLdVar
  loc_BE3C30: FLdPr Me
  loc_BE3C33: MemLdRfVar from_stack_1.global_60
  loc_BE3C36: LdPrVar
  loc_BE3C38: LateMemCall
  loc_BE3C3E: FFree1Var var_D0 = ""
  loc_BE3C41: LitStr vbNullString
  loc_BE3C44: LitI2_Byte 0
  loc_BE3C46: LitI2_Byte 0
  loc_BE3C48: LitI2_Byte 0
  loc_BE3C4A: LitStr "left"
  loc_BE3C4D: FMemLdR4 var_148(24)
  loc_BE3C52: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BE3C57: CVarStr var_D0
  loc_BE3C5A: PopAdLdVar
  loc_BE3C5B: FLdPr Me
  loc_BE3C5E: MemLdRfVar from_stack_1.global_60
  loc_BE3C61: LdPrVar
  loc_BE3C63: LateMemCall
  loc_BE3C69: FFree1Var var_D0 = ""
  loc_BE3C6C: FLdRfVar var_BE
  loc_BE3C6F: FLdPr Me
  loc_BE3C72: VCallAd Control_ID_AnaliticoOpt
  loc_BE3C75: FStAdFunc var_88
  loc_BE3C78: FLdPr var_88
  loc_BE3C7B:  = Me.Value
  loc_BE3C80: FLdI2 var_BE
  loc_BE3C83: FFree1Ad var_88
  loc_BE3C86: BranchF loc_BE3D0A
  loc_BE3C89: LitStr vbNullString
  loc_BE3C8C: LitI2_Byte 0
  loc_BE3C8E: LitI2_Byte 0
  loc_BE3C90: LitI2_Byte 0
  loc_BE3C92: LitStr "right"
  loc_BE3C95: FMemLdR4 var_148(28)
  loc_BE3C9A: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BE3C9F: CVarStr var_D0
  loc_BE3CA2: PopAdLdVar
  loc_BE3CA3: FLdPr Me
  loc_BE3CA6: MemLdRfVar from_stack_1.global_60
  loc_BE3CA9: LdPrVar
  loc_BE3CAB: LateMemCall
  loc_BE3CB1: FFree1Var var_D0 = ""
  loc_BE3CB4: LitStr vbNullString
  loc_BE3CB7: LitI2_Byte 0
  loc_BE3CB9: LitI2_Byte 0
  loc_BE3CBB: LitI2_Byte 0
  loc_BE3CBD: LitStr "right"
  loc_BE3CC0: FMemLdR4 var_148(32)
  loc_BE3CC5: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BE3CCA: CVarStr var_D0
  loc_BE3CCD: PopAdLdVar
  loc_BE3CCE: FLdPr Me
  loc_BE3CD1: MemLdRfVar from_stack_1.global_60
  loc_BE3CD4: LdPrVar
  loc_BE3CD6: LateMemCall
  loc_BE3CDC: FFree1Var var_D0 = ""
  loc_BE3CDF: LitStr vbNullString
  loc_BE3CE2: LitI2_Byte 0
  loc_BE3CE4: LitI2_Byte 0
  loc_BE3CE6: LitI2_Byte 0
  loc_BE3CE8: LitStr "right"
  loc_BE3CEB: FMemLdR4 var_148(36)
  loc_BE3CF0: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BE3CF5: CVarStr var_D0
  loc_BE3CF8: PopAdLdVar
  loc_BE3CF9: FLdPr Me
  loc_BE3CFC: MemLdRfVar from_stack_1.global_60
  loc_BE3CFF: LdPrVar
  loc_BE3D01: LateMemCall
  loc_BE3D07: FFree1Var var_D0 = ""
  loc_BE3D0A: LitStr vbNullString
  loc_BE3D0D: LitI2_Byte 0
  loc_BE3D0F: LitI2_Byte 0
  loc_BE3D11: LitI2_Byte 0
  loc_BE3D13: LitStr "right"
  loc_BE3D16: FMemLdR4 var_148(40)
  loc_BE3D1B: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BE3D20: CVarStr var_D0
  loc_BE3D23: PopAdLdVar
  loc_BE3D24: FLdPr Me
  loc_BE3D27: MemLdRfVar from_stack_1.global_60
  loc_BE3D2A: LdPrVar
  loc_BE3D2C: LateMemCall
  loc_BE3D32: FFree1Var var_D0 = ""
  loc_BE3D35: LitI4 0
  loc_BE3D3A: FStR4 var_148
  loc_BE3D3D: AryUnlock
  loc_BE3D40: LitVarStr var_9C, "     </tr>"
  loc_BE3D45: PopAdLdVar
  loc_BE3D46: FLdPr Me
  loc_BE3D49: MemLdRfVar from_stack_1.global_60
  loc_BE3D4C: LdPrVar
  loc_BE3D4E: LateMemCall
  loc_BE3D54: FLdPr Me
  loc_BE3D57: MemLdRfVar from_stack_1.global_92
  loc_BE3D5A: NextI4 var_140, loc_BE3B2D
  loc_BE3D5F: LitI4 0
  loc_BE3D64: FStR4 var_134
  loc_BE3D67: AryUnlock
  loc_BE3D6A: FLdPr Me
  loc_BE3D6D: MemLdRfVar from_stack_1.global_90
  loc_BE3D70: NextI2 var_12C, loc_BE3964
  loc_BE3D75: LitI4 0
  loc_BE3D7A: FStR4 var_B4
  loc_BE3D7D: AryUnlock
  loc_BE3D80: FLdPr Me
  loc_BE3D83: MemLdRfVar from_stack_1.global_88
  loc_BE3D86: NextI2 var_8C, loc_BE37B0
  loc_BE3D8B: LitVarStr var_9C, "    <tr class=""Totales"">"
  loc_BE3D90: PopAdLdVar
  loc_BE3D91: FLdPr Me
  loc_BE3D94: MemLdRfVar from_stack_1.global_60
  loc_BE3D97: LdPrVar
  loc_BE3D99: LateMemCall
  loc_BE3D9F: LitI4 1
  loc_BE3DA4: FLdPr Me
  loc_BE3DA7: MemLdStr global_84
  loc_BE3DAA: AryLock
  loc_BE3DAD: Ary1LdRf
  loc_BE3DAE: FStR4 var_150
  loc_BE3DB1: FLdRfVar var_BE
  loc_BE3DB4: FLdPr Me
  loc_BE3DB7: VCallAd Control_ID_AnaliticoOpt
  loc_BE3DBA: FStAdFunc var_88
  loc_BE3DBD: FLdPr var_88
  loc_BE3DC0:  = Me.Value
  loc_BE3DC5: LitVarI2 var_F0, 0
  loc_BE3DCA: LitVarI2 var_D0, 6
  loc_BE3DCF: FLdI2 var_BE
  loc_BE3DD2: CVarBoolI2 var_9C
  loc_BE3DD6: FLdRfVar var_100
  loc_BE3DD9: ImpAdCallFPR4  = IIf(, , )
  loc_BE3DDE: LitStr vbNullString
  loc_BE3DE1: FLdRfVar var_100
  loc_BE3DE4: CI2Var
  loc_BE3DE5: LitI2_Byte 0
  loc_BE3DE7: LitI2_Byte 0
  loc_BE3DE9: LitStr "right"
  loc_BE3DEC: LitStr "TOTALES"
  loc_BE3DEF: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BE3DF4: CVarStr var_114
  loc_BE3DF7: PopAdLdVar
  loc_BE3DF8: FLdPr Me
  loc_BE3DFB: MemLdRfVar from_stack_1.global_60
  loc_BE3DFE: LdPrVar
  loc_BE3E00: LateMemCall
  loc_BE3E06: FFree1Ad var_88
  loc_BE3E09: FFreeVar var_9C = "": var_D0 = "": var_F0 = "": var_100 = ""
  loc_BE3E16: FLdRfVar var_BE
  loc_BE3E19: FLdPr Me
  loc_BE3E1C: VCallAd Control_ID_AnaliticoOpt
  loc_BE3E1F: FStAdFunc var_88
  loc_BE3E22: FLdPr var_88
  loc_BE3E25:  = Me.Value
  loc_BE3E2A: FLdI2 var_BE
  loc_BE3E2D: FFree1Ad var_88
  loc_BE3E30: BranchF loc_BE3EB4
  loc_BE3E33: LitStr vbNullString
  loc_BE3E36: LitI2_Byte 0
  loc_BE3E38: LitI2_Byte 0
  loc_BE3E3A: LitI2_Byte 0
  loc_BE3E3C: LitStr "right"
  loc_BE3E3F: FMemLdR4 var_150(28)
  loc_BE3E44: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BE3E49: CVarStr var_D0
  loc_BE3E4C: PopAdLdVar
  loc_BE3E4D: FLdPr Me
  loc_BE3E50: MemLdRfVar from_stack_1.global_60
  loc_BE3E53: LdPrVar
  loc_BE3E55: LateMemCall
  loc_BE3E5B: FFree1Var var_D0 = ""
  loc_BE3E5E: LitStr vbNullString
  loc_BE3E61: LitI2_Byte 0
  loc_BE3E63: LitI2_Byte 0
  loc_BE3E65: LitI2_Byte 0
  loc_BE3E67: LitStr "right"
  loc_BE3E6A: FMemLdR4 var_150(32)
  loc_BE3E6F: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BE3E74: CVarStr var_D0
  loc_BE3E77: PopAdLdVar
  loc_BE3E78: FLdPr Me
  loc_BE3E7B: MemLdRfVar from_stack_1.global_60
  loc_BE3E7E: LdPrVar
  loc_BE3E80: LateMemCall
  loc_BE3E86: FFree1Var var_D0 = ""
  loc_BE3E89: LitStr vbNullString
  loc_BE3E8C: LitI2_Byte 0
  loc_BE3E8E: LitI2_Byte 0
  loc_BE3E90: LitI2_Byte 0
  loc_BE3E92: LitStr "right"
  loc_BE3E95: FMemLdR4 var_150(36)
  loc_BE3E9A: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BE3E9F: CVarStr var_D0
  loc_BE3EA2: PopAdLdVar
  loc_BE3EA3: FLdPr Me
  loc_BE3EA6: MemLdRfVar from_stack_1.global_60
  loc_BE3EA9: LdPrVar
  loc_BE3EAB: LateMemCall
  loc_BE3EB1: FFree1Var var_D0 = ""
  loc_BE3EB4: LitStr vbNullString
  loc_BE3EB7: LitI2_Byte 0
  loc_BE3EB9: LitI2_Byte 0
  loc_BE3EBB: LitI2_Byte 0
  loc_BE3EBD: LitStr "right"
  loc_BE3EC0: FMemLdR4 var_150(40)
  loc_BE3EC5: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BE3ECA: CVarStr var_D0
  loc_BE3ECD: PopAdLdVar
  loc_BE3ECE: FLdPr Me
  loc_BE3ED1: MemLdRfVar from_stack_1.global_60
  loc_BE3ED4: LdPrVar
  loc_BE3ED6: LateMemCall
  loc_BE3EDC: FFree1Var var_D0 = ""
  loc_BE3EDF: LitI4 0
  loc_BE3EE4: FStR4 var_150
  loc_BE3EE7: AryUnlock
  loc_BE3EEA: LitVarStr var_9C, "     </tr>"
  loc_BE3EEF: PopAdLdVar
  loc_BE3EF0: FLdPr Me
  loc_BE3EF3: MemLdRfVar from_stack_1.global_60
  loc_BE3EF6: LdPrVar
  loc_BE3EF8: LateMemCall
  loc_BE3EFE: Call Proc_177_30_A0CB48()
  loc_BE3F03: FLdPr Me
  loc_BE3F06: MemLdRfVar from_stack_1.global_60
  loc_BE3F09: LdPrVar
  loc_BE3F0B: LateMemCall
  loc_BE3F11: LitStr vbNullString
  loc_BE3F14: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_BE3F19: ExitProcHresult
  loc_BE3F1A: CVarStr arg_684C
End Sub

Public Sub GeneraXLS() '9C17F4
  'Data Table: 4CC9E0
  loc_9C17DC: LitI2_Byte 0
  loc_9C17DE: FLdPr Me
  loc_9C17E1: MemStI2 bLogos
  loc_9C17E4: Call GeneraHTML()
  loc_9C17E9: LitI2_Byte &HFF
  loc_9C17EB: FLdPr Me
  loc_9C17EE: MemStI2 bLogos
  loc_9C17F1: ExitProcHresult
End Sub

Private Function Proc_177_26_A9EA0C() 'A9EA0C
  'Data Table: 4CC9E0
  loc_A9E954: FLdPr Me
  loc_A9E957: MemLdI2 global_88
  loc_A9E95A: LitI2_Byte 1
  loc_A9E95C: AddI2
  loc_A9E95D: FLdPr Me
  loc_A9E960: MemStI2 global_88
  loc_A9E963: LitI2_Byte 0
  loc_A9E965: FLdPr Me
  loc_A9E968: MemStI2 global_90
  loc_A9E96B: LitI4 0
  loc_A9E970: FLdPr Me
  loc_A9E973: MemLdI2 global_88
  loc_A9E976: CI4UI1
  loc_A9E977: FLdPr Me
  loc_A9E97A: MemLdRfVar from_stack_1.global_80
  loc_A9E97D: RedimPreserve
  loc_A9E987: FLdRfVar var_94
  loc_A9E98A: FLdPr Me
  loc_A9E98D: MemLdRfVar from_stack_1.global_76
  loc_A9E990: NewIfNullPr clsconcepto
  loc_A9E993: from_stack_1 = clsconcepto.CodiCuco
  loc_A9E998: LitI2_Byte 0
  loc_A9E99A: LitVar_Missing var_B8
  loc_A9E99D: LitI2_Byte 0
  loc_A9E99F: FLdVar var_94
  loc_A9E9A3: FLdPr Me
  loc_A9E9A6: MemLdI2 global_88
  loc_A9E9A9: CI4UI1
  loc_A9E9AA: FLdPr Me
  loc_A9E9AD: MemLdStr global_80
  loc_A9E9B0: AryLock
  loc_A9E9B3: Ary1LdPr
  loc_A9E9B4: MemLdRfVar from_stack_1.global_0
  loc_A9E9B7: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_A9E9BC: AryUnlock
  loc_A9E9BF: FFreeVar var_94 = ""
  loc_A9E9C6: FLdRfVar var_94
  loc_A9E9C9: FLdPr Me
  loc_A9E9CC: MemLdRfVar from_stack_1.global_76
  loc_A9E9CF: NewIfNullPr clsconcepto
  loc_A9E9D2: from_stack_1 = clsconcepto.DetaCuco
  loc_A9E9D7: LitI2_Byte 0
  loc_A9E9D9: LitVar_Missing var_B8
  loc_A9E9DC: LitI2_Byte 0
  loc_A9E9DE: FLdVar var_94
  loc_A9E9E2: FLdPr Me
  loc_A9E9E5: MemLdI2 global_88
  loc_A9E9E8: CI4UI1
  loc_A9E9E9: FLdPr Me
  loc_A9E9EC: MemLdStr global_80
  loc_A9E9EF: AryLock
  loc_A9E9F2: Ary1LdPr
  loc_A9E9F3: MemLdRfVar from_stack_1.global_4
  loc_A9E9F6: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_A9E9FB: AryUnlock
  loc_A9E9FE: FFreeVar var_94 = ""
  loc_A9EA05: Call Proc_177_27_AC1368()
  loc_A9EA0A: ExitProcHresult
End Function

Private Function Proc_177_27_AC1368() 'AC1368
  'Data Table: 4CC9E0
  loc_AC1274: FLdPr Me
  loc_AC1277: MemLdI2 global_90
  loc_AC127A: LitI2_Byte 1
  loc_AC127C: AddI2
  loc_AC127D: FLdPr Me
  loc_AC1280: MemStI2 global_90
  loc_AC1283: LitI4 0
  loc_AC1288: FLdPr Me
  loc_AC128B: MemStI4 global_92
  loc_AC128E: LitI4 0
  loc_AC1293: FLdPr Me
  loc_AC1296: MemLdI2 global_90
  loc_AC1299: CI4UI1
  loc_AC129A: FLdPr Me
  loc_AC129D: MemLdI2 global_88
  loc_AC12A0: CI4UI1
  loc_AC12A1: FLdPr Me
  loc_AC12A4: MemLdStr global_80
  loc_AC12A7: Ary1LdPr
  loc_AC12A8: MemLdRfVar from_stack_1.global_8
  loc_AC12AB: RedimPreserve
  loc_AC12B5: FLdPr Me
  loc_AC12B8: MemLdRfVar from_stack_1.global_76
  loc_AC12BB: NewIfNullAd
  loc_AC12BE: FStAd var_88 
  loc_AC12C2: FLdRfVar var_8C
  loc_AC12C5: FLdPr var_88
  loc_AC12C8: from_stack_1 = clsconcepto.CodiConc
  loc_AC12CD: LitI2_Byte 0
  loc_AC12CF: LitVar_Missing var_C4
  loc_AC12D2: LitI2_Byte 0
  loc_AC12D4: FLdZeroAd var_8C
  loc_AC12D7: CVarStr var_A4
  loc_AC12DA: PopAdLdVar
  loc_AC12DB: FLdPr Me
  loc_AC12DE: MemLdI2 global_90
  loc_AC12E1: CI4UI1
  loc_AC12E2: FLdPr Me
  loc_AC12E5: MemLdI2 global_88
  loc_AC12E8: CI4UI1
  loc_AC12E9: FLdPr Me
  loc_AC12EC: MemLdStr global_80
  loc_AC12EF: AryLock
  loc_AC12F2: Ary1LdPr
  loc_AC12F3: MemLdStr global_8
  loc_AC12F6: AryLock
  loc_AC12F9: Ary1LdPr
  loc_AC12FA: MemLdRfVar from_stack_1.global_0
  loc_AC12FD: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_AC1302: AryUnlock
  loc_AC1305: AryUnlock
  loc_AC1308: FFreeVar var_A4 = ""
  loc_AC130F: FLdRfVar var_8C
  loc_AC1312: FLdPr var_88
  loc_AC1315: from_stack_1 = clsconcepto.DetaConc
  loc_AC131A: LitI2_Byte 0
  loc_AC131C: LitVar_Missing var_C4
  loc_AC131F: LitI2_Byte 0
  loc_AC1321: FLdZeroAd var_8C
  loc_AC1324: CVarStr var_A4
  loc_AC1327: PopAdLdVar
  loc_AC1328: FLdPr Me
  loc_AC132B: MemLdI2 global_90
  loc_AC132E: CI4UI1
  loc_AC132F: FLdPr Me
  loc_AC1332: MemLdI2 global_88
  loc_AC1335: CI4UI1
  loc_AC1336: FLdPr Me
  loc_AC1339: MemLdStr global_80
  loc_AC133C: AryLock
  loc_AC133F: Ary1LdPr
  loc_AC1340: MemLdStr global_8
  loc_AC1343: AryLock
  loc_AC1346: Ary1LdPr
  loc_AC1347: MemLdRfVar from_stack_1.global_4
  loc_AC134A: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_AC134F: AryUnlock
  loc_AC1352: AryUnlock
  loc_AC1355: FFreeVar var_A4 = ""
  loc_AC135C: LitNothing
  loc_AC135E: FStAd var_88 
  loc_AC1362: Call Proc_177_28_B43FC8()
  loc_AC1367: ExitProcHresult
End Function

Private Function Proc_177_28_B43FC8() 'B43FC8
  'Data Table: 4CC9E0
  loc_B43C84: FLdPr Me
  loc_B43C87: MemLdStr global_92
  loc_B43C8A: LitI4 1
  loc_B43C8F: AddI4
  loc_B43C90: FLdPr Me
  loc_B43C93: MemStI4 global_92
  loc_B43C96: LitI4 0
  loc_B43C9B: FLdPr Me
  loc_B43C9E: MemLdStr global_92
  loc_B43CA1: FLdPr Me
  loc_B43CA4: MemLdI2 global_90
  loc_B43CA7: CI4UI1
  loc_B43CA8: FLdPr Me
  loc_B43CAB: MemLdI2 global_88
  loc_B43CAE: CI4UI1
  loc_B43CAF: FLdPr Me
  loc_B43CB2: MemLdStr global_80
  loc_B43CB5: Ary1LdPr
  loc_B43CB6: MemLdStr global_8
  loc_B43CB9: Ary1LdPr
  loc_B43CBA: MemLdRfVar from_stack_1.global_12
  loc_B43CBD: RedimPreserve
  loc_B43CC7: FLdPr Me
  loc_B43CCA: MemLdStr global_92
  loc_B43CCD: FLdPr Me
  loc_B43CD0: MemLdI2 global_90
  loc_B43CD3: CI4UI1
  loc_B43CD4: FLdPr Me
  loc_B43CD7: MemLdI2 global_88
  loc_B43CDA: CI4UI1
  loc_B43CDB: FLdPr Me
  loc_B43CDE: MemLdStr global_80
  loc_B43CE1: AryLock
  loc_B43CE4: Ary1LdPr
  loc_B43CE5: MemLdStr global_8
  loc_B43CE8: AryLock
  loc_B43CEB: Ary1LdPr
  loc_B43CEC: MemLdStr global_12
  loc_B43CEF: AryLock
  loc_B43CF2: Ary1LdRf
  loc_B43CF3: FStR4 var_94
  loc_B43CF6: FLdRfVar var_98
  loc_B43CF9: FLdPr Me
  loc_B43CFC: MemLdRfVar from_stack_1.global_76
  loc_B43CFF: NewIfNullPr clsconcepto
  loc_B43D02: from_stack_1 = clsconcepto.FeenAcpa
  loc_B43D07: LitI2_Byte 0
  loc_B43D09: LitVar_Missing var_C8
  loc_B43D0C: LitI2_Byte 0
  loc_B43D0E: FLdZeroAd var_98
  loc_B43D11: CVarStr var_A8
  loc_B43D14: PopAdLdVar
  loc_B43D15: FMemLdRf unk_4CC94D
  loc_B43D1A: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B43D1F: FFreeVar var_A8 = ""
  loc_B43D26: FLdRfVar var_CA
  loc_B43D29: FLdPr Me
  loc_B43D2C: MemLdRfVar from_stack_1.global_76
  loc_B43D2F: NewIfNullPr clsconcepto
  loc_B43D32: from_stack_1 = clsconcepto.CodiOfic
  loc_B43D37: LitI2_Byte 0
  loc_B43D39: LitVar_Missing var_A8
  loc_B43D3C: LitI2_Byte 0
  loc_B43D3E: FLdUI1
  loc_B43D42: CVarUI1
  loc_B43D46: PopAdLdVar
  loc_B43D47: FMemLdRf unk_4CC94D
  loc_B43D4C: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B43D51: FFree1Var var_A8 = ""
  loc_B43D54: FLdRfVar var_98
  loc_B43D57: FLdPr Me
  loc_B43D5A: MemLdRfVar from_stack_1.global_76
  loc_B43D5D: NewIfNullPr clsconcepto
  loc_B43D60: from_stack_1 = clsconcepto.CuenCtct
  loc_B43D65: LitI2_Byte 0
  loc_B43D67: LitVar_Missing var_C8
  loc_B43D6A: LitI2_Byte 0
  loc_B43D6C: FLdZeroAd var_98
  loc_B43D6F: CVarStr var_A8
  loc_B43D72: PopAdLdVar
  loc_B43D73: FMemLdRf unk_4CC94D
  loc_B43D78: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B43D7D: FFreeVar var_A8 = ""
  loc_B43D84: FLdRfVar var_CA
  loc_B43D87: FLdPr Me
  loc_B43D8A: MemLdRfVar from_stack_1.global_76
  loc_B43D8D: NewIfNullPr clsconcepto
  loc_B43D90: from_stack_1 = clsconcepto.PeriBole
  loc_B43D95: LitI2_Byte 0
  loc_B43D97: LitVar_Missing var_A8
  loc_B43D9A: LitI2_Byte 0
  loc_B43D9C: FLdI2 var_CA
  loc_B43D9F: CVarI2 var_B8
  loc_B43DA2: PopAdLdVar
  loc_B43DA3: FMemLdRf unk_4CC94D
  loc_B43DA8: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B43DAD: FFree1Var var_A8 = ""
  loc_B43DB0: FLdRfVar var_E0
  loc_B43DB3: FLdPr Me
  loc_B43DB6: MemLdRfVar from_stack_1.global_76
  loc_B43DB9: NewIfNullPr clsconcepto
  loc_B43DBC: from_stack_1 = clsconcepto.NumeBole
  loc_B43DC1: LitI2_Byte 0
  loc_B43DC3: LitVar_Missing var_A8
  loc_B43DC6: LitI2_Byte 0
  loc_B43DC8: ILdRf var_E0
  loc_B43DCB: CVarI4
  loc_B43DCF: PopAdLdVar
  loc_B43DD0: FMemLdRf unk_4CC94D
  loc_B43DD5: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B43DDA: FFree1Var var_A8 = ""
  loc_B43DDD: FLdRfVar var_A8
  loc_B43DE0: FLdPr Me
  loc_B43DE3: MemLdRfVar from_stack_1.global_76
  loc_B43DE6: NewIfNullPr clsconcepto
  loc_B43DE9: from_stack_1 = clsconcepto.DetaPers
  loc_B43DEE: LitI2_Byte 0
  loc_B43DF0: LitVar_Missing var_C8
  loc_B43DF3: LitI2_Byte 0
  loc_B43DF5: FLdVar var_A8
  loc_B43DF9: FMemLdRf unk_4CC94D
  loc_B43DFE: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B43E03: FFreeVar var_A8 = ""
  loc_B43E0A: FLdRfVar var_A8
  loc_B43E0D: FLdPr Me
  loc_B43E10: MemLdRfVar from_stack_1.global_76
  loc_B43E13: NewIfNullPr clsconcepto
  loc_B43E16: from_stack_1 = clsconcepto.ExpeBole
  loc_B43E1B: LitI2_Byte 0
  loc_B43E1D: LitVar_Missing var_C8
  loc_B43E20: LitI2_Byte 0
  loc_B43E22: FLdVar var_A8
  loc_B43E26: FMemLdRf unk_4CC94D
  loc_B43E2B: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B43E30: FFreeVar var_A8 = ""
  loc_B43E37: FLdRfVar var_CA
  loc_B43E3A: FLdPr Me
  loc_B43E3D: VCallAd Control_ID_AnaliticoOpt
  loc_B43E40: FStAdFunc var_E4
  loc_B43E43: FLdPr var_E4
  loc_B43E46:  = Me.Value
  loc_B43E4B: FLdI2 var_CA
  loc_B43E4E: FFree1Ad var_E4
  loc_B43E51: BranchF loc_B43F50
  loc_B43E54: FLdRfVar var_EC
  loc_B43E57: FLdPr Me
  loc_B43E5A: MemLdRfVar from_stack_1.global_76
  loc_B43E5D: NewIfNullPr clsconcepto
  loc_B43E60: from_stack_1 = clsconcepto.CapiDepa
  loc_B43E65: LitI2_Byte 0
  loc_B43E67: FLdPr Me
  loc_B43E6A: MemLdI2 global_90
  loc_B43E6D: CI4UI1
  loc_B43E6E: FLdPr Me
  loc_B43E71: MemLdI2 global_88
  loc_B43E74: CI4UI1
  loc_B43E75: FLdPr Me
  loc_B43E78: MemLdStr global_80
  loc_B43E7B: AryLock
  loc_B43E7E: Ary1LdPr
  loc_B43E7F: MemLdStr global_8
  loc_B43E82: AryLock
  loc_B43E85: Ary1LdPr
  loc_B43E86: MemLdRfVar from_stack_1.global_44
  loc_B43E89: CVarRef
  loc_B43E8E: LitI2_Byte &HFF
  loc_B43E90: FLdFPR8 var_EC
  loc_B43E93: CVarR8
  loc_B43E97: PopAdLdVar
  loc_B43E98: FMemLdRf unk_4CC94D
  loc_B43E9D: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B43EA2: AryUnlock
  loc_B43EA5: AryUnlock
  loc_B43EA8: FLdRfVar var_EC
  loc_B43EAB: FLdPr Me
  loc_B43EAE: MemLdRfVar from_stack_1.global_76
  loc_B43EB1: NewIfNullPr clsconcepto
  loc_B43EB4: from_stack_1 = clsconcepto.DecaDepa
  loc_B43EB9: LitI2_Byte 0
  loc_B43EBB: FLdPr Me
  loc_B43EBE: MemLdI2 global_90
  loc_B43EC1: CI4UI1
  loc_B43EC2: FLdPr Me
  loc_B43EC5: MemLdI2 global_88
  loc_B43EC8: CI4UI1
  loc_B43EC9: FLdPr Me
  loc_B43ECC: MemLdStr global_80
  loc_B43ECF: AryLock
  loc_B43ED2: Ary1LdPr
  loc_B43ED3: MemLdStr global_8
  loc_B43ED6: AryLock
  loc_B43ED9: Ary1LdPr
  loc_B43EDA: MemLdRfVar from_stack_1.global_48
  loc_B43EDD: CVarRef
  loc_B43EE2: LitI2_Byte &HFF
  loc_B43EE4: FLdFPR8 var_EC
  loc_B43EE7: CVarR8
  loc_B43EEB: PopAdLdVar
  loc_B43EEC: FMemLdRf unk_4CC94D
  loc_B43EF1: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B43EF6: AryUnlock
  loc_B43EF9: AryUnlock
  loc_B43EFC: FLdRfVar var_EC
  loc_B43EFF: FLdPr Me
  loc_B43F02: MemLdRfVar from_stack_1.global_76
  loc_B43F05: NewIfNullPr clsconcepto
  loc_B43F08: from_stack_1 = clsconcepto.ExenDepa
  loc_B43F0D: LitI2_Byte 0
  loc_B43F0F: FLdPr Me
  loc_B43F12: MemLdI2 global_90
  loc_B43F15: CI4UI1
  loc_B43F16: FLdPr Me
  loc_B43F19: MemLdI2 global_88
  loc_B43F1C: CI4UI1
  loc_B43F1D: FLdPr Me
  loc_B43F20: MemLdStr global_80
  loc_B43F23: AryLock
  loc_B43F26: Ary1LdPr
  loc_B43F27: MemLdStr global_8
  loc_B43F2A: AryLock
  loc_B43F2D: Ary1LdPr
  loc_B43F2E: MemLdRfVar from_stack_1.bLogos
  loc_B43F31: CVarRef
  loc_B43F36: LitI2_Byte &HFF
  loc_B43F38: FLdFPR8 var_EC
  loc_B43F3B: CVarR8
  loc_B43F3F: PopAdLdVar
  loc_B43F40: FMemLdRf unk_4CC94D
  loc_B43F45: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B43F4A: AryUnlock
  loc_B43F4D: AryUnlock
  loc_B43F50: FLdRfVar var_A8
  loc_B43F53: FLdPr Me
  loc_B43F56: MemLdRfVar from_stack_1.global_76
  loc_B43F59: NewIfNullPr clsconcepto
  loc_B43F5C: from_stack_1 = clsconcepto.TotaDepa
  loc_B43F61: LitI2_Byte 0
  loc_B43F63: FLdPr Me
  loc_B43F66: MemLdI2 global_90
  loc_B43F69: CI4UI1
  loc_B43F6A: FLdPr Me
  loc_B43F6D: MemLdI2 global_88
  loc_B43F70: CI4UI1
  loc_B43F71: FLdPr Me
  loc_B43F74: MemLdStr global_80
  loc_B43F77: AryLock
  loc_B43F7A: Ary1LdPr
  loc_B43F7B: MemLdStr global_8
  loc_B43F7E: AryLock
  loc_B43F81: Ary1LdPr
  loc_B43F82: MemLdRfVar from_stack_1.global_56
  loc_B43F85: CVarRef
  loc_B43F8A: LitI2_Byte &HFF
  loc_B43F8C: FLdVar var_A8
  loc_B43F90: FMemLdRf unk_4CC94D
  loc_B43F95: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B43F9A: AryUnlock
  loc_B43F9D: AryUnlock
  loc_B43FA0: FFree1Var var_A8 = ""
  loc_B43FA3: LitI4 0
  loc_B43FA8: FStR4 var_94
  loc_B43FAB: AryUnlock
  loc_B43FAE: AryUnlock
  loc_B43FB1: AryUnlock
  loc_B43FB4: LitI2_Byte 1
  loc_B43FB6: PopTmpLdAd2 var_CA
  loc_B43FB9: FLdPr Me
  loc_B43FBC: MemLdRfVar from_stack_1.global_76
  loc_B43FBF: NewIfNullPr clsconcepto
  loc_B43FC2: Call clsconcepto.Move(from_stack_1v)
  loc_B43FC7: ExitProcHresult
End Function

Private Function Proc_177_29_C2D920() 'C2D920
  'Data Table: 4CC9E0
  loc_C2CDF4: LitVarStr var_94, "<html>"
  loc_C2CDF9: PopAdLdVar
  loc_C2CDFA: FLdPr Me
  loc_C2CDFD: MemLdRfVar from_stack_1.global_60
  loc_C2CE00: LdPrVar
  loc_C2CE02: LateMemCall
  loc_C2CE08: LitVarStr var_94, "<head>"
  loc_C2CE0D: PopAdLdVar
  loc_C2CE0E: FLdPr Me
  loc_C2CE11: MemLdRfVar from_stack_1.global_60
  loc_C2CE14: LdPrVar
  loc_C2CE16: LateMemCall
  loc_C2CE1C: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_C2CE21: PopAdLdVar
  loc_C2CE22: FLdPr Me
  loc_C2CE25: MemLdRfVar from_stack_1.global_60
  loc_C2CE28: LdPrVar
  loc_C2CE2A: LateMemCall
  loc_C2CE30: LitStr "<title>"
  loc_C2CE33: FLdRfVar var_A8
  loc_C2CE36: FLdPr Me
  loc_C2CE39:  = Me.Caption
  loc_C2CE3E: ILdRf var_A8
  loc_C2CE41: ConcatStr
  loc_C2CE42: FStStrNoPop var_AC
  loc_C2CE45: LitStr "</title>"
  loc_C2CE48: ConcatStr
  loc_C2CE49: CVarStr var_BC
  loc_C2CE4C: PopAdLdVar
  loc_C2CE4D: FLdPr Me
  loc_C2CE50: MemLdRfVar from_stack_1.global_60
  loc_C2CE53: LdPrVar
  loc_C2CE55: LateMemCall
  loc_C2CE5B: FFreeStr var_A8 = ""
  loc_C2CE62: FFree1Var var_BC = ""
  loc_C2CE65: LitVarStr var_94, "<style type=""text/css"">"
  loc_C2CE6A: PopAdLdVar
  loc_C2CE6B: FLdPr Me
  loc_C2CE6E: MemLdRfVar from_stack_1.global_60
  loc_C2CE71: LdPrVar
  loc_C2CE73: LateMemCall
  loc_C2CE79: LitVarStr var_94, ".Titulo1 {"
  loc_C2CE7E: PopAdLdVar
  loc_C2CE7F: FLdPr Me
  loc_C2CE82: MemLdRfVar from_stack_1.global_60
  loc_C2CE85: LdPrVar
  loc_C2CE87: LateMemCall
  loc_C2CE8D: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_C2CE92: PopAdLdVar
  loc_C2CE93: FLdPr Me
  loc_C2CE96: MemLdRfVar from_stack_1.global_60
  loc_C2CE99: LdPrVar
  loc_C2CE9B: LateMemCall
  loc_C2CEA1: LitVarStr var_94, " font-size: 18px;"
  loc_C2CEA6: PopAdLdVar
  loc_C2CEA7: FLdPr Me
  loc_C2CEAA: MemLdRfVar from_stack_1.global_60
  loc_C2CEAD: LdPrVar
  loc_C2CEAF: LateMemCall
  loc_C2CEB5: LitVarStr var_94, " font-weight: bold;"
  loc_C2CEBA: PopAdLdVar
  loc_C2CEBB: FLdPr Me
  loc_C2CEBE: MemLdRfVar from_stack_1.global_60
  loc_C2CEC1: LdPrVar
  loc_C2CEC3: LateMemCall
  loc_C2CEC9: LitVarStr var_94, "}"
  loc_C2CECE: PopAdLdVar
  loc_C2CECF: FLdPr Me
  loc_C2CED2: MemLdRfVar from_stack_1.global_60
  loc_C2CED5: LdPrVar
  loc_C2CED7: LateMemCall
  loc_C2CEDD: LitVarStr var_94, ".Titulo2 {"
  loc_C2CEE2: PopAdLdVar
  loc_C2CEE3: FLdPr Me
  loc_C2CEE6: MemLdRfVar from_stack_1.global_60
  loc_C2CEE9: LdPrVar
  loc_C2CEEB: LateMemCall
  loc_C2CEF1: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_C2CEF6: PopAdLdVar
  loc_C2CEF7: FLdPr Me
  loc_C2CEFA: MemLdRfVar from_stack_1.global_60
  loc_C2CEFD: LdPrVar
  loc_C2CEFF: LateMemCall
  loc_C2CF05: LitVarStr var_94, " font-size: 14px;"
  loc_C2CF0A: PopAdLdVar
  loc_C2CF0B: FLdPr Me
  loc_C2CF0E: MemLdRfVar from_stack_1.global_60
  loc_C2CF11: LdPrVar
  loc_C2CF13: LateMemCall
  loc_C2CF19: LitVarStr var_94, " font-weight: bold;"
  loc_C2CF1E: PopAdLdVar
  loc_C2CF1F: FLdPr Me
  loc_C2CF22: MemLdRfVar from_stack_1.global_60
  loc_C2CF25: LdPrVar
  loc_C2CF27: LateMemCall
  loc_C2CF2D: LitVarStr var_94, "}"
  loc_C2CF32: PopAdLdVar
  loc_C2CF33: FLdPr Me
  loc_C2CF36: MemLdRfVar from_stack_1.global_60
  loc_C2CF39: LdPrVar
  loc_C2CF3B: LateMemCall
  loc_C2CF41: LitVarStr var_94, ".Normal {"
  loc_C2CF46: PopAdLdVar
  loc_C2CF47: FLdPr Me
  loc_C2CF4A: MemLdRfVar from_stack_1.global_60
  loc_C2CF4D: LdPrVar
  loc_C2CF4F: LateMemCall
  loc_C2CF55: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_C2CF5A: PopAdLdVar
  loc_C2CF5B: FLdPr Me
  loc_C2CF5E: MemLdRfVar from_stack_1.global_60
  loc_C2CF61: LdPrVar
  loc_C2CF63: LateMemCall
  loc_C2CF69: LitVarStr var_94, " font-size: 12px;"
  loc_C2CF6E: PopAdLdVar
  loc_C2CF6F: FLdPr Me
  loc_C2CF72: MemLdRfVar from_stack_1.global_60
  loc_C2CF75: LdPrVar
  loc_C2CF77: LateMemCall
  loc_C2CF7D: LitVarStr var_94, " font-style: normal;"
  loc_C2CF82: PopAdLdVar
  loc_C2CF83: FLdPr Me
  loc_C2CF86: MemLdRfVar from_stack_1.global_60
  loc_C2CF89: LdPrVar
  loc_C2CF8B: LateMemCall
  loc_C2CF91: LitVarStr var_94, " font-weight: normal;"
  loc_C2CF96: PopAdLdVar
  loc_C2CF97: FLdPr Me
  loc_C2CF9A: MemLdRfVar from_stack_1.global_60
  loc_C2CF9D: LdPrVar
  loc_C2CF9F: LateMemCall
  loc_C2CFA5: LitVarStr var_94, " font-variant: normal;"
  loc_C2CFAA: PopAdLdVar
  loc_C2CFAB: FLdPr Me
  loc_C2CFAE: MemLdRfVar from_stack_1.global_60
  loc_C2CFB1: LdPrVar
  loc_C2CFB3: LateMemCall
  loc_C2CFB9: LitVarStr var_94, "}"
  loc_C2CFBE: PopAdLdVar
  loc_C2CFBF: FLdPr Me
  loc_C2CFC2: MemLdRfVar from_stack_1.global_60
  loc_C2CFC5: LdPrVar
  loc_C2CFC7: LateMemCall
  loc_C2CFCD: LitVarStr var_94, ".Encabezado {"
  loc_C2CFD2: PopAdLdVar
  loc_C2CFD3: FLdPr Me
  loc_C2CFD6: MemLdRfVar from_stack_1.global_60
  loc_C2CFD9: LdPrVar
  loc_C2CFDB: LateMemCall
  loc_C2CFE1: LitVarStr var_94, " font-family: ""Times New Roman"", Times, serif;"
  loc_C2CFE6: PopAdLdVar
  loc_C2CFE7: FLdPr Me
  loc_C2CFEA: MemLdRfVar from_stack_1.global_60
  loc_C2CFED: LdPrVar
  loc_C2CFEF: LateMemCall
  loc_C2CFF5: LitVarStr var_94, " font-size: 11px;"
  loc_C2CFFA: PopAdLdVar
  loc_C2CFFB: FLdPr Me
  loc_C2CFFE: MemLdRfVar from_stack_1.global_60
  loc_C2D001: LdPrVar
  loc_C2D003: LateMemCall
  loc_C2D009: LitVarStr var_94, " font-weight: bold;"
  loc_C2D00E: PopAdLdVar
  loc_C2D00F: FLdPr Me
  loc_C2D012: MemLdRfVar from_stack_1.global_60
  loc_C2D015: LdPrVar
  loc_C2D017: LateMemCall
  loc_C2D01D: LitVarStr var_94, " background-color: #D3D3D3;"
  loc_C2D022: PopAdLdVar
  loc_C2D023: FLdPr Me
  loc_C2D026: MemLdRfVar from_stack_1.global_60
  loc_C2D029: LdPrVar
  loc_C2D02B: LateMemCall
  loc_C2D031: LitVarStr var_94, "}"
  loc_C2D036: PopAdLdVar
  loc_C2D037: FLdPr Me
  loc_C2D03A: MemLdRfVar from_stack_1.global_60
  loc_C2D03D: LdPrVar
  loc_C2D03F: LateMemCall
  loc_C2D045: LitVarStr var_94, ".LineaDato {"
  loc_C2D04A: PopAdLdVar
  loc_C2D04B: FLdPr Me
  loc_C2D04E: MemLdRfVar from_stack_1.global_60
  loc_C2D051: LdPrVar
  loc_C2D053: LateMemCall
  loc_C2D059: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C2D05E: PopAdLdVar
  loc_C2D05F: FLdPr Me
  loc_C2D062: MemLdRfVar from_stack_1.global_60
  loc_C2D065: LdPrVar
  loc_C2D067: LateMemCall
  loc_C2D06D: LitVarStr var_94, " font-size: 10px;"
  loc_C2D072: PopAdLdVar
  loc_C2D073: FLdPr Me
  loc_C2D076: MemLdRfVar from_stack_1.global_60
  loc_C2D079: LdPrVar
  loc_C2D07B: LateMemCall
  loc_C2D081: LitVarStr var_94, "}"
  loc_C2D086: PopAdLdVar
  loc_C2D087: FLdPr Me
  loc_C2D08A: MemLdRfVar from_stack_1.global_60
  loc_C2D08D: LdPrVar
  loc_C2D08F: LateMemCall
  loc_C2D095: LitVarStr var_94, ".CuentaContable {"
  loc_C2D09A: PopAdLdVar
  loc_C2D09B: FLdPr Me
  loc_C2D09E: MemLdRfVar from_stack_1.global_60
  loc_C2D0A1: LdPrVar
  loc_C2D0A3: LateMemCall
  loc_C2D0A9: LitVarStr var_94, " font-family: ""Times New Roman"", Times, serif;"
  loc_C2D0AE: PopAdLdVar
  loc_C2D0AF: FLdPr Me
  loc_C2D0B2: MemLdRfVar from_stack_1.global_60
  loc_C2D0B5: LdPrVar
  loc_C2D0B7: LateMemCall
  loc_C2D0BD: LitVarStr var_94, " font-size: 11px;"
  loc_C2D0C2: PopAdLdVar
  loc_C2D0C3: FLdPr Me
  loc_C2D0C6: MemLdRfVar from_stack_1.global_60
  loc_C2D0C9: LdPrVar
  loc_C2D0CB: LateMemCall
  loc_C2D0D1: LitVarStr var_94, " font-weight: bold;"
  loc_C2D0D6: PopAdLdVar
  loc_C2D0D7: FLdPr Me
  loc_C2D0DA: MemLdRfVar from_stack_1.global_60
  loc_C2D0DD: LdPrVar
  loc_C2D0DF: LateMemCall
  loc_C2D0E5: LitVarStr var_94, " background-color: #E9E9E9;"
  loc_C2D0EA: PopAdLdVar
  loc_C2D0EB: FLdPr Me
  loc_C2D0EE: MemLdRfVar from_stack_1.global_60
  loc_C2D0F1: LdPrVar
  loc_C2D0F3: LateMemCall
  loc_C2D0F9: LitVarStr var_94, "}"
  loc_C2D0FE: PopAdLdVar
  loc_C2D0FF: FLdPr Me
  loc_C2D102: MemLdRfVar from_stack_1.global_60
  loc_C2D105: LdPrVar
  loc_C2D107: LateMemCall
  loc_C2D10D: LitVarStr var_94, ".Concepto {"
  loc_C2D112: PopAdLdVar
  loc_C2D113: FLdPr Me
  loc_C2D116: MemLdRfVar from_stack_1.global_60
  loc_C2D119: LdPrVar
  loc_C2D11B: LateMemCall
  loc_C2D121: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C2D126: PopAdLdVar
  loc_C2D127: FLdPr Me
  loc_C2D12A: MemLdRfVar from_stack_1.global_60
  loc_C2D12D: LdPrVar
  loc_C2D12F: LateMemCall
  loc_C2D135: LitVarStr var_94, " font-size: 11px;"
  loc_C2D13A: PopAdLdVar
  loc_C2D13B: FLdPr Me
  loc_C2D13E: MemLdRfVar from_stack_1.global_60
  loc_C2D141: LdPrVar
  loc_C2D143: LateMemCall
  loc_C2D149: LitVarStr var_94, " font-weight: bold;"
  loc_C2D14E: PopAdLdVar
  loc_C2D14F: FLdPr Me
  loc_C2D152: MemLdRfVar from_stack_1.global_60
  loc_C2D155: LdPrVar
  loc_C2D157: LateMemCall
  loc_C2D15D: LitVarStr var_94, " font-style: italic;"
  loc_C2D162: PopAdLdVar
  loc_C2D163: FLdPr Me
  loc_C2D166: MemLdRfVar from_stack_1.global_60
  loc_C2D169: LdPrVar
  loc_C2D16B: LateMemCall
  loc_C2D171: LitVarStr var_94, "}"
  loc_C2D176: PopAdLdVar
  loc_C2D177: FLdPr Me
  loc_C2D17A: MemLdRfVar from_stack_1.global_60
  loc_C2D17D: LdPrVar
  loc_C2D17F: LateMemCall
  loc_C2D185: LitVarStr var_94, ".Totales {"
  loc_C2D18A: PopAdLdVar
  loc_C2D18B: FLdPr Me
  loc_C2D18E: MemLdRfVar from_stack_1.global_60
  loc_C2D191: LdPrVar
  loc_C2D193: LateMemCall
  loc_C2D199: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C2D19E: PopAdLdVar
  loc_C2D19F: FLdPr Me
  loc_C2D1A2: MemLdRfVar from_stack_1.global_60
  loc_C2D1A5: LdPrVar
  loc_C2D1A7: LateMemCall
  loc_C2D1AD: LitVarStr var_94, " font-size: 12px;"
  loc_C2D1B2: PopAdLdVar
  loc_C2D1B3: FLdPr Me
  loc_C2D1B6: MemLdRfVar from_stack_1.global_60
  loc_C2D1B9: LdPrVar
  loc_C2D1BB: LateMemCall
  loc_C2D1C1: LitVarStr var_94, " font-weight: bold;"
  loc_C2D1C6: PopAdLdVar
  loc_C2D1C7: FLdPr Me
  loc_C2D1CA: MemLdRfVar from_stack_1.global_60
  loc_C2D1CD: LdPrVar
  loc_C2D1CF: LateMemCall
  loc_C2D1D5: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_C2D1DA: PopAdLdVar
  loc_C2D1DB: FLdPr Me
  loc_C2D1DE: MemLdRfVar from_stack_1.global_60
  loc_C2D1E1: LdPrVar
  loc_C2D1E3: LateMemCall
  loc_C2D1E9: LitVarStr var_94, "}"
  loc_C2D1EE: PopAdLdVar
  loc_C2D1EF: FLdPr Me
  loc_C2D1F2: MemLdRfVar from_stack_1.global_60
  loc_C2D1F5: LdPrVar
  loc_C2D1F7: LateMemCall
  loc_C2D1FD: LitVarStr var_94, ".SubTotalesCuco {"
  loc_C2D202: PopAdLdVar
  loc_C2D203: FLdPr Me
  loc_C2D206: MemLdRfVar from_stack_1.global_60
  loc_C2D209: LdPrVar
  loc_C2D20B: LateMemCall
  loc_C2D211: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C2D216: PopAdLdVar
  loc_C2D217: FLdPr Me
  loc_C2D21A: MemLdRfVar from_stack_1.global_60
  loc_C2D21D: LdPrVar
  loc_C2D21F: LateMemCall
  loc_C2D225: LitVarStr var_94, " font-size: 10px;"
  loc_C2D22A: PopAdLdVar
  loc_C2D22B: FLdPr Me
  loc_C2D22E: MemLdRfVar from_stack_1.global_60
  loc_C2D231: LdPrVar
  loc_C2D233: LateMemCall
  loc_C2D239: LitVarStr var_94, " font-weight: bold;"
  loc_C2D23E: PopAdLdVar
  loc_C2D23F: FLdPr Me
  loc_C2D242: MemLdRfVar from_stack_1.global_60
  loc_C2D245: LdPrVar
  loc_C2D247: LateMemCall
  loc_C2D24D: LitVarStr var_94, " background-color: #ABD8EF;"
  loc_C2D252: PopAdLdVar
  loc_C2D253: FLdPr Me
  loc_C2D256: MemLdRfVar from_stack_1.global_60
  loc_C2D259: LdPrVar
  loc_C2D25B: LateMemCall
  loc_C2D261: LitVarStr var_94, "}"
  loc_C2D266: PopAdLdVar
  loc_C2D267: FLdPr Me
  loc_C2D26A: MemLdRfVar from_stack_1.global_60
  loc_C2D26D: LdPrVar
  loc_C2D26F: LateMemCall
  loc_C2D275: LitVarStr var_94, ".SubTotalesConc {"
  loc_C2D27A: PopAdLdVar
  loc_C2D27B: FLdPr Me
  loc_C2D27E: MemLdRfVar from_stack_1.global_60
  loc_C2D281: LdPrVar
  loc_C2D283: LateMemCall
  loc_C2D289: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C2D28E: PopAdLdVar
  loc_C2D28F: FLdPr Me
  loc_C2D292: MemLdRfVar from_stack_1.global_60
  loc_C2D295: LdPrVar
  loc_C2D297: LateMemCall
  loc_C2D29D: LitVarStr var_94, " font-size: 10px;"
  loc_C2D2A2: PopAdLdVar
  loc_C2D2A3: FLdPr Me
  loc_C2D2A6: MemLdRfVar from_stack_1.global_60
  loc_C2D2A9: LdPrVar
  loc_C2D2AB: LateMemCall
  loc_C2D2B1: LitVarStr var_94, " font-weight: bold;"
  loc_C2D2B6: PopAdLdVar
  loc_C2D2B7: FLdPr Me
  loc_C2D2BA: MemLdRfVar from_stack_1.global_60
  loc_C2D2BD: LdPrVar
  loc_C2D2BF: LateMemCall
  loc_C2D2C5: LitVarStr var_94, " background-color: #D2EAF7;"
  loc_C2D2CA: PopAdLdVar
  loc_C2D2CB: FLdPr Me
  loc_C2D2CE: MemLdRfVar from_stack_1.global_60
  loc_C2D2D1: LdPrVar
  loc_C2D2D3: LateMemCall
  loc_C2D2D9: LitVarStr var_94, "}"
  loc_C2D2DE: PopAdLdVar
  loc_C2D2DF: FLdPr Me
  loc_C2D2E2: MemLdRfVar from_stack_1.global_60
  loc_C2D2E5: LdPrVar
  loc_C2D2E7: LateMemCall
  loc_C2D2ED: LitVarStr var_94, "THEAD { display: table-header-group; }"
  loc_C2D2F2: PopAdLdVar
  loc_C2D2F3: FLdPr Me
  loc_C2D2F6: MemLdRfVar from_stack_1.global_60
  loc_C2D2F9: LdPrVar
  loc_C2D2FB: LateMemCall
  loc_C2D301: LitVarStr var_94, "</style>"
  loc_C2D306: PopAdLdVar
  loc_C2D307: FLdPr Me
  loc_C2D30A: MemLdRfVar from_stack_1.global_60
  loc_C2D30D: LdPrVar
  loc_C2D30F: LateMemCall
  loc_C2D315: LitI4 0
  loc_C2D31A: FStStrCopy var_AC
  loc_C2D31D: FLdRfVar var_AC
  loc_C2D320: LitI4 0
  loc_C2D325: FStStrCopy var_A8
  loc_C2D328: FLdRfVar var_A8
  loc_C2D32B: LitI2_Byte 0
  loc_C2D32D: PopTmpLdAd2 var_BE
  loc_C2D330: FLdPr Me
  loc_C2D333: MemLdRfVar from_stack_1.global_60
  loc_C2D336: ImpAdCallFPR4  = Proc_57_7_B5E738(, )
  loc_C2D33B: FFreeStr var_A8 = ""
  loc_C2D342: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_C2D347: PopAdLdVar
  loc_C2D348: FLdPr Me
  loc_C2D34B: MemLdRfVar from_stack_1.global_60
  loc_C2D34E: LdPrVar
  loc_C2D350: LateMemCall
  loc_C2D356: LitVarStr var_94, "  <tr valign=""middle"">"
  loc_C2D35B: PopAdLdVar
  loc_C2D35C: FLdPr Me
  loc_C2D35F: MemLdRfVar from_stack_1.global_60
  loc_C2D362: LdPrVar
  loc_C2D364: LateMemCall
  loc_C2D36A: LitVarStr var_94, "    <th width=""100" & Chr(37) & """ colspan=""3"" align=""center"" valign=""middle""><p>"
  loc_C2D36F: PopAdLdVar
  loc_C2D370: FLdPr Me
  loc_C2D373: MemLdRfVar from_stack_1.global_60
  loc_C2D376: LdPrVar
  loc_C2D378: LateMemCall
  loc_C2D37E: FLdPr Me
  loc_C2D381: MemLdI2 bLogos
  loc_C2D384: BranchF loc_C2D3DF
  loc_C2D387: LitStr " <img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_C2D38A: LitI2_Byte &H5F
  loc_C2D38C: CStrUI1
  loc_C2D38E: FStStrNoPop var_A8
  loc_C2D391: ConcatStr
  loc_C2D392: FStStrNoPop var_AC
  loc_C2D395: LitStr """ height="""
  loc_C2D398: ConcatStr
  loc_C2D399: FStStrNoPop var_C4
  loc_C2D39C: LitI2_Byte &H3C
  loc_C2D39E: CStrUI1
  loc_C2D3A0: FStStrNoPop var_C8
  loc_C2D3A3: ConcatStr
  loc_C2D3A4: FStStrNoPop var_CC
  loc_C2D3A7: LitStr """ align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>"
  loc_C2D3AA: ConcatStr
  loc_C2D3AB: FStStrNoPop var_D0
  loc_C2D3AE: LitStr "Municipalidad de Guaymallén"
  loc_C2D3B1: ConcatStr
  loc_C2D3B2: FStStrNoPop var_D4
  loc_C2D3B5: LitStr "</p>"
  loc_C2D3B8: ConcatStr
  loc_C2D3B9: CVarStr var_BC
  loc_C2D3BC: PopAdLdVar
  loc_C2D3BD: FLdPr Me
  loc_C2D3C0: MemLdRfVar from_stack_1.global_60
  loc_C2D3C3: LdPrVar
  loc_C2D3C5: LateMemCall
  loc_C2D3CB: FFreeStr var_A8 = "": var_AC = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = ""
  loc_C2D3DC: FFree1Var var_BC = ""
  loc_C2D3DF: LitStr "    <p>"
  loc_C2D3E2: FLdRfVar var_A8
  loc_C2D3E5: FLdPr Me
  loc_C2D3E8:  = Me.Caption
  loc_C2D3ED: ILdRf var_A8
  loc_C2D3F0: ConcatStr
  loc_C2D3F1: FStStrNoPop var_AC
  loc_C2D3F4: LitStr "</p></th>"
  loc_C2D3F7: ConcatStr
  loc_C2D3F8: CVarStr var_BC
  loc_C2D3FB: PopAdLdVar
  loc_C2D3FC: FLdPr Me
  loc_C2D3FF: MemLdRfVar from_stack_1.global_60
  loc_C2D402: LdPrVar
  loc_C2D404: LateMemCall
  loc_C2D40A: FFreeStr var_A8 = ""
  loc_C2D411: FFree1Var var_BC = ""
  loc_C2D414: LitVarStr var_94, "  </tr>"
  loc_C2D419: PopAdLdVar
  loc_C2D41A: FLdPr Me
  loc_C2D41D: MemLdRfVar from_stack_1.global_60
  loc_C2D420: LdPrVar
  loc_C2D422: LateMemCall
  loc_C2D428: LitVarStr var_94, "  <tr>"
  loc_C2D42D: PopAdLdVar
  loc_C2D42E: FLdPr Me
  loc_C2D431: MemLdRfVar from_stack_1.global_60
  loc_C2D434: LdPrVar
  loc_C2D436: LateMemCall
  loc_C2D43C: LitVarStr var_94, "    <th colspan=""3"" align=""center"" valign=""middle""><hr></th>"
  loc_C2D441: PopAdLdVar
  loc_C2D442: FLdPr Me
  loc_C2D445: MemLdRfVar from_stack_1.global_60
  loc_C2D448: LdPrVar
  loc_C2D44A: LateMemCall
  loc_C2D450: LitVarStr var_94, "  </tr>"
  loc_C2D455: PopAdLdVar
  loc_C2D456: FLdPr Me
  loc_C2D459: MemLdRfVar from_stack_1.global_60
  loc_C2D45C: LdPrVar
  loc_C2D45E: LateMemCall
  loc_C2D464: LitVarStr var_94, "  <tr valign=""top"" class=""Normal"">"
  loc_C2D469: PopAdLdVar
  loc_C2D46A: FLdPr Me
  loc_C2D46D: MemLdRfVar from_stack_1.global_60
  loc_C2D470: LdPrVar
  loc_C2D472: LateMemCall
  loc_C2D478: FLdRfVar var_A8
  loc_C2D47B: FLdPr Me
  loc_C2D47E: VCallAd Control_ID_DetaCucoLbl
  loc_C2D481: FStAdFunc var_D8
  loc_C2D484: FLdPr var_D8
  loc_C2D487:  = Me.Caption
  loc_C2D48C: ILdRf var_A8
  loc_C2D48F: LitStr vbNullString
  loc_C2D492: NeStr
  loc_C2D494: FFree1Str var_A8
  loc_C2D497: FFree1Ad var_D8
  loc_C2D49A: BranchF loc_C2D511
  loc_C2D49D: LitStr "    <td align=""left""><strong>Cuenta Contable: </strong>"
  loc_C2D4A0: FLdPr Me
  loc_C2D4A3: VCallAd Control_ID_IngrConcMsk
  loc_C2D4A6: FStAdFunc var_D8
  loc_C2D4A9: FLdPr var_D8
  loc_C2D4AC: LateIdLdVar var_BC DispID_22 0
  loc_C2D4B3: CStrVarTmp
  loc_C2D4B4: FStStrNoPop var_A8
  loc_C2D4B7: ConcatStr
  loc_C2D4B8: FStStrNoPop var_AC
  loc_C2D4BB: LitStr " - "
  loc_C2D4BE: ConcatStr
  loc_C2D4BF: FStStrNoPop var_C8
  loc_C2D4C2: FLdRfVar var_C4
  loc_C2D4C5: FLdPr Me
  loc_C2D4C8: VCallAd Control_ID_DetaCucoLbl
  loc_C2D4CB: FStAdFunc var_DC
  loc_C2D4CE: FLdPr var_DC
  loc_C2D4D1:  = Me.Caption
  loc_C2D4D6: ILdRf var_C4
  loc_C2D4D9: ConcatStr
  loc_C2D4DA: FStStrNoPop var_CC
  loc_C2D4DD: LitStr "</td>"
  loc_C2D4E0: ConcatStr
  loc_C2D4E1: CVarStr var_EC
  loc_C2D4E4: PopAdLdVar
  loc_C2D4E5: FLdPr Me
  loc_C2D4E8: MemLdRfVar from_stack_1.global_60
  loc_C2D4EB: LdPrVar
  loc_C2D4ED: LateMemCall
  loc_C2D4F3: FFreeStr var_A8 = "": var_AC = "": var_C8 = "": var_C4 = ""
  loc_C2D500: FFreeAd var_D8 = ""
  loc_C2D507: FFreeVar var_BC = ""
  loc_C2D50E: Branch loc_C2D5BC
  loc_C2D511: FLdPr Me
  loc_C2D514: VCallAd Control_ID_IngrConcMsk
  loc_C2D517: FStAdFunc var_DC
  loc_C2D51A: FLdPr var_DC
  loc_C2D51D: LateIdLdVar var_EC DispID_13 0
  loc_C2D524: PopAd
  loc_C2D526: FLdPr Me
  loc_C2D529: VCallAd Control_ID_IngrConcMsk
  loc_C2D52C: FStAdFunc var_F0
  loc_C2D52F: FLdPr var_F0
  loc_C2D532: LateIdLdVar var_100 DispID_22 0
  loc_C2D539: PopAd
  loc_C2D53B: LitStr "    <td align=""left""><strong>Cuentas Contables que comienzan con: </strong>"
  loc_C2D53E: FLdPr Me
  loc_C2D541: VCallAd Control_ID_IngrConcMsk
  loc_C2D544: FStAdFunc var_D8
  loc_C2D547: FLdPr var_D8
  loc_C2D54A: LateIdLdVar var_BC DispID_22 0
  loc_C2D551: CStrVarTmp
  loc_C2D552: FStStrNoPop var_A8
  loc_C2D555: ConcatStr
  loc_C2D556: CVarStr var_130
  loc_C2D559: LitVarStr var_94, "."
  loc_C2D55E: FStVarCopyObj var_110
  loc_C2D561: FLdRfVar var_110
  loc_C2D564: FLdRfVar var_EC
  loc_C2D567: CI2Var
  loc_C2D568: CI4UI1
  loc_C2D569: FLdRfVar var_100
  loc_C2D56C: CStrVarTmp
  loc_C2D56D: FStStrNoPop var_AC
  loc_C2D570: FnLenStr
  loc_C2D571: SubI4
  loc_C2D572: FLdRfVar var_120
  loc_C2D575: ImpAdCallFPR4  = String(, )
  loc_C2D57A: FLdRfVar var_120
  loc_C2D57D: ConcatVar var_140
  loc_C2D581: LitVarStr var_A4, "</td>"
  loc_C2D586: ConcatVar var_150
  loc_C2D58A: PopAdLdVar
  loc_C2D58B: FLdPr Me
  loc_C2D58E: MemLdRfVar from_stack_1.global_60
  loc_C2D591: LdPrVar
  loc_C2D593: LateMemCall
  loc_C2D599: FFreeStr var_A8 = ""
  loc_C2D5A0: FFreeAd var_D8 = "": var_DC = ""
  loc_C2D5A9: FFreeVar var_BC = "": var_EC = "": var_100 = "": var_110 = "": var_130 = "": var_120 = "": var_140 = ""
  loc_C2D5BC: LitStr "    <td align=""center""><strong>Desde: </strong>"
  loc_C2D5BF: FLdPr Me
  loc_C2D5C2: VCallAd Control_ID_FeenAcpaDesdeMsk
  loc_C2D5C5: FStAdFunc var_D8
  loc_C2D5C8: FLdPr var_D8
  loc_C2D5CB: LateIdLdVar var_BC DispID_15 0
  loc_C2D5D2: CStrVarTmp
  loc_C2D5D3: FStStrNoPop var_A8
  loc_C2D5D6: ConcatStr
  loc_C2D5D7: FStStrNoPop var_AC
  loc_C2D5DA: LitStr "</td>"
  loc_C2D5DD: ConcatStr
  loc_C2D5DE: CVarStr var_EC
  loc_C2D5E1: PopAdLdVar
  loc_C2D5E2: FLdPr Me
  loc_C2D5E5: MemLdRfVar from_stack_1.global_60
  loc_C2D5E8: LdPrVar
  loc_C2D5EA: LateMemCall
  loc_C2D5F0: FFreeStr var_A8 = ""
  loc_C2D5F7: FFree1Ad var_D8
  loc_C2D5FA: FFreeVar var_BC = ""
  loc_C2D601: LitStr "    <td align=""right""><strong>Hasta: </strong>"
  loc_C2D604: FLdPr Me
  loc_C2D607: VCallAd Control_ID_FeenAcpaHastaMsk
  loc_C2D60A: FStAdFunc var_D8
  loc_C2D60D: FLdPr var_D8
  loc_C2D610: LateIdLdVar var_BC DispID_15 0
  loc_C2D617: CStrVarTmp
  loc_C2D618: FStStrNoPop var_A8
  loc_C2D61B: ConcatStr
  loc_C2D61C: FStStrNoPop var_AC
  loc_C2D61F: LitStr "</td>"
  loc_C2D622: ConcatStr
  loc_C2D623: CVarStr var_EC
  loc_C2D626: PopAdLdVar
  loc_C2D627: FLdPr Me
  loc_C2D62A: MemLdRfVar from_stack_1.global_60
  loc_C2D62D: LdPrVar
  loc_C2D62F: LateMemCall
  loc_C2D635: FFreeStr var_A8 = ""
  loc_C2D63C: FFree1Ad var_D8
  loc_C2D63F: FFreeVar var_BC = ""
  loc_C2D646: LitVarStr var_94, "  </tr>"
  loc_C2D64B: PopAdLdVar
  loc_C2D64C: FLdPr Me
  loc_C2D64F: MemLdRfVar from_stack_1.global_60
  loc_C2D652: LdPrVar
  loc_C2D654: LateMemCall
  loc_C2D65A: LitVarStr var_94, "</table>"
  loc_C2D65F: PopAdLdVar
  loc_C2D660: FLdPr Me
  loc_C2D663: MemLdRfVar from_stack_1.global_60
  loc_C2D666: LdPrVar
  loc_C2D668: LateMemCall
  loc_C2D66E: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_C2D673: PopAdLdVar
  loc_C2D674: FLdPr Me
  loc_C2D677: MemLdRfVar from_stack_1.global_60
  loc_C2D67A: LdPrVar
  loc_C2D67C: LateMemCall
  loc_C2D682: LitVarStr var_94, "  <thead>"
  loc_C2D687: PopAdLdVar
  loc_C2D688: FLdPr Me
  loc_C2D68B: MemLdRfVar from_stack_1.global_60
  loc_C2D68E: LdPrVar
  loc_C2D690: LateMemCall
  loc_C2D696: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_C2D69B: PopAdLdVar
  loc_C2D69C: FLdPr Me
  loc_C2D69F: MemLdRfVar from_stack_1.global_60
  loc_C2D6A2: LdPrVar
  loc_C2D6A4: LateMemCall
  loc_C2D6AA: FLdRfVar var_BE
  loc_C2D6AD: FLdPr Me
  loc_C2D6B0: VCallAd Control_ID_AnaliticoOpt
  loc_C2D6B3: FStAdFunc var_D8
  loc_C2D6B6: FLdPr var_D8
  loc_C2D6B9:  = Me.Value
  loc_C2D6BE: LitVarStr var_170, "    <th colspan="""
  loc_C2D6C3: LitVarI2 var_EC, 1
  loc_C2D6C8: LitVarI2 var_BC, 6
  loc_C2D6CD: FLdI2 var_BE
  loc_C2D6D0: CVarBoolI2 var_94
  loc_C2D6D4: FLdRfVar var_100
  loc_C2D6D7: ImpAdCallFPR4  = IIf(, , )
  loc_C2D6DC: FLdRfVar var_100
  loc_C2D6DF: ConcatVar var_110
  loc_C2D6E3: LitVarStr var_180, """><em>Concepto<em></th>"
  loc_C2D6E8: ConcatVar var_120
  loc_C2D6EC: PopAdLdVar
  loc_C2D6ED: FLdPr Me
  loc_C2D6F0: MemLdRfVar from_stack_1.global_60
  loc_C2D6F3: LdPrVar
  loc_C2D6F5: LateMemCall
  loc_C2D6FB: FFree1Ad var_D8
  loc_C2D6FE: FFreeVar var_94 = "": var_BC = "": var_EC = "": var_100 = "": var_110 = ""
  loc_C2D70D: FLdRfVar var_BE
  loc_C2D710: FLdPr Me
  loc_C2D713: VCallAd Control_ID_AnaliticoOpt
  loc_C2D716: FStAdFunc var_D8
  loc_C2D719: FLdPr var_D8
  loc_C2D71C:  = Me.Value
  loc_C2D721: LitVarStr var_160, vbNullString
  loc_C2D726: FStVarCopyObj var_EC
  loc_C2D729: FLdRfVar var_EC
  loc_C2D72C: LitVarStr var_A4, " rowspan=""2"""
  loc_C2D731: FStVarCopyObj var_BC
  loc_C2D734: FLdRfVar var_BC
  loc_C2D737: FLdI2 var_BE
  loc_C2D73A: CVarBoolI2 var_94
  loc_C2D73E: FLdRfVar var_100
  loc_C2D741: ImpAdCallFPR4  = IIf(, , )
  loc_C2D746: FLdRfVar var_100
  loc_C2D749: CStrVarTmp
  loc_C2D74A: FStStr var_194
  loc_C2D74D: FFree1Ad var_D8
  loc_C2D750: FFreeVar var_94 = "": var_BC = "": var_EC = ""
  loc_C2D75B: FLdRfVar var_BE
  loc_C2D75E: FLdPr Me
  loc_C2D761: VCallAd Control_ID_AnaliticoOpt
  loc_C2D764: FStAdFunc var_D8
  loc_C2D767: FLdPr var_D8
  loc_C2D76A:  = Me.Value
  loc_C2D76F: FLdI2 var_BE
  loc_C2D772: FFree1Ad var_D8
  loc_C2D775: BranchF loc_C2D813
  loc_C2D778: LitStr "    <th "
  loc_C2D77B: ILdRf var_194
  loc_C2D77E: ConcatStr
  loc_C2D77F: FStStrNoPop var_A8
  loc_C2D782: LitStr ">Capital</th>"
  loc_C2D785: ConcatStr
  loc_C2D786: CVarStr var_BC
  loc_C2D789: PopAdLdVar
  loc_C2D78A: FLdPr Me
  loc_C2D78D: MemLdRfVar from_stack_1.global_60
  loc_C2D790: LdPrVar
  loc_C2D792: LateMemCall
  loc_C2D798: FFree1Str var_A8
  loc_C2D79B: FFree1Var var_BC = ""
  loc_C2D79E: LitStr "    <th "
  loc_C2D7A1: ILdRf var_194
  loc_C2D7A4: ConcatStr
  loc_C2D7A5: FStStrNoPop var_A8
  loc_C2D7A8: LitStr ">Desc. de<br>capital</th>"
  loc_C2D7AB: ConcatStr
  loc_C2D7AC: CVarStr var_BC
  loc_C2D7AF: PopAdLdVar
  loc_C2D7B0: FLdPr Me
  loc_C2D7B3: MemLdRfVar from_stack_1.global_60
  loc_C2D7B6: LdPrVar
  loc_C2D7B8: LateMemCall
  loc_C2D7BE: FFree1Str var_A8
  loc_C2D7C1: FFree1Var var_BC = ""
  loc_C2D7C4: LitStr "    <th "
  loc_C2D7C7: ILdRf var_194
  loc_C2D7CA: ConcatStr
  loc_C2D7CB: FStStrNoPop var_A8
  loc_C2D7CE: LitStr ">Exen.</th>"
  loc_C2D7D1: ConcatStr
  loc_C2D7D2: CVarStr var_BC
  loc_C2D7D5: PopAdLdVar
  loc_C2D7D6: FLdPr Me
  loc_C2D7D9: MemLdRfVar from_stack_1.global_60
  loc_C2D7DC: LdPrVar
  loc_C2D7DE: LateMemCall
  loc_C2D7E4: FFree1Str var_A8
  loc_C2D7E7: FFree1Var var_BC = ""
  loc_C2D7EA: LitStr "    <th "
  loc_C2D7ED: ILdRf var_194
  loc_C2D7F0: ConcatStr
  loc_C2D7F1: FStStrNoPop var_A8
  loc_C2D7F4: LitStr ">Total</th>"
  loc_C2D7F7: ConcatStr
  loc_C2D7F8: CVarStr var_BC
  loc_C2D7FB: PopAdLdVar
  loc_C2D7FC: FLdPr Me
  loc_C2D7FF: MemLdRfVar from_stack_1.global_60
  loc_C2D802: LdPrVar
  loc_C2D804: LateMemCall
  loc_C2D80A: FFree1Str var_A8
  loc_C2D80D: FFree1Var var_BC = ""
  loc_C2D810: Branch loc_C2D839
  loc_C2D813: LitStr "    <th "
  loc_C2D816: ILdRf var_194
  loc_C2D819: ConcatStr
  loc_C2D81A: FStStrNoPop var_A8
  loc_C2D81D: LitStr ">Importe</th>"
  loc_C2D820: ConcatStr
  loc_C2D821: CVarStr var_BC
  loc_C2D824: PopAdLdVar
  loc_C2D825: FLdPr Me
  loc_C2D828: MemLdRfVar from_stack_1.global_60
  loc_C2D82B: LdPrVar
  loc_C2D82D: LateMemCall
  loc_C2D833: FFree1Str var_A8
  loc_C2D836: FFree1Var var_BC = ""
  loc_C2D839: LitVarStr var_94, "  </tr>"
  loc_C2D83E: PopAdLdVar
  loc_C2D83F: FLdPr Me
  loc_C2D842: MemLdRfVar from_stack_1.global_60
  loc_C2D845: LdPrVar
  loc_C2D847: LateMemCall
  loc_C2D84D: FLdRfVar var_BE
  loc_C2D850: FLdPr Me
  loc_C2D853: VCallAd Control_ID_AnaliticoOpt
  loc_C2D856: FStAdFunc var_D8
  loc_C2D859: FLdPr var_D8
  loc_C2D85C:  = Me.Value
  loc_C2D861: FLdI2 var_BE
  loc_C2D864: FFree1Ad var_D8
  loc_C2D867: BranchF loc_C2D90A
  loc_C2D86A: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_C2D86F: PopAdLdVar
  loc_C2D870: FLdPr Me
  loc_C2D873: MemLdRfVar from_stack_1.global_60
  loc_C2D876: LdPrVar
  loc_C2D878: LateMemCall
  loc_C2D87E: LitVarStr var_94, "    <th>Fecha</th>"
  loc_C2D883: PopAdLdVar
  loc_C2D884: FLdPr Me
  loc_C2D887: MemLdRfVar from_stack_1.global_60
  loc_C2D88A: LdPrVar
  loc_C2D88C: LateMemCall
  loc_C2D892: LitVarStr var_94, "    <th>Ofic.</th>"
  loc_C2D897: PopAdLdVar
  loc_C2D898: FLdPr Me
  loc_C2D89B: MemLdRfVar from_stack_1.global_60
  loc_C2D89E: LdPrVar
  loc_C2D8A0: LateMemCall
  loc_C2D8A6: LitVarStr var_94, "    <th>Cuenta</th>"
  loc_C2D8AB: PopAdLdVar
  loc_C2D8AC: FLdPr Me
  loc_C2D8AF: MemLdRfVar from_stack_1.global_60
  loc_C2D8B2: LdPrVar
  loc_C2D8B4: LateMemCall
  loc_C2D8BA: LitVarStr var_94, "    <th>Boleto</th>"
  loc_C2D8BF: PopAdLdVar
  loc_C2D8C0: FLdPr Me
  loc_C2D8C3: MemLdRfVar from_stack_1.global_60
  loc_C2D8C6: LdPrVar
  loc_C2D8C8: LateMemCall
  loc_C2D8CE: LitVarStr var_94, "    <th>Apellido y Nombre</th>"
  loc_C2D8D3: PopAdLdVar
  loc_C2D8D4: FLdPr Me
  loc_C2D8D7: MemLdRfVar from_stack_1.global_60
  loc_C2D8DA: LdPrVar
  loc_C2D8DC: LateMemCall
  loc_C2D8E2: LitVarStr var_94, "    <th>Exped.</th>"
  loc_C2D8E7: PopAdLdVar
  loc_C2D8E8: FLdPr Me
  loc_C2D8EB: MemLdRfVar from_stack_1.global_60
  loc_C2D8EE: LdPrVar
  loc_C2D8F0: LateMemCall
  loc_C2D8F6: LitVarStr var_94, "  </tr>"
  loc_C2D8FB: PopAdLdVar
  loc_C2D8FC: FLdPr Me
  loc_C2D8FF: MemLdRfVar from_stack_1.global_60
  loc_C2D902: LdPrVar
  loc_C2D904: LateMemCall
  loc_C2D90A: LitVarStr var_94, "  </thead>"
  loc_C2D90F: PopAdLdVar
  loc_C2D910: FLdPr Me
  loc_C2D913: MemLdRfVar from_stack_1.global_60
  loc_C2D916: LdPrVar
  loc_C2D918: LateMemCall
  loc_C2D91E: ExitProcHresult
End Function

Private Function Proc_177_30_A0CB48() 'A0CB48
  'Data Table: 4CC9E0
  loc_A0CB08: LitVarStr var_94, "</table>"
  loc_A0CB0D: PopAdLdVar
  loc_A0CB0E: FLdPr Me
  loc_A0CB11: MemLdRfVar from_stack_1.global_60
  loc_A0CB14: LdPrVar
  loc_A0CB16: LateMemCall
  loc_A0CB1C: LitVarStr var_94, "</body>"
  loc_A0CB21: PopAdLdVar
  loc_A0CB22: FLdPr Me
  loc_A0CB25: MemLdRfVar from_stack_1.global_60
  loc_A0CB28: LdPrVar
  loc_A0CB2A: LateMemCall
  loc_A0CB30: LitVarStr var_94, "</html>"
  loc_A0CB35: PopAdLdVar
  loc_A0CB36: FLdPr Me
  loc_A0CB39: MemLdRfVar from_stack_1.global_60
  loc_A0CB3C: LdPrVar
  loc_A0CB3E: LateMemCall
  loc_A0CB44: ExitProcHresult
  loc_A0CB45: IStI2 Proc_177_30_A0CB4800
End Function
