VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptDeudaExigibleporProveedor
  Caption = "Deuda Exigible por Proveedor"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptDeudaExigibleporProveedor.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 9630
  ClientHeight = 5040
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 4785
    Width = 9630
    Height = 255
    TabIndex = 27
    OleObjectBlob = "rptDeudaExigibleporProveedor.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 8640
    Top = 3840
    Width = 735
    Height = 615
    TabIndex = 25
    Cancel = -1  'True
    Picture = "rptDeudaExigibleporProveedor.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptDeudaExigibleporProveedor.frx":0B9C
    Left = 5160
    Top = 240
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 3600
    Width = 5175
    Height = 1095
    TabIndex = 21
    Begin VB.CommandButton cmdTXT
      Caption = "&TXT"
      Left = 3120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 24
    End
    Begin VB.CommandButton cmdXLS
      Caption = "&XLS"
      Left = 1680
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 23
    End
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 22
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 3600
    Width = 3015
    Height = 1095
    TabIndex = 18
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 20
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 19
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 8295
    Height = 3495
    TabIndex = 0
    Begin VB.CheckBox chkExcluirPartidasExtra
      Caption = "Excluir Partidas Extrapresupuestarias:"
      Left = 240
      Top = 2880
      Width = 3015
      Height = 255
      TabIndex = 17
      Alignment = 1 'Right Justify
    End
    Begin VB.TextBox ImporteTxt
      Left = 5400
      Top = 2400
      Width = 2775
      Height = 285
      TabIndex = 16
      Alignment = 1 'Right Justify
    End
    Begin VB.CheckBox chkOcultarImporte
      Caption = "Ocultar Importes:"
      Left = 240
      Top = 2400
      Width = 1575
      Height = 255
      TabIndex = 14
      Alignment = 1 'Right Justify
    End
    Begin VB.CommandButton CucuPersCmd
      Left = 2730
      Top = 1770
      Width = 375
      Height = 375
      TabIndex = 12
      Picture = "rptDeudaExigibleporProveedor.frx":0C00
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CommandButton DesdeCmd
      Left = 2640
      Top = 810
      Width = 375
      Height = 375
      TabIndex = 6
      Picture = "rptDeudaExigibleporProveedor.frx":0CFA
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CommandButton HastaCmd
      Left = 2640
      Top = 1290
      Width = 375
      Height = 375
      TabIndex = 9
      Picture = "rptDeudaExigibleporProveedor.frx":123C
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.ComboBox cboPeriodo
      Style = 2
      ForeColor = &HFF0000&
      Left = 1440
      Top = 360
      Width = 975
      Height = 315
      TabIndex = 2
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 6075
      Top = 240
      Width = 1335
      Height = 495
      TabIndex = 3
    End
    Begin MSMask.MaskEdBox DesdeMsk
      Left = 1440
      Top = 840
      Width = 1095
      Height = 315
      TabIndex = 5
      OleObjectBlob = "rptDeudaExigibleporProveedor.frx":177E
    End
    Begin MSMask.MaskEdBox HastaMsk
      Left = 1440
      Top = 1320
      Width = 1095
      Height = 315
      TabIndex = 8
      OleObjectBlob = "rptDeudaExigibleporProveedor.frx":1806
    End
    Begin MSMask.MaskEdBox CucuPersMsk
      Left = 1440
      Top = 1800
      Width = 1215
      Height = 315
      TabIndex = 11
      OleObjectBlob = "rptDeudaExigibleporProveedor.frx":188E
    End
    Begin VB.Label Label6
      Caption = "Importes menores o iguales a:"
      Left = 3165
      Top = 2400
      Width = 2100
      Height = 195
      TabIndex = 15
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
    End
    Begin VB.Label DetaProvLbl
      Left = 3210
      Top = 1770
      Width = 4935
      Height = 375
      TabIndex = 13
      BorderStyle = 1 'Fixed Single
    End
    Begin VB.Label Label2
      Caption = "Proveedor:"
      Left = 525
      Top = 1800
      Width = 780
      Height = 195
      TabIndex = 10
    End
    Begin VB.Label Label4
      Caption = "Desde:"
      Left = 795
      Top = 840
      Width = 510
      Height = 195
      TabIndex = 4
      AutoSize = -1  'True
    End
    Begin VB.Label Label3
      Caption = "Hasta:"
      Left = 840
      Top = 1320
      Width = 465
      Height = 195
      TabIndex = 7
      AutoSize = -1  'True
    End
    Begin VB.Label Label1
      Caption = "Periodo:"
      Left = 720
      Top = 360
      Width = 585
      Height = 195
      TabIndex = 1
      AutoSize = -1  'True
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 8760
    Top = 3960
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 26
    OleObjectBlob = "rptDeudaExigibleporProveedor.frx":1918
  End
End

Attribute VB_Name = "rptDeudaExigibleporProveedor"

Public htmFile As Variant
Public bLogos As Boolean
Public bGenerado As Boolean

Private Type UDT_1_005A7200
  bStruc(28) As Byte ' String fields: 7
End Type

Private Type UDT_2_005DB0B4
  bStruc(20) As Byte ' String fields: 5
End Type


Private Sub cmdSalir_Click() '9786D8
  'Data Table: 4B6E38
  loc_9786A8: LitVarStr var_94, "Cerrando..."
  loc_9786AD: PopAdLdVar
  loc_9786AE: FLdPr Me
  loc_9786B1: VCallAd Control_ID_statusBar
  loc_9786B4: FStAdFunc var_A8
  loc_9786B7: FLdPr var_A8
  loc_9786BA: LateIdSt
  loc_9786BF: FFree1Ad var_A8
  loc_9786C2: ILdRf Me
  loc_9786C5: FStAdNoPop
  loc_9786C9: ImpAdLdRf MemVar_C44F9C
  loc_9786CC: NewIfNullPr Me
  loc_9786CF: Me.Global.Unload from_stack_1
  loc_9786D4: FFree1Ad var_A8
  loc_9786D7: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '988F24
  'Data Table: 4B6E38
  loc_988EEC: FLdPr Me
  loc_988EEF: VCallAd Control_ID_statusBar
  loc_988EF2: FStAdFunc var_88
  loc_988EF5: FLdPr var_88
  loc_988EF8: LateIdLdVar var_98 DispID_1 0
  loc_988EFF: CStrVarTmp
  loc_988F00: CVarStr var_A8
  loc_988F03: PopAdLdVar
  loc_988F04: FLdPr Me
  loc_988F07: VCallAd Control_ID_statusBar
  loc_988F0A: FStAdFunc var_BC
  loc_988F0D: FLdPr var_BC
  loc_988F10: LateIdSt
  loc_988F15: FFreeAd var_88 = ""
  loc_988F1C: FFreeVar var_98 = ""
  loc_988F23: ExitProcHresult
End Sub

Private Sub ImporteTxt_GotFocus() '94F800
  'Data Table: 4B6E38
  loc_94F7EC: FLdPr Me
  loc_94F7EF: VCallAd Control_ID_ImporteTxt
  loc_94F7F2: CVarAd
  loc_94F7F6: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94F7FB: FFree1Var var_94 = ""
  loc_94F7FE: ExitProcHresult
End Sub

Private Sub ImporteTxt_KeyPress(KeyAscii As Integer) '98CEB4
  'Data Table: 4B6E38
  loc_98CE74: LitStr "1234567890,."
  loc_98CE77: FStStrCopy var_88
  loc_98CE7A: FLdRfVar var_88
  loc_98CE7D: ILdRf KeyAscii
  loc_98CE80: ImpAdCallI2 Proc_261_6_9AA2A8(, )
  loc_98CE85: IStI2 KeyAscii
  loc_98CE88: FFree1Str var_88
  loc_98CE8B: ILdI2 KeyAscii
  loc_98CE8E: CI4UI1
  loc_98CE8F: FLdRfVar var_98
  loc_98CE92: ImpAdCallFPR4  = Chr()
  loc_98CE97: FLdRfVar var_98
  loc_98CE9A: LitVarStr var_A8, "."
  loc_98CE9F: HardType
  loc_98CEA0: EqVarBool
  loc_98CEA2: FFree1Var var_98 = ""
  loc_98CEA5: BranchF loc_98CEB3
  loc_98CEA8: LitStr ","
  loc_98CEAB: ImpAdCallI2 Asc()
  loc_98CEB0: IStI2 KeyAscii
  loc_98CEB3: ExitProcHresult
End Sub

Private Sub ImporteTxt_Validate(Cancel As Boolean) '9FCDEC
  'Data Table: 4B6E38
  loc_9FCCB4: FLdRfVar var_8C
  loc_9FCCB7: FLdPr Me
  loc_9FCCBA: VCallAd Control_ID_ImporteTxt
  loc_9FCCBD: FStAdFunc var_88
  loc_9FCCC0: FLdPr var_88
  loc_9FCCC3:  = Me.Text
  loc_9FCCC8: ILdRf var_8C
  loc_9FCCCB: LitStr vbNullString
  loc_9FCCCE: NeStr
  loc_9FCCD0: FFree1Str var_8C
  loc_9FCCD3: FFree1Ad var_88
  loc_9FCCD6: BranchF loc_9FCDE8
  loc_9FCCD9: FLdRfVar var_8C
  loc_9FCCDC: FLdPr Me
  loc_9FCCDF: VCallAd Control_ID_ImporteTxt
  loc_9FCCE2: FStAdFunc var_88
  loc_9FCCE5: FLdPr var_88
  loc_9FCCE8:  = Me.Text
  loc_9FCCED: LitStr "0"
  loc_9FCCF0: LitI2_Byte &HFF
  loc_9FCCF2: LitI2_Byte &HFF
  loc_9FCCF4: LitI2_Byte &HFF
  loc_9FCCF6: ILdRf var_8C
  loc_9FCCF9: LitStr "Importe"
  loc_9FCCFC: ImpAdCallI2 Proc_266_25_A07298(, , , , , )
  loc_9FCD01: FStStrNoPop var_90
  loc_9FCD04: FLdPr Me
  loc_9FCD07: MemStStrCopy
  loc_9FCD0B: FFreeStr var_8C = ""
  loc_9FCD12: FFree1Ad var_88
  loc_9FCD15: FLdPr Me
  loc_9FCD18: VCallAd Control_ID_ImporteTxt
  loc_9FCD1B: FStAdFunc var_9C
  loc_9FCD1E: LitNothing
  loc_9FCD20: CastAd
  loc_9FCD23: FStAdFunc var_98
  loc_9FCD26: FLdRfVar var_98
  loc_9FCD29: FLdZeroAd var_9C
  loc_9FCD2C: FStAdFuncNoPop
  loc_9FCD2F: CastAd
  loc_9FCD32: FStAdFunc var_94
  loc_9FCD35: FLdRfVar var_94
  loc_9FCD38: FLdPr Me
  loc_9FCD3B: MemLdRfVar from_stack_1.global_116
  loc_9FCD3E: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9FCD43: IStI2 Cancel
  loc_9FCD46: FFreeAd var_88 = "": var_94 = "": var_98 = ""
  loc_9FCD51: ILdI2 Cancel
  loc_9FCD54: NotI4
  loc_9FCD55: BranchF loc_9FCDE8
  loc_9FCD58: FLdPr Me
  loc_9FCD5B: VCallAd Control_ID_ImporteTxt
  loc_9FCD5E: CVarAd
  loc_9FCD62: ImpAdCallI2 IsNumeric()
  loc_9FCD67: FFree1Var var_AC = ""
  loc_9FCD6A: BranchF loc_9FCDE8
  loc_9FCD6D: FLdRfVar var_8C
  loc_9FCD70: FLdPr Me
  loc_9FCD73: VCallAd Control_ID_ImporteTxt
  loc_9FCD76: FStAdFunc var_88
  loc_9FCD79: FLdPr var_88
  loc_9FCD7C:  = Me.Text
  loc_9FCD81: LitI4 2
  loc_9FCD86: ILdRf var_8C
  loc_9FCD89: CR8Str
  loc_9FCD8B: CVarR8
  loc_9FCD8F: FLdRfVar var_CC
  loc_9FCD92: ImpAdCallFPR4  = Round(, )
  loc_9FCD97: LitI4 1
  loc_9FCD9C: LitI4 1
  loc_9FCDA1: LitVarStr var_DC, "###,###,###,###,##0.00"
  loc_9FCDA6: FStVarCopyObj var_EC
  loc_9FCDA9: FLdRfVar var_EC
  loc_9FCDAC: FLdRfVar var_CC
  loc_9FCDAF: FLdRfVar var_FC
  loc_9FCDB2: ImpAdCallFPR4  = Format(, )
  loc_9FCDB7: FLdRfVar var_FC
  loc_9FCDBA: CStrVarVal var_90
  loc_9FCDBE: FLdPr Me
  loc_9FCDC1: VCallAd Control_ID_ImporteTxt
  loc_9FCDC4: FStAdFunc var_94
  loc_9FCDC7: FLdPr var_94
  loc_9FCDCA: Me.Text = from_stack_1
  loc_9FCDCF: FFreeStr var_8C = ""
  loc_9FCDD6: FFreeAd var_88 = ""
  loc_9FCDDD: FFreeVar var_AC = "": var_CC = "": var_EC = ""
  loc_9FCDE8: ExitProcHresult
End Sub

Private Sub DesdeMsk_UnknownEvent_0 '94F770
  'Data Table: 4B6E38
  loc_94F75C: FLdPr Me
  loc_94F75F: VCallAd Control_ID_DesdeMsk
  loc_94F762: CVarAd
  loc_94F766: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94F76B: FFree1Var var_94 = ""
  loc_94F76E: ExitProcHresult
End Sub

Private Sub DesdeMsk_UnknownEvent_8 '9AC520
  'Data Table: 4B6E38
  loc_9AC490: FLdPr Me
  loc_9AC493: VCallAd Control_ID_DesdeMsk
  loc_9AC496: FStAdFunc var_88
  loc_9AC499: FLdPr var_88
  loc_9AC49C: LateIdLdVar var_98 DispID_15 0
  loc_9AC4A3: PopAd
  loc_9AC4A5: LitI2_Byte &HFF
  loc_9AC4A7: PopTmpLdAd2 var_A2
  loc_9AC4AA: LitNothing
  loc_9AC4AC: CastAd
  loc_9AC4AF: FStAdFunc var_A0
  loc_9AC4B2: FLdRfVar var_A0
  loc_9AC4B5: LitStr "01/01/2018"
  loc_9AC4B8: LitI2_Byte 0
  loc_9AC4BA: LitI2_Byte 0
  loc_9AC4BC: FLdRfVar var_98
  loc_9AC4BF: CStrVarTmp
  loc_9AC4C0: FStStrNoPop var_9C
  loc_9AC4C3: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9AC4C8: FStStrNoPop var_A8
  loc_9AC4CB: FLdPr Me
  loc_9AC4CE: MemStStrCopy
  loc_9AC4D2: FFreeStr var_9C = ""
  loc_9AC4D9: FFreeAd var_88 = ""
  loc_9AC4E0: FFree1Var var_98 = ""
  loc_9AC4E3: FLdPr Me
  loc_9AC4E6: VCallAd Control_ID_DesdeMsk
  loc_9AC4E9: FStAdFunc var_B0
  loc_9AC4EC: LitNothing
  loc_9AC4EE: CastAd
  loc_9AC4F1: FStAdFunc var_AC
  loc_9AC4F4: FLdRfVar var_AC
  loc_9AC4F7: FLdZeroAd var_B0
  loc_9AC4FA: FStAdFuncNoPop
  loc_9AC4FD: CastAd
  loc_9AC500: FStAdFunc var_A0
  loc_9AC503: FLdRfVar var_A0
  loc_9AC506: FLdPr Me
  loc_9AC509: MemLdRfVar from_stack_1.global_116
  loc_9AC50C: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9AC511: IStI2 Cancel
  loc_9AC514: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9AC51F: ExitProcHresult
End Sub

Private Sub HastaMsk_UnknownEvent_0 '94F7B8
  'Data Table: 4B6E38
  loc_94F7A4: FLdPr Me
  loc_94F7A7: VCallAd Control_ID_HastaMsk
  loc_94F7AA: CVarAd
  loc_94F7AE: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94F7B3: FFree1Var var_94 = ""
  loc_94F7B6: ExitProcHresult
End Sub

Private Sub HastaMsk_UnknownEvent_8 '9AC890
  'Data Table: 4B6E38
  loc_9AC800: FLdPr Me
  loc_9AC803: VCallAd Control_ID_HastaMsk
  loc_9AC806: FStAdFunc var_88
  loc_9AC809: FLdPr var_88
  loc_9AC80C: LateIdLdVar var_98 DispID_15 0
  loc_9AC813: PopAd
  loc_9AC815: LitI2_Byte &HFF
  loc_9AC817: PopTmpLdAd2 var_A2
  loc_9AC81A: LitNothing
  loc_9AC81C: CastAd
  loc_9AC81F: FStAdFunc var_A0
  loc_9AC822: FLdRfVar var_A0
  loc_9AC825: LitStr "01/01/2018"
  loc_9AC828: LitI2_Byte 0
  loc_9AC82A: LitI2_Byte 0
  loc_9AC82C: FLdRfVar var_98
  loc_9AC82F: CStrVarTmp
  loc_9AC830: FStStrNoPop var_9C
  loc_9AC833: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9AC838: FStStrNoPop var_A8
  loc_9AC83B: FLdPr Me
  loc_9AC83E: MemStStrCopy
  loc_9AC842: FFreeStr var_9C = ""
  loc_9AC849: FFreeAd var_88 = ""
  loc_9AC850: FFree1Var var_98 = ""
  loc_9AC853: FLdPr Me
  loc_9AC856: VCallAd Control_ID_HastaMsk
  loc_9AC859: FStAdFunc var_B0
  loc_9AC85C: LitNothing
  loc_9AC85E: CastAd
  loc_9AC861: FStAdFunc var_AC
  loc_9AC864: FLdRfVar var_AC
  loc_9AC867: FLdZeroAd var_B0
  loc_9AC86A: FStAdFuncNoPop
  loc_9AC86D: CastAd
  loc_9AC870: FStAdFunc var_A0
  loc_9AC873: FLdRfVar var_A0
  loc_9AC876: FLdPr Me
  loc_9AC879: MemLdRfVar from_stack_1.global_116
  loc_9AC87C: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9AC881: IStI2 Cancel
  loc_9AC884: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9AC88F: ExitProcHresult
