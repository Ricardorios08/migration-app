VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Object = "{65E121D4-0C60-11D2-A9FC0000F8754DA1}#2.0#0"; "C:\WINDOWS\SysWOW64\mschrt20.ocx"
Begin VB.Form rptPlazoNotaPedidoaOrdenCompra
  Caption = "Plazo desde la Nota de Pedido a la Orden de Compra"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptPlazoNotaPedidoaOrdenCompra.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 6135
  ClientHeight = 6360
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 6105
    Width = 6135
    Height = 255
    TabIndex = 21
    OleObjectBlob = "rptPlazoNotaPedidoaOrdenCompra.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 5160
    Top = 5160
    Width = 735
    Height = 615
    TabIndex = 19
    Cancel = -1  'True
    Picture = "rptPlazoNotaPedidoaOrdenCompra.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptPlazoNotaPedidoaOrdenCompra.frx":0B9C
    Left = 5520
    Top = 0
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 4920
    Width = 1815
    Height = 1095
    TabIndex = 17
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 18
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 4920
    Width = 3015
    Height = 1095
    TabIndex = 14
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 16
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 15
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 5895
    Height = 4815
    TabIndex = 0
    Begin VB.CheckBox MarcaTodosChk
      Caption = "Marca Todos"
      Left = 360
      Top = 4440
      Width = 1335
      Height = 255
      TabIndex = 12
    End
    Begin VB.ListBox CodiUsuaList
      Left = 360
      Top = 2040
      Width = 5295
      Height = 2310
      TabIndex = 11
      Style = 1
    End
    Begin VB.ComboBox cboPeriodo
      Style = 2
      ForeColor = &HFF0000&
      Left = 1440
      Top = 360
      Width = 1095
      Height = 315
      TabIndex = 2
    End
    Begin VB.CommandButton HastaCmd
      Left = 2640
      Top = 1320
      Width = 375
      Height = 375
      TabIndex = 9
      Picture = "rptPlazoNotaPedidoaOrdenCompra.frx":0C00
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CommandButton DesdeCmd
      Left = 2640
      Top = 840
      Width = 375
      Height = 375
      TabIndex = 6
      Picture = "rptPlazoNotaPedidoaOrdenCompra.frx":1142
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 4320
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 3
      CausesValidation = 0   'False
    End
    Begin MSMask.MaskEdBox DesdeMsk
      Left = 1440
      Top = 840
      Width = 1095
      Height = 285
      TabIndex = 5
      OleObjectBlob = "rptPlazoNotaPedidoaOrdenCompra.frx":1684
    End
    Begin MSMask.MaskEdBox HastaMsk
      Left = 1440
      Top = 1320
      Width = 1095
      Height = 285
      TabIndex = 8
      OleObjectBlob = "rptPlazoNotaPedidoaOrdenCompra.frx":170C
    End
    Begin VB.Label Label5
      Caption = "Notas cargadas por:"
      Left = 360
      Top = 1800
      Width = 1440
      Height = 195
      TabIndex = 10
      AutoSize = -1  'True
    End
    Begin VB.Label Label6
      Caption = "Periodo:"
      Left = 720
      Top = 360
      Width = 585
      Height = 195
      TabIndex = 1
      AutoSize = -1  'True
    End
    Begin VB.Label Label2
      Caption = "Hasta:"
      Left = 885
      Top = 1320
      Width = 465
      Height = 195
      TabIndex = 7
      AutoSize = -1  'True
    End
    Begin VB.Label Label1
      Caption = "Desde:"
      Left = 840
      Top = 840
      Width = 510
      Height = 195
      TabIndex = 4
      AutoSize = -1  'True
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 5280
    Top = 5400
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 20
    OleObjectBlob = "rptPlazoNotaPedidoaOrdenCompra.frx":1794
  End
  Begin MSChart20Lib.MSChart Graf1
    Left = 6480
    Top = 0
    Width = 3855
    Height = 3015
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 13
    OleObjectBlob = "rptPlazoNotaPedidoaOrdenCompra.frx":1848
  End
  Begin VB.Image img1
    Left = 10440
    Top = 240
    Width = 735
    Height = 3135
    Visible = 0   'False
  End
End

Attribute VB_Name = "rptPlazoNotaPedidoaOrdenCompra"

Public bGenerado As Boolean

Private Type UDT_1_005FAF6C
  bStruc(32) As Byte ' String fields: 7
End Type


Private Sub Form_Load() 'A27F68
  'Data Table: 497DF4
  loc_A27DB0: LitI2_Byte &HFF
  loc_A27DB2: ImpAdStI2 MemVar_C3D840
  loc_A27DB5: ILdRf Me
  loc_A27DB8: CastAd
  loc_A27DBB: FStAdFunc var_90
  loc_A27DBE: FLdRfVar var_90
  loc_A27DC1: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_A27DC6: FFree1Ad var_90
  loc_A27DC9: FLdRfVar var_88
  loc_A27DCC: NewIfNullAd
  loc_A27DCF: FStAd var_94 
  loc_A27DD3: LitStr "SELECT * FROM infogov.periodo ORDER BY PeriInfo"
  loc_A27DD6: FLdPr var_94
  loc_A27DD9: Call clsperiodo.RedefineRS(from_stack_1v)
  loc_A27DDE: FLdRfVar var_98
  loc_A27DE1: FLdPr var_94
  loc_A27DE4: from_stack_1 = clsperiodo.RecordCount
  loc_A27DE9: ILdRf var_98
  loc_A27DEC: LitI4 0
  loc_A27DF1: GtI4
  loc_A27DF2: BranchF loc_A27E79
  loc_A27DF5: FLdPr var_94
  loc_A27DF8: Call clsperiodo.MoveFirst()
  loc_A27DFD: FLdRfVar var_9A
  loc_A27E00: FLdPr var_94
  loc_A27E03: from_stack_1 = clsperiodo.EOF
  loc_A27E08: FLdI2 var_9A
  loc_A27E0B: NotI4
  loc_A27E0C: BranchF loc_A27E79
  loc_A27E0F: LitVar_Missing var_D8
  loc_A27E12: PopAdLdVar
  loc_A27E13: FLdRfVar var_C4
  loc_A27E16: FLdRfVar var_B4
  loc_A27E19: LitVarStr var_B0, "PeriInfo"
  loc_A27E1E: PopAdLdVar
  loc_A27E1F: FLdRfVar var_A0
  loc_A27E22: FLdRfVar var_90
  loc_A27E25: FLdPr var_94
  loc_A27E28: from_stack_1v = clsperiodo.RsFrmGet()
  loc_A27E2D: FLdPr var_90
  loc_A27E30:  = Me.Fields
  loc_A27E35: FLdPr var_A0
  loc_A27E38: from_stack_2 = Me.Item(from_stack_1)
  loc_A27E3D: FLdPr var_B4
  loc_A27E40:  = Me.Value
  loc_A27E45: FLdRfVar var_C4
  loc_A27E48: CStrVarTmp
  loc_A27E49: FStStrNoPop var_C8
  loc_A27E4C: FLdPr Me
  loc_A27E4F: VCallAd Control_ID_cboPeriodo
  loc_A27E52: FStAdFunc var_DC
  loc_A27E55: FLdPr var_DC
  loc_A27E58: Me.AddItem from_stack_1, from_stack_2
  loc_A27E5D: FFree1Str var_C8
  loc_A27E60: FFreeAd var_90 = "": var_A0 = "": var_B4 = ""
  loc_A27E6B: FFree1Var var_C4 = ""
  loc_A27E6E: FLdPr var_94
  loc_A27E71: Call clsperiodo.MoveSiguiente()
  loc_A27E76: Branch loc_A27DFD
  loc_A27E79: LitNothing
  loc_A27E7B: FStAd var_94 
  loc_A27E7F: LitStr "SELECT CodiUsua FROM infogov.usuario ORDER BY CodiUsua"
  loc_A27E82: FLdRfVar var_8C
  loc_A27E85: NewIfNullPr clsusuario
  loc_A27E88: Call clsusuario.RedefineRS(from_stack_1v)
  loc_A27E8D: FLdRfVar var_98
  loc_A27E90: FLdRfVar var_8C
  loc_A27E93: NewIfNullPr clsusuario
  loc_A27E96: from_stack_1 = clsusuario.RecordCount
  loc_A27E9B: ILdRf var_98
  loc_A27E9E: LitI4 0
  loc_A27EA3: GtI4
  loc_A27EA4: BranchF loc_A27F61
  loc_A27EA7: FLdPr Me
  loc_A27EAA: VCallAd Control_ID_CodiUsuaList
  loc_A27EAD: FStAdFunc var_E0
  loc_A27EB0: FLdPr var_E0
  loc_A27EB3: Me.Clear
  loc_A27EB8: FLdRfVar var_9A
  loc_A27EBB: FLdRfVar var_8C
  loc_A27EBE: NewIfNullPr clsusuario
  loc_A27EC1: from_stack_1 = clsusuario.EOF
  loc_A27EC6: FLdI2 var_9A
  loc_A27EC9: NotI4
  loc_A27ECA: BranchF loc_A27F32
  loc_A27ECD: LitVar_Missing var_D8
  loc_A27ED0: PopAdLdVar
  loc_A27ED1: FLdRfVar var_C4
  loc_A27ED4: FLdRfVar var_B4
  loc_A27ED7: LitVarStr var_B0, "CodiUsua"
  loc_A27EDC: PopAdLdVar
  loc_A27EDD: FLdRfVar var_A0
  loc_A27EE0: FLdRfVar var_90
  loc_A27EE3: FLdRfVar var_8C
  loc_A27EE6: NewIfNullPr clsusuario
  loc_A27EE9: from_stack_1v = clsusuario.RsFrmGet()
  loc_A27EEE: FLdPr var_90
  loc_A27EF1:  = Me.Fields
  loc_A27EF6: FLdPr var_A0
  loc_A27EF9: from_stack_2 = Me.Item(from_stack_1)
  loc_A27EFE: FLdPr var_B4
  loc_A27F01:  = Me.Value
  loc_A27F06: FLdRfVar var_C4
  loc_A27F09: CStrVarTmp
  loc_A27F0A: FStStrNoPop var_C8
  loc_A27F0D: FLdPr var_E0
  loc_A27F10: Me.AddItem from_stack_1, from_stack_2
  loc_A27F15: FFree1Str var_C8
  loc_A27F18: FFreeAd var_90 = "": var_A0 = ""
  loc_A27F21: FFree1Var var_C4 = ""
  loc_A27F24: FLdRfVar var_8C
  loc_A27F27: NewIfNullPr clsusuario
  loc_A27F2A: Call clsusuario.MoveSiguiente()
  loc_A27F2F: Branch loc_A27EB8
  loc_A27F32: LitI2_Byte 0
  loc_A27F34: FLdPr var_E0
  loc_A27F37: Me.ListIndex = from_stack_1
  loc_A27F3C: LitI4 1
  loc_A27F41: CI2I4
  loc_A27F42: FLdPr Me
  loc_A27F45: VCallAd Control_ID_MarcaTodosChk
  loc_A27F48: FStAdFunc var_90
  loc_A27F4B: FLdPr var_90
  loc_A27F4E: Me.Value = from_stack_1
  loc_A27F53: FFree1Ad var_90
  loc_A27F56: Call MarcaTodosChk_Click()
  loc_A27F5B: LitNothing
  loc_A27F5D: FStAd var_E0 
  loc_A27F61: Call cmdNueva_Click()
  loc_A27F66: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '96605C
  'Data Table: 497DF4
  loc_966044: FLdPr Me
  loc_966047: VCallAd Control_ID_wbbReporte
  loc_96604A: FStAdFunc var_88
  loc_96604D: FLdRfVar var_88
  loc_966050: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_966055: FFree1Ad var_88
  loc_966058: ExitProcHresult
End Sub

Private Sub cboPeriodo_Click() '9D1858
  'Data Table: 497DF4
  loc_9D177C: FLdRfVar var_C0
  loc_9D177F: FLdPr Me
  loc_9D1782: VCallAd Control_ID_cboPeriodo
  loc_9D1785: FStAdFunc var_BC
  loc_9D1788: FLdPr var_BC
  loc_9D178B:  = Me.Text
  loc_9D1790: LitI2_Byte 0
  loc_9D1792: PopTmpLdAd2 var_86
  loc_9D1795: ImpAdCallFPR4 Proc_261_32_A53D7C()
  loc_9D179A: CVarDate var_A8
  loc_9D179E: FLdRfVar var_B8
  loc_9D17A1: ImpAdCallFPR4  = Month()
  loc_9D17A6: LitI2_Byte 1
  loc_9D17A8: FLdRfVar var_B8
  loc_9D17AB: CI2Var
  loc_9D17AC: ILdRf var_C0
  loc_9D17AF: CI2Str
  loc_9D17B1: FLdRfVar var_D0
  loc_9D17B4: ImpAdCallFPR4  = DateSerial(, , )
  loc_9D17B9: FLdRfVar var_D0
  loc_9D17BC: CStrVarTmp
  loc_9D17BD: CVarStr var_E0
  loc_9D17C0: PopAdLdVar
  loc_9D17C1: FLdPr Me
  loc_9D17C4: VCallAd Control_ID_DesdeMsk
  loc_9D17C7: FStAdFunc var_F4
  loc_9D17CA: FLdPr var_F4
  loc_9D17CD: LateIdSt
  loc_9D17D2: FFree1Str var_C0
  loc_9D17D5: FFreeAd var_BC = ""
  loc_9D17DC: FFreeVar var_A8 = "": var_B8 = "": var_D0 = ""
  loc_9D17E7: FLdRfVar var_C0
  loc_9D17EA: FLdPr Me
  loc_9D17ED: VCallAd Control_ID_cboPeriodo
  loc_9D17F0: FStAdFunc var_BC
  loc_9D17F3: FLdPr var_BC
  loc_9D17F6:  = Me.Text
  loc_9D17FB: LitI2_Byte 1
  loc_9D17FD: LitI2_Byte 1
  loc_9D17FF: ILdRf var_C0
  loc_9D1802: CI2Str
  loc_9D1804: FLdRfVar var_A8
  loc_9D1807: ImpAdCallFPR4  = DateSerial(, , )
  loc_9D180C: FLdRfVar var_A8
  loc_9D180F: CStrVarTmp
  loc_9D1810: CVarStr var_B8
  loc_9D1813: PopAdLdVar
  loc_9D1814: FLdPr Me
  loc_9D1817: VCallAd Control_ID_DesdeMsk
  loc_9D181A: FStAdFunc var_F4
  loc_9D181D: FLdPr var_F4
  loc_9D1820: LateIdSt
  loc_9D1825: FFree1Str var_C0
  loc_9D1828: FFreeAd var_BC = ""
  loc_9D182F: FFreeVar var_A8 = ""
  loc_9D1836: ImpAdLdFPR8 MemVar_C3D04C
  loc_9D1839: CStrDate
  loc_9D183B: CVarStr var_A8
  loc_9D183E: PopAdLdVar
  loc_9D183F: FLdPr Me
  loc_9D1842: VCallAd Control_ID_HastaMsk
  loc_9D1845: FStAdFunc var_BC
  loc_9D1848: FLdPr var_BC
  loc_9D184B: LateIdSt
  loc_9D1850: FFree1Ad var_BC
  loc_9D1853: FFree1Var var_A8 = ""
  loc_9D1856: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '965FC4
  'Data Table: 497DF4
  loc_965FAC: LitI2_Byte 0
  loc_965FAE: ILdRf Me
  loc_965FB1: CastAd
  loc_965FB4: FStAdFunc var_88
  loc_965FB7: FLdRfVar var_88
  loc_965FBA: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_965FBF: FFree1Ad var_88
  loc_965FC2: ExitProcHresult
End Sub

