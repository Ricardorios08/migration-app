VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptSubdiariodeingresos
  Caption = "Subdiario de ingresos"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptSubdiariodeingresos.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 9630
  ClientHeight = 4095
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 3840
    Width = 9630
    Height = 255
    TabIndex = 19
    OleObjectBlob = "rptSubdiariodeingresos.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 6960
    Top = 2520
    Width = 735
    Height = 615
    TabIndex = 17
    Cancel = -1  'True
    Picture = "rptSubdiariodeingresos.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptSubdiariodeingresos.frx":0B9C
    Left = 5520
    Top = 0
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 2280
    Width = 3255
    Height = 1095
    TabIndex = 15
    Begin VB.CommandButton cmdXLS
      Caption = "&XLS"
      Left = 1680
      Top = 360
      Width = 1335
      Height = 495
      Enabled = 0   'False
      TabIndex = 20
    End
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 16
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 2280
    Width = 3015
    Height = 1095
    TabIndex = 12
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 14
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 13
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 9375
    Height = 2055
    TabIndex = 0
    Begin VB.CommandButton cmdCodiCuco
      Left = 3165
      Top = 1440
      Width = 375
      Height = 375
      TabIndex = 10
      Picture = "rptSubdiariodeingresos.frx":0C00
      Style = 1
    End
    Begin VB.CommandButton cmdCalHasta
      Left = 2520
      Top = 840
      Width = 375
      Height = 375
      TabIndex = 7
      Picture = "rptSubdiariodeingresos.frx":0CFA
      Style = 1
    End
    Begin VB.CommandButton cmdCalDesde
      Left = 2520
      Top = 360
      Width = 375
      Height = 375
      TabIndex = 3
      Picture = "rptSubdiariodeingresos.frx":123C
      Style = 1
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 4320
      Top = 480
      Width = 1335
      Height = 495
      TabIndex = 4
    End
    Begin MSMask.MaskEdBox mskDesde
      Left = 1320
      Top = 360
      Width = 1095
      Height = 285
      TabIndex = 2
      OleObjectBlob = "rptSubdiariodeingresos.frx":177E
    End
    Begin MSMask.MaskEdBox mskHasta
      Left = 1320
      Top = 840
      Width = 1095
      Height = 285
      TabIndex = 6
      OleObjectBlob = "rptSubdiariodeingresos.frx":1806
    End
    Begin MSMask.MaskEdBox mskCodiCuco
      Left = 1485
      Top = 1440
      Width = 1575
      Height = 285
      TabIndex = 9
      OleObjectBlob = "rptSubdiariodeingresos.frx":188E
    End
    Begin VB.Label Label5
      Caption = "Cuenta Contable:"
      Left = 120
      Top = 1440
      Width = 1230
      Height = 195
      TabIndex = 8
    End
    Begin VB.Label lblDetaCuco
      Left = 3645
      Top = 1440
      Width = 5535
      Height = 375
      TabIndex = 11
      BorderStyle = 1 'Fixed Single
    End
    Begin VB.Label Label2
      Caption = "Hasta:"
      Left = 720
      Top = 840
      Width = 465
      Height = 195
      TabIndex = 5
      AutoSize = -1  'True
    End
    Begin VB.Label Label1
      Caption = "Desde:"
      Left = 720
      Top = 360
      Width = 510
      Height = 195
      TabIndex = 1
      AutoSize = -1  'True
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 6960
    Top = 2760
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 18
    OleObjectBlob = "rptSubdiariodeingresos.frx":190E
  End
End

Attribute VB_Name = "rptSubdiariodeingresos"

Public htmFile As Variant
Public bLogos As Boolean
Public bGenerado As Boolean

Private Type UDT_1_00519134
  bStruc(12) As Byte ' String fields: 3
End Type

Private Type UDT_2_00618FA8
  bStruc(24) As Byte ' String fields: 6
End Type


Private Sub cmdCalHasta_Click() '97D810
  'Data Table: 47A680
  loc_97D7DC: LitVar_Missing var_A4
  loc_97D7DF: PopAdLdVar
  loc_97D7E0: LitVarI4
  loc_97D7E8: PopAdLdVar
  loc_97D7E9: ImpAdLdRf MemVar_C3D9A8
  loc_97D7EC: NewIfNullPr frmCalendario
  loc_97D7EF: frmCalendario.Show from_stack_1, from_stack_2
  loc_97D7F4: ImpAdLdRf MemVar_C3D038
  loc_97D7F7: CDargRef
  loc_97D7FB: FLdPr Me
  loc_97D7FE: VCallAd Control_ID_mskHasta
  loc_97D801: FStAdFunc var_A8
  loc_97D804: FLdPr var_A8
  loc_97D807: LateIdSt
  loc_97D80C: FFree1Ad var_A8
  loc_97D80F: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '964D10
  'Data Table: 47A680
  loc_964CF8: ILdRf Me
  loc_964CFB: CastAd
  loc_964CFE: FStAdFunc var_88
  loc_964D01: FLdRfVar var_88
  loc_964D04: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_964D09: FFree1Ad var_88
  loc_964D0C: ExitProcHresult
End Sub

Private Sub mskDesde_UnknownEvent_0 '950A48
  'Data Table: 47A680
  loc_950A34: FLdPr Me
  loc_950A37: VCallAd Control_ID_mskDesde
  loc_950A3A: CVarAd
  loc_950A3E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_950A43: FFree1Var var_94 = ""
  loc_950A46: ExitProcHresult
End Sub

Private Function mskDesde_UnknownEvent_8(arg_C) '9C4658
  'Data Table: 47A680
  loc_9C4594: FLdPr Me
  loc_9C4597: VCallAd Control_ID_mskDesde
  loc_9C459A: FStAdFunc var_88
  loc_9C459D: FLdPr var_88
  loc_9C45A0: LateIdLdVar var_98 DispID_22 0
  loc_9C45A7: CStrVarTmp
  loc_9C45A8: FStStrNoPop var_9C
  loc_9C45AB: LitStr vbNullString
  loc_9C45AE: NeStr
  loc_9C45B0: FFree1Str var_9C
  loc_9C45B3: FFree1Ad var_88
  loc_9C45B6: FFree1Var var_98 = ""
  loc_9C45B9: BranchF loc_9C4654
  loc_9C45BC: FLdPr Me
  loc_9C45BF: VCallAd Control_ID_mskDesde
  loc_9C45C2: FStAdFunc var_88
  loc_9C45C5: FLdPr var_88
  loc_9C45C8: LateIdLdVar var_98 DispID_15 0
  loc_9C45CF: PopAd
  loc_9C45D1: FLdPr Me
  loc_9C45D4: VCallAd Control_ID_mskDesde
  loc_9C45D7: FStAdFunc var_AC
  loc_9C45DA: LitI2_Byte &HFF
  loc_9C45DC: PopTmpLdAd2 var_A2
  loc_9C45DF: FLdZeroAd var_AC
  loc_9C45E2: FStAdFunc var_A0
  loc_9C45E5: FLdRfVar var_A0
  loc_9C45E8: LitStr vbNullString
  loc_9C45EB: LitI2_Byte 0
  loc_9C45ED: LitI2_Byte 0
  loc_9C45EF: FLdRfVar var_98
  loc_9C45F2: CStrVarTmp
  loc_9C45F3: FStStrNoPop var_9C
  loc_9C45F6: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9C45FB: FStStrNoPop var_A8
  loc_9C45FE: FLdPr Me
  loc_9C4601: MemStStrCopy
  loc_9C4605: FFreeStr var_9C = ""
  loc_9C460C: FFreeAd var_88 = "": var_A0 = ""
  loc_9C4615: FFree1Var var_98 = ""
  loc_9C4618: FLdPr Me
  loc_9C461B: VCallAd Control_ID_mskDesde
  loc_9C461E: FStAdFunc var_B0
  loc_9C4621: LitNothing
  loc_9C4623: CastAd
  loc_9C4626: FStAdFunc var_AC
  loc_9C4629: FLdRfVar var_AC
  loc_9C462C: FLdZeroAd var_B0
  loc_9C462F: FStAdFuncNoPop
  loc_9C4632: CastAd
  loc_9C4635: FStAdFunc var_A0
  loc_9C4638: FLdRfVar var_A0
  loc_9C463B: FLdPr Me
  loc_9C463E: MemLdRfVar from_stack_1.global_104
  loc_9C4641: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9C4646: IStI2 arg_C
  loc_9C4649: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9C4654: ExitProcHresult
End Function

Private Sub mskHasta_UnknownEvent_0 '950AD8
  'Data Table: 47A680
  loc_950AC4: FLdPr Me
  loc_950AC7: VCallAd Control_ID_mskHasta
  loc_950ACA: CVarAd
  loc_950ACE: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_950AD3: FFree1Var var_94 = ""
  loc_950AD6: ExitProcHresult
End Sub

Private Function mskHasta_UnknownEvent_8(arg_C) '9B1F5C
  'Data Table: 47A680
  loc_9B1EC0: FLdPr Me
  loc_9B1EC3: VCallAd Control_ID_mskHasta
  loc_9B1EC6: FStAdFunc var_88
  loc_9B1EC9: FLdPr var_88
  loc_9B1ECC: LateIdLdVar var_98 DispID_15 0
  loc_9B1ED3: PopAd
  loc_9B1ED5: FLdPr Me
  loc_9B1ED8: VCallAd Control_ID_mskHasta
  loc_9B1EDB: FStAdFunc var_AC
  loc_9B1EDE: LitI2_Byte &HFF
  loc_9B1EE0: PopTmpLdAd2 var_A2
  loc_9B1EE3: FLdZeroAd var_AC
  loc_9B1EE6: FStAdFunc var_A0
  loc_9B1EE9: FLdRfVar var_A0
  loc_9B1EEC: LitStr vbNullString
  loc_9B1EEF: LitI2_Byte 0
  loc_9B1EF1: LitI2_Byte 0
  loc_9B1EF3: FLdRfVar var_98
  loc_9B1EF6: CStrVarTmp
  loc_9B1EF7: FStStrNoPop var_9C
  loc_9B1EFA: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9B1EFF: FStStrNoPop var_A8
  loc_9B1F02: FLdPr Me
  loc_9B1F05: MemStStrCopy
  loc_9B1F09: FFreeStr var_9C = ""
  loc_9B1F10: FFreeAd var_88 = "": var_A0 = ""
  loc_9B1F19: FFree1Var var_98 = ""
  loc_9B1F1C: FLdPr Me
  loc_9B1F1F: VCallAd Control_ID_mskHasta
  loc_9B1F22: FStAdFunc var_B0
  loc_9B1F25: LitNothing
  loc_9B1F27: CastAd
  loc_9B1F2A: FStAdFunc var_AC
  loc_9B1F2D: FLdRfVar var_AC
  loc_9B1F30: FLdZeroAd var_B0
  loc_9B1F33: FStAdFuncNoPop
  loc_9B1F36: CastAd
  loc_9B1F39: FStAdFunc var_A0
  loc_9B1F3C: FLdRfVar var_A0
  loc_9B1F3F: FLdPr Me
  loc_9B1F42: MemLdRfVar from_stack_1.global_104
  loc_9B1F45: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9B1F4A: IStI2 arg_C
  loc_9B1F4D: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9B1F58: ExitProcHresult
  loc_9B1F59: IStFPR8 arg_21
End Function

Private Sub cmdSalir_Click() '97954C
  'Data Table: 47A680
  loc_97951C: LitVarStr var_94, "Cerrando..."
  loc_979521: PopAdLdVar
  loc_979522: FLdPr Me
  loc_979525: VCallAd Control_ID_statusBar
  loc_979528: FStAdFunc var_A8
  loc_97952B: FLdPr var_A8
  loc_97952E: LateIdSt
  loc_979533: FFree1Ad var_A8
  loc_979536: ILdRf Me
  loc_979539: FStAdNoPop
  loc_97953D: ImpAdLdRf MemVar_C44F9C
  loc_979540: NewIfNullPr Me
  loc_979543: Me.Global.Unload from_stack_1
  loc_979548: FFree1Ad var_A8
  loc_97954B: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '98B684
  'Data Table: 47A680
  loc_98B64C: FLdPr Me
  loc_98B64F: VCallAd Control_ID_statusBar
  loc_98B652: FStAdFunc var_88
  loc_98B655: FLdPr var_88
  loc_98B658: LateIdLdVar var_98 DispID_1 0
  loc_98B65F: CStrVarTmp
  loc_98B660: CVarStr var_A8
  loc_98B663: PopAdLdVar
  loc_98B664: FLdPr Me
  loc_98B667: VCallAd Control_ID_statusBar
  loc_98B66A: FStAdFunc var_BC
  loc_98B66D: FLdPr var_BC
  loc_98B670: LateIdSt
  loc_98B675: FFreeAd var_88 = ""
  loc_98B67C: FFreeVar var_98 = ""
  loc_98B683: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '964804
  'Data Table: 47A680
  loc_9647EC: LitI2_Byte 0
  loc_9647EE: ILdRf Me
  loc_9647F1: CastAd
  loc_9647F4: FStAdFunc var_88
  loc_9647F7: FLdRfVar var_88
  loc_9647FA: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_9647FF: FFree1Ad var_88
  loc_964802: ExitProcHresult
End Sub