End Sub

Private Sub cboPeriodo_Click() '9A3628
  'Data Table: 4B6E38
  loc_9A35B8: FLdRfVar var_8C
  loc_9A35BB: FLdPr Me
  loc_9A35BE: VCallAd Control_ID_cboPeriodo
  loc_9A35C1: FStAdFunc var_88
  loc_9A35C4: FLdPr var_88
  loc_9A35C7:  = Me.Text
  loc_9A35CC: LitI2_Byte 1
  loc_9A35CE: LitI2_Byte 1
  loc_9A35D0: ILdRf var_8C
  loc_9A35D3: CI2Str
  loc_9A35D5: FLdRfVar var_9C
  loc_9A35D8: ImpAdCallFPR4  = DateSerial(, , )
  loc_9A35DD: FLdRfVar var_9C
  loc_9A35E0: CStrVarTmp
  loc_9A35E1: CVarStr var_AC
  loc_9A35E4: PopAdLdVar
  loc_9A35E5: FLdPr Me
  loc_9A35E8: VCallAd Control_ID_DesdeMsk
  loc_9A35EB: FStAdFunc var_C0
  loc_9A35EE: FLdPr var_C0
  loc_9A35F1: LateIdSt
  loc_9A35F6: FFree1Str var_8C
  loc_9A35F9: FFreeAd var_88 = ""
  loc_9A3600: FFreeVar var_9C = ""
  loc_9A3607: ImpAdLdFPR8 MemVar_C3D04C
  loc_9A360A: CStrDate
  loc_9A360C: CVarStr var_9C
  loc_9A360F: PopAdLdVar
  loc_9A3610: FLdPr Me
  loc_9A3613: VCallAd Control_ID_HastaMsk
  loc_9A3616: FStAdFunc var_88
  loc_9A3619: FLdPr var_88
  loc_9A361C: LateIdSt
  loc_9A3621: FFree1Ad var_88
  loc_9A3624: FFree1Var var_9C = ""
  loc_9A3627: ExitProcHresult
End Sub

Private Sub CucuPersMsk_UnknownEvent_0 '952350
  'Data Table: 4B6E38
  loc_95233C: FLdPr Me
  loc_95233F: VCallAd Control_ID_CucuPersMsk
  loc_952342: CVarAd
  loc_952346: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_95234B: FFree1Var var_94 = ""
  loc_95234E: ExitProcHresult
End Sub

Private Function CucuPersMsk_UnknownEvent_8(arg_C) '9E7EF8
  'Data Table: 4B6E38
  loc_9E7DE4: FLdPr Me
  loc_9E7DE7: VCallAd Control_ID_CucuPersMsk
  loc_9E7DEA: FStAdFunc var_88
  loc_9E7DED: FLdPr var_88
  loc_9E7DF0: LateIdLdVar var_98 DispID_13 -32767
  loc_9E7DF7: CBoolVar
  loc_9E7DF9: FLdPr Me
  loc_9E7DFC: VCallAd Control_ID_CucuPersMsk
  loc_9E7DFF: FStAdFunc var_9C
  loc_9E7E02: FLdPr var_9C
  loc_9E7E05: LateIdLdVar var_AC DispID_22 0
  loc_9E7E0C: CStrVarTmp
  loc_9E7E0D: FStStrNoPop var_B0
  loc_9E7E10: LitStr vbNullString
  loc_9E7E13: NeStr
  loc_9E7E15: AndI4
  loc_9E7E16: FFree1Str var_B0
  loc_9E7E19: FFreeAd var_88 = ""
  loc_9E7E20: FFreeVar var_98 = ""
  loc_9E7E27: BranchF loc_9E7EDD
  loc_9E7E2A: FLdPr Me
  loc_9E7E2D: VCallAd Control_ID_CucuPersMsk
  loc_9E7E30: FStAdFunc var_88
  loc_9E7E33: FLdPr var_88
  loc_9E7E36: LateIdLdVar var_98 DispID_22 0
  loc_9E7E3D: PopAd
  loc_9E7E3F: FLdPr Me
  loc_9E7E42: MemLdRfVar from_stack_1.global_72
  loc_9E7E45: NewIfNullRf
  loc_9E7E49: FLdRfVar var_98
  loc_9E7E4C: CStrVarTmp
  loc_9E7E4D: FStStrNoPop var_B0
  loc_9E7E50: ImpAdCallI2 Proc_266_17_9A241C(, )
  loc_9E7E55: FStStrNoPop var_B4
  loc_9E7E58: FLdPr Me
  loc_9E7E5B: MemStStrCopy
  loc_9E7E5F: FFreeStr var_B0 = ""
  loc_9E7E66: FFree1Ad var_88
  loc_9E7E69: FFree1Var var_98 = ""
  loc_9E7E6C: FLdPr Me
  loc_9E7E6F: VCallAd Control_ID_CucuPersMsk
  loc_9E7E72: FStAdFunc var_BC
  loc_9E7E75: LitNothing
  loc_9E7E77: CastAd
  loc_9E7E7A: FStAdFunc var_B8
  loc_9E7E7D: FLdRfVar var_B8
  loc_9E7E80: FLdZeroAd var_BC
  loc_9E7E83: FStAdFuncNoPop
  loc_9E7E86: CastAd
  loc_9E7E89: FStAdFunc var_9C
  loc_9E7E8C: FLdRfVar var_9C
  loc_9E7E8F: FLdPr Me
  loc_9E7E92: MemLdRfVar from_stack_1.global_116
  loc_9E7E95: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9E7E9A: IStI2 arg_C
  loc_9E7E9D: FFreeAd var_88 = "": var_9C = "": var_B8 = ""
  loc_9E7EA8: ILdI2 arg_C
  loc_9E7EAB: NotI4
  loc_9E7EAC: BranchF loc_9E7EDA
  loc_9E7EAF: FLdRfVar var_B0
  loc_9E7EB2: FLdPr Me
  loc_9E7EB5: MemLdRfVar from_stack_1.global_72
  loc_9E7EB8: NewIfNullPr tblproveedor
  loc_9E7EBB: from_stack_1v = tblproveedor.DetaProvGet()
  loc_9E7EC0: ILdRf var_B0
  loc_9E7EC3: FLdPr Me
  loc_9E7EC6: VCallAd Control_ID_DetaProvLbl
  loc_9E7EC9: FStAdFunc var_88
  loc_9E7ECC: FLdPr var_88
  loc_9E7ECF: Me.Caption = from_stack_1
  loc_9E7ED4: FFree1Str var_B0
  loc_9E7ED7: FFree1Ad var_88
  loc_9E7EDA: Branch loc_9E7EF4
  loc_9E7EDD: LitStr vbNullString
  loc_9E7EE0: FLdPr Me
  loc_9E7EE3: VCallAd Control_ID_DetaProvLbl
  loc_9E7EE6: FStAdFunc var_88
  loc_9E7EE9: FLdPr var_88
  loc_9E7EEC: Me.Caption = from_stack_1
  loc_9E7EF1: FFree1Ad var_88
  loc_9E7EF4: ExitProcHresult
End Function

Private Sub cmdPdf_Click() '95D650
  'Data Table: 4B6E38
  loc_95D638: LitI2_Byte 0
  loc_95D63A: ILdRf Me
  loc_95D63D: CastAd
  loc_95D640: FStAdFunc var_88
  loc_95D643: FLdRfVar var_88
  loc_95D646: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_95D64B: FFree1Ad var_88
  loc_95D64E: ExitProcHresult
  loc_95D64F: CStrVarTmp
End Sub

Private Sub CucuPersCmd_Click() 'A02F70
  'Data Table: 4B6E38
  loc_A02E24: ImpAdLdRf MemVar_C3D74C
  loc_A02E27: NewIfNullAd
  loc_A02E2A: FStAd var_88 
  loc_A02E2E: LitI2_Byte 0
  loc_A02E30: FLdPr var_88
  loc_A02E33: Call bscProveedor.MuestroAnuladosPut(from_stack_1v)
  loc_A02E38: LitNothing
  loc_A02E3A: CastAd
  loc_A02E3D: FStAdFuncNoPop
  loc_A02E40: FLdRfVar var_8C
  loc_A02E43: ImpAdLdRf MemVar_C3D74C
  loc_A02E46: NewIfNullPr bscProveedor
  loc_A02E49: from_stack_1v = bscProveedor.global_4315292Get()
  loc_A02E4E: FLdPr var_8C
  loc_A02E51: Call clsbase.RsFrmSet(from_stack_1v)
  loc_A02E56: FFreeAd var_90 = ""
  loc_A02E5D: LitVar_Missing var_B0
  loc_A02E60: PopAdLdVar
  loc_A02E61: LitVarI4
  loc_A02E69: PopAdLdVar
  loc_A02E6A: FLdPr var_88
  loc_A02E6D: Me.Show from_stack_1, from_stack_2
  loc_A02E72: FLdRfVar var_B4
  loc_A02E75: FLdRfVar var_8C
  loc_A02E78: FLdPr var_88
  loc_A02E7B: from_stack_1v = bscProveedor.global_4315292Get()
  loc_A02E80: FLdPr var_8C
  loc_A02E83: from_stack_1 = clsbase.RecordCount
  loc_A02E88: ILdRf var_B4
  loc_A02E8B: LitI4 0
  loc_A02E90: GtI4
  loc_A02E91: FFree1Ad var_8C
  loc_A02E94: BranchF loc_A02F69
  loc_A02E97: FLdRfVar var_CC
  loc_A02E9A: FLdRfVar var_BC
  loc_A02E9D: LitVarStr var_A0, "CucuPers"
  loc_A02EA2: PopAdLdVar
  loc_A02EA3: FLdRfVar var_B8
  loc_A02EA6: FLdRfVar var_90
  loc_A02EA9: FLdRfVar var_8C
  loc_A02EAC: FLdPr var_88
  loc_A02EAF: from_stack_1v = bscProveedor.global_4315292Get()
  loc_A02EB4: FLdPr var_8C
  loc_A02EB7: from_stack_1v = clsbase.RsFrmGet()
  loc_A02EBC: FLdPr var_90
  loc_A02EBF:  = Me.Fields
  loc_A02EC4: FLdPr var_B8
  loc_A02EC7: from_stack_2 = Me.Item(from_stack_1)
  loc_A02ECC: FLdPr var_BC
  loc_A02ECF:  = Me.Value
  loc_A02ED4: FLdRfVar var_CC
  loc_A02ED7: CStrVarTmp
  loc_A02ED8: CVarStr var_DC
  loc_A02EDB: PopAdLdVar
  loc_A02EDC: FLdPr Me
  loc_A02EDF: VCallAd Control_ID_CucuPersMsk
  loc_A02EE2: FStAdFunc var_E0
  loc_A02EE5: FLdPr var_E0
  loc_A02EE8: LateIdSt
  loc_A02EED: FFreeAd var_8C = "": var_90 = "": var_B8 = "": var_BC = ""
  loc_A02EFA: FFreeVar var_CC = ""
  loc_A02F01: FLdRfVar var_CC
  loc_A02F04: FLdRfVar var_BC
  loc_A02F07: LitVarStr var_A0, "DetaProv"
  loc_A02F0C: PopAdLdVar
  loc_A02F0D: FLdRfVar var_B8
  loc_A02F10: FLdRfVar var_90
  loc_A02F13: FLdRfVar var_8C
  loc_A02F16: FLdPr var_88
  loc_A02F19: from_stack_1v = bscProveedor.global_4315292Get()
  loc_A02F1E: FLdPr var_8C
  loc_A02F21: from_stack_1v = clsbase.RsFrmGet()
  loc_A02F26: FLdPr var_90
  loc_A02F29:  = Me.Fields
  loc_A02F2E: FLdPr var_B8
  loc_A02F31: from_stack_2 = Me.Item(from_stack_1)
  loc_A02F36: FLdPr var_BC
  loc_A02F39:  = Me.Value
  loc_A02F3E: FLdRfVar var_CC
  loc_A02F41: CStrVarTmp
  loc_A02F42: FStStrNoPop var_E4
  loc_A02F45: FLdPr Me
  loc_A02F48: VCallAd Control_ID_DetaProvLbl
  loc_A02F4B: FStAdFunc var_E0
  loc_A02F4E: FLdPr var_E0
  loc_A02F51: Me.Caption = from_stack_1
  loc_A02F56: FFree1Str var_E4
  loc_A02F59: FFreeAd var_8C = "": var_90 = "": var_B8 = "": var_BC = ""
  loc_A02F66: FFree1Var var_CC = ""
  loc_A02F69: LitNothing
  loc_A02F6B: FStAd var_88 
  loc_A02F6F: ExitProcHresult
End Sub

Private Sub cmdXLS_Click() '96B21C
  'Data Table: 4B6E38
  loc_96B200: LitI2_Byte &HFF
  loc_96B202: LitI2_Byte 0
  loc_96B204: ILdRf Me
  loc_96B207: CastAd
  loc_96B20A: FStAdFunc var_88
  loc_96B20D: FLdRfVar var_88
  loc_96B210: ImpAdCallFPR4 Proc_263_4_A28DF0(, , )
  loc_96B215: FFree1Ad var_88
  loc_96B218: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() '9C0800
  'Data Table: 4B6E38
  loc_9C0734: LitI2_Byte 0
  loc_9C0736: FLdPr Me
  loc_9C0739: MemStI2 bGenerado
  loc_9C073C: LitI2_Byte &HFF
  loc_9C073E: FLdPr Me
  loc_9C0741: MemStI2 bLogos
  loc_9C0744: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_9C0749: ImpAdLdI2 MemVar_C3D064
  loc_9C074C: CStrUI1
  loc_9C074E: FStStrNoPop var_88
  loc_9C0751: FLdPr Me
  loc_9C0754: VCallAd Control_ID_cboPeriodo
  loc_9C0757: FStAdFunc var_8C
  loc_9C075A: FLdPr var_8C
  loc_9C075D: Me.Text = from_stack_1
  loc_9C0762: FFree1Str var_88
  loc_9C0765: FFree1Ad var_8C
  loc_9C0768: LitVarStr var_9C, vbNullString
  loc_9C076D: PopAdLdVar
  loc_9C076E: FLdPr Me
  loc_9C0771: VCallAd Control_ID_CucuPersMsk
  loc_9C0774: FStAdFunc var_8C
  loc_9C0777: FLdPr var_8C
  loc_9C077A: LateIdSt
  loc_9C077F: FFree1Ad var_8C
  loc_9C0782: LitStr vbNullString
  loc_9C0785: FLdPr Me
  loc_9C0788: VCallAd Control_ID_DetaProvLbl
  loc_9C078B: FStAdFunc var_8C
  loc_9C078E: FLdPr var_8C
  loc_9C0791: Me.Caption = from_stack_1
  loc_9C0796: FFree1Ad var_8C
  loc_9C0799: LitI4 0
  loc_9C079E: CI2I4
  loc_9C079F: FLdPr Me
  loc_9C07A2: VCallAd Control_ID_chkOcultarImporte
  loc_9C07A5: FStAdFunc var_8C
  loc_9C07A8: FLdPr var_8C
  loc_9C07AB: Me.Value = from_stack_1
  loc_9C07B0: FFree1Ad var_8C
  loc_9C07B3: LitI4 0
  loc_9C07B8: CI2I4
  loc_9C07B9: FLdPr Me
  loc_9C07BC: VCallAd Control_ID_chkExcluirPartidasExtra
  loc_9C07BF: FStAdFunc var_8C
  loc_9C07C2: FLdPr var_8C
  loc_9C07C5: Me.Value = from_stack_1
  loc_9C07CA: FFree1Ad var_8C
  loc_9C07CD: LitStr vbNullString
  loc_9C07D0: FLdPr Me
  loc_9C07D3: VCallAd Control_ID_ImporteTxt
  loc_9C07D6: FStAdFunc var_8C
  loc_9C07D9: FLdPr var_8C
  loc_9C07DC: Me.Text = from_stack_1
  loc_9C07E1: FFree1Ad var_8C
  loc_9C07E4: Call HabilitarCriterio()
  loc_9C07E9: ILdRf Me
  loc_9C07EC: CastAd
  loc_9C07EF: FStAdFunc var_8C
  loc_9C07F2: FLdRfVar var_8C
  loc_9C07F5: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_9C07FA: FFree1Ad var_8C
  loc_9C07FD: ExitProcHresult
End Sub