Private Sub DesdeMsk_UnknownEvent_0 '94D520
  'Data Table: 497DF4
  loc_94D50C: FLdPr Me
  loc_94D50F: VCallAd Control_ID_DesdeMsk
  loc_94D512: CVarAd
  loc_94D516: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94D51B: FFree1Var var_94 = ""
  loc_94D51E: ExitProcHresult
End Sub

Private Function DesdeMsk_UnknownEvent_8(arg_C) '9ADC54
  'Data Table: 497DF4
  loc_9ADBC4: FLdPr Me
  loc_9ADBC7: VCallAd Control_ID_DesdeMsk
  loc_9ADBCA: FStAdFunc var_88
  loc_9ADBCD: FLdPr var_88
  loc_9ADBD0: LateIdLdVar var_98 DispID_15 0
  loc_9ADBD7: PopAd
  loc_9ADBD9: LitI2_Byte &HFF
  loc_9ADBDB: PopTmpLdAd2 var_A2
  loc_9ADBDE: LitNothing
  loc_9ADBE0: CastAd
  loc_9ADBE3: FStAdFunc var_A0
  loc_9ADBE6: FLdRfVar var_A0
  loc_9ADBE9: LitStr "01/01/2018"
  loc_9ADBEC: LitI2_Byte 0
  loc_9ADBEE: LitI2_Byte 0
  loc_9ADBF0: FLdRfVar var_98
  loc_9ADBF3: CStrVarTmp
  loc_9ADBF4: FStStrNoPop var_9C
  loc_9ADBF7: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9ADBFC: FStStrNoPop var_A8
  loc_9ADBFF: FLdPr Me
  loc_9ADC02: MemStStrCopy
  loc_9ADC06: FFreeStr var_9C = ""
  loc_9ADC0D: FFreeAd var_88 = ""
  loc_9ADC14: FFree1Var var_98 = ""
  loc_9ADC17: FLdPr Me
  loc_9ADC1A: VCallAd Control_ID_DesdeMsk
  loc_9ADC1D: FStAdFunc var_B0
  loc_9ADC20: LitNothing
  loc_9ADC22: CastAd
  loc_9ADC25: FStAdFunc var_AC
  loc_9ADC28: FLdRfVar var_AC
  loc_9ADC2B: FLdZeroAd var_B0
  loc_9ADC2E: FStAdFuncNoPop
  loc_9ADC31: CastAd
  loc_9ADC34: FStAdFunc var_A0
  loc_9ADC37: FLdRfVar var_A0
  loc_9ADC3A: FLdPr Me
  loc_9ADC3D: MemLdRfVar from_stack_1.global_104
  loc_9ADC40: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9ADC45: IStI2 arg_C
  loc_9ADC48: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9ADC53: ExitProcHresult
End Function

Private Sub HastaMsk_UnknownEvent_0 '9DFC68
  'Data Table: 497DF4
  loc_9DFB80: FLdPr Me
  loc_9DFB83: VCallAd Control_ID_DesdeMsk
  loc_9DFB86: FStAdFunc var_88
  loc_9DFB89: FLdPr var_88
  loc_9DFB8C: LateIdLdVar var_98 DispID_15 0
  loc_9DFB93: CStrVarTmp
  loc_9DFB94: CVarStr var_A8
  loc_9DFB97: FLdRfVar var_B8
  loc_9DFB9A: ImpAdCallFPR4  = Day()
  loc_9DFB9F: FLdRfVar var_B8
  loc_9DFBA2: LitVarI2 var_C8, 1
  loc_9DFBA7: HardType
  loc_9DFBA8: EqVarBool
  loc_9DFBAA: FFree1Ad var_88
  loc_9DFBAD: FFreeVar var_98 = "": var_A8 = ""
  loc_9DFBB6: BranchF loc_9DFC52
  loc_9DFBB9: FLdPr Me
  loc_9DFBBC: VCallAd Control_ID_DesdeMsk
  loc_9DFBBF: FStAdFunc var_88
  loc_9DFBC2: FLdPr var_88
  loc_9DFBC5: LateIdLdVar var_98 DispID_15 0
  loc_9DFBCC: CStrVarTmp
  loc_9DFBCD: CVarStr var_A8
  loc_9DFBD0: FLdRfVar var_B8
  loc_9DFBD3: ImpAdCallFPR4  = Year()
  loc_9DFBD8: FLdPr Me
  loc_9DFBDB: VCallAd Control_ID_DesdeMsk
  loc_9DFBDE: FStAdFunc var_DC
  loc_9DFBE1: FLdPr var_DC
  loc_9DFBE4: LateIdLdVar var_D8 DispID_15 0
  loc_9DFBEB: CStrVarTmp
  loc_9DFBEC: CVarStr var_EC
  loc_9DFBEF: FLdRfVar var_FC
  loc_9DFBF2: ImpAdCallFPR4  = Month()
  loc_9DFBF7: LitI2_Byte 1
  loc_9DFBF9: FLdRfVar var_FC
  loc_9DFBFC: LitVarI2 var_C8, 1
  loc_9DFC01: AddVar var_10C
  loc_9DFC05: CI2Var
  loc_9DFC06: FLdRfVar var_B8
  loc_9DFC09: CI2Var
  loc_9DFC0A: FLdRfVar var_11C
  loc_9DFC0D: ImpAdCallFPR4  = DateSerial(, , )
  loc_9DFC12: FLdRfVar var_11C
  loc_9DFC15: LitVarI2 var_12C, 1
  loc_9DFC1A: SubVar var_13C
  loc_9DFC1E: CStrVarTmp
  loc_9DFC1F: CVarStr var_14C
  loc_9DFC22: PopAdLdVar
  loc_9DFC23: FLdPr Me
  loc_9DFC26: VCallAd Control_ID_HastaMsk
  loc_9DFC29: FStAdFunc var_160
  loc_9DFC2C: FLdPr var_160
  loc_9DFC2F: LateIdSt
  loc_9DFC34: FFreeAd var_88 = "": var_DC = ""
  loc_9DFC3D: FFreeVar var_98 = "": var_A8 = "": var_D8 = "": var_EC = "": var_FC = "": var_B8 = "": var_10C = "": var_11C = ""
  loc_9DFC52: FLdPr Me
  loc_9DFC55: VCallAd Control_ID_HastaMsk
  loc_9DFC58: CVarAd
  loc_9DFC5C: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_9DFC61: FFree1Var var_98 = ""
  loc_9DFC64: ExitProcHresult
  loc_9DFC65: FnAbsI2
  loc_9DFC66: FStStrNoPop arg_7C00
End Sub

Private Function HastaMsk_UnknownEvent_8(arg_C) '9AD3BC
  'Data Table: 497DF4
  loc_9AD32C: FLdPr Me
  loc_9AD32F: VCallAd Control_ID_HastaMsk
  loc_9AD332: FStAdFunc var_88
  loc_9AD335: FLdPr var_88
  loc_9AD338: LateIdLdVar var_98 DispID_15 0
  loc_9AD33F: PopAd
  loc_9AD341: LitI2_Byte &HFF
  loc_9AD343: PopTmpLdAd2 var_A2
  loc_9AD346: LitNothing
  loc_9AD348: CastAd
  loc_9AD34B: FStAdFunc var_A0
  loc_9AD34E: FLdRfVar var_A0
  loc_9AD351: LitStr "01/01/2018"
  loc_9AD354: LitI2_Byte 0
  loc_9AD356: LitI2_Byte 0
  loc_9AD358: FLdRfVar var_98
  loc_9AD35B: CStrVarTmp
  loc_9AD35C: FStStrNoPop var_9C
  loc_9AD35F: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9AD364: FStStrNoPop var_A8
  loc_9AD367: FLdPr Me
  loc_9AD36A: MemStStrCopy
  loc_9AD36E: FFreeStr var_9C = ""
  loc_9AD375: FFreeAd var_88 = ""
  loc_9AD37C: FFree1Var var_98 = ""
  loc_9AD37F: FLdPr Me
  loc_9AD382: VCallAd Control_ID_HastaMsk
  loc_9AD385: FStAdFunc var_B0
  loc_9AD388: LitNothing
  loc_9AD38A: CastAd
  loc_9AD38D: FStAdFunc var_AC
  loc_9AD390: FLdRfVar var_AC
  loc_9AD393: FLdZeroAd var_B0
  loc_9AD396: FStAdFuncNoPop
  loc_9AD399: CastAd
  loc_9AD39C: FStAdFunc var_A0
  loc_9AD39F: FLdRfVar var_A0
  loc_9AD3A2: FLdPr Me
  loc_9AD3A5: MemLdRfVar from_stack_1.global_104
  loc_9AD3A8: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9AD3AD: IStI2 arg_C
  loc_9AD3B0: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9AD3BB: ExitProcHresult
End Function

Private Sub cmdSalir_Click() '97B554
  'Data Table: 497DF4
  loc_97B524: LitVarStr var_94, "Cerrando..."
  loc_97B529: PopAdLdVar
  loc_97B52A: FLdPr Me
  loc_97B52D: VCallAd Control_ID_statusBar
  loc_97B530: FStAdFunc var_A8
  loc_97B533: FLdPr var_A8
  loc_97B536: LateIdSt
  loc_97B53B: FFree1Ad var_A8
  loc_97B53E: ILdRf Me
  loc_97B541: FStAdNoPop
  loc_97B545: ImpAdLdRf MemVar_C44F9C
  loc_97B548: NewIfNullPr Me
  loc_97B54B: Me.Global.Unload from_stack_1
  loc_97B550: FFree1Ad var_A8
  loc_97B553: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '965DFC
  'Data Table: 497DF4
  loc_965DE4: ILdRf Me
  loc_965DE7: CastAd
  loc_965DEA: FStAdFunc var_88
  loc_965DED: FLdRfVar var_88
  loc_965DF0: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_965DF5: FFree1Ad var_88
  loc_965DF8: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '98C41C
  'Data Table: 497DF4
  loc_98C3E4: FLdPr Me
  loc_98C3E7: VCallAd Control_ID_statusBar
  loc_98C3EA: FStAdFunc var_88
  loc_98C3ED: FLdPr var_88
  loc_98C3F0: LateIdLdVar var_98 DispID_1 0
  loc_98C3F7: CStrVarTmp
  loc_98C3F8: CVarStr var_A8
  loc_98C3FB: PopAdLdVar
  loc_98C3FC: FLdPr Me
  loc_98C3FF: VCallAd Control_ID_statusBar
  loc_98C402: FStAdFunc var_BC
  loc_98C405: FLdPr var_BC
  loc_98C408: LateIdSt
  loc_98C40D: FFreeAd var_88 = ""
  loc_98C414: FFreeVar var_98 = ""
  loc_98C41B: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() '995770
  'Data Table: 497DF4
  loc_995710: LitI2_Byte 0
  loc_995712: FLdPr Me
  loc_995715: MemStI2 bGenerado
  loc_995718: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_99571D: ImpAdLdI2 MemVar_C3D064
  loc_995720: CStrUI1
  loc_995722: FStStrNoPop var_88
  loc_995725: FLdPr Me
  loc_995728: VCallAd Control_ID_cboPeriodo
  loc_99572B: FStAdFunc var_8C
  loc_99572E: FLdPr var_8C
  loc_995731: Me.Text = from_stack_1
  loc_995736: FFree1Str var_88
  loc_995739: FFree1Ad var_8C
  loc_99573C: LitI4 1
  loc_995741: CI2I4
  loc_995742: FLdPr Me
  loc_995745: VCallAd Control_ID_MarcaTodosChk
  loc_995748: FStAdFunc var_8C
  loc_99574B: FLdPr var_8C
  loc_99574E: Me.Value = from_stack_1
  loc_995753: FFree1Ad var_8C
  loc_995756: Call HabilitarCriterio()
  loc_99575B: ILdRf Me
  loc_99575E: CastAd
  loc_995761: FStAdFunc var_8C
  loc_995764: FLdRfVar var_8C
  loc_995767: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_99576C: FFree1Ad var_8C
  loc_99576F: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '965E94
  'Data Table: 497DF4
  loc_965E7C: ILdRf Me
  loc_965E7F: CastAd
  loc_965E82: FStAdFunc var_88
  loc_965E85: FLdRfVar var_88
  loc_965E88: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_965E8D: FFree1Ad var_88
  loc_965E90: ExitProcHresult
  loc_965E91: ImpAdLdRf MemVar_0
End Sub

Private Sub CodiUsuaList_ItemCheck(Item As Integer) '9C3250
  'Data Table: 497DF4
  loc_9C3178: FLdPr Me
  loc_9C317B: MemLdI2 global_100
  loc_9C317E: BranchF loc_9C3182
  loc_9C3181: ExitProcHresult
  loc_9C3182: LitI2_Byte &HFF
  loc_9C3184: FLdPr Me
  loc_9C3187: MemStI2 global_102
  loc_9C318A: FLdRfVar var_8A
  loc_9C318D: FLdPr Me
  loc_9C3190: VCallAd Control_ID_CodiUsuaList
  loc_9C3193: FStAdFunc var_88
  loc_9C3196: FLdPr var_88
  loc_9C3199:  = Me.SelCount
  loc_9C319E: FLdI2 var_8A
  loc_9C31A1: FStI2 var_8C
  loc_9C31A4: FFree1Ad var_88
  loc_9C31A7: FLdI2 var_8C
  loc_9C31AA: LitI2_Byte 0
  loc_9C31AC: EqI2
  loc_9C31AD: BranchF loc_9C31CD
  loc_9C31B0: LitI4 0
  loc_9C31B5: CI2I4
  loc_9C31B6: FLdPr Me
  loc_9C31B9: VCallAd Control_ID_MarcaTodosChk
  loc_9C31BC: FStAdFunc var_88
  loc_9C31BF: FLdPr var_88
  loc_9C31C2: Me.Value = from_stack_1
  loc_9C31C7: FFree1Ad var_88
  loc_9C31CA: Branch loc_9C3246
  loc_9C31CD: FLdI2 var_8C
  loc_9C31D0: FLdRfVar var_8A
  loc_9C31D3: FLdPr Me
  loc_9C31D6: VCallAd Control_ID_CodiUsuaList
  loc_9C31D9: FStAdFunc var_88
  loc_9C31DC: FLdPr var_88
  loc_9C31DF:  = Me.ListCount
  loc_9C31E4: FLdI2 var_8A
  loc_9C31E7: LtI2
  loc_9C31E8: FFree1Ad var_88
  loc_9C31EB: BranchF loc_9C320B
  loc_9C31EE: LitI4 2
  loc_9C31F3: CI2I4
  loc_9C31F4: FLdPr Me
  loc_9C31F7: VCallAd Control_ID_MarcaTodosChk
  loc_9C31FA: FStAdFunc var_88
  loc_9C31FD: FLdPr var_88
  loc_9C3200: Me.Value = from_stack_1
  loc_9C3205: FFree1Ad var_88
  loc_9C3208: Branch loc_9C3246
  loc_9C320B: FLdI2 var_8C
  loc_9C320E: FLdRfVar var_8A
  loc_9C3211: FLdPr Me
  loc_9C3214: VCallAd Control_ID_CodiUsuaList
  loc_9C3217: FStAdFunc var_88
  loc_9C321A: FLdPr var_88
  loc_9C321D:  = Me.ListCount
  loc_9C3222: FLdI2 var_8A
  loc_9C3225: EqI2
  loc_9C3226: FFree1Ad var_88
  loc_9C3229: BranchF loc_9C3246
  loc_9C322C: LitI4 1
  loc_9C3231: CI2I4
  loc_9C3232: FLdPr Me
  loc_9C3235: VCallAd Control_ID_MarcaTodosChk
  loc_9C3238: FStAdFunc var_88
  loc_9C323B: FLdPr var_88
  loc_9C323E: Me.Value = from_stack_1
  loc_9C3243: FFree1Ad var_88
  loc_9C3246: LitI2_Byte 0
  loc_9C3248: FLdPr Me
  loc_9C324B: MemStI2 global_102
  loc_9C324E: ExitProcHresult
