VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptResiduosPasivosporProveedor
  Caption = "Proveedores Varios por Proveedor"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptResiduosPasivosporProveedor.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 9615
  ClientHeight = 5040
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 4785
    Width = 9615
    Height = 255
    TabIndex = 29
    OleObjectBlob = "rptResiduosPasivosporProveedor.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 8640
    Top = 3840
    Width = 735
    Height = 615
    TabIndex = 27
    Cancel = -1  'True
    Picture = "rptResiduosPasivosporProveedor.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptResiduosPasivosporProveedor.frx":0B9C
    Left = 5160
    Top = 240
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 3600
    Width = 5175
    Height = 1095
    TabIndex = 23
    Begin VB.CommandButton cmdTXT
      Caption = "&TXT"
      Left = 3120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 26
    End
    Begin VB.CommandButton cmdXLS
      Caption = "&XLS"
      Left = 1680
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 25
    End
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 24
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 3600
    Width = 3015
    Height = 1095
    TabIndex = 20
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 22
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 21
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 8295
    Height = 3495
    TabIndex = 0
    Begin VB.CheckBox chkIncluirDebitos
      Caption = "Incluir Débitos Extrapres:"
      Left = 6000
      Top = 2880
      Width = 2175
      Height = 255
      TabIndex = 19
      Alignment = 1 'Right Justify
    End
    Begin VB.CheckBox chkExcluirPartidasExtra
      Caption = "Excluir Partidas Extrapresupuestarias:"
      Left = 2400
      Top = 2880
      Width = 3015
      Height = 255
      TabIndex = 18
      Alignment = 1 'Right Justify
    End
    Begin VB.CheckBox chkExcluirTransferidos
      Caption = "Excluir transferidos:"
      Left = 120
      Top = 2880
      Width = 1695
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
      Picture = "rptResiduosPasivosporProveedor.frx":0C00
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CommandButton DesdeCmd
      Left = 2640
      Top = 810
      Width = 375
      Height = 375
      TabIndex = 6
      Picture = "rptResiduosPasivosporProveedor.frx":0CFA
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CommandButton HastaCmd
      Left = 2640
      Top = 1290
      Width = 375
      Height = 375
      TabIndex = 9
      Picture = "rptResiduosPasivosporProveedor.frx":123C
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
      OleObjectBlob = "rptResiduosPasivosporProveedor.frx":177E
    End
    Begin MSMask.MaskEdBox HastaMsk
      Left = 1440
      Top = 1320
      Width = 1095
      Height = 315
      TabIndex = 8
      OleObjectBlob = "rptResiduosPasivosporProveedor.frx":1806
    End
    Begin MSMask.MaskEdBox CucuPersMsk
      Left = 1440
      Top = 1800
      Width = 1215
      Height = 315
      TabIndex = 11
      OleObjectBlob = "rptResiduosPasivosporProveedor.frx":188E
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
    Left = 8640
    Top = 3960
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 28
    OleObjectBlob = "rptResiduosPasivosporProveedor.frx":1918
  End
End

Attribute VB_Name = "rptResiduosPasivosporProveedor"

Public htmFile As Variant
Public bLogos As Boolean
Public bGenerado As Boolean

Private Type UDT_1_00588C34
  bStruc(44) As Byte ' String fields: 11
End Type

Private Type UDT_2_006023FC
  bStruc(28) As Byte ' String fields: 7
End Type


Private Sub CucuPersCmd_Click() 'A03110
  'Data Table: 4C7AA8
  loc_A02FC4: ImpAdLdRf MemVar_C3D74C
  loc_A02FC7: NewIfNullAd
  loc_A02FCA: FStAd var_88 
  loc_A02FCE: LitI2_Byte 0
  loc_A02FD0: FLdPr var_88
  loc_A02FD3: Call bscProveedor.MuestroAnuladosPut(from_stack_1v)
  loc_A02FD8: LitNothing
  loc_A02FDA: CastAd
  loc_A02FDD: FStAdFuncNoPop
  loc_A02FE0: FLdRfVar var_8C
  loc_A02FE3: ImpAdLdRf MemVar_C3D74C
  loc_A02FE6: NewIfNullPr bscProveedor
  loc_A02FE9: from_stack_1v = bscProveedor.global_4315292Get()
  loc_A02FEE: FLdPr var_8C
  loc_A02FF1: Call clsbase.RsFrmSet(from_stack_1v)
  loc_A02FF6: FFreeAd var_90 = ""
  loc_A02FFD: LitVar_Missing var_B0
  loc_A03000: PopAdLdVar
  loc_A03001: LitVarI4
  loc_A03009: PopAdLdVar
  loc_A0300A: FLdPr var_88
  loc_A0300D: Me.Show from_stack_1, from_stack_2
  loc_A03012: FLdRfVar var_B4
  loc_A03015: FLdRfVar var_8C
  loc_A03018: FLdPr var_88
  loc_A0301B: from_stack_1v = bscProveedor.global_4315292Get()
  loc_A03020: FLdPr var_8C
  loc_A03023: from_stack_1 = clsbase.RecordCount
  loc_A03028: ILdRf var_B4
  loc_A0302B: LitI4 0
  loc_A03030: GtI4
  loc_A03031: FFree1Ad var_8C
  loc_A03034: BranchF loc_A03109
  loc_A03037: FLdRfVar var_CC
  loc_A0303A: FLdRfVar var_BC
  loc_A0303D: LitVarStr var_A0, "CucuPers"
  loc_A03042: PopAdLdVar
  loc_A03043: FLdRfVar var_B8
  loc_A03046: FLdRfVar var_90
  loc_A03049: FLdRfVar var_8C
  loc_A0304C: FLdPr var_88
  loc_A0304F: from_stack_1v = bscProveedor.global_4315292Get()
  loc_A03054: FLdPr var_8C
  loc_A03057: from_stack_1v = clsbase.RsFrmGet()
  loc_A0305C: FLdPr var_90
  loc_A0305F:  = Me.Fields
  loc_A03064: FLdPr var_B8
  loc_A03067: from_stack_2 = Me.Item(from_stack_1)
  loc_A0306C: FLdPr var_BC
  loc_A0306F:  = Me.Value
  loc_A03074: FLdRfVar var_CC
  loc_A03077: CStrVarTmp
  loc_A03078: CVarStr var_DC
  loc_A0307B: PopAdLdVar
  loc_A0307C: FLdPr Me
  loc_A0307F: VCallAd Control_ID_CucuPersMsk
  loc_A03082: FStAdFunc var_E0
  loc_A03085: FLdPr var_E0
  loc_A03088: LateIdSt
  loc_A0308D: FFreeAd var_8C = "": var_90 = "": var_B8 = "": var_BC = ""
  loc_A0309A: FFreeVar var_CC = ""
  loc_A030A1: FLdRfVar var_CC
  loc_A030A4: FLdRfVar var_BC
  loc_A030A7: LitVarStr var_A0, "DetaProv"
  loc_A030AC: PopAdLdVar
  loc_A030AD: FLdRfVar var_B8
  loc_A030B0: FLdRfVar var_90
  loc_A030B3: FLdRfVar var_8C
  loc_A030B6: FLdPr var_88
  loc_A030B9: from_stack_1v = bscProveedor.global_4315292Get()
  loc_A030BE: FLdPr var_8C
  loc_A030C1: from_stack_1v = clsbase.RsFrmGet()
  loc_A030C6: FLdPr var_90
  loc_A030C9:  = Me.Fields
  loc_A030CE: FLdPr var_B8
  loc_A030D1: from_stack_2 = Me.Item(from_stack_1)
  loc_A030D6: FLdPr var_BC
  loc_A030D9:  = Me.Value
  loc_A030DE: FLdRfVar var_CC
  loc_A030E1: CStrVarTmp
  loc_A030E2: FStStrNoPop var_E4
  loc_A030E5: FLdPr Me
  loc_A030E8: VCallAd Control_ID_DetaProvLbl
  loc_A030EB: FStAdFunc var_E0
  loc_A030EE: FLdPr var_E0
  loc_A030F1: Me.Caption = from_stack_1
  loc_A030F6: FFree1Str var_E4
  loc_A030F9: FFreeAd var_8C = "": var_90 = "": var_B8 = "": var_BC = ""
  loc_A03106: FFree1Var var_CC = ""
  loc_A03109: LitNothing
  loc_A0310B: FStAd var_88 
  loc_A0310F: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '98C0D4
  'Data Table: 4C7AA8
  loc_98C09C: FLdPr Me
  loc_98C09F: VCallAd Control_ID_statusBar
  loc_98C0A2: FStAdFunc var_88
  loc_98C0A5: FLdPr var_88
  loc_98C0A8: LateIdLdVar var_98 DispID_1 0
  loc_98C0AF: CStrVarTmp
  loc_98C0B0: CVarStr var_A8
  loc_98C0B3: PopAdLdVar
  loc_98C0B4: FLdPr Me
  loc_98C0B7: VCallAd Control_ID_statusBar
  loc_98C0BA: FStAdFunc var_BC
  loc_98C0BD: FLdPr var_BC
  loc_98C0C0: LateIdSt
  loc_98C0C5: FFreeAd var_88 = ""
  loc_98C0CC: FFreeVar var_98 = ""
  loc_98C0D3: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '963C24
  'Data Table: 4C7AA8
  loc_963C0C: ILdRf Me
  loc_963C0F: CastAd
  loc_963C12: FStAdFunc var_88
  loc_963C15: FLdRfVar var_88
  loc_963C18: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_963C1D: FFree1Ad var_88
  loc_963C20: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() '97BE50
  'Data Table: 4C7AA8
  loc_97BE20: LitVarStr var_94, "Cerrando..."
  loc_97BE25: PopAdLdVar
  loc_97BE26: FLdPr Me
  loc_97BE29: VCallAd Control_ID_statusBar
  loc_97BE2C: FStAdFunc var_A8
  loc_97BE2F: FLdPr var_A8
  loc_97BE32: LateIdSt
  loc_97BE37: FFree1Ad var_A8
  loc_97BE3A: ILdRf Me
  loc_97BE3D: FStAdNoPop
  loc_97BE41: ImpAdLdRf MemVar_C44F9C
  loc_97BE44: NewIfNullPr Me
  loc_97BE47: Me.Global.Unload from_stack_1
  loc_97BE4C: FFree1Ad var_A8
  loc_97BE4F: ExitProcHresult
End Sub

Private Sub DesdeCmd_Click() '98341C
  'Data Table: 4C7AA8
  loc_9833E0: LitVar_Missing var_A4
  loc_9833E3: PopAdLdVar
  loc_9833E4: LitVarI4
  loc_9833EC: PopAdLdVar
  loc_9833ED: ImpAdLdRf MemVar_C3D9A8
  loc_9833F0: NewIfNullPr frmCalendario
  loc_9833F3: frmCalendario.Show from_stack_1, from_stack_2
  loc_9833F8: ImpAdLdRf MemVar_C3D038
  loc_9833FB: CDargRef
  loc_9833FF: FLdPr Me
  loc_983402: VCallAd Control_ID_DesdeMsk
  loc_983405: FStAdFunc var_A8
  loc_983408: FLdPr var_A8
  loc_98340B: LateIdSt
  loc_983410: FFree1Ad var_A8
  loc_983413: ImpAdCallFPR4 Proc_261_52_966EEC()
  loc_983418: ExitProcHresult
End Sub

Private Sub cmdXLS_Click() '9698CC
  'Data Table: 4C7AA8
  loc_9698B0: LitI2_Byte &HFF
  loc_9698B2: LitI2_Byte 0
  loc_9698B4: ILdRf Me
  loc_9698B7: CastAd
  loc_9698BA: FStAdFunc var_88
  loc_9698BD: FLdRfVar var_88
  loc_9698C0: ImpAdCallFPR4 Proc_263_4_A28DF0(, , )
  loc_9698C5: FFree1Ad var_88
  loc_9698C8: ExitProcHresult
  loc_9698C9: FStVarCopyObj arg_39C
End Sub

Private Sub HastaCmd_Click() '98C154
  'Data Table: 4C7AA8
  loc_98C114: LitVar_Missing var_A4
  loc_98C117: PopAdLdVar
  loc_98C118: LitVarI4
  loc_98C120: PopAdLdVar
  loc_98C121: ImpAdLdRf MemVar_C3D9A8
  loc_98C124: NewIfNullPr frmCalendario
  loc_98C127: frmCalendario.Show from_stack_1, from_stack_2
  loc_98C12C: ImpAdLdFPR8 MemVar_C3D04C
  loc_98C12F: CStrDate
  loc_98C131: CVarStr var_B4
  loc_98C134: PopAdLdVar
  loc_98C135: FLdPr Me
  loc_98C138: VCallAd Control_ID_HastaMsk
  loc_98C13B: FStAdFunc var_B8
  loc_98C13E: FLdPr var_B8
  loc_98C141: LateIdSt
  loc_98C146: FFree1Ad var_B8
  loc_98C149: FFree1Var var_B4 = ""
  loc_98C14C: ImpAdCallFPR4 Proc_261_52_966EEC()
  loc_98C151: ExitProcHresult
End Sub

Private Sub ImporteTxt_GotFocus() '950E80
  'Data Table: 4C7AA8
  loc_950E6C: FLdPr Me
  loc_950E6F: VCallAd Control_ID_ImporteTxt
  loc_950E72: CVarAd
  loc_950E76: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_950E7B: FFree1Var var_94 = ""
  loc_950E7E: ExitProcHresult
End Sub

Private Sub ImporteTxt_KeyPress(KeyAscii As Integer) '98C868
  'Data Table: 4C7AA8
  loc_98C828: LitStr "1234567890,."
  loc_98C82B: FStStrCopy var_88
  loc_98C82E: FLdRfVar var_88
  loc_98C831: ILdRf KeyAscii
  loc_98C834: ImpAdCallI2 Proc_261_6_9AA2A8(, )
  loc_98C839: IStI2 KeyAscii
  loc_98C83C: FFree1Str var_88
  loc_98C83F: ILdI2 KeyAscii
  loc_98C842: CI4UI1
  loc_98C843: FLdRfVar var_98
  loc_98C846: ImpAdCallFPR4  = Chr()
  loc_98C84B: FLdRfVar var_98
  loc_98C84E: LitVarStr var_A8, "."
  loc_98C853: HardType
  loc_98C854: EqVarBool
  loc_98C856: FFree1Var var_98 = ""
  loc_98C859: BranchF loc_98C867
  loc_98C85C: LitStr ","
  loc_98C85F: ImpAdCallI2 Asc()
  loc_98C864: IStI2 KeyAscii
  loc_98C867: ExitProcHresult
End Sub

Private Sub ImporteTxt_Validate(Cancel As Boolean) '9FC61C
  'Data Table: 4C7AA8
  loc_9FC4E4: FLdRfVar var_8C
  loc_9FC4E7: FLdPr Me
  loc_9FC4EA: VCallAd Control_ID_ImporteTxt
  loc_9FC4ED: FStAdFunc var_88
  loc_9FC4F0: FLdPr var_88
  loc_9FC4F3:  = Me.Text
  loc_9FC4F8: ILdRf var_8C
  loc_9FC4FB: LitStr vbNullString
  loc_9FC4FE: NeStr
  loc_9FC500: FFree1Str var_8C
  loc_9FC503: FFree1Ad var_88
  loc_9FC506: BranchF loc_9FC618
  loc_9FC509: FLdRfVar var_8C
  loc_9FC50C: FLdPr Me
  loc_9FC50F: VCallAd Control_ID_ImporteTxt
  loc_9FC512: FStAdFunc var_88
  loc_9FC515: FLdPr var_88
  loc_9FC518:  = Me.Text
  loc_9FC51D: LitStr "0"
  loc_9FC520: LitI2_Byte &HFF
  loc_9FC522: LitI2_Byte &HFF
  loc_9FC524: LitI2_Byte &HFF
  loc_9FC526: ILdRf var_8C
  loc_9FC529: LitStr "Importe"
  loc_9FC52C: ImpAdCallI2 Proc_266_25_A07298(, , , , , )
  loc_9FC531: FStStrNoPop var_90
  loc_9FC534: FLdPr Me
  loc_9FC537: MemStStrCopy
  loc_9FC53B: FFreeStr var_8C = ""
  loc_9FC542: FFree1Ad var_88
  loc_9FC545: FLdPr Me
  loc_9FC548: VCallAd Control_ID_ImporteTxt
  loc_9FC54B: FStAdFunc var_9C
  loc_9FC54E: LitNothing
  loc_9FC550: CastAd
  loc_9FC553: FStAdFunc var_98
  loc_9FC556: FLdRfVar var_98
  loc_9FC559: FLdZeroAd var_9C
  loc_9FC55C: FStAdFuncNoPop
  loc_9FC55F: CastAd
  loc_9FC562: FStAdFunc var_94
  loc_9FC565: FLdRfVar var_94
  loc_9FC568: FLdPr Me
  loc_9FC56B: MemLdRfVar from_stack_1.global_116
  loc_9FC56E: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9FC573: IStI2 Cancel
  loc_9FC576: FFreeAd var_88 = "": var_94 = "": var_98 = ""
  loc_9FC581: ILdI2 Cancel
  loc_9FC584: NotI4
  loc_9FC585: BranchF loc_9FC618
  loc_9FC588: FLdPr Me
  loc_9FC58B: VCallAd Control_ID_ImporteTxt
  loc_9FC58E: CVarAd
  loc_9FC592: ImpAdCallI2 IsNumeric()
  loc_9FC597: FFree1Var var_AC = ""
  loc_9FC59A: BranchF loc_9FC618
  loc_9FC59D: FLdRfVar var_8C
  loc_9FC5A0: FLdPr Me
  loc_9FC5A3: VCallAd Control_ID_ImporteTxt
  loc_9FC5A6: FStAdFunc var_88
  loc_9FC5A9: FLdPr var_88
  loc_9FC5AC:  = Me.Text
  loc_9FC5B1: LitI4 2
  loc_9FC5B6: ILdRf var_8C
  loc_9FC5B9: CR8Str
  loc_9FC5BB: CVarR8
  loc_9FC5BF: FLdRfVar var_CC
  loc_9FC5C2: ImpAdCallFPR4  = Round(, )
  loc_9FC5C7: LitI4 1
  loc_9FC5CC: LitI4 1
  loc_9FC5D1: LitVarStr var_DC, "###,###,###,###,##0.00"
  loc_9FC5D6: FStVarCopyObj var_EC
  loc_9FC5D9: FLdRfVar var_EC
  loc_9FC5DC: FLdRfVar var_CC
  loc_9FC5DF: FLdRfVar var_FC
  loc_9FC5E2: ImpAdCallFPR4  = Format(, )
  loc_9FC5E7: FLdRfVar var_FC
  loc_9FC5EA: CStrVarVal var_90
  loc_9FC5EE: FLdPr Me
  loc_9FC5F1: VCallAd Control_ID_ImporteTxt
  loc_9FC5F4: FStAdFunc var_94
  loc_9FC5F7: FLdPr var_94
  loc_9FC5FA: Me.Text = from_stack_1
  loc_9FC5FF: FFreeStr var_8C = ""
  loc_9FC606: FFreeAd var_88 = ""
  loc_9FC60D: FFreeVar var_AC = "": var_CC = "": var_EC = ""
  loc_9FC618: ExitProcHresult
  loc_9FC619: MemStFPR4 global_855
End Sub

Private Sub cmdPdf_Click() '963B8C
  'Data Table: 4C7AA8
  loc_963B74: LitI2_Byte 0
  loc_963B76: ILdRf Me
  loc_963B79: CastAd
  loc_963B7C: FStAdFunc var_88
  loc_963B7F: FLdRfVar var_88
  loc_963B82: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_963B87: FFree1Ad var_88
  loc_963B8A: ExitProcHresult
End Sub

Private Sub HastaMsk_UnknownEvent_0 '951108
  'Data Table: 4C7AA8
  loc_9510F4: FLdPr Me
  loc_9510F7: VCallAd Control_ID_HastaMsk
  loc_9510FA: CVarAd
  loc_9510FE: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_951103: FFree1Var var_94 = ""
  loc_951106: ExitProcHresult
End Sub

Private Function HastaMsk_UnknownEvent_8(arg_C) '9B1BBC
  'Data Table: 4C7AA8
  loc_9B1B20: FLdPr Me
  loc_9B1B23: VCallAd Control_ID_HastaMsk
  loc_9B1B26: FStAdFunc var_88
  loc_9B1B29: FLdPr var_88
  loc_9B1B2C: LateIdLdVar var_98 DispID_15 0
  loc_9B1B33: PopAd
  loc_9B1B35: FLdPr Me
  loc_9B1B38: VCallAd Control_ID_HastaMsk
  loc_9B1B3B: FStAdFunc var_AC
  loc_9B1B3E: LitI2_Byte 0
  loc_9B1B40: PopTmpLdAd2 var_A2
  loc_9B1B43: FLdZeroAd var_AC
  loc_9B1B46: FStAdFunc var_A0
  loc_9B1B49: FLdRfVar var_A0
  loc_9B1B4C: LitStr vbNullString
  loc_9B1B4F: LitI2_Byte 0
  loc_9B1B51: LitI2_Byte 0
  loc_9B1B53: FLdRfVar var_98
  loc_9B1B56: CStrVarTmp
  loc_9B1B57: FStStrNoPop var_9C
  loc_9B1B5A: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9B1B5F: FStStrNoPop var_A8
  loc_9B1B62: FLdPr Me
  loc_9B1B65: MemStStrCopy
  loc_9B1B69: FFreeStr var_9C = ""
  loc_9B1B70: FFreeAd var_88 = "": var_A0 = ""
  loc_9B1B79: FFree1Var var_98 = ""
  loc_9B1B7C: FLdPr Me
  loc_9B1B7F: VCallAd Control_ID_HastaMsk
  loc_9B1B82: FStAdFunc var_B0
  loc_9B1B85: LitNothing
  loc_9B1B87: CastAd
  loc_9B1B8A: FStAdFunc var_AC
  loc_9B1B8D: FLdRfVar var_AC
  loc_9B1B90: FLdZeroAd var_B0
  loc_9B1B93: FStAdFuncNoPop
  loc_9B1B96: CastAd
  loc_9B1B99: FStAdFunc var_A0
  loc_9B1B9C: FLdRfVar var_A0
  loc_9B1B9F: FLdPr Me
  loc_9B1BA2: MemLdRfVar from_stack_1.global_116
  loc_9B1BA5: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9B1BAA: IStI2 arg_C
  loc_9B1BAD: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9B1BB8: ExitProcHresult
  loc_9B1BB9: FStVarCopyObj arg_368
End Function

Private Sub cboPeriodo_Click() '9A3E98
  'Data Table: 4C7AA8
  loc_9A3E28: FLdRfVar var_8C
  loc_9A3E2B: FLdPr Me
  loc_9A3E2E: VCallAd Control_ID_cboPeriodo
  loc_9A3E31: FStAdFunc var_88
  loc_9A3E34: FLdPr var_88
  loc_9A3E37:  = Me.Text
  loc_9A3E3C: LitI2_Byte 1
  loc_9A3E3E: LitI2_Byte 1
  loc_9A3E40: ILdRf var_8C
  loc_9A3E43: CI2Str
  loc_9A3E45: FLdRfVar var_9C
  loc_9A3E48: ImpAdCallFPR4  = DateSerial(, , )
  loc_9A3E4D: FLdRfVar var_9C
  loc_9A3E50: CStrVarTmp
  loc_9A3E51: CVarStr var_AC
  loc_9A3E54: PopAdLdVar
  loc_9A3E55: FLdPr Me
  loc_9A3E58: VCallAd Control_ID_DesdeMsk
  loc_9A3E5B: FStAdFunc var_C0
  loc_9A3E5E: FLdPr var_C0
  loc_9A3E61: LateIdSt
  loc_9A3E66: FFree1Str var_8C
  loc_9A3E69: FFreeAd var_88 = ""
  loc_9A3E70: FFreeVar var_9C = ""
  loc_9A3E77: ImpAdLdFPR8 MemVar_C3D04C
  loc_9A3E7A: CStrDate
  loc_9A3E7C: CVarStr var_9C
  loc_9A3E7F: PopAdLdVar
  loc_9A3E80: FLdPr Me
  loc_9A3E83: VCallAd Control_ID_HastaMsk
  loc_9A3E86: FStAdFunc var_88
  loc_9A3E89: FLdPr var_88
  loc_9A3E8C: LateIdSt
  loc_9A3E91: FFree1Ad var_88
  loc_9A3E94: FFree1Var var_9C = ""
  loc_9A3E97: ExitProcHresult
End Sub

Private Sub CucuPersMsk_UnknownEvent_0 '94DC28
  'Data Table: 4C7AA8
  loc_94DC14: FLdPr Me
  loc_94DC17: VCallAd Control_ID_CucuPersMsk
  loc_94DC1A: CVarAd
  loc_94DC1E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94DC23: FFree1Var var_94 = ""
  loc_94DC26: ExitProcHresult
End Sub