Private Sub Form_Load() '9CD850
  'Data Table: 4B6E38
  loc_9CD778: LitI2_Byte &HFF
  loc_9CD77A: ImpAdStI2 MemVar_C3D840
  loc_9CD77D: ILdRf Me
  loc_9CD780: CastAd
  loc_9CD783: FStAdFunc var_8C
  loc_9CD786: FLdRfVar var_8C
  loc_9CD789: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_9CD78E: FFree1Ad var_8C
  loc_9CD791: LitStr "SELECT * FROM infogov.periodo ORDER BY PeriInfo"
  loc_9CD794: FLdRfVar var_88
  loc_9CD797: NewIfNullPr clsperiodo
  loc_9CD79A: Call clsperiodo.RedefineRS(from_stack_1v)
  loc_9CD79F: FLdRfVar var_90
  loc_9CD7A2: FLdRfVar var_88
  loc_9CD7A5: NewIfNullPr clsperiodo
  loc_9CD7A8: from_stack_1 = clsperiodo.RecordCount
  loc_9CD7AD: ILdRf var_90
  loc_9CD7B0: LitI4 0
  loc_9CD7B5: GtI4
  loc_9CD7B6: BranchF loc_9CD849
  loc_9CD7B9: FLdRfVar var_88
  loc_9CD7BC: NewIfNullPr clsperiodo
  loc_9CD7BF: Call clsperiodo.MoveFirst()
  loc_9CD7C4: FLdRfVar var_92
  loc_9CD7C7: FLdRfVar var_88
  loc_9CD7CA: NewIfNullPr clsperiodo
  loc_9CD7CD: from_stack_1 = clsperiodo.EOF
  loc_9CD7D2: FLdI2 var_92
  loc_9CD7D5: NotI4
  loc_9CD7D6: BranchF loc_9CD849
  loc_9CD7D9: LitVar_Missing var_D0
  loc_9CD7DC: PopAdLdVar
  loc_9CD7DD: FLdRfVar var_BC
  loc_9CD7E0: FLdRfVar var_AC
  loc_9CD7E3: LitVarStr var_A8, "PeriInfo"
  loc_9CD7E8: PopAdLdVar
  loc_9CD7E9: FLdRfVar var_98
  loc_9CD7EC: FLdRfVar var_8C
  loc_9CD7EF: FLdRfVar var_88
  loc_9CD7F2: NewIfNullPr clsperiodo
  loc_9CD7F5: from_stack_1v = clsperiodo.RsFrmGet()
  loc_9CD7FA: FLdPr var_8C
  loc_9CD7FD:  = Me.Fields
  loc_9CD802: FLdPr var_98
  loc_9CD805: from_stack_2 = Me.Item(from_stack_1)
  loc_9CD80A: FLdPr var_AC
  loc_9CD80D:  = Me.Value
  loc_9CD812: FLdRfVar var_BC
  loc_9CD815: CStrVarTmp
  loc_9CD816: FStStrNoPop var_C0
  loc_9CD819: FLdPr Me
  loc_9CD81C: VCallAd Control_ID_cboPeriodo
  loc_9CD81F: FStAdFunc var_D4
  loc_9CD822: FLdPr var_D4
  loc_9CD825: Me.AddItem from_stack_1, from_stack_2
  loc_9CD82A: FFree1Str var_C0
  loc_9CD82D: FFreeAd var_8C = "": var_98 = "": var_AC = ""
  loc_9CD838: FFree1Var var_BC = ""
  loc_9CD83B: FLdRfVar var_88
  loc_9CD83E: NewIfNullPr clsperiodo
  loc_9CD841: Call clsperiodo.MoveSiguiente()
  loc_9CD846: Branch loc_9CD7C4
  loc_9CD849: Call cmdNueva_Click()
  loc_9CD84E: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '95D8B0
  'Data Table: 4B6E38
  loc_95D898: FLdPr Me
  loc_95D89B: VCallAd Control_ID_wbbReporte
  loc_95D89E: FStAdFunc var_88
  loc_95D8A1: FLdRfVar var_88
  loc_95D8A4: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_95D8A9: FFree1Ad var_88
  loc_95D8AC: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '95D520
  'Data Table: 4B6E38
  loc_95D508: ILdRf Me
  loc_95D50B: CastAd
  loc_95D50E: FStAdFunc var_88
  loc_95D511: FLdRfVar var_88
  loc_95D514: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_95D519: FFree1Ad var_88
  loc_95D51C: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '95D5B8
  'Data Table: 4B6E38
  loc_95D5A0: ILdRf Me
  loc_95D5A3: CastAd
  loc_95D5A6: FStAdFunc var_88
  loc_95D5A9: FLdRfVar var_88
  loc_95D5AC: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_95D5B1: FFree1Ad var_88
  loc_95D5B4: ExitProcHresult
End Sub

Private Sub DesdeCmd_Click() '98229C
  'Data Table: 4B6E38
  loc_982260: LitVar_Missing var_A4
  loc_982263: PopAdLdVar
  loc_982264: LitVarI4
  loc_98226C: PopAdLdVar
  loc_98226D: ImpAdLdRf MemVar_C3D9A8
  loc_982270: NewIfNullPr frmCalendario
  loc_982273: frmCalendario.Show from_stack_1, from_stack_2
  loc_982278: ImpAdLdRf MemVar_C3D038
  loc_98227B: CDargRef
  loc_98227F: FLdPr Me
  loc_982282: VCallAd Control_ID_DesdeMsk
  loc_982285: FStAdFunc var_A8
  loc_982288: FLdPr var_A8
  loc_98228B: LateIdSt
  loc_982290: FFree1Ad var_A8
  loc_982293: ImpAdCallFPR4 Proc_261_52_966EEC()
  loc_982298: ExitProcHresult
End Sub

Private Sub HastaCmd_Click() '988EB4
  'Data Table: 4B6E38
  loc_988E74: LitVar_Missing var_A4
  loc_988E77: PopAdLdVar
  loc_988E78: LitVarI4
  loc_988E80: PopAdLdVar
  loc_988E81: ImpAdLdRf MemVar_C3D9A8
  loc_988E84: NewIfNullPr frmCalendario
  loc_988E87: frmCalendario.Show from_stack_1, from_stack_2
  loc_988E8C: ImpAdLdFPR8 MemVar_C3D04C
  loc_988E8F: CStrDate
  loc_988E91: CVarStr var_B4
  loc_988E94: PopAdLdVar
  loc_988E95: FLdPr Me
  loc_988E98: VCallAd Control_ID_HastaMsk
  loc_988E9B: FStAdFunc var_B8
  loc_988E9E: FLdPr var_B8
  loc_988EA1: LateIdSt
  loc_988EA6: FFree1Ad var_B8
  loc_988EA9: FFree1Var var_B4 = ""
  loc_988EAC: ImpAdCallFPR4 Proc_261_52_966EEC()
  loc_988EB1: ExitProcHresult
End Sub

Private Sub cmdTxt_Click() '95D2C0
  'Data Table: 4B6E38
  loc_95D2A8: LitI2_Byte 0
  loc_95D2AA: ILdRf Me
  loc_95D2AD: CastAd
  loc_95D2B0: FStAdFunc var_88
  loc_95D2B3: FLdRfVar var_88
  loc_95D2B6: ImpAdCallFPR4 Proc_263_3_9FD750(, )
  loc_95D2BB: FFree1Ad var_88
  loc_95D2BE: ExitProcHresult
End Sub

Public Function htmFileGet() '4B81E8
  htmFileGet = htmFile
End Function

Public Sub htmFilePut(Value) '4B81F7
  htmFile = Value
End Sub

Public Sub htmFileSet(Value) '4B8206
  htmFile = Value
End Sub

Public Function bLogosGet() '4B8215
  bLogosGet = bLogos
End Function

Public Sub bLogosPut(Value) '4B8224
  bLogos = Value
End Sub