End Sub

Private Sub CodiUsuaList_Validate(Cancel As Boolean) '9B6F38
  'Data Table: 497DF4
  loc_9B6E8C: FLdPrThis
  loc_9B6E8D: VCallAd Control_ID_CodiUsuaList
  loc_9B6E90: FStAdFunc var_8C
  loc_9B6E93: LitI2_Byte 0
  loc_9B6E95: FStI2 var_88
  loc_9B6E98: LitI2_Byte 0
  loc_9B6E9A: FLdRfVar var_86
  loc_9B6E9D: FLdRfVar var_8E
  loc_9B6EA0: FLdPr var_8C
  loc_9B6EA3:  = Me.ListCount
  loc_9B6EA8: FLdI2 var_8E
  loc_9B6EAB: LitI2_Byte 1
  loc_9B6EAD: SubI2
  loc_9B6EAE: ForI2 var_92
  loc_9B6EB4: FLdRfVar var_8E
  loc_9B6EB7: FLdI2 var_86
  loc_9B6EBA: FLdPr var_8C
  loc_9B6EBD:  = Me.Selected
  loc_9B6EC2: FLdI2 var_8E
  loc_9B6EC5: BranchF loc_9B6ECD
  loc_9B6EC8: LitI2_Byte &HFF
  loc_9B6ECA: FStI2 var_88
  loc_9B6ECD: FLdRfVar var_86
  loc_9B6ED0: NextI2 var_92, loc_9B6EB4
  loc_9B6ED5: LitNothing
  loc_9B6ED7: FStAd var_8C 
  loc_9B6EDB: FLdI2 var_88
  loc_9B6EDE: NotI4
  loc_9B6EDF: BranchF loc_9B6EEF
  loc_9B6EE2: LitStr "Debe seleccionar por lo menos un usuario"
  loc_9B6EE5: FLdPr Me
  loc_9B6EE8: MemStStrCopy
  loc_9B6EEC: Branch loc_9B6EF9
  loc_9B6EEF: LitStr vbNullString
  loc_9B6EF2: FLdPr Me
  loc_9B6EF5: MemStStrCopy
  loc_9B6EF9: FLdPr Me
  loc_9B6EFC: VCallAd Control_ID_CodiUsuaList
  loc_9B6EFF: FStAdFunc var_A4
  loc_9B6F02: LitNothing
  loc_9B6F04: CastAd
  loc_9B6F07: FStAdFunc var_A0
  loc_9B6F0A: FLdRfVar var_A0
  loc_9B6F0D: FLdZeroAd var_A4
  loc_9B6F10: FStAdFuncNoPop
  loc_9B6F13: CastAd
  loc_9B6F16: FStAdFunc var_9C
  loc_9B6F19: FLdRfVar var_9C
  loc_9B6F1C: FLdPr Me
  loc_9B6F1F: MemLdRfVar from_stack_1.global_104
  loc_9B6F22: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9B6F27: IStI2 Cancel
  loc_9B6F2A: FFreeAd var_98 = "": var_9C = "": var_A0 = ""
  loc_9B6F35: ExitProcHresult
  loc_9B6F36: ExitProcR8
End Sub

Private Sub DesdeCmd_Click() '98428C
  'Data Table: 497DF4
  loc_984250: LitVar_Missing var_A4
  loc_984253: PopAdLdVar
  loc_984254: LitVarI4
  loc_98425C: PopAdLdVar
  loc_98425D: ImpAdLdRf MemVar_C3D9A8
  loc_984260: NewIfNullPr frmCalendario
  loc_984263: frmCalendario.Show from_stack_1, from_stack_2
  loc_984268: ImpAdLdRf MemVar_C3D038
  loc_98426B: CDargRef
  loc_98426F: FLdPr Me
  loc_984272: VCallAd Control_ID_DesdeMsk
  loc_984275: FStAdFunc var_A8
  loc_984278: FLdPr var_A8
  loc_98427B: LateIdSt
  loc_984280: FFree1Ad var_A8
  loc_984283: ImpAdCallFPR4 Proc_261_52_966EEC()
  loc_984288: ExitProcHresult
  loc_984289: FStStr arg_1E
End Sub

Private Sub HastaCmd_Click() '9842FC
  'Data Table: 497DF4
  loc_9842C0: LitVar_Missing var_A4
  loc_9842C3: PopAdLdVar
  loc_9842C4: LitVarI4
  loc_9842CC: PopAdLdVar
  loc_9842CD: ImpAdLdRf MemVar_C3D9A8
  loc_9842D0: NewIfNullPr frmCalendario
  loc_9842D3: frmCalendario.Show from_stack_1, from_stack_2
  loc_9842D8: ImpAdLdRf MemVar_C3D038
  loc_9842DB: CDargRef
  loc_9842DF: FLdPr Me
  loc_9842E2: VCallAd Control_ID_HastaMsk
  loc_9842E5: FStAdFunc var_A8
  loc_9842E8: FLdPr var_A8
  loc_9842EB: LateIdSt
  loc_9842F0: FFree1Ad var_A8
  loc_9842F3: ImpAdCallFPR4 Proc_261_52_966EEC()
  loc_9842F8: ExitProcHresult
  loc_9842F9: FLdFPR4 arg_1F
End Sub

Private Sub MarcaTodosChk_Click() '9AA45C
  'Data Table: 497DF4
  loc_9AA3C0: FLdPr Me
  loc_9AA3C3: MemLdI2 global_102
  loc_9AA3C6: BranchF loc_9AA3CA
  loc_9AA3C9: ExitProcHresult
  loc_9AA3CA: FLdRfVar var_92
  loc_9AA3CD: FLdPr Me
  loc_9AA3D0: VCallAd Control_ID_MarcaTodosChk
  loc_9AA3D3: FStAdFunc var_90
  loc_9AA3D6: FLdPr var_90
  loc_9AA3D9:  = Me.Value
  loc_9AA3DE: FLdI2 var_92
  loc_9AA3E1: CI4UI1
  loc_9AA3E2: LitI4 1
  loc_9AA3E7: EqI4
  loc_9AA3E8: FStI2 var_8A
  loc_9AA3EB: FFree1Ad var_90
  loc_9AA3EE: FLdPr Me
  loc_9AA3F1: VCallAd Control_ID_CodiUsuaList
  loc_9AA3F4: FStAdFunc var_98
  loc_9AA3F7: FLdRfVar var_92
  loc_9AA3FA: FLdPr var_98
  loc_9AA3FD:  = Me.ListIndex
  loc_9AA402: FLdI2 var_92
  loc_9AA405: FStI2 var_88
  loc_9AA408: LitI2_Byte &HFF
  loc_9AA40A: FLdPr Me
  loc_9AA40D: MemStI2 global_100
  loc_9AA410: LitI2_Byte 0
  loc_9AA412: FLdRfVar var_86
  loc_9AA415: FLdRfVar var_92
  loc_9AA418: FLdPr var_98
  loc_9AA41B:  = Me.ListCount
  loc_9AA420: FLdI2 var_92
  loc_9AA423: LitI2_Byte 1
  loc_9AA425: SubI2
  loc_9AA426: ForI2 var_9C
  loc_9AA42C: FLdI2 var_8A
  loc_9AA42F: FLdI2 var_86
  loc_9AA432: FLdPr var_98
  loc_9AA435: Me.Selected = from_stack_1
  loc_9AA43A: FLdRfVar var_86
  loc_9AA43D: NextI2 var_9C, loc_9AA42C
  loc_9AA442: LitI2_Byte 0
  loc_9AA444: FLdPr Me
  loc_9AA447: MemStI2 global_100
  loc_9AA44A: FLdI2 var_88
  loc_9AA44D: FLdPr var_98
  loc_9AA450: Me.ListIndex = from_stack_1
  loc_9AA455: LitNothing
  loc_9AA457: FStAd var_98 
  loc_9AA45B: ExitProcHresult
End Sub