Private Function CucuPersMsk_UnknownEvent_8(arg_C) '9DCA24
  'Data Table: 4C7AA8
  loc_9DC92C: FLdPr Me
  loc_9DC92F: VCallAd Control_ID_CucuPersMsk
  loc_9DC932: FStAdFunc var_88
  loc_9DC935: FLdPr var_88
  loc_9DC938: LateIdLdVar var_98 DispID_13 -32767
  loc_9DC93F: CBoolVar
  loc_9DC941: FLdPr Me
  loc_9DC944: VCallAd Control_ID_CucuPersMsk
  loc_9DC947: FStAdFunc var_9C
  loc_9DC94A: FLdPr var_9C
  loc_9DC94D: LateIdLdVar var_AC DispID_22 0
  loc_9DC954: CStrVarTmp
  loc_9DC955: FStStrNoPop var_B0
  loc_9DC958: LitStr vbNullString
  loc_9DC95B: NeStr
  loc_9DC95D: AndI4
  loc_9DC95E: FFree1Str var_B0
  loc_9DC961: FFreeAd var_88 = ""
  loc_9DC968: FFreeVar var_98 = ""
  loc_9DC96F: BranchF loc_9DCA23
  loc_9DC972: FLdPr Me
  loc_9DC975: VCallAd Control_ID_CucuPersMsk
  loc_9DC978: FStAdFunc var_88
  loc_9DC97B: FLdPr var_88
  loc_9DC97E: LateIdLdVar var_98 DispID_22 0
  loc_9DC985: PopAd
  loc_9DC987: FLdPr Me
  loc_9DC98A: MemLdRfVar from_stack_1.global_72
  loc_9DC98D: NewIfNullRf
  loc_9DC991: FLdRfVar var_98
  loc_9DC994: CStrVarTmp
  loc_9DC995: FStStrNoPop var_B0
  loc_9DC998: ImpAdCallI2 Proc_266_17_9A241C(, )
  loc_9DC99D: FStStrNoPop var_B4
  loc_9DC9A0: FLdPr Me
  loc_9DC9A3: MemStStrCopy
  loc_9DC9A7: FFreeStr var_B0 = ""
  loc_9DC9AE: FFree1Ad var_88
  loc_9DC9B1: FFree1Var var_98 = ""
  loc_9DC9B4: FLdPr Me
  loc_9DC9B7: VCallAd Control_ID_CucuPersMsk
  loc_9DC9BA: FStAdFunc var_BC
  loc_9DC9BD: FLdPr Me
  loc_9DC9C0: VCallAd Control_ID_DetaProvLbl
  loc_9DC9C3: FStAdFunc var_B8
  loc_9DC9C6: FLdRfVar var_B8
  loc_9DC9C9: FLdZeroAd var_BC
  loc_9DC9CC: FStAdFuncNoPop
  loc_9DC9CF: CastAd
  loc_9DC9D2: FStAdFunc var_9C
  loc_9DC9D5: FLdRfVar var_9C
  loc_9DC9D8: FLdPr Me
  loc_9DC9DB: MemLdRfVar from_stack_1.global_116
  loc_9DC9DE: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9DC9E3: IStI2 arg_C
  loc_9DC9E6: FFreeAd var_88 = "": var_9C = "": var_B8 = ""
  loc_9DC9F1: ILdI2 arg_C
  loc_9DC9F4: NotI4
  loc_9DC9F5: BranchF loc_9DCA23
  loc_9DC9F8: FLdRfVar var_B0
  loc_9DC9FB: FLdPr Me
  loc_9DC9FE: MemLdRfVar from_stack_1.global_72
  loc_9DCA01: NewIfNullPr tblproveedor
  loc_9DCA04: from_stack_1v = tblproveedor.DetaProvGet()
  loc_9DCA09: ILdRf var_B0
  loc_9DCA0C: FLdPr Me
  loc_9DCA0F: VCallAd Control_ID_DetaProvLbl
  loc_9DCA12: FStAdFunc var_88
  loc_9DCA15: FLdPr var_88
  loc_9DCA18: Me.Caption = from_stack_1
  loc_9DCA1D: FFree1Str var_B0
  loc_9DCA20: FFree1Ad var_88
  loc_9DCA23: ExitProcHresult
End Function

Private Sub Form_Load() '9CCF30
  'Data Table: 4C7AA8
  loc_9CCE58: LitI2_Byte &HFF
  loc_9CCE5A: ImpAdStI2 MemVar_C3D840
  loc_9CCE5D: ILdRf Me
  loc_9CCE60: CastAd
  loc_9CCE63: FStAdFunc var_8C
  loc_9CCE66: FLdRfVar var_8C
  loc_9CCE69: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_9CCE6E: FFree1Ad var_8C
  loc_9CCE71: LitStr "SELECT * FROM infogov.periodo ORDER BY PeriInfo"
  loc_9CCE74: FLdRfVar var_88
  loc_9CCE77: NewIfNullPr clsperiodo
  loc_9CCE7A: Call clsperiodo.RedefineRS(from_stack_1v)
  loc_9CCE7F: FLdRfVar var_90
  loc_9CCE82: FLdRfVar var_88
  loc_9CCE85: NewIfNullPr clsperiodo
  loc_9CCE88: from_stack_1 = clsperiodo.RecordCount
  loc_9CCE8D: ILdRf var_90
  loc_9CCE90: LitI4 0
  loc_9CCE95: GtI4
  loc_9CCE96: BranchF loc_9CCF29
  loc_9CCE99: FLdRfVar var_88
  loc_9CCE9C: NewIfNullPr clsperiodo
  loc_9CCE9F: Call clsperiodo.MoveFirst()
  loc_9CCEA4: FLdRfVar var_92
  loc_9CCEA7: FLdRfVar var_88
  loc_9CCEAA: NewIfNullPr clsperiodo
  loc_9CCEAD: from_stack_1 = clsperiodo.EOF
  loc_9CCEB2: FLdI2 var_92
  loc_9CCEB5: NotI4
  loc_9CCEB6: BranchF loc_9CCF29
  loc_9CCEB9: LitVar_Missing var_D0
  loc_9CCEBC: PopAdLdVar
  loc_9CCEBD: FLdRfVar var_BC
  loc_9CCEC0: FLdRfVar var_AC
  loc_9CCEC3: LitVarStr var_A8, "PeriInfo"
  loc_9CCEC8: PopAdLdVar
  loc_9CCEC9: FLdRfVar var_98
  loc_9CCECC: FLdRfVar var_8C
  loc_9CCECF: FLdRfVar var_88
  loc_9CCED2: NewIfNullPr clsperiodo
  loc_9CCED5: from_stack_1v = clsperiodo.RsFrmGet()
  loc_9CCEDA: FLdPr var_8C
  loc_9CCEDD:  = Me.Fields
  loc_9CCEE2: FLdPr var_98
  loc_9CCEE5: from_stack_2 = Me.Item(from_stack_1)
  loc_9CCEEA: FLdPr var_AC
  loc_9CCEED:  = Me.Value
  loc_9CCEF2: FLdRfVar var_BC
  loc_9CCEF5: CStrVarTmp
  loc_9CCEF6: FStStrNoPop var_C0
  loc_9CCEF9: FLdPr Me
  loc_9CCEFC: VCallAd Control_ID_cboPeriodo
  loc_9CCEFF: FStAdFunc var_D4
  loc_9CCF02: FLdPr var_D4
  loc_9CCF05: Me.AddItem from_stack_1, from_stack_2
  loc_9CCF0A: FFree1Str var_C0
  loc_9CCF0D: FFreeAd var_8C = "": var_98 = "": var_AC = ""
  loc_9CCF18: FFree1Var var_BC = ""
  loc_9CCF1B: FLdRfVar var_88
  loc_9CCF1E: NewIfNullPr clsperiodo
  loc_9CCF21: Call clsperiodo.MoveSiguiente()
  loc_9CCF26: Branch loc_9CCEA4
  loc_9CCF29: Call cmdNueva_Click()
  loc_9CCF2E: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9635E8
  'Data Table: 4C7AA8
  loc_9635D0: FLdPr Me
  loc_9635D3: VCallAd Control_ID_wbbReporte
  loc_9635D6: FStAdFunc var_88
  loc_9635D9: FLdRfVar var_88
  loc_9635DC: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_9635E1: FFree1Ad var_88
  loc_9635E4: ExitProcHresult
  loc_9635E5: CStrVarTmp
  loc_9635E6: CRec2Ansi arg_3000
End Sub

Private Sub DesdeMsk_UnknownEvent_0 '951198
  'Data Table: 4C7AA8
  loc_951184: FLdPr Me
  loc_951187: VCallAd Control_ID_DesdeMsk
  loc_95118A: CVarAd
  loc_95118E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_951193: FFree1Var var_94 = ""
  loc_951196: ExitProcHresult
End Sub

Private Sub DesdeMsk_UnknownEvent_8 '9B1CA4
  'Data Table: 4C7AA8
  loc_9B1C08: FLdPr Me
  loc_9B1C0B: VCallAd Control_ID_DesdeMsk
  loc_9B1C0E: FStAdFunc var_88
  loc_9B1C11: FLdPr var_88
  loc_9B1C14: LateIdLdVar var_98 DispID_15 0
  loc_9B1C1B: PopAd
  loc_9B1C1D: FLdPr Me
  loc_9B1C20: VCallAd Control_ID_DesdeMsk
  loc_9B1C23: FStAdFunc var_AC
  loc_9B1C26: LitI2_Byte 0
  loc_9B1C28: PopTmpLdAd2 var_A2
  loc_9B1C2B: FLdZeroAd var_AC
  loc_9B1C2E: FStAdFunc var_A0
  loc_9B1C31: FLdRfVar var_A0
  loc_9B1C34: LitStr vbNullString
  loc_9B1C37: LitI2_Byte 0
  loc_9B1C39: LitI2_Byte 0
  loc_9B1C3B: FLdRfVar var_98
  loc_9B1C3E: CStrVarTmp
  loc_9B1C3F: FStStrNoPop var_9C
  loc_9B1C42: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9B1C47: FStStrNoPop var_A8
  loc_9B1C4A: FLdPr Me
  loc_9B1C4D: MemStStrCopy
  loc_9B1C51: FFreeStr var_9C = ""
  loc_9B1C58: FFreeAd var_88 = "": var_A0 = ""
  loc_9B1C61: FFree1Var var_98 = ""
  loc_9B1C64: FLdPr Me
  loc_9B1C67: VCallAd Control_ID_DesdeMsk
  loc_9B1C6A: FStAdFunc var_B0
  loc_9B1C6D: LitNothing
  loc_9B1C6F: CastAd
  loc_9B1C72: FStAdFunc var_AC
  loc_9B1C75: FLdRfVar var_AC
  loc_9B1C78: FLdZeroAd var_B0
  loc_9B1C7B: FStAdFuncNoPop
  loc_9B1C7E: CastAd
  loc_9B1C81: FStAdFunc var_A0
  loc_9B1C84: FLdRfVar var_A0
  loc_9B1C87: FLdPr Me
  loc_9B1C8A: MemLdRfVar from_stack_1.global_116
  loc_9B1C8D: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9B1C92: IStI2 Cancel
  loc_9B1C95: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9B1CA0: ExitProcHresult
  loc_9B1CA1: LitVar_TRUE arg_368
End Sub

Private Sub cmdPrevia_Click() '963C70
  'Data Table: 4C7AA8
  loc_963C58: ILdRf Me
  loc_963C5B: CastAd
  loc_963C5E: FStAdFunc var_88
  loc_963C61: FLdRfVar var_88
  loc_963C64: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_963C69: FFree1Ad var_88
  loc_963C6C: ExitProcHresult
End Sub

Private Sub cmdTxt_Click() '963F1C
  'Data Table: 4C7AA8
  loc_963F04: LitI2_Byte 0
  loc_963F06: ILdRf Me
  loc_963F09: CastAd
  loc_963F0C: FStAdFunc var_88
  loc_963F0F: FLdRfVar var_88
  loc_963F12: ImpAdCallFPR4 Proc_263_3_9FD750(, )
  loc_963F17: FFree1Ad var_88
  loc_963F1A: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() '9D6C88
  'Data Table: 4C7AA8
  loc_9D6B88: LitI2_Byte 0
  loc_9D6B8A: FLdPr Me
  loc_9D6B8D: MemStI2 bGenerado
  loc_9D6B90: LitI2_Byte &HFF
  loc_9D6B92: FLdPr Me
  loc_9D6B95: MemStI2 bLogos
  loc_9D6B98: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_9D6B9D: ImpAdLdI2 MemVar_C3D064
  loc_9D6BA0: CStrUI1
  loc_9D6BA2: FStStrNoPop var_88
  loc_9D6BA5: FLdPr Me
  loc_9D6BA8: VCallAd Control_ID_cboPeriodo
  loc_9D6BAB: FStAdFunc var_8C
  loc_9D6BAE: FLdPr var_8C
  loc_9D6BB1: Me.Text = from_stack_1
  loc_9D6BB6: FFree1Str var_88
  loc_9D6BB9: FFree1Ad var_8C
  loc_9D6BBC: LitVarStr var_9C, vbNullString
  loc_9D6BC1: PopAdLdVar
  loc_9D6BC2: FLdPr Me
  loc_9D6BC5: VCallAd Control_ID_CucuPersMsk
  loc_9D6BC8: FStAdFunc var_8C
  loc_9D6BCB: FLdPr var_8C
  loc_9D6BCE: LateIdSt
  loc_9D6BD3: FFree1Ad var_8C
  loc_9D6BD6: LitStr vbNullString
  loc_9D6BD9: FLdPr Me
  loc_9D6BDC: VCallAd Control_ID_DetaProvLbl
  loc_9D6BDF: FStAdFunc var_8C
  loc_9D6BE2: FLdPr var_8C
  loc_9D6BE5: Me.Caption = from_stack_1
  loc_9D6BEA: FFree1Ad var_8C
  loc_9D6BED: LitI4 0
  loc_9D6BF2: CI2I4
  loc_9D6BF3: FLdPr Me
  loc_9D6BF6: VCallAd Control_ID_chkOcultarImporte
  loc_9D6BF9: FStAdFunc var_8C
  loc_9D6BFC: FLdPr var_8C
  loc_9D6BFF: Me.Value = from_stack_1
  loc_9D6C04: FFree1Ad var_8C
  loc_9D6C07: LitI4 0
  loc_9D6C0C: CI2I4
  loc_9D6C0D: FLdPr Me
  loc_9D6C10: VCallAd Control_ID_chkExcluirTransferidos
  loc_9D6C13: FStAdFunc var_8C
  loc_9D6C16: FLdPr var_8C
  loc_9D6C19: Me.Value = from_stack_1
  loc_9D6C1E: FFree1Ad var_8C
  loc_9D6C21: LitI4 0
  loc_9D6C26: CI2I4
  loc_9D6C27: FLdPr Me
  loc_9D6C2A: VCallAd Control_ID_chkExcluirPartidasExtra
  loc_9D6C2D: FStAdFunc var_8C
  loc_9D6C30: FLdPr var_8C
  loc_9D6C33: Me.Value = from_stack_1
  loc_9D6C38: FFree1Ad var_8C
  loc_9D6C3B: LitI4 0
  loc_9D6C40: CI2I4
  loc_9D6C41: FLdPr Me
  loc_9D6C44: VCallAd Control_ID_chkIncluirDebitos
  loc_9D6C47: FStAdFunc var_8C
  loc_9D6C4A: FLdPr var_8C
  loc_9D6C4D: Me.Value = from_stack_1
  loc_9D6C52: FFree1Ad var_8C
  loc_9D6C55: LitStr vbNullString
  loc_9D6C58: FLdPr Me
  loc_9D6C5B: VCallAd Control_ID_ImporteTxt
  loc_9D6C5E: FStAdFunc var_8C
  loc_9D6C61: FLdPr var_8C
  loc_9D6C64: Me.Text = from_stack_1
  loc_9D6C69: FFree1Ad var_8C
  loc_9D6C6C: Call HabilitarCriterio()
  loc_9D6C71: ILdRf Me
  loc_9D6C74: CastAd
  loc_9D6C77: FStAdFunc var_8C
  loc_9D6C7A: FLdRfVar var_8C
  loc_9D6C7D: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_9D6C82: FFree1Ad var_8C
  loc_9D6C85: ExitProcHresult
End Sub

Public Function htmFileGet() '4C9084
  htmFileGet = htmFile
End Function

Public Sub htmFilePut(Value) '4C9093
  htmFile = Value
End Sub

Public Sub htmFileSet(Value) '4C90A2
  htmFile = Value
End Sub

Public Function bLogosGet() '4C90B1
  bLogosGet = bLogos
End Function

Public Sub bLogosPut(Value) '4C90C0
  bLogos = Value
End Sub

