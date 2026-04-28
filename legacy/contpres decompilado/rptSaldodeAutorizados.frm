VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptSaldodeAutorizados
  Caption = "Saldo de Autorizados"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptSaldodeAutorizados.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 8070
  ClientHeight = 4590
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 4335
    Width = 8070
    Height = 255
    TabIndex = 20
    OleObjectBlob = "rptSaldodeAutorizados.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 6840
    Top = 3360
    Width = 735
    Height = 615
    TabIndex = 18
    Cancel = -1  'True
    Picture = "rptSaldodeAutorizados.frx":094A
    Style = 1
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptSaldodeAutorizados.frx":0B9C
    Left = 360
    Top = 240
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 3120
    Width = 3135
    Height = 1095
    TabIndex = 15
    Begin VB.CommandButton cmdXLS
      Caption = "&XLS"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      Enabled = 0   'False
      TabIndex = 17
    End
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 16
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 3120
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
    Width = 7815
    Height = 3015
    TabIndex = 0
    Begin VB.CheckBox ChkSoloPartidasenRojo
      Caption = "Solo Partidas en Rojo"
      Left = 1800
      Top = 2400
      Width = 1935
      Height = 255
      TabIndex = 11
    End
    Begin VB.CommandButton cmdCodiPart
      Left = 3240
      Top = 1440
      Width = 375
      Height = 375
      TabIndex = 8
      Picture = "rptSaldodeAutorizados.frx":0C00
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CheckBox chkNotCodiPart
      Caption = "No comienzan con"
      Left = 1800
      Top = 1920
      Width = 1815
      Height = 255
      TabIndex = 10
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 6240
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 3
    End
    Begin VB.ComboBox cboPeriodo
      Style = 2
      ForeColor = &HFF0000&
      Left = 1815
      Top = 360
      Width = 975
      Height = 315
      TabIndex = 2
    End
    Begin VB.ComboBox cboMes
      Style = 2
      ForeColor = &HFF0000&
      Left = 1815
      Top = 840
      Width = 1455
      Height = 315
      TabIndex = 5
    End
    Begin MSMask.MaskEdBox CodiPartMsk
      Left = 1800
      Top = 1440
      Width = 1335
      Height = 285
      TabIndex = 7
      OleObjectBlob = "rptSaldodeAutorizados.frx":0CFA
    End
    Begin VB.Label Label5
      Caption = "Partida:"
      Left = 1080
      Top = 1440
      Width = 615
      Height = 315
      TabIndex = 6
    End
    Begin VB.Label CodiPartLbl
      Left = 3720
      Top = 1440
      Width = 3855
      Height = 375
      TabIndex = 9
      BorderStyle = 1 'Fixed Single
    End
    Begin VB.Label Label2
      Caption = "Mes:"
      Left = 1335
      Top = 840
      Width = 345
      Height = 195
      TabIndex = 4
      AutoSize = -1  'True
    End
    Begin VB.Label Label1
      Caption = "Periodo:"
      Left = 1095
      Top = 360
      Width = 585
      Height = 195
      TabIndex = 1
      AutoSize = -1  'True
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 7080
    Top = 3480
    Width = 495
    Height = 375
    TabStop = 0   'False
    TabIndex = 19
    OleObjectBlob = "rptSaldodeAutorizados.frx":0D5A
  End
End

Attribute VB_Name = "rptSaldodeAutorizados"

Public htmFile As Variant
Public bLogos As Boolean
Public bGenerado As Boolean


Private Sub cmdPredeterminada_Click() '95DA78
  'Data Table: 4825EC
  loc_95DA60: ILdRf Me
  loc_95DA63: CastAd
  loc_95DA66: FStAdFunc var_88
  loc_95DA69: FLdRfVar var_88
  loc_95DA6C: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_95DA71: FFree1Ad var_88
  loc_95DA74: ExitProcHresult
End Sub

Private Sub cboMes_Validate(Cancel As Boolean) '9B6214
  'Data Table: 4825EC
  loc_9B616C: FLdRfVar var_8C
  loc_9B616F: FLdPr Me
  loc_9B6172: VCallAd Control_ID_cboPeriodo
  loc_9B6175: FStAdFunc var_88
  loc_9B6178: FLdPr var_88
  loc_9B617B:  = Me.Text
  loc_9B6180: FLdRfVar var_92
  loc_9B6183: FLdPr Me
  loc_9B6186: VCallAd Control_ID_cboMes
  loc_9B6189: FStAdFunc var_90
  loc_9B618C: FLdPr var_90
  loc_9B618F:  = Me.ListIndex
  loc_9B6194: FLdRfVar var_9C
  loc_9B6197: FLdI2 var_92
  loc_9B619A: FLdPr Me
  loc_9B619D: VCallAd Control_ID_cboMes
  loc_9B61A0: FStAdFunc var_98
  loc_9B61A3: FLdPr var_98
  loc_9B61A6:  = Me.ItemData
  loc_9B61AB: ILdRf var_9C
  loc_9B61AE: CUI1I4
  loc_9B61B0: ILdRf var_8C
  loc_9B61B3: CI2Str
  loc_9B61B5: ImpAdCallI2 Proc_266_31_9BB10C(, )
  loc_9B61BA: FStStrNoPop var_A0
  loc_9B61BD: FLdPr Me
  loc_9B61C0: MemStStrCopy
  loc_9B61C4: FFreeStr var_8C = ""
  loc_9B61CB: FFreeAd var_88 = "": var_90 = ""
  loc_9B61D4: FLdPr Me
  loc_9B61D7: VCallAd Control_ID_cboMes
  loc_9B61DA: FStAdFunc var_A4
  loc_9B61DD: LitNothing
  loc_9B61DF: CastAd
  loc_9B61E2: FStAdFunc var_98
  loc_9B61E5: FLdRfVar var_98
  loc_9B61E8: FLdZeroAd var_A4
  loc_9B61EB: FStAdFuncNoPop
  loc_9B61EE: CastAd
  loc_9B61F1: FStAdFunc var_90
  loc_9B61F4: FLdRfVar var_90
  loc_9B61F7: FLdPr Me
  loc_9B61FA: MemLdRfVar from_stack_1.global_88
  loc_9B61FD: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9B6202: IStI2 Cancel
  loc_9B6205: FFreeAd var_88 = "": var_90 = "": var_98 = ""
  loc_9B6210: ExitProcHresult
  loc_9B6211: IStI2 arg_3A1
End Sub

Private Sub cmdSalir_Click() '97ADE8
  'Data Table: 4825EC
  loc_97ADB8: LitVarStr var_94, "Cerrando..."
  loc_97ADBD: PopAdLdVar
  loc_97ADBE: FLdPr Me
  loc_97ADC1: VCallAd Control_ID_statusBar
  loc_97ADC4: FStAdFunc var_A8
  loc_97ADC7: FLdPr var_A8
  loc_97ADCA: LateIdSt
  loc_97ADCF: FFree1Ad var_A8
  loc_97ADD2: ILdRf Me
  loc_97ADD5: FStAdNoPop
  loc_97ADD9: ImpAdLdRf MemVar_C44F9C
  loc_97ADDC: NewIfNullPr Me
  loc_97ADDF: Me.Global.Unload from_stack_1
  loc_97ADE4: FFree1Ad var_A8
  loc_97ADE7: ExitProcHresult
End Sub

Private Sub chkNotCodiPart_Click() '941D8C
  'Data Table: 4825EC
  loc_941D80: LitI2_Byte 0
  loc_941D82: PopTmpLdAd2 var_86
  loc_941D85: Call CodiPartMsk_UnknownEvent_8()
  loc_941D8A: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '95DB10
  'Data Table: 4825EC
  loc_95DAF8: LitI2_Byte 0
  loc_95DAFA: ILdRf Me
  loc_95DAFD: CastAd
  loc_95DB00: FStAdFunc var_88
  loc_95DB03: FLdRfVar var_88
  loc_95DB06: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_95DB0B: FFree1Ad var_88
  loc_95DB0E: ExitProcHresult
End Sub

Private Sub cmdXLS_Click() '96A9AC
  'Data Table: 4825EC
  loc_96A990: LitI2_Byte &HFF
  loc_96A992: LitI2_Byte 0
  loc_96A994: ILdRf Me
  loc_96A997: CastAd
  loc_96A99A: FStAdFunc var_88
  loc_96A99D: FLdRfVar var_88
  loc_96A9A0: ImpAdCallFPR4 Proc_263_4_A28DF0(, , )
  loc_96A9A5: FFree1Ad var_88
  loc_96A9A8: ExitProcHresult
  loc_96A9A9: ILdFPR4 arg_569
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '98AACC
  'Data Table: 4825EC
  loc_98AA94: FLdPr Me
  loc_98AA97: VCallAd Control_ID_statusBar
  loc_98AA9A: FStAdFunc var_88
  loc_98AA9D: FLdPr var_88
  loc_98AAA0: LateIdLdVar var_98 DispID_1 0
  loc_98AAA7: CStrVarTmp
  loc_98AAA8: CVarStr var_A8
  loc_98AAAB: PopAdLdVar
  loc_98AAAC: FLdPr Me
  loc_98AAAF: VCallAd Control_ID_statusBar
  loc_98AAB2: FStAdFunc var_BC
  loc_98AAB5: FLdPr var_BC
  loc_98AAB8: LateIdSt
  loc_98AABD: FFreeAd var_88 = ""
  loc_98AAC4: FFreeVar var_98 = ""
  loc_98AACB: ExitProcHresult
End Sub

Private Sub CodiPartMsk_UnknownEvent_0 '94F728
  'Data Table: 4825EC
  loc_94F714: FLdPr Me
  loc_94F717: VCallAd Control_ID_CodiPartMsk
  loc_94F71A: CVarAd
  loc_94F71E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94F723: FFree1Var var_94 = ""
  loc_94F726: ExitProcHresult
End Sub

Private Sub CodiPartMsk_UnknownEvent_8 'A2C738
  'Data Table: 4825EC
  loc_A2C584: FLdRfVar var_9A
  loc_A2C587: FLdPr Me
  loc_A2C58A: VCallAd Control_ID_chkNotCodiPart
  loc_A2C58D: FStAdFunc var_98
  loc_A2C590: FLdPr var_98
  loc_A2C593:  = Me.Value
  loc_A2C598: LitStr "SELECT DetaPart FROM partida WHERE PeriInfo = "
  loc_A2C59B: FLdRfVar var_90
  loc_A2C59E: FLdPr Me
  loc_A2C5A1: VCallAd Control_ID_cboPeriodo
  loc_A2C5A4: FStAdFunc var_8C
  loc_A2C5A7: FLdPr var_8C
  loc_A2C5AA:  = Me.Text
  loc_A2C5AF: ILdRf var_90
  loc_A2C5B2: ConcatStr
  loc_A2C5B3: FStStrNoPop var_94
  loc_A2C5B6: LitStr " AND CodiPart "
  loc_A2C5B9: ConcatStr
  loc_A2C5BA: CVarStr var_10C
  loc_A2C5BD: LitVarStr var_DC, vbNullString
  loc_A2C5C2: FStVarCopyObj var_EC
  loc_A2C5C5: FLdRfVar var_EC
  loc_A2C5C8: LitVarStr var_BC, "NOT"
  loc_A2C5CD: FStVarCopyObj var_CC
  loc_A2C5D0: FLdRfVar var_CC
  loc_A2C5D3: FLdI2 var_9A
  loc_A2C5D6: CI4UI1
  loc_A2C5D7: LitI4 1
  loc_A2C5DC: EqI4
  loc_A2C5DD: CVarBoolI2 var_AC
  loc_A2C5E1: FLdRfVar var_FC
  loc_A2C5E4: ImpAdCallFPR4  = IIf(, , )
  loc_A2C5E9: FLdRfVar var_FC
  loc_A2C5EC: ConcatVar var_11C
  loc_A2C5F0: LitVarStr var_12C, " LIKE '"
  loc_A2C5F5: ConcatVar var_13C
  loc_A2C5F9: FLdPr Me
  loc_A2C5FC: VCallAd Control_ID_CodiPartMsk
  loc_A2C5FF: FStAdFunc var_140
  loc_A2C602: FLdPr var_140
  loc_A2C605: LateIdLdVar var_150 DispID_22 0
  loc_A2C60C: CStrVarTmp
  loc_A2C60D: CVarStr var_160
  loc_A2C610: ConcatVar var_170
  loc_A2C614: LitVarStr var_180, Chr(37) & "'"
  loc_A2C619: ConcatVar var_190
  loc_A2C61D: CStrVarVal var_194
  loc_A2C621: FLdRfVar var_88
  loc_A2C624: NewIfNullPr clspartida
  loc_A2C627: Call clspartida.RedefineRS(from_stack_1v)
  loc_A2C62C: FFreeStr var_90 = "": var_94 = ""
  loc_A2C635: FFreeAd var_8C = "": var_98 = ""
  loc_A2C63E: FFreeVar var_AC = "": var_CC = "": var_EC = "": var_10C = "": var_FC = "": var_11C = "": var_150 = "": var_13C = "": var_160 = "": var_170 = ""
  loc_A2C657: FLdRfVar var_198
  loc_A2C65A: FLdRfVar var_88
  loc_A2C65D: NewIfNullPr clspartida
  loc_A2C660: from_stack_1 = clspartida.RecordCount
  loc_A2C665: ILdRf var_198
  loc_A2C668: FStR4 var_19C
  loc_A2C66B: ILdRf var_19C
  loc_A2C66E: LitI4 0
  loc_A2C673: EqI4
  loc_A2C674: BranchF loc_A2C691
  loc_A2C677: LitStr "0 registros encontrados"
  loc_A2C67A: FLdPr Me
  loc_A2C67D: VCallAd Control_ID_CodiPartLbl
  loc_A2C680: FStAdFunc var_8C
  loc_A2C683: FLdPr var_8C
  loc_A2C686: Me.Caption = from_stack_1
  loc_A2C68B: FFree1Ad var_8C
  loc_A2C68E: Branch loc_A2C736
  loc_A2C691: ILdRf var_19C
  loc_A2C694: LitI4 1
  loc_A2C699: EqI4
  loc_A2C69A: BranchF loc_A2C6FE
  loc_A2C69D: FLdRfVar var_CC
  loc_A2C6A0: FLdRfVar var_140
  loc_A2C6A3: LitVarStr var_AC, "DetaPart"
  loc_A2C6A8: PopAdLdVar
  loc_A2C6A9: FLdRfVar var_98
  loc_A2C6AC: FLdRfVar var_8C
  loc_A2C6AF: FLdRfVar var_88
  loc_A2C6B2: NewIfNullPr clspartida
  loc_A2C6B5: from_stack_1v = clspartida.RsFrmGet()
  loc_A2C6BA: FLdPr var_8C
  loc_A2C6BD:  = Me.Fields
  loc_A2C6C2: FLdPr var_98
  loc_A2C6C5: from_stack_2 = Me.Item(from_stack_1)
  loc_A2C6CA: FLdPr var_140
  loc_A2C6CD:  = Me.Value
  loc_A2C6D2: FLdRfVar var_CC
  loc_A2C6D5: CStrVarTmp
  loc_A2C6D6: FStStrNoPop var_90
  loc_A2C6D9: FLdPr Me
  loc_A2C6DC: VCallAd Control_ID_CodiPartLbl
  loc_A2C6DF: FStAdFunc var_1A0
  loc_A2C6E2: FLdPr var_1A0
  loc_A2C6E5: Me.Caption = from_stack_1
  loc_A2C6EA: FFree1Str var_90
  loc_A2C6ED: FFreeAd var_8C = "": var_98 = "": var_140 = ""
  loc_A2C6F8: FFree1Var var_CC = ""
  loc_A2C6FB: Branch loc_A2C736
  loc_A2C6FE: FLdRfVar var_198
  loc_A2C701: FLdRfVar var_88
  loc_A2C704: NewIfNullPr clspartida
  loc_A2C707: from_stack_1 = clspartida.RecordCount
  loc_A2C70C: ILdRf var_198
  loc_A2C70F: CStrI4
  loc_A2C711: FStStrNoPop var_90
  loc_A2C714: LitStr " partidas encontradas"
  loc_A2C717: ConcatStr
  loc_A2C718: FStStrNoPop var_94
  loc_A2C71B: FLdPr Me
  loc_A2C71E: VCallAd Control_ID_CodiPartLbl
  loc_A2C721: FStAdFunc var_8C
  loc_A2C724: FLdPr var_8C
  loc_A2C727: Me.Caption = from_stack_1
  loc_A2C72C: FFreeStr var_90 = ""
  loc_A2C733: FFree1Ad var_8C
  loc_A2C736: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '95D9E0
  'Data Table: 4825EC
  loc_95D9C8: ILdRf Me
  loc_95D9CB: CastAd
  loc_95D9CE: FStAdFunc var_88
  loc_95D9D1: FLdRfVar var_88
  loc_95D9D4: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_95D9D9: FFree1Ad var_88
  loc_95D9DC: ExitProcHresult
  loc_95D9DD: FFree1Ad cmdPrevia_ClickB9
