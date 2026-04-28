VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptConstanciadeRecepcion
  Caption = "Constancia de Recepción"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptConstanciadeRecepcion.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 6480
  ClientHeight = 3855
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 3600
    Width = 6480
    Height = 255
    TabIndex = 17
    OleObjectBlob = "rptConstanciadeRecepcion.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 5400
    Top = 2640
    Width = 735
    Height = 615
    TabIndex = 15
    Cancel = -1  'True
    Picture = "rptConstanciadeRecepcion.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptConstanciadeRecepcion.frx":0B9C
    Left = 3840
    Top = 0
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 2400
    Width = 1815
    Height = 1095
    TabIndex = 13
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 14
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 2400
    Width = 3015
    Height = 1095
    TabIndex = 10
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 12
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 11
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 6255
    Height = 2295
    TabIndex = 0
    Begin VB.ComboBox cboPeriodo
      Style = 2
      ForeColor = &HFF0000&
      Left = 2520
      Top = 360
      Width = 975
      Height = 315
      TabIndex = 2
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 4680
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 3
    End
    Begin MSMask.MaskEdBox CodiOrcoMsk
      Left = 2520
      Top = 840
      Width = 975
      Height = 315
      TabIndex = 5
      OleObjectBlob = "rptConstanciadeRecepcion.frx":0C00
    End
    Begin MSMask.MaskEdBox DesdeCodiReceMsk
      Left = 2520
      Top = 1320
      Width = 495
      Height = 315
      TabIndex = 7
      OleObjectBlob = "rptConstanciadeRecepcion.frx":0C70
    End
    Begin MSMask.MaskEdBox HastaCodiReceMsk
      Left = 2520
      Top = 1800
      Width = 495
      Height = 315
      TabIndex = 9
      OleObjectBlob = "rptConstanciadeRecepcion.frx":0CD8
    End
    Begin VB.Label Label4
      Caption = "Hasta Recepción Nº:"
      Left = 870
      Top = 1800
      Width = 1515
      Height = 195
      TabIndex = 8
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
    End
    Begin VB.Label Label3
      Caption = "Desde Recepción Nº:"
      Left = 825
      Top = 1320
      Width = 1560
      Height = 195
      TabIndex = 6
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
    End
    Begin VB.Label Label2
      Caption = "Orden de Compra Nº:"
      Left = 870
      Top = 840
      Width = 1515
      Height = 195
      TabIndex = 4
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
    End
    Begin VB.Label Label1
      Caption = "Periodo:"
      Left = 1800
      Top = 360
      Width = 585
      Height = 195
      TabIndex = 1
      AutoSize = -1  'True
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 5520
    Top = 2880
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 16
    OleObjectBlob = "rptConstanciadeRecepcion.frx":0D40
  End
End

Attribute VB_Name = "rptConstanciadeRecepcion"

Public htmFile As Variant
Public bGenerado As Boolean

Private Type UDT_1_00597730
  bStruc(80) As Byte ' String fields: 20
End Type


Private Sub cmdPdf_Click() '956AD8
  'Data Table: 46A3E4
  loc_956AC0: LitI2_Byte 0
  loc_956AC2: ILdRf Me
  loc_956AC5: CastAd
  loc_956AC8: FStAdFunc var_88
  loc_956ACB: FLdRfVar var_88
  loc_956ACE: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_956AD3: FFree1Ad var_88
  loc_956AD6: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '985EDC
  'Data Table: 46A3E4
  loc_985EA4: FLdPr Me
  loc_985EA7: VCallAd Control_ID_statusBar
  loc_985EAA: FStAdFunc var_88
  loc_985EAD: FLdPr var_88
  loc_985EB0: LateIdLdVar var_98 DispID_1 0
  loc_985EB7: CStrVarTmp
  loc_985EB8: CVarStr var_A8
  loc_985EBB: PopAdLdVar
  loc_985EBC: FLdPr Me
  loc_985EBF: VCallAd Control_ID_statusBar
  loc_985EC2: FStAdFunc var_BC
  loc_985EC5: FLdPr var_BC
  loc_985EC8: LateIdSt
  loc_985ECD: FFreeAd var_88 = ""
  loc_985ED4: FFreeVar var_98 = ""
  loc_985EDB: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() '9A8DB0
  'Data Table: 46A3E4
  loc_9A8D1C: LitI2_Byte 0
  loc_9A8D1E: FLdPr Me
  loc_9A8D21: MemStI2 bGenerado
  loc_9A8D24: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_9A8D29: ImpAdLdI2 MemVar_C3D064
  loc_9A8D2C: CStrUI1
  loc_9A8D2E: FStStrNoPop var_88
  loc_9A8D31: FLdPr Me
  loc_9A8D34: VCallAd Control_ID_cboPeriodo
  loc_9A8D37: FStAdFunc var_8C
  loc_9A8D3A: FLdPr var_8C
  loc_9A8D3D: Me.Text = from_stack_1
  loc_9A8D42: FFree1Str var_88
  loc_9A8D45: FFree1Ad var_8C
  loc_9A8D48: LitVarStr var_9C, vbNullString
  loc_9A8D4D: PopAdLdVar
  loc_9A8D4E: FLdPr Me
  loc_9A8D51: VCallAd Control_ID_CodiOrcoMsk
  loc_9A8D54: FStAdFunc var_8C
  loc_9A8D57: FLdPr var_8C
  loc_9A8D5A: LateIdSt
  loc_9A8D5F: FFree1Ad var_8C
  loc_9A8D62: LitVarStr var_9C, vbNullString
  loc_9A8D67: PopAdLdVar
  loc_9A8D68: FLdPr Me
  loc_9A8D6B: VCallAd Control_ID_DesdeCodiReceMsk
  loc_9A8D6E: FStAdFunc var_8C
  loc_9A8D71: FLdPr var_8C
  loc_9A8D74: LateIdSt
  loc_9A8D79: FFree1Ad var_8C
  loc_9A8D7C: LitVarStr var_9C, vbNullString
  loc_9A8D81: PopAdLdVar
  loc_9A8D82: FLdPr Me
  loc_9A8D85: VCallAd Control_ID_HastaCodiReceMsk
  loc_9A8D88: FStAdFunc var_8C
  loc_9A8D8B: FLdPr var_8C
  loc_9A8D8E: LateIdSt
  loc_9A8D93: FFree1Ad var_8C
  loc_9A8D96: Call HabilitarCriterio()
  loc_9A8D9B: ILdRf Me
  loc_9A8D9E: CastAd
  loc_9A8DA1: FStAdFunc var_8C
  loc_9A8DA4: FLdRfVar var_8C
  loc_9A8DA7: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_9A8DAC: FFree1Ad var_8C
  loc_9A8DAF: ExitProcHresult
End Sub

Private Sub CodiOrcoMsk_UnknownEvent_0 '94BC18
  'Data Table: 46A3E4
  loc_94BC04: FLdPr Me
  loc_94BC07: VCallAd Control_ID_CodiOrcoMsk
  loc_94BC0A: CVarAd
  loc_94BC0E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94BC13: FFree1Var var_94 = ""
  loc_94BC16: ExitProcHresult
End Sub

Private Function CodiOrcoMsk_UnknownEvent_8(arg_C) '9EA3A0
  'Data Table: 46A3E4
  loc_9EA288: FLdPr Me
  loc_9EA28B: VCallAd Control_ID_CodiOrcoMsk
  loc_9EA28E: FStAdFunc var_88
  loc_9EA291: FLdPr var_88
  loc_9EA294: LateIdLdVar var_98 DispID_22 0
  loc_9EA29B: PopAd
  loc_9EA29D: LitI2_Byte 0
  loc_9EA29F: LitI2_Byte 0
  loc_9EA2A1: FLdRfVar var_98
  loc_9EA2A4: CStrVarTmp
  loc_9EA2A5: FStStrNoPop var_9C
  loc_9EA2A8: LitStr " el Nº de la Orden de Compra"
  loc_9EA2AB: ImpAdCallI2 Proc_266_27_9A5218(, , , )
  loc_9EA2B0: FStStrNoPop var_A0
  loc_9EA2B3: FLdPr Me
  loc_9EA2B6: MemStStrCopy
  loc_9EA2BA: FFreeStr var_9C = ""
  loc_9EA2C1: FFree1Ad var_88
  loc_9EA2C4: FFree1Var var_98 = ""
  loc_9EA2C7: FLdPr Me
  loc_9EA2CA: VCallAd Control_ID_CodiOrcoMsk
  loc_9EA2CD: FStAdFunc var_AC
  loc_9EA2D0: LitNothing
  loc_9EA2D2: CastAd
  loc_9EA2D5: FStAdFunc var_A8
  loc_9EA2D8: FLdRfVar var_A8
  loc_9EA2DB: FLdZeroAd var_AC
  loc_9EA2DE: FStAdFuncNoPop
  loc_9EA2E1: CastAd
  loc_9EA2E4: FStAdFunc var_A4
  loc_9EA2E7: FLdRfVar var_A4
  loc_9EA2EA: FLdPr Me
  loc_9EA2ED: MemLdRfVar from_stack_1.global_96
  loc_9EA2F0: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9EA2F5: IStI2 arg_C
  loc_9EA2F8: FFreeAd var_88 = "": var_A4 = "": var_A8 = ""
  loc_9EA303: ILdI2 arg_C
  loc_9EA306: NotI4
  loc_9EA307: BranchF loc_9EA39F
  loc_9EA30A: LitI2_Byte 1
  loc_9EA30C: CStrUI1
  loc_9EA30E: CVarStr var_98
  loc_9EA311: PopAdLdVar
  loc_9EA312: FLdPr Me
  loc_9EA315: VCallAd Control_ID_DesdeCodiReceMsk
  loc_9EA318: FStAdFunc var_88
  loc_9EA31B: FLdPr var_88
  loc_9EA31E: LateIdSt
  loc_9EA323: FFree1Ad var_88
  loc_9EA326: FFree1Var var_98 = ""
  loc_9EA329: FLdRfVar var_9C
  loc_9EA32C: FLdPr Me
  loc_9EA32F: VCallAd Control_ID_cboPeriodo
  loc_9EA332: FStAdFunc var_A4
  loc_9EA335: FLdPr var_A4
  loc_9EA338:  = Me.Text
  loc_9EA33D: FLdPr Me
  loc_9EA340: VCallAd Control_ID_CodiOrcoMsk
  loc_9EA343: FStAdFunc var_88
  loc_9EA346: FLdPr var_88
  loc_9EA349: LateIdLdVar var_98 DispID_22 0
  loc_9EA350: PopAd
  loc_9EA352: FLdRfVar var_CC
  loc_9EA355: FLdRfVar var_98
  loc_9EA358: CStrVarTmp
  loc_9EA359: FStStrNoPop var_A0
  loc_9EA35C: ILdRf var_9C
  loc_9EA35F: FLdPr Me
  loc_9EA362: MemLdRfVar from_stack_1.global_72
  loc_9EA365: NewIfNullPr clsrecepcion
  loc_9EA368: from_stack_3v = clsrecepcion.BuscaUltimaRece(from_stack_1v, from_stack_2v)
  loc_9EA36D: FLdRfVar var_CC
  loc_9EA370: CStrVarTmp
  loc_9EA371: CVarStr var_DC
  loc_9EA374: PopAdLdVar
  loc_9EA375: FLdPr Me
  loc_9EA378: VCallAd Control_ID_HastaCodiReceMsk
  loc_9EA37B: FStAdFunc var_A8
  loc_9EA37E: FLdPr var_A8
  loc_9EA381: LateIdSt
  loc_9EA386: FFreeStr var_9C = ""
  loc_9EA38D: FFreeAd var_88 = "": var_A4 = ""
  loc_9EA396: FFreeVar var_98 = "": var_CC = ""
  loc_9EA39F: ExitProcHresult
End Function

Private Sub DesdeCodiReceMsk_UnknownEvent_0 '94BBD0
  'Data Table: 46A3E4
  loc_94BBBC: FLdPr Me
  loc_94BBBF: VCallAd Control_ID_DesdeCodiReceMsk
  loc_94BBC2: CVarAd
  loc_94BBC6: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94BBCB: FFree1Var var_94 = ""
  loc_94BBCE: ExitProcHresult
End Sub

Private Function DesdeCodiReceMsk_UnknownEvent_8(arg_C) '9A8B38
  'Data Table: 46A3E4
  loc_9A8ABC: FLdPr Me
  loc_9A8ABF: VCallAd Control_ID_DesdeCodiReceMsk
  loc_9A8AC2: FStAdFunc var_88
  loc_9A8AC5: FLdPr var_88
  loc_9A8AC8: LateIdLdVar var_98 DispID_22 0
  loc_9A8ACF: PopAd
  loc_9A8AD1: LitI2_Byte 0
  loc_9A8AD3: LitI2_Byte 0
  loc_9A8AD5: FLdRfVar var_98
  loc_9A8AD8: CStrVarTmp
  loc_9A8AD9: FStStrNoPop var_9C
  loc_9A8ADC: LitStr " el Nº de Recepción"
  loc_9A8ADF: ImpAdCallI2 Proc_266_27_9A5218(, , , )
  loc_9A8AE4: FStStrNoPop var_A0
  loc_9A8AE7: FLdPr Me
  loc_9A8AEA: MemStStrCopy
  loc_9A8AEE: FFreeStr var_9C = ""
  loc_9A8AF5: FFree1Ad var_88
  loc_9A8AF8: FFree1Var var_98 = ""
  loc_9A8AFB: FLdPr Me
  loc_9A8AFE: VCallAd Control_ID_DesdeCodiReceMsk
  loc_9A8B01: FStAdFunc var_AC
  loc_9A8B04: LitNothing
  loc_9A8B06: CastAd
  loc_9A8B09: FStAdFunc var_A8
  loc_9A8B0C: FLdRfVar var_A8
  loc_9A8B0F: FLdZeroAd var_AC
  loc_9A8B12: FStAdFuncNoPop
  loc_9A8B15: CastAd
  loc_9A8B18: FStAdFunc var_A4
  loc_9A8B1B: FLdRfVar var_A4
  loc_9A8B1E: FLdPr Me
  loc_9A8B21: MemLdRfVar from_stack_1.global_96
  loc_9A8B24: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9A8B29: IStI2 arg_C
  loc_9A8B2C: FFreeAd var_88 = "": var_A4 = "": var_A8 = ""
  loc_9A8B37: ExitProcHresult