Public Function bGeneradoGet() '498F70
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '498F7F
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() '9B5A88
  'Data Table: 497DF4
  loc_9B59F4: LitI4 0
  loc_9B59F9: LitI4 6
  loc_9B59FE: FLdRfVar var_88
  loc_9B5A01: Redim
  loc_9B5A0B: FLdPr Me
  loc_9B5A0E: VCallAd Control_ID_cboPeriodo
  loc_9B5A11: CVarAd
  loc_9B5A15: ParmAry1St
  loc_9B5A1B: FLdPr Me
  loc_9B5A1E: VCallAd Control_ID_DesdeMsk
  loc_9B5A21: CVarAd
  loc_9B5A25: ParmAry1St
  loc_9B5A2B: FLdPr Me
  loc_9B5A2E: VCallAd Control_ID_DesdeCmd
  loc_9B5A31: CVarAd
  loc_9B5A35: ParmAry1St
  loc_9B5A3B: FLdPr Me
  loc_9B5A3E: VCallAd Control_ID_HastaMsk
  loc_9B5A41: CVarAd
  loc_9B5A45: ParmAry1St
  loc_9B5A4B: FLdPr Me
  loc_9B5A4E: VCallAd Control_ID_HastaCmd
  loc_9B5A51: CVarAd
  loc_9B5A55: ParmAry1St
  loc_9B5A5B: FLdPr Me
  loc_9B5A5E: VCallAd Control_ID_CodiUsuaList
  loc_9B5A61: CVarAd
  loc_9B5A65: ParmAry1St
  loc_9B5A6B: FLdPr Me
  loc_9B5A6E: VCallAd Control_ID_MarcaTodosChk
  loc_9B5A71: CVarAd
  loc_9B5A75: ParmAry1St
  loc_9B5A7B: FLdRfVar var_88
  loc_9B5A7E: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9B5A83: FLdRfVar var_88
  loc_9B5A86: Erase
  loc_9B5A87: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'B024D8
  'Data Table: 497DF4
  loc_B01D84: FLdPr Me
  loc_B01D87: MemLdI2 bGenerado
  loc_B01D8A: BranchF loc_B01D8E
  loc_B01D8D: ExitProcHresult
  loc_B01D8E: LitVarStr var_9C, "Generando reporte..."
  loc_B01D93: PopAdLdVar
  loc_B01D94: FLdPr Me
  loc_B01D97: VCallAd Control_ID_statusBar
  loc_B01D9A: FStAdFunc var_B0
  loc_B01D9D: FLdPr var_B0
  loc_B01DA0: LateIdSt
  loc_B01DA5: FFree1Ad var_B0
  loc_B01DA8: LitI4 &HB
  loc_B01DAD: CI2I4
  loc_B01DAE: FLdPr Me
  loc_B01DB1: Me.MousePointer = from_stack_1
  loc_B01DB6: LitI2_Byte 0
  loc_B01DB8: PopTmpLdAd2 var_B2
  loc_B01DBB: from_stack_2v = DesdeMsk_UnknownEvent_8(from_stack_1v)
  loc_B01DC0: FLdPr Me
  loc_B01DC3: MemLdStr global_104
  loc_B01DC6: LitStr vbNullString
  loc_B01DC9: NeStr
  loc_B01DCB: BranchF loc_B01DD1
  loc_B01DCE: Branch loc_B024AC
  loc_B01DD1: LitI2_Byte 0
  loc_B01DD3: PopTmpLdAd2 var_B2
  loc_B01DD6: from_stack_2v = HastaMsk_UnknownEvent_8(from_stack_1v)
  loc_B01DDB: FLdPr Me
  loc_B01DDE: MemLdStr global_104
  loc_B01DE1: LitStr vbNullString
  loc_B01DE4: NeStr
  loc_B01DE6: BranchF loc_B01DEC
  loc_B01DE9: Branch loc_B024AC
  loc_B01DEC: LitI2_Byte 0
  loc_B01DEE: PopTmpLdAd2 var_B2
  loc_B01DF1: Call CodiUsuaList_Validate(from_stack_1v)
  loc_B01DF6: FLdPr Me
  loc_B01DF9: MemLdStr global_104
  loc_B01DFC: LitStr vbNullString
  loc_B01DFF: NeStr
  loc_B01E01: BranchF loc_B01E07
  loc_B01E04: Branch loc_B024AC
  loc_B01E07: FLdPr Me
  loc_B01E0A: VCallAd Control_ID_CodiUsuaList
  loc_B01E0D: FStAdFunc var_B8
  loc_B01E10: LitI2_Byte 0
  loc_B01E12: FLdRfVar var_8A
  loc_B01E15: FLdRfVar var_B2
  loc_B01E18: FLdPr var_B8
  loc_B01E1B:  = Me.ListCount
  loc_B01E20: FLdI2 var_B2
  loc_B01E23: LitI2_Byte 1
  loc_B01E25: SubI2
  loc_B01E26: ForI2 var_BC
  loc_B01E2C: FLdRfVar var_B2
  loc_B01E2F: FLdI2 var_8A
  loc_B01E32: FLdPr var_B8
  loc_B01E35:  = Me.Selected
  loc_B01E3A: FLdI2 var_B2
  loc_B01E3D: BranchF loc_B01EBA
  loc_B01E40: ILdRf var_88
  loc_B01E43: CVarStr var_10C
  loc_B01E46: LitVarStr var_DC, vbNullString
  loc_B01E4B: FStVarCopyObj var_EC
  loc_B01E4E: FLdRfVar var_EC
  loc_B01E51: LitVarStr var_AC, " OR"
  loc_B01E56: FStVarCopyObj var_CC
  loc_B01E59: FLdRfVar var_CC
  loc_B01E5C: ILdRf var_88
  loc_B01E5F: LitStr vbNullString
  loc_B01E62: NeStr
  loc_B01E64: CVarBoolI2 var_9C
  loc_B01E68: FLdRfVar var_FC
  loc_B01E6B: ImpAdCallFPR4  = IIf(, , )
  loc_B01E70: FLdRfVar var_FC
  loc_B01E73: ConcatVar var_11C
  loc_B01E77: LitVarStr var_12C, " CodiUsua = '"
  loc_B01E7C: ConcatVar var_13C
  loc_B01E80: FLdRfVar var_140
  loc_B01E83: FLdI2 var_8A
  loc_B01E86: FLdPr var_B8
  loc_B01E89: from_stack_2 = Me.List(from_stack_1)
  loc_B01E8E: FLdZeroAd var_140
  loc_B01E91: CVarStr var_150
  loc_B01E94: ConcatVar var_160
  loc_B01E98: LitVarStr var_170, "'"
  loc_B01E9D: ConcatVar var_180
  loc_B01EA1: CStrVarTmp
  loc_B01EA2: FStStr var_88
  loc_B01EA5: FFreeVar var_9C = "": var_CC = "": var_EC = "": var_FC = "": var_11C = "": var_13C = "": var_150 = "": var_160 = ""
  loc_B01EBA: FLdRfVar var_8A
  loc_B01EBD: NextI2 var_BC, loc_B01E2C
  loc_B01EC2: ILdRf var_88
  loc_B01EC5: LitStr vbNullString
  loc_B01EC8: NeStr
  loc_B01ECA: BranchF loc_B01EE1
  loc_B01ECD: LitStr " HAVING ("
  loc_B01ED0: ILdRf var_88
  loc_B01ED3: ConcatStr
  loc_B01ED4: FStStrNoPop var_140
  loc_B01ED7: LitStr ")"
  loc_B01EDA: ConcatStr
  loc_B01EDB: FStStr var_88
  loc_B01EDE: FFree1Str var_140
  loc_B01EE1: LitNothing
  loc_B01EE3: FStAd var_B8 
  loc_B01EE7: FLdPr Me
  loc_B01EEA: MemLdRfVar from_stack_1.global_56
  loc_B01EED: NewIfNullAd
  loc_B01EF0: FStAd var_184 
  loc_B01EF4: FLdPr Me
  loc_B01EF7: VCallAd Control_ID_DesdeMsk
  loc_B01EFA: FStAdFunc var_198
  loc_B01EFD: FLdPr var_198
  loc_B01F00: LateIdLdVar var_CC DispID_15 0
  loc_B01F07: PopAd
  loc_B01F09: FLdPr Me
  loc_B01F0C: VCallAd Control_ID_HastaMsk
  loc_B01F0F: FStAdFunc var_1A8
  loc_B01F12: FLdPr var_1A8
  loc_B01F15: LateIdLdVar var_11C DispID_15 0
  loc_B01F1C: PopAd
  loc_B01F1E: LitStr "SELECT FechNope, n.CodiNope, n.ExpeImpu, IF(n.ModiUsua <> '', n.ModiUsua, n.AltaUsua) CodiUsua, CodiOrco, FechOrco, Datediff(FechOrco,FechNope) AS Dias"
  loc_B01F21: LitStr " FROM notapedido AS n"
  loc_B01F24: ConcatStr
  loc_B01F25: FStStrNoPop var_140
  loc_B01F28: LitStr " LEFT JOIN ordencompra AS o ON o.PeriInfo = n.PeriInfo AND o.CodiNope = n.CodiNope"
  loc_B01F2B: ConcatStr
  loc_B01F2C: FStStrNoPop var_188
  loc_B01F2F: LitStr " WHERE n.PeriInfo = "
  loc_B01F32: ConcatStr
  loc_B01F33: FStStrNoPop var_190
  loc_B01F36: FLdRfVar var_18C
  loc_B01F39: FLdPr Me
  loc_B01F3C: VCallAd Control_ID_cboPeriodo
  loc_B01F3F: FStAdFunc var_B0
  loc_B01F42: FLdPr var_B0
  loc_B01F45:  = Me.Text
  loc_B01F4A: ILdRf var_18C
  loc_B01F4D: ConcatStr
  loc_B01F4E: FStStrNoPop var_194
  loc_B01F51: LitStr " AND FechNope BETWEEN '"
  loc_B01F54: ConcatStr
  loc_B01F55: FStStrNoPop var_19C
  loc_B01F58: LitI4 1
  loc_B01F5D: LitI4 1
  loc_B01F62: LitVarStr var_9C, "yyyy-mm-dd"
  loc_B01F67: FStVarCopyObj var_FC
  loc_B01F6A: FLdRfVar var_FC
  loc_B01F6D: FLdRfVar var_CC
  loc_B01F70: CStrVarTmp
  loc_B01F71: CVarStr var_EC
  loc_B01F74: ImpAdCallI2 Format$(, )
  loc_B01F79: FStStrNoPop var_1A0
  loc_B01F7C: ConcatStr
  loc_B01F7D: FStStrNoPop var_1A4
  loc_B01F80: LitStr "' AND '"
  loc_B01F83: ConcatStr
  loc_B01F84: FStStrNoPop var_1AC
  loc_B01F87: LitI4 1
  loc_B01F8C: LitI4 1
  loc_B01F91: LitVarStr var_AC, "yyyy-mm-dd"
  loc_B01F96: FStVarCopyObj var_150
  loc_B01F99: FLdRfVar var_150
  loc_B01F9C: FLdRfVar var_11C
  loc_B01F9F: CStrVarTmp
  loc_B01FA0: CVarStr var_13C
  loc_B01FA3: ImpAdCallI2 Format$(, )
  loc_B01FA8: FStStrNoPop var_1B0
  loc_B01FAB: ConcatStr
  loc_B01FAC: FStStrNoPop var_1B4
  loc_B01FAF: LitStr "'"
  loc_B01FB2: ConcatStr
  loc_B01FB3: FStStrNoPop var_1B8
  loc_B01FB6: LitStr " AND CodiOrco IS NOT NULL AND FeanOrco IS NULL "
  loc_B01FB9: ConcatStr
  loc_B01FBA: FStStrNoPop var_1BC
  loc_B01FBD: ILdRf var_88
  loc_B01FC0: ConcatStr
  loc_B01FC1: FStStrNoPop var_1C0
  loc_B01FC4: LitStr " ORDER BY FechNope, n.CodiNope"
  loc_B01FC7: ConcatStr
  loc_B01FC8: FStStrNoPop var_1C4
  loc_B01FCB: FLdPr var_184
  loc_B01FCE: Call clsnotapedido.RedefineRS(from_stack_1v)
  loc_B01FD3: FFreeStr var_140 = "": var_188 = "": var_190 = "": var_18C = "": var_194 = "": var_19C = "": var_1A0 = "": var_1A4 = "": var_1AC = "": var_1B0 = "": var_1B4 = "": var_1B8 = "": var_1BC = "": var_1C0 = ""
  loc_B01FF4: FFreeAd var_B0 = "": var_198 = ""
  loc_B01FFD: FFreeVar var_CC = "": var_EC = "": var_FC = "": var_11C = "": var_13C = ""
  loc_B0200C: FLdRfVar var_1C8
  loc_B0200F: FLdPr var_184
  loc_B02012: from_stack_1 = clsnotapedido.RecordCount
  loc_B02017: ILdRf var_1C8
  loc_B0201A: LitI4 0
  loc_B0201F: EqI4
  loc_B02020: BranchF loc_B02033
  loc_B02023: LitI4 0
  loc_B02028: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_B0202B: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B02030: Branch loc_B024AC
  loc_B02033: LitI2_Byte 0
  loc_B02035: CStrUI1
  loc_B02037: FStStrNoPop var_140
  loc_B0203A: FLdPr Me
  loc_B0203D: MemStStrCopy
  loc_B02041: FFree1Str var_140
  loc_B02044: LitI2_Byte 0
  loc_B02046: CStrUI1
  loc_B02048: FStStrNoPop var_140
  loc_B0204B: FLdPr Me
  loc_B0204E: MemStStrCopy
  loc_B02052: FFree1Str var_140
  loc_B02055: FLdRfVar var_1C8
  loc_B02058: FLdPr var_184
  loc_B0205B: from_stack_1 = clsnotapedido.RecordCount
  loc_B02060: ILdRf var_1C8
  loc_B02063: CStrI4
  loc_B02065: FStStrNoPop var_140
  loc_B02068: FLdPr Me
  loc_B0206B: MemStStrCopy
  loc_B0206F: FFree1Str var_140
  loc_B02072: LitI4 1
  loc_B02077: FLdRfVar var_1C8
  loc_B0207A: FLdPr var_184
  loc_B0207D: from_stack_1 = clsnotapedido.RecordCount
  loc_B02082: ILdRf var_1C8
  loc_B02085: FLdPr Me
  loc_B02088: MemLdRfVar from_stack_1.global_80
  loc_B0208B: Redim
  loc_B02095: FLdPr var_184
  loc_B02098: Call clsnotapedido.MoveFirst()
  loc_B0209D: LitI4 1
  loc_B020A2: FLdPr Me
  loc_B020A5: MemLdRfVar from_stack_1.global_96
  loc_B020A8: FLdPr Me
  loc_B020AB: MemLdStr global_80
  loc_B020AE: LitI2_Byte 1
  loc_B020B0: FnUBound
  loc_B020B2: ForI4 var_1D0
  loc_B020B8: FLdRfVar var_1A8
  loc_B020BB: LitVarStr var_9C, "FechNope"
  loc_B020C0: PopAdLdVar
  loc_B020C1: FLdRfVar var_198
  loc_B020C4: FLdRfVar var_B0
  loc_B020C7: FLdPr var_184
  loc_B020CA: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_B020CF: FLdPr var_B0
  loc_B020D2:  = Me.Fields
  loc_B020D7: FLdPr var_198
  loc_B020DA: from_stack_2 = Me.Item(from_stack_1)
  loc_B020DF: LitI2_Byte 0
  loc_B020E1: LitVar_Missing var_EC
  loc_B020E4: LitI2_Byte 0
  loc_B020E6: FLdZeroAd var_1A8
  loc_B020E9: CVarAd
  loc_B020ED: PopAdLdVar
  loc_B020EE: FLdPr Me
  loc_B020F1: MemLdStr global_96
  loc_B020F4: FLdPr Me
  loc_B020F7: MemLdStr global_80
  loc_B020FA: AryLock
  loc_B020FD: Ary1LdPr
  loc_B020FE: MemLdRfVar from_stack_1.global_0
  loc_B02101: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B02106: AryUnlock
  loc_B02109: FFreeAd var_B0 = ""
  loc_B02110: FFreeVar var_CC = ""
  loc_B02117: FLdRfVar var_1A8
  loc_B0211A: LitVarStr var_9C, "CodiNope"
  loc_B0211F: PopAdLdVar
  loc_B02120: FLdRfVar var_198
  loc_B02123: FLdRfVar var_B0
  loc_B02126: FLdPr var_184
  loc_B02129: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_B0212E: FLdPr var_B0
  loc_B02131:  = Me.Fields
  loc_B02136: FLdPr var_198
  loc_B02139: from_stack_2 = Me.Item(from_stack_1)
  loc_B0213E: LitI2_Byte 0
  loc_B02140: LitVar_Missing var_EC
  loc_B02143: LitI2_Byte 0
  loc_B02145: FLdZeroAd var_1A8
  loc_B02148: CVarAd
  loc_B0214C: PopAdLdVar
  loc_B0214D: FLdPr Me
  loc_B02150: MemLdStr global_96
  loc_B02153: FLdPr Me
  loc_B02156: MemLdStr global_80
  loc_B02159: AryLock
  loc_B0215C: Ary1LdPr
  loc_B0215D: MemLdRfVar from_stack_1.global_4
  loc_B02160: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B02165: AryUnlock
  loc_B02168: FFreeAd var_B0 = ""
  loc_B0216F: FFreeVar var_CC = ""
  loc_B02176: FLdRfVar var_1A8
  loc_B02179: LitVarStr var_9C, "ExpeImpu"
  loc_B0217E: PopAdLdVar
  loc_B0217F: FLdRfVar var_198
  loc_B02182: FLdRfVar var_B0
  loc_B02185: FLdPr var_184
  loc_B02188: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_B0218D: FLdPr var_B0
  loc_B02190:  = Me.Fields
  loc_B02195: FLdPr var_198
  loc_B02198: from_stack_2 = Me.Item(from_stack_1)
  loc_B0219D: LitI2_Byte 0
  loc_B0219F: LitVar_Missing var_EC
  loc_B021A2: LitI2_Byte 0
  loc_B021A4: FLdZeroAd var_1A8
  loc_B021A7: CVarAd
  loc_B021AB: PopAdLdVar
  loc_B021AC: FLdPr Me
  loc_B021AF: MemLdStr global_96
  loc_B021B2: FLdPr Me
  loc_B021B5: MemLdStr global_80
  loc_B021B8: AryLock
  loc_B021BB: Ary1LdPr
  loc_B021BC: MemLdRfVar from_stack_1.global_8
  loc_B021BF: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B021C4: AryUnlock
  loc_B021C7: FFreeAd var_B0 = ""
  loc_B021CE: FFreeVar var_CC = ""
  loc_B021D5: FLdRfVar var_1A8
  loc_B021D8: LitVarStr var_9C, "CodiUsua"
  loc_B021DD: PopAdLdVar
  loc_B021DE: FLdRfVar var_198
  loc_B021E1: FLdRfVar var_B0
  loc_B021E4: FLdPr var_184
  loc_B021E7: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_B021EC: FLdPr var_B0
  loc_B021EF:  = Me.Fields
  loc_B021F4: FLdPr var_198
  loc_B021F7: from_stack_2 = Me.Item(from_stack_1)
  loc_B021FC: LitI2_Byte 0
  loc_B021FE: LitVar_Missing var_EC
  loc_B02201: LitI2_Byte 0
  loc_B02203: FLdZeroAd var_1A8
  loc_B02206: CVarAd
  loc_B0220A: PopAdLdVar
  loc_B0220B: FLdPr Me
  loc_B0220E: MemLdStr global_96
  loc_B02211: FLdPr Me
  loc_B02214: MemLdStr global_80
  loc_B02217: AryLock
  loc_B0221A: Ary1LdPr
  loc_B0221B: MemLdRfVar from_stack_1.global_12
  loc_B0221E: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B02223: AryUnlock
  loc_B02226: FFreeAd var_B0 = ""
  loc_B0222D: FFreeVar var_CC = ""
  loc_B02234: FLdRfVar var_1A8
  loc_B02237: LitVarStr var_9C, "CodiOrco"
  loc_B0223C: PopAdLdVar
  loc_B0223D: FLdRfVar var_198
  loc_B02240: FLdRfVar var_B0
  loc_B02243: FLdPr var_184
  loc_B02246: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_B0224B: FLdPr var_B0
  loc_B0224E:  = Me.Fields
  loc_B02253: FLdPr var_198
  loc_B02256: from_stack_2 = Me.Item(from_stack_1)
  loc_B0225B: LitI2_Byte 0
  loc_B0225D: LitVar_Missing var_EC
  loc_B02260: LitI2_Byte 0
  loc_B02262: FLdZeroAd var_1A8
  loc_B02265: CVarAd
  loc_B02269: PopAdLdVar
  loc_B0226A: FLdPr Me
  loc_B0226D: MemLdStr global_96
  loc_B02270: FLdPr Me
  loc_B02273: MemLdStr global_80
  loc_B02276: AryLock
  loc_B02279: Ary1LdPr
  loc_B0227A: MemLdRfVar from_stack_1.global_16
  loc_B0227D: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B02282: AryUnlock
  loc_B02285: FFreeAd var_B0 = ""
  loc_B0228C: FFreeVar var_CC = ""
  loc_B02293: FLdRfVar var_1A8
  loc_B02296: LitVarStr var_9C, "FechOrco"
  loc_B0229B: PopAdLdVar
  loc_B0229C: FLdRfVar var_198
  loc_B0229F: FLdRfVar var_B0
  loc_B022A2: FLdPr var_184
  loc_B022A5: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_B022AA: FLdPr var_B0
  loc_B022AD:  = Me.Fields
  loc_B022B2: FLdPr var_198
  loc_B022B5: from_stack_2 = Me.Item(from_stack_1)
  loc_B022BA: LitI2_Byte 0
  loc_B022BC: LitVar_Missing var_EC
  loc_B022BF: LitI2_Byte 0
  loc_B022C1: FLdZeroAd var_1A8
  loc_B022C4: CVarAd
  loc_B022C8: PopAdLdVar
  loc_B022C9: FLdPr Me
  loc_B022CC: MemLdStr global_96
  loc_B022CF: FLdPr Me
  loc_B022D2: MemLdStr global_80
  loc_B022D5: AryLock
  loc_B022D8: Ary1LdPr
  loc_B022D9: MemLdRfVar from_stack_1.global_20
  loc_B022DC: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B022E1: AryUnlock
  loc_B022E4: FFreeAd var_B0 = ""
  loc_B022EB: FFreeVar var_CC = ""
  loc_B022F2: FLdRfVar var_1A8
  loc_B022F5: LitVarStr var_9C, "Dias"
  loc_B022FA: PopAdLdVar
  loc_B022FB: FLdRfVar var_198
  loc_B022FE: FLdRfVar var_B0
  loc_B02301: FLdPr var_184
  loc_B02304: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_B02309: FLdPr var_B0
  loc_B0230C:  = Me.Fields
  loc_B02311: FLdPr var_198
  loc_B02314: from_stack_2 = Me.Item(from_stack_1)
  loc_B02319: LitI2_Byte 0
  loc_B0231B: LitVar_Missing var_EC
  loc_B0231E: LitI2_Byte 0
  loc_B02320: FLdZeroAd var_1A8
  loc_B02323: CVarAd
  loc_B02327: PopAdLdVar
  loc_B02328: FLdPr Me
  loc_B0232B: MemLdStr global_96
  loc_B0232E: FLdPr Me
  loc_B02331: MemLdStr global_80
  loc_B02334: AryLock
  loc_B02337: Ary1LdPr
  loc_B02338: MemLdRfVar from_stack_1.global_24
  loc_B0233B: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B02340: AryUnlock
  loc_B02343: FFreeAd var_B0 = ""
  loc_B0234A: FFreeVar var_CC = ""
  loc_B02351: FLdRfVar var_CC
  loc_B02354: FLdRfVar var_1A8
  loc_B02357: LitVarStr var_9C, "Dias"
  loc_B0235C: PopAdLdVar
  loc_B0235D: FLdRfVar var_198
  loc_B02360: FLdRfVar var_B0
  loc_B02363: FLdPr var_184
  loc_B02366: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_B0236B: FLdPr var_B0
  loc_B0236E:  = Me.Fields
  loc_B02373: FLdPr var_198
  loc_B02376: from_stack_2 = Me.Item(from_stack_1)
  loc_B0237B: FLdPr var_1A8
  loc_B0237E:  = Me.Value
  loc_B02383: FLdRfVar var_CC
  loc_B02386: LitVarI2 var_AC, 21
  loc_B0238B: HardType
  loc_B0238C: GtVar var_EC
  loc_B02390: NotVar var_FC
  loc_B02394: CBoolVar
  loc_B02396: FLdPr Me
  loc_B02399: MemLdStr global_96
  loc_B0239C: FLdPr Me
  loc_B0239F: MemLdStr global_80
  loc_B023A2: Ary1LdPr
  loc_B023A3: MemStI2 global_28
  loc_B023A6: FFreeAd var_B0 = "": var_198 = ""
  loc_B023AF: FFree1Var var_CC = ""
  loc_B023B2: FLdPr Me
  loc_B023B5: MemLdStr global_96
  loc_B023B8: FLdPr Me
  loc_B023BB: MemLdStr global_80
  loc_B023BE: Ary1LdPr
  loc_B023BF: MemLdI2 global_28
  loc_B023C2: BranchF loc_B023E3
  loc_B023C5: FLdPr Me
  loc_B023C8: MemLdStr global_84
  loc_B023CB: CR8Str
  loc_B023CD: LitI2_Byte 1
  loc_B023CF: CR8I2
  loc_B023D0: AddR8
  loc_B023D1: CStrR8
  loc_B023D3: FStStrNoPop var_140
  loc_B023D6: FLdPr Me
  loc_B023D9: MemStStrCopy
  loc_B023DD: FFree1Str var_140
  loc_B023E0: Branch loc_B023FE
  loc_B023E3: FLdPr Me
  loc_B023E6: MemLdStr global_88
  loc_B023E9: CR8Str
  loc_B023EB: LitI2_Byte 1
  loc_B023ED: CR8I2
  loc_B023EE: AddR8
  loc_B023EF: CStrR8
  loc_B023F1: FStStrNoPop var_140
  loc_B023F4: FLdPr Me
  loc_B023F7: MemStStrCopy
  loc_B023FB: FFree1Str var_140
  loc_B023FE: FLdPr var_184
  loc_B02401: Call clsnotapedido.MoveSiguiente()
  loc_B02406: FLdPr Me
  loc_B02409: MemLdRfVar from_stack_1.global_96
  loc_B0240C: NextI4 var_1D0, loc_B020B8
  loc_B02411: LitNothing
  loc_B02413: FStAd var_184 
  loc_B02417: FLdPrThis
  loc_B02418: VCallAd Control_ID_Graf1
  loc_B0241B: FStAdFunc var_1D8
  loc_B0241E: LitVarI2 var_9C, 1
  loc_B02423: PopAdLdVar
  loc_B02424: FLdPr var_1D8
  loc_B02427: LateIdSt
  loc_B0242C: FLdPr Me
  loc_B0242F: MemLdRfVar from_stack_1.global_84
  loc_B02432: CDargRef
  loc_B02436: FLdPr var_1D8
  loc_B02439: LateIdSt
  loc_B0243E: LitVarI2 var_9C, 2
  loc_B02443: PopAdLdVar
  loc_B02444: FLdPr var_1D8
  loc_B02447: LateIdSt
  loc_B0244C: FLdPr Me
  loc_B0244F: MemLdRfVar from_stack_1.global_88
  loc_B02452: CDargRef
  loc_B02456: FLdPr var_1D8
  loc_B02459: LateIdSt
  loc_B0245E: FLdPr var_1D8
  loc_B02461: LateIdCall
  loc_B02469: LitNothing
  loc_B0246B: FStAd var_1D8 
  loc_B0246F: FLdPrThis
  loc_B02470: VCallAd Control_ID_Graf1
  loc_B02473: FStAdFunc var_1A8
  loc_B02476: FLdPr Me
  loc_B02479: VCallAd Control_ID_img1
  loc_B0247C: FStAdFunc var_1DC
  loc_B0247F: LitStr "graf1.bmp"
  loc_B02482: FLdZeroAd var_1DC
  loc_B02485: FStAdFunc var_198
  loc_B02488: FLdRfVar var_198
  loc_B0248B: FLdZeroAd var_1A8
  loc_B0248E: FStAdFunc var_B0
  loc_B02491: FLdRfVar var_B0
  loc_B02494: ImpAdCallFPR4 Proc_261_53_9C4984(, , )
  loc_B02499: FFreeAd var_B0 = "": var_198 = "": var_1A8 = ""
  loc_B024A4: LitI2_Byte &HFF
  loc_B024A6: FLdPr Me
  loc_B024A9: MemStI2 bGenerado
  loc_B024AC: LitI4 0
  loc_B024B1: CI2I4
  loc_B024B2: FLdPr Me
  loc_B024B5: Me.MousePointer = from_stack_1
  loc_B024BA: LitVarStr var_9C, vbNullString
  loc_B024BF: PopAdLdVar
  loc_B024C0: FLdPr Me
  loc_B024C3: VCallAd Control_ID_statusBar
  loc_B024C6: FStAdFunc var_B0
  loc_B024C9: FLdPr var_B0
  loc_B024CC: LateIdSt
  loc_B024D1: FFree1Ad var_B0
  loc_B024D4: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'ABB6F8
  'Data Table: 497DF4
  loc_ABB150: FLdRfVar var_88
  loc_ABB153: LitI2_Byte 0
  loc_ABB155: LitI2_Byte &HFF
  loc_ABB157: ImpAdLdI4 MemVar_C3D83C
  loc_ABB15A: FLdPr Me
  loc_ABB15D: MemLdRfVar from_stack_1.global_60
  loc_ABB160: NewIfNullPr IFileSystem3
  loc_ABB163: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_ABB168: ILdRf var_88
  loc_ABB16B: FLdPr Me
  loc_ABB16E: MemStVarAd
  loc_ABB172: FFree1Ad var_88
  loc_ABB175: Call Proc_214_23_B0D2B8()
  loc_ABB17A: LitI4 1
  loc_ABB17F: FLdPr Me
  loc_ABB182: MemLdRfVar from_stack_1.global_96
  loc_ABB185: FLdPr Me
  loc_ABB188: MemLdStr global_80
  loc_ABB18B: LitI2_Byte 1
  loc_ABB18D: FnUBound
  loc_ABB18F: ForI4 var_90
  loc_ABB195: LitVarStr var_A0, "    <tr valign=""top"" class=""LineaDato"">"
  loc_ABB19A: PopAdLdVar
  loc_ABB19B: FLdPr Me
  loc_ABB19E: MemLdRfVar from_stack_1.global_64
  loc_ABB1A1: LdPrVar
  loc_ABB1A3: LateMemCall
  loc_ABB1A9: FLdPr Me
  loc_ABB1AC: MemLdStr global_96
  loc_ABB1AF: FLdPr Me
  loc_ABB1B2: MemLdStr global_80
  loc_ABB1B5: AryLock
  loc_ABB1B8: Ary1LdRf
  loc_ABB1B9: FStR4 var_B8
  loc_ABB1BC: LitI4 0
  loc_ABB1C1: LitI4 0
  loc_ABB1C6: LitI2_Byte 0
  loc_ABB1C8: LitStr "center"
  loc_ABB1CB: FMemLdR4 var_B8(0)
  loc_ABB1D0: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ABB1D5: CVarStr var_C8
  loc_ABB1D8: PopAdLdVar
  loc_ABB1D9: FLdPr Me
  loc_ABB1DC: MemLdRfVar from_stack_1.global_64
  loc_ABB1DF: LdPrVar
  loc_ABB1E1: LateMemCall
  loc_ABB1E7: FFree1Var var_C8 = ""
  loc_ABB1EA: LitI4 0
  loc_ABB1EF: LitI4 0
  loc_ABB1F4: LitI2_Byte 0
  loc_ABB1F6: LitStr "right"
  loc_ABB1F9: FMemLdR4 var_B8(4)
  loc_ABB1FE: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ABB203: CVarStr var_C8
  loc_ABB206: PopAdLdVar
  loc_ABB207: FLdPr Me
  loc_ABB20A: MemLdRfVar from_stack_1.global_64
  loc_ABB20D: LdPrVar
  loc_ABB20F: LateMemCall
  loc_ABB215: FFree1Var var_C8 = ""
  loc_ABB218: LitI4 0
  loc_ABB21D: LitI4 0
  loc_ABB222: LitI2_Byte 0
  loc_ABB224: LitStr "left"
  loc_ABB227: FMemLdR4 var_B8(8)
  loc_ABB22C: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ABB231: CVarStr var_C8
  loc_ABB234: PopAdLdVar
  loc_ABB235: FLdPr Me
  loc_ABB238: MemLdRfVar from_stack_1.global_64
  loc_ABB23B: LdPrVar
  loc_ABB23D: LateMemCall
  loc_ABB243: FFree1Var var_C8 = ""
  loc_ABB246: LitI4 0
  loc_ABB24B: LitI4 0
  loc_ABB250: LitI2_Byte 0
  loc_ABB252: LitStr "left"
  loc_ABB255: FMemLdR4 var_B8(12)
  loc_ABB25A: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ABB25F: CVarStr var_C8
  loc_ABB262: PopAdLdVar
  loc_ABB263: FLdPr Me
  loc_ABB266: MemLdRfVar from_stack_1.global_64
  loc_ABB269: LdPrVar
  loc_ABB26B: LateMemCall
  loc_ABB271: FFree1Var var_C8 = ""
  loc_ABB274: LitI4 0
  loc_ABB279: LitI4 0
  loc_ABB27E: LitI2_Byte 0
  loc_ABB280: LitStr "right"
  loc_ABB283: FMemLdR4 var_B8(16)
  loc_ABB288: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ABB28D: CVarStr var_C8
  loc_ABB290: PopAdLdVar
  loc_ABB291: FLdPr Me
  loc_ABB294: MemLdRfVar from_stack_1.global_64
  loc_ABB297: LdPrVar
  loc_ABB299: LateMemCall
  loc_ABB29F: FFree1Var var_C8 = ""
  loc_ABB2A2: LitI4 0
  loc_ABB2A7: LitI4 0
  loc_ABB2AC: LitI2_Byte 0
  loc_ABB2AE: LitStr "center"
  loc_ABB2B1: FMemLdR4 var_B8(20)
  loc_ABB2B6: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ABB2BB: CVarStr var_C8
  loc_ABB2BE: PopAdLdVar
  loc_ABB2BF: FLdPr Me
  loc_ABB2C2: MemLdRfVar from_stack_1.global_64
  loc_ABB2C5: LdPrVar
  loc_ABB2C7: LateMemCall
  loc_ABB2CD: FFree1Var var_C8 = ""
  loc_ABB2D0: LitI4 0
  loc_ABB2D5: LitI4 0
  loc_ABB2DA: LitI2_Byte 0
  loc_ABB2DC: LitStr "right"
  loc_ABB2DF: FMemLdR4 var_B8(24)
  loc_ABB2E4: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_ABB2E9: CVarStr var_C8
  loc_ABB2EC: PopAdLdVar
  loc_ABB2ED: FLdPr Me
  loc_ABB2F0: MemLdRfVar from_stack_1.global_64
  loc_ABB2F3: LdPrVar
  loc_ABB2F5: LateMemCall
  loc_ABB2FB: FFree1Var var_C8 = ""
  loc_ABB2FE: LitVarStr var_108, "    <td class=""Tilde"" align=""center"">"
  loc_ABB303: LitVarStr var_D8, "<span style=""color:#FF0000"">&yacute;</span>"
  loc_ABB308: FStVarCopyObj var_E8
  loc_ABB30B: FLdRfVar var_E8
  loc_ABB30E: LitVarStr var_B0, "&thorn;"
  loc_ABB313: FStVarCopyObj var_C8
  loc_ABB316: FLdRfVar var_C8
  loc_ABB319: FMemLdRf 0
  loc_ABB31E: CVarRef
  loc_ABB323: FLdRfVar var_F8
  loc_ABB326: ImpAdCallFPR4  = IIf(, , )
  loc_ABB32B: FLdRfVar var_F8
  loc_ABB32E: ConcatVar var_118
  loc_ABB332: LitVarStr var_128, "</td>"
  loc_ABB337: ConcatVar var_138
  loc_ABB33B: PopAdLdVar
  loc_ABB33C: FLdPr Me
  loc_ABB33F: MemLdRfVar from_stack_1.global_64
  loc_ABB342: LdPrVar
  loc_ABB344: LateMemCall
  loc_ABB34A: FFreeVar var_C8 = "": var_E8 = "": var_F8 = "": var_118 = ""
  loc_ABB357: LitI4 0
  loc_ABB35C: FStR4 var_B8
  loc_ABB35F: AryUnlock
  loc_ABB362: LitVarStr var_A0, "     </tr>"
  loc_ABB367: PopAdLdVar
  loc_ABB368: FLdPr Me
  loc_ABB36B: MemLdRfVar from_stack_1.global_64
  loc_ABB36E: LdPrVar
  loc_ABB370: LateMemCall
  loc_ABB376: FLdPr Me
  loc_ABB379: MemLdRfVar from_stack_1.global_96
  loc_ABB37C: NextI4 var_90, loc_ABB195
  loc_ABB381: LitVarStr var_A0, "</table>"
  loc_ABB386: PopAdLdVar
  loc_ABB387: FLdPr Me
  loc_ABB38A: MemLdRfVar from_stack_1.global_64
  loc_ABB38D: LdPrVar
  loc_ABB38F: LateMemCall
  loc_ABB395: LitVarStr var_A0, "<table align=""center"" border=""0"" class=""Normal"" cellpadding=""1"" cellspacing=""1"">"
  loc_ABB39A: PopAdLdVar
  loc_ABB39B: FLdPr Me
  loc_ABB39E: MemLdRfVar from_stack_1.global_64
  loc_ABB3A1: LdPrVar
  loc_ABB3A3: LateMemCall
  loc_ABB3A9: LitVarStr var_A0, " <tr valign=""middle"" align=""right"">"
  loc_ABB3AE: PopAdLdVar
  loc_ABB3AF: FLdPr Me
  loc_ABB3B2: MemLdRfVar from_stack_1.global_64
  loc_ABB3B5: LdPrVar
  loc_ABB3B7: LateMemCall
  loc_ABB3BD: LitVarStr var_A0, "   <td><table align=""left"" border""0"" cellpadding=""1"" cellspacing=""1"">"
  loc_ABB3C2: PopAdLdVar
  loc_ABB3C3: FLdPr Me
  loc_ABB3C6: MemLdRfVar from_stack_1.global_64
  loc_ABB3C9: LdPrVar
  loc_ABB3CB: LateMemCall
  loc_ABB3D1: LitVarStr var_A0, "    <tr valign=""top"" align=""left"">"
  loc_ABB3D6: PopAdLdVar
  loc_ABB3D7: FLdPr Me
  loc_ABB3DA: MemLdRfVar from_stack_1.global_64
  loc_ABB3DD: LdPrVar
  loc_ABB3DF: LateMemCall
  loc_ABB3E5: LitStr "      <td colspan=""3"">Plazo:&nbsp;"
  loc_ABB3E8: LitI2_Byte &H15
  loc_ABB3EA: CStrUI1
  loc_ABB3EC: FStStrNoPop var_14C
  loc_ABB3EF: ConcatStr
  loc_ABB3F0: FStStrNoPop var_150
  loc_ABB3F3: LitStr "&nbsp;d&iacute;as</td>"
  loc_ABB3F6: ConcatStr
  loc_ABB3F7: CVarStr var_C8
  loc_ABB3FA: PopAdLdVar
  loc_ABB3FB: FLdPr Me
  loc_ABB3FE: MemLdRfVar from_stack_1.global_64
  loc_ABB401: LdPrVar
  loc_ABB403: LateMemCall
  loc_ABB409: FFreeStr var_14C = ""
  loc_ABB410: FFree1Var var_C8 = ""
  loc_ABB413: LitVarStr var_A0, "    </tr>"
  loc_ABB418: PopAdLdVar
  loc_ABB419: FLdPr Me
  loc_ABB41C: MemLdRfVar from_stack_1.global_64
  loc_ABB41F: LdPrVar
  loc_ABB421: LateMemCall
  loc_ABB427: LitVarStr var_A0, "    <tr valign=""top"">"
  loc_ABB42C: PopAdLdVar
  loc_ABB42D: FLdPr Me
  loc_ABB430: MemLdRfVar from_stack_1.global_64
  loc_ABB433: LdPrVar
  loc_ABB435: LateMemCall
  loc_ABB43B: LitVarStr var_A0, "      <td colspan=""3""><hr></td>"
  loc_ABB440: PopAdLdVar
  loc_ABB441: FLdPr Me
  loc_ABB444: MemLdRfVar from_stack_1.global_64
  loc_ABB447: LdPrVar
  loc_ABB449: LateMemCall
  loc_ABB44F: LitVarStr var_A0, "    </tr>"
  loc_ABB454: PopAdLdVar
  loc_ABB455: FLdPr Me
  loc_ABB458: MemLdRfVar from_stack_1.global_64
  loc_ABB45B: LdPrVar
  loc_ABB45D: LateMemCall
  loc_ABB463: LitVarStr var_A0, "    <tr valign=""top"" align=""right"">"
  loc_ABB468: PopAdLdVar
  loc_ABB469: FLdPr Me
  loc_ABB46C: MemLdRfVar from_stack_1.global_64
  loc_ABB46F: LdPrVar
  loc_ABB471: LateMemCall
  loc_ABB477: LitVarStr var_A0, "      <td>Total antes del plazo:&nbsp;</td>"
  loc_ABB47C: PopAdLdVar
  loc_ABB47D: FLdPr Me
  loc_ABB480: MemLdRfVar from_stack_1.global_64
  loc_ABB483: LdPrVar
  loc_ABB485: LateMemCall
  loc_ABB48B: LitStr "      <td>"
  loc_ABB48E: FLdPr Me
  loc_ABB491: MemLdStr global_84
  loc_ABB494: ConcatStr
  loc_ABB495: FStStrNoPop var_14C
  loc_ABB498: LitStr "</td>"
  loc_ABB49B: ConcatStr
  loc_ABB49C: CVarStr var_C8
  loc_ABB49F: PopAdLdVar
  loc_ABB4A0: FLdPr Me
  loc_ABB4A3: MemLdRfVar from_stack_1.global_64
  loc_ABB4A6: LdPrVar
  loc_ABB4A8: LateMemCall
  loc_ABB4AE: FFree1Str var_14C
  loc_ABB4B1: FFree1Var var_C8 = ""
  loc_ABB4B4: LitStr "      <td>"
  loc_ABB4B7: LitI4 1
  loc_ABB4BC: LitI4 1
  loc_ABB4C1: LitVarStr var_B0, "(##0" & Chr(37) & ")"
  loc_ABB4C6: FStVarCopyObj var_E8
  loc_ABB4C9: FLdRfVar var_E8
  loc_ABB4CC: FLdPr Me
  loc_ABB4CF: MemLdStr global_84
  loc_ABB4D2: CI4Str
  loc_ABB4D3: CR8I4
  loc_ABB4D4: FLdPr Me
  loc_ABB4D7: MemLdStr global_92
  loc_ABB4DA: CI4Str
  loc_ABB4DB: CR8I4
  loc_ABB4DC: DivR8
  loc_ABB4DD: CVarR8
  loc_ABB4E1: ImpAdCallI2 Format$(, )
  loc_ABB4E6: FStStrNoPop var_14C
  loc_ABB4E9: ConcatStr
  loc_ABB4EA: FStStrNoPop var_150
  loc_ABB4ED: LitStr "</td>"
  loc_ABB4F0: ConcatStr
  loc_ABB4F1: CVarStr var_F8
  loc_ABB4F4: PopAdLdVar
  loc_ABB4F5: FLdPr Me
  loc_ABB4F8: MemLdRfVar from_stack_1.global_64
  loc_ABB4FB: LdPrVar
  loc_ABB4FD: LateMemCall
  loc_ABB503: FFreeStr var_14C = ""
  loc_ABB50A: FFreeVar var_C8 = "": var_E8 = ""
  loc_ABB513: LitVarStr var_A0, "    </tr>"
  loc_ABB518: PopAdLdVar
  loc_ABB519: FLdPr Me
  loc_ABB51C: MemLdRfVar from_stack_1.global_64
  loc_ABB51F: LdPrVar
  loc_ABB521: LateMemCall
  loc_ABB527: LitVarStr var_A0, "    <tr valign=""top"" align=""right"">"
  loc_ABB52C: PopAdLdVar
  loc_ABB52D: FLdPr Me
  loc_ABB530: MemLdRfVar from_stack_1.global_64
  loc_ABB533: LdPrVar
  loc_ABB535: LateMemCall
  loc_ABB53B: LitVarStr var_A0, "      <td>Total despu&eacute;s del plazo:&nbsp;</td>"
  loc_ABB540: PopAdLdVar
  loc_ABB541: FLdPr Me
  loc_ABB544: MemLdRfVar from_stack_1.global_64
  loc_ABB547: LdPrVar
  loc_ABB549: LateMemCall
  loc_ABB54F: LitStr "      <td>"
  loc_ABB552: FLdPr Me
  loc_ABB555: MemLdStr global_88
  loc_ABB558: ConcatStr
  loc_ABB559: FStStrNoPop var_14C
  loc_ABB55C: LitStr "</td>"
  loc_ABB55F: ConcatStr
  loc_ABB560: CVarStr var_C8
  loc_ABB563: PopAdLdVar
  loc_ABB564: FLdPr Me
  loc_ABB567: MemLdRfVar from_stack_1.global_64
  loc_ABB56A: LdPrVar
  loc_ABB56C: LateMemCall
  loc_ABB572: FFree1Str var_14C
  loc_ABB575: FFree1Var var_C8 = ""
  loc_ABB578: LitStr "      <td>"
  loc_ABB57B: LitI4 1
  loc_ABB580: LitI4 1
  loc_ABB585: LitVarStr var_B0, "(##0" & Chr(37) & ")"
  loc_ABB58A: FStVarCopyObj var_E8
  loc_ABB58D: FLdRfVar var_E8
  loc_ABB590: FLdPr Me
  loc_ABB593: MemLdStr global_88
  loc_ABB596: CI4Str
  loc_ABB597: CR8I4
  loc_ABB598: FLdPr Me
  loc_ABB59B: MemLdStr global_92
  loc_ABB59E: CI4Str
  loc_ABB59F: CR8I4
  loc_ABB5A0: DivR8
  loc_ABB5A1: CVarR8
  loc_ABB5A5: ImpAdCallI2 Format$(, )
  loc_ABB5AA: FStStrNoPop var_14C
  loc_ABB5AD: ConcatStr
  loc_ABB5AE: FStStrNoPop var_150
  loc_ABB5B1: LitStr "</td>"
  loc_ABB5B4: ConcatStr
  loc_ABB5B5: CVarStr var_F8
  loc_ABB5B8: PopAdLdVar
  loc_ABB5B9: FLdPr Me
  loc_ABB5BC: MemLdRfVar from_stack_1.global_64
  loc_ABB5BF: LdPrVar
  loc_ABB5C1: LateMemCall
  loc_ABB5C7: FFreeStr var_14C = ""
  loc_ABB5CE: FFreeVar var_C8 = "": var_E8 = ""
  loc_ABB5D7: LitVarStr var_A0, "    </tr>"
  loc_ABB5DC: PopAdLdVar
  loc_ABB5DD: FLdPr Me
  loc_ABB5E0: MemLdRfVar from_stack_1.global_64
  loc_ABB5E3: LdPrVar
  loc_ABB5E5: LateMemCall
  loc_ABB5EB: LitVarStr var_A0, "    <tr valign=""top"">"
  loc_ABB5F0: PopAdLdVar
  loc_ABB5F1: FLdPr Me
  loc_ABB5F4: MemLdRfVar from_stack_1.global_64
  loc_ABB5F7: LdPrVar
  loc_ABB5F9: LateMemCall
  loc_ABB5FF: LitVarStr var_A0, "      <td colspan=""2""><hr></td>"
  loc_ABB604: PopAdLdVar
  loc_ABB605: FLdPr Me
  loc_ABB608: MemLdRfVar from_stack_1.global_64
  loc_ABB60B: LdPrVar
  loc_ABB60D: LateMemCall
  loc_ABB613: LitVarStr var_A0, "    </tr>"
  loc_ABB618: PopAdLdVar
  loc_ABB619: FLdPr Me
  loc_ABB61C: MemLdRfVar from_stack_1.global_64
  loc_ABB61F: LdPrVar
  loc_ABB621: LateMemCall
  loc_ABB627: LitVarStr var_A0, "    <tr valign=""top"" align=""right"">"
  loc_ABB62C: PopAdLdVar
  loc_ABB62D: FLdPr Me
  loc_ABB630: MemLdRfVar from_stack_1.global_64
  loc_ABB633: LdPrVar
  loc_ABB635: LateMemCall
  loc_ABB63B: LitVarStr var_A0, "      <td>Total:&nbsp;</td>"
  loc_ABB640: PopAdLdVar
  loc_ABB641: FLdPr Me
  loc_ABB644: MemLdRfVar from_stack_1.global_64
  loc_ABB647: LdPrVar
  loc_ABB649: LateMemCall
  loc_ABB64F: LitStr "      <td>"
  loc_ABB652: FLdPr Me
  loc_ABB655: MemLdStr global_92
  loc_ABB658: ConcatStr
  loc_ABB659: FStStrNoPop var_14C
  loc_ABB65C: LitStr "</td>"
  loc_ABB65F: ConcatStr
  loc_ABB660: CVarStr var_C8
  loc_ABB663: PopAdLdVar
  loc_ABB664: FLdPr Me
  loc_ABB667: MemLdRfVar from_stack_1.global_64
  loc_ABB66A: LdPrVar
  loc_ABB66C: LateMemCall
  loc_ABB672: FFree1Str var_14C
  loc_ABB675: FFree1Var var_C8 = ""
  loc_ABB678: LitVarStr var_A0, "    </tr>"
  loc_ABB67D: PopAdLdVar
  loc_ABB67E: FLdPr Me
  loc_ABB681: MemLdRfVar from_stack_1.global_64
  loc_ABB684: LdPrVar
  loc_ABB686: LateMemCall
  loc_ABB68C: LitVarStr var_A0, "   </table></td>"
  loc_ABB691: PopAdLdVar
  loc_ABB692: FLdPr Me
  loc_ABB695: MemLdRfVar from_stack_1.global_64
  loc_ABB698: LdPrVar
  loc_ABB69A: LateMemCall
  loc_ABB6A0: LitVarStr var_A0, "   <td><img src=""graf1.bmp""></td>"
  loc_ABB6A5: PopAdLdVar
  loc_ABB6A6: FLdPr Me
  loc_ABB6A9: MemLdRfVar from_stack_1.global_64
  loc_ABB6AC: LdPrVar
  loc_ABB6AE: LateMemCall
  loc_ABB6B4: LitVarStr var_A0, " </tr>"
  loc_ABB6B9: PopAdLdVar
  loc_ABB6BA: FLdPr Me
  loc_ABB6BD: MemLdRfVar from_stack_1.global_64
  loc_ABB6C0: LdPrVar
  loc_ABB6C2: LateMemCall
  loc_ABB6C8: LitVarStr var_A0, "</table>"
  loc_ABB6CD: PopAdLdVar
  loc_ABB6CE: FLdPr Me
  loc_ABB6D1: MemLdRfVar from_stack_1.global_64
  loc_ABB6D4: LdPrVar
  loc_ABB6D6: LateMemCall
  loc_ABB6DC: Call Proc_214_24_971724()
  loc_ABB6E1: FLdPr Me
  loc_ABB6E4: MemLdRfVar from_stack_1.global_64
  loc_ABB6E7: LdPrVar
  loc_ABB6E9: LateMemCall
  loc_ABB6EF: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_ABB6F4: ExitProcHresult
  loc_ABB6F5: FLdPr var_7600