End Sub

Private Sub cmdCodiPart_Click() '9F8CC8
  'Data Table: 4825EC
  loc_9F8B8C: LitNothing
  loc_9F8B8E: CastAd
  loc_9F8B91: FStAdFuncNoPop
  loc_9F8B94: ImpAdLdRf MemVar_C3D724
  loc_9F8B97: NewIfNullPr bscPartida
  loc_9F8B9A: Call bscPartida.global_4332396Set(from_stack_1v)
  loc_9F8B9F: FFree1Ad var_88
  loc_9F8BA2: LitVar_Missing var_A8
  loc_9F8BA5: PopAdLdVar
  loc_9F8BA6: LitVarI4
  loc_9F8BAE: PopAdLdVar
  loc_9F8BAF: ImpAdLdRf MemVar_C3D724
  loc_9F8BB2: NewIfNullPr bscPartida
  loc_9F8BB5: bscPartida.Show from_stack_1, from_stack_2
  loc_9F8BBA: FLdRfVar var_AC
  loc_9F8BBD: FLdRfVar var_88
  loc_9F8BC0: ImpAdLdRf MemVar_C3D724
  loc_9F8BC3: NewIfNullPr bscPartida
  loc_9F8BC6: from_stack_1v = bscPartida.global_4332396Get()
  loc_9F8BCB: FLdPr var_88
  loc_9F8BCE: from_stack_1 = clsbase.RecordCount
  loc_9F8BD3: ILdRf var_AC
  loc_9F8BD6: LitI4 0
  loc_9F8BDB: GtI4
  loc_9F8BDC: FFree1Ad var_88
  loc_9F8BDF: BranchF loc_9F8CBA
  loc_9F8BE2: FLdRfVar var_C8
  loc_9F8BE5: FLdRfVar var_B8
  loc_9F8BE8: LitVarStr var_98, "CodiPart"
  loc_9F8BED: PopAdLdVar
  loc_9F8BEE: FLdRfVar var_B4
  loc_9F8BF1: FLdRfVar var_B0
  loc_9F8BF4: FLdRfVar var_88
  loc_9F8BF7: ImpAdLdRf MemVar_C3D724
  loc_9F8BFA: NewIfNullPr bscPartida
  loc_9F8BFD: from_stack_1v = bscPartida.global_4332396Get()
  loc_9F8C02: FLdPr var_88
  loc_9F8C05: from_stack_1v = clsbase.RsFrmGet()
  loc_9F8C0A: FLdPr var_B0
  loc_9F8C0D:  = Me.Fields
  loc_9F8C12: FLdPr var_B4
  loc_9F8C15: from_stack_2 = Me.Item(from_stack_1)
  loc_9F8C1A: FLdPr var_B8
  loc_9F8C1D:  = Me.Value
  loc_9F8C22: FLdRfVar var_C8
  loc_9F8C25: CStrVarTmp
  loc_9F8C26: CVarStr var_D8
  loc_9F8C29: PopAdLdVar
  loc_9F8C2A: FLdPr Me
  loc_9F8C2D: VCallAd Control_ID_CodiPartMsk
  loc_9F8C30: FStAdFunc var_DC
  loc_9F8C33: FLdPr var_DC
  loc_9F8C36: LateIdSt
  loc_9F8C3B: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9F8C48: FFreeVar var_C8 = ""
  loc_9F8C4F: FLdRfVar var_C8
  loc_9F8C52: FLdRfVar var_B8
  loc_9F8C55: LitVarStr var_98, "DetaPart"
  loc_9F8C5A: PopAdLdVar
  loc_9F8C5B: FLdRfVar var_B4
  loc_9F8C5E: FLdRfVar var_B0
  loc_9F8C61: FLdRfVar var_88
  loc_9F8C64: ImpAdLdRf MemVar_C3D724
  loc_9F8C67: NewIfNullPr bscPartida
  loc_9F8C6A: from_stack_1v = bscPartida.global_4332396Get()
  loc_9F8C6F: FLdPr var_88
  loc_9F8C72: from_stack_1v = clsbase.RsFrmGet()
  loc_9F8C77: FLdPr var_B0
  loc_9F8C7A:  = Me.Fields
  loc_9F8C7F: FLdPr var_B4
  loc_9F8C82: from_stack_2 = Me.Item(from_stack_1)
  loc_9F8C87: FLdPr var_B8
  loc_9F8C8A:  = Me.Value
  loc_9F8C8F: FLdRfVar var_C8
  loc_9F8C92: CStrVarTmp
  loc_9F8C93: FStStrNoPop var_E0
  loc_9F8C96: FLdPr Me
  loc_9F8C99: VCallAd Control_ID_CodiPartLbl
  loc_9F8C9C: FStAdFunc var_DC
  loc_9F8C9F: FLdPr var_DC
  loc_9F8CA2: Me.Caption = from_stack_1
  loc_9F8CA7: FFree1Str var_E0
  loc_9F8CAA: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9F8CB7: FFree1Var var_C8 = ""
  loc_9F8CBA: LitI2_Byte 0
  loc_9F8CBC: PopTmpLdAd2 var_E2
  loc_9F8CBF: Call CodiPartMsk_UnknownEvent_8()
  loc_9F8CC4: ExitProcHresult
End Sub

Private Sub cboPeriodo_Click() '93F6D8
  'Data Table: 4825EC
  loc_93F6D4: ExitProcHresult
  loc_93F6D5: Ary1LdI2
  loc_93F6D6: BranchFVar
End Sub

Private Sub Form_Load() 'A11D44
  'Data Table: 4825EC
  loc_A11BD0: LitVarStr var_94, "#.#.#.#.##.##"
  loc_A11BD5: PopAdLdVar
  loc_A11BD6: FLdPr Me
  loc_A11BD9: VCallAd Control_ID_CodiPartMsk
  loc_A11BDC: FStAdFunc var_A8
  loc_A11BDF: FLdPr var_A8
  loc_A11BE2: LateIdSt
  loc_A11BE7: FFree1Ad var_A8
  loc_A11BEA: LitI2_Byte &HFF
  loc_A11BEC: ImpAdStI2 MemVar_C3D840
  loc_A11BEF: ILdRf Me
  loc_A11BF2: CastAd
  loc_A11BF5: FStAdFunc var_A8
  loc_A11BF8: FLdRfVar var_A8
  loc_A11BFB: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_A11C00: FFree1Ad var_A8
  loc_A11C03: LitStr "SELECT * FROM infogov.periodo ORDER BY PeriInfo;"
  loc_A11C06: FLdPr Me
  loc_A11C09: MemLdRfVar from_stack_1.global_72
  loc_A11C0C: NewIfNullPr clsbase
  loc_A11C0F: Call clsbase.RedefineRS(from_stack_1v)
  loc_A11C14: FLdRfVar var_B0
  loc_A11C17: FLdPr Me
  loc_A11C1A: MemLdRfVar from_stack_1.global_72
  loc_A11C1D: NewIfNullPr clsbase
  loc_A11C20: from_stack_1 = clsbase.RecordCount
  loc_A11C25: ILdRf var_B0
  loc_A11C28: LitI4 0
  loc_A11C2D: GtI4
  loc_A11C2E: BranchF loc_A11CCD
  loc_A11C31: FLdPr Me
  loc_A11C34: MemLdRfVar from_stack_1.global_72
  loc_A11C37: NewIfNullPr clsbase
  loc_A11C3A: Call clsbase.MoveFirst()
  loc_A11C3F: FLdRfVar var_B2
  loc_A11C42: FLdPr Me
  loc_A11C45: MemLdRfVar from_stack_1.global_72
  loc_A11C48: NewIfNullPr clsbase
  loc_A11C4B: from_stack_1 = clsbase.EOF
  loc_A11C50: FLdI2 var_B2
  loc_A11C53: NotI4
  loc_A11C54: BranchF loc_A11CCD
  loc_A11C57: LitVar_Missing var_A4
  loc_A11C5A: PopAdLdVar
  loc_A11C5B: FLdRfVar var_CC
  loc_A11C5E: FLdRfVar var_BC
  loc_A11C61: LitVarStr var_94, "PeriInfo"
  loc_A11C66: PopAdLdVar
  loc_A11C67: FLdRfVar var_B8
  loc_A11C6A: FLdRfVar var_A8
  loc_A11C6D: FLdPr Me
  loc_A11C70: MemLdRfVar from_stack_1.global_72
  loc_A11C73: NewIfNullPr clsbase
  loc_A11C76: from_stack_1v = clsbase.RsFrmGet()
  loc_A11C7B: FLdPr var_A8
  loc_A11C7E:  = Me.Fields
  loc_A11C83: FLdPr var_B8
  loc_A11C86: from_stack_2 = Me.Item(from_stack_1)
  loc_A11C8B: FLdPr var_BC
  loc_A11C8E:  = Me.Value
  loc_A11C93: FLdRfVar var_CC
  loc_A11C96: CStrVarTmp
  loc_A11C97: FStStrNoPop var_D0
  loc_A11C9A: FLdPr Me
  loc_A11C9D: VCallAd Control_ID_cboPeriodo
  loc_A11CA0: FStAdFunc var_D4
  loc_A11CA3: FLdPr var_D4
  loc_A11CA6: Me.AddItem from_stack_1, from_stack_2
  loc_A11CAB: FFree1Str var_D0
  loc_A11CAE: FFreeAd var_A8 = "": var_B8 = "": var_BC = ""
  loc_A11CB9: FFree1Var var_CC = ""
  loc_A11CBC: FLdPr Me
  loc_A11CBF: MemLdRfVar from_stack_1.global_72
  loc_A11CC2: NewIfNullPr clsbase
  loc_A11CC5: Call clsbase.MoveSiguiente()
  loc_A11CCA: Branch loc_A11C3F
  loc_A11CCD: LitI2_Byte 1
  loc_A11CCF: FLdRfVar var_AA
  loc_A11CD2: LitI2_Byte &HC
  loc_A11CD4: ForI2 var_D8
  loc_A11CDA: LitVar_Missing var_94
  loc_A11CDD: PopAdLdVar
  loc_A11CDE: LitI2_Byte 0
  loc_A11CE0: FLdI2 var_AA
  loc_A11CE3: CI4UI1
  loc_A11CE4: ImpAdCallI2 MonthName(, )
  loc_A11CE9: FStStrNoPop var_D0
  loc_A11CEC: FLdPr Me
  loc_A11CEF: VCallAd Control_ID_cboMes
  loc_A11CF2: FStAdFunc var_A8
  loc_A11CF5: FLdPr var_A8
  loc_A11CF8: Me.AddItem from_stack_1, from_stack_2
  loc_A11CFD: FFree1Str var_D0
  loc_A11D00: FFree1Ad var_A8
  loc_A11D03: FLdI2 var_AA
  loc_A11D06: CI4UI1
  loc_A11D07: FLdRfVar var_B2
  loc_A11D0A: FLdPr Me
  loc_A11D0D: VCallAd Control_ID_cboMes
  loc_A11D10: FStAdFunc var_A8
  loc_A11D13: FLdPr var_A8
  loc_A11D16:  = Me.NewIndex
  loc_A11D1B: FLdI2 var_B2
  loc_A11D1E: FLdPr Me
  loc_A11D21: VCallAd Control_ID_cboMes
  loc_A11D24: FStAdFunc var_B8
  loc_A11D27: FLdPr var_B8
  loc_A11D2A: Me.ItemData = from_stack_1
  loc_A11D2F: FFreeAd var_A8 = ""
  loc_A11D36: FLdRfVar var_AA
  loc_A11D39: NextI2 var_D8, loc_A11CDA
  loc_A11D3E: Call cmdNueva_Click()
  loc_A11D43: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '95D7CC
  'Data Table: 4825EC
  loc_95D7B4: FLdPr Me
  loc_95D7B7: VCallAd Control_ID_wbbReporte
  loc_95D7BA: FStAdFunc var_88
  loc_95D7BD: FLdRfVar var_88
  loc_95D7C0: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_95D7C5: FFree1Ad var_88
  loc_95D7C8: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() '9C8DC8
  'Data Table: 4825EC
  loc_9C8CF0: LitI2_Byte 0
  loc_9C8CF2: FLdPr Me
  loc_9C8CF5: MemStI2 bGenerado
  loc_9C8CF8: LitI2_Byte &HFF
  loc_9C8CFA: FLdPr Me
  loc_9C8CFD: MemStI2 bLogos
  loc_9C8D00: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_9C8D05: ImpAdLdI2 MemVar_C3D064
  loc_9C8D08: CStrUI1
  loc_9C8D0A: FStStrNoPop var_88
  loc_9C8D0D: FLdPr Me
  loc_9C8D10: VCallAd Control_ID_cboPeriodo
  loc_9C8D13: FStAdFunc var_8C
  loc_9C8D16: FLdPr var_8C
  loc_9C8D19: Me.Text = from_stack_1
  loc_9C8D1E: FFree1Str var_88
  loc_9C8D21: FFree1Ad var_8C
  loc_9C8D24: LitI2_Byte 0
  loc_9C8D26: PopTmpLdAd2 var_8E
  loc_9C8D29: ImpAdCallFPR4 Proc_261_32_A53D7C()
  loc_9C8D2E: CVarDate var_B0
  loc_9C8D32: FLdRfVar var_C0
  loc_9C8D35: ImpAdCallFPR4  = Month()
  loc_9C8D3A: FLdRfVar var_C0
  loc_9C8D3D: LitVarI2 var_D0, 1
  loc_9C8D42: SubVar var_E0
  loc_9C8D46: CI2Var
  loc_9C8D47: FLdPr Me
  loc_9C8D4A: VCallAd Control_ID_cboMes
  loc_9C8D4D: FStAdFunc var_8C
  loc_9C8D50: FLdPr var_8C
  loc_9C8D53: Me.ListIndex = from_stack_1
  loc_9C8D58: FFree1Ad var_8C
  loc_9C8D5B: FFreeVar var_B0 = ""
  loc_9C8D62: LitStr vbNullString
  loc_9C8D65: FLdPr Me
  loc_9C8D68: VCallAd Control_ID_CodiPartLbl
  loc_9C8D6B: FStAdFunc var_8C
  loc_9C8D6E: FLdPr var_8C
  loc_9C8D71: Me.Caption = from_stack_1
  loc_9C8D76: FFree1Ad var_8C
  loc_9C8D79: LitI4 0
  loc_9C8D7E: CI2I4
  loc_9C8D7F: FLdPr Me
  loc_9C8D82: VCallAd Control_ID_chkNotCodiPart
  loc_9C8D85: FStAdFunc var_8C
  loc_9C8D88: FLdPr var_8C
  loc_9C8D8B: Me.Value = from_stack_1
  loc_9C8D90: FFree1Ad var_8C
  loc_9C8D93: LitI4 0
  loc_9C8D98: CI2I4
  loc_9C8D99: FLdPr Me
  loc_9C8D9C: VCallAd Control_ID_ChkSoloPartidasenRojo
  loc_9C8D9F: FStAdFunc var_8C
  loc_9C8DA2: FLdPr var_8C
  loc_9C8DA5: Me.Value = from_stack_1
  loc_9C8DAA: FFree1Ad var_8C
  loc_9C8DAD: Call HabilitarCriterio()
  loc_9C8DB2: ILdRf Me
  loc_9C8DB5: CastAd
  loc_9C8DB8: FStAdFunc var_8C
  loc_9C8DBB: FLdRfVar var_8C
  loc_9C8DBE: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_9C8DC3: FFree1Ad var_8C
  loc_9C8DC6: ExitProcHresult
