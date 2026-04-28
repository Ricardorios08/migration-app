VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptLiquidacionTasaJusticiaCajaForenseColegioAbogado
  Caption = "Liquidacion de tasa de justicia, caja forense y colegio de abogado"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptLiquidacionTasaJusticiaCajaForenseColegioAbogado.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 9576
  ClientHeight = 6000
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 5748
    Width = 9576
    Height = 252
    TabIndex = 14
    OleObjectBlob = "rptLiquidacionTasaJusticiaCajaForenseColegioAbogado.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 8640
    Top = 3000
    Width = 855
    Height = 735
    TabIndex = 9
    Cancel = -1  'True
    Picture = "rptLiquidacionTasaJusticiaCajaForenseColegioAbogado.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptLiquidacionTasaJusticiaCajaForenseColegioAbogado.frx":0B9C
    Left = 7800
    Top = 2160
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 4320
    Top = 2760
    Width = 3255
    Height = 1215
    TabIndex = 12
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
      Left = 1800
      Top = 360
      Width = 1335
      Height = 615
      TabIndex = 20
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
      TabIndex = 7
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
    Left = 120
    Top = 2760
    Width = 4095
    Height = 1215
    TabIndex = 11
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
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1695
      Height = 615
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
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 7455
    Height = 2655
    TabIndex = 10
    Begin VB.CheckBox DeudaCanceladaChk
      Caption = "Deuda Cancelada"
      Left = 4080
      Top = 2160
      Width = 2415
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
    Begin VB.CheckBox IncluyeChk
      Caption = "Incluye no actualizados"
      Left = 960
      Top = 2160
      Width = 2895
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
    Begin VB.Frame FechaEmisionFra
      Caption = "Fecha de Pago"
      Left = 960
      Top = 360
      Width = 3015
      Height = 1575
      TabIndex = 15
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Begin VB.CommandButton DesdeFechaCmd
        Left = 2400
        Top = 480
        Width = 375
        Height = 375
        TabIndex = 1
        Picture = "rptLiquidacionTasaJusticiaCajaForenseColegioAbogado.frx":0C00
        Style = 1
        CausesValidation = 0   'False
      End
      Begin VB.CommandButton HastaFechaCmd
        Left = 2400
        Top = 1005
        Width = 375
        Height = 375
        TabIndex = 3
        Picture = "rptLiquidacionTasaJusticiaCajaForenseColegioAbogado.frx":1142
        Style = 1
        CausesValidation = 0   'False
      End
      Begin MSMask.MaskEdBox FealBoapDesdeMsk
        Left = 960
        Top = 480
        Width = 1335
        Height = 360
        TabIndex = 0
        OleObjectBlob = "rptLiquidacionTasaJusticiaCajaForenseColegioAbogado.frx":1684
      End
      Begin MSMask.MaskEdBox FealBoapHastaMsk
        Left = 960
        Top = 1005
        Width = 1335
        Height = 360
        TabIndex = 2
        OleObjectBlob = "rptLiquidacionTasaJusticiaCajaForenseColegioAbogado.frx":1734
      End
      Begin VB.Label Label6
        Caption = "Desde:"
        Left = 120
        Top = 480
        Width = 765
        Height = 300
        TabIndex = 17
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
      Begin VB.Label Label5
        Caption = "Hasta:"
        Left = 180
        Top = 1005
        Width = 705
        Height = 300
        TabIndex = 16
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
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 4800
      Top = 480
      Width = 1575
      Height = 615
      TabIndex = 8
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
    Left = 9000
    Top = 3360
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 13
    OleObjectBlob = "rptLiquidacionTasaJusticiaCajaForenseColegioAbogado.frx":17E4
  End
  Begin VB.Label Label1
    Caption = "rptLiquidacionTasaJusticiaCajaForenseColegioAbogado.frx":1898
    Left = 120
    Top = 4080
    Width = 7215
    Height = 1215
    TabIndex = 18
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 13,8
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "rptLiquidacionTasaJusticiaCajaForenseColegioAbogado"

Public bLogos As Boolean
Public bGenerado As Boolean

Private Type UDT_1_0056237C
  bStruc(16) As Byte ' String fields: 4
End Type

Private Type UDT_2_00564204
  bStruc(40) As Byte ' String fields: 7
End Type

Private Type UDT_3_00564248
  bStruc(28) As Byte ' String fields: 4
End Type


Private Sub HastaFechaCmd_Click() 'A0E2E4
  'Data Table: 49EE30
  loc_A0E2A8: LitVar_Missing var_A4
  loc_A0E2AB: PopAdLdVar
  loc_A0E2AC: LitVarI4
  loc_A0E2B4: PopAdLdVar
  loc_A0E2B5: ImpAdLdRf MemVar_D930A4
  loc_A0E2B8: NewIfNullPr frmCalendario
  loc_A0E2BB: frmCalendario.Show from_stack_1, from_stack_2
  loc_A0E2C0: ImpAdLdRf MemVar_D93028
  loc_A0E2C3: CDargRef
  loc_A0E2C7: FLdPr Me
  loc_A0E2CA: VCallAd Control_ID_FealBoapHastaMsk
  loc_A0E2CD: FStAdFunc var_A8
  loc_A0E2D0: FLdPr var_A8
  loc_A0E2D3: LateIdSt
  loc_A0E2D8: FFree1Ad var_A8
  loc_A0E2DB: ImpAdCallFPR4 Proc_272_49_9E343C()
  loc_A0E2E0: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '9DD71C
  'Data Table: 49EE30
  loc_9DD700: LitI2_Byte 0
  loc_9DD702: PopTmpLdAd2 var_8A
  loc_9DD705: ILdRf Me
  loc_9DD708: CastAd
  loc_9DD70B: FStAdFunc var_88
  loc_9DD70E: FLdRfVar var_88
  loc_9DD711: ImpAdCallFPR4 Proc_57_2_B14778(, )
  loc_9DD716: FFree1Ad var_88
  loc_9DD719: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) 'A1D758
  'Data Table: 49EE30
  loc_A1D720: FLdPr Me
  loc_A1D723: VCallAd Control_ID_statusBar
  loc_A1D726: FStAdFunc var_88
  loc_A1D729: FLdPr var_88
  loc_A1D72C: LateIdLdVar var_98 DispID_1 0
  loc_A1D733: CStrVarTmp
  loc_A1D734: CVarStr var_A8
  loc_A1D737: PopAdLdVar
  loc_A1D738: FLdPr Me
  loc_A1D73B: VCallAd Control_ID_statusBar
  loc_A1D73E: FStAdFunc var_BC
  loc_A1D741: FLdPr var_BC
  loc_A1D744: LateIdSt
  loc_A1D749: FFreeAd var_88 = ""
  loc_A1D750: FFreeVar var_98 = ""
  loc_A1D757: ExitProcHresult
End Sub

Private Sub Form_Load() '9DD80C
  'Data Table: 49EE30
  loc_9DD7F0: ILdRf Me
  loc_9DD7F3: CastAd
  loc_9DD7F6: FStAdFunc var_88
  loc_9DD7F9: FLdRfVar var_88
  loc_9DD7FC: ImpAdCallFPR4  = Proc_272_43_A93498()
  loc_9DD801: FFree1Ad var_88
  loc_9DD804: Call cmdNueva_Click()
  loc_9DD809: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9D01B0
  'Data Table: 49EE30
  loc_9D0198: FLdPr Me
  loc_9D019B: VCallAd Control_ID_wbbReporte
  loc_9D019E: FStAdFunc var_88
  loc_9D01A1: FLdRfVar var_88
  loc_9D01A4: ImpAdCallFPR4  = Proc_57_52_A24864()
  loc_9D01A9: FFree1Ad var_88
  loc_9D01AC: ExitProcHresult
  loc_9D01AD: NeI4
  loc_9D01AE: ModI2
End Sub

Private Sub FealBoapDesdeMsk_UnknownEvent_0 '9C2BE8
  'Data Table: 49EE30
  loc_9C2BD4: FLdPr Me
  loc_9C2BD7: VCallAd Control_ID_FealBoapDesdeMsk
  loc_9C2BDA: CVarAd
  loc_9C2BDE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C2BE3: FFree1Var var_94 = ""
  loc_9C2BE6: ExitProcHresult
End Sub

Private Sub FealBoapDesdeMsk_UnknownEvent_8 'A61F40
  'Data Table: 49EE30
  loc_A61EE4: FLdPr Me
  loc_A61EE7: VCallAd Control_ID_FealBoapDesdeMsk
  loc_A61EEA: FStAdFunc var_88
  loc_A61EED: FLdPr var_88
  loc_A61EF0: LateIdLdVar var_98 DispID_15 0
  loc_A61EF7: CStrVarTmp
  loc_A61EF8: FStStrNoPop var_9C
  loc_A61EFB: ImpAdCallI2 Proc_18_8_A4C3D0()
  loc_A61F00: FStStrNoPop var_A0
  loc_A61F03: FLdPr Me
  loc_A61F06: MemStStrCopy
  loc_A61F0A: FFreeStr var_9C = ""
  loc_A61F11: FFree1Ad var_88
  loc_A61F14: FFree1Var var_98 = ""
  loc_A61F17: FLdPr Me
  loc_A61F1A: VCallAd Control_ID_FealBoapDesdeMsk
  loc_A61F1D: FStAdFuncNoPop
  loc_A61F20: CastAd
  loc_A61F23: FStAdFunc var_A4
  loc_A61F26: FLdRfVar var_A4
  loc_A61F29: FLdPr Me
  loc_A61F2C: MemLdStr global_92
  loc_A61F2F: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A61F34: IStI2 Cancel
  loc_A61F37: FFreeAd var_88 = ""
  loc_A61F3E: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '9C984C
  'Data Table: 49EE30
  loc_9C9834: LitI2_Byte 0
  loc_9C9836: ILdRf Me
  loc_9C9839: CastAd
  loc_9C983C: FStAdFunc var_88
  loc_9C983F: FLdRfVar var_88
  loc_9C9842: ImpAdCallFPR4 Proc_57_1_AA9124(, )
  loc_9C9847: FFree1Ad var_88
  loc_9C984A: ExitProcHresult
End Sub

Private Sub FealBoapHastaMsk_UnknownEvent_0 '9C2CC0
  'Data Table: 49EE30
  loc_9C2CAC: FLdPr Me
  loc_9C2CAF: VCallAd Control_ID_FealBoapHastaMsk
  loc_9C2CB2: CVarAd
  loc_9C2CB6: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C2CBB: FFree1Var var_94 = ""
  loc_9C2CBE: ExitProcHresult
End Sub

Private Function FealBoapHastaMsk_UnknownEvent_8(arg_C) 'A61CC0
  'Data Table: 49EE30
  loc_A61C64: FLdPr Me
  loc_A61C67: VCallAd Control_ID_FealBoapHastaMsk
  loc_A61C6A: FStAdFunc var_88
  loc_A61C6D: FLdPr var_88
  loc_A61C70: LateIdLdVar var_98 DispID_15 0
  loc_A61C77: CStrVarTmp
  loc_A61C78: FStStrNoPop var_9C
  loc_A61C7B: ImpAdCallI2 Proc_18_8_A4C3D0()
  loc_A61C80: FStStrNoPop var_A0
  loc_A61C83: FLdPr Me
  loc_A61C86: MemStStrCopy
  loc_A61C8A: FFreeStr var_9C = ""
  loc_A61C91: FFree1Ad var_88
  loc_A61C94: FFree1Var var_98 = ""
  loc_A61C97: FLdPr Me
  loc_A61C9A: VCallAd Control_ID_FealBoapHastaMsk
  loc_A61C9D: FStAdFuncNoPop
  loc_A61CA0: CastAd
  loc_A61CA3: FStAdFunc var_A4
  loc_A61CA6: FLdRfVar var_A4
  loc_A61CA9: FLdPr Me
  loc_A61CAC: MemLdStr global_92
  loc_A61CAF: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A61CB4: IStI2 arg_C
  loc_A61CB7: FFreeAd var_88 = ""
  loc_A61CBE: ExitProcHresult
End Function

Private Sub cmdSalir_Click() 'A0068C
  'Data Table: 49EE30
  loc_A0065C: LitVarStr var_94, "Cerrando..."
  loc_A00661: PopAdLdVar
  loc_A00662: FLdPr Me
  loc_A00665: VCallAd Control_ID_statusBar
  loc_A00668: FStAdFunc var_A8
  loc_A0066B: FLdPr var_A8
  loc_A0066E: LateIdSt
  loc_A00673: FFree1Ad var_A8
  loc_A00676: ILdRf Me
  loc_A00679: FStAdNoPop
  loc_A0067D: ImpAdLdRf MemVar_D9C5D8
  loc_A00680: NewIfNullPr Global
  loc_A00683: Global.Unload from_stack_1
  loc_A00688: FFree1Ad var_A8
  loc_A0068B: ExitProcHresult
End Sub

Private Sub cmdXLS_Click() '9DD85C
  'Data Table: 49EE30
  loc_9DD840: LitI2_Byte &HFF
  loc_9DD842: LitI2_Byte 0
  loc_9DD844: ILdRf Me
  loc_9DD847: CastAd
  loc_9DD84A: FStAdFunc var_88
  loc_9DD84D: FLdRfVar var_88
  loc_9DD850: ImpAdCallFPR4 Proc_57_4_AFAAC0(, , )
  loc_9DD855: FFree1Ad var_88
  loc_9DD858: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() 'AC021C
  'Data Table: 49EE30
  loc_AC012C: LitI2_Byte 0
  loc_AC012E: FLdPr Me
  loc_AC0131: MemStI2 bGenerado
  loc_AC0134: LitI2_Byte 0
  loc_AC0136: ILdRf Me
  loc_AC0139: CastAd
  loc_AC013C: FStAdFunc var_88
  loc_AC013F: FLdRfVar var_88
  loc_AC0142: ImpAdCallFPR4  = Proc_272_46_B065FC()
  loc_AC0147: FFree1Ad var_88
  loc_AC014A: LitI2_Byte 0
  loc_AC014C: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_AC0151: CVarDate var_A8
  loc_AC0155: FLdRfVar var_B8
  loc_AC0158: ImpAdCallFPR4  = Year()
  loc_AC015D: LitI2_Byte 0
  loc_AC015F: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_AC0164: CVarDate var_D8
  loc_AC0168: FLdRfVar var_E8
  loc_AC016B: ImpAdCallFPR4  = Month()
  loc_AC0170: LitI2_Byte 1
  loc_AC0172: FLdRfVar var_E8
  loc_AC0175: CI2Var
  loc_AC0176: FLdRfVar var_B8
  loc_AC0179: CI2Var
  loc_AC017A: FLdRfVar var_F8
  loc_AC017D: ImpAdCallFPR4  = DateSerial(, , )
  loc_AC0182: FLdRfVar var_F8
  loc_AC0185: CStrVarTmp
  loc_AC0186: CVarStr var_108
  loc_AC0189: PopAdLdVar
  loc_AC018A: FLdPr Me
  loc_AC018D: VCallAd Control_ID_FealBoapDesdeMsk
  loc_AC0190: FStAdFunc var_88
  loc_AC0193: FLdPr var_88
  loc_AC0196: LateIdSt
  loc_AC019B: FFree1Ad var_88
  loc_AC019E: FFreeVar var_A8 = "": var_D8 = "": var_B8 = "": var_E8 = "": var_F8 = ""
  loc_AC01AD: LitI2_Byte 0
  loc_AC01AF: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_AC01B4: CStrDate
  loc_AC01B6: CVarStr var_A8
  loc_AC01B9: PopAdLdVar
  loc_AC01BA: FLdPr Me
  loc_AC01BD: VCallAd Control_ID_FealBoapHastaMsk
  loc_AC01C0: FStAdFunc var_88
  loc_AC01C3: FLdPr var_88
  loc_AC01C6: LateIdSt
  loc_AC01CB: FFree1Ad var_88
  loc_AC01CE: FFree1Var var_A8 = ""
  loc_AC01D1: LitI4 1
  loc_AC01D6: CI2I4
  loc_AC01D7: FLdPr Me
  loc_AC01DA: VCallAd Control_ID_IncluyeChk
  loc_AC01DD: FStAdFunc var_88
  loc_AC01E0: FLdPr var_88
  loc_AC01E3: Me.Value = from_stack_1
  loc_AC01E8: FFree1Ad var_88
  loc_AC01EB: LitI2_Byte 0
  loc_AC01ED: FLdPr Me
  loc_AC01F0: VCallAd Control_ID_DeudaCanceladaChk
  loc_AC01F3: FStAdFunc var_88
  loc_AC01F6: FLdPr var_88
  loc_AC01F9: Me.Value = from_stack_1
  loc_AC01FE: FFree1Ad var_88
  loc_AC0201: Call HabilitarCriterio()
  loc_AC0206: ILdRf Me
  loc_AC0209: CastAd
  loc_AC020C: FStAdFunc var_88
  loc_AC020F: FLdRfVar var_88
  loc_AC0212: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_AC0217: FFree1Ad var_88
  loc_AC021A: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '9C9930
  'Data Table: 49EE30
  loc_9C9918: ILdRf Me
  loc_9C991B: CastAd
  loc_9C991E: FStAdFunc var_88
  loc_9C9921: FLdRfVar var_88
  loc_9C9924: ImpAdCallFPR4 Proc_57_0_AB1718()
  loc_9C9929: FFree1Ad var_88
  loc_9C992C: ExitProcHresult
End Sub

Private Sub DesdeFechaCmd_Click() 'A0BB84
  'Data Table: 49EE30
  loc_A0BB48: LitVar_Missing var_A4
  loc_A0BB4B: PopAdLdVar
  loc_A0BB4C: LitVarI4
  loc_A0BB54: PopAdLdVar
  loc_A0BB55: ImpAdLdRf MemVar_D930A4
  loc_A0BB58: NewIfNullPr frmCalendario
  loc_A0BB5B: frmCalendario.Show from_stack_1, from_stack_2
  loc_A0BB60: ImpAdLdRf MemVar_D93028
  loc_A0BB63: CDargRef
  loc_A0BB67: FLdPr Me
  loc_A0BB6A: VCallAd Control_ID_FealBoapDesdeMsk
  loc_A0BB6D: FStAdFunc var_A8
  loc_A0BB70: FLdPr var_A8
  loc_A0BB73: LateIdSt
  loc_A0BB78: FFree1Ad var_A8
  loc_A0BB7B: ImpAdCallFPR4 Proc_272_49_9E343C()
  loc_A0BB80: ExitProcHresult