Private Sub cmdXLS_Click() '96923C
  'Data Table: 47A680
  loc_969220: LitI2_Byte &HFF
  loc_969222: LitI2_Byte 0
  loc_969224: ILdRf Me
  loc_969227: CastAd
  loc_96922A: FStAdFunc var_88
  loc_96922D: FLdRfVar var_88
  loc_969230: ImpAdCallFPR4 Proc_263_4_A28DF0(, , )
  loc_969235: FFree1Ad var_88
  loc_969238: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '9591BC
  'Data Table: 47A680
  loc_9591A4: ILdRf Me
  loc_9591A7: CastAd
  loc_9591AA: FStAdFunc var_88
  loc_9591AD: FLdRfVar var_88
  loc_9591B0: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_9591B5: FFree1Ad var_88
  loc_9591B8: ExitProcHresult
End Sub

Private Sub mskCodiCuco_UnknownEvent_0 '94D5F8
  'Data Table: 47A680
  loc_94D5E4: FLdPr Me
  loc_94D5E7: VCallAd Control_ID_mskCodiCuco
  loc_94D5EA: CVarAd
  loc_94D5EE: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94D5F3: FFree1Var var_94 = ""
  loc_94D5F6: ExitProcHresult
End Sub

Private Sub mskCodiCuco_UnknownEvent_1 'A21534
  'Data Table: 47A680
  loc_A213B0: LitStr "SELECT DetaCuco"
  loc_A213B3: LitStr " FROM infogov.cuentacontable"
  loc_A213B6: ConcatStr
  loc_A213B7: FStStrNoPop var_88
  loc_A213BA: LitStr " WHERE PeriInfo = "
  loc_A213BD: ConcatStr
  loc_A213BE: CVarStr var_CC
  loc_A213C1: FLdPr Me
  loc_A213C4: VCallAd Control_ID_mskDesde
  loc_A213C7: FStAdFunc var_8C
  loc_A213CA: FLdPr var_8C
  loc_A213CD: LateIdLdVar var_9C DispID_15 0
  loc_A213D4: CStrVarTmp
  loc_A213D5: CVarStr var_AC
  loc_A213D8: FLdRfVar var_BC
  loc_A213DB: ImpAdCallFPR4  = Year()
  loc_A213E0: FLdRfVar var_BC
  loc_A213E3: ConcatVar var_DC
  loc_A213E7: LitVarStr var_EC, " AND CodiCuco LIKE '"
  loc_A213EC: ConcatVar var_FC
  loc_A213F0: FLdPr Me
  loc_A213F3: VCallAd Control_ID_mskCodiCuco
  loc_A213F6: FStAdFunc var_100
  loc_A213F9: FLdPr var_100
  loc_A213FC: LateIdLdVar var_110 DispID_20 0
  loc_A21403: CStrVarTmp
  loc_A21404: CVarStr var_120
  loc_A21407: ConcatVar var_130
  loc_A2140B: LitVarStr var_140, Chr(37) & "'"
  loc_A21410: ConcatVar var_150
  loc_A21414: CStrVarVal var_154
  loc_A21418: FLdPr Me
  loc_A2141B: MemLdRfVar from_stack_1.global_80
  loc_A2141E: NewIfNullPr clscuentacontable
  loc_A21421: Call clscuentacontable.RedefineRS(from_stack_1v)
  loc_A21426: FFreeStr var_88 = ""
  loc_A2142D: FFreeAd var_8C = ""
  loc_A21434: FFreeVar var_9C = "": var_AC = "": var_CC = "": var_BC = "": var_DC = "": var_110 = "": var_FC = "": var_120 = "": var_130 = ""
  loc_A2144B: FLdRfVar var_158
  loc_A2144E: FLdPr Me
  loc_A21451: MemLdRfVar from_stack_1.global_80
  loc_A21454: NewIfNullPr clscuentacontable
  loc_A21457: from_stack_1 = clscuentacontable.RecordCount
  loc_A2145C: ILdRf var_158
  loc_A2145F: FStR4 var_15C
  loc_A21462: ILdRf var_15C
  loc_A21465: LitI4 0
  loc_A2146A: EqI4
  loc_A2146B: BranchF loc_A21488
  loc_A2146E: LitStr vbNullString
  loc_A21471: FLdPr Me
  loc_A21474: VCallAd Control_ID_lblDetaCuco
  loc_A21477: FStAdFunc var_8C
  loc_A2147A: FLdPr var_8C
  loc_A2147D: Me.Caption = from_stack_1
  loc_A21482: FFree1Ad var_8C
  loc_A21485: Branch loc_A21533
  loc_A21488: ILdRf var_15C
  loc_A2148B: LitI4 1
  loc_A21490: EqI4
  loc_A21491: BranchF loc_A214F8
  loc_A21494: FLdRfVar var_9C
  loc_A21497: FLdRfVar var_160
  loc_A2149A: LitVarStr var_EC, "DetaCuco"
  loc_A2149F: PopAdLdVar
  loc_A214A0: FLdRfVar var_100
  loc_A214A3: FLdRfVar var_8C
  loc_A214A6: FLdPr Me
  loc_A214A9: MemLdRfVar from_stack_1.global_80
  loc_A214AC: NewIfNullPr clscuentacontable
  loc_A214AF: from_stack_1v = clscuentacontable.RsFrmGet()
  loc_A214B4: FLdPr var_8C
  loc_A214B7:  = Me.Fields
  loc_A214BC: FLdPr var_100
  loc_A214BF: from_stack_2 = Me.Item(from_stack_1)
  loc_A214C4: FLdPr var_160
  loc_A214C7:  = Me.Value
  loc_A214CC: FLdRfVar var_9C
  loc_A214CF: CStrVarTmp
  loc_A214D0: FStStrNoPop var_88
  loc_A214D3: FLdPr Me
  loc_A214D6: VCallAd Control_ID_lblDetaCuco
  loc_A214D9: FStAdFunc var_164
  loc_A214DC: FLdPr var_164
  loc_A214DF: Me.Caption = from_stack_1
  loc_A214E4: FFree1Str var_88
  loc_A214E7: FFreeAd var_8C = "": var_100 = "": var_160 = ""
  loc_A214F2: FFree1Var var_9C = ""
  loc_A214F5: Branch loc_A21533
  loc_A214F8: FLdRfVar var_158
  loc_A214FB: FLdPr Me
  loc_A214FE: MemLdRfVar from_stack_1.global_80
  loc_A21501: NewIfNullPr clscuentacontable
  loc_A21504: from_stack_1 = clscuentacontable.RecordCount
  loc_A21509: ILdRf var_158
  loc_A2150C: CStrI4
  loc_A2150E: FStStrNoPop var_88
  loc_A21511: LitStr " cuentas encontradas"
  loc_A21514: ConcatStr
  loc_A21515: FStStrNoPop var_154
  loc_A21518: FLdPr Me
  loc_A2151B: VCallAd Control_ID_lblDetaCuco
  loc_A2151E: FStAdFunc var_8C
  loc_A21521: FLdPr var_8C
  loc_A21524: Me.Caption = from_stack_1
  loc_A21529: FFreeStr var_88 = ""
  loc_A21530: FFree1Ad var_8C
  loc_A21533: ExitProcHresult
End Sub

Private Sub Form_Load() '96BE30
  'Data Table: 47A680
  loc_96BE10: LitI2_Byte &HFF
  loc_96BE12: ImpAdStI2 MemVar_C3D840
  loc_96BE15: ILdRf Me
  loc_96BE18: CastAd
  loc_96BE1B: FStAdFunc var_88
  loc_96BE1E: FLdRfVar var_88
  loc_96BE21: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_96BE26: FFree1Ad var_88
  loc_96BE29: Call cmdNueva_Click()
  loc_96BE2E: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '963504
  'Data Table: 47A680
  loc_9634EC: FLdPr Me
  loc_9634EF: VCallAd Control_ID_wbbReporte
  loc_9634F2: FStAdFunc var_88
  loc_9634F5: FLdRfVar var_88
  loc_9634F8: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_9634FD: FFree1Ad var_88
  loc_963500: ExitProcHresult
  loc_963501: CStrVarTmp
  loc_963502: CRec2Ansi Me00
End Sub

Private Sub cmdCodiCuco_Click() 'A07948
  'Data Table: 47A680
  loc_A077F4: FLdPr Me
  loc_A077F7: VCallAd Control_ID_mskDesde
  loc_A077FA: FStAdFunc var_88
  loc_A077FD: FLdPr var_88
  loc_A07800: LateIdLdVar var_98 DispID_15 0
  loc_A07807: CStrVarTmp
  loc_A07808: CVarStr var_A8
  loc_A0780B: FLdRfVar var_B8
  loc_A0780E: ImpAdCallFPR4  = Year()
  loc_A07813: FLdRfVar var_B8
  loc_A07816: CI2Var
  loc_A07817: ImpAdLdRf MemVar_C3D6C0
  loc_A0781A: NewIfNullPr bscCuentaContable
  loc_A0781D: Call bscCuentaContable.iPeriInfoPut(from_stack_1v)
  loc_A07822: FFree1Ad var_88
  loc_A07825: FFreeVar var_98 = "": var_A8 = ""
  loc_A0782E: LitVar_Missing var_D8
  loc_A07831: PopAdLdVar
  loc_A07832: LitVarI4
  loc_A0783A: PopAdLdVar
  loc_A0783B: ImpAdLdRf MemVar_C3D6C0
  loc_A0783E: NewIfNullPr bscCuentaContable
  loc_A07841: bscCuentaContable.Show from_stack_1, from_stack_2
  loc_A07846: FLdRfVar var_DC
  loc_A07849: FLdRfVar var_88
  loc_A0784C: ImpAdLdRf MemVar_C3D6C0
  loc_A0784F: NewIfNullPr bscCuentaContable
  loc_A07852: from_stack_1v = bscCuentaContable.global_4334344Get()
  loc_A07857: FLdPr var_88
  loc_A0785A: from_stack_1 = clsbase.RecordCount
  loc_A0785F: ILdRf var_DC
  loc_A07862: LitI4 0
  loc_A07867: GtI4
  loc_A07868: FFree1Ad var_88
  loc_A0786B: BranchF loc_A07946
  loc_A0786E: FLdRfVar var_98
  loc_A07871: FLdRfVar var_E8
  loc_A07874: LitVarStr var_C8, "CodiCuco"
  loc_A07879: PopAdLdVar
  loc_A0787A: FLdRfVar var_E4
  loc_A0787D: FLdRfVar var_E0
  loc_A07880: FLdRfVar var_88
  loc_A07883: ImpAdLdRf MemVar_C3D6C0
  loc_A07886: NewIfNullPr bscCuentaContable
  loc_A07889: from_stack_1v = bscCuentaContable.global_4334344Get()
  loc_A0788E: FLdPr var_88
  loc_A07891: from_stack_1v = clsbase.RsFrmGet()
  loc_A07896: FLdPr var_E0
  loc_A07899:  = Me.Fields
  loc_A0789E: FLdPr var_E4
  loc_A078A1: from_stack_2 = Me.Item(from_stack_1)
  loc_A078A6: FLdPr var_E8
  loc_A078A9:  = Me.Value
  loc_A078AE: FLdRfVar var_98
  loc_A078B1: CStrVarTmp
  loc_A078B2: CVarStr var_A8
  loc_A078B5: PopAdLdVar
  loc_A078B6: FLdPr Me
  loc_A078B9: VCallAd Control_ID_mskCodiCuco
  loc_A078BC: FStAdFunc var_EC
  loc_A078BF: FLdPr var_EC
  loc_A078C2: LateIdSt
  loc_A078C7: FFreeAd var_88 = "": var_E0 = "": var_E4 = "": var_E8 = ""
  loc_A078D4: FFreeVar var_98 = ""
  loc_A078DB: FLdRfVar var_98
  loc_A078DE: FLdRfVar var_E8
  loc_A078E1: LitVarStr var_C8, "DetaCuco"
  loc_A078E6: PopAdLdVar
  loc_A078E7: FLdRfVar var_E4
  loc_A078EA: FLdRfVar var_E0
  loc_A078ED: FLdRfVar var_88
  loc_A078F0: ImpAdLdRf MemVar_C3D6C0
  loc_A078F3: NewIfNullPr bscCuentaContable
  loc_A078F6: from_stack_1v = bscCuentaContable.global_4334344Get()
  loc_A078FB: FLdPr var_88
  loc_A078FE: from_stack_1v = clsbase.RsFrmGet()
  loc_A07903: FLdPr var_E0
  loc_A07906:  = Me.Fields
  loc_A0790B: FLdPr var_E4
  loc_A0790E: from_stack_2 = Me.Item(from_stack_1)
  loc_A07913: FLdPr var_E8
  loc_A07916:  = Me.Value
  loc_A0791B: FLdRfVar var_98
  loc_A0791E: CStrVarTmp
  loc_A0791F: FStStrNoPop var_F0
  loc_A07922: FLdPr Me
  loc_A07925: VCallAd Control_ID_lblDetaCuco
  loc_A07928: FStAdFunc var_EC
  loc_A0792B: FLdPr var_EC
  loc_A0792E: Me.Caption = from_stack_1
  loc_A07933: FFree1Str var_F0
  loc_A07936: FFreeAd var_88 = "": var_E0 = "": var_E4 = "": var_E8 = ""
  loc_A07943: FFree1Var var_98 = ""
  loc_A07946: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() '9CA0C8
  'Data Table: 47A680
  loc_9C9FF4: LitI2_Byte 0
  loc_9C9FF6: FLdPr Me
  loc_9C9FF9: MemStI2 bGenerado
  loc_9C9FFC: LitI2_Byte &HFF
  loc_9C9FFE: FLdPr Me
  loc_9CA001: MemStI2 bLogos
  loc_9CA004: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_9CA009: LitI2_Byte 0
  loc_9CA00B: PopTmpLdAd2 var_86
  loc_9CA00E: ImpAdCallFPR4 Proc_261_32_A53D7C()
  loc_9CA013: CVarDate var_A8
  loc_9CA017: FLdRfVar var_B8
  loc_9CA01A: ImpAdCallFPR4  = Year()
  loc_9CA01F: LitI2_Byte 0
  loc_9CA021: PopTmpLdAd2 var_BA
  loc_9CA024: ImpAdCallFPR4 Proc_261_32_A53D7C()
  loc_9CA029: CVarDate var_DC
  loc_9CA02D: FLdRfVar var_EC
  loc_9CA030: ImpAdCallFPR4  = Month()
  loc_9CA035: LitI2_Byte 1
  loc_9CA037: FLdRfVar var_EC
  loc_9CA03A: CI2Var
  loc_9CA03B: FLdRfVar var_B8
  loc_9CA03E: CI2Var
  loc_9CA03F: FLdRfVar var_FC
  loc_9CA042: ImpAdCallFPR4  = DateSerial(, , )
  loc_9CA047: FLdRfVar var_FC
  loc_9CA04A: CStrVarTmp
  loc_9CA04B: CVarStr var_10C
  loc_9CA04E: PopAdLdVar
  loc_9CA04F: FLdPr Me
  loc_9CA052: VCallAd Control_ID_mskDesde
  loc_9CA055: FStAdFunc var_120
  loc_9CA058: FLdPr var_120
  loc_9CA05B: LateIdSt
  loc_9CA060: FFree1Ad var_120
  loc_9CA063: FFreeVar var_A8 = "": var_DC = "": var_B8 = "": var_EC = "": var_FC = ""
  loc_9CA072: ImpAdLdFPR8 MemVar_C3D04C
  loc_9CA075: CStrDate
  loc_9CA077: CVarStr var_A8
  loc_9CA07A: PopAdLdVar
  loc_9CA07B: FLdPr Me
  loc_9CA07E: VCallAd Control_ID_mskHasta
  loc_9CA081: FStAdFunc var_120
  loc_9CA084: FLdPr var_120
  loc_9CA087: LateIdSt
  loc_9CA08C: FFree1Ad var_120
  loc_9CA08F: FFree1Var var_A8 = ""
  loc_9CA092: LitVarStr var_98, vbNullString
  loc_9CA097: PopAdLdVar
  loc_9CA098: FLdPr Me
  loc_9CA09B: VCallAd Control_ID_mskCodiCuco
  loc_9CA09E: FStAdFunc var_120
  loc_9CA0A1: FLdPr var_120
  loc_9CA0A4: LateIdSt
  loc_9CA0A9: FFree1Ad var_120
  loc_9CA0AC: Call HabilitarCriterio()
  loc_9CA0B1: ILdRf Me
  loc_9CA0B4: CastAd
  loc_9CA0B7: FStAdFunc var_120
  loc_9CA0BA: FLdRfVar var_120
  loc_9CA0BD: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_9CA0C2: FFree1Ad var_120
  loc_9CA0C5: ExitProcHresult