End Sub

Public Function htmFileGet() '4835C4
  htmFileGet = htmFile
End Function

Public Sub htmFilePut(Value) '4835D3
  htmFile = Value
End Sub

Public Sub htmFileSet(Value) '4835E2
  htmFile = Value
End Sub

Public Function bLogosGet() '4835F1
  bLogosGet = bLogos
End Function

Public Sub bLogosPut(Value) '483600
  bLogos = Value
End Sub

Public Function bGeneradoGet() '48360F
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '48361E
  bGenerado = Value
End Sub

Public Sub GeneraHTML() 'B143FC
  'Data Table: 4825EC
  loc_B13B8C: FLdRfVar var_8C
  loc_B13B8F: LitI2_Byte 0
  loc_B13B91: LitI2_Byte &HFF
  loc_B13B93: ImpAdLdI4 MemVar_C3D83C
  loc_B13B96: FLdPr Me
  loc_B13B99: MemLdRfVar from_stack_1.global_80
  loc_B13B9C: NewIfNullPr IFileSystem3
  loc_B13B9F: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_B13BA4: ILdRf var_8C
  loc_B13BA7: FLdPr Me
  loc_B13BAA: MemStVarAd
  loc_B13BAE: FFree1Ad var_8C
  loc_B13BB1: Call Proc_236_26_A95888()
  loc_B13BB6: FLdPr Me
  loc_B13BB9: MemLdRfVar from_stack_1.global_76
  loc_B13BBC: NewIfNullPr clsbase
  loc_B13BBF: Call clsbase.MoveFirst()
  loc_B13BC4: FLdRfVar var_8E
  loc_B13BC7: FLdPr Me
  loc_B13BCA: MemLdRfVar from_stack_1.global_76
  loc_B13BCD: NewIfNullPr clsbase
  loc_B13BD0: from_stack_1 = clsbase.EOF
  loc_B13BD5: FLdI2 var_8E
  loc_B13BD8: NotI4
  loc_B13BD9: BranchF loc_B143E1
  loc_B13BDC: FLdPr Me
  loc_B13BDF: MemLdRfVar from_stack_1.global_76
  loc_B13BE2: NewIfNullAd
  loc_B13BE5: FStAd var_94 
  loc_B13BE9: FLdRfVar var_BC
  loc_B13BEC: FLdRfVar var_AC
  loc_B13BEF: LitVarStr var_A8, "CodiOrga"
  loc_B13BF4: PopAdLdVar
  loc_B13BF5: FLdRfVar var_98
  loc_B13BF8: FLdRfVar var_8C
  loc_B13BFB: FLdPr var_94
  loc_B13BFE: from_stack_1v = clsbase.RsFrmGet()
  loc_B13C03: FLdPr var_8C
  loc_B13C06:  = Me.Fields
  loc_B13C0B: FLdPr var_98
  loc_B13C0E: from_stack_2 = Me.Item(from_stack_1)
  loc_B13C13: FLdPr var_AC
  loc_B13C16:  = Me.Value
  loc_B13C1B: FLdRfVar var_BC
  loc_B13C1E: ILdRf var_88
  loc_B13C21: CVarStr var_CC
  loc_B13C24: HardType
  loc_B13C25: NeVarBool
  loc_B13C27: FFreeAd var_8C = "": var_98 = ""
  loc_B13C30: FFree1Var var_BC = ""
  loc_B13C33: BranchF loc_B13E02
  loc_B13C36: LitVarStr var_A8, "    <tr valign=""top"" class=""Totales2"">"
  loc_B13C3B: PopAdLdVar
  loc_B13C3C: FLdPr Me
  loc_B13C3F: MemLdRfVar from_stack_1.htmFile
  loc_B13C42: LdPrVar
  loc_B13C44: LateMemCall
  loc_B13C4A: FLdRfVar var_BC
  loc_B13C4D: FLdRfVar var_AC
  loc_B13C50: LitVarStr var_A8, "CodiOrga"
  loc_B13C55: PopAdLdVar
  loc_B13C56: FLdRfVar var_98
  loc_B13C59: FLdRfVar var_8C
  loc_B13C5C: FLdPr var_94
  loc_B13C5F: from_stack_1v = clsbase.RsFrmGet()
  loc_B13C64: FLdPr var_8C
  loc_B13C67:  = Me.Fields
  loc_B13C6C: FLdPr var_98
  loc_B13C6F: from_stack_2 = Me.Item(from_stack_1)
  loc_B13C74: FLdPr var_AC
  loc_B13C77:  = Me.Value
  loc_B13C7C: FLdRfVar var_108
  loc_B13C7F: FLdRfVar var_F8
  loc_B13C82: LitVarStr var_F4, "DetaOrga"
  loc_B13C87: PopAdLdVar
  loc_B13C88: FLdRfVar var_E4
  loc_B13C8B: FLdRfVar var_E0
  loc_B13C8E: FLdPr var_94
  loc_B13C91: from_stack_1v = clsbase.RsFrmGet()
  loc_B13C96: FLdPr var_E0
  loc_B13C99:  = Me.Fields
  loc_B13C9E: FLdPr var_E4
  loc_B13CA1: from_stack_2 = Me.Item(from_stack_1)
  loc_B13CA6: FLdPr var_F8
  loc_B13CA9:  = Me.Value
  loc_B13CAE: LitStr "<td colspan=""10"" align=""left"">"
  loc_B13CB1: LitI2_Byte 0
  loc_B13CB3: LitVar_Missing var_138
  loc_B13CB6: LitI2_Byte 0
  loc_B13CB8: FLdRfVar var_BC
  loc_B13CBB: LitVarStr var_CC, " - "
  loc_B13CC0: ConcatVar var_DC
  loc_B13CC4: FLdRfVar var_108
  loc_B13CC7: ConcatVar var_118
  loc_B13CCB: PopAdLdVar
  loc_B13CCC: ImpAdCallI2 Proc_261_20_A10BF8(, , , , , , )
  loc_B13CD1: FStStrNoPop var_13C
  loc_B13CD4: ConcatStr
  loc_B13CD5: FStStrNoPop var_140
  loc_B13CD8: LitStr "</td>"
  loc_B13CDB: ConcatStr
  loc_B13CDC: CVarStr var_150
  loc_B13CDF: PopAdLdVar
  loc_B13CE0: FLdPr Me
  loc_B13CE3: MemLdRfVar from_stack_1.htmFile
  loc_B13CE6: LdPrVar
  loc_B13CE8: LateMemCall
  loc_B13CEE: FFreeStr var_13C = ""
  loc_B13CF5: FFreeAd var_8C = "": var_98 = "": var_AC = "": var_E0 = "": var_E4 = ""
  loc_B13D04: FFreeVar var_BC = "": var_DC = "": var_108 = "": var_118 = "": var_138 = ""
  loc_B13D13: LitVarStr var_A8, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B13D18: PopAdLdVar
  loc_B13D19: FLdPr Me
  loc_B13D1C: MemLdRfVar from_stack_1.htmFile
  loc_B13D1F: LdPrVar
  loc_B13D21: LateMemCall
  loc_B13D27: FLdRfVar var_BC
  loc_B13D2A: FLdRfVar var_AC
  loc_B13D2D: LitVarStr var_A8, "CodiPart"
  loc_B13D32: PopAdLdVar
  loc_B13D33: FLdRfVar var_98
  loc_B13D36: FLdRfVar var_8C
  loc_B13D39: FLdPr var_94
  loc_B13D3C: from_stack_1v = clsbase.RsFrmGet()
  loc_B13D41: FLdPr var_8C
  loc_B13D44:  = Me.Fields
  loc_B13D49: FLdPr var_98
  loc_B13D4C: from_stack_2 = Me.Item(from_stack_1)
  loc_B13D51: FLdPr var_AC
  loc_B13D54:  = Me.Value
  loc_B13D59: FLdRfVar var_108
  loc_B13D5C: FLdRfVar var_F8
  loc_B13D5F: LitVarStr var_F4, "DetaPart"
  loc_B13D64: PopAdLdVar
  loc_B13D65: FLdRfVar var_E4
  loc_B13D68: FLdRfVar var_E0
  loc_B13D6B: FLdPr var_94
  loc_B13D6E: from_stack_1v = clsbase.RsFrmGet()
  loc_B13D73: FLdPr var_E0
  loc_B13D76:  = Me.Fields
  loc_B13D7B: FLdPr var_E4
  loc_B13D7E: from_stack_2 = Me.Item(from_stack_1)
  loc_B13D83: FLdPr var_F8
  loc_B13D86:  = Me.Value
  loc_B13D8B: LitI2_Byte 0
  loc_B13D8D: LitVar_Missing var_138
  loc_B13D90: LitI2_Byte 0
  loc_B13D92: FLdRfVar var_BC
  loc_B13D95: LitVarStr var_CC, " - "
  loc_B13D9A: ConcatVar var_DC
  loc_B13D9E: FLdRfVar var_108
  loc_B13DA1: ConcatVar var_118
  loc_B13DA5: PopAdLdVar
  loc_B13DA6: ImpAdCallI2 Proc_261_20_A10BF8(, , , , , , )
  loc_B13DAB: FStStr var_140
  loc_B13DAE: LitI4 0
  loc_B13DB3: LitI4 0
  loc_B13DB8: LitI2_Byte 0
  loc_B13DBA: LitStr "left"
  loc_B13DBD: FLdZeroAd var_140
  loc_B13DC0: FStStrNoPop var_13C
  loc_B13DC3: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B13DC8: CVarStr var_150
  loc_B13DCB: PopAdLdVar
  loc_B13DCC: FLdPr Me
  loc_B13DCF: MemLdRfVar from_stack_1.htmFile
  loc_B13DD2: LdPrVar
  loc_B13DD4: LateMemCall
  loc_B13DDA: FFreeStr var_13C = ""
  loc_B13DE1: FFreeAd var_8C = "": var_98 = "": var_AC = "": var_E0 = "": var_E4 = ""
  loc_B13DF0: FFreeVar var_BC = "": var_DC = "": var_108 = "": var_118 = "": var_138 = ""
  loc_B13DFF: Branch loc_B13EEE
  loc_B13E02: LitVarStr var_A8, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B13E07: PopAdLdVar
  loc_B13E08: FLdPr Me
  loc_B13E0B: MemLdRfVar from_stack_1.htmFile
  loc_B13E0E: LdPrVar
  loc_B13E10: LateMemCall
  loc_B13E16: FLdRfVar var_BC
  loc_B13E19: FLdRfVar var_AC
  loc_B13E1C: LitVarStr var_A8, "CodiPart"
  loc_B13E21: PopAdLdVar
  loc_B13E22: FLdRfVar var_98
  loc_B13E25: FLdRfVar var_8C
  loc_B13E28: FLdPr var_94
  loc_B13E2B: from_stack_1v = clsbase.RsFrmGet()
  loc_B13E30: FLdPr var_8C
  loc_B13E33:  = Me.Fields
  loc_B13E38: FLdPr var_98
  loc_B13E3B: from_stack_2 = Me.Item(from_stack_1)
  loc_B13E40: FLdPr var_AC
  loc_B13E43:  = Me.Value
  loc_B13E48: FLdRfVar var_108
  loc_B13E4B: FLdRfVar var_F8
  loc_B13E4E: LitVarStr var_F4, "DetaPart"
  loc_B13E53: PopAdLdVar
  loc_B13E54: FLdRfVar var_E4
  loc_B13E57: FLdRfVar var_E0
  loc_B13E5A: FLdPr var_94
  loc_B13E5D: from_stack_1v = clsbase.RsFrmGet()
  loc_B13E62: FLdPr var_E0
  loc_B13E65:  = Me.Fields
  loc_B13E6A: FLdPr var_E4
  loc_B13E6D: from_stack_2 = Me.Item(from_stack_1)
  loc_B13E72: FLdPr var_F8
  loc_B13E75:  = Me.Value
  loc_B13E7A: LitI2_Byte 0
  loc_B13E7C: LitVar_Missing var_138
  loc_B13E7F: LitI2_Byte 0
  loc_B13E81: FLdRfVar var_BC
  loc_B13E84: LitVarStr var_CC, " - "
  loc_B13E89: ConcatVar var_DC
  loc_B13E8D: FLdRfVar var_108
  loc_B13E90: ConcatVar var_118
  loc_B13E94: PopAdLdVar
  loc_B13E95: ImpAdCallI2 Proc_261_20_A10BF8(, , , , , , )
  loc_B13E9A: FStStr var_140
  loc_B13E9D: LitI4 0
  loc_B13EA2: LitI4 0
  loc_B13EA7: LitI2_Byte 0
  loc_B13EA9: LitStr "left"
  loc_B13EAC: FLdZeroAd var_140
  loc_B13EAF: FStStrNoPop var_13C
  loc_B13EB2: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B13EB7: CVarStr var_150
  loc_B13EBA: PopAdLdVar
  loc_B13EBB: FLdPr Me
  loc_B13EBE: MemLdRfVar from_stack_1.htmFile
  loc_B13EC1: LdPrVar
  loc_B13EC3: LateMemCall
  loc_B13EC9: FFreeStr var_13C = ""
  loc_B13ED0: FFreeAd var_8C = "": var_98 = "": var_AC = "": var_E0 = "": var_E4 = ""
  loc_B13EDF: FFreeVar var_BC = "": var_DC = "": var_108 = "": var_118 = "": var_138 = ""
  loc_B13EEE: FLdRfVar var_AC
  loc_B13EF1: LitVarStr var_A8, "AutoAuto"
  loc_B13EF6: PopAdLdVar
  loc_B13EF7: FLdRfVar var_98
  loc_B13EFA: FLdRfVar var_8C
  loc_B13EFD: FLdPr var_94
  loc_B13F00: from_stack_1v = clsbase.RsFrmGet()
  loc_B13F05: FLdPr var_8C
  loc_B13F08:  = Me.Fields
  loc_B13F0D: FLdPr var_98
  loc_B13F10: from_stack_2 = Me.Item(from_stack_1)
  loc_B13F15: LitI2_Byte 0
  loc_B13F17: LitVar_Missing var_DC
  loc_B13F1A: LitI2_Byte &HFF
  loc_B13F1C: FLdZeroAd var_AC
  loc_B13F1F: CVarAd
  loc_B13F23: PopAdLdVar
  loc_B13F24: ImpAdCallI2 Proc_261_20_A10BF8(, , , , , , )
  loc_B13F29: FStStr var_140
  loc_B13F2C: LitI4 0
  loc_B13F31: LitI4 0
  loc_B13F36: LitI2_Byte 0
  loc_B13F38: LitStr "right"
  loc_B13F3B: FLdZeroAd var_140
  loc_B13F3E: FStStrNoPop var_13C
  loc_B13F41: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B13F46: CVarStr var_108
  loc_B13F49: PopAdLdVar
  loc_B13F4A: FLdPr Me
  loc_B13F4D: MemLdRfVar from_stack_1.htmFile
  loc_B13F50: LdPrVar
  loc_B13F52: LateMemCall
  loc_B13F58: FFreeStr var_13C = ""
  loc_B13F5F: FFreeAd var_8C = ""
  loc_B13F66: FFreeVar var_BC = "": var_DC = ""
  loc_B13F6F: FLdRfVar var_AC
  loc_B13F72: LitVarStr var_A8, "AumeAuto"
  loc_B13F77: PopAdLdVar
  loc_B13F78: FLdRfVar var_98
  loc_B13F7B: FLdRfVar var_8C
  loc_B13F7E: FLdPr var_94
  loc_B13F81: from_stack_1v = clsbase.RsFrmGet()
  loc_B13F86: FLdPr var_8C
  loc_B13F89:  = Me.Fields
  loc_B13F8E: FLdPr var_98
  loc_B13F91: from_stack_2 = Me.Item(from_stack_1)
  loc_B13F96: LitI2_Byte 0
  loc_B13F98: LitVar_Missing var_DC
  loc_B13F9B: LitI2_Byte &HFF
  loc_B13F9D: FLdZeroAd var_AC
  loc_B13FA0: CVarAd
  loc_B13FA4: PopAdLdVar
  loc_B13FA5: ImpAdCallI2 Proc_261_20_A10BF8(, , , , , , )
  loc_B13FAA: FStStr var_140
  loc_B13FAD: LitI4 0
  loc_B13FB2: LitI4 0
  loc_B13FB7: LitI2_Byte 0
  loc_B13FB9: LitStr "right"
  loc_B13FBC: FLdZeroAd var_140
  loc_B13FBF: FStStrNoPop var_13C
  loc_B13FC2: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B13FC7: CVarStr var_108
  loc_B13FCA: PopAdLdVar
  loc_B13FCB: FLdPr Me
  loc_B13FCE: MemLdRfVar from_stack_1.htmFile
  loc_B13FD1: LdPrVar
  loc_B13FD3: LateMemCall
  loc_B13FD9: FFreeStr var_13C = ""
  loc_B13FE0: FFreeAd var_8C = ""
  loc_B13FE7: FFreeVar var_BC = "": var_DC = ""
  loc_B13FF0: FLdRfVar var_AC
  loc_B13FF3: LitVarStr var_A8, "DismAuto"
  loc_B13FF8: PopAdLdVar
  loc_B13FF9: FLdRfVar var_98
  loc_B13FFC: FLdRfVar var_8C
  loc_B13FFF: FLdPr var_94
  loc_B14002: from_stack_1v = clsbase.RsFrmGet()
  loc_B14007: FLdPr var_8C
  loc_B1400A:  = Me.Fields
  loc_B1400F: FLdPr var_98
  loc_B14012: from_stack_2 = Me.Item(from_stack_1)
  loc_B14017: LitI2_Byte 0
  loc_B14019: LitVar_Missing var_DC
  loc_B1401C: LitI2_Byte &HFF
  loc_B1401E: FLdZeroAd var_AC
  loc_B14021: CVarAd
  loc_B14025: PopAdLdVar
  loc_B14026: ImpAdCallI2 Proc_261_20_A10BF8(, , , , , , )
  loc_B1402B: FStStr var_140
  loc_B1402E: LitI4 0
  loc_B14033: LitI4 0
  loc_B14038: LitI2_Byte 0
  loc_B1403A: LitStr "right"
  loc_B1403D: FLdZeroAd var_140
  loc_B14040: FStStrNoPop var_13C
  loc_B14043: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B14048: CVarStr var_108
  loc_B1404B: PopAdLdVar
  loc_B1404C: FLdPr Me
  loc_B1404F: MemLdRfVar from_stack_1.htmFile
  loc_B14052: LdPrVar
  loc_B14054: LateMemCall
  loc_B1405A: FFreeStr var_13C = ""
  loc_B14061: FFreeAd var_8C = ""
  loc_B14068: FFreeVar var_BC = "": var_DC = ""
  loc_B14071: FLdRfVar var_AC
  loc_B14074: LitVarStr var_A8, "CreditoAutorizado"
  loc_B14079: PopAdLdVar
  loc_B1407A: FLdRfVar var_98
  loc_B1407D: FLdRfVar var_8C
  loc_B14080: FLdPr var_94
  loc_B14083: from_stack_1v = clsbase.RsFrmGet()
  loc_B14088: FLdPr var_8C
  loc_B1408B:  = Me.Fields
  loc_B14090: FLdPr var_98
  loc_B14093: from_stack_2 = Me.Item(from_stack_1)
  loc_B14098: LitI2_Byte 0
  loc_B1409A: LitVar_Missing var_DC
  loc_B1409D: LitI2_Byte &HFF
  loc_B1409F: FLdZeroAd var_AC
  loc_B140A2: CVarAd
  loc_B140A6: PopAdLdVar
  loc_B140A7: ImpAdCallI2 Proc_261_20_A10BF8(, , , , , , )
  loc_B140AC: FStStr var_140
  loc_B140AF: LitI4 0
  loc_B140B4: LitI4 0
  loc_B140B9: LitI2_Byte 0
  loc_B140BB: LitStr "right"
  loc_B140BE: FLdZeroAd var_140
  loc_B140C1: FStStrNoPop var_13C
  loc_B140C4: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B140C9: CVarStr var_108
  loc_B140CC: PopAdLdVar
  loc_B140CD: FLdPr Me
  loc_B140D0: MemLdRfVar from_stack_1.htmFile
  loc_B140D3: LdPrVar
  loc_B140D5: LateMemCall
  loc_B140DB: FFreeStr var_13C = ""
  loc_B140E2: FFreeAd var_8C = ""
  loc_B140E9: FFreeVar var_BC = "": var_DC = ""
  loc_B140F2: FLdRfVar var_AC
  loc_B140F5: LitVarStr var_A8, "PrevImpu"
  loc_B140FA: PopAdLdVar
  loc_B140FB: FLdRfVar var_98
  loc_B140FE: FLdRfVar var_8C
  loc_B14101: FLdPr var_94
  loc_B14104: from_stack_1v = clsbase.RsFrmGet()
  loc_B14109: FLdPr var_8C
  loc_B1410C:  = Me.Fields
  loc_B14111: FLdPr var_98
  loc_B14114: from_stack_2 = Me.Item(from_stack_1)
  loc_B14119: LitI2_Byte 0
  loc_B1411B: LitVar_Missing var_DC
  loc_B1411E: LitI2_Byte &HFF
  loc_B14120: FLdZeroAd var_AC
  loc_B14123: CVarAd
  loc_B14127: PopAdLdVar
  loc_B14128: ImpAdCallI2 Proc_261_20_A10BF8(, , , , , , )
  loc_B1412D: FStStr var_140
  loc_B14130: LitI4 0
  loc_B14135: LitI4 0
  loc_B1413A: LitI2_Byte 0
  loc_B1413C: LitStr "right"
  loc_B1413F: FLdZeroAd var_140
  loc_B14142: FStStrNoPop var_13C
  loc_B14145: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B1414A: CVarStr var_108
  loc_B1414D: PopAdLdVar
  loc_B1414E: FLdPr Me
  loc_B14151: MemLdRfVar from_stack_1.htmFile
  loc_B14154: LdPrVar
  loc_B14156: LateMemCall
  loc_B1415C: FFreeStr var_13C = ""
  loc_B14163: FFreeAd var_8C = ""
  loc_B1416A: FFreeVar var_BC = "": var_DC = ""
  loc_B14173: FLdRfVar var_AC
  loc_B14176: LitVarStr var_A8, "SaldoAutorizados"
  loc_B1417B: PopAdLdVar
  loc_B1417C: FLdRfVar var_98
  loc_B1417F: FLdRfVar var_8C
  loc_B14182: FLdPr var_94
  loc_B14185: from_stack_1v = clsbase.RsFrmGet()
  loc_B1418A: FLdPr var_8C
  loc_B1418D:  = Me.Fields
  loc_B14192: FLdPr var_98
  loc_B14195: from_stack_2 = Me.Item(from_stack_1)
  loc_B1419A: LitI2_Byte 0
  loc_B1419C: LitVar_Missing var_DC
  loc_B1419F: LitI2_Byte &HFF
  loc_B141A1: FLdZeroAd var_AC
  loc_B141A4: CVarAd
  loc_B141A8: PopAdLdVar
  loc_B141A9: ImpAdCallI2 Proc_261_20_A10BF8(, , , , , , )
  loc_B141AE: FStStr var_140
  loc_B141B1: LitI4 0
  loc_B141B6: LitI4 0
  loc_B141BB: LitI2_Byte 0
  loc_B141BD: LitStr "right"
  loc_B141C0: FLdZeroAd var_140
  loc_B141C3: FStStrNoPop var_13C
  loc_B141C6: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B141CB: CVarStr var_108
  loc_B141CE: PopAdLdVar
  loc_B141CF: FLdPr Me
  loc_B141D2: MemLdRfVar from_stack_1.htmFile
  loc_B141D5: LdPrVar
  loc_B141D7: LateMemCall
  loc_B141DD: FFreeStr var_13C = ""
  loc_B141E4: FFreeAd var_8C = ""
  loc_B141EB: FFreeVar var_BC = "": var_DC = ""
  loc_B141F4: FLdRfVar var_AC
  loc_B141F7: LitVarStr var_A8, "PromedioMensual"
  loc_B141FC: PopAdLdVar
  loc_B141FD: FLdRfVar var_98
  loc_B14200: FLdRfVar var_8C
  loc_B14203: FLdPr var_94
  loc_B14206: from_stack_1v = clsbase.RsFrmGet()
  loc_B1420B: FLdPr var_8C
  loc_B1420E:  = Me.Fields
  loc_B14213: FLdPr var_98
  loc_B14216: from_stack_2 = Me.Item(from_stack_1)
  loc_B1421B: LitI2_Byte 0
  loc_B1421D: LitVar_Missing var_DC
  loc_B14220: LitI2_Byte &HFF
  loc_B14222: FLdZeroAd var_AC
  loc_B14225: CVarAd
  loc_B14229: PopAdLdVar
  loc_B1422A: ImpAdCallI2 Proc_261_20_A10BF8(, , , , , , )
  loc_B1422F: FStStr var_140
  loc_B14232: LitI4 0
  loc_B14237: LitI4 0
  loc_B1423C: LitI2_Byte 0
  loc_B1423E: LitStr "right"
  loc_B14241: FLdZeroAd var_140
  loc_B14244: FStStrNoPop var_13C
  loc_B14247: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B1424C: CVarStr var_108
  loc_B1424F: PopAdLdVar
  loc_B14250: FLdPr Me
  loc_B14253: MemLdRfVar from_stack_1.htmFile
  loc_B14256: LdPrVar
  loc_B14258: LateMemCall
  loc_B1425E: FFreeStr var_13C = ""
  loc_B14265: FFreeAd var_8C = ""
  loc_B1426C: FFreeVar var_BC = "": var_DC = ""
  loc_B14275: FLdRfVar var_AC
  loc_B14278: LitVarStr var_A8, "ProyectadoAnual"
  loc_B1427D: PopAdLdVar
  loc_B1427E: FLdRfVar var_98
  loc_B14281: FLdRfVar var_8C
  loc_B14284: FLdPr var_94
  loc_B14287: from_stack_1v = clsbase.RsFrmGet()
  loc_B1428C: FLdPr var_8C
  loc_B1428F:  = Me.Fields
  loc_B14294: FLdPr var_98
  loc_B14297: from_stack_2 = Me.Item(from_stack_1)
  loc_B1429C: LitI2_Byte 0
  loc_B1429E: LitVar_Missing var_DC
  loc_B142A1: LitI2_Byte &HFF
  loc_B142A3: FLdZeroAd var_AC
  loc_B142A6: CVarAd
  loc_B142AA: PopAdLdVar
  loc_B142AB: ImpAdCallI2 Proc_261_20_A10BF8(, , , , , , )
  loc_B142B0: FStStr var_140
  loc_B142B3: LitI4 0
  loc_B142B8: LitI4 0
  loc_B142BD: LitI2_Byte 0
  loc_B142BF: LitStr "right"
  loc_B142C2: FLdZeroAd var_140
  loc_B142C5: FStStrNoPop var_13C
  loc_B142C8: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B142CD: CVarStr var_108
  loc_B142D0: PopAdLdVar
  loc_B142D1: FLdPr Me
  loc_B142D4: MemLdRfVar from_stack_1.htmFile
  loc_B142D7: LdPrVar
  loc_B142D9: LateMemCall
  loc_B142DF: FFreeStr var_13C = ""
  loc_B142E6: FFreeAd var_8C = ""
  loc_B142ED: FFreeVar var_BC = "": var_DC = ""
  loc_B142F6: FLdRfVar var_AC
  loc_B142F9: LitVarStr var_A8, "diferencia"
  loc_B142FE: PopAdLdVar
  loc_B142FF: FLdRfVar var_98
  loc_B14302: FLdRfVar var_8C
  loc_B14305: FLdPr var_94
  loc_B14308: from_stack_1v = clsbase.RsFrmGet()
  loc_B1430D: FLdPr var_8C
  loc_B14310:  = Me.Fields
  loc_B14315: FLdPr var_98
  loc_B14318: from_stack_2 = Me.Item(from_stack_1)
  loc_B1431D: LitI2_Byte 0
  loc_B1431F: LitVar_Missing var_DC
  loc_B14322: LitI2_Byte &HFF
  loc_B14324: FLdZeroAd var_AC
  loc_B14327: CVarAd
  loc_B1432B: PopAdLdVar
  loc_B1432C: ImpAdCallI2 Proc_261_20_A10BF8(, , , , , , )
  loc_B14331: FStStr var_140
  loc_B14334: LitI4 0
  loc_B14339: LitI4 0
  loc_B1433E: LitI2_Byte 0
  loc_B14340: LitStr "right"
  loc_B14343: FLdZeroAd var_140
  loc_B14346: FStStrNoPop var_13C
  loc_B14349: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B1434E: CVarStr var_108
  loc_B14351: PopAdLdVar
  loc_B14352: FLdPr Me
  loc_B14355: MemLdRfVar from_stack_1.htmFile
  loc_B14358: LdPrVar
  loc_B1435A: LateMemCall
  loc_B14360: FFreeStr var_13C = ""
  loc_B14367: FFreeAd var_8C = ""
  loc_B1436E: FFreeVar var_BC = "": var_DC = ""
  loc_B14377: LitVarStr var_A8, "     </tr>"
  loc_B1437C: PopAdLdVar
  loc_B1437D: FLdPr Me
  loc_B14380: MemLdRfVar from_stack_1.htmFile
  loc_B14383: LdPrVar
  loc_B14385: LateMemCall
  loc_B1438B: FLdRfVar var_BC
  loc_B1438E: FLdRfVar var_AC
  loc_B14391: LitVarStr var_A8, "CodiOrga"
  loc_B14396: PopAdLdVar
  loc_B14397: FLdRfVar var_98
  loc_B1439A: FLdRfVar var_8C
  loc_B1439D: FLdPr var_94
  loc_B143A0: from_stack_1v = clsbase.RsFrmGet()
  loc_B143A5: FLdPr var_8C
  loc_B143A8:  = Me.Fields
  loc_B143AD: FLdPr var_98
  loc_B143B0: from_stack_2 = Me.Item(from_stack_1)
  loc_B143B5: FLdPr var_AC
  loc_B143B8:  = Me.Value
  loc_B143BD: FLdRfVar var_BC
  loc_B143C0: CStrVarTmp
  loc_B143C1: FStStr var_88
  loc_B143C4: FFreeAd var_8C = "": var_98 = ""
  loc_B143CD: FFree1Var var_BC = ""
  loc_B143D0: FLdPr var_94
  loc_B143D3: Call clsbase.MoveSiguiente()
  loc_B143D8: LitNothing
  loc_B143DA: FStAd var_94 
  loc_B143DE: Branch loc_B13BC4
  loc_B143E1: Call Proc_236_27_9828C0()
  loc_B143E6: FLdPr Me
  loc_B143E9: MemLdRfVar from_stack_1.htmFile
  loc_B143EC: LdPrVar
  loc_B143EE: LateMemCall
  loc_B143F4: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_B143F9: ExitProcHresult