End Sub

Public Function bLogosGet() '49FD6C
  bLogosGet = bLogos
End Function

Public Sub bLogosPut(Value) '49FD7B
  bLogos = Value
End Sub

Public Function bGeneradoGet() '49FD8A
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '49FD99
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() 'A8AAF0
  'Data Table: 49EE30
  loc_A8AA6C: LitI4 0
  loc_A8AA71: LitI4 5
  loc_A8AA76: FLdRfVar var_88
  loc_A8AA79: Redim
  loc_A8AA83: FLdPr Me
  loc_A8AA86: VCallAd Control_ID_FealBoapDesdeMsk
  loc_A8AA89: CVarAd
  loc_A8AA8D: ParmAry1St
  loc_A8AA93: FLdPr Me
  loc_A8AA96: VCallAd Control_ID_DesdeFechaCmd
  loc_A8AA99: CVarAd
  loc_A8AA9D: ParmAry1St
  loc_A8AAA3: FLdPr Me
  loc_A8AAA6: VCallAd Control_ID_FealBoapHastaMsk
  loc_A8AAA9: CVarAd
  loc_A8AAAD: ParmAry1St
  loc_A8AAB3: FLdPr Me
  loc_A8AAB6: VCallAd Control_ID_HastaFechaCmd
  loc_A8AAB9: CVarAd
  loc_A8AABD: ParmAry1St
  loc_A8AAC3: FLdPr Me
  loc_A8AAC6: VCallAd Control_ID_IncluyeChk
  loc_A8AAC9: CVarAd
  loc_A8AACD: ParmAry1St
  loc_A8AAD3: FLdPr Me
  loc_A8AAD6: VCallAd Control_ID_DeudaCanceladaChk
  loc_A8AAD9: CVarAd
  loc_A8AADD: ParmAry1St
  loc_A8AAE3: FLdRfVar var_88
  loc_A8AAE6: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_A8AAEB: FLdRfVar var_88
  loc_A8AAEE: Erase
  loc_A8AAEF: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'B6D850
  'Data Table: 49EE30
  loc_B6D418: FLdPr Me
  loc_B6D41B: MemLdI2 bGenerado
  loc_B6D41E: BranchF loc_B6D422
  loc_B6D421: ExitProcHresult
  loc_B6D422: LitVarStr var_9C, "Generando reporte..."
  loc_B6D427: PopAdLdVar
  loc_B6D428: FLdPr Me
  loc_B6D42B: VCallAd Control_ID_statusBar
  loc_B6D42E: FStAdFunc var_B0
  loc_B6D431: FLdPr var_B0
  loc_B6D434: LateIdSt
  loc_B6D439: FFree1Ad var_B0
  loc_B6D43C: LitI4 &HB
  loc_B6D441: CI2I4
  loc_B6D442: FLdPr Me
  loc_B6D445: Me.MousePointer = from_stack_1
  loc_B6D44A: FLdRfVar var_B2
  loc_B6D44D: FLdPr Me
  loc_B6D450: VCallAd Control_ID_IncluyeChk
  loc_B6D453: FStAdFunc var_B0
  loc_B6D456: FLdPr var_B0
  loc_B6D459:  = Me.Value
  loc_B6D45E: LitVarStr var_D4, " EstaBoap='Actualizado'"
  loc_B6D463: FStVarCopyObj var_E4
  loc_B6D466: FLdRfVar var_E4
  loc_B6D469: LitVarStr var_AC, " EstaBoap in ('Actualizado','Pagado')"
  loc_B6D46E: FStVarCopyObj var_C4
  loc_B6D471: FLdRfVar var_C4
  loc_B6D474: FLdI2 var_B2
  loc_B6D477: CI4UI1
  loc_B6D478: LitI4 1
  loc_B6D47D: EqI4
  loc_B6D47E: CVarBoolI2 var_9C
  loc_B6D482: FLdRfVar var_F4
  loc_B6D485: ImpAdCallFPR4  = IIf(, , )
  loc_B6D48A: FLdRfVar var_F4
  loc_B6D48D: CStrVarTmp
  loc_B6D48E: FStStr var_88
  loc_B6D491: FFree1Ad var_B0
  loc_B6D494: FFreeVar var_9C = "": var_C4 = "": var_E4 = ""
  loc_B6D49F: FLdRfVar var_B2
  loc_B6D4A2: FLdPr Me
  loc_B6D4A5: VCallAd Control_ID_DeudaCanceladaChk
  loc_B6D4A8: FStAdFunc var_B0
  loc_B6D4AB: FLdPr var_B0
  loc_B6D4AE:  = Me.Value
  loc_B6D4B3: LitVarStr var_D4, vbNullString
  loc_B6D4B8: FStVarCopyObj var_E4
  loc_B6D4BB: FLdRfVar var_E4
  loc_B6D4BE: LitVarStr var_AC, " AND apremio.CancApre = 1 "
  loc_B6D4C3: FStVarCopyObj var_C4
  loc_B6D4C6: FLdRfVar var_C4
  loc_B6D4C9: FLdI2 var_B2
  loc_B6D4CC: CI4UI1
  loc_B6D4CD: LitI4 1
  loc_B6D4D2: EqI4
  loc_B6D4D3: CVarBoolI2 var_9C
  loc_B6D4D7: FLdRfVar var_F4
  loc_B6D4DA: ImpAdCallFPR4  = IIf(, , )
  loc_B6D4DF: FLdRfVar var_F4
  loc_B6D4E2: CStrVarTmp
  loc_B6D4E3: FStStr var_8C
  loc_B6D4E6: FFree1Ad var_B0
  loc_B6D4E9: FFreeVar var_9C = "": var_C4 = "": var_E4 = ""
  loc_B6D4F4: FLdPr Me
  loc_B6D4F7: MemLdRfVar from_stack_1.global_76
  loc_B6D4FA: NewIfNullAd
  loc_B6D4FD: FStAd var_F8 
  loc_B6D501: FLdPr Me
  loc_B6D504: VCallAd Control_ID_FealBoapDesdeMsk
  loc_B6D507: FStAdFunc var_B0
  loc_B6D50A: FLdPr var_B0
  loc_B6D50D: LateIdLdVar var_C4 DispID_15 0
  loc_B6D514: PopAd
  loc_B6D516: FLdPr Me
  loc_B6D519: VCallAd Control_ID_FealBoapHastaMsk
  loc_B6D51C: FStAdFunc var_12C
  loc_B6D51F: FLdPr var_12C
  loc_B6D522: LateIdLdVar var_13C DispID_15 0
  loc_B6D529: PopAd
  loc_B6D52B: LitStr " SELECT apremio.CodiReca, DetaReca, DetaPers, AutoApre, concat('MUN. DE "
  loc_B6D52E: LitStr "Guaymallén"
  loc_B6D531: ConcatStr
  loc_B6D532: FStStrNoPop var_FC
  loc_B6D535: LitStr " C/ ', DetaPers) as caratula, 'TRIBUT.' as Juzgado, boleapre.NumeApre, ApleBoap, ReseBoap, DefiBoap, FeacBoap, (ApleBoap + ReseBoap + DefiBoap) TotaBoap "
  loc_B6D538: ConcatStr
  loc_B6D539: FStStrNoPop var_100
  loc_B6D53C: LitStr " FROM boleapre"
  loc_B6D53F: ConcatStr
  loc_B6D540: FStStrNoPop var_104
  loc_B6D543: LitStr " INNER JOIN apremio ON apremio.NumeApre = boleapre.NumeApre"
  loc_B6D546: ConcatStr
  loc_B6D547: FStStrNoPop var_108
  loc_B6D54A: LitStr " LEFT JOIN recaudador ON recaudador.CodiReca = apremio.CodiReca"
  loc_B6D54D: ConcatStr
  loc_B6D54E: FStStrNoPop var_10C
  loc_B6D551: LitStr " INNER JOIN infogov.persona ON persona.Cucupers = apremio.CucuPers"
  loc_B6D554: ConcatStr
  loc_B6D555: FStStrNoPop var_110
  loc_B6D558: LitStr " WHERE "
  loc_B6D55B: ConcatStr
  loc_B6D55C: FStStrNoPop var_114
  loc_B6D55F: ILdRf var_88
  loc_B6D562: ConcatStr
  loc_B6D563: FStStrNoPop var_118
  loc_B6D566: LitStr " AND boleapre.FeenAcpa"
  loc_B6D569: ConcatStr
  loc_B6D56A: FStStrNoPop var_11C
  loc_B6D56D: LitStr " BETWEEN '"
  loc_B6D570: ConcatStr
  loc_B6D571: FStStrNoPop var_120
  loc_B6D574: LitI4 1
  loc_B6D579: LitI4 1
  loc_B6D57E: LitVarStr var_9C, "yyyy-mm-dd"
  loc_B6D583: FStVarCopyObj var_F4
  loc_B6D586: FLdRfVar var_F4
  loc_B6D589: FLdRfVar var_C4
  loc_B6D58C: CStrVarTmp
  loc_B6D58D: CVarStr var_E4
  loc_B6D590: ImpAdCallI2 Format$(, )
  loc_B6D595: FStStrNoPop var_124
  loc_B6D598: ConcatStr
  loc_B6D599: FStStrNoPop var_128
  loc_B6D59C: LitStr "' AND '"
  loc_B6D59F: ConcatStr
  loc_B6D5A0: FStStrNoPop var_160
  loc_B6D5A3: LitI4 1
  loc_B6D5A8: LitI4 1
  loc_B6D5AD: LitVarStr var_AC, "yyyy-mm-dd"
  loc_B6D5B2: FStVarCopyObj var_15C
  loc_B6D5B5: FLdRfVar var_15C
  loc_B6D5B8: FLdRfVar var_13C
  loc_B6D5BB: CStrVarTmp
  loc_B6D5BC: CVarStr var_14C
  loc_B6D5BF: ImpAdCallI2 Format$(, )
  loc_B6D5C4: FStStrNoPop var_164
  loc_B6D5C7: ConcatStr
  loc_B6D5C8: FStStrNoPop var_168
  loc_B6D5CB: LitStr "'"
  loc_B6D5CE: ConcatStr
  loc_B6D5CF: FStStrNoPop var_16C
  loc_B6D5D2: LitStr " AND boleapre.CodiInju >= 2"
  loc_B6D5D5: ConcatStr
  loc_B6D5D6: FStStrNoPop var_170
  loc_B6D5D9: ILdRf var_8C
  loc_B6D5DC: ConcatStr
  loc_B6D5DD: FStStrNoPop var_174
  loc_B6D5E0: LitStr " ORDER BY apremio.CodiReca, FeacBoap"
  loc_B6D5E3: ConcatStr
  loc_B6D5E4: FStStrNoPop var_178
  loc_B6D5E7: FLdPr var_F8
  loc_B6D5EA: Call clsboleapre.RedefineRS(from_stack_1v)
  loc_B6D5EF: FFreeStr var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = ""
  loc_B6D618: FFreeAd var_B0 = ""
  loc_B6D61F: FFreeVar var_C4 = "": var_E4 = "": var_F4 = "": var_13C = "": var_14C = ""
  loc_B6D62E: FLdRfVar var_17C
  loc_B6D631: FLdPr var_F8
  loc_B6D634: from_stack_1 = clsboleapre.RecordCount
  loc_B6D639: ILdRf var_17C
  loc_B6D63C: LitI4 0
  loc_B6D641: EqI4
  loc_B6D642: BranchF loc_B6D650
  loc_B6D645: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_B6D648: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B6D64D: Branch loc_B6D824
  loc_B6D650: LitI4 0
  loc_B6D655: LitI4 1
  loc_B6D65A: FLdPr Me
  loc_B6D65D: MemLdRfVar from_stack_1.global_84
  loc_B6D660: Redim
  loc_B6D66A: LitI4 0
  loc_B6D66F: LitI4 1
  loc_B6D674: FLdPr Me
  loc_B6D677: MemLdRfVar from_stack_1.global_80
  loc_B6D67A: Redim
  loc_B6D684: LitI2_Byte 0
  loc_B6D686: FLdPr Me
  loc_B6D689: MemStI2 global_88
  loc_B6D68C: FLdPr var_F8
  loc_B6D68F: Call clsboleapre.MoveFirst()
  loc_B6D694: Call Proc_305_23_AD85DC()
  loc_B6D699: FLdRfVar var_B2
  loc_B6D69C: FLdPr var_F8
  loc_B6D69F: from_stack_1 = clsboleapre.EOF
  loc_B6D6A4: FLdI2 var_B2
  loc_B6D6A7: NotI4
  loc_B6D6A8: BranchF loc_B6D6E9
  loc_B6D6AB: FLdRfVar var_C4
  loc_B6D6AE: FLdPr var_F8
  loc_B6D6B1: from_stack_1 = clsboleapre.CodiReca
  loc_B6D6B6: FLdRfVar var_C4
  loc_B6D6B9: FnCIntVar
  loc_B6D6BB: FLdPr Me
  loc_B6D6BE: MemLdI2 global_88
  loc_B6D6C1: CI4UI1
  loc_B6D6C2: FLdPr Me
  loc_B6D6C5: MemLdStr global_80
  loc_B6D6C8: Ary1LdPr
  loc_B6D6C9: MemLdStr global_0
  loc_B6D6CC: CI2Str
  loc_B6D6CE: EqI2
  loc_B6D6CF: FFreeVar var_C4 = ""
  loc_B6D6D6: BranchF loc_B6D6E1
  loc_B6D6D9: Call Proc_305_24_BD2DE4()
  loc_B6D6DE: Branch loc_B6D6E6
  loc_B6D6E1: Call Proc_305_23_AD85DC()
  loc_B6D6E6: Branch loc_B6D699
  loc_B6D6E9: LitNothing
  loc_B6D6EB: FStAd var_F8 
  loc_B6D6EF: FLdRfVar var_B2
  loc_B6D6F2: FLdPr Me
  loc_B6D6F5: VCallAd Control_ID_IncluyeChk
  loc_B6D6F8: FStAdFunc var_B0
  loc_B6D6FB: FLdPr var_B0
  loc_B6D6FE:  = Me.Value
  loc_B6D703: FLdI2 var_B2
  loc_B6D706: FFree1Ad var_B0
  loc_B6D709: BranchF loc_B6D81C
  loc_B6D70C: LitI2_Byte 1
  loc_B6D70E: FLdPr Me
  loc_B6D711: MemLdRfVar from_stack_1.global_88
  loc_B6D714: FLdPr Me
  loc_B6D717: MemLdStr global_80
  loc_B6D71A: LitI2_Byte 1
  loc_B6D71C: FnUBound
  loc_B6D71E: CI2I4
  loc_B6D71F: ForI2 var_184
  loc_B6D725: LitI2_Byte 0
  loc_B6D727: LitI4 1
  loc_B6D72C: FLdPr Me
  loc_B6D72F: MemLdStr global_84
  loc_B6D732: AryLock
  loc_B6D735: Ary1LdPr
  loc_B6D736: MemLdRfVar from_stack_1.global_0
  loc_B6D739: CVarRef
  loc_B6D73E: LitI2_Byte &HFF
  loc_B6D740: FLdPr Me
  loc_B6D743: MemLdI2 global_88
  loc_B6D746: CI4UI1
  loc_B6D747: FLdPr Me
  loc_B6D74A: MemLdStr global_80
  loc_B6D74D: Ary1LdPr
  loc_B6D74E: MemLdStr global_12
  loc_B6D751: CVarStr var_9C
  loc_B6D754: PopAdLdVar
  loc_B6D755: FLdRfVar var_180
  loc_B6D758: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B6D75D: AryUnlock
  loc_B6D760: LitI2_Byte 0
  loc_B6D762: LitI4 1
  loc_B6D767: FLdPr Me
  loc_B6D76A: MemLdStr global_84
  loc_B6D76D: AryLock
  loc_B6D770: Ary1LdPr
  loc_B6D771: MemLdRfVar from_stack_1.global_4
  loc_B6D774: CVarRef
  loc_B6D779: LitI2_Byte &HFF
  loc_B6D77B: FLdPr Me
  loc_B6D77E: MemLdI2 global_88
  loc_B6D781: CI4UI1
  loc_B6D782: FLdPr Me
  loc_B6D785: MemLdStr global_80
  loc_B6D788: Ary1LdPr
  loc_B6D789: MemLdStr global_16
  loc_B6D78C: CVarStr var_9C
  loc_B6D78F: PopAdLdVar
  loc_B6D790: FLdRfVar var_180
  loc_B6D793: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B6D798: AryUnlock
  loc_B6D79B: LitI2_Byte 0
  loc_B6D79D: LitI4 1
  loc_B6D7A2: FLdPr Me
  loc_B6D7A5: MemLdStr global_84
  loc_B6D7A8: AryLock
  loc_B6D7AB: Ary1LdPr
  loc_B6D7AC: MemLdRfVar from_stack_1.global_8
  loc_B6D7AF: CVarRef
  loc_B6D7B4: LitI2_Byte &HFF
  loc_B6D7B6: FLdPr Me
  loc_B6D7B9: MemLdI2 global_88
  loc_B6D7BC: CI4UI1
  loc_B6D7BD: FLdPr Me
  loc_B6D7C0: MemLdStr global_80
  loc_B6D7C3: Ary1LdPr
  loc_B6D7C4: MemLdStr global_20
  loc_B6D7C7: CVarStr var_9C
  loc_B6D7CA: PopAdLdVar
  loc_B6D7CB: FLdRfVar var_180
  loc_B6D7CE: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B6D7D3: AryUnlock
  loc_B6D7D6: LitI2_Byte 0
  loc_B6D7D8: LitI4 1
  loc_B6D7DD: FLdPr Me
  loc_B6D7E0: MemLdStr global_84
  loc_B6D7E3: AryLock
  loc_B6D7E6: Ary1LdPr
  loc_B6D7E7: MemLdRfVar from_stack_1.global_12
  loc_B6D7EA: CVarRef
  loc_B6D7EF: LitI2_Byte &HFF
  loc_B6D7F1: FLdPr Me
  loc_B6D7F4: MemLdI2 global_88
  loc_B6D7F7: CI4UI1
  loc_B6D7F8: FLdPr Me
  loc_B6D7FB: MemLdStr global_80
  loc_B6D7FE: Ary1LdPr
  loc_B6D7FF: MemLdStr global_24
  loc_B6D802: CVarStr var_9C
  loc_B6D805: PopAdLdVar
  loc_B6D806: FLdRfVar var_180
  loc_B6D809: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B6D80E: AryUnlock
  loc_B6D811: FLdPr Me
  loc_B6D814: MemLdRfVar from_stack_1.global_88
  loc_B6D817: NextI2 var_184, loc_B6D725
  loc_B6D81C: LitI2_Byte &HFF
  loc_B6D81E: FLdPr Me
  loc_B6D821: MemStI2 bGenerado
  loc_B6D824: LitI4 0
  loc_B6D829: CI2I4
  loc_B6D82A: FLdPr Me
  loc_B6D82D: Me.MousePointer = from_stack_1
  loc_B6D832: LitVarStr var_9C, vbNullString
  loc_B6D837: PopAdLdVar
  loc_B6D838: FLdPr Me
  loc_B6D83B: VCallAd Control_ID_statusBar
  loc_B6D83E: FStAdFunc var_B0
  loc_B6D841: FLdPr var_B0
  loc_B6D844: LateIdSt
  loc_B6D849: FFree1Ad var_B0
  loc_B6D84C: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'C16D14
  'Data Table: 49EE30
  loc_C16328: FLdRfVar var_88
  loc_C1632B: LitI2_Byte 0
  loc_C1632D: LitI2_Byte &HFF
  loc_C1632F: ImpAdLdI4 MemVar_D93C84
  loc_C16332: FLdPr Me
  loc_C16335: MemLdRfVar from_stack_1.global_56
  loc_C16338: NewIfNullPr IFileSystem3
  loc_C1633B: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_C16340: ILdRf var_88
  loc_C16343: FLdPr Me
  loc_C16346: MemStVarAd
  loc_C1634A: FFree1Ad var_88
  loc_C1634D: LitI2_Byte &HFF
  loc_C1634F: ImpAdStI2 MemVar_D93C8A
  loc_C16352: Call Proc_305_25_BF6F84()
  loc_C16357: LitStr "Municipalidad de Guaymallén"
  loc_C1635A: LitStr "Municipalidad de General Alvear"
  loc_C1635D: EqStr
  loc_C1635F: BranchF loc_C167F4
  loc_C16362: LitI2_Byte 1
  loc_C16364: FLdPr Me
  loc_C16367: MemLdRfVar from_stack_1.global_88
  loc_C1636A: FLdPr Me
  loc_C1636D: MemLdStr global_80
  loc_C16370: LitI2_Byte 1
  loc_C16372: FnUBound
  loc_C16374: CI2I4
  loc_C16375: ForI2 var_8C
  loc_C1637B: LitVarStr var_9C, "  <tr align=""left"" class=""Encabezado"">"
  loc_C16380: PopAdLdVar
  loc_C16381: FLdPr Me
  loc_C16384: MemLdRfVar from_stack_1.global_60
  loc_C16387: LdPrVar
  loc_C16389: LateMemCall
  loc_C1638F: LitStr "    <th colspan=""8"">RECAUDADOR: "
  loc_C16392: FLdPr Me
  loc_C16395: MemLdI2 global_88
  loc_C16398: CI4UI1
  loc_C16399: FLdPr Me
  loc_C1639C: MemLdStr global_80
  loc_C1639F: Ary1LdPr
  loc_C163A0: MemLdStr global_0
  loc_C163A3: ConcatStr
  loc_C163A4: FStStrNoPop var_B0
  loc_C163A7: LitStr " - "
  loc_C163AA: ConcatStr
  loc_C163AB: FStStrNoPop var_B4
  loc_C163AE: FLdPr Me
  loc_C163B1: MemLdI2 global_88
  loc_C163B4: CI4UI1
  loc_C163B5: FLdPr Me
  loc_C163B8: MemLdStr global_80
  loc_C163BB: Ary1LdPr
  loc_C163BC: MemLdStr global_4
  loc_C163BF: ConcatStr
  loc_C163C0: FStStrNoPop var_B8
  loc_C163C3: LitStr "</th>"
  loc_C163C6: ConcatStr
  loc_C163C7: CVarStr var_C8
  loc_C163CA: PopAdLdVar
  loc_C163CB: FLdPr Me
  loc_C163CE: MemLdRfVar from_stack_1.global_60
  loc_C163D1: LdPrVar
  loc_C163D3: LateMemCall
  loc_C163D9: FFreeStr var_B0 = "": var_B4 = ""
  loc_C163E2: FFree1Var var_C8 = ""
  loc_C163E5: LitVarStr var_9C, "     </tr>"
  loc_C163EA: PopAdLdVar
  loc_C163EB: FLdPr Me
  loc_C163EE: MemLdRfVar from_stack_1.global_60
  loc_C163F1: LdPrVar
  loc_C163F3: LateMemCall
  loc_C163F9: LitI2_Byte 1
  loc_C163FB: FLdPr Me
  loc_C163FE: MemLdRfVar from_stack_1.global_90
  loc_C16401: FLdPr Me
  loc_C16404: MemLdI2 global_88
  loc_C16407: CI4UI1
  loc_C16408: FLdPr Me
  loc_C1640B: MemLdStr global_80
  loc_C1640E: Ary1LdPr
  loc_C1640F: MemLdStr global_8
  loc_C16412: LitI2_Byte 1
  loc_C16414: FnUBound
  loc_C16416: CI2I4
  loc_C16417: ForI2 var_CC
  loc_C1641D: FLdPr Me
  loc_C16420: MemLdI2 global_90
  loc_C16423: CI4UI1
  loc_C16424: FLdPr Me
  loc_C16427: MemLdI2 global_88
  loc_C1642A: CI4UI1
  loc_C1642B: FLdPr Me
  loc_C1642E: MemLdStr global_80
  loc_C16431: AryLock
  loc_C16434: Ary1LdPr
  loc_C16435: MemLdStr global_8
  loc_C16438: AryLock
  loc_C1643B: Ary1LdRf
  loc_C1643C: FStR4 var_D8
  loc_C1643F: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_C16444: PopAdLdVar
  loc_C16445: FLdPr Me
  loc_C16448: MemLdRfVar from_stack_1.global_60
  loc_C1644B: LdPrVar
  loc_C1644D: LateMemCall
  loc_C16453: LitStr vbNullString
  loc_C16456: LitI2_Byte 0
  loc_C16458: LitI2_Byte 0
  loc_C1645A: LitI2_Byte 0
  loc_C1645C: LitStr "left"
  loc_C1645F: FMemLdR4 var_D8(4)
  loc_C16464: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C16469: CVarStr var_C8
  loc_C1646C: PopAdLdVar
  loc_C1646D: FLdPr Me
  loc_C16470: MemLdRfVar from_stack_1.global_60
  loc_C16473: LdPrVar
  loc_C16475: LateMemCall
  loc_C1647B: FFree1Var var_C8 = ""
  loc_C1647E: LitStr vbNullString
  loc_C16481: LitI2_Byte 0
  loc_C16483: LitI2_Byte 0
  loc_C16485: LitI2_Byte 0
  loc_C16487: LitStr "left"
  loc_C1648A: FMemLdR4 var_D8(8)
  loc_C1648F: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C16494: CVarStr var_C8
  loc_C16497: PopAdLdVar
  loc_C16498: FLdPr Me
  loc_C1649B: MemLdRfVar from_stack_1.global_60
  loc_C1649E: LdPrVar
  loc_C164A0: LateMemCall
  loc_C164A6: FFree1Var var_C8 = ""
  loc_C164A9: LitStr vbNullString
  loc_C164AC: LitI2_Byte 0
  loc_C164AE: LitI2_Byte 0
  loc_C164B0: LitI2_Byte 0
  loc_C164B2: LitStr "left"
  loc_C164B5: FMemLdR4 var_D8(12)
  loc_C164BA: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C164BF: CVarStr var_C8
  loc_C164C2: PopAdLdVar
  loc_C164C3: FLdPr Me
  loc_C164C6: MemLdRfVar from_stack_1.global_60
  loc_C164C9: LdPrVar
  loc_C164CB: LateMemCall
  loc_C164D1: FFree1Var var_C8 = ""
  loc_C164D4: LitStr vbNullString
  loc_C164D7: LitI2_Byte 0
  loc_C164D9: LitI2_Byte 0
  loc_C164DB: LitI2_Byte 0
  loc_C164DD: LitStr "left"
  loc_C164E0: FMemLdR4 var_D8(16)
  loc_C164E5: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C164EA: CVarStr var_C8
  loc_C164ED: PopAdLdVar
  loc_C164EE: FLdPr Me
  loc_C164F1: MemLdRfVar from_stack_1.global_60
  loc_C164F4: LdPrVar
  loc_C164F6: LateMemCall
  loc_C164FC: FFree1Var var_C8 = ""
  loc_C164FF: LitStr vbNullString
  loc_C16502: LitI2_Byte 0
  loc_C16504: LitI2_Byte 0
  loc_C16506: LitI2_Byte 0
  loc_C16508: LitStr "right"
  loc_C1650B: FMemLdR4 var_D8(20)
  loc_C16510: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C16515: CVarStr var_C8
  loc_C16518: PopAdLdVar
  loc_C16519: FLdPr Me
  loc_C1651C: MemLdRfVar from_stack_1.global_60
  loc_C1651F: LdPrVar
  loc_C16521: LateMemCall
  loc_C16527: FFree1Var var_C8 = ""
  loc_C1652A: LitStr vbNullString
  loc_C1652D: LitI2_Byte 0
  loc_C1652F: LitI2_Byte 0
  loc_C16531: LitI2_Byte 0
  loc_C16533: LitStr "right"
  loc_C16536: FMemLdR4 var_D8(24)
  loc_C1653B: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C16540: CVarStr var_C8
  loc_C16543: PopAdLdVar
  loc_C16544: FLdPr Me
  loc_C16547: MemLdRfVar from_stack_1.global_60
  loc_C1654A: LdPrVar
  loc_C1654C: LateMemCall
  loc_C16552: FFree1Var var_C8 = ""
  loc_C16555: LitStr vbNullString
  loc_C16558: LitI2_Byte 0
  loc_C1655A: LitI2_Byte 0
  loc_C1655C: LitI2_Byte 0
  loc_C1655E: LitStr "right"
  loc_C16561: FMemLdR4 var_D8(28)
  loc_C16566: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C1656B: CVarStr var_C8
  loc_C1656E: PopAdLdVar
  loc_C1656F: FLdPr Me
  loc_C16572: MemLdRfVar from_stack_1.global_60
  loc_C16575: LdPrVar
  loc_C16577: LateMemCall
  loc_C1657D: FFree1Var var_C8 = ""
  loc_C16580: LitStr vbNullString
  loc_C16583: LitI2_Byte 0
  loc_C16585: LitI2_Byte 0
  loc_C16587: LitI2_Byte 0
  loc_C16589: LitStr "right"
  loc_C1658C: FMemLdR4 var_D8(32)
  loc_C16591: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C16596: CVarStr var_C8
  loc_C16599: PopAdLdVar
  loc_C1659A: FLdPr Me
  loc_C1659D: MemLdRfVar from_stack_1.global_60
  loc_C165A0: LdPrVar
  loc_C165A2: LateMemCall
  loc_C165A8: FFree1Var var_C8 = ""
  loc_C165AB: LitVarStr var_9C, "     </tr>"
  loc_C165B0: PopAdLdVar
  loc_C165B1: FLdPr Me
  loc_C165B4: MemLdRfVar from_stack_1.global_60
  loc_C165B7: LdPrVar
  loc_C165B9: LateMemCall
  loc_C165BF: LitI4 0
  loc_C165C4: FStR4 var_D8
  loc_C165C7: AryUnlock
  loc_C165CA: AryUnlock
  loc_C165CD: FLdPr Me
  loc_C165D0: MemLdRfVar from_stack_1.global_90
  loc_C165D3: NextI2 var_CC, loc_C1641D
  loc_C165D8: FLdPr Me
  loc_C165DB: MemLdStr global_80
  loc_C165DE: LitI2_Byte 1
  loc_C165E0: FnUBound
  loc_C165E2: LitI4 1
  loc_C165E7: GtI4
  loc_C165E8: BranchF loc_C166F5
  loc_C165EB: LitVarStr var_9C, "  <tr align=""right"" class=""SubTotales"">"
  loc_C165F0: PopAdLdVar
  loc_C165F1: FLdPr Me
  loc_C165F4: MemLdRfVar from_stack_1.global_60
  loc_C165F7: LdPrVar
  loc_C165F9: LateMemCall
  loc_C165FF: LitVarStr var_9C, "    <th colspan=""4"">Subtotal</th>"
  loc_C16604: PopAdLdVar
  loc_C16605: FLdPr Me
  loc_C16608: MemLdRfVar from_stack_1.global_60
  loc_C1660B: LdPrVar
  loc_C1660D: LateMemCall
  loc_C16613: FLdPr Me
  loc_C16616: MemLdI2 global_88
  loc_C16619: CI4UI1
  loc_C1661A: FLdPr Me
  loc_C1661D: MemLdStr global_80
  loc_C16620: AryLock
  loc_C16623: Ary1LdPr
  loc_C16624: MemLdRfVar from_stack_1.global_12
  loc_C16627: FStR4 var_E0
  loc_C1662A: LitStr vbNullString
  loc_C1662D: LitI2_Byte 0
  loc_C1662F: LitI2_Byte 0
  loc_C16631: LitI2_Byte 0
  loc_C16633: LitStr "right"
  loc_C16636: FMemLdR4 var_E0(0)
  loc_C1663B: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C16640: CVarStr var_C8
  loc_C16643: PopAdLdVar
  loc_C16644: FLdPr Me
  loc_C16647: MemLdRfVar from_stack_1.global_60
  loc_C1664A: LdPrVar
  loc_C1664C: LateMemCall
  loc_C16652: FFree1Var var_C8 = ""
  loc_C16655: LitStr vbNullString
  loc_C16658: LitI2_Byte 0
  loc_C1665A: LitI2_Byte 0
  loc_C1665C: LitI2_Byte 0
  loc_C1665E: LitStr "right"
  loc_C16661: FMemLdR4 var_E0(4)
  loc_C16666: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C1666B: CVarStr var_C8
  loc_C1666E: PopAdLdVar
  loc_C1666F: FLdPr Me
  loc_C16672: MemLdRfVar from_stack_1.global_60
  loc_C16675: LdPrVar
  loc_C16677: LateMemCall
  loc_C1667D: FFree1Var var_C8 = ""
  loc_C16680: LitStr vbNullString
  loc_C16683: LitI2_Byte 0
  loc_C16685: LitI2_Byte 0
  loc_C16687: LitI2_Byte 0
  loc_C16689: LitStr "right"
  loc_C1668C: FMemLdR4 var_E0(8)
  loc_C16691: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C16696: CVarStr var_C8
  loc_C16699: PopAdLdVar
  loc_C1669A: FLdPr Me
  loc_C1669D: MemLdRfVar from_stack_1.global_60
  loc_C166A0: LdPrVar
  loc_C166A2: LateMemCall
  loc_C166A8: FFree1Var var_C8 = ""
  loc_C166AB: LitStr vbNullString
  loc_C166AE: LitI2_Byte 0
  loc_C166B0: LitI2_Byte 0
  loc_C166B2: LitI2_Byte 0
  loc_C166B4: LitStr "right"
  loc_C166B7: FMemLdR4 var_E0(12)
  loc_C166BC: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C166C1: CVarStr var_C8
  loc_C166C4: PopAdLdVar
  loc_C166C5: FLdPr Me
  loc_C166C8: MemLdRfVar from_stack_1.global_60
  loc_C166CB: LdPrVar
  loc_C166CD: LateMemCall
  loc_C166D3: FFree1Var var_C8 = ""
  loc_C166D6: LitVarStr var_9C, "     </tr>"
  loc_C166DB: PopAdLdVar
  loc_C166DC: FLdPr Me
  loc_C166DF: MemLdRfVar from_stack_1.global_60
  loc_C166E2: LdPrVar
  loc_C166E4: LateMemCall
  loc_C166EA: LitI4 0
  loc_C166EF: FStR4 var_E0
  loc_C166F2: AryUnlock
  loc_C166F5: FLdPr Me
  loc_C166F8: MemLdRfVar from_stack_1.global_88
  loc_C166FB: NextI2 var_8C, loc_C1637B
  loc_C16700: LitVarStr var_9C, "    <tr class=""Totales"">"
  loc_C16705: PopAdLdVar
  loc_C16706: FLdPr Me
  loc_C16709: MemLdRfVar from_stack_1.global_60
  loc_C1670C: LdPrVar
  loc_C1670E: LateMemCall
  loc_C16714: LitVarStr var_9C, "    <td colspan=""4"" align=""right"">Total</td>"
  loc_C16719: PopAdLdVar
  loc_C1671A: FLdPr Me
  loc_C1671D: MemLdRfVar from_stack_1.global_60
  loc_C16720: LdPrVar
  loc_C16722: LateMemCall
  loc_C16728: LitI4 1
  loc_C1672D: FLdPr Me
  loc_C16730: MemLdStr global_84
  loc_C16733: AryLock
  loc_C16736: Ary1LdRf
  loc_C16737: FStR4 var_E8
  loc_C1673A: LitStr vbNullString
  loc_C1673D: LitI2_Byte 0
  loc_C1673F: LitI2_Byte 0
  loc_C16741: LitI2_Byte 0
  loc_C16743: LitStr "right"
  loc_C16746: FMemLdR4 var_E8(0)
  loc_C1674B: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C16750: CVarStr var_C8
  loc_C16753: PopAdLdVar
  loc_C16754: FLdPr Me
  loc_C16757: MemLdRfVar from_stack_1.global_60
  loc_C1675A: LdPrVar
  loc_C1675C: LateMemCall
  loc_C16762: FFree1Var var_C8 = ""
  loc_C16765: LitStr vbNullString
  loc_C16768: LitI2_Byte 0
  loc_C1676A: LitI2_Byte 0
  loc_C1676C: LitI2_Byte 0
  loc_C1676E: LitStr "right"
  loc_C16771: FMemLdR4 var_E8(4)
  loc_C16776: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C1677B: CVarStr var_C8
  loc_C1677E: PopAdLdVar
  loc_C1677F: FLdPr Me
  loc_C16782: MemLdRfVar from_stack_1.global_60
  loc_C16785: LdPrVar
  loc_C16787: LateMemCall
  loc_C1678D: FFree1Var var_C8 = ""
  loc_C16790: LitStr vbNullString
  loc_C16793: LitI2_Byte 0
  loc_C16795: LitI2_Byte 0
  loc_C16797: LitI2_Byte 0
  loc_C16799: LitStr "right"
  loc_C1679C: FMemLdR4 var_E8(8)
  loc_C167A1: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C167A6: CVarStr var_C8
  loc_C167A9: PopAdLdVar
  loc_C167AA: FLdPr Me
  loc_C167AD: MemLdRfVar from_stack_1.global_60
  loc_C167B0: LdPrVar
  loc_C167B2: LateMemCall
  loc_C167B8: FFree1Var var_C8 = ""
  loc_C167BB: LitStr vbNullString
  loc_C167BE: LitI2_Byte 0
  loc_C167C0: LitI2_Byte 0
  loc_C167C2: LitI2_Byte 0
  loc_C167C4: LitStr "right"
  loc_C167C7: FMemLdR4 var_E8(12)
  loc_C167CC: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C167D1: CVarStr var_C8
  loc_C167D4: PopAdLdVar
  loc_C167D5: FLdPr Me
  loc_C167D8: MemLdRfVar from_stack_1.global_60
  loc_C167DB: LdPrVar
  loc_C167DD: LateMemCall
  loc_C167E3: FFree1Var var_C8 = ""
  loc_C167E6: LitI4 0
  loc_C167EB: FStR4 var_E8
  loc_C167EE: AryUnlock
  loc_C167F1: Branch loc_C16CE2
  loc_C167F4: LitI2_Byte 1
  loc_C167F6: FLdPr Me
  loc_C167F9: MemLdRfVar from_stack_1.global_88
  loc_C167FC: FLdPr Me
  loc_C167FF: MemLdStr global_80
  loc_C16802: LitI2_Byte 1
  loc_C16804: FnUBound
  loc_C16806: CI2I4
  loc_C16807: ForI2 var_EC
  loc_C1680D: LitVarStr var_9C, "  <tr align=""left"" class=""Encabezado"">"
  loc_C16812: PopAdLdVar
  loc_C16813: FLdPr Me
  loc_C16816: MemLdRfVar from_stack_1.global_60
  loc_C16819: LdPrVar
  loc_C1681B: LateMemCall
  loc_C16821: LitStr "    <th colspan=""9"">RECAUDADOR: "
  loc_C16824: FLdPr Me
  loc_C16827: MemLdI2 global_88
  loc_C1682A: CI4UI1
  loc_C1682B: FLdPr Me
  loc_C1682E: MemLdStr global_80
  loc_C16831: Ary1LdPr
  loc_C16832: MemLdStr global_0
  loc_C16835: ConcatStr
  loc_C16836: FStStrNoPop var_B0
  loc_C16839: LitStr " - "
  loc_C1683C: ConcatStr
  loc_C1683D: FStStrNoPop var_B4
  loc_C16840: FLdPr Me
  loc_C16843: MemLdI2 global_88
  loc_C16846: CI4UI1
  loc_C16847: FLdPr Me
  loc_C1684A: MemLdStr global_80
  loc_C1684D: Ary1LdPr
  loc_C1684E: MemLdStr global_4
  loc_C16851: ConcatStr
  loc_C16852: FStStrNoPop var_B8
  loc_C16855: LitStr "</th>"
  loc_C16858: ConcatStr
  loc_C16859: CVarStr var_C8
  loc_C1685C: PopAdLdVar
  loc_C1685D: FLdPr Me
  loc_C16860: MemLdRfVar from_stack_1.global_60
  loc_C16863: LdPrVar
  loc_C16865: LateMemCall
  loc_C1686B: FFreeStr var_B0 = "": var_B4 = ""
  loc_C16874: FFree1Var var_C8 = ""
  loc_C16877: LitVarStr var_9C, "     </tr>"
  loc_C1687C: PopAdLdVar
  loc_C1687D: FLdPr Me
  loc_C16880: MemLdRfVar from_stack_1.global_60
  loc_C16883: LdPrVar
  loc_C16885: LateMemCall
  loc_C1688B: LitI2_Byte 1
  loc_C1688D: FLdPr Me
  loc_C16890: MemLdRfVar from_stack_1.global_90
  loc_C16893: FLdPr Me
  loc_C16896: MemLdI2 global_88
  loc_C16899: CI4UI1
  loc_C1689A: FLdPr Me
  loc_C1689D: MemLdStr global_80
  loc_C168A0: Ary1LdPr
  loc_C168A1: MemLdStr global_8
  loc_C168A4: LitI2_Byte 1
  loc_C168A6: FnUBound
  loc_C168A8: CI2I4
  loc_C168A9: ForI2 var_F0
  loc_C168AF: FLdPr Me
  loc_C168B2: MemLdI2 global_90
  loc_C168B5: CI4UI1
  loc_C168B6: FLdPr Me
  loc_C168B9: MemLdI2 global_88
  loc_C168BC: CI4UI1
  loc_C168BD: FLdPr Me
  loc_C168C0: MemLdStr global_80
  loc_C168C3: AryLock
  loc_C168C6: Ary1LdPr
  loc_C168C7: MemLdStr global_8
  loc_C168CA: AryLock
  loc_C168CD: Ary1LdRf
  loc_C168CE: FStR4 var_FC
  loc_C168D1: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_C168D6: PopAdLdVar
  loc_C168D7: FLdPr Me
  loc_C168DA: MemLdRfVar from_stack_1.global_60
  loc_C168DD: LdPrVar
  loc_C168DF: LateMemCall
  loc_C168E5: LitStr vbNullString
  loc_C168E8: LitI2_Byte 0
  loc_C168EA: LitI2_Byte 0
  loc_C168EC: LitI2_Byte 0
  loc_C168EE: LitStr "left"
  loc_C168F1: FMemLdR4 var_FC(0)
  loc_C168F6: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C168FB: CVarStr var_C8
  loc_C168FE: PopAdLdVar
  loc_C168FF: FLdPr Me
  loc_C16902: MemLdRfVar from_stack_1.global_60
  loc_C16905: LdPrVar
  loc_C16907: LateMemCall
  loc_C1690D: FFree1Var var_C8 = ""
  loc_C16910: LitStr vbNullString
  loc_C16913: LitI2_Byte 0
  loc_C16915: LitI2_Byte 0
  loc_C16917: LitI2_Byte 0
  loc_C16919: LitStr "left"
  loc_C1691C: FMemLdR4 var_FC(4)
  loc_C16921: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C16926: CVarStr var_C8
  loc_C16929: PopAdLdVar
  loc_C1692A: FLdPr Me
  loc_C1692D: MemLdRfVar from_stack_1.global_60
  loc_C16930: LdPrVar
  loc_C16932: LateMemCall
  loc_C16938: FFree1Var var_C8 = ""
  loc_C1693B: LitStr vbNullString
  loc_C1693E: LitI2_Byte 0
  loc_C16940: LitI2_Byte 0
  loc_C16942: LitI2_Byte 0
  loc_C16944: LitStr "left"
  loc_C16947: FMemLdR4 var_FC(8)
  loc_C1694C: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C16951: CVarStr var_C8
  loc_C16954: PopAdLdVar
  loc_C16955: FLdPr Me
  loc_C16958: MemLdRfVar from_stack_1.global_60
  loc_C1695B: LdPrVar
  loc_C1695D: LateMemCall
  loc_C16963: FFree1Var var_C8 = ""
  loc_C16966: LitStr vbNullString
  loc_C16969: LitI2_Byte 0
  loc_C1696B: LitI2_Byte 0
  loc_C1696D: LitI2_Byte 0
  loc_C1696F: LitStr "left"
  loc_C16972: FMemLdR4 var_FC(12)
  loc_C16977: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C1697C: CVarStr var_C8
  loc_C1697F: PopAdLdVar
  loc_C16980: FLdPr Me
  loc_C16983: MemLdRfVar from_stack_1.global_60
  loc_C16986: LdPrVar
  loc_C16988: LateMemCall
  loc_C1698E: FFree1Var var_C8 = ""
  loc_C16991: LitStr vbNullString
  loc_C16994: LitI2_Byte 0
  loc_C16996: LitI2_Byte 0
  loc_C16998: LitI2_Byte 0
  loc_C1699A: LitStr "left"
  loc_C1699D: FMemLdR4 var_FC(16)
  loc_C169A2: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C169A7: CVarStr var_C8
  loc_C169AA: PopAdLdVar
  loc_C169AB: FLdPr Me
  loc_C169AE: MemLdRfVar from_stack_1.global_60
  loc_C169B1: LdPrVar
  loc_C169B3: LateMemCall
  loc_C169B9: FFree1Var var_C8 = ""
  loc_C169BC: LitStr vbNullString
  loc_C169BF: LitI2_Byte 0
  loc_C169C1: LitI2_Byte 0
  loc_C169C3: LitI2_Byte 0
  loc_C169C5: LitStr "right"
  loc_C169C8: FMemLdR4 var_FC(20)
  loc_C169CD: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C169D2: CVarStr var_C8
  loc_C169D5: PopAdLdVar
  loc_C169D6: FLdPr Me
  loc_C169D9: MemLdRfVar from_stack_1.global_60
  loc_C169DC: LdPrVar
  loc_C169DE: LateMemCall
  loc_C169E4: FFree1Var var_C8 = ""
  loc_C169E7: LitStr vbNullString
  loc_C169EA: LitI2_Byte 0
  loc_C169EC: LitI2_Byte 0
  loc_C169EE: LitI2_Byte 0
  loc_C169F0: LitStr "right"
  loc_C169F3: FMemLdR4 var_FC(24)
  loc_C169F8: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C169FD: CVarStr var_C8
  loc_C16A00: PopAdLdVar
  loc_C16A01: FLdPr Me
  loc_C16A04: MemLdRfVar from_stack_1.global_60
  loc_C16A07: LdPrVar
  loc_C16A09: LateMemCall
  loc_C16A0F: FFree1Var var_C8 = ""
  loc_C16A12: LitStr vbNullString
  loc_C16A15: LitI2_Byte 0
  loc_C16A17: LitI2_Byte 0
  loc_C16A19: LitI2_Byte 0
  loc_C16A1B: LitStr "right"
  loc_C16A1E: FMemLdR4 var_FC(28)
  loc_C16A23: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C16A28: CVarStr var_C8
  loc_C16A2B: PopAdLdVar
  loc_C16A2C: FLdPr Me
  loc_C16A2F: MemLdRfVar from_stack_1.global_60
  loc_C16A32: LdPrVar
  loc_C16A34: LateMemCall
  loc_C16A3A: FFree1Var var_C8 = ""
  loc_C16A3D: FMemLdRf 0
  loc_C16A42: CVarRef
  loc_C16A47: LitVarStr var_AC, "<hr align=""center"" width=""10" & Chr(37) & """>"
  loc_C16A4C: FStVarCopyObj var_C8
  loc_C16A4F: FLdRfVar var_C8
  loc_C16A52: FMemLdR4 var_FC(36)
  loc_C16A57: LitStr vbNullString
  loc_C16A5A: EqStr
  loc_C16A5C: CVarBoolI2 var_9C
  loc_C16A60: FLdRfVar var_11C
  loc_C16A63: ImpAdCallFPR4  = IIf(, , )
  loc_C16A68: LitStr vbNullString
  loc_C16A6B: LitI2_Byte 0
  loc_C16A6D: LitI2_Byte 0
  loc_C16A6F: LitI2_Byte 0
  loc_C16A71: LitStr "center"
  loc_C16A74: FLdRfVar var_11C
  loc_C16A77: CStrVarVal var_B0
  loc_C16A7B: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C16A80: CVarStr var_12C
  loc_C16A83: PopAdLdVar
  loc_C16A84: FLdPr Me
  loc_C16A87: MemLdRfVar from_stack_1.global_60
  loc_C16A8A: LdPrVar
  loc_C16A8C: LateMemCall
  loc_C16A92: FFree1Str var_B0
  loc_C16A95: FFreeVar var_9C = "": var_C8 = "": var_11C = ""
  loc_C16AA0: LitVarStr var_9C, "     </tr>"
  loc_C16AA5: PopAdLdVar
  loc_C16AA6: FLdPr Me
  loc_C16AA9: MemLdRfVar from_stack_1.global_60
  loc_C16AAC: LdPrVar
  loc_C16AAE: LateMemCall
  loc_C16AB4: LitI4 0
  loc_C16AB9: FStR4 var_FC
  loc_C16ABC: AryUnlock
  loc_C16ABF: AryUnlock
  loc_C16AC2: FLdPr Me
  loc_C16AC5: MemLdRfVar from_stack_1.global_90
  loc_C16AC8: NextI2 var_F0, loc_C168AF
  loc_C16ACD: FLdPr Me
  loc_C16AD0: MemLdStr global_80
  loc_C16AD3: LitI2_Byte 1
  loc_C16AD5: FnUBound
  loc_C16AD7: LitI4 1
  loc_C16ADC: GtI4
  loc_C16ADD: BranchF loc_C16BE8
  loc_C16AE0: LitVarStr var_9C, "  <tr align=""right"" class=""SubTotales"">"
  loc_C16AE5: PopAdLdVar
  loc_C16AE6: FLdPr Me
  loc_C16AE9: MemLdRfVar from_stack_1.global_60
  loc_C16AEC: LdPrVar
  loc_C16AEE: LateMemCall
  loc_C16AF4: LitVarStr var_9C, "    <th colspan=""5"">Subtotal</th>"
  loc_C16AF9: PopAdLdVar
  loc_C16AFA: FLdPr Me
  loc_C16AFD: MemLdRfVar from_stack_1.global_60
  loc_C16B00: LdPrVar
  loc_C16B02: LateMemCall
  loc_C16B08: FLdPr Me
  loc_C16B0B: MemLdI2 global_88
  loc_C16B0E: CI4UI1
  loc_C16B0F: FLdPr Me
  loc_C16B12: MemLdStr global_80
  loc_C16B15: AryLock
  loc_C16B18: Ary1LdPr
  loc_C16B19: MemLdRfVar from_stack_1.global_12
  loc_C16B1C: FStR4 var_144
  loc_C16B1F: LitStr vbNullString
  loc_C16B22: LitI2_Byte 0
  loc_C16B24: LitI2_Byte 0
  loc_C16B26: LitI2_Byte 0
  loc_C16B28: LitStr "right"
  loc_C16B2B: FMemLdR4 var_144(0)
  loc_C16B30: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C16B35: CVarStr var_C8
  loc_C16B38: PopAdLdVar
  loc_C16B39: FLdPr Me
  loc_C16B3C: MemLdRfVar from_stack_1.global_60
  loc_C16B3F: LdPrVar
  loc_C16B41: LateMemCall
  loc_C16B47: FFree1Var var_C8 = ""
  loc_C16B4A: LitStr vbNullString
  loc_C16B4D: LitI2_Byte 0
  loc_C16B4F: LitI2_Byte 0
  loc_C16B51: LitI2_Byte 0
  loc_C16B53: LitStr "right"
  loc_C16B56: FMemLdR4 var_144(4)
  loc_C16B5B: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C16B60: CVarStr var_C8
  loc_C16B63: PopAdLdVar
  loc_C16B64: FLdPr Me
  loc_C16B67: MemLdRfVar from_stack_1.global_60
  loc_C16B6A: LdPrVar
  loc_C16B6C: LateMemCall
  loc_C16B72: FFree1Var var_C8 = ""
  loc_C16B75: LitStr vbNullString
  loc_C16B78: LitI2_Byte 0
  loc_C16B7A: LitI2_Byte 0
  loc_C16B7C: LitI2_Byte 0
  loc_C16B7E: LitStr "right"
  loc_C16B81: FMemLdR4 var_144(8)
  loc_C16B86: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C16B8B: CVarStr var_C8
  loc_C16B8E: PopAdLdVar
  loc_C16B8F: FLdPr Me
  loc_C16B92: MemLdRfVar from_stack_1.global_60
  loc_C16B95: LdPrVar
  loc_C16B97: LateMemCall
  loc_C16B9D: FFree1Var var_C8 = ""
  loc_C16BA0: LitStr vbNullString
  loc_C16BA3: LitI2_Byte 0
  loc_C16BA5: LitI2_Byte 0
  loc_C16BA7: LitI2_Byte 0
  loc_C16BA9: LitStr "center"
  loc_C16BAC: LitStr vbNullString
  loc_C16BAF: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C16BB4: CVarStr var_C8
  loc_C16BB7: PopAdLdVar
  loc_C16BB8: FLdPr Me
  loc_C16BBB: MemLdRfVar from_stack_1.global_60
  loc_C16BBE: LdPrVar
  loc_C16BC0: LateMemCall
  loc_C16BC6: FFree1Var var_C8 = ""
  loc_C16BC9: LitVarStr var_9C, "     </tr>"
  loc_C16BCE: PopAdLdVar
  loc_C16BCF: FLdPr Me
  loc_C16BD2: MemLdRfVar from_stack_1.global_60
  loc_C16BD5: LdPrVar
  loc_C16BD7: LateMemCall
  loc_C16BDD: LitI4 0
  loc_C16BE2: FStR4 var_144
  loc_C16BE5: AryUnlock
  loc_C16BE8: FLdPr Me
  loc_C16BEB: MemLdRfVar from_stack_1.global_88
  loc_C16BEE: NextI2 var_EC, loc_C1680D
  loc_C16BF3: LitVarStr var_9C, "    <tr class=""Totales"">"
  loc_C16BF8: PopAdLdVar
  loc_C16BF9: FLdPr Me
  loc_C16BFC: MemLdRfVar from_stack_1.global_60
  loc_C16BFF: LdPrVar
  loc_C16C01: LateMemCall
  loc_C16C07: LitVarStr var_9C, "    <td colspan=""5"" align=""right"">Total</td>"
  loc_C16C0C: PopAdLdVar
  loc_C16C0D: FLdPr Me
  loc_C16C10: MemLdRfVar from_stack_1.global_60
  loc_C16C13: LdPrVar
  loc_C16C15: LateMemCall
  loc_C16C1B: LitI4 1
  loc_C16C20: FLdPr Me
  loc_C16C23: MemLdStr global_84
  loc_C16C26: AryLock
  loc_C16C29: Ary1LdRf
  loc_C16C2A: FStR4 var_14C
  loc_C16C2D: LitStr vbNullString
  loc_C16C30: LitI2_Byte 0
  loc_C16C32: LitI2_Byte 0
  loc_C16C34: LitI2_Byte 0
  loc_C16C36: LitStr "right"
  loc_C16C39: FMemLdR4 var_14C(0)
  loc_C16C3E: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C16C43: CVarStr var_C8
  loc_C16C46: PopAdLdVar
  loc_C16C47: FLdPr Me
  loc_C16C4A: MemLdRfVar from_stack_1.global_60
  loc_C16C4D: LdPrVar
  loc_C16C4F: LateMemCall
  loc_C16C55: FFree1Var var_C8 = ""
  loc_C16C58: LitStr vbNullString
  loc_C16C5B: LitI2_Byte 0
  loc_C16C5D: LitI2_Byte 0
  loc_C16C5F: LitI2_Byte 0
  loc_C16C61: LitStr "right"
  loc_C16C64: FMemLdR4 var_14C(4)
  loc_C16C69: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C16C6E: CVarStr var_C8
  loc_C16C71: PopAdLdVar
  loc_C16C72: FLdPr Me
  loc_C16C75: MemLdRfVar from_stack_1.global_60
  loc_C16C78: LdPrVar
  loc_C16C7A: LateMemCall
  loc_C16C80: FFree1Var var_C8 = ""
  loc_C16C83: LitStr vbNullString
  loc_C16C86: LitI2_Byte 0
  loc_C16C88: LitI2_Byte 0
  loc_C16C8A: LitI2_Byte 0
  loc_C16C8C: LitStr "right"
  loc_C16C8F: FMemLdR4 var_14C(8)
  loc_C16C94: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C16C99: CVarStr var_C8
  loc_C16C9C: PopAdLdVar
  loc_C16C9D: FLdPr Me
  loc_C16CA0: MemLdRfVar from_stack_1.global_60
  loc_C16CA3: LdPrVar
  loc_C16CA5: LateMemCall
  loc_C16CAB: FFree1Var var_C8 = ""
  loc_C16CAE: LitStr vbNullString
  loc_C16CB1: LitI2_Byte 0
  loc_C16CB3: LitI2_Byte 0
  loc_C16CB5: LitI2_Byte 0
  loc_C16CB7: LitStr "center"
  loc_C16CBA: LitStr vbNullString
  loc_C16CBD: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C16CC2: CVarStr var_C8
  loc_C16CC5: PopAdLdVar
  loc_C16CC6: FLdPr Me
  loc_C16CC9: MemLdRfVar from_stack_1.global_60
  loc_C16CCC: LdPrVar
  loc_C16CCE: LateMemCall
  loc_C16CD4: FFree1Var var_C8 = ""
  loc_C16CD7: LitI4 0
  loc_C16CDC: FStR4 var_14C
  loc_C16CDF: AryUnlock
  loc_C16CE2: LitVarStr var_9C, "     </tr>"
  loc_C16CE7: PopAdLdVar
  loc_C16CE8: FLdPr Me
  loc_C16CEB: MemLdRfVar from_stack_1.global_60
  loc_C16CEE: LdPrVar
  loc_C16CF0: LateMemCall
  loc_C16CF6: Call Proc_305_26_A0B6B8()
  loc_C16CFB: FLdPr Me
  loc_C16CFE: MemLdRfVar from_stack_1.global_60
  loc_C16D01: LdPrVar
  loc_C16D03: LateMemCall
  loc_C16D09: LitStr vbNullString
  loc_C16D0C: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_C16D11: ExitProcHresult
End Sub

Public Sub GeneraXLS() '9C2E74
  'Data Table: 49EE30
  loc_9C2E5C: LitI2_Byte 0
  loc_9C2E5E: FLdPr Me
  loc_9C2E61: MemStI2 bLogos
  loc_9C2E64: Call GeneraHTML()
  loc_9C2E69: LitI2_Byte &HFF
  loc_9C2E6B: FLdPr Me
  loc_9C2E6E: MemStI2 bLogos
  loc_9C2E71: ExitProcHresult
End Sub

Private Function Proc_305_23_AD85DC() 'AD85DC
  'Data Table: 49EE30
  loc_AD8498: FLdPr Me
  loc_AD849B: MemLdI2 global_88
  loc_AD849E: LitI2_Byte 1
  loc_AD84A0: AddI2
  loc_AD84A1: FLdPr Me
  loc_AD84A4: MemStI2 global_88
  loc_AD84A7: LitI2_Byte 0
  loc_AD84A9: FLdPr Me
  loc_AD84AC: MemStI2 global_90
  loc_AD84AF: LitI4 0
  loc_AD84B4: FLdPr Me
  loc_AD84B7: MemLdI2 global_88
  loc_AD84BA: CI4UI1
  loc_AD84BB: FLdPr Me
  loc_AD84BE: MemLdRfVar from_stack_1.global_80
  loc_AD84C1: RedimPreserve
  loc_AD84CB: FLdRfVar var_94
  loc_AD84CE: FLdPr Me
  loc_AD84D1: MemLdRfVar from_stack_1.global_76
  loc_AD84D4: NewIfNullPr clsboleapre
  loc_AD84D7: from_stack_1 = clsboleapre.CodiReca
  loc_AD84DC: LitI2_Byte 0
  loc_AD84DE: LitVar_Missing var_B8
  loc_AD84E1: LitI2_Byte 0
  loc_AD84E3: FLdVar var_94
  loc_AD84E7: FLdPr Me
  loc_AD84EA: MemLdI2 global_88
  loc_AD84ED: CI4UI1
  loc_AD84EE: FLdPr Me
  loc_AD84F1: MemLdStr global_80
  loc_AD84F4: AryLock
  loc_AD84F7: Ary1LdPr
  loc_AD84F8: MemLdRfVar from_stack_1.global_0
  loc_AD84FB: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_AD8500: AryUnlock
  loc_AD8503: FFreeVar var_94 = ""
  loc_AD850A: FLdRfVar var_94
  loc_AD850D: FLdPr Me
  loc_AD8510: MemLdRfVar from_stack_1.global_76
  loc_AD8513: NewIfNullPr clsboleapre
  loc_AD8516: from_stack_1 = clsboleapre.DetaReca
  loc_AD851B: LitI2_Byte 0
  loc_AD851D: LitVar_Missing var_B8
  loc_AD8520: LitI2_Byte 0
  loc_AD8522: FLdVar var_94
  loc_AD8526: FLdPr Me
  loc_AD8529: MemLdI2 global_88
  loc_AD852C: CI4UI1
  loc_AD852D: FLdPr Me
  loc_AD8530: MemLdStr global_80
  loc_AD8533: AryLock
  loc_AD8536: Ary1LdPr
  loc_AD8537: MemLdRfVar from_stack_1.global_4
  loc_AD853A: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_AD853F: AryUnlock
  loc_AD8542: FFreeVar var_94 = ""
  loc_AD8549: FLdPr Me
  loc_AD854C: MemLdI2 global_88
  loc_AD854F: CI4UI1
  loc_AD8550: FLdPr Me
  loc_AD8553: MemLdStr global_80
  loc_AD8556: AryLock
  loc_AD8559: Ary1LdPr
  loc_AD855A: MemLdRfVar from_stack_1.global_12
  loc_AD855D: FStR4 var_C0
  loc_AD8560: LitI2_Byte 0
  loc_AD8562: LitVar_Missing var_94
  loc_AD8565: LitI2_Byte &HFF
  loc_AD8567: LitVarI2 var_A8, 0
  loc_AD856C: PopAdLdVar
  loc_AD856D: FMemLdRf 0
  loc_AD8572: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_AD8577: FFree1Var var_94 = ""
  loc_AD857A: LitI2_Byte 0
  loc_AD857C: LitVar_Missing var_94
  loc_AD857F: LitI2_Byte &HFF
  loc_AD8581: LitVarI2 var_A8, 0
  loc_AD8586: PopAdLdVar
  loc_AD8587: FMemLdRf 0
  loc_AD858C: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_AD8591: FFree1Var var_94 = ""
  loc_AD8594: LitI2_Byte 0
  loc_AD8596: LitVar_Missing var_94
  loc_AD8599: LitI2_Byte &HFF
  loc_AD859B: LitVarI2 var_A8, 0
  loc_AD85A0: PopAdLdVar
  loc_AD85A1: FMemLdRf 0
  loc_AD85A6: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_AD85AB: FFree1Var var_94 = ""
  loc_AD85AE: LitI2_Byte 0
  loc_AD85B0: LitVar_Missing var_94
  loc_AD85B3: LitI2_Byte &HFF
  loc_AD85B5: LitVarI2 var_A8, 0
  loc_AD85BA: PopAdLdVar
  loc_AD85BB: FMemLdRf 0
  loc_AD85C0: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_AD85C5: FFree1Var var_94 = ""
  loc_AD85C8: LitI4 0
  loc_AD85CD: FStR4 var_C0
  loc_AD85D0: AryUnlock
  loc_AD85D3: Call Proc_305_24_BD2DE4()
  loc_AD85D8: ExitProcHresult
End Function

Private Function Proc_305_24_BD2DE4() 'BD2DE4
  'Data Table: 49EE30
  loc_BD26A8: LitStr "Municipalidad de Guaymallén"
  loc_BD26AB: LitStr "Municipalidad de General Alvear"
  loc_BD26AE: EqStr
  loc_BD26B0: BranchF loc_BD2A1E
  loc_BD26B3: FLdPr Me
  loc_BD26B6: MemLdI2 global_90
  loc_BD26B9: LitI2_Byte 1
  loc_BD26BB: AddI2
  loc_BD26BC: FLdPr Me
  loc_BD26BF: MemStI2 global_90
  loc_BD26C2: LitI4 0
  loc_BD26C7: FLdPr Me
  loc_BD26CA: MemLdI2 global_90
  loc_BD26CD: CI4UI1
  loc_BD26CE: FLdPr Me
  loc_BD26D1: MemLdI2 global_88
  loc_BD26D4: CI4UI1
  loc_BD26D5: FLdPr Me
  loc_BD26D8: MemLdStr global_80
  loc_BD26DB: Ary1LdPr
  loc_BD26DC: MemLdRfVar from_stack_1.global_8
  loc_BD26DF: RedimPreserve
  loc_BD26E9: FLdPr Me
  loc_BD26EC: MemLdI2 global_90
  loc_BD26EF: CI4UI1
  loc_BD26F0: FLdPr Me
  loc_BD26F3: MemLdI2 global_88
  loc_BD26F6: CI4UI1
  loc_BD26F7: FLdPr Me
  loc_BD26FA: MemLdStr global_80
  loc_BD26FD: AryLock
  loc_BD2700: Ary1LdPr
  loc_BD2701: MemLdStr global_8
  loc_BD2704: AryLock
  loc_BD2707: Ary1LdRf
  loc_BD2708: FStR4 var_90
  loc_BD270B: FLdRfVar var_A0
  loc_BD270E: FLdPr Me
  loc_BD2711: MemLdRfVar from_stack_1.global_76
  loc_BD2714: NewIfNullPr clsboleapre
  loc_BD2717: from_stack_1 = clsboleapre.AutoApre
  loc_BD271C: LitI2_Byte 0
  loc_BD271E: LitVar_Missing var_C0
  loc_BD2721: LitI2_Byte 0
  loc_BD2723: FLdVar var_A0
  loc_BD2727: FMemLdRf unk_49EDA1
  loc_BD272C: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BD2731: FFreeVar var_A0 = ""
  loc_BD2738: FLdRfVar var_C4
  loc_BD273B: FLdPr Me
  loc_BD273E: MemLdRfVar from_stack_1.global_76
  loc_BD2741: NewIfNullPr clsboleapre
  loc_BD2744: from_stack_1 = clsboleapre.Caratula
  loc_BD2749: LitI2_Byte 0
  loc_BD274B: LitVar_Missing var_C0
  loc_BD274E: LitI2_Byte 0
  loc_BD2750: FLdZeroAd var_C4
  loc_BD2753: CVarStr var_A0
  loc_BD2756: PopAdLdVar
  loc_BD2757: FMemLdRf unk_49EDA1
  loc_BD275C: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BD2761: FFreeVar var_A0 = ""
  loc_BD2768: FLdRfVar var_C4
  loc_BD276B: FLdPr Me
  loc_BD276E: MemLdRfVar from_stack_1.global_76
  loc_BD2771: NewIfNullPr clsboleapre
  loc_BD2774: from_stack_1 = clsboleapre.Juzgado
  loc_BD2779: LitI2_Byte 0
  loc_BD277B: LitVar_Missing var_C0
  loc_BD277E: LitI2_Byte 0
  loc_BD2780: FLdZeroAd var_C4
  loc_BD2783: CVarStr var_A0
  loc_BD2786: PopAdLdVar
  loc_BD2787: FMemLdRf unk_49EDA1
  loc_BD278C: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BD2791: FFreeVar var_A0 = ""
  loc_BD2798: FLdRfVar var_C8
  loc_BD279B: FLdPr Me
  loc_BD279E: MemLdRfVar from_stack_1.global_76
  loc_BD27A1: NewIfNullPr clsboleapre
  loc_BD27A4: from_stack_1 = clsboleapre.NumeApre
  loc_BD27A9: LitI2_Byte 0
  loc_BD27AB: LitVar_Missing var_A0
  loc_BD27AE: LitI2_Byte 0
  loc_BD27B0: ILdRf var_C8
  loc_BD27B3: CVarI4
  loc_BD27B7: PopAdLdVar
  loc_BD27B8: FMemLdRf unk_49EDA1
  loc_BD27BD: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BD27C2: FFree1Var var_A0 = ""
  loc_BD27C5: FLdRfVar var_DE
  loc_BD27C8: FLdPr Me
  loc_BD27CB: VCallAd Control_ID_IncluyeChk
  loc_BD27CE: FStAdFunc var_DC
  loc_BD27D1: FLdPr var_DC
  loc_BD27D4:  = Me.Value
  loc_BD27D9: FLdI2 var_DE
  loc_BD27DC: CI4UI1
  loc_BD27DD: LitI4 1
  loc_BD27E2: EqI4
  loc_BD27E3: FFree1Ad var_DC
  loc_BD27E6: BranchF loc_BD28F7
  loc_BD27E9: FLdRfVar var_E8
  loc_BD27EC: FLdPr Me
  loc_BD27EF: MemLdRfVar from_stack_1.global_76
  loc_BD27F2: NewIfNullPr clsboleapre
  loc_BD27F5: from_stack_1 = clsboleapre.ApleBoap
  loc_BD27FA: LitI2_Byte 0
  loc_BD27FC: FLdPr Me
  loc_BD27FF: MemLdI2 global_88
  loc_BD2802: CI4UI1
  loc_BD2803: FLdPr Me
  loc_BD2806: MemLdStr global_80
  loc_BD2809: AryLock
  loc_BD280C: Ary1LdPr
  loc_BD280D: MemLdRfVar from_stack_1.global_12
  loc_BD2810: CVarRef
  loc_BD2815: LitI2_Byte &HFF
  loc_BD2817: FLdFPR8 var_E8
  loc_BD281A: CVarR8
  loc_BD281E: PopAdLdVar
  loc_BD281F: FMemLdRf unk_49EDA1
  loc_BD2824: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BD2829: AryUnlock
  loc_BD282C: FLdRfVar var_E8
  loc_BD282F: FLdPr Me
  loc_BD2832: MemLdRfVar from_stack_1.global_76
  loc_BD2835: NewIfNullPr clsboleapre
  loc_BD2838: from_stack_1 = clsboleapre.ReseBoap
  loc_BD283D: LitI2_Byte 0
  loc_BD283F: FLdPr Me
  loc_BD2842: MemLdI2 global_88
  loc_BD2845: CI4UI1
  loc_BD2846: FLdPr Me
  loc_BD2849: MemLdStr global_80
  loc_BD284C: AryLock
  loc_BD284F: Ary1LdPr
  loc_BD2850: MemLdRfVar from_stack_1.global_16
  loc_BD2853: CVarRef
  loc_BD2858: LitI2_Byte &HFF
  loc_BD285A: FLdFPR8 var_E8
  loc_BD285D: CVarR8
  loc_BD2861: PopAdLdVar
  loc_BD2862: FMemLdRf unk_49EDA1
  loc_BD2867: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BD286C: AryUnlock
  loc_BD286F: FLdRfVar var_E8
  loc_BD2872: FLdPr Me
  loc_BD2875: MemLdRfVar from_stack_1.global_76
  loc_BD2878: NewIfNullPr clsboleapre
  loc_BD287B: from_stack_1 = clsboleapre.DefiBoap
  loc_BD2880: LitI2_Byte 0
  loc_BD2882: FLdPr Me
  loc_BD2885: MemLdI2 global_88
  loc_BD2888: CI4UI1
  loc_BD2889: FLdPr Me
  loc_BD288C: MemLdStr global_80
  loc_BD288F: AryLock
  loc_BD2892: Ary1LdPr
  loc_BD2893: MemLdRfVar from_stack_1.global_20
  loc_BD2896: CVarRef
  loc_BD289B: LitI2_Byte &HFF
  loc_BD289D: FLdFPR8 var_E8
  loc_BD28A0: CVarR8
  loc_BD28A4: PopAdLdVar
  loc_BD28A5: FMemLdRf unk_49EDA1
  loc_BD28AA: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BD28AF: AryUnlock
  loc_BD28B2: FLdRfVar var_A0
  loc_BD28B5: FLdPr Me
  loc_BD28B8: MemLdRfVar from_stack_1.global_76
  loc_BD28BB: NewIfNullPr clsboleapre
  loc_BD28BE: from_stack_1 = clsboleapre.TotaBoap
  loc_BD28C3: LitI2_Byte 0
  loc_BD28C5: FLdPr Me
  loc_BD28C8: MemLdI2 global_88
  loc_BD28CB: CI4UI1
  loc_BD28CC: FLdPr Me
  loc_BD28CF: MemLdStr global_80
  loc_BD28D2: AryLock
  loc_BD28D5: Ary1LdPr
  loc_BD28D6: MemLdRfVar from_stack_1.global_24
  loc_BD28D9: CVarRef
  loc_BD28DE: LitI2_Byte &HFF
  loc_BD28E0: FLdVar var_A0
  loc_BD28E4: FMemLdRf unk_49EDA1
  loc_BD28E9: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BD28EE: AryUnlock
  loc_BD28F1: FFree1Var var_A0 = ""
  loc_BD28F4: Branch loc_BD29FA
  loc_BD28F7: FLdRfVar var_E8
  loc_BD28FA: FLdPr Me
  loc_BD28FD: MemLdRfVar from_stack_1.global_76
  loc_BD2900: NewIfNullPr clsboleapre
  loc_BD2903: from_stack_1 = clsboleapre.ApleBoap
  loc_BD2908: LitI2_Byte 0
  loc_BD290A: LitI4 1
  loc_BD290F: FLdPr Me
  loc_BD2912: MemLdStr global_84
  loc_BD2915: AryLock
  loc_BD2918: Ary1LdPr
  loc_BD2919: MemLdRfVar from_stack_1.global_0
  loc_BD291C: CVarRef
  loc_BD2921: LitI2_Byte &HFF
  loc_BD2923: FLdFPR8 var_E8
  loc_BD2926: CVarR8
  loc_BD292A: PopAdLdVar
  loc_BD292B: FMemLdRf unk_49EDA1
  loc_BD2930: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BD2935: AryUnlock
  loc_BD2938: FLdRfVar var_E8
  loc_BD293B: FLdPr Me
  loc_BD293E: MemLdRfVar from_stack_1.global_76
  loc_BD2941: NewIfNullPr clsboleapre
  loc_BD2944: from_stack_1 = clsboleapre.ReseBoap
  loc_BD2949: LitI2_Byte 0
  loc_BD294B: LitI4 1
  loc_BD2950: FLdPr Me
  loc_BD2953: MemLdStr global_84
  loc_BD2956: AryLock
  loc_BD2959: Ary1LdPr
  loc_BD295A: MemLdRfVar from_stack_1.global_4
  loc_BD295D: CVarRef
  loc_BD2962: LitI2_Byte &HFF
  loc_BD2964: FLdFPR8 var_E8
  loc_BD2967: CVarR8
  loc_BD296B: PopAdLdVar
  loc_BD296C: FMemLdRf unk_49EDA1
  loc_BD2971: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BD2976: AryUnlock
  loc_BD2979: FLdRfVar var_E8
  loc_BD297C: FLdPr Me
  loc_BD297F: MemLdRfVar from_stack_1.global_76
  loc_BD2982: NewIfNullPr clsboleapre
  loc_BD2985: from_stack_1 = clsboleapre.DefiBoap
  loc_BD298A: LitI2_Byte 0
  loc_BD298C: LitI4 1
  loc_BD2991: FLdPr Me
  loc_BD2994: MemLdStr global_84
  loc_BD2997: AryLock
  loc_BD299A: Ary1LdPr
  loc_BD299B: MemLdRfVar from_stack_1.global_8
  loc_BD299E: CVarRef
  loc_BD29A3: LitI2_Byte &HFF
  loc_BD29A5: FLdFPR8 var_E8
  loc_BD29A8: CVarR8
  loc_BD29AC: PopAdLdVar
  loc_BD29AD: FMemLdRf unk_49EDA1
  loc_BD29B2: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BD29B7: AryUnlock
  loc_BD29BA: FLdRfVar var_A0
  loc_BD29BD: FLdPr Me
  loc_BD29C0: MemLdRfVar from_stack_1.global_76
  loc_BD29C3: NewIfNullPr clsboleapre
  loc_BD29C6: from_stack_1 = clsboleapre.TotaBoap
  loc_BD29CB: LitI2_Byte 0
  loc_BD29CD: LitI4 1
  loc_BD29D2: FLdPr Me
  loc_BD29D5: MemLdStr global_84
  loc_BD29D8: AryLock
  loc_BD29DB: Ary1LdPr
  loc_BD29DC: MemLdRfVar from_stack_1.global_12
  loc_BD29DF: CVarRef
  loc_BD29E4: LitI2_Byte &HFF
  loc_BD29E6: FLdVar var_A0
  loc_BD29EA: FMemLdRf unk_49EDA1
  loc_BD29EF: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BD29F4: AryUnlock
  loc_BD29F7: FFree1Var var_A0 = ""
  loc_BD29FA: LitI4 0
  loc_BD29FF: FStR4 var_90
  loc_BD2A02: AryUnlock
  loc_BD2A05: AryUnlock
  loc_BD2A08: LitI2_Byte 1
  loc_BD2A0A: PopTmpLdAd2 var_DE
  loc_BD2A0D: FLdPr Me
  loc_BD2A10: MemLdRfVar from_stack_1.global_76
  loc_BD2A13: NewIfNullPr clsboleapre
  loc_BD2A16: Call clsboleapre.Move(from_stack_1v)
  loc_BD2A1B: Branch loc_BD2DE3
  loc_BD2A1E: FLdPr Me
  loc_BD2A21: MemLdI2 global_90
  loc_BD2A24: LitI2_Byte 1
  loc_BD2A26: AddI2
  loc_BD2A27: FLdPr Me
  loc_BD2A2A: MemStI2 global_90
  loc_BD2A2D: LitI4 0
  loc_BD2A32: FLdPr Me
  loc_BD2A35: MemLdI2 global_90
  loc_BD2A38: CI4UI1
  loc_BD2A39: FLdPr Me
  loc_BD2A3C: MemLdI2 global_88
  loc_BD2A3F: CI4UI1
  loc_BD2A40: FLdPr Me
  loc_BD2A43: MemLdStr global_80
  loc_BD2A46: Ary1LdPr
  loc_BD2A47: MemLdRfVar from_stack_1.global_8
  loc_BD2A4A: RedimPreserve
  loc_BD2A54: FLdPr Me
  loc_BD2A57: MemLdI2 global_90
  loc_BD2A5A: CI4UI1
  loc_BD2A5B: FLdPr Me
  loc_BD2A5E: MemLdI2 global_88
  loc_BD2A61: CI4UI1
  loc_BD2A62: FLdPr Me
  loc_BD2A65: MemLdStr global_80
  loc_BD2A68: AryLock
  loc_BD2A6B: Ary1LdPr
  loc_BD2A6C: MemLdStr global_8
  loc_BD2A6F: AryLock
  loc_BD2A72: Ary1LdRf
  loc_BD2A73: FStR4 var_F8
  loc_BD2A76: FLdRfVar var_C4
  loc_BD2A79: FLdPr Me
  loc_BD2A7C: MemLdRfVar from_stack_1.global_76
  loc_BD2A7F: NewIfNullPr clsboleapre
  loc_BD2A82: from_stack_1 = clsboleapre.DetaPers
  loc_BD2A87: LitI2_Byte 0
  loc_BD2A89: LitVar_Missing var_C0
  loc_BD2A8C: LitI2_Byte 0
  loc_BD2A8E: FLdZeroAd var_C4
  loc_BD2A91: CVarStr var_A0
  loc_BD2A94: PopAdLdVar
  loc_BD2A95: FMemLdRf 0
  loc_BD2A9A: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BD2A9F: FFreeVar var_A0 = ""
  loc_BD2AA6: FLdRfVar var_A0
  loc_BD2AA9: FLdPr Me
  loc_BD2AAC: MemLdRfVar from_stack_1.global_76
  loc_BD2AAF: NewIfNullPr clsboleapre
  loc_BD2AB2: from_stack_1 = clsboleapre.AutoApre
  loc_BD2AB7: LitI2_Byte 0
  loc_BD2AB9: LitVar_Missing var_C0
  loc_BD2ABC: LitI2_Byte 0
  loc_BD2ABE: FLdVar var_A0
  loc_BD2AC2: FMemLdRf 0
  loc_BD2AC7: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BD2ACC: FFreeVar var_A0 = ""
  loc_BD2AD3: FLdRfVar var_C4
  loc_BD2AD6: FLdPr Me
  loc_BD2AD9: MemLdRfVar from_stack_1.global_76
  loc_BD2ADC: NewIfNullPr clsboleapre
  loc_BD2ADF: from_stack_1 = clsboleapre.Caratula
  loc_BD2AE4: LitI2_Byte 0
  loc_BD2AE6: LitVar_Missing var_C0
  loc_BD2AE9: LitI2_Byte 0
  loc_BD2AEB: FLdZeroAd var_C4
  loc_BD2AEE: CVarStr var_A0
  loc_BD2AF1: PopAdLdVar
  loc_BD2AF2: FMemLdRf 0
  loc_BD2AF7: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BD2AFC: FFreeVar var_A0 = ""
  loc_BD2B03: FLdRfVar var_C4
  loc_BD2B06: FLdPr Me
  loc_BD2B09: MemLdRfVar from_stack_1.global_76
  loc_BD2B0C: NewIfNullPr clsboleapre
  loc_BD2B0F: from_stack_1 = clsboleapre.Juzgado
  loc_BD2B14: LitI2_Byte 0
  loc_BD2B16: LitVar_Missing var_C0
  loc_BD2B19: LitI2_Byte 0
  loc_BD2B1B: FLdZeroAd var_C4
  loc_BD2B1E: CVarStr var_A0
  loc_BD2B21: PopAdLdVar
  loc_BD2B22: FMemLdRf 0
  loc_BD2B27: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BD2B2C: FFreeVar var_A0 = ""
  loc_BD2B33: FLdRfVar var_C8
  loc_BD2B36: FLdPr Me
  loc_BD2B39: MemLdRfVar from_stack_1.global_76
  loc_BD2B3C: NewIfNullPr clsboleapre
  loc_BD2B3F: from_stack_1 = clsboleapre.NumeApre
  loc_BD2B44: LitI2_Byte 0
  loc_BD2B46: LitVar_Missing var_A0
  loc_BD2B49: LitI2_Byte 0
  loc_BD2B4B: ILdRf var_C8
  loc_BD2B4E: CVarI4
  loc_BD2B52: PopAdLdVar
  loc_BD2B53: FMemLdRf 0
  loc_BD2B58: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BD2B5D: FFree1Var var_A0 = ""
  loc_BD2B60: FLdRfVar var_A0
  loc_BD2B63: FLdPr Me
  loc_BD2B66: MemLdRfVar from_stack_1.global_76
  loc_BD2B69: NewIfNullPr clsboleapre
  loc_BD2B6C: from_stack_1 = clsboleapre.FeacBoap
  loc_BD2B71: LitI2_Byte 0
  loc_BD2B73: LitVar_Missing var_C0
  loc_BD2B76: LitI2_Byte 0
  loc_BD2B78: FLdVar var_A0
  loc_BD2B7C: FMemLdRf 0
  loc_BD2B81: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BD2B86: FFreeVar var_A0 = ""
  loc_BD2B8D: FLdRfVar var_DE
  loc_BD2B90: FLdPr Me
  loc_BD2B93: VCallAd Control_ID_IncluyeChk
  loc_BD2B96: FStAdFunc var_DC
  loc_BD2B99: FLdPr var_DC
  loc_BD2B9C:  = Me.Value
  loc_BD2BA1: FLdI2 var_DE
  loc_BD2BA4: CI4UI1
  loc_BD2BA5: LitI4 1
  loc_BD2BAA: EqI4
  loc_BD2BAB: FFree1Ad var_DC
  loc_BD2BAE: BranchF loc_BD2CBF
  loc_BD2BB1: FLdRfVar var_E8
  loc_BD2BB4: FLdPr Me
  loc_BD2BB7: MemLdRfVar from_stack_1.global_76
  loc_BD2BBA: NewIfNullPr clsboleapre
  loc_BD2BBD: from_stack_1 = clsboleapre.ApleBoap
  loc_BD2BC2: LitI2_Byte 0
  loc_BD2BC4: FLdPr Me
  loc_BD2BC7: MemLdI2 global_88
  loc_BD2BCA: CI4UI1
  loc_BD2BCB: FLdPr Me
  loc_BD2BCE: MemLdStr global_80
  loc_BD2BD1: AryLock
  loc_BD2BD4: Ary1LdPr
  loc_BD2BD5: MemLdRfVar from_stack_1.global_12
  loc_BD2BD8: CVarRef
  loc_BD2BDD: LitI2_Byte &HFF
  loc_BD2BDF: FLdFPR8 var_E8
  loc_BD2BE2: CVarR8
  loc_BD2BE6: PopAdLdVar
  loc_BD2BE7: FMemLdRf 0
  loc_BD2BEC: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BD2BF1: AryUnlock
  loc_BD2BF4: FLdRfVar var_E8
  loc_BD2BF7: FLdPr Me
  loc_BD2BFA: MemLdRfVar from_stack_1.global_76
  loc_BD2BFD: NewIfNullPr clsboleapre
  loc_BD2C00: from_stack_1 = clsboleapre.ReseBoap
  loc_BD2C05: LitI2_Byte 0
  loc_BD2C07: FLdPr Me
  loc_BD2C0A: MemLdI2 global_88
  loc_BD2C0D: CI4UI1
  loc_BD2C0E: FLdPr Me
  loc_BD2C11: MemLdStr global_80
  loc_BD2C14: AryLock
  loc_BD2C17: Ary1LdPr
  loc_BD2C18: MemLdRfVar from_stack_1.global_16
  loc_BD2C1B: CVarRef
  loc_BD2C20: LitI2_Byte &HFF
  loc_BD2C22: FLdFPR8 var_E8
  loc_BD2C25: CVarR8
  loc_BD2C29: PopAdLdVar
  loc_BD2C2A: FMemLdRf 0
  loc_BD2C2F: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BD2C34: AryUnlock
  loc_BD2C37: FLdRfVar var_E8
  loc_BD2C3A: FLdPr Me
  loc_BD2C3D: MemLdRfVar from_stack_1.global_76
  loc_BD2C40: NewIfNullPr clsboleapre
  loc_BD2C43: from_stack_1 = clsboleapre.DefiBoap
  loc_BD2C48: LitI2_Byte 0
  loc_BD2C4A: FLdPr Me
  loc_BD2C4D: MemLdI2 global_88
  loc_BD2C50: CI4UI1
  loc_BD2C51: FLdPr Me
  loc_BD2C54: MemLdStr global_80
  loc_BD2C57: AryLock
  loc_BD2C5A: Ary1LdPr
  loc_BD2C5B: MemLdRfVar from_stack_1.global_20
  loc_BD2C5E: CVarRef
  loc_BD2C63: LitI2_Byte &HFF
  loc_BD2C65: FLdFPR8 var_E8
  loc_BD2C68: CVarR8
  loc_BD2C6C: PopAdLdVar
  loc_BD2C6D: FMemLdRf 0
  loc_BD2C72: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BD2C77: AryUnlock
  loc_BD2C7A: FLdRfVar var_A0
  loc_BD2C7D: FLdPr Me
  loc_BD2C80: MemLdRfVar from_stack_1.global_76
  loc_BD2C83: NewIfNullPr clsboleapre
  loc_BD2C86: from_stack_1 = clsboleapre.TotaBoap
  loc_BD2C8B: LitI2_Byte 0
  loc_BD2C8D: FLdPr Me
  loc_BD2C90: MemLdI2 global_88
  loc_BD2C93: CI4UI1
  loc_BD2C94: FLdPr Me
  loc_BD2C97: MemLdStr global_80
  loc_BD2C9A: AryLock
  loc_BD2C9D: Ary1LdPr
  loc_BD2C9E: MemLdRfVar from_stack_1.global_24
  loc_BD2CA1: CVarRef
  loc_BD2CA6: LitI2_Byte &HFF
  loc_BD2CA8: FLdVar var_A0
  loc_BD2CAC: FMemLdRf 0
  loc_BD2CB1: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BD2CB6: AryUnlock
  loc_BD2CB9: FFree1Var var_A0 = ""
  loc_BD2CBC: Branch loc_BD2DC2
  loc_BD2CBF: FLdRfVar var_E8
  loc_BD2CC2: FLdPr Me
  loc_BD2CC5: MemLdRfVar from_stack_1.global_76
  loc_BD2CC8: NewIfNullPr clsboleapre
  loc_BD2CCB: from_stack_1 = clsboleapre.ApleBoap
  loc_BD2CD0: LitI2_Byte 0
  loc_BD2CD2: LitI4 1
  loc_BD2CD7: FLdPr Me
  loc_BD2CDA: MemLdStr global_84
  loc_BD2CDD: AryLock
  loc_BD2CE0: Ary1LdPr
  loc_BD2CE1: MemLdRfVar from_stack_1.global_0
  loc_BD2CE4: CVarRef
  loc_BD2CE9: LitI2_Byte &HFF
  loc_BD2CEB: FLdFPR8 var_E8
  loc_BD2CEE: CVarR8
  loc_BD2CF2: PopAdLdVar
  loc_BD2CF3: FMemLdRf 0
  loc_BD2CF8: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BD2CFD: AryUnlock
  loc_BD2D00: FLdRfVar var_E8
  loc_BD2D03: FLdPr Me
  loc_BD2D06: MemLdRfVar from_stack_1.global_76
  loc_BD2D09: NewIfNullPr clsboleapre
  loc_BD2D0C: from_stack_1 = clsboleapre.ReseBoap
  loc_BD2D11: LitI2_Byte 0
  loc_BD2D13: LitI4 1
  loc_BD2D18: FLdPr Me
  loc_BD2D1B: MemLdStr global_84
  loc_BD2D1E: AryLock
  loc_BD2D21: Ary1LdPr
  loc_BD2D22: MemLdRfVar from_stack_1.global_4
  loc_BD2D25: CVarRef
  loc_BD2D2A: LitI2_Byte &HFF
  loc_BD2D2C: FLdFPR8 var_E8
  loc_BD2D2F: CVarR8
  loc_BD2D33: PopAdLdVar
  loc_BD2D34: FMemLdRf 0
  loc_BD2D39: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BD2D3E: AryUnlock
  loc_BD2D41: FLdRfVar var_E8
  loc_BD2D44: FLdPr Me
  loc_BD2D47: MemLdRfVar from_stack_1.global_76
  loc_BD2D4A: NewIfNullPr clsboleapre
  loc_BD2D4D: from_stack_1 = clsboleapre.DefiBoap
  loc_BD2D52: LitI2_Byte 0
  loc_BD2D54: LitI4 1
  loc_BD2D59: FLdPr Me
  loc_BD2D5C: MemLdStr global_84
  loc_BD2D5F: AryLock
  loc_BD2D62: Ary1LdPr
  loc_BD2D63: MemLdRfVar from_stack_1.global_8
  loc_BD2D66: CVarRef
  loc_BD2D6B: LitI2_Byte &HFF
  loc_BD2D6D: FLdFPR8 var_E8
  loc_BD2D70: CVarR8
  loc_BD2D74: PopAdLdVar
  loc_BD2D75: FMemLdRf 0
  loc_BD2D7A: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BD2D7F: AryUnlock
  loc_BD2D82: FLdRfVar var_A0
  loc_BD2D85: FLdPr Me
  loc_BD2D88: MemLdRfVar from_stack_1.global_76
  loc_BD2D8B: NewIfNullPr clsboleapre
  loc_BD2D8E: from_stack_1 = clsboleapre.TotaBoap
  loc_BD2D93: LitI2_Byte 0
  loc_BD2D95: LitI4 1
  loc_BD2D9A: FLdPr Me
  loc_BD2D9D: MemLdStr global_84
  loc_BD2DA0: AryLock
  loc_BD2DA3: Ary1LdPr
  loc_BD2DA4: MemLdRfVar from_stack_1.global_12
  loc_BD2DA7: CVarRef
  loc_BD2DAC: LitI2_Byte &HFF
  loc_BD2DAE: FLdVar var_A0
  loc_BD2DB2: FMemLdRf 0
  loc_BD2DB7: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BD2DBC: AryUnlock
  loc_BD2DBF: FFree1Var var_A0 = ""
  loc_BD2DC2: LitI4 0
  loc_BD2DC7: FStR4 var_F8
  loc_BD2DCA: AryUnlock
  loc_BD2DCD: AryUnlock
  loc_BD2DD0: LitI2_Byte 1
  loc_BD2DD2: PopTmpLdAd2 var_DE
  loc_BD2DD5: FLdPr Me
  loc_BD2DD8: MemLdRfVar from_stack_1.global_76
  loc_BD2DDB: NewIfNullPr clsboleapre
  loc_BD2DDE: Call clsboleapre.Move(from_stack_1v)
  loc_BD2DE3: ExitProcHresult
End Function

Private Function Proc_305_25_BF6F84() 'BF6F84
  'Data Table: 49EE30
  loc_BF6728: LitVarStr var_94, "<html>"
  loc_BF672D: PopAdLdVar
  loc_BF672E: FLdPr Me
  loc_BF6731: MemLdRfVar from_stack_1.global_60
  loc_BF6734: LdPrVar
  loc_BF6736: LateMemCall
  loc_BF673C: LitVarStr var_94, "<head>"
  loc_BF6741: PopAdLdVar
  loc_BF6742: FLdPr Me
  loc_BF6745: MemLdRfVar from_stack_1.global_60
  loc_BF6748: LdPrVar
  loc_BF674A: LateMemCall
  loc_BF6750: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_BF6755: PopAdLdVar
  loc_BF6756: FLdPr Me
  loc_BF6759: MemLdRfVar from_stack_1.global_60
  loc_BF675C: LdPrVar
  loc_BF675E: LateMemCall
  loc_BF6764: LitStr "<title>"
  loc_BF6767: FLdRfVar var_A8
  loc_BF676A: FLdPr Me
  loc_BF676D:  = Me.Caption
  loc_BF6772: ILdRf var_A8
  loc_BF6775: ConcatStr
  loc_BF6776: FStStrNoPop var_AC
  loc_BF6779: LitStr "</title>"
  loc_BF677C: ConcatStr
  loc_BF677D: CVarStr var_BC
  loc_BF6780: PopAdLdVar
  loc_BF6781: FLdPr Me
  loc_BF6784: MemLdRfVar from_stack_1.global_60
  loc_BF6787: LdPrVar
  loc_BF6789: LateMemCall
  loc_BF678F: FFreeStr var_A8 = ""
  loc_BF6796: FFree1Var var_BC = ""
  loc_BF6799: LitVarStr var_94, "<style type=""text/css"">"
  loc_BF679E: PopAdLdVar
  loc_BF679F: FLdPr Me
  loc_BF67A2: MemLdRfVar from_stack_1.global_60
  loc_BF67A5: LdPrVar
  loc_BF67A7: LateMemCall
  loc_BF67AD: LitVarStr var_94, ".Titulo1 {"
  loc_BF67B2: PopAdLdVar
  loc_BF67B3: FLdPr Me
  loc_BF67B6: MemLdRfVar from_stack_1.global_60
  loc_BF67B9: LdPrVar
  loc_BF67BB: LateMemCall
  loc_BF67C1: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BF67C6: PopAdLdVar
  loc_BF67C7: FLdPr Me
  loc_BF67CA: MemLdRfVar from_stack_1.global_60
  loc_BF67CD: LdPrVar
  loc_BF67CF: LateMemCall
  loc_BF67D5: LitVarStr var_94, " font-size: 18px;"
  loc_BF67DA: PopAdLdVar
  loc_BF67DB: FLdPr Me
  loc_BF67DE: MemLdRfVar from_stack_1.global_60
  loc_BF67E1: LdPrVar
  loc_BF67E3: LateMemCall
  loc_BF67E9: LitVarStr var_94, " font-weight: bold;"
  loc_BF67EE: PopAdLdVar
  loc_BF67EF: FLdPr Me
  loc_BF67F2: MemLdRfVar from_stack_1.global_60
  loc_BF67F5: LdPrVar
  loc_BF67F7: LateMemCall
  loc_BF67FD: LitVarStr var_94, "}"
  loc_BF6802: PopAdLdVar
  loc_BF6803: FLdPr Me
  loc_BF6806: MemLdRfVar from_stack_1.global_60
  loc_BF6809: LdPrVar
  loc_BF680B: LateMemCall
  loc_BF6811: LitVarStr var_94, ".Titulo2 {"
  loc_BF6816: PopAdLdVar
  loc_BF6817: FLdPr Me
  loc_BF681A: MemLdRfVar from_stack_1.global_60
  loc_BF681D: LdPrVar
  loc_BF681F: LateMemCall
  loc_BF6825: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BF682A: PopAdLdVar
  loc_BF682B: FLdPr Me
  loc_BF682E: MemLdRfVar from_stack_1.global_60
  loc_BF6831: LdPrVar
  loc_BF6833: LateMemCall
  loc_BF6839: LitVarStr var_94, " font-size: 14px;"
  loc_BF683E: PopAdLdVar
  loc_BF683F: FLdPr Me
  loc_BF6842: MemLdRfVar from_stack_1.global_60
  loc_BF6845: LdPrVar
  loc_BF6847: LateMemCall
  loc_BF684D: LitVarStr var_94, " font-weight: bold;"
  loc_BF6852: PopAdLdVar
  loc_BF6853: FLdPr Me
  loc_BF6856: MemLdRfVar from_stack_1.global_60
  loc_BF6859: LdPrVar
  loc_BF685B: LateMemCall
  loc_BF6861: LitVarStr var_94, "}"
  loc_BF6866: PopAdLdVar
  loc_BF6867: FLdPr Me
  loc_BF686A: MemLdRfVar from_stack_1.global_60
  loc_BF686D: LdPrVar
  loc_BF686F: LateMemCall
  loc_BF6875: LitVarStr var_94, ".Normal {"
  loc_BF687A: PopAdLdVar
  loc_BF687B: FLdPr Me
  loc_BF687E: MemLdRfVar from_stack_1.global_60
  loc_BF6881: LdPrVar
  loc_BF6883: LateMemCall
  loc_BF6889: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BF688E: PopAdLdVar
  loc_BF688F: FLdPr Me
  loc_BF6892: MemLdRfVar from_stack_1.global_60
  loc_BF6895: LdPrVar
  loc_BF6897: LateMemCall
  loc_BF689D: LitVarStr var_94, " font-size: 12px;"
  loc_BF68A2: PopAdLdVar
  loc_BF68A3: FLdPr Me
  loc_BF68A6: MemLdRfVar from_stack_1.global_60
  loc_BF68A9: LdPrVar
  loc_BF68AB: LateMemCall
  loc_BF68B1: LitVarStr var_94, " font-style: normal;"
  loc_BF68B6: PopAdLdVar
  loc_BF68B7: FLdPr Me
  loc_BF68BA: MemLdRfVar from_stack_1.global_60
  loc_BF68BD: LdPrVar
  loc_BF68BF: LateMemCall
  loc_BF68C5: LitVarStr var_94, " font-weight: normal;"
  loc_BF68CA: PopAdLdVar
  loc_BF68CB: FLdPr Me
  loc_BF68CE: MemLdRfVar from_stack_1.global_60
  loc_BF68D1: LdPrVar
  loc_BF68D3: LateMemCall
  loc_BF68D9: LitVarStr var_94, " font-variant: normal;"
  loc_BF68DE: PopAdLdVar
  loc_BF68DF: FLdPr Me
  loc_BF68E2: MemLdRfVar from_stack_1.global_60
  loc_BF68E5: LdPrVar
  loc_BF68E7: LateMemCall
  loc_BF68ED: LitVarStr var_94, "}"
  loc_BF68F2: PopAdLdVar
  loc_BF68F3: FLdPr Me
  loc_BF68F6: MemLdRfVar from_stack_1.global_60
  loc_BF68F9: LdPrVar
  loc_BF68FB: LateMemCall
  loc_BF6901: LitVarStr var_94, ".Encabezado {"
  loc_BF6906: PopAdLdVar
  loc_BF6907: FLdPr Me
  loc_BF690A: MemLdRfVar from_stack_1.global_60
  loc_BF690D: LdPrVar
  loc_BF690F: LateMemCall
  loc_BF6915: LitVarStr var_94, " font-family: ""Times New Roman"", Times, serif;"
  loc_BF691A: PopAdLdVar
  loc_BF691B: FLdPr Me
  loc_BF691E: MemLdRfVar from_stack_1.global_60
  loc_BF6921: LdPrVar
  loc_BF6923: LateMemCall
  loc_BF6929: LitVarStr var_94, " font-size: 11px;"
  loc_BF692E: PopAdLdVar
  loc_BF692F: FLdPr Me
  loc_BF6932: MemLdRfVar from_stack_1.global_60
  loc_BF6935: LdPrVar
  loc_BF6937: LateMemCall
  loc_BF693D: LitVarStr var_94, " font-weight: bold;"
  loc_BF6942: PopAdLdVar
  loc_BF6943: FLdPr Me
  loc_BF6946: MemLdRfVar from_stack_1.global_60
  loc_BF6949: LdPrVar
  loc_BF694B: LateMemCall
  loc_BF6951: LitVarStr var_94, " background-color: #D3D3D3;"
  loc_BF6956: PopAdLdVar
  loc_BF6957: FLdPr Me
  loc_BF695A: MemLdRfVar from_stack_1.global_60
  loc_BF695D: LdPrVar
  loc_BF695F: LateMemCall
  loc_BF6965: LitVarStr var_94, "}"
  loc_BF696A: PopAdLdVar
  loc_BF696B: FLdPr Me
  loc_BF696E: MemLdRfVar from_stack_1.global_60
  loc_BF6971: LdPrVar
  loc_BF6973: LateMemCall
  loc_BF6979: LitVarStr var_94, ".LineaDato {"
  loc_BF697E: PopAdLdVar
  loc_BF697F: FLdPr Me
  loc_BF6982: MemLdRfVar from_stack_1.global_60
  loc_BF6985: LdPrVar
  loc_BF6987: LateMemCall
  loc_BF698D: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BF6992: PopAdLdVar
  loc_BF6993: FLdPr Me
  loc_BF6996: MemLdRfVar from_stack_1.global_60
  loc_BF6999: LdPrVar
  loc_BF699B: LateMemCall
  loc_BF69A1: LitVarStr var_94, " font-size: 10px;"
  loc_BF69A6: PopAdLdVar
  loc_BF69A7: FLdPr Me
  loc_BF69AA: MemLdRfVar from_stack_1.global_60
  loc_BF69AD: LdPrVar
  loc_BF69AF: LateMemCall
  loc_BF69B5: LitVarStr var_94, "}"
  loc_BF69BA: PopAdLdVar
  loc_BF69BB: FLdPr Me
  loc_BF69BE: MemLdRfVar from_stack_1.global_60
  loc_BF69C1: LdPrVar
  loc_BF69C3: LateMemCall
  loc_BF69C9: LitVarStr var_94, ".Totales {"
  loc_BF69CE: PopAdLdVar
  loc_BF69CF: FLdPr Me
  loc_BF69D2: MemLdRfVar from_stack_1.global_60
  loc_BF69D5: LdPrVar
  loc_BF69D7: LateMemCall
  loc_BF69DD: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BF69E2: PopAdLdVar
  loc_BF69E3: FLdPr Me
  loc_BF69E6: MemLdRfVar from_stack_1.global_60
  loc_BF69E9: LdPrVar
  loc_BF69EB: LateMemCall
  loc_BF69F1: LitVarStr var_94, " font-size: 12px;"
  loc_BF69F6: PopAdLdVar
  loc_BF69F7: FLdPr Me
  loc_BF69FA: MemLdRfVar from_stack_1.global_60
  loc_BF69FD: LdPrVar
  loc_BF69FF: LateMemCall
  loc_BF6A05: LitVarStr var_94, " font-weight: bold;"
  loc_BF6A0A: PopAdLdVar
  loc_BF6A0B: FLdPr Me
  loc_BF6A0E: MemLdRfVar from_stack_1.global_60
  loc_BF6A11: LdPrVar
  loc_BF6A13: LateMemCall
  loc_BF6A19: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_BF6A1E: PopAdLdVar
  loc_BF6A1F: FLdPr Me
  loc_BF6A22: MemLdRfVar from_stack_1.global_60
  loc_BF6A25: LdPrVar
  loc_BF6A27: LateMemCall
  loc_BF6A2D: LitVarStr var_94, "}"
  loc_BF6A32: PopAdLdVar
  loc_BF6A33: FLdPr Me
  loc_BF6A36: MemLdRfVar from_stack_1.global_60
  loc_BF6A39: LdPrVar
  loc_BF6A3B: LateMemCall
  loc_BF6A41: LitVarStr var_94, ".SubTotales {"
  loc_BF6A46: PopAdLdVar
  loc_BF6A47: FLdPr Me
  loc_BF6A4A: MemLdRfVar from_stack_1.global_60
  loc_BF6A4D: LdPrVar
  loc_BF6A4F: LateMemCall
  loc_BF6A55: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BF6A5A: PopAdLdVar
  loc_BF6A5B: FLdPr Me
  loc_BF6A5E: MemLdRfVar from_stack_1.global_60
  loc_BF6A61: LdPrVar
  loc_BF6A63: LateMemCall
  loc_BF6A69: LitVarStr var_94, " font-size: 10px;"
  loc_BF6A6E: PopAdLdVar
  loc_BF6A6F: FLdPr Me
  loc_BF6A72: MemLdRfVar from_stack_1.global_60
  loc_BF6A75: LdPrVar
  loc_BF6A77: LateMemCall
  loc_BF6A7D: LitVarStr var_94, " font-weight: bold;"
  loc_BF6A82: PopAdLdVar
  loc_BF6A83: FLdPr Me
  loc_BF6A86: MemLdRfVar from_stack_1.global_60
  loc_BF6A89: LdPrVar
  loc_BF6A8B: LateMemCall
  loc_BF6A91: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_BF6A96: PopAdLdVar
  loc_BF6A97: FLdPr Me
  loc_BF6A9A: MemLdRfVar from_stack_1.global_60
  loc_BF6A9D: LdPrVar
  loc_BF6A9F: LateMemCall
  loc_BF6AA5: LitVarStr var_94, "}"
  loc_BF6AAA: PopAdLdVar
  loc_BF6AAB: FLdPr Me
  loc_BF6AAE: MemLdRfVar from_stack_1.global_60
  loc_BF6AB1: LdPrVar
  loc_BF6AB3: LateMemCall
  loc_BF6AB9: LitVarStr var_94, ".Tilde {"
  loc_BF6ABE: PopAdLdVar
  loc_BF6ABF: FLdPr Me
  loc_BF6AC2: MemLdRfVar from_stack_1.global_60
  loc_BF6AC5: LdPrVar
  loc_BF6AC7: LateMemCall
  loc_BF6ACD: LitVarStr var_94, " font-family: Wingdings;"
  loc_BF6AD2: PopAdLdVar
  loc_BF6AD3: FLdPr Me
  loc_BF6AD6: MemLdRfVar from_stack_1.global_60
  loc_BF6AD9: LdPrVar
  loc_BF6ADB: LateMemCall
  loc_BF6AE1: LitVarStr var_94, " font-size: 12px;"
  loc_BF6AE6: PopAdLdVar
  loc_BF6AE7: FLdPr Me
  loc_BF6AEA: MemLdRfVar from_stack_1.global_60
  loc_BF6AED: LdPrVar
  loc_BF6AEF: LateMemCall
  loc_BF6AF5: LitVarStr var_94, "}"
  loc_BF6AFA: PopAdLdVar
  loc_BF6AFB: FLdPr Me
  loc_BF6AFE: MemLdRfVar from_stack_1.global_60
  loc_BF6B01: LdPrVar
  loc_BF6B03: LateMemCall
  loc_BF6B09: LitVarStr var_94, "THEAD { display: table-header-group; }"
  loc_BF6B0E: PopAdLdVar
  loc_BF6B0F: FLdPr Me
  loc_BF6B12: MemLdRfVar from_stack_1.global_60
  loc_BF6B15: LdPrVar
  loc_BF6B17: LateMemCall
  loc_BF6B1D: LitVarStr var_94, "</style>"
  loc_BF6B22: PopAdLdVar
  loc_BF6B23: FLdPr Me
  loc_BF6B26: MemLdRfVar from_stack_1.global_60
  loc_BF6B29: LdPrVar
  loc_BF6B2B: LateMemCall
  loc_BF6B31: LitI4 0
  loc_BF6B36: FStStrCopy var_AC
  loc_BF6B39: FLdRfVar var_AC
  loc_BF6B3C: LitI4 0
  loc_BF6B41: FStStrCopy var_A8
  loc_BF6B44: FLdRfVar var_A8
  loc_BF6B47: LitI2_Byte &HFF
  loc_BF6B49: PopTmpLdAd2 var_BE
  loc_BF6B4C: FLdPr Me
  loc_BF6B4F: MemLdRfVar from_stack_1.global_60
  loc_BF6B52: ImpAdCallFPR4  = Proc_57_7_B5E738(, )
  loc_BF6B57: FFreeStr var_A8 = ""
  loc_BF6B5E: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_BF6B63: PopAdLdVar
  loc_BF6B64: FLdPr Me
  loc_BF6B67: MemLdRfVar from_stack_1.global_60
  loc_BF6B6A: LdPrVar
  loc_BF6B6C: LateMemCall
  loc_BF6B72: LitVarStr var_94, "  <tr valign=""middle"">"
  loc_BF6B77: PopAdLdVar
  loc_BF6B78: FLdPr Me
  loc_BF6B7B: MemLdRfVar from_stack_1.global_60
  loc_BF6B7E: LdPrVar
  loc_BF6B80: LateMemCall
  loc_BF6B86: LitVarStr var_94, "    <th width=""100" & Chr(37) & """ colspan=""2"" align=""center"" valign=""middle""><p> "
  loc_BF6B8B: PopAdLdVar
  loc_BF6B8C: FLdPr Me
  loc_BF6B8F: MemLdRfVar from_stack_1.global_60
  loc_BF6B92: LdPrVar
  loc_BF6B94: LateMemCall
  loc_BF6B9A: FLdPr Me
  loc_BF6B9D: MemLdI2 bLogos
  loc_BF6BA0: BranchF loc_BF6BFB
  loc_BF6BA3: LitStr "  <img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_BF6BA6: LitI2_Byte &H5F
  loc_BF6BA8: CStrUI1
  loc_BF6BAA: FStStrNoPop var_A8
  loc_BF6BAD: ConcatStr
  loc_BF6BAE: FStStrNoPop var_AC
  loc_BF6BB1: LitStr """ height="""
  loc_BF6BB4: ConcatStr
  loc_BF6BB5: FStStrNoPop var_C4
  loc_BF6BB8: LitI2_Byte &H3C
  loc_BF6BBA: CStrUI1
  loc_BF6BBC: FStStrNoPop var_C8
  loc_BF6BBF: ConcatStr
  loc_BF6BC0: FStStrNoPop var_CC
  loc_BF6BC3: LitStr """ align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>"
  loc_BF6BC6: ConcatStr
  loc_BF6BC7: FStStrNoPop var_D0
  loc_BF6BCA: LitStr "Municipalidad de Guaymallén"
  loc_BF6BCD: ConcatStr
  loc_BF6BCE: FStStrNoPop var_D4
  loc_BF6BD1: LitStr "</p>"
  loc_BF6BD4: ConcatStr
  loc_BF6BD5: CVarStr var_BC
  loc_BF6BD8: PopAdLdVar
  loc_BF6BD9: FLdPr Me
  loc_BF6BDC: MemLdRfVar from_stack_1.global_60
  loc_BF6BDF: LdPrVar
  loc_BF6BE1: LateMemCall
  loc_BF6BE7: FFreeStr var_A8 = "": var_AC = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = ""
  loc_BF6BF8: FFree1Var var_BC = ""
  loc_BF6BFB: LitStr "    <p>"
  loc_BF6BFE: FLdRfVar var_A8
  loc_BF6C01: FLdPr Me
  loc_BF6C04:  = Me.Caption
  loc_BF6C09: ILdRf var_A8
  loc_BF6C0C: ConcatStr
  loc_BF6C0D: FStStrNoPop var_AC
  loc_BF6C10: LitStr "</p></th>"
  loc_BF6C13: ConcatStr
  loc_BF6C14: CVarStr var_BC
  loc_BF6C17: PopAdLdVar
  loc_BF6C18: FLdPr Me
  loc_BF6C1B: MemLdRfVar from_stack_1.global_60
  loc_BF6C1E: LdPrVar
  loc_BF6C20: LateMemCall
  loc_BF6C26: FFreeStr var_A8 = ""
  loc_BF6C2D: FFree1Var var_BC = ""
  loc_BF6C30: LitVarStr var_94, "  </tr>"
  loc_BF6C35: PopAdLdVar
  loc_BF6C36: FLdPr Me
  loc_BF6C39: MemLdRfVar from_stack_1.global_60
  loc_BF6C3C: LdPrVar
  loc_BF6C3E: LateMemCall
  loc_BF6C44: LitVarStr var_94, "  <tr>"
  loc_BF6C49: PopAdLdVar
  loc_BF6C4A: FLdPr Me
  loc_BF6C4D: MemLdRfVar from_stack_1.global_60
  loc_BF6C50: LdPrVar
  loc_BF6C52: LateMemCall
  loc_BF6C58: LitVarStr var_94, "    <th colspan=""2"" align=""center"" valign=""middle""><hr></th>"
  loc_BF6C5D: PopAdLdVar
  loc_BF6C5E: FLdPr Me
  loc_BF6C61: MemLdRfVar from_stack_1.global_60
  loc_BF6C64: LdPrVar
  loc_BF6C66: LateMemCall
  loc_BF6C6C: LitVarStr var_94, "  </tr>"
  loc_BF6C71: PopAdLdVar
  loc_BF6C72: FLdPr Me
  loc_BF6C75: MemLdRfVar from_stack_1.global_60
  loc_BF6C78: LdPrVar
  loc_BF6C7A: LateMemCall
  loc_BF6C80: LitVarStr var_94, "  <tr valign=""top"" class=""Normal"">"
  loc_BF6C85: PopAdLdVar
  loc_BF6C86: FLdPr Me
  loc_BF6C89: MemLdRfVar from_stack_1.global_60
  loc_BF6C8C: LdPrVar
  loc_BF6C8E: LateMemCall
  loc_BF6C94: LitStr "    <td align=""left"" valign=""top""><strong>Desde: </strong>"
  loc_BF6C97: FLdPr Me
  loc_BF6C9A: VCallAd Control_ID_FealBoapDesdeMsk
  loc_BF6C9D: FStAdFunc var_D8
  loc_BF6CA0: FLdPr var_D8
  loc_BF6CA3: LateIdLdVar var_BC DispID_15 0
  loc_BF6CAA: CStrVarTmp
  loc_BF6CAB: FStStrNoPop var_A8
  loc_BF6CAE: ConcatStr
  loc_BF6CAF: FStStrNoPop var_AC
  loc_BF6CB2: LitStr "<br>"
  loc_BF6CB5: ConcatStr
  loc_BF6CB6: CVarStr var_E8
  loc_BF6CB9: PopAdLdVar
  loc_BF6CBA: FLdPr Me
  loc_BF6CBD: MemLdRfVar from_stack_1.global_60
  loc_BF6CC0: LdPrVar
  loc_BF6CC2: LateMemCall
  loc_BF6CC8: FFreeStr var_A8 = ""
  loc_BF6CCF: FFree1Ad var_D8
  loc_BF6CD2: FFreeVar var_BC = ""
  loc_BF6CD9: LitStr "                                      <strong>Hasta: </strong>"
  loc_BF6CDC: FLdPr Me
  loc_BF6CDF: VCallAd Control_ID_FealBoapHastaMsk
  loc_BF6CE2: FStAdFunc var_D8
  loc_BF6CE5: FLdPr var_D8
  loc_BF6CE8: LateIdLdVar var_BC DispID_15 0
  loc_BF6CEF: CStrVarTmp
  loc_BF6CF0: FStStrNoPop var_A8
  loc_BF6CF3: ConcatStr
  loc_BF6CF4: FStStrNoPop var_AC
  loc_BF6CF7: LitStr "<br>"
  loc_BF6CFA: ConcatStr
  loc_BF6CFB: CVarStr var_E8
  loc_BF6CFE: PopAdLdVar
  loc_BF6CFF: FLdPr Me
  loc_BF6D02: MemLdRfVar from_stack_1.global_60
  loc_BF6D05: LdPrVar
  loc_BF6D07: LateMemCall
  loc_BF6D0D: FFreeStr var_A8 = ""
  loc_BF6D14: FFree1Ad var_D8
  loc_BF6D17: FFreeVar var_BC = ""
  loc_BF6D1E: FLdRfVar var_BE
  loc_BF6D21: FLdPr Me
  loc_BF6D24: VCallAd Control_ID_IncluyeChk
  loc_BF6D27: FStAdFunc var_D8
  loc_BF6D2A: FLdPr var_D8
  loc_BF6D2D:  = Me.Value
  loc_BF6D32: LitVarStr var_118, "                                      "
  loc_BF6D37: LitVarStr var_F8, "Sólo actualizados"
  loc_BF6D3C: FStVarCopyObj var_E8
  loc_BF6D3F: FLdRfVar var_E8
  loc_BF6D42: LitVarStr var_A4, "Incluye no actualizados"
  loc_BF6D47: FStVarCopyObj var_BC
  loc_BF6D4A: FLdRfVar var_BC
  loc_BF6D4D: FLdI2 var_BE
  loc_BF6D50: CI4UI1
  loc_BF6D51: LitI4 1
  loc_BF6D56: EqI4
  loc_BF6D57: CVarBoolI2 var_94
  loc_BF6D5B: FLdRfVar var_108
  loc_BF6D5E: ImpAdCallFPR4  = IIf(, , )
  loc_BF6D63: FLdRfVar var_108
  loc_BF6D66: ConcatVar var_128
  loc_BF6D6A: LitVarStr var_138, "</td>"
  loc_BF6D6F: ConcatVar var_148
  loc_BF6D73: PopAdLdVar
  loc_BF6D74: FLdPr Me
  loc_BF6D77: MemLdRfVar from_stack_1.global_60
  loc_BF6D7A: LdPrVar
  loc_BF6D7C: LateMemCall
  loc_BF6D82: FFree1Ad var_D8
  loc_BF6D85: FFreeVar var_94 = "": var_BC = "": var_E8 = "": var_108 = "": var_128 = ""
  loc_BF6D94: LitVarStr var_94, "    <td align=""right"" valign=""top"">"
  loc_BF6D99: PopAdLdVar
  loc_BF6D9A: FLdPr Me
  loc_BF6D9D: MemLdRfVar from_stack_1.global_60
  loc_BF6DA0: LdPrVar
  loc_BF6DA2: LateMemCall
  loc_BF6DA8: LitVarStr var_94, "</table>"
  loc_BF6DAD: PopAdLdVar
  loc_BF6DAE: FLdPr Me
  loc_BF6DB1: MemLdRfVar from_stack_1.global_60
  loc_BF6DB4: LdPrVar
  loc_BF6DB6: LateMemCall
  loc_BF6DBC: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_BF6DC1: PopAdLdVar
  loc_BF6DC2: FLdPr Me
  loc_BF6DC5: MemLdRfVar from_stack_1.global_60
  loc_BF6DC8: LdPrVar
  loc_BF6DCA: LateMemCall
  loc_BF6DD0: LitVarStr var_94, "  <thead>"
  loc_BF6DD5: PopAdLdVar
  loc_BF6DD6: FLdPr Me
  loc_BF6DD9: MemLdRfVar from_stack_1.global_60
  loc_BF6DDC: LdPrVar
  loc_BF6DDE: LateMemCall
  loc_BF6DE4: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_BF6DE9: PopAdLdVar
  loc_BF6DEA: FLdPr Me
  loc_BF6DED: MemLdRfVar from_stack_1.global_60
  loc_BF6DF0: LdPrVar
  loc_BF6DF2: LateMemCall
  loc_BF6DF8: LitStr "Municipalidad de Guaymallén"
  loc_BF6DFB: LitStr "Municipalidad de General Alvear"
  loc_BF6DFE: EqStr
  loc_BF6E00: BranchF loc_BF6EA6
  loc_BF6E03: LitVarStr var_94, "    <th rowspan=""2"">Nro de Auto</th>"
  loc_BF6E08: PopAdLdVar
  loc_BF6E09: FLdPr Me
  loc_BF6E0C: MemLdRfVar from_stack_1.global_60
  loc_BF6E0F: LdPrVar
  loc_BF6E11: LateMemCall
  loc_BF6E17: LitVarStr var_94, "    <th rowspan=""2"">Caratula</th>"
  loc_BF6E1C: PopAdLdVar
  loc_BF6E1D: FLdPr Me
  loc_BF6E20: MemLdRfVar from_stack_1.global_60
  loc_BF6E23: LdPrVar
  loc_BF6E25: LateMemCall
  loc_BF6E2B: LitVarStr var_94, "    <th rowspan=""2"">Juzgado</th>"
  loc_BF6E30: PopAdLdVar
  loc_BF6E31: FLdPr Me
  loc_BF6E34: MemLdRfVar from_stack_1.global_60
  loc_BF6E37: LdPrVar
  loc_BF6E39: LateMemCall
  loc_BF6E3F: LitVarStr var_94, "    <th rowspan=""2"">Boleta Apre.</th>"
  loc_BF6E44: PopAdLdVar
  loc_BF6E45: FLdPr Me
  loc_BF6E48: MemLdRfVar from_stack_1.global_60
  loc_BF6E4B: LdPrVar
  loc_BF6E4D: LateMemCall
  loc_BF6E53: LitVarStr var_94, "    <th rowspan=""2"">Caja Jubil.</th>"
  loc_BF6E58: PopAdLdVar
  loc_BF6E59: FLdPr Me
  loc_BF6E5C: MemLdRfVar from_stack_1.global_60
  loc_BF6E5F: LdPrVar
  loc_BF6E61: LateMemCall
  loc_BF6E67: LitVarStr var_94, "    <th rowspan=""2"">Tasa Just.</th>"
  loc_BF6E6C: PopAdLdVar
  loc_BF6E6D: FLdPr Me
  loc_BF6E70: MemLdRfVar from_stack_1.global_60
  loc_BF6E73: LdPrVar
  loc_BF6E75: LateMemCall
  loc_BF6E7B: LitVarStr var_94, "    <th rowspan=""2"">Col. Abog.</th>"
  loc_BF6E80: PopAdLdVar
  loc_BF6E81: FLdPr Me
  loc_BF6E84: MemLdRfVar from_stack_1.global_60
  loc_BF6E87: LdPrVar
  loc_BF6E89: LateMemCall
  loc_BF6E8F: LitVarStr var_94, "    <th rowspan=""2"">Total</th>"
  loc_BF6E94: PopAdLdVar
  loc_BF6E95: FLdPr Me
  loc_BF6E98: MemLdRfVar from_stack_1.global_60
  loc_BF6E9B: LdPrVar
  loc_BF6E9D: LateMemCall
  loc_BF6EA3: Branch loc_BF6F5A
  loc_BF6EA6: LitVarStr var_94, "    <th rowspan=""2"">Apellido y Nombre</th>"
  loc_BF6EAB: PopAdLdVar
  loc_BF6EAC: FLdPr Me
  loc_BF6EAF: MemLdRfVar from_stack_1.global_60
  loc_BF6EB2: LdPrVar
  loc_BF6EB4: LateMemCall
  loc_BF6EBA: LitVarStr var_94, "    <th rowspan=""2"">Nro de Auto</th>"
  loc_BF6EBF: PopAdLdVar
  loc_BF6EC0: FLdPr Me
  loc_BF6EC3: MemLdRfVar from_stack_1.global_60
  loc_BF6EC6: LdPrVar
  loc_BF6EC8: LateMemCall
  loc_BF6ECE: LitVarStr var_94, "    <th rowspan=""2"">Caratula</th>"
  loc_BF6ED3: PopAdLdVar
  loc_BF6ED4: FLdPr Me
  loc_BF6ED7: MemLdRfVar from_stack_1.global_60
  loc_BF6EDA: LdPrVar
  loc_BF6EDC: LateMemCall
  loc_BF6EE2: LitVarStr var_94, "    <th rowspan=""2"">Juzgado</th>"
  loc_BF6EE7: PopAdLdVar
  loc_BF6EE8: FLdPr Me
  loc_BF6EEB: MemLdRfVar from_stack_1.global_60
  loc_BF6EEE: LdPrVar
  loc_BF6EF0: LateMemCall
  loc_BF6EF6: LitVarStr var_94, "    <th rowspan=""2"">Boleta Apre.</th>"
  loc_BF6EFB: PopAdLdVar
  loc_BF6EFC: FLdPr Me
  loc_BF6EFF: MemLdRfVar from_stack_1.global_60
  loc_BF6F02: LdPrVar
  loc_BF6F04: LateMemCall
  loc_BF6F0A: LitVarStr var_94, "    <th rowspan=""2"">Caja Jubil.</th>"
  loc_BF6F0F: PopAdLdVar
  loc_BF6F10: FLdPr Me
  loc_BF6F13: MemLdRfVar from_stack_1.global_60
  loc_BF6F16: LdPrVar
  loc_BF6F18: LateMemCall
  loc_BF6F1E: LitVarStr var_94, "    <th rowspan=""2"">Tasa Just.</th>"
  loc_BF6F23: PopAdLdVar
  loc_BF6F24: FLdPr Me
  loc_BF6F27: MemLdRfVar from_stack_1.global_60
  loc_BF6F2A: LdPrVar
  loc_BF6F2C: LateMemCall
  loc_BF6F32: LitVarStr var_94, "    <th rowspan=""2"">Col. Abog.</th>"
  loc_BF6F37: PopAdLdVar
  loc_BF6F38: FLdPr Me
  loc_BF6F3B: MemLdRfVar from_stack_1.global_60
  loc_BF6F3E: LdPrVar
  loc_BF6F40: LateMemCall
  loc_BF6F46: LitVarStr var_94, "    <th rowspan=""2"">Fecha actu.</th>"
  loc_BF6F4B: PopAdLdVar
  loc_BF6F4C: FLdPr Me
  loc_BF6F4F: MemLdRfVar from_stack_1.global_60
  loc_BF6F52: LdPrVar
  loc_BF6F54: LateMemCall
  loc_BF6F5A: LitVarStr var_94, "  </tr>"
  loc_BF6F5F: PopAdLdVar
  loc_BF6F60: FLdPr Me
  loc_BF6F63: MemLdRfVar from_stack_1.global_60
  loc_BF6F66: LdPrVar
  loc_BF6F68: LateMemCall
  loc_BF6F6E: LitVarStr var_94, "  </thead>"
  loc_BF6F73: PopAdLdVar
  loc_BF6F74: FLdPr Me
  loc_BF6F77: MemLdRfVar from_stack_1.global_60
  loc_BF6F7A: LdPrVar
  loc_BF6F7C: LateMemCall
  loc_BF6F82: ExitProcHresult
End Function

Private Function Proc_305_26_A0B6B8() 'A0B6B8
  'Data Table: 49EE30
  loc_A0B678: LitVarStr var_94, "</table>"
  loc_A0B67D: PopAdLdVar
  loc_A0B67E: FLdPr Me
  loc_A0B681: MemLdRfVar from_stack_1.global_60
  loc_A0B684: LdPrVar
  loc_A0B686: LateMemCall
  loc_A0B68C: LitVarStr var_94, "</body>"
  loc_A0B691: PopAdLdVar
  loc_A0B692: FLdPr Me
  loc_A0B695: MemLdRfVar from_stack_1.global_60
  loc_A0B698: LdPrVar
  loc_A0B69A: LateMemCall
  loc_A0B6A0: LitVarStr var_94, "</html>"
  loc_A0B6A5: PopAdLdVar
  loc_A0B6A6: FLdPr Me
  loc_A0B6A9: MemLdRfVar from_stack_1.global_60
  loc_A0B6AC: LdPrVar
  loc_A0B6AE: LateMemCall
  loc_A0B6B4: ExitProcHresult
End Function