End Sub

Private Sub cmdCalDesde_Click() '97D8E0
  'Data Table: 47A680
  loc_97D8AC: LitVar_Missing var_A4
  loc_97D8AF: PopAdLdVar
  loc_97D8B0: LitVarI4
  loc_97D8B8: PopAdLdVar
  loc_97D8B9: ImpAdLdRf MemVar_C3D9A8
  loc_97D8BC: NewIfNullPr frmCalendario
  loc_97D8BF: frmCalendario.Show from_stack_1, from_stack_2
  loc_97D8C4: ImpAdLdRf MemVar_C3D038
  loc_97D8C7: CDargRef
  loc_97D8CB: FLdPr Me
  loc_97D8CE: VCallAd Control_ID_mskDesde
  loc_97D8D1: FStAdFunc var_A8
  loc_97D8D4: FLdPr var_A8
  loc_97D8D7: LateIdSt
  loc_97D8DC: FFree1Ad var_A8
  loc_97D8DF: ExitProcHresult
End Sub

Public Function htmFileGet() '47B5B8
  htmFileGet = htmFile
End Function

Public Sub htmFilePut(Value) '47B5C7
  htmFile = Value
End Sub

Public Sub htmFileSet(Value) '47B5D6
  htmFile = Value
End Sub

Public Function bLogosGet() '47B5E5
  bLogosGet = bLogos
End Function

Public Sub bLogosPut(Value) '47B5F4
  bLogos = Value
End Sub