Public Function bGeneradoGet() '4C90CF
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '4C90DE
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() '9EA4FC
  'Data Table: 4C7AA8
  loc_9EA3F4: LitI4 0
  loc_9EA3F9: LitI4 1
  loc_9EA3FE: FLdRfVar var_88
  loc_9EA401: Redim
  loc_9EA40B: FLdPr Me
  loc_9EA40E: VCallAd Control_ID_DesdeMsk
  loc_9EA411: CVarAd
  loc_9EA415: ParmAry1St
  loc_9EA41B: FLdPr Me
  loc_9EA41E: VCallAd Control_ID_DesdeCmd
  loc_9EA421: CVarAd
  loc_9EA425: ParmAry1St
  loc_9EA42B: FLdRfVar var_88
  loc_9EA42E: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_9EA433: FLdRfVar var_88
  loc_9EA436: Erase
  loc_9EA437: LitI4 0
  loc_9EA43C: LitI4 9
  loc_9EA441: FLdRfVar var_88
  loc_9EA444: Redim
  loc_9EA44E: FLdPr Me
  loc_9EA451: VCallAd Control_ID_cboPeriodo
  loc_9EA454: CVarAd
  loc_9EA458: ParmAry1St
  loc_9EA45E: FLdPr Me
  loc_9EA461: VCallAd Control_ID_HastaMsk
  loc_9EA464: CVarAd
  loc_9EA468: ParmAry1St
  loc_9EA46E: FLdPr Me
  loc_9EA471: VCallAd Control_ID_HastaCmd
  loc_9EA474: CVarAd
  loc_9EA478: ParmAry1St
  loc_9EA47E: FLdPr Me
  loc_9EA481: VCallAd Control_ID_CucuPersMsk
  loc_9EA484: CVarAd
  loc_9EA488: ParmAry1St
  loc_9EA48E: FLdPr Me
  loc_9EA491: VCallAd Control_ID_CucuPersCmd
  loc_9EA494: CVarAd
  loc_9EA498: ParmAry1St
  loc_9EA49E: FLdPr Me
  loc_9EA4A1: VCallAd Control_ID_chkOcultarImporte
  loc_9EA4A4: CVarAd
  loc_9EA4A8: ParmAry1St
  loc_9EA4AE: FLdPr Me
  loc_9EA4B1: VCallAd Control_ID_chkExcluirTransferidos
  loc_9EA4B4: CVarAd
  loc_9EA4B8: ParmAry1St
  loc_9EA4BE: FLdPr Me
  loc_9EA4C1: VCallAd Control_ID_chkExcluirPartidasExtra
  loc_9EA4C4: CVarAd
  loc_9EA4C8: ParmAry1St
  loc_9EA4CE: FLdPr Me
  loc_9EA4D1: VCallAd Control_ID_chkIncluirDebitos
  loc_9EA4D4: CVarAd
  loc_9EA4D8: ParmAry1St
  loc_9EA4DE: FLdPr Me
  loc_9EA4E1: VCallAd Control_ID_ImporteTxt
  loc_9EA4E4: CVarAd
  loc_9EA4E8: ParmAry1St
  loc_9EA4EE: FLdRfVar var_88
  loc_9EA4F1: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9EA4F6: FLdRfVar var_88
  loc_9EA4F9: Erase
  loc_9EA4FA: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'B3AFF0
  'Data Table: 4C7AA8
  loc_B3A680: LitStr vbNullString
  loc_B3A683: FLdPr Me
  loc_B3A686: MemStStrCopy
  loc_B3A68A: LitI2_Byte 0
  loc_B3A68C: PopTmpLdAd2 var_9E
  loc_B3A68F: Call DesdeMsk_UnknownEvent_8()
  loc_B3A694: FLdPr Me
  loc_B3A697: MemLdStr global_116
  loc_B3A69A: LitStr vbNullString
  loc_B3A69D: NeStr
  loc_B3A69F: BranchF loc_B3A6A3
  loc_B3A6A2: ExitProcHresult
  loc_B3A6A3: LitI2_Byte 0
  loc_B3A6A5: PopTmpLdAd2 var_9E
  loc_B3A6A8: from_stack_2v = HastaMsk_UnknownEvent_8(from_stack_1v)
  loc_B3A6AD: FLdPr Me
  loc_B3A6B0: MemLdStr global_116
  loc_B3A6B3: LitStr vbNullString
  loc_B3A6B6: NeStr
  loc_B3A6B8: BranchF loc_B3A6BC
  loc_B3A6BB: ExitProcHresult
  loc_B3A6BC: FLdPr Me
  loc_B3A6BF: MemLdI2 bGenerado
  loc_B3A6C2: BranchF loc_B3A6C6
  loc_B3A6C5: ExitProcHresult
  loc_B3A6C6: LitVarStr var_B0, "Generando reporte..."
  loc_B3A6CB: PopAdLdVar
  loc_B3A6CC: FLdPr Me
  loc_B3A6CF: VCallAd Control_ID_statusBar
  loc_B3A6D2: FStAdFunc var_C4
  loc_B3A6D5: FLdPr var_C4
  loc_B3A6D8: LateIdSt
  loc_B3A6DD: FFree1Ad var_C4
  loc_B3A6E0: LitI4 &HB
  loc_B3A6E5: CI2I4
  loc_B3A6E6: FLdPr Me
  loc_B3A6E9: Me.MousePointer = from_stack_1
  loc_B3A6EE: LitI2_Byte 0
  loc_B3A6F0: PopTmpLdAd2 var_9E
  loc_B3A6F3: from_stack_2v = CucuPersMsk_UnknownEvent_8(from_stack_1v)
  loc_B3A6F8: FLdPr Me
  loc_B3A6FB: MemLdStr global_116
  loc_B3A6FE: LitStr vbNullString
  loc_B3A701: NeStr
  loc_B3A703: BranchF loc_B3A709
  loc_B3A706: Branch loc_B3AFC7
  loc_B3A709: LitI2_Byte 0
  loc_B3A70B: PopTmpLdAd2 var_9E
  loc_B3A70E: Call ImporteTxt_Validate(from_stack_1v)
  loc_B3A713: FLdPr Me
  loc_B3A716: MemLdStr global_116
  loc_B3A719: LitStr vbNullString
  loc_B3A71C: NeStr
  loc_B3A71E: BranchF loc_B3A724
  loc_B3A721: Branch loc_B3AFC7
  loc_B3A724: FLdRfVar var_C8
  loc_B3A727: FLdPr Me
  loc_B3A72A: VCallAd Control_ID_ImporteTxt
  loc_B3A72D: FStAdFunc var_C4
  loc_B3A730: FLdPr var_C4
  loc_B3A733:  = Me.Text
  loc_B3A738: ILdRf var_C8
  loc_B3A73B: LitStr vbNullString
  loc_B3A73E: NeStr
  loc_B3A740: FFree1Str var_C8
  loc_B3A743: FFree1Ad var_C4
  loc_B3A746: BranchF loc_B3A79A
  loc_B3A749: FLdRfVar var_C8
  loc_B3A74C: FLdPr Me
  loc_B3A74F: VCallAd Control_ID_ImporteTxt
  loc_B3A752: FStAdFunc var_C4
  loc_B3A755: FLdPr var_C4
  loc_B3A758:  = Me.Text
  loc_B3A75D: LitStr " AND RepaImpu <= "
  loc_B3A760: LitI4 0
  loc_B3A765: LitI4 -1
  loc_B3A76A: LitI4 1
  loc_B3A76F: LitStr "."
  loc_B3A772: LitStr ","
  loc_B3A775: ILdRf var_C8
  loc_B3A778: CR8Str
  loc_B3A77A: CStrR8
  loc_B3A77C: FStStrNoPop var_CC
  loc_B3A77F: ImpAdCallI2 Replace(, , , , , )
  loc_B3A784: FStStrNoPop var_D0
  loc_B3A787: ConcatStr
  loc_B3A788: FStStr var_90
  loc_B3A78B: FFreeStr var_C8 = "": var_CC = ""
  loc_B3A794: FFree1Ad var_C4
  loc_B3A797: Branch loc_B3A7A0
  loc_B3A79A: LitStr vbNullString
  loc_B3A79D: FStStrCopy var_90
  loc_B3A7A0: FLdRfVar var_9E
  loc_B3A7A3: FLdPr Me
  loc_B3A7A6: VCallAd Control_ID_chkExcluirTransferidos
  loc_B3A7A9: FStAdFunc var_C4
  loc_B3A7AC: FLdPr var_C4
  loc_B3A7AF:  = Me.Value
  loc_B3A7B4: LitVarStr var_F0, " AND ResiDeve = 'No'"
  loc_B3A7B9: FStVarCopyObj var_100
  loc_B3A7BC: FLdRfVar var_100
  loc_B3A7BF: LitVarStr var_C0, vbNullString
  loc_B3A7C4: FStVarCopyObj var_E0
  loc_B3A7C7: FLdRfVar var_E0
  loc_B3A7CA: FLdI2 var_9E
  loc_B3A7CD: CI4UI1
  loc_B3A7CE: LitI4 0
  loc_B3A7D3: EqI4
  loc_B3A7D4: CVarBoolI2 var_B0
  loc_B3A7D8: FLdRfVar var_110
  loc_B3A7DB: ImpAdCallFPR4  = IIf(, , )
  loc_B3A7E0: FLdRfVar var_110
  loc_B3A7E3: CStrVarTmp
  loc_B3A7E4: FStStr var_94
  loc_B3A7E7: FFree1Ad var_C4
  loc_B3A7EA: FFreeVar var_B0 = "": var_E0 = "": var_100 = ""
  loc_B3A7F5: FLdRfVar var_9E
  loc_B3A7F8: FLdPr Me
  loc_B3A7FB: VCallAd Control_ID_chkExcluirPartidasExtra
  loc_B3A7FE: FStAdFunc var_C4
  loc_B3A801: FLdPr var_C4
  loc_B3A804:  = Me.Value
  loc_B3A809: LitVarStr var_F0, " AND Left(i.CodiPart,1) <> PaexPaco "
  loc_B3A80E: FStVarCopyObj var_100
  loc_B3A811: FLdRfVar var_100
  loc_B3A814: LitVarStr var_C0, vbNullString
  loc_B3A819: FStVarCopyObj var_E0
  loc_B3A81C: FLdRfVar var_E0
  loc_B3A81F: FLdI2 var_9E
  loc_B3A822: CI4UI1
  loc_B3A823: LitI4 0
  loc_B3A828: EqI4
  loc_B3A829: CVarBoolI2 var_B0
  loc_B3A82D: FLdRfVar var_110
  loc_B3A830: ImpAdCallFPR4  = IIf(, , )
  loc_B3A835: FLdRfVar var_110
  loc_B3A838: CStrVarTmp
  loc_B3A839: FStStr var_98
  loc_B3A83C: FFree1Ad var_C4
  loc_B3A83F: FFreeVar var_B0 = "": var_E0 = "": var_100 = ""
  loc_B3A84A: FLdPr Me
  loc_B3A84D: MemLdRfVar from_stack_1.global_76
  loc_B3A850: NewIfNullAd
  loc_B3A853: FStAd var_114 
  loc_B3A857: LitStr "Municipalidad de Guaymallén"
  loc_B3A85A: LitStr "Municipalidad de Guaymallén"
  loc_B3A85D: EqStr
  loc_B3A85F: BranchF loc_B3A86D
  loc_B3A862: LitStr "SET sql_mode = '';"
  loc_B3A865: FLdPr var_114
  loc_B3A868: Call clsbase.RedefineRS(from_stack_1v)
  loc_B3A86D: LitStr "DROP TEMPORARY TABLE IF EXISTS tmovi; CREATE TEMPORARY TABLE movi` ("
  loc_B3A870: LitStr " etaProv` varchar(70) NOT NULL DEFAULT '',"
  loc_B3A873: ConcatStr
  loc_B3A874: FStStrNoPop var_C8
  loc_B3A877: LitStr " ucuPers` bigint(11) unsigned NOT NULL DEFAULT '0',"
  loc_B3A87A: ConcatStr
  loc_B3A87B: FStStrNoPop var_CC
  loc_B3A87E: LitStr " ailPers` varchar(200) NOT NULL DEFAULT '',"
  loc_B3A881: ConcatStr
  loc_B3A882: FStStrNoPop var_D0
  loc_B3A885: LitStr " ecrPers` varchar(200) NOT NULL DEFAULT '',"
  loc_B3A888: ConcatStr
  loc_B3A889: FStStrNoPop var_118
  loc_B3A88C: LitStr " xorImpu` varchar(1000) NOT NULL DEFAULT '',"
  loc_B3A88F: ConcatStr
  loc_B3A890: FStStrNoPop var_11C
  loc_B3A893: LitStr " xpeImpu` varchar(200) NOT NULL DEFAULT '',"
  loc_B3A896: ConcatStr
  loc_B3A897: FStStrNoPop var_120
  loc_B3A89A: LitStr " umeFact` varchar(17) CHARACTER SET utf8 DEFAULT NULL,"
  loc_B3A89D: ConcatStr
  loc_B3A89E: FStStrNoPop var_124
  loc_B3A8A1: LitStr " efaDeve` date DEFAULT NULL,"
  loc_B3A8A4: ConcatStr
  loc_B3A8A5: FStStrNoPop var_128
  loc_B3A8A8: LitStr " es` varchar(7) CHARACTER SET utf8 DEFAULT NULL,"
  loc_B3A8AB: ConcatStr
  loc_B3A8AC: FStStrNoPop var_12C
  loc_B3A8AF: LitStr " eveImpu` decimal(33,2) DEFAULT NULL,"
  loc_B3A8B2: ConcatStr
  loc_B3A8B3: FStStrNoPop var_130
  loc_B3A8B6: LitStr " apaImpu` decimal(33,2) DEFAULT NULL,"
  loc_B3A8B9: ConcatStr
  loc_B3A8BA: FStStrNoPop var_134
  loc_B3A8BD: LitStr " esiDeve` varchar(2) CHARACTER SET utf8 NOT NULL DEFAULT '',"
  loc_B3A8C0: ConcatStr
  loc_B3A8C1: FStStrNoPop var_138
  loc_B3A8C4: LitStr " ormaPago` varchar(20) NOT NULL DEFAULT '',"
  loc_B3A8C7: ConcatStr
  loc_B3A8C8: FStStrNoPop var_13C
  loc_B3A8CB: LitStr " epaImpu` decimal(34,2) DEFAULT NULL,"
  loc_B3A8CE: ConcatStr
  loc_B3A8CF: FStStrNoPop var_140
  loc_B3A8D2: LitStr " ineaTxt` varchar(2000) NOT NULL DEFAULT ''"
  loc_B3A8D5: ConcatStr
  loc_B3A8D6: FStStrNoPop var_144
  loc_B3A8D9: LitStr ") ENGINE=InnoDB ;"
  loc_B3A8DC: ConcatStr
  loc_B3A8DD: FStStrNoPop var_148
  loc_B3A8E0: FLdPr var_114
  loc_B3A8E3: Call clsbase.RedefineRS(from_stack_1v)
  loc_B3A8E8: FFreeStr var_C8 = "": var_CC = "": var_D0 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = ""
  loc_B3A90B: FLdPr Me
  loc_B3A90E: VCallAd Control_ID_HastaMsk
  loc_B3A911: FStAdFunc var_14C
  loc_B3A914: FLdPr var_14C
  loc_B3A917: LateIdLdVar var_E0 DispID_15 0
  loc_B3A91E: PopAd
  loc_B3A920: FLdPr Me
  loc_B3A923: VCallAd Control_ID_CucuPersMsk
  loc_B3A926: FStAdFunc var_158
  loc_B3A929: FLdPr var_158
  loc_B3A92C: LateIdLdVar var_168 DispID_22 0
  loc_B3A933: PopAd
  loc_B3A935: FLdPr Me
  loc_B3A938: VCallAd Control_ID_CucuPersMsk
  loc_B3A93B: FStAdFunc var_170
  loc_B3A93E: FLdPr var_170
  loc_B3A941: LateIdLdVar var_180 DispID_22 0
  loc_B3A948: PopAd
  loc_B3A94A: LitStr "INSERT INTO tmovi"
  loc_B3A94D: LitStr " SELECT DetaProv, i.CucuPers, MailPers, DecrPers, Left( Group_concat(Distinct Exorimpu separator "", ""), 1000) ExorImpu, i.ExpeImpu, CAST(IFNULL(Concat(Left(NumeFact,3),' ',Substr(NumeFact,4,4),'-',Right(NumeFact,8)),'') AS CHAR) AS NumeFact, FefaDeve"
  loc_B3A950: ConcatStr
  loc_B3A951: FStStrNoPop var_C8
  loc_B3A954: LitStr ", Convert(Concat(Lpad(Month(FefaDeve),2,'0'),'-',Year(FefaDeve)),Char) Mes"
  loc_B3A957: ConcatStr
  loc_B3A958: FStStrNoPop var_CC
  loc_B3A95B: LitStr ", Sum(DeveImpu) DeveImpu, Sum(MapaImpu) MapaImpu"
  loc_B3A95E: ConcatStr
  loc_B3A95F: FStStrNoPop var_D0
  loc_B3A962: LitStr ", IF(Sum(ResiDeve)=0,'No','Si') ResiDeve"
  loc_B3A965: ConcatStr
  loc_B3A966: FStStrNoPop var_118
  loc_B3A969: LitStr ", IF(PainProv=0,'Cheque','Transferencia') FormaPago"
  loc_B3A96C: ConcatStr
  loc_B3A96D: FStStrNoPop var_11C
  loc_B3A970: LitStr ", Sum(DeveImpu)-Sum(MapaImpu) RepaImpu"
  loc_B3A973: ConcatStr
  loc_B3A974: FStStrNoPop var_120
  loc_B3A977: LitStr ", Concat( DetaProv,'|',i.CucuPers,'|',Replace(Sum(DeveImpu)-Sum(MapaImpu),'.',','),'|',MailPers ) LineaTxt"
  loc_B3A97A: ConcatStr
  loc_B3A97B: FStStrNoPop var_124
  loc_B3A97E: LitStr " FROM imputacion i"
  loc_B3A981: ConcatStr
  loc_B3A982: FStStrNoPop var_128
  loc_B3A985: LitStr " INNER JOIN proveedor ON proveedor.CucuPers = i.CucuPers"
  loc_B3A988: ConcatStr
  loc_B3A989: FStStrNoPop var_12C
  loc_B3A98C: LitStr " INNER JOIN infogov.persona ON persona.CucuPers = i.CucuPers"
  loc_B3A98F: ConcatStr
  loc_B3A990: FStStrNoPop var_130
  loc_B3A993: LitStr " INNER JOIN paraconta ON paraconta.PeriInfo = i.PeriInfo"
  loc_B3A996: ConcatStr
  loc_B3A997: FStStrNoPop var_134
  loc_B3A99A: LitStr " LEFT JOIN devengado ON devengado.PeriInfo = i.PeriInfo AND devengado.IdImpu = i.IdImpu"
  loc_B3A99D: ConcatStr
  loc_B3A99E: FStStrNoPop var_138
  loc_B3A9A1: LitStr " WHERE i.PeriInfo = "
  loc_B3A9A4: ConcatStr
  loc_B3A9A5: FStStrNoPop var_140
  loc_B3A9A8: FLdRfVar var_13C
  loc_B3A9AB: FLdPr Me
  loc_B3A9AE: VCallAd Control_ID_cboPeriodo
  loc_B3A9B1: FStAdFunc var_C4
  loc_B3A9B4: FLdPr var_C4
  loc_B3A9B7:  = Me.Text
  loc_B3A9BC: ILdRf var_13C
  loc_B3A9BF: ConcatStr
  loc_B3A9C0: FStStrNoPop var_144
  loc_B3A9C3: LitStr " AND FechImpu <= "
  loc_B3A9C6: ConcatStr
  loc_B3A9C7: FStStrNoPop var_148
  loc_B3A9CA: LitI4 1
  loc_B3A9CF: LitI4 1
  loc_B3A9D4: LitVarStr var_B0, "'yyyy-mm-dd'"
  loc_B3A9D9: FStVarCopyObj var_110
  loc_B3A9DC: FLdRfVar var_110
  loc_B3A9DF: FLdRfVar var_E0
  loc_B3A9E2: CStrVarTmp
  loc_B3A9E3: CVarStr var_100
  loc_B3A9E6: ImpAdCallI2 Format$(, )
  loc_B3A9EB: FStStrNoPop var_150
  loc_B3A9EE: ConcatStr
  loc_B3A9EF: FStStrNoPop var_154
  loc_B3A9F2: LitStr " AND (i.DeveImpu != 0 OR i.MapaImpu != 0)"
  loc_B3A9F5: ConcatStr
  loc_B3A9F6: CVarStr var_1C4
  loc_B3A9F9: LitVarStr var_F0, vbNullString
  loc_B3A9FE: FStVarCopyObj var_1A4
  loc_B3AA01: FLdRfVar var_1A4
  loc_B3AA04: LitStr " AND i.CucuPers = "
  loc_B3AA07: FLdRfVar var_180
  loc_B3AA0A: CStrVarTmp
  loc_B3AA0B: FStStrNoPop var_184
  loc_B3AA0E: ConcatStr
  loc_B3AA0F: CVarStr var_194
  loc_B3AA12: FLdRfVar var_168
  loc_B3AA15: CStrVarTmp
  loc_B3AA16: FStStrNoPop var_16C
  loc_B3AA19: LitStr vbNullString
  loc_B3AA1C: NeStr
  loc_B3AA1E: CVarBoolI2 var_C0
  loc_B3AA22: FLdRfVar var_1B4
  loc_B3AA25: ImpAdCallFPR4  = IIf(, , )
  loc_B3AA2A: FLdRfVar var_1B4
  loc_B3AA2D: ConcatVar var_1D4
  loc_B3AA31: ILdRf var_98
  loc_B3AA34: CVarStr var_1E4
  loc_B3AA37: ConcatVar var_1F4
  loc_B3AA3B: ILdRf var_9C
  loc_B3AA3E: CVarStr var_204
  loc_B3AA41: ConcatVar var_214
  loc_B3AA45: LitVarStr var_224, " GROUP BY i.CucuPers, i.ExpeImpu, i.NumeFact"
  loc_B3AA4A: ConcatVar var_234
  loc_B3AA4E: LitVarStr var_244, " HAVING RepaImpu <> 0"
  loc_B3AA53: ConcatVar var_254
  loc_B3AA57: ILdRf var_90
  loc_B3AA5A: CVarStr var_264
  loc_B3AA5D: ConcatVar var_274
  loc_B3AA61: ILdRf var_94
  loc_B3AA64: CVarStr var_284
  loc_B3AA67: ConcatVar var_294
  loc_B3AA6B: LitVarStr var_2A4, " ORDER BY DetaProv, ExpeImpu, DeveImpu;"
  loc_B3AA70: ConcatVar var_2B4
  loc_B3AA74: CStrVarVal var_2B8
  loc_B3AA78: FLdPr var_114
  loc_B3AA7B: Call clsbase.RedefineRS(from_stack_1v)
  loc_B3AA80: FFreeStr var_C8 = "": var_CC = "": var_D0 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_140 = "": var_13C = "": var_144 = "": var_148 = "": var_150 = "": var_154 = "": var_16C = "": var_184 = ""
  loc_B3AAAD: FFreeAd var_C4 = "": var_14C = "": var_158 = ""
  loc_B3AAB8: FFreeVar var_E0 = "": var_100 = "": var_110 = "": var_168 = "": var_180 = "": var_C0 = "": var_194 = "": var_1A4 = "": var_1C4 = "": var_1B4 = "": var_1D4 = "": var_1F4 = "": var_214 = "": var_234 = "": var_254 = "": var_274 = "": var_294 = ""
  loc_B3AADF: LitStr "Municipalidad de Guaymallén"
  loc_B3AAE2: LitStr "Municipalidad de Guaymallén"
  loc_B3AAE5: EqStr
  loc_B3AAE7: BranchF loc_B3AAF5
  loc_B3AAEA: LitStr "SET sql_mode = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION';"
  loc_B3AAED: FLdPr var_114
  loc_B3AAF0: Call clsbase.RedefineRS(from_stack_1v)
  loc_B3AAF5: FLdRfVar var_9E
  loc_B3AAF8: FLdPr Me
  loc_B3AAFB: VCallAd Control_ID_chkIncluirDebitos
  loc_B3AAFE: FStAdFunc var_C4
  loc_B3AB01: FLdPr var_C4
  loc_B3AB04:  = Me.Value
  loc_B3AB09: FLdI2 var_9E
  loc_B3AB0C: CI4UI1
  loc_B3AB0D: LitI4 1
  loc_B3AB12: EqI4
  loc_B3AB13: FFree1Ad var_C4
  loc_B3AB16: BranchF loc_B3AE3E
  loc_B3AB19: LitStr "Municipalidad de Guaymallén"
  loc_B3AB1C: LitStr "Municipalidad de Santa Rosa"
  loc_B3AB1F: EqStr
  loc_B3AB21: BranchF loc_B3ACB7
  loc_B3AB24: FLdPr Me
  loc_B3AB27: VCallAd Control_ID_HastaMsk
  loc_B3AB2A: FStAdFunc var_14C
  loc_B3AB2D: FLdPr var_14C
  loc_B3AB30: LateIdLdVar var_E0 DispID_15 0
  loc_B3AB37: PopAd
  loc_B3AB39: FLdPr Me
  loc_B3AB3C: VCallAd Control_ID_CucuPersMsk
  loc_B3AB3F: FStAdFunc var_158
  loc_B3AB42: FLdPr var_158
  loc_B3AB45: LateIdLdVar var_168 DispID_22 0
  loc_B3AB4C: PopAd
  loc_B3AB4E: FLdPr Me
  loc_B3AB51: VCallAd Control_ID_CucuPersMsk
  loc_B3AB54: FStAdFunc var_170
  loc_B3AB57: FLdPr var_170
  loc_B3AB5A: LateIdLdVar var_180 DispID_22 0
  loc_B3AB61: PopAd
  loc_B3AB63: LitStr "INSERT INTO tmovi"
  loc_B3AB66: LitStr " SELECT DetaProv, d.CucuPers, MailPers, DecrPers, Group_concat(Distinct d.ExorImpu) ExorImpu, CONCAT(d.ExpeImpu,' (Déb.)') ExpeImpu, d.NumeFact, FechDebi"
  loc_B3AB69: ConcatStr
  loc_B3AB6A: FStStrNoPop var_C8
  loc_B3AB6D: LitStr ", Convert(Concat(Lpad(Month(FechDebi),2,'0'),'-',Year(FechDebi)),Char) Mes"
  loc_B3AB70: ConcatStr
  loc_B3AB71: FStStrNoPop var_CC
  loc_B3AB74: LitStr ", ImpoDebi AS DeveImpu, Sum(IF(ImpoImpu IS NULL || l.NumeOrpa = 0,0,ImpoImpu)) AS MapaImpu, 'No'"
  loc_B3AB77: ConcatStr
  loc_B3AB78: FStStrNoPop var_D0
  loc_B3AB7B: LitStr ", IF(PainProv=0,'Cheque','Transferencia') FormaPago"
  loc_B3AB7E: ConcatStr
  loc_B3AB7F: FStStrNoPop var_118
  loc_B3AB82: LitStr ", ImpoDebi-Sum(IF(ImpoImpu IS NULL || l.NumeOrpa = 0,0,ImpoImpu)) RepaImpu"
  loc_B3AB85: ConcatStr
  loc_B3AB86: FStStrNoPop var_11C
  loc_B3AB89: LitStr ", CONCAT(DetaProv,'|',d.CucuPers,'|',REPLACE(ImpoDebi- SUM(IF(ImpoImpu IS NULL || l.NumeOrpa = 0,0,ImpoImpu)),'.',','),'|',MailPers) LineaTxt"
  loc_B3AB8C: ConcatStr
  loc_B3AB8D: FStStrNoPop var_120
  loc_B3AB90: LitStr " FROM debito d USE INDEX (idxdebi02)"
  loc_B3AB93: ConcatStr
  loc_B3AB94: FStStrNoPop var_124
  loc_B3AB97: LitStr " INNER JOIN proveedor ON proveedor.CucuPers = d.CucuPers"
  loc_B3AB9A: ConcatStr
  loc_B3AB9B: FStStrNoPop var_128
  loc_B3AB9E: LitStr " INNER JOIN infogov.persona ON persona.CucuPers = d.CucuPers"
  loc_B3ABA1: ConcatStr
  loc_B3ABA2: FStStrNoPop var_12C
  loc_B3ABA5: LitStr " LEFT JOIN liquidadeta ld USE INDEX (idxlide02) ON ld.PeriInfo = d.PeriInfo AND ld.NumeDebi = d.NumeDebi AND (SELECT FeanLiqu FROM liquidacion l WHERE l.PeriInfo = ld.PeriInfo AND l.ExpeImpu = ld.ExpeImpu AND l.NumeLiqu = ld.NumeLiqu) IS NULL"
  loc_B3ABA8: ConcatStr
  loc_B3ABA9: FStStrNoPop var_130
  loc_B3ABAC: LitStr " LEFT JOIN liquidacion l ON l.PeriInfo = ld.PeriInfo AND l.ExpeImpu = ld.ExpeImpu AND l.NumeLiqu = ld.NumeLiqu"
  loc_B3ABAF: ConcatStr
  loc_B3ABB0: FStStrNoPop var_134
  loc_B3ABB3: LitStr " WHERE d.PeriInfo = "
  loc_B3ABB6: ConcatStr
  loc_B3ABB7: FStStrNoPop var_13C
  loc_B3ABBA: FLdRfVar var_138
  loc_B3ABBD: FLdPr Me
  loc_B3ABC0: VCallAd Control_ID_cboPeriodo
  loc_B3ABC3: FStAdFunc var_C4
  loc_B3ABC6: FLdPr var_C4
  loc_B3ABC9:  = Me.Text
  loc_B3ABCE: ILdRf var_138
  loc_B3ABD1: ConcatStr
  loc_B3ABD2: FStStrNoPop var_140
  loc_B3ABD5: LitStr " AND d.FeanDebi IS NULL"
  loc_B3ABD8: ConcatStr
  loc_B3ABD9: FStStrNoPop var_144
  loc_B3ABDC: LitStr " AND FechDebi <= "
  loc_B3ABDF: ConcatStr
  loc_B3ABE0: FStStrNoPop var_148
  loc_B3ABE3: LitI4 1
  loc_B3ABE8: LitI4 1
  loc_B3ABED: LitVarStr var_B0, "'yyyy-mm-dd'"
  loc_B3ABF2: FStVarCopyObj var_110
  loc_B3ABF5: FLdRfVar var_110
  loc_B3ABF8: FLdRfVar var_E0
  loc_B3ABFB: CStrVarTmp
  loc_B3ABFC: CVarStr var_100
  loc_B3ABFF: ImpAdCallI2 Format$(, )
  loc_B3AC04: FStStrNoPop var_150
  loc_B3AC07: ConcatStr
  loc_B3AC08: CVarStr var_1C4
  loc_B3AC0B: LitVarStr var_F0, vbNullString
  loc_B3AC10: FStVarCopyObj var_1A4
  loc_B3AC13: FLdRfVar var_1A4
  loc_B3AC16: LitStr " AND d.CucuPers = "
  loc_B3AC19: FLdRfVar var_180
  loc_B3AC1C: CStrVarTmp
  loc_B3AC1D: FStStrNoPop var_16C
  loc_B3AC20: ConcatStr
  loc_B3AC21: CVarStr var_194
  loc_B3AC24: FLdRfVar var_168
  loc_B3AC27: CStrVarTmp
  loc_B3AC28: FStStrNoPop var_154
  loc_B3AC2B: LitStr vbNullString
  loc_B3AC2E: NeStr
  loc_B3AC30: CVarBoolI2 var_C0
  loc_B3AC34: FLdRfVar var_1B4
  loc_B3AC37: ImpAdCallFPR4  = IIf(, , )
  loc_B3AC3C: FLdRfVar var_1B4
  loc_B3AC3F: ConcatVar var_1D4
  loc_B3AC43: LitVarStr var_1E4, " GROUP BY d.NumeDebi"
  loc_B3AC48: ConcatVar var_1F4
  loc_B3AC4C: LitVarStr var_204, " HAVING RepaImpu > 0;"
  loc_B3AC51: ConcatVar var_214
  loc_B3AC55: CStrVarVal var_184
  loc_B3AC59: FLdPr var_114
  loc_B3AC5C: Call clsbase.RedefineRS(from_stack_1v)
  loc_B3AC61: FFreeStr var_C8 = "": var_CC = "": var_D0 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_13C = "": var_138 = "": var_140 = "": var_144 = "": var_148 = "": var_150 = "": var_154 = "": var_16C = ""
  loc_B3AC8C: FFreeAd var_C4 = "": var_14C = "": var_158 = ""
  loc_B3AC97: FFreeVar var_E0 = "": var_100 = "": var_110 = "": var_168 = "": var_180 = "": var_C0 = "": var_194 = "": var_1A4 = "": var_1C4 = "": var_1B4 = "": var_1D4 = "": var_1F4 = ""
  loc_B3ACB4: Branch loc_B3AE3E
  loc_B3ACB7: FLdPr Me
  loc_B3ACBA: VCallAd Control_ID_HastaMsk
  loc_B3ACBD: FStAdFunc var_14C
  loc_B3ACC0: FLdPr var_14C
  loc_B3ACC3: LateIdLdVar var_E0 DispID_15 0
  loc_B3ACCA: PopAd
  loc_B3ACCC: FLdPr Me
  loc_B3ACCF: VCallAd Control_ID_CucuPersMsk
  loc_B3ACD2: FStAdFunc var_158
  loc_B3ACD5: FLdPr var_158
  loc_B3ACD8: LateIdLdVar var_168 DispID_22 0
  loc_B3ACDF: PopAd
  loc_B3ACE1: FLdPr Me
  loc_B3ACE4: VCallAd Control_ID_CucuPersMsk
  loc_B3ACE7: FStAdFunc var_170
  loc_B3ACEA: FLdPr var_170
  loc_B3ACED: LateIdLdVar var_180 DispID_22 0
  loc_B3ACF4: PopAd
  loc_B3ACF6: LitStr "INSERT INTO tmovi"
  loc_B3ACF9: LitStr " SELECT DetaProv, d.CucuPers, MailPers, DecrPers, Group_concat(Distinct d.ExorImpu) ExorImpu, CONCAT(d.ExpeImpu,' (Déb.)') ExpeImpu, d.NumeFact, FechDebi"
  loc_B3ACFC: ConcatStr
  loc_B3ACFD: FStStrNoPop var_C8
  loc_B3AD00: LitStr ", Convert(Concat(Lpad(Month(FechDebi),2,'0'),'-',Year(FechDebi)),Char) Mes"
  loc_B3AD03: ConcatStr
  loc_B3AD04: FStStrNoPop var_CC
  loc_B3AD07: LitStr ", ImpoDebi AS DeveImpu, Sum(IF(ImpoImpu IS NULL,0,ImpoImpu)) AS MapaImpu, 'No'"
  loc_B3AD0A: ConcatStr
  loc_B3AD0B: FStStrNoPop var_D0
  loc_B3AD0E: LitStr ", IF(PainProv=0,'Cheque','Transferencia') FormaPago"
  loc_B3AD11: ConcatStr
  loc_B3AD12: FStStrNoPop var_118
  loc_B3AD15: LitStr ", ImpoDebi-Sum(IF(ImpoImpu IS NULL,0,ImpoImpu)) RepaImpu"
  loc_B3AD18: ConcatStr
  loc_B3AD19: FStStrNoPop var_11C
  loc_B3AD1C: LitStr ", CONCAT(DetaProv,'|',d.CucuPers,'|',REPLACE(ImpoDebi- SUM(IF(ImpoImpu IS NULL,0,ImpoImpu)),'.',','),'|',MailPers) LineaTxt"
  loc_B3AD1F: ConcatStr
  loc_B3AD20: FStStrNoPop var_120
  loc_B3AD23: LitStr " FROM debito d USE INDEX (idxdebi02)"
  loc_B3AD26: ConcatStr
  loc_B3AD27: FStStrNoPop var_124
  loc_B3AD2A: LitStr " INNER JOIN proveedor ON proveedor.CucuPers = d.CucuPers"
  loc_B3AD2D: ConcatStr
  loc_B3AD2E: FStStrNoPop var_128
  loc_B3AD31: LitStr " INNER JOIN infogov.persona ON persona.CucuPers = d.CucuPers"
  loc_B3AD34: ConcatStr
  loc_B3AD35: FStStrNoPop var_12C
  loc_B3AD38: LitStr " LEFT JOIN liquidadeta ld USE INDEX (idxlide02) ON ld.PeriInfo = d.PeriInfo AND ld.NumeDebi = d.NumeDebi AND (SELECT FeanLiqu FROM liquidacion l WHERE l.PeriInfo = ld.PeriInfo AND l.ExpeImpu = ld.ExpeImpu AND l.NumeLiqu = ld.NumeLiqu) IS NULL"
  loc_B3AD3B: ConcatStr
  loc_B3AD3C: FStStrNoPop var_130
  loc_B3AD3F: LitStr " WHERE d.PeriInfo = "
  loc_B3AD42: ConcatStr
  loc_B3AD43: FStStrNoPop var_138
  loc_B3AD46: FLdRfVar var_134
  loc_B3AD49: FLdPr Me
  loc_B3AD4C: VCallAd Control_ID_cboPeriodo
  loc_B3AD4F: FStAdFunc var_C4
  loc_B3AD52: FLdPr var_C4
  loc_B3AD55:  = Me.Text
  loc_B3AD5A: ILdRf var_134
  loc_B3AD5D: ConcatStr
  loc_B3AD5E: FStStrNoPop var_13C
  loc_B3AD61: LitStr " AND d.FeanDebi IS NULL"
  loc_B3AD64: ConcatStr
  loc_B3AD65: FStStrNoPop var_140
  loc_B3AD68: LitStr " AND FechDebi <= "
  loc_B3AD6B: ConcatStr
  loc_B3AD6C: FStStrNoPop var_144
  loc_B3AD6F: LitI4 1
  loc_B3AD74: LitI4 1
  loc_B3AD79: LitVarStr var_B0, "'yyyy-mm-dd'"
  loc_B3AD7E: FStVarCopyObj var_110
  loc_B3AD81: FLdRfVar var_110
  loc_B3AD84: FLdRfVar var_E0
  loc_B3AD87: CStrVarTmp
  loc_B3AD88: CVarStr var_100
  loc_B3AD8B: ImpAdCallI2 Format$(, )
  loc_B3AD90: FStStrNoPop var_148
  loc_B3AD93: ConcatStr
  loc_B3AD94: CVarStr var_1C4
  loc_B3AD97: LitVarStr var_F0, vbNullString
  loc_B3AD9C: FStVarCopyObj var_1A4
  loc_B3AD9F: FLdRfVar var_1A4
  loc_B3ADA2: LitStr " AND d.CucuPers = "
  loc_B3ADA5: FLdRfVar var_180
  loc_B3ADA8: CStrVarTmp
  loc_B3ADA9: FStStrNoPop var_154
  loc_B3ADAC: ConcatStr
  loc_B3ADAD: CVarStr var_194
  loc_B3ADB0: FLdRfVar var_168
  loc_B3ADB3: CStrVarTmp
  loc_B3ADB4: FStStrNoPop var_150
  loc_B3ADB7: LitStr vbNullString
  loc_B3ADBA: NeStr
  loc_B3ADBC: CVarBoolI2 var_C0
  loc_B3ADC0: FLdRfVar var_1B4
  loc_B3ADC3: ImpAdCallFPR4  = IIf(, , )
  loc_B3ADC8: FLdRfVar var_1B4
  loc_B3ADCB: ConcatVar var_1D4
  loc_B3ADCF: LitVarStr var_1E4, " GROUP BY d.NumeDebi"
  loc_B3ADD4: ConcatVar var_1F4
  loc_B3ADD8: LitVarStr var_204, " HAVING RepaImpu > 0;"
  loc_B3ADDD: ConcatVar var_214
  loc_B3ADE1: CStrVarVal var_16C
  loc_B3ADE5: FLdPr var_114
  loc_B3ADE8: Call clsbase.RedefineRS(from_stack_1v)
  loc_B3ADED: FFreeStr var_C8 = "": var_CC = "": var_D0 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_138 = "": var_134 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_150 = "": var_154 = ""
  loc_B3AE16: FFreeAd var_C4 = "": var_14C = "": var_158 = ""
  loc_B3AE21: FFreeVar var_E0 = "": var_100 = "": var_110 = "": var_168 = "": var_180 = "": var_C0 = "": var_194 = "": var_1A4 = "": var_1C4 = "": var_1B4 = "": var_1D4 = "": var_1F4 = ""
  loc_B3AE3E: LitStr "SELECT * FROM tmovi"
  loc_B3AE41: LitStr " ORDER BY DetaProv, ExpeImpu, DeveImpu"
  loc_B3AE44: ConcatStr
  loc_B3AE45: FStStrNoPop var_C8
  loc_B3AE48: FLdPr var_114
  loc_B3AE4B: Call clsbase.RedefineRS(from_stack_1v)
  loc_B3AE50: FFree1Str var_C8
  loc_B3AE53: FLdRfVar var_2BC
  loc_B3AE56: FLdPr var_114
  loc_B3AE59: from_stack_1 = clsbase.RecordCount
  loc_B3AE5E: ILdRf var_2BC
  loc_B3AE61: LitI4 0
  loc_B3AE66: EqI4
  loc_B3AE67: BranchF loc_B3AE7A
  loc_B3AE6A: LitI4 0
  loc_B3AE6F: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_B3AE72: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B3AE77: Branch loc_B3AFC7
  loc_B3AE7A: LitI4 0
  loc_B3AE7F: FLdRfVar var_2BC
  loc_B3AE82: FLdPr var_114
  loc_B3AE85: from_stack_1 = clsbase.RecordCount
  loc_B3AE8A: ILdRf var_2BC
  loc_B3AE8D: FLdPr Me
  loc_B3AE90: MemLdRfVar from_stack_1.global_100
  loc_B3AE93: Redim
  loc_B3AE9D: LitI2_Byte 0
  loc_B3AE9F: LitVar_Missing var_E0
  loc_B3AEA2: LitI2_Byte &HFF
  loc_B3AEA4: LitVarI2 var_B0, 0
  loc_B3AEA9: PopAdLdVar
  loc_B3AEAA: FLdPr Me
  loc_B3AEAD: MemLdRfVar from_stack_1.global_112
  loc_B3AEB0: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B3AEB5: FFree1Var var_E0 = ""
  loc_B3AEB8: LitI2_Byte 0
  loc_B3AEBA: FLdPr Me
  loc_B3AEBD: MemStI2 global_104
  loc_B3AEC0: Call Proc_225_35_A2A2EC()
  loc_B3AEC5: FLdRfVar var_9E
  loc_B3AEC8: FLdPr var_114
  loc_B3AECB: from_stack_1 = clsbase.EOF
  loc_B3AED0: FLdI2 var_9E
  loc_B3AED3: NotI4
  loc_B3AED4: BranchF loc_B3AF42
  loc_B3AED7: FLdRfVar var_E0
  loc_B3AEDA: FLdRfVar var_158
  loc_B3AEDD: LitVarStr var_B0, "CucuPers"
  loc_B3AEE2: PopAdLdVar
  loc_B3AEE3: FLdRfVar var_14C
  loc_B3AEE6: FLdRfVar var_C4
  loc_B3AEE9: FLdPr var_114
  loc_B3AEEC: from_stack_1v = clsbase.RsFrmGet()
  loc_B3AEF1: FLdPr var_C4
  loc_B3AEF4:  = Me.Fields
  loc_B3AEF9: FLdPr var_14C
  loc_B3AEFC: from_stack_2 = Me.Item(from_stack_1)
  loc_B3AF01: FLdPr var_158
  loc_B3AF04:  = Me.Value
  loc_B3AF09: FLdRfVar var_E0
  loc_B3AF0C: FLdPr Me
  loc_B3AF0F: MemLdI2 global_104
  loc_B3AF12: CI4UI1
  loc_B3AF13: FLdPr Me
  loc_B3AF16: MemLdStr global_100
  loc_B3AF19: Ary1LdPr
  loc_B3AF1A: MemLdStr global_0
  loc_B3AF1D: CVarStr var_C0
  loc_B3AF20: HardType
  loc_B3AF21: NeVarBool
  loc_B3AF23: FFreeAd var_C4 = "": var_14C = ""
  loc_B3AF2C: FFree1Var var_E0 = ""
  loc_B3AF2F: BranchF loc_B3AF3A
  loc_B3AF32: Call Proc_225_35_A2A2EC()
  loc_B3AF37: Branch loc_B3AF3F
  loc_B3AF3A: Call Proc_225_36_AB6434()
  loc_B3AF3F: Branch loc_B3AEC5
  loc_B3AF42: LitNothing
  loc_B3AF44: FStAd var_114 
  loc_B3AF48: LitI2_Byte 1
  loc_B3AF4A: FLdPr Me
  loc_B3AF4D: MemLdRfVar from_stack_1.global_104
  loc_B3AF50: FLdPr Me
  loc_B3AF53: MemLdStr global_100
  loc_B3AF56: LitI2_Byte 1
  loc_B3AF58: FnUBound
  loc_B3AF5A: CI2I4
  loc_B3AF5B: ForI2 var_2C0
  loc_B3AF61: LitI2_Byte 0
  loc_B3AF63: FLdPr Me
  loc_B3AF66: MemLdRfVar from_stack_1.global_112
  loc_B3AF69: CVarRef
  loc_B3AF6E: LitI2_Byte &HFF
  loc_B3AF70: FLdPr Me
  loc_B3AF73: MemLdI2 global_104
  loc_B3AF76: CI4UI1
  loc_B3AF77: FLdPr Me
  loc_B3AF7A: MemLdStr global_100
  loc_B3AF7D: Ary1LdPr
  loc_B3AF7E: MemLdStr global_24
  loc_B3AF81: CVarStr var_B0
  loc_B3AF84: PopAdLdVar
  loc_B3AF85: FLdRfVar var_88
  loc_B3AF88: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B3AF8D: FLdPr Me
  loc_B3AF90: MemLdI2 global_104
  loc_B3AF93: CI4UI1
  loc_B3AF94: FLdPr Me
  loc_B3AF97: MemLdStr global_100
  loc_B3AF9A: Ary1LdPr
  loc_B3AF9B: MemLdStr global_16
  loc_B3AF9E: LitI2_Byte 1
  loc_B3AFA0: FnUBound
  loc_B3AFA2: CI2I4
  loc_B3AFA3: FLdPr Me
  loc_B3AFA6: MemLdI2 global_104
  loc_B3AFA9: CI4UI1
  loc_B3AFAA: FLdPr Me
  loc_B3AFAD: MemLdStr global_100
  loc_B3AFB0: Ary1LdPr
  loc_B3AFB1: MemStI2 global_20
  loc_B3AFB4: FLdPr Me
  loc_B3AFB7: MemLdRfVar from_stack_1.global_104
  loc_B3AFBA: NextI2 var_2C0, loc_B3AF61
  loc_B3AFBF: LitI2_Byte &HFF
  loc_B3AFC1: FLdPr Me
  loc_B3AFC4: MemStI2 bGenerado
  loc_B3AFC7: LitI4 0
  loc_B3AFCC: CI2I4
  loc_B3AFCD: FLdPr Me
  loc_B3AFD0: Me.MousePointer = from_stack_1
  loc_B3AFD5: LitVarStr var_B0, vbNullString
  loc_B3AFDA: PopAdLdVar
  loc_B3AFDB: FLdPr Me
  loc_B3AFDE: VCallAd Control_ID_statusBar
  loc_B3AFE1: FStAdFunc var_C4
  loc_B3AFE4: FLdPr var_C4
  loc_B3AFE7: LateIdSt
  loc_B3AFEC: FFree1Ad var_C4
  loc_B3AFEF: ExitProcHresult
