VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{23A54129-BC15-43AE-9B4BD01871C7DF72}#1.0#0"; "C:\Program Files (x86)\InfoGov\Contabilidad y Presupuesto\abc128.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptSimulaciondeFacilidaddePago
  Caption = "Simulación de Facilidad de Pago"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptSimulaciondeFacilidaddePago.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 8316
  ClientHeight = 2652
  StartUpPosition = 2 'CenterScreen
  Begin VB.Timer Timer1
    Enabled = 0   'False
    Interval = 10000
    Left = 7680
    Top = 1200
  End
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 2400
    Width = 8310
    Height = 255
    TabIndex = 9
    OleObjectBlob = "rptSimulaciondeFacilidaddePago.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 6720
    Top = 1440
    Width = 735
    Height = 615
    TabIndex = 4
    Cancel = -1  'True
    Picture = "rptSimulaciondeFacilidaddePago.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptSimulaciondeFacilidaddePago.frx":0B9C
    Left = 6480
    Top = 120
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 4320
    Top = 1200
    Width = 1815
    Height = 1095
    TabIndex = 7
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 240
      Width = 1335
      Height = 615
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
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 1200
    Width = 3975
    Height = 1095
    TabIndex = 6
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 2040
      Top = 240
      Width = 1815
      Height = 615
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
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 240
      Width = 1695
      Height = 615
      TabIndex = 0
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
    Width = 8055
    Height = 1095
    TabIndex = 5
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 6480
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 3
    End
    Begin ABC128Lib.Abc128 BarCode
      Left = 0
      Top = 0
      Width = 765
      Height = 375
      Visible = 0   'False
      TabIndex = 10
      OleObjectBlob = "rptSimulaciondeFacilidaddePago.frx":0C00
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 6960
    Top = 1680
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 8
    OleObjectBlob = "rptSimulaciondeFacilidaddePago.frx":0CD2
  End
End

Attribute VB_Name = "rptSimulaciondeFacilidaddePago"

Public bGenerado As Boolean

Private Type UDT_1_0056084C
  bStruc(36) As Byte ' String fields: 9
End Type

Private Type UDT_2_005EBF38
  bStruc(44) As Byte ' String fields: 11
End Type


Private Sub cmdNueva_Click() 'A06E28
  'Data Table: 44F60C
  loc_A06DF4: LitI2_Byte 0
  loc_A06DF6: FLdPr Me
  loc_A06DF9: MemStI2 bGenerado
  loc_A06DFC: LitI2_Byte 0
  loc_A06DFE: ILdRf Me
  loc_A06E01: CastAd
  loc_A06E04: FStAdFunc var_88
  loc_A06E07: FLdRfVar var_88
  loc_A06E0A: ImpAdCallFPR4  = Proc_272_46_B065FC()
  loc_A06E0F: FFree1Ad var_88
  loc_A06E12: ILdRf Me
  loc_A06E15: CastAd
  loc_A06E18: FStAdFunc var_88
  loc_A06E1B: FLdRfVar var_88
  loc_A06E1E: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_A06E23: FFree1Ad var_88
  loc_A06E26: ExitProcHresult
End Sub

Private Sub Form_Load() '9DE4DC
  'Data Table: 44F60C
  loc_9DE4C0: ILdRf Me
  loc_9DE4C3: CastAd
  loc_9DE4C6: FStAdFunc var_88
  loc_9DE4C9: FLdRfVar var_88
  loc_9DE4CC: ImpAdCallFPR4  = Proc_272_43_A93498()
  loc_9DE4D1: FFree1Ad var_88
  loc_9DE4D4: Call cmdNueva_Click()
  loc_9DE4D9: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9D0708
  'Data Table: 44F60C
  loc_9D06F0: FLdPr Me
  loc_9D06F3: VCallAd Control_ID_wbbReporte
  loc_9D06F6: FStAdFunc var_88
  loc_9D06F9: FLdRfVar var_88
  loc_9D06FC: ImpAdCallFPR4  = Proc_57_52_A24864()
  loc_9D0701: FFree1Ad var_88
  loc_9D0704: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() 'A84758
  'Data Table: 44F60C
  loc_A846C8: FLdRfVar var_88
  loc_A846CB: ImpAdLdRf MemVar_D9C5D8
  loc_A846CE: NewIfNullPr Global
  loc_A846D1:  = Global.Printer
  loc_A846D6: FLdPr var_88
  loc_A846D9: LateIdLdVar var_98 DispID_28 1
  loc_A846E0: CStrVarTmp
  loc_A846E1: FStStrNoPop var_9C
  loc_A846E4: FLdPr Me
  loc_A846E7: MemStStrCopy
  loc_A846EB: FFree1Str var_9C
  loc_A846EE: FFree1Ad var_88
  loc_A846F1: FFree1Var var_98 = ""
  loc_A846F4: ImpAdLdI4 MemVar_D93CA4
  loc_A846F7: ImpAdCallI2 Proc_272_25_B159D8()
  loc_A846FC: FStStr var_9C
  loc_A846FF: FFree1Str var_9C
  loc_A84702: LitI2_Byte 0
  loc_A84704: ILdRf Me
  loc_A84707: CastAd
  loc_A8470A: FStAdFunc var_88
  loc_A8470D: FLdRfVar var_88
  loc_A84710: ImpAdCallFPR4 Proc_57_1_AA9124(, )
  loc_A84715: FFree1Ad var_88
  loc_A84718: FLdRfVar var_9E
  loc_A8471B: FLdPr Me
  loc_A8471E: VCallAd Control_ID_cmdPredeterminada
  loc_A84721: FStAdFunc var_88
  loc_A84724: FLdPr var_88
  loc_A84727:  = Me.Enabled
  loc_A8472C: FLdI2 var_9E
  loc_A8472F: NotI4
  loc_A84730: FFree1Ad var_88
  loc_A84733: BranchF loc_A8473E
  loc_A84736: ImpAdCallFPR4 DoEvents()
  loc_A8473B: Branch loc_A84718
  loc_A8473E: LitI2_Byte &HFF
  loc_A84740: FLdPr Me
  loc_A84743: VCallAd Control_ID_Timer1
  loc_A84746: FStAdFunc var_88
  loc_A84749: FLdPr var_88
  loc_A8474C: Me.Enabled = from_stack_1b
  loc_A84751: FFree1Ad var_88
  loc_A84754: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() 'A0149C
  'Data Table: 44F60C
  loc_A0146C: LitVarStr var_94, "Cerrando..."
  loc_A01471: PopAdLdVar
  loc_A01472: FLdPr Me
  loc_A01475: VCallAd Control_ID_statusBar
  loc_A01478: FStAdFunc var_A8
  loc_A0147B: FLdPr var_A8
  loc_A0147E: LateIdSt
  loc_A01483: FFree1Ad var_A8
  loc_A01486: ILdRf Me
  loc_A01489: FStAdNoPop
  loc_A0148D: ImpAdLdRf MemVar_D9C5D8
  loc_A01490: NewIfNullPr Global
  loc_A01493: Global.Unload from_stack_1
  loc_A01498: FFree1Ad var_A8
  loc_A0149B: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '9D0754
  'Data Table: 44F60C
  loc_9D073C: ILdRf Me
  loc_9D073F: CastAd
  loc_9D0742: FStAdFunc var_88
  loc_9D0745: FLdRfVar var_88
  loc_9D0748: ImpAdCallFPR4 Proc_57_0_AB1718()
  loc_9D074D: FFree1Ad var_88
  loc_9D0750: ExitProcHresult
End Sub

Private Sub Timer1_Timer() 'A1F4E8
  'Data Table: 44F60C
  loc_A1F4A8: LitI2_Byte 0
  loc_A1F4AA: FLdPr Me
  loc_A1F4AD: VCallAd Control_ID_Timer1
  loc_A1F4B0: FStAdFunc var_88
  loc_A1F4B3: FLdPr var_88
  loc_A1F4B6: Me.Enabled = from_stack_1b
  loc_A1F4BB: FFree1Ad var_88
  loc_A1F4BE: FLdPr Me
  loc_A1F4C1: MemLdStr global_84
  loc_A1F4C4: ImpAdCallI2 Proc_272_25_B159D8()
  loc_A1F4C9: FStStr var_8C
  loc_A1F4CC: FFree1Str var_8C
  loc_A1F4CF: ILdRf Me
  loc_A1F4D2: FStAdNoPop
  loc_A1F4D6: ImpAdLdRf MemVar_D9C5D8
  loc_A1F4D9: NewIfNullPr Global
  loc_A1F4DC: Global.Unload from_stack_1
  loc_A1F4E1: FFree1Ad var_88
  loc_A1F4E4: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '9DE89C
  'Data Table: 44F60C
  loc_9DE880: LitI2_Byte 0
  loc_9DE882: PopTmpLdAd2 var_8A
  loc_9DE885: ILdRf Me
  loc_9DE888: CastAd
  loc_9DE88B: FStAdFunc var_88
  loc_9DE88E: FLdRfVar var_88
  loc_9DE891: ImpAdCallFPR4 Proc_57_2_B14778(, )
  loc_9DE896: FFree1Ad var_88
  loc_9DE899: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) 'A1DD70
  'Data Table: 44F60C
  loc_A1DD38: FLdPr Me
  loc_A1DD3B: VCallAd Control_ID_statusBar
  loc_A1DD3E: FStAdFunc var_88
  loc_A1DD41: FLdPr var_88
  loc_A1DD44: LateIdLdVar var_98 DispID_1 0
  loc_A1DD4B: CStrVarTmp
  loc_A1DD4C: CVarStr var_A8
  loc_A1DD4F: PopAdLdVar
  loc_A1DD50: FLdPr Me
  loc_A1DD53: VCallAd Control_ID_statusBar
  loc_A1DD56: FStAdFunc var_BC
  loc_A1DD59: FLdPr var_BC
  loc_A1DD5C: LateIdSt
  loc_A1DD61: FFreeAd var_88 = ""
  loc_A1DD68: FFreeVar var_98 = ""
  loc_A1DD6F: ExitProcHresult
End Sub

Public Function bGeneradoGet() '44FF84
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '44FF93
  bGenerado = Value
End Sub