End Function

Private Sub HastaCodiReceMsk_UnknownEvent_0 '9AF234
  'Data Table: 46A3E4
  loc_9AF198: FLdPr Me
  loc_9AF19B: VCallAd Control_ID_HastaCodiReceMsk
  loc_9AF19E: FStAdFunc var_88
  loc_9AF1A1: FLdPr var_88
  loc_9AF1A4: LateIdLdVar var_98 DispID_22 0
  loc_9AF1AB: CStrVarTmp
  loc_9AF1AC: FStStrNoPop var_9C
  loc_9AF1AF: LitStr vbNullString
  loc_9AF1B2: EqStr
  loc_9AF1B4: FLdPr Me
  loc_9AF1B7: VCallAd Control_ID_DesdeCodiReceMsk
  loc_9AF1BA: FStAdFunc var_A0
  loc_9AF1BD: FLdPr var_A0
  loc_9AF1C0: LateIdLdVar var_B0 DispID_0 0
  loc_9AF1C7: CStrVarTmp
  loc_9AF1C8: FStStrNoPop var_B4
  loc_9AF1CB: LitStr "1"
  loc_9AF1CE: NeStr
  loc_9AF1D0: OrI4
  loc_9AF1D1: FFreeStr var_9C = ""
  loc_9AF1D8: FFreeAd var_88 = ""
  loc_9AF1DF: FFreeVar var_98 = ""
  loc_9AF1E6: BranchF loc_9AF220
  loc_9AF1E9: FLdPr Me
  loc_9AF1EC: VCallAd Control_ID_DesdeCodiReceMsk
  loc_9AF1EF: FStAdFunc var_88
  loc_9AF1F2: FLdPr var_88
  loc_9AF1F5: LateIdLdVar var_98 DispID_22 0
  loc_9AF1FC: CStrVarTmp
  loc_9AF1FD: CVarStr var_B0
  loc_9AF200: PopAdLdVar
  loc_9AF201: FLdPr Me
  loc_9AF204: VCallAd Control_ID_HastaCodiReceMsk
  loc_9AF207: FStAdFunc var_A0
  loc_9AF20A: FLdPr var_A0
  loc_9AF20D: LateIdSt
  loc_9AF212: FFreeAd var_88 = ""
  loc_9AF219: FFreeVar var_98 = ""
  loc_9AF220: FLdPr Me
  loc_9AF223: VCallAd Control_ID_HastaCodiReceMsk
  loc_9AF226: CVarAd
  loc_9AF22A: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_9AF22F: FFree1Var var_98 = ""
  loc_9AF232: ExitProcHresult
End Sub

Private Function HastaCodiReceMsk_UnknownEvent_8(arg_C) '9A8688
  'Data Table: 46A3E4
  loc_9A860C: FLdPr Me
  loc_9A860F: VCallAd Control_ID_HastaCodiReceMsk
  loc_9A8612: FStAdFunc var_88
  loc_9A8615: FLdPr var_88
  loc_9A8618: LateIdLdVar var_98 DispID_22 0
  loc_9A861F: PopAd
  loc_9A8621: LitI2_Byte 0
  loc_9A8623: LitI2_Byte 0
  loc_9A8625: FLdRfVar var_98
  loc_9A8628: CStrVarTmp
  loc_9A8629: FStStrNoPop var_9C
  loc_9A862C: LitStr " el Nº de Recepción"
  loc_9A862F: ImpAdCallI2 Proc_266_27_9A5218(, , , )
  loc_9A8634: FStStrNoPop var_A0
  loc_9A8637: FLdPr Me
  loc_9A863A: MemStStrCopy
  loc_9A863E: FFreeStr var_9C = ""
  loc_9A8645: FFree1Ad var_88
  loc_9A8648: FFree1Var var_98 = ""
  loc_9A864B: FLdPr Me
  loc_9A864E: VCallAd Control_ID_HastaCodiReceMsk
  loc_9A8651: FStAdFunc var_AC
  loc_9A8654: LitNothing
  loc_9A8656: CastAd
  loc_9A8659: FStAdFunc var_A8
  loc_9A865C: FLdRfVar var_A8
  loc_9A865F: FLdZeroAd var_AC
  loc_9A8662: FStAdFuncNoPop
  loc_9A8665: CastAd
  loc_9A8668: FStAdFunc var_A4
  loc_9A866B: FLdRfVar var_A4
  loc_9A866E: FLdPr Me
  loc_9A8671: MemLdRfVar from_stack_1.global_96
  loc_9A8674: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9A8679: IStI2 arg_C
  loc_9A867C: FFreeAd var_88 = "": var_A4 = "": var_A8 = ""
  loc_9A8687: ExitProcHresult
End Function

Private Sub cmdSalir_Click() '97AAC8
  'Data Table: 46A3E4
  loc_97AA98: LitVarStr var_94, "Cerrando..."
  loc_97AA9D: PopAdLdVar
  loc_97AA9E: FLdPr Me
  loc_97AAA1: VCallAd Control_ID_statusBar
  loc_97AAA4: FStAdFunc var_A8
  loc_97AAA7: FLdPr var_A8
  loc_97AAAA: LateIdSt
  loc_97AAAF: FFree1Ad var_A8
  loc_97AAB2: ILdRf Me
  loc_97AAB5: FStAdNoPop
  loc_97AAB9: ImpAdLdRf MemVar_C44F9C
  loc_97AABC: NewIfNullPr Me
  loc_97AABF: Me.Global.Unload from_stack_1
  loc_97AAC4: FFree1Ad var_A8
  loc_97AAC7: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '9571F8
  'Data Table: 46A3E4
  loc_9571E0: ILdRf Me
  loc_9571E3: CastAd
  loc_9571E6: FStAdFunc var_88
  loc_9571E9: FLdRfVar var_88
  loc_9571EC: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_9571F1: FFree1Ad var_88
  loc_9571F4: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '992A74
  'Data Table: 46A3E4
  loc_992A1C: LitStr "Municipalidad de Guaymallén"
  loc_992A1F: LitStr "Municipalidad de Tunuyán"
  loc_992A22: EqStr
  loc_992A24: BranchF loc_992A3E
  loc_992A27: ILdRf Me
  loc_992A2A: CastAd
  loc_992A2D: FStAdFunc var_88
  loc_992A30: FLdRfVar var_88
  loc_992A33: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_992A38: FFree1Ad var_88
  loc_992A3B: Branch loc_992A72
  loc_992A3E: LitI2_Byte 1
  loc_992A40: CUI1I2
  loc_992A42: FLdPr Me
  loc_992A45: MemLdRfVar from_stack_1.global_92
  loc_992A48: LitI2_Byte 2
  loc_992A4A: CUI1I2
  loc_992A4C: ForUI1 var_8C
  loc_992A52: ILdRf Me
  loc_992A55: CastAd
  loc_992A58: FStAdFunc var_88
  loc_992A5B: FLdRfVar var_88
  loc_992A5E: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_992A63: FFree1Ad var_88
  loc_992A66: FLdPr Me
  loc_992A69: MemLdRfVar from_stack_1.global_92
  loc_992A6C: NextUI1
  loc_992A72: ExitProcHresult
  loc_992A73: CI2I4
End Sub

Private Sub Form_Load() '9D0160
  'Data Table: 46A3E4
  loc_9D0088: LitI2_Byte 0
  loc_9D008A: ImpAdStI2 MemVar_C3D840
  loc_9D008D: ILdRf Me
  loc_9D0090: CastAd
  loc_9D0093: FStAdFunc var_8C
  loc_9D0096: FLdRfVar var_8C
  loc_9D0099: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_9D009E: FFree1Ad var_8C
  loc_9D00A1: LitStr "SELECT * FROM infogov.periodo ORDER BY PeriInfo"
  loc_9D00A4: FLdRfVar var_88
  loc_9D00A7: NewIfNullPr clsperiodo
  loc_9D00AA: Call clsperiodo.RedefineRS(from_stack_1v)
  loc_9D00AF: FLdRfVar var_90
  loc_9D00B2: FLdRfVar var_88
  loc_9D00B5: NewIfNullPr clsperiodo
  loc_9D00B8: from_stack_1 = clsperiodo.RecordCount
  loc_9D00BD: ILdRf var_90
  loc_9D00C0: LitI4 0
  loc_9D00C5: GtI4
  loc_9D00C6: BranchF loc_9D0159
  loc_9D00C9: FLdRfVar var_88
  loc_9D00CC: NewIfNullPr clsperiodo
  loc_9D00CF: Call clsperiodo.MoveFirst()
  loc_9D00D4: FLdRfVar var_92
  loc_9D00D7: FLdRfVar var_88
  loc_9D00DA: NewIfNullPr clsperiodo
  loc_9D00DD: from_stack_1 = clsperiodo.EOF
  loc_9D00E2: FLdI2 var_92
  loc_9D00E5: NotI4
  loc_9D00E6: BranchF loc_9D0159
  loc_9D00E9: LitVar_Missing var_D0
  loc_9D00EC: PopAdLdVar
  loc_9D00ED: FLdRfVar var_BC
  loc_9D00F0: FLdRfVar var_AC
  loc_9D00F3: LitVarStr var_A8, "PeriInfo"
  loc_9D00F8: PopAdLdVar
  loc_9D00F9: FLdRfVar var_98
  loc_9D00FC: FLdRfVar var_8C
  loc_9D00FF: FLdRfVar var_88
  loc_9D0102: NewIfNullPr clsperiodo
  loc_9D0105: from_stack_1v = clsperiodo.RsFrmGet()
  loc_9D010A: FLdPr var_8C
  loc_9D010D:  = Me.Fields
  loc_9D0112: FLdPr var_98
  loc_9D0115: from_stack_2 = Me.Item(from_stack_1)
  loc_9D011A: FLdPr var_AC
  loc_9D011D:  = Me.Value
  loc_9D0122: FLdRfVar var_BC
  loc_9D0125: CStrVarTmp
  loc_9D0126: FStStrNoPop var_C0
  loc_9D0129: FLdPr Me
  loc_9D012C: VCallAd Control_ID_cboPeriodo
  loc_9D012F: FStAdFunc var_D4
  loc_9D0132: FLdPr var_D4
  loc_9D0135: Me.AddItem from_stack_1, from_stack_2
  loc_9D013A: FFree1Str var_C0
  loc_9D013D: FFreeAd var_8C = "": var_98 = "": var_AC = ""
  loc_9D0148: FFree1Var var_BC = ""
  loc_9D014B: FLdRfVar var_88
  loc_9D014E: NewIfNullPr clsperiodo
  loc_9D0151: Call clsperiodo.MoveSiguiente()
  loc_9D0156: Branch loc_9D00D4
  loc_9D0159: Call cmdNueva_Click()
  loc_9D015E: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '954654
  'Data Table: 46A3E4
  loc_95463C: FLdPr Me
  loc_95463F: VCallAd Control_ID_wbbReporte
  loc_954642: FStAdFunc var_88
  loc_954645: FLdRfVar var_88
  loc_954648: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_95464D: FFree1Ad var_88
  loc_954650: ExitProcHresult
End Sub

Public Function htmFileGet() '46B1F0
  htmFileGet = htmFile
End Function

Public Sub htmFilePut(Value) '46B1FF
  htmFile = Value
End Sub

Public Sub htmFileSet(Value) '46B20E
  htmFile = Value
End Sub