End Sub

Public Sub GeneraXLS() '96CEF4
  'Data Table: 4C7AA8
  loc_96CECC: LitI2_Byte &HFF
  loc_96CECE: FLdPr Me
  loc_96CED1: MemStI2 global_120
  loc_96CED4: LitI2_Byte 0
  loc_96CED6: FLdPr Me
  loc_96CED9: MemStI2 bLogos
  loc_96CEDC: Call GeneraHTML()
  loc_96CEE1: LitI2_Byte &HFF
  loc_96CEE3: FLdPr Me
  loc_96CEE6: MemStI2 bLogos
  loc_96CEE9: LitI2_Byte 0
  loc_96CEEB: FLdPr Me
  loc_96CEEE: MemStI2 global_120
  loc_96CEF1: ExitProcHresult
End Sub

Public Sub GeneraTXT() '9B9EA0
  'Data Table: 4C7AA8
  loc_9B9DEC: FLdRfVar var_88
  loc_9B9DEF: LitI2_Byte 0
  loc_9B9DF1: LitI2_Byte &HFF
  loc_9B9DF3: ImpAdLdI4 MemVar_C3D05C
  loc_9B9DF6: FLdPr Me
  loc_9B9DF9: MemLdRfVar from_stack_1.global_80
  loc_9B9DFC: NewIfNullPr IFileSystem3
  loc_9B9DFF: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_9B9E04: ILdRf var_88
  loc_9B9E07: FLdPr Me
  loc_9B9E0A: MemStVarAd
  loc_9B9E0E: FFree1Ad var_88
  loc_9B9E11: FLdPr Me
  loc_9B9E14: MemLdRfVar from_stack_1.global_76
  loc_9B9E17: NewIfNullAd
  loc_9B9E1A: FStAd var_8C 
  loc_9B9E1E: FLdPr var_8C
  loc_9B9E21: Call clsbase.MoveFirst()
  loc_9B9E26: FLdRfVar var_8E
  loc_9B9E29: FLdPr var_8C
  loc_9B9E2C: from_stack_1 = clsbase.EOF
  loc_9B9E31: FLdI2 var_8E
  loc_9B9E34: NotI4
  loc_9B9E35: BranchF loc_9B9E8A
  loc_9B9E38: FLdRfVar var_A8
  loc_9B9E3B: LitVarStr var_A4, "LineaTxt"
  loc_9B9E40: PopAdLdVar
  loc_9B9E41: FLdRfVar var_94
  loc_9B9E44: FLdRfVar var_88
  loc_9B9E47: FLdPr var_8C
  loc_9B9E4A: from_stack_1v = clsbase.RsFrmGet()
  loc_9B9E4F: FLdPr var_88
  loc_9B9E52:  = Me.Fields
  loc_9B9E57: FLdPr var_94
  loc_9B9E5A: from_stack_2 = Me.Item(from_stack_1)
  loc_9B9E5F: FLdZeroAd var_A8
  loc_9B9E62: CVarAd
  loc_9B9E66: PopAdLdVar
  loc_9B9E67: FLdPr Me
  loc_9B9E6A: MemLdRfVar from_stack_1.global_84
  loc_9B9E6D: LdPrVar
  loc_9B9E6F: LateMemCall
  loc_9B9E75: FFreeAd var_88 = ""
  loc_9B9E7C: FFree1Var var_B8 = ""
  loc_9B9E7F: FLdPr var_8C
  loc_9B9E82: Call clsbase.MoveSiguiente()
  loc_9B9E87: Branch loc_9B9E26
  loc_9B9E8A: LitNothing
  loc_9B9E8C: FStAd var_8C 
  loc_9B9E90: FLdPr Me
  loc_9B9E93: MemLdRfVar from_stack_1.global_84
  loc_9B9E96: LdPrVar
  loc_9B9E98: LateMemCall
  loc_9B9E9E: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'BAA83C
  'Data Table: 4C7AA8
  loc_BA98AC: FLdRfVar var_88
  loc_BA98AF: LitI2_Byte 0
  loc_BA98B1: LitI2_Byte &HFF
  loc_BA98B3: ImpAdLdI4 MemVar_C3D83C
  loc_BA98B6: FLdPr Me
  loc_BA98B9: MemLdRfVar from_stack_1.global_80
  loc_BA98BC: NewIfNullPr IFileSystem3
  loc_BA98BF: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_BA98C4: ILdRf var_88
  loc_BA98C7: FLdPr Me
  loc_BA98CA: MemStVarAd
  loc_BA98CE: FFree1Ad var_88
  loc_BA98D1: Call Proc_225_37_ACCB0C()
  loc_BA98D6: FLdPr Me
  loc_BA98D9: MemLdI2 global_120
  loc_BA98DC: BranchF loc_BA9F9E
  loc_BA98DF: FLdRfVar var_8A
  loc_BA98E2: FLdPr Me
  loc_BA98E5: VCallAd Control_ID_chkOcultarImporte
  loc_BA98E8: FStAdFunc var_88
  loc_BA98EB: FLdPr var_88
  loc_BA98EE:  = Me.Value
  loc_BA98F3: FLdI2 var_8A
  loc_BA98F6: CI4UI1
  loc_BA98F7: LitI4 0
  loc_BA98FC: EqI4
  loc_BA98FD: FFree1Ad var_88
  loc_BA9900: BranchF loc_BA9C5E
  loc_BA9903: LitI2_Byte 1
  loc_BA9905: FLdPr Me
  loc_BA9908: MemLdRfVar from_stack_1.global_104
  loc_BA990B: FLdPr Me
  loc_BA990E: MemLdStr global_100
  loc_BA9911: LitI2_Byte 1
  loc_BA9913: FnUBound
  loc_BA9915: CI2I4
  loc_BA9916: ForI2 var_8E
  loc_BA991C: LitI2_Byte 1
  loc_BA991E: FLdPr Me
  loc_BA9921: MemLdRfVar from_stack_1.global_108
  loc_BA9924: FLdPr Me
  loc_BA9927: MemLdI2 global_104
  loc_BA992A: CI4UI1
  loc_BA992B: FLdPr Me
  loc_BA992E: MemLdStr global_100
  loc_BA9931: Ary1LdPr
  loc_BA9932: MemLdStr global_16
  loc_BA9935: LitI2_Byte 1
  loc_BA9937: FnUBound
  loc_BA9939: CI2I4
  loc_BA993A: ForI2 var_92
  loc_BA9940: LitVarStr var_A4, "    <tr valign=""top"" class=""LineaDato"">"
  loc_BA9945: PopAdLdVar
  loc_BA9946: FLdPr Me
  loc_BA9949: MemLdRfVar from_stack_1.htmFile
  loc_BA994C: LdPrVar
  loc_BA994E: LateMemCall
  loc_BA9954: LitStr "<td rowspan=""1"" align=""left"">"
  loc_BA9957: FLdPr Me
  loc_BA995A: MemLdI2 global_104
  loc_BA995D: CI4UI1
  loc_BA995E: FLdPr Me
  loc_BA9961: MemLdStr global_100
  loc_BA9964: Ary1LdPr
  loc_BA9965: MemLdStr global_4
  loc_BA9968: ConcatStr
  loc_BA9969: FStStrNoPop var_B8
  loc_BA996C: LitStr "</td>"
  loc_BA996F: ConcatStr
  loc_BA9970: CVarStr var_C8
  loc_BA9973: PopAdLdVar
  loc_BA9974: FLdPr Me
  loc_BA9977: MemLdRfVar from_stack_1.htmFile
  loc_BA997A: LdPrVar
  loc_BA997C: LateMemCall
  loc_BA9982: FFree1Str var_B8
  loc_BA9985: FFree1Var var_C8 = ""
  loc_BA9988: LitStr "<td rowspan=""1"" align=""right"">"
  loc_BA998B: FLdPr Me
  loc_BA998E: MemLdI2 global_104
  loc_BA9991: CI4UI1
  loc_BA9992: FLdPr Me
  loc_BA9995: MemLdStr global_100
  loc_BA9998: Ary1LdPr
  loc_BA9999: MemLdStr global_0
  loc_BA999C: ConcatStr
  loc_BA999D: FStStrNoPop var_B8
  loc_BA99A0: LitStr "</td>"
  loc_BA99A3: ConcatStr
  loc_BA99A4: CVarStr var_C8
  loc_BA99A7: PopAdLdVar
  loc_BA99A8: FLdPr Me
  loc_BA99AB: MemLdRfVar from_stack_1.htmFile
  loc_BA99AE: LdPrVar
  loc_BA99B0: LateMemCall
  loc_BA99B6: FFree1Str var_B8
  loc_BA99B9: FFree1Var var_C8 = ""
  loc_BA99BC: LitVarStr var_A4, "<td rowspan=""1"" align=""left"">&nbsp;</td>"
  loc_BA99C1: PopAdLdVar
  loc_BA99C2: FLdPr Me
  loc_BA99C5: MemLdRfVar from_stack_1.htmFile
  loc_BA99C8: LdPrVar
  loc_BA99CA: LateMemCall
  loc_BA99D0: FLdPr Me
  loc_BA99D3: MemLdI2 global_108
  loc_BA99D6: CI4UI1
  loc_BA99D7: FLdPr Me
  loc_BA99DA: MemLdI2 global_104
  loc_BA99DD: CI4UI1
  loc_BA99DE: FLdPr Me
  loc_BA99E1: MemLdStr global_100
  loc_BA99E4: AryLock
  loc_BA99E7: Ary1LdPr
  loc_BA99E8: MemLdStr global_16
  loc_BA99EB: AryLock
  loc_BA99EE: Ary1LdRf
  loc_BA99EF: FStR4 var_D4
  loc_BA99F2: LitI4 0
  loc_BA99F7: LitI4 0
  loc_BA99FC: LitI2_Byte 0
  loc_BA99FE: LitStr "left"
  loc_BA9A01: FMemLdR4 var_D4(0)
  loc_BA9A06: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BA9A0B: CVarStr var_C8
  loc_BA9A0E: PopAdLdVar
  loc_BA9A0F: FLdPr Me
  loc_BA9A12: MemLdRfVar from_stack_1.htmFile
  loc_BA9A15: LdPrVar
  loc_BA9A17: LateMemCall
  loc_BA9A1D: FFree1Var var_C8 = ""
  loc_BA9A20: LitI4 0
  loc_BA9A25: LitI4 0
  loc_BA9A2A: LitI2_Byte 0
  loc_BA9A2C: LitStr "left"
  loc_BA9A2F: FMemLdR4 var_D4(4)
  loc_BA9A34: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BA9A39: CVarStr var_C8
  loc_BA9A3C: PopAdLdVar
  loc_BA9A3D: FLdPr Me
  loc_BA9A40: MemLdRfVar from_stack_1.htmFile
  loc_BA9A43: LdPrVar
  loc_BA9A45: LateMemCall
  loc_BA9A4B: FFree1Var var_C8 = ""
  loc_BA9A4E: LitVarStr var_104, "<td nowrap align=""left"">"
  loc_BA9A53: FMemLdRf unk_4C79D5
  loc_BA9A58: CVarRef
  loc_BA9A5D: LitVarStr var_B4, "&nbsp;"
  loc_BA9A62: FStVarCopyObj var_C8
  loc_BA9A65: FLdRfVar var_C8
  loc_BA9A68: FMemLdR4 var_D4(8)
  loc_BA9A6D: LitStr vbNullString
  loc_BA9A70: EqStr
  loc_BA9A72: CVarBoolI2 var_A4
  loc_BA9A76: FLdRfVar var_F4
  loc_BA9A79: ImpAdCallFPR4  = IIf(, , )
  loc_BA9A7E: FLdRfVar var_F4
  loc_BA9A81: ConcatVar var_114
  loc_BA9A85: LitVarStr var_124, "</td>"
  loc_BA9A8A: ConcatVar var_134
  loc_BA9A8E: PopAdLdVar
  loc_BA9A8F: FLdPr Me
  loc_BA9A92: MemLdRfVar from_stack_1.htmFile
  loc_BA9A95: LdPrVar
  loc_BA9A97: LateMemCall
  loc_BA9A9D: FFreeVar var_A4 = "": var_C8 = "": var_F4 = "": var_114 = ""
  loc_BA9AAA: LitI4 0
  loc_BA9AAF: LitI4 0
  loc_BA9AB4: LitI2_Byte 0
  loc_BA9AB6: LitStr "right"
  loc_BA9AB9: FMemLdR4 var_D4(12)
  loc_BA9ABE: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BA9AC3: CVarStr var_C8
  loc_BA9AC6: PopAdLdVar
  loc_BA9AC7: FLdPr Me
  loc_BA9ACA: MemLdRfVar from_stack_1.htmFile
  loc_BA9ACD: LdPrVar
  loc_BA9ACF: LateMemCall
  loc_BA9AD5: FFree1Var var_C8 = ""
  loc_BA9AD8: LitI4 0
  loc_BA9ADD: LitI4 0
  loc_BA9AE2: LitI2_Byte 0
  loc_BA9AE4: LitStr "right"
  loc_BA9AE7: FMemLdR4 var_D4(16)
  loc_BA9AEC: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BA9AF1: CVarStr var_C8
  loc_BA9AF4: PopAdLdVar
  loc_BA9AF5: FLdPr Me
  loc_BA9AF8: MemLdRfVar from_stack_1.htmFile
  loc_BA9AFB: LdPrVar
  loc_BA9AFD: LateMemCall
  loc_BA9B03: FFree1Var var_C8 = ""
  loc_BA9B06: LitI4 0
  loc_BA9B0B: LitI4 0
  loc_BA9B10: LitI2_Byte 0
  loc_BA9B12: LitStr "right"
  loc_BA9B15: FMemLdR4 var_D4(20)
  loc_BA9B1A: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BA9B1F: CVarStr var_C8
  loc_BA9B22: PopAdLdVar
  loc_BA9B23: FLdPr Me
  loc_BA9B26: MemLdRfVar from_stack_1.htmFile
  loc_BA9B29: LdPrVar
  loc_BA9B2B: LateMemCall
  loc_BA9B31: FFree1Var var_C8 = ""
  loc_BA9B34: LitI4 0
  loc_BA9B39: LitI4 0
  loc_BA9B3E: LitI2_Byte 0
  loc_BA9B40: LitStr "right"
  loc_BA9B43: FMemLdR4 var_D4(24)
  loc_BA9B48: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BA9B4D: CVarStr var_C8
  loc_BA9B50: PopAdLdVar
  loc_BA9B51: FLdPr Me
  loc_BA9B54: MemLdRfVar from_stack_1.htmFile
  loc_BA9B57: LdPrVar
  loc_BA9B59: LateMemCall
  loc_BA9B5F: FFree1Var var_C8 = ""
  loc_BA9B62: LitI4 0
  loc_BA9B67: LitI4 0
  loc_BA9B6C: LitI2_Byte 0
  loc_BA9B6E: LitStr "left"
  loc_BA9B71: FMemLdR4 var_D4(32)
  loc_BA9B76: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BA9B7B: CVarStr var_C8
  loc_BA9B7E: PopAdLdVar
  loc_BA9B7F: FLdPr Me
  loc_BA9B82: MemLdRfVar from_stack_1.htmFile
  loc_BA9B85: LdPrVar
  loc_BA9B87: LateMemCall
  loc_BA9B8D: FFree1Var var_C8 = ""
  loc_BA9B90: LitI4 0
  loc_BA9B95: LitI4 0
  loc_BA9B9A: LitI2_Byte 0
  loc_BA9B9C: LitStr "right"
  loc_BA9B9F: FMemLdR4 var_D4(36)
  loc_BA9BA4: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BA9BA9: CVarStr var_C8
  loc_BA9BAC: PopAdLdVar
  loc_BA9BAD: FLdPr Me
  loc_BA9BB0: MemLdRfVar from_stack_1.htmFile
  loc_BA9BB3: LdPrVar
  loc_BA9BB5: LateMemCall
  loc_BA9BBB: FFree1Var var_C8 = ""
  loc_BA9BBE: LitI4 0
  loc_BA9BC3: FStR4 var_D4
  loc_BA9BC6: AryUnlock
  loc_BA9BC9: AryUnlock
  loc_BA9BCC: LitVarStr var_A4, "     </tr>"
  loc_BA9BD1: PopAdLdVar
  loc_BA9BD2: FLdPr Me
  loc_BA9BD5: MemLdRfVar from_stack_1.htmFile
  loc_BA9BD8: LdPrVar
  loc_BA9BDA: LateMemCall
  loc_BA9BE0: FLdPr Me
  loc_BA9BE3: MemLdRfVar from_stack_1.global_108
  loc_BA9BE6: NextI2 var_92, loc_BA9940
  loc_BA9BEB: FLdPr Me
  loc_BA9BEE: MemLdRfVar from_stack_1.global_104
  loc_BA9BF1: NextI2 var_8E, loc_BA991C
  loc_BA9BF6: LitVarStr var_A4, "    <tr valign=""top"" class=""LineaDato"">"
  loc_BA9BFB: PopAdLdVar
  loc_BA9BFC: FLdPr Me
  loc_BA9BFF: MemLdRfVar from_stack_1.htmFile
  loc_BA9C02: LdPrVar
  loc_BA9C04: LateMemCall
  loc_BA9C0A: LitVarStr var_A4, "    <td colspan=""11"" align=""right"" class=""Normal"">TOTAL RESIDUOS PASIVOS</td>"
  loc_BA9C0F: PopAdLdVar
  loc_BA9C10: FLdPr Me
  loc_BA9C13: MemLdRfVar from_stack_1.htmFile
  loc_BA9C16: LdPrVar
  loc_BA9C18: LateMemCall
  loc_BA9C1E: LitStr "    <td align=""right"" class=""Totales"">"
  loc_BA9C21: FLdPr Me
  loc_BA9C24: MemLdStr global_112
  loc_BA9C27: ConcatStr
  loc_BA9C28: FStStrNoPop var_B8
  loc_BA9C2B: LitStr "</th>"
  loc_BA9C2E: ConcatStr
  loc_BA9C2F: CVarStr var_C8
  loc_BA9C32: PopAdLdVar
  loc_BA9C33: FLdPr Me
  loc_BA9C36: MemLdRfVar from_stack_1.htmFile
  loc_BA9C39: LdPrVar
  loc_BA9C3B: LateMemCall
  loc_BA9C41: FFree1Str var_B8
  loc_BA9C44: FFree1Var var_C8 = ""
  loc_BA9C47: LitVarStr var_A4, "     </tr>"
  loc_BA9C4C: PopAdLdVar
  loc_BA9C4D: FLdPr Me
  loc_BA9C50: MemLdRfVar from_stack_1.htmFile
  loc_BA9C53: LdPrVar
  loc_BA9C55: LateMemCall
  loc_BA9C5B: Branch loc_BA9F9B
  loc_BA9C5E: LitI2_Byte 1
  loc_BA9C60: FLdPr Me
  loc_BA9C63: MemLdRfVar from_stack_1.global_104
  loc_BA9C66: FLdPr Me
  loc_BA9C69: MemLdStr global_100
  loc_BA9C6C: LitI2_Byte 1
  loc_BA9C6E: FnUBound
  loc_BA9C70: CI2I4
  loc_BA9C71: ForI2 var_148
  loc_BA9C77: LitI2_Byte 1
  loc_BA9C79: FLdPr Me
  loc_BA9C7C: MemLdRfVar from_stack_1.global_108
  loc_BA9C7F: FLdPr Me
  loc_BA9C82: MemLdI2 global_104
  loc_BA9C85: CI4UI1
  loc_BA9C86: FLdPr Me
  loc_BA9C89: MemLdStr global_100
  loc_BA9C8C: Ary1LdPr
  loc_BA9C8D: MemLdStr global_16
  loc_BA9C90: LitI2_Byte 1
  loc_BA9C92: FnUBound
  loc_BA9C94: CI2I4
  loc_BA9C95: ForI2 var_14C
  loc_BA9C9B: LitVarStr var_A4, "    <tr valign=""top"" class=""LineaDato"">"
  loc_BA9CA0: PopAdLdVar
  loc_BA9CA1: FLdPr Me
  loc_BA9CA4: MemLdRfVar from_stack_1.htmFile
  loc_BA9CA7: LdPrVar
  loc_BA9CA9: LateMemCall
  loc_BA9CAF: LitStr "  <td rowspan=""1"" align=""left"">"
  loc_BA9CB2: FLdPr Me
  loc_BA9CB5: MemLdI2 global_104
  loc_BA9CB8: CI4UI1
  loc_BA9CB9: FLdPr Me
  loc_BA9CBC: MemLdStr global_100
  loc_BA9CBF: Ary1LdPr
  loc_BA9CC0: MemLdStr global_4
  loc_BA9CC3: ConcatStr
  loc_BA9CC4: FStStrNoPop var_B8
  loc_BA9CC7: LitStr "</td>"
  loc_BA9CCA: ConcatStr
  loc_BA9CCB: CVarStr var_C8
  loc_BA9CCE: PopAdLdVar
  loc_BA9CCF: FLdPr Me
  loc_BA9CD2: MemLdRfVar from_stack_1.htmFile
  loc_BA9CD5: LdPrVar
  loc_BA9CD7: LateMemCall
  loc_BA9CDD: FFree1Str var_B8
  loc_BA9CE0: FFree1Var var_C8 = ""
  loc_BA9CE3: LitStr "  <td rowspan=""1"" align=""right"">"
  loc_BA9CE6: FLdPr Me
  loc_BA9CE9: MemLdI2 global_104
  loc_BA9CEC: CI4UI1
  loc_BA9CED: FLdPr Me
  loc_BA9CF0: MemLdStr global_100
  loc_BA9CF3: Ary1LdPr
  loc_BA9CF4: MemLdStr global_0
  loc_BA9CF7: ConcatStr
  loc_BA9CF8: FStStrNoPop var_B8
  loc_BA9CFB: LitStr "</td>"
  loc_BA9CFE: ConcatStr
  loc_BA9CFF: CVarStr var_C8
  loc_BA9D02: PopAdLdVar
  loc_BA9D03: FLdPr Me
  loc_BA9D06: MemLdRfVar from_stack_1.htmFile
  loc_BA9D09: LdPrVar
  loc_BA9D0B: LateMemCall
  loc_BA9D11: FFree1Str var_B8
  loc_BA9D14: FFree1Var var_C8 = ""
  loc_BA9D17: LitVarStr var_A4, "<td rowspan=""1"" align=""left"">&nbsp;</td>"
  loc_BA9D1C: PopAdLdVar
  loc_BA9D1D: FLdPr Me
  loc_BA9D20: MemLdRfVar from_stack_1.htmFile
  loc_BA9D23: LdPrVar
  loc_BA9D25: LateMemCall
  loc_BA9D2B: FLdPr Me
  loc_BA9D2E: MemLdI2 global_108
  loc_BA9D31: CI4UI1
  loc_BA9D32: FLdPr Me
  loc_BA9D35: MemLdI2 global_104
  loc_BA9D38: CI4UI1
  loc_BA9D39: FLdPr Me
  loc_BA9D3C: MemLdStr global_100
  loc_BA9D3F: AryLock
  loc_BA9D42: Ary1LdPr
  loc_BA9D43: MemLdStr global_16
  loc_BA9D46: AryLock
  loc_BA9D49: Ary1LdRf
  loc_BA9D4A: FStR4 var_158
  loc_BA9D4D: LitI4 0
  loc_BA9D52: LitI4 0
  loc_BA9D57: LitI2_Byte 0
  loc_BA9D59: LitStr "left"
  loc_BA9D5C: FMemLdR4 var_158(0)
  loc_BA9D61: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BA9D66: CVarStr var_C8
  loc_BA9D69: PopAdLdVar
  loc_BA9D6A: FLdPr Me
  loc_BA9D6D: MemLdRfVar from_stack_1.htmFile
  loc_BA9D70: LdPrVar
  loc_BA9D72: LateMemCall
  loc_BA9D78: FFree1Var var_C8 = ""
  loc_BA9D7B: LitI4 0
  loc_BA9D80: LitI4 0
  loc_BA9D85: LitI2_Byte 0
  loc_BA9D87: LitStr "left"
  loc_BA9D8A: FMemLdR4 var_158(4)
  loc_BA9D8F: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BA9D94: CVarStr var_C8
  loc_BA9D97: PopAdLdVar
  loc_BA9D98: FLdPr Me
  loc_BA9D9B: MemLdRfVar from_stack_1.htmFile
  loc_BA9D9E: LdPrVar
  loc_BA9DA0: LateMemCall
  loc_BA9DA6: FFree1Var var_C8 = ""
  loc_BA9DA9: LitVarStr var_104, "<td nowrap align=""left"">"
  loc_BA9DAE: FMemLdRf unk_4C7951
  loc_BA9DB3: CVarRef
  loc_BA9DB8: LitVarStr var_B4, "&nbsp;"
  loc_BA9DBD: FStVarCopyObj var_C8
  loc_BA9DC0: FLdRfVar var_C8
  loc_BA9DC3: FMemLdR4 var_158(8)
  loc_BA9DC8: LitStr vbNullString
  loc_BA9DCB: EqStr
  loc_BA9DCD: CVarBoolI2 var_A4
  loc_BA9DD1: FLdRfVar var_F4
  loc_BA9DD4: ImpAdCallFPR4  = IIf(, , )
  loc_BA9DD9: FLdRfVar var_F4
  loc_BA9DDC: ConcatVar var_114
  loc_BA9DE0: LitVarStr var_124, "</td>"
  loc_BA9DE5: ConcatVar var_134
  loc_BA9DE9: PopAdLdVar
  loc_BA9DEA: FLdPr Me
  loc_BA9DED: MemLdRfVar from_stack_1.htmFile
  loc_BA9DF0: LdPrVar
  loc_BA9DF2: LateMemCall
  loc_BA9DF8: FFreeVar var_A4 = "": var_C8 = "": var_F4 = "": var_114 = ""
  loc_BA9E05: LitI4 0
  loc_BA9E0A: LitI4 0
  loc_BA9E0F: LitI2_Byte 0
  loc_BA9E11: LitStr "right"
  loc_BA9E14: FMemLdR4 var_158(12)
  loc_BA9E19: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BA9E1E: CVarStr var_C8
  loc_BA9E21: PopAdLdVar
  loc_BA9E22: FLdPr Me
  loc_BA9E25: MemLdRfVar from_stack_1.htmFile
  loc_BA9E28: LdPrVar
  loc_BA9E2A: LateMemCall
  loc_BA9E30: FFree1Var var_C8 = ""
  loc_BA9E33: LitI4 0
  loc_BA9E38: LitI4 0
  loc_BA9E3D: LitI2_Byte 0
  loc_BA9E3F: LitStr "right"
  loc_BA9E42: FMemLdR4 var_158(16)
  loc_BA9E47: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BA9E4C: CVarStr var_C8
  loc_BA9E4F: PopAdLdVar
  loc_BA9E50: FLdPr Me
  loc_BA9E53: MemLdRfVar from_stack_1.htmFile
  loc_BA9E56: LdPrVar
  loc_BA9E58: LateMemCall
  loc_BA9E5E: FFree1Var var_C8 = ""
  loc_BA9E61: LitI4 0
  loc_BA9E66: LitI4 0
  loc_BA9E6B: LitI2_Byte 0
  loc_BA9E6D: LitStr "right"
  loc_BA9E70: LitStr "0"
  loc_BA9E73: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BA9E78: CVarStr var_C8
  loc_BA9E7B: PopAdLdVar
  loc_BA9E7C: FLdPr Me
  loc_BA9E7F: MemLdRfVar from_stack_1.htmFile
  loc_BA9E82: LdPrVar
  loc_BA9E84: LateMemCall
  loc_BA9E8A: FFree1Var var_C8 = ""
  loc_BA9E8D: LitI4 0
  loc_BA9E92: LitI4 0
  loc_BA9E97: LitI2_Byte 0
  loc_BA9E99: LitStr "right"
  loc_BA9E9C: LitStr "0"
  loc_BA9E9F: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BA9EA4: CVarStr var_C8
  loc_BA9EA7: PopAdLdVar
  loc_BA9EA8: FLdPr Me
  loc_BA9EAB: MemLdRfVar from_stack_1.htmFile
  loc_BA9EAE: LdPrVar
  loc_BA9EB0: LateMemCall
  loc_BA9EB6: FFree1Var var_C8 = ""
  loc_BA9EB9: LitI4 0
  loc_BA9EBE: LitI4 0
  loc_BA9EC3: LitI2_Byte 0
  loc_BA9EC5: LitStr "left"
  loc_BA9EC8: FMemLdR4 var_158(28)
  loc_BA9ECD: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BA9ED2: CVarStr var_C8
  loc_BA9ED5: PopAdLdVar
  loc_BA9ED6: FLdPr Me
  loc_BA9ED9: MemLdRfVar from_stack_1.htmFile
  loc_BA9EDC: LdPrVar
  loc_BA9EDE: LateMemCall
  loc_BA9EE4: FFree1Var var_C8 = ""
  loc_BA9EE7: LitI4 0
  loc_BA9EEC: LitI4 0
  loc_BA9EF1: LitI2_Byte 0
  loc_BA9EF3: LitStr "right"
  loc_BA9EF6: LitStr "0"
  loc_BA9EF9: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BA9EFE: CVarStr var_C8
  loc_BA9F01: PopAdLdVar
  loc_BA9F02: FLdPr Me
  loc_BA9F05: MemLdRfVar from_stack_1.htmFile
  loc_BA9F08: LdPrVar
  loc_BA9F0A: LateMemCall
  loc_BA9F10: FFree1Var var_C8 = ""
  loc_BA9F13: LitI4 0
  loc_BA9F18: FStR4 var_158
  loc_BA9F1B: AryUnlock
  loc_BA9F1E: AryUnlock
  loc_BA9F21: LitVarStr var_A4, "     </tr>"
  loc_BA9F26: PopAdLdVar
  loc_BA9F27: FLdPr Me
  loc_BA9F2A: MemLdRfVar from_stack_1.htmFile
  loc_BA9F2D: LdPrVar
  loc_BA9F2F: LateMemCall
  loc_BA9F35: FLdPr Me
  loc_BA9F38: MemLdRfVar from_stack_1.global_108
  loc_BA9F3B: NextI2 var_14C, loc_BA9C9B
  loc_BA9F40: FLdPr Me
  loc_BA9F43: MemLdRfVar from_stack_1.global_104
  loc_BA9F46: NextI2 var_148, loc_BA9C77
  loc_BA9F4B: LitVarStr var_A4, "    <tr valign=""top"" class=""LineaDato"">"
  loc_BA9F50: PopAdLdVar
  loc_BA9F51: FLdPr Me
  loc_BA9F54: MemLdRfVar from_stack_1.htmFile
  loc_BA9F57: LdPrVar
  loc_BA9F59: LateMemCall
  loc_BA9F5F: LitVarStr var_A4, "    <td colspan=""10"" align=""right"" class=""Normal"">TOTAL RESIDUOS PASIVOS</td>"
  loc_BA9F64: PopAdLdVar
  loc_BA9F65: FLdPr Me
  loc_BA9F68: MemLdRfVar from_stack_1.htmFile
  loc_BA9F6B: LdPrVar
  loc_BA9F6D: LateMemCall
  loc_BA9F73: LitVarStr var_A4, "    <td align=""right"" class=""Totales"">0</th>"
  loc_BA9F78: PopAdLdVar
  loc_BA9F79: FLdPr Me
  loc_BA9F7C: MemLdRfVar from_stack_1.htmFile
  loc_BA9F7F: LdPrVar
  loc_BA9F81: LateMemCall
  loc_BA9F87: LitVarStr var_A4, "     </tr>"
  loc_BA9F8C: PopAdLdVar
  loc_BA9F8D: FLdPr Me
  loc_BA9F90: MemLdRfVar from_stack_1.htmFile
  loc_BA9F93: LdPrVar
  loc_BA9F95: LateMemCall
  loc_BA9F9B: Branch loc_BAA820
  loc_BA9F9E: FLdRfVar var_8A
  loc_BA9FA1: FLdPr Me
  loc_BA9FA4: VCallAd Control_ID_chkOcultarImporte
  loc_BA9FA7: FStAdFunc var_88
  loc_BA9FAA: FLdPr var_88
  loc_BA9FAD:  = Me.Value
  loc_BA9FB2: FLdI2 var_8A
  loc_BA9FB5: CI4UI1
  loc_BA9FB6: LitI4 0
  loc_BA9FBB: EqI4
  loc_BA9FBC: FFree1Ad var_88
  loc_BA9FBF: BranchF loc_BAA40D
  loc_BA9FC2: LitI2_Byte 1
  loc_BA9FC4: FLdPr Me
  loc_BA9FC7: MemLdRfVar from_stack_1.global_104
  loc_BA9FCA: FLdPr Me
  loc_BA9FCD: MemLdStr global_100
  loc_BA9FD0: LitI2_Byte 1
  loc_BA9FD2: FnUBound
  loc_BA9FD4: CI2I4
  loc_BA9FD5: ForI2 var_15C
  loc_BA9FDB: LitVarStr var_A4, "    <tr valign=""top"" class=""LineaDato"">"
  loc_BA9FE0: PopAdLdVar
  loc_BA9FE1: FLdPr Me
  loc_BA9FE4: MemLdRfVar from_stack_1.htmFile
  loc_BA9FE7: LdPrVar
  loc_BA9FE9: LateMemCall
  loc_BA9FEF: LitStr "<td rowspan="""
  loc_BA9FF2: FLdPr Me
  loc_BA9FF5: MemLdI2 global_104
  loc_BA9FF8: CI4UI1
  loc_BA9FF9: FLdPr Me
  loc_BA9FFC: MemLdStr global_100
  loc_BA9FFF: Ary1LdPr
  loc_BAA000: MemLdI2 global_20
  loc_BAA003: CStrUI1
  loc_BAA005: FStStrNoPop var_B8
  loc_BAA008: ConcatStr
  loc_BAA009: FStStrNoPop var_160
  loc_BAA00C: LitStr """ align=""left"">"
  loc_BAA00F: ConcatStr
  loc_BAA010: FStStrNoPop var_164
  loc_BAA013: FLdPr Me
  loc_BAA016: MemLdI2 global_104
  loc_BAA019: CI4UI1
  loc_BAA01A: FLdPr Me
  loc_BAA01D: MemLdStr global_100
  loc_BAA020: Ary1LdPr
  loc_BAA021: MemLdStr global_4
  loc_BAA024: ConcatStr
  loc_BAA025: FStStrNoPop var_168
  loc_BAA028: LitStr "</td>"
  loc_BAA02B: ConcatStr
  loc_BAA02C: CVarStr var_C8
  loc_BAA02F: PopAdLdVar
  loc_BAA030: FLdPr Me
  loc_BAA033: MemLdRfVar from_stack_1.htmFile
  loc_BAA036: LdPrVar
  loc_BAA038: LateMemCall
  loc_BAA03E: FFreeStr var_B8 = "": var_160 = "": var_164 = ""
  loc_BAA049: FFree1Var var_C8 = ""
  loc_BAA04C: LitStr "<td rowspan="""
  loc_BAA04F: FLdPr Me
  loc_BAA052: MemLdI2 global_104
  loc_BAA055: CI4UI1
  loc_BAA056: FLdPr Me
  loc_BAA059: MemLdStr global_100
  loc_BAA05C: Ary1LdPr
  loc_BAA05D: MemLdI2 global_20
  loc_BAA060: CStrUI1
  loc_BAA062: FStStrNoPop var_B8
  loc_BAA065: ConcatStr
  loc_BAA066: FStStrNoPop var_160
  loc_BAA069: LitStr """ align=""right"">"
  loc_BAA06C: ConcatStr
  loc_BAA06D: FStStrNoPop var_164
  loc_BAA070: FLdPr Me
  loc_BAA073: MemLdI2 global_104
  loc_BAA076: CI4UI1
  loc_BAA077: FLdPr Me
  loc_BAA07A: MemLdStr global_100
  loc_BAA07D: Ary1LdPr
  loc_BAA07E: MemLdStr global_0
  loc_BAA081: ConcatStr
  loc_BAA082: FStStrNoPop var_168
  loc_BAA085: LitStr "</td>"
  loc_BAA088: ConcatStr
  loc_BAA089: CVarStr var_C8
  loc_BAA08C: PopAdLdVar
  loc_BAA08D: FLdPr Me
  loc_BAA090: MemLdRfVar from_stack_1.htmFile
  loc_BAA093: LdPrVar
  loc_BAA095: LateMemCall
  loc_BAA09B: FFreeStr var_B8 = "": var_160 = "": var_164 = ""
  loc_BAA0A6: FFree1Var var_C8 = ""
  loc_BAA0A9: LitStr "<td rowspan="""
  loc_BAA0AC: FLdPr Me
  loc_BAA0AF: MemLdI2 global_104
  loc_BAA0B2: CI4UI1
  loc_BAA0B3: FLdPr Me
  loc_BAA0B6: MemLdStr global_100
  loc_BAA0B9: Ary1LdPr
  loc_BAA0BA: MemLdI2 global_20
  loc_BAA0BD: CStrUI1
  loc_BAA0BF: FStStrNoPop var_B8
  loc_BAA0C2: ConcatStr
  loc_BAA0C3: FStStrNoPop var_160
  loc_BAA0C6: LitStr """ align=""left"">"
  loc_BAA0C9: ConcatStr
  loc_BAA0CA: FStStrNoPop var_164
  loc_BAA0CD: FLdPr Me
  loc_BAA0D0: MemLdI2 global_104
  loc_BAA0D3: CI4UI1
  loc_BAA0D4: FLdPr Me
  loc_BAA0D7: MemLdStr global_100
  loc_BAA0DA: Ary1LdPr
  loc_BAA0DB: MemLdStr global_12
  loc_BAA0DE: ConcatStr
  loc_BAA0DF: FStStrNoPop var_168
  loc_BAA0E2: LitStr "</td>"
  loc_BAA0E5: ConcatStr
  loc_BAA0E6: CVarStr var_C8
  loc_BAA0E9: PopAdLdVar
  loc_BAA0EA: FLdPr Me
  loc_BAA0ED: MemLdRfVar from_stack_1.htmFile
  loc_BAA0F0: LdPrVar
  loc_BAA0F2: LateMemCall
  loc_BAA0F8: FFreeStr var_B8 = "": var_160 = "": var_164 = ""
  loc_BAA103: FFree1Var var_C8 = ""
  loc_BAA106: LitI2_Byte 1
  loc_BAA108: FLdPr Me
  loc_BAA10B: MemLdRfVar from_stack_1.global_108
  loc_BAA10E: FLdPr Me
  loc_BAA111: MemLdI2 global_104
  loc_BAA114: CI4UI1
  loc_BAA115: FLdPr Me
  loc_BAA118: MemLdStr global_100
  loc_BAA11B: Ary1LdPr
  loc_BAA11C: MemLdStr global_16
  loc_BAA11F: LitI2_Byte 1
  loc_BAA121: FnUBound
  loc_BAA123: CI2I4
  loc_BAA124: ForI2 var_16C
  loc_BAA12A: FLdPr Me
  loc_BAA12D: MemLdI2 global_108
  loc_BAA130: LitI2_Byte 1
  loc_BAA132: GtI2
  loc_BAA133: BranchF loc_BAA14A
  loc_BAA136: LitVarStr var_A4, "    <tr valign=""top"" class=""LineaDato"">"
  loc_BAA13B: PopAdLdVar
  loc_BAA13C: FLdPr Me
  loc_BAA13F: MemLdRfVar from_stack_1.htmFile
  loc_BAA142: LdPrVar
  loc_BAA144: LateMemCall
  loc_BAA14A: FLdPr Me
  loc_BAA14D: MemLdI2 global_108
  loc_BAA150: CI4UI1
  loc_BAA151: FLdPr Me
  loc_BAA154: MemLdI2 global_104
  loc_BAA157: CI4UI1
  loc_BAA158: FLdPr Me
  loc_BAA15B: MemLdStr global_100
  loc_BAA15E: AryLock
  loc_BAA161: Ary1LdPr
  loc_BAA162: MemLdStr global_16
  loc_BAA165: AryLock
  loc_BAA168: Ary1LdRf
  loc_BAA169: FStR4 var_178
  loc_BAA16C: LitStr "       <td width=""30" & Chr(37) & """ align=""left"">"
  loc_BAA16F: FMemLdR4 var_178(0)
  loc_BAA174: ConcatStr
  loc_BAA175: FStStrNoPop var_B8
  loc_BAA178: LitStr "</td>"
  loc_BAA17B: ConcatStr
  loc_BAA17C: CVarStr var_C8
  loc_BAA17F: PopAdLdVar
  loc_BAA180: FLdPr Me
  loc_BAA183: MemLdRfVar from_stack_1.htmFile
  loc_BAA186: LdPrVar
  loc_BAA188: LateMemCall
  loc_BAA18E: FFree1Str var_B8
  loc_BAA191: FFree1Var var_C8 = ""
  loc_BAA194: LitI4 0
  loc_BAA199: LitI4 0
  loc_BAA19E: LitI2_Byte 0
  loc_BAA1A0: LitStr "left"
  loc_BAA1A3: FMemLdR4 var_178(4)
  loc_BAA1A8: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BAA1AD: CVarStr var_C8
  loc_BAA1B0: PopAdLdVar
  loc_BAA1B1: FLdPr Me
  loc_BAA1B4: MemLdRfVar from_stack_1.htmFile
  loc_BAA1B7: LdPrVar
  loc_BAA1B9: LateMemCall
  loc_BAA1BF: FFree1Var var_C8 = ""
  loc_BAA1C2: LitVarStr var_104, "       <td nowrap align=""left"">"
  loc_BAA1C7: FMemLdRf 0
  loc_BAA1CC: CVarRef
  loc_BAA1D1: LitVarStr var_B4, "&nbsp;"
  loc_BAA1D6: FStVarCopyObj var_C8
  loc_BAA1D9: FLdRfVar var_C8
  loc_BAA1DC: FMemLdR4 var_178(8)
  loc_BAA1E1: LitStr vbNullString
  loc_BAA1E4: EqStr
  loc_BAA1E6: CVarBoolI2 var_A4
  loc_BAA1EA: FLdRfVar var_F4
  loc_BAA1ED: ImpAdCallFPR4  = IIf(, , )
  loc_BAA1F2: FLdRfVar var_F4
  loc_BAA1F5: ConcatVar var_114
  loc_BAA1F9: LitVarStr var_124, "</td>"
  loc_BAA1FE: ConcatVar var_134
  loc_BAA202: PopAdLdVar
  loc_BAA203: FLdPr Me
  loc_BAA206: MemLdRfVar from_stack_1.htmFile
  loc_BAA209: LdPrVar
  loc_BAA20B: LateMemCall
  loc_BAA211: FFreeVar var_A4 = "": var_C8 = "": var_F4 = "": var_114 = ""
  loc_BAA21E: LitI4 0
  loc_BAA223: LitI4 0
  loc_BAA228: LitI2_Byte 0
  loc_BAA22A: LitStr "right"
  loc_BAA22D: FMemLdR4 var_178(12)
  loc_BAA232: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BAA237: CVarStr var_C8
  loc_BAA23A: PopAdLdVar
  loc_BAA23B: FLdPr Me
  loc_BAA23E: MemLdRfVar from_stack_1.htmFile
  loc_BAA241: LdPrVar
  loc_BAA243: LateMemCall
  loc_BAA249: FFree1Var var_C8 = ""
  loc_BAA24C: LitI4 0
  loc_BAA251: LitI4 0
  loc_BAA256: LitI2_Byte 0
  loc_BAA258: LitStr "right"
  loc_BAA25B: FMemLdR4 var_178(16)
  loc_BAA260: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BAA265: CVarStr var_C8
  loc_BAA268: PopAdLdVar
  loc_BAA269: FLdPr Me
  loc_BAA26C: MemLdRfVar from_stack_1.htmFile
  loc_BAA26F: LdPrVar
  loc_BAA271: LateMemCall
  loc_BAA277: FFree1Var var_C8 = ""
  loc_BAA27A: LitI4 0
  loc_BAA27F: LitI4 0
  loc_BAA284: LitI2_Byte 0
  loc_BAA286: LitStr "right"
  loc_BAA289: FMemLdR4 var_178(20)
  loc_BAA28E: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BAA293: CVarStr var_C8
  loc_BAA296: PopAdLdVar
  loc_BAA297: FLdPr Me
  loc_BAA29A: MemLdRfVar from_stack_1.htmFile
  loc_BAA29D: LdPrVar
  loc_BAA29F: LateMemCall
  loc_BAA2A5: FFree1Var var_C8 = ""
  loc_BAA2A8: LitI4 0
  loc_BAA2AD: LitI4 0
  loc_BAA2B2: LitI2_Byte 0
  loc_BAA2B4: LitStr "right"
  loc_BAA2B7: FMemLdR4 var_178(24)
  loc_BAA2BC: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BAA2C1: CVarStr var_C8
  loc_BAA2C4: PopAdLdVar
  loc_BAA2C5: FLdPr Me
  loc_BAA2C8: MemLdRfVar from_stack_1.htmFile
  loc_BAA2CB: LdPrVar
  loc_BAA2CD: LateMemCall
  loc_BAA2D3: FFree1Var var_C8 = ""
  loc_BAA2D6: LitI4 0
  loc_BAA2DB: LitI4 0
  loc_BAA2E0: LitI2_Byte 0
  loc_BAA2E2: LitStr "left"
  loc_BAA2E5: FMemLdR4 var_178(28)
  loc_BAA2EA: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BAA2EF: CVarStr var_C8
  loc_BAA2F2: PopAdLdVar
  loc_BAA2F3: FLdPr Me
  loc_BAA2F6: MemLdRfVar from_stack_1.htmFile
  loc_BAA2F9: LdPrVar
  loc_BAA2FB: LateMemCall
  loc_BAA301: FFree1Var var_C8 = ""
  loc_BAA304: LitI4 0
  loc_BAA309: FStR4 var_178
  loc_BAA30C: AryUnlock
  loc_BAA30F: AryUnlock
  loc_BAA312: FLdPr Me
  loc_BAA315: MemLdI2 global_108
  loc_BAA318: LitI2_Byte 1
  loc_BAA31A: EqI2
  loc_BAA31B: BranchF loc_BAA37B
  loc_BAA31E: LitStr "  <td rowspan="""
  loc_BAA321: FLdPr Me
  loc_BAA324: MemLdI2 global_104
  loc_BAA327: CI4UI1
  loc_BAA328: FLdPr Me
  loc_BAA32B: MemLdStr global_100
  loc_BAA32E: Ary1LdPr
  loc_BAA32F: MemLdI2 global_20
  loc_BAA332: CStrUI1
  loc_BAA334: FStStrNoPop var_B8
  loc_BAA337: ConcatStr
  loc_BAA338: FStStrNoPop var_160
  loc_BAA33B: LitStr """ align=""right"" class=""Totales"">"
  loc_BAA33E: ConcatStr
  loc_BAA33F: FStStrNoPop var_164
  loc_BAA342: FLdPr Me
  loc_BAA345: MemLdI2 global_104
  loc_BAA348: CI4UI1
  loc_BAA349: FLdPr Me
  loc_BAA34C: MemLdStr global_100
  loc_BAA34F: Ary1LdPr
  loc_BAA350: MemLdStr global_24
  loc_BAA353: ConcatStr
  loc_BAA354: FStStrNoPop var_168
  loc_BAA357: LitStr "</td>"
  loc_BAA35A: ConcatStr
  loc_BAA35B: CVarStr var_C8
  loc_BAA35E: PopAdLdVar
  loc_BAA35F: FLdPr Me
  loc_BAA362: MemLdRfVar from_stack_1.htmFile
  loc_BAA365: LdPrVar
  loc_BAA367: LateMemCall
  loc_BAA36D: FFreeStr var_B8 = "": var_160 = "": var_164 = ""
  loc_BAA378: FFree1Var var_C8 = ""
  loc_BAA37B: LitVarStr var_A4, "     </tr>"
  loc_BAA380: PopAdLdVar
  loc_BAA381: FLdPr Me
  loc_BAA384: MemLdRfVar from_stack_1.htmFile
  loc_BAA387: LdPrVar
  loc_BAA389: LateMemCall
  loc_BAA38F: FLdPr Me
  loc_BAA392: MemLdRfVar from_stack_1.global_108
  loc_BAA395: NextI2 var_16C, loc_BAA12A
  loc_BAA39A: FLdPr Me
  loc_BAA39D: MemLdRfVar from_stack_1.global_104
  loc_BAA3A0: NextI2 var_15C, loc_BA9FDB
  loc_BAA3A5: LitVarStr var_A4, "    <tr valign=""top"" class=""LineaDato"">"
  loc_BAA3AA: PopAdLdVar
  loc_BAA3AB: FLdPr Me
  loc_BAA3AE: MemLdRfVar from_stack_1.htmFile
  loc_BAA3B1: LdPrVar
  loc_BAA3B3: LateMemCall
  loc_BAA3B9: LitVarStr var_A4, "    <td colspan=""11"" align=""right"" class=""Normal"">TOTAL RESIDUOS PASIVOS</td>"
  loc_BAA3BE: PopAdLdVar
  loc_BAA3BF: FLdPr Me
  loc_BAA3C2: MemLdRfVar from_stack_1.htmFile
  loc_BAA3C5: LdPrVar
  loc_BAA3C7: LateMemCall
  loc_BAA3CD: LitStr "    <td align=""right"" class=""Totales"">"
  loc_BAA3D0: FLdPr Me
  loc_BAA3D3: MemLdStr global_112
  loc_BAA3D6: ConcatStr
  loc_BAA3D7: FStStrNoPop var_B8
  loc_BAA3DA: LitStr "</th>"
  loc_BAA3DD: ConcatStr
  loc_BAA3DE: CVarStr var_C8
  loc_BAA3E1: PopAdLdVar
  loc_BAA3E2: FLdPr Me
  loc_BAA3E5: MemLdRfVar from_stack_1.htmFile
  loc_BAA3E8: LdPrVar
  loc_BAA3EA: LateMemCall
  loc_BAA3F0: FFree1Str var_B8
  loc_BAA3F3: FFree1Var var_C8 = ""
  loc_BAA3F6: LitVarStr var_A4, "     </tr>"
  loc_BAA3FB: PopAdLdVar
  loc_BAA3FC: FLdPr Me
  loc_BAA3FF: MemLdRfVar from_stack_1.htmFile
  loc_BAA402: LdPrVar
  loc_BAA404: LateMemCall
  loc_BAA40A: Branch loc_BAA820
  loc_BAA40D: LitI2_Byte 1
  loc_BAA40F: FLdPr Me
  loc_BAA412: MemLdRfVar from_stack_1.global_104
  loc_BAA415: FLdPr Me
  loc_BAA418: MemLdStr global_100
  loc_BAA41B: LitI2_Byte 1
  loc_BAA41D: FnUBound
  loc_BAA41F: CI2I4
  loc_BAA420: ForI2 var_17C
  loc_BAA426: LitVarStr var_A4, "    <tr valign=""top"" class=""LineaDato"">"
  loc_BAA42B: PopAdLdVar
  loc_BAA42C: FLdPr Me
  loc_BAA42F: MemLdRfVar from_stack_1.htmFile
  loc_BAA432: LdPrVar
  loc_BAA434: LateMemCall
  loc_BAA43A: LitStr "  <td rowspan="""
  loc_BAA43D: FLdPr Me
  loc_BAA440: MemLdI2 global_104
  loc_BAA443: CI4UI1
  loc_BAA444: FLdPr Me
  loc_BAA447: MemLdStr global_100
  loc_BAA44A: Ary1LdPr
  loc_BAA44B: MemLdI2 global_20
  loc_BAA44E: CStrUI1
  loc_BAA450: FStStrNoPop var_B8
  loc_BAA453: ConcatStr
  loc_BAA454: FStStrNoPop var_160
  loc_BAA457: LitStr """ align=""left"">"
  loc_BAA45A: ConcatStr
  loc_BAA45B: FStStrNoPop var_164
  loc_BAA45E: FLdPr Me
  loc_BAA461: MemLdI2 global_104
  loc_BAA464: CI4UI1
  loc_BAA465: FLdPr Me
  loc_BAA468: MemLdStr global_100
  loc_BAA46B: Ary1LdPr
  loc_BAA46C: MemLdStr global_4
  loc_BAA46F: ConcatStr
  loc_BAA470: FStStrNoPop var_168
  loc_BAA473: LitStr "</td>"
  loc_BAA476: ConcatStr
  loc_BAA477: CVarStr var_C8
  loc_BAA47A: PopAdLdVar
  loc_BAA47B: FLdPr Me
  loc_BAA47E: MemLdRfVar from_stack_1.htmFile
  loc_BAA481: LdPrVar
  loc_BAA483: LateMemCall
  loc_BAA489: FFreeStr var_B8 = "": var_160 = "": var_164 = ""
  loc_BAA494: FFree1Var var_C8 = ""
  loc_BAA497: LitStr "  <td rowspan="""
  loc_BAA49A: FLdPr Me
  loc_BAA49D: MemLdI2 global_104
  loc_BAA4A0: CI4UI1
  loc_BAA4A1: FLdPr Me
  loc_BAA4A4: MemLdStr global_100
  loc_BAA4A7: Ary1LdPr
  loc_BAA4A8: MemLdI2 global_20
  loc_BAA4AB: CStrUI1
  loc_BAA4AD: FStStrNoPop var_B8
  loc_BAA4B0: ConcatStr
  loc_BAA4B1: FStStrNoPop var_160
  loc_BAA4B4: LitStr """ align=""right"">"
  loc_BAA4B7: ConcatStr
  loc_BAA4B8: FStStrNoPop var_164
  loc_BAA4BB: FLdPr Me
  loc_BAA4BE: MemLdI2 global_104
  loc_BAA4C1: CI4UI1
  loc_BAA4C2: FLdPr Me
  loc_BAA4C5: MemLdStr global_100
  loc_BAA4C8: Ary1LdPr
  loc_BAA4C9: MemLdStr global_0
  loc_BAA4CC: ConcatStr
  loc_BAA4CD: FStStrNoPop var_168
  loc_BAA4D0: LitStr "</td>"
  loc_BAA4D3: ConcatStr
  loc_BAA4D4: CVarStr var_C8
  loc_BAA4D7: PopAdLdVar
  loc_BAA4D8: FLdPr Me
  loc_BAA4DB: MemLdRfVar from_stack_1.htmFile
  loc_BAA4DE: LdPrVar
  loc_BAA4E0: LateMemCall
  loc_BAA4E6: FFreeStr var_B8 = "": var_160 = "": var_164 = ""
  loc_BAA4F1: FFree1Var var_C8 = ""
  loc_BAA4F4: LitStr "  <td rowspan="""
  loc_BAA4F7: FLdPr Me
  loc_BAA4FA: MemLdI2 global_104
  loc_BAA4FD: CI4UI1
  loc_BAA4FE: FLdPr Me
  loc_BAA501: MemLdStr global_100
  loc_BAA504: Ary1LdPr
  loc_BAA505: MemLdI2 global_20
  loc_BAA508: CStrUI1
  loc_BAA50A: FStStrNoPop var_B8
  loc_BAA50D: ConcatStr
  loc_BAA50E: FStStrNoPop var_160
  loc_BAA511: LitStr """ align=""left"">"
  loc_BAA514: ConcatStr
  loc_BAA515: FStStrNoPop var_164
  loc_BAA518: FLdPr Me
  loc_BAA51B: MemLdI2 global_104
  loc_BAA51E: CI4UI1
  loc_BAA51F: FLdPr Me
  loc_BAA522: MemLdStr global_100
  loc_BAA525: Ary1LdPr
  loc_BAA526: MemLdStr global_12
  loc_BAA529: ConcatStr
  loc_BAA52A: FStStrNoPop var_168
  loc_BAA52D: LitStr "</td>"
  loc_BAA530: ConcatStr
  loc_BAA531: CVarStr var_C8
  loc_BAA534: PopAdLdVar
  loc_BAA535: FLdPr Me
  loc_BAA538: MemLdRfVar from_stack_1.htmFile
  loc_BAA53B: LdPrVar
  loc_BAA53D: LateMemCall
  loc_BAA543: FFreeStr var_B8 = "": var_160 = "": var_164 = ""
  loc_BAA54E: FFree1Var var_C8 = ""
  loc_BAA551: LitI2_Byte 1
  loc_BAA553: FLdPr Me
  loc_BAA556: MemLdRfVar from_stack_1.global_108
  loc_BAA559: FLdPr Me
  loc_BAA55C: MemLdI2 global_104
  loc_BAA55F: CI4UI1
  loc_BAA560: FLdPr Me
  loc_BAA563: MemLdStr global_100
  loc_BAA566: Ary1LdPr
  loc_BAA567: MemLdStr global_16
  loc_BAA56A: LitI2_Byte 1
  loc_BAA56C: FnUBound
  loc_BAA56E: CI2I4
  loc_BAA56F: ForI2 var_180
  loc_BAA575: FLdPr Me
  loc_BAA578: MemLdI2 global_108
  loc_BAA57B: LitI2_Byte 1
  loc_BAA57D: GtI2
  loc_BAA57E: BranchF loc_BAA595
  loc_BAA581: LitVarStr var_A4, "    <tr valign=""top"" class=""LineaDato"">"
  loc_BAA586: PopAdLdVar
  loc_BAA587: FLdPr Me
  loc_BAA58A: MemLdRfVar from_stack_1.htmFile
  loc_BAA58D: LdPrVar
  loc_BAA58F: LateMemCall
  loc_BAA595: FLdPr Me
  loc_BAA598: MemLdI2 global_108
  loc_BAA59B: CI4UI1
  loc_BAA59C: FLdPr Me
  loc_BAA59F: MemLdI2 global_104
  loc_BAA5A2: CI4UI1
  loc_BAA5A3: FLdPr Me
  loc_BAA5A6: MemLdStr global_100
  loc_BAA5A9: AryLock
  loc_BAA5AC: Ary1LdPr
  loc_BAA5AD: MemLdStr global_16
  loc_BAA5B0: AryLock
  loc_BAA5B3: Ary1LdRf
  loc_BAA5B4: FStR4 var_18C
  loc_BAA5B7: LitI4 0
  loc_BAA5BC: LitI4 0
  loc_BAA5C1: LitI2_Byte 0
  loc_BAA5C3: LitStr "left"
  loc_BAA5C6: FMemLdR4 var_18C(0)
  loc_BAA5CB: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BAA5D0: CVarStr var_C8
  loc_BAA5D3: PopAdLdVar
  loc_BAA5D4: FLdPr Me
  loc_BAA5D7: MemLdRfVar from_stack_1.htmFile
  loc_BAA5DA: LdPrVar
  loc_BAA5DC: LateMemCall
  loc_BAA5E2: FFree1Var var_C8 = ""
  loc_BAA5E5: LitI4 0
  loc_BAA5EA: LitI4 0
  loc_BAA5EF: LitI2_Byte 0
  loc_BAA5F1: LitStr "left"
  loc_BAA5F4: FMemLdR4 var_18C(4)
  loc_BAA5F9: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BAA5FE: CVarStr var_C8
  loc_BAA601: PopAdLdVar
  loc_BAA602: FLdPr Me
  loc_BAA605: MemLdRfVar from_stack_1.htmFile
  loc_BAA608: LdPrVar
  loc_BAA60A: LateMemCall
  loc_BAA610: FFree1Var var_C8 = ""
  loc_BAA613: LitVarStr var_104, "       <td nowrap align=""left"">"
  loc_BAA618: FMemLdRf 0
  loc_BAA61D: CVarRef
  loc_BAA622: LitVarStr var_B4, "&nbsp;"
  loc_BAA627: FStVarCopyObj var_C8
  loc_BAA62A: FLdRfVar var_C8
  loc_BAA62D: FMemLdR4 var_18C(8)
  loc_BAA632: LitStr vbNullString
  loc_BAA635: EqStr
  loc_BAA637: CVarBoolI2 var_A4
  loc_BAA63B: FLdRfVar var_F4
  loc_BAA63E: ImpAdCallFPR4  = IIf(, , )
  loc_BAA643: FLdRfVar var_F4
  loc_BAA646: ConcatVar var_114
  loc_BAA64A: LitVarStr var_124, "</td>"
  loc_BAA64F: ConcatVar var_134
  loc_BAA653: PopAdLdVar
  loc_BAA654: FLdPr Me
  loc_BAA657: MemLdRfVar from_stack_1.htmFile
  loc_BAA65A: LdPrVar
  loc_BAA65C: LateMemCall
  loc_BAA662: FFreeVar var_A4 = "": var_C8 = "": var_F4 = "": var_114 = ""
  loc_BAA66F: LitI4 0
  loc_BAA674: LitI4 0
  loc_BAA679: LitI2_Byte 0
  loc_BAA67B: LitStr "right"
  loc_BAA67E: FMemLdR4 var_18C(12)
  loc_BAA683: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BAA688: CVarStr var_C8
  loc_BAA68B: PopAdLdVar
  loc_BAA68C: FLdPr Me
  loc_BAA68F: MemLdRfVar from_stack_1.htmFile
  loc_BAA692: LdPrVar
  loc_BAA694: LateMemCall
  loc_BAA69A: FFree1Var var_C8 = ""
  loc_BAA69D: LitI4 0
  loc_BAA6A2: LitI4 0
  loc_BAA6A7: LitI2_Byte 0
  loc_BAA6A9: LitStr "right"
  loc_BAA6AC: FMemLdR4 var_18C(16)
  loc_BAA6B1: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BAA6B6: CVarStr var_C8
  loc_BAA6B9: PopAdLdVar
  loc_BAA6BA: FLdPr Me
  loc_BAA6BD: MemLdRfVar from_stack_1.htmFile
  loc_BAA6C0: LdPrVar
  loc_BAA6C2: LateMemCall
  loc_BAA6C8: FFree1Var var_C8 = ""
  loc_BAA6CB: LitI4 0
  loc_BAA6D0: LitI4 0
  loc_BAA6D5: LitI2_Byte 0
  loc_BAA6D7: LitStr "right"
  loc_BAA6DA: LitStr "0"
  loc_BAA6DD: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BAA6E2: CVarStr var_C8
  loc_BAA6E5: PopAdLdVar
  loc_BAA6E6: FLdPr Me
  loc_BAA6E9: MemLdRfVar from_stack_1.htmFile
  loc_BAA6EC: LdPrVar
  loc_BAA6EE: LateMemCall
  loc_BAA6F4: FFree1Var var_C8 = ""
  loc_BAA6F7: LitI4 0
  loc_BAA6FC: LitI4 0
  loc_BAA701: LitI2_Byte 0
  loc_BAA703: LitStr "right"
  loc_BAA706: LitStr "0"
  loc_BAA709: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BAA70E: CVarStr var_C8
  loc_BAA711: PopAdLdVar
  loc_BAA712: FLdPr Me
  loc_BAA715: MemLdRfVar from_stack_1.htmFile
  loc_BAA718: LdPrVar
  loc_BAA71A: LateMemCall
  loc_BAA720: FFree1Var var_C8 = ""
  loc_BAA723: LitI4 0
  loc_BAA728: LitI4 0
  loc_BAA72D: LitI2_Byte 0
  loc_BAA72F: LitStr "left"
  loc_BAA732: LitStr "0"
  loc_BAA735: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BAA73A: CVarStr var_C8
  loc_BAA73D: PopAdLdVar
  loc_BAA73E: FLdPr Me
  loc_BAA741: MemLdRfVar from_stack_1.htmFile
  loc_BAA744: LdPrVar
  loc_BAA746: LateMemCall
  loc_BAA74C: FFree1Var var_C8 = ""
  loc_BAA74F: LitI4 0
  loc_BAA754: FStR4 var_18C
  loc_BAA757: AryUnlock
  loc_BAA75A: AryUnlock
  loc_BAA75D: FLdPr Me
  loc_BAA760: MemLdI2 global_108
  loc_BAA763: LitI2_Byte 1
  loc_BAA765: EqI2
  loc_BAA766: BranchF loc_BAA7A6
  loc_BAA769: LitStr "  <td rowspan="""
  loc_BAA76C: FLdPr Me
  loc_BAA76F: MemLdI2 global_104
  loc_BAA772: CI4UI1
  loc_BAA773: FLdPr Me
  loc_BAA776: MemLdStr global_100
  loc_BAA779: Ary1LdPr
  loc_BAA77A: MemLdI2 global_20
  loc_BAA77D: CStrUI1
  loc_BAA77F: FStStrNoPop var_B8
  loc_BAA782: ConcatStr
  loc_BAA783: FStStrNoPop var_160
  loc_BAA786: LitStr """ align=""right"" class=""Totales"">0</td>"
  loc_BAA789: ConcatStr
  loc_BAA78A: CVarStr var_C8
  loc_BAA78D: PopAdLdVar
  loc_BAA78E: FLdPr Me
  loc_BAA791: MemLdRfVar from_stack_1.htmFile
  loc_BAA794: LdPrVar
  loc_BAA796: LateMemCall
  loc_BAA79C: FFreeStr var_B8 = ""
  loc_BAA7A3: FFree1Var var_C8 = ""
  loc_BAA7A6: LitVarStr var_A4, "     </tr>"
  loc_BAA7AB: PopAdLdVar
  loc_BAA7AC: FLdPr Me
  loc_BAA7AF: MemLdRfVar from_stack_1.htmFile
  loc_BAA7B2: LdPrVar
  loc_BAA7B4: LateMemCall
  loc_BAA7BA: FLdPr Me
  loc_BAA7BD: MemLdRfVar from_stack_1.global_108
  loc_BAA7C0: NextI2 var_180, loc_BAA575
  loc_BAA7C5: FLdPr Me
  loc_BAA7C8: MemLdRfVar from_stack_1.global_104
  loc_BAA7CB: NextI2 var_17C, loc_BAA426
  loc_BAA7D0: LitVarStr var_A4, "    <tr valign=""top"" class=""LineaDato"">"
  loc_BAA7D5: PopAdLdVar
  loc_BAA7D6: FLdPr Me
  loc_BAA7D9: MemLdRfVar from_stack_1.htmFile
  loc_BAA7DC: LdPrVar
  loc_BAA7DE: LateMemCall
  loc_BAA7E4: LitVarStr var_A4, "    <td colspan=""11"" align=""right"" class=""Normal"">TOTAL RESIDUOS PASIVOS</td>"
  loc_BAA7E9: PopAdLdVar
  loc_BAA7EA: FLdPr Me
  loc_BAA7ED: MemLdRfVar from_stack_1.htmFile
  loc_BAA7F0: LdPrVar
  loc_BAA7F2: LateMemCall
  loc_BAA7F8: LitVarStr var_A4, "    <td align=""right"" class=""Totales"">0</th>"
  loc_BAA7FD: PopAdLdVar
  loc_BAA7FE: FLdPr Me
  loc_BAA801: MemLdRfVar from_stack_1.htmFile
  loc_BAA804: LdPrVar
  loc_BAA806: LateMemCall
  loc_BAA80C: LitVarStr var_A4, "     </tr>"
  loc_BAA811: PopAdLdVar
  loc_BAA812: FLdPr Me
  loc_BAA815: MemLdRfVar from_stack_1.htmFile
  loc_BAA818: LdPrVar
  loc_BAA81A: LateMemCall
  loc_BAA820: Call Proc_225_38_981580()
  loc_BAA825: FLdPr Me
  loc_BAA828: MemLdRfVar from_stack_1.htmFile
  loc_BAA82B: LdPrVar
  loc_BAA82D: LateMemCall
  loc_BAA833: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_BAA838: ExitProcHresult
  loc_BAA839: FLdFPR4 GeneraHTML00
End Sub

Private Function Proc_225_35_A2A2EC() 'A2A2EC
  'Data Table: 4C7AA8
  loc_A2A118: FLdPr Me
  loc_A2A11B: MemLdI2 global_104
  loc_A2A11E: LitI2_Byte 1
  loc_A2A120: AddI2
  loc_A2A121: FLdPr Me
  loc_A2A124: MemStI2 global_104
  loc_A2A127: LitI2_Byte 0
  loc_A2A129: FLdPr Me
  loc_A2A12C: MemStI2 global_108
  loc_A2A12F: LitI4 0
  loc_A2A134: FLdPr Me
  loc_A2A137: MemLdI2 global_104
  loc_A2A13A: CI4UI1
  loc_A2A13B: FLdPr Me
  loc_A2A13E: MemLdRfVar from_stack_1.global_100
  loc_A2A141: RedimPreserve
  loc_A2A14B: FLdRfVar var_A0
  loc_A2A14E: LitVarStr var_9C, "CucuPers"
  loc_A2A153: PopAdLdVar
  loc_A2A154: FLdRfVar var_8C
  loc_A2A157: FLdRfVar var_88
  loc_A2A15A: FLdPr Me
  loc_A2A15D: MemLdRfVar from_stack_1.global_76
  loc_A2A160: NewIfNullPr clsbase
  loc_A2A163: from_stack_1v = clsbase.RsFrmGet()
  loc_A2A168: FLdPr var_88
  loc_A2A16B:  = Me.Fields
  loc_A2A170: FLdPr var_8C
  loc_A2A173: from_stack_2 = Me.Item(from_stack_1)
  loc_A2A178: LitI2_Byte 0
  loc_A2A17A: LitVar_Missing var_D4
  loc_A2A17D: LitI2_Byte 0
  loc_A2A17F: FLdZeroAd var_A0
  loc_A2A182: CVarAd
  loc_A2A186: PopAdLdVar
  loc_A2A187: FLdPr Me
  loc_A2A18A: MemLdI2 global_104
  loc_A2A18D: CI4UI1
  loc_A2A18E: FLdPr Me
  loc_A2A191: MemLdStr global_100
  loc_A2A194: AryLock
  loc_A2A197: Ary1LdPr
  loc_A2A198: MemLdRfVar from_stack_1.global_0
  loc_A2A19B: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A2A1A0: AryUnlock
  loc_A2A1A3: FFreeAd var_88 = ""
  loc_A2A1AA: FFreeVar var_B4 = ""
  loc_A2A1B1: FLdRfVar var_A0
  loc_A2A1B4: LitVarStr var_9C, "DetaProv"
  loc_A2A1B9: PopAdLdVar
  loc_A2A1BA: FLdRfVar var_8C
  loc_A2A1BD: FLdRfVar var_88
  loc_A2A1C0: FLdPr Me
  loc_A2A1C3: MemLdRfVar from_stack_1.global_76
  loc_A2A1C6: NewIfNullPr clsbase
  loc_A2A1C9: from_stack_1v = clsbase.RsFrmGet()
  loc_A2A1CE: FLdPr var_88
  loc_A2A1D1:  = Me.Fields
  loc_A2A1D6: FLdPr var_8C
  loc_A2A1D9: from_stack_2 = Me.Item(from_stack_1)
  loc_A2A1DE: LitI2_Byte 0
  loc_A2A1E0: LitVar_Missing var_D4
  loc_A2A1E3: LitI2_Byte 0
  loc_A2A1E5: FLdZeroAd var_A0
  loc_A2A1E8: CVarAd
  loc_A2A1EC: PopAdLdVar
  loc_A2A1ED: FLdPr Me
  loc_A2A1F0: MemLdI2 global_104
  loc_A2A1F3: CI4UI1
  loc_A2A1F4: FLdPr Me
  loc_A2A1F7: MemLdStr global_100
  loc_A2A1FA: AryLock
  loc_A2A1FD: Ary1LdPr
  loc_A2A1FE: MemLdRfVar from_stack_1.global_4
  loc_A2A201: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A2A206: AryUnlock
  loc_A2A209: FFreeAd var_88 = ""
  loc_A2A210: FFreeVar var_B4 = ""
  loc_A2A217: FLdRfVar var_A0
  loc_A2A21A: LitVarStr var_9C, "MailPers"
  loc_A2A21F: PopAdLdVar
  loc_A2A220: FLdRfVar var_8C
  loc_A2A223: FLdRfVar var_88
  loc_A2A226: FLdPr Me
  loc_A2A229: MemLdRfVar from_stack_1.global_76
  loc_A2A22C: NewIfNullPr clsbase
  loc_A2A22F: from_stack_1v = clsbase.RsFrmGet()
  loc_A2A234: FLdPr var_88
  loc_A2A237:  = Me.Fields
  loc_A2A23C: FLdPr var_8C
  loc_A2A23F: from_stack_2 = Me.Item(from_stack_1)
  loc_A2A244: LitI2_Byte 0
  loc_A2A246: LitVar_Missing var_D4
  loc_A2A249: LitI2_Byte 0
  loc_A2A24B: FLdZeroAd var_A0
  loc_A2A24E: CVarAd
  loc_A2A252: PopAdLdVar
  loc_A2A253: FLdPr Me
  loc_A2A256: MemLdI2 global_104
  loc_A2A259: CI4UI1
  loc_A2A25A: FLdPr Me
  loc_A2A25D: MemLdStr global_100
  loc_A2A260: AryLock
  loc_A2A263: Ary1LdPr
  loc_A2A264: MemLdRfVar from_stack_1.global_8
  loc_A2A267: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A2A26C: AryUnlock
  loc_A2A26F: FFreeAd var_88 = ""
  loc_A2A276: FFreeVar var_B4 = ""
  loc_A2A27D: FLdRfVar var_A0
  loc_A2A280: LitVarStr var_9C, "DecrPers"
  loc_A2A285: PopAdLdVar
  loc_A2A286: FLdRfVar var_8C
  loc_A2A289: FLdRfVar var_88
  loc_A2A28C: FLdPr Me
  loc_A2A28F: MemLdRfVar from_stack_1.global_76
  loc_A2A292: NewIfNullPr clsbase
  loc_A2A295: from_stack_1v = clsbase.RsFrmGet()
  loc_A2A29A: FLdPr var_88
  loc_A2A29D:  = Me.Fields
  loc_A2A2A2: FLdPr var_8C
  loc_A2A2A5: from_stack_2 = Me.Item(from_stack_1)
  loc_A2A2AA: LitI2_Byte 0
  loc_A2A2AC: LitVar_Missing var_D4
  loc_A2A2AF: LitI2_Byte 0
  loc_A2A2B1: FLdZeroAd var_A0
  loc_A2A2B4: CVarAd
  loc_A2A2B8: PopAdLdVar
  loc_A2A2B9: FLdPr Me
  loc_A2A2BC: MemLdI2 global_104
  loc_A2A2BF: CI4UI1
  loc_A2A2C0: FLdPr Me
  loc_A2A2C3: MemLdStr global_100
  loc_A2A2C6: AryLock
  loc_A2A2C9: Ary1LdPr
  loc_A2A2CA: MemLdRfVar from_stack_1.global_12
  loc_A2A2CD: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A2A2D2: AryUnlock
  loc_A2A2D5: FFreeAd var_88 = ""
  loc_A2A2DC: FFreeVar var_B4 = ""
  loc_A2A2E3: Call Proc_225_36_AB6434()
  loc_A2A2E8: ExitProcHresult
  loc_A2A2E9: GeCyR8
  loc_A2A2EA: ExitProcR8
End Function

Private Function Proc_225_36_AB6434() 'AB6434
  'Data Table: 4C7AA8
  loc_AB5EB4: FLdPr Me
  loc_AB5EB7: MemLdI2 global_108
  loc_AB5EBA: LitI2_Byte 1
  loc_AB5EBC: AddI2
  loc_AB5EBD: FLdPr Me
  loc_AB5EC0: MemStI2 global_108
  loc_AB5EC3: LitI4 0
  loc_AB5EC8: FLdPr Me
  loc_AB5ECB: MemLdI2 global_108
  loc_AB5ECE: CI4UI1
  loc_AB5ECF: FLdPr Me
  loc_AB5ED2: MemLdI2 global_104
  loc_AB5ED5: CI4UI1
  loc_AB5ED6: FLdPr Me
  loc_AB5ED9: MemLdStr global_100
  loc_AB5EDC: Ary1LdPr
  loc_AB5EDD: MemLdRfVar from_stack_1.global_16
  loc_AB5EE0: RedimPreserve
  loc_AB5EEA: FLdRfVar var_A0
  loc_AB5EED: LitVarStr var_9C, "ExorImpu"
  loc_AB5EF2: PopAdLdVar
  loc_AB5EF3: FLdRfVar var_8C
  loc_AB5EF6: FLdRfVar var_88
  loc_AB5EF9: FLdPr Me
  loc_AB5EFC: MemLdRfVar from_stack_1.global_76
  loc_AB5EFF: NewIfNullPr clsbase
  loc_AB5F02: from_stack_1v = clsbase.RsFrmGet()
  loc_AB5F07: FLdPr var_88
  loc_AB5F0A:  = Me.Fields
  loc_AB5F0F: FLdPr var_8C
  loc_AB5F12: from_stack_2 = Me.Item(from_stack_1)
  loc_AB5F17: LitI2_Byte 0
  loc_AB5F19: LitVar_Missing var_D8
  loc_AB5F1C: LitI2_Byte 0
  loc_AB5F1E: FLdZeroAd var_A0
  loc_AB5F21: CVarAd
  loc_AB5F25: PopAdLdVar
  loc_AB5F26: FLdPr Me
  loc_AB5F29: MemLdI2 global_108
  loc_AB5F2C: CI4UI1
  loc_AB5F2D: FLdPr Me
  loc_AB5F30: MemLdI2 global_104
  loc_AB5F33: CI4UI1
  loc_AB5F34: FLdPr Me
  loc_AB5F37: MemLdStr global_100
  loc_AB5F3A: AryLock
  loc_AB5F3D: Ary1LdPr
  loc_AB5F3E: MemLdStr global_16
  loc_AB5F41: AryLock
  loc_AB5F44: Ary1LdPr
  loc_AB5F45: MemLdRfVar from_stack_1.global_0
  loc_AB5F48: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AB5F4D: AryUnlock
  loc_AB5F50: AryUnlock
  loc_AB5F53: FFreeAd var_88 = ""
  loc_AB5F5A: FFreeVar var_B8 = ""
  loc_AB5F61: FLdRfVar var_A0
  loc_AB5F64: LitVarStr var_9C, "ExpeImpu"
  loc_AB5F69: PopAdLdVar
  loc_AB5F6A: FLdRfVar var_8C
  loc_AB5F6D: FLdRfVar var_88
  loc_AB5F70: FLdPr Me
  loc_AB5F73: MemLdRfVar from_stack_1.global_76
  loc_AB5F76: NewIfNullPr clsbase
  loc_AB5F79: from_stack_1v = clsbase.RsFrmGet()
  loc_AB5F7E: FLdPr var_88
  loc_AB5F81:  = Me.Fields
  loc_AB5F86: FLdPr var_8C
  loc_AB5F89: from_stack_2 = Me.Item(from_stack_1)
  loc_AB5F8E: LitI2_Byte 0
  loc_AB5F90: LitVar_Missing var_D8
  loc_AB5F93: LitI2_Byte 0
  loc_AB5F95: FLdZeroAd var_A0
  loc_AB5F98: CVarAd
  loc_AB5F9C: PopAdLdVar
  loc_AB5F9D: FLdPr Me
  loc_AB5FA0: MemLdI2 global_108
  loc_AB5FA3: CI4UI1
  loc_AB5FA4: FLdPr Me
  loc_AB5FA7: MemLdI2 global_104
  loc_AB5FAA: CI4UI1
  loc_AB5FAB: FLdPr Me
  loc_AB5FAE: MemLdStr global_100
  loc_AB5FB1: AryLock
  loc_AB5FB4: Ary1LdPr
  loc_AB5FB5: MemLdStr global_16
  loc_AB5FB8: AryLock
  loc_AB5FBB: Ary1LdPr
  loc_AB5FBC: MemLdRfVar from_stack_1.global_4
  loc_AB5FBF: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AB5FC4: AryUnlock
  loc_AB5FC7: AryUnlock
  loc_AB5FCA: FFreeAd var_88 = ""
  loc_AB5FD1: FFreeVar var_B8 = ""
  loc_AB5FD8: FLdRfVar var_A0
  loc_AB5FDB: LitVarStr var_9C, "NumeFact"
  loc_AB5FE0: PopAdLdVar
  loc_AB5FE1: FLdRfVar var_8C
  loc_AB5FE4: FLdRfVar var_88
  loc_AB5FE7: FLdPr Me
  loc_AB5FEA: MemLdRfVar from_stack_1.global_76
  loc_AB5FED: NewIfNullPr clsbase
  loc_AB5FF0: from_stack_1v = clsbase.RsFrmGet()
  loc_AB5FF5: FLdPr var_88
  loc_AB5FF8:  = Me.Fields
  loc_AB5FFD: FLdPr var_8C
  loc_AB6000: from_stack_2 = Me.Item(from_stack_1)
  loc_AB6005: LitI2_Byte 0
  loc_AB6007: LitVar_Missing var_D8
  loc_AB600A: LitI2_Byte 0
  loc_AB600C: FLdZeroAd var_A0
  loc_AB600F: CVarAd
  loc_AB6013: PopAdLdVar
  loc_AB6014: FLdPr Me
  loc_AB6017: MemLdI2 global_108
  loc_AB601A: CI4UI1
  loc_AB601B: FLdPr Me
  loc_AB601E: MemLdI2 global_104
  loc_AB6021: CI4UI1
  loc_AB6022: FLdPr Me
  loc_AB6025: MemLdStr global_100
  loc_AB6028: AryLock
  loc_AB602B: Ary1LdPr
  loc_AB602C: MemLdStr global_16
  loc_AB602F: AryLock
  loc_AB6032: Ary1LdPr
  loc_AB6033: MemLdRfVar from_stack_1.global_8
  loc_AB6036: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AB603B: AryUnlock
  loc_AB603E: AryUnlock
  loc_AB6041: FFreeAd var_88 = ""
  loc_AB6048: FFreeVar var_B8 = ""
  loc_AB604F: FLdRfVar var_A0
  loc_AB6052: LitVarStr var_9C, "FefaDeve"
  loc_AB6057: PopAdLdVar
  loc_AB6058: FLdRfVar var_8C
  loc_AB605B: FLdRfVar var_88
  loc_AB605E: FLdPr Me
  loc_AB6061: MemLdRfVar from_stack_1.global_76
  loc_AB6064: NewIfNullPr clsbase
  loc_AB6067: from_stack_1v = clsbase.RsFrmGet()
  loc_AB606C: FLdPr var_88
  loc_AB606F:  = Me.Fields
  loc_AB6074: FLdPr var_8C
  loc_AB6077: from_stack_2 = Me.Item(from_stack_1)
  loc_AB607C: LitI2_Byte 0
  loc_AB607E: LitVar_Missing var_D8
  loc_AB6081: LitI2_Byte 0
  loc_AB6083: FLdZeroAd var_A0
  loc_AB6086: CVarAd
  loc_AB608A: PopAdLdVar
  loc_AB608B: FLdPr Me
  loc_AB608E: MemLdI2 global_108
  loc_AB6091: CI4UI1
  loc_AB6092: FLdPr Me
  loc_AB6095: MemLdI2 global_104
  loc_AB6098: CI4UI1
  loc_AB6099: FLdPr Me
  loc_AB609C: MemLdStr global_100
  loc_AB609F: AryLock
  loc_AB60A2: Ary1LdPr
  loc_AB60A3: MemLdStr global_16
  loc_AB60A6: AryLock
  loc_AB60A9: Ary1LdPr
  loc_AB60AA: MemLdRfVar from_stack_1.global_12
  loc_AB60AD: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AB60B2: AryUnlock
  loc_AB60B5: AryUnlock
  loc_AB60B8: FFreeAd var_88 = ""
  loc_AB60BF: FFreeVar var_B8 = ""
  loc_AB60C6: FLdRfVar var_A0
  loc_AB60C9: LitVarStr var_9C, "Mes"
  loc_AB60CE: PopAdLdVar
  loc_AB60CF: FLdRfVar var_8C
  loc_AB60D2: FLdRfVar var_88
  loc_AB60D5: FLdPr Me
  loc_AB60D8: MemLdRfVar from_stack_1.global_76
  loc_AB60DB: NewIfNullPr clsbase
  loc_AB60DE: from_stack_1v = clsbase.RsFrmGet()
  loc_AB60E3: FLdPr var_88
  loc_AB60E6:  = Me.Fields
  loc_AB60EB: FLdPr var_8C
  loc_AB60EE: from_stack_2 = Me.Item(from_stack_1)
  loc_AB60F3: LitI2_Byte 0
  loc_AB60F5: LitVar_Missing var_D8
  loc_AB60F8: LitI2_Byte 0
  loc_AB60FA: FLdZeroAd var_A0
  loc_AB60FD: CVarAd
  loc_AB6101: PopAdLdVar
  loc_AB6102: FLdPr Me
  loc_AB6105: MemLdI2 global_108
  loc_AB6108: CI4UI1
  loc_AB6109: FLdPr Me
  loc_AB610C: MemLdI2 global_104
  loc_AB610F: CI4UI1
  loc_AB6110: FLdPr Me
  loc_AB6113: MemLdStr global_100
  loc_AB6116: AryLock
  loc_AB6119: Ary1LdPr
  loc_AB611A: MemLdStr global_16
  loc_AB611D: AryLock
  loc_AB6120: Ary1LdPr
  loc_AB6121: MemLdRfVar from_stack_1.global_16
  loc_AB6124: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AB6129: AryUnlock
  loc_AB612C: AryUnlock
  loc_AB612F: FFreeAd var_88 = ""
  loc_AB6136: FFreeVar var_B8 = ""
  loc_AB613D: FLdRfVar var_A0
  loc_AB6140: LitVarStr var_9C, "DeveImpu"
  loc_AB6145: PopAdLdVar
  loc_AB6146: FLdRfVar var_8C
  loc_AB6149: FLdRfVar var_88
  loc_AB614C: FLdPr Me
  loc_AB614F: MemLdRfVar from_stack_1.global_76
  loc_AB6152: NewIfNullPr clsbase
  loc_AB6155: from_stack_1v = clsbase.RsFrmGet()
  loc_AB615A: FLdPr var_88
  loc_AB615D:  = Me.Fields
  loc_AB6162: FLdPr var_8C
  loc_AB6165: from_stack_2 = Me.Item(from_stack_1)
  loc_AB616A: LitI2_Byte 0
  loc_AB616C: LitVar_Missing var_D8
  loc_AB616F: LitI2_Byte &HFF
  loc_AB6171: FLdZeroAd var_A0
  loc_AB6174: CVarAd
  loc_AB6178: PopAdLdVar
  loc_AB6179: FLdPr Me
  loc_AB617C: MemLdI2 global_108
  loc_AB617F: CI4UI1
  loc_AB6180: FLdPr Me
  loc_AB6183: MemLdI2 global_104
  loc_AB6186: CI4UI1
  loc_AB6187: FLdPr Me
  loc_AB618A: MemLdStr global_100
  loc_AB618D: AryLock
  loc_AB6190: Ary1LdPr
  loc_AB6191: MemLdStr global_16
  loc_AB6194: AryLock
  loc_AB6197: Ary1LdPr
  loc_AB6198: MemLdRfVar from_stack_1.global_20
  loc_AB619B: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AB61A0: AryUnlock
  loc_AB61A3: AryUnlock
  loc_AB61A6: FFreeAd var_88 = ""
  loc_AB61AD: FFreeVar var_B8 = ""
  loc_AB61B4: FLdRfVar var_A0
  loc_AB61B7: LitVarStr var_9C, "MapaImpu"
  loc_AB61BC: PopAdLdVar
  loc_AB61BD: FLdRfVar var_8C
  loc_AB61C0: FLdRfVar var_88
  loc_AB61C3: FLdPr Me
  loc_AB61C6: MemLdRfVar from_stack_1.global_76
  loc_AB61C9: NewIfNullPr clsbase
  loc_AB61CC: from_stack_1v = clsbase.RsFrmGet()
  loc_AB61D1: FLdPr var_88
  loc_AB61D4:  = Me.Fields
  loc_AB61D9: FLdPr var_8C
  loc_AB61DC: from_stack_2 = Me.Item(from_stack_1)
  loc_AB61E1: LitI2_Byte 0
  loc_AB61E3: LitVar_Missing var_D8
  loc_AB61E6: LitI2_Byte &HFF
  loc_AB61E8: FLdZeroAd var_A0
  loc_AB61EB: CVarAd
  loc_AB61EF: PopAdLdVar
  loc_AB61F0: FLdPr Me
  loc_AB61F3: MemLdI2 global_108
  loc_AB61F6: CI4UI1
  loc_AB61F7: FLdPr Me
  loc_AB61FA: MemLdI2 global_104
  loc_AB61FD: CI4UI1
  loc_AB61FE: FLdPr Me
  loc_AB6201: MemLdStr global_100
  loc_AB6204: AryLock
  loc_AB6207: Ary1LdPr
  loc_AB6208: MemLdStr global_16
  loc_AB620B: AryLock
  loc_AB620E: Ary1LdPr
  loc_AB620F: MemLdRfVar from_stack_1.global_24
  loc_AB6212: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AB6217: AryUnlock
  loc_AB621A: AryUnlock
  loc_AB621D: FFreeAd var_88 = ""
  loc_AB6224: FFreeVar var_B8 = ""
  loc_AB622B: FLdRfVar var_A0
  loc_AB622E: LitVarStr var_9C, "ResiDeve"
  loc_AB6233: PopAdLdVar
  loc_AB6234: FLdRfVar var_8C
  loc_AB6237: FLdRfVar var_88
  loc_AB623A: FLdPr Me
  loc_AB623D: MemLdRfVar from_stack_1.global_76
  loc_AB6240: NewIfNullPr clsbase
  loc_AB6243: from_stack_1v = clsbase.RsFrmGet()
  loc_AB6248: FLdPr var_88
  loc_AB624B:  = Me.Fields
  loc_AB6250: FLdPr var_8C
  loc_AB6253: from_stack_2 = Me.Item(from_stack_1)
  loc_AB6258: LitI2_Byte 0
  loc_AB625A: LitVar_Missing var_D8
  loc_AB625D: LitI2_Byte 0
  loc_AB625F: FLdZeroAd var_A0
  loc_AB6262: CVarAd
  loc_AB6266: PopAdLdVar
  loc_AB6267: FLdPr Me
  loc_AB626A: MemLdI2 global_108
  loc_AB626D: CI4UI1
  loc_AB626E: FLdPr Me
  loc_AB6271: MemLdI2 global_104
  loc_AB6274: CI4UI1
  loc_AB6275: FLdPr Me
  loc_AB6278: MemLdStr global_100
  loc_AB627B: AryLock
  loc_AB627E: Ary1LdPr
  loc_AB627F: MemLdStr global_16
  loc_AB6282: AryLock
  loc_AB6285: Ary1LdPr
  loc_AB6286: MemLdRfVar from_stack_1.global_28
  loc_AB6289: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AB628E: AryUnlock
  loc_AB6291: AryUnlock
  loc_AB6294: FFreeAd var_88 = ""
  loc_AB629B: FFreeVar var_B8 = ""
  loc_AB62A2: FLdRfVar var_A0
  loc_AB62A5: LitVarStr var_9C, "FormaPago"
  loc_AB62AA: PopAdLdVar
  loc_AB62AB: FLdRfVar var_8C
  loc_AB62AE: FLdRfVar var_88
  loc_AB62B1: FLdPr Me
  loc_AB62B4: MemLdRfVar from_stack_1.global_76
  loc_AB62B7: NewIfNullPr clsbase
  loc_AB62BA: from_stack_1v = clsbase.RsFrmGet()
  loc_AB62BF: FLdPr var_88
  loc_AB62C2:  = Me.Fields
  loc_AB62C7: FLdPr var_8C
  loc_AB62CA: from_stack_2 = Me.Item(from_stack_1)
  loc_AB62CF: LitI2_Byte 0
  loc_AB62D1: LitVar_Missing var_D8
  loc_AB62D4: LitI2_Byte 0
  loc_AB62D6: FLdZeroAd var_A0
  loc_AB62D9: CVarAd
  loc_AB62DD: PopAdLdVar
  loc_AB62DE: FLdPr Me
  loc_AB62E1: MemLdI2 global_108
  loc_AB62E4: CI4UI1
  loc_AB62E5: FLdPr Me
  loc_AB62E8: MemLdI2 global_104
  loc_AB62EB: CI4UI1
  loc_AB62EC: FLdPr Me
  loc_AB62EF: MemLdStr global_100
  loc_AB62F2: AryLock
  loc_AB62F5: Ary1LdPr
  loc_AB62F6: MemLdStr global_16
  loc_AB62F9: AryLock
  loc_AB62FC: Ary1LdPr
  loc_AB62FD: MemLdRfVar from_stack_1.global_32
  loc_AB6300: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AB6305: AryUnlock
  loc_AB6308: AryUnlock
  loc_AB630B: FFreeAd var_88 = ""
  loc_AB6312: FFreeVar var_B8 = ""
  loc_AB6319: FLdRfVar var_A0
  loc_AB631C: LitVarStr var_9C, "RepaImpu"
  loc_AB6321: PopAdLdVar
  loc_AB6322: FLdRfVar var_8C
  loc_AB6325: FLdRfVar var_88
  loc_AB6328: FLdPr Me
  loc_AB632B: MemLdRfVar from_stack_1.global_76
  loc_AB632E: NewIfNullPr clsbase
  loc_AB6331: from_stack_1v = clsbase.RsFrmGet()
  loc_AB6336: FLdPr var_88
  loc_AB6339:  = Me.Fields
  loc_AB633E: FLdPr var_8C
  loc_AB6341: from_stack_2 = Me.Item(from_stack_1)
  loc_AB6346: LitI2_Byte 0
  loc_AB6348: FLdPr Me
  loc_AB634B: MemLdI2 global_104
  loc_AB634E: CI4UI1
  loc_AB634F: FLdPr Me
  loc_AB6352: MemLdStr global_100
  loc_AB6355: AryLock
  loc_AB6358: Ary1LdPr
  loc_AB6359: MemLdRfVar from_stack_1.global_24
  loc_AB635C: CVarRef
  loc_AB6361: LitI2_Byte &HFF
  loc_AB6363: FLdZeroAd var_A0
  loc_AB6366: CVarAd
  loc_AB636A: PopAdLdVar
  loc_AB636B: FLdPr Me
  loc_AB636E: MemLdI2 global_108
  loc_AB6371: CI4UI1
  loc_AB6372: FLdPr Me
  loc_AB6375: MemLdI2 global_104
  loc_AB6378: CI4UI1
  loc_AB6379: FLdPr Me
  loc_AB637C: MemLdStr global_100
  loc_AB637F: AryLock
  loc_AB6382: Ary1LdPr
  loc_AB6383: MemLdStr global_16
  loc_AB6386: AryLock
  loc_AB6389: Ary1LdPr
  loc_AB638A: MemLdRfVar from_stack_1.global_36
  loc_AB638D: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AB6392: AryUnlock
  loc_AB6395: AryUnlock
  loc_AB6398: AryUnlock
  loc_AB639B: FFreeAd var_88 = ""
  loc_AB63A2: FFree1Var var_B8 = ""
  loc_AB63A5: FLdRfVar var_A0
  loc_AB63A8: LitVarStr var_9C, "LineaTxt"
  loc_AB63AD: PopAdLdVar
  loc_AB63AE: FLdRfVar var_8C
  loc_AB63B1: FLdRfVar var_88
  loc_AB63B4: FLdPr Me
  loc_AB63B7: MemLdRfVar from_stack_1.global_76
  loc_AB63BA: NewIfNullPr clsbase
  loc_AB63BD: from_stack_1v = clsbase.RsFrmGet()
  loc_AB63C2: FLdPr var_88
  loc_AB63C5:  = Me.Fields
  loc_AB63CA: FLdPr var_8C
  loc_AB63CD: from_stack_2 = Me.Item(from_stack_1)
  loc_AB63D2: LitI2_Byte 0
  loc_AB63D4: LitVar_Missing var_D8
  loc_AB63D7: LitI2_Byte 0
  loc_AB63D9: FLdZeroAd var_A0
  loc_AB63DC: CVarAd
  loc_AB63E0: PopAdLdVar
  loc_AB63E1: FLdPr Me
  loc_AB63E4: MemLdI2 global_108
  loc_AB63E7: CI4UI1
  loc_AB63E8: FLdPr Me
  loc_AB63EB: MemLdI2 global_104
  loc_AB63EE: CI4UI1
  loc_AB63EF: FLdPr Me
  loc_AB63F2: MemLdStr global_100
  loc_AB63F5: AryLock
  loc_AB63F8: Ary1LdPr
  loc_AB63F9: MemLdStr global_16
  loc_AB63FC: AryLock
  loc_AB63FF: Ary1LdPr
  loc_AB6400: MemLdRfVar from_stack_1.global_40
  loc_AB6403: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AB6408: AryUnlock
  loc_AB640B: AryUnlock
  loc_AB640E: FFreeAd var_88 = ""
  loc_AB6415: FFreeVar var_B8 = ""
  loc_AB641C: LitI4 1
  loc_AB6421: PopTmpLdAdStr var_E0
  loc_AB6424: FLdPr Me
  loc_AB6427: MemLdRfVar from_stack_1.global_76
  loc_AB642A: NewIfNullPr clsbase
  loc_AB642D: Call clsbase.Mover(from_stack_1v)
  loc_AB6432: ExitProcHresult
End Function

Private Function Proc_225_37_ACCB0C() 'ACCB0C
  'Data Table: 4C7AA8
  loc_ACC4CC: LitVarStr var_94, "<html>"
  loc_ACC4D1: PopAdLdVar
  loc_ACC4D2: FLdPr Me
  loc_ACC4D5: MemLdRfVar from_stack_1.htmFile
  loc_ACC4D8: LdPrVar
  loc_ACC4DA: LateMemCall
  loc_ACC4E0: LitVarStr var_94, "<head>"
  loc_ACC4E5: PopAdLdVar
  loc_ACC4E6: FLdPr Me
  loc_ACC4E9: MemLdRfVar from_stack_1.htmFile
  loc_ACC4EC: LdPrVar
  loc_ACC4EE: LateMemCall
  loc_ACC4F4: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_ACC4F9: PopAdLdVar
  loc_ACC4FA: FLdPr Me
  loc_ACC4FD: MemLdRfVar from_stack_1.htmFile
  loc_ACC500: LdPrVar
  loc_ACC502: LateMemCall
  loc_ACC508: LitStr "<title>"
  loc_ACC50B: FLdRfVar var_A8
  loc_ACC50E: FLdPr Me
  loc_ACC511:  = Me.Caption
  loc_ACC516: ILdRf var_A8
  loc_ACC519: ConcatStr
  loc_ACC51A: FStStrNoPop var_AC
  loc_ACC51D: LitStr "</title>"
  loc_ACC520: ConcatStr
  loc_ACC521: CVarStr var_BC
  loc_ACC524: PopAdLdVar
  loc_ACC525: FLdPr Me
  loc_ACC528: MemLdRfVar from_stack_1.htmFile
  loc_ACC52B: LdPrVar
  loc_ACC52D: LateMemCall
  loc_ACC533: FFreeStr var_A8 = ""
  loc_ACC53A: FFree1Var var_BC = ""
  loc_ACC53D: LitStr vbNullString
  loc_ACC540: ILdRf Me
  loc_ACC543: CastAd
  loc_ACC546: FStAdFunc var_C0
  loc_ACC549: FLdRfVar var_C0
  loc_ACC54C: ImpAdCallFPR4 Proc_263_23_B3DAB8(, )
  loc_ACC551: FFree1Ad var_C0
  loc_ACC554: LitI4 0
  loc_ACC559: FStStrCopy var_AC
  loc_ACC55C: FLdRfVar var_AC
  loc_ACC55F: LitI4 0
  loc_ACC564: FStStrCopy var_A8
  loc_ACC567: FLdRfVar var_A8
  loc_ACC56A: LitI2_Byte &HFF
  loc_ACC56C: PopTmpLdAd2 var_C2
  loc_ACC56F: FLdPr Me
  loc_ACC572: MemLdRfVar from_stack_1.htmFile
  loc_ACC575: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_ACC57A: FFreeStr var_A8 = ""
  loc_ACC581: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_ACC586: PopAdLdVar
  loc_ACC587: FLdPr Me
  loc_ACC58A: MemLdRfVar from_stack_1.htmFile
  loc_ACC58D: LdPrVar
  loc_ACC58F: LateMemCall
  loc_ACC595: LitVarStr var_94, "  <tr valign=""middle"">"
  loc_ACC59A: PopAdLdVar
  loc_ACC59B: FLdPr Me
  loc_ACC59E: MemLdRfVar from_stack_1.htmFile
  loc_ACC5A1: LdPrVar
  loc_ACC5A3: LateMemCall
  loc_ACC5A9: LitVarStr var_94, "    <th colspan=""2"" width=""100" & Chr(37) & """ align=""center"" valign=""bottom""><p>"
  loc_ACC5AE: PopAdLdVar
  loc_ACC5AF: FLdPr Me
  loc_ACC5B2: MemLdRfVar from_stack_1.htmFile
  loc_ACC5B5: LdPrVar
  loc_ACC5B7: LateMemCall
  loc_ACC5BD: FLdPr Me
  loc_ACC5C0: MemLdI2 bLogos
  loc_ACC5C3: BranchF loc_ACC5DA
  loc_ACC5C6: LitVarStr var_94, "    <img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right"">"
  loc_ACC5CB: PopAdLdVar
  loc_ACC5CC: FLdPr Me
  loc_ACC5CF: MemLdRfVar from_stack_1.htmFile
  loc_ACC5D2: LdPrVar
  loc_ACC5D4: LateMemCall
  loc_ACC5DA: LitVarStr var_A4, "    <br>"
  loc_ACC5DF: LitVarStr var_94, "Municipalidad de Guaymallén"
  loc_ACC5E4: FStVarCopyObj var_BC
  loc_ACC5E7: FLdRfVar var_BC
  loc_ACC5EA: FLdRfVar var_D4
  loc_ACC5ED: ImpAdCallFPR4  = Ucase()
  loc_ACC5F2: FLdRfVar var_D4
  loc_ACC5F5: ConcatVar var_E4
  loc_ACC5F9: LitVarStr var_F4, "</p>"
  loc_ACC5FE: ConcatVar var_104
  loc_ACC602: PopAdLdVar
  loc_ACC603: FLdPr Me
  loc_ACC606: MemLdRfVar from_stack_1.htmFile
  loc_ACC609: LdPrVar
  loc_ACC60B: LateMemCall
  loc_ACC611: FFreeVar var_BC = "": var_D4 = "": var_E4 = ""
  loc_ACC61C: LitStr "    <p>"
  loc_ACC61F: FLdRfVar var_A8
  loc_ACC622: FLdPr Me
  loc_ACC625:  = Me.Caption
  loc_ACC62A: ILdRf var_A8
  loc_ACC62D: ConcatStr
  loc_ACC62E: FStStrNoPop var_AC
  loc_ACC631: LitStr "</p></th>"
  loc_ACC634: ConcatStr
  loc_ACC635: CVarStr var_BC
  loc_ACC638: PopAdLdVar
  loc_ACC639: FLdPr Me
  loc_ACC63C: MemLdRfVar from_stack_1.htmFile
  loc_ACC63F: LdPrVar
  loc_ACC641: LateMemCall
  loc_ACC647: FFreeStr var_A8 = ""
  loc_ACC64E: FFree1Var var_BC = ""
  loc_ACC651: LitVarStr var_94, "  </tr>"
  loc_ACC656: PopAdLdVar
  loc_ACC657: FLdPr Me
  loc_ACC65A: MemLdRfVar from_stack_1.htmFile
  loc_ACC65D: LdPrVar
  loc_ACC65F: LateMemCall
  loc_ACC665: LitVarStr var_94, "  <tr><th colspan=""2""><hr></th></tr>"
  loc_ACC66A: PopAdLdVar
  loc_ACC66B: FLdPr Me
  loc_ACC66E: MemLdRfVar from_stack_1.htmFile
  loc_ACC671: LdPrVar
  loc_ACC673: LateMemCall
  loc_ACC679: LitVarStr var_94, "  <tr valign=""top"">"
  loc_ACC67E: PopAdLdVar
  loc_ACC67F: FLdPr Me
  loc_ACC682: MemLdRfVar from_stack_1.htmFile
  loc_ACC685: LdPrVar
  loc_ACC687: LateMemCall
  loc_ACC68D: LitVarStr var_94, "    <th align=""left"">"
  loc_ACC692: PopAdLdVar
  loc_ACC693: FLdPr Me
  loc_ACC696: MemLdRfVar from_stack_1.htmFile
  loc_ACC699: LdPrVar
  loc_ACC69B: LateMemCall
  loc_ACC6A1: LitStr "     Periodo: <span class=""Normal"">"
  loc_ACC6A4: FLdRfVar var_A8
  loc_ACC6A7: FLdPr Me
  loc_ACC6AA: VCallAd Control_ID_cboPeriodo
  loc_ACC6AD: FStAdFunc var_C0
  loc_ACC6B0: FLdPr var_C0
  loc_ACC6B3:  = Me.Text
  loc_ACC6B8: ILdRf var_A8
  loc_ACC6BB: ConcatStr
  loc_ACC6BC: FStStrNoPop var_AC
  loc_ACC6BF: LitStr "</span><br>"
  loc_ACC6C2: ConcatStr
  loc_ACC6C3: CVarStr var_BC
  loc_ACC6C6: PopAdLdVar
  loc_ACC6C7: FLdPr Me
  loc_ACC6CA: MemLdRfVar from_stack_1.htmFile
  loc_ACC6CD: LdPrVar
  loc_ACC6CF: LateMemCall
  loc_ACC6D5: FFreeStr var_A8 = ""
  loc_ACC6DC: FFree1Ad var_C0
  loc_ACC6DF: FFree1Var var_BC = ""
  loc_ACC6E2: FLdPr Me
  loc_ACC6E5: VCallAd Control_ID_CucuPersMsk
  loc_ACC6E8: FStAdFunc var_C0
  loc_ACC6EB: FLdPr var_C0
  loc_ACC6EE: LateIdLdVar var_BC DispID_22 0
  loc_ACC6F5: CStrVarTmp
  loc_ACC6F6: FStStrNoPop var_A8
  loc_ACC6F9: LitStr vbNullString
  loc_ACC6FC: NeStr
  loc_ACC6FE: FFree1Str var_A8
  loc_ACC701: FFree1Ad var_C0
  loc_ACC704: FFree1Var var_BC = ""
  loc_ACC707: BranchF loc_ACC74E
  loc_ACC70A: LitStr "     Nombre de Proveedor: <span class=""Normal"">"
  loc_ACC70D: FLdRfVar var_A8
  loc_ACC710: FLdPr Me
  loc_ACC713: VCallAd Control_ID_DetaProvLbl
  loc_ACC716: FStAdFunc var_C0
  loc_ACC719: FLdPr var_C0
  loc_ACC71C:  = Me.Caption
  loc_ACC721: ILdRf var_A8
  loc_ACC724: ConcatStr
  loc_ACC725: FStStrNoPop var_AC
  loc_ACC728: LitStr "</span>"
  loc_ACC72B: ConcatStr
  loc_ACC72C: CVarStr var_BC
  loc_ACC72F: PopAdLdVar
  loc_ACC730: FLdPr Me
  loc_ACC733: MemLdRfVar from_stack_1.htmFile
  loc_ACC736: LdPrVar
  loc_ACC738: LateMemCall
  loc_ACC73E: FFreeStr var_A8 = ""
  loc_ACC745: FFree1Ad var_C0
  loc_ACC748: FFree1Var var_BC = ""
  loc_ACC74B: Branch loc_ACC762
  loc_ACC74E: LitVarStr var_94, "     Nombre de Proveedor: <span class=""Normal"">TODOS</span>"
  loc_ACC753: PopAdLdVar
  loc_ACC754: FLdPr Me
  loc_ACC757: MemLdRfVar from_stack_1.htmFile
  loc_ACC75A: LdPrVar
  loc_ACC75C: LateMemCall
  loc_ACC762: FLdRfVar var_A8
  loc_ACC765: FLdPr Me
  loc_ACC768: VCallAd Control_ID_ImporteTxt
  loc_ACC76B: FStAdFunc var_C0
  loc_ACC76E: FLdPr var_C0
  loc_ACC771:  = Me.Text
  loc_ACC776: ILdRf var_A8
  loc_ACC779: LitStr vbNullString
  loc_ACC77C: NeStr
  loc_ACC77E: FFree1Str var_A8
  loc_ACC781: FFree1Ad var_C0
  loc_ACC784: BranchF loc_ACC7C8
  loc_ACC787: LitStr "     <br>Importes menores o iguales a: <span class=""Normal"">"
  loc_ACC78A: FLdRfVar var_A8
  loc_ACC78D: FLdPr Me
  loc_ACC790: VCallAd Control_ID_ImporteTxt
  loc_ACC793: FStAdFunc var_C0
  loc_ACC796: FLdPr var_C0
  loc_ACC799:  = Me.Text
  loc_ACC79E: ILdRf var_A8
  loc_ACC7A1: ConcatStr
  loc_ACC7A2: FStStrNoPop var_AC
  loc_ACC7A5: LitStr "</span>"
  loc_ACC7A8: ConcatStr
  loc_ACC7A9: CVarStr var_BC
  loc_ACC7AC: PopAdLdVar
  loc_ACC7AD: FLdPr Me
  loc_ACC7B0: MemLdRfVar from_stack_1.htmFile
  loc_ACC7B3: LdPrVar
  loc_ACC7B5: LateMemCall
  loc_ACC7BB: FFreeStr var_A8 = ""
  loc_ACC7C2: FFree1Ad var_C0
  loc_ACC7C5: FFree1Var var_BC = ""
  loc_ACC7C8: FLdRfVar var_C2
  loc_ACC7CB: FLdPr Me
  loc_ACC7CE: VCallAd Control_ID_chkExcluirTransferidos
  loc_ACC7D1: FStAdFunc var_C0
  loc_ACC7D4: FLdPr var_C0
  loc_ACC7D7:  = Me.Value
  loc_ACC7DC: FLdI2 var_C2
  loc_ACC7DF: CI4UI1
  loc_ACC7E0: LitI4 1
  loc_ACC7E5: EqI4
  loc_ACC7E6: FFree1Ad var_C0
  loc_ACC7E9: BranchF loc_ACC800
  loc_ACC7EC: LitVarStr var_94, "      <br>Los expedientes transferidos NO se muestran"
  loc_ACC7F1: PopAdLdVar
  loc_ACC7F2: FLdPr Me
  loc_ACC7F5: MemLdRfVar from_stack_1.htmFile
  loc_ACC7F8: LdPrVar
  loc_ACC7FA: LateMemCall
  loc_ACC800: FLdRfVar var_C2
  loc_ACC803: FLdPr Me
  loc_ACC806: VCallAd Control_ID_chkExcluirPartidasExtra
  loc_ACC809: FStAdFunc var_C0
  loc_ACC80C: FLdPr var_C0
  loc_ACC80F:  = Me.Value
  loc_ACC814: FLdI2 var_C2
  loc_ACC817: CI4UI1
  loc_ACC818: LitI4 1
  loc_ACC81D: EqI4
  loc_ACC81E: FFree1Ad var_C0
  loc_ACC821: BranchF loc_ACC838
  loc_ACC824: LitVarStr var_94, "      <br>Las Partidas Extrapresupuestarias NO se muestran"
  loc_ACC829: PopAdLdVar
  loc_ACC82A: FLdPr Me
  loc_ACC82D: MemLdRfVar from_stack_1.htmFile
  loc_ACC830: LdPrVar
  loc_ACC832: LateMemCall
  loc_ACC838: FLdRfVar var_C2
  loc_ACC83B: FLdPr Me
  loc_ACC83E: VCallAd Control_ID_chkIncluirDebitos
  loc_ACC841: FStAdFunc var_C0
  loc_ACC844: FLdPr var_C0
  loc_ACC847:  = Me.Value
  loc_ACC84C: FLdI2 var_C2
  loc_ACC84F: CI4UI1
  loc_ACC850: LitI4 1
  loc_ACC855: EqI4
  loc_ACC856: FFree1Ad var_C0
  loc_ACC859: BranchF loc_ACC870
  loc_ACC85C: LitVarStr var_94, "      <br>Incluye los Débitos Extrapresupuestarios"
  loc_ACC861: PopAdLdVar
  loc_ACC862: FLdPr Me
  loc_ACC865: MemLdRfVar from_stack_1.htmFile
  loc_ACC868: LdPrVar
  loc_ACC86A: LateMemCall
  loc_ACC870: LitVarStr var_94, "    </th>"
  loc_ACC875: PopAdLdVar
  loc_ACC876: FLdPr Me
  loc_ACC879: MemLdRfVar from_stack_1.htmFile
  loc_ACC87C: LdPrVar
  loc_ACC87E: LateMemCall
  loc_ACC884: LitVarStr var_94, "    <th align=""right"">"
  loc_ACC889: PopAdLdVar
  loc_ACC88A: FLdPr Me
  loc_ACC88D: MemLdRfVar from_stack_1.htmFile
  loc_ACC890: LdPrVar
  loc_ACC892: LateMemCall
  loc_ACC898: LitStr "     Desde: <span class=""Normal"">"
  loc_ACC89B: FLdPr Me
  loc_ACC89E: VCallAd Control_ID_DesdeMsk
  loc_ACC8A1: FStAdFunc var_C0
  loc_ACC8A4: FLdPr var_C0
  loc_ACC8A7: LateIdLdVar var_BC DispID_15 0
  loc_ACC8AE: CStrVarTmp
  loc_ACC8AF: FStStrNoPop var_A8
  loc_ACC8B2: ConcatStr
  loc_ACC8B3: FStStrNoPop var_AC
  loc_ACC8B6: LitStr "</span><br>"
  loc_ACC8B9: ConcatStr
  loc_ACC8BA: CVarStr var_D4
  loc_ACC8BD: PopAdLdVar
  loc_ACC8BE: FLdPr Me
  loc_ACC8C1: MemLdRfVar from_stack_1.htmFile
  loc_ACC8C4: LdPrVar
  loc_ACC8C6: LateMemCall
  loc_ACC8CC: FFreeStr var_A8 = ""
  loc_ACC8D3: FFree1Ad var_C0
  loc_ACC8D6: FFreeVar var_BC = ""
  loc_ACC8DD: LitStr "     Hasta: <span class=""Normal"">"
  loc_ACC8E0: FLdPr Me
  loc_ACC8E3: VCallAd Control_ID_HastaMsk
  loc_ACC8E6: FStAdFunc var_C0
  loc_ACC8E9: FLdPr var_C0
  loc_ACC8EC: LateIdLdVar var_BC DispID_15 0
  loc_ACC8F3: CStrVarTmp
  loc_ACC8F4: FStStrNoPop var_A8
  loc_ACC8F7: ConcatStr
  loc_ACC8F8: FStStrNoPop var_AC
  loc_ACC8FB: LitStr "</span>"
  loc_ACC8FE: ConcatStr
  loc_ACC8FF: CVarStr var_D4
  loc_ACC902: PopAdLdVar
  loc_ACC903: FLdPr Me
  loc_ACC906: MemLdRfVar from_stack_1.htmFile
  loc_ACC909: LdPrVar
  loc_ACC90B: LateMemCall
  loc_ACC911: FFreeStr var_A8 = ""
  loc_ACC918: FFree1Ad var_C0
  loc_ACC91B: FFreeVar var_BC = ""
  loc_ACC922: FLdRfVar var_C2
  loc_ACC925: FLdPr Me
  loc_ACC928: VCallAd Control_ID_chkOcultarImporte
  loc_ACC92B: FStAdFunc var_C0
  loc_ACC92E: FLdPr var_C0
  loc_ACC931:  = Me.Value
  loc_ACC936: FLdI2 var_C2
  loc_ACC939: CI4UI1
  loc_ACC93A: LitI4 1
  loc_ACC93F: EqI4
  loc_ACC940: FFree1Ad var_C0
  loc_ACC943: BranchF loc_ACC95A
  loc_ACC946: LitVarStr var_94, "     <br><span class=""Normal"">Los importes han sido ocultados...</span>"
  loc_ACC94B: PopAdLdVar
  loc_ACC94C: FLdPr Me
  loc_ACC94F: MemLdRfVar from_stack_1.htmFile
  loc_ACC952: LdPrVar
  loc_ACC954: LateMemCall
  loc_ACC95A: LitVarStr var_94, "    </th>"
  loc_ACC95F: PopAdLdVar
  loc_ACC960: FLdPr Me
  loc_ACC963: MemLdRfVar from_stack_1.htmFile
  loc_ACC966: LdPrVar
  loc_ACC968: LateMemCall
  loc_ACC96E: LitVarStr var_94, "  </tr>"
  loc_ACC973: PopAdLdVar
  loc_ACC974: FLdPr Me
  loc_ACC977: MemLdRfVar from_stack_1.htmFile
  loc_ACC97A: LdPrVar
  loc_ACC97C: LateMemCall
  loc_ACC982: LitVarStr var_94, "</table>"
  loc_ACC987: PopAdLdVar
  loc_ACC988: FLdPr Me
  loc_ACC98B: MemLdRfVar from_stack_1.htmFile
  loc_ACC98E: LdPrVar
  loc_ACC990: LateMemCall
  loc_ACC996: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_ACC99B: PopAdLdVar
  loc_ACC99C: FLdPr Me
  loc_ACC99F: MemLdRfVar from_stack_1.htmFile
  loc_ACC9A2: LdPrVar
  loc_ACC9A4: LateMemCall
  loc_ACC9AA: LitVarStr var_94, "  <THEAD>"
  loc_ACC9AF: PopAdLdVar
  loc_ACC9B0: FLdPr Me
  loc_ACC9B3: MemLdRfVar from_stack_1.htmFile
  loc_ACC9B6: LdPrVar
  loc_ACC9B8: LateMemCall
  loc_ACC9BE: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_ACC9C3: PopAdLdVar
  loc_ACC9C4: FLdPr Me
  loc_ACC9C7: MemLdRfVar from_stack_1.htmFile
  loc_ACC9CA: LdPrVar
  loc_ACC9CC: LateMemCall
  loc_ACC9D2: LitVarStr var_94, "    <th>Proveedor</th>"
  loc_ACC9D7: PopAdLdVar
  loc_ACC9D8: FLdPr Me
  loc_ACC9DB: MemLdRfVar from_stack_1.htmFile
  loc_ACC9DE: LdPrVar
  loc_ACC9E0: LateMemCall
  loc_ACC9E6: LitVarStr var_94, "    <th>Cuit-Cuil</th>"
  loc_ACC9EB: PopAdLdVar
  loc_ACC9EC: FLdPr Me
  loc_ACC9EF: MemLdRfVar from_stack_1.htmFile
  loc_ACC9F2: LdPrVar
  loc_ACC9F4: LateMemCall
  loc_ACC9FA: LitVarStr var_94, "    <th>Domicilio</th>"
  loc_ACC9FF: PopAdLdVar
  loc_ACCA00: FLdPr Me
  loc_ACCA03: MemLdRfVar from_stack_1.htmFile
  loc_ACCA06: LdPrVar
  loc_ACCA08: LateMemCall
  loc_ACCA0E: LitVarStr var_94, "    <th>Expediente<br>Original</th>"
  loc_ACCA13: PopAdLdVar
  loc_ACCA14: FLdPr Me
  loc_ACCA17: MemLdRfVar from_stack_1.htmFile
  loc_ACCA1A: LdPrVar
  loc_ACCA1C: LateMemCall
  loc_ACCA22: LitVarStr var_94, "    <th>Expediente<br>de Pago</th>"
  loc_ACCA27: PopAdLdVar
  loc_ACCA28: FLdPr Me
  loc_ACCA2B: MemLdRfVar from_stack_1.htmFile
  loc_ACCA2E: LdPrVar
  loc_ACCA30: LateMemCall
  loc_ACCA36: LitVarStr var_94, "    <th>Factura</th>"
  loc_ACCA3B: PopAdLdVar
  loc_ACCA3C: FLdPr Me
  loc_ACCA3F: MemLdRfVar from_stack_1.htmFile
  loc_ACCA42: LdPrVar
  loc_ACCA44: LateMemCall
  loc_ACCA4A: LitVarStr var_94, "    <th>Fecha de Factura</th>"
  loc_ACCA4F: PopAdLdVar
  loc_ACCA50: FLdPr Me
  loc_ACCA53: MemLdRfVar from_stack_1.htmFile
  loc_ACCA56: LdPrVar
  loc_ACCA58: LateMemCall
  loc_ACCA5E: LitVarStr var_94, "    <th>Mes de Factura</th>"
  loc_ACCA63: PopAdLdVar
  loc_ACCA64: FLdPr Me
  loc_ACCA67: MemLdRfVar from_stack_1.htmFile
  loc_ACCA6A: LdPrVar
  loc_ACCA6C: LateMemCall
  loc_ACCA72: LitVarStr var_94, "    <th>Total Devengado</th>"
  loc_ACCA77: PopAdLdVar
  loc_ACCA78: FLdPr Me
  loc_ACCA7B: MemLdRfVar from_stack_1.htmFile
  loc_ACCA7E: LdPrVar
  loc_ACCA80: LateMemCall
  loc_ACCA86: LitVarStr var_94, "    <th>Total Mandado a Pagar</th>"
  loc_ACCA8B: PopAdLdVar
  loc_ACCA8C: FLdPr Me
  loc_ACCA8F: MemLdRfVar from_stack_1.htmFile
  loc_ACCA92: LdPrVar
  loc_ACCA94: LateMemCall
  loc_ACCA9A: FLdPr Me
  loc_ACCA9D: MemLdI2 global_120
  loc_ACCAA0: BranchF loc_ACCABA
  loc_ACCAA3: LitVarStr var_94, "    <th>Forma de pago</th>"
  loc_ACCAA8: PopAdLdVar
  loc_ACCAA9: FLdPr Me
  loc_ACCAAC: MemLdRfVar from_stack_1.htmFile
  loc_ACCAAF: LdPrVar
  loc_ACCAB1: LateMemCall
  loc_ACCAB7: Branch loc_ACCACE
  loc_ACCABA: LitVarStr var_94, "    <th>Transferido</th>"
  loc_ACCABF: PopAdLdVar
  loc_ACCAC0: FLdPr Me
  loc_ACCAC3: MemLdRfVar from_stack_1.htmFile
  loc_ACCAC6: LdPrVar
  loc_ACCAC8: LateMemCall
  loc_ACCACE: LitVarStr var_94, "    <th>Total Residuos Pasivos por<br>Proveedor</th>"
  loc_ACCAD3: PopAdLdVar
  loc_ACCAD4: FLdPr Me
  loc_ACCAD7: MemLdRfVar from_stack_1.htmFile
  loc_ACCADA: LdPrVar
  loc_ACCADC: LateMemCall
  loc_ACCAE2: LitVarStr var_94, "  </tr>"
  loc_ACCAE7: PopAdLdVar
  loc_ACCAE8: FLdPr Me
  loc_ACCAEB: MemLdRfVar from_stack_1.htmFile
  loc_ACCAEE: LdPrVar
  loc_ACCAF0: LateMemCall
  loc_ACCAF6: LitVarStr var_94, "  </THEAD>"
  loc_ACCAFB: PopAdLdVar
  loc_ACCAFC: FLdPr Me
  loc_ACCAFF: MemLdRfVar from_stack_1.htmFile
  loc_ACCB02: LdPrVar
  loc_ACCB04: LateMemCall
  loc_ACCB0A: ExitProcHresult
End Function

Private Function Proc_225_38_981580() '981580
  'Data Table: 4C7AA8
  loc_981540: LitVarStr var_94, "</table>"
  loc_981545: PopAdLdVar
  loc_981546: FLdPr Me
  loc_981549: MemLdRfVar from_stack_1.htmFile
  loc_98154C: LdPrVar
  loc_98154E: LateMemCall
  loc_981554: LitVarStr var_94, "</body>"
  loc_981559: PopAdLdVar
  loc_98155A: FLdPr Me
  loc_98155D: MemLdRfVar from_stack_1.htmFile
  loc_981560: LdPrVar
  loc_981562: LateMemCall
  loc_981568: LitVarStr var_94, "</html>"
  loc_98156D: PopAdLdVar
  loc_98156E: FLdPr Me
  loc_981571: MemLdRfVar from_stack_1.htmFile
  loc_981574: LdPrVar
  loc_981576: LateMemCall
  loc_98157C: ExitProcHresult
  loc_98157D: ImpAdStI2 MemVar_53F86C
End Function