End Sub

Public Sub GeneraXLS() '9522C4
  'Data Table: 4825EC
  loc_9522AC: LitI2_Byte 0
  loc_9522AE: FLdPr Me
  loc_9522B1: MemStI2 bLogos
  loc_9522B4: Call GeneraHTML()
  loc_9522B9: LitI2_Byte &HFF
  loc_9522BB: FLdPr Me
  loc_9522BE: MemStI2 bLogos
  loc_9522C1: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'A4C918
  'Data Table: 4825EC
  loc_A4C69C: OnErrorGoto loc_A4C8B5
  loc_A4C69F: LitStr vbNullString
  loc_A4C6A2: FLdPr Me
  loc_A4C6A5: MemStStrCopy
  loc_A4C6A9: LitI2_Byte 0
  loc_A4C6AB: PopTmpLdAd2 var_86
  loc_A4C6AE: Call cboMes_Validate(from_stack_1v)
  loc_A4C6B3: FLdPr Me
  loc_A4C6B6: MemLdStr global_88
  loc_A4C6B9: LitStr vbNullString
  loc_A4C6BC: NeStr
  loc_A4C6BE: BranchF loc_A4C6C4
  loc_A4C6C1: Branch loc_A4C88C
  loc_A4C6C4: FLdRfVar var_94
  loc_A4C6C7: FLdRfVar var_86
  loc_A4C6CA: FLdPr Me
  loc_A4C6CD: VCallAd Control_ID_cboMes
  loc_A4C6D0: FStAdFunc var_8C
  loc_A4C6D3: FLdPr var_8C
  loc_A4C6D6:  = Me.ListIndex
  loc_A4C6DB: FLdI2 var_86
  loc_A4C6DE: FLdPr Me
  loc_A4C6E1: VCallAd Control_ID_cboMes
  loc_A4C6E4: FStAdFunc var_90
  loc_A4C6E7: FLdPr var_90
  loc_A4C6EA:  = Me.ItemData
  loc_A4C6EF: ILdRf var_94
  loc_A4C6F2: CI2I4
  loc_A4C6F3: FLdPr Me
  loc_A4C6F6: MemStI2 global_92
  loc_A4C6F9: FFreeAd var_8C = ""
  loc_A4C700: FLdRfVar var_98
  loc_A4C703: FLdPr Me
  loc_A4C706: VCallAd Control_ID_cboPeriodo
  loc_A4C709: FStAdFunc var_8C
  loc_A4C70C: FLdPr var_8C
  loc_A4C70F:  = Me.Text
  loc_A4C714: ILdRf var_98
  loc_A4C717: CI2Str
  loc_A4C719: ImpAdCallI2 Proc_259_0_9B97D0()
  loc_A4C71E: CVarStr var_A8
  loc_A4C721: FLdRfVar var_B8
  loc_A4C724: ImpAdCallFPR4  = Month()
  loc_A4C729: LitVarStr var_118, "Definitivo"
  loc_A4C72E: FStVarCopyObj var_128
  loc_A4C731: FLdRfVar var_128
  loc_A4C734: LitVarStr var_F8, "Provisorio"
  loc_A4C739: FStVarCopyObj var_108
  loc_A4C73C: FLdRfVar var_108
  loc_A4C73F: FLdPr Me
  loc_A4C742: MemLdI2 global_92
  loc_A4C745: CVarI2 var_C8
  loc_A4C748: HardType
  loc_A4C749: FLdRfVar var_B8
  loc_A4C74C: GtVar var_D8
  loc_A4C750: FStVar var_E8
  loc_A4C754: FLdRfVar var_E8
  loc_A4C757: FLdRfVar var_138
  loc_A4C75A: ImpAdCallFPR4  = IIf(, , )
  loc_A4C75F: FLdRfVar var_138
  loc_A4C762: CStrVarTmp
  loc_A4C763: FStStrNoPop var_13C
  loc_A4C766: FLdPr Me
  loc_A4C769: MemStStrCopy
  loc_A4C76D: FFreeStr var_98 = ""
  loc_A4C774: FFree1Ad var_8C
  loc_A4C777: FFreeVar var_A8 = "": var_B8 = "": var_E8 = "": var_108 = "": var_128 = ""
  loc_A4C786: ImpAdLdRf MemVar_C3D03C
  loc_A4C789: CVarRef
  loc_A4C78E: FLdRfVar var_A8
  loc_A4C791: ImpAdCallFPR4  = Ucase()
  loc_A4C796: LitI4 3
  loc_A4C79B: FLdRfVar var_A8
  loc_A4C79E: FLdRfVar var_B8
  loc_A4C7A1: ImpAdCallFPR4  = Left(, )
  loc_A4C7A6: FLdRfVar var_B8
  loc_A4C7A9: LitVarStr var_F8, "HTC"
  loc_A4C7AE: HardType
  loc_A4C7AF: EqVar var_D8
  loc_A4C7B3: FLdPr Me
  loc_A4C7B6: MemLdStr global_96
  loc_A4C7B9: LitStr "Provisorio"
  loc_A4C7BC: EqStr
  loc_A4C7BE: CVarBoolI2 var_118
  loc_A4C7C2: AndVar var_E8
  loc_A4C7C6: CBoolVarNull
  loc_A4C7C8: FFreeVar var_A8 = "": var_B8 = ""
  loc_A4C7D1: BranchF loc_A4C7E4
  loc_A4C7D4: LitI4 0
  loc_A4C7D9: LitStr "La Contabilidad NO se encuentra Cerrada Definitiva. Verifique..."
  loc_A4C7DC: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A4C7E1: Branch loc_A4C88C
  loc_A4C7E4: FLdPr Me
  loc_A4C7E7: MemLdI2 bGenerado
  loc_A4C7EA: BranchF loc_A4C7EE
  loc_A4C7ED: ExitProcHresult
  loc_A4C7EE: LitVarStr var_C8, "Generando reporte..."
  loc_A4C7F3: PopAdLdVar
  loc_A4C7F4: FLdPr Me
  loc_A4C7F7: VCallAd Control_ID_statusBar
  loc_A4C7FA: FStAdFunc var_8C
  loc_A4C7FD: FLdPr var_8C
  loc_A4C800: LateIdSt
  loc_A4C805: FFree1Ad var_8C
  loc_A4C808: LitI4 &HB
  loc_A4C80D: CI2I4
  loc_A4C80E: FLdPr Me
  loc_A4C811: Me.MousePointer = from_stack_1
  loc_A4C816: FLdRfVar var_94
  loc_A4C819: FLdRfVar var_86
  loc_A4C81C: FLdPr Me
  loc_A4C81F: VCallAd Control_ID_cboMes
  loc_A4C822: FStAdFunc var_8C
  loc_A4C825: FLdPr var_8C
  loc_A4C828:  = Me.ListIndex
  loc_A4C82D: FLdI2 var_86
  loc_A4C830: FLdPr Me
  loc_A4C833: VCallAd Control_ID_cboMes
  loc_A4C836: FStAdFunc var_90
  loc_A4C839: FLdPr var_90
  loc_A4C83C:  = Me.ItemData
  loc_A4C841: ILdRf var_94
  loc_A4C844: CI2I4
  loc_A4C845: FLdPr Me
  loc_A4C848: MemStI2 global_84
  loc_A4C84B: FFreeAd var_8C = ""
  loc_A4C852: Call Proc_236_28_AAB410()
  loc_A4C857: FLdRfVar var_94
  loc_A4C85A: FLdPr Me
  loc_A4C85D: MemLdRfVar from_stack_1.global_76
  loc_A4C860: NewIfNullPr clsbase
  loc_A4C863: from_stack_1 = clsbase.RecordCount
  loc_A4C868: ILdRf var_94
  loc_A4C86B: LitI4 1
  loc_A4C870: LtI4
  loc_A4C871: BranchF loc_A4C884
  loc_A4C874: LitI4 0
  loc_A4C879: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_A4C87C: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A4C881: Branch loc_A4C88C
  loc_A4C884: LitI2_Byte &HFF
  loc_A4C886: FLdPr Me
  loc_A4C889: MemStI2 bGenerado
  loc_A4C88C: LitI4 0
  loc_A4C891: CI2I4
  loc_A4C892: FLdPr Me
  loc_A4C895: Me.MousePointer = from_stack_1
  loc_A4C89A: LitVarStr var_C8, vbNullString
  loc_A4C89F: PopAdLdVar
  loc_A4C8A0: FLdPr Me
  loc_A4C8A3: VCallAd Control_ID_statusBar
  loc_A4C8A6: FStAdFunc var_8C
  loc_A4C8A9: FLdPr var_8C
  loc_A4C8AC: LateIdSt
  loc_A4C8B1: FFree1Ad var_8C
  loc_A4C8B4: ExitProcHresult
  loc_A4C8B5: LitI4 0
  loc_A4C8BA: LitStr "Error "
  loc_A4C8BD: FLdRfVar var_94
  loc_A4C8C0: ImpAdCallI2 Err 'rtcErrObj
  loc_A4C8C5: FStAdFunc var_8C
  loc_A4C8C8: FLdPr var_8C
  loc_A4C8CB:  = Err.Number
  loc_A4C8D0: ILdRf var_94
  loc_A4C8D3: CStrI4
  loc_A4C8D5: FStStrNoPop var_98
  loc_A4C8D8: ConcatStr
  loc_A4C8D9: FStStrNoPop var_13C
  loc_A4C8DC: LitStr ": "
  loc_A4C8DF: ConcatStr
  loc_A4C8E0: FStStrNoPop var_144
  loc_A4C8E3: FLdRfVar var_140
  loc_A4C8E6: ImpAdCallI2 Err 'rtcErrObj
  loc_A4C8EB: FStAdFunc var_90
  loc_A4C8EE: FLdPr var_90
  loc_A4C8F1:  = Err.Description
  loc_A4C8F6: ILdRf var_140
  loc_A4C8F9: ConcatStr
  loc_A4C8FA: FStStrNoPop var_148
  loc_A4C8FD: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A4C902: FFreeStr var_98 = "": var_13C = "": var_144 = "": var_140 = ""
  loc_A4C90F: FFreeAd var_8C = ""
  loc_A4C916: ExitProcHresult
  loc_A4C917: ExitProcHresult