Public Function bGeneradoGet() '46B21D
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '46B22C
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() '9A2AEC
  'Data Table: 46A3E4
  loc_9A2A88: LitI4 0
  loc_9A2A8D: LitI4 3
  loc_9A2A92: FLdRfVar var_88
  loc_9A2A95: Redim
  loc_9A2A9F: FLdPr Me
  loc_9A2AA2: VCallAd Control_ID_cboPeriodo
  loc_9A2AA5: CVarAd
  loc_9A2AA9: ParmAry1St
  loc_9A2AAF: FLdPr Me
  loc_9A2AB2: VCallAd Control_ID_CodiOrcoMsk
  loc_9A2AB5: CVarAd
  loc_9A2AB9: ParmAry1St
  loc_9A2ABF: FLdPr Me
  loc_9A2AC2: VCallAd Control_ID_DesdeCodiReceMsk
  loc_9A2AC5: CVarAd
  loc_9A2AC9: ParmAry1St
  loc_9A2ACF: FLdPr Me
  loc_9A2AD2: VCallAd Control_ID_HastaCodiReceMsk
  loc_9A2AD5: CVarAd
  loc_9A2AD9: ParmAry1St
  loc_9A2ADF: FLdRfVar var_88
  loc_9A2AE2: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9A2AE7: FLdRfVar var_88
  loc_9A2AEA: Erase
  loc_9A2AEB: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'B4E97C
  'Data Table: 46A3E4
  loc_B4DF24: FLdPr Me
  loc_B4DF27: MemLdI2 bGenerado
  loc_B4DF2A: BranchF loc_B4DF2E
  loc_B4DF2D: ExitProcHresult
  loc_B4DF2E: LitVarStr var_98, "Generando reporte..."
  loc_B4DF33: PopAdLdVar
  loc_B4DF34: FLdPr Me
  loc_B4DF37: VCallAd Control_ID_statusBar
  loc_B4DF3A: FStAdFunc var_AC
  loc_B4DF3D: FLdPr var_AC
  loc_B4DF40: LateIdSt
  loc_B4DF45: FFree1Ad var_AC
  loc_B4DF48: LitI4 &HB
  loc_B4DF4D: CI2I4
  loc_B4DF4E: FLdPr Me
  loc_B4DF51: Me.MousePointer = from_stack_1
  loc_B4DF56: LitI2_Byte 0
  loc_B4DF58: PopTmpLdAd2 var_AE
  loc_B4DF5B: from_stack_2v = DesdeCodiReceMsk_UnknownEvent_8(from_stack_1v)
  loc_B4DF60: FLdPr Me
  loc_B4DF63: MemLdStr global_96
  loc_B4DF66: LitStr vbNullString
  loc_B4DF69: NeStr
  loc_B4DF6B: BranchF loc_B4DF71
  loc_B4DF6E: Branch loc_B4E950
  loc_B4DF71: LitI2_Byte 0
  loc_B4DF73: PopTmpLdAd2 var_AE
  loc_B4DF76: from_stack_2v = HastaCodiReceMsk_UnknownEvent_8(from_stack_1v)
  loc_B4DF7B: FLdPr Me
  loc_B4DF7E: MemLdStr global_96
  loc_B4DF81: LitStr vbNullString
  loc_B4DF84: NeStr
  loc_B4DF86: BranchF loc_B4DF8C
  loc_B4DF89: Branch loc_B4E950
  loc_B4DF8C: FLdPr Me
  loc_B4DF8F: MemLdRfVar from_stack_1.global_72
  loc_B4DF92: NewIfNullAd
  loc_B4DF95: FStAd var_B4 
  loc_B4DF99: LitStr "SELECT r.PeriInfo, r.CodiOrco, r.CodiRece, DetaOrco, oc.CodiNope, oc.CodiTico, DetaTico, DipaTico, oc.CucuPers, DetaProv, r.ExpeImpu, r.ExpeImpuGDE"
  loc_B4DF9C: LitStr ", FechRece, FepaRece, FefaRece, FeanRece, r.BajaMoti, r.AltaUsua, NumeFact, Sum(itr.CantItre * itr.ImpoItre + itr.AjusItre) TotaRece"
  loc_B4DF9F: ConcatStr
  loc_B4DFA0: FStStrNoPop var_B8
  loc_B4DFA3: LitStr " FROM recepcion r"
  loc_B4DFA6: ConcatStr
  loc_B4DFA7: FStStrNoPop var_BC
  loc_B4DFAA: LitStr " INNER JOIN ordencompra oc ON oc.PeriInfo = r.PeriInfo AND oc.CodiOrco = r.CodiOrco"
  loc_B4DFAD: ConcatStr
  loc_B4DFAE: FStStrNoPop var_C0
  loc_B4DFB1: LitStr " INNER JOIN proveedor p ON p.CucuPers = oc.CucuPers"
  loc_B4DFB4: ConcatStr
  loc_B4DFB5: FStStrNoPop var_C4
  loc_B4DFB8: LitStr " INNER JOIN tipocompra tc ON tc.CodiTico = oc.CodiTico"
  loc_B4DFBB: ConcatStr
  loc_B4DFBC: FStStrNoPop var_C8
  loc_B4DFBF: LitStr " INNER JOIN itemrecepcion itr ON itr.PeriInfo = r.PeriInfo AND itr.CodiOrco = r.CodiOrco AND itr.CodiRece = r.CodiRece"
  loc_B4DFC2: ConcatStr
  loc_B4DFC3: FStStrNoPop var_CC
  loc_B4DFC6: LitStr " WHERE r.PeriInfo = "
  loc_B4DFC9: ConcatStr
  loc_B4DFCA: FStStrNoPop var_D4
  loc_B4DFCD: FLdRfVar var_D0
  loc_B4DFD0: FLdPr Me
  loc_B4DFD3: VCallAd Control_ID_cboPeriodo
  loc_B4DFD6: FStAdFunc var_AC
  loc_B4DFD9: FLdPr var_AC
  loc_B4DFDC:  = Me.Text
  loc_B4DFE1: ILdRf var_D0
  loc_B4DFE4: ConcatStr
  loc_B4DFE5: FStStrNoPop var_D8
  loc_B4DFE8: LitStr " AND r.FeanRece IS NULL AND r.CodiOrco = "
  loc_B4DFEB: ConcatStr
  loc_B4DFEC: FStStrNoPop var_F0
  loc_B4DFEF: FLdPr Me
  loc_B4DFF2: VCallAd Control_ID_CodiOrcoMsk
  loc_B4DFF5: FStAdFunc var_DC
  loc_B4DFF8: FLdPr var_DC
  loc_B4DFFB: LateIdLdVar var_EC DispID_22 0
  loc_B4E002: CStrVarTmp
  loc_B4E003: FStStrNoPop var_F4
  loc_B4E006: ConcatStr
  loc_B4E007: FStStrNoPop var_F8
  loc_B4E00A: LitStr " AND r.CodiRece BETWEEN "
  loc_B4E00D: ConcatStr
  loc_B4E00E: FStStrNoPop var_110
  loc_B4E011: FLdPr Me
  loc_B4E014: VCallAd Control_ID_DesdeCodiReceMsk
  loc_B4E017: FStAdFunc var_FC
  loc_B4E01A: FLdPr var_FC
  loc_B4E01D: LateIdLdVar var_10C DispID_22 0
  loc_B4E024: CStrVarTmp
  loc_B4E025: FStStrNoPop var_114
  loc_B4E028: ConcatStr
  loc_B4E029: FStStrNoPop var_118
  loc_B4E02C: LitStr " AND "
  loc_B4E02F: ConcatStr
  loc_B4E030: FStStrNoPop var_130
  loc_B4E033: FLdPr Me
  loc_B4E036: VCallAd Control_ID_HastaCodiReceMsk
  loc_B4E039: FStAdFunc var_11C
  loc_B4E03C: FLdPr var_11C
  loc_B4E03F: LateIdLdVar var_12C DispID_22 0
  loc_B4E046: CStrVarTmp
  loc_B4E047: FStStrNoPop var_134
  loc_B4E04A: ConcatStr
  loc_B4E04B: FStStrNoPop var_138
  loc_B4E04E: LitStr " GROUP BY r.PeriInfo, r.CodiOrco, r.CodiRece"
  loc_B4E051: ConcatStr
  loc_B4E052: FStStrNoPop var_13C
  loc_B4E055: LitStr " ORDER BY CodiOrco, CodiRece;"
  loc_B4E058: ConcatStr
  loc_B4E059: FStStrNoPop var_140
  loc_B4E05C: FLdPr var_B4
  loc_B4E05F: Call clsrecepcion.RedefineRS(from_stack_1v)
  loc_B4E064: FFreeStr var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D4 = "": var_D0 = "": var_D8 = "": var_F0 = "": var_F4 = "": var_F8 = "": var_110 = "": var_114 = "": var_118 = "": var_130 = "": var_134 = "": var_138 = "": var_13C = ""
  loc_B4E08F: FFreeAd var_AC = "": var_DC = "": var_FC = ""
  loc_B4E09A: FFreeVar var_EC = "": var_10C = ""
  loc_B4E0A3: FLdRfVar var_144
  loc_B4E0A6: FLdPr Me
  loc_B4E0A9: MemLdRfVar from_stack_1.global_72
  loc_B4E0AC: NewIfNullPr clsrecepcion
  loc_B4E0AF: from_stack_1 = clsrecepcion.RecordCount
  loc_B4E0B4: ILdRf var_144
  loc_B4E0B7: LitI4 0
  loc_B4E0BC: EqI4
  loc_B4E0BD: BranchF loc_B4E0D0
  loc_B4E0C0: LitI4 0
  loc_B4E0C5: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_B4E0C8: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B4E0CD: Branch loc_B4E950
  loc_B4E0D0: LitI4 1
  loc_B4E0D5: FLdRfVar var_144
  loc_B4E0D8: FLdPr var_B4
  loc_B4E0DB: from_stack_1 = clsrecepcion.RecordCount
  loc_B4E0E0: ILdRf var_144
  loc_B4E0E3: FLdPr Me
  loc_B4E0E6: MemLdRfVar from_stack_1.global_80
  loc_B4E0E9: Redim
  loc_B4E0F3: FLdPr Me
  loc_B4E0F6: MemLdRfVar from_stack_1.global_72
  loc_B4E0F9: NewIfNullPr clsrecepcion
  loc_B4E0FC: Call clsrecepcion.MoveFirst()
  loc_B4E101: LitI4 1
  loc_B4E106: FLdPr Me
  loc_B4E109: MemLdRfVar from_stack_1.global_84
  loc_B4E10C: FLdPr Me
  loc_B4E10F: MemLdStr global_80
  loc_B4E112: LitI2_Byte 1
  loc_B4E114: FnUBound
  loc_B4E116: ForI4 var_14C
  loc_B4E11C: FLdPr Me
  loc_B4E11F: MemLdRfVar from_stack_1.global_72
  loc_B4E122: NewIfNullAd
  loc_B4E125: FStAd var_150 
  loc_B4E129: FLdRfVar var_FC
  loc_B4E12C: LitVarStr var_98, "CodiOrco"
  loc_B4E131: PopAdLdVar
  loc_B4E132: FLdRfVar var_DC
  loc_B4E135: FLdRfVar var_AC
  loc_B4E138: FLdPr var_150
  loc_B4E13B: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_B4E140: FLdPr var_AC
  loc_B4E143:  = Me.Fields
  loc_B4E148: FLdPr var_DC
  loc_B4E14B: from_stack_2 = Me.Item(from_stack_1)
  loc_B4E150: LitI2_Byte 0
  loc_B4E152: LitVar_Missing var_10C
  loc_B4E155: LitI2_Byte 0
  loc_B4E157: FLdZeroAd var_FC
  loc_B4E15A: CVarAd
  loc_B4E15E: PopAdLdVar
  loc_B4E15F: FLdPr Me
  loc_B4E162: MemLdStr global_84
  loc_B4E165: FLdPr Me
  loc_B4E168: MemLdStr global_80
  loc_B4E16B: AryLock
  loc_B4E16E: Ary1LdPr
  loc_B4E16F: MemLdRfVar from_stack_1.global_0
  loc_B4E172: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B4E177: AryUnlock
  loc_B4E17A: FFreeAd var_AC = ""
  loc_B4E181: FFreeVar var_EC = ""
  loc_B4E188: FLdRfVar var_FC
  loc_B4E18B: LitVarStr var_98, "CodiRece"
  loc_B4E190: PopAdLdVar
  loc_B4E191: FLdRfVar var_DC
  loc_B4E194: FLdRfVar var_AC
  loc_B4E197: FLdPr var_150
  loc_B4E19A: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_B4E19F: FLdPr var_AC
  loc_B4E1A2:  = Me.Fields
  loc_B4E1A7: FLdPr var_DC
  loc_B4E1AA: from_stack_2 = Me.Item(from_stack_1)
  loc_B4E1AF: LitI2_Byte 0
  loc_B4E1B1: LitVar_Missing var_10C
  loc_B4E1B4: LitI2_Byte 0
  loc_B4E1B6: FLdZeroAd var_FC
  loc_B4E1B9: CVarAd
  loc_B4E1BD: PopAdLdVar
  loc_B4E1BE: FLdPr Me
  loc_B4E1C1: MemLdStr global_84
  loc_B4E1C4: FLdPr Me
  loc_B4E1C7: MemLdStr global_80
  loc_B4E1CA: AryLock
  loc_B4E1CD: Ary1LdPr
  loc_B4E1CE: MemLdRfVar from_stack_1.global_4
  loc_B4E1D1: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B4E1D6: AryUnlock
  loc_B4E1D9: FFreeAd var_AC = ""
  loc_B4E1E0: FFreeVar var_EC = ""
  loc_B4E1E7: FLdRfVar var_FC
  loc_B4E1EA: LitVarStr var_98, "DetaOrco"
  loc_B4E1EF: PopAdLdVar
  loc_B4E1F0: FLdRfVar var_DC
  loc_B4E1F3: FLdRfVar var_AC
  loc_B4E1F6: FLdPr var_150
  loc_B4E1F9: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_B4E1FE: FLdPr var_AC
  loc_B4E201:  = Me.Fields
  loc_B4E206: FLdPr var_DC
  loc_B4E209: from_stack_2 = Me.Item(from_stack_1)
  loc_B4E20E: LitI2_Byte 0
  loc_B4E210: LitVar_Missing var_10C
  loc_B4E213: LitI2_Byte 0
  loc_B4E215: FLdZeroAd var_FC
  loc_B4E218: CVarAd
  loc_B4E21C: PopAdLdVar
  loc_B4E21D: FLdPr Me
  loc_B4E220: MemLdStr global_84
  loc_B4E223: FLdPr Me
  loc_B4E226: MemLdStr global_80
  loc_B4E229: AryLock
  loc_B4E22C: Ary1LdPr
  loc_B4E22D: MemLdRfVar from_stack_1.global_8
  loc_B4E230: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B4E235: AryUnlock
  loc_B4E238: FFreeAd var_AC = ""
  loc_B4E23F: FFreeVar var_EC = ""
  loc_B4E246: FLdRfVar var_FC
  loc_B4E249: LitVarStr var_98, "CodiNope"
  loc_B4E24E: PopAdLdVar
  loc_B4E24F: FLdRfVar var_DC
  loc_B4E252: FLdRfVar var_AC
  loc_B4E255: FLdPr var_150
  loc_B4E258: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_B4E25D: FLdPr var_AC
  loc_B4E260:  = Me.Fields
  loc_B4E265: FLdPr var_DC
  loc_B4E268: from_stack_2 = Me.Item(from_stack_1)
  loc_B4E26D: LitI2_Byte 0
  loc_B4E26F: LitVar_Missing var_10C
  loc_B4E272: LitI2_Byte 0
  loc_B4E274: FLdZeroAd var_FC
  loc_B4E277: CVarAd
  loc_B4E27B: PopAdLdVar
  loc_B4E27C: FLdPr Me
  loc_B4E27F: MemLdStr global_84
  loc_B4E282: FLdPr Me
  loc_B4E285: MemLdStr global_80
  loc_B4E288: AryLock
  loc_B4E28B: Ary1LdPr
  loc_B4E28C: MemLdRfVar from_stack_1.global_12
  loc_B4E28F: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B4E294: AryUnlock
  loc_B4E297: FFreeAd var_AC = ""
  loc_B4E29E: FFreeVar var_EC = ""
  loc_B4E2A5: FLdRfVar var_FC
  loc_B4E2A8: LitVarStr var_98, "CodiTico"
  loc_B4E2AD: PopAdLdVar
  loc_B4E2AE: FLdRfVar var_DC
  loc_B4E2B1: FLdRfVar var_AC
  loc_B4E2B4: FLdPr var_150
  loc_B4E2B7: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_B4E2BC: FLdPr var_AC
  loc_B4E2BF:  = Me.Fields
  loc_B4E2C4: FLdPr var_DC
  loc_B4E2C7: from_stack_2 = Me.Item(from_stack_1)
  loc_B4E2CC: LitI2_Byte 0
  loc_B4E2CE: LitVar_Missing var_10C
  loc_B4E2D1: LitI2_Byte 0
  loc_B4E2D3: FLdZeroAd var_FC
  loc_B4E2D6: CVarAd
  loc_B4E2DA: PopAdLdVar
  loc_B4E2DB: FLdPr Me
  loc_B4E2DE: MemLdStr global_84
  loc_B4E2E1: FLdPr Me
  loc_B4E2E4: MemLdStr global_80
  loc_B4E2E7: AryLock
  loc_B4E2EA: Ary1LdPr
  loc_B4E2EB: MemLdRfVar from_stack_1.global_16
  loc_B4E2EE: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B4E2F3: AryUnlock
  loc_B4E2F6: FFreeAd var_AC = ""
  loc_B4E2FD: FFreeVar var_EC = ""
  loc_B4E304: FLdRfVar var_FC
  loc_B4E307: LitVarStr var_98, "DetaTico"
  loc_B4E30C: PopAdLdVar
  loc_B4E30D: FLdRfVar var_DC
  loc_B4E310: FLdRfVar var_AC
  loc_B4E313: FLdPr var_150
  loc_B4E316: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_B4E31B: FLdPr var_AC
  loc_B4E31E:  = Me.Fields
  loc_B4E323: FLdPr var_DC
  loc_B4E326: from_stack_2 = Me.Item(from_stack_1)
  loc_B4E32B: LitI2_Byte 0
  loc_B4E32D: LitVar_Missing var_10C
  loc_B4E330: LitI2_Byte 0
  loc_B4E332: FLdZeroAd var_FC
  loc_B4E335: CVarAd
  loc_B4E339: PopAdLdVar
  loc_B4E33A: FLdPr Me
  loc_B4E33D: MemLdStr global_84
  loc_B4E340: FLdPr Me
  loc_B4E343: MemLdStr global_80
  loc_B4E346: AryLock
  loc_B4E349: Ary1LdPr
  loc_B4E34A: MemLdRfVar from_stack_1.global_20
  loc_B4E34D: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B4E352: AryUnlock
  loc_B4E355: FFreeAd var_AC = ""
  loc_B4E35C: FFreeVar var_EC = ""
  loc_B4E363: FLdRfVar var_FC
  loc_B4E366: LitVarStr var_98, "DipaTico"
  loc_B4E36B: PopAdLdVar
  loc_B4E36C: FLdRfVar var_DC
  loc_B4E36F: FLdRfVar var_AC
  loc_B4E372: FLdPr var_150
  loc_B4E375: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_B4E37A: FLdPr var_AC
  loc_B4E37D:  = Me.Fields
  loc_B4E382: FLdPr var_DC
  loc_B4E385: from_stack_2 = Me.Item(from_stack_1)
  loc_B4E38A: LitI2_Byte 0
  loc_B4E38C: LitVar_Missing var_10C
  loc_B4E38F: LitI2_Byte 0
  loc_B4E391: FLdZeroAd var_FC
  loc_B4E394: CVarAd
  loc_B4E398: PopAdLdVar
  loc_B4E399: FLdPr Me
  loc_B4E39C: MemLdStr global_84
  loc_B4E39F: FLdPr Me
  loc_B4E3A2: MemLdStr global_80
  loc_B4E3A5: AryLock
  loc_B4E3A8: Ary1LdPr
  loc_B4E3A9: MemLdRfVar from_stack_1.global_24
  loc_B4E3AC: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B4E3B1: AryUnlock
  loc_B4E3B4: FFreeAd var_AC = ""
  loc_B4E3BB: FFreeVar var_EC = ""
  loc_B4E3C2: FLdRfVar var_FC
  loc_B4E3C5: LitVarStr var_98, "CucuPers"
  loc_B4E3CA: PopAdLdVar
  loc_B4E3CB: FLdRfVar var_DC
  loc_B4E3CE: FLdRfVar var_AC
  loc_B4E3D1: FLdPr var_150
  loc_B4E3D4: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_B4E3D9: FLdPr var_AC
  loc_B4E3DC:  = Me.Fields
  loc_B4E3E1: FLdPr var_DC
  loc_B4E3E4: from_stack_2 = Me.Item(from_stack_1)
  loc_B4E3E9: LitI2_Byte 0
  loc_B4E3EB: LitVar_Missing var_10C
  loc_B4E3EE: LitI2_Byte 0
  loc_B4E3F0: FLdZeroAd var_FC
  loc_B4E3F3: CVarAd
  loc_B4E3F7: PopAdLdVar
  loc_B4E3F8: FLdPr Me
  loc_B4E3FB: MemLdStr global_84
  loc_B4E3FE: FLdPr Me
  loc_B4E401: MemLdStr global_80
  loc_B4E404: AryLock
  loc_B4E407: Ary1LdPr
  loc_B4E408: MemLdRfVar from_stack_1.global_28
  loc_B4E40B: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B4E410: AryUnlock
  loc_B4E413: FFreeAd var_AC = ""
  loc_B4E41A: FFreeVar var_EC = ""
  loc_B4E421: FLdRfVar var_FC
  loc_B4E424: LitVarStr var_98, "DetaProv"
  loc_B4E429: PopAdLdVar
  loc_B4E42A: FLdRfVar var_DC
  loc_B4E42D: FLdRfVar var_AC
  loc_B4E430: FLdPr var_150
  loc_B4E433: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_B4E438: FLdPr var_AC
  loc_B4E43B:  = Me.Fields
  loc_B4E440: FLdPr var_DC
  loc_B4E443: from_stack_2 = Me.Item(from_stack_1)
  loc_B4E448: LitI2_Byte 0
  loc_B4E44A: LitVar_Missing var_10C
  loc_B4E44D: LitI2_Byte 0
  loc_B4E44F: FLdZeroAd var_FC
  loc_B4E452: CVarAd
  loc_B4E456: PopAdLdVar
  loc_B4E457: FLdPr Me
  loc_B4E45A: MemLdStr global_84
  loc_B4E45D: FLdPr Me
  loc_B4E460: MemLdStr global_80
  loc_B4E463: AryLock
  loc_B4E466: Ary1LdPr
  loc_B4E467: MemLdRfVar from_stack_1.global_32
  loc_B4E46A: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B4E46F: AryUnlock
  loc_B4E472: FFreeAd var_AC = ""
  loc_B4E479: FFreeVar var_EC = ""
  loc_B4E480: FLdRfVar var_FC
  loc_B4E483: LitVarStr var_98, "ExpeImpu"
  loc_B4E488: PopAdLdVar
  loc_B4E489: FLdRfVar var_DC
  loc_B4E48C: FLdRfVar var_AC
  loc_B4E48F: FLdPr var_150
  loc_B4E492: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_B4E497: FLdPr var_AC
  loc_B4E49A:  = Me.Fields
  loc_B4E49F: FLdPr var_DC
  loc_B4E4A2: from_stack_2 = Me.Item(from_stack_1)
  loc_B4E4A7: LitI2_Byte 0
  loc_B4E4A9: LitVar_Missing var_10C
  loc_B4E4AC: LitI2_Byte 0
  loc_B4E4AE: FLdZeroAd var_FC
  loc_B4E4B1: CVarAd
  loc_B4E4B5: PopAdLdVar
  loc_B4E4B6: FLdPr Me
  loc_B4E4B9: MemLdStr global_84
  loc_B4E4BC: FLdPr Me
  loc_B4E4BF: MemLdStr global_80
  loc_B4E4C2: AryLock
  loc_B4E4C5: Ary1LdPr
  loc_B4E4C6: MemLdRfVar from_stack_1.global_36
  loc_B4E4C9: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B4E4CE: AryUnlock
  loc_B4E4D1: FFreeAd var_AC = ""
  loc_B4E4D8: FFreeVar var_EC = ""
  loc_B4E4DF: FLdRfVar var_FC
  loc_B4E4E2: LitVarStr var_98, "ExpeImpuGDE"
  loc_B4E4E7: PopAdLdVar
  loc_B4E4E8: FLdRfVar var_DC
  loc_B4E4EB: FLdRfVar var_AC
  loc_B4E4EE: FLdPr var_150
  loc_B4E4F1: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_B4E4F6: FLdPr var_AC
  loc_B4E4F9:  = Me.Fields
  loc_B4E4FE: FLdPr var_DC
  loc_B4E501: from_stack_2 = Me.Item(from_stack_1)
  loc_B4E506: LitI2_Byte 0
  loc_B4E508: LitVar_Missing var_10C
  loc_B4E50B: LitI2_Byte 0
  loc_B4E50D: FLdZeroAd var_FC
  loc_B4E510: CVarAd
  loc_B4E514: PopAdLdVar
  loc_B4E515: FLdPr Me
  loc_B4E518: MemLdStr global_84
  loc_B4E51B: FLdPr Me
  loc_B4E51E: MemLdStr global_80
  loc_B4E521: AryLock
  loc_B4E524: Ary1LdPr
  loc_B4E525: MemLdRfVar from_stack_1.global_40
  loc_B4E528: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B4E52D: AryUnlock
  loc_B4E530: FFreeAd var_AC = ""
  loc_B4E537: FFreeVar var_EC = ""
  loc_B4E53E: FLdRfVar var_FC
  loc_B4E541: LitVarStr var_98, "FechRece"
  loc_B4E546: PopAdLdVar
  loc_B4E547: FLdRfVar var_DC
  loc_B4E54A: FLdRfVar var_AC
  loc_B4E54D: FLdPr var_150
  loc_B4E550: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_B4E555: FLdPr var_AC
  loc_B4E558:  = Me.Fields
  loc_B4E55D: FLdPr var_DC
  loc_B4E560: from_stack_2 = Me.Item(from_stack_1)
  loc_B4E565: LitI2_Byte 0
  loc_B4E567: LitVar_Missing var_10C
  loc_B4E56A: LitI2_Byte 0
  loc_B4E56C: FLdZeroAd var_FC
  loc_B4E56F: CVarAd
  loc_B4E573: PopAdLdVar
  loc_B4E574: FLdPr Me
  loc_B4E577: MemLdStr global_84
  loc_B4E57A: FLdPr Me
  loc_B4E57D: MemLdStr global_80
  loc_B4E580: AryLock
  loc_B4E583: Ary1LdPr
  loc_B4E584: MemLdRfVar from_stack_1.global_44
  loc_B4E587: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B4E58C: AryUnlock
  loc_B4E58F: FFreeAd var_AC = ""
  loc_B4E596: FFreeVar var_EC = ""
  loc_B4E59D: FLdRfVar var_FC
  loc_B4E5A0: LitVarStr var_98, "FepaRece"
  loc_B4E5A5: PopAdLdVar
  loc_B4E5A6: FLdRfVar var_DC
  loc_B4E5A9: FLdRfVar var_AC
  loc_B4E5AC: FLdPr var_150
  loc_B4E5AF: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_B4E5B4: FLdPr var_AC
  loc_B4E5B7:  = Me.Fields
  loc_B4E5BC: FLdPr var_DC
  loc_B4E5BF: from_stack_2 = Me.Item(from_stack_1)
  loc_B4E5C4: FLdZeroAd var_FC
  loc_B4E5C7: CVarAd
  loc_B4E5CB: ImpAdCallI2 IsNull()
  loc_B4E5D0: FStI2 var_AE
  loc_B4E5D3: FLdRfVar var_15C
  loc_B4E5D6: LitVarStr var_A8, "FepaRece"
  loc_B4E5DB: PopAdLdVar
  loc_B4E5DC: FLdRfVar var_158
  loc_B4E5DF: FLdRfVar var_11C
  loc_B4E5E2: FLdPr var_150
  loc_B4E5E5: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_B4E5EA: FLdPr var_11C
  loc_B4E5ED:  = Me.Fields
  loc_B4E5F2: FLdPr var_158
  loc_B4E5F5: from_stack_2 = Me.Item(from_stack_1)
  loc_B4E5FA: FLdZeroAd var_15C
  loc_B4E5FD: CVarAd
  loc_B4E601: LitVarStr var_17C, "&nbsp;&nbsp;&nbsp;/&nbsp;&nbsp;&nbsp;/&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"
  loc_B4E606: FStVarCopyObj var_10C
  loc_B4E609: FLdRfVar var_10C
  loc_B4E60C: FLdI2 var_AE
  loc_B4E60F: CVarBoolI2 var_16C
  loc_B4E613: FLdRfVar var_18C
  loc_B4E616: ImpAdCallFPR4  = IIf(, , )
  loc_B4E61B: LitI2_Byte 0
  loc_B4E61D: LitVar_Missing var_1AC
  loc_B4E620: LitI2_Byte 0
  loc_B4E622: FLdVar var_18C
  loc_B4E626: FLdPr Me
  loc_B4E629: MemLdStr global_84
  loc_B4E62C: FLdPr Me
  loc_B4E62F: MemLdStr global_80
  loc_B4E632: AryLock
  loc_B4E635: Ary1LdPr
  loc_B4E636: MemLdRfVar from_stack_1.global_48
  loc_B4E639: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B4E63E: AryUnlock
  loc_B4E641: FFreeAd var_AC = "": var_DC = "": var_11C = ""
  loc_B4E64C: FFreeVar var_EC = "": var_16C = "": var_10C = "": var_12C = "": var_18C = ""
  loc_B4E65B: FLdRfVar var_FC
  loc_B4E65E: LitVarStr var_98, "FefaRece"
  loc_B4E663: PopAdLdVar
  loc_B4E664: FLdRfVar var_DC
  loc_B4E667: FLdRfVar var_AC
  loc_B4E66A: FLdPr var_150
  loc_B4E66D: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_B4E672: FLdPr var_AC
  loc_B4E675:  = Me.Fields
  loc_B4E67A: FLdPr var_DC
  loc_B4E67D: from_stack_2 = Me.Item(from_stack_1)
  loc_B4E682: LitI2_Byte 0
  loc_B4E684: LitVar_Missing var_10C
  loc_B4E687: LitI2_Byte 0
  loc_B4E689: FLdZeroAd var_FC
  loc_B4E68C: CVarAd
  loc_B4E690: PopAdLdVar
  loc_B4E691: FLdPr Me
  loc_B4E694: MemLdStr global_84
  loc_B4E697: FLdPr Me
  loc_B4E69A: MemLdStr global_80
  loc_B4E69D: AryLock
  loc_B4E6A0: Ary1LdPr
  loc_B4E6A1: MemLdRfVar from_stack_1.htmFile
  loc_B4E6A4: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B4E6A9: AryUnlock
  loc_B4E6AC: FFreeAd var_AC = ""
  loc_B4E6B3: FFreeVar var_EC = ""
  loc_B4E6BA: FLdRfVar var_FC
  loc_B4E6BD: LitVarStr var_98, "FeanRece"
  loc_B4E6C2: PopAdLdVar
  loc_B4E6C3: FLdRfVar var_DC
  loc_B4E6C6: FLdRfVar var_AC
  loc_B4E6C9: FLdPr var_150
  loc_B4E6CC: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_B4E6D1: FLdPr var_AC
  loc_B4E6D4:  = Me.Fields
  loc_B4E6D9: FLdPr var_DC
  loc_B4E6DC: from_stack_2 = Me.Item(from_stack_1)
  loc_B4E6E1: LitI2_Byte 0
  loc_B4E6E3: LitVar_Missing var_10C
  loc_B4E6E6: LitI2_Byte 0
  loc_B4E6E8: FLdZeroAd var_FC
  loc_B4E6EB: CVarAd
  loc_B4E6EF: PopAdLdVar
  loc_B4E6F0: FLdPr Me
  loc_B4E6F3: MemLdStr global_84
  loc_B4E6F6: FLdPr Me
  loc_B4E6F9: MemLdStr global_80
  loc_B4E6FC: AryLock
  loc_B4E6FF: Ary1LdPr
  loc_B4E700: MemLdRfVar from_stack_1.global_56
  loc_B4E703: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B4E708: AryUnlock
  loc_B4E70B: FFreeAd var_AC = ""
  loc_B4E712: FFreeVar var_EC = ""
  loc_B4E719: FLdRfVar var_FC
  loc_B4E71C: LitVarStr var_98, "BajaMoti"
  loc_B4E721: PopAdLdVar
  loc_B4E722: FLdRfVar var_DC
  loc_B4E725: FLdRfVar var_AC
  loc_B4E728: FLdPr var_150
  loc_B4E72B: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_B4E730: FLdPr var_AC
  loc_B4E733:  = Me.Fields
  loc_B4E738: FLdPr var_DC
  loc_B4E73B: from_stack_2 = Me.Item(from_stack_1)
  loc_B4E740: LitI2_Byte 0
  loc_B4E742: LitVar_Missing var_10C
  loc_B4E745: LitI2_Byte 0
  loc_B4E747: FLdZeroAd var_FC
  loc_B4E74A: CVarAd
  loc_B4E74E: PopAdLdVar
  loc_B4E74F: FLdPr Me
  loc_B4E752: MemLdStr global_84
  loc_B4E755: FLdPr Me
  loc_B4E758: MemLdStr global_80
  loc_B4E75B: AryLock
  loc_B4E75E: Ary1LdPr
  loc_B4E75F: MemLdRfVar from_stack_1.global_60
  loc_B4E762: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B4E767: AryUnlock
  loc_B4E76A: FFreeAd var_AC = ""
  loc_B4E771: FFreeVar var_EC = ""
  loc_B4E778: FLdRfVar var_FC
  loc_B4E77B: LitVarStr var_98, "AltaUsua"
  loc_B4E780: PopAdLdVar
  loc_B4E781: FLdRfVar var_DC
  loc_B4E784: FLdRfVar var_AC
  loc_B4E787: FLdPr var_150
  loc_B4E78A: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_B4E78F: FLdPr var_AC
  loc_B4E792:  = Me.Fields
  loc_B4E797: FLdPr var_DC
  loc_B4E79A: from_stack_2 = Me.Item(from_stack_1)
  loc_B4E79F: LitI2_Byte 0
  loc_B4E7A1: LitVar_Missing var_10C
  loc_B4E7A4: LitI2_Byte 0
  loc_B4E7A6: FLdZeroAd var_FC
  loc_B4E7A9: CVarAd
  loc_B4E7AD: PopAdLdVar
  loc_B4E7AE: FLdPr Me
  loc_B4E7B1: MemLdStr global_84
  loc_B4E7B4: FLdPr Me
  loc_B4E7B7: MemLdStr global_80
  loc_B4E7BA: AryLock
  loc_B4E7BD: Ary1LdPr
  loc_B4E7BE: MemLdRfVar from_stack_1.global_64
  loc_B4E7C1: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B4E7C6: AryUnlock
  loc_B4E7C9: FFreeAd var_AC = ""
  loc_B4E7D0: FFreeVar var_EC = ""
  loc_B4E7D7: FLdRfVar var_FC
  loc_B4E7DA: LitVarStr var_98, "NumeFact"
  loc_B4E7DF: PopAdLdVar
  loc_B4E7E0: FLdRfVar var_DC
  loc_B4E7E3: FLdRfVar var_AC
  loc_B4E7E6: FLdPr var_150
  loc_B4E7E9: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_B4E7EE: FLdPr var_AC
  loc_B4E7F1:  = Me.Fields
  loc_B4E7F6: FLdPr var_DC
  loc_B4E7F9: from_stack_2 = Me.Item(from_stack_1)
  loc_B4E7FE: LitI2_Byte 0
  loc_B4E800: LitVar_Missing var_10C
  loc_B4E803: LitI2_Byte 0
  loc_B4E805: FLdZeroAd var_FC
  loc_B4E808: CVarAd
  loc_B4E80C: PopAdLdVar
  loc_B4E80D: FLdPr Me
  loc_B4E810: MemLdStr global_84
  loc_B4E813: FLdPr Me
  loc_B4E816: MemLdStr global_80
  loc_B4E819: AryLock
  loc_B4E81C: Ary1LdPr
  loc_B4E81D: MemLdRfVar from_stack_1.global_72
  loc_B4E820: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B4E825: AryUnlock
  loc_B4E828: FFreeAd var_AC = ""
  loc_B4E82F: FFreeVar var_EC = ""
  loc_B4E836: FLdRfVar var_FC
  loc_B4E839: LitVarStr var_98, "TotaRece"
  loc_B4E83E: PopAdLdVar
  loc_B4E83F: FLdRfVar var_DC
  loc_B4E842: FLdRfVar var_AC
  loc_B4E845: FLdPr var_150
  loc_B4E848: from_stack_1v = clsrecepcion.RsFrmGet()
  loc_B4E84D: FLdPr var_AC
  loc_B4E850:  = Me.Fields
  loc_B4E855: FLdPr var_DC
  loc_B4E858: from_stack_2 = Me.Item(from_stack_1)
  loc_B4E85D: LitI2_Byte 0
  loc_B4E85F: LitVar_Missing var_10C
  loc_B4E862: LitI2_Byte &HFF
  loc_B4E864: FLdZeroAd var_FC
  loc_B4E867: CVarAd
  loc_B4E86B: PopAdLdVar
  loc_B4E86C: FLdPr Me
  loc_B4E86F: MemLdStr global_84
  loc_B4E872: FLdPr Me
  loc_B4E875: MemLdStr global_80
  loc_B4E878: AryLock
  loc_B4E87B: Ary1LdPr
  loc_B4E87C: MemLdRfVar from_stack_1.global_76
  loc_B4E87F: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B4E884: AryUnlock
  loc_B4E887: FFreeAd var_AC = ""
  loc_B4E88E: FFreeVar var_EC = ""
  loc_B4E895: LitNothing
  loc_B4E897: FStAd var_150 
  loc_B4E89B: LitI2_Byte 1
  loc_B4E89D: PopTmpLdAd2 var_AE
  loc_B4E8A0: FLdPr var_B4
  loc_B4E8A3: Call clsrecepcion.Move(from_stack_1v)
  loc_B4E8A8: FLdPr Me
  loc_B4E8AB: MemLdRfVar from_stack_1.global_84
  loc_B4E8AE: NextI4 var_14C, loc_B4E11C
  loc_B4E8B3: LitNothing
  loc_B4E8B5: FStAd var_B4 
  loc_B4E8B9: LitStr "SELECT DetaPers FROM infogov.usuario LEFT JOIN infogov.persona ON persona.CucuPers = usuario.CucuPers WHERE usuario.CodiUsua ='"
  loc_B4E8BC: ImpAdLdI4 MemVar_C3D03C
  loc_B4E8BF: ConcatStr
  loc_B4E8C0: FStStrNoPop var_B8
  loc_B4E8C3: LitStr "'"
  loc_B4E8C6: ConcatStr
  loc_B4E8C7: FStStrNoPop var_BC
  loc_B4E8CA: FLdRfVar var_88
  loc_B4E8CD: NewIfNullPr clsusuario
  loc_B4E8D0: Call clsusuario.RedefineRS(from_stack_1v)
  loc_B4E8D5: FFreeStr var_B8 = ""
  loc_B4E8DC: FLdRfVar var_144
  loc_B4E8DF: FLdRfVar var_88
  loc_B4E8E2: NewIfNullPr clsusuario
  loc_B4E8E5: from_stack_1 = clsusuario.RecordCount
  loc_B4E8EA: ILdRf var_144
  loc_B4E8ED: LitI4 0
  loc_B4E8F2: GtI4
  loc_B4E8F3: BranchF loc_B4E948
  loc_B4E8F6: FLdRfVar var_FC
  loc_B4E8F9: LitVarStr var_98, "DetaPers"
  loc_B4E8FE: PopAdLdVar
  loc_B4E8FF: FLdRfVar var_DC
  loc_B4E902: FLdRfVar var_AC
  loc_B4E905: FLdRfVar var_88
  loc_B4E908: NewIfNullPr clsusuario
  loc_B4E90B: from_stack_1v = clsusuario.RsFrmGet()
  loc_B4E910: FLdPr var_AC
  loc_B4E913:  = Me.Fields
  loc_B4E918: FLdPr var_DC
  loc_B4E91B: from_stack_2 = Me.Item(from_stack_1)
  loc_B4E920: LitI2_Byte 0
  loc_B4E922: LitVar_Missing var_10C
  loc_B4E925: LitI2_Byte 0
  loc_B4E927: FLdZeroAd var_FC
  loc_B4E92A: CVarAd
  loc_B4E92E: PopAdLdVar
  loc_B4E92F: FLdPr Me
  loc_B4E932: MemLdRfVar from_stack_1.global_88
  loc_B4E935: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B4E93A: FFreeAd var_AC = ""
  loc_B4E941: FFreeVar var_EC = ""
  loc_B4E948: LitI2_Byte &HFF
  loc_B4E94A: FLdPr Me
  loc_B4E94D: MemStI2 bGenerado
  loc_B4E950: LitI4 0
  loc_B4E955: CI2I4
  loc_B4E956: FLdPr Me
  loc_B4E959: Me.MousePointer = from_stack_1
  loc_B4E95E: LitVarStr var_98, vbNullString
  loc_B4E963: PopAdLdVar
  loc_B4E964: FLdPr Me
  loc_B4E967: VCallAd Control_ID_statusBar
  loc_B4E96A: FStAdFunc var_AC
  loc_B4E96D: FLdPr var_AC
  loc_B4E970: LateIdSt
  loc_B4E975: FFree1Ad var_AC
  loc_B4E978: ExitProcHresult
  loc_B4E979: FLdPr var_D4