Public Function bGeneradoGet() '47B603
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '47B612
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() '9ABA04
  'Data Table: 47A680
  loc_9AB980: LitI4 0
  loc_9AB985: LitI4 5
  loc_9AB98A: FLdRfVar var_88
  loc_9AB98D: Redim
  loc_9AB997: FLdPr Me
  loc_9AB99A: VCallAd Control_ID_mskDesde
  loc_9AB99D: CVarAd
  loc_9AB9A1: ParmAry1St
  loc_9AB9A7: FLdPr Me
  loc_9AB9AA: VCallAd Control_ID_cmdCalDesde
  loc_9AB9AD: CVarAd
  loc_9AB9B1: ParmAry1St
  loc_9AB9B7: FLdPr Me
  loc_9AB9BA: VCallAd Control_ID_mskHasta
  loc_9AB9BD: CVarAd
  loc_9AB9C1: ParmAry1St
  loc_9AB9C7: FLdPr Me
  loc_9AB9CA: VCallAd Control_ID_cmdCalHasta
  loc_9AB9CD: CVarAd
  loc_9AB9D1: ParmAry1St
  loc_9AB9D7: FLdPr Me
  loc_9AB9DA: VCallAd Control_ID_mskCodiCuco
  loc_9AB9DD: CVarAd
  loc_9AB9E1: ParmAry1St
  loc_9AB9E7: FLdPr Me
  loc_9AB9EA: VCallAd Control_ID_cmdCodiCuco
  loc_9AB9ED: CVarAd
  loc_9AB9F1: ParmAry1St
  loc_9AB9F7: FLdRfVar var_88
  loc_9AB9FA: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9AB9FF: FLdRfVar var_88
  loc_9ABA02: Erase
  loc_9ABA03: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'AFBDC8
  'Data Table: 47A680
  loc_AFB680: LitStr vbNullString
  loc_AFB683: FLdPr Me
  loc_AFB686: MemStStrCopy
  loc_AFB68A: LitI2_Byte 0
  loc_AFB68C: PopTmpLdAd2 var_92
  loc_AFB68F: from_stack_2v = mskDesde_UnknownEvent_8(from_stack_1v)
  loc_AFB694: FLdPr Me
  loc_AFB697: MemLdStr global_104
  loc_AFB69A: LitStr vbNullString
  loc_AFB69D: NeStr
  loc_AFB69F: BranchF loc_AFB6A5
  loc_AFB6A2: Branch loc_AFBD9D
  loc_AFB6A5: LitI2_Byte 0
  loc_AFB6A7: PopTmpLdAd2 var_92
  loc_AFB6AA: from_stack_2v = mskHasta_UnknownEvent_8(from_stack_1v)
  loc_AFB6AF: FLdPr Me
  loc_AFB6B2: MemLdStr global_104
  loc_AFB6B5: LitStr vbNullString
  loc_AFB6B8: NeStr
  loc_AFB6BA: BranchF loc_AFB6C0
  loc_AFB6BD: Branch loc_AFBD9D
  loc_AFB6C0: FLdPr Me
  loc_AFB6C3: MemLdI2 bGenerado
  loc_AFB6C6: BranchF loc_AFB6CA
  loc_AFB6C9: ExitProcHresult
  loc_AFB6CA: LitVarStr var_A4, "Generando reporte..."
  loc_AFB6CF: PopAdLdVar
  loc_AFB6D0: FLdPr Me
  loc_AFB6D3: VCallAd Control_ID_statusBar
  loc_AFB6D6: FStAdFunc var_B8
  loc_AFB6D9: FLdPr var_B8
  loc_AFB6DC: LateIdSt
  loc_AFB6E1: FFree1Ad var_B8
  loc_AFB6E4: LitI4 &HB
  loc_AFB6E9: CI2I4
  loc_AFB6EA: FLdPr Me
  loc_AFB6ED: Me.MousePointer = from_stack_1
  loc_AFB6F2: FLdPr Me
  loc_AFB6F5: VCallAd Control_ID_mskDesde
  loc_AFB6F8: FStAdFunc var_B8
  loc_AFB6FB: FLdPr var_B8
  loc_AFB6FE: LateIdLdVar var_C8 DispID_22 0
  loc_AFB705: CStrVarTmp
  loc_AFB706: FStStrNoPop var_CC
  loc_AFB709: LitStr vbNullString
  loc_AFB70C: NeStr
  loc_AFB70E: FFree1Str var_CC
  loc_AFB711: FFree1Ad var_B8
  loc_AFB714: FFree1Var var_C8 = ""
  loc_AFB717: BranchF loc_AFB769
  loc_AFB71A: FLdPr Me
  loc_AFB71D: VCallAd Control_ID_mskDesde
  loc_AFB720: FStAdFunc var_B8
  loc_AFB723: FLdPr var_B8
  loc_AFB726: LateIdLdVar var_C8 DispID_15 0
  loc_AFB72D: PopAd
  loc_AFB72F: LitStr " AND FechCaja >= "
  loc_AFB732: LitI4 1
  loc_AFB737: LitI4 1
  loc_AFB73C: LitVarStr var_A4, "'yyyy-mm-dd'"
  loc_AFB741: FStVarCopyObj var_EC
  loc_AFB744: FLdRfVar var_EC
  loc_AFB747: FLdRfVar var_C8
  loc_AFB74A: CStrVarTmp
  loc_AFB74B: CVarStr var_DC
  loc_AFB74E: ImpAdCallI2 Format$(, )
  loc_AFB753: FStStrNoPop var_CC
  loc_AFB756: ConcatStr
  loc_AFB757: FStStr var_88
  loc_AFB75A: FFree1Str var_CC
  loc_AFB75D: FFree1Ad var_B8
  loc_AFB760: FFreeVar var_C8 = "": var_DC = ""
  loc_AFB769: FLdPr Me
  loc_AFB76C: VCallAd Control_ID_mskHasta
  loc_AFB76F: FStAdFunc var_B8
  loc_AFB772: FLdPr var_B8
  loc_AFB775: LateIdLdVar var_C8 DispID_22 0
  loc_AFB77C: CStrVarTmp
  loc_AFB77D: FStStrNoPop var_CC
  loc_AFB780: LitStr vbNullString
  loc_AFB783: NeStr
  loc_AFB785: FFree1Str var_CC
  loc_AFB788: FFree1Ad var_B8
  loc_AFB78B: FFree1Var var_C8 = ""
  loc_AFB78E: BranchF loc_AFB7E0
  loc_AFB791: FLdPr Me
  loc_AFB794: VCallAd Control_ID_mskHasta
  loc_AFB797: FStAdFunc var_B8
  loc_AFB79A: FLdPr var_B8
  loc_AFB79D: LateIdLdVar var_C8 DispID_15 0
  loc_AFB7A4: PopAd
  loc_AFB7A6: LitStr " AND FechCaja <= "
  loc_AFB7A9: LitI4 1
  loc_AFB7AE: LitI4 1
  loc_AFB7B3: LitVarStr var_A4, "'yyyy-mm-dd'"
  loc_AFB7B8: FStVarCopyObj var_EC
  loc_AFB7BB: FLdRfVar var_EC
  loc_AFB7BE: FLdRfVar var_C8
  loc_AFB7C1: CStrVarTmp
  loc_AFB7C2: CVarStr var_DC
  loc_AFB7C5: ImpAdCallI2 Format$(, )
  loc_AFB7CA: FStStrNoPop var_CC
  loc_AFB7CD: ConcatStr
  loc_AFB7CE: FStStr var_8C
  loc_AFB7D1: FFree1Str var_CC
  loc_AFB7D4: FFree1Ad var_B8
  loc_AFB7D7: FFreeVar var_C8 = "": var_DC = ""
  loc_AFB7E0: FLdPr Me
  loc_AFB7E3: VCallAd Control_ID_mskCodiCuco
  loc_AFB7E6: FStAdFunc var_B8
  loc_AFB7E9: FLdPr var_B8
  loc_AFB7EC: LateIdLdVar var_C8 DispID_22 0
  loc_AFB7F3: PopAd
  loc_AFB7F5: FLdPr Me
  loc_AFB7F8: VCallAd Control_ID_mskCodiCuco
  loc_AFB7FB: FStAdFunc var_F0
  loc_AFB7FE: FLdPr var_F0
  loc_AFB801: LateIdLdVar var_DC DispID_20 0
  loc_AFB808: PopAd
  loc_AFB80A: LitVarStr var_B4, vbNullString
  loc_AFB80F: FStVarCopyObj var_108
  loc_AFB812: FLdRfVar var_108
  loc_AFB815: LitStr " AND ci.CodiCuco LIKE '"
  loc_AFB818: FLdRfVar var_DC
  loc_AFB81B: CStrVarTmp
  loc_AFB81C: FStStrNoPop var_F4
  loc_AFB81F: ConcatStr
  loc_AFB820: FStStrNoPop var_F8
  loc_AFB823: LitStr Chr(37) & "'"
  loc_AFB826: ConcatStr
  loc_AFB827: CVarStr var_EC
  loc_AFB82A: FLdRfVar var_C8
  loc_AFB82D: CStrVarTmp
  loc_AFB82E: FStStrNoPop var_CC
  loc_AFB831: LitStr vbNullString
  loc_AFB834: NeStr
  loc_AFB836: CVarBoolI2 var_A4
  loc_AFB83A: FLdRfVar var_118
  loc_AFB83D: ImpAdCallFPR4  = IIf(, , )
  loc_AFB842: FLdRfVar var_118
  loc_AFB845: CStrVarTmp
  loc_AFB846: FStStr var_90
  loc_AFB849: FFreeStr var_CC = "": var_F4 = ""
  loc_AFB852: FFreeAd var_B8 = ""
  loc_AFB859: FFreeVar var_C8 = "": var_DC = "": var_A4 = "": var_EC = "": var_108 = ""
  loc_AFB868: FLdPr Me
  loc_AFB86B: MemLdRfVar from_stack_1.global_72
  loc_AFB86E: NewIfNullAd
  loc_AFB871: FStAd var_11C 
  loc_AFB875: LitStr "SELECT ci.PeriInfo, ci.CodiCuco, DetaCuco"
  loc_AFB878: LitStr " FROM cajaingre ci"
  loc_AFB87B: ConcatStr
  loc_AFB87C: FStStrNoPop var_CC
  loc_AFB87F: LitStr " INNER JOIN infogov.cuentacontable cc ON cc.PeriInfo = ci.PeriInfo AND cc.CodiCuco = ci.CodiCuco"
  loc_AFB882: ConcatStr
  loc_AFB883: FStStrNoPop var_F4
  loc_AFB886: LitStr " WHERE TRUE "
  loc_AFB889: ConcatStr
  loc_AFB88A: FStStrNoPop var_F8
  loc_AFB88D: ILdRf var_88
  loc_AFB890: ConcatStr
  loc_AFB891: FStStrNoPop var_120
  loc_AFB894: ILdRf var_8C
  loc_AFB897: ConcatStr
  loc_AFB898: FStStrNoPop var_124
  loc_AFB89B: ILdRf var_90
  loc_AFB89E: ConcatStr
  loc_AFB89F: FStStrNoPop var_128
  loc_AFB8A2: LitStr " GROUP BY PeriInfo, CodiCuco"
  loc_AFB8A5: ConcatStr
  loc_AFB8A6: FStStrNoPop var_12C
  loc_AFB8A9: LitStr " ORDER BY PeriInfo, CodiCuco"
  loc_AFB8AC: ConcatStr
  loc_AFB8AD: FStStrNoPop var_130
  loc_AFB8B0: FLdPr var_11C
  loc_AFB8B3: Call clsbase.RedefineRS(from_stack_1v)
  loc_AFB8B8: FFreeStr var_CC = "": var_F4 = "": var_F8 = "": var_120 = "": var_124 = "": var_128 = "": var_12C = ""
  loc_AFB8CB: FLdRfVar var_134
  loc_AFB8CE: FLdPr var_11C
  loc_AFB8D1: from_stack_1 = clsbase.RecordCount
  loc_AFB8D6: ILdRf var_134
  loc_AFB8D9: LitI4 0
  loc_AFB8DE: EqI4
  loc_AFB8DF: BranchF loc_AFB8F2
  loc_AFB8E2: LitI4 0
  loc_AFB8E7: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_AFB8EA: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_AFB8EF: Branch loc_AFBD9D
  loc_AFB8F2: LitI2_Byte 0
  loc_AFB8F4: CStrUI1
  loc_AFB8F6: FStStrNoPop var_CC
  loc_AFB8F9: FLdPr Me
  loc_AFB8FC: MemStStrCopy
  loc_AFB900: FFree1Str var_CC
  loc_AFB903: LitI2_Byte 0
  loc_AFB905: CStrUI1
  loc_AFB907: FStStrNoPop var_CC
  loc_AFB90A: FLdPr Me
  loc_AFB90D: MemStStrCopy
  loc_AFB911: FFree1Str var_CC
  loc_AFB914: LitI4 1
  loc_AFB919: FLdRfVar var_134
  loc_AFB91C: FLdPr Me
  loc_AFB91F: MemLdRfVar from_stack_1.global_72
  loc_AFB922: NewIfNullPr clsbase
  loc_AFB925: from_stack_1 = clsbase.RecordCount
  loc_AFB92A: ILdRf var_134
  loc_AFB92D: FLdPr Me
  loc_AFB930: MemLdRfVar from_stack_1.global_84
  loc_AFB933: Redim
  loc_AFB93D: FLdPr var_11C
  loc_AFB940: Call clsbase.MoveFirst()
  loc_AFB945: LitI2_Byte 1
  loc_AFB947: FLdPr Me
  loc_AFB94A: MemLdRfVar from_stack_1.global_96
  loc_AFB94D: FLdPr Me
  loc_AFB950: MemLdStr global_84
  loc_AFB953: LitI2_Byte 1
  loc_AFB955: FnUBound
  loc_AFB957: CI2I4
  loc_AFB958: ForI2 var_138
  loc_AFB95E: FLdRfVar var_13C
  loc_AFB961: LitVarStr var_A4, "PeriInfo"
  loc_AFB966: PopAdLdVar
  loc_AFB967: FLdRfVar var_F0
  loc_AFB96A: FLdRfVar var_B8
  loc_AFB96D: FLdPr var_11C
  loc_AFB970: from_stack_1v = clsbase.RsFrmGet()
  loc_AFB975: FLdPr var_B8
  loc_AFB978:  = Me.Fields
  loc_AFB97D: FLdPr var_F0
  loc_AFB980: from_stack_2 = Me.Item(from_stack_1)
  loc_AFB985: LitI2_Byte 0
  loc_AFB987: LitVar_Missing var_DC
  loc_AFB98A: LitI2_Byte 0
  loc_AFB98C: FLdZeroAd var_13C
  loc_AFB98F: CVarAd
  loc_AFB993: PopAdLdVar
  loc_AFB994: FLdPr Me
  loc_AFB997: MemLdI2 global_96
  loc_AFB99A: CI4UI1
  loc_AFB99B: FLdPr Me
  loc_AFB99E: MemLdStr global_84
  loc_AFB9A1: AryLock
  loc_AFB9A4: Ary1LdPr
  loc_AFB9A5: MemLdRfVar from_stack_1.global_0
  loc_AFB9A8: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AFB9AD: AryUnlock
  loc_AFB9B0: FFreeAd var_B8 = ""
  loc_AFB9B7: FFreeVar var_C8 = ""
  loc_AFB9BE: FLdRfVar var_13C
  loc_AFB9C1: LitVarStr var_A4, "CodiCuco"
  loc_AFB9C6: PopAdLdVar
  loc_AFB9C7: FLdRfVar var_F0
  loc_AFB9CA: FLdRfVar var_B8
  loc_AFB9CD: FLdPr var_11C
  loc_AFB9D0: from_stack_1v = clsbase.RsFrmGet()
  loc_AFB9D5: FLdPr var_B8
  loc_AFB9D8:  = Me.Fields
  loc_AFB9DD: FLdPr var_F0
  loc_AFB9E0: from_stack_2 = Me.Item(from_stack_1)
  loc_AFB9E5: LitI2_Byte 0
  loc_AFB9E7: LitVar_Missing var_DC
  loc_AFB9EA: LitI2_Byte 0
  loc_AFB9EC: FLdZeroAd var_13C
  loc_AFB9EF: CVarAd
  loc_AFB9F3: PopAdLdVar
  loc_AFB9F4: FLdPr Me
  loc_AFB9F7: MemLdI2 global_96
  loc_AFB9FA: CI4UI1
  loc_AFB9FB: FLdPr Me
  loc_AFB9FE: MemLdStr global_84
  loc_AFBA01: AryLock
  loc_AFBA04: Ary1LdPr
  loc_AFBA05: MemLdRfVar from_stack_1.global_4
  loc_AFBA08: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AFBA0D: AryUnlock
  loc_AFBA10: FFreeAd var_B8 = ""
  loc_AFBA17: FFreeVar var_C8 = ""
  loc_AFBA1E: FLdRfVar var_13C
  loc_AFBA21: LitVarStr var_A4, "DetaCuco"
  loc_AFBA26: PopAdLdVar
  loc_AFBA27: FLdRfVar var_F0
  loc_AFBA2A: FLdRfVar var_B8
  loc_AFBA2D: FLdPr var_11C
  loc_AFBA30: from_stack_1v = clsbase.RsFrmGet()
  loc_AFBA35: FLdPr var_B8
  loc_AFBA38:  = Me.Fields
  loc_AFBA3D: FLdPr var_F0
  loc_AFBA40: from_stack_2 = Me.Item(from_stack_1)
  loc_AFBA45: LitI2_Byte 0
  loc_AFBA47: LitVar_Missing var_DC
  loc_AFBA4A: LitI2_Byte 0
  loc_AFBA4C: FLdZeroAd var_13C
  loc_AFBA4F: CVarAd
  loc_AFBA53: PopAdLdVar
  loc_AFBA54: FLdPr Me
  loc_AFBA57: MemLdI2 global_96
  loc_AFBA5A: CI4UI1
  loc_AFBA5B: FLdPr Me
  loc_AFBA5E: MemLdStr global_84
  loc_AFBA61: AryLock
  loc_AFBA64: Ary1LdPr
  loc_AFBA65: MemLdRfVar from_stack_1.global_8
  loc_AFBA68: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AFBA6D: AryUnlock
  loc_AFBA70: FFreeAd var_B8 = ""
  loc_AFBA77: FFreeVar var_C8 = ""
  loc_AFBA7E: FLdPr var_11C
  loc_AFBA81: Call clsbase.MoveSiguiente()
  loc_AFBA86: FLdPr Me
  loc_AFBA89: MemLdRfVar from_stack_1.global_96
  loc_AFBA8C: NextI2 var_138, loc_AFB95E
  loc_AFBA91: LitI2_Byte 1
  loc_AFBA93: FLdPr Me
  loc_AFBA96: MemLdRfVar from_stack_1.global_96
  loc_AFBA99: FLdPr Me
  loc_AFBA9C: MemLdStr global_84
  loc_AFBA9F: LitI2_Byte 1
  loc_AFBAA1: FnUBound
  loc_AFBAA3: CI2I4
  loc_AFBAA4: ForI2 var_144
  loc_AFBAAA: LitStr "SELECT FechCaja, DebeCain, HabeCain"
  loc_AFBAAD: LitStr " FROM cajaingre"
  loc_AFBAB0: ConcatStr
  loc_AFBAB1: FStStrNoPop var_CC
  loc_AFBAB4: LitStr " WHERE PeriInfo = "
  loc_AFBAB7: ConcatStr
  loc_AFBAB8: FStStrNoPop var_F4
  loc_AFBABB: FLdPr Me
  loc_AFBABE: MemLdI2 global_96
  loc_AFBAC1: CI4UI1
  loc_AFBAC2: FLdPr Me
  loc_AFBAC5: MemLdStr global_84
  loc_AFBAC8: Ary1LdPr
  loc_AFBAC9: MemLdStr global_0
  loc_AFBACC: ConcatStr
  loc_AFBACD: FStStrNoPop var_F8
  loc_AFBAD0: LitStr " AND CodiCuco = '"
  loc_AFBAD3: ConcatStr
  loc_AFBAD4: FStStrNoPop var_120
  loc_AFBAD7: FLdPr Me
  loc_AFBADA: MemLdI2 global_96
  loc_AFBADD: CI4UI1
  loc_AFBADE: FLdPr Me
  loc_AFBAE1: MemLdStr global_84
  loc_AFBAE4: Ary1LdPr
  loc_AFBAE5: MemLdStr global_4
  loc_AFBAE8: ConcatStr
  loc_AFBAE9: FStStrNoPop var_124
  loc_AFBAEC: LitStr "'"
  loc_AFBAEF: ConcatStr
  loc_AFBAF0: FStStrNoPop var_128
  loc_AFBAF3: ILdRf var_88
  loc_AFBAF6: ConcatStr
  loc_AFBAF7: FStStrNoPop var_12C
  loc_AFBAFA: ILdRf var_8C
  loc_AFBAFD: ConcatStr
  loc_AFBAFE: FStStrNoPop var_130
  loc_AFBB01: LitStr " ORDER BY FechCaja"
  loc_AFBB04: ConcatStr
  loc_AFBB05: FStStrNoPop var_148
  loc_AFBB08: FLdPr var_11C
  loc_AFBB0B: Call clsbase.RedefineRS(from_stack_1v)
  loc_AFBB10: FFreeStr var_CC = "": var_F4 = "": var_F8 = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = ""
  loc_AFBB25: FLdRfVar var_134
  loc_AFBB28: FLdPr var_11C
  loc_AFBB2B: from_stack_1 = clsbase.RecordCount
  loc_AFBB30: ILdRf var_134
  loc_AFBB33: LitI4 0
  loc_AFBB38: GtI4
  loc_AFBB39: BranchF loc_AFBD26
  loc_AFBB3C: FLdRfVar var_134
  loc_AFBB3F: FLdPr var_11C
  loc_AFBB42: from_stack_1 = clsbase.RecordCount
  loc_AFBB47: LitI4 1
  loc_AFBB4C: ILdRf var_134
  loc_AFBB4F: FLdPr Me
  loc_AFBB52: MemLdI2 global_96
  loc_AFBB55: CI4UI1
  loc_AFBB56: FLdPr Me
  loc_AFBB59: MemLdStr global_84
  loc_AFBB5C: Ary1LdPr
  loc_AFBB5D: MemLdRfVar from_stack_1.global_12
  loc_AFBB60: Redim
  loc_AFBB6A: FLdPr var_11C
  loc_AFBB6D: Call clsbase.MoveFirst()
  loc_AFBB72: LitI2_Byte 1
  loc_AFBB74: FLdPr Me
  loc_AFBB77: MemLdRfVar from_stack_1.global_98
  loc_AFBB7A: FLdPr Me
  loc_AFBB7D: MemLdI2 global_96
  loc_AFBB80: CI4UI1
  loc_AFBB81: FLdPr Me
  loc_AFBB84: MemLdStr global_84
  loc_AFBB87: Ary1LdPr
  loc_AFBB88: MemLdStr global_12
  loc_AFBB8B: LitI2_Byte 1
  loc_AFBB8D: FnUBound
  loc_AFBB8F: CI2I4
  loc_AFBB90: ForI2 var_14C
  loc_AFBB96: FLdRfVar var_13C
  loc_AFBB99: LitVarStr var_A4, "FechCaja"
  loc_AFBB9E: PopAdLdVar
  loc_AFBB9F: FLdRfVar var_F0
  loc_AFBBA2: FLdRfVar var_B8
  loc_AFBBA5: FLdPr var_11C
  loc_AFBBA8: from_stack_1v = clsbase.RsFrmGet()
  loc_AFBBAD: FLdPr var_B8
  loc_AFBBB0:  = Me.Fields
  loc_AFBBB5: FLdPr var_F0
  loc_AFBBB8: from_stack_2 = Me.Item(from_stack_1)
  loc_AFBBBD: LitI2_Byte 0
  loc_AFBBBF: LitVar_Missing var_DC
  loc_AFBBC2: LitI2_Byte 0
  loc_AFBBC4: FLdZeroAd var_13C
  loc_AFBBC7: CVarAd
  loc_AFBBCB: PopAdLdVar
  loc_AFBBCC: FLdPr Me
  loc_AFBBCF: MemLdI2 global_98
  loc_AFBBD2: CI4UI1
  loc_AFBBD3: FLdPr Me
  loc_AFBBD6: MemLdI2 global_96
  loc_AFBBD9: CI4UI1
  loc_AFBBDA: FLdPr Me
  loc_AFBBDD: MemLdStr global_84
  loc_AFBBE0: AryLock
  loc_AFBBE3: Ary1LdPr
  loc_AFBBE4: MemLdStr global_12
  loc_AFBBE7: AryLock
  loc_AFBBEA: Ary1LdPr
  loc_AFBBEB: MemLdRfVar from_stack_1.global_0
  loc_AFBBEE: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AFBBF3: AryUnlock
  loc_AFBBF6: AryUnlock
  loc_AFBBF9: FFreeAd var_B8 = ""
  loc_AFBC00: FFreeVar var_C8 = ""
  loc_AFBC07: FLdRfVar var_13C
  loc_AFBC0A: LitVarStr var_A4, "DebeCain"
  loc_AFBC0F: PopAdLdVar
  loc_AFBC10: FLdRfVar var_F0
  loc_AFBC13: FLdRfVar var_B8
  loc_AFBC16: FLdPr var_11C
  loc_AFBC19: from_stack_1v = clsbase.RsFrmGet()
  loc_AFBC1E: FLdPr var_B8
  loc_AFBC21:  = Me.Fields
  loc_AFBC26: FLdPr var_F0
  loc_AFBC29: from_stack_2 = Me.Item(from_stack_1)
  loc_AFBC2E: LitI2_Byte 0
  loc_AFBC30: FLdPr Me
  loc_AFBC33: MemLdI2 global_96
  loc_AFBC36: CI4UI1
  loc_AFBC37: FLdPr Me
  loc_AFBC3A: MemLdStr global_84
  loc_AFBC3D: AryLock
  loc_AFBC40: Ary1LdPr
  loc_AFBC41: MemLdRfVar from_stack_1.global_16
  loc_AFBC44: CVarRef
  loc_AFBC49: LitI2_Byte &HFF
  loc_AFBC4B: FLdZeroAd var_13C
  loc_AFBC4E: CVarAd
  loc_AFBC52: PopAdLdVar
  loc_AFBC53: FLdPr Me
  loc_AFBC56: MemLdI2 global_98
  loc_AFBC59: CI4UI1
  loc_AFBC5A: FLdPr Me
  loc_AFBC5D: MemLdI2 global_96
  loc_AFBC60: CI4UI1
  loc_AFBC61: FLdPr Me
  loc_AFBC64: MemLdStr global_84
  loc_AFBC67: AryLock
  loc_AFBC6A: Ary1LdPr
  loc_AFBC6B: MemLdStr global_12
  loc_AFBC6E: AryLock
  loc_AFBC71: Ary1LdPr
  loc_AFBC72: MemLdRfVar from_stack_1.global_4
  loc_AFBC75: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AFBC7A: AryUnlock
  loc_AFBC7D: AryUnlock
  loc_AFBC80: AryUnlock
  loc_AFBC83: FFreeAd var_B8 = ""
  loc_AFBC8A: FFree1Var var_C8 = ""
  loc_AFBC8D: FLdRfVar var_13C
  loc_AFBC90: LitVarStr var_A4, "HabeCain"
  loc_AFBC95: PopAdLdVar
  loc_AFBC96: FLdRfVar var_F0
  loc_AFBC99: FLdRfVar var_B8
  loc_AFBC9C: FLdPr var_11C
  loc_AFBC9F: from_stack_1v = clsbase.RsFrmGet()
  loc_AFBCA4: FLdPr var_B8
  loc_AFBCA7:  = Me.Fields
  loc_AFBCAC: FLdPr var_F0
  loc_AFBCAF: from_stack_2 = Me.Item(from_stack_1)
  loc_AFBCB4: LitI2_Byte 0
  loc_AFBCB6: FLdPr Me
  loc_AFBCB9: MemLdI2 global_96
  loc_AFBCBC: CI4UI1
  loc_AFBCBD: FLdPr Me
  loc_AFBCC0: MemLdStr global_84
  loc_AFBCC3: AryLock
  loc_AFBCC6: Ary1LdPr
  loc_AFBCC7: MemLdRfVar from_stack_1.global_20
  loc_AFBCCA: CVarRef
  loc_AFBCCF: LitI2_Byte &HFF
  loc_AFBCD1: FLdZeroAd var_13C
  loc_AFBCD4: CVarAd
  loc_AFBCD8: PopAdLdVar
  loc_AFBCD9: FLdPr Me
  loc_AFBCDC: MemLdI2 global_98
  loc_AFBCDF: CI4UI1
  loc_AFBCE0: FLdPr Me
  loc_AFBCE3: MemLdI2 global_96
  loc_AFBCE6: CI4UI1
  loc_AFBCE7: FLdPr Me
  loc_AFBCEA: MemLdStr global_84
  loc_AFBCED: AryLock
  loc_AFBCF0: Ary1LdPr
  loc_AFBCF1: MemLdStr global_12
  loc_AFBCF4: AryLock
  loc_AFBCF7: Ary1LdPr
  loc_AFBCF8: MemLdRfVar from_stack_1.global_8
  loc_AFBCFB: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AFBD00: AryUnlock
  loc_AFBD03: AryUnlock
  loc_AFBD06: AryUnlock
  loc_AFBD09: FFreeAd var_B8 = ""
  loc_AFBD10: FFree1Var var_C8 = ""
  loc_AFBD13: FLdPr var_11C
  loc_AFBD16: Call clsbase.MoveSiguiente()
  loc_AFBD1B: FLdPr Me
  loc_AFBD1E: MemLdRfVar from_stack_1.global_98
  loc_AFBD21: NextI2 var_14C, loc_AFBB96
  loc_AFBD26: LitI2_Byte 0
  loc_AFBD28: FLdPr Me
  loc_AFBD2B: MemLdRfVar from_stack_1.global_88
  loc_AFBD2E: CVarRef
  loc_AFBD33: LitI2_Byte &HFF
  loc_AFBD35: FLdPr Me
  loc_AFBD38: MemLdI2 global_96
  loc_AFBD3B: CI4UI1
  loc_AFBD3C: FLdPr Me
  loc_AFBD3F: MemLdStr global_84
  loc_AFBD42: Ary1LdPr
  loc_AFBD43: MemLdStr global_16
  loc_AFBD46: CVarStr var_A4
  loc_AFBD49: PopAdLdVar
  loc_AFBD4A: FLdPr Me
  loc_AFBD4D: MemLdRfVar from_stack_1.global_100
  loc_AFBD50: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AFBD55: LitI2_Byte 0
  loc_AFBD57: FLdPr Me
  loc_AFBD5A: MemLdRfVar from_stack_1.global_92
  loc_AFBD5D: CVarRef
  loc_AFBD62: LitI2_Byte &HFF
  loc_AFBD64: FLdPr Me
  loc_AFBD67: MemLdI2 global_96
  loc_AFBD6A: CI4UI1
  loc_AFBD6B: FLdPr Me
  loc_AFBD6E: MemLdStr global_84
  loc_AFBD71: Ary1LdPr
  loc_AFBD72: MemLdStr global_20
  loc_AFBD75: CVarStr var_A4
  loc_AFBD78: PopAdLdVar
  loc_AFBD79: FLdPr Me
  loc_AFBD7C: MemLdRfVar from_stack_1.global_100
  loc_AFBD7F: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AFBD84: FLdPr Me
  loc_AFBD87: MemLdRfVar from_stack_1.global_96
  loc_AFBD8A: NextI2 var_144, loc_AFBAAA
  loc_AFBD8F: LitNothing
  loc_AFBD91: FStAd var_11C 
  loc_AFBD95: LitI2_Byte &HFF
  loc_AFBD97: FLdPr Me
  loc_AFBD9A: MemStI2 bGenerado
  loc_AFBD9D: LitI4 0
  loc_AFBDA2: CI2I4
  loc_AFBDA3: FLdPr Me
  loc_AFBDA6: Me.MousePointer = from_stack_1
  loc_AFBDAB: LitVarStr var_A4, vbNullString
  loc_AFBDB0: PopAdLdVar
  loc_AFBDB1: FLdPr Me
  loc_AFBDB4: VCallAd Control_ID_statusBar
  loc_AFBDB7: FStAdFunc var_B8
  loc_AFBDBA: FLdPr var_B8
  loc_AFBDBD: LateIdSt
  loc_AFBDC2: FFree1Ad var_B8
  loc_AFBDC5: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'AC836C
  'Data Table: 47A680
  loc_AC7D90: FLdRfVar var_88
  loc_AC7D93: LitI2_Byte 0
  loc_AC7D95: LitI2_Byte &HFF
  loc_AC7D97: ImpAdLdI4 MemVar_C3D83C
  loc_AC7D9A: FLdPr Me
  loc_AC7D9D: MemLdRfVar from_stack_1.global_76
  loc_AC7DA0: NewIfNullPr IFileSystem3
  loc_AC7DA3: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_AC7DA8: ILdRf var_88
  loc_AC7DAB: FLdPr Me
  loc_AC7DAE: MemStVarAd
  loc_AC7DB2: FFree1Ad var_88
  loc_AC7DB5: Call Proc_244_29_A6C2CC()
  loc_AC7DBA: LitI2_Byte 1
  loc_AC7DBC: FLdPr Me
  loc_AC7DBF: MemLdRfVar from_stack_1.global_96
  loc_AC7DC2: FLdPr Me
  loc_AC7DC5: MemLdStr global_84
  loc_AC7DC8: LitI2_Byte 1
  loc_AC7DCA: FnUBound
  loc_AC7DCC: CI2I4
  loc_AC7DCD: ForI2 var_8C
  loc_AC7DD3: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_AC7DD8: PopAdLdVar
  loc_AC7DD9: FLdPr Me
  loc_AC7DDC: MemLdRfVar from_stack_1.htmFile
  loc_AC7DDF: LdPrVar
  loc_AC7DE1: LateMemCall
  loc_AC7DE7: LitStr "    <td rowspan="""
  loc_AC7DEA: FLdPr Me
  loc_AC7DED: MemLdI2 global_96
  loc_AC7DF0: CI4UI1
  loc_AC7DF1: FLdPr Me
  loc_AC7DF4: MemLdStr global_84
  loc_AC7DF7: Ary1LdPr
  loc_AC7DF8: MemLdStr global_12
  loc_AC7DFB: LitI2_Byte 1
  loc_AC7DFD: FnUBound
  loc_AC7DFF: LitI4 1
  loc_AC7E04: AddI4
  loc_AC7E05: CStrI4
  loc_AC7E07: FStStrNoPop var_B0
  loc_AC7E0A: ConcatStr
  loc_AC7E0B: FStStrNoPop var_B4
  loc_AC7E0E: LitStr """ align=""left"" valign = ""top"" class=""Titulo2"">"
  loc_AC7E11: ConcatStr
  loc_AC7E12: FStStrNoPop var_B8
  loc_AC7E15: FLdPr Me
  loc_AC7E18: MemLdI2 global_96
  loc_AC7E1B: CI4UI1
  loc_AC7E1C: FLdPr Me
  loc_AC7E1F: MemLdStr global_84
  loc_AC7E22: Ary1LdPr
  loc_AC7E23: MemLdStr global_4
  loc_AC7E26: ConcatStr
  loc_AC7E27: FStStrNoPop var_BC
  loc_AC7E2A: LitStr "<br>"
  loc_AC7E2D: ConcatStr
  loc_AC7E2E: FStStrNoPop var_C0
  loc_AC7E31: FLdPr Me
  loc_AC7E34: MemLdI2 global_96
  loc_AC7E37: CI4UI1
  loc_AC7E38: FLdPr Me
  loc_AC7E3B: MemLdStr global_84
  loc_AC7E3E: Ary1LdPr
  loc_AC7E3F: MemLdStr global_8
  loc_AC7E42: ConcatStr
  loc_AC7E43: FStStrNoPop var_C4
  loc_AC7E46: LitStr "</td>"
  loc_AC7E49: ConcatStr
  loc_AC7E4A: CVarStr var_D4
  loc_AC7E4D: PopAdLdVar
  loc_AC7E4E: FLdPr Me
  loc_AC7E51: MemLdRfVar from_stack_1.htmFile
  loc_AC7E54: LdPrVar
  loc_AC7E56: LateMemCall
  loc_AC7E5C: FFreeStr var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = ""
  loc_AC7E6B: FFree1Var var_D4 = ""
  loc_AC7E6E: LitI2_Byte 1
  loc_AC7E70: FLdPr Me
  loc_AC7E73: MemLdRfVar from_stack_1.global_98
  loc_AC7E76: FLdPr Me
  loc_AC7E79: MemLdI2 global_96
  loc_AC7E7C: CI4UI1
  loc_AC7E7D: FLdPr Me
  loc_AC7E80: MemLdStr global_84
  loc_AC7E83: Ary1LdPr
  loc_AC7E84: MemLdStr global_12
  loc_AC7E87: LitI2_Byte 1
  loc_AC7E89: FnUBound
  loc_AC7E8B: CI2I4
  loc_AC7E8C: ForI2 var_D8
  loc_AC7E92: FLdPr Me
  loc_AC7E95: MemLdI2 global_98
  loc_AC7E98: CI4UI1
  loc_AC7E99: FLdPr Me
  loc_AC7E9C: MemLdI2 global_96
  loc_AC7E9F: CI4UI1
  loc_AC7EA0: FLdPr Me
  loc_AC7EA3: MemLdStr global_84
  loc_AC7EA6: AryLock
  loc_AC7EA9: Ary1LdPr
  loc_AC7EAA: MemLdStr global_12
  loc_AC7EAD: AryLock
  loc_AC7EB0: Ary1LdRf
  loc_AC7EB1: FStR4 var_E4
  loc_AC7EB4: FLdPr Me
  loc_AC7EB7: MemLdI2 global_98
  loc_AC7EBA: LitI2_Byte 1
  loc_AC7EBC: NeI2
  loc_AC7EBD: BranchF loc_AC7ED4
  loc_AC7EC0: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_AC7EC5: PopAdLdVar
  loc_AC7EC6: FLdPr Me
  loc_AC7EC9: MemLdRfVar from_stack_1.htmFile
  loc_AC7ECC: LdPrVar
  loc_AC7ECE: LateMemCall
  loc_AC7ED4: LitI4 0
  loc_AC7ED9: LitI4 0
  loc_AC7EDE: LitI2_Byte 0
  loc_AC7EE0: LitStr "center"
  loc_AC7EE3: FMemLdR4 var_E4(0)
  loc_AC7EE8: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AC7EED: CVarStr var_D4
  loc_AC7EF0: PopAdLdVar
  loc_AC7EF1: FLdPr Me
  loc_AC7EF4: MemLdRfVar from_stack_1.htmFile
  loc_AC7EF7: LdPrVar
  loc_AC7EF9: LateMemCall
  loc_AC7EFF: FFree1Var var_D4 = ""
  loc_AC7F02: LitI4 0
  loc_AC7F07: LitI4 0
  loc_AC7F0C: LitI2_Byte 0
  loc_AC7F0E: LitStr "right"
  loc_AC7F11: FMemLdR4 var_E4(4)
  loc_AC7F16: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AC7F1B: CVarStr var_D4
  loc_AC7F1E: PopAdLdVar
  loc_AC7F1F: FLdPr Me
  loc_AC7F22: MemLdRfVar from_stack_1.htmFile
  loc_AC7F25: LdPrVar
  loc_AC7F27: LateMemCall
  loc_AC7F2D: FFree1Var var_D4 = ""
  loc_AC7F30: LitI4 0
  loc_AC7F35: LitI4 0
  loc_AC7F3A: LitI2_Byte 0
  loc_AC7F3C: LitStr "right"
  loc_AC7F3F: FMemLdR4 var_E4(8)
  loc_AC7F44: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AC7F49: CVarStr var_D4
  loc_AC7F4C: PopAdLdVar
  loc_AC7F4D: FLdPr Me
  loc_AC7F50: MemLdRfVar from_stack_1.htmFile
  loc_AC7F53: LdPrVar
  loc_AC7F55: LateMemCall
  loc_AC7F5B: FFree1Var var_D4 = ""
  loc_AC7F5E: LitVarStr var_9C, "  </tr>"
  loc_AC7F63: PopAdLdVar
  loc_AC7F64: FLdPr Me
  loc_AC7F67: MemLdRfVar from_stack_1.htmFile
  loc_AC7F6A: LdPrVar
  loc_AC7F6C: LateMemCall
  loc_AC7F72: LitI4 0
  loc_AC7F77: FStR4 var_E4
  loc_AC7F7A: AryUnlock
  loc_AC7F7D: AryUnlock
  loc_AC7F80: FLdPr Me
  loc_AC7F83: MemLdRfVar from_stack_1.global_98
  loc_AC7F86: NextI2 var_D8, loc_AC7E92
  loc_AC7F8B: LitVarStr var_9C, "  <tr>"
  loc_AC7F90: PopAdLdVar
  loc_AC7F91: FLdPr Me
  loc_AC7F94: MemLdRfVar from_stack_1.htmFile
  loc_AC7F97: LdPrVar
  loc_AC7F99: LateMemCall
  loc_AC7F9F: LitVarStr var_9C, "    <td align=""right"" class=""Totales"">Subtotal:</td>"
  loc_AC7FA4: PopAdLdVar
  loc_AC7FA5: FLdPr Me
  loc_AC7FA8: MemLdRfVar from_stack_1.htmFile
  loc_AC7FAB: LdPrVar
  loc_AC7FAD: LateMemCall
  loc_AC7FB3: LitStr "    <td align=""right"" class=""Totales"">"
  loc_AC7FB6: FLdPr Me
  loc_AC7FB9: MemLdI2 global_96
  loc_AC7FBC: CI4UI1
  loc_AC7FBD: FLdPr Me
  loc_AC7FC0: MemLdStr global_84
  loc_AC7FC3: Ary1LdPr
  loc_AC7FC4: MemLdStr global_16
  loc_AC7FC7: ConcatStr
  loc_AC7FC8: FStStrNoPop var_B0
  loc_AC7FCB: LitStr "</td>"
  loc_AC7FCE: ConcatStr
  loc_AC7FCF: CVarStr var_D4
  loc_AC7FD2: PopAdLdVar
  loc_AC7FD3: FLdPr Me
  loc_AC7FD6: MemLdRfVar from_stack_1.htmFile
  loc_AC7FD9: LdPrVar
  loc_AC7FDB: LateMemCall
  loc_AC7FE1: FFree1Str var_B0
  loc_AC7FE4: FFree1Var var_D4 = ""
  loc_AC7FE7: LitStr "    <td align=""right"" class=""Totales"">"
  loc_AC7FEA: FLdPr Me
  loc_AC7FED: MemLdI2 global_96
  loc_AC7FF0: CI4UI1
  loc_AC7FF1: FLdPr Me
  loc_AC7FF4: MemLdStr global_84
  loc_AC7FF7: Ary1LdPr
  loc_AC7FF8: MemLdStr global_20
  loc_AC7FFB: ConcatStr
  loc_AC7FFC: FStStrNoPop var_B0
  loc_AC7FFF: LitStr "</td>"
  loc_AC8002: ConcatStr
  loc_AC8003: CVarStr var_D4
  loc_AC8006: PopAdLdVar
  loc_AC8007: FLdPr Me
  loc_AC800A: MemLdRfVar from_stack_1.htmFile
  loc_AC800D: LdPrVar
  loc_AC800F: LateMemCall
  loc_AC8015: FFree1Str var_B0
  loc_AC8018: FFree1Var var_D4 = ""
  loc_AC801B: LitVarStr var_9C, "  </tr>"
  loc_AC8020: PopAdLdVar
  loc_AC8021: FLdPr Me
  loc_AC8024: MemLdRfVar from_stack_1.htmFile
  loc_AC8027: LdPrVar
  loc_AC8029: LateMemCall
  loc_AC802F: FLdPr Me
  loc_AC8032: MemLdRfVar from_stack_1.global_96
  loc_AC8035: NextI2 var_8C, loc_AC7DD3
  loc_AC803A: LitVarStr var_9C, "  <tr><td colspan=""4"" align=""left"" class=""Encabezado"">&nbsp</td></tr>"
  loc_AC803F: PopAdLdVar
  loc_AC8040: FLdPr Me
  loc_AC8043: MemLdRfVar from_stack_1.htmFile
  loc_AC8046: LdPrVar
  loc_AC8048: LateMemCall
  loc_AC804E: LitVarStr var_9C, "  <tr>"
  loc_AC8053: PopAdLdVar
  loc_AC8054: FLdPr Me
  loc_AC8057: MemLdRfVar from_stack_1.htmFile
  loc_AC805A: LdPrVar
  loc_AC805C: LateMemCall
  loc_AC8062: LitVarStr var_9C, "    <td colspan=""1"" align=""left"">&nbsp;</th>"
  loc_AC8067: PopAdLdVar
  loc_AC8068: FLdPr Me
  loc_AC806B: MemLdRfVar from_stack_1.htmFile
  loc_AC806E: LdPrVar
  loc_AC8070: LateMemCall
  loc_AC8076: LitVarStr var_9C, "    <td align=""right"" class=""Totales"">Total:</td>"
  loc_AC807B: PopAdLdVar
  loc_AC807C: FLdPr Me
  loc_AC807F: MemLdRfVar from_stack_1.htmFile
  loc_AC8082: LdPrVar
  loc_AC8084: LateMemCall
  loc_AC808A: LitStr "    <td align=""right"" class=""Totales"">"
  loc_AC808D: FLdPr Me
  loc_AC8090: MemLdStr global_88
  loc_AC8093: ConcatStr
  loc_AC8094: FStStrNoPop var_B0
  loc_AC8097: LitStr "</td>"
  loc_AC809A: ConcatStr
  loc_AC809B: CVarStr var_D4
  loc_AC809E: PopAdLdVar
  loc_AC809F: FLdPr Me
  loc_AC80A2: MemLdRfVar from_stack_1.htmFile
  loc_AC80A5: LdPrVar
  loc_AC80A7: LateMemCall
  loc_AC80AD: FFree1Str var_B0
  loc_AC80B0: FFree1Var var_D4 = ""
  loc_AC80B3: LitStr "    <td align=""right"" class=""Totales"">"
  loc_AC80B6: FLdPr Me
  loc_AC80B9: MemLdStr global_92
  loc_AC80BC: ConcatStr
  loc_AC80BD: FStStrNoPop var_B0
  loc_AC80C0: LitStr "</td>"
  loc_AC80C3: ConcatStr
  loc_AC80C4: CVarStr var_D4
  loc_AC80C7: PopAdLdVar
  loc_AC80C8: FLdPr Me
  loc_AC80CB: MemLdRfVar from_stack_1.htmFile
  loc_AC80CE: LdPrVar
  loc_AC80D0: LateMemCall
  loc_AC80D6: FFree1Str var_B0
  loc_AC80D9: FFree1Var var_D4 = ""
  loc_AC80DC: LitVarStr var_9C, "  </tr>"
  loc_AC80E1: PopAdLdVar
  loc_AC80E2: FLdPr Me
  loc_AC80E5: MemLdRfVar from_stack_1.htmFile
  loc_AC80E8: LdPrVar
  loc_AC80EA: LateMemCall
  loc_AC80F0: LitVarStr var_9C, "  <tr><td colspan=""4"" align=""left"" class=""Encabezado"">&nbsp</td></tr>"
  loc_AC80F5: PopAdLdVar
  loc_AC80F6: FLdPr Me
  loc_AC80F9: MemLdRfVar from_stack_1.htmFile
  loc_AC80FC: LdPrVar
  loc_AC80FE: LateMemCall
  loc_AC8104: FLdPr Me
  loc_AC8107: MemLdStr global_92
  loc_AC810A: CR8Str
  loc_AC810C: FLdPr Me
  loc_AC810F: MemLdStr global_88
  loc_AC8112: CR8Str
  loc_AC8114: SubR4
  loc_AC8115: CR8R8
  loc_AC8116: LitI2_Byte 0
  loc_AC8118: CR8I2
  loc_AC8119: GtR4
  loc_AC811A: BranchF loc_AC8160
  loc_AC811D: LitI2_Byte 0
  loc_AC811F: LitVar_Missing var_D4
  loc_AC8122: LitI2_Byte &HFF
  loc_AC8124: FLdPr Me
  loc_AC8127: MemLdStr global_92
  loc_AC812A: CR8Str
  loc_AC812C: FLdPr Me
  loc_AC812F: MemLdStr global_88
  loc_AC8132: CR8Str
  loc_AC8134: SubR4
  loc_AC8135: CVarR8
  loc_AC8139: PopAdLdVar
  loc_AC813A: FLdRfVar var_EC
  loc_AC813D: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AC8142: FFree1Var var_D4 = ""
  loc_AC8145: LitI2_Byte 0
  loc_AC8147: LitVar_Missing var_D4
  loc_AC814A: LitI2_Byte &HFF
  loc_AC814C: LitVarStr var_9C, "0"
  loc_AC8151: PopAdLdVar
  loc_AC8152: FLdRfVar var_F0
  loc_AC8155: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AC815A: FFree1Var var_D4 = ""
  loc_AC815D: Branch loc_AC81A0
  loc_AC8160: LitI2_Byte 0
  loc_AC8162: LitVar_Missing var_D4
  loc_AC8165: LitI2_Byte &HFF
  loc_AC8167: FLdPr Me
  loc_AC816A: MemLdStr global_88
  loc_AC816D: CR8Str
  loc_AC816F: FLdPr Me
  loc_AC8172: MemLdStr global_92
  loc_AC8175: CR8Str
  loc_AC8177: SubR4
  loc_AC8178: CVarR8
  loc_AC817C: PopAdLdVar
  loc_AC817D: FLdRfVar var_F0
  loc_AC8180: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AC8185: FFree1Var var_D4 = ""
  loc_AC8188: LitI2_Byte 0
  loc_AC818A: LitVar_Missing var_D4
  loc_AC818D: LitI2_Byte &HFF
  loc_AC818F: LitVarStr var_9C, "0"
  loc_AC8194: PopAdLdVar
  loc_AC8195: FLdRfVar var_EC
  loc_AC8198: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AC819D: FFree1Var var_D4 = ""
  loc_AC81A0: LitStr "SELECT CajaPaco, DetaCuco"
  loc_AC81A3: LitStr " FROM paraconta"
  loc_AC81A6: ConcatStr
  loc_AC81A7: FStStrNoPop var_B0
  loc_AC81AA: LitStr " LEFT JOIN infogov.cuentacontable AS cc ON cc.PeriInfo = paraconta.PeriInfo AND cc.CodiCuco = CajaPaco"
  loc_AC81AD: ConcatStr
  loc_AC81AE: FStStrNoPop var_B4
  loc_AC81B1: LitStr " WHERE paraconta.PeriInfo = "
  loc_AC81B4: ConcatStr
  loc_AC81B5: CVarStr var_120
  loc_AC81B8: FLdPr Me
  loc_AC81BB: VCallAd Control_ID_mskDesde
  loc_AC81BE: FStAdFunc var_88
  loc_AC81C1: FLdPr var_88
  loc_AC81C4: LateIdLdVar var_D4 DispID_15 0
  loc_AC81CB: CStrVarTmp
  loc_AC81CC: CVarStr var_100
  loc_AC81CF: FLdRfVar var_110
  loc_AC81D2: ImpAdCallFPR4  = Year()
  loc_AC81D7: FLdRfVar var_110
  loc_AC81DA: ConcatVar var_130
  loc_AC81DE: CStrVarVal var_B8
  loc_AC81E2: FLdRfVar var_E8
  loc_AC81E5: NewIfNullPr clsparaconta
  loc_AC81E8: Call clsparaconta.RedefineRS(from_stack_1v)
  loc_AC81ED: FFreeStr var_B0 = "": var_B4 = ""
  loc_AC81F6: FFree1Ad var_88
  loc_AC81F9: FFreeVar var_D4 = "": var_100 = "": var_120 = "": var_110 = ""
  loc_AC8206: LitVarStr var_9C, "  <tr valign=""top"">"
  loc_AC820B: PopAdLdVar
  loc_AC820C: FLdPr Me
  loc_AC820F: MemLdRfVar from_stack_1.htmFile
  loc_AC8212: LdPrVar
  loc_AC8214: LateMemCall
  loc_AC821A: LitVarStr var_AC, "    <td class=""Titulo2"" colspan=""1"" align=""left"">"
  loc_AC821F: FLdRfVar var_D4
  loc_AC8222: FLdRfVar var_138
  loc_AC8225: LitVarStr var_9C, "CajaPaco"
  loc_AC822A: PopAdLdVar
  loc_AC822B: FLdRfVar var_134
  loc_AC822E: FLdRfVar var_88
  loc_AC8231: FLdRfVar var_E8
  loc_AC8234: NewIfNullPr clsparaconta
  loc_AC8237: from_stack_1v = clsparaconta.RsFrmGet()
  loc_AC823C: FLdPr var_88
  loc_AC823F:  = Me.Fields
  loc_AC8244: FLdPr var_134
  loc_AC8247: from_stack_2 = Me.Item(from_stack_1)
  loc_AC824C: FLdPr var_138
  loc_AC824F:  = Me.Value
  loc_AC8254: FLdRfVar var_D4
  loc_AC8257: ConcatVar var_100
  loc_AC825B: LitVarStr var_148, " - "
  loc_AC8260: ConcatVar var_110
  loc_AC8264: FLdRfVar var_120
  loc_AC8267: FLdRfVar var_164
  loc_AC826A: LitVarStr var_160, "DetaCuco"
  loc_AC826F: PopAdLdVar
  loc_AC8270: FLdRfVar var_150
  loc_AC8273: FLdRfVar var_14C
  loc_AC8276: FLdRfVar var_E8
  loc_AC8279: NewIfNullPr clsparaconta
  loc_AC827C: from_stack_1v = clsparaconta.RsFrmGet()
  loc_AC8281: FLdPr var_14C
  loc_AC8284:  = Me.Fields
  loc_AC8289: FLdPr var_150
  loc_AC828C: from_stack_2 = Me.Item(from_stack_1)
  loc_AC8291: FLdPr var_164
  loc_AC8294:  = Me.Value
  loc_AC8299: FLdRfVar var_120
  loc_AC829C: ConcatVar var_130
  loc_AC82A0: LitVarStr var_174, "</th>"
  loc_AC82A5: ConcatVar var_184
  loc_AC82A9: PopAdLdVar
  loc_AC82AA: FLdPr Me
  loc_AC82AD: MemLdRfVar from_stack_1.htmFile
  loc_AC82B0: LdPrVar
  loc_AC82B2: LateMemCall
  loc_AC82B8: FFreeAd var_88 = "": var_134 = "": var_138 = "": var_14C = "": var_150 = ""
  loc_AC82C7: FFreeVar var_D4 = "": var_100 = "": var_110 = "": var_120 = "": var_130 = ""
  loc_AC82D6: LitVarStr var_9C, "    <td align=""right"" class=""Totales"">Total:</td>"
  loc_AC82DB: PopAdLdVar
  loc_AC82DC: FLdPr Me
  loc_AC82DF: MemLdRfVar from_stack_1.htmFile
  loc_AC82E2: LdPrVar
  loc_AC82E4: LateMemCall
  loc_AC82EA: LitStr "    <td align=""right"" class=""Totales"">"
  loc_AC82ED: ILdRf var_EC
  loc_AC82F0: ConcatStr
  loc_AC82F1: FStStrNoPop var_B0
  loc_AC82F4: LitStr "</td>"
  loc_AC82F7: ConcatStr
  loc_AC82F8: CVarStr var_D4
  loc_AC82FB: PopAdLdVar
  loc_AC82FC: FLdPr Me
  loc_AC82FF: MemLdRfVar from_stack_1.htmFile
  loc_AC8302: LdPrVar
  loc_AC8304: LateMemCall
  loc_AC830A: FFree1Str var_B0
  loc_AC830D: FFree1Var var_D4 = ""
  loc_AC8310: LitStr "    <td align=""right"" class=""Totales"">"
  loc_AC8313: ILdRf var_F0
  loc_AC8316: ConcatStr
  loc_AC8317: FStStrNoPop var_B0
  loc_AC831A: LitStr "</td>"
  loc_AC831D: ConcatStr
  loc_AC831E: CVarStr var_D4
  loc_AC8321: PopAdLdVar
  loc_AC8322: FLdPr Me
  loc_AC8325: MemLdRfVar from_stack_1.htmFile
  loc_AC8328: LdPrVar
  loc_AC832A: LateMemCall
  loc_AC8330: FFree1Str var_B0
  loc_AC8333: FFree1Var var_D4 = ""
  loc_AC8336: LitVarStr var_9C, "  </tr>"
  loc_AC833B: PopAdLdVar
  loc_AC833C: FLdPr Me
  loc_AC833F: MemLdRfVar from_stack_1.htmFile
  loc_AC8342: LdPrVar
  loc_AC8344: LateMemCall
  loc_AC834A: LitNothing
  loc_AC834C: CastAd
  loc_AC834F: FStAdFunc var_E8
  loc_AC8352: Call Proc_244_30_9840D0()
  loc_AC8357: FLdPr Me
  loc_AC835A: MemLdRfVar from_stack_1.htmFile
  loc_AC835D: LdPrVar
  loc_AC835F: LateMemCall
  loc_AC8365: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_AC836A: ExitProcHresult
End Sub

Public Sub GeneraXLS() '952DBC
  'Data Table: 47A680
  loc_952DA4: LitI2_Byte 0
  loc_952DA6: FLdPr Me
  loc_952DA9: MemStI2 bLogos
  loc_952DAC: Call GeneraHTML()
  loc_952DB1: LitI2_Byte &HFF
  loc_952DB3: FLdPr Me
  loc_952DB6: MemStI2 bLogos
  loc_952DB9: ExitProcHresult
  loc_952DBA: Branch loc_9535A4
End Sub

Private Function Proc_244_29_A6C2CC() 'A6C2CC
  'Data Table: 47A680
  loc_A6BF40: LitVarStr var_94, "<html>"
  loc_A6BF45: PopAdLdVar
  loc_A6BF46: FLdPr Me
  loc_A6BF49: MemLdRfVar from_stack_1.htmFile
  loc_A6BF4C: LdPrVar
  loc_A6BF4E: LateMemCall
  loc_A6BF54: LitVarStr var_94, "<head>"
  loc_A6BF59: PopAdLdVar
  loc_A6BF5A: FLdPr Me
  loc_A6BF5D: MemLdRfVar from_stack_1.htmFile
  loc_A6BF60: LdPrVar
  loc_A6BF62: LateMemCall
  loc_A6BF68: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_A6BF6D: PopAdLdVar
  loc_A6BF6E: FLdPr Me
  loc_A6BF71: MemLdRfVar from_stack_1.htmFile
  loc_A6BF74: LdPrVar
  loc_A6BF76: LateMemCall
  loc_A6BF7C: LitStr "<title>"
  loc_A6BF7F: FLdRfVar var_A8
  loc_A6BF82: FLdPr Me
  loc_A6BF85:  = Me.Caption
  loc_A6BF8A: ILdRf var_A8
  loc_A6BF8D: ConcatStr
  loc_A6BF8E: FStStrNoPop var_AC
  loc_A6BF91: LitStr "</title>"
  loc_A6BF94: ConcatStr
  loc_A6BF95: CVarStr var_BC
  loc_A6BF98: PopAdLdVar
  loc_A6BF99: FLdPr Me
  loc_A6BF9C: MemLdRfVar from_stack_1.htmFile
  loc_A6BF9F: LdPrVar
  loc_A6BFA1: LateMemCall
  loc_A6BFA7: FFreeStr var_A8 = ""
  loc_A6BFAE: FFree1Var var_BC = ""
  loc_A6BFB1: LitStr vbNullString
  loc_A6BFB4: ILdRf Me
  loc_A6BFB7: CastAd
  loc_A6BFBA: FStAdFunc var_C0
  loc_A6BFBD: FLdRfVar var_C0
  loc_A6BFC0: ImpAdCallFPR4 Proc_263_23_B3DAB8(, )
  loc_A6BFC5: FFree1Ad var_C0
  loc_A6BFC8: LitI4 0
  loc_A6BFCD: FStStrCopy var_AC
  loc_A6BFD0: FLdRfVar var_AC
  loc_A6BFD3: LitI4 0
  loc_A6BFD8: FStStrCopy var_A8
  loc_A6BFDB: FLdRfVar var_A8
  loc_A6BFDE: LitI2_Byte 0
  loc_A6BFE0: PopTmpLdAd2 var_C2
  loc_A6BFE3: FLdPr Me
  loc_A6BFE6: MemLdRfVar from_stack_1.htmFile
  loc_A6BFE9: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_A6BFEE: FFreeStr var_A8 = ""
  loc_A6BFF5: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_A6BFFA: PopAdLdVar
  loc_A6BFFB: FLdPr Me
  loc_A6BFFE: MemLdRfVar from_stack_1.htmFile
  loc_A6C001: LdPrVar
  loc_A6C003: LateMemCall
  loc_A6C009: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_A6C00E: PopAdLdVar
  loc_A6C00F: FLdPr Me
  loc_A6C012: MemLdRfVar from_stack_1.htmFile
  loc_A6C015: LdPrVar
  loc_A6C017: LateMemCall
  loc_A6C01D: LitVarStr var_94, "    <th colspan=""3"" width=""100" & Chr(37) & """ align=""center"" valign=""bottom""><p>"
  loc_A6C022: PopAdLdVar
  loc_A6C023: FLdPr Me
  loc_A6C026: MemLdRfVar from_stack_1.htmFile
  loc_A6C029: LdPrVar
  loc_A6C02B: LateMemCall
  loc_A6C031: FLdPr Me
  loc_A6C034: MemLdI2 bLogos
  loc_A6C037: BranchF loc_A6C04E
  loc_A6C03A: LitVarStr var_94, "    <img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right"">"
  loc_A6C03F: PopAdLdVar
  loc_A6C040: FLdPr Me
  loc_A6C043: MemLdRfVar from_stack_1.htmFile
  loc_A6C046: LdPrVar
  loc_A6C048: LateMemCall
  loc_A6C04E: LitVarStr var_A4, "    <br><br>"
  loc_A6C053: LitVarStr var_94, "Municipalidad de Guaymallén"
  loc_A6C058: FStVarCopyObj var_BC
  loc_A6C05B: FLdRfVar var_BC
  loc_A6C05E: FLdRfVar var_D4
  loc_A6C061: ImpAdCallFPR4  = Ucase()
  loc_A6C066: FLdRfVar var_D4
  loc_A6C069: ConcatVar var_E4
  loc_A6C06D: LitVarStr var_F4, "</p>"
  loc_A6C072: ConcatVar var_104
  loc_A6C076: PopAdLdVar
  loc_A6C077: FLdPr Me
  loc_A6C07A: MemLdRfVar from_stack_1.htmFile
  loc_A6C07D: LdPrVar
  loc_A6C07F: LateMemCall
  loc_A6C085: FFreeVar var_BC = "": var_D4 = "": var_E4 = ""
  loc_A6C090: LitStr "    <p>"
  loc_A6C093: FLdRfVar var_A8
  loc_A6C096: FLdPr Me
  loc_A6C099:  = Me.Caption
  loc_A6C09E: ILdRf var_A8
  loc_A6C0A1: ConcatStr
  loc_A6C0A2: FStStrNoPop var_AC
  loc_A6C0A5: LitStr "</p></th>"
  loc_A6C0A8: ConcatStr
  loc_A6C0A9: CVarStr var_BC
  loc_A6C0AC: PopAdLdVar
  loc_A6C0AD: FLdPr Me
  loc_A6C0B0: MemLdRfVar from_stack_1.htmFile
  loc_A6C0B3: LdPrVar
  loc_A6C0B5: LateMemCall
  loc_A6C0BB: FFreeStr var_A8 = ""
  loc_A6C0C2: FFree1Var var_BC = ""
  loc_A6C0C5: LitVarStr var_94, "  </tr>"
  loc_A6C0CA: PopAdLdVar
  loc_A6C0CB: FLdPr Me
  loc_A6C0CE: MemLdRfVar from_stack_1.htmFile
  loc_A6C0D1: LdPrVar
  loc_A6C0D3: LateMemCall
  loc_A6C0D9: LitVarStr var_94, "  <tr><th><hr></th></tr>"
  loc_A6C0DE: PopAdLdVar
  loc_A6C0DF: FLdPr Me
  loc_A6C0E2: MemLdRfVar from_stack_1.htmFile
  loc_A6C0E5: LdPrVar
  loc_A6C0E7: LateMemCall
  loc_A6C0ED: LitVarStr var_94, "  <tr align=""left""><th>"
  loc_A6C0F2: PopAdLdVar
  loc_A6C0F3: FLdPr Me
  loc_A6C0F6: MemLdRfVar from_stack_1.htmFile
  loc_A6C0F9: LdPrVar
  loc_A6C0FB: LateMemCall
  loc_A6C101: FLdPr Me
  loc_A6C104: VCallAd Control_ID_mskDesde
  loc_A6C107: FStAdFunc var_C0
  loc_A6C10A: FLdPr var_C0
  loc_A6C10D: LateIdLdVar var_BC DispID_22 0
  loc_A6C114: CStrVarTmp
  loc_A6C115: FStStrNoPop var_A8
  loc_A6C118: LitStr vbNullString
  loc_A6C11B: NeStr
  loc_A6C11D: FFree1Str var_A8
  loc_A6C120: FFree1Ad var_C0
  loc_A6C123: FFree1Var var_BC = ""
  loc_A6C126: BranchF loc_A6C16E
  loc_A6C129: LitStr "         Desde: <span class=""Normal"">"
  loc_A6C12C: FLdPr Me
  loc_A6C12F: VCallAd Control_ID_mskDesde
  loc_A6C132: FStAdFunc var_C0
  loc_A6C135: FLdPr var_C0
  loc_A6C138: LateIdLdVar var_BC DispID_15 0
  loc_A6C13F: CStrVarTmp
  loc_A6C140: FStStrNoPop var_A8
  loc_A6C143: ConcatStr
  loc_A6C144: FStStrNoPop var_AC
  loc_A6C147: LitStr "</span><br>"
  loc_A6C14A: ConcatStr
  loc_A6C14B: CVarStr var_D4
  loc_A6C14E: PopAdLdVar
  loc_A6C14F: FLdPr Me
  loc_A6C152: MemLdRfVar from_stack_1.htmFile
  loc_A6C155: LdPrVar
  loc_A6C157: LateMemCall
  loc_A6C15D: FFreeStr var_A8 = ""
  loc_A6C164: FFree1Ad var_C0
  loc_A6C167: FFreeVar var_BC = ""
  loc_A6C16E: FLdPr Me
  loc_A6C171: VCallAd Control_ID_mskHasta
  loc_A6C174: FStAdFunc var_C0
  loc_A6C177: FLdPr var_C0
  loc_A6C17A: LateIdLdVar var_BC DispID_22 0
  loc_A6C181: CStrVarTmp
  loc_A6C182: FStStrNoPop var_A8
  loc_A6C185: LitStr vbNullString
  loc_A6C188: NeStr
  loc_A6C18A: FFree1Str var_A8
  loc_A6C18D: FFree1Ad var_C0
  loc_A6C190: FFree1Var var_BC = ""
  loc_A6C193: BranchF loc_A6C1DB
  loc_A6C196: LitStr "         Hasta: <span class=""Normal"">"
  loc_A6C199: FLdPr Me
  loc_A6C19C: VCallAd Control_ID_mskHasta
  loc_A6C19F: FStAdFunc var_C0
  loc_A6C1A2: FLdPr var_C0
  loc_A6C1A5: LateIdLdVar var_BC DispID_15 0
  loc_A6C1AC: CStrVarTmp
  loc_A6C1AD: FStStrNoPop var_A8
  loc_A6C1B0: ConcatStr
  loc_A6C1B1: FStStrNoPop var_AC
  loc_A6C1B4: LitStr "</span>"
  loc_A6C1B7: ConcatStr
  loc_A6C1B8: CVarStr var_D4
  loc_A6C1BB: PopAdLdVar
  loc_A6C1BC: FLdPr Me
  loc_A6C1BF: MemLdRfVar from_stack_1.htmFile
  loc_A6C1C2: LdPrVar
  loc_A6C1C4: LateMemCall
  loc_A6C1CA: FFreeStr var_A8 = ""
  loc_A6C1D1: FFree1Ad var_C0
  loc_A6C1D4: FFreeVar var_BC = ""
  loc_A6C1DB: LitVarStr var_94, "   </th>"
  loc_A6C1E0: PopAdLdVar
  loc_A6C1E1: FLdPr Me
  loc_A6C1E4: MemLdRfVar from_stack_1.htmFile
  loc_A6C1E7: LdPrVar
  loc_A6C1E9: LateMemCall
  loc_A6C1EF: LitVarStr var_94, "  </tr>"
  loc_A6C1F4: PopAdLdVar
  loc_A6C1F5: FLdPr Me
  loc_A6C1F8: MemLdRfVar from_stack_1.htmFile
  loc_A6C1FB: LdPrVar
  loc_A6C1FD: LateMemCall
  loc_A6C203: LitVarStr var_94, "</table>"
  loc_A6C208: PopAdLdVar
  loc_A6C209: FLdPr Me
  loc_A6C20C: MemLdRfVar from_stack_1.htmFile
  loc_A6C20F: LdPrVar
  loc_A6C211: LateMemCall
  loc_A6C217: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_A6C21C: PopAdLdVar
  loc_A6C21D: FLdPr Me
  loc_A6C220: MemLdRfVar from_stack_1.htmFile
  loc_A6C223: LdPrVar
  loc_A6C225: LateMemCall
  loc_A6C22B: LitVarStr var_94, "  <THEAD>"
  loc_A6C230: PopAdLdVar
  loc_A6C231: FLdPr Me
  loc_A6C234: MemLdRfVar from_stack_1.htmFile
  loc_A6C237: LdPrVar
  loc_A6C239: LateMemCall
  loc_A6C23F: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_A6C244: PopAdLdVar
  loc_A6C245: FLdPr Me
  loc_A6C248: MemLdRfVar from_stack_1.htmFile
  loc_A6C24B: LdPrVar
  loc_A6C24D: LateMemCall
  loc_A6C253: LitVarStr var_94, "    <th>Cuenta Contable</th>"
  loc_A6C258: PopAdLdVar
  loc_A6C259: FLdPr Me
  loc_A6C25C: MemLdRfVar from_stack_1.htmFile
  loc_A6C25F: LdPrVar
  loc_A6C261: LateMemCall
  loc_A6C267: LitVarStr var_94, "    <th>Fecha</th>"
  loc_A6C26C: PopAdLdVar
  loc_A6C26D: FLdPr Me
  loc_A6C270: MemLdRfVar from_stack_1.htmFile
  loc_A6C273: LdPrVar
  loc_A6C275: LateMemCall
  loc_A6C27B: LitVarStr var_94, "    <th>D E B E</th>"
  loc_A6C280: PopAdLdVar
  loc_A6C281: FLdPr Me
  loc_A6C284: MemLdRfVar from_stack_1.htmFile
  loc_A6C287: LdPrVar
  loc_A6C289: LateMemCall
  loc_A6C28F: LitVarStr var_94, "    <th>H A B E R</th>"
  loc_A6C294: PopAdLdVar
  loc_A6C295: FLdPr Me
  loc_A6C298: MemLdRfVar from_stack_1.htmFile
  loc_A6C29B: LdPrVar
  loc_A6C29D: LateMemCall
  loc_A6C2A3: LitVarStr var_94, "  </tr>"
  loc_A6C2A8: PopAdLdVar
  loc_A6C2A9: FLdPr Me
  loc_A6C2AC: MemLdRfVar from_stack_1.htmFile
  loc_A6C2AF: LdPrVar
  loc_A6C2B1: LateMemCall
  loc_A6C2B7: LitVarStr var_94, "  </THEAD>"
  loc_A6C2BC: PopAdLdVar
  loc_A6C2BD: FLdPr Me
  loc_A6C2C0: MemLdRfVar from_stack_1.htmFile
  loc_A6C2C3: LdPrVar
  loc_A6C2C5: LateMemCall
  loc_A6C2CB: ExitProcHresult
End Function

Private Function Proc_244_30_9840D0() '9840D0
  'Data Table: 47A680
  loc_984090: LitVarStr var_94, "</table>"
  loc_984095: PopAdLdVar
  loc_984096: FLdPr Me
  loc_984099: MemLdRfVar from_stack_1.htmFile
  loc_98409C: LdPrVar
  loc_98409E: LateMemCall
  loc_9840A4: LitVarStr var_94, "</body>"
  loc_9840A9: PopAdLdVar
  loc_9840AA: FLdPr Me
  loc_9840AD: MemLdRfVar from_stack_1.htmFile
  loc_9840B0: LdPrVar
  loc_9840B2: LateMemCall
  loc_9840B8: LitVarStr var_94, "</html>"
  loc_9840BD: PopAdLdVar
  loc_9840BE: FLdPr Me
  loc_9840C1: MemLdRfVar from_stack_1.htmFile
  loc_9840C4: LdPrVar
  loc_9840C6: LateMemCall
  loc_9840CC: ExitProcHresult
  loc_9840CD: ImpAdStI2 MemVar_C3D038
End Function