Public Function bGeneradoGet() '4B8233
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '4B8242
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() '9DB470
  'Data Table: 4B6E38
  loc_9DB388: LitI4 0
  loc_9DB38D: LitI4 1
  loc_9DB392: FLdRfVar var_88
  loc_9DB395: Redim
  loc_9DB39F: FLdPr Me
  loc_9DB3A2: VCallAd Control_ID_DesdeMsk
  loc_9DB3A5: CVarAd
  loc_9DB3A9: ParmAry1St
  loc_9DB3AF: FLdPr Me
  loc_9DB3B2: VCallAd Control_ID_DesdeCmd
  loc_9DB3B5: CVarAd
  loc_9DB3B9: ParmAry1St
  loc_9DB3BF: FLdRfVar var_88
  loc_9DB3C2: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_9DB3C7: FLdRfVar var_88
  loc_9DB3CA: Erase
  loc_9DB3CB: LitI4 0
  loc_9DB3D0: LitI4 7
  loc_9DB3D5: FLdRfVar var_88
  loc_9DB3D8: Redim
  loc_9DB3E2: FLdPr Me
  loc_9DB3E5: VCallAd Control_ID_cboPeriodo
  loc_9DB3E8: CVarAd
  loc_9DB3EC: ParmAry1St
  loc_9DB3F2: FLdPr Me
  loc_9DB3F5: VCallAd Control_ID_HastaMsk
  loc_9DB3F8: CVarAd
  loc_9DB3FC: ParmAry1St
  loc_9DB402: FLdPr Me
  loc_9DB405: VCallAd Control_ID_HastaCmd
  loc_9DB408: CVarAd
  loc_9DB40C: ParmAry1St
  loc_9DB412: FLdPr Me
  loc_9DB415: VCallAd Control_ID_CucuPersMsk
  loc_9DB418: CVarAd
  loc_9DB41C: ParmAry1St
  loc_9DB422: FLdPr Me
  loc_9DB425: VCallAd Control_ID_CucuPersCmd
  loc_9DB428: CVarAd
  loc_9DB42C: ParmAry1St
  loc_9DB432: FLdPr Me
  loc_9DB435: VCallAd Control_ID_chkOcultarImporte
  loc_9DB438: CVarAd
  loc_9DB43C: ParmAry1St
  loc_9DB442: FLdPr Me
  loc_9DB445: VCallAd Control_ID_chkExcluirPartidasExtra
  loc_9DB448: CVarAd
  loc_9DB44C: ParmAry1St
  loc_9DB452: FLdPr Me
  loc_9DB455: VCallAd Control_ID_ImporteTxt
  loc_9DB458: CVarAd
  loc_9DB45C: ParmAry1St
  loc_9DB462: FLdRfVar var_88
  loc_9DB465: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9DB46A: FLdRfVar var_88
  loc_9DB46D: Erase
  loc_9DB46E: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'AA57F0
  'Data Table: 4B6E38
  loc_AA534C: LitStr vbNullString
  loc_AA534F: FLdPr Me
  loc_AA5352: MemStStrCopy
  loc_AA5356: LitI2_Byte 0
  loc_AA5358: PopTmpLdAd2 var_96
  loc_AA535B: Call DesdeMsk_UnknownEvent_8()
  loc_AA5360: FLdPr Me
  loc_AA5363: MemLdStr global_116
  loc_AA5366: LitStr vbNullString
  loc_AA5369: NeStr
  loc_AA536B: BranchF loc_AA536F
  loc_AA536E: ExitProcHresult
  loc_AA536F: LitI2_Byte 0
  loc_AA5371: PopTmpLdAd2 var_96
  loc_AA5374: Call HastaMsk_UnknownEvent_8()
  loc_AA5379: FLdPr Me
  loc_AA537C: MemLdStr global_116
  loc_AA537F: LitStr vbNullString
  loc_AA5382: NeStr
  loc_AA5384: BranchF loc_AA5388
  loc_AA5387: ExitProcHresult
  loc_AA5388: FLdPr Me
  loc_AA538B: MemLdI2 bGenerado
  loc_AA538E: BranchF loc_AA5392
  loc_AA5391: ExitProcHresult
  loc_AA5392: LitVarStr var_A8, "Generando reporte..."
  loc_AA5397: PopAdLdVar
  loc_AA5398: FLdPr Me
  loc_AA539B: VCallAd Control_ID_statusBar
  loc_AA539E: FStAdFunc var_BC
  loc_AA53A1: FLdPr var_BC
  loc_AA53A4: LateIdSt
  loc_AA53A9: FFree1Ad var_BC
  loc_AA53AC: LitI4 &HB
  loc_AA53B1: CI2I4
  loc_AA53B2: FLdPr Me
  loc_AA53B5: Me.MousePointer = from_stack_1
  loc_AA53BA: LitI2_Byte 0
  loc_AA53BC: PopTmpLdAd2 var_96
  loc_AA53BF: from_stack_2v = CucuPersMsk_UnknownEvent_8(from_stack_1v)
  loc_AA53C4: FLdPr Me
  loc_AA53C7: MemLdStr global_116
  loc_AA53CA: LitStr vbNullString
  loc_AA53CD: NeStr
  loc_AA53CF: BranchF loc_AA53D5
  loc_AA53D2: Branch loc_AA57C6
  loc_AA53D5: LitI2_Byte 0
  loc_AA53D7: PopTmpLdAd2 var_96
  loc_AA53DA: Call ImporteTxt_Validate(from_stack_1v)
  loc_AA53DF: FLdPr Me
  loc_AA53E2: MemLdStr global_116
  loc_AA53E5: LitStr vbNullString
  loc_AA53E8: NeStr
  loc_AA53EA: BranchF loc_AA53F0
  loc_AA53ED: Branch loc_AA57C6
  loc_AA53F0: FLdPr Me
  loc_AA53F3: VCallAd Control_ID_CucuPersMsk
  loc_AA53F6: FStAdFunc var_BC
  loc_AA53F9: FLdPr var_BC
  loc_AA53FC: LateIdLdVar var_CC DispID_22 0
  loc_AA5403: PopAd
  loc_AA5405: FLdPr Me
  loc_AA5408: VCallAd Control_ID_CucuPersMsk
  loc_AA540B: FStAdFunc var_D4
  loc_AA540E: FLdPr var_D4
  loc_AA5411: LateIdLdVar var_E4 DispID_22 0
  loc_AA5418: PopAd
  loc_AA541A: LitVarStr var_B8, vbNullString
  loc_AA541F: FStVarCopyObj var_108
  loc_AA5422: FLdRfVar var_108
  loc_AA5425: LitStr " AND i.CucuPers = "
  loc_AA5428: FLdRfVar var_E4
  loc_AA542B: CStrVarTmp
  loc_AA542C: FStStrNoPop var_E8
  loc_AA542F: ConcatStr
  loc_AA5430: CVarStr var_F8
  loc_AA5433: FLdRfVar var_CC
  loc_AA5436: CStrVarTmp
  loc_AA5437: FStStrNoPop var_D0
  loc_AA543A: LitStr vbNullString
  loc_AA543D: NeStr
  loc_AA543F: CVarBoolI2 var_A8
  loc_AA5443: FLdRfVar var_118
  loc_AA5446: ImpAdCallFPR4  = IIf(, , )
  loc_AA544B: FLdRfVar var_118
  loc_AA544E: CStrVarTmp
  loc_AA544F: FStStr var_8C
  loc_AA5452: FFreeStr var_D0 = ""
  loc_AA5459: FFreeAd var_BC = ""
  loc_AA5460: FFreeVar var_CC = "": var_E4 = "": var_A8 = "": var_F8 = "": var_108 = ""
  loc_AA546F: FLdRfVar var_D0
  loc_AA5472: FLdPr Me
  loc_AA5475: VCallAd Control_ID_ImporteTxt
  loc_AA5478: FStAdFunc var_BC
  loc_AA547B: FLdPr var_BC
  loc_AA547E:  = Me.Text
  loc_AA5483: ILdRf var_D0
  loc_AA5486: LitStr vbNullString
  loc_AA5489: NeStr
  loc_AA548B: FFree1Str var_D0
  loc_AA548E: FFree1Ad var_BC
  loc_AA5491: BranchF loc_AA54E5
  loc_AA5494: FLdRfVar var_D0
  loc_AA5497: FLdPr Me
  loc_AA549A: VCallAd Control_ID_ImporteTxt
  loc_AA549D: FStAdFunc var_BC
  loc_AA54A0: FLdPr var_BC
  loc_AA54A3:  = Me.Text
  loc_AA54A8: LitStr " AND DeexImpu <= "
  loc_AA54AB: LitI4 0
  loc_AA54B0: LitI4 -1
  loc_AA54B5: LitI4 1
  loc_AA54BA: LitStr "."
  loc_AA54BD: LitStr ","
  loc_AA54C0: ILdRf var_D0
  loc_AA54C3: CR8Str
  loc_AA54C5: CStrR8
  loc_AA54C7: FStStrNoPop var_E8
  loc_AA54CA: ImpAdCallI2 Replace(, , , , , )
  loc_AA54CF: FStStrNoPop var_11C
  loc_AA54D2: ConcatStr
  loc_AA54D3: FStStr var_90
  loc_AA54D6: FFreeStr var_D0 = "": var_E8 = ""
  loc_AA54DF: FFree1Ad var_BC
  loc_AA54E2: Branch loc_AA54EB
  loc_AA54E5: LitStr vbNullString
  loc_AA54E8: FStStrCopy var_90
  loc_AA54EB: FLdRfVar var_96
  loc_AA54EE: FLdPr Me
  loc_AA54F1: VCallAd Control_ID_chkExcluirPartidasExtra
  loc_AA54F4: FStAdFunc var_BC
  loc_AA54F7: FLdPr var_BC
  loc_AA54FA:  = Me.Value
  loc_AA54FF: LitVarStr var_12C, " AND Left(i.CodiPart,1) <> PaexPaco "
  loc_AA5504: FStVarCopyObj var_E4
  loc_AA5507: FLdRfVar var_E4
  loc_AA550A: LitVarStr var_B8, vbNullString
  loc_AA550F: FStVarCopyObj var_CC
  loc_AA5512: FLdRfVar var_CC
  loc_AA5515: FLdI2 var_96
  loc_AA5518: CI4UI1
  loc_AA5519: LitI4 0
  loc_AA551E: EqI4
  loc_AA551F: CVarBoolI2 var_A8
  loc_AA5523: FLdRfVar var_F8
  loc_AA5526: ImpAdCallFPR4  = IIf(, , )
  loc_AA552B: FLdRfVar var_F8
  loc_AA552E: CStrVarTmp
  loc_AA552F: FStStr var_94
  loc_AA5532: FFree1Ad var_BC
  loc_AA5535: FFreeVar var_A8 = "": var_CC = "": var_E4 = ""
  loc_AA5540: FLdPr Me
  loc_AA5543: MemLdRfVar from_stack_1.global_76
  loc_AA5546: NewIfNullAd
  loc_AA5549: FStAd var_130 
  loc_AA554D: FLdPr Me
  loc_AA5550: VCallAd Control_ID_HastaMsk
  loc_AA5553: FStAdFunc var_D4
  loc_AA5556: FLdPr var_D4
  loc_AA5559: LateIdLdVar var_CC DispID_15 0
  loc_AA5560: PopAd
  loc_AA5562: LitStr "SELECT DetaProv, i.CucuPers, MailPers, i.ExpeImpu, Group_concat(distinct i.NumeOrpa) NumeOrpa, CAST(IFNULL(Concat(Left(NumeFact,3),' ',Substr(NumeFact,4,4),'-',Right(NumeFact,8)),'') AS CHAR) AS NumeFact, Sum(MapaImpu) MapaImpu, Sum(PagaImpu) PagaImpu"
  loc_AA5565: LitStr ", Sum(MapaImpu)-Sum(PagaImpu) DeexImpu"
  loc_AA5568: ConcatStr
  loc_AA5569: FStStrNoPop var_D0
  loc_AA556C: LitStr ", Concat(DetaProv,'|',i.CucuPers,'|',Replace(Sum(MapaImpu)-Sum(PagaImpu),'.',','),'|',MailPers ) LineaTxt"
  loc_AA556F: ConcatStr
  loc_AA5570: FStStrNoPop var_E8
  loc_AA5573: LitStr " FROM imputacion i"
  loc_AA5576: ConcatStr
  loc_AA5577: FStStrNoPop var_11C
  loc_AA557A: LitStr " INNER JOIN proveedor p ON p.CucuPers = i.CucuPers"
  loc_AA557D: ConcatStr
  loc_AA557E: FStStrNoPop var_134
  loc_AA5581: LitStr " INNER JOIN infogov.persona pp ON pp.CucuPers = i.CucuPers"
  loc_AA5584: ConcatStr
  loc_AA5585: FStStrNoPop var_138
  loc_AA5588: LitStr " INNER JOIN paraconta pa ON pa.PeriInfo = i.PeriInfo"
  loc_AA558B: ConcatStr
  loc_AA558C: FStStrNoPop var_13C
  loc_AA558F: LitStr " WHERE i.PeriInfo = "
  loc_AA5592: ConcatStr
  loc_AA5593: FStStrNoPop var_144
  loc_AA5596: FLdRfVar var_140
  loc_AA5599: FLdPr Me
  loc_AA559C: VCallAd Control_ID_cboPeriodo
  loc_AA559F: FStAdFunc var_BC
  loc_AA55A2: FLdPr var_BC
  loc_AA55A5:  = Me.Text
  loc_AA55AA: ILdRf var_140
  loc_AA55AD: ConcatStr
  loc_AA55AE: FStStrNoPop var_148
  loc_AA55B1: LitStr " AND FechImpu <= "
  loc_AA55B4: ConcatStr
  loc_AA55B5: FStStrNoPop var_14C
  loc_AA55B8: LitI4 1
  loc_AA55BD: LitI4 1
  loc_AA55C2: LitVarStr var_A8, "'yyyy-mm-dd'"
  loc_AA55C7: FStVarCopyObj var_F8
  loc_AA55CA: FLdRfVar var_F8
  loc_AA55CD: FLdRfVar var_CC
  loc_AA55D0: CStrVarTmp
  loc_AA55D1: CVarStr var_E4
  loc_AA55D4: ImpAdCallI2 Format$(, )
  loc_AA55D9: FStStrNoPop var_150
  loc_AA55DC: ConcatStr
  loc_AA55DD: FStStrNoPop var_154
  loc_AA55E0: LitStr " AND (i.MapaImpu != 0 OR i.PagaImpu != 0)"
  loc_AA55E3: ConcatStr
  loc_AA55E4: FStStrNoPop var_158
  loc_AA55E7: ILdRf var_8C
  loc_AA55EA: ConcatStr
  loc_AA55EB: FStStrNoPop var_15C
  loc_AA55EE: ILdRf var_94
  loc_AA55F1: ConcatStr
  loc_AA55F2: FStStrNoPop var_160
  loc_AA55F5: LitStr " GROUP BY i.CucuPers, i.ExpeImpu"
  loc_AA55F8: ConcatStr
  loc_AA55F9: FStStrNoPop var_164
  loc_AA55FC: LitStr " HAVING DeexImpu <> 0"
  loc_AA55FF: ConcatStr
  loc_AA5600: FStStrNoPop var_168
  loc_AA5603: ILdRf var_90
  loc_AA5606: ConcatStr
  loc_AA5607: FStStrNoPop var_16C
  loc_AA560A: LitStr " ORDER BY DetaProv, ExpeImpu, DeveImpu"
  loc_AA560D: ConcatStr
  loc_AA560E: FStStrNoPop var_170
  loc_AA5611: FLdPr var_130
  loc_AA5614: Call clsbase.RedefineRS(from_stack_1v)
  loc_AA5619: FFreeStr var_D0 = "": var_E8 = "": var_11C = "": var_134 = "": var_138 = "": var_13C = "": var_144 = "": var_140 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = ""
  loc_AA5642: FFreeAd var_BC = ""
  loc_AA5649: FFreeVar var_CC = "": var_E4 = ""
  loc_AA5652: FLdRfVar var_174
  loc_AA5655: FLdPr var_130
  loc_AA5658: from_stack_1 = clsbase.RecordCount
  loc_AA565D: ILdRf var_174
  loc_AA5660: LitI4 0
  loc_AA5665: EqI4
  loc_AA5666: BranchF loc_AA5679
  loc_AA5669: LitI4 0
  loc_AA566E: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_AA5671: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_AA5676: Branch loc_AA57C6
  loc_AA5679: LitI4 0
  loc_AA567E: FLdRfVar var_174
  loc_AA5681: FLdPr var_130
  loc_AA5684: from_stack_1 = clsbase.RecordCount
  loc_AA5689: ILdRf var_174
  loc_AA568C: FLdPr Me
  loc_AA568F: MemLdRfVar from_stack_1.global_100
  loc_AA5692: Redim
  loc_AA569C: LitI2_Byte 0
  loc_AA569E: LitVar_Missing var_CC
  loc_AA56A1: LitI2_Byte &HFF
  loc_AA56A3: LitVarI2 var_A8, 0
  loc_AA56A8: PopAdLdVar
  loc_AA56A9: FLdPr Me
  loc_AA56AC: MemLdRfVar from_stack_1.global_112
  loc_AA56AF: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AA56B4: FFree1Var var_CC = ""
  loc_AA56B7: LitI2_Byte 0
  loc_AA56B9: FLdPr Me
  loc_AA56BC: MemStI2 global_104
  loc_AA56BF: Call Proc_181_35_9DFDD4()
  loc_AA56C4: FLdRfVar var_96
  loc_AA56C7: FLdPr var_130
  loc_AA56CA: from_stack_1 = clsbase.EOF
  loc_AA56CF: FLdI2 var_96
  loc_AA56D2: NotI4
  loc_AA56D3: BranchF loc_AA5741
  loc_AA56D6: FLdRfVar var_CC
  loc_AA56D9: FLdRfVar var_178
  loc_AA56DC: LitVarStr var_A8, "CucuPers"
  loc_AA56E1: PopAdLdVar
  loc_AA56E2: FLdRfVar var_D4
  loc_AA56E5: FLdRfVar var_BC
  loc_AA56E8: FLdPr var_130
  loc_AA56EB: from_stack_1v = clsbase.RsFrmGet()
  loc_AA56F0: FLdPr var_BC
  loc_AA56F3:  = Me.Fields
  loc_AA56F8: FLdPr var_D4
  loc_AA56FB: from_stack_2 = Me.Item(from_stack_1)
  loc_AA5700: FLdPr var_178
  loc_AA5703:  = Me.Value
  loc_AA5708: FLdRfVar var_CC
  loc_AA570B: FLdPr Me
  loc_AA570E: MemLdI2 global_104
  loc_AA5711: CI4UI1
  loc_AA5712: FLdPr Me
  loc_AA5715: MemLdStr global_100
  loc_AA5718: Ary1LdPr
  loc_AA5719: MemLdStr global_0
  loc_AA571C: CVarStr var_B8
  loc_AA571F: HardType
  loc_AA5720: NeVarBool
  loc_AA5722: FFreeAd var_BC = "": var_D4 = ""
  loc_AA572B: FFree1Var var_CC = ""
  loc_AA572E: BranchF loc_AA5739
  loc_AA5731: Call Proc_181_35_9DFDD4()
  loc_AA5736: Branch loc_AA573E
  loc_AA5739: Call Proc_181_36_A6F95C()
  loc_AA573E: Branch loc_AA56C4
  loc_AA5741: LitNothing
  loc_AA5743: FStAd var_130 
  loc_AA5747: LitI2_Byte 1
  loc_AA5749: FLdPr Me
  loc_AA574C: MemLdRfVar from_stack_1.global_104
  loc_AA574F: FLdPr Me
  loc_AA5752: MemLdStr global_100
  loc_AA5755: LitI2_Byte 1
  loc_AA5757: FnUBound
  loc_AA5759: CI2I4
  loc_AA575A: ForI2 var_17C
  loc_AA5760: LitI2_Byte 0
  loc_AA5762: FLdPr Me
  loc_AA5765: MemLdRfVar from_stack_1.global_112
  loc_AA5768: CVarRef
  loc_AA576D: LitI2_Byte &HFF
  loc_AA576F: FLdPr Me
  loc_AA5772: MemLdI2 global_104
  loc_AA5775: CI4UI1
  loc_AA5776: FLdPr Me
  loc_AA5779: MemLdStr global_100
  loc_AA577C: Ary1LdPr
  loc_AA577D: MemLdStr global_16
  loc_AA5780: CVarStr var_A8
  loc_AA5783: PopAdLdVar
  loc_AA5784: FLdRfVar var_88
  loc_AA5787: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AA578C: FLdPr Me
  loc_AA578F: MemLdI2 global_104
  loc_AA5792: CI4UI1
  loc_AA5793: FLdPr Me
  loc_AA5796: MemLdStr global_100
  loc_AA5799: Ary1LdPr
  loc_AA579A: MemLdStr global_8
  loc_AA579D: LitI2_Byte 1
  loc_AA579F: FnUBound
  loc_AA57A1: CI2I4
  loc_AA57A2: FLdPr Me
  loc_AA57A5: MemLdI2 global_104
  loc_AA57A8: CI4UI1
  loc_AA57A9: FLdPr Me
  loc_AA57AC: MemLdStr global_100
  loc_AA57AF: Ary1LdPr
  loc_AA57B0: MemStI2 global_12
  loc_AA57B3: FLdPr Me
  loc_AA57B6: MemLdRfVar from_stack_1.global_104
  loc_AA57B9: NextI2 var_17C, loc_AA5760
  loc_AA57BE: LitI2_Byte &HFF
  loc_AA57C0: FLdPr Me
  loc_AA57C3: MemStI2 bGenerado
  loc_AA57C6: LitI4 0
  loc_AA57CB: CI2I4
  loc_AA57CC: FLdPr Me
  loc_AA57CF: Me.MousePointer = from_stack_1
  loc_AA57D4: LitVarStr var_A8, vbNullString
  loc_AA57D9: PopAdLdVar
  loc_AA57DA: FLdPr Me
  loc_AA57DD: VCallAd Control_ID_statusBar
  loc_AA57E0: FStAdFunc var_BC
  loc_AA57E3: FLdPr var_BC
  loc_AA57E6: LateIdSt
  loc_AA57EB: FFree1Ad var_BC
  loc_AA57EE: ExitProcHresult
End Sub

Public Sub GeneraXLS() '9523E4
  'Data Table: 4B6E38
  loc_9523CC: LitI2_Byte 0
  loc_9523CE: FLdPr Me
  loc_9523D1: MemStI2 bLogos
  loc_9523D4: Call GeneraHTML()
  loc_9523D9: LitI2_Byte &HFF
  loc_9523DB: FLdPr Me
  loc_9523DE: MemStI2 bLogos
  loc_9523E1: ExitProcHresult
End Sub