End Sub

Public Sub GeneraHTML() '9A9348
  'Data Table: 46A3E4
  loc_9A92B0: FLdRfVar var_88
  loc_9A92B3: LitI2_Byte 0
  loc_9A92B5: LitI2_Byte &HFF
  loc_9A92B7: ImpAdLdI4 MemVar_C3D83C
  loc_9A92BA: FLdPr Me
  loc_9A92BD: MemLdRfVar from_stack_1.global_76
  loc_9A92C0: NewIfNullPr IFileSystem3
  loc_9A92C3: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_9A92C8: ILdRf var_88
  loc_9A92CB: FLdPr Me
  loc_9A92CE: MemStVarAd
  loc_9A92D2: FFree1Ad var_88
  loc_9A92D5: Call Proc_172_22_9BA56C()
  loc_9A92DA: LitI4 1
  loc_9A92DF: FLdPr Me
  loc_9A92E2: MemLdRfVar from_stack_1.global_84
  loc_9A92E5: FLdPr Me
  loc_9A92E8: MemLdStr global_80
  loc_9A92EB: LitI2_Byte 1
  loc_9A92ED: FnUBound
  loc_9A92EF: ForI4 var_90
  loc_9A92F5: FLdPr Me
  loc_9A92F8: MemLdStr global_84
  loc_9A92FB: LitI4 1
  loc_9A9300: NeI4
  loc_9A9301: BranchF loc_9A9318
  loc_9A9304: LitVarStr var_A0, "<div style=""page-break-before:always""></div>"
  loc_9A9309: PopAdLdVar
  loc_9A930A: FLdPr Me
  loc_9A930D: MemLdRfVar from_stack_1.htmFile
  loc_9A9310: LdPrVar
  loc_9A9312: LateMemCall
  loc_9A9318: Call Proc_172_23_A0DFA0()
  loc_9A931D: Call Proc_172_24_B04D88()
  loc_9A9322: FLdPr Me
  loc_9A9325: MemLdRfVar from_stack_1.global_84
  loc_9A9328: NextI4 var_90, loc_9A92F5
  loc_9A932D: Call Proc_172_25_974244()
  loc_9A9332: FLdPr Me
  loc_9A9335: MemLdRfVar from_stack_1.htmFile
  loc_9A9338: LdPrVar
  loc_9A933A: LateMemCall
  loc_9A9340: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_9A9345: ExitProcHresult
  loc_9A9346: BranchFVar