Public Sub GeneraReporte() 'BD3578
  'Data Table: 44F60C
  loc_BD2E38: FLdPr Me
  loc_BD2E3B: MemLdI2 bGenerado
  loc_BD2E3E: BranchF loc_BD2E42
  loc_BD2E41: ExitProcHresult
  loc_BD2E42: LitVarStr var_98, "Generando reporte..."
  loc_BD2E47: PopAdLdVar
  loc_BD2E48: FLdPr Me
  loc_BD2E4B: VCallAd Control_ID_statusBar
  loc_BD2E4E: FStAdFunc var_AC
  loc_BD2E51: FLdPr var_AC
  loc_BD2E54: LateIdSt
  loc_BD2E59: FFree1Ad var_AC
  loc_BD2E5C: LitI4 &HB
  loc_BD2E61: CI2I4
  loc_BD2E62: FLdPr Me
  loc_BD2E65: Me.MousePointer = from_stack_1
  loc_BD2E6A: LitI4 0
  loc_BD2E6F: LitI4 1
  loc_BD2E74: FLdPr Me
  loc_BD2E77: MemLdRfVar from_stack_1.global_76
  loc_BD2E7A: Redim
  loc_BD2E84: ImpAdLdRf MemVar_D93E08
  loc_BD2E87: NewIfNullAd
  loc_BD2E8A: FStAd var_B0 
  loc_BD2E8E: FLdRfVar var_B4
  loc_BD2E91: FLdPr var_B0
  loc_BD2E94: VCallAd Control_ID_
  loc_BD2E97: FStAdFunc var_AC
  loc_BD2E9A: FLdPr var_AC
  loc_BD2E9D:  = Me.Text
  loc_BD2EA2: LitI2_Byte 0
  loc_BD2EA4: LitVar_Missing var_D8
  loc_BD2EA7: LitI2_Byte 0
  loc_BD2EA9: FLdZeroAd var_B4
  loc_BD2EAC: CVarStr var_C8
  loc_BD2EAF: PopAdLdVar
  loc_BD2EB0: LitI4 1
  loc_BD2EB5: FLdPr Me
  loc_BD2EB8: MemLdStr global_76
  loc_BD2EBB: AryLock
  loc_BD2EBE: Ary1LdPr
  loc_BD2EBF: MemLdRfVar from_stack_1.global_4
  loc_BD2EC2: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BD2EC7: AryUnlock
  loc_BD2ECA: FFree1Ad var_AC
  loc_BD2ECD: FFreeVar var_C8 = ""
  loc_BD2ED4: FLdRfVar var_B4
  loc_BD2ED7: FLdPr var_B0
  loc_BD2EDA: VCallAd Control_ID_
  loc_BD2EDD: FStAdFunc var_AC
  loc_BD2EE0: FLdPr var_AC
  loc_BD2EE3:  = Me.Caption
  loc_BD2EE8: LitI2_Byte 0
  loc_BD2EEA: LitVar_Missing var_D8
  loc_BD2EED: LitI2_Byte 0
  loc_BD2EEF: FLdZeroAd var_B4
  loc_BD2EF2: CVarStr var_C8
  loc_BD2EF5: PopAdLdVar
  loc_BD2EF6: LitI4 1
  loc_BD2EFB: FLdPr Me
  loc_BD2EFE: MemLdStr global_76
  loc_BD2F01: AryLock
  loc_BD2F04: Ary1LdPr
  loc_BD2F05: MemLdRfVar from_stack_1.global_8
  loc_BD2F08: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BD2F0D: AryUnlock
  loc_BD2F10: FFree1Ad var_AC
  loc_BD2F13: FFreeVar var_C8 = ""
  loc_BD2F1A: FLdRfVar var_B4
  loc_BD2F1D: FLdPr var_B0
  loc_BD2F20: VCallAd Control_ID_
  loc_BD2F23: FStAdFunc var_AC
  loc_BD2F26: FLdPr var_AC
  loc_BD2F29:  = Me.Caption
  loc_BD2F2E: LitI2_Byte 0
  loc_BD2F30: LitVar_Missing var_D8
  loc_BD2F33: LitI2_Byte 0
  loc_BD2F35: FLdZeroAd var_B4
  loc_BD2F38: CVarStr var_C8
  loc_BD2F3B: PopAdLdVar
  loc_BD2F3C: LitI4 1
  loc_BD2F41: FLdPr Me
  loc_BD2F44: MemLdStr global_76
  loc_BD2F47: AryLock
  loc_BD2F4A: Ary1LdPr
  loc_BD2F4B: MemLdRfVar from_stack_1.global_12
  loc_BD2F4E: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BD2F53: AryUnlock
  loc_BD2F56: FFree1Ad var_AC
  loc_BD2F59: FFreeVar var_C8 = ""
  loc_BD2F60: FLdRfVar var_B4
  loc_BD2F63: FLdPr var_B0
  loc_BD2F66: VCallAd Control_ID_
  loc_BD2F69: FStAdFunc var_AC
  loc_BD2F6C: FLdPr var_AC
  loc_BD2F6F:  = Me.Text
  loc_BD2F74: LitI2_Byte 0
  loc_BD2F76: LitVar_Missing var_D8
  loc_BD2F79: LitI2_Byte 0
  loc_BD2F7B: FLdZeroAd var_B4
  loc_BD2F7E: CVarStr var_C8
  loc_BD2F81: PopAdLdVar
  loc_BD2F82: LitI4 1
  loc_BD2F87: FLdPr Me
  loc_BD2F8A: MemLdStr global_76
  loc_BD2F8D: AryLock
  loc_BD2F90: Ary1LdPr
  loc_BD2F91: MemLdRfVar from_stack_1.global_0
  loc_BD2F94: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BD2F99: AryUnlock
  loc_BD2F9C: FFree1Ad var_AC
  loc_BD2F9F: FFreeVar var_C8 = ""
  loc_BD2FA6: FLdPr var_B0
  loc_BD2FA9: VCallAd Control_ID_
  loc_BD2FAC: FStAdFunc var_AC
  loc_BD2FAF: FLdPr var_AC
  loc_BD2FB2: LateIdLdVar var_C8 DispID_22 0
  loc_BD2FB9: PopAd
  loc_BD2FBB: LitI2_Byte 0
  loc_BD2FBD: LitVar_Missing var_E8
  loc_BD2FC0: LitI2_Byte 0
  loc_BD2FC2: FLdRfVar var_C8
  loc_BD2FC5: CStrVarTmp
  loc_BD2FC6: CVarStr var_D8
  loc_BD2FC9: PopAdLdVar
  loc_BD2FCA: LitI4 1
  loc_BD2FCF: FLdPr Me
  loc_BD2FD2: MemLdStr global_76
  loc_BD2FD5: AryLock
  loc_BD2FD8: Ary1LdPr
  loc_BD2FD9: MemLdRfVar from_stack_1.global_16
  loc_BD2FDC: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BD2FE1: AryUnlock
  loc_BD2FE4: FFree1Ad var_AC
  loc_BD2FE7: FFreeVar var_C8 = "": var_D8 = ""
  loc_BD2FF0: FLdRfVar var_B4
  loc_BD2FF3: FLdPr var_B0
  loc_BD2FF6: VCallAd Control_ID_cdlGuardar
  loc_BD2FF9: FStAdFunc var_AC
  loc_BD2FFC: FLdPr var_AC
  loc_BD2FFF:  = Me.Text
  loc_BD3004: LitI2_Byte 0
  loc_BD3006: LitVar_Missing var_D8
  loc_BD3009: LitI2_Byte &HFF
  loc_BD300B: FLdZeroAd var_B4
  loc_BD300E: CVarStr var_C8
  loc_BD3011: PopAdLdVar
  loc_BD3012: LitI4 1
  loc_BD3017: FLdPr Me
  loc_BD301A: MemLdStr global_76
  loc_BD301D: AryLock
  loc_BD3020: Ary1LdPr
  loc_BD3021: MemLdRfVar from_stack_1.global_32
  loc_BD3024: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BD3029: AryUnlock
  loc_BD302C: FFree1Ad var_AC
  loc_BD302F: FFreeVar var_C8 = ""
  loc_BD3036: FLdRfVar var_B4
  loc_BD3039: FLdPr var_B0
  loc_BD303C: VCallAd Control_ID_BarCode
  loc_BD303F: FStAdFunc var_AC
  loc_BD3042: FLdPr var_AC
  loc_BD3045:  = Me.Text
  loc_BD304A: LitI2_Byte 0
  loc_BD304C: LitVar_Missing var_D8
  loc_BD304F: LitI2_Byte 0
  loc_BD3051: FLdZeroAd var_B4
  loc_BD3054: CVarStr var_C8
  loc_BD3057: PopAdLdVar
  loc_BD3058: LitI4 1
  loc_BD305D: FLdPr Me
  loc_BD3060: MemLdStr global_76
  loc_BD3063: AryLock
  loc_BD3066: Ary1LdPr
  loc_BD3067: MemLdRfVar from_stack_1.global_24
  loc_BD306A: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BD306F: AryUnlock
  loc_BD3072: FFree1Ad var_AC
  loc_BD3075: FFreeVar var_C8 = ""
  loc_BD307C: FLdRfVar var_B4
  loc_BD307F: FLdPr var_B0
  loc_BD3082: VCallAd Control_ID_
  loc_BD3085: FStAdFunc var_AC
  loc_BD3088: FLdPr var_AC
  loc_BD308B:  = Me.Caption
  loc_BD3090: LitI2_Byte 0
  loc_BD3092: LitVar_Missing var_D8
  loc_BD3095: LitI2_Byte 0
  loc_BD3097: FLdZeroAd var_B4
  loc_BD309A: CVarStr var_C8
  loc_BD309D: PopAdLdVar
  loc_BD309E: LitI4 1
  loc_BD30A3: FLdPr Me
  loc_BD30A6: MemLdStr global_76
  loc_BD30A9: AryLock
  loc_BD30AC: Ary1LdPr
  loc_BD30AD: MemLdRfVar from_stack_1.global_28
  loc_BD30B0: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BD30B5: AryUnlock
  loc_BD30B8: FFree1Ad var_AC
  loc_BD30BB: FFreeVar var_C8 = ""
  loc_BD30C2: FLdPr var_B0
  loc_BD30C5: VCallAd Control_ID_
  loc_BD30C8: FStAdFunc var_AC
  loc_BD30CB: FLdPr var_AC
  loc_BD30CE: LateIdLdVar var_C8 DispID_4 0
  loc_BD30D5: PopAd
  loc_BD30D7: LitI4 0
  loc_BD30DC: FLdRfVar var_C8
  loc_BD30DF: CI4Var
  loc_BD30E1: LitI4 1
  loc_BD30E6: SubI4
  loc_BD30E7: LitI4 1
  loc_BD30EC: FLdPr Me
  loc_BD30EF: MemLdStr global_76
  loc_BD30F2: Ary1LdPr
  loc_BD30F3: MemLdRfVar from_stack_1.global_36
  loc_BD30F6: Redim
  loc_BD3100: FFree1Ad var_AC
  loc_BD3103: FFree1Var var_C8 = ""
  loc_BD3106: LitI2_Byte 1
  loc_BD3108: FLdPr Me
  loc_BD310B: MemLdRfVar from_stack_1.global_80
  loc_BD310E: LitI4 1
  loc_BD3113: FLdPr Me
  loc_BD3116: MemLdStr global_76
  loc_BD3119: Ary1LdPr
  loc_BD311A: MemLdStr global_36
  loc_BD311D: LitI2_Byte 1
  loc_BD311F: FnUBound
  loc_BD3121: CI2I4
  loc_BD3122: ForI2 var_EC
  loc_BD3128: FLdPr Me
  loc_BD312B: MemLdI2 global_80
  loc_BD312E: CI4UI1
  loc_BD312F: CVarI4
  loc_BD3133: PopAdLdVar
  loc_BD3134: LitVarI4
  loc_BD313C: PopAdLdVar
  loc_BD313D: FLdPr var_B0
  loc_BD3140: VCallAd Control_ID_
  loc_BD3143: FStAdFunc var_AC
  loc_BD3146: FLdPr var_AC
  loc_BD3149: LateIdCallLdVar
  loc_BD3153: PopAd
  loc_BD3155: LitI2_Byte 0
  loc_BD3157: LitVar_Missing var_E8
  loc_BD315A: LitI2_Byte 0
  loc_BD315C: FLdRfVar var_C8
  loc_BD315F: CStrVarTmp
  loc_BD3160: CVarStr var_D8
  loc_BD3163: PopAdLdVar
  loc_BD3164: FLdPr Me
  loc_BD3167: MemLdI2 global_80
  loc_BD316A: CI4UI1
  loc_BD316B: LitI4 1
  loc_BD3170: FLdPr Me
  loc_BD3173: MemLdStr global_76
  loc_BD3176: AryLock
  loc_BD3179: Ary1LdPr
  loc_BD317A: MemLdStr global_36
  loc_BD317D: AryLock
  loc_BD3180: Ary1LdPr
  loc_BD3181: MemLdRfVar from_stack_1.global_0
  loc_BD3184: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BD3189: AryUnlock
  loc_BD318C: AryUnlock
  loc_BD318F: FFree1Ad var_AC
  loc_BD3192: FFreeVar var_C8 = "": var_D8 = ""
  loc_BD319B: FLdPr Me
  loc_BD319E: MemLdI2 global_80
  loc_BD31A1: CI4UI1
  loc_BD31A2: CVarI4
  loc_BD31A6: PopAdLdVar
  loc_BD31A7: LitVarI4
  loc_BD31AF: PopAdLdVar
  loc_BD31B0: FLdPr var_B0
  loc_BD31B3: VCallAd Control_ID_
  loc_BD31B6: FStAdFunc var_AC
  loc_BD31B9: FLdPr var_AC
  loc_BD31BC: LateIdCallLdVar
  loc_BD31C6: PopAd
  loc_BD31C8: LitI2_Byte 0
  loc_BD31CA: LitVar_Missing var_E8
  loc_BD31CD: LitI2_Byte 0
  loc_BD31CF: FLdRfVar var_C8
  loc_BD31D2: CStrVarTmp
  loc_BD31D3: CVarStr var_D8
  loc_BD31D6: PopAdLdVar
  loc_BD31D7: FLdPr Me
  loc_BD31DA: MemLdI2 global_80
  loc_BD31DD: CI4UI1
  loc_BD31DE: LitI4 1
  loc_BD31E3: FLdPr Me
  loc_BD31E6: MemLdStr global_76
  loc_BD31E9: AryLock
  loc_BD31EC: Ary1LdPr
  loc_BD31ED: MemLdStr global_36
  loc_BD31F0: AryLock
  loc_BD31F3: Ary1LdPr
  loc_BD31F4: MemLdRfVar from_stack_1.global_4
  loc_BD31F7: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BD31FC: AryUnlock
  loc_BD31FF: AryUnlock
  loc_BD3202: FFree1Ad var_AC
  loc_BD3205: FFreeVar var_C8 = "": var_D8 = ""
  loc_BD320E: FLdPr Me
  loc_BD3211: MemLdI2 global_80
  loc_BD3214: CI4UI1
  loc_BD3215: CVarI4
  loc_BD3219: PopAdLdVar
  loc_BD321A: LitVarI4
  loc_BD3222: PopAdLdVar
  loc_BD3223: FLdPr var_B0
  loc_BD3226: VCallAd Control_ID_
  loc_BD3229: FStAdFunc var_AC
  loc_BD322C: FLdPr var_AC
  loc_BD322F: LateIdCallLdVar
  loc_BD3239: PopAd
  loc_BD323B: LitI2_Byte 0
  loc_BD323D: LitVar_Missing var_E8
  loc_BD3240: LitI2_Byte &HFF
  loc_BD3242: FLdRfVar var_C8
  loc_BD3245: CStrVarTmp
  loc_BD3246: CVarStr var_D8
  loc_BD3249: PopAdLdVar
  loc_BD324A: FLdPr Me
  loc_BD324D: MemLdI2 global_80
  loc_BD3250: CI4UI1
  loc_BD3251: LitI4 1
  loc_BD3256: FLdPr Me
  loc_BD3259: MemLdStr global_76
  loc_BD325C: AryLock
  loc_BD325F: Ary1LdPr
  loc_BD3260: MemLdStr global_36
  loc_BD3263: AryLock
  loc_BD3266: Ary1LdPr
  loc_BD3267: MemLdRfVar from_stack_1.global_8
  loc_BD326A: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BD326F: AryUnlock
  loc_BD3272: AryUnlock
  loc_BD3275: FFree1Ad var_AC
  loc_BD3278: FFreeVar var_C8 = "": var_D8 = ""
  loc_BD3281: FLdPr Me
  loc_BD3284: MemLdI2 global_80
  loc_BD3287: CI4UI1
  loc_BD3288: CVarI4
  loc_BD328C: PopAdLdVar
  loc_BD328D: LitVarI4
  loc_BD3295: PopAdLdVar
  loc_BD3296: FLdPr var_B0
  loc_BD3299: VCallAd Control_ID_
  loc_BD329C: FStAdFunc var_AC
  loc_BD329F: FLdPr var_AC
  loc_BD32A2: LateIdCallLdVar
  loc_BD32AC: PopAd
  loc_BD32AE: LitI2_Byte 0
  loc_BD32B0: LitVar_Missing var_E8
  loc_BD32B3: LitI2_Byte &HFF
  loc_BD32B5: FLdRfVar var_C8
  loc_BD32B8: CStrVarTmp
  loc_BD32B9: CVarStr var_D8
  loc_BD32BC: PopAdLdVar
  loc_BD32BD: FLdPr Me
  loc_BD32C0: MemLdI2 global_80
  loc_BD32C3: CI4UI1
  loc_BD32C4: LitI4 1
  loc_BD32C9: FLdPr Me
  loc_BD32CC: MemLdStr global_76
  loc_BD32CF: AryLock
  loc_BD32D2: Ary1LdPr
  loc_BD32D3: MemLdStr global_36
  loc_BD32D6: AryLock
  loc_BD32D9: Ary1LdPr
  loc_BD32DA: MemLdRfVar from_stack_1.global_12
  loc_BD32DD: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BD32E2: AryUnlock
  loc_BD32E5: AryUnlock
  loc_BD32E8: FFree1Ad var_AC
  loc_BD32EB: FFreeVar var_C8 = "": var_D8 = ""
  loc_BD32F4: FLdPr Me
  loc_BD32F7: MemLdI2 global_80
  loc_BD32FA: CI4UI1
  loc_BD32FB: CVarI4
  loc_BD32FF: PopAdLdVar
  loc_BD3300: LitVarI4
  loc_BD3308: PopAdLdVar
  loc_BD3309: FLdPr var_B0
  loc_BD330C: VCallAd Control_ID_
  loc_BD330F: FStAdFunc var_AC
  loc_BD3312: FLdPr var_AC
  loc_BD3315: LateIdCallLdVar
  loc_BD331F: PopAd
  loc_BD3321: LitI2_Byte 0
  loc_BD3323: LitVar_Missing var_E8
  loc_BD3326: LitI2_Byte &HFF
  loc_BD3328: FLdRfVar var_C8
  loc_BD332B: CStrVarTmp
  loc_BD332C: CVarStr var_D8
  loc_BD332F: PopAdLdVar
  loc_BD3330: FLdPr Me
  loc_BD3333: MemLdI2 global_80
  loc_BD3336: CI4UI1
  loc_BD3337: LitI4 1
  loc_BD333C: FLdPr Me
  loc_BD333F: MemLdStr global_76
  loc_BD3342: AryLock
  loc_BD3345: Ary1LdPr
  loc_BD3346: MemLdStr global_36
  loc_BD3349: AryLock
  loc_BD334C: Ary1LdPr
  loc_BD334D: MemLdRfVar from_stack_1.global_16
  loc_BD3350: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BD3355: AryUnlock
  loc_BD3358: AryUnlock
  loc_BD335B: FFree1Ad var_AC
  loc_BD335E: FFreeVar var_C8 = "": var_D8 = ""
  loc_BD3367: FLdPr Me
  loc_BD336A: MemLdI2 global_80
  loc_BD336D: CI4UI1
  loc_BD336E: CVarI4
  loc_BD3372: PopAdLdVar
  loc_BD3373: LitVarI4
  loc_BD337B: PopAdLdVar
  loc_BD337C: FLdPr var_B0
  loc_BD337F: VCallAd Control_ID_
  loc_BD3382: FStAdFunc var_AC
  loc_BD3385: FLdPr var_AC
  loc_BD3388: LateIdCallLdVar
  loc_BD3392: PopAd
  loc_BD3394: LitI2_Byte 0
  loc_BD3396: LitVar_Missing var_E8
  loc_BD3399: LitI2_Byte &HFF
  loc_BD339B: FLdRfVar var_C8
  loc_BD339E: CStrVarTmp
  loc_BD339F: CVarStr var_D8
  loc_BD33A2: PopAdLdVar
  loc_BD33A3: FLdPr Me
  loc_BD33A6: MemLdI2 global_80
  loc_BD33A9: CI4UI1
  loc_BD33AA: LitI4 1
  loc_BD33AF: FLdPr Me
  loc_BD33B2: MemLdStr global_76
  loc_BD33B5: AryLock
  loc_BD33B8: Ary1LdPr
  loc_BD33B9: MemLdStr global_36
  loc_BD33BC: AryLock
  loc_BD33BF: Ary1LdPr
  loc_BD33C0: MemLdRfVar from_stack_1.global_20
  loc_BD33C3: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BD33C8: AryUnlock
  loc_BD33CB: AryUnlock
  loc_BD33CE: FFree1Ad var_AC
  loc_BD33D1: FFreeVar var_C8 = "": var_D8 = ""
  loc_BD33DA: FLdPr Me
  loc_BD33DD: MemLdI2 global_80
  loc_BD33E0: CI4UI1
  loc_BD33E1: CVarI4
  loc_BD33E5: PopAdLdVar
  loc_BD33E6: LitVarI4
  loc_BD33EE: PopAdLdVar
  loc_BD33EF: FLdPr var_B0
  loc_BD33F2: VCallAd Control_ID_
  loc_BD33F5: FStAdFunc var_AC
  loc_BD33F8: FLdPr var_AC
  loc_BD33FB: LateIdCallLdVar
  loc_BD3405: PopAd
  loc_BD3407: LitI2_Byte 0
  loc_BD3409: LitVar_Missing var_E8
  loc_BD340C: LitI2_Byte &HFF
  loc_BD340E: FLdRfVar var_C8
  loc_BD3411: CStrVarTmp
  loc_BD3412: CVarStr var_D8
  loc_BD3415: PopAdLdVar
  loc_BD3416: FLdPr Me
  loc_BD3419: MemLdI2 global_80
  loc_BD341C: CI4UI1
  loc_BD341D: LitI4 1
  loc_BD3422: FLdPr Me
  loc_BD3425: MemLdStr global_76
  loc_BD3428: AryLock
  loc_BD342B: Ary1LdPr
  loc_BD342C: MemLdStr global_36
  loc_BD342F: AryLock
  loc_BD3432: Ary1LdPr
  loc_BD3433: MemLdRfVar from_stack_1.global_24
  loc_BD3436: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BD343B: AryUnlock
  loc_BD343E: AryUnlock
  loc_BD3441: FFree1Ad var_AC
  loc_BD3444: FFreeVar var_C8 = "": var_D8 = ""
  loc_BD344D: FLdPr Me
  loc_BD3450: MemLdI2 global_80
  loc_BD3453: CI4UI1
  loc_BD3454: CVarI4
  loc_BD3458: PopAdLdVar
  loc_BD3459: LitVarI4
  loc_BD3461: PopAdLdVar
  loc_BD3462: FLdPr var_B0
  loc_BD3465: VCallAd Control_ID_
  loc_BD3468: FStAdFunc var_AC
  loc_BD346B: FLdPr var_AC
  loc_BD346E: LateIdCallLdVar
  loc_BD3478: PopAd
  loc_BD347A: LitI2_Byte 0
  loc_BD347C: LitVar_Missing var_E8
  loc_BD347F: LitI2_Byte &HFF
  loc_BD3481: FLdRfVar var_C8
  loc_BD3484: CStrVarTmp
  loc_BD3485: CVarStr var_D8
  loc_BD3488: PopAdLdVar
  loc_BD3489: FLdPr Me
  loc_BD348C: MemLdI2 global_80
  loc_BD348F: CI4UI1
  loc_BD3490: LitI4 1
  loc_BD3495: FLdPr Me
  loc_BD3498: MemLdStr global_76
  loc_BD349B: AryLock
  loc_BD349E: Ary1LdPr
  loc_BD349F: MemLdStr global_36
  loc_BD34A2: AryLock
  loc_BD34A5: Ary1LdPr
  loc_BD34A6: MemLdRfVar from_stack_1.global_28
  loc_BD34A9: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BD34AE: AryUnlock
  loc_BD34B1: AryUnlock
  loc_BD34B4: FFree1Ad var_AC
  loc_BD34B7: FFreeVar var_C8 = "": var_D8 = ""
  loc_BD34C0: FLdPr Me
  loc_BD34C3: MemLdI2 global_80
  loc_BD34C6: CI4UI1
  loc_BD34C7: CVarI4
  loc_BD34CB: PopAdLdVar
  loc_BD34CC: LitVarI4
  loc_BD34D4: PopAdLdVar
  loc_BD34D5: FLdPr var_B0
  loc_BD34D8: VCallAd Control_ID_
  loc_BD34DB: FStAdFunc var_AC
  loc_BD34DE: FLdPr var_AC
  loc_BD34E1: LateIdCallLdVar
  loc_BD34EB: PopAd
  loc_BD34ED: LitI2_Byte 0
  loc_BD34EF: LitVar_Missing var_E8
  loc_BD34F2: LitI2_Byte &HFF
  loc_BD34F4: FLdRfVar var_C8
  loc_BD34F7: CStrVarTmp
  loc_BD34F8: CVarStr var_D8
  loc_BD34FB: PopAdLdVar
  loc_BD34FC: FLdPr Me
  loc_BD34FF: MemLdI2 global_80
  loc_BD3502: CI4UI1
  loc_BD3503: LitI4 1
  loc_BD3508: FLdPr Me
  loc_BD350B: MemLdStr global_76
  loc_BD350E: AryLock
  loc_BD3511: Ary1LdPr
  loc_BD3512: MemLdStr global_36
  loc_BD3515: AryLock
  loc_BD3518: Ary1LdPr
  loc_BD3519: MemLdRfVar from_stack_1.global_32
  loc_BD351C: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BD3521: AryUnlock
  loc_BD3524: AryUnlock
  loc_BD3527: FFree1Ad var_AC
  loc_BD352A: FFreeVar var_C8 = "": var_D8 = ""
  loc_BD3533: FLdPr Me
  loc_BD3536: MemLdRfVar from_stack_1.global_80
  loc_BD3539: NextI2 var_EC, loc_BD3128
  loc_BD353E: LitNothing
  loc_BD3540: FStAd var_B0 
  loc_BD3544: LitI2_Byte &HFF
  loc_BD3546: FLdPr Me
  loc_BD3549: MemStI2 bGenerado
  loc_BD354C: LitI4 0
  loc_BD3551: CI2I4
  loc_BD3552: FLdPr Me
  loc_BD3555: Me.MousePointer = from_stack_1
  loc_BD355A: LitVarStr var_98, vbNullString
  loc_BD355F: PopAdLdVar
  loc_BD3560: FLdPr Me
  loc_BD3563: VCallAd Control_ID_statusBar
  loc_BD3566: FStAdFunc var_AC
  loc_BD3569: FLdPr var_AC
  loc_BD356C: LateIdSt
  loc_BD3571: FFree1Ad var_AC
  loc_BD3574: ExitProcHresult
  loc_BD3575: ImpAdStCy MemVar_0