Public Sub GeneraTXT() '9BAB38
  'Data Table: 4B6E38
  loc_9BAA84: FLdRfVar var_88
  loc_9BAA87: LitI2_Byte 0
  loc_9BAA89: LitI2_Byte &HFF
  loc_9BAA8B: ImpAdLdI4 MemVar_C3D05C
  loc_9BAA8E: FLdPr Me
  loc_9BAA91: MemLdRfVar from_stack_1.global_80
  loc_9BAA94: NewIfNullPr IFileSystem3
  loc_9BAA97: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_9BAA9C: ILdRf var_88
  loc_9BAA9F: FLdPr Me
  loc_9BAAA2: MemStVarAd
  loc_9BAAA6: FFree1Ad var_88
  loc_9BAAA9: FLdPr Me
  loc_9BAAAC: MemLdRfVar from_stack_1.global_76
  loc_9BAAAF: NewIfNullAd
  loc_9BAAB2: FStAd var_8C 
  loc_9BAAB6: FLdPr var_8C
  loc_9BAAB9: Call clsbase.MoveFirst()
  loc_9BAABE: FLdRfVar var_8E
  loc_9BAAC1: FLdPr var_8C
  loc_9BAAC4: from_stack_1 = clsbase.EOF
  loc_9BAAC9: FLdI2 var_8E
  loc_9BAACC: NotI4
  loc_9BAACD: BranchF loc_9BAB22
  loc_9BAAD0: FLdRfVar var_A8
  loc_9BAAD3: LitVarStr var_A4, "LineaTxt"
  loc_9BAAD8: PopAdLdVar
  loc_9BAAD9: FLdRfVar var_94
  loc_9BAADC: FLdRfVar var_88
  loc_9BAADF: FLdPr var_8C
  loc_9BAAE2: from_stack_1v = clsbase.RsFrmGet()
  loc_9BAAE7: FLdPr var_88
  loc_9BAAEA:  = Me.Fields
  loc_9BAAEF: FLdPr var_94
  loc_9BAAF2: from_stack_2 = Me.Item(from_stack_1)
  loc_9BAAF7: FLdZeroAd var_A8
  loc_9BAAFA: CVarAd
  loc_9BAAFE: PopAdLdVar
  loc_9BAAFF: FLdPr Me
  loc_9BAB02: MemLdRfVar from_stack_1.global_84
  loc_9BAB05: LdPrVar
  loc_9BAB07: LateMemCall
  loc_9BAB0D: FFreeAd var_88 = ""
  loc_9BAB14: FFree1Var var_B8 = ""
  loc_9BAB17: FLdPr var_8C
  loc_9BAB1A: Call clsbase.MoveSiguiente()
  loc_9BAB1F: Branch loc_9BAABE
  loc_9BAB22: LitNothing
  loc_9BAB24: FStAd var_8C 
  loc_9BAB28: FLdPr Me
  loc_9BAB2B: MemLdRfVar from_stack_1.global_84
  loc_9BAB2E: LdPrVar
  loc_9BAB30: LateMemCall
  loc_9BAB36: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'AE774C
  'Data Table: 4B6E38
  loc_AE705C: FLdRfVar var_88
  loc_AE705F: LitI2_Byte 0
  loc_AE7061: LitI2_Byte &HFF
  loc_AE7063: ImpAdLdI4 MemVar_C3D83C
  loc_AE7066: FLdPr Me
  loc_AE7069: MemLdRfVar from_stack_1.global_80
  loc_AE706C: NewIfNullPr IFileSystem3
  loc_AE706F: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_AE7074: ILdRf var_88
  loc_AE7077: FLdPr Me
  loc_AE707A: MemStVarAd
  loc_AE707E: FFree1Ad var_88
  loc_AE7081: Call Proc_181_37_AB0DCC()
  loc_AE7086: FLdRfVar var_8A
  loc_AE7089: FLdPr Me
  loc_AE708C: VCallAd Control_ID_chkOcultarImporte
  loc_AE708F: FStAdFunc var_88
  loc_AE7092: FLdPr var_88
  loc_AE7095:  = Me.Value
  loc_AE709A: FLdI2 var_8A
  loc_AE709D: CI4UI1
  loc_AE709E: LitI4 0
  loc_AE70A3: EqI4
  loc_AE70A4: FFree1Ad var_88
  loc_AE70A7: BranchF loc_AE7414
  loc_AE70AA: LitI2_Byte 1
  loc_AE70AC: FLdPr Me
  loc_AE70AF: MemLdRfVar from_stack_1.global_104
  loc_AE70B2: FLdPr Me
  loc_AE70B5: MemLdStr global_100
  loc_AE70B8: LitI2_Byte 1
  loc_AE70BA: FnUBound
  loc_AE70BC: CI2I4
  loc_AE70BD: ForI2 var_8E
  loc_AE70C3: LitVarStr var_A0, "    <tr valign=""top"" class=""LineaDato"">"
  loc_AE70C8: PopAdLdVar
  loc_AE70C9: FLdPr Me
  loc_AE70CC: MemLdRfVar from_stack_1.htmFile
  loc_AE70CF: LdPrVar
  loc_AE70D1: LateMemCall
  loc_AE70D7: LitStr "  <td rowspan="""
  loc_AE70DA: FLdPr Me
  loc_AE70DD: MemLdI2 global_104
  loc_AE70E0: CI4UI1
  loc_AE70E1: FLdPr Me
  loc_AE70E4: MemLdStr global_100
  loc_AE70E7: Ary1LdPr
  loc_AE70E8: MemLdI2 global_12
  loc_AE70EB: CStrUI1
  loc_AE70ED: FStStrNoPop var_B4
  loc_AE70F0: ConcatStr
  loc_AE70F1: FStStrNoPop var_B8
  loc_AE70F4: LitStr """ align=""left"">"
  loc_AE70F7: ConcatStr
  loc_AE70F8: FStStrNoPop var_BC
  loc_AE70FB: FLdPr Me
  loc_AE70FE: MemLdI2 global_104
  loc_AE7101: CI4UI1
  loc_AE7102: FLdPr Me
  loc_AE7105: MemLdStr global_100
  loc_AE7108: Ary1LdPr
  loc_AE7109: MemLdStr global_4
  loc_AE710C: ConcatStr
  loc_AE710D: FStStrNoPop var_C0
  loc_AE7110: LitStr "</td>"
  loc_AE7113: ConcatStr
  loc_AE7114: CVarStr var_D0
  loc_AE7117: PopAdLdVar
  loc_AE7118: FLdPr Me
  loc_AE711B: MemLdRfVar from_stack_1.htmFile
  loc_AE711E: LdPrVar
  loc_AE7120: LateMemCall
  loc_AE7126: FFreeStr var_B4 = "": var_B8 = "": var_BC = ""
  loc_AE7131: FFree1Var var_D0 = ""
  loc_AE7134: LitStr "  <td rowspan="""
  loc_AE7137: FLdPr Me
  loc_AE713A: MemLdI2 global_104
  loc_AE713D: CI4UI1
  loc_AE713E: FLdPr Me
  loc_AE7141: MemLdStr global_100
  loc_AE7144: Ary1LdPr
  loc_AE7145: MemLdI2 global_12
  loc_AE7148: CStrUI1
  loc_AE714A: FStStrNoPop var_B4
  loc_AE714D: ConcatStr
  loc_AE714E: FStStrNoPop var_B8
  loc_AE7151: LitStr """ align=""left"">"
  loc_AE7154: ConcatStr
  loc_AE7155: FStStrNoPop var_BC
  loc_AE7158: FLdPr Me
  loc_AE715B: MemLdI2 global_104
  loc_AE715E: CI4UI1
  loc_AE715F: FLdPr Me
  loc_AE7162: MemLdStr global_100
  loc_AE7165: Ary1LdPr
  loc_AE7166: MemLdStr global_0
  loc_AE7169: ConcatStr
  loc_AE716A: FStStrNoPop var_C0
  loc_AE716D: LitStr "</td>"
  loc_AE7170: ConcatStr
  loc_AE7171: CVarStr var_D0
  loc_AE7174: PopAdLdVar
  loc_AE7175: FLdPr Me
  loc_AE7178: MemLdRfVar from_stack_1.htmFile
  loc_AE717B: LdPrVar
  loc_AE717D: LateMemCall
  loc_AE7183: FFreeStr var_B4 = "": var_B8 = "": var_BC = ""
  loc_AE718E: FFree1Var var_D0 = ""
  loc_AE7191: LitI2_Byte 1
  loc_AE7193: FLdPr Me
  loc_AE7196: MemLdRfVar from_stack_1.global_108
  loc_AE7199: FLdPr Me
  loc_AE719C: MemLdI2 global_104
  loc_AE719F: CI4UI1
  loc_AE71A0: FLdPr Me
  loc_AE71A3: MemLdStr global_100
  loc_AE71A6: Ary1LdPr
  loc_AE71A7: MemLdStr global_8
  loc_AE71AA: LitI2_Byte 1
  loc_AE71AC: FnUBound
  loc_AE71AE: CI2I4
  loc_AE71AF: ForI2 var_D4
  loc_AE71B5: FLdPr Me
  loc_AE71B8: MemLdI2 global_108
  loc_AE71BB: LitI2_Byte 1
  loc_AE71BD: GtI2
  loc_AE71BE: BranchF loc_AE71D5
  loc_AE71C1: LitVarStr var_A0, "    <tr valign=""top"" class=""LineaDato"">"
  loc_AE71C6: PopAdLdVar
  loc_AE71C7: FLdPr Me
  loc_AE71CA: MemLdRfVar from_stack_1.htmFile
  loc_AE71CD: LdPrVar
  loc_AE71CF: LateMemCall
  loc_AE71D5: FLdPr Me
  loc_AE71D8: MemLdI2 global_108
  loc_AE71DB: CI4UI1
  loc_AE71DC: FLdPr Me
  loc_AE71DF: MemLdI2 global_104
  loc_AE71E2: CI4UI1
  loc_AE71E3: FLdPr Me
  loc_AE71E6: MemLdStr global_100
  loc_AE71E9: AryLock
  loc_AE71EC: Ary1LdPr
  loc_AE71ED: MemLdStr global_8
  loc_AE71F0: AryLock
  loc_AE71F3: Ary1LdRf
  loc_AE71F4: FStR4 var_E0
  loc_AE71F7: LitI4 0
  loc_AE71FC: LitI4 0
  loc_AE7201: LitI2_Byte 0
  loc_AE7203: LitStr "left"
  loc_AE7206: FMemLdR4 var_E0(0)
  loc_AE720B: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AE7210: CVarStr var_D0
  loc_AE7213: PopAdLdVar
  loc_AE7214: FLdPr Me
  loc_AE7217: MemLdRfVar from_stack_1.htmFile
  loc_AE721A: LdPrVar
  loc_AE721C: LateMemCall
  loc_AE7222: FFree1Var var_D0 = ""
  loc_AE7225: LitI4 0
  loc_AE722A: LitI4 0
  loc_AE722F: LitI2_Byte 0
  loc_AE7231: LitStr "left"
  loc_AE7234: FMemLdR4 var_E0(4)
  loc_AE7239: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AE723E: CVarStr var_D0
  loc_AE7241: PopAdLdVar
  loc_AE7242: FLdPr Me
  loc_AE7245: MemLdRfVar from_stack_1.htmFile
  loc_AE7248: LdPrVar
  loc_AE724A: LateMemCall
  loc_AE7250: FFree1Var var_D0 = ""
  loc_AE7253: LitVarStr var_110, "       <td nowrap align=""left"">"
  loc_AE7258: FMemLdRf 0
  loc_AE725D: CVarRef
  loc_AE7262: LitVarStr var_B0, "&nbsp;"
  loc_AE7267: FStVarCopyObj var_D0
  loc_AE726A: FLdRfVar var_D0
  loc_AE726D: FMemLdR4 var_E0(8)
  loc_AE7272: LitStr vbNullString
  loc_AE7275: EqStr
  loc_AE7277: CVarBoolI2 var_A0
  loc_AE727B: FLdRfVar var_100
  loc_AE727E: ImpAdCallFPR4  = IIf(, , )
  loc_AE7283: FLdRfVar var_100
  loc_AE7286: ConcatVar var_120
  loc_AE728A: LitVarStr var_130, "</td>"
  loc_AE728F: ConcatVar var_140
  loc_AE7293: PopAdLdVar
  loc_AE7294: FLdPr Me
  loc_AE7297: MemLdRfVar from_stack_1.htmFile
  loc_AE729A: LdPrVar
  loc_AE729C: LateMemCall
  loc_AE72A2: FFreeVar var_A0 = "": var_D0 = "": var_100 = "": var_120 = ""
  loc_AE72AF: LitI4 0
  loc_AE72B4: LitI4 0
  loc_AE72B9: LitI2_Byte 0
  loc_AE72BB: LitStr "right"
  loc_AE72BE: FMemLdR4 var_E0(12)
  loc_AE72C3: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AE72C8: CVarStr var_D0
  loc_AE72CB: PopAdLdVar
  loc_AE72CC: FLdPr Me
  loc_AE72CF: MemLdRfVar from_stack_1.htmFile
  loc_AE72D2: LdPrVar
  loc_AE72D4: LateMemCall
  loc_AE72DA: FFree1Var var_D0 = ""
  loc_AE72DD: LitI4 0
  loc_AE72E2: LitI4 0
  loc_AE72E7: LitI2_Byte 0
  loc_AE72E9: LitStr "right"
  loc_AE72EC: FMemLdR4 var_E0(16)
  loc_AE72F1: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AE72F6: CVarStr var_D0
  loc_AE72F9: PopAdLdVar
  loc_AE72FA: FLdPr Me
  loc_AE72FD: MemLdRfVar from_stack_1.htmFile
  loc_AE7300: LdPrVar
  loc_AE7302: LateMemCall
  loc_AE7308: FFree1Var var_D0 = ""
  loc_AE730B: LitI4 0
  loc_AE7310: FStR4 var_E0
  loc_AE7313: AryUnlock
  loc_AE7316: AryUnlock
  loc_AE7319: FLdPr Me
  loc_AE731C: MemLdI2 global_108
  loc_AE731F: LitI2_Byte 1
  loc_AE7321: EqI2
  loc_AE7322: BranchF loc_AE7382
  loc_AE7325: LitStr "  <td rowspan="""
  loc_AE7328: FLdPr Me
  loc_AE732B: MemLdI2 global_104
  loc_AE732E: CI4UI1
  loc_AE732F: FLdPr Me
  loc_AE7332: MemLdStr global_100
  loc_AE7335: Ary1LdPr
  loc_AE7336: MemLdI2 global_12
  loc_AE7339: CStrUI1
  loc_AE733B: FStStrNoPop var_B4
  loc_AE733E: ConcatStr
  loc_AE733F: FStStrNoPop var_B8
  loc_AE7342: LitStr """ align=""right"" class=""Totales"">"
  loc_AE7345: ConcatStr
  loc_AE7346: FStStrNoPop var_BC
  loc_AE7349: FLdPr Me
  loc_AE734C: MemLdI2 global_104
  loc_AE734F: CI4UI1
  loc_AE7350: FLdPr Me
  loc_AE7353: MemLdStr global_100
  loc_AE7356: Ary1LdPr
  loc_AE7357: MemLdStr global_16
  loc_AE735A: ConcatStr
  loc_AE735B: FStStrNoPop var_C0
  loc_AE735E: LitStr "</td>"
  loc_AE7361: ConcatStr
  loc_AE7362: CVarStr var_D0
  loc_AE7365: PopAdLdVar
  loc_AE7366: FLdPr Me
  loc_AE7369: MemLdRfVar from_stack_1.htmFile
  loc_AE736C: LdPrVar
  loc_AE736E: LateMemCall
  loc_AE7374: FFreeStr var_B4 = "": var_B8 = "": var_BC = ""
  loc_AE737F: FFree1Var var_D0 = ""
  loc_AE7382: LitVarStr var_A0, "     </tr>"
  loc_AE7387: PopAdLdVar
  loc_AE7388: FLdPr Me
  loc_AE738B: MemLdRfVar from_stack_1.htmFile
  loc_AE738E: LdPrVar
  loc_AE7390: LateMemCall
  loc_AE7396: FLdPr Me
  loc_AE7399: MemLdRfVar from_stack_1.global_108
  loc_AE739C: NextI2 var_D4, loc_AE71B5
  loc_AE73A1: FLdPr Me
  loc_AE73A4: MemLdRfVar from_stack_1.global_104
  loc_AE73A7: NextI2 var_8E, loc_AE70C3
  loc_AE73AC: LitVarStr var_A0, "    <tr valign=""top"" class=""LineaDato"">"
  loc_AE73B1: PopAdLdVar
  loc_AE73B2: FLdPr Me
  loc_AE73B5: MemLdRfVar from_stack_1.htmFile
  loc_AE73B8: LdPrVar
  loc_AE73BA: LateMemCall
  loc_AE73C0: LitVarStr var_A0, "    <td colspan=""7"" align=""right"" class=""Normal"">TOTAL DEUDA EXIGIBLE</td>"
  loc_AE73C5: PopAdLdVar
  loc_AE73C6: FLdPr Me
  loc_AE73C9: MemLdRfVar from_stack_1.htmFile
  loc_AE73CC: LdPrVar
  loc_AE73CE: LateMemCall
  loc_AE73D4: LitStr "    <td align=""right"" class=""Totales"">"
  loc_AE73D7: FLdPr Me
  loc_AE73DA: MemLdStr global_112
  loc_AE73DD: ConcatStr
  loc_AE73DE: FStStrNoPop var_B4
  loc_AE73E1: LitStr "</th>"
  loc_AE73E4: ConcatStr
  loc_AE73E5: CVarStr var_D0
  loc_AE73E8: PopAdLdVar
  loc_AE73E9: FLdPr Me
  loc_AE73EC: MemLdRfVar from_stack_1.htmFile
  loc_AE73EF: LdPrVar
  loc_AE73F1: LateMemCall
  loc_AE73F7: FFree1Str var_B4
  loc_AE73FA: FFree1Var var_D0 = ""
  loc_AE73FD: LitVarStr var_A0, "     </tr>"
  loc_AE7402: PopAdLdVar
  loc_AE7403: FLdPr Me
  loc_AE7406: MemLdRfVar from_stack_1.htmFile
  loc_AE7409: LdPrVar
  loc_AE740B: LateMemCall
  loc_AE7411: Branch loc_AE7732
  loc_AE7414: LitI2_Byte 1
  loc_AE7416: FLdPr Me
  loc_AE7419: MemLdRfVar from_stack_1.global_104
  loc_AE741C: FLdPr Me
  loc_AE741F: MemLdStr global_100
  loc_AE7422: LitI2_Byte 1
  loc_AE7424: FnUBound
  loc_AE7426: CI2I4
  loc_AE7427: ForI2 var_154
  loc_AE742D: LitVarStr var_A0, "    <tr valign=""top"" class=""LineaDato"">"
  loc_AE7432: PopAdLdVar
  loc_AE7433: FLdPr Me
  loc_AE7436: MemLdRfVar from_stack_1.htmFile
  loc_AE7439: LdPrVar
  loc_AE743B: LateMemCall
  loc_AE7441: LitStr "  <td rowspan="""
  loc_AE7444: FLdPr Me
  loc_AE7447: MemLdI2 global_104
  loc_AE744A: CI4UI1
  loc_AE744B: FLdPr Me
  loc_AE744E: MemLdStr global_100
  loc_AE7451: Ary1LdPr
  loc_AE7452: MemLdI2 global_12
  loc_AE7455: CStrUI1
  loc_AE7457: FStStrNoPop var_B4
  loc_AE745A: ConcatStr
  loc_AE745B: FStStrNoPop var_B8
  loc_AE745E: LitStr """ align=""left"">"
  loc_AE7461: ConcatStr
  loc_AE7462: FStStrNoPop var_BC
  loc_AE7465: FLdPr Me
  loc_AE7468: MemLdI2 global_104
  loc_AE746B: CI4UI1
  loc_AE746C: FLdPr Me
  loc_AE746F: MemLdStr global_100
  loc_AE7472: Ary1LdPr
  loc_AE7473: MemLdStr global_4
  loc_AE7476: ConcatStr
  loc_AE7477: FStStrNoPop var_C0
  loc_AE747A: LitStr "</td>"
  loc_AE747D: ConcatStr
  loc_AE747E: CVarStr var_D0
  loc_AE7481: PopAdLdVar
  loc_AE7482: FLdPr Me
  loc_AE7485: MemLdRfVar from_stack_1.htmFile
  loc_AE7488: LdPrVar
  loc_AE748A: LateMemCall
  loc_AE7490: FFreeStr var_B4 = "": var_B8 = "": var_BC = ""
  loc_AE749B: FFree1Var var_D0 = ""
  loc_AE749E: LitStr "  <td rowspan="""
  loc_AE74A1: FLdPr Me
  loc_AE74A4: MemLdI2 global_104
  loc_AE74A7: CI4UI1
  loc_AE74A8: FLdPr Me
  loc_AE74AB: MemLdStr global_100
  loc_AE74AE: Ary1LdPr
  loc_AE74AF: MemLdI2 global_12
  loc_AE74B2: CStrUI1
  loc_AE74B4: FStStrNoPop var_B4
  loc_AE74B7: ConcatStr
  loc_AE74B8: FStStrNoPop var_B8
  loc_AE74BB: LitStr """ align=""left"">"
  loc_AE74BE: ConcatStr
  loc_AE74BF: FStStrNoPop var_BC
  loc_AE74C2: FLdPr Me
  loc_AE74C5: MemLdI2 global_104
  loc_AE74C8: CI4UI1
  loc_AE74C9: FLdPr Me
  loc_AE74CC: MemLdStr global_100
  loc_AE74CF: Ary1LdPr
  loc_AE74D0: MemLdStr global_0
  loc_AE74D3: ConcatStr
  loc_AE74D4: FStStrNoPop var_C0
  loc_AE74D7: LitStr "</td>"
  loc_AE74DA: ConcatStr
  loc_AE74DB: CVarStr var_D0
  loc_AE74DE: PopAdLdVar
  loc_AE74DF: FLdPr Me
  loc_AE74E2: MemLdRfVar from_stack_1.htmFile
  loc_AE74E5: LdPrVar
  loc_AE74E7: LateMemCall
  loc_AE74ED: FFreeStr var_B4 = "": var_B8 = "": var_BC = ""
  loc_AE74F8: FFree1Var var_D0 = ""
  loc_AE74FB: LitI2_Byte 1
  loc_AE74FD: FLdPr Me
  loc_AE7500: MemLdRfVar from_stack_1.global_108
  loc_AE7503: FLdPr Me
  loc_AE7506: MemLdI2 global_104
  loc_AE7509: CI4UI1
  loc_AE750A: FLdPr Me
  loc_AE750D: MemLdStr global_100
  loc_AE7510: Ary1LdPr
  loc_AE7511: MemLdStr global_8
  loc_AE7514: LitI2_Byte 1
  loc_AE7516: FnUBound
  loc_AE7518: CI2I4
  loc_AE7519: ForI2 var_158
  loc_AE751F: FLdPr Me
  loc_AE7522: MemLdI2 global_108
  loc_AE7525: LitI2_Byte 1
  loc_AE7527: GtI2
  loc_AE7528: BranchF loc_AE753F
  loc_AE752B: LitVarStr var_A0, "    <tr valign=""top"" class=""LineaDato"">"
  loc_AE7530: PopAdLdVar
  loc_AE7531: FLdPr Me
  loc_AE7534: MemLdRfVar from_stack_1.htmFile
  loc_AE7537: LdPrVar
  loc_AE7539: LateMemCall
  loc_AE753F: FLdPr Me
  loc_AE7542: MemLdI2 global_108
  loc_AE7545: CI4UI1
  loc_AE7546: FLdPr Me
  loc_AE7549: MemLdI2 global_104
  loc_AE754C: CI4UI1
  loc_AE754D: FLdPr Me
  loc_AE7550: MemLdStr global_100
  loc_AE7553: AryLock
  loc_AE7556: Ary1LdPr
  loc_AE7557: MemLdStr global_8
  loc_AE755A: AryLock
  loc_AE755D: Ary1LdRf
  loc_AE755E: FStR4 var_164
  loc_AE7561: LitI4 0
  loc_AE7566: LitI4 0
  loc_AE756B: LitI2_Byte 0
  loc_AE756D: LitStr "left"
  loc_AE7570: FMemLdR4 var_164(0)
  loc_AE7575: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AE757A: CVarStr var_D0
  loc_AE757D: PopAdLdVar
  loc_AE757E: FLdPr Me
  loc_AE7581: MemLdRfVar from_stack_1.htmFile
  loc_AE7584: LdPrVar
  loc_AE7586: LateMemCall
  loc_AE758C: FFree1Var var_D0 = ""
  loc_AE758F: LitI4 0
  loc_AE7594: LitI4 0
  loc_AE7599: LitI2_Byte 0
  loc_AE759B: LitStr "left"
  loc_AE759E: FMemLdR4 var_164(4)
  loc_AE75A3: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AE75A8: CVarStr var_D0
  loc_AE75AB: PopAdLdVar
  loc_AE75AC: FLdPr Me
  loc_AE75AF: MemLdRfVar from_stack_1.htmFile
  loc_AE75B2: LdPrVar
  loc_AE75B4: LateMemCall
  loc_AE75BA: FFree1Var var_D0 = ""
  loc_AE75BD: LitStr "       <td nowrap align=""left"">"
  loc_AE75C0: FMemLdR4 var_164(8)
  loc_AE75C5: ConcatStr
  loc_AE75C6: FStStrNoPop var_B4
  loc_AE75C9: LitStr "</td>"
  loc_AE75CC: ConcatStr
  loc_AE75CD: CVarStr var_D0
  loc_AE75D0: PopAdLdVar
  loc_AE75D1: FLdPr Me
  loc_AE75D4: MemLdRfVar from_stack_1.htmFile
  loc_AE75D7: LdPrVar
  loc_AE75D9: LateMemCall
  loc_AE75DF: FFree1Str var_B4
  loc_AE75E2: FFree1Var var_D0 = ""
  loc_AE75E5: LitI4 0
  loc_AE75EA: LitI4 0
  loc_AE75EF: LitI2_Byte 0
  loc_AE75F1: LitStr "right"
  loc_AE75F4: LitStr "0"
  loc_AE75F7: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AE75FC: CVarStr var_D0
  loc_AE75FF: PopAdLdVar
  loc_AE7600: FLdPr Me
  loc_AE7603: MemLdRfVar from_stack_1.htmFile
  loc_AE7606: LdPrVar
  loc_AE7608: LateMemCall
  loc_AE760E: FFree1Var var_D0 = ""
  loc_AE7611: LitI4 0
  loc_AE7616: LitI4 0
  loc_AE761B: LitI2_Byte 0
  loc_AE761D: LitStr "right"
  loc_AE7620: LitStr "0"
  loc_AE7623: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AE7628: CVarStr var_D0
  loc_AE762B: PopAdLdVar
  loc_AE762C: FLdPr Me
  loc_AE762F: MemLdRfVar from_stack_1.htmFile
  loc_AE7632: LdPrVar
  loc_AE7634: LateMemCall
  loc_AE763A: FFree1Var var_D0 = ""
  loc_AE763D: LitI4 0
  loc_AE7642: FStR4 var_164
  loc_AE7645: AryUnlock
  loc_AE7648: AryUnlock
  loc_AE764B: FLdPr Me
  loc_AE764E: MemLdI2 global_108
  loc_AE7651: LitI2_Byte 1
  loc_AE7653: EqI2
  loc_AE7654: BranchF loc_AE76A6
  loc_AE7657: LitStr "  <td rowspan="""
  loc_AE765A: FLdPr Me
  loc_AE765D: MemLdI2 global_104
  loc_AE7660: CI4UI1
  loc_AE7661: FLdPr Me
  loc_AE7664: MemLdStr global_100
  loc_AE7667: Ary1LdPr
  loc_AE7668: MemLdI2 global_12
  loc_AE766B: CStrUI1
  loc_AE766D: FStStrNoPop var_B4
  loc_AE7670: ConcatStr
  loc_AE7671: FStStrNoPop var_B8
  loc_AE7674: LitStr """ align=""right"" class=""Totales"">"
  loc_AE7677: ConcatStr
  loc_AE7678: FStStrNoPop var_BC
  loc_AE767B: LitStr "0"
  loc_AE767E: ConcatStr
  loc_AE767F: FStStrNoPop var_C0
  loc_AE7682: LitStr "</td>"
  loc_AE7685: ConcatStr
  loc_AE7686: CVarStr var_D0
  loc_AE7689: PopAdLdVar
  loc_AE768A: FLdPr Me
  loc_AE768D: MemLdRfVar from_stack_1.htmFile
  loc_AE7690: LdPrVar
  loc_AE7692: LateMemCall
  loc_AE7698: FFreeStr var_B4 = "": var_B8 = "": var_BC = ""
  loc_AE76A3: FFree1Var var_D0 = ""
  loc_AE76A6: LitVarStr var_A0, "     </tr>"
  loc_AE76AB: PopAdLdVar
  loc_AE76AC: FLdPr Me
  loc_AE76AF: MemLdRfVar from_stack_1.htmFile
  loc_AE76B2: LdPrVar
  loc_AE76B4: LateMemCall
  loc_AE76BA: FLdPr Me
  loc_AE76BD: MemLdRfVar from_stack_1.global_108
  loc_AE76C0: NextI2 var_158, loc_AE751F
  loc_AE76C5: FLdPr Me
  loc_AE76C8: MemLdRfVar from_stack_1.global_104
  loc_AE76CB: NextI2 var_154, loc_AE742D
  loc_AE76D0: LitVarStr var_A0, "    <tr valign=""top"" class=""LineaDato"">"
  loc_AE76D5: PopAdLdVar
  loc_AE76D6: FLdPr Me
  loc_AE76D9: MemLdRfVar from_stack_1.htmFile
  loc_AE76DC: LdPrVar
  loc_AE76DE: LateMemCall
  loc_AE76E4: LitVarStr var_A0, "    <td colspan=""7"" align=""right"" class=""Normal"">TOTAL DEUDA EXIGIBLE</td>"
  loc_AE76E9: PopAdLdVar
  loc_AE76EA: FLdPr Me
  loc_AE76ED: MemLdRfVar from_stack_1.htmFile
  loc_AE76F0: LdPrVar
  loc_AE76F2: LateMemCall
  loc_AE76F8: LitStr "    <td align=""right"" class=""Totales"">"
  loc_AE76FB: LitStr "0"
  loc_AE76FE: ConcatStr
  loc_AE76FF: FStStrNoPop var_B4
  loc_AE7702: LitStr "</th>"
  loc_AE7705: ConcatStr
  loc_AE7706: CVarStr var_D0
  loc_AE7709: PopAdLdVar
  loc_AE770A: FLdPr Me
  loc_AE770D: MemLdRfVar from_stack_1.htmFile
  loc_AE7710: LdPrVar
  loc_AE7712: LateMemCall
  loc_AE7718: FFree1Str var_B4
  loc_AE771B: FFree1Var var_D0 = ""
  loc_AE771E: LitVarStr var_A0, "     </tr>"
  loc_AE7723: PopAdLdVar
  loc_AE7724: FLdPr Me
  loc_AE7727: MemLdRfVar from_stack_1.htmFile
  loc_AE772A: LdPrVar
  loc_AE772C: LateMemCall
  loc_AE7732: Call Proc_181_38_982310()
  loc_AE7737: FLdPr Me
  loc_AE773A: MemLdRfVar from_stack_1.htmFile
  loc_AE773D: LdPrVar
  loc_AE773F: LateMemCall
  loc_AE7745: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_AE774A: ExitProcHresult
End Sub

Private Function Proc_181_35_9DFDD4() '9DFDD4
  'Data Table: 4B6E38
  loc_9DFCCC: FLdPr Me
  loc_9DFCCF: MemLdI2 global_104
  loc_9DFCD2: LitI2_Byte 1
  loc_9DFCD4: AddI2
  loc_9DFCD5: FLdPr Me
  loc_9DFCD8: MemStI2 global_104
  loc_9DFCDB: LitI2_Byte 0
  loc_9DFCDD: FLdPr Me
  loc_9DFCE0: MemStI2 global_108
  loc_9DFCE3: LitI4 0
  loc_9DFCE8: FLdPr Me
  loc_9DFCEB: MemLdI2 global_104
  loc_9DFCEE: CI4UI1
  loc_9DFCEF: FLdPr Me
  loc_9DFCF2: MemLdRfVar from_stack_1.global_100
  loc_9DFCF5: RedimPreserve
  loc_9DFCFF: FLdRfVar var_A0
  loc_9DFD02: LitVarStr var_9C, "CucuPers"
  loc_9DFD07: PopAdLdVar
  loc_9DFD08: FLdRfVar var_8C
  loc_9DFD0B: FLdRfVar var_88
  loc_9DFD0E: FLdPr Me
  loc_9DFD11: MemLdRfVar from_stack_1.global_76
  loc_9DFD14: NewIfNullPr clsbase
  loc_9DFD17: from_stack_1v = clsbase.RsFrmGet()
  loc_9DFD1C: FLdPr var_88
  loc_9DFD1F:  = Me.Fields
  loc_9DFD24: FLdPr var_8C
  loc_9DFD27: from_stack_2 = Me.Item(from_stack_1)
  loc_9DFD2C: LitI2_Byte 0
  loc_9DFD2E: LitVar_Missing var_D4
  loc_9DFD31: LitI2_Byte 0
  loc_9DFD33: FLdZeroAd var_A0
  loc_9DFD36: CVarAd
  loc_9DFD3A: PopAdLdVar
  loc_9DFD3B: FLdPr Me
  loc_9DFD3E: MemLdI2 global_104
  loc_9DFD41: CI4UI1
  loc_9DFD42: FLdPr Me
  loc_9DFD45: MemLdStr global_100
  loc_9DFD48: AryLock
  loc_9DFD4B: Ary1LdPr
  loc_9DFD4C: MemLdRfVar from_stack_1.global_0
  loc_9DFD4F: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_9DFD54: AryUnlock
  loc_9DFD57: FFreeAd var_88 = ""
  loc_9DFD5E: FFreeVar var_B4 = ""
  loc_9DFD65: FLdRfVar var_A0
  loc_9DFD68: LitVarStr var_9C, "DetaProv"
  loc_9DFD6D: PopAdLdVar
  loc_9DFD6E: FLdRfVar var_8C
  loc_9DFD71: FLdRfVar var_88
  loc_9DFD74: FLdPr Me
  loc_9DFD77: MemLdRfVar from_stack_1.global_76
  loc_9DFD7A: NewIfNullPr clsbase
  loc_9DFD7D: from_stack_1v = clsbase.RsFrmGet()
  loc_9DFD82: FLdPr var_88
  loc_9DFD85:  = Me.Fields
  loc_9DFD8A: FLdPr var_8C
  loc_9DFD8D: from_stack_2 = Me.Item(from_stack_1)
  loc_9DFD92: LitI2_Byte 0
  loc_9DFD94: LitVar_Missing var_D4
  loc_9DFD97: LitI2_Byte 0
  loc_9DFD99: FLdZeroAd var_A0
  loc_9DFD9C: CVarAd
  loc_9DFDA0: PopAdLdVar
  loc_9DFDA1: FLdPr Me
  loc_9DFDA4: MemLdI2 global_104
  loc_9DFDA7: CI4UI1
  loc_9DFDA8: FLdPr Me
  loc_9DFDAB: MemLdStr global_100
  loc_9DFDAE: AryLock
  loc_9DFDB1: Ary1LdPr
  loc_9DFDB2: MemLdRfVar from_stack_1.global_4
  loc_9DFDB5: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_9DFDBA: AryUnlock
  loc_9DFDBD: FFreeAd var_88 = ""
  loc_9DFDC4: FFreeVar var_B4 = ""
  loc_9DFDCB: Call Proc_181_36_A6F95C()
  loc_9DFDD0: ExitProcHresult
  loc_9DFDD1: UMiI2
  loc_9DFDD2: Ary1StCy
End Function

Private Function Proc_181_36_A6F95C() 'A6F95C
  'Data Table: 4B6E38
  loc_A6F5B8: FLdPr Me
  loc_A6F5BB: MemLdI2 global_108
  loc_A6F5BE: LitI2_Byte 1
  loc_A6F5C0: AddI2
  loc_A6F5C1: FLdPr Me
  loc_A6F5C4: MemStI2 global_108
  loc_A6F5C7: LitI4 0
  loc_A6F5CC: FLdPr Me
  loc_A6F5CF: MemLdI2 global_108
  loc_A6F5D2: CI4UI1
  loc_A6F5D3: FLdPr Me
  loc_A6F5D6: MemLdI2 global_104
  loc_A6F5D9: CI4UI1
  loc_A6F5DA: FLdPr Me
  loc_A6F5DD: MemLdStr global_100
  loc_A6F5E0: Ary1LdPr
  loc_A6F5E1: MemLdRfVar from_stack_1.global_8
  loc_A6F5E4: RedimPreserve
  loc_A6F5EE: FLdRfVar var_A0
  loc_A6F5F1: LitVarStr var_9C, "ExpeImpu"
  loc_A6F5F6: PopAdLdVar
  loc_A6F5F7: FLdRfVar var_8C
  loc_A6F5FA: FLdRfVar var_88
  loc_A6F5FD: FLdPr Me
  loc_A6F600: MemLdRfVar from_stack_1.global_76
  loc_A6F603: NewIfNullPr clsbase
  loc_A6F606: from_stack_1v = clsbase.RsFrmGet()
  loc_A6F60B: FLdPr var_88
  loc_A6F60E:  = Me.Fields
  loc_A6F613: FLdPr var_8C
  loc_A6F616: from_stack_2 = Me.Item(from_stack_1)
  loc_A6F61B: LitI2_Byte 0
  loc_A6F61D: LitVar_Missing var_D8
  loc_A6F620: LitI2_Byte 0
  loc_A6F622: FLdZeroAd var_A0
  loc_A6F625: CVarAd
  loc_A6F629: PopAdLdVar
  loc_A6F62A: FLdPr Me
  loc_A6F62D: MemLdI2 global_108
  loc_A6F630: CI4UI1
  loc_A6F631: FLdPr Me
  loc_A6F634: MemLdI2 global_104
  loc_A6F637: CI4UI1
  loc_A6F638: FLdPr Me
  loc_A6F63B: MemLdStr global_100
  loc_A6F63E: AryLock
  loc_A6F641: Ary1LdPr
  loc_A6F642: MemLdStr global_8
  loc_A6F645: AryLock
  loc_A6F648: Ary1LdPr
  loc_A6F649: MemLdRfVar from_stack_1.global_0
  loc_A6F64C: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A6F651: AryUnlock
  loc_A6F654: AryUnlock
  loc_A6F657: FFreeAd var_88 = ""
  loc_A6F65E: FFreeVar var_B8 = ""
  loc_A6F665: FLdRfVar var_A0
  loc_A6F668: LitVarStr var_9C, "NumeOrpa"
  loc_A6F66D: PopAdLdVar
  loc_A6F66E: FLdRfVar var_8C
  loc_A6F671: FLdRfVar var_88
  loc_A6F674: FLdPr Me
  loc_A6F677: MemLdRfVar from_stack_1.global_76
  loc_A6F67A: NewIfNullPr clsbase
  loc_A6F67D: from_stack_1v = clsbase.RsFrmGet()
  loc_A6F682: FLdPr var_88
  loc_A6F685:  = Me.Fields
  loc_A6F68A: FLdPr var_8C
  loc_A6F68D: from_stack_2 = Me.Item(from_stack_1)
  loc_A6F692: LitI2_Byte 0
  loc_A6F694: LitVar_Missing var_D8
  loc_A6F697: LitI2_Byte 0
  loc_A6F699: FLdZeroAd var_A0
  loc_A6F69C: CVarAd
  loc_A6F6A0: PopAdLdVar
  loc_A6F6A1: FLdPr Me
  loc_A6F6A4: MemLdI2 global_108
  loc_A6F6A7: CI4UI1
  loc_A6F6A8: FLdPr Me
  loc_A6F6AB: MemLdI2 global_104
  loc_A6F6AE: CI4UI1
  loc_A6F6AF: FLdPr Me
  loc_A6F6B2: MemLdStr global_100
  loc_A6F6B5: AryLock
  loc_A6F6B8: Ary1LdPr
  loc_A6F6B9: MemLdStr global_8
  loc_A6F6BC: AryLock
  loc_A6F6BF: Ary1LdPr
  loc_A6F6C0: MemLdRfVar from_stack_1.global_4
  loc_A6F6C3: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A6F6C8: AryUnlock
  loc_A6F6CB: AryUnlock
  loc_A6F6CE: FFreeAd var_88 = ""
  loc_A6F6D5: FFreeVar var_B8 = ""
  loc_A6F6DC: FLdRfVar var_A0
  loc_A6F6DF: LitVarStr var_9C, "NumeFact"
  loc_A6F6E4: PopAdLdVar
  loc_A6F6E5: FLdRfVar var_8C
  loc_A6F6E8: FLdRfVar var_88
  loc_A6F6EB: FLdPr Me
  loc_A6F6EE: MemLdRfVar from_stack_1.global_76
  loc_A6F6F1: NewIfNullPr clsbase
  loc_A6F6F4: from_stack_1v = clsbase.RsFrmGet()
  loc_A6F6F9: FLdPr var_88
  loc_A6F6FC:  = Me.Fields
  loc_A6F701: FLdPr var_8C
  loc_A6F704: from_stack_2 = Me.Item(from_stack_1)
  loc_A6F709: LitI2_Byte 0
  loc_A6F70B: LitVar_Missing var_D8
  loc_A6F70E: LitI2_Byte 0
  loc_A6F710: FLdZeroAd var_A0
  loc_A6F713: CVarAd
  loc_A6F717: PopAdLdVar
  loc_A6F718: FLdPr Me
  loc_A6F71B: MemLdI2 global_108
  loc_A6F71E: CI4UI1
  loc_A6F71F: FLdPr Me
  loc_A6F722: MemLdI2 global_104
  loc_A6F725: CI4UI1
  loc_A6F726: FLdPr Me
  loc_A6F729: MemLdStr global_100
  loc_A6F72C: AryLock
  loc_A6F72F: Ary1LdPr
  loc_A6F730: MemLdStr global_8
  loc_A6F733: AryLock
  loc_A6F736: Ary1LdPr
  loc_A6F737: MemLdRfVar from_stack_1.global_8
  loc_A6F73A: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A6F73F: AryUnlock
  loc_A6F742: AryUnlock
  loc_A6F745: FFreeAd var_88 = ""
  loc_A6F74C: FFreeVar var_B8 = ""
  loc_A6F753: FLdRfVar var_A0
  loc_A6F756: LitVarStr var_9C, "MapaImpu"
  loc_A6F75B: PopAdLdVar
  loc_A6F75C: FLdRfVar var_8C
  loc_A6F75F: FLdRfVar var_88
  loc_A6F762: FLdPr Me
  loc_A6F765: MemLdRfVar from_stack_1.global_76
  loc_A6F768: NewIfNullPr clsbase
  loc_A6F76B: from_stack_1v = clsbase.RsFrmGet()
  loc_A6F770: FLdPr var_88
  loc_A6F773:  = Me.Fields
  loc_A6F778: FLdPr var_8C
  loc_A6F77B: from_stack_2 = Me.Item(from_stack_1)
  loc_A6F780: LitI2_Byte 0
  loc_A6F782: LitVar_Missing var_D8
  loc_A6F785: LitI2_Byte &HFF
  loc_A6F787: FLdZeroAd var_A0
  loc_A6F78A: CVarAd
  loc_A6F78E: PopAdLdVar
  loc_A6F78F: FLdPr Me
  loc_A6F792: MemLdI2 global_108
  loc_A6F795: CI4UI1
  loc_A6F796: FLdPr Me
  loc_A6F799: MemLdI2 global_104
  loc_A6F79C: CI4UI1
  loc_A6F79D: FLdPr Me
  loc_A6F7A0: MemLdStr global_100
  loc_A6F7A3: AryLock
  loc_A6F7A6: Ary1LdPr
  loc_A6F7A7: MemLdStr global_8
  loc_A6F7AA: AryLock
  loc_A6F7AD: Ary1LdPr
  loc_A6F7AE: MemLdRfVar from_stack_1.global_12
  loc_A6F7B1: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A6F7B6: AryUnlock
  loc_A6F7B9: AryUnlock
  loc_A6F7BC: FFreeAd var_88 = ""
  loc_A6F7C3: FFreeVar var_B8 = ""
  loc_A6F7CA: FLdRfVar var_A0
  loc_A6F7CD: LitVarStr var_9C, "PagaImpu"
  loc_A6F7D2: PopAdLdVar
  loc_A6F7D3: FLdRfVar var_8C
  loc_A6F7D6: FLdRfVar var_88
  loc_A6F7D9: FLdPr Me
  loc_A6F7DC: MemLdRfVar from_stack_1.global_76
  loc_A6F7DF: NewIfNullPr clsbase
  loc_A6F7E2: from_stack_1v = clsbase.RsFrmGet()
  loc_A6F7E7: FLdPr var_88
  loc_A6F7EA:  = Me.Fields
  loc_A6F7EF: FLdPr var_8C
  loc_A6F7F2: from_stack_2 = Me.Item(from_stack_1)
  loc_A6F7F7: LitI2_Byte 0
  loc_A6F7F9: LitVar_Missing var_D8
  loc_A6F7FC: LitI2_Byte &HFF
  loc_A6F7FE: FLdZeroAd var_A0
  loc_A6F801: CVarAd
  loc_A6F805: PopAdLdVar
  loc_A6F806: FLdPr Me
  loc_A6F809: MemLdI2 global_108
  loc_A6F80C: CI4UI1
  loc_A6F80D: FLdPr Me
  loc_A6F810: MemLdI2 global_104
  loc_A6F813: CI4UI1
  loc_A6F814: FLdPr Me
  loc_A6F817: MemLdStr global_100
  loc_A6F81A: AryLock
  loc_A6F81D: Ary1LdPr
  loc_A6F81E: MemLdStr global_8
  loc_A6F821: AryLock
  loc_A6F824: Ary1LdPr
  loc_A6F825: MemLdRfVar from_stack_1.global_16
  loc_A6F828: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A6F82D: AryUnlock
  loc_A6F830: AryUnlock
  loc_A6F833: FFreeAd var_88 = ""
  loc_A6F83A: FFreeVar var_B8 = ""
  loc_A6F841: FLdRfVar var_A0
  loc_A6F844: LitVarStr var_9C, "DeexImpu"
  loc_A6F849: PopAdLdVar
  loc_A6F84A: FLdRfVar var_8C
  loc_A6F84D: FLdRfVar var_88
  loc_A6F850: FLdPr Me
  loc_A6F853: MemLdRfVar from_stack_1.global_76
  loc_A6F856: NewIfNullPr clsbase
  loc_A6F859: from_stack_1v = clsbase.RsFrmGet()
  loc_A6F85E: FLdPr var_88
  loc_A6F861:  = Me.Fields
  loc_A6F866: FLdPr var_8C
  loc_A6F869: from_stack_2 = Me.Item(from_stack_1)
  loc_A6F86E: LitI2_Byte 0
  loc_A6F870: FLdPr Me
  loc_A6F873: MemLdI2 global_104
  loc_A6F876: CI4UI1
  loc_A6F877: FLdPr Me
  loc_A6F87A: MemLdStr global_100
  loc_A6F87D: AryLock
  loc_A6F880: Ary1LdPr
  loc_A6F881: MemLdRfVar from_stack_1.global_16
  loc_A6F884: CVarRef
  loc_A6F889: LitI2_Byte &HFF
  loc_A6F88B: FLdZeroAd var_A0
  loc_A6F88E: CVarAd
  loc_A6F892: PopAdLdVar
  loc_A6F893: FLdPr Me
  loc_A6F896: MemLdI2 global_108
  loc_A6F899: CI4UI1
  loc_A6F89A: FLdPr Me
  loc_A6F89D: MemLdI2 global_104
  loc_A6F8A0: CI4UI1
  loc_A6F8A1: FLdPr Me
  loc_A6F8A4: MemLdStr global_100
  loc_A6F8A7: AryLock
  loc_A6F8AA: Ary1LdPr
  loc_A6F8AB: MemLdStr global_8
  loc_A6F8AE: AryLock
  loc_A6F8B1: Ary1LdPr
  loc_A6F8B2: MemLdRfVar from_stack_1.global_20
  loc_A6F8B5: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A6F8BA: AryUnlock
  loc_A6F8BD: AryUnlock
  loc_A6F8C0: AryUnlock
  loc_A6F8C3: FFreeAd var_88 = ""
  loc_A6F8CA: FFree1Var var_B8 = ""
  loc_A6F8CD: FLdRfVar var_A0
  loc_A6F8D0: LitVarStr var_9C, "LineaTxt"
  loc_A6F8D5: PopAdLdVar
  loc_A6F8D6: FLdRfVar var_8C
  loc_A6F8D9: FLdRfVar var_88
  loc_A6F8DC: FLdPr Me
  loc_A6F8DF: MemLdRfVar from_stack_1.global_76
  loc_A6F8E2: NewIfNullPr clsbase
  loc_A6F8E5: from_stack_1v = clsbase.RsFrmGet()
  loc_A6F8EA: FLdPr var_88
  loc_A6F8ED:  = Me.Fields
  loc_A6F8F2: FLdPr var_8C
  loc_A6F8F5: from_stack_2 = Me.Item(from_stack_1)
  loc_A6F8FA: LitI2_Byte 0
  loc_A6F8FC: LitVar_Missing var_D8
  loc_A6F8FF: LitI2_Byte 0
  loc_A6F901: FLdZeroAd var_A0
  loc_A6F904: CVarAd
  loc_A6F908: PopAdLdVar
  loc_A6F909: FLdPr Me
  loc_A6F90C: MemLdI2 global_108
  loc_A6F90F: CI4UI1
  loc_A6F910: FLdPr Me
  loc_A6F913: MemLdI2 global_104
  loc_A6F916: CI4UI1
  loc_A6F917: FLdPr Me
  loc_A6F91A: MemLdStr global_100
  loc_A6F91D: AryLock
  loc_A6F920: Ary1LdPr
  loc_A6F921: MemLdStr global_8
  loc_A6F924: AryLock
  loc_A6F927: Ary1LdPr
  loc_A6F928: MemLdRfVar from_stack_1.global_24
  loc_A6F92B: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A6F930: AryUnlock
  loc_A6F933: AryUnlock
  loc_A6F936: FFreeAd var_88 = ""
  loc_A6F93D: FFreeVar var_B8 = ""
  loc_A6F944: LitI4 1
  loc_A6F949: PopTmpLdAdStr var_E0
  loc_A6F94C: FLdPr Me
  loc_A6F94F: MemLdRfVar from_stack_1.global_76
  loc_A6F952: NewIfNullPr clsbase
  loc_A6F955: Call clsbase.Mover(from_stack_1v)
  loc_A6F95A: ExitProcHresult
End Function

Private Function Proc_181_37_AB0DCC() 'AB0DCC
  'Data Table: 4B6E38
  loc_AB086C: LitVarStr var_94, "<html>"
  loc_AB0871: PopAdLdVar
  loc_AB0872: FLdPr Me
  loc_AB0875: MemLdRfVar from_stack_1.htmFile
  loc_AB0878: LdPrVar
  loc_AB087A: LateMemCall
  loc_AB0880: LitVarStr var_94, "<head>"
  loc_AB0885: PopAdLdVar
  loc_AB0886: FLdPr Me
  loc_AB0889: MemLdRfVar from_stack_1.htmFile
  loc_AB088C: LdPrVar
  loc_AB088E: LateMemCall
  loc_AB0894: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_AB0899: PopAdLdVar
  loc_AB089A: FLdPr Me
  loc_AB089D: MemLdRfVar from_stack_1.htmFile
  loc_AB08A0: LdPrVar
  loc_AB08A2: LateMemCall
  loc_AB08A8: LitStr "<title>"
  loc_AB08AB: FLdRfVar var_A8
  loc_AB08AE: FLdPr Me
  loc_AB08B1:  = Me.Caption
  loc_AB08B6: ILdRf var_A8
  loc_AB08B9: ConcatStr
  loc_AB08BA: FStStrNoPop var_AC
  loc_AB08BD: LitStr "</title>"
  loc_AB08C0: ConcatStr
  loc_AB08C1: CVarStr var_BC
  loc_AB08C4: PopAdLdVar
  loc_AB08C5: FLdPr Me
  loc_AB08C8: MemLdRfVar from_stack_1.htmFile
  loc_AB08CB: LdPrVar
  loc_AB08CD: LateMemCall
  loc_AB08D3: FFreeStr var_A8 = ""
  loc_AB08DA: FFree1Var var_BC = ""
  loc_AB08DD: LitStr vbNullString
  loc_AB08E0: ILdRf Me
  loc_AB08E3: CastAd
  loc_AB08E6: FStAdFunc var_C0
  loc_AB08E9: FLdRfVar var_C0
  loc_AB08EC: ImpAdCallFPR4 Proc_263_23_B3DAB8(, )
  loc_AB08F1: FFree1Ad var_C0
  loc_AB08F4: LitI4 0
  loc_AB08F9: FStStrCopy var_AC
  loc_AB08FC: FLdRfVar var_AC
  loc_AB08FF: LitI4 0
  loc_AB0904: FStStrCopy var_A8
  loc_AB0907: FLdRfVar var_A8
  loc_AB090A: LitI2_Byte 0
  loc_AB090C: PopTmpLdAd2 var_C2
  loc_AB090F: FLdPr Me
  loc_AB0912: MemLdRfVar from_stack_1.htmFile
  loc_AB0915: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_AB091A: FFreeStr var_A8 = ""
  loc_AB0921: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_AB0926: PopAdLdVar
  loc_AB0927: FLdPr Me
  loc_AB092A: MemLdRfVar from_stack_1.htmFile
  loc_AB092D: LdPrVar
  loc_AB092F: LateMemCall
  loc_AB0935: LitVarStr var_94, "  <tr valign=""middle"">"
  loc_AB093A: PopAdLdVar
  loc_AB093B: FLdPr Me
  loc_AB093E: MemLdRfVar from_stack_1.htmFile
  loc_AB0941: LdPrVar
  loc_AB0943: LateMemCall
  loc_AB0949: LitVarStr var_94, "    <th colspan=""2"" width=""100" & Chr(37) & """ align=""center"" valign=""bottom""><p>"
  loc_AB094E: PopAdLdVar
  loc_AB094F: FLdPr Me
  loc_AB0952: MemLdRfVar from_stack_1.htmFile
  loc_AB0955: LdPrVar
  loc_AB0957: LateMemCall
  loc_AB095D: FLdPr Me
  loc_AB0960: MemLdI2 bLogos
  loc_AB0963: BranchF loc_AB097A
  loc_AB0966: LitVarStr var_94, "    <img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right"">"
  loc_AB096B: PopAdLdVar
  loc_AB096C: FLdPr Me
  loc_AB096F: MemLdRfVar from_stack_1.htmFile
  loc_AB0972: LdPrVar
  loc_AB0974: LateMemCall
  loc_AB097A: LitVarStr var_A4, "    <br>"
  loc_AB097F: LitVarStr var_94, "Municipalidad de Guaymallén"
  loc_AB0984: FStVarCopyObj var_BC
  loc_AB0987: FLdRfVar var_BC
  loc_AB098A: FLdRfVar var_D4
  loc_AB098D: ImpAdCallFPR4  = Ucase()
  loc_AB0992: FLdRfVar var_D4
  loc_AB0995: ConcatVar var_E4
  loc_AB0999: LitVarStr var_F4, "</p>"
  loc_AB099E: ConcatVar var_104
  loc_AB09A2: PopAdLdVar
  loc_AB09A3: FLdPr Me
  loc_AB09A6: MemLdRfVar from_stack_1.htmFile
  loc_AB09A9: LdPrVar
  loc_AB09AB: LateMemCall
  loc_AB09B1: FFreeVar var_BC = "": var_D4 = "": var_E4 = ""
  loc_AB09BC: LitStr "    <p>"
  loc_AB09BF: FLdRfVar var_A8
  loc_AB09C2: FLdPr Me
  loc_AB09C5:  = Me.Caption
  loc_AB09CA: ILdRf var_A8
  loc_AB09CD: ConcatStr
  loc_AB09CE: FStStrNoPop var_AC
  loc_AB09D1: LitStr "</p></th>"
  loc_AB09D4: ConcatStr
  loc_AB09D5: CVarStr var_BC
  loc_AB09D8: PopAdLdVar
  loc_AB09D9: FLdPr Me
  loc_AB09DC: MemLdRfVar from_stack_1.htmFile
  loc_AB09DF: LdPrVar
  loc_AB09E1: LateMemCall
  loc_AB09E7: FFreeStr var_A8 = ""
  loc_AB09EE: FFree1Var var_BC = ""
  loc_AB09F1: LitVarStr var_94, "  </tr>"
  loc_AB09F6: PopAdLdVar
  loc_AB09F7: FLdPr Me
  loc_AB09FA: MemLdRfVar from_stack_1.htmFile
  loc_AB09FD: LdPrVar
  loc_AB09FF: LateMemCall
  loc_AB0A05: LitVarStr var_94, "  <tr><th colspan=""2""><hr></th></tr>"
  loc_AB0A0A: PopAdLdVar
  loc_AB0A0B: FLdPr Me
  loc_AB0A0E: MemLdRfVar from_stack_1.htmFile
  loc_AB0A11: LdPrVar
  loc_AB0A13: LateMemCall
  loc_AB0A19: LitVarStr var_94, "  <tr valign=""top"">"
  loc_AB0A1E: PopAdLdVar
  loc_AB0A1F: FLdPr Me
  loc_AB0A22: MemLdRfVar from_stack_1.htmFile
  loc_AB0A25: LdPrVar
  loc_AB0A27: LateMemCall
  loc_AB0A2D: LitVarStr var_94, "    <th align=""left"">"
  loc_AB0A32: PopAdLdVar
  loc_AB0A33: FLdPr Me
  loc_AB0A36: MemLdRfVar from_stack_1.htmFile
  loc_AB0A39: LdPrVar
  loc_AB0A3B: LateMemCall
  loc_AB0A41: LitStr "     Periodo: <span class=""Normal"">"
  loc_AB0A44: FLdRfVar var_A8
  loc_AB0A47: FLdPr Me
  loc_AB0A4A: VCallAd Control_ID_cboPeriodo
  loc_AB0A4D: FStAdFunc var_C0
  loc_AB0A50: FLdPr var_C0
  loc_AB0A53:  = Me.Text
  loc_AB0A58: ILdRf var_A8
  loc_AB0A5B: ConcatStr
  loc_AB0A5C: FStStrNoPop var_AC
  loc_AB0A5F: LitStr "</span><br>"
  loc_AB0A62: ConcatStr
  loc_AB0A63: CVarStr var_BC
  loc_AB0A66: PopAdLdVar
  loc_AB0A67: FLdPr Me
  loc_AB0A6A: MemLdRfVar from_stack_1.htmFile
  loc_AB0A6D: LdPrVar
  loc_AB0A6F: LateMemCall
  loc_AB0A75: FFreeStr var_A8 = ""
  loc_AB0A7C: FFree1Ad var_C0
  loc_AB0A7F: FFree1Var var_BC = ""
  loc_AB0A82: FLdPr Me
  loc_AB0A85: VCallAd Control_ID_CucuPersMsk
  loc_AB0A88: FStAdFunc var_C0
  loc_AB0A8B: FLdPr var_C0
  loc_AB0A8E: LateIdLdVar var_BC DispID_22 0
  loc_AB0A95: CStrVarTmp
  loc_AB0A96: FStStrNoPop var_A8
  loc_AB0A99: LitStr vbNullString
  loc_AB0A9C: NeStr
  loc_AB0A9E: FFree1Str var_A8
  loc_AB0AA1: FFree1Ad var_C0
  loc_AB0AA4: FFree1Var var_BC = ""
  loc_AB0AA7: BranchF loc_AB0AEE
  loc_AB0AAA: LitStr "     Nombre de Proveedor: <span class=""Normal"">"
  loc_AB0AAD: FLdRfVar var_A8
  loc_AB0AB0: FLdPr Me
  loc_AB0AB3: VCallAd Control_ID_DetaProvLbl
  loc_AB0AB6: FStAdFunc var_C0
  loc_AB0AB9: FLdPr var_C0
  loc_AB0ABC:  = Me.Caption
  loc_AB0AC1: ILdRf var_A8
  loc_AB0AC4: ConcatStr
  loc_AB0AC5: FStStrNoPop var_AC
  loc_AB0AC8: LitStr "</span>"
  loc_AB0ACB: ConcatStr
  loc_AB0ACC: CVarStr var_BC
  loc_AB0ACF: PopAdLdVar
  loc_AB0AD0: FLdPr Me
  loc_AB0AD3: MemLdRfVar from_stack_1.htmFile
  loc_AB0AD6: LdPrVar
  loc_AB0AD8: LateMemCall
  loc_AB0ADE: FFreeStr var_A8 = ""
  loc_AB0AE5: FFree1Ad var_C0
  loc_AB0AE8: FFree1Var var_BC = ""
  loc_AB0AEB: Branch loc_AB0B02
  loc_AB0AEE: LitVarStr var_94, "     Nombre de Proveedor: <span class=""Normal"">TODOS</span>"
  loc_AB0AF3: PopAdLdVar
  loc_AB0AF4: FLdPr Me
  loc_AB0AF7: MemLdRfVar from_stack_1.htmFile
  loc_AB0AFA: LdPrVar
  loc_AB0AFC: LateMemCall
  loc_AB0B02: FLdRfVar var_A8
  loc_AB0B05: FLdPr Me
  loc_AB0B08: VCallAd Control_ID_ImporteTxt
  loc_AB0B0B: FStAdFunc var_C0
  loc_AB0B0E: FLdPr var_C0
  loc_AB0B11:  = Me.Text
  loc_AB0B16: ILdRf var_A8
  loc_AB0B19: LitStr vbNullString
  loc_AB0B1C: NeStr
  loc_AB0B1E: FFree1Str var_A8
  loc_AB0B21: FFree1Ad var_C0
  loc_AB0B24: BranchF loc_AB0B68
  loc_AB0B27: LitStr "     <br>Importes menores o iguales a: <span class=""Normal"">"
  loc_AB0B2A: FLdRfVar var_A8
  loc_AB0B2D: FLdPr Me
  loc_AB0B30: VCallAd Control_ID_ImporteTxt
  loc_AB0B33: FStAdFunc var_C0
  loc_AB0B36: FLdPr var_C0
  loc_AB0B39:  = Me.Text
  loc_AB0B3E: ILdRf var_A8
  loc_AB0B41: ConcatStr
  loc_AB0B42: FStStrNoPop var_AC
  loc_AB0B45: LitStr "</span>"
  loc_AB0B48: ConcatStr
  loc_AB0B49: CVarStr var_BC
  loc_AB0B4C: PopAdLdVar
  loc_AB0B4D: FLdPr Me
  loc_AB0B50: MemLdRfVar from_stack_1.htmFile
  loc_AB0B53: LdPrVar
  loc_AB0B55: LateMemCall
  loc_AB0B5B: FFreeStr var_A8 = ""
  loc_AB0B62: FFree1Ad var_C0
  loc_AB0B65: FFree1Var var_BC = ""
  loc_AB0B68: FLdRfVar var_C2
  loc_AB0B6B: FLdPr Me
  loc_AB0B6E: VCallAd Control_ID_chkExcluirPartidasExtra
  loc_AB0B71: FStAdFunc var_C0
  loc_AB0B74: FLdPr var_C0
  loc_AB0B77:  = Me.Value
  loc_AB0B7C: FLdI2 var_C2
  loc_AB0B7F: CI4UI1
  loc_AB0B80: LitI4 1
  loc_AB0B85: EqI4
  loc_AB0B86: FFree1Ad var_C0
  loc_AB0B89: BranchF loc_AB0BA0
  loc_AB0B8C: LitVarStr var_94, "      <br>Las Partidas Extrapresupuestarias NO se muestran"
  loc_AB0B91: PopAdLdVar
  loc_AB0B92: FLdPr Me
  loc_AB0B95: MemLdRfVar from_stack_1.htmFile
  loc_AB0B98: LdPrVar
  loc_AB0B9A: LateMemCall
  loc_AB0BA0: LitVarStr var_94, "    </th>"
  loc_AB0BA5: PopAdLdVar
  loc_AB0BA6: FLdPr Me
  loc_AB0BA9: MemLdRfVar from_stack_1.htmFile
  loc_AB0BAC: LdPrVar
  loc_AB0BAE: LateMemCall
  loc_AB0BB4: LitVarStr var_94, "    <th align=""right"">"
  loc_AB0BB9: PopAdLdVar
  loc_AB0BBA: FLdPr Me
  loc_AB0BBD: MemLdRfVar from_stack_1.htmFile
  loc_AB0BC0: LdPrVar
  loc_AB0BC2: LateMemCall
  loc_AB0BC8: LitStr "     Desde: <span class=""Normal"">"
  loc_AB0BCB: FLdPr Me
  loc_AB0BCE: VCallAd Control_ID_DesdeMsk
  loc_AB0BD1: FStAdFunc var_C0
  loc_AB0BD4: FLdPr var_C0
  loc_AB0BD7: LateIdLdVar var_BC DispID_15 0
  loc_AB0BDE: CStrVarTmp
  loc_AB0BDF: FStStrNoPop var_A8
  loc_AB0BE2: ConcatStr
  loc_AB0BE3: FStStrNoPop var_AC
  loc_AB0BE6: LitStr "</span><br>"
  loc_AB0BE9: ConcatStr
  loc_AB0BEA: CVarStr var_D4
  loc_AB0BED: PopAdLdVar
  loc_AB0BEE: FLdPr Me
  loc_AB0BF1: MemLdRfVar from_stack_1.htmFile
  loc_AB0BF4: LdPrVar
  loc_AB0BF6: LateMemCall
  loc_AB0BFC: FFreeStr var_A8 = ""
  loc_AB0C03: FFree1Ad var_C0
  loc_AB0C06: FFreeVar var_BC = ""
  loc_AB0C0D: LitStr "     Hasta: <span class=""Normal"">"
  loc_AB0C10: FLdPr Me
  loc_AB0C13: VCallAd Control_ID_HastaMsk
  loc_AB0C16: FStAdFunc var_C0
  loc_AB0C19: FLdPr var_C0
  loc_AB0C1C: LateIdLdVar var_BC DispID_15 0
  loc_AB0C23: CStrVarTmp
  loc_AB0C24: FStStrNoPop var_A8
  loc_AB0C27: ConcatStr
  loc_AB0C28: FStStrNoPop var_AC
  loc_AB0C2B: LitStr "</span>"
  loc_AB0C2E: ConcatStr
  loc_AB0C2F: CVarStr var_D4
  loc_AB0C32: PopAdLdVar
  loc_AB0C33: FLdPr Me
  loc_AB0C36: MemLdRfVar from_stack_1.htmFile
  loc_AB0C39: LdPrVar
  loc_AB0C3B: LateMemCall
  loc_AB0C41: FFreeStr var_A8 = ""
  loc_AB0C48: FFree1Ad var_C0
  loc_AB0C4B: FFreeVar var_BC = ""
  loc_AB0C52: FLdRfVar var_C2
  loc_AB0C55: FLdPr Me
  loc_AB0C58: VCallAd Control_ID_chkOcultarImporte
  loc_AB0C5B: FStAdFunc var_C0
  loc_AB0C5E: FLdPr var_C0
  loc_AB0C61:  = Me.Value
  loc_AB0C66: FLdI2 var_C2
  loc_AB0C69: CI4UI1
  loc_AB0C6A: LitI4 1
  loc_AB0C6F: EqI4
  loc_AB0C70: FFree1Ad var_C0
  loc_AB0C73: BranchF loc_AB0C8A
  loc_AB0C76: LitVarStr var_94, "     <br><span class=""Normal"">Los importes han sido ocultados...</span>"
  loc_AB0C7B: PopAdLdVar
  loc_AB0C7C: FLdPr Me
  loc_AB0C7F: MemLdRfVar from_stack_1.htmFile
  loc_AB0C82: LdPrVar
  loc_AB0C84: LateMemCall
  loc_AB0C8A: LitVarStr var_94, "    </th>"
  loc_AB0C8F: PopAdLdVar
  loc_AB0C90: FLdPr Me
  loc_AB0C93: MemLdRfVar from_stack_1.htmFile
  loc_AB0C96: LdPrVar
  loc_AB0C98: LateMemCall
  loc_AB0C9E: LitVarStr var_94, "  </tr>"
  loc_AB0CA3: PopAdLdVar
  loc_AB0CA4: FLdPr Me
  loc_AB0CA7: MemLdRfVar from_stack_1.htmFile
  loc_AB0CAA: LdPrVar
  loc_AB0CAC: LateMemCall
  loc_AB0CB2: LitVarStr var_94, "</table>"
  loc_AB0CB7: PopAdLdVar
  loc_AB0CB8: FLdPr Me
  loc_AB0CBB: MemLdRfVar from_stack_1.htmFile
  loc_AB0CBE: LdPrVar
  loc_AB0CC0: LateMemCall
  loc_AB0CC6: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_AB0CCB: PopAdLdVar
  loc_AB0CCC: FLdPr Me
  loc_AB0CCF: MemLdRfVar from_stack_1.htmFile
  loc_AB0CD2: LdPrVar
  loc_AB0CD4: LateMemCall
  loc_AB0CDA: LitVarStr var_94, "  <THEAD>"
  loc_AB0CDF: PopAdLdVar
  loc_AB0CE0: FLdPr Me
  loc_AB0CE3: MemLdRfVar from_stack_1.htmFile
  loc_AB0CE6: LdPrVar
  loc_AB0CE8: LateMemCall
  loc_AB0CEE: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_AB0CF3: PopAdLdVar
  loc_AB0CF4: FLdPr Me
  loc_AB0CF7: MemLdRfVar from_stack_1.htmFile
  loc_AB0CFA: LdPrVar
  loc_AB0CFC: LateMemCall
  loc_AB0D02: LitVarStr var_94, "    <th>Proveedor</th>"
  loc_AB0D07: PopAdLdVar
  loc_AB0D08: FLdPr Me
  loc_AB0D0B: MemLdRfVar from_stack_1.htmFile
  loc_AB0D0E: LdPrVar
  loc_AB0D10: LateMemCall
  loc_AB0D16: LitVarStr var_94, "    <th>Cuit-Cuil</th>"
  loc_AB0D1B: PopAdLdVar
  loc_AB0D1C: FLdPr Me
  loc_AB0D1F: MemLdRfVar from_stack_1.htmFile
  loc_AB0D22: LdPrVar
  loc_AB0D24: LateMemCall
  loc_AB0D2A: LitVarStr var_94, "    <th>Expediente<br>de Pago</th>"
  loc_AB0D2F: PopAdLdVar
  loc_AB0D30: FLdPr Me
  loc_AB0D33: MemLdRfVar from_stack_1.htmFile
  loc_AB0D36: LdPrVar
  loc_AB0D38: LateMemCall
  loc_AB0D3E: LitVarStr var_94, "    <th>Orden de Pago<br>de Pago</th>"
  loc_AB0D43: PopAdLdVar
  loc_AB0D44: FLdPr Me
  loc_AB0D47: MemLdRfVar from_stack_1.htmFile
  loc_AB0D4A: LdPrVar
  loc_AB0D4C: LateMemCall
  loc_AB0D52: LitVarStr var_94, "    <th>Factura</th>"
  loc_AB0D57: PopAdLdVar
  loc_AB0D58: FLdPr Me
  loc_AB0D5B: MemLdRfVar from_stack_1.htmFile
  loc_AB0D5E: LdPrVar
  loc_AB0D60: LateMemCall
  loc_AB0D66: LitVarStr var_94, "    <th>Total Mandado a Pagar</th>"
  loc_AB0D6B: PopAdLdVar
  loc_AB0D6C: FLdPr Me
  loc_AB0D6F: MemLdRfVar from_stack_1.htmFile
  loc_AB0D72: LdPrVar
  loc_AB0D74: LateMemCall
  loc_AB0D7A: LitVarStr var_94, "    <th>Total Pagado</th>"
  loc_AB0D7F: PopAdLdVar
  loc_AB0D80: FLdPr Me
  loc_AB0D83: MemLdRfVar from_stack_1.htmFile
  loc_AB0D86: LdPrVar
  loc_AB0D88: LateMemCall
  loc_AB0D8E: LitVarStr var_94, "    <th>Total Deuda Exigible por<br>Proveedor</th>"
  loc_AB0D93: PopAdLdVar
  loc_AB0D94: FLdPr Me
  loc_AB0D97: MemLdRfVar from_stack_1.htmFile
  loc_AB0D9A: LdPrVar
  loc_AB0D9C: LateMemCall
  loc_AB0DA2: LitVarStr var_94, "  </tr>"
  loc_AB0DA7: PopAdLdVar
  loc_AB0DA8: FLdPr Me
  loc_AB0DAB: MemLdRfVar from_stack_1.htmFile
  loc_AB0DAE: LdPrVar
  loc_AB0DB0: LateMemCall
  loc_AB0DB6: LitVarStr var_94, "  </THEAD>"
  loc_AB0DBB: PopAdLdVar
  loc_AB0DBC: FLdPr Me
  loc_AB0DBF: MemLdRfVar from_stack_1.htmFile
  loc_AB0DC2: LdPrVar
  loc_AB0DC4: LateMemCall
  loc_AB0DCA: ExitProcHresult
End Function

Private Function Proc_181_38_982310() '982310
  'Data Table: 4B6E38
  loc_9822D0: LitVarStr var_94, "</table>"
  loc_9822D5: PopAdLdVar
  loc_9822D6: FLdPr Me
  loc_9822D9: MemLdRfVar from_stack_1.htmFile
  loc_9822DC: LdPrVar
  loc_9822DE: LateMemCall
  loc_9822E4: LitVarStr var_94, "</body>"
  loc_9822E9: PopAdLdVar
  loc_9822EA: FLdPr Me
  loc_9822ED: MemLdRfVar from_stack_1.htmFile
  loc_9822F0: LdPrVar
  loc_9822F2: LateMemCall
  loc_9822F8: LitVarStr var_94, "</html>"
  loc_9822FD: PopAdLdVar
  loc_9822FE: FLdPr Me
  loc_982301: MemLdRfVar from_stack_1.htmFile
  loc_982304: LdPrVar
  loc_982306: LateMemCall
  loc_98230C: ExitProcHresult
  loc_98230D: FFree1Var arg_57B = ""
End Function