End Sub

Public Sub HabilitarCriterio() '9B523C
  'Data Table: 4825EC
  loc_9B51A8: LitI4 0
  loc_9B51AD: LitI4 6
  loc_9B51B2: FLdRfVar var_88
  loc_9B51B5: Redim
  loc_9B51BF: FLdPr Me
  loc_9B51C2: VCallAd Control_ID_cboPeriodo
  loc_9B51C5: CVarAd
  loc_9B51C9: ParmAry1St
  loc_9B51CF: FLdPr Me
  loc_9B51D2: VCallAd Control_ID_cboMes
  loc_9B51D5: CVarAd
  loc_9B51D9: ParmAry1St
  loc_9B51DF: FLdPr Me
  loc_9B51E2: VCallAd Control_ID_CodiPartMsk
  loc_9B51E5: CVarAd
  loc_9B51E9: ParmAry1St
  loc_9B51EF: FLdPr Me
  loc_9B51F2: VCallAd Control_ID_cmdCodiPart
  loc_9B51F5: CVarAd
  loc_9B51F9: ParmAry1St
  loc_9B51FF: FLdPr Me
  loc_9B5202: VCallAd Control_ID_CodiPartLbl
  loc_9B5205: CVarAd
  loc_9B5209: ParmAry1St
  loc_9B520F: FLdPr Me
  loc_9B5212: VCallAd Control_ID_chkNotCodiPart
  loc_9B5215: CVarAd
  loc_9B5219: ParmAry1St
  loc_9B521F: FLdPr Me
  loc_9B5222: VCallAd Control_ID_ChkSoloPartidasenRojo
  loc_9B5225: CVarAd
  loc_9B5229: ParmAry1St
  loc_9B522F: FLdRfVar var_88
  loc_9B5232: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9B5237: FLdRfVar var_88
  loc_9B523A: Erase
  loc_9B523B: ExitProcHresult