End Sub

Public Sub GeneraHTML() 'A3CEB0
  'Data Table: 44F60C
  loc_A3CE60: FLdRfVar var_88
  loc_A3CE63: LitI2_Byte 0
  loc_A3CE65: LitI2_Byte &HFF
  loc_A3CE67: ImpAdLdI4 MemVar_D93C84
  loc_A3CE6A: FLdPr Me
  loc_A3CE6D: MemLdRfVar from_stack_1.global_56
  loc_A3CE70: NewIfNullPr IFileSystem3
  loc_A3CE73: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_A3CE78: ILdRf var_88
  loc_A3CE7B: FLdPr Me
  loc_A3CE7E: MemStVarAd
  loc_A3CE82: FFree1Ad var_88
  loc_A3CE85: LitI2_Byte &HFF
  loc_A3CE87: ImpAdStI2 MemVar_D93C8A
  loc_A3CE8A: Call Proc_302_13_BEF658()
  loc_A3CE8F: Call Proc_302_14_BC2D7C()
  loc_A3CE94: Call Proc_302_15_9F476C()
  loc_A3CE99: FLdPr Me
  loc_A3CE9C: MemLdRfVar from_stack_1.global_60
  loc_A3CE9F: LdPrVar
  loc_A3CEA1: LateMemCall
  loc_A3CEA7: LitStr vbNullString
  loc_A3CEAA: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_A3CEAF: ExitProcHresult