End Sub

Private Function Proc_172_22_9BA56C() '9BA56C
  'Data Table: 46A3E4
  loc_9BA4B4: LitVarStr var_94, "<html>"
  loc_9BA4B9: PopAdLdVar
  loc_9BA4BA: FLdPr Me
  loc_9BA4BD: MemLdRfVar from_stack_1.htmFile
  loc_9BA4C0: LdPrVar
  loc_9BA4C2: LateMemCall
  loc_9BA4C8: LitVarStr var_94, "<head>"
  loc_9BA4CD: PopAdLdVar
  loc_9BA4CE: FLdPr Me
  loc_9BA4D1: MemLdRfVar from_stack_1.htmFile
  loc_9BA4D4: LdPrVar
  loc_9BA4D6: LateMemCall
  loc_9BA4DC: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_9BA4E1: PopAdLdVar
  loc_9BA4E2: FLdPr Me
  loc_9BA4E5: MemLdRfVar from_stack_1.htmFile
  loc_9BA4E8: LdPrVar
  loc_9BA4EA: LateMemCall
  loc_9BA4F0: LitStr "<title>"
  loc_9BA4F3: FLdRfVar var_A8
  loc_9BA4F6: FLdPr Me
  loc_9BA4F9:  = Me.Caption
  loc_9BA4FE: ILdRf var_A8
  loc_9BA501: ConcatStr
  loc_9BA502: FStStrNoPop var_AC
  loc_9BA505: LitStr "</title>"
  loc_9BA508: ConcatStr
  loc_9BA509: CVarStr var_BC
  loc_9BA50C: PopAdLdVar
  loc_9BA50D: FLdPr Me
  loc_9BA510: MemLdRfVar from_stack_1.htmFile
  loc_9BA513: LdPrVar
  loc_9BA515: LateMemCall
  loc_9BA51B: FFreeStr var_A8 = ""
  loc_9BA522: FFree1Var var_BC = ""
  loc_9BA525: LitStr vbNullString
  loc_9BA528: ILdRf Me
  loc_9BA52B: CastAd
  loc_9BA52E: FStAdFunc var_C0
  loc_9BA531: FLdRfVar var_C0
  loc_9BA534: ImpAdCallFPR4 Proc_263_23_B3DAB8(, )
  loc_9BA539: FFree1Ad var_C0
  loc_9BA53C: LitI4 0
  loc_9BA541: FStStrCopy var_AC
  loc_9BA544: FLdRfVar var_AC
  loc_9BA547: LitI4 0
  loc_9BA54C: FStStrCopy var_A8
  loc_9BA54F: FLdRfVar var_A8
  loc_9BA552: LitI2_Byte 0
  loc_9BA554: PopTmpLdAd2 var_C2
  loc_9BA557: FLdPr Me
  loc_9BA55A: MemLdRfVar from_stack_1.htmFile
  loc_9BA55D: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_9BA562: FFreeStr var_A8 = ""
  loc_9BA569: ExitProcHresult