End Sub

Private Function Proc_236_26_A95888() 'A95888
  'Data Table: 4825EC
  loc_A953EC: LitVarStr var_94, "<html>"
  loc_A953F1: PopAdLdVar
  loc_A953F2: FLdPr Me
  loc_A953F5: MemLdRfVar from_stack_1.htmFile
  loc_A953F8: LdPrVar
  loc_A953FA: LateMemCall
  loc_A95400: LitVarStr var_94, "<head>"
  loc_A95405: PopAdLdVar
  loc_A95406: FLdPr Me
  loc_A95409: MemLdRfVar from_stack_1.htmFile
  loc_A9540C: LdPrVar
  loc_A9540E: LateMemCall
  loc_A95414: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_A95419: PopAdLdVar
  loc_A9541A: FLdPr Me
  loc_A9541D: MemLdRfVar from_stack_1.htmFile
  loc_A95420: LdPrVar
  loc_A95422: LateMemCall
  loc_A95428: LitStr "<title>"
  loc_A9542B: FLdRfVar var_A8
  loc_A9542E: FLdPr Me
  loc_A95431:  = Me.Caption
  loc_A95436: ILdRf var_A8
  loc_A95439: ConcatStr
  loc_A9543A: FStStrNoPop var_AC
  loc_A9543D: LitStr "</title>"
  loc_A95440: ConcatStr
  loc_A95441: CVarStr var_BC
  loc_A95444: PopAdLdVar
  loc_A95445: FLdPr Me
  loc_A95448: MemLdRfVar from_stack_1.htmFile
  loc_A9544B: LdPrVar
  loc_A9544D: LateMemCall
  loc_A95453: FFreeStr var_A8 = ""
  loc_A9545A: FFree1Var var_BC = ""
  loc_A9545D: LitStr vbNullString
  loc_A95460: ILdRf Me
  loc_A95463: CastAd
  loc_A95466: FStAdFunc var_C0
  loc_A95469: FLdRfVar var_C0
  loc_A9546C: ImpAdCallFPR4 Proc_263_23_B3DAB8(, )
  loc_A95471: FFree1Ad var_C0
  loc_A95474: LitI4 0
  loc_A95479: FStStrCopy var_AC
  loc_A9547C: FLdRfVar var_AC
  loc_A9547F: LitI4 0
  loc_A95484: FStStrCopy var_A8
  loc_A95487: FLdRfVar var_A8
  loc_A9548A: LitI2_Byte &HFF
  loc_A9548C: PopTmpLdAd2 var_C2
  loc_A9548F: FLdPr Me
  loc_A95492: MemLdRfVar from_stack_1.htmFile
  loc_A95495: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_A9549A: FFreeStr var_A8 = ""
  loc_A954A1: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_A954A6: PopAdLdVar
  loc_A954A7: FLdPr Me
  loc_A954AA: MemLdRfVar from_stack_1.htmFile
  loc_A954AD: LdPrVar
  loc_A954AF: LateMemCall
  loc_A954B5: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_A954BA: PopAdLdVar
  loc_A954BB: FLdPr Me
  loc_A954BE: MemLdRfVar from_stack_1.htmFile
  loc_A954C1: LdPrVar
  loc_A954C3: LateMemCall
  loc_A954C9: LitVarStr var_94, "    <th colspan=""3"" width=""100" & Chr(37) & """ align=""center"" valign=""bottom""><p>"
  loc_A954CE: PopAdLdVar
  loc_A954CF: FLdPr Me
  loc_A954D2: MemLdRfVar from_stack_1.htmFile
  loc_A954D5: LdPrVar
  loc_A954D7: LateMemCall
  loc_A954DD: FLdPr Me
  loc_A954E0: MemLdI2 bLogos
  loc_A954E3: BranchF loc_A954FA
  loc_A954E6: LitVarStr var_94, "    <img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right"">"
  loc_A954EB: PopAdLdVar
  loc_A954EC: FLdPr Me
  loc_A954EF: MemLdRfVar from_stack_1.htmFile
  loc_A954F2: LdPrVar
  loc_A954F4: LateMemCall
  loc_A954FA: LitVarStr var_A4, "    <br><br>"
  loc_A954FF: LitVarStr var_94, "Municipalidad de Guaymallén"
  loc_A95504: FStVarCopyObj var_BC
  loc_A95507: FLdRfVar var_BC
  loc_A9550A: FLdRfVar var_D4
  loc_A9550D: ImpAdCallFPR4  = Ucase()
  loc_A95512: FLdRfVar var_D4
  loc_A95515: ConcatVar var_E4
  loc_A95519: LitVarStr var_F4, "</p>"
  loc_A9551E: ConcatVar var_104
  loc_A95522: PopAdLdVar
  loc_A95523: FLdPr Me
  loc_A95526: MemLdRfVar from_stack_1.htmFile
  loc_A95529: LdPrVar
  loc_A9552B: LateMemCall
  loc_A95531: FFreeVar var_BC = "": var_D4 = "": var_E4 = ""
  loc_A9553C: LitStr "    <p>"
  loc_A9553F: FLdRfVar var_A8
  loc_A95542: FLdPr Me
  loc_A95545:  = Me.Caption
  loc_A9554A: ILdRf var_A8
  loc_A9554D: ConcatStr
  loc_A9554E: FStStrNoPop var_AC
  loc_A95551: LitStr "</p></th>"
  loc_A95554: ConcatStr
  loc_A95555: CVarStr var_BC
  loc_A95558: PopAdLdVar
  loc_A95559: FLdPr Me
  loc_A9555C: MemLdRfVar from_stack_1.htmFile
  loc_A9555F: LdPrVar
  loc_A95561: LateMemCall
  loc_A95567: FFreeStr var_A8 = ""
  loc_A9556E: FFree1Var var_BC = ""
  loc_A95571: LitVarStr var_94, "  </tr>"
  loc_A95576: PopAdLdVar
  loc_A95577: FLdPr Me
  loc_A9557A: MemLdRfVar from_stack_1.htmFile
  loc_A9557D: LdPrVar
  loc_A9557F: LateMemCall
  loc_A95585: LitVarStr var_94, "  <tr>"
  loc_A9558A: PopAdLdVar
  loc_A9558B: FLdPr Me
  loc_A9558E: MemLdRfVar from_stack_1.htmFile
  loc_A95591: LdPrVar
  loc_A95593: LateMemCall
  loc_A95599: LitVarStr var_94, "    <th><hr></th>"
  loc_A9559E: PopAdLdVar
  loc_A9559F: FLdPr Me
  loc_A955A2: MemLdRfVar from_stack_1.htmFile
  loc_A955A5: LdPrVar
  loc_A955A7: LateMemCall
  loc_A955AD: LitVarStr var_94, "  </tr>"
  loc_A955B2: PopAdLdVar
  loc_A955B3: FLdPr Me
  loc_A955B6: MemLdRfVar from_stack_1.htmFile
  loc_A955B9: LdPrVar
  loc_A955BB: LateMemCall
  loc_A955C1: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_A955C6: PopAdLdVar
  loc_A955C7: FLdPr Me
  loc_A955CA: MemLdRfVar from_stack_1.htmFile
  loc_A955CD: LdPrVar
  loc_A955CF: LateMemCall
  loc_A955D5: LitVarStr var_94, "    <th align=""left"" valign=""bottom""><p>"
  loc_A955DA: PopAdLdVar
  loc_A955DB: FLdPr Me
  loc_A955DE: MemLdRfVar from_stack_1.htmFile
  loc_A955E1: LdPrVar
  loc_A955E3: LateMemCall
  loc_A955E9: LitStr "    Periodo: <span class=""Normal"">"
  loc_A955EC: FLdRfVar var_A8
  loc_A955EF: FLdPr Me
  loc_A955F2: VCallAd Control_ID_cboPeriodo
  loc_A955F5: FStAdFunc var_C0
  loc_A955F8: FLdPr var_C0
  loc_A955FB:  = Me.Text
  loc_A95600: ILdRf var_A8
  loc_A95603: ConcatStr
  loc_A95604: FStStrNoPop var_AC
  loc_A95607: LitStr "</span><br>"
  loc_A9560A: ConcatStr
  loc_A9560B: CVarStr var_BC
  loc_A9560E: PopAdLdVar
  loc_A9560F: FLdPr Me
  loc_A95612: MemLdRfVar from_stack_1.htmFile
  loc_A95615: LdPrVar
  loc_A95617: LateMemCall
  loc_A9561D: FFreeStr var_A8 = ""
  loc_A95624: FFree1Ad var_C0
  loc_A95627: FFree1Var var_BC = ""
  loc_A9562A: LitStr "    Mes: <span class=""Normal"">"
  loc_A9562D: FLdRfVar var_A8
  loc_A95630: FLdPr Me
  loc_A95633: VCallAd Control_ID_cboMes
  loc_A95636: FStAdFunc var_C0
  loc_A95639: FLdPr var_C0
  loc_A9563C:  = Me.Text
  loc_A95641: ILdRf var_A8
  loc_A95644: ConcatStr
  loc_A95645: FStStrNoPop var_AC
  loc_A95648: LitStr "</span><br>"
  loc_A9564B: ConcatStr
  loc_A9564C: CVarStr var_BC
  loc_A9564F: PopAdLdVar
  loc_A95650: FLdPr Me
  loc_A95653: MemLdRfVar from_stack_1.htmFile
  loc_A95656: LdPrVar
  loc_A95658: LateMemCall
  loc_A9565E: FFreeStr var_A8 = ""
  loc_A95665: FFree1Ad var_C0
  loc_A95668: FFree1Var var_BC = ""
  loc_A9566B: FLdRfVar var_C2
  loc_A9566E: FLdPr Me
  loc_A95671: VCallAd Control_ID_chkNotCodiPart
  loc_A95674: FStAdFunc var_C0
  loc_A95677: FLdPr var_C0
  loc_A9567A:  = Me.Value
  loc_A9567F: FLdI2 var_C2
  loc_A95682: CI4UI1
  loc_A95683: LitI4 0
  loc_A95688: EqI4
  loc_A95689: FFree1Ad var_C0
  loc_A9568C: BranchF loc_A956D7
  loc_A9568F: LitStr "    Partidas que comienzan con: <span class=""Normal"">"
  loc_A95692: FLdPr Me
  loc_A95695: VCallAd Control_ID_CodiPartMsk
  loc_A95698: FStAdFunc var_C0
  loc_A9569B: FLdPr var_C0
  loc_A9569E: LateIdLdVar var_BC DispID_0 0
  loc_A956A5: CStrVarTmp
  loc_A956A6: FStStrNoPop var_A8
  loc_A956A9: ConcatStr
  loc_A956AA: FStStrNoPop var_AC
  loc_A956AD: LitStr "...</span><br>"
  loc_A956B0: ConcatStr
  loc_A956B1: CVarStr var_D4
  loc_A956B4: PopAdLdVar
  loc_A956B5: FLdPr Me
  loc_A956B8: MemLdRfVar from_stack_1.htmFile
  loc_A956BB: LdPrVar
  loc_A956BD: LateMemCall
  loc_A956C3: FFreeStr var_A8 = ""
  loc_A956CA: FFree1Ad var_C0
  loc_A956CD: FFreeVar var_BC = ""
  loc_A956D4: Branch loc_A9571C
  loc_A956D7: LitStr "    Partidas que no comienzan con: <span class=""Normal"">"
  loc_A956DA: FLdPr Me
  loc_A956DD: VCallAd Control_ID_CodiPartMsk
  loc_A956E0: FStAdFunc var_C0
  loc_A956E3: FLdPr var_C0
  loc_A956E6: LateIdLdVar var_BC DispID_0 0
  loc_A956ED: CStrVarTmp
  loc_A956EE: FStStrNoPop var_A8
  loc_A956F1: ConcatStr
  loc_A956F2: FStStrNoPop var_AC
  loc_A956F5: LitStr "...</span><br>"
  loc_A956F8: ConcatStr
  loc_A956F9: CVarStr var_D4
  loc_A956FC: PopAdLdVar
  loc_A956FD: FLdPr Me
  loc_A95700: MemLdRfVar from_stack_1.htmFile
  loc_A95703: LdPrVar
  loc_A95705: LateMemCall
  loc_A9570B: FFreeStr var_A8 = ""
  loc_A95712: FFree1Ad var_C0
  loc_A95715: FFreeVar var_BC = ""
  loc_A9571C: LitVarStr var_94, " </p></th>"
  loc_A95721: PopAdLdVar
  loc_A95722: FLdPr Me
  loc_A95725: MemLdRfVar from_stack_1.htmFile
  loc_A95728: LdPrVar
  loc_A9572A: LateMemCall
  loc_A95730: LitVarStr var_94, "  </tr>"
  loc_A95735: PopAdLdVar
  loc_A95736: FLdPr Me
  loc_A95739: MemLdRfVar from_stack_1.htmFile
  loc_A9573C: LdPrVar
  loc_A9573E: LateMemCall
  loc_A95744: LitVarStr var_94, "</table>"
  loc_A95749: PopAdLdVar
  loc_A9574A: FLdPr Me
  loc_A9574D: MemLdRfVar from_stack_1.htmFile
  loc_A95750: LdPrVar
  loc_A95752: LateMemCall
  loc_A95758: LitVarStr var_94, "<table with=""90" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_A9575D: PopAdLdVar
  loc_A9575E: FLdPr Me
  loc_A95761: MemLdRfVar from_stack_1.htmFile
  loc_A95764: LdPrVar
  loc_A95766: LateMemCall
  loc_A9576C: LitVarStr var_94, " <THEAD>"
  loc_A95771: PopAdLdVar
  loc_A95772: FLdPr Me
  loc_A95775: MemLdRfVar from_stack_1.htmFile
  loc_A95778: LdPrVar
  loc_A9577A: LateMemCall
  loc_A95780: LitVarStr var_94, " <tr class=""Encabezado"">"
  loc_A95785: PopAdLdVar
  loc_A95786: FLdPr Me
  loc_A95789: MemLdRfVar from_stack_1.htmFile
  loc_A9578C: LdPrVar
  loc_A9578E: LateMemCall
  loc_A95794: LitVarStr var_94, "     <th align=""center"">Partida</th>"
  loc_A95799: PopAdLdVar
  loc_A9579A: FLdPr Me
  loc_A9579D: MemLdRfVar from_stack_1.htmFile
  loc_A957A0: LdPrVar
  loc_A957A2: LateMemCall
  loc_A957A8: LitVarStr var_94, "     <th width=""7" & Chr(37) & """ align=""center"">Crédito Autorizado Original</th>"
  loc_A957AD: PopAdLdVar
  loc_A957AE: FLdPr Me
  loc_A957B1: MemLdRfVar from_stack_1.htmFile
  loc_A957B4: LdPrVar
  loc_A957B6: LateMemCall
  loc_A957BC: LitVarStr var_94, "     <th width=""7" & Chr(37) & """ align=""center"">Aumentos</th>"
  loc_A957C1: PopAdLdVar
  loc_A957C2: FLdPr Me
  loc_A957C5: MemLdRfVar from_stack_1.htmFile
  loc_A957C8: LdPrVar
  loc_A957CA: LateMemCall
  loc_A957D0: LitVarStr var_94, "     <th width=""7" & Chr(37) & """ align=""center"">Disminuciones</th>"
  loc_A957D5: PopAdLdVar
  loc_A957D6: FLdPr Me
  loc_A957D9: MemLdRfVar from_stack_1.htmFile
  loc_A957DC: LdPrVar
  loc_A957DE: LateMemCall
  loc_A957E4: LitVarStr var_94, "     <th width=""7" & Chr(37) & """ align=""center"">Crédito Autorizado Definitivo al fin de cada mes</th>"
  loc_A957E9: PopAdLdVar
  loc_A957EA: FLdPr Me
  loc_A957ED: MemLdRfVar from_stack_1.htmFile
  loc_A957F0: LdPrVar
  loc_A957F2: LateMemCall
  loc_A957F8: LitVarStr var_94, "     <th width=""7" & Chr(37) & """ align=""center"">Afectaciones Preventivas</th>"
  loc_A957FD: PopAdLdVar
  loc_A957FE: FLdPr Me
  loc_A95801: MemLdRfVar from_stack_1.htmFile
  loc_A95804: LdPrVar
  loc_A95806: LateMemCall
  loc_A9580C: LitVarStr var_94, "     <th width=""7" & Chr(37) & """ align=""center"">Saldo de Autorizados</th>"
  loc_A95811: PopAdLdVar
  loc_A95812: FLdPr Me
  loc_A95815: MemLdRfVar from_stack_1.htmFile
  loc_A95818: LdPrVar
  loc_A9581A: LateMemCall
  loc_A95820: LitVarStr var_94, "     <th width=""7" & Chr(37) & """ align=""center"">Promedio Mensual de Preventivas</th>"
  loc_A95825: PopAdLdVar
  loc_A95826: FLdPr Me
  loc_A95829: MemLdRfVar from_stack_1.htmFile
  loc_A9582C: LdPrVar
  loc_A9582E: LateMemCall
  loc_A95834: LitVarStr var_94, "     <th width=""7" & Chr(37) & """ align=""center"">Proyectado Anual de Preventivas seg&uacute;n promedio</th>"
  loc_A95839: PopAdLdVar
  loc_A9583A: FLdPr Me
  loc_A9583D: MemLdRfVar from_stack_1.htmFile
  loc_A95840: LdPrVar
  loc_A95842: LateMemCall
  loc_A95848: LitVarStr var_94, "     <th width=""9" & Chr(37) & """ align=""center"">Diferencia entre Autorizado Definitivo y Proyectado Anual de Preventivas</th>"
  loc_A9584D: PopAdLdVar
  loc_A9584E: FLdPr Me
  loc_A95851: MemLdRfVar from_stack_1.htmFile
  loc_A95854: LdPrVar
  loc_A95856: LateMemCall
  loc_A9585C: LitVarStr var_94, "  </tr>"
  loc_A95861: PopAdLdVar
  loc_A95862: FLdPr Me
  loc_A95865: MemLdRfVar from_stack_1.htmFile
  loc_A95868: LdPrVar
  loc_A9586A: LateMemCall
  loc_A95870: LitVarStr var_94, "  </THEAD>"
  loc_A95875: PopAdLdVar
  loc_A95876: FLdPr Me
  loc_A95879: MemLdRfVar from_stack_1.htmFile
  loc_A9587C: LdPrVar
  loc_A9587E: LateMemCall
  loc_A95884: ExitProcHresult