End Sub

Private Function Proc_302_13_BEF658() 'BEF658
  'Data Table: 44F60C
  loc_BEEE08: LitI2_Byte &HC
  loc_BEEE0A: FStI2 var_86
  loc_BEEE0D: LitVarStr var_98, "<!DOCTYPE html PUBLIC ""-//W3C//DTD XHTML 1.0 Transitional//EN"" ""http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"">"
  loc_BEEE12: PopAdLdVar
  loc_BEEE13: FLdPr Me
  loc_BEEE16: MemLdRfVar from_stack_1.global_60
  loc_BEEE19: LdPrVar
  loc_BEEE1B: LateMemCall
  loc_BEEE21: LitVarStr var_98, "<html xmlns=""http://www.w3.org/1999/xhtml"">"
  loc_BEEE26: PopAdLdVar
  loc_BEEE27: FLdPr Me
  loc_BEEE2A: MemLdRfVar from_stack_1.global_60
  loc_BEEE2D: LdPrVar
  loc_BEEE2F: LateMemCall
  loc_BEEE35: LitVarStr var_98, "<head>"
  loc_BEEE3A: PopAdLdVar
  loc_BEEE3B: FLdPr Me
  loc_BEEE3E: MemLdRfVar from_stack_1.global_60
  loc_BEEE41: LdPrVar
  loc_BEEE43: LateMemCall
  loc_BEEE49: LitVarStr var_98, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_BEEE4E: PopAdLdVar
  loc_BEEE4F: FLdPr Me
  loc_BEEE52: MemLdRfVar from_stack_1.global_60
  loc_BEEE55: LdPrVar
  loc_BEEE57: LateMemCall
  loc_BEEE5D: LitStr "<title>"
  loc_BEEE60: FLdRfVar var_AC
  loc_BEEE63: FLdPr Me
  loc_BEEE66:  = Me.Caption
  loc_BEEE6B: ILdRf var_AC
  loc_BEEE6E: ConcatStr
  loc_BEEE6F: FStStrNoPop var_B0
  loc_BEEE72: LitStr "</title>"
  loc_BEEE75: ConcatStr
  loc_BEEE76: CVarStr var_C0
  loc_BEEE79: PopAdLdVar
  loc_BEEE7A: FLdPr Me
  loc_BEEE7D: MemLdRfVar from_stack_1.global_60
  loc_BEEE80: LdPrVar
  loc_BEEE82: LateMemCall
  loc_BEEE88: FFreeStr var_AC = ""
  loc_BEEE8F: FFree1Var var_C0 = ""
  loc_BEEE92: LitVarStr var_98, "<style type=""text/css"">"
  loc_BEEE97: PopAdLdVar
  loc_BEEE98: FLdPr Me
  loc_BEEE9B: MemLdRfVar from_stack_1.global_60
  loc_BEEE9E: LdPrVar
  loc_BEEEA0: LateMemCall
  loc_BEEEA6: LitVarStr var_98, "<!--"
  loc_BEEEAB: PopAdLdVar
  loc_BEEEAC: FLdPr Me
  loc_BEEEAF: MemLdRfVar from_stack_1.global_60
  loc_BEEEB2: LdPrVar
  loc_BEEEB4: LateMemCall
  loc_BEEEBA: LitVarStr var_98, ".Titulo1 {"
  loc_BEEEBF: PopAdLdVar
  loc_BEEEC0: FLdPr Me
  loc_BEEEC3: MemLdRfVar from_stack_1.global_60
  loc_BEEEC6: LdPrVar
  loc_BEEEC8: LateMemCall
  loc_BEEECE: LitVarStr var_98, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BEEED3: PopAdLdVar
  loc_BEEED4: FLdPr Me
  loc_BEEED7: MemLdRfVar from_stack_1.global_60
  loc_BEEEDA: LdPrVar
  loc_BEEEDC: LateMemCall
  loc_BEEEE2: LitVarStr var_98, " font-size: 18px;"
  loc_BEEEE7: PopAdLdVar
  loc_BEEEE8: FLdPr Me
  loc_BEEEEB: MemLdRfVar from_stack_1.global_60
  loc_BEEEEE: LdPrVar
  loc_BEEEF0: LateMemCall
  loc_BEEEF6: LitVarStr var_98, " font-weight: bold;"
  loc_BEEEFB: PopAdLdVar
  loc_BEEEFC: FLdPr Me
  loc_BEEEFF: MemLdRfVar from_stack_1.global_60
  loc_BEEF02: LdPrVar
  loc_BEEF04: LateMemCall
  loc_BEEF0A: LitVarStr var_98, "}"
  loc_BEEF0F: PopAdLdVar
  loc_BEEF10: FLdPr Me
  loc_BEEF13: MemLdRfVar from_stack_1.global_60
  loc_BEEF16: LdPrVar
  loc_BEEF18: LateMemCall
  loc_BEEF1E: LitVarStr var_98, ".Titulo2 {"
  loc_BEEF23: PopAdLdVar
  loc_BEEF24: FLdPr Me
  loc_BEEF27: MemLdRfVar from_stack_1.global_60
  loc_BEEF2A: LdPrVar
  loc_BEEF2C: LateMemCall
  loc_BEEF32: LitVarStr var_98, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BEEF37: PopAdLdVar
  loc_BEEF38: FLdPr Me
  loc_BEEF3B: MemLdRfVar from_stack_1.global_60
  loc_BEEF3E: LdPrVar
  loc_BEEF40: LateMemCall
  loc_BEEF46: LitVarStr var_98, " font-size: 14px;"
  loc_BEEF4B: PopAdLdVar
  loc_BEEF4C: FLdPr Me
  loc_BEEF4F: MemLdRfVar from_stack_1.global_60
  loc_BEEF52: LdPrVar
  loc_BEEF54: LateMemCall
  loc_BEEF5A: LitVarStr var_98, " font-weight: bold;"
  loc_BEEF5F: PopAdLdVar
  loc_BEEF60: FLdPr Me
  loc_BEEF63: MemLdRfVar from_stack_1.global_60
  loc_BEEF66: LdPrVar
  loc_BEEF68: LateMemCall
  loc_BEEF6E: LitVarStr var_98, "}"
  loc_BEEF73: PopAdLdVar
  loc_BEEF74: FLdPr Me
  loc_BEEF77: MemLdRfVar from_stack_1.global_60
  loc_BEEF7A: LdPrVar
  loc_BEEF7C: LateMemCall
  loc_BEEF82: LitVarStr var_98, ".Encabezado {"
  loc_BEEF87: PopAdLdVar
  loc_BEEF88: FLdPr Me
  loc_BEEF8B: MemLdRfVar from_stack_1.global_60
  loc_BEEF8E: LdPrVar
  loc_BEEF90: LateMemCall
  loc_BEEF96: LitVarStr var_98, " font-family: Arial, Helvetica, sans-serif;"
  loc_BEEF9B: PopAdLdVar
  loc_BEEF9C: FLdPr Me
  loc_BEEF9F: MemLdRfVar from_stack_1.global_60
  loc_BEEFA2: LdPrVar
  loc_BEEFA4: LateMemCall
  loc_BEEFAA: LitVarStr var_98, " font-size: 10px;"
  loc_BEEFAF: PopAdLdVar
  loc_BEEFB0: FLdPr Me
  loc_BEEFB3: MemLdRfVar from_stack_1.global_60
  loc_BEEFB6: LdPrVar
  loc_BEEFB8: LateMemCall
  loc_BEEFBE: LitVarStr var_98, " background-color: #F0F0F0;"
  loc_BEEFC3: PopAdLdVar
  loc_BEEFC4: FLdPr Me
  loc_BEEFC7: MemLdRfVar from_stack_1.global_60
  loc_BEEFCA: LdPrVar
  loc_BEEFCC: LateMemCall
  loc_BEEFD2: LitVarStr var_98, "}"
  loc_BEEFD7: PopAdLdVar
  loc_BEEFD8: FLdPr Me
  loc_BEEFDB: MemLdRfVar from_stack_1.global_60
  loc_BEEFDE: LdPrVar
  loc_BEEFE0: LateMemCall
  loc_BEEFE6: LitVarStr var_98, ".Normal {"
  loc_BEEFEB: PopAdLdVar
  loc_BEEFEC: FLdPr Me
  loc_BEEFEF: MemLdRfVar from_stack_1.global_60
  loc_BEEFF2: LdPrVar
  loc_BEEFF4: LateMemCall
  loc_BEEFFA: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_BEEFFF: PopAdLdVar
  loc_BEF000: FLdPr Me
  loc_BEF003: MemLdRfVar from_stack_1.global_60
  loc_BEF006: LdPrVar
  loc_BEF008: LateMemCall
  loc_BEF00E: LitVarStr var_98, " font-size: 11px;"
  loc_BEF013: PopAdLdVar
  loc_BEF014: FLdPr Me
  loc_BEF017: MemLdRfVar from_stack_1.global_60
  loc_BEF01A: LdPrVar
  loc_BEF01C: LateMemCall
  loc_BEF022: LitVarStr var_98, " vertical-align: top;"
  loc_BEF027: PopAdLdVar
  loc_BEF028: FLdPr Me
  loc_BEF02B: MemLdRfVar from_stack_1.global_60
  loc_BEF02E: LdPrVar
  loc_BEF030: LateMemCall
  loc_BEF036: LitVarStr var_98, "}"
  loc_BEF03B: PopAdLdVar
  loc_BEF03C: FLdPr Me
  loc_BEF03F: MemLdRfVar from_stack_1.global_60
  loc_BEF042: LdPrVar
  loc_BEF044: LateMemCall
  loc_BEF04A: LitVarStr var_98, ".NormalBloqueFin {"
  loc_BEF04F: PopAdLdVar
  loc_BEF050: FLdPr Me
  loc_BEF053: MemLdRfVar from_stack_1.global_60
  loc_BEF056: LdPrVar
  loc_BEF058: LateMemCall
  loc_BEF05E: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_BEF063: PopAdLdVar
  loc_BEF064: FLdPr Me
  loc_BEF067: MemLdRfVar from_stack_1.global_60
  loc_BEF06A: LdPrVar
  loc_BEF06C: LateMemCall
  loc_BEF072: LitStr " font-size: "
  loc_BEF075: FLdI2 var_86
  loc_BEF078: CStrUI1
  loc_BEF07A: FStStrNoPop var_AC
  loc_BEF07D: ConcatStr
  loc_BEF07E: FStStrNoPop var_B0
  loc_BEF081: LitStr "px;"
  loc_BEF084: ConcatStr
  loc_BEF085: CVarStr var_C0
  loc_BEF088: PopAdLdVar
  loc_BEF089: FLdPr Me
  loc_BEF08C: MemLdRfVar from_stack_1.global_60
  loc_BEF08F: LdPrVar
  loc_BEF091: LateMemCall
  loc_BEF097: FFreeStr var_AC = ""
  loc_BEF09E: FFree1Var var_C0 = ""
  loc_BEF0A1: LitVarStr var_98, " vertical-align: top;"
  loc_BEF0A6: PopAdLdVar
  loc_BEF0A7: FLdPr Me
  loc_BEF0AA: MemLdRfVar from_stack_1.global_60
  loc_BEF0AD: LdPrVar
  loc_BEF0AF: LateMemCall
  loc_BEF0B5: LitVarStr var_98, "}"
  loc_BEF0BA: PopAdLdVar
  loc_BEF0BB: FLdPr Me
  loc_BEF0BE: MemLdRfVar from_stack_1.global_60
  loc_BEF0C1: LdPrVar
  loc_BEF0C3: LateMemCall
  loc_BEF0C9: LitVarStr var_98, ".NormalBloqueFinGrande {"
  loc_BEF0CE: PopAdLdVar
  loc_BEF0CF: FLdPr Me
  loc_BEF0D2: MemLdRfVar from_stack_1.global_60
  loc_BEF0D5: LdPrVar
  loc_BEF0D7: LateMemCall
  loc_BEF0DD: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_BEF0E2: PopAdLdVar
  loc_BEF0E3: FLdPr Me
  loc_BEF0E6: MemLdRfVar from_stack_1.global_60
  loc_BEF0E9: LdPrVar
  loc_BEF0EB: LateMemCall
  loc_BEF0F1: LitStr " font-size: "
  loc_BEF0F4: FLdI2 var_86
  loc_BEF0F7: LitI2_Byte 4
  loc_BEF0F9: AddI2
  loc_BEF0FA: CStrUI1
  loc_BEF0FC: FStStrNoPop var_AC
  loc_BEF0FF: ConcatStr
  loc_BEF100: FStStrNoPop var_B0
  loc_BEF103: LitStr "px;"
  loc_BEF106: ConcatStr
  loc_BEF107: CVarStr var_C0
  loc_BEF10A: PopAdLdVar
  loc_BEF10B: FLdPr Me
  loc_BEF10E: MemLdRfVar from_stack_1.global_60
  loc_BEF111: LdPrVar
  loc_BEF113: LateMemCall
  loc_BEF119: FFreeStr var_AC = ""
  loc_BEF120: FFree1Var var_C0 = ""
  loc_BEF123: LitVarStr var_98, " vertical-align: top;"
  loc_BEF128: PopAdLdVar
  loc_BEF129: FLdPr Me
  loc_BEF12C: MemLdRfVar from_stack_1.global_60
  loc_BEF12F: LdPrVar
  loc_BEF131: LateMemCall
  loc_BEF137: LitVarStr var_98, "}"
  loc_BEF13C: PopAdLdVar
  loc_BEF13D: FLdPr Me
  loc_BEF140: MemLdRfVar from_stack_1.global_60
  loc_BEF143: LdPrVar
  loc_BEF145: LateMemCall
  loc_BEF14B: LitVarStr var_98, ".NombreMunicipio {"
  loc_BEF150: PopAdLdVar
  loc_BEF151: FLdPr Me
  loc_BEF154: MemLdRfVar from_stack_1.global_60
  loc_BEF157: LdPrVar
  loc_BEF159: LateMemCall
  loc_BEF15F: LitVarStr var_98, " font-family: Arial, Helvetica, sans-serif;"
  loc_BEF164: PopAdLdVar
  loc_BEF165: FLdPr Me
  loc_BEF168: MemLdRfVar from_stack_1.global_60
  loc_BEF16B: LdPrVar
  loc_BEF16D: LateMemCall
  loc_BEF173: LitVarStr var_98, " font-size: 14px;"
  loc_BEF178: PopAdLdVar
  loc_BEF179: FLdPr Me
  loc_BEF17C: MemLdRfVar from_stack_1.global_60
  loc_BEF17F: LdPrVar
  loc_BEF181: LateMemCall
  loc_BEF187: LitVarStr var_98, " font-weight: bold;"
  loc_BEF18C: PopAdLdVar
  loc_BEF18D: FLdPr Me
  loc_BEF190: MemLdRfVar from_stack_1.global_60
  loc_BEF193: LdPrVar
  loc_BEF195: LateMemCall
  loc_BEF19B: LitVarStr var_98, "}"
  loc_BEF1A0: PopAdLdVar
  loc_BEF1A1: FLdPr Me
  loc_BEF1A4: MemLdRfVar from_stack_1.global_60
  loc_BEF1A7: LdPrVar
  loc_BEF1A9: LateMemCall
  loc_BEF1AF: LitVarStr var_98, ".NombreMunicipioBloqueFin {"
  loc_BEF1B4: PopAdLdVar
  loc_BEF1B5: FLdPr Me
  loc_BEF1B8: MemLdRfVar from_stack_1.global_60
  loc_BEF1BB: LdPrVar
  loc_BEF1BD: LateMemCall
  loc_BEF1C3: LitVarStr var_98, " font-family: Arial, Helvetica, sans-serif;"
  loc_BEF1C8: PopAdLdVar
  loc_BEF1C9: FLdPr Me
  loc_BEF1CC: MemLdRfVar from_stack_1.global_60
  loc_BEF1CF: LdPrVar
  loc_BEF1D1: LateMemCall
  loc_BEF1D7: LitVarStr var_98, " font-size: 10px;"
  loc_BEF1DC: PopAdLdVar
  loc_BEF1DD: FLdPr Me
  loc_BEF1E0: MemLdRfVar from_stack_1.global_60
  loc_BEF1E3: LdPrVar
  loc_BEF1E5: LateMemCall
  loc_BEF1EB: LitVarStr var_98, "}"
  loc_BEF1F0: PopAdLdVar
  loc_BEF1F1: FLdPr Me
  loc_BEF1F4: MemLdRfVar from_stack_1.global_60
  loc_BEF1F7: LdPrVar
  loc_BEF1F9: LateMemCall
  loc_BEF1FF: LitVarStr var_98, ".DatosMunicipio {"
  loc_BEF204: PopAdLdVar
  loc_BEF205: FLdPr Me
  loc_BEF208: MemLdRfVar from_stack_1.global_60
  loc_BEF20B: LdPrVar
  loc_BEF20D: LateMemCall
  loc_BEF213: LitVarStr var_98, " font-family: Arial, Helvetica, sans-serif;"
  loc_BEF218: PopAdLdVar
  loc_BEF219: FLdPr Me
  loc_BEF21C: MemLdRfVar from_stack_1.global_60
  loc_BEF21F: LdPrVar
  loc_BEF221: LateMemCall
  loc_BEF227: LitVarStr var_98, " font-size: 12px;"
  loc_BEF22C: PopAdLdVar
  loc_BEF22D: FLdPr Me
  loc_BEF230: MemLdRfVar from_stack_1.global_60
  loc_BEF233: LdPrVar
  loc_BEF235: LateMemCall
  loc_BEF23B: LitVarStr var_98, "}"
  loc_BEF240: PopAdLdVar
  loc_BEF241: FLdPr Me
  loc_BEF244: MemLdRfVar from_stack_1.global_60
  loc_BEF247: LdPrVar
  loc_BEF249: LateMemCall
  loc_BEF24F: LitVarStr var_98, ".Totales {"
  loc_BEF254: PopAdLdVar
  loc_BEF255: FLdPr Me
  loc_BEF258: MemLdRfVar from_stack_1.global_60
  loc_BEF25B: LdPrVar
  loc_BEF25D: LateMemCall
  loc_BEF263: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_BEF268: PopAdLdVar
  loc_BEF269: FLdPr Me
  loc_BEF26C: MemLdRfVar from_stack_1.global_60
  loc_BEF26F: LdPrVar
  loc_BEF271: LateMemCall
  loc_BEF277: LitVarStr var_98, " font-size: 14px;"
  loc_BEF27C: PopAdLdVar
  loc_BEF27D: FLdPr Me
  loc_BEF280: MemLdRfVar from_stack_1.global_60
  loc_BEF283: LdPrVar
  loc_BEF285: LateMemCall
  loc_BEF28B: LitVarStr var_98, " vertical-align: top;"
  loc_BEF290: PopAdLdVar
  loc_BEF291: FLdPr Me
  loc_BEF294: MemLdRfVar from_stack_1.global_60
  loc_BEF297: LdPrVar
  loc_BEF299: LateMemCall
  loc_BEF29F: LitVarStr var_98, " background-color: #EBEBEB;"
  loc_BEF2A4: PopAdLdVar
  loc_BEF2A5: FLdPr Me
  loc_BEF2A8: MemLdRfVar from_stack_1.global_60
  loc_BEF2AB: LdPrVar
  loc_BEF2AD: LateMemCall
  loc_BEF2B3: LitVarStr var_98, " font-weight: bold;"
  loc_BEF2B8: PopAdLdVar
  loc_BEF2B9: FLdPr Me
  loc_BEF2BC: MemLdRfVar from_stack_1.global_60
  loc_BEF2BF: LdPrVar
  loc_BEF2C1: LateMemCall
  loc_BEF2C7: LitVarStr var_98, "}"
  loc_BEF2CC: PopAdLdVar
  loc_BEF2CD: FLdPr Me
  loc_BEF2D0: MemLdRfVar from_stack_1.global_60
  loc_BEF2D3: LdPrVar
  loc_BEF2D5: LateMemCall
  loc_BEF2DB: LitVarStr var_98, ".Total {"
  loc_BEF2E0: PopAdLdVar
  loc_BEF2E1: FLdPr Me
  loc_BEF2E4: MemLdRfVar from_stack_1.global_60
  loc_BEF2E7: LdPrVar
  loc_BEF2E9: LateMemCall
  loc_BEF2EF: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_BEF2F4: PopAdLdVar
  loc_BEF2F5: FLdPr Me
  loc_BEF2F8: MemLdRfVar from_stack_1.global_60
  loc_BEF2FB: LdPrVar
  loc_BEF2FD: LateMemCall
  loc_BEF303: LitVarStr var_98, " font-size: 14px;"
  loc_BEF308: PopAdLdVar
  loc_BEF309: FLdPr Me
  loc_BEF30C: MemLdRfVar from_stack_1.global_60
  loc_BEF30F: LdPrVar
  loc_BEF311: LateMemCall
  loc_BEF317: LitVarStr var_98, " vertical-align: top;"
  loc_BEF31C: PopAdLdVar
  loc_BEF31D: FLdPr Me
  loc_BEF320: MemLdRfVar from_stack_1.global_60
  loc_BEF323: LdPrVar
  loc_BEF325: LateMemCall
  loc_BEF32B: LitVarStr var_98, " background-color: #EBEBEB;"
  loc_BEF330: PopAdLdVar
  loc_BEF331: FLdPr Me
  loc_BEF334: MemLdRfVar from_stack_1.global_60
  loc_BEF337: LdPrVar
  loc_BEF339: LateMemCall
  loc_BEF33F: LitVarStr var_98, " font-weight: bold;"
  loc_BEF344: PopAdLdVar
  loc_BEF345: FLdPr Me
  loc_BEF348: MemLdRfVar from_stack_1.global_60
  loc_BEF34B: LdPrVar
  loc_BEF34D: LateMemCall
  loc_BEF353: LitVarStr var_98, " border: 1px solid #000000;"
  loc_BEF358: PopAdLdVar
  loc_BEF359: FLdPr Me
  loc_BEF35C: MemLdRfVar from_stack_1.global_60
  loc_BEF35F: LdPrVar
  loc_BEF361: LateMemCall
  loc_BEF367: LitVarStr var_98, "}"
  loc_BEF36C: PopAdLdVar
  loc_BEF36D: FLdPr Me
  loc_BEF370: MemLdRfVar from_stack_1.global_60
  loc_BEF373: LdPrVar
  loc_BEF375: LateMemCall
  loc_BEF37B: LitVarStr var_98, ".Vencimiento {"
  loc_BEF380: PopAdLdVar
  loc_BEF381: FLdPr Me
  loc_BEF384: MemLdRfVar from_stack_1.global_60
  loc_BEF387: LdPrVar
  loc_BEF389: LateMemCall
  loc_BEF38F: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_BEF394: PopAdLdVar
  loc_BEF395: FLdPr Me
  loc_BEF398: MemLdRfVar from_stack_1.global_60
  loc_BEF39B: LdPrVar
  loc_BEF39D: LateMemCall
  loc_BEF3A3: LitStr " font-size: "
  loc_BEF3A6: FLdI2 var_86
  loc_BEF3A9: CStrUI1
  loc_BEF3AB: FStStrNoPop var_AC
  loc_BEF3AE: ConcatStr
  loc_BEF3AF: FStStrNoPop var_B0
  loc_BEF3B2: LitStr "px;"
  loc_BEF3B5: ConcatStr
  loc_BEF3B6: CVarStr var_C0
  loc_BEF3B9: PopAdLdVar
  loc_BEF3BA: FLdPr Me
  loc_BEF3BD: MemLdRfVar from_stack_1.global_60
  loc_BEF3C0: LdPrVar
  loc_BEF3C2: LateMemCall
  loc_BEF3C8: FFreeStr var_AC = ""
  loc_BEF3CF: FFree1Var var_C0 = ""
  loc_BEF3D2: LitVarStr var_98, " vertical-align: top;"
  loc_BEF3D7: PopAdLdVar
  loc_BEF3D8: FLdPr Me
  loc_BEF3DB: MemLdRfVar from_stack_1.global_60
  loc_BEF3DE: LdPrVar
  loc_BEF3E0: LateMemCall
  loc_BEF3E6: LitVarStr var_98, " font-weight: bold;"
  loc_BEF3EB: PopAdLdVar
  loc_BEF3EC: FLdPr Me
  loc_BEF3EF: MemLdRfVar from_stack_1.global_60
  loc_BEF3F2: LdPrVar
  loc_BEF3F4: LateMemCall
  loc_BEF3FA: LitVarStr var_98, " border: 1px solid #000000;"
  loc_BEF3FF: PopAdLdVar
  loc_BEF400: FLdPr Me
  loc_BEF403: MemLdRfVar from_stack_1.global_60
  loc_BEF406: LdPrVar
  loc_BEF408: LateMemCall
  loc_BEF40E: LitVarStr var_98, "}"
  loc_BEF413: PopAdLdVar
  loc_BEF414: FLdPr Me
  loc_BEF417: MemLdRfVar from_stack_1.global_60
  loc_BEF41A: LdPrVar
  loc_BEF41C: LateMemCall
  loc_BEF422: LitVarStr var_98, ".Resaltado {"
  loc_BEF427: PopAdLdVar
  loc_BEF428: FLdPr Me
  loc_BEF42B: MemLdRfVar from_stack_1.global_60
  loc_BEF42E: LdPrVar
  loc_BEF430: LateMemCall
  loc_BEF436: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_BEF43B: PopAdLdVar
  loc_BEF43C: FLdPr Me
  loc_BEF43F: MemLdRfVar from_stack_1.global_60
  loc_BEF442: LdPrVar
  loc_BEF444: LateMemCall
  loc_BEF44A: LitVarStr var_98, " font-size: 11px;"
  loc_BEF44F: PopAdLdVar
  loc_BEF450: FLdPr Me
  loc_BEF453: MemLdRfVar from_stack_1.global_60
  loc_BEF456: LdPrVar
  loc_BEF458: LateMemCall
  loc_BEF45E: LitVarStr var_98, " vertical-align: top;"
  loc_BEF463: PopAdLdVar
  loc_BEF464: FLdPr Me
  loc_BEF467: MemLdRfVar from_stack_1.global_60
  loc_BEF46A: LdPrVar
  loc_BEF46C: LateMemCall
  loc_BEF472: LitVarStr var_98, " font-weight: bold;"
  loc_BEF477: PopAdLdVar
  loc_BEF478: FLdPr Me
  loc_BEF47B: MemLdRfVar from_stack_1.global_60
  loc_BEF47E: LdPrVar
  loc_BEF480: LateMemCall
  loc_BEF486: LitVarStr var_98, " border: 1px solid #000000;"
  loc_BEF48B: PopAdLdVar
  loc_BEF48C: FLdPr Me
  loc_BEF48F: MemLdRfVar from_stack_1.global_60
  loc_BEF492: LdPrVar
  loc_BEF494: LateMemCall
  loc_BEF49A: LitVarStr var_98, "}"
  loc_BEF49F: PopAdLdVar
  loc_BEF4A0: FLdPr Me
  loc_BEF4A3: MemLdRfVar from_stack_1.global_60
  loc_BEF4A6: LdPrVar
  loc_BEF4A8: LateMemCall
  loc_BEF4AE: LitVarStr var_98, ".LineaDato {"
  loc_BEF4B3: PopAdLdVar
  loc_BEF4B4: FLdPr Me
  loc_BEF4B7: MemLdRfVar from_stack_1.global_60
  loc_BEF4BA: LdPrVar
  loc_BEF4BC: LateMemCall
  loc_BEF4C2: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_BEF4C7: PopAdLdVar
  loc_BEF4C8: FLdPr Me
  loc_BEF4CB: MemLdRfVar from_stack_1.global_60
  loc_BEF4CE: LdPrVar
  loc_BEF4D0: LateMemCall
  loc_BEF4D6: LitVarStr var_98, " font-size: 11px;"
  loc_BEF4DB: PopAdLdVar
  loc_BEF4DC: FLdPr Me
  loc_BEF4DF: MemLdRfVar from_stack_1.global_60
  loc_BEF4E2: LdPrVar
  loc_BEF4E4: LateMemCall
  loc_BEF4EA: LitVarStr var_98, "}"
  loc_BEF4EF: PopAdLdVar
  loc_BEF4F0: FLdPr Me
  loc_BEF4F3: MemLdRfVar from_stack_1.global_60
  loc_BEF4F6: LdPrVar
  loc_BEF4F8: LateMemCall
  loc_BEF4FE: LitVarStr var_98, ".DatosEncabezado {"
  loc_BEF503: PopAdLdVar
  loc_BEF504: FLdPr Me
  loc_BEF507: MemLdRfVar from_stack_1.global_60
  loc_BEF50A: LdPrVar
  loc_BEF50C: LateMemCall
  loc_BEF512: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_BEF517: PopAdLdVar
  loc_BEF518: FLdPr Me
  loc_BEF51B: MemLdRfVar from_stack_1.global_60
  loc_BEF51E: LdPrVar
  loc_BEF520: LateMemCall
  loc_BEF526: LitVarStr var_98, " font-size: 12px;"
  loc_BEF52B: PopAdLdVar
  loc_BEF52C: FLdPr Me
  loc_BEF52F: MemLdRfVar from_stack_1.global_60
  loc_BEF532: LdPrVar
  loc_BEF534: LateMemCall
  loc_BEF53A: LitVarStr var_98, "}"
  loc_BEF53F: PopAdLdVar
  loc_BEF540: FLdPr Me
  loc_BEF543: MemLdRfVar from_stack_1.global_60
  loc_BEF546: LdPrVar
  loc_BEF548: LateMemCall
  loc_BEF54E: LitVarStr var_98, ".DatosEncabezadoGrande {"
  loc_BEF553: PopAdLdVar
  loc_BEF554: FLdPr Me
  loc_BEF557: MemLdRfVar from_stack_1.global_60
  loc_BEF55A: LdPrVar
  loc_BEF55C: LateMemCall
  loc_BEF562: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_BEF567: PopAdLdVar
  loc_BEF568: FLdPr Me
  loc_BEF56B: MemLdRfVar from_stack_1.global_60
  loc_BEF56E: LdPrVar
  loc_BEF570: LateMemCall
  loc_BEF576: LitVarStr var_98, " font-size: 16px;"
  loc_BEF57B: PopAdLdVar
  loc_BEF57C: FLdPr Me
  loc_BEF57F: MemLdRfVar from_stack_1.global_60
  loc_BEF582: LdPrVar
  loc_BEF584: LateMemCall
  loc_BEF58A: LitVarStr var_98, "}"
  loc_BEF58F: PopAdLdVar
  loc_BEF590: FLdPr Me
  loc_BEF593: MemLdRfVar from_stack_1.global_60
  loc_BEF596: LdPrVar
  loc_BEF598: LateMemCall
  loc_BEF59E: LitVarStr var_98, ".SubTotal {"
  loc_BEF5A3: PopAdLdVar
  loc_BEF5A4: FLdPr Me
  loc_BEF5A7: MemLdRfVar from_stack_1.global_60
  loc_BEF5AA: LdPrVar
  loc_BEF5AC: LateMemCall
  loc_BEF5B2: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_BEF5B7: PopAdLdVar
  loc_BEF5B8: FLdPr Me
  loc_BEF5BB: MemLdRfVar from_stack_1.global_60
  loc_BEF5BE: LdPrVar
  loc_BEF5C0: LateMemCall
  loc_BEF5C6: LitVarStr var_98, " font-size: 11px;"
  loc_BEF5CB: PopAdLdVar
  loc_BEF5CC: FLdPr Me
  loc_BEF5CF: MemLdRfVar from_stack_1.global_60
  loc_BEF5D2: LdPrVar
  loc_BEF5D4: LateMemCall
  loc_BEF5DA: LitVarStr var_98, " background-color: #7DC3E7;"
  loc_BEF5DF: PopAdLdVar
  loc_BEF5E0: FLdPr Me
  loc_BEF5E3: MemLdRfVar from_stack_1.global_60
  loc_BEF5E6: LdPrVar
  loc_BEF5E8: LateMemCall
  loc_BEF5EE: LitVarStr var_98, "}"
  loc_BEF5F3: PopAdLdVar
  loc_BEF5F4: FLdPr Me
  loc_BEF5F7: MemLdRfVar from_stack_1.global_60
  loc_BEF5FA: LdPrVar
  loc_BEF5FC: LateMemCall
  loc_BEF602: LitVarStr var_98, "-->"
  loc_BEF607: PopAdLdVar
  loc_BEF608: FLdPr Me
  loc_BEF60B: MemLdRfVar from_stack_1.global_60
  loc_BEF60E: LdPrVar
  loc_BEF610: LateMemCall
  loc_BEF616: LitVarStr var_98, "</style>"
  loc_BEF61B: PopAdLdVar
  loc_BEF61C: FLdPr Me
  loc_BEF61F: MemLdRfVar from_stack_1.global_60
  loc_BEF622: LdPrVar
  loc_BEF624: LateMemCall
  loc_BEF62A: LitI4 0
  loc_BEF62F: FStStrCopy var_B0
  loc_BEF632: FLdRfVar var_B0
  loc_BEF635: LitI4 0
  loc_BEF63A: FStStrCopy var_AC
  loc_BEF63D: FLdRfVar var_AC
  loc_BEF640: LitI2_Byte 0
  loc_BEF642: PopTmpLdAd2 var_C2
  loc_BEF645: FLdPr Me
  loc_BEF648: MemLdRfVar from_stack_1.global_60
  loc_BEF64B: ImpAdCallFPR4  = Proc_57_7_B5E738(, )
  loc_BEF650: FFreeStr var_AC = ""
  loc_BEF657: ExitProcHresult