End Function

Private Function Proc_172_23_A0DFA0() 'A0DFA0
  'Data Table: 46A3E4
  loc_A0DE44: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_A0DE49: PopAdLdVar
  loc_A0DE4A: FLdPr Me
  loc_A0DE4D: MemLdRfVar from_stack_1.htmFile
  loc_A0DE50: LdPrVar
  loc_A0DE52: LateMemCall
  loc_A0DE58: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_A0DE5D: PopAdLdVar
  loc_A0DE5E: FLdPr Me
  loc_A0DE61: MemLdRfVar from_stack_1.htmFile
  loc_A0DE64: LdPrVar
  loc_A0DE66: LateMemCall
  loc_A0DE6C: LitVarStr var_A4, "    <th width=""100" & Chr(37) & """ colspan=""3"" align=""center"" valign=""bottom""><img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br><p>"
  loc_A0DE71: LitVarStr var_94, "Municipalidad de Guaymallén"
  loc_A0DE76: FStVarCopyObj var_B4
  loc_A0DE79: FLdRfVar var_B4
  loc_A0DE7C: FLdRfVar var_C4
  loc_A0DE7F: ImpAdCallFPR4  = Ucase()
  loc_A0DE84: FLdRfVar var_C4
  loc_A0DE87: ConcatVar var_D4
  loc_A0DE8B: LitVarStr var_E4, "</p><p>"
  loc_A0DE90: ConcatVar var_F4
  loc_A0DE94: FLdRfVar var_F8
  loc_A0DE97: FLdPr Me
  loc_A0DE9A:  = Me.Caption
  loc_A0DE9F: FLdZeroAd var_F8
  loc_A0DEA2: CVarStr var_108
  loc_A0DEA5: ConcatVar var_118
  loc_A0DEA9: LitVarStr var_128, "</p></th>"
  loc_A0DEAE: ConcatVar var_138
  loc_A0DEB2: PopAdLdVar
  loc_A0DEB3: FLdPr Me
  loc_A0DEB6: MemLdRfVar from_stack_1.htmFile
  loc_A0DEB9: LdPrVar
  loc_A0DEBB: LateMemCall
  loc_A0DEC1: FFreeVar var_B4 = "": var_C4 = "": var_D4 = "": var_F4 = "": var_108 = "": var_118 = ""
  loc_A0DED2: LitVarStr var_94, "  </tr>"
  loc_A0DED7: PopAdLdVar
  loc_A0DED8: FLdPr Me
  loc_A0DEDB: MemLdRfVar from_stack_1.htmFile
  loc_A0DEDE: LdPrVar
  loc_A0DEE0: LateMemCall
  loc_A0DEE6: LitVarStr var_94, "  <tr>"
  loc_A0DEEB: PopAdLdVar
  loc_A0DEEC: FLdPr Me
  loc_A0DEEF: MemLdRfVar from_stack_1.htmFile
  loc_A0DEF2: LdPrVar
  loc_A0DEF4: LateMemCall
  loc_A0DEFA: LitVarStr var_94, "    <th colspan=""3""><hr></th>"
  loc_A0DEFF: PopAdLdVar
  loc_A0DF00: FLdPr Me
  loc_A0DF03: MemLdRfVar from_stack_1.htmFile
  loc_A0DF06: LdPrVar
  loc_A0DF08: LateMemCall
  loc_A0DF0E: LitVarStr var_94, "  </tr>"
  loc_A0DF13: PopAdLdVar
  loc_A0DF14: FLdPr Me
  loc_A0DF17: MemLdRfVar from_stack_1.htmFile
  loc_A0DF1A: LdPrVar
  loc_A0DF1C: LateMemCall
  loc_A0DF22: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_A0DF27: PopAdLdVar
  loc_A0DF28: FLdPr Me
  loc_A0DF2B: MemLdRfVar from_stack_1.htmFile
  loc_A0DF2E: LdPrVar
  loc_A0DF30: LateMemCall
  loc_A0DF36: LitStr "    <th colspan=""3"" align=""left"" valign=""bottom"">Periodo: <span class=""Normal"">"
  loc_A0DF39: FLdRfVar var_F8
  loc_A0DF3C: FLdPr Me
  loc_A0DF3F: VCallAd Control_ID_cboPeriodo
  loc_A0DF42: FStAdFunc var_14C
  loc_A0DF45: FLdPr var_14C
  loc_A0DF48:  = Me.Text
  loc_A0DF4D: ILdRf var_F8
  loc_A0DF50: ConcatStr
  loc_A0DF51: FStStrNoPop var_150
  loc_A0DF54: LitStr "</span></th>"
  loc_A0DF57: ConcatStr
  loc_A0DF58: CVarStr var_B4
  loc_A0DF5B: PopAdLdVar
  loc_A0DF5C: FLdPr Me
  loc_A0DF5F: MemLdRfVar from_stack_1.htmFile
  loc_A0DF62: LdPrVar
  loc_A0DF64: LateMemCall
  loc_A0DF6A: FFreeStr var_F8 = ""
  loc_A0DF71: FFree1Ad var_14C
  loc_A0DF74: FFree1Var var_B4 = ""
  loc_A0DF77: LitVarStr var_94, "  </tr>"
  loc_A0DF7C: PopAdLdVar
  loc_A0DF7D: FLdPr Me
  loc_A0DF80: MemLdRfVar from_stack_1.htmFile
  loc_A0DF83: LdPrVar
  loc_A0DF85: LateMemCall
  loc_A0DF8B: LitVarStr var_94, "</table>"
  loc_A0DF90: PopAdLdVar
  loc_A0DF91: FLdPr Me
  loc_A0DF94: MemLdRfVar from_stack_1.htmFile
  loc_A0DF97: LdPrVar
  loc_A0DF99: LateMemCall
  loc_A0DF9F: ExitProcHresult
End Function

Private Function Proc_172_24_B04D88() 'B04D88
  'Data Table: 46A3E4
  loc_B045D8: FLdPr Me
  loc_B045DB: MemLdStr global_84
  loc_B045DE: FLdPr Me
  loc_B045E1: MemLdStr global_80
  loc_B045E4: AryLock
  loc_B045E7: Ary1LdRf
  loc_B045E8: FStR4 var_8C
  loc_B045EB: LitVarStr var_9C, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_B045F0: PopAdLdVar
  loc_B045F1: FLdPr Me
  loc_B045F4: MemLdRfVar from_stack_1.htmFile
  loc_B045F7: LdPrVar
  loc_B045F9: LateMemCall
  loc_B045FF: LitVarStr var_9C, "  <tr align=""left"" valign=""top"" class=""Normal"" nowrap=""nowrap"">"
  loc_B04604: PopAdLdVar
  loc_B04605: FLdPr Me
  loc_B04608: MemLdRfVar from_stack_1.htmFile
  loc_B0460B: LdPrVar
  loc_B0460D: LateMemCall
  loc_B04613: LitVarStr var_9C, "    <th colspan=""2"" class=""LineaDato"">"
  loc_B04618: PopAdLdVar
  loc_B04619: FLdPr Me
  loc_B0461C: MemLdRfVar from_stack_1.htmFile
  loc_B0461F: LdPrVar
  loc_B04621: LateMemCall
  loc_B04627: LitVarStr var_9C, "  <table width=""100" & Chr(37) & """ border=""1"" cellspacing=""0"" cellpadding=""1"">"
  loc_B0462C: PopAdLdVar
  loc_B0462D: FLdPr Me
  loc_B04630: MemLdRfVar from_stack_1.htmFile
  loc_B04633: LdPrVar
  loc_B04635: LateMemCall
  loc_B0463B: LitVarStr var_9C, "      <tr valign=""top"" class=""LineaDato"">"
  loc_B04640: PopAdLdVar
  loc_B04641: FLdPr Me
  loc_B04644: MemLdRfVar from_stack_1.htmFile
  loc_B04647: LdPrVar
  loc_B04649: LateMemCall
  loc_B0464F: LitStr "        <td align=""left"" class=""Encabezado"">Orden de compra N&ordm;:&nbsp;"
  loc_B04652: FMemLdR4 var_8C(0)
  loc_B04657: ConcatStr
  loc_B04658: FStStrNoPop var_B0
  loc_B0465B: LitStr "<br>"
  loc_B0465E: ConcatStr
  loc_B0465F: CVarStr var_C0
  loc_B04662: PopAdLdVar
  loc_B04663: FLdPr Me
  loc_B04666: MemLdRfVar from_stack_1.htmFile
  loc_B04669: LdPrVar
  loc_B0466B: LateMemCall
  loc_B04671: FFree1Str var_B0
  loc_B04674: FFree1Var var_C0 = ""
  loc_B04677: LitStr "                                         Recepci&oacute;n N&ordm;:&nbsp;"
  loc_B0467A: FMemLdR4 var_8C(4)
  loc_B0467F: ConcatStr
  loc_B04680: FStStrNoPop var_B0
  loc_B04683: LitStr "</td>"
  loc_B04686: ConcatStr
  loc_B04687: CVarStr var_C0
  loc_B0468A: PopAdLdVar
  loc_B0468B: FLdPr Me
  loc_B0468E: MemLdRfVar from_stack_1.htmFile
  loc_B04691: LdPrVar
  loc_B04693: LateMemCall
  loc_B04699: FFree1Str var_B0
  loc_B0469C: FFree1Var var_C0 = ""
  loc_B0469F: LitStr "        <td>Fecha de recepci&oacute;n:<br><div align=""center"">"
  loc_B046A2: FMemLdR4 var_8C(44)
  loc_B046A7: ConcatStr
  loc_B046A8: FStStrNoPop var_B0
  loc_B046AB: LitStr "</div></td>"
  loc_B046AE: ConcatStr
  loc_B046AF: CVarStr var_C0
  loc_B046B2: PopAdLdVar
  loc_B046B3: FLdPr Me
  loc_B046B6: MemLdRfVar from_stack_1.htmFile
  loc_B046B9: LdPrVar
  loc_B046BB: LateMemCall
  loc_B046C1: FFree1Str var_B0
  loc_B046C4: FFree1Var var_C0 = ""
  loc_B046C7: LitStr "        <td>Tipo de compra:<br><div align=""center"">"
  loc_B046CA: FMemLdR4 var_8C(16)
  loc_B046CF: ConcatStr
  loc_B046D0: FStStrNoPop var_B0
  loc_B046D3: LitStr " - "
  loc_B046D6: ConcatStr
  loc_B046D7: FStStrNoPop var_C4
  loc_B046DA: FMemLdR4 var_8C(20)
  loc_B046DF: ConcatStr
  loc_B046E0: FStStrNoPop var_C8
  loc_B046E3: LitStr "</div></td>"
  loc_B046E6: ConcatStr
  loc_B046E7: CVarStr var_C0
  loc_B046EA: PopAdLdVar
  loc_B046EB: FLdPr Me
  loc_B046EE: MemLdRfVar from_stack_1.htmFile
  loc_B046F1: LdPrVar
  loc_B046F3: LateMemCall
  loc_B046F9: FFreeStr var_B0 = "": var_C4 = ""
  loc_B04702: FFree1Var var_C0 = ""
  loc_B04705: LitStr "        <td>Expediente:<br><div align=""center"">"
  loc_B04708: FMemLdR4 var_8C(36)
  loc_B0470D: ConcatStr
  loc_B0470E: CVarStr var_F8
  loc_B04711: LitVarStr var_AC, vbNullString
  loc_B04716: FStVarCopyObj var_D8
  loc_B04719: FLdRfVar var_D8
  loc_B0471C: LitStr "<br>"
  loc_B0471F: FMemLdR4 var_8C(40)
  loc_B04724: ConcatStr
  loc_B04725: CVarStr var_C0
  loc_B04728: FMemLdR4 var_8C(40)
  loc_B0472D: LitStr vbNullString
  loc_B04730: NeStr
  loc_B04732: CVarBoolI2 var_9C
  loc_B04736: FLdRfVar var_E8
  loc_B04739: ImpAdCallFPR4  = IIf(, , )
  loc_B0473E: FLdRfVar var_E8
  loc_B04741: ConcatVar var_108
  loc_B04745: LitVarStr var_118, "</div></td>"
  loc_B0474A: ConcatVar var_128
  loc_B0474E: PopAdLdVar
  loc_B0474F: FLdPr Me
  loc_B04752: MemLdRfVar from_stack_1.htmFile
  loc_B04755: LdPrVar
  loc_B04757: LateMemCall
  loc_B0475D: FFreeVar var_9C = "": var_C0 = "": var_D8 = "": var_F8 = "": var_E8 = "": var_108 = ""
  loc_B0476E: LitStr "        <td>Nota de pedido:<br><div align=""center"">"
  loc_B04771: FMemLdR4 var_8C(12)
  loc_B04776: ConcatStr
  loc_B04777: FStStrNoPop var_B0
  loc_B0477A: LitStr "</div></td>"
  loc_B0477D: ConcatStr
  loc_B0477E: CVarStr var_C0
  loc_B04781: PopAdLdVar
  loc_B04782: FLdPr Me
  loc_B04785: MemLdRfVar from_stack_1.htmFile
  loc_B04788: LdPrVar
  loc_B0478A: LateMemCall
  loc_B04790: FFree1Str var_B0
  loc_B04793: FFree1Var var_C0 = ""
  loc_B04796: LitStr "        <td>Usuario:<br><div align=""center"">"
  loc_B04799: FMemLdR4 var_8C(64)
  loc_B0479E: ConcatStr
  loc_B0479F: FStStrNoPop var_B0
  loc_B047A2: LitStr "</div></td>"
  loc_B047A5: ConcatStr
  loc_B047A6: CVarStr var_C0
  loc_B047A9: PopAdLdVar
  loc_B047AA: FLdPr Me
  loc_B047AD: MemLdRfVar from_stack_1.htmFile
  loc_B047B0: LdPrVar
  loc_B047B2: LateMemCall
  loc_B047B8: FFree1Str var_B0
  loc_B047BB: FFree1Var var_C0 = ""
  loc_B047BE: LitVarStr var_9C, "      </tr>"
  loc_B047C3: PopAdLdVar
  loc_B047C4: FLdPr Me
  loc_B047C7: MemLdRfVar from_stack_1.htmFile
  loc_B047CA: LdPrVar
  loc_B047CC: LateMemCall
  loc_B047D2: LitVarStr var_9C, "      <tr valign=""top"" class=""LineaDato"">"
  loc_B047D7: PopAdLdVar
  loc_B047D8: FLdPr Me
  loc_B047DB: MemLdRfVar from_stack_1.htmFile
  loc_B047DE: LdPrVar
  loc_B047E0: LateMemCall
  loc_B047E6: LitStr "        <td colspan=""3"" rowspan=""2"">Proveedor: "
  loc_B047E9: FMemLdR4 var_8C(28)
  loc_B047EE: ConcatStr
  loc_B047EF: FStStrNoPop var_B0
  loc_B047F2: LitStr " - "
  loc_B047F5: ConcatStr
  loc_B047F6: FStStrNoPop var_C4
  loc_B047F9: FMemLdR4 var_8C(32)
  loc_B047FE: ConcatStr
  loc_B047FF: FStStrNoPop var_C8
  loc_B04802: LitStr "</td>"
  loc_B04805: ConcatStr
  loc_B04806: CVarStr var_C0
  loc_B04809: PopAdLdVar
  loc_B0480A: FLdPr Me
  loc_B0480D: MemLdRfVar from_stack_1.htmFile
  loc_B04810: LdPrVar
  loc_B04812: LateMemCall
  loc_B04818: FFreeStr var_B0 = "": var_C4 = ""
  loc_B04821: FFree1Var var_C0 = ""
  loc_B04824: LitVarStr var_9C, "        <td colspan=""3"" align=""center"">Factura</td>"
  loc_B04829: PopAdLdVar
  loc_B0482A: FLdPr Me
  loc_B0482D: MemLdRfVar from_stack_1.htmFile
  loc_B04830: LdPrVar
  loc_B04832: LateMemCall
  loc_B04838: LitVarStr var_9C, "      </tr>"
  loc_B0483D: PopAdLdVar
  loc_B0483E: FLdPr Me
  loc_B04841: MemLdRfVar from_stack_1.htmFile
  loc_B04844: LdPrVar
  loc_B04846: LateMemCall
  loc_B0484C: LitVarStr var_9C, "      <tr valign=""top"" class=""LineaDato"">"
  loc_B04851: PopAdLdVar
  loc_B04852: FLdPr Me
  loc_B04855: MemLdRfVar from_stack_1.htmFile
  loc_B04858: LdPrVar
  loc_B0485A: LateMemCall
  loc_B04860: LitStr "        <td>Fecha:<br><div align=""center"">"
  loc_B04863: FMemLdR4 var_8C(52)
  loc_B04868: ConcatStr
  loc_B04869: FStStrNoPop var_B0
  loc_B0486C: LitStr "</div></td>"
  loc_B0486F: ConcatStr
  loc_B04870: CVarStr var_C0
  loc_B04873: PopAdLdVar
  loc_B04874: FLdPr Me
  loc_B04877: MemLdRfVar from_stack_1.htmFile
  loc_B0487A: LdPrVar
  loc_B0487C: LateMemCall
  loc_B04882: FFree1Str var_B0
  loc_B04885: FFree1Var var_C0 = ""
  loc_B04888: LitStr "        <td>Tipo:<br><div align=""center"">"
  loc_B0488B: FMemLdR4 var_8C(72)
  loc_B04890: ConcatStr
  loc_B04891: FStStrNoPop var_B0
  loc_B04894: LitStr "</div></td>"
  loc_B04897: ConcatStr
  loc_B04898: CVarStr var_C0
  loc_B0489B: PopAdLdVar
  loc_B0489C: FLdPr Me
  loc_B0489F: MemLdRfVar from_stack_1.htmFile
  loc_B048A2: LdPrVar
  loc_B048A4: LateMemCall
  loc_B048AA: FFree1Str var_B0
  loc_B048AD: FFree1Var var_C0 = ""
  loc_B048B0: LitVarStr var_9C, "      </tr>"
  loc_B048B5: PopAdLdVar
  loc_B048B6: FLdPr Me
  loc_B048B9: MemLdRfVar from_stack_1.htmFile
  loc_B048BC: LdPrVar
  loc_B048BE: LateMemCall
  loc_B048C4: LitVarStr var_9C, "      <tr valign=""top"" class=""LineaDato"">"
  loc_B048C9: PopAdLdVar
  loc_B048CA: FLdPr Me
  loc_B048CD: MemLdRfVar from_stack_1.htmFile
  loc_B048D0: LdPrVar
  loc_B048D2: LateMemCall
  loc_B048D8: LitStr "        <td colspan=""5"">Detalle: "
  loc_B048DB: FMemLdR4 var_8C(8)
  loc_B048E0: ConcatStr
  loc_B048E1: FStStrNoPop var_B0
  loc_B048E4: LitStr "</td>"
  loc_B048E7: ConcatStr
  loc_B048E8: CVarStr var_C0
  loc_B048EB: PopAdLdVar
  loc_B048EC: FLdPr Me
  loc_B048EF: MemLdRfVar from_stack_1.htmFile
  loc_B048F2: LdPrVar
  loc_B048F4: LateMemCall
  loc_B048FA: FFree1Str var_B0
  loc_B048FD: FFree1Var var_C0 = ""
  loc_B04900: LitStr "        <td>Total:<br><div align=""center"">"
  loc_B04903: FMemLdR4 var_8C(76)
  loc_B04908: ConcatStr
  loc_B04909: FStStrNoPop var_B0
  loc_B0490C: LitStr "</div></td>"
  loc_B0490F: ConcatStr
  loc_B04910: CVarStr var_C0
  loc_B04913: PopAdLdVar
  loc_B04914: FLdPr Me
  loc_B04917: MemLdRfVar from_stack_1.htmFile
  loc_B0491A: LdPrVar
  loc_B0491C: LateMemCall
  loc_B04922: FFree1Str var_B0
  loc_B04925: FFree1Var var_C0 = ""
  loc_B04928: LitVarStr var_9C, "      </tr>"
  loc_B0492D: PopAdLdVar
  loc_B0492E: FLdPr Me
  loc_B04931: MemLdRfVar from_stack_1.htmFile
  loc_B04934: LdPrVar
  loc_B04936: LateMemCall
  loc_B0493C: LitVarStr var_9C, "  </table></tr>"
  loc_B04941: PopAdLdVar
  loc_B04942: FLdPr Me
  loc_B04945: MemLdRfVar from_stack_1.htmFile
  loc_B04948: LdPrVar
  loc_B0494A: LateMemCall
  loc_B04950: LitVarStr var_9C, "  <tr align=""center"" class=""Encabezado"">"
  loc_B04955: PopAdLdVar
  loc_B04956: FLdPr Me
  loc_B04959: MemLdRfVar from_stack_1.htmFile
  loc_B0495C: LdPrVar
  loc_B0495E: LateMemCall
  loc_B04964: LitVarStr var_9C, "    <th>&nbsp;</th>"
  loc_B04969: PopAdLdVar
  loc_B0496A: FLdPr Me
  loc_B0496D: MemLdRfVar from_stack_1.htmFile
  loc_B04970: LdPrVar
  loc_B04972: LateMemCall
  loc_B04978: LitVarStr var_9C, "  </tr>"
  loc_B0497D: PopAdLdVar
  loc_B0497E: FLdPr Me
  loc_B04981: MemLdRfVar from_stack_1.htmFile
  loc_B04984: LdPrVar
  loc_B04986: LateMemCall
  loc_B0498C: LitVarStr var_9C, "  <tr class=""Normal"">"
  loc_B04991: PopAdLdVar
  loc_B04992: FLdPr Me
  loc_B04995: MemLdRfVar from_stack_1.htmFile
  loc_B04998: LdPrVar
  loc_B0499A: LateMemCall
  loc_B049A0: LitVarStr var_9C, "    <th align=""center"">"
  loc_B049A5: PopAdLdVar
  loc_B049A6: FLdPr Me
  loc_B049A9: MemLdRfVar from_stack_1.htmFile
  loc_B049AC: LdPrVar
  loc_B049AE: LateMemCall
  loc_B049B4: LitVarStr var_9C, " <p>&nbsp;</p>"
  loc_B049B9: PopAdLdVar
  loc_B049BA: FLdPr Me
  loc_B049BD: MemLdRfVar from_stack_1.htmFile
  loc_B049C0: LdPrVar
  loc_B049C2: LateMemCall
  loc_B049C8: LitVarStr var_9C, "    <p>SR. PROVEEDOR:</p>"
  loc_B049CD: PopAdLdVar
  loc_B049CE: FLdPr Me
  loc_B049D1: MemLdRfVar from_stack_1.htmFile
  loc_B049D4: LdPrVar
  loc_B049D6: LateMemCall
  loc_B049DC: LitStr "Municipalidad de Guaymallén"
  loc_B049DF: LitStr "Municipalidad de General Alvear"
  loc_B049E2: EqStr
  loc_B049E4: BranchF loc_B049EA
  loc_B049E7: Branch loc_B04A1F
  loc_B049EA: FMemLdR4 var_8C(24)
  loc_B049EF: LitStr "0"
  loc_B049F2: NeStr
  loc_B049F4: BranchF loc_B04A1F
  loc_B049F7: LitStr "    <p>Reclamar el pago a partir del día "
  loc_B049FA: FMemLdR4 var_8C(48)
  loc_B049FF: ConcatStr
  loc_B04A00: FStStrNoPop var_B0
  loc_B04A03: LitStr " en TESORERÍA MUNICIPAL.</p>"
  loc_B04A06: ConcatStr
  loc_B04A07: CVarStr var_C0
  loc_B04A0A: PopAdLdVar
  loc_B04A0B: FLdPr Me
  loc_B04A0E: MemLdRfVar from_stack_1.htmFile
  loc_B04A11: LdPrVar
  loc_B04A13: LateMemCall
  loc_B04A19: FFree1Str var_B0
  loc_B04A1C: FFree1Var var_C0 = ""
  loc_B04A1F: LitVarStr var_9C, "    <p>Tenga siempre presente este comprobante para reclamar su pago.</p>"
  loc_B04A24: PopAdLdVar
  loc_B04A25: FLdPr Me
  loc_B04A28: MemLdRfVar from_stack_1.htmFile
  loc_B04A2B: LdPrVar
  loc_B04A2D: LateMemCall
  loc_B04A33: LitVarStr var_9C, "    <p>&nbsp;</p>"
  loc_B04A38: PopAdLdVar
  loc_B04A39: FLdPr Me
  loc_B04A3C: MemLdRfVar from_stack_1.htmFile
  loc_B04A3F: LdPrVar
  loc_B04A41: LateMemCall
  loc_B04A47: LitVarStr var_9C, " </th>"
  loc_B04A4C: PopAdLdVar
  loc_B04A4D: FLdPr Me
  loc_B04A50: MemLdRfVar from_stack_1.htmFile
  loc_B04A53: LdPrVar
  loc_B04A55: LateMemCall
  loc_B04A5B: LitVarStr var_9C, "  </tr>"
  loc_B04A60: PopAdLdVar
  loc_B04A61: FLdPr Me
  loc_B04A64: MemLdRfVar from_stack_1.htmFile
  loc_B04A67: LdPrVar
  loc_B04A69: LateMemCall
  loc_B04A6F: LitVarStr var_9C, "  <tr class=""Normal"">"
  loc_B04A74: PopAdLdVar
  loc_B04A75: FLdPr Me
  loc_B04A78: MemLdRfVar from_stack_1.htmFile
  loc_B04A7B: LdPrVar
  loc_B04A7D: LateMemCall
  loc_B04A83: LitVarStr var_9C, "    <th height=""580"" valign=""top""><p align=""right"">&nbsp;</p>"
  loc_B04A88: PopAdLdVar
  loc_B04A89: FLdPr Me
  loc_B04A8C: MemLdRfVar from_stack_1.htmFile
  loc_B04A8F: LdPrVar
  loc_B04A91: LateMemCall
  loc_B04A97: LitStr "      <p align=""right"">OFICINA DE SUMINISTROS, "
  loc_B04A9A: LitI4 1
  loc_B04A9F: LitI4 1
  loc_B04AA4: LitVarStr var_AC, "dddd, d \de mmmm \de yyyy"
  loc_B04AA9: FStVarCopyObj var_C0
  loc_B04AAC: FLdRfVar var_C0
  loc_B04AAF: FMemLdRf unk_46A359
  loc_B04AB4: CVarRef
  loc_B04AB9: ImpAdCallI2 Format$(, )
  loc_B04ABE: FStStrNoPop var_B0
  loc_B04AC1: ConcatStr
  loc_B04AC2: FStStrNoPop var_C4
  loc_B04AC5: LitStr "</p>"
  loc_B04AC8: ConcatStr
  loc_B04AC9: CVarStr var_D8
  loc_B04ACC: PopAdLdVar
  loc_B04ACD: FLdPr Me
  loc_B04AD0: MemLdRfVar from_stack_1.htmFile
  loc_B04AD3: LdPrVar
  loc_B04AD5: LateMemCall
  loc_B04ADB: FFreeStr var_B0 = ""
  loc_B04AE2: FFreeVar var_C0 = ""
  loc_B04AE9: LitVarStr var_9C, "      <p align=""right"">&nbsp;</p>"
  loc_B04AEE: PopAdLdVar
  loc_B04AEF: FLdPr Me
  loc_B04AF2: MemLdRfVar from_stack_1.htmFile
  loc_B04AF5: LdPrVar
  loc_B04AF7: LateMemCall
  loc_B04AFD: LitVarStr var_9C, "      <p align=""right"">&nbsp;</p>"
  loc_B04B02: PopAdLdVar
  loc_B04B03: FLdPr Me
  loc_B04B06: MemLdRfVar from_stack_1.htmFile
  loc_B04B09: LdPrVar
  loc_B04B0B: LateMemCall
  loc_B04B11: LitVarStr var_9C, "      <p align=""right"">&nbsp;</p>"
  loc_B04B16: PopAdLdVar
  loc_B04B17: FLdPr Me
  loc_B04B1A: MemLdRfVar from_stack_1.htmFile
  loc_B04B1D: LdPrVar
  loc_B04B1F: LateMemCall
  loc_B04B25: LitVarStr var_9C, "    <table border=""0"" align=""center"">"
  loc_B04B2A: PopAdLdVar
  loc_B04B2B: FLdPr Me
  loc_B04B2E: MemLdRfVar from_stack_1.htmFile
  loc_B04B31: LdPrVar
  loc_B04B33: LateMemCall
  loc_B04B39: LitVarStr var_9C, "      <tr>"
  loc_B04B3E: PopAdLdVar
  loc_B04B3F: FLdPr Me
  loc_B04B42: MemLdRfVar from_stack_1.htmFile
  loc_B04B45: LdPrVar
  loc_B04B47: LateMemCall
  loc_B04B4D: LitVarStr var_9C, "        <td><hr></td>"
  loc_B04B52: PopAdLdVar
  loc_B04B53: FLdPr Me
  loc_B04B56: MemLdRfVar from_stack_1.htmFile
  loc_B04B59: LdPrVar
  loc_B04B5B: LateMemCall
  loc_B04B61: LitVarStr var_9C, "      </tr>"
  loc_B04B66: PopAdLdVar
  loc_B04B67: FLdPr Me
  loc_B04B6A: MemLdRfVar from_stack_1.htmFile
  loc_B04B6D: LdPrVar
  loc_B04B6F: LateMemCall
  loc_B04B75: LitVarStr var_9C, "      <tr>"
  loc_B04B7A: PopAdLdVar
  loc_B04B7B: FLdPr Me
  loc_B04B7E: MemLdRfVar from_stack_1.htmFile
  loc_B04B81: LdPrVar
  loc_B04B83: LateMemCall
  loc_B04B89: FLdPr Me
  loc_B04B8C: MemLdUI1 global_92
  loc_B04B90: FStUI1 var_13A
  loc_B04B94: FLdUI1
  loc_B04B98: LitI2_Byte 1
  loc_B04B9A: CUI1I2
  loc_B04B9C: EqI2
  loc_B04B9D: BranchF loc_B04BCC
  loc_B04BA0: LitStr "        <td align=""center"" class=""LineaDato"">Recibí: "
  loc_B04BA3: FLdPr Me
  loc_B04BA6: MemLdStr global_88
  loc_B04BA9: ConcatStr
  loc_B04BAA: FStStrNoPop var_B0
  loc_B04BAD: LitStr "</td>"
  loc_B04BB0: ConcatStr
  loc_B04BB1: CVarStr var_C0
  loc_B04BB4: PopAdLdVar
  loc_B04BB5: FLdPr Me
  loc_B04BB8: MemLdRfVar from_stack_1.htmFile
  loc_B04BBB: LdPrVar
  loc_B04BBD: LateMemCall
  loc_B04BC3: FFree1Str var_B0
  loc_B04BC6: FFree1Var var_C0 = ""
  loc_B04BC9: Branch loc_B04C00
  loc_B04BCC: FLdUI1
  loc_B04BD0: LitI2_Byte 2
  loc_B04BD2: CUI1I2
  loc_B04BD4: EqI2
  loc_B04BD5: BranchF loc_B04C00
  loc_B04BD8: LitStr "        <td align=""center"" class=""LineaDato"">"
  loc_B04BDB: FMemLdR4 var_8C(32)
  loc_B04BE0: ConcatStr
  loc_B04BE1: FStStrNoPop var_B0
  loc_B04BE4: LitStr "</td>"
  loc_B04BE7: ConcatStr
  loc_B04BE8: CVarStr var_C0
  loc_B04BEB: PopAdLdVar
  loc_B04BEC: FLdPr Me
  loc_B04BEF: MemLdRfVar from_stack_1.htmFile
  loc_B04BF2: LdPrVar
  loc_B04BF4: LateMemCall
  loc_B04BFA: FFree1Str var_B0
  loc_B04BFD: FFree1Var var_C0 = ""
  loc_B04C00: LitVarStr var_9C, "      </tr>"
  loc_B04C05: PopAdLdVar
  loc_B04C06: FLdPr Me
  loc_B04C09: MemLdRfVar from_stack_1.htmFile
  loc_B04C0C: LdPrVar
  loc_B04C0E: LateMemCall
  loc_B04C14: LitVarStr var_9C, "    </table>    "
  loc_B04C19: PopAdLdVar
  loc_B04C1A: FLdPr Me
  loc_B04C1D: MemLdRfVar from_stack_1.htmFile
  loc_B04C20: LdPrVar
  loc_B04C22: LateMemCall
  loc_B04C28: LitVarStr var_9C, "    </th>"
  loc_B04C2D: PopAdLdVar
  loc_B04C2E: FLdPr Me
  loc_B04C31: MemLdRfVar from_stack_1.htmFile
  loc_B04C34: LdPrVar
  loc_B04C36: LateMemCall
  loc_B04C3C: LitVarStr var_9C, "  </tr>"
  loc_B04C41: PopAdLdVar
  loc_B04C42: FLdPr Me
  loc_B04C45: MemLdRfVar from_stack_1.htmFile
  loc_B04C48: LdPrVar
  loc_B04C4A: LateMemCall
  loc_B04C50: LitVarStr var_9C, "  <tr align=""center"" class=""LineaDato"">"
  loc_B04C55: PopAdLdVar
  loc_B04C56: FLdPr Me
  loc_B04C59: MemLdRfVar from_stack_1.htmFile
  loc_B04C5C: LdPrVar
  loc_B04C5E: LateMemCall
  loc_B04C64: LitStr "    <td><strong>"
  loc_B04C67: LitStr "Municipalidad de Guaymallén"
  loc_B04C6A: ConcatStr
  loc_B04C6B: FStStrNoPop var_B0
  loc_B04C6E: LitStr " -"
  loc_B04C71: ConcatStr
  loc_B04C72: CVarStr var_C0
  loc_B04C75: PopAdLdVar
  loc_B04C76: FLdPr Me
  loc_B04C79: MemLdRfVar from_stack_1.htmFile
  loc_B04C7C: LdPrVar
  loc_B04C7E: LateMemCall
  loc_B04C84: FFree1Str var_B0
  loc_B04C87: FFree1Var var_C0 = ""
  loc_B04C8A: LitStr "      "
  loc_B04C8D: LitStr "Libertad Nº 720"
  loc_B04C90: ConcatStr
  loc_B04C91: FStStrNoPop var_B0
  loc_B04C94: LitStr " - "
  loc_B04C97: ConcatStr
  loc_B04C98: FStStrNoPop var_C4
  loc_B04C9B: LitStr "Guaymallén"
  loc_B04C9E: ConcatStr
  loc_B04C9F: FStStrNoPop var_C8
  loc_B04CA2: LitStr " - "
  loc_B04CA5: ConcatStr
  loc_B04CA6: FStStrNoPop var_140
  loc_B04CA9: LitStr "Mendoza"
  loc_B04CAC: ConcatStr
  loc_B04CAD: FStStrNoPop var_144
  loc_B04CB0: LitStr " - CP"
  loc_B04CB3: ConcatStr
  loc_B04CB4: FStStrNoPop var_148
  loc_B04CB7: LitStr "5521"
  loc_B04CBA: ConcatStr
  loc_B04CBB: FStStrNoPop var_14C
  loc_B04CBE: LitStr "<br>"
  loc_B04CC1: ConcatStr
  loc_B04CC2: CVarStr var_C0
  loc_B04CC5: PopAdLdVar
  loc_B04CC6: FLdPr Me
  loc_B04CC9: MemLdRfVar from_stack_1.htmFile
  loc_B04CCC: LdPrVar
  loc_B04CCE: LateMemCall
  loc_B04CD4: FFreeStr var_B0 = "": var_C4 = "": var_C8 = "": var_140 = "": var_144 = "": var_148 = ""
  loc_B04CE5: FFree1Var var_C0 = ""
  loc_B04CE8: LitStr "      TELÉFONO "
  loc_B04CEB: LitStr "(0261) 4498238"
  loc_B04CEE: ConcatStr
  loc_B04CEF: CVarStr var_F8
  loc_B04CF2: LitVarStr var_AC, vbNullString
  loc_B04CF7: FStVarCopyObj var_D8
  loc_B04CFA: FLdRfVar var_D8
  loc_B04CFD: LitStr " - WEB: "
  loc_B04D00: LitStr "www.guaymallen.gob.ar"
  loc_B04D03: ConcatStr
  loc_B04D04: CVarStr var_C0
  loc_B04D07: LitStr "www.guaymallen.gob.ar"
  loc_B04D0A: LitStr vbNullString
  loc_B04D0D: NeStr
  loc_B04D0F: CVarBoolI2 var_9C
  loc_B04D13: FLdRfVar var_E8
  loc_B04D16: ImpAdCallFPR4  = IIf(, , )
  loc_B04D1B: FLdRfVar var_E8
  loc_B04D1E: ConcatVar var_108
  loc_B04D22: PopAdLdVar
  loc_B04D23: FLdPr Me
  loc_B04D26: MemLdRfVar from_stack_1.htmFile
  loc_B04D29: LdPrVar
  loc_B04D2B: LateMemCall
  loc_B04D31: FFreeVar var_9C = "": var_C0 = "": var_D8 = "": var_F8 = "": var_E8 = ""
  loc_B04D40: LitVarStr var_9C, " </td>"
  loc_B04D45: PopAdLdVar
  loc_B04D46: FLdPr Me
  loc_B04D49: MemLdRfVar from_stack_1.htmFile
  loc_B04D4C: LdPrVar
  loc_B04D4E: LateMemCall
  loc_B04D54: LitVarStr var_9C, "  </tr>"
  loc_B04D59: PopAdLdVar
  loc_B04D5A: FLdPr Me
  loc_B04D5D: MemLdRfVar from_stack_1.htmFile
  loc_B04D60: LdPrVar
  loc_B04D62: LateMemCall
  loc_B04D68: LitVarStr var_9C, "</table>"
  loc_B04D6D: PopAdLdVar
  loc_B04D6E: FLdPr Me
  loc_B04D71: MemLdRfVar from_stack_1.htmFile
  loc_B04D74: LdPrVar
  loc_B04D76: LateMemCall
  loc_B04D7C: LitI4 0
  loc_B04D81: FStR4 var_8C
  loc_B04D84: AryUnlock
  loc_B04D87: ExitProcHresult
End Function

Private Function Proc_172_25_974244() '974244
  'Data Table: 46A3E4
  loc_974218: LitVarStr var_94, "</body>"
  loc_97421D: PopAdLdVar
  loc_97421E: FLdPr Me
  loc_974221: MemLdRfVar from_stack_1.htmFile
  loc_974224: LdPrVar
  loc_974226: LateMemCall
  loc_97422C: LitVarStr var_94, "</html>"
  loc_974231: PopAdLdVar
  loc_974232: FLdPr Me
  loc_974235: MemLdRfVar from_stack_1.htmFile
  loc_974238: LdPrVar
  loc_97423A: LateMemCall
  loc_974240: ExitProcHresult
End Function