End Function

Private Function Proc_236_27_9828C0() '9828C0
  'Data Table: 4825EC
  loc_982880: LitVarStr var_94, "</table>"
  loc_982885: PopAdLdVar
  loc_982886: FLdPr Me
  loc_982889: MemLdRfVar from_stack_1.htmFile
  loc_98288C: LdPrVar
  loc_98288E: LateMemCall
  loc_982894: LitVarStr var_94, "</body>"
  loc_982899: PopAdLdVar
  loc_98289A: FLdPr Me
  loc_98289D: MemLdRfVar from_stack_1.htmFile
  loc_9828A0: LdPrVar
  loc_9828A2: LateMemCall
  loc_9828A8: LitVarStr var_94, "</html>"
  loc_9828AD: PopAdLdVar
  loc_9828AE: FLdPr Me
  loc_9828B1: MemLdRfVar from_stack_1.htmFile
  loc_9828B4: LdPrVar
  loc_9828B6: LateMemCall
  loc_9828BC: ExitProcHresult
End Function

Private Function Proc_236_28_AAB410() 'AAB410
  'Data Table: 4825EC
  loc_AAAF58: FLdRfVar var_9A
  loc_AAAF5B: FLdPr Me
  loc_AAAF5E: VCallAd Control_ID_chkNotCodiPart
  loc_AAAF61: FStAdFunc var_98
  loc_AAAF64: FLdPr var_98
  loc_AAAF67:  = Me.Value
  loc_AAAF6C: LitVarStr var_DC, "NOT"
  loc_AAAF71: FStVarCopyObj var_EC
  loc_AAAF74: FLdRfVar var_EC
  loc_AAAF77: LitVarStr var_BC, vbNullString
  loc_AAAF7C: FStVarCopyObj var_CC
  loc_AAAF7F: FLdRfVar var_CC
  loc_AAAF82: FLdI2 var_9A
  loc_AAAF85: CI4UI1
  loc_AAAF86: LitI4 0
  loc_AAAF8B: EqI4
  loc_AAAF8C: CVarBoolI2 var_AC
  loc_AAAF90: FLdRfVar var_FC
  loc_AAAF93: ImpAdCallFPR4  = IIf(, , )
  loc_AAAF98: FLdRfVar var_FC
  loc_AAAF9B: CStrVarTmp
  loc_AAAF9C: FStStr var_88
  loc_AAAF9F: FFree1Ad var_98
  loc_AAAFA2: FFreeVar var_AC = "": var_CC = "": var_EC = ""
  loc_AAAFAD: FLdPr Me
  loc_AAAFB0: VCallAd Control_ID_CodiPartMsk
  loc_AAAFB3: FStAdFunc var_98
  loc_AAAFB6: FLdPr var_98
  loc_AAAFB9: LateIdLdVar var_CC DispID_22 0
  loc_AAAFC0: CStrVarTmp
  loc_AAAFC1: FStStr var_8C
  loc_AAAFC4: FFree1Ad var_98
  loc_AAAFC7: FFree1Var var_CC = ""
  loc_AAAFCA: FLdRfVar var_9A
  loc_AAAFCD: FLdPr Me
  loc_AAAFD0: VCallAd Control_ID_ChkSoloPartidasenRojo
  loc_AAAFD3: FStAdFunc var_98
  loc_AAAFD6: FLdPr var_98
  loc_AAAFD9:  = Me.Value
  loc_AAAFDE: LitVarStr var_DC, vbNullString
  loc_AAAFE3: FStVarCopyObj var_EC
  loc_AAAFE6: FLdRfVar var_EC
  loc_AAAFE9: LitVarStr var_BC, " AND AutoAuto+AumeAuto-DismAuto<PrevImpu"
  loc_AAAFEE: FStVarCopyObj var_CC
  loc_AAAFF1: FLdRfVar var_CC
  loc_AAAFF4: FLdI2 var_9A
  loc_AAAFF7: CI4UI1
  loc_AAAFF8: LitI4 1
  loc_AAAFFD: EqI4
  loc_AAAFFE: CVarBoolI2 var_AC
  loc_AAB002: FLdRfVar var_FC
  loc_AAB005: ImpAdCallFPR4  = IIf(, , )
  loc_AAB00A: FLdRfVar var_FC
  loc_AAB00D: CStrVarTmp
  loc_AAB00E: FStStr var_90
  loc_AAB011: FFree1Ad var_98
  loc_AAB014: FFreeVar var_AC = "": var_CC = "": var_EC = ""
  loc_AAB01F: FLdPr Me
  loc_AAB022: MemLdRfVar from_stack_1.global_76
  loc_AAB025: NewIfNullAd
  loc_AAB028: FStAd var_100 
  loc_AAB02C: LitStr "DROP TEMPORARY TABLE IF EXISTS t1;"
  loc_AAB02F: FStStrCopy var_94
  loc_AAB032: ILdRf var_94
  loc_AAB035: LitStr "CREATE TEMPORARY TABLE t1 ("
  loc_AAB038: ConcatStr
  loc_AAB039: FStStrNoPop var_104
  loc_AAB03C: LitStr " PeriInfo year(4) NOT NULL DEFAULT 0000,"
  loc_AAB03F: ConcatStr
  loc_AAB040: FStStrNoPop var_108
  loc_AAB043: LitStr " CodiOrga varchar(7) NOT NULL DEFAULT '',"
  loc_AAB046: ConcatStr
  loc_AAB047: FStStrNoPop var_10C
  loc_AAB04A: LitStr " CodiPart varchar(9) NOT NULL DEFAULT '',"
  loc_AAB04D: ConcatStr
  loc_AAB04E: FStStrNoPop var_110
  loc_AAB051: LitStr " AutoAuto decimal(14,2) DEFAULT NULL,"
  loc_AAB054: ConcatStr
  loc_AAB055: FStStrNoPop var_114
  loc_AAB058: LitStr " AumeAuto decimal(14,2) DEFAULT NULL,"
  loc_AAB05B: ConcatStr
  loc_AAB05C: FStStrNoPop var_118
  loc_AAB05F: LitStr " DismAuto decimal(14,2) DEFAULT NULL,"
  loc_AAB062: ConcatStr
  loc_AAB063: FStStrNoPop var_11C
  loc_AAB066: LitStr " PrevImpu decimal(14,2) NOT NULL"
  loc_AAB069: ConcatStr
  loc_AAB06A: FStStrNoPop var_120
  loc_AAB06D: LitStr ")"
  loc_AAB070: ConcatStr
  loc_AAB071: FStStrNoPop var_124
  loc_AAB074: LitStr ";"
  loc_AAB077: ConcatStr
  loc_AAB078: FStStr var_94
  loc_AAB07B: FFreeStr var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = ""
  loc_AAB090: ILdRf var_94
  loc_AAB093: LitStr "INSERT INTO t1"
  loc_AAB096: ConcatStr
  loc_AAB097: FStStrNoPop var_104
  loc_AAB09A: LitStr " SELECT PeriInfo, CodiOrga, CodiPart, SUM(AutoAuto) AutoAuto, SUM(AumeAuto) AumeAuto, SUM(DismAuto) DismAuto, 0"
  loc_AAB09D: ConcatStr
  loc_AAB09E: FStStrNoPop var_108
  loc_AAB0A1: LitStr " FROM autorizado"
  loc_AAB0A4: ConcatStr
  loc_AAB0A5: FStStrNoPop var_10C
  loc_AAB0A8: LitStr " WHERE PeriInfo = "
  loc_AAB0AB: ConcatStr
  loc_AAB0AC: FStStrNoPop var_114
  loc_AAB0AF: FLdRfVar var_110
  loc_AAB0B2: FLdPr Me
  loc_AAB0B5: VCallAd Control_ID_cboPeriodo
  loc_AAB0B8: FStAdFunc var_98
  loc_AAB0BB: FLdPr var_98
  loc_AAB0BE:  = Me.Text
  loc_AAB0C3: ILdRf var_110
  loc_AAB0C6: ConcatStr
  loc_AAB0C7: FStStrNoPop var_118
  loc_AAB0CA: LitStr " AND CodiPart "
  loc_AAB0CD: ConcatStr
  loc_AAB0CE: FStStrNoPop var_11C
  loc_AAB0D1: ILdRf var_88
  loc_AAB0D4: ConcatStr
  loc_AAB0D5: FStStrNoPop var_120
  loc_AAB0D8: LitStr " LIKE '"
  loc_AAB0DB: ConcatStr
  loc_AAB0DC: FStStrNoPop var_124
  loc_AAB0DF: ILdRf var_8C
  loc_AAB0E2: ConcatStr
  loc_AAB0E3: FStStrNoPop var_128
  loc_AAB0E6: LitStr Chr(37) & "'"
  loc_AAB0E9: ConcatStr
  loc_AAB0EA: FStStrNoPop var_12C
  loc_AAB0ED: LitStr " AND MONTH(FechAuto) <= "
  loc_AAB0F0: ConcatStr
  loc_AAB0F1: FStStrNoPop var_13C
  loc_AAB0F4: FLdRfVar var_138
  loc_AAB0F7: FLdRfVar var_9A
  loc_AAB0FA: FLdPr Me
  loc_AAB0FD: VCallAd Control_ID_cboMes
  loc_AAB100: FStAdFunc var_130
  loc_AAB103: FLdPr var_130
  loc_AAB106:  = Me.ListIndex
  loc_AAB10B: FLdI2 var_9A
  loc_AAB10E: FLdPr Me
  loc_AAB111: VCallAd Control_ID_cboMes
  loc_AAB114: FStAdFunc var_134
  loc_AAB117: FLdPr var_134
  loc_AAB11A:  = Me.ItemData
  loc_AAB11F: ILdRf var_138
  loc_AAB122: CStrI4
  loc_AAB124: FStStrNoPop var_140
  loc_AAB127: ConcatStr
  loc_AAB128: FStStrNoPop var_144
  loc_AAB12B: LitStr " GROUP BY PeriInfo, CodiOrga, CodiPart;"
  loc_AAB12E: ConcatStr
  loc_AAB12F: FStStr var_94
  loc_AAB132: FFreeStr var_104 = "": var_108 = "": var_10C = "": var_114 = "": var_110 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_13C = "": var_140 = ""
  loc_AAB151: FFreeAd var_98 = "": var_130 = ""
  loc_AAB15A: ILdRf var_94
  loc_AAB15D: LitStr "INSERT INTO t1"
  loc_AAB160: ConcatStr
  loc_AAB161: FStStrNoPop var_104
  loc_AAB164: LitStr " SELECT i.PeriInfo, CredOrga, CredPart, 0, 0, 0, SUM(PrevImpu)"
  loc_AAB167: ConcatStr
  loc_AAB168: FStStrNoPop var_108
  loc_AAB16B: LitStr " FROM imputacion i"
  loc_AAB16E: ConcatStr
  loc_AAB16F: FStStrNoPop var_10C
  loc_AAB172: LitStr " INNER JOIN infogov.organigrama o ON o.PeriInfo = i.PeriInfo AND o.CodiOrga = i.CodiOrga"
  loc_AAB175: ConcatStr
  loc_AAB176: FStStrNoPop var_110
  loc_AAB179: LitStr " INNER JOIN partida p ON p.PeriInfo = i.PeriInfo AND p.CodiPart = i.CodiPart"
  loc_AAB17C: ConcatStr
  loc_AAB17D: FStStrNoPop var_114
  loc_AAB180: LitStr " WHERE i.PeriInfo = "
  loc_AAB183: ConcatStr
  loc_AAB184: FStStrNoPop var_11C
  loc_AAB187: FLdRfVar var_118
  loc_AAB18A: FLdPr Me
  loc_AAB18D: VCallAd Control_ID_cboPeriodo
  loc_AAB190: FStAdFunc var_98
  loc_AAB193: FLdPr var_98
  loc_AAB196:  = Me.Text
  loc_AAB19B: ILdRf var_118
  loc_AAB19E: ConcatStr
  loc_AAB19F: FStStrNoPop var_120
  loc_AAB1A2: LitStr " AND PrevImpu != 0"
  loc_AAB1A5: ConcatStr
  loc_AAB1A6: FStStrNoPop var_124
  loc_AAB1A9: LitStr " AND ( CredPart "
  loc_AAB1AC: ConcatStr
  loc_AAB1AD: FStStrNoPop var_128
  loc_AAB1B0: ILdRf var_88
  loc_AAB1B3: ConcatStr
  loc_AAB1B4: FStStrNoPop var_12C
  loc_AAB1B7: LitStr " Like '"
  loc_AAB1BA: ConcatStr
  loc_AAB1BB: FStStrNoPop var_13C
  loc_AAB1BE: ILdRf var_8C
  loc_AAB1C1: ConcatStr
  loc_AAB1C2: FStStrNoPop var_140
  loc_AAB1C5: LitStr Chr(37) & "'"
  loc_AAB1C8: ConcatStr
  loc_AAB1C9: FStStrNoPop var_144
  loc_AAB1CC: LitStr " OR i.CodiPart "
  loc_AAB1CF: ConcatStr
  loc_AAB1D0: FStStrNoPop var_148
  loc_AAB1D3: ILdRf var_88
  loc_AAB1D6: ConcatStr
  loc_AAB1D7: FStStrNoPop var_14C
  loc_AAB1DA: LitStr " Like '"
  loc_AAB1DD: ConcatStr
  loc_AAB1DE: FStStrNoPop var_150
  loc_AAB1E1: ILdRf var_8C
  loc_AAB1E4: ConcatStr
  loc_AAB1E5: FStStrNoPop var_154
  loc_AAB1E8: LitStr Chr(37) & "' )"
  loc_AAB1EB: ConcatStr
  loc_AAB1EC: FStStrNoPop var_158
  loc_AAB1EF: LitStr " AND MONTH(FechImpu) <= "
  loc_AAB1F2: ConcatStr
  loc_AAB1F3: FStStrNoPop var_15C
  loc_AAB1F6: FLdRfVar var_138
  loc_AAB1F9: FLdRfVar var_9A
  loc_AAB1FC: FLdPr Me
  loc_AAB1FF: VCallAd Control_ID_cboMes
  loc_AAB202: FStAdFunc var_130
  loc_AAB205: FLdPr var_130
  loc_AAB208:  = Me.ListIndex
  loc_AAB20D: FLdI2 var_9A
  loc_AAB210: FLdPr Me
  loc_AAB213: VCallAd Control_ID_cboMes
  loc_AAB216: FStAdFunc var_134
  loc_AAB219: FLdPr var_134
  loc_AAB21C:  = Me.ItemData
  loc_AAB221: ILdRf var_138
  loc_AAB224: CStrI4
  loc_AAB226: FStStrNoPop var_160
  loc_AAB229: ConcatStr
  loc_AAB22A: FStStrNoPop var_164
  loc_AAB22D: LitStr " GROUP BY PeriInfo, CredOrga, CredPart;"
  loc_AAB230: ConcatStr
  loc_AAB231: FStStr var_94
  loc_AAB234: FFreeStr var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_11C = "": var_118 = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = ""
  loc_AAB263: FFreeAd var_98 = "": var_130 = ""
  loc_AAB26C: ILdRf var_94
  loc_AAB26F: LitStr "DROP TEMPORARY TABLE IF EXISTS t2;"
  loc_AAB272: ConcatStr
  loc_AAB273: FStStr var_94
  loc_AAB276: ILdRf var_94
  loc_AAB279: LitStr "CREATE TEMPORARY TABLE 2` (`PeriInfo` YEAR(4) NOT NULL DEFAULT '0000', `CodiOrga` VARCHAR(7) NOT NULL DEFAULT '', `DetaOrga` VARCHAR(50) NOT NULL DEFAULT '', `CodiPart` CHAR(9) CHARACTER SET utf8 NOT NULL DEFAULT '', `DetaPart` CHAR(250) CHARACTER SET utf8 NOT NULL DEFAULT '', `AutoAuto` DECIMAL(14,2) DEFAULT NULL, `AumeAuto` DECIMAL(14,2) DEFAULT NULL, `DismAuto` DECIMAL(14,2) DEFAULT NULL, `PrevImpu` DECIMAL(14,2) DEFAULT NULL) ENGINE=InnoDB ;"
  loc_AAB27C: ConcatStr
  loc_AAB27D: FStStrNoPop var_104
  loc_AAB280: LitStr " INSERT INTO t2"
  loc_AAB283: ConcatStr
  loc_AAB284: FStStrNoPop var_108
  loc_AAB287: LitStr " SELECT t1.PeriInfo, t1.CodiOrga, DetaOrga, t1.CodiPart, DetaPart, SUM(AutoAuto) AutoAuto, SUM(AumeAuto) AumeAuto, SUM(DismAuto) DismAuto, SUM(PrevImpu) PrevImpu"
  loc_AAB28A: ConcatStr
  loc_AAB28B: FStStrNoPop var_10C
  loc_AAB28E: LitStr " FROM t1"
  loc_AAB291: ConcatStr
  loc_AAB292: FStStrNoPop var_110
  loc_AAB295: LitStr " INNER JOIN partida ON partida.PeriInfo = t1.PeriInfo AND partida.CodiPart = t1.CodiPart"
  loc_AAB298: ConcatStr
  loc_AAB299: FStStrNoPop var_114
  loc_AAB29C: LitStr " INNER JOIN infogov.organigrama ON organigrama.PeriInfo = t1.PeriInfo AND organigrama.CodiOrga = t1.CodiOrga"
  loc_AAB29F: ConcatStr
  loc_AAB2A0: FStStrNoPop var_118
  loc_AAB2A3: LitStr " GROUP BY t1.PeriInfo, t1.CodiOrga, t1.CodiPart"
  loc_AAB2A6: ConcatStr
  loc_AAB2A7: FStStrNoPop var_11C
  loc_AAB2AA: LitStr " HAVING TRUE"
  loc_AAB2AD: ConcatStr
  loc_AAB2AE: FStStrNoPop var_120
  loc_AAB2B1: ILdRf var_90
  loc_AAB2B4: ConcatStr
  loc_AAB2B5: FStStr var_94
  loc_AAB2B8: FFreeStr var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = ""
  loc_AAB2CB: ILdRf var_94
  loc_AAB2CE: FLdPr var_100
  loc_AAB2D1: Call clsbase.RedefineRS(from_stack_1v)
  loc_AAB2D6: LitStr "SELECT PeriInfo, CodiOrga, DetaOrga, CodiPart, DetaPart, Sum(AutoAuto) AutoAuto, Sum(AumeAuto) AumeAuto, Sum(DismAuto) DismAuto, Sum(PrevImpu) PrevImpu"
  loc_AAB2D9: LitStr ", SUM(AutoAuto)+SUM(AumeAuto)-SUM(DismAuto) CreditoAutorizado"
  loc_AAB2DC: ConcatStr
  loc_AAB2DD: FStStrNoPop var_104
  loc_AAB2E0: LitStr ", SUM(AutoAuto)+SUM(AumeAuto)-SUM(DismAuto)-SUM(PrevImpu) SaldoAutorizados"
  loc_AAB2E3: ConcatStr
  loc_AAB2E4: FStStrNoPop var_108
  loc_AAB2E7: LitStr ", ROUND(SUM(PrevImpu)/"
  loc_AAB2EA: ConcatStr
  loc_AAB2EB: FStStrNoPop var_10C
  loc_AAB2EE: FLdRfVar var_138
  loc_AAB2F1: FLdRfVar var_9A
  loc_AAB2F4: FLdPr Me
  loc_AAB2F7: VCallAd Control_ID_cboMes
  loc_AAB2FA: FStAdFunc var_98
  loc_AAB2FD: FLdPr var_98
  loc_AAB300:  = Me.ListIndex
  loc_AAB305: FLdI2 var_9A
  loc_AAB308: FLdPr Me
  loc_AAB30B: VCallAd Control_ID_cboMes
  loc_AAB30E: FStAdFunc var_130
  loc_AAB311: FLdPr var_130
  loc_AAB314:  = Me.ItemData
  loc_AAB319: ILdRf var_138
  loc_AAB31C: CStrI4
  loc_AAB31E: FStStrNoPop var_110
  loc_AAB321: ConcatStr
  loc_AAB322: FStStrNoPop var_114
  loc_AAB325: LitStr ",2) PromedioMensual"
  loc_AAB328: ConcatStr
  loc_AAB329: FStStrNoPop var_118
  loc_AAB32C: LitStr ", ROUND((SUM(PrevImpu)/"
  loc_AAB32F: ConcatStr
  loc_AAB330: FStStrNoPop var_11C
  loc_AAB333: FLdRfVar var_170
  loc_AAB336: FLdRfVar var_166
  loc_AAB339: FLdPr Me
  loc_AAB33C: VCallAd Control_ID_cboMes
  loc_AAB33F: FStAdFunc var_134
  loc_AAB342: FLdPr var_134
  loc_AAB345:  = Me.ListIndex
  loc_AAB34A: FLdI2 var_166
  loc_AAB34D: FLdPr Me
  loc_AAB350: VCallAd Control_ID_cboMes
  loc_AAB353: FStAdFunc var_16C
  loc_AAB356: FLdPr var_16C
  loc_AAB359:  = Me.ItemData
  loc_AAB35E: ILdRf var_170
  loc_AAB361: CStrI4
  loc_AAB363: FStStrNoPop var_120
  loc_AAB366: ConcatStr
  loc_AAB367: FStStrNoPop var_124
  loc_AAB36A: LitStr ")*12,2) ProyectadoAnual"
  loc_AAB36D: ConcatStr
  loc_AAB36E: FStStrNoPop var_128
  loc_AAB371: LitStr ", ROUND( (SUM(AutoAuto)+SUM(AumeAuto)-SUM(DismAuto)) - ((SUM(PrevImpu)/"
  loc_AAB374: ConcatStr
  loc_AAB375: FStStrNoPop var_12C
  loc_AAB378: FLdRfVar var_180
  loc_AAB37B: FLdRfVar var_176
  loc_AAB37E: FLdPr Me
  loc_AAB381: VCallAd Control_ID_cboMes
  loc_AAB384: FStAdFunc var_174
  loc_AAB387: FLdPr var_174
  loc_AAB38A:  = Me.ListIndex
  loc_AAB38F: FLdI2 var_176
  loc_AAB392: FLdPr Me
  loc_AAB395: VCallAd Control_ID_cboMes
  loc_AAB398: FStAdFunc var_17C
  loc_AAB39B: FLdPr var_17C
  loc_AAB39E:  = Me.ItemData
  loc_AAB3A3: ILdRf var_180
  loc_AAB3A6: CStrI4
  loc_AAB3A8: FStStrNoPop var_13C
  loc_AAB3AB: ConcatStr
  loc_AAB3AC: FStStrNoPop var_140
  loc_AAB3AF: LitStr ")*12),2) diferencia"
  loc_AAB3B2: ConcatStr
  loc_AAB3B3: FStStrNoPop var_144
  loc_AAB3B6: LitStr " FROM t2"
  loc_AAB3B9: ConcatStr
  loc_AAB3BA: FStStrNoPop var_148
  loc_AAB3BD: LitStr " GROUP BY CodiOrga, CodiPart"
  loc_AAB3C0: ConcatStr
  loc_AAB3C1: FStStrNoPop var_14C
  loc_AAB3C4: LitStr " ORDER BY CodiOrga, CodiPart;"
  loc_AAB3C7: ConcatStr
  loc_AAB3C8: FStStrNoPop var_150
  loc_AAB3CB: FLdPr var_100
  loc_AAB3CE: Call clsbase.RedefineRS(from_stack_1v)
  loc_AAB3D3: FFreeStr var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = ""
  loc_AAB3F8: FFreeAd var_98 = "": var_130 = "": var_134 = "": var_16C = "": var_174 = ""
  loc_AAB407: LitNothing
  loc_AAB409: FStAd var_100 
  loc_AAB40D: ExitProcHresult
End Function