End Function

Private Function Proc_302_14_BC2D7C() 'BC2D7C
  'Data Table: 44F60C
  loc_BC26E8: LitI4 1
  loc_BC26ED: FLdPr Me
  loc_BC26F0: MemLdStr global_76
  loc_BC26F3: AryLock
  loc_BC26F6: Ary1LdRf
  loc_BC26F7: FStR4 var_8C
  loc_BC26FA: LitVarStr var_9C, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_BC26FF: PopAdLdVar
  loc_BC2700: FLdPr Me
  loc_BC2703: MemLdRfVar from_stack_1.global_60
  loc_BC2706: LdPrVar
  loc_BC2708: LateMemCall
  loc_BC270E: LitVarStr var_9C, "  <tr valign=""middle"">"
  loc_BC2713: PopAdLdVar
  loc_BC2714: FLdPr Me
  loc_BC2717: MemLdRfVar from_stack_1.global_60
  loc_BC271A: LdPrVar
  loc_BC271C: LateMemCall
  loc_BC2722: LitStr "    <th align=""center"" valign=""middle""><img src=""l1.jpg"" width="""
  loc_BC2725: LitI2_Byte &H5F
  loc_BC2727: CStrUI1
  loc_BC2729: FStStrNoPop var_B0
  loc_BC272C: ConcatStr
  loc_BC272D: FStStrNoPop var_B4
  loc_BC2730: LitStr """ height="""
  loc_BC2733: ConcatStr
  loc_BC2734: FStStrNoPop var_B8
  loc_BC2737: LitI2_Byte &H3C
  loc_BC2739: CStrUI1
  loc_BC273B: FStStrNoPop var_BC
  loc_BC273E: ConcatStr
  loc_BC273F: FStStrNoPop var_C0
  loc_BC2742: LitStr """ alt=""Logo"" align=""left""><img src=""l3.jpg"" width="""
  loc_BC2745: ConcatStr
  loc_BC2746: FStStrNoPop var_C4
  loc_BC2749: LitI2_Byte &H3C
  loc_BC274B: CStrUI1
  loc_BC274D: FStStrNoPop var_C8
  loc_BC2750: ConcatStr
  loc_BC2751: FStStrNoPop var_CC
  loc_BC2754: LitStr """ height="""
  loc_BC2757: ConcatStr
  loc_BC2758: FStStrNoPop var_D0
  loc_BC275B: LitI2_Byte &H3C
  loc_BC275D: CStrUI1
  loc_BC275F: FStStrNoPop var_D4
  loc_BC2762: ConcatStr
  loc_BC2763: FStStrNoPop var_D8
  loc_BC2766: LitStr """ alt=""Escudo"" align=""right""><br>"
  loc_BC2769: ConcatStr
  loc_BC276A: FStStrNoPop var_DC
  loc_BC276D: LitStr "Municipalidad de Guaymallén"
  loc_BC2770: ConcatStr
  loc_BC2771: FStStrNoPop var_E0
  loc_BC2774: LitStr "<br>"
  loc_BC2777: ConcatStr
  loc_BC2778: FStStrNoPop var_E4
  loc_BC277B: LitStr "Dirección de Rentas"
  loc_BC277E: ConcatStr
  loc_BC277F: FStStrNoPop var_E8
  loc_BC2782: LitStr "</th>"
  loc_BC2785: ConcatStr
  loc_BC2786: CVarStr var_F8
  loc_BC2789: PopAdLdVar
  loc_BC278A: FLdPr Me
  loc_BC278D: MemLdRfVar from_stack_1.global_60
  loc_BC2790: LdPrVar
  loc_BC2792: LateMemCall
  loc_BC2798: FFreeStr var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = ""
  loc_BC27B9: FFree1Var var_F8 = ""
  loc_BC27BC: LitVarStr var_9C, "  </tr>"
  loc_BC27C1: PopAdLdVar
  loc_BC27C2: FLdPr Me
  loc_BC27C5: MemLdRfVar from_stack_1.global_60
  loc_BC27C8: LdPrVar
  loc_BC27CA: LateMemCall
  loc_BC27D0: LitVarStr var_9C, "  <tr><td><hr></td></tr>"
  loc_BC27D5: PopAdLdVar
  loc_BC27D6: FLdPr Me
  loc_BC27D9: MemLdRfVar from_stack_1.global_60
  loc_BC27DC: LdPrVar
  loc_BC27DE: LateMemCall
  loc_BC27E4: LitVarStr var_9C, "  <tr><td><p class=""DatosEncabezadoGrande"" align=""center""><strong>"
  loc_BC27E9: FLdRfVar var_B0
  loc_BC27EC: FLdPr Me
  loc_BC27EF:  = Me.Caption
  loc_BC27F4: FLdZeroAd var_B0
  loc_BC27F7: CVarStr var_F8
  loc_BC27FA: FLdRfVar var_108
  loc_BC27FD: ImpAdCallFPR4  = Ucase()
  loc_BC2802: FLdRfVar var_108
  loc_BC2805: ConcatVar var_118
  loc_BC2809: LitVarStr var_AC, "</strong></p></td></tr>"
  loc_BC280E: ConcatVar var_128
  loc_BC2812: PopAdLdVar
  loc_BC2813: FLdPr Me
  loc_BC2816: MemLdRfVar from_stack_1.global_60
  loc_BC2819: LdPrVar
  loc_BC281B: LateMemCall
  loc_BC2821: FFreeVar var_F8 = "": var_108 = "": var_118 = ""
  loc_BC282C: LitVarStr var_9C, "  <tr valign=""top"" class=""DatosEncabezado"">"
  loc_BC2831: PopAdLdVar
  loc_BC2832: FLdPr Me
  loc_BC2835: MemLdRfVar from_stack_1.global_60
  loc_BC2838: LdPrVar
  loc_BC283A: LateMemCall
  loc_BC2840: LitVarStr var_9C, "    <th align=""left"" valign=""top""><table width=""562"" border=""0"" align=""left"" cellpadding=""2"" cellspacing=""2"">"
  loc_BC2845: PopAdLdVar
  loc_BC2846: FLdPr Me
  loc_BC2849: MemLdRfVar from_stack_1.global_60
  loc_BC284C: LdPrVar
  loc_BC284E: LateMemCall
  loc_BC2854: LitVarStr var_9C, "      <tr valign=""top"">"
  loc_BC2859: PopAdLdVar
  loc_BC285A: FLdPr Me
  loc_BC285D: MemLdRfVar from_stack_1.global_60
  loc_BC2860: LdPrVar
  loc_BC2862: LateMemCall
  loc_BC2868: LitVarStr var_9C, "        <td align=""right""><strong>Oficina:</strong></td>"
  loc_BC286D: PopAdLdVar
  loc_BC286E: FLdPr Me
  loc_BC2871: MemLdRfVar from_stack_1.global_60
  loc_BC2874: LdPrVar
  loc_BC2876: LateMemCall
  loc_BC287C: LitStr "        <td>"
  loc_BC287F: FMemLdR4 var_8C(0)
  loc_BC2884: ConcatStr
  loc_BC2885: FStStrNoPop var_B0
  loc_BC2888: LitStr "</td>"
  loc_BC288B: ConcatStr
  loc_BC288C: CVarStr var_F8
  loc_BC288F: PopAdLdVar
  loc_BC2890: FLdPr Me
  loc_BC2893: MemLdRfVar from_stack_1.global_60
  loc_BC2896: LdPrVar
  loc_BC2898: LateMemCall
  loc_BC289E: FFree1Str var_B0
  loc_BC28A1: FFree1Var var_F8 = ""
  loc_BC28A4: LitVarStr var_9C, "      </tr>"
  loc_BC28A9: PopAdLdVar
  loc_BC28AA: FLdPr Me
  loc_BC28AD: MemLdRfVar from_stack_1.global_60
  loc_BC28B0: LdPrVar
  loc_BC28B2: LateMemCall
  loc_BC28B8: LitVarStr var_9C, "      <tr valign=""top"">"
  loc_BC28BD: PopAdLdVar
  loc_BC28BE: FLdPr Me
  loc_BC28C1: MemLdRfVar from_stack_1.global_60
  loc_BC28C4: LdPrVar
  loc_BC28C6: LateMemCall
  loc_BC28CC: LitVarStr var_9C, "        <td align=""right""><strong>Cuenta y Titular:</strong></td>"
  loc_BC28D1: PopAdLdVar
  loc_BC28D2: FLdPr Me
  loc_BC28D5: MemLdRfVar from_stack_1.global_60
  loc_BC28D8: LdPrVar
  loc_BC28DA: LateMemCall
  loc_BC28E0: LitStr "        <td>"
  loc_BC28E3: FMemLdR4 var_8C(4)
  loc_BC28E8: ConcatStr
  loc_BC28E9: FStStrNoPop var_B0
  loc_BC28EC: LitStr " - "
  loc_BC28EF: ConcatStr
  loc_BC28F0: FStStrNoPop var_B4
  loc_BC28F3: FMemLdR4 var_8C(12)
  loc_BC28F8: ConcatStr
  loc_BC28F9: FStStrNoPop var_B8
  loc_BC28FC: LitStr "</td>"
  loc_BC28FF: ConcatStr
  loc_BC2900: CVarStr var_F8
  loc_BC2903: PopAdLdVar
  loc_BC2904: FLdPr Me
  loc_BC2907: MemLdRfVar from_stack_1.global_60
  loc_BC290A: LdPrVar
  loc_BC290C: LateMemCall
  loc_BC2912: FFreeStr var_B0 = "": var_B4 = ""
  loc_BC291B: FFree1Var var_F8 = ""
  loc_BC291E: LitVarStr var_9C, "      </tr>"
  loc_BC2923: PopAdLdVar
  loc_BC2924: FLdPr Me
  loc_BC2927: MemLdRfVar from_stack_1.global_60
  loc_BC292A: LdPrVar
  loc_BC292C: LateMemCall
  loc_BC2932: LitVarStr var_9C, "      <tr valign=""top"">"
  loc_BC2937: PopAdLdVar
  loc_BC2938: FLdPr Me
  loc_BC293B: MemLdRfVar from_stack_1.global_60
  loc_BC293E: LdPrVar
  loc_BC2940: LateMemCall
  loc_BC2946: LitVarStr var_9C, "        <td align=""right""><strong>Concepto:</strong></td>"
  loc_BC294B: PopAdLdVar
  loc_BC294C: FLdPr Me
  loc_BC294F: MemLdRfVar from_stack_1.global_60
  loc_BC2952: LdPrVar
  loc_BC2954: LateMemCall
  loc_BC295A: LitStr "        <td>"
  loc_BC295D: FMemLdR4 var_8C(16)
  loc_BC2962: ConcatStr
  loc_BC2963: FStStrNoPop var_B0
  loc_BC2966: LitStr "</td>"
  loc_BC2969: ConcatStr
  loc_BC296A: CVarStr var_F8
  loc_BC296D: PopAdLdVar
  loc_BC296E: FLdPr Me
  loc_BC2971: MemLdRfVar from_stack_1.global_60
  loc_BC2974: LdPrVar
  loc_BC2976: LateMemCall
  loc_BC297C: FFree1Str var_B0
  loc_BC297F: FFree1Var var_F8 = ""
  loc_BC2982: LitVarStr var_9C, "      </tr>"
  loc_BC2987: PopAdLdVar
  loc_BC2988: FLdPr Me
  loc_BC298B: MemLdRfVar from_stack_1.global_60
  loc_BC298E: LdPrVar
  loc_BC2990: LateMemCall
  loc_BC2996: LitVarStr var_9C, "      <tr valign=""top"">"
  loc_BC299B: PopAdLdVar
  loc_BC299C: FLdPr Me
  loc_BC299F: MemLdRfVar from_stack_1.global_60
  loc_BC29A2: LdPrVar
  loc_BC29A4: LateMemCall
  loc_BC29AA: LitVarStr var_9C, "        <td align=""right""><strong>Fecha de Consulta:</strong></td>"
  loc_BC29AF: PopAdLdVar
  loc_BC29B0: FLdPr Me
  loc_BC29B3: MemLdRfVar from_stack_1.global_60
  loc_BC29B6: LdPrVar
  loc_BC29B8: LateMemCall
  loc_BC29BE: LitVarStr var_9C, "        <td> "
  loc_BC29C3: LitI2_Byte 0
  loc_BC29C5: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_BC29CA: CVarDate var_AC
  loc_BC29CE: ConcatVar var_F8
  loc_BC29D2: LitVarStr var_138, "</td>"
  loc_BC29D7: ConcatVar var_108
  loc_BC29DB: PopAdLdVar
  loc_BC29DC: FLdPr Me
  loc_BC29DF: MemLdRfVar from_stack_1.global_60
  loc_BC29E2: LdPrVar
  loc_BC29E4: LateMemCall
  loc_BC29EA: FFreeVar var_F8 = ""
  loc_BC29F1: LitVarStr var_9C, "      </tr>"
  loc_BC29F6: PopAdLdVar
  loc_BC29F7: FLdPr Me
  loc_BC29FA: MemLdRfVar from_stack_1.global_60
  loc_BC29FD: LdPrVar
  loc_BC29FF: LateMemCall
  loc_BC2A05: LitVarStr var_9C, "    </table></th>"
  loc_BC2A0A: PopAdLdVar
  loc_BC2A0B: FLdPr Me
  loc_BC2A0E: MemLdRfVar from_stack_1.global_60
  loc_BC2A11: LdPrVar
  loc_BC2A13: LateMemCall
  loc_BC2A19: LitVarStr var_9C, "  </tr>"
  loc_BC2A1E: PopAdLdVar
  loc_BC2A1F: FLdPr Me
  loc_BC2A22: MemLdRfVar from_stack_1.global_60
  loc_BC2A25: LdPrVar
  loc_BC2A27: LateMemCall
  loc_BC2A2D: LitVarStr var_9C, "</table>"
  loc_BC2A32: PopAdLdVar
  loc_BC2A33: FLdPr Me
  loc_BC2A36: MemLdRfVar from_stack_1.global_60
  loc_BC2A39: LdPrVar
  loc_BC2A3B: LateMemCall
  loc_BC2A41: LitVarStr var_9C, "<br>"
  loc_BC2A46: PopAdLdVar
  loc_BC2A47: FLdPr Me
  loc_BC2A4A: MemLdRfVar from_stack_1.global_60
  loc_BC2A4D: LdPrVar
  loc_BC2A4F: LateMemCall
  loc_BC2A55: LitVarStr var_9C, "<table width=""85" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_BC2A5A: PopAdLdVar
  loc_BC2A5B: FLdPr Me
  loc_BC2A5E: MemLdRfVar from_stack_1.global_60
  loc_BC2A61: LdPrVar
  loc_BC2A63: LateMemCall
  loc_BC2A69: LitVarStr var_9C, " <THEAD>"
  loc_BC2A6E: PopAdLdVar
  loc_BC2A6F: FLdPr Me
  loc_BC2A72: MemLdRfVar from_stack_1.global_60
  loc_BC2A75: LdPrVar
  loc_BC2A77: LateMemCall
  loc_BC2A7D: LitVarStr var_9C, " <tr align=""center"" class=""Encabezado"">"
  loc_BC2A82: PopAdLdVar
  loc_BC2A83: FLdPr Me
  loc_BC2A86: MemLdRfVar from_stack_1.global_60
  loc_BC2A89: LdPrVar
  loc_BC2A8B: LateMemCall
  loc_BC2A91: LitVarStr var_9C, "     <th>Cuota</th>"
  loc_BC2A96: PopAdLdVar
  loc_BC2A97: FLdPr Me
  loc_BC2A9A: MemLdRfVar from_stack_1.global_60
  loc_BC2A9D: LdPrVar
  loc_BC2A9F: LateMemCall
  loc_BC2AA5: LitVarStr var_9C, "     <th>Vencimiento</th>"
  loc_BC2AAA: PopAdLdVar
  loc_BC2AAB: FLdPr Me
  loc_BC2AAE: MemLdRfVar from_stack_1.global_60
  loc_BC2AB1: LdPrVar
  loc_BC2AB3: LateMemCall
  loc_BC2AB9: LitVarStr var_9C, "     <th width=""11" & Chr(37) & """>Capital</th>"
  loc_BC2ABE: PopAdLdVar
  loc_BC2ABF: FLdPr Me
  loc_BC2AC2: MemLdRfVar from_stack_1.global_60
  loc_BC2AC5: LdPrVar
  loc_BC2AC7: LateMemCall
  loc_BC2ACD: LitVarStr var_9C, "     <th width=""11" & Chr(37) & """>Recargo</th>"
  loc_BC2AD2: PopAdLdVar
  loc_BC2AD3: FLdPr Me
  loc_BC2AD6: MemLdRfVar from_stack_1.global_60
  loc_BC2AD9: LdPrVar
  loc_BC2ADB: LateMemCall
  loc_BC2AE1: LitVarStr var_9C, "     <th width=""11" & Chr(37) & """>Desc. Capital</th>"
  loc_BC2AE6: PopAdLdVar
  loc_BC2AE7: FLdPr Me
  loc_BC2AEA: MemLdRfVar from_stack_1.global_60
  loc_BC2AED: LdPrVar
  loc_BC2AEF: LateMemCall
  loc_BC2AF5: LitVarStr var_9C, "     <th width=""11" & Chr(37) & """>Desc. Recargo</th>"
  loc_BC2AFA: PopAdLdVar
  loc_BC2AFB: FLdPr Me
  loc_BC2AFE: MemLdRfVar from_stack_1.global_60
  loc_BC2B01: LdPrVar
  loc_BC2B03: LateMemCall
  loc_BC2B09: LitVarStr var_9C, "     <th width=""11" & Chr(37) & """>Apremio</th>"
  loc_BC2B0E: PopAdLdVar
  loc_BC2B0F: FLdPr Me
  loc_BC2B12: MemLdRfVar from_stack_1.global_60
  loc_BC2B15: LdPrVar
  loc_BC2B17: LateMemCall
  loc_BC2B1D: LitVarStr var_9C, "     <th width=""11" & Chr(37) & """>Inter&eacute;s</th>"
  loc_BC2B22: PopAdLdVar
  loc_BC2B23: FLdPr Me
  loc_BC2B26: MemLdRfVar from_stack_1.global_60
  loc_BC2B29: LdPrVar
  loc_BC2B2B: LateMemCall
  loc_BC2B31: LitVarStr var_9C, "     <th width=""11" & Chr(37) & """>Total</th>"
  loc_BC2B36: PopAdLdVar
  loc_BC2B37: FLdPr Me
  loc_BC2B3A: MemLdRfVar from_stack_1.global_60
  loc_BC2B3D: LdPrVar
  loc_BC2B3F: LateMemCall
  loc_BC2B45: LitVarStr var_9C, "  </tr>"
  loc_BC2B4A: PopAdLdVar
  loc_BC2B4B: FLdPr Me
  loc_BC2B4E: MemLdRfVar from_stack_1.global_60
  loc_BC2B51: LdPrVar
  loc_BC2B53: LateMemCall
  loc_BC2B59: LitVarStr var_9C, " </THEAD>"
  loc_BC2B5E: PopAdLdVar
  loc_BC2B5F: FLdPr Me
  loc_BC2B62: MemLdRfVar from_stack_1.global_60
  loc_BC2B65: LdPrVar
  loc_BC2B67: LateMemCall
  loc_BC2B6D: LitI2_Byte 1
  loc_BC2B6F: FLdPr Me
  loc_BC2B72: MemLdRfVar from_stack_1.global_80
  loc_BC2B75: FMemLdR4 var_8C(36)
  loc_BC2B7A: LitI2_Byte 1
  loc_BC2B7C: FnUBound
  loc_BC2B7E: CI2I4
  loc_BC2B7F: ForI2 var_14C
  loc_BC2B85: FLdPr Me
  loc_BC2B88: MemLdI2 global_80
  loc_BC2B8B: CI4UI1
  loc_BC2B8C: FMemLdR4 var_8C(36)
  loc_BC2B91: AryLock
  loc_BC2B94: Ary1LdRf
  loc_BC2B95: FStR4 var_154
  loc_BC2B98: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_BC2B9D: PopAdLdVar
  loc_BC2B9E: FLdPr Me
  loc_BC2BA1: MemLdRfVar from_stack_1.global_60
  loc_BC2BA4: LdPrVar
  loc_BC2BA6: LateMemCall
  loc_BC2BAC: LitStr vbNullString
  loc_BC2BAF: LitI2_Byte 0
  loc_BC2BB1: LitI2_Byte 0
  loc_BC2BB3: LitI2_Byte 0
  loc_BC2BB5: LitStr "right"
  loc_BC2BB8: FMemLdR4 var_154(0)
  loc_BC2BBD: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BC2BC2: CVarStr var_F8
  loc_BC2BC5: PopAdLdVar
  loc_BC2BC6: FLdPr Me
  loc_BC2BC9: MemLdRfVar from_stack_1.global_60
  loc_BC2BCC: LdPrVar
  loc_BC2BCE: LateMemCall
  loc_BC2BD4: FFree1Var var_F8 = ""
  loc_BC2BD7: LitStr vbNullString
  loc_BC2BDA: LitI2_Byte 0
  loc_BC2BDC: LitI2_Byte 0
  loc_BC2BDE: LitI2_Byte 0
  loc_BC2BE0: LitStr "center"
  loc_BC2BE3: FMemLdR4 var_154(4)
  loc_BC2BE8: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BC2BED: CVarStr var_F8
  loc_BC2BF0: PopAdLdVar
  loc_BC2BF1: FLdPr Me
  loc_BC2BF4: MemLdRfVar from_stack_1.global_60
  loc_BC2BF7: LdPrVar
  loc_BC2BF9: LateMemCall
  loc_BC2BFF: FFree1Var var_F8 = ""
  loc_BC2C02: LitStr vbNullString
  loc_BC2C05: LitI2_Byte 0
  loc_BC2C07: LitI2_Byte 0
  loc_BC2C09: LitI2_Byte 0
  loc_BC2C0B: LitStr "right"
  loc_BC2C0E: FMemLdR4 var_154(8)
  loc_BC2C13: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BC2C18: CVarStr var_F8
  loc_BC2C1B: PopAdLdVar
  loc_BC2C1C: FLdPr Me
  loc_BC2C1F: MemLdRfVar from_stack_1.global_60
  loc_BC2C22: LdPrVar
  loc_BC2C24: LateMemCall
  loc_BC2C2A: FFree1Var var_F8 = ""
  loc_BC2C2D: LitStr vbNullString
  loc_BC2C30: LitI2_Byte 0
  loc_BC2C32: LitI2_Byte 0
  loc_BC2C34: LitI2_Byte 0
  loc_BC2C36: LitStr "right"
  loc_BC2C39: FMemLdR4 var_154(12)
  loc_BC2C3E: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BC2C43: CVarStr var_F8
  loc_BC2C46: PopAdLdVar
  loc_BC2C47: FLdPr Me
  loc_BC2C4A: MemLdRfVar from_stack_1.global_60
  loc_BC2C4D: LdPrVar
  loc_BC2C4F: LateMemCall
  loc_BC2C55: FFree1Var var_F8 = ""
  loc_BC2C58: LitStr vbNullString
  loc_BC2C5B: LitI2_Byte 0
  loc_BC2C5D: LitI2_Byte 0
  loc_BC2C5F: LitI2_Byte 0
  loc_BC2C61: LitStr "right"
  loc_BC2C64: FMemLdR4 var_154(16)
  loc_BC2C69: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BC2C6E: CVarStr var_F8
  loc_BC2C71: PopAdLdVar
  loc_BC2C72: FLdPr Me
  loc_BC2C75: MemLdRfVar from_stack_1.global_60
  loc_BC2C78: LdPrVar
  loc_BC2C7A: LateMemCall
  loc_BC2C80: FFree1Var var_F8 = ""
  loc_BC2C83: LitStr vbNullString
  loc_BC2C86: LitI2_Byte 0
  loc_BC2C88: LitI2_Byte 0
  loc_BC2C8A: LitI2_Byte 0
  loc_BC2C8C: LitStr "right"
  loc_BC2C8F: FMemLdR4 var_154(20)
  loc_BC2C94: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BC2C99: CVarStr var_F8
  loc_BC2C9C: PopAdLdVar
  loc_BC2C9D: FLdPr Me
  loc_BC2CA0: MemLdRfVar from_stack_1.global_60
  loc_BC2CA3: LdPrVar
  loc_BC2CA5: LateMemCall
  loc_BC2CAB: FFree1Var var_F8 = ""
  loc_BC2CAE: LitStr vbNullString
  loc_BC2CB1: LitI2_Byte 0
  loc_BC2CB3: LitI2_Byte 0
  loc_BC2CB5: LitI2_Byte 0
  loc_BC2CB7: LitStr "right"
  loc_BC2CBA: FMemLdR4 var_154(24)
  loc_BC2CBF: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BC2CC4: CVarStr var_F8
  loc_BC2CC7: PopAdLdVar
  loc_BC2CC8: FLdPr Me
  loc_BC2CCB: MemLdRfVar from_stack_1.global_60
  loc_BC2CCE: LdPrVar
  loc_BC2CD0: LateMemCall
  loc_BC2CD6: FFree1Var var_F8 = ""
  loc_BC2CD9: LitStr vbNullString
  loc_BC2CDC: LitI2_Byte 0
  loc_BC2CDE: LitI2_Byte 0
  loc_BC2CE0: LitI2_Byte 0
  loc_BC2CE2: LitStr "right"
  loc_BC2CE5: FMemLdR4 var_154(28)
  loc_BC2CEA: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BC2CEF: CVarStr var_F8
  loc_BC2CF2: PopAdLdVar
  loc_BC2CF3: FLdPr Me
  loc_BC2CF6: MemLdRfVar from_stack_1.global_60
  loc_BC2CF9: LdPrVar
  loc_BC2CFB: LateMemCall
  loc_BC2D01: FFree1Var var_F8 = ""
  loc_BC2D04: LitStr vbNullString
  loc_BC2D07: LitI2_Byte 0
  loc_BC2D09: LitI2_Byte 0
  loc_BC2D0B: LitI2_Byte 0
  loc_BC2D0D: LitStr "right"
  loc_BC2D10: FMemLdR4 var_154(32)
  loc_BC2D15: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BC2D1A: CVarStr var_F8
  loc_BC2D1D: PopAdLdVar
  loc_BC2D1E: FLdPr Me
  loc_BC2D21: MemLdRfVar from_stack_1.global_60
  loc_BC2D24: LdPrVar
  loc_BC2D26: LateMemCall
  loc_BC2D2C: FFree1Var var_F8 = ""
  loc_BC2D2F: LitVarStr var_9C, "     </tr>"
  loc_BC2D34: PopAdLdVar
  loc_BC2D35: FLdPr Me
  loc_BC2D38: MemLdRfVar from_stack_1.global_60
  loc_BC2D3B: LdPrVar
  loc_BC2D3D: LateMemCall
  loc_BC2D43: LitI4 0
  loc_BC2D48: FStR4 var_154
  loc_BC2D4B: AryUnlock
  loc_BC2D4E: FLdPr Me
  loc_BC2D51: MemLdRfVar from_stack_1.global_80
  loc_BC2D54: NextI2 var_14C, loc_BC2B85
  loc_BC2D59: LitVarStr var_9C, "</table>"
  loc_BC2D5E: PopAdLdVar
  loc_BC2D5F: FLdPr Me
  loc_BC2D62: MemLdRfVar from_stack_1.global_60
  loc_BC2D65: LdPrVar
  loc_BC2D67: LateMemCall
  loc_BC2D6D: LitI4 0
  loc_BC2D72: FStR4 var_8C
  loc_BC2D75: AryUnlock
  loc_BC2D78: ExitProcHresult
End Function

Private Function Proc_302_15_9F476C() '9F476C
  'Data Table: 44F60C
  loc_9F4740: LitVarStr var_94, "</body>"
  loc_9F4745: PopAdLdVar
  loc_9F4746: FLdPr Me
  loc_9F4749: MemLdRfVar from_stack_1.global_60
  loc_9F474C: LdPrVar
  loc_9F474E: LateMemCall
  loc_9F4754: LitVarStr var_94, "</html>"
  loc_9F4759: PopAdLdVar
  loc_9F475A: FLdPr Me
  loc_9F475D: MemLdRfVar from_stack_1.global_60
  loc_9F4760: LdPrVar
  loc_9F4762: LateMemCall
  loc_9F4768: ExitProcHresult
End Function