End Sub

Private Function Proc_214_23_B0D2B8() 'B0D2B8
  'Data Table: 497DF4
  loc_B0CA7C: LitVarStr var_94, "<html>"
  loc_B0CA81: PopAdLdVar
  loc_B0CA82: FLdPr Me
  loc_B0CA85: MemLdRfVar from_stack_1.global_64
  loc_B0CA88: LdPrVar
  loc_B0CA8A: LateMemCall
  loc_B0CA90: LitVarStr var_94, "<head>"
  loc_B0CA95: PopAdLdVar
  loc_B0CA96: FLdPr Me
  loc_B0CA99: MemLdRfVar from_stack_1.global_64
  loc_B0CA9C: LdPrVar
  loc_B0CA9E: LateMemCall
  loc_B0CAA4: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_B0CAA9: PopAdLdVar
  loc_B0CAAA: FLdPr Me
  loc_B0CAAD: MemLdRfVar from_stack_1.global_64
  loc_B0CAB0: LdPrVar
  loc_B0CAB2: LateMemCall
  loc_B0CAB8: LitStr "<title>"
  loc_B0CABB: FLdRfVar var_A8
  loc_B0CABE: FLdPr Me
  loc_B0CAC1:  = Me.Caption
  loc_B0CAC6: ILdRf var_A8
  loc_B0CAC9: ConcatStr
  loc_B0CACA: FStStrNoPop var_AC
  loc_B0CACD: LitStr "</title>"
  loc_B0CAD0: ConcatStr
  loc_B0CAD1: CVarStr var_BC
  loc_B0CAD4: PopAdLdVar
  loc_B0CAD5: FLdPr Me
  loc_B0CAD8: MemLdRfVar from_stack_1.global_64
  loc_B0CADB: LdPrVar
  loc_B0CADD: LateMemCall
  loc_B0CAE3: FFreeStr var_A8 = ""
  loc_B0CAEA: FFree1Var var_BC = ""
  loc_B0CAED: LitVarStr var_94, "<style type=""text/css"">"
  loc_B0CAF2: PopAdLdVar
  loc_B0CAF3: FLdPr Me
  loc_B0CAF6: MemLdRfVar from_stack_1.global_64
  loc_B0CAF9: LdPrVar
  loc_B0CAFB: LateMemCall
  loc_B0CB01: LitVarStr var_94, ".Titulo1 {"
  loc_B0CB06: PopAdLdVar
  loc_B0CB07: FLdPr Me
  loc_B0CB0A: MemLdRfVar from_stack_1.global_64
  loc_B0CB0D: LdPrVar
  loc_B0CB0F: LateMemCall
  loc_B0CB15: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_B0CB1A: PopAdLdVar
  loc_B0CB1B: FLdPr Me
  loc_B0CB1E: MemLdRfVar from_stack_1.global_64
  loc_B0CB21: LdPrVar
  loc_B0CB23: LateMemCall
  loc_B0CB29: LitVarStr var_94, " font-size: 18px;"
  loc_B0CB2E: PopAdLdVar
  loc_B0CB2F: FLdPr Me
  loc_B0CB32: MemLdRfVar from_stack_1.global_64
  loc_B0CB35: LdPrVar
  loc_B0CB37: LateMemCall
  loc_B0CB3D: LitVarStr var_94, " font-weight: bold;"
  loc_B0CB42: PopAdLdVar
  loc_B0CB43: FLdPr Me
  loc_B0CB46: MemLdRfVar from_stack_1.global_64
  loc_B0CB49: LdPrVar
  loc_B0CB4B: LateMemCall
  loc_B0CB51: LitVarStr var_94, "}"
  loc_B0CB56: PopAdLdVar
  loc_B0CB57: FLdPr Me
  loc_B0CB5A: MemLdRfVar from_stack_1.global_64
  loc_B0CB5D: LdPrVar
  loc_B0CB5F: LateMemCall
  loc_B0CB65: LitVarStr var_94, ".Titulo2 {"
  loc_B0CB6A: PopAdLdVar
  loc_B0CB6B: FLdPr Me
  loc_B0CB6E: MemLdRfVar from_stack_1.global_64
  loc_B0CB71: LdPrVar
  loc_B0CB73: LateMemCall
  loc_B0CB79: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_B0CB7E: PopAdLdVar
  loc_B0CB7F: FLdPr Me
  loc_B0CB82: MemLdRfVar from_stack_1.global_64
  loc_B0CB85: LdPrVar
  loc_B0CB87: LateMemCall
  loc_B0CB8D: LitVarStr var_94, " font-size: 14px;"
  loc_B0CB92: PopAdLdVar
  loc_B0CB93: FLdPr Me
  loc_B0CB96: MemLdRfVar from_stack_1.global_64
  loc_B0CB99: LdPrVar
  loc_B0CB9B: LateMemCall
  loc_B0CBA1: LitVarStr var_94, " font-weight: bold;"
  loc_B0CBA6: PopAdLdVar
  loc_B0CBA7: FLdPr Me
  loc_B0CBAA: MemLdRfVar from_stack_1.global_64
  loc_B0CBAD: LdPrVar
  loc_B0CBAF: LateMemCall
  loc_B0CBB5: LitVarStr var_94, "}"
  loc_B0CBBA: PopAdLdVar
  loc_B0CBBB: FLdPr Me
  loc_B0CBBE: MemLdRfVar from_stack_1.global_64
  loc_B0CBC1: LdPrVar
  loc_B0CBC3: LateMemCall
  loc_B0CBC9: LitVarStr var_94, ".Normal {"
  loc_B0CBCE: PopAdLdVar
  loc_B0CBCF: FLdPr Me
  loc_B0CBD2: MemLdRfVar from_stack_1.global_64
  loc_B0CBD5: LdPrVar
  loc_B0CBD7: LateMemCall
  loc_B0CBDD: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_B0CBE2: PopAdLdVar
  loc_B0CBE3: FLdPr Me
  loc_B0CBE6: MemLdRfVar from_stack_1.global_64
  loc_B0CBE9: LdPrVar
  loc_B0CBEB: LateMemCall
  loc_B0CBF1: LitVarStr var_94, " font-size: 14px;"
  loc_B0CBF6: PopAdLdVar
  loc_B0CBF7: FLdPr Me
  loc_B0CBFA: MemLdRfVar from_stack_1.global_64
  loc_B0CBFD: LdPrVar
  loc_B0CBFF: LateMemCall
  loc_B0CC05: LitVarStr var_94, " font-style: normal;"
  loc_B0CC0A: PopAdLdVar
  loc_B0CC0B: FLdPr Me
  loc_B0CC0E: MemLdRfVar from_stack_1.global_64
  loc_B0CC11: LdPrVar
  loc_B0CC13: LateMemCall
  loc_B0CC19: LitVarStr var_94, " font-weight: normal;"
  loc_B0CC1E: PopAdLdVar
  loc_B0CC1F: FLdPr Me
  loc_B0CC22: MemLdRfVar from_stack_1.global_64
  loc_B0CC25: LdPrVar
  loc_B0CC27: LateMemCall
  loc_B0CC2D: LitVarStr var_94, " font-variant: normal;"
  loc_B0CC32: PopAdLdVar
  loc_B0CC33: FLdPr Me
  loc_B0CC36: MemLdRfVar from_stack_1.global_64
  loc_B0CC39: LdPrVar
  loc_B0CC3B: LateMemCall
  loc_B0CC41: LitVarStr var_94, "}"
  loc_B0CC46: PopAdLdVar
  loc_B0CC47: FLdPr Me
  loc_B0CC4A: MemLdRfVar from_stack_1.global_64
  loc_B0CC4D: LdPrVar
  loc_B0CC4F: LateMemCall
  loc_B0CC55: LitVarStr var_94, ".Encabezado {"
  loc_B0CC5A: PopAdLdVar
  loc_B0CC5B: FLdPr Me
  loc_B0CC5E: MemLdRfVar from_stack_1.global_64
  loc_B0CC61: LdPrVar
  loc_B0CC63: LateMemCall
  loc_B0CC69: LitVarStr var_94, " font-family: ""Times New Roman"", Times, serif;"
  loc_B0CC6E: PopAdLdVar
  loc_B0CC6F: FLdPr Me
  loc_B0CC72: MemLdRfVar from_stack_1.global_64
  loc_B0CC75: LdPrVar
  loc_B0CC77: LateMemCall
  loc_B0CC7D: LitVarStr var_94, " font-size: 13px;"
  loc_B0CC82: PopAdLdVar
  loc_B0CC83: FLdPr Me
  loc_B0CC86: MemLdRfVar from_stack_1.global_64
  loc_B0CC89: LdPrVar
  loc_B0CC8B: LateMemCall
  loc_B0CC91: LitVarStr var_94, " font-weight: bold;"
  loc_B0CC96: PopAdLdVar
  loc_B0CC97: FLdPr Me
  loc_B0CC9A: MemLdRfVar from_stack_1.global_64
  loc_B0CC9D: LdPrVar
  loc_B0CC9F: LateMemCall
  loc_B0CCA5: LitVarStr var_94, " background-color: #D3D3D3;"
  loc_B0CCAA: PopAdLdVar
  loc_B0CCAB: FLdPr Me
  loc_B0CCAE: MemLdRfVar from_stack_1.global_64
  loc_B0CCB1: LdPrVar
  loc_B0CCB3: LateMemCall
  loc_B0CCB9: LitVarStr var_94, "}"
  loc_B0CCBE: PopAdLdVar
  loc_B0CCBF: FLdPr Me
  loc_B0CCC2: MemLdRfVar from_stack_1.global_64
  loc_B0CCC5: LdPrVar
  loc_B0CCC7: LateMemCall
  loc_B0CCCD: LitVarStr var_94, ".LineaDato {"
  loc_B0CCD2: PopAdLdVar
  loc_B0CCD3: FLdPr Me
  loc_B0CCD6: MemLdRfVar from_stack_1.global_64
  loc_B0CCD9: LdPrVar
  loc_B0CCDB: LateMemCall
  loc_B0CCE1: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_B0CCE6: PopAdLdVar
  loc_B0CCE7: FLdPr Me
  loc_B0CCEA: MemLdRfVar from_stack_1.global_64
  loc_B0CCED: LdPrVar
  loc_B0CCEF: LateMemCall
  loc_B0CCF5: LitVarStr var_94, " font-size: 10px;"
  loc_B0CCFA: PopAdLdVar
  loc_B0CCFB: FLdPr Me
  loc_B0CCFE: MemLdRfVar from_stack_1.global_64
  loc_B0CD01: LdPrVar
  loc_B0CD03: LateMemCall
  loc_B0CD09: LitVarStr var_94, "}"
  loc_B0CD0E: PopAdLdVar
  loc_B0CD0F: FLdPr Me
  loc_B0CD12: MemLdRfVar from_stack_1.global_64
  loc_B0CD15: LdPrVar
  loc_B0CD17: LateMemCall
  loc_B0CD1D: LitVarStr var_94, ".Totales {"
  loc_B0CD22: PopAdLdVar
  loc_B0CD23: FLdPr Me
  loc_B0CD26: MemLdRfVar from_stack_1.global_64
  loc_B0CD29: LdPrVar
  loc_B0CD2B: LateMemCall
  loc_B0CD31: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_B0CD36: PopAdLdVar
  loc_B0CD37: FLdPr Me
  loc_B0CD3A: MemLdRfVar from_stack_1.global_64
  loc_B0CD3D: LdPrVar
  loc_B0CD3F: LateMemCall
  loc_B0CD45: LitVarStr var_94, " font-size: 12px;"
  loc_B0CD4A: PopAdLdVar
  loc_B0CD4B: FLdPr Me
  loc_B0CD4E: MemLdRfVar from_stack_1.global_64
  loc_B0CD51: LdPrVar
  loc_B0CD53: LateMemCall
  loc_B0CD59: LitVarStr var_94, " font-weight: bold;"
  loc_B0CD5E: PopAdLdVar
  loc_B0CD5F: FLdPr Me
  loc_B0CD62: MemLdRfVar from_stack_1.global_64
  loc_B0CD65: LdPrVar
  loc_B0CD67: LateMemCall
  loc_B0CD6D: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_B0CD72: PopAdLdVar
  loc_B0CD73: FLdPr Me
  loc_B0CD76: MemLdRfVar from_stack_1.global_64
  loc_B0CD79: LdPrVar
  loc_B0CD7B: LateMemCall
  loc_B0CD81: LitVarStr var_94, "}"
  loc_B0CD86: PopAdLdVar
  loc_B0CD87: FLdPr Me
  loc_B0CD8A: MemLdRfVar from_stack_1.global_64
  loc_B0CD8D: LdPrVar
  loc_B0CD8F: LateMemCall
  loc_B0CD95: LitVarStr var_94, ".Tilde {"
  loc_B0CD9A: PopAdLdVar
  loc_B0CD9B: FLdPr Me
  loc_B0CD9E: MemLdRfVar from_stack_1.global_64
  loc_B0CDA1: LdPrVar
  loc_B0CDA3: LateMemCall
  loc_B0CDA9: LitVarStr var_94, " font-family: Wingdings;"
  loc_B0CDAE: PopAdLdVar
  loc_B0CDAF: FLdPr Me
  loc_B0CDB2: MemLdRfVar from_stack_1.global_64
  loc_B0CDB5: LdPrVar
  loc_B0CDB7: LateMemCall
  loc_B0CDBD: LitVarStr var_94, " font-size: 16px;"
  loc_B0CDC2: PopAdLdVar
  loc_B0CDC3: FLdPr Me
  loc_B0CDC6: MemLdRfVar from_stack_1.global_64
  loc_B0CDC9: LdPrVar
  loc_B0CDCB: LateMemCall
  loc_B0CDD1: LitVarStr var_94, "}"
  loc_B0CDD6: PopAdLdVar
  loc_B0CDD7: FLdPr Me
  loc_B0CDDA: MemLdRfVar from_stack_1.global_64
  loc_B0CDDD: LdPrVar
  loc_B0CDDF: LateMemCall
  loc_B0CDE5: LitVarStr var_94, "THEAD { display: table-header-group; }"
  loc_B0CDEA: PopAdLdVar
  loc_B0CDEB: FLdPr Me
  loc_B0CDEE: MemLdRfVar from_stack_1.global_64
  loc_B0CDF1: LdPrVar
  loc_B0CDF3: LateMemCall
  loc_B0CDF9: LitVarStr var_94, "</style>"
  loc_B0CDFE: PopAdLdVar
  loc_B0CDFF: FLdPr Me
  loc_B0CE02: MemLdRfVar from_stack_1.global_64
  loc_B0CE05: LdPrVar
  loc_B0CE07: LateMemCall
  loc_B0CE0D: LitI4 0
  loc_B0CE12: FStStrCopy var_AC
  loc_B0CE15: FLdRfVar var_AC
  loc_B0CE18: LitI4 0
  loc_B0CE1D: FStStrCopy var_A8
  loc_B0CE20: FLdRfVar var_A8
  loc_B0CE23: LitI2_Byte 0
  loc_B0CE25: PopTmpLdAd2 var_BE
  loc_B0CE28: FLdPr Me
  loc_B0CE2B: MemLdRfVar from_stack_1.global_64
  loc_B0CE2E: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_B0CE33: FFreeStr var_A8 = ""
  loc_B0CE3A: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_B0CE3F: PopAdLdVar
  loc_B0CE40: FLdPr Me
  loc_B0CE43: MemLdRfVar from_stack_1.global_64
  loc_B0CE46: LdPrVar
  loc_B0CE48: LateMemCall
  loc_B0CE4E: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_B0CE53: PopAdLdVar
  loc_B0CE54: FLdPr Me
  loc_B0CE57: MemLdRfVar from_stack_1.global_64
  loc_B0CE5A: LdPrVar
  loc_B0CE5C: LateMemCall
  loc_B0CE62: LitVarStr var_A4, "    <th colspan=""2"" width=""100" & Chr(37) & """ valign=""bottom""><p align=""center""><img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>"
  loc_B0CE67: LitVarStr var_94, "Municipalidad de Guaymallén"
  loc_B0CE6C: FStVarCopyObj var_BC
  loc_B0CE6F: FLdRfVar var_BC
  loc_B0CE72: FLdRfVar var_D0
  loc_B0CE75: ImpAdCallFPR4  = Ucase()
  loc_B0CE7A: FLdRfVar var_D0
  loc_B0CE7D: ConcatVar var_E0
  loc_B0CE81: LitVarStr var_F0, "</p>"
  loc_B0CE86: ConcatVar var_100
  loc_B0CE8A: PopAdLdVar
  loc_B0CE8B: FLdPr Me
  loc_B0CE8E: MemLdRfVar from_stack_1.global_64
  loc_B0CE91: LdPrVar
  loc_B0CE93: LateMemCall
  loc_B0CE99: FFreeVar var_BC = "": var_D0 = "": var_E0 = ""
  loc_B0CEA4: LitStr "    <p align=""center"">"
  loc_B0CEA7: FLdRfVar var_A8
  loc_B0CEAA: FLdPr Me
  loc_B0CEAD:  = Me.Caption
  loc_B0CEB2: ILdRf var_A8
  loc_B0CEB5: ConcatStr
  loc_B0CEB6: FStStrNoPop var_AC
  loc_B0CEB9: LitStr "</p></th>"
  loc_B0CEBC: ConcatStr
  loc_B0CEBD: CVarStr var_BC
  loc_B0CEC0: PopAdLdVar
  loc_B0CEC1: FLdPr Me
  loc_B0CEC4: MemLdRfVar from_stack_1.global_64
  loc_B0CEC7: LdPrVar
  loc_B0CEC9: LateMemCall
  loc_B0CECF: FFreeStr var_A8 = ""
  loc_B0CED6: FFree1Var var_BC = ""
  loc_B0CED9: LitVarStr var_94, "  </tr>"
  loc_B0CEDE: PopAdLdVar
  loc_B0CEDF: FLdPr Me
  loc_B0CEE2: MemLdRfVar from_stack_1.global_64
  loc_B0CEE5: LdPrVar
  loc_B0CEE7: LateMemCall
  loc_B0CEED: LitVarStr var_94, "  <tr><th colspan=""2""><hr></th></tr>"
  loc_B0CEF2: PopAdLdVar
  loc_B0CEF3: FLdPr Me
  loc_B0CEF6: MemLdRfVar from_stack_1.global_64
  loc_B0CEF9: LdPrVar
  loc_B0CEFB: LateMemCall
  loc_B0CF01: LitVarStr var_94, "  <tr>"
  loc_B0CF06: PopAdLdVar
  loc_B0CF07: FLdPr Me
  loc_B0CF0A: MemLdRfVar from_stack_1.global_64
  loc_B0CF0D: LdPrVar
  loc_B0CF0F: LateMemCall
  loc_B0CF15: LitVarStr var_94, "   <th align=""left"">"
  loc_B0CF1A: PopAdLdVar
  loc_B0CF1B: FLdPr Me
  loc_B0CF1E: MemLdRfVar from_stack_1.global_64
  loc_B0CF21: LdPrVar
  loc_B0CF23: LateMemCall
  loc_B0CF29: LitStr "         Periodo: "
  loc_B0CF2C: FLdRfVar var_A8
  loc_B0CF2F: FLdPr Me
  loc_B0CF32: VCallAd Control_ID_cboPeriodo
  loc_B0CF35: FStAdFunc var_114
  loc_B0CF38: FLdPr var_114
  loc_B0CF3B:  = Me.Text
  loc_B0CF40: ILdRf var_A8
  loc_B0CF43: ConcatStr
  loc_B0CF44: FStStrNoPop var_AC
  loc_B0CF47: LitStr "<br>"
  loc_B0CF4A: ConcatStr
  loc_B0CF4B: CVarStr var_BC
  loc_B0CF4E: PopAdLdVar
  loc_B0CF4F: FLdPr Me
  loc_B0CF52: MemLdRfVar from_stack_1.global_64
  loc_B0CF55: LdPrVar
  loc_B0CF57: LateMemCall
  loc_B0CF5D: FFreeStr var_A8 = ""
  loc_B0CF64: FFree1Ad var_114
  loc_B0CF67: FFree1Var var_BC = ""
  loc_B0CF6A: LitStr "         Plazo: "
  loc_B0CF6D: LitI2_Byte &H15
  loc_B0CF6F: CStrUI1
  loc_B0CF71: FStStrNoPop var_A8
  loc_B0CF74: ConcatStr
  loc_B0CF75: FStStrNoPop var_AC
  loc_B0CF78: LitStr " días"
  loc_B0CF7B: ConcatStr
  loc_B0CF7C: CVarStr var_BC
  loc_B0CF7F: PopAdLdVar
  loc_B0CF80: FLdPr Me
  loc_B0CF83: MemLdRfVar from_stack_1.global_64
  loc_B0CF86: LdPrVar
  loc_B0CF88: LateMemCall
  loc_B0CF8E: FFreeStr var_A8 = ""
  loc_B0CF95: FFree1Var var_BC = ""
  loc_B0CF98: LitVarStr var_94, "   </th>"
  loc_B0CF9D: PopAdLdVar
  loc_B0CF9E: FLdPr Me
  loc_B0CFA1: MemLdRfVar from_stack_1.global_64
  loc_B0CFA4: LdPrVar
  loc_B0CFA6: LateMemCall
  loc_B0CFAC: LitVarStr var_94, "   <th align=""right"">"
  loc_B0CFB1: PopAdLdVar
  loc_B0CFB2: FLdPr Me
  loc_B0CFB5: MemLdRfVar from_stack_1.global_64
  loc_B0CFB8: LdPrVar
  loc_B0CFBA: LateMemCall
  loc_B0CFC0: LitStr "         Desde: "
  loc_B0CFC3: FLdPr Me
  loc_B0CFC6: VCallAd Control_ID_DesdeMsk
  loc_B0CFC9: FStAdFunc var_114
  loc_B0CFCC: FLdPr var_114
  loc_B0CFCF: LateIdLdVar var_BC DispID_15 0
  loc_B0CFD6: CStrVarTmp
  loc_B0CFD7: FStStrNoPop var_A8
  loc_B0CFDA: ConcatStr
  loc_B0CFDB: FStStrNoPop var_AC
  loc_B0CFDE: LitStr "<br>"
  loc_B0CFE1: ConcatStr
  loc_B0CFE2: CVarStr var_D0
  loc_B0CFE5: PopAdLdVar
  loc_B0CFE6: FLdPr Me
  loc_B0CFE9: MemLdRfVar from_stack_1.global_64
  loc_B0CFEC: LdPrVar
  loc_B0CFEE: LateMemCall
  loc_B0CFF4: FFreeStr var_A8 = ""
  loc_B0CFFB: FFree1Ad var_114
  loc_B0CFFE: FFreeVar var_BC = ""
  loc_B0D005: LitStr "         Hasta: "
  loc_B0D008: FLdPr Me
  loc_B0D00B: VCallAd Control_ID_HastaMsk
  loc_B0D00E: FStAdFunc var_114
  loc_B0D011: FLdPr var_114
  loc_B0D014: LateIdLdVar var_BC DispID_15 0
  loc_B0D01B: CStrVarTmp
  loc_B0D01C: FStStrNoPop var_A8
  loc_B0D01F: ConcatStr
  loc_B0D020: FStStrNoPop var_AC
  loc_B0D023: LitStr "<br>"
  loc_B0D026: ConcatStr
  loc_B0D027: CVarStr var_D0
  loc_B0D02A: PopAdLdVar
  loc_B0D02B: FLdPr Me
  loc_B0D02E: MemLdRfVar from_stack_1.global_64
  loc_B0D031: LdPrVar
  loc_B0D033: LateMemCall
  loc_B0D039: FFreeStr var_A8 = ""
  loc_B0D040: FFree1Ad var_114
  loc_B0D043: FFreeVar var_BC = ""
  loc_B0D04A: LitVarStr var_94, "   </th>"
  loc_B0D04F: PopAdLdVar
  loc_B0D050: FLdPr Me
  loc_B0D053: MemLdRfVar from_stack_1.global_64
  loc_B0D056: LdPrVar
  loc_B0D058: LateMemCall
  loc_B0D05E: LitVarStr var_94, "  </tr>"
  loc_B0D063: PopAdLdVar
  loc_B0D064: FLdPr Me
  loc_B0D067: MemLdRfVar from_stack_1.global_64
  loc_B0D06A: LdPrVar
  loc_B0D06C: LateMemCall
  loc_B0D072: LitVarStr var_94, "  <tr align=""left""><th align=""justify"" colspan=""2"" >"
  loc_B0D077: PopAdLdVar
  loc_B0D078: FLdPr Me
  loc_B0D07B: MemLdRfVar from_stack_1.global_64
  loc_B0D07E: LdPrVar
  loc_B0D080: LateMemCall
  loc_B0D086: LitVarStr var_94, "        Cargados por: <span class=""Normal"">"
  loc_B0D08B: PopAdLdVar
  loc_B0D08C: FLdPr Me
  loc_B0D08F: MemLdRfVar from_stack_1.global_64
  loc_B0D092: LdPrVar
  loc_B0D094: LateMemCall
  loc_B0D09A: FLdPr Me
  loc_B0D09D: VCallAd Control_ID_CodiUsuaList
  loc_B0D0A0: FStAdFunc var_120
  loc_B0D0A3: LitI2_Byte 0
  loc_B0D0A5: FLdRfVar var_116
  loc_B0D0A8: FLdRfVar var_BE
  loc_B0D0AB: FLdPr var_120
  loc_B0D0AE:  = Me.ListCount
  loc_B0D0B3: FLdI2 var_BE
  loc_B0D0B6: LitI2_Byte 1
  loc_B0D0B8: SubI2
  loc_B0D0B9: ForI2 var_124
  loc_B0D0BF: FLdRfVar var_BE
  loc_B0D0C2: FLdI2 var_116
  loc_B0D0C5: FLdPr var_120
  loc_B0D0C8:  = Me.Selected
  loc_B0D0CD: FLdI2 var_BE
  loc_B0D0D0: BranchF loc_B0D0F9
  loc_B0D0D3: ILdRf var_11C
  loc_B0D0D6: FLdRfVar var_A8
  loc_B0D0D9: FLdI2 var_116
  loc_B0D0DC: FLdPr var_120
  loc_B0D0DF: from_stack_2 = Me.List(from_stack_1)
  loc_B0D0E4: ILdRf var_A8
  loc_B0D0E7: ConcatStr
  loc_B0D0E8: FStStrNoPop var_AC
  loc_B0D0EB: LitStr ", "
  loc_B0D0EE: ConcatStr
  loc_B0D0EF: FStStr var_11C
  loc_B0D0F2: FFreeStr var_A8 = ""
  loc_B0D0F9: FLdRfVar var_116
  loc_B0D0FC: NextI2 var_124, loc_B0D0BF
  loc_B0D101: ILdRf var_11C
  loc_B0D104: FnLenStr
  loc_B0D105: LitI4 2
  loc_B0D10A: SubI4
  loc_B0D10B: ILdRf var_11C
  loc_B0D10E: ImpAdCallI2 Left$(, )
  loc_B0D113: FStStrNoPop var_A8
  loc_B0D116: LitStr "."
  loc_B0D119: ConcatStr
  loc_B0D11A: CVarStr var_BC
  loc_B0D11D: PopAdLdVar
  loc_B0D11E: FLdPr Me
  loc_B0D121: MemLdRfVar from_stack_1.global_64
  loc_B0D124: LdPrVar
  loc_B0D126: LateMemCall
  loc_B0D12C: FFree1Str var_A8
  loc_B0D12F: FFree1Var var_BC = ""
  loc_B0D132: LitNothing
  loc_B0D134: FStAd var_120 
  loc_B0D138: LitVarStr var_94, "                                                                                 </span></th></tr>"
  loc_B0D13D: PopAdLdVar
  loc_B0D13E: FLdPr Me
  loc_B0D141: MemLdRfVar from_stack_1.global_64
  loc_B0D144: LdPrVar
  loc_B0D146: LateMemCall
  loc_B0D14C: LitVarStr var_94, "</table>"
  loc_B0D151: PopAdLdVar
  loc_B0D152: FLdPr Me
  loc_B0D155: MemLdRfVar from_stack_1.global_64
  loc_B0D158: LdPrVar
  loc_B0D15A: LateMemCall
  loc_B0D160: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_B0D165: PopAdLdVar
  loc_B0D166: FLdPr Me
  loc_B0D169: MemLdRfVar from_stack_1.global_64
  loc_B0D16C: LdPrVar
  loc_B0D16E: LateMemCall
  loc_B0D174: LitVarStr var_94, "  <THEAD>"
  loc_B0D179: PopAdLdVar
  loc_B0D17A: FLdPr Me
  loc_B0D17D: MemLdRfVar from_stack_1.global_64
  loc_B0D180: LdPrVar
  loc_B0D182: LateMemCall
  loc_B0D188: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_B0D18D: PopAdLdVar
  loc_B0D18E: FLdPr Me
  loc_B0D191: MemLdRfVar from_stack_1.global_64
  loc_B0D194: LdPrVar
  loc_B0D196: LateMemCall
  loc_B0D19C: LitVarStr var_94, "    <th colspan=""4"">Nota de Pedido</th>"
  loc_B0D1A1: PopAdLdVar
  loc_B0D1A2: FLdPr Me
  loc_B0D1A5: MemLdRfVar from_stack_1.global_64
  loc_B0D1A8: LdPrVar
  loc_B0D1AA: LateMemCall
  loc_B0D1B0: LitVarStr var_94, "    <th colspan=""2"">Orden de Compra</th>"
  loc_B0D1B5: PopAdLdVar
  loc_B0D1B6: FLdPr Me
  loc_B0D1B9: MemLdRfVar from_stack_1.global_64
  loc_B0D1BC: LdPrVar
  loc_B0D1BE: LateMemCall
  loc_B0D1C4: LitVarStr var_94, "    <th rowspan=""2"">D&iacute;as</th>"
  loc_B0D1C9: PopAdLdVar
  loc_B0D1CA: FLdPr Me
  loc_B0D1CD: MemLdRfVar from_stack_1.global_64
  loc_B0D1D0: LdPrVar
  loc_B0D1D2: LateMemCall
  loc_B0D1D8: LitVarStr var_94, "    <th rowspan=""2"">Cumpli&oacute;</th>"
  loc_B0D1DD: PopAdLdVar
  loc_B0D1DE: FLdPr Me
  loc_B0D1E1: MemLdRfVar from_stack_1.global_64
  loc_B0D1E4: LdPrVar
  loc_B0D1E6: LateMemCall
  loc_B0D1EC: LitVarStr var_94, "  </tr>"
  loc_B0D1F1: PopAdLdVar
  loc_B0D1F2: FLdPr Me
  loc_B0D1F5: MemLdRfVar from_stack_1.global_64
  loc_B0D1F8: LdPrVar
  loc_B0D1FA: LateMemCall
  loc_B0D200: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_B0D205: PopAdLdVar
  loc_B0D206: FLdPr Me
  loc_B0D209: MemLdRfVar from_stack_1.global_64
  loc_B0D20C: LdPrVar
  loc_B0D20E: LateMemCall
  loc_B0D214: LitVarStr var_94, "    <th>Fecha</th>"
  loc_B0D219: PopAdLdVar
  loc_B0D21A: FLdPr Me
  loc_B0D21D: MemLdRfVar from_stack_1.global_64
  loc_B0D220: LdPrVar
  loc_B0D222: LateMemCall
  loc_B0D228: LitVarStr var_94, "    <th>Nº</th>"
  loc_B0D22D: PopAdLdVar
  loc_B0D22E: FLdPr Me
  loc_B0D231: MemLdRfVar from_stack_1.global_64
  loc_B0D234: LdPrVar
  loc_B0D236: LateMemCall
  loc_B0D23C: LitVarStr var_94, "    <th>Expediente</th>"
  loc_B0D241: PopAdLdVar
  loc_B0D242: FLdPr Me
  loc_B0D245: MemLdRfVar from_stack_1.global_64
  loc_B0D248: LdPrVar
  loc_B0D24A: LateMemCall
  loc_B0D250: LitVarStr var_94, "    <th>Usuario</th>"
  loc_B0D255: PopAdLdVar
  loc_B0D256: FLdPr Me
  loc_B0D259: MemLdRfVar from_stack_1.global_64
  loc_B0D25C: LdPrVar
  loc_B0D25E: LateMemCall
  loc_B0D264: LitVarStr var_94, "    <th>Nº</th>"
  loc_B0D269: PopAdLdVar
  loc_B0D26A: FLdPr Me
  loc_B0D26D: MemLdRfVar from_stack_1.global_64
  loc_B0D270: LdPrVar
  loc_B0D272: LateMemCall
  loc_B0D278: LitVarStr var_94, "    <th>Fecha</th>"
  loc_B0D27D: PopAdLdVar
  loc_B0D27E: FLdPr Me
  loc_B0D281: MemLdRfVar from_stack_1.global_64
  loc_B0D284: LdPrVar
  loc_B0D286: LateMemCall
  loc_B0D28C: LitVarStr var_94, "  </tr>"
  loc_B0D291: PopAdLdVar
  loc_B0D292: FLdPr Me
  loc_B0D295: MemLdRfVar from_stack_1.global_64
  loc_B0D298: LdPrVar
  loc_B0D29A: LateMemCall
  loc_B0D2A0: LitVarStr var_94, "  </THEAD>"
  loc_B0D2A5: PopAdLdVar
  loc_B0D2A6: FLdPr Me
  loc_B0D2A9: MemLdRfVar from_stack_1.global_64
  loc_B0D2AC: LdPrVar
  loc_B0D2AE: LateMemCall
  loc_B0D2B4: ExitProcHresult
End Function

Private Function Proc_214_24_971724() '971724
  'Data Table: 497DF4
  loc_9716F8: LitVarStr var_94, "</body>"
  loc_9716FD: PopAdLdVar
  loc_9716FE: FLdPr Me
  loc_971701: MemLdRfVar from_stack_1.global_64
  loc_971704: LdPrVar
  loc_971706: LateMemCall
  loc_97170C: LitVarStr var_94, "</html>"
  loc_971711: PopAdLdVar
  loc_971712: FLdPr Me
  loc_971715: MemLdRfVar from_stack_1.global_64
  loc_971718: LdPrVar
  loc_97171A: LateMemCall
  loc_971720: ExitProcHresult
  loc_971721: ILdRf arg_77FF
End Function
