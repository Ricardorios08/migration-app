VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptSaldodeAutorizadosporFecha
  Caption = "Saldo de Autorizados por Fecha"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptSaldodeAutorizadosporFecha.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 7995
  ClientHeight = 4185
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 3930
    Width = 7995
    Height = 255
    TabIndex = 19
    OleObjectBlob = "rptSaldodeAutorizadosporFecha.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 6000
    Top = 3000
    Width = 735
    Height = 615
    TabIndex = 17
    Cancel = -1  'True
    Picture = "rptSaldodeAutorizadosporFecha.frx":094A
    Style = 1
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptSaldodeAutorizadosporFecha.frx":0B9C
    Left = 360
    Top = 240
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 2760
    Width = 1575
    Height = 1095
    TabIndex = 15
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
    Top = 2760
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
    Height = 2655
    TabIndex = 0
    Begin VB.ComboBox cboCodiOrga
      Style = 2
      ForeColor = &HFF0000&
      Left = 1800
      Top = 1320
      Width = 4215
      Height = 315
      TabIndex = 20
    End
    Begin VB.CommandButton cmdCalHasta
      Left = 3000
      Top = 840
      Width = 375
      Height = 375
      TabIndex = 6
      Picture = "rptSaldodeAutorizadosporFecha.frx":0C00
      Style = 1
    End
    Begin VB.CommandButton cmdCodiPart
      Left = 3240
      Top = 1800
      Width = 375
      Height = 375
      TabIndex = 9
      Picture = "rptSaldodeAutorizadosporFecha.frx":1142
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CheckBox chkNotCodiPart
      Caption = "No comienza con"
      Left = 1800
      Top = 2280
      Width = 1575
      Height = 255
      TabIndex = 11
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
    Begin MSMask.MaskEdBox CodiPartMsk
      Left = 1800
      Top = 1800
      Width = 1335
      Height = 285
      TabIndex = 8
      OleObjectBlob = "rptSaldodeAutorizadosporFecha.frx":123C
    End
    Begin MSMask.MaskEdBox mskHasta
      Left = 1815
      Top = 840
      Width = 1095
      Height = 285
      TabIndex = 5
      OleObjectBlob = "rptSaldodeAutorizadosporFecha.frx":129C
    End
    Begin VB.Label Label2
      Caption = "Hasta:"
      Left = 1215
      Top = 840
      Width = 465
      Height = 195
      TabIndex = 4
      AutoSize = -1  'True
    End
    Begin VB.Label Label5
      Caption = "Partida:"
      Left = 1080
      Top = 1800
      Width = 615
      Height = 315
      TabIndex = 7
    End
    Begin VB.Label CodiPartLbl
      Left = 3720
      Top = 1800
      Width = 3855
      Height = 375
      TabIndex = 10
      BorderStyle = 1 'Fixed Single
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
    Left = 6000
    Top = 3120
    Width = 495
    Height = 375
    TabStop = 0   'False
    TabIndex = 18
    OleObjectBlob = "rptSaldodeAutorizadosporFecha.frx":1324
  End
End

Attribute VB_Name = "rptSaldodeAutorizadosporFecha"

Public txtFile As Variant
Public htmFile As Variant
Public bGenerado As Boolean

Private Type UDT_1_00583FA0
  bStruc(40) As Byte ' String fields: 10
End Type

Private Type UDT_2_00614630
  bStruc(44) As Byte ' String fields: 11
End Type


Private Sub cmdCalHasta_Click() '98D1B0
  'Data Table: 489654
  loc_98D168: LitVar_Missing var_A4
  loc_98D16B: PopAdLdVar
  loc_98D16C: LitVarI4
  loc_98D174: PopAdLdVar
  loc_98D175: ImpAdLdRf MemVar_C3D9A8
  loc_98D178: NewIfNullPr frmCalendario
  loc_98D17B: frmCalendario.Show from_stack_1, from_stack_2
  loc_98D180: ImpAdLdRf MemVar_C3D038
  loc_98D183: CDargRef
  loc_98D187: FLdPr Me
  loc_98D18A: VCallAd Control_ID_mskHasta
  loc_98D18D: FStAdFunc var_A8
  loc_98D190: FLdPr var_A8
  loc_98D193: LateIdSt
  loc_98D198: FFree1Ad var_A8
  loc_98D19B: FLdPr Me
  loc_98D19E: VCallAd Control_ID_mskHasta
  loc_98D1A1: CVarAd
  loc_98D1A5: ImpAdCallFPR4 Proc_261_5_9BDB84()
  loc_98D1AA: FFree1Var var_B8 = ""
  loc_98D1AD: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '95D0F8
  'Data Table: 489654
  loc_95D0E0: ILdRf Me
  loc_95D0E3: CastAd
  loc_95D0E6: FStAdFunc var_88
  loc_95D0E9: FLdRfVar var_88
  loc_95D0EC: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_95D0F1: FFree1Ad var_88
  loc_95D0F4: ExitProcHresult
  loc_95D0F5: ImpAdLdRf MemVar_0
End Sub

Private Sub mskHasta_UnknownEvent_0 '952398
  'Data Table: 489654
  loc_952384: FLdPr Me
  loc_952387: VCallAd Control_ID_mskHasta
  loc_95238A: CVarAd
  loc_95238E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_952393: FFree1Var var_94 = ""
  loc_952396: ExitProcHresult
End Sub

Private Function mskHasta_UnknownEvent_8(arg_C) '9B3434
  'Data Table: 489654
  loc_9B3398: FLdPr Me
  loc_9B339B: VCallAd Control_ID_mskHasta
  loc_9B339E: FStAdFunc var_88
  loc_9B33A1: FLdPr var_88
  loc_9B33A4: LateIdLdVar var_98 DispID_15 0
  loc_9B33AB: PopAd
  loc_9B33AD: FLdPr Me
  loc_9B33B0: VCallAd Control_ID_mskHasta
  loc_9B33B3: FStAdFunc var_AC
  loc_9B33B6: LitI2_Byte 0
  loc_9B33B8: PopTmpLdAd2 var_A2
  loc_9B33BB: FLdZeroAd var_AC
  loc_9B33BE: FStAdFunc var_A0
  loc_9B33C1: FLdRfVar var_A0
  loc_9B33C4: LitStr vbNullString
  loc_9B33C7: LitI2_Byte 0
  loc_9B33C9: LitI2_Byte 0
  loc_9B33CB: FLdRfVar var_98
  loc_9B33CE: CStrVarTmp
  loc_9B33CF: FStStrNoPop var_9C
  loc_9B33D2: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9B33D7: FStStrNoPop var_A8
  loc_9B33DA: FLdPr Me
  loc_9B33DD: MemStStrCopy
  loc_9B33E1: FFreeStr var_9C = ""
  loc_9B33E8: FFreeAd var_88 = "": var_A0 = ""
  loc_9B33F1: FFree1Var var_98 = ""
  loc_9B33F4: FLdPr Me
  loc_9B33F7: VCallAd Control_ID_mskHasta
  loc_9B33FA: FStAdFunc var_B0
  loc_9B33FD: LitNothing
  loc_9B33FF: CastAd
  loc_9B3402: FStAdFunc var_AC
  loc_9B3405: FLdRfVar var_AC
  loc_9B3408: FLdZeroAd var_B0
  loc_9B340B: FStAdFuncNoPop
  loc_9B340E: CastAd
  loc_9B3411: FStAdFunc var_A0
  loc_9B3414: FLdRfVar var_A0
  loc_9B3417: FLdPr Me
  loc_9B341A: MemLdRfVar from_stack_1.global_148
  loc_9B341D: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9B3422: IStI2 arg_C
  loc_9B3425: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9B3430: ExitProcHresult
End Function

Private Sub cmdSalir_Click() '97AEB0
  'Data Table: 489654
  loc_97AE80: LitVarStr var_94, "Cerrando..."
  loc_97AE85: PopAdLdVar
  loc_97AE86: FLdPr Me
  loc_97AE89: VCallAd Control_ID_statusBar
  loc_97AE8C: FStAdFunc var_A8
  loc_97AE8F: FLdPr var_A8
  loc_97AE92: LateIdSt
  loc_97AE97: FFree1Ad var_A8
  loc_97AE9A: ILdRf Me
  loc_97AE9D: FStAdNoPop
  loc_97AEA1: ImpAdLdRf MemVar_C44F9C
  loc_97AEA4: NewIfNullPr Me
  loc_97AEA7: Me.Global.Unload from_stack_1
  loc_97AEAC: FFree1Ad var_A8
  loc_97AEAF: ExitProcHresult
End Sub

Private Sub chkNotCodiPart_Click() '941C24
  'Data Table: 489654
  loc_941C18: LitI2_Byte 0
  loc_941C1A: PopTmpLdAd2 var_86
  loc_941C1D: Call CodiPartMsk_UnknownEvent_8()
  loc_941C22: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '98B9CC
  'Data Table: 489654
  loc_98B994: FLdPr Me
  loc_98B997: VCallAd Control_ID_statusBar
  loc_98B99A: FStAdFunc var_88
  loc_98B99D: FLdPr var_88
  loc_98B9A0: LateIdLdVar var_98 DispID_1 0
  loc_98B9A7: CStrVarTmp
  loc_98B9A8: CVarStr var_A8
  loc_98B9AB: PopAdLdVar
  loc_98B9AC: FLdPr Me
  loc_98B9AF: VCallAd Control_ID_statusBar
  loc_98B9B2: FStAdFunc var_BC
  loc_98B9B5: FLdPr var_BC
  loc_98B9B8: LateIdSt
  loc_98B9BD: FFreeAd var_88 = ""
  loc_98B9C4: FFreeVar var_98 = ""
  loc_98B9CB: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '95D0AC
  'Data Table: 489654
  loc_95D094: LitI2_Byte 0
  loc_95D096: ILdRf Me
  loc_95D099: CastAd
  loc_95D09C: FStAdFunc var_88
  loc_95D09F: FLdRfVar var_88
  loc_95D0A2: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_95D0A7: FFree1Ad var_88
  loc_95D0AA: ExitProcHresult
End Sub

Private Sub CodiPartMsk_UnknownEvent_0 '952428
  'Data Table: 489654
  loc_952414: FLdPr Me
  loc_952417: VCallAd Control_ID_CodiPartMsk
  loc_95241A: CVarAd
  loc_95241E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_952423: FFree1Var var_94 = ""
  loc_952426: ExitProcHresult
End Sub

Private Sub CodiPartMsk_UnknownEvent_8 'A2CB90
  'Data Table: 489654
  loc_A2C9DC: FLdRfVar var_9A
  loc_A2C9DF: FLdPr Me
  loc_A2C9E2: VCallAd Control_ID_chkNotCodiPart
  loc_A2C9E5: FStAdFunc var_98
  loc_A2C9E8: FLdPr var_98
  loc_A2C9EB:  = Me.Value
  loc_A2C9F0: LitStr "SELECT DetaPart FROM partida WHERE PeriInfo = "
  loc_A2C9F3: FLdRfVar var_90
  loc_A2C9F6: FLdPr Me
  loc_A2C9F9: VCallAd Control_ID_cboPeriodo
  loc_A2C9FC: FStAdFunc var_8C
  loc_A2C9FF: FLdPr var_8C
  loc_A2CA02:  = Me.Text
  loc_A2CA07: ILdRf var_90
  loc_A2CA0A: ConcatStr
  loc_A2CA0B: FStStrNoPop var_94
  loc_A2CA0E: LitStr " AND CodiPart "
  loc_A2CA11: ConcatStr
  loc_A2CA12: CVarStr var_10C
  loc_A2CA15: LitVarStr var_DC, vbNullString
  loc_A2CA1A: FStVarCopyObj var_EC
  loc_A2CA1D: FLdRfVar var_EC
  loc_A2CA20: LitVarStr var_BC, "NOT"
  loc_A2CA25: FStVarCopyObj var_CC
  loc_A2CA28: FLdRfVar var_CC
  loc_A2CA2B: FLdI2 var_9A
  loc_A2CA2E: CI4UI1
  loc_A2CA2F: LitI4 1
  loc_A2CA34: EqI4
  loc_A2CA35: CVarBoolI2 var_AC
  loc_A2CA39: FLdRfVar var_FC
  loc_A2CA3C: ImpAdCallFPR4  = IIf(, , )
  loc_A2CA41: FLdRfVar var_FC
  loc_A2CA44: ConcatVar var_11C
  loc_A2CA48: LitVarStr var_12C, " LIKE '"
  loc_A2CA4D: ConcatVar var_13C
  loc_A2CA51: FLdPr Me
  loc_A2CA54: VCallAd Control_ID_CodiPartMsk
  loc_A2CA57: FStAdFunc var_140
  loc_A2CA5A: FLdPr var_140
  loc_A2CA5D: LateIdLdVar var_150 DispID_22 0
  loc_A2CA64: CStrVarTmp
  loc_A2CA65: CVarStr var_160
  loc_A2CA68: ConcatVar var_170
  loc_A2CA6C: LitVarStr var_180, Chr(37) & "'"
  loc_A2CA71: ConcatVar var_190
  loc_A2CA75: CStrVarVal var_194
  loc_A2CA79: FLdRfVar var_88
  loc_A2CA7C: NewIfNullPr clspartida
  loc_A2CA7F: Call clspartida.RedefineRS(from_stack_1v)
  loc_A2CA84: FFreeStr var_90 = "": var_94 = ""
  loc_A2CA8D: FFreeAd var_8C = "": var_98 = ""
  loc_A2CA96: FFreeVar var_AC = "": var_CC = "": var_EC = "": var_10C = "": var_FC = "": var_11C = "": var_150 = "": var_13C = "": var_160 = "": var_170 = ""
  loc_A2CAAF: FLdRfVar var_198
  loc_A2CAB2: FLdRfVar var_88
  loc_A2CAB5: NewIfNullPr clspartida
  loc_A2CAB8: from_stack_1 = clspartida.RecordCount
  loc_A2CABD: ILdRf var_198
  loc_A2CAC0: FStR4 var_19C
  loc_A2CAC3: ILdRf var_19C
  loc_A2CAC6: LitI4 0
  loc_A2CACB: EqI4
  loc_A2CACC: BranchF loc_A2CAE9
  loc_A2CACF: LitStr "0 registros encontrados"
  loc_A2CAD2: FLdPr Me
  loc_A2CAD5: VCallAd Control_ID_CodiPartLbl
  loc_A2CAD8: FStAdFunc var_8C
  loc_A2CADB: FLdPr var_8C
  loc_A2CADE: Me.Caption = from_stack_1
  loc_A2CAE3: FFree1Ad var_8C
  loc_A2CAE6: Branch loc_A2CB8E
  loc_A2CAE9: ILdRf var_19C
  loc_A2CAEC: LitI4 1
  loc_A2CAF1: EqI4
  loc_A2CAF2: BranchF loc_A2CB56
  loc_A2CAF5: FLdRfVar var_CC
  loc_A2CAF8: FLdRfVar var_140
  loc_A2CAFB: LitVarStr var_AC, "DetaPart"
  loc_A2CB00: PopAdLdVar
  loc_A2CB01: FLdRfVar var_98
  loc_A2CB04: FLdRfVar var_8C
  loc_A2CB07: FLdRfVar var_88
  loc_A2CB0A: NewIfNullPr clspartida
  loc_A2CB0D: from_stack_1v = clspartida.RsFrmGet()
  loc_A2CB12: FLdPr var_8C
  loc_A2CB15:  = Me.Fields
  loc_A2CB1A: FLdPr var_98
  loc_A2CB1D: from_stack_2 = Me.Item(from_stack_1)
  loc_A2CB22: FLdPr var_140
  loc_A2CB25:  = Me.Value
  loc_A2CB2A: FLdRfVar var_CC
  loc_A2CB2D: CStrVarTmp
  loc_A2CB2E: FStStrNoPop var_90
  loc_A2CB31: FLdPr Me
  loc_A2CB34: VCallAd Control_ID_CodiPartLbl
  loc_A2CB37: FStAdFunc var_1A0
  loc_A2CB3A: FLdPr var_1A0
  loc_A2CB3D: Me.Caption = from_stack_1
  loc_A2CB42: FFree1Str var_90
  loc_A2CB45: FFreeAd var_8C = "": var_98 = "": var_140 = ""
  loc_A2CB50: FFree1Var var_CC = ""
  loc_A2CB53: Branch loc_A2CB8E
  loc_A2CB56: FLdRfVar var_198
  loc_A2CB59: FLdRfVar var_88
  loc_A2CB5C: NewIfNullPr clspartida
  loc_A2CB5F: from_stack_1 = clspartida.RecordCount
  loc_A2CB64: ILdRf var_198
  loc_A2CB67: CStrI4
  loc_A2CB69: FStStrNoPop var_90
  loc_A2CB6C: LitStr " partidas encontradas"
  loc_A2CB6F: ConcatStr
  loc_A2CB70: FStStrNoPop var_94
  loc_A2CB73: FLdPr Me
  loc_A2CB76: VCallAd Control_ID_CodiPartLbl
  loc_A2CB79: FStAdFunc var_8C
  loc_A2CB7C: FLdPr var_8C
  loc_A2CB7F: Me.Caption = from_stack_1
  loc_A2CB84: FFreeStr var_90 = ""
  loc_A2CB8B: FFree1Ad var_8C
  loc_A2CB8E: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '95D190
  'Data Table: 489654
  loc_95D178: ILdRf Me
  loc_95D17B: CastAd
  loc_95D17E: FStAdFunc var_88
  loc_95D181: FLdRfVar var_88
  loc_95D184: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_95D189: FFree1Ad var_88
  loc_95D18C: ExitProcHresult
End Sub

Private Sub cmdCodiPart_Click() '9FA714
  'Data Table: 489654
  loc_9FA5D8: LitNothing
  loc_9FA5DA: CastAd
  loc_9FA5DD: FStAdFuncNoPop
  loc_9FA5E0: ImpAdLdRf MemVar_C3D724
  loc_9FA5E3: NewIfNullPr bscPartida
  loc_9FA5E6: Call bscPartida.global_4332396Set(from_stack_1v)
  loc_9FA5EB: FFree1Ad var_88
  loc_9FA5EE: LitVar_Missing var_A8
  loc_9FA5F1: PopAdLdVar
  loc_9FA5F2: LitVarI4
  loc_9FA5FA: PopAdLdVar
  loc_9FA5FB: ImpAdLdRf MemVar_C3D724
  loc_9FA5FE: NewIfNullPr bscPartida
  loc_9FA601: bscPartida.Show from_stack_1, from_stack_2
  loc_9FA606: FLdRfVar var_AC
  loc_9FA609: FLdRfVar var_88
  loc_9FA60C: ImpAdLdRf MemVar_C3D724
  loc_9FA60F: NewIfNullPr bscPartida
  loc_9FA612: from_stack_1v = bscPartida.global_4332396Get()
  loc_9FA617: FLdPr var_88
  loc_9FA61A: from_stack_1 = clsbase.RecordCount
  loc_9FA61F: ILdRf var_AC
  loc_9FA622: LitI4 0
  loc_9FA627: GtI4
  loc_9FA628: FFree1Ad var_88
  loc_9FA62B: BranchF loc_9FA706
  loc_9FA62E: FLdRfVar var_C8
  loc_9FA631: FLdRfVar var_B8
  loc_9FA634: LitVarStr var_98, "CodiPart"
  loc_9FA639: PopAdLdVar
  loc_9FA63A: FLdRfVar var_B4
  loc_9FA63D: FLdRfVar var_B0
  loc_9FA640: FLdRfVar var_88
  loc_9FA643: ImpAdLdRf MemVar_C3D724
  loc_9FA646: NewIfNullPr bscPartida
  loc_9FA649: from_stack_1v = bscPartida.global_4332396Get()
  loc_9FA64E: FLdPr var_88
  loc_9FA651: from_stack_1v = clsbase.RsFrmGet()
  loc_9FA656: FLdPr var_B0
  loc_9FA659:  = Me.Fields
  loc_9FA65E: FLdPr var_B4
  loc_9FA661: from_stack_2 = Me.Item(from_stack_1)
  loc_9FA666: FLdPr var_B8
  loc_9FA669:  = Me.Value
  loc_9FA66E: FLdRfVar var_C8
  loc_9FA671: CStrVarTmp
  loc_9FA672: CVarStr var_D8
  loc_9FA675: PopAdLdVar
  loc_9FA676: FLdPr Me
  loc_9FA679: VCallAd Control_ID_CodiPartMsk
  loc_9FA67C: FStAdFunc var_DC
  loc_9FA67F: FLdPr var_DC
  loc_9FA682: LateIdSt
  loc_9FA687: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9FA694: FFreeVar var_C8 = ""
  loc_9FA69B: FLdRfVar var_C8
  loc_9FA69E: FLdRfVar var_B8
  loc_9FA6A1: LitVarStr var_98, "DetaPart"
  loc_9FA6A6: PopAdLdVar
  loc_9FA6A7: FLdRfVar var_B4
  loc_9FA6AA: FLdRfVar var_B0
  loc_9FA6AD: FLdRfVar var_88
  loc_9FA6B0: ImpAdLdRf MemVar_C3D724
  loc_9FA6B3: NewIfNullPr bscPartida
  loc_9FA6B6: from_stack_1v = bscPartida.global_4332396Get()
  loc_9FA6BB: FLdPr var_88
  loc_9FA6BE: from_stack_1v = clsbase.RsFrmGet()
  loc_9FA6C3: FLdPr var_B0
  loc_9FA6C6:  = Me.Fields
  loc_9FA6CB: FLdPr var_B4
  loc_9FA6CE: from_stack_2 = Me.Item(from_stack_1)
  loc_9FA6D3: FLdPr var_B8
  loc_9FA6D6:  = Me.Value
  loc_9FA6DB: FLdRfVar var_C8
  loc_9FA6DE: CStrVarTmp
  loc_9FA6DF: FStStrNoPop var_E0
  loc_9FA6E2: FLdPr Me
  loc_9FA6E5: VCallAd Control_ID_CodiPartLbl
  loc_9FA6E8: FStAdFunc var_DC
  loc_9FA6EB: FLdPr var_DC
  loc_9FA6EE: Me.Caption = from_stack_1
  loc_9FA6F3: FFree1Str var_E0
  loc_9FA6F6: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9FA703: FFree1Var var_C8 = ""
  loc_9FA706: LitI2_Byte 0
  loc_9FA708: PopTmpLdAd2 var_E2
  loc_9FA70B: Call CodiPartMsk_UnknownEvent_8()
  loc_9FA710: ExitProcHresult
  loc_9FA711: MemLdStr global_857
End Sub

Private Sub cboPeriodo_Click() 'A879B0
  'Data Table: 489654
  loc_A875A4: FLdRfVar var_8C
  loc_A875A7: FLdPr Me
  loc_A875AA: VCallAd Control_ID_cboPeriodo
  loc_A875AD: FStAdFunc var_88
  loc_A875B0: FLdPr var_88
  loc_A875B3:  = Me.Text
  loc_A875B8: ILdRf var_8C
  loc_A875BB: CI2Str
  loc_A875BD: ImpAdLdI2 MemVar_C3D064
  loc_A875C0: LtI2
  loc_A875C1: FFree1Str var_8C
  loc_A875C4: FFree1Ad var_88
  loc_A875C7: BranchF loc_A8761C
  loc_A875CA: FLdRfVar var_8C
  loc_A875CD: FLdPr Me
  loc_A875D0: VCallAd Control_ID_cboPeriodo
  loc_A875D3: FStAdFunc var_88
  loc_A875D6: FLdPr var_88
  loc_A875D9:  = Me.Text
  loc_A875DE: LitI2_Byte &H1F
  loc_A875E0: LitI2_Byte &HC
  loc_A875E2: ILdRf var_8C
  loc_A875E5: CI2Str
  loc_A875E7: FLdRfVar var_9C
  loc_A875EA: ImpAdCallFPR4  = DateSerial(, , )
  loc_A875EF: FLdRfVar var_9C
  loc_A875F2: CStrVarTmp
  loc_A875F3: CVarStr var_AC
  loc_A875F6: PopAdLdVar
  loc_A875F7: FLdPr Me
  loc_A875FA: VCallAd Control_ID_mskHasta
  loc_A875FD: FStAdFunc var_C0
  loc_A87600: FLdPr var_C0
  loc_A87603: LateIdSt
  loc_A87608: FFree1Str var_8C
  loc_A8760B: FFreeAd var_88 = ""
  loc_A87612: FFreeVar var_9C = ""
  loc_A87619: Branch loc_A8763C
  loc_A8761C: ImpAdLdFPR8 MemVar_C3D04C
  loc_A8761F: CStrDate
  loc_A87621: CVarStr var_9C
  loc_A87624: PopAdLdVar
  loc_A87625: FLdPr Me
  loc_A87628: VCallAd Control_ID_mskHasta
  loc_A8762B: FStAdFunc var_88
  loc_A8762E: FLdPr var_88
  loc_A87631: LateIdSt
  loc_A87636: FFree1Ad var_88
  loc_A87639: FFree1Var var_9C = ""
  loc_A8763C: FLdPr Me
  loc_A8763F: MemLdRfVar from_stack_1.global_88
  loc_A87642: NewIfNullAd
  loc_A87645: FStAd var_C4 
  loc_A87649: LitStr "SELECT a.CodiOrga, DetaOrga "
  loc_A8764C: LitStr " FROM autorizado a"
  loc_A8764F: ConcatStr
  loc_A87650: FStStrNoPop var_8C
  loc_A87653: LitStr " INNER JOIN infogov.organigrama o ON o.PeriInfo = a.PeriInfo AND o.CodiOrga = a.CodiOrga"
  loc_A87656: ConcatStr
  loc_A87657: FStStrNoPop var_C8
  loc_A8765A: LitStr " WHERE a.PeriInfo = "
  loc_A8765D: ConcatStr
  loc_A8765E: FStStrNoPop var_D0
  loc_A87661: FLdRfVar var_CC
  loc_A87664: FLdPr Me
  loc_A87667: VCallAd Control_ID_cboPeriodo
  loc_A8766A: FStAdFunc var_88
  loc_A8766D: FLdPr var_88
  loc_A87670:  = Me.Text
  loc_A87675: ILdRf var_CC
  loc_A87678: ConcatStr
  loc_A87679: FStStrNoPop var_D4
  loc_A8767C: LitStr " GROUP BY a.CodiOrga;"
  loc_A8767F: ConcatStr
  loc_A87680: FStStrNoPop var_D8
  loc_A87683: FLdPr var_C4
  loc_A87686: Call clsimputacion.RedefineRS(from_stack_1v)
  loc_A8768B: FFreeStr var_8C = "": var_C8 = "": var_D0 = "": var_CC = "": var_D4 = ""
  loc_A8769A: FFree1Ad var_88
  loc_A8769D: FLdRfVar var_DC
  loc_A876A0: FLdPr var_C4
  loc_A876A3: from_stack_1 = clsimputacion.RecordCount
  loc_A876A8: ILdRf var_DC
  loc_A876AB: LitI4 0
  loc_A876B0: GtI4
  loc_A876B1: BranchF loc_A879A7
  loc_A876B4: LitI4 1
  loc_A876B9: FLdRfVar var_DC
  loc_A876BC: FLdPr var_C4
  loc_A876BF: from_stack_1 = clsimputacion.RecordCount
  loc_A876C4: ILdRf var_DC
  loc_A876C7: FLdPr Me
  loc_A876CA: MemLdRfVar from_stack_1.global_136
  loc_A876CD: Redim
  loc_A876D7: LitI4 1
  loc_A876DC: FLdRfVar var_DC
  loc_A876DF: FLdPr var_C4
  loc_A876E2: from_stack_1 = clsimputacion.RecordCount
  loc_A876E7: ILdRf var_DC
  loc_A876EA: FLdPr Me
  loc_A876ED: MemLdRfVar from_stack_1.global_140
  loc_A876F0: Redim
  loc_A876FA: FLdRfVar var_DC
  loc_A876FD: FLdPr var_C4
  loc_A87700: from_stack_1 = clsimputacion.RecordCount
  loc_A87705: ILdRf var_DC
  loc_A87708: CI2I4
  loc_A87709: FLdPr Me
  loc_A8770C: MemStI2 global_132
  loc_A8770F: FLdPr Me
  loc_A87712: VCallAd Control_ID_cboCodiOrga
  loc_A87715: FStAdFunc var_88
  loc_A87718: FLdPr var_88
  loc_A8771B: Me.Clear
  loc_A87720: FFree1Ad var_88
  loc_A87723: LitVarI2 var_BC, 0
  loc_A87728: PopAdLdVar
  loc_A87729: LitStr "TODAS"
  loc_A8772C: FLdPr Me
  loc_A8772F: VCallAd Control_ID_cboCodiOrga
  loc_A87732: FStAdFunc var_88
  loc_A87735: FLdPr var_88
  loc_A87738: Me.AddItem from_stack_1, from_stack_2
  loc_A8773D: FFree1Ad var_88
  loc_A87740: LitI4 0
  loc_A87745: FLdRfVar var_DE
  loc_A87748: FLdPr Me
  loc_A8774B: VCallAd Control_ID_cboCodiOrga
  loc_A8774E: FStAdFunc var_88
  loc_A87751: FLdPr var_88
  loc_A87754:  = Me.NewIndex
  loc_A87759: FLdI2 var_DE
  loc_A8775C: FLdPr Me
  loc_A8775F: VCallAd Control_ID_cboCodiOrga
  loc_A87762: FStAdFunc var_C0
  loc_A87765: FLdPr var_C0
  loc_A87768: Me.ItemData = from_stack_1
  loc_A8776D: FFreeAd var_88 = ""
  loc_A87774: FLdPr var_C4
  loc_A87777: Call clsimputacion.MoveFirst()
  loc_A8777C: FLdRfVar var_DE
  loc_A8777F: FLdPr var_C4
  loc_A87782: from_stack_1 = clsimputacion.EOF
  loc_A87787: FLdI2 var_DE
  loc_A8778A: NotI4
  loc_A8778B: BranchF loc_A87991
  loc_A8778E: FLdRfVar var_DC
  loc_A87791: FLdPr var_C4
  loc_A87794: from_stack_1 = clsimputacion.AbsolutePosition
  loc_A87799: FLdRfVar var_E4
  loc_A8779C: LitVarStr var_BC, "DetaOrga"
  loc_A877A1: PopAdLdVar
  loc_A877A2: FLdRfVar var_C0
  loc_A877A5: FLdRfVar var_88
  loc_A877A8: FLdPr var_C4
  loc_A877AB: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A877B0: FLdPr var_88
  loc_A877B3:  = Me.Fields
  loc_A877B8: FLdPr var_C0
  loc_A877BB: from_stack_2 = Me.Item(from_stack_1)
  loc_A877C0: LitI2_Byte 0
  loc_A877C2: LitVar_Missing var_AC
  loc_A877C5: LitI2_Byte 0
  loc_A877C7: FLdZeroAd var_E4
  loc_A877CA: CVarAd
  loc_A877CE: PopAdLdVar
  loc_A877CF: ILdRf var_DC
  loc_A877D2: FLdPr Me
  loc_A877D5: MemLdStr global_136
  loc_A877D8: AryLock
  loc_A877DB: Ary1LdRf
  loc_A877DC: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A877E1: AryUnlock
  loc_A877E4: FFreeAd var_88 = ""
  loc_A877EB: FFreeVar var_9C = ""
  loc_A877F2: FLdRfVar var_DC
  loc_A877F5: FLdPr var_C4
  loc_A877F8: from_stack_1 = clsimputacion.AbsolutePosition
  loc_A877FD: FLdRfVar var_E4
  loc_A87800: LitVarStr var_BC, "DetaOrga"
  loc_A87805: PopAdLdVar
  loc_A87806: FLdRfVar var_C0
  loc_A87809: FLdRfVar var_88
  loc_A8780C: FLdPr var_C4
  loc_A8780F: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A87814: FLdPr var_88
  loc_A87817:  = Me.Fields
  loc_A8781C: FLdPr var_C0
  loc_A8781F: from_stack_2 = Me.Item(from_stack_1)
  loc_A87824: LitI2_Byte 0
  loc_A87826: LitVar_Missing var_AC
  loc_A87829: LitI2_Byte 0
  loc_A8782B: FLdZeroAd var_E4
  loc_A8782E: CVarAd
  loc_A87832: PopAdLdVar
  loc_A87833: ILdRf var_DC
  loc_A87836: FLdPr Me
  loc_A87839: MemLdStr global_140
  loc_A8783C: AryLock
  loc_A8783F: Ary1LdPr
  loc_A87840: MemLdRfVar from_stack_1.global_4
  loc_A87843: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A87848: AryUnlock
  loc_A8784B: FFreeAd var_88 = ""
  loc_A87852: FFreeVar var_9C = ""
  loc_A87859: FLdRfVar var_9C
  loc_A8785C: FLdRfVar var_E4
  loc_A8785F: LitVarStr var_BC, "CodiOrga"
  loc_A87864: PopAdLdVar
  loc_A87865: FLdRfVar var_C0
  loc_A87868: FLdRfVar var_88
  loc_A8786B: FLdPr var_C4
  loc_A8786E: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A87873: FLdPr var_88
  loc_A87876:  = Me.Fields
  loc_A8787B: FLdPr var_C0
  loc_A8787E: from_stack_2 = Me.Item(from_stack_1)
  loc_A87883: FLdPr var_E4
  loc_A87886:  = Me.Value
  loc_A8788B: FLdRfVar var_124
  loc_A8788E: FLdRfVar var_114
  loc_A87891: LitVarStr var_110, "DetaOrga"
  loc_A87896: PopAdLdVar
  loc_A87897: FLdRfVar var_100
  loc_A8789A: FLdRfVar var_FC
  loc_A8789D: FLdPr var_C4
  loc_A878A0: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A878A5: FLdPr var_FC
  loc_A878A8:  = Me.Fields
  loc_A878AD: FLdPr var_100
  loc_A878B0: from_stack_2 = Me.Item(from_stack_1)
  loc_A878B5: FLdPr var_114
  loc_A878B8:  = Me.Value
  loc_A878BD: FLdRfVar var_DC
  loc_A878C0: FLdPr var_C4
  loc_A878C3: from_stack_1 = clsimputacion.AbsolutePosition
  loc_A878C8: ILdRf var_DC
  loc_A878CB: CVarI4
  loc_A878CF: PopAdLdVar
  loc_A878D0: FLdRfVar var_9C
  loc_A878D3: LitVarStr var_F8, "-"
  loc_A878D8: ConcatVar var_AC
  loc_A878DC: FLdRfVar var_124
  loc_A878DF: ConcatVar var_134
  loc_A878E3: CStrVarVal var_8C
  loc_A878E7: FLdPr Me
  loc_A878EA: VCallAd Control_ID_cboCodiOrga
  loc_A878ED: FStAdFunc var_148
  loc_A878F0: FLdPr var_148
  loc_A878F3: Me.AddItem from_stack_1, from_stack_2
  loc_A878F8: FFree1Str var_8C
  loc_A878FB: FFreeAd var_88 = "": var_C0 = "": var_E4 = "": var_FC = "": var_100 = "": var_114 = ""
  loc_A8790C: FFreeVar var_9C = "": var_AC = "": var_124 = ""
  loc_A87917: FLdRfVar var_9C
  loc_A8791A: FLdRfVar var_E4
  loc_A8791D: LitVarStr var_BC, "CodiOrga"
  loc_A87922: PopAdLdVar
  loc_A87923: FLdRfVar var_C0
  loc_A87926: FLdRfVar var_88
  loc_A87929: FLdPr var_C4
  loc_A8792C: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A87931: FLdPr var_88
  loc_A87934:  = Me.Fields
  loc_A87939: FLdPr var_C0
  loc_A8793C: from_stack_2 = Me.Item(from_stack_1)
  loc_A87941: FLdPr var_E4
  loc_A87944:  = Me.Value
  loc_A87949: FLdRfVar var_9C
  loc_A8794C: CI4Var
  loc_A8794E: FLdRfVar var_DE
  loc_A87951: FLdPr Me
  loc_A87954: VCallAd Control_ID_cboCodiOrga
  loc_A87957: FStAdFunc var_FC
  loc_A8795A: FLdPr var_FC
  loc_A8795D:  = Me.NewIndex
  loc_A87962: FLdI2 var_DE
  loc_A87965: FLdPr Me
  loc_A87968: VCallAd Control_ID_cboCodiOrga
  loc_A8796B: FStAdFunc var_100
  loc_A8796E: FLdPr var_100
  loc_A87971: Me.ItemData = from_stack_1
  loc_A87976: FFreeAd var_88 = "": var_C0 = "": var_FC = "": var_E4 = ""
  loc_A87983: FFree1Var var_9C = ""
  loc_A87986: FLdPr var_C4
  loc_A87989: Call clsimputacion.MoveSiguiente()
  loc_A8798E: Branch loc_A8777C
  loc_A87991: LitI2_Byte 0
  loc_A87993: FLdPr Me
  loc_A87996: VCallAd Control_ID_cboCodiOrga
  loc_A87999: FStAdFunc var_88
  loc_A8799C: FLdPr var_88
  loc_A8799F: Me.ListIndex = from_stack_1
  loc_A879A4: FFree1Ad var_88
  loc_A879A7: LitNothing
  loc_A879A9: FStAd var_C4 
  loc_A879AD: ExitProcHresult
End Sub

Private Sub Form_Load() '9DA574
  'Data Table: 489654
  loc_9DA480: LitVarStr var_94, "#.#.#.#.##.##"
  loc_9DA485: PopAdLdVar
  loc_9DA486: FLdPr Me
  loc_9DA489: VCallAd Control_ID_CodiPartMsk
  loc_9DA48C: FStAdFunc var_A8
  loc_9DA48F: FLdPr var_A8
  loc_9DA492: LateIdSt
  loc_9DA497: FFree1Ad var_A8
  loc_9DA49A: LitI2_Byte &HFF
  loc_9DA49C: ImpAdStI2 MemVar_C3D840
  loc_9DA49F: ILdRf Me
  loc_9DA4A2: CastAd
  loc_9DA4A5: FStAdFunc var_A8
  loc_9DA4A8: FLdRfVar var_A8
  loc_9DA4AB: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_9DA4B0: FFree1Ad var_A8
  loc_9DA4B3: LitStr "SELECT * FROM infogov.periodo ORDER BY PeriInfo"
  loc_9DA4B6: FLdRfVar var_AC
  loc_9DA4B9: NewIfNullPr clsperiodo
  loc_9DA4BC: Call clsperiodo.RedefineRS(from_stack_1v)
  loc_9DA4C1: FLdRfVar var_B0
  loc_9DA4C4: FLdRfVar var_AC
  loc_9DA4C7: NewIfNullPr clsperiodo
  loc_9DA4CA: from_stack_1 = clsperiodo.RecordCount
  loc_9DA4CF: ILdRf var_B0
  loc_9DA4D2: LitI4 0
  loc_9DA4D7: GtI4
  loc_9DA4D8: BranchF loc_9DA56B
  loc_9DA4DB: FLdRfVar var_AC
  loc_9DA4DE: NewIfNullPr clsperiodo
  loc_9DA4E1: Call clsperiodo.MoveFirst()
  loc_9DA4E6: FLdRfVar var_B2
  loc_9DA4E9: FLdRfVar var_AC
  loc_9DA4EC: NewIfNullPr clsperiodo
  loc_9DA4EF: from_stack_1 = clsperiodo.EOF
  loc_9DA4F4: FLdI2 var_B2
  loc_9DA4F7: NotI4
  loc_9DA4F8: BranchF loc_9DA56B
  loc_9DA4FB: LitVar_Missing var_A4
  loc_9DA4FE: PopAdLdVar
  loc_9DA4FF: FLdRfVar var_CC
  loc_9DA502: FLdRfVar var_BC
  loc_9DA505: LitVarStr var_94, "PeriInfo"
  loc_9DA50A: PopAdLdVar
  loc_9DA50B: FLdRfVar var_B8
  loc_9DA50E: FLdRfVar var_A8
  loc_9DA511: FLdRfVar var_AC
  loc_9DA514: NewIfNullPr clsperiodo
  loc_9DA517: from_stack_1v = clsperiodo.RsFrmGet()
  loc_9DA51C: FLdPr var_A8
  loc_9DA51F:  = Me.Fields
  loc_9DA524: FLdPr var_B8
  loc_9DA527: from_stack_2 = Me.Item(from_stack_1)
  loc_9DA52C: FLdPr var_BC
  loc_9DA52F:  = Me.Value
  loc_9DA534: FLdRfVar var_CC
  loc_9DA537: CStrVarTmp
  loc_9DA538: FStStrNoPop var_D0
  loc_9DA53B: FLdPr Me
  loc_9DA53E: VCallAd Control_ID_cboPeriodo
  loc_9DA541: FStAdFunc var_D4
  loc_9DA544: FLdPr var_D4
  loc_9DA547: Me.AddItem from_stack_1, from_stack_2
  loc_9DA54C: FFree1Str var_D0
  loc_9DA54F: FFreeAd var_A8 = "": var_B8 = "": var_BC = ""
  loc_9DA55A: FFree1Var var_CC = ""
  loc_9DA55D: FLdRfVar var_AC
  loc_9DA560: NewIfNullPr clsperiodo
  loc_9DA563: Call clsperiodo.MoveSiguiente()
  loc_9DA568: Branch loc_9DA4E6
  loc_9DA56B: Call cmdNueva_Click()
  loc_9DA570: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '95CCD0
  'Data Table: 489654
  loc_95CCB8: FLdPr Me
  loc_95CCBB: VCallAd Control_ID_wbbReporte
  loc_95CCBE: FStAdFunc var_88
  loc_95CCC1: FLdRfVar var_88
  loc_95CCC4: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_95CCC9: FFree1Ad var_88
  loc_95CCCC: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() '9F45C8
  'Data Table: 489654
  loc_9F4498: LitI2_Byte 0
  loc_9F449A: FLdPr Me
  loc_9F449D: MemStI2 bGenerado
  loc_9F44A0: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_9F44A5: ImpAdLdI2 MemVar_C3D064
  loc_9F44A8: CStrUI1
  loc_9F44AA: FStStrNoPop var_88
  loc_9F44AD: FLdPr Me
  loc_9F44B0: VCallAd Control_ID_cboPeriodo
  loc_9F44B3: FStAdFunc var_8C
  loc_9F44B6: FLdPr var_8C
  loc_9F44B9: Me.Text = from_stack_1
  loc_9F44BE: FFree1Str var_88
  loc_9F44C1: FFree1Ad var_8C
  loc_9F44C4: ImpAdLdFPR8 MemVar_C3D04C
  loc_9F44C7: CStrDate
  loc_9F44C9: CVarStr var_9C
  loc_9F44CC: PopAdLdVar
  loc_9F44CD: FLdPr Me
  loc_9F44D0: VCallAd Control_ID_mskHasta
  loc_9F44D3: FStAdFunc var_8C
  loc_9F44D6: FLdPr var_8C
  loc_9F44D9: LateIdSt
  loc_9F44DE: FFree1Ad var_8C
  loc_9F44E1: FFree1Var var_9C = ""
  loc_9F44E4: LitStr "SELECT PaexPaco FROM paraconta WHERE PeriInfo = "
  loc_9F44E7: FLdRfVar var_88
  loc_9F44EA: FLdPr Me
  loc_9F44ED: VCallAd Control_ID_cboPeriodo
  loc_9F44F0: FStAdFunc var_8C
  loc_9F44F3: FLdPr var_8C
  loc_9F44F6:  = Me.Text
  loc_9F44FB: ILdRf var_88
  loc_9F44FE: ConcatStr
  loc_9F44FF: FStStrNoPop var_B0
  loc_9F4502: FLdPr Me
  loc_9F4505: MemLdRfVar from_stack_1.global_88
  loc_9F4508: NewIfNullPr clsimputacion
  loc_9F450B: Call clsimputacion.RedefineRS(from_stack_1v)
  loc_9F4510: FFreeStr var_88 = ""
  loc_9F4517: FFree1Ad var_8C
  loc_9F451A: FLdRfVar var_9C
  loc_9F451D: FLdRfVar var_B8
  loc_9F4520: LitVarStr var_AC, "PaexPaco"
  loc_9F4525: PopAdLdVar
  loc_9F4526: FLdRfVar var_B4
  loc_9F4529: FLdRfVar var_8C
  loc_9F452C: FLdPr Me
  loc_9F452F: MemLdRfVar from_stack_1.global_88
  loc_9F4532: NewIfNullPr clsimputacion
  loc_9F4535: from_stack_1v = clsimputacion.RsFrmGet()
  loc_9F453A: FLdPr var_8C
  loc_9F453D:  = Me.Fields
  loc_9F4542: FLdPr var_B4
  loc_9F4545: from_stack_2 = Me.Item(from_stack_1)
  loc_9F454A: FLdPr var_B8
  loc_9F454D:  = Me.Value
  loc_9F4552: FLdRfVar var_9C
  loc_9F4555: CStrVarTmp
  loc_9F4556: CVarStr var_C8
  loc_9F4559: PopAdLdVar
  loc_9F455A: FLdPr Me
  loc_9F455D: VCallAd Control_ID_CodiPartMsk
  loc_9F4560: FStAdFunc var_DC
  loc_9F4563: FLdPr var_DC
  loc_9F4566: LateIdSt
  loc_9F456B: FFreeAd var_8C = "": var_B4 = "": var_B8 = ""
  loc_9F4576: FFreeVar var_9C = ""
  loc_9F457D: LitStr vbNullString
  loc_9F4580: FLdPr Me
  loc_9F4583: VCallAd Control_ID_CodiPartLbl
  loc_9F4586: FStAdFunc var_8C
  loc_9F4589: FLdPr var_8C
  loc_9F458C: Me.Caption = from_stack_1
  loc_9F4591: FFree1Ad var_8C
  loc_9F4594: LitI4 1
  loc_9F4599: CI2I4
  loc_9F459A: FLdPr Me
  loc_9F459D: VCallAd Control_ID_chkNotCodiPart
  loc_9F45A0: FStAdFunc var_8C
  loc_9F45A3: FLdPr var_8C
  loc_9F45A6: Me.Value = from_stack_1
  loc_9F45AB: FFree1Ad var_8C
  loc_9F45AE: Call HabilitarCriterio()
  loc_9F45B3: ILdRf Me
  loc_9F45B6: CastAd
  loc_9F45B9: FStAdFunc var_8C
  loc_9F45BC: FLdRfVar var_8C
  loc_9F45BF: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_9F45C4: FFree1Ad var_8C
  loc_9F45C7: ExitProcHresult
End Sub

Public Function txtFileGet() '48A65C
  txtFileGet = txtFile
End Function

Public Sub txtFilePut(Value) '48A66B
  txtFile = Value
End Sub

Public Sub txtFileSet(Value) '48A67A
  txtFile = Value
End Sub

Public Function htmFileGet() '48A689
  htmFileGet = htmFile
End Function

Public Sub htmFilePut(Value) '48A698
  htmFile = Value
End Sub

Public Sub htmFileSet(Value) '48A6A7
  htmFile = Value
End Sub

Public Function bGeneradoGet() '48A6B6
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '48A6C5
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() '9BE264
  'Data Table: 489654
  loc_9BE1C0: LitI4 0
  loc_9BE1C5: LitI4 7
  loc_9BE1CA: FLdRfVar var_88
  loc_9BE1CD: Redim
  loc_9BE1D7: FLdPr Me
  loc_9BE1DA: VCallAd Control_ID_cboPeriodo
  loc_9BE1DD: CVarAd
  loc_9BE1E1: ParmAry1St
  loc_9BE1E7: FLdPr Me
  loc_9BE1EA: VCallAd Control_ID_mskHasta
  loc_9BE1ED: CVarAd
  loc_9BE1F1: ParmAry1St
  loc_9BE1F7: FLdPr Me
  loc_9BE1FA: VCallAd Control_ID_cmdCalHasta
  loc_9BE1FD: CVarAd
  loc_9BE201: ParmAry1St
  loc_9BE207: FLdPr Me
  loc_9BE20A: VCallAd Control_ID_cboCodiOrga
  loc_9BE20D: CVarAd
  loc_9BE211: ParmAry1St
  loc_9BE217: FLdPr Me
  loc_9BE21A: VCallAd Control_ID_CodiPartMsk
  loc_9BE21D: CVarAd
  loc_9BE221: ParmAry1St
  loc_9BE227: FLdPr Me
  loc_9BE22A: VCallAd Control_ID_cmdCodiPart
  loc_9BE22D: CVarAd
  loc_9BE231: ParmAry1St
  loc_9BE237: FLdPr Me
  loc_9BE23A: VCallAd Control_ID_CodiPartLbl
  loc_9BE23D: CVarAd
  loc_9BE241: ParmAry1St
  loc_9BE247: FLdPr Me
  loc_9BE24A: VCallAd Control_ID_chkNotCodiPart
  loc_9BE24D: CVarAd
  loc_9BE251: ParmAry1St
  loc_9BE257: FLdRfVar var_88
  loc_9BE25A: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9BE25F: FLdRfVar var_88
  loc_9BE262: Erase
  loc_9BE263: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'A42038
  'Data Table: 489654
  loc_A41DDC: LitI2_Byte 0
  loc_A41DDE: PopTmpLdAd2 var_8A
  loc_A41DE1: from_stack_2v = mskHasta_UnknownEvent_8(from_stack_1v)
  loc_A41DE6: FLdPr Me
  loc_A41DE9: MemLdStr global_148
  loc_A41DEC: LitStr vbNullString
  loc_A41DEF: NeStr
  loc_A41DF1: BranchF loc_A41DF7
  loc_A41DF4: Branch loc_A4200C
  loc_A41DF7: FLdPr Me
  loc_A41DFA: MemLdI2 bGenerado
  loc_A41DFD: BranchF loc_A41E01
  loc_A41E00: ExitProcHresult
  loc_A41E01: LitVarStr var_9C, "Generando reporte..."
  loc_A41E06: PopAdLdVar
  loc_A41E07: FLdPr Me
  loc_A41E0A: VCallAd Control_ID_statusBar
  loc_A41E0D: FStAdFunc var_B0
  loc_A41E10: FLdPr var_B0
  loc_A41E13: LateIdSt
  loc_A41E18: FFree1Ad var_B0
  loc_A41E1B: LitI4 &HB
  loc_A41E20: CI2I4
  loc_A41E21: FLdPr Me
  loc_A41E24: Me.MousePointer = from_stack_1
  loc_A41E29: LitStr vbNullString
  loc_A41E2C: FLdPr Me
  loc_A41E2F: MemStStrCopy
  loc_A41E33: LitStr vbNullString
  loc_A41E36: FLdPr Me
  loc_A41E39: MemStStrCopy
  loc_A41E3D: LitStr vbNullString
  loc_A41E40: FLdPr Me
  loc_A41E43: MemStStrCopy
  loc_A41E47: LitStr vbNullString
  loc_A41E4A: FLdPr Me
  loc_A41E4D: MemStStrCopy
  loc_A41E51: LitStr vbNullString
  loc_A41E54: FLdPr Me
  loc_A41E57: MemStStrCopy
  loc_A41E5B: LitStr vbNullString
  loc_A41E5E: FLdPr Me
  loc_A41E61: MemStStrCopy
  loc_A41E65: LitStr vbNullString
  loc_A41E68: FLdPr Me
  loc_A41E6B: MemStStrCopy
  loc_A41E6F: LitStr vbNullString
  loc_A41E72: FLdPr Me
  loc_A41E75: MemStStrCopy
  loc_A41E79: LitI2_Byte 1
  loc_A41E7B: FLdRfVar var_88
  loc_A41E7E: FLdPr Me
  loc_A41E81: MemLdI2 global_132
  loc_A41E84: ForI2 var_B4
  loc_A41E8A: LitI2_Byte 0
  loc_A41E8C: FLdI2 var_88
  loc_A41E8F: CI4UI1
  loc_A41E90: FLdPr Me
  loc_A41E93: MemLdStr global_140
  loc_A41E96: Ary1LdPr
  loc_A41E97: MemStI2 global_8
  loc_A41E9A: FLdRfVar var_88
  loc_A41E9D: NextI2 var_B4, loc_A41E8A
  loc_A41EA2: LitI2_Byte 0
  loc_A41EA4: FStI2 var_86
  loc_A41EA7: FLdRfVar var_8A
  loc_A41EAA: FLdPr Me
  loc_A41EAD: VCallAd Control_ID_cboCodiOrga
  loc_A41EB0: FStAdFunc var_B0
  loc_A41EB3: FLdPr var_B0
  loc_A41EB6:  = Me.ListIndex
  loc_A41EBB: FLdI2 var_8A
  loc_A41EBE: FStI2 var_B6
  loc_A41EC1: FFree1Ad var_B0
  loc_A41EC4: FLdI2 var_B6
  loc_A41EC7: LitI2_Byte 0
  loc_A41EC9: EqI2
  loc_A41ECA: BranchF loc_A41F5E
  loc_A41ECD: LitI2_Byte 1
  loc_A41ECF: FLdRfVar var_88
  loc_A41ED2: FLdPr Me
  loc_A41ED5: MemLdI2 global_132
  loc_A41ED8: ForI2 var_BA
  loc_A41EDE: LitStr " HAVING CodiOrga = '"
  loc_A41EE1: FLdRfVar var_C0
  loc_A41EE4: FLdI2 var_88
  loc_A41EE7: FLdPr Me
  loc_A41EEA: VCallAd Control_ID_cboCodiOrga
  loc_A41EED: FStAdFunc var_B0
  loc_A41EF0: FLdPr var_B0
  loc_A41EF3:  = Me.ItemData
  loc_A41EF8: ILdRf var_C0
  loc_A41EFB: CStrI4
  loc_A41EFD: FStStrNoPop var_C4
  loc_A41F00: ConcatStr
  loc_A41F01: FStStrNoPop var_C8
  loc_A41F04: LitStr "'"
  loc_A41F07: ConcatStr
  loc_A41F08: FStStrNoPop var_CC
  loc_A41F0B: FLdPr Me
  loc_A41F0E: MemStStrCopy
  loc_A41F12: FFreeStr var_C4 = "": var_C8 = ""
  loc_A41F1B: FFree1Ad var_B0
  loc_A41F1E: Call Proc_237_27_AADAAC()
  loc_A41F23: FLdRfVar var_C0
  loc_A41F26: FLdPr Me
  loc_A41F29: MemLdRfVar from_stack_1.global_88
  loc_A41F2C: NewIfNullPr clsimputacion
  loc_A41F2F: from_stack_1 = clsimputacion.RecordCount
  loc_A41F34: ILdRf var_C0
  loc_A41F37: LitI4 0
  loc_A41F3C: GtI4
  loc_A41F3D: BranchF loc_A41F53
  loc_A41F40: LitI2_Byte &HFF
  loc_A41F42: FStI2 var_86
  loc_A41F45: FLdRfVar var_88
  loc_A41F48: FLdPr Me
  loc_A41F4B: MemLdRfVar from_stack_1.global_140
  loc_A41F4E: Call Proc_237_28_B0C9E4()
  loc_A41F53: FLdRfVar var_88
  loc_A41F56: NextI2 var_BA, loc_A41EDE
  loc_A41F5B: Branch loc_A41FED
  loc_A41F5E: LitStr " HAVING CodiOrga = '"
  loc_A41F61: FLdRfVar var_C0
  loc_A41F64: FLdRfVar var_8A
  loc_A41F67: FLdPr Me
  loc_A41F6A: VCallAd Control_ID_cboCodiOrga
  loc_A41F6D: FStAdFunc var_B0
  loc_A41F70: FLdPr var_B0
  loc_A41F73:  = Me.ListIndex
  loc_A41F78: FLdI2 var_8A
  loc_A41F7B: FLdPr Me
  loc_A41F7E: VCallAd Control_ID_cboCodiOrga
  loc_A41F81: FStAdFunc var_D0
  loc_A41F84: FLdPr var_D0
  loc_A41F87:  = Me.ItemData
  loc_A41F8C: ILdRf var_C0
  loc_A41F8F: CStrI4
  loc_A41F91: FStStrNoPop var_C4
  loc_A41F94: ConcatStr
  loc_A41F95: FStStrNoPop var_C8
  loc_A41F98: LitStr "'"
  loc_A41F9B: ConcatStr
  loc_A41F9C: FStStrNoPop var_CC
  loc_A41F9F: FLdPr Me
  loc_A41FA2: MemStStrCopy
  loc_A41FA6: FFreeStr var_C4 = "": var_C8 = ""
  loc_A41FAF: FFreeAd var_B0 = ""
  loc_A41FB6: Call Proc_237_27_AADAAC()
  loc_A41FBB: FLdRfVar var_C0
  loc_A41FBE: FLdPr Me
  loc_A41FC1: MemLdRfVar from_stack_1.global_88
  loc_A41FC4: NewIfNullPr clsimputacion
  loc_A41FC7: from_stack_1 = clsimputacion.RecordCount
  loc_A41FCC: ILdRf var_C0
  loc_A41FCF: LitI4 0
  loc_A41FD4: GtI4
  loc_A41FD5: BranchF loc_A41FED
  loc_A41FD8: LitI2_Byte &HFF
  loc_A41FDA: FStI2 var_86
  loc_A41FDD: LitI2_Byte 1
  loc_A41FDF: PopTmpLdAd2 var_8A
  loc_A41FE2: FLdPr Me
  loc_A41FE5: MemLdRfVar from_stack_1.global_140
  loc_A41FE8: Call Proc_237_28_B0C9E4()
  loc_A41FED: FLdI2 var_86
  loc_A41FF0: NotI4
  loc_A41FF1: BranchF loc_A42004
  loc_A41FF4: LitI4 0
  loc_A41FF9: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_A41FFC: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A42001: Branch loc_A4200C
  loc_A42004: LitI2_Byte &HFF
  loc_A42006: FLdPr Me
  loc_A42009: MemStI2 bGenerado
  loc_A4200C: LitI4 0
  loc_A42011: CI2I4
  loc_A42012: FLdPr Me
  loc_A42015: Me.MousePointer = from_stack_1
  loc_A4201A: LitVarStr var_9C, vbNullString
  loc_A4201F: PopAdLdVar
  loc_A42020: FLdPr Me
  loc_A42023: VCallAd Control_ID_statusBar
  loc_A42026: FStAdFunc var_B0
  loc_A42029: FLdPr var_B0
  loc_A4202C: LateIdSt
  loc_A42031: FFree1Ad var_B0
  loc_A42034: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'AAA428
  'Data Table: 489654
  loc_AA9EF0: FLdRfVar var_8C
  loc_AA9EF3: LitI2_Byte 0
  loc_AA9EF5: LitI2_Byte &HFF
  loc_AA9EF7: ImpAdLdI4 MemVar_C3D83C
  loc_AA9EFA: FLdPr Me
  loc_AA9EFD: MemLdRfVar from_stack_1.global_92
  loc_AA9F00: NewIfNullPr IFileSystem3
  loc_AA9F03: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_AA9F08: ILdRf var_8C
  loc_AA9F0B: FLdPr Me
  loc_AA9F0E: MemStVarAd
  loc_AA9F12: FFree1Ad var_8C
  loc_AA9F15: Call Proc_237_31_A949D0()
  loc_AA9F1A: LitI2_Byte 1
  loc_AA9F1C: FLdRfVar var_86
  loc_AA9F1F: FLdPr Me
  loc_AA9F22: MemLdI2 global_132
  loc_AA9F25: ForI2 var_90
  loc_AA9F2B: FLdI2 var_86
  loc_AA9F2E: CI4UI1
  loc_AA9F2F: FLdPr Me
  loc_AA9F32: MemLdStr global_140
  loc_AA9F35: Ary1LdPr
  loc_AA9F36: MemLdI2 global_8
  loc_AA9F39: BranchF loc_AAA252
  loc_AA9F3C: LitVarStr var_A0, "    <tr class=""Encabezado"">"
  loc_AA9F41: PopAdLdVar
  loc_AA9F42: FLdPr Me
  loc_AA9F45: MemLdRfVar from_stack_1.htmFile
  loc_AA9F48: LdPrVar
  loc_AA9F4A: LateMemCall
  loc_AA9F50: FLdRfVar var_B2
  loc_AA9F53: FLdPr Me
  loc_AA9F56: VCallAd Control_ID_cboCodiOrga
  loc_AA9F59: FStAdFunc var_8C
  loc_AA9F5C: FLdPr var_8C
  loc_AA9F5F:  = Me.ListIndex
  loc_AA9F64: FLdI2 var_B2
  loc_AA9F67: LitI2_Byte 0
  loc_AA9F69: EqI2
  loc_AA9F6A: FFree1Ad var_8C
  loc_AA9F6D: BranchF loc_AA9FA4
  loc_AA9F70: LitStr "      <td colspan=""9"" align=""left"">Organigrama: "
  loc_AA9F73: FLdI2 var_86
  loc_AA9F76: CI4UI1
  loc_AA9F77: FLdPr Me
  loc_AA9F7A: MemLdStr global_140
  loc_AA9F7D: Ary1LdPr
  loc_AA9F7E: MemLdStr global_4
  loc_AA9F81: ConcatStr
  loc_AA9F82: FStStrNoPop var_B8
  loc_AA9F85: LitStr "</td>"
  loc_AA9F88: ConcatStr
  loc_AA9F89: CVarStr var_C8
  loc_AA9F8C: PopAdLdVar
  loc_AA9F8D: FLdPr Me
  loc_AA9F90: MemLdRfVar from_stack_1.htmFile
  loc_AA9F93: LdPrVar
  loc_AA9F95: LateMemCall
  loc_AA9F9B: FFree1Str var_B8
  loc_AA9F9E: FFree1Var var_C8 = ""
  loc_AA9FA1: Branch loc_AA9FE9
  loc_AA9FA4: LitStr "      <td colspan=""9"" align=""left"">Organigrama: "
  loc_AA9FA7: FLdRfVar var_B2
  loc_AA9FAA: FLdPr Me
  loc_AA9FAD: VCallAd Control_ID_cboCodiOrga
  loc_AA9FB0: FStAdFunc var_8C
  loc_AA9FB3: FLdPr var_8C
  loc_AA9FB6:  = Me.ListIndex
  loc_AA9FBB: FLdI2 var_B2
  loc_AA9FBE: CI4UI1
  loc_AA9FBF: FLdPr Me
  loc_AA9FC2: MemLdStr global_136
  loc_AA9FC5: Ary1LdI4
  loc_AA9FC6: ConcatStr
  loc_AA9FC7: FStStrNoPop var_B8
  loc_AA9FCA: LitStr "</td>"
  loc_AA9FCD: ConcatStr
  loc_AA9FCE: CVarStr var_C8
  loc_AA9FD1: PopAdLdVar
  loc_AA9FD2: FLdPr Me
  loc_AA9FD5: MemLdRfVar from_stack_1.htmFile
  loc_AA9FD8: LdPrVar
  loc_AA9FDA: LateMemCall
  loc_AA9FE0: FFree1Str var_B8
  loc_AA9FE3: FFree1Ad var_8C
  loc_AA9FE6: FFree1Var var_C8 = ""
  loc_AA9FE9: LitVarStr var_A0, "    </tr>"
  loc_AA9FEE: PopAdLdVar
  loc_AA9FEF: FLdPr Me
  loc_AA9FF2: MemLdRfVar from_stack_1.htmFile
  loc_AA9FF5: LdPrVar
  loc_AA9FF7: LateMemCall
  loc_AA9FFD: FLdI2 var_86
  loc_AAA000: Call Proc_237_30_A3C400()
  loc_AAA005: LitVarStr var_A0, "    <tr class=""Totales"">"
  loc_AAA00A: PopAdLdVar
  loc_AAA00B: FLdPr Me
  loc_AAA00E: MemLdRfVar from_stack_1.htmFile
  loc_AAA011: LdPrVar
  loc_AAA013: LateMemCall
  loc_AAA019: FLdRfVar var_B2
  loc_AAA01C: FLdPr Me
  loc_AAA01F: VCallAd Control_ID_cboCodiOrga
  loc_AAA022: FStAdFunc var_8C
  loc_AAA025: FLdPr var_8C
  loc_AAA028:  = Me.ListIndex
  loc_AAA02D: FLdI2 var_B2
  loc_AAA030: LitI2_Byte 0
  loc_AAA032: EqI2
  loc_AAA033: FFree1Ad var_8C
  loc_AAA036: BranchF loc_AAA06D
  loc_AAA039: LitStr "       <td align=""right"">SubTotal "
  loc_AAA03C: FLdI2 var_86
  loc_AAA03F: CI4UI1
  loc_AAA040: FLdPr Me
  loc_AAA043: MemLdStr global_140
  loc_AAA046: Ary1LdPr
  loc_AAA047: MemLdStr global_4
  loc_AAA04A: ConcatStr
  loc_AAA04B: FStStrNoPop var_B8
  loc_AAA04E: LitStr "</td>"
  loc_AAA051: ConcatStr
  loc_AAA052: CVarStr var_C8
  loc_AAA055: PopAdLdVar
  loc_AAA056: FLdPr Me
  loc_AAA059: MemLdRfVar from_stack_1.htmFile
  loc_AAA05C: LdPrVar
  loc_AAA05E: LateMemCall
  loc_AAA064: FFree1Str var_B8
  loc_AAA067: FFree1Var var_C8 = ""
  loc_AAA06A: Branch loc_AAA0B2
  loc_AAA06D: LitStr "       <td align=""right"">SubTotal "
  loc_AAA070: FLdRfVar var_B2
  loc_AAA073: FLdPr Me
  loc_AAA076: VCallAd Control_ID_cboCodiOrga
  loc_AAA079: FStAdFunc var_8C
  loc_AAA07C: FLdPr var_8C
  loc_AAA07F:  = Me.ListIndex
  loc_AAA084: FLdI2 var_B2
  loc_AAA087: CI4UI1
  loc_AAA088: FLdPr Me
  loc_AAA08B: MemLdStr global_136
  loc_AAA08E: Ary1LdI4
  loc_AAA08F: ConcatStr
  loc_AAA090: FStStrNoPop var_B8
  loc_AAA093: LitStr "</td>"
  loc_AAA096: ConcatStr
  loc_AAA097: CVarStr var_C8
  loc_AAA09A: PopAdLdVar
  loc_AAA09B: FLdPr Me
  loc_AAA09E: MemLdRfVar from_stack_1.htmFile
  loc_AAA0A1: LdPrVar
  loc_AAA0A3: LateMemCall
  loc_AAA0A9: FFree1Str var_B8
  loc_AAA0AC: FFree1Ad var_8C
  loc_AAA0AF: FFree1Var var_C8 = ""
  loc_AAA0B2: FLdI2 var_86
  loc_AAA0B5: CI4UI1
  loc_AAA0B6: FLdPr Me
  loc_AAA0B9: MemLdStr global_140
  loc_AAA0BC: AryLock
  loc_AAA0BF: Ary1LdRf
  loc_AAA0C0: FStR4 var_D0
  loc_AAA0C3: LitI4 0
  loc_AAA0C8: LitI4 0
  loc_AAA0CD: LitI2_Byte 0
  loc_AAA0CF: LitStr "right"
  loc_AAA0D2: FMemLdR4 var_D0(12)
  loc_AAA0D7: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AAA0DC: CVarStr var_C8
  loc_AAA0DF: PopAdLdVar
  loc_AAA0E0: FLdPr Me
  loc_AAA0E3: MemLdRfVar from_stack_1.htmFile
  loc_AAA0E6: LdPrVar
  loc_AAA0E8: LateMemCall
  loc_AAA0EE: FFree1Var var_C8 = ""
  loc_AAA0F1: LitI4 0
  loc_AAA0F6: LitI4 0
  loc_AAA0FB: LitI2_Byte 0
  loc_AAA0FD: LitStr "right"
  loc_AAA100: FMemLdR4 var_D0(16)
  loc_AAA105: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AAA10A: CVarStr var_C8
  loc_AAA10D: PopAdLdVar
  loc_AAA10E: FLdPr Me
  loc_AAA111: MemLdRfVar from_stack_1.htmFile
  loc_AAA114: LdPrVar
  loc_AAA116: LateMemCall
  loc_AAA11C: FFree1Var var_C8 = ""
  loc_AAA11F: LitI4 0
  loc_AAA124: LitI4 0
  loc_AAA129: LitI2_Byte 0
  loc_AAA12B: LitStr "right"
  loc_AAA12E: FMemLdR4 var_D0(20)
  loc_AAA133: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AAA138: CVarStr var_C8
  loc_AAA13B: PopAdLdVar
  loc_AAA13C: FLdPr Me
  loc_AAA13F: MemLdRfVar from_stack_1.htmFile
  loc_AAA142: LdPrVar
  loc_AAA144: LateMemCall
  loc_AAA14A: FFree1Var var_C8 = ""
  loc_AAA14D: LitI4 0
  loc_AAA152: LitI4 0
  loc_AAA157: LitI2_Byte 0
  loc_AAA159: LitStr "right"
  loc_AAA15C: FMemLdR4 var_D0(24)
  loc_AAA161: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AAA166: CVarStr var_C8
  loc_AAA169: PopAdLdVar
  loc_AAA16A: FLdPr Me
  loc_AAA16D: MemLdRfVar from_stack_1.htmFile
  loc_AAA170: LdPrVar
  loc_AAA172: LateMemCall
  loc_AAA178: FFree1Var var_C8 = ""
  loc_AAA17B: LitI4 0
  loc_AAA180: LitI4 0
  loc_AAA185: LitI2_Byte 0
  loc_AAA187: LitStr "right"
  loc_AAA18A: FMemLdR4 var_D0(28)
  loc_AAA18F: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AAA194: CVarStr var_C8
  loc_AAA197: PopAdLdVar
  loc_AAA198: FLdPr Me
  loc_AAA19B: MemLdRfVar from_stack_1.htmFile
  loc_AAA19E: LdPrVar
  loc_AAA1A0: LateMemCall
  loc_AAA1A6: FFree1Var var_C8 = ""
  loc_AAA1A9: LitI4 0
  loc_AAA1AE: LitI4 0
  loc_AAA1B3: LitI2_Byte 0
  loc_AAA1B5: LitStr "right"
  loc_AAA1B8: FMemLdR4 var_D0(32)
  loc_AAA1BD: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AAA1C2: CVarStr var_C8
  loc_AAA1C5: PopAdLdVar
  loc_AAA1C6: FLdPr Me
  loc_AAA1C9: MemLdRfVar from_stack_1.htmFile
  loc_AAA1CC: LdPrVar
  loc_AAA1CE: LateMemCall
  loc_AAA1D4: FFree1Var var_C8 = ""
  loc_AAA1D7: LitI4 0
  loc_AAA1DC: LitI4 0
  loc_AAA1E1: LitI2_Byte 0
  loc_AAA1E3: LitStr "right"
  loc_AAA1E6: FMemLdR4 var_D0(36)
  loc_AAA1EB: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AAA1F0: CVarStr var_C8
  loc_AAA1F3: PopAdLdVar
  loc_AAA1F4: FLdPr Me
  loc_AAA1F7: MemLdRfVar from_stack_1.htmFile
  loc_AAA1FA: LdPrVar
  loc_AAA1FC: LateMemCall
  loc_AAA202: FFree1Var var_C8 = ""
  loc_AAA205: LitI4 0
  loc_AAA20A: LitI4 0
  loc_AAA20F: LitI2_Byte 0
  loc_AAA211: LitStr "right"
  loc_AAA214: FMemLdR4 var_D0(40)
  loc_AAA219: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AAA21E: CVarStr var_C8
  loc_AAA221: PopAdLdVar
  loc_AAA222: FLdPr Me
  loc_AAA225: MemLdRfVar from_stack_1.htmFile
  loc_AAA228: LdPrVar
  loc_AAA22A: LateMemCall
  loc_AAA230: FFree1Var var_C8 = ""
  loc_AAA233: LitI4 0
  loc_AAA238: FStR4 var_D0
  loc_AAA23B: AryUnlock
  loc_AAA23E: LitVarStr var_A0, "     </tr>"
  loc_AAA243: PopAdLdVar
  loc_AAA244: FLdPr Me
  loc_AAA247: MemLdRfVar from_stack_1.htmFile
  loc_AAA24A: LdPrVar
  loc_AAA24C: LateMemCall
  loc_AAA252: FLdRfVar var_86
  loc_AAA255: NextI2 var_90, loc_AA9F2B
  loc_AAA25A: LitVarStr var_A0, "    <tr class=""Totales"">"
  loc_AAA25F: PopAdLdVar
  loc_AAA260: FLdPr Me
  loc_AAA263: MemLdRfVar from_stack_1.htmFile
  loc_AAA266: LdPrVar
  loc_AAA268: LateMemCall
  loc_AAA26E: LitVarStr var_A0, "       <td align=""right"">Total</td>"
  loc_AAA273: PopAdLdVar
  loc_AAA274: FLdPr Me
  loc_AAA277: MemLdRfVar from_stack_1.htmFile
  loc_AAA27A: LdPrVar
  loc_AAA27C: LateMemCall
  loc_AAA282: LitI4 0
  loc_AAA287: LitI4 0
  loc_AAA28C: LitI2_Byte 0
  loc_AAA28E: LitStr "right"
  loc_AAA291: FLdPr Me
  loc_AAA294: MemLdStr global_96
  loc_AAA297: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AAA29C: CVarStr var_C8
  loc_AAA29F: PopAdLdVar
  loc_AAA2A0: FLdPr Me
  loc_AAA2A3: MemLdRfVar from_stack_1.htmFile
  loc_AAA2A6: LdPrVar
  loc_AAA2A8: LateMemCall
  loc_AAA2AE: FFree1Var var_C8 = ""
  loc_AAA2B1: LitI4 0
  loc_AAA2B6: LitI4 0
  loc_AAA2BB: LitI2_Byte 0
  loc_AAA2BD: LitStr "right"
  loc_AAA2C0: FLdPr Me
  loc_AAA2C3: MemLdStr global_100
  loc_AAA2C6: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AAA2CB: CVarStr var_C8
  loc_AAA2CE: PopAdLdVar
  loc_AAA2CF: FLdPr Me
  loc_AAA2D2: MemLdRfVar from_stack_1.htmFile
  loc_AAA2D5: LdPrVar
  loc_AAA2D7: LateMemCall
  loc_AAA2DD: FFree1Var var_C8 = ""
  loc_AAA2E0: LitI4 0
  loc_AAA2E5: LitI4 0
  loc_AAA2EA: LitI2_Byte 0
  loc_AAA2EC: LitStr "right"
  loc_AAA2EF: FLdPr Me
  loc_AAA2F2: MemLdStr global_104
  loc_AAA2F5: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AAA2FA: CVarStr var_C8
  loc_AAA2FD: PopAdLdVar
  loc_AAA2FE: FLdPr Me
  loc_AAA301: MemLdRfVar from_stack_1.htmFile
  loc_AAA304: LdPrVar
  loc_AAA306: LateMemCall
  loc_AAA30C: FFree1Var var_C8 = ""
  loc_AAA30F: LitI4 0
  loc_AAA314: LitI4 0
  loc_AAA319: LitI2_Byte 0
  loc_AAA31B: LitStr "right"
  loc_AAA31E: FLdPr Me
  loc_AAA321: MemLdStr global_108
  loc_AAA324: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AAA329: CVarStr var_C8
  loc_AAA32C: PopAdLdVar
  loc_AAA32D: FLdPr Me
  loc_AAA330: MemLdRfVar from_stack_1.htmFile
  loc_AAA333: LdPrVar
  loc_AAA335: LateMemCall
  loc_AAA33B: FFree1Var var_C8 = ""
  loc_AAA33E: LitI4 0
  loc_AAA343: LitI4 0
  loc_AAA348: LitI2_Byte 0
  loc_AAA34A: LitStr "right"
  loc_AAA34D: FLdPr Me
  loc_AAA350: MemLdStr global_112
  loc_AAA353: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AAA358: CVarStr var_C8
  loc_AAA35B: PopAdLdVar
  loc_AAA35C: FLdPr Me
  loc_AAA35F: MemLdRfVar from_stack_1.htmFile
  loc_AAA362: LdPrVar
  loc_AAA364: LateMemCall
  loc_AAA36A: FFree1Var var_C8 = ""
  loc_AAA36D: LitI4 0
  loc_AAA372: LitI4 0
  loc_AAA377: LitI2_Byte 0
  loc_AAA379: LitStr "right"
  loc_AAA37C: FLdPr Me
  loc_AAA37F: MemLdStr global_116
  loc_AAA382: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AAA387: CVarStr var_C8
  loc_AAA38A: PopAdLdVar
  loc_AAA38B: FLdPr Me
  loc_AAA38E: MemLdRfVar from_stack_1.htmFile
  loc_AAA391: LdPrVar
  loc_AAA393: LateMemCall
  loc_AAA399: FFree1Var var_C8 = ""
  loc_AAA39C: LitI4 0
  loc_AAA3A1: LitI4 0
  loc_AAA3A6: LitI2_Byte 0
  loc_AAA3A8: LitStr "right"
  loc_AAA3AB: FLdPr Me
  loc_AAA3AE: MemLdStr global_120
  loc_AAA3B1: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AAA3B6: CVarStr var_C8
  loc_AAA3B9: PopAdLdVar
  loc_AAA3BA: FLdPr Me
  loc_AAA3BD: MemLdRfVar from_stack_1.htmFile
  loc_AAA3C0: LdPrVar
  loc_AAA3C2: LateMemCall
  loc_AAA3C8: FFree1Var var_C8 = ""
  loc_AAA3CB: LitI4 0
  loc_AAA3D0: LitI4 0
  loc_AAA3D5: LitI2_Byte 0
  loc_AAA3D7: LitStr "right"
  loc_AAA3DA: FLdPr Me
  loc_AAA3DD: MemLdStr global_124
  loc_AAA3E0: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AAA3E5: CVarStr var_C8
  loc_AAA3E8: PopAdLdVar
  loc_AAA3E9: FLdPr Me
  loc_AAA3EC: MemLdRfVar from_stack_1.htmFile
  loc_AAA3EF: LdPrVar
  loc_AAA3F1: LateMemCall
  loc_AAA3F7: FFree1Var var_C8 = ""
  loc_AAA3FA: LitVarStr var_A0, "    </tr>"
  loc_AAA3FF: PopAdLdVar
  loc_AAA400: FLdPr Me
  loc_AAA403: MemLdRfVar from_stack_1.htmFile
  loc_AAA406: LdPrVar
  loc_AAA408: LateMemCall
  loc_AAA40E: Call Proc_237_32_982070()
  loc_AAA413: FLdPr Me
  loc_AAA416: MemLdRfVar from_stack_1.htmFile
  loc_AAA419: LdPrVar
  loc_AAA41B: LateMemCall
  loc_AAA421: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_AAA426: ExitProcHresult
End Sub

Private Function Proc_237_27_AADAAC() 'AADAAC
  'Data Table: 489654
  loc_AAD5D8: FLdRfVar var_92
  loc_AAD5DB: FLdPr Me
  loc_AAD5DE: VCallAd Control_ID_chkNotCodiPart
  loc_AAD5E1: FStAdFunc var_90
  loc_AAD5E4: FLdPr var_90
  loc_AAD5E7:  = Me.Value
  loc_AAD5EC: LitVarStr var_D4, "NOT"
  loc_AAD5F1: FStVarCopyObj var_E4
  loc_AAD5F4: FLdRfVar var_E4
  loc_AAD5F7: LitVarStr var_B4, vbNullString
  loc_AAD5FC: FStVarCopyObj var_C4
  loc_AAD5FF: FLdRfVar var_C4
  loc_AAD602: FLdI2 var_92
  loc_AAD605: CI4UI1
  loc_AAD606: LitI4 0
  loc_AAD60B: EqI4
  loc_AAD60C: CVarBoolI2 var_A4
  loc_AAD610: FLdRfVar var_F4
  loc_AAD613: ImpAdCallFPR4  = IIf(, , )
  loc_AAD618: FLdRfVar var_F4
  loc_AAD61B: CStrVarTmp
  loc_AAD61C: FStStr var_88
  loc_AAD61F: FFree1Ad var_90
  loc_AAD622: FFreeVar var_A4 = "": var_C4 = "": var_E4 = ""
  loc_AAD62D: FLdPr Me
  loc_AAD630: VCallAd Control_ID_CodiPartMsk
  loc_AAD633: FStAdFunc var_90
  loc_AAD636: FLdPr var_90
  loc_AAD639: LateIdLdVar var_C4 DispID_22 0
  loc_AAD640: CStrVarTmp
  loc_AAD641: FStStr var_8C
  loc_AAD644: FFree1Ad var_90
  loc_AAD647: FFree1Var var_C4 = ""
  loc_AAD64A: FLdPr Me
  loc_AAD64D: MemLdRfVar from_stack_1.global_88
  loc_AAD650: NewIfNullAd
  loc_AAD653: FStAd var_F8 
  loc_AAD657: LitStr "DROP TEMPORARY TABLE IF EXISTS tmovi;"
  loc_AAD65A: LitStr " CREATE TEMPORARY TABLE movi` ("
  loc_AAD65D: ConcatStr
  loc_AAD65E: FStStrNoPop var_FC
  loc_AAD661: LitStr " eriInfo` year(4) NOT NULL default '0000',"
  loc_AAD664: ConcatStr
  loc_AAD665: FStStrNoPop var_100
  loc_AAD668: LitStr " odiOrga` varchar(7) NOT NULL default '',"
  loc_AAD66B: ConcatStr
  loc_AAD66C: FStStrNoPop var_104
  loc_AAD66F: LitStr " odiPart` char(8) NOT NULL default '',"
  loc_AAD672: ConcatStr
  loc_AAD673: FStStrNoPop var_108
  loc_AAD676: LitStr " utoAuto` decimal(14,2) NOT NULL default '0.00',"
  loc_AAD679: ConcatStr
  loc_AAD67A: FStStrNoPop var_10C
  loc_AAD67D: LitStr " umeAuto` decimal(14,2) NOT NULL default '0.00',"
  loc_AAD680: ConcatStr
  loc_AAD681: FStStrNoPop var_110
  loc_AAD684: LitStr " ismAuto` decimal(14,2) NOT NULL default '0.00',"
  loc_AAD687: ConcatStr
  loc_AAD688: FStStrNoPop var_114
  loc_AAD68B: LitStr " revImpu` decimal(14,2) NOT NULL default '0.00',"
  loc_AAD68E: ConcatStr
  loc_AAD68F: FStStrNoPop var_118
  loc_AAD692: LitStr " revFutu` decimal(14,2) NOT NULL default '0.00'"
  loc_AAD695: ConcatStr
  loc_AAD696: FStStrNoPop var_11C
  loc_AAD699: LitStr ") ;"
  loc_AAD69C: ConcatStr
  loc_AAD69D: FStStrNoPop var_120
  loc_AAD6A0: FLdPr var_F8
  loc_AAD6A3: Call clsimputacion.RedefineRS(from_stack_1v)
  loc_AAD6A8: FFreeStr var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = ""
  loc_AAD6BF: FLdPr Me
  loc_AAD6C2: VCallAd Control_ID_mskHasta
  loc_AAD6C5: FStAdFunc var_128
  loc_AAD6C8: FLdPr var_128
  loc_AAD6CB: LateIdLdVar var_C4 DispID_15 0
  loc_AAD6D2: PopAd
  loc_AAD6D4: LitStr "INSERT INTO tmovi (PeriInfo,CodiOrga,CodiPart,AutoAuto,AumeAuto,DismAuto)"
  loc_AAD6D7: LitStr " SELECT PeriInfo, CodiOrga, CodiPart"
  loc_AAD6DA: ConcatStr
  loc_AAD6DB: FStStrNoPop var_FC
  loc_AAD6DE: LitStr ", Sum(AutoAuto), Sum(AumeAuto), Sum(DismAuto)"
  loc_AAD6E1: ConcatStr
  loc_AAD6E2: FStStrNoPop var_100
  loc_AAD6E5: LitStr " FROM autorizado"
  loc_AAD6E8: ConcatStr
  loc_AAD6E9: FStStrNoPop var_104
  loc_AAD6EC: LitStr " WHERE PeriInfo = "
  loc_AAD6EF: ConcatStr
  loc_AAD6F0: FStStrNoPop var_10C
  loc_AAD6F3: FLdRfVar var_108
  loc_AAD6F6: FLdPr Me
  loc_AAD6F9: VCallAd Control_ID_cboPeriodo
  loc_AAD6FC: FStAdFunc var_90
  loc_AAD6FF: FLdPr var_90
  loc_AAD702:  = Me.Text
  loc_AAD707: ILdRf var_108
  loc_AAD70A: ConcatStr
  loc_AAD70B: FStStrNoPop var_110
  loc_AAD70E: LitStr " AND CodiPart "
  loc_AAD711: ConcatStr
  loc_AAD712: FStStrNoPop var_114
  loc_AAD715: ILdRf var_88
  loc_AAD718: ConcatStr
  loc_AAD719: FStStrNoPop var_118
  loc_AAD71C: LitStr " Like '"
  loc_AAD71F: ConcatStr
  loc_AAD720: FStStrNoPop var_11C
  loc_AAD723: ILdRf var_8C
  loc_AAD726: ConcatStr
  loc_AAD727: FStStrNoPop var_120
  loc_AAD72A: LitStr Chr(37) & "'"
  loc_AAD72D: ConcatStr
  loc_AAD72E: FStStrNoPop var_124
  loc_AAD731: LitStr " AND FechAuto <= "
  loc_AAD734: ConcatStr
  loc_AAD735: FStStrNoPop var_12C
  loc_AAD738: LitI4 1
  loc_AAD73D: LitI4 1
  loc_AAD742: LitVarStr var_A4, "'yyyy-mm-dd'"
  loc_AAD747: FStVarCopyObj var_F4
  loc_AAD74A: FLdRfVar var_F4
  loc_AAD74D: FLdRfVar var_C4
  loc_AAD750: CStrVarTmp
  loc_AAD751: CVarStr var_E4
  loc_AAD754: ImpAdCallI2 Format$(, )
  loc_AAD759: FStStrNoPop var_130
  loc_AAD75C: ConcatStr
  loc_AAD75D: FStStrNoPop var_134
  loc_AAD760: LitStr " GROUP BY PeriInfo, CodiOrga, CodiPart"
  loc_AAD763: ConcatStr
  loc_AAD764: FStStrNoPop var_138
  loc_AAD767: FLdPr Me
  loc_AAD76A: MemLdStr global_144
  loc_AAD76D: ConcatStr
  loc_AAD76E: FStStrNoPop var_13C
  loc_AAD771: FLdPr var_F8
  loc_AAD774: Call clsimputacion.RedefineRS(from_stack_1v)
  loc_AAD779: FFreeStr var_FC = "": var_100 = "": var_104 = "": var_10C = "": var_108 = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = ""
  loc_AAD79C: FFreeAd var_90 = ""
  loc_AAD7A3: FFreeVar var_C4 = "": var_E4 = ""
  loc_AAD7AC: LitI4 0
  loc_AAD7B1: LitI4 -1
  loc_AAD7B6: LitI4 1
  loc_AAD7BB: LitStr "CredOrga"
  loc_AAD7BE: LitStr "CodiOrga"
  loc_AAD7C1: FLdPr Me
  loc_AAD7C4: MemLdStr global_144
  loc_AAD7C7: ImpAdCallI2 Replace(, , , , , )
  loc_AAD7CC: FStStrNoPop var_FC
  loc_AAD7CF: FLdPr Me
  loc_AAD7D2: MemStStrCopy
  loc_AAD7D6: FFree1Str var_FC
  loc_AAD7D9: FLdPr Me
  loc_AAD7DC: VCallAd Control_ID_mskHasta
  loc_AAD7DF: FStAdFunc var_128
  loc_AAD7E2: FLdPr var_128
  loc_AAD7E5: LateIdLdVar var_C4 DispID_15 0
  loc_AAD7EC: PopAd
  loc_AAD7EE: LitStr "INSERT INTO tmovi (PeriInfo,CodiOrga,CodiPart,PrevImpu)"
  loc_AAD7F1: LitStr " SELECT i.PeriInfo, CredOrga, CredPart"
  loc_AAD7F4: ConcatStr
  loc_AAD7F5: FStStrNoPop var_FC
  loc_AAD7F8: LitStr ", Sum(PrevImpu)"
  loc_AAD7FB: ConcatStr
  loc_AAD7FC: FStStrNoPop var_100
  loc_AAD7FF: LitStr " FROM imputacion i"
  loc_AAD802: ConcatStr
  loc_AAD803: FStStrNoPop var_104
  loc_AAD806: LitStr " INNER JOIN infogov.organigrama o ON o.PeriInfo = i.PeriInfo AND o.CodiOrga = i.CodiOrga"
  loc_AAD809: ConcatStr
  loc_AAD80A: FStStrNoPop var_108
  loc_AAD80D: LitStr " INNER JOIN partida p ON p.PeriInfo = i.PeriInfo AND p.CodiPart = i.CodiPart"
  loc_AAD810: ConcatStr
  loc_AAD811: FStStrNoPop var_10C
  loc_AAD814: LitStr " WHERE i.PeriInfo = "
  loc_AAD817: ConcatStr
  loc_AAD818: FStStrNoPop var_114
  loc_AAD81B: FLdRfVar var_110
  loc_AAD81E: FLdPr Me
  loc_AAD821: VCallAd Control_ID_cboPeriodo
  loc_AAD824: FStAdFunc var_90
  loc_AAD827: FLdPr var_90
  loc_AAD82A:  = Me.Text
  loc_AAD82F: ILdRf var_110
  loc_AAD832: ConcatStr
  loc_AAD833: FStStrNoPop var_118
  loc_AAD836: LitStr " AND PrevImpu != 0"
  loc_AAD839: ConcatStr
  loc_AAD83A: FStStrNoPop var_11C
  loc_AAD83D: LitStr " AND ( CredPart "
  loc_AAD840: ConcatStr
  loc_AAD841: FStStrNoPop var_120
  loc_AAD844: ILdRf var_88
  loc_AAD847: ConcatStr
  loc_AAD848: FStStrNoPop var_124
  loc_AAD84B: LitStr " Like '"
  loc_AAD84E: ConcatStr
  loc_AAD84F: FStStrNoPop var_12C
  loc_AAD852: ILdRf var_8C
  loc_AAD855: ConcatStr
  loc_AAD856: FStStrNoPop var_130
  loc_AAD859: LitStr Chr(37) & "'"
  loc_AAD85C: ConcatStr
  loc_AAD85D: FStStrNoPop var_134
  loc_AAD860: LitStr " OR i.CodiPart "
  loc_AAD863: ConcatStr
  loc_AAD864: FStStrNoPop var_138
  loc_AAD867: ILdRf var_88
  loc_AAD86A: ConcatStr
  loc_AAD86B: FStStrNoPop var_13C
  loc_AAD86E: LitStr " Like '"
  loc_AAD871: ConcatStr
  loc_AAD872: FStStrNoPop var_140
  loc_AAD875: ILdRf var_8C
  loc_AAD878: ConcatStr
  loc_AAD879: FStStrNoPop var_144
  loc_AAD87C: LitStr Chr(37) & "' )"
  loc_AAD87F: ConcatStr
  loc_AAD880: FStStrNoPop var_148
  loc_AAD883: LitStr " AND FechImpu <= "
  loc_AAD886: ConcatStr
  loc_AAD887: FStStrNoPop var_14C
  loc_AAD88A: LitI4 1
  loc_AAD88F: LitI4 1
  loc_AAD894: LitVarStr var_A4, "'yyyy-mm-dd'"
  loc_AAD899: FStVarCopyObj var_F4
  loc_AAD89C: FLdRfVar var_F4
  loc_AAD89F: FLdRfVar var_C4
  loc_AAD8A2: CStrVarTmp
  loc_AAD8A3: CVarStr var_E4
  loc_AAD8A6: ImpAdCallI2 Format$(, )
  loc_AAD8AB: FStStrNoPop var_150
  loc_AAD8AE: ConcatStr
  loc_AAD8AF: FStStrNoPop var_154
  loc_AAD8B2: LitStr " GROUP BY PeriInfo, CredOrga, CredPart"
  loc_AAD8B5: ConcatStr
  loc_AAD8B6: FStStrNoPop var_158
  loc_AAD8B9: LitStr vbNullString
  loc_AAD8BC: ConcatStr
  loc_AAD8BD: FStStrNoPop var_15C
  loc_AAD8C0: FLdPr Me
  loc_AAD8C3: MemLdStr global_144
  loc_AAD8C6: ConcatStr
  loc_AAD8C7: FStStrNoPop var_160
  loc_AAD8CA: LitStr ";"
  loc_AAD8CD: ConcatStr
  loc_AAD8CE: FStStrNoPop var_164
  loc_AAD8D1: FLdPr var_F8
  loc_AAD8D4: Call clsimputacion.RedefineRS(from_stack_1v)
  loc_AAD8D9: FFreeStr var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_114 = "": var_110 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = ""
  loc_AAD910: FFreeAd var_90 = ""
  loc_AAD917: FFreeVar var_C4 = "": var_E4 = ""
  loc_AAD920: FLdPr Me
  loc_AAD923: VCallAd Control_ID_mskHasta
  loc_AAD926: FStAdFunc var_128
  loc_AAD929: FLdPr var_128
  loc_AAD92C: LateIdLdVar var_C4 DispID_15 0
  loc_AAD933: PopAd
  loc_AAD935: LitStr "INSERT INTO tmovi (PeriInfo,CodiOrga,CodiPart,PrevFutu)"
  loc_AAD938: LitStr " SELECT i.PeriInfo, CredOrga, CredPart"
  loc_AAD93B: ConcatStr
  loc_AAD93C: FStStrNoPop var_FC
  loc_AAD93F: LitStr ", Sum(PrevImpu)"
  loc_AAD942: ConcatStr
  loc_AAD943: FStStrNoPop var_100
  loc_AAD946: LitStr " FROM imputacion i"
  loc_AAD949: ConcatStr
  loc_AAD94A: FStStrNoPop var_104
  loc_AAD94D: LitStr " INNER JOIN infogov.organigrama o ON o.PeriInfo = i.PeriInfo AND o.CodiOrga = i.CodiOrga"
  loc_AAD950: ConcatStr
  loc_AAD951: FStStrNoPop var_108
  loc_AAD954: LitStr " INNER JOIN partida p ON p.PeriInfo = i.PeriInfo AND p.CodiPart = i.CodiPart"
  loc_AAD957: ConcatStr
  loc_AAD958: FStStrNoPop var_10C
  loc_AAD95B: LitStr " WHERE i.PeriInfo = "
  loc_AAD95E: ConcatStr
  loc_AAD95F: FStStrNoPop var_114
  loc_AAD962: FLdRfVar var_110
  loc_AAD965: FLdPr Me
  loc_AAD968: VCallAd Control_ID_cboPeriodo
  loc_AAD96B: FStAdFunc var_90
  loc_AAD96E: FLdPr var_90
  loc_AAD971:  = Me.Text
  loc_AAD976: ILdRf var_110
  loc_AAD979: ConcatStr
  loc_AAD97A: FStStrNoPop var_118
  loc_AAD97D: LitStr " AND PrevImpu > 0"
  loc_AAD980: ConcatStr
  loc_AAD981: FStStrNoPop var_11C
  loc_AAD984: LitStr " AND ( CredPart "
  loc_AAD987: ConcatStr
  loc_AAD988: FStStrNoPop var_120
  loc_AAD98B: ILdRf var_88
  loc_AAD98E: ConcatStr
  loc_AAD98F: FStStrNoPop var_124
  loc_AAD992: LitStr " Like '"
  loc_AAD995: ConcatStr
  loc_AAD996: FStStrNoPop var_12C
  loc_AAD999: ILdRf var_8C
  loc_AAD99C: ConcatStr
  loc_AAD99D: FStStrNoPop var_130
  loc_AAD9A0: LitStr Chr(37) & "'"
  loc_AAD9A3: ConcatStr
  loc_AAD9A4: FStStrNoPop var_134
  loc_AAD9A7: LitStr " OR i.CodiPart "
  loc_AAD9AA: ConcatStr
  loc_AAD9AB: FStStrNoPop var_138
  loc_AAD9AE: ILdRf var_88
  loc_AAD9B1: ConcatStr
  loc_AAD9B2: FStStrNoPop var_13C
  loc_AAD9B5: LitStr " Like '"
  loc_AAD9B8: ConcatStr
  loc_AAD9B9: FStStrNoPop var_140
  loc_AAD9BC: ILdRf var_8C
  loc_AAD9BF: ConcatStr
  loc_AAD9C0: FStStrNoPop var_144
  loc_AAD9C3: LitStr Chr(37) & "' )"
  loc_AAD9C6: ConcatStr
  loc_AAD9C7: FStStrNoPop var_148
  loc_AAD9CA: LitStr " AND FechImpu > "
  loc_AAD9CD: ConcatStr
  loc_AAD9CE: FStStrNoPop var_14C
  loc_AAD9D1: LitI4 1
  loc_AAD9D6: LitI4 1
  loc_AAD9DB: LitVarStr var_A4, "'yyyy-mm-dd'"
  loc_AAD9E0: FStVarCopyObj var_F4
  loc_AAD9E3: FLdRfVar var_F4
  loc_AAD9E6: FLdRfVar var_C4
  loc_AAD9E9: CStrVarTmp
  loc_AAD9EA: CVarStr var_E4
  loc_AAD9ED: ImpAdCallI2 Format$(, )
  loc_AAD9F2: FStStrNoPop var_150
  loc_AAD9F5: ConcatStr
  loc_AAD9F6: FStStrNoPop var_154
  loc_AAD9F9: LitStr " GROUP BY PeriInfo, CredOrga, CredPart"
  loc_AAD9FC: ConcatStr
  loc_AAD9FD: FStStrNoPop var_158
  loc_AADA00: LitStr vbNullString
  loc_AADA03: ConcatStr
  loc_AADA04: FStStrNoPop var_15C
  loc_AADA07: FLdPr Me
  loc_AADA0A: MemLdStr global_144
  loc_AADA0D: ConcatStr
  loc_AADA0E: FStStrNoPop var_160
  loc_AADA11: LitStr ";"
  loc_AADA14: ConcatStr
  loc_AADA15: FStStrNoPop var_164
  loc_AADA18: FLdPr var_F8
  loc_AADA1B: Call clsimputacion.RedefineRS(from_stack_1v)
  loc_AADA20: FFreeStr var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_114 = "": var_110 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = ""
  loc_AADA57: FFreeAd var_90 = ""
  loc_AADA5E: FFreeVar var_C4 = "": var_E4 = ""
  loc_AADA67: LitStr "SELECT tmovi.PeriInfo, tmovi.CodiPart, DetaPart, tmovi.CodiOrga, Sum(AutoAuto) AutoAuto, Sum(AumeAuto) AumeAuto, Sum(DismAuto) DismAuto, Sum(PrevImpu) PrevImpu, Sum(PrevFutu) PrevFutu"
  loc_AADA6A: LitStr " FROM tmovi"
  loc_AADA6D: ConcatStr
  loc_AADA6E: FStStrNoPop var_FC
  loc_AADA71: LitStr " INNER JOIN partida ON partida.PeriInfo = tmovi.PeriInfo AND partida.CodiPart = tmovi.CodiPart"
  loc_AADA74: ConcatStr
  loc_AADA75: FStStrNoPop var_100
  loc_AADA78: LitStr " INNER JOIN infogov.organigrama o ON o.PeriInfo = tmovi.PeriInfo AND o.CodiOrga = tmovi.CodiOrga"
  loc_AADA7B: ConcatStr
  loc_AADA7C: FStStrNoPop var_104
  loc_AADA7F: LitStr " GROUP BY tmovi.PeriInfo, tmovi.CodiPart, CodiOrga"
  loc_AADA82: ConcatStr
  loc_AADA83: FStStrNoPop var_108
  loc_AADA86: LitStr " ORDER BY CodiOrga, CodiPart;"
  loc_AADA89: ConcatStr
  loc_AADA8A: FStStrNoPop var_10C
  loc_AADA8D: FLdPr var_F8
  loc_AADA90: Call clsimputacion.RedefineRS(from_stack_1v)
  loc_AADA95: FFreeStr var_FC = "": var_100 = "": var_104 = "": var_108 = ""
  loc_AADAA2: LitNothing
  loc_AADAA4: FStAd var_F8 
  loc_AADAA8: ExitProcHresult
End Function

Private Function Proc_237_28_B0C9E4(arg_C, arg_10) 'B0C9E4
  'Data Table: 489654
  loc_B0C1F0: FLdPr Me
  loc_B0C1F3: MemLdRfVar from_stack_1.global_88
  loc_B0C1F6: NewIfNullAd
  loc_B0C1F9: FStAd var_8C 
  loc_B0C1FD: FLdRfVar var_90
  loc_B0C200: FLdPr var_8C
  loc_B0C203: from_stack_1 = clsimputacion.RecordCount
  loc_B0C208: LitI4 1
  loc_B0C20D: ILdRf var_90
  loc_B0C210: ILdI2 arg_10
  loc_B0C213: CI4UI1
  loc_B0C214: ILdI4 arg_C
  loc_B0C217: Ary1LdPr
  loc_B0C218: MemLdRfVar from_stack_1.global_0
  loc_B0C21B: Redim
  loc_B0C225: LitStr vbNullString
  loc_B0C228: ILdI2 arg_10
  loc_B0C22B: CI4UI1
  loc_B0C22C: ILdI4 arg_C
  loc_B0C22F: Ary1LdPr
  loc_B0C230: MemStStrCopy
  loc_B0C234: LitStr vbNullString
  loc_B0C237: ILdI2 arg_10
  loc_B0C23A: CI4UI1
  loc_B0C23B: ILdI4 arg_C
  loc_B0C23E: Ary1LdPr
  loc_B0C23F: MemStStrCopy
  loc_B0C243: LitStr vbNullString
  loc_B0C246: ILdI2 arg_10
  loc_B0C249: CI4UI1
  loc_B0C24A: ILdI4 arg_C
  loc_B0C24D: Ary1LdPr
  loc_B0C24E: MemStStrCopy
  loc_B0C252: LitStr vbNullString
  loc_B0C255: ILdI2 arg_10
  loc_B0C258: CI4UI1
  loc_B0C259: ILdI4 arg_C
  loc_B0C25C: Ary1LdPr
  loc_B0C25D: MemStStrCopy
  loc_B0C261: LitStr vbNullString
  loc_B0C264: ILdI2 arg_10
  loc_B0C267: CI4UI1
  loc_B0C268: ILdI4 arg_C
  loc_B0C26B: Ary1LdPr
  loc_B0C26C: MemStStrCopy
  loc_B0C270: LitStr vbNullString
  loc_B0C273: ILdI2 arg_10
  loc_B0C276: CI4UI1
  loc_B0C277: ILdI4 arg_C
  loc_B0C27A: Ary1LdPr
  loc_B0C27B: MemStStrCopy
  loc_B0C27F: LitStr vbNullString
  loc_B0C282: ILdI2 arg_10
  loc_B0C285: CI4UI1
  loc_B0C286: ILdI4 arg_C
  loc_B0C289: Ary1LdPr
  loc_B0C28A: MemStStrCopy
  loc_B0C28E: LitStr vbNullString
  loc_B0C291: ILdI2 arg_10
  loc_B0C294: CI4UI1
  loc_B0C295: ILdI4 arg_C
  loc_B0C298: Ary1LdPr
  loc_B0C299: MemStStrCopy
  loc_B0C29D: FLdPr var_8C
  loc_B0C2A0: Call clsimputacion.MoveFirst()
  loc_B0C2A5: LitI2_Byte &HFF
  loc_B0C2A7: ILdI2 arg_10
  loc_B0C2AA: CI4UI1
  loc_B0C2AB: ILdI4 arg_C
  loc_B0C2AE: Ary1LdPr
  loc_B0C2AF: MemStI2 global_8
  loc_B0C2B2: LitI2_Byte 1
  loc_B0C2B4: FLdPr Me
  loc_B0C2B7: MemLdRfVar from_stack_1.global_128
  loc_B0C2BA: ILdI2 arg_10
  loc_B0C2BD: CI4UI1
  loc_B0C2BE: ILdI4 arg_C
  loc_B0C2C1: Ary1LdPr
  loc_B0C2C2: MemLdStr global_0
  loc_B0C2C5: LitI2_Byte 1
  loc_B0C2C7: FnUBound
  loc_B0C2C9: CI2I4
  loc_B0C2CA: ForI2 var_94
  loc_B0C2D0: FLdRfVar var_B0
  loc_B0C2D3: LitVarStr var_AC, "CodiPart"
  loc_B0C2D8: PopAdLdVar
  loc_B0C2D9: FLdRfVar var_9C
  loc_B0C2DC: FLdRfVar var_98
  loc_B0C2DF: FLdPr var_8C
  loc_B0C2E2: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B0C2E7: FLdPr var_98
  loc_B0C2EA:  = Me.Fields
  loc_B0C2EF: FLdPr var_9C
  loc_B0C2F2: from_stack_2 = Me.Item(from_stack_1)
  loc_B0C2F7: LitI2_Byte 0
  loc_B0C2F9: LitVar_Missing var_E8
  loc_B0C2FC: LitI2_Byte 0
  loc_B0C2FE: FLdZeroAd var_B0
  loc_B0C301: CVarAd
  loc_B0C305: PopAdLdVar
  loc_B0C306: FLdPr Me
  loc_B0C309: MemLdI2 global_128
  loc_B0C30C: CI4UI1
  loc_B0C30D: ILdI2 arg_10
  loc_B0C310: CI4UI1
  loc_B0C311: ILdI4 arg_C
  loc_B0C314: AryLock
  loc_B0C317: Ary1LdPr
  loc_B0C318: MemLdStr global_0
  loc_B0C31B: AryLock
  loc_B0C31E: Ary1LdPr
  loc_B0C31F: MemLdRfVar from_stack_1.global_0
  loc_B0C322: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B0C327: AryUnlock
  loc_B0C32A: AryUnlock
  loc_B0C32D: FFreeAd var_98 = ""
  loc_B0C334: FFreeVar var_C8 = ""
  loc_B0C33B: FLdRfVar var_B0
  loc_B0C33E: LitVarStr var_AC, "DetaPart"
  loc_B0C343: PopAdLdVar
  loc_B0C344: FLdRfVar var_9C
  loc_B0C347: FLdRfVar var_98
  loc_B0C34A: FLdPr var_8C
  loc_B0C34D: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B0C352: FLdPr var_98
  loc_B0C355:  = Me.Fields
  loc_B0C35A: FLdPr var_9C
  loc_B0C35D: from_stack_2 = Me.Item(from_stack_1)
  loc_B0C362: LitI2_Byte 0
  loc_B0C364: LitVar_Missing var_E8
  loc_B0C367: LitI2_Byte 0
  loc_B0C369: FLdZeroAd var_B0
  loc_B0C36C: CVarAd
  loc_B0C370: PopAdLdVar
  loc_B0C371: FLdPr Me
  loc_B0C374: MemLdI2 global_128
  loc_B0C377: CI4UI1
  loc_B0C378: ILdI2 arg_10
  loc_B0C37B: CI4UI1
  loc_B0C37C: ILdI4 arg_C
  loc_B0C37F: AryLock
  loc_B0C382: Ary1LdPr
  loc_B0C383: MemLdStr global_0
  loc_B0C386: AryLock
  loc_B0C389: Ary1LdPr
  loc_B0C38A: MemLdRfVar from_stack_1.global_4
  loc_B0C38D: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B0C392: AryUnlock
  loc_B0C395: AryUnlock
  loc_B0C398: FFreeAd var_98 = ""
  loc_B0C39F: FFreeVar var_C8 = ""
  loc_B0C3A6: FLdRfVar var_B0
  loc_B0C3A9: LitVarStr var_AC, "AutoAuto"
  loc_B0C3AE: PopAdLdVar
  loc_B0C3AF: FLdRfVar var_9C
  loc_B0C3B2: FLdRfVar var_98
  loc_B0C3B5: FLdPr var_8C
  loc_B0C3B8: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B0C3BD: FLdPr var_98
  loc_B0C3C0:  = Me.Fields
  loc_B0C3C5: FLdPr var_9C
  loc_B0C3C8: from_stack_2 = Me.Item(from_stack_1)
  loc_B0C3CD: LitI2_Byte 0
  loc_B0C3CF: ILdI2 arg_10
  loc_B0C3D2: CI4UI1
  loc_B0C3D3: ILdI4 arg_C
  loc_B0C3D6: AryLock
  loc_B0C3D9: Ary1LdPr
  loc_B0C3DA: MemLdRfVar from_stack_1.global_12
  loc_B0C3DD: CVarRef
  loc_B0C3E2: LitI2_Byte &HFF
  loc_B0C3E4: FLdZeroAd var_B0
  loc_B0C3E7: CVarAd
  loc_B0C3EB: PopAdLdVar
  loc_B0C3EC: FLdPr Me
  loc_B0C3EF: MemLdI2 global_128
  loc_B0C3F2: CI4UI1
  loc_B0C3F3: ILdI2 arg_10
  loc_B0C3F6: CI4UI1
  loc_B0C3F7: ILdI4 arg_C
  loc_B0C3FA: AryLock
  loc_B0C3FD: Ary1LdPr
  loc_B0C3FE: MemLdStr global_0
  loc_B0C401: AryLock
  loc_B0C404: Ary1LdPr
  loc_B0C405: MemLdRfVar from_stack_1.global_8
  loc_B0C408: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B0C40D: AryUnlock
  loc_B0C410: AryUnlock
  loc_B0C413: AryUnlock
  loc_B0C416: FFreeAd var_98 = ""
  loc_B0C41D: FFree1Var var_C8 = ""
  loc_B0C420: FLdRfVar var_B0
  loc_B0C423: LitVarStr var_AC, "AumeAuto"
  loc_B0C428: PopAdLdVar
  loc_B0C429: FLdRfVar var_9C
  loc_B0C42C: FLdRfVar var_98
  loc_B0C42F: FLdPr var_8C
  loc_B0C432: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B0C437: FLdPr var_98
  loc_B0C43A:  = Me.Fields
  loc_B0C43F: FLdPr var_9C
  loc_B0C442: from_stack_2 = Me.Item(from_stack_1)
  loc_B0C447: LitI2_Byte 0
  loc_B0C449: ILdI2 arg_10
  loc_B0C44C: CI4UI1
  loc_B0C44D: ILdI4 arg_C
  loc_B0C450: AryLock
  loc_B0C453: Ary1LdPr
  loc_B0C454: MemLdRfVar from_stack_1.global_16
  loc_B0C457: CVarRef
  loc_B0C45C: LitI2_Byte &HFF
  loc_B0C45E: FLdZeroAd var_B0
  loc_B0C461: CVarAd
  loc_B0C465: PopAdLdVar
  loc_B0C466: FLdPr Me
  loc_B0C469: MemLdI2 global_128
  loc_B0C46C: CI4UI1
  loc_B0C46D: ILdI2 arg_10
  loc_B0C470: CI4UI1
  loc_B0C471: ILdI4 arg_C
  loc_B0C474: AryLock
  loc_B0C477: Ary1LdPr
  loc_B0C478: MemLdStr global_0
  loc_B0C47B: AryLock
  loc_B0C47E: Ary1LdPr
  loc_B0C47F: MemLdRfVar from_stack_1.global_12
  loc_B0C482: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B0C487: AryUnlock
  loc_B0C48A: AryUnlock
  loc_B0C48D: AryUnlock
  loc_B0C490: FFreeAd var_98 = ""
  loc_B0C497: FFree1Var var_C8 = ""
  loc_B0C49A: FLdRfVar var_B0
  loc_B0C49D: LitVarStr var_AC, "DismAuto"
  loc_B0C4A2: PopAdLdVar
  loc_B0C4A3: FLdRfVar var_9C
  loc_B0C4A6: FLdRfVar var_98
  loc_B0C4A9: FLdPr var_8C
  loc_B0C4AC: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B0C4B1: FLdPr var_98
  loc_B0C4B4:  = Me.Fields
  loc_B0C4B9: FLdPr var_9C
  loc_B0C4BC: from_stack_2 = Me.Item(from_stack_1)
  loc_B0C4C1: LitI2_Byte 0
  loc_B0C4C3: ILdI2 arg_10
  loc_B0C4C6: CI4UI1
  loc_B0C4C7: ILdI4 arg_C
  loc_B0C4CA: AryLock
  loc_B0C4CD: Ary1LdPr
  loc_B0C4CE: MemLdRfVar from_stack_1.global_20
  loc_B0C4D1: CVarRef
  loc_B0C4D6: LitI2_Byte &HFF
  loc_B0C4D8: FLdZeroAd var_B0
  loc_B0C4DB: CVarAd
  loc_B0C4DF: PopAdLdVar
  loc_B0C4E0: FLdPr Me
  loc_B0C4E3: MemLdI2 global_128
  loc_B0C4E6: CI4UI1
  loc_B0C4E7: ILdI2 arg_10
  loc_B0C4EA: CI4UI1
  loc_B0C4EB: ILdI4 arg_C
  loc_B0C4EE: AryLock
  loc_B0C4F1: Ary1LdPr
  loc_B0C4F2: MemLdStr global_0
  loc_B0C4F5: AryLock
  loc_B0C4F8: Ary1LdPr
  loc_B0C4F9: MemLdRfVar from_stack_1.global_16
  loc_B0C4FC: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B0C501: AryUnlock
  loc_B0C504: AryUnlock
  loc_B0C507: AryUnlock
  loc_B0C50A: FFreeAd var_98 = ""
  loc_B0C511: FFree1Var var_C8 = ""
  loc_B0C514: FLdRfVar var_C8
  loc_B0C517: FLdRfVar var_B0
  loc_B0C51A: LitVarStr var_AC, "AutoAuto"
  loc_B0C51F: PopAdLdVar
  loc_B0C520: FLdRfVar var_9C
  loc_B0C523: FLdRfVar var_98
  loc_B0C526: FLdPr var_8C
  loc_B0C529: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B0C52E: FLdPr var_98
  loc_B0C531:  = Me.Fields
  loc_B0C536: FLdPr var_9C
  loc_B0C539: from_stack_2 = Me.Item(from_stack_1)
  loc_B0C53E: FLdPr var_B0
  loc_B0C541:  = Me.Value
  loc_B0C546: LitI4 2
  loc_B0C54B: FLdRfVar var_C8
  loc_B0C54E: FnCDblVar
  loc_B0C550: CVarR8
  loc_B0C554: FLdRfVar var_FC
  loc_B0C557: ImpAdCallFPR4  = Round(, )
  loc_B0C55C: FLdRfVar var_128
  loc_B0C55F: FLdRfVar var_118
  loc_B0C562: LitVarStr var_114, "AumeAuto"
  loc_B0C567: PopAdLdVar
  loc_B0C568: FLdRfVar var_104
  loc_B0C56B: FLdRfVar var_100
  loc_B0C56E: FLdPr var_8C
  loc_B0C571: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B0C576: FLdPr var_100
  loc_B0C579:  = Me.Fields
  loc_B0C57E: FLdPr var_104
  loc_B0C581: from_stack_2 = Me.Item(from_stack_1)
  loc_B0C586: FLdPr var_118
  loc_B0C589:  = Me.Value
  loc_B0C58E: LitI4 2
  loc_B0C593: FLdRfVar var_128
  loc_B0C596: FnCDblVar
  loc_B0C598: CVarR8
  loc_B0C59C: FLdRfVar var_158
  loc_B0C59F: ImpAdCallFPR4  = Round(, )
  loc_B0C5A4: FLdRfVar var_194
  loc_B0C5A7: FLdRfVar var_184
  loc_B0C5AA: LitVarStr var_180, "DismAuto"
  loc_B0C5AF: PopAdLdVar
  loc_B0C5B0: FLdRfVar var_170
  loc_B0C5B3: FLdRfVar var_16C
  loc_B0C5B6: FLdPr var_8C
  loc_B0C5B9: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B0C5BE: FLdPr var_16C
  loc_B0C5C1:  = Me.Fields
  loc_B0C5C6: FLdPr var_170
  loc_B0C5C9: from_stack_2 = Me.Item(from_stack_1)
  loc_B0C5CE: FLdPr var_184
  loc_B0C5D1:  = Me.Value
  loc_B0C5D6: LitI4 2
  loc_B0C5DB: FLdRfVar var_194
  loc_B0C5DE: FnCDblVar
  loc_B0C5E0: CVarR8
  loc_B0C5E4: FLdRfVar var_1C4
  loc_B0C5E7: ImpAdCallFPR4  = Round(, )
  loc_B0C5EC: LitI2_Byte 0
  loc_B0C5EE: ILdI2 arg_10
  loc_B0C5F1: CI4UI1
  loc_B0C5F2: ILdI4 arg_C
  loc_B0C5F5: AryLock
  loc_B0C5F8: Ary1LdPr
  loc_B0C5F9: MemLdRfVar from_stack_1.global_24
  loc_B0C5FC: CVarRef
  loc_B0C601: LitI2_Byte &HFF
  loc_B0C603: FLdRfVar var_FC
  loc_B0C606: FLdRfVar var_158
  loc_B0C609: AddVar var_168
  loc_B0C60D: FLdRfVar var_1C4
  loc_B0C610: SubVar var_1D4
  loc_B0C614: PopAdLdVar
  loc_B0C615: FLdPr Me
  loc_B0C618: MemLdI2 global_128
  loc_B0C61B: CI4UI1
  loc_B0C61C: ILdI2 arg_10
  loc_B0C61F: CI4UI1
  loc_B0C620: ILdI4 arg_C
  loc_B0C623: AryLock
  loc_B0C626: Ary1LdPr
  loc_B0C627: MemLdStr global_0
  loc_B0C62A: AryLock
  loc_B0C62D: Ary1LdPr
  loc_B0C62E: MemLdRfVar from_stack_1.global_20
  loc_B0C631: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B0C636: AryUnlock
  loc_B0C639: AryUnlock
  loc_B0C63C: AryUnlock
  loc_B0C63F: FFreeAd var_98 = "": var_9C = "": var_B0 = "": var_100 = "": var_104 = "": var_118 = "": var_16C = "": var_170 = ""
  loc_B0C654: FFreeVar var_C8 = "": var_E8 = "": var_128 = "": var_148 = "": var_FC = "": var_158 = "": var_194 = "": var_1B4 = "": var_168 = ""
  loc_B0C66B: FLdRfVar var_B0
  loc_B0C66E: LitVarStr var_AC, "PrevImpu"
  loc_B0C673: PopAdLdVar
  loc_B0C674: FLdRfVar var_9C
  loc_B0C677: FLdRfVar var_98
  loc_B0C67A: FLdPr var_8C
  loc_B0C67D: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B0C682: FLdPr var_98
  loc_B0C685:  = Me.Fields
  loc_B0C68A: FLdPr var_9C
  loc_B0C68D: from_stack_2 = Me.Item(from_stack_1)
  loc_B0C692: LitI2_Byte 0
  loc_B0C694: ILdI2 arg_10
  loc_B0C697: CI4UI1
  loc_B0C698: ILdI4 arg_C
  loc_B0C69B: AryLock
  loc_B0C69E: Ary1LdPr
  loc_B0C69F: MemLdRfVar from_stack_1.global_28
  loc_B0C6A2: CVarRef
  loc_B0C6A7: LitI2_Byte &HFF
  loc_B0C6A9: FLdZeroAd var_B0
  loc_B0C6AC: CVarAd
  loc_B0C6B0: PopAdLdVar
  loc_B0C6B1: FLdPr Me
  loc_B0C6B4: MemLdI2 global_128
  loc_B0C6B7: CI4UI1
  loc_B0C6B8: ILdI2 arg_10
  loc_B0C6BB: CI4UI1
  loc_B0C6BC: ILdI4 arg_C
  loc_B0C6BF: AryLock
  loc_B0C6C2: Ary1LdPr
  loc_B0C6C3: MemLdStr global_0
  loc_B0C6C6: AryLock
  loc_B0C6C9: Ary1LdPr
  loc_B0C6CA: MemLdRfVar from_stack_1.global_24
  loc_B0C6CD: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B0C6D2: AryUnlock
  loc_B0C6D5: AryUnlock
  loc_B0C6D8: AryUnlock
  loc_B0C6DB: FFreeAd var_98 = ""
  loc_B0C6E2: FFree1Var var_C8 = ""
  loc_B0C6E5: LitI4 2
  loc_B0C6EA: FLdPr Me
  loc_B0C6ED: MemLdI2 global_128
  loc_B0C6F0: CI4UI1
  loc_B0C6F1: ILdI2 arg_10
  loc_B0C6F4: CI4UI1
  loc_B0C6F5: ILdI4 arg_C
  loc_B0C6F8: Ary1LdPr
  loc_B0C6F9: MemLdStr global_0
  loc_B0C6FC: Ary1LdPr
  loc_B0C6FD: MemLdStr global_20
  loc_B0C700: CR8Str
  loc_B0C702: CVarR8
  loc_B0C706: FLdRfVar var_E8
  loc_B0C709: ImpAdCallFPR4  = Round(, )
  loc_B0C70E: LitI4 2
  loc_B0C713: FLdPr Me
  loc_B0C716: MemLdI2 global_128
  loc_B0C719: CI4UI1
  loc_B0C71A: ILdI2 arg_10
  loc_B0C71D: CI4UI1
  loc_B0C71E: ILdI4 arg_C
  loc_B0C721: Ary1LdPr
  loc_B0C722: MemLdStr global_0
  loc_B0C725: Ary1LdPr
  loc_B0C726: MemLdStr global_24
  loc_B0C729: CR8Str
  loc_B0C72B: CVarR8
  loc_B0C72F: FLdRfVar var_128
  loc_B0C732: ImpAdCallFPR4  = Round(, )
  loc_B0C737: LitI2_Byte 0
  loc_B0C739: ILdI2 arg_10
  loc_B0C73C: CI4UI1
  loc_B0C73D: ILdI4 arg_C
  loc_B0C740: AryLock
  loc_B0C743: Ary1LdPr
  loc_B0C744: MemLdRfVar from_stack_1.global_32
  loc_B0C747: CVarRef
  loc_B0C74C: LitI2_Byte &HFF
  loc_B0C74E: FLdRfVar var_E8
  loc_B0C751: FLdRfVar var_128
  loc_B0C754: SubVar var_148
  loc_B0C758: PopAdLdVar
  loc_B0C759: FLdPr Me
  loc_B0C75C: MemLdI2 global_128
  loc_B0C75F: CI4UI1
  loc_B0C760: ILdI2 arg_10
  loc_B0C763: CI4UI1
  loc_B0C764: ILdI4 arg_C
  loc_B0C767: AryLock
  loc_B0C76A: Ary1LdPr
  loc_B0C76B: MemLdStr global_0
  loc_B0C76E: AryLock
  loc_B0C771: Ary1LdPr
  loc_B0C772: MemLdRfVar from_stack_1.global_28
  loc_B0C775: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B0C77A: AryUnlock
  loc_B0C77D: AryUnlock
  loc_B0C780: AryUnlock
  loc_B0C783: FFreeVar var_C8 = "": var_FC = "": var_E8 = ""
  loc_B0C78E: FLdRfVar var_B0
  loc_B0C791: LitVarStr var_AC, "Prevfutu"
  loc_B0C796: PopAdLdVar
  loc_B0C797: FLdRfVar var_9C
  loc_B0C79A: FLdRfVar var_98
  loc_B0C79D: FLdPr var_8C
  loc_B0C7A0: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B0C7A5: FLdPr var_98
  loc_B0C7A8:  = Me.Fields
  loc_B0C7AD: FLdPr var_9C
  loc_B0C7B0: from_stack_2 = Me.Item(from_stack_1)
  loc_B0C7B5: LitI2_Byte 0
  loc_B0C7B7: ILdI2 arg_10
  loc_B0C7BA: CI4UI1
  loc_B0C7BB: ILdI4 arg_C
  loc_B0C7BE: AryLock
  loc_B0C7C1: Ary1LdPr
  loc_B0C7C2: MemLdRfVar from_stack_1.global_36
  loc_B0C7C5: CVarRef
  loc_B0C7CA: LitI2_Byte &HFF
  loc_B0C7CC: FLdZeroAd var_B0
  loc_B0C7CF: CVarAd
  loc_B0C7D3: PopAdLdVar
  loc_B0C7D4: FLdPr Me
  loc_B0C7D7: MemLdI2 global_128
  loc_B0C7DA: CI4UI1
  loc_B0C7DB: ILdI2 arg_10
  loc_B0C7DE: CI4UI1
  loc_B0C7DF: ILdI4 arg_C
  loc_B0C7E2: AryLock
  loc_B0C7E5: Ary1LdPr
  loc_B0C7E6: MemLdStr global_0
  loc_B0C7E9: AryLock
  loc_B0C7EC: Ary1LdPr
  loc_B0C7ED: MemLdRfVar from_stack_1.global_32
  loc_B0C7F0: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B0C7F5: AryUnlock
  loc_B0C7F8: AryUnlock
  loc_B0C7FB: AryUnlock
  loc_B0C7FE: FFreeAd var_98 = ""
  loc_B0C805: FFree1Var var_C8 = ""
  loc_B0C808: LitI4 2
  loc_B0C80D: FLdPr Me
  loc_B0C810: MemLdI2 global_128
  loc_B0C813: CI4UI1
  loc_B0C814: ILdI2 arg_10
  loc_B0C817: CI4UI1
  loc_B0C818: ILdI4 arg_C
  loc_B0C81B: Ary1LdPr
  loc_B0C81C: MemLdStr global_0
  loc_B0C81F: Ary1LdPr
  loc_B0C820: MemLdStr global_28
  loc_B0C823: CR8Str
  loc_B0C825: CVarR8
  loc_B0C829: FLdRfVar var_E8
  loc_B0C82C: ImpAdCallFPR4  = Round(, )
  loc_B0C831: LitI4 2
  loc_B0C836: FLdPr Me
  loc_B0C839: MemLdI2 global_128
  loc_B0C83C: CI4UI1
  loc_B0C83D: ILdI2 arg_10
  loc_B0C840: CI4UI1
  loc_B0C841: ILdI4 arg_C
  loc_B0C844: Ary1LdPr
  loc_B0C845: MemLdStr global_0
  loc_B0C848: Ary1LdPr
  loc_B0C849: MemLdStr global_32
  loc_B0C84C: CR8Str
  loc_B0C84E: CVarR8
  loc_B0C852: FLdRfVar var_128
  loc_B0C855: ImpAdCallFPR4  = Round(, )
  loc_B0C85A: LitI2_Byte 0
  loc_B0C85C: ILdI2 arg_10
  loc_B0C85F: CI4UI1
  loc_B0C860: ILdI4 arg_C
  loc_B0C863: AryLock
  loc_B0C866: Ary1LdPr
  loc_B0C867: MemLdRfVar from_stack_1.global_40
  loc_B0C86A: CVarRef
  loc_B0C86F: LitI2_Byte &HFF
  loc_B0C871: FLdRfVar var_E8
  loc_B0C874: FLdRfVar var_128
  loc_B0C877: SubVar var_148
  loc_B0C87B: PopAdLdVar
  loc_B0C87C: FLdPr Me
  loc_B0C87F: MemLdI2 global_128
  loc_B0C882: CI4UI1
  loc_B0C883: ILdI2 arg_10
  loc_B0C886: CI4UI1
  loc_B0C887: ILdI4 arg_C
  loc_B0C88A: AryLock
  loc_B0C88D: Ary1LdPr
  loc_B0C88E: MemLdStr global_0
  loc_B0C891: AryLock
  loc_B0C894: Ary1LdPr
  loc_B0C895: MemLdRfVar from_stack_1.global_36
  loc_B0C898: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B0C89D: AryUnlock
  loc_B0C8A0: AryUnlock
  loc_B0C8A3: AryUnlock
  loc_B0C8A6: FFreeVar var_C8 = "": var_FC = "": var_E8 = ""
  loc_B0C8B1: FLdPr var_8C
  loc_B0C8B4: Call clsimputacion.MoveSiguiente()
  loc_B0C8B9: FLdPr Me
  loc_B0C8BC: MemLdRfVar from_stack_1.global_128
  loc_B0C8BF: NextI2 var_94, loc_B0C2D0
  loc_B0C8C4: LitNothing
  loc_B0C8C6: FStAd var_8C 
  loc_B0C8CA: ILdI2 arg_10
  loc_B0C8CD: CI4UI1
  loc_B0C8CE: ILdI4 arg_C
  loc_B0C8D1: AryLock
  loc_B0C8D4: Ary1LdRf
  loc_B0C8D5: FStR4 var_1EC
  loc_B0C8D8: LitI2_Byte 0
  loc_B0C8DA: FLdPr Me
  loc_B0C8DD: MemLdRfVar from_stack_1.global_96
  loc_B0C8E0: CVarRef
  loc_B0C8E5: LitI2_Byte &HFF
  loc_B0C8E7: FMemLdR4 var_1EC(12)
  loc_B0C8EC: CVarStr var_AC
  loc_B0C8EF: PopAdLdVar
  loc_B0C8F0: FLdRfVar var_88
  loc_B0C8F3: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B0C8F8: LitI2_Byte 0
  loc_B0C8FA: FLdPr Me
  loc_B0C8FD: MemLdRfVar from_stack_1.global_100
  loc_B0C900: CVarRef
  loc_B0C905: LitI2_Byte &HFF
  loc_B0C907: FMemLdR4 var_1EC(16)
  loc_B0C90C: CVarStr var_AC
  loc_B0C90F: PopAdLdVar
  loc_B0C910: FLdRfVar var_88
  loc_B0C913: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B0C918: LitI2_Byte 0
  loc_B0C91A: FLdPr Me
  loc_B0C91D: MemLdRfVar from_stack_1.global_104
  loc_B0C920: CVarRef
  loc_B0C925: LitI2_Byte &HFF
  loc_B0C927: FMemLdR4 var_1EC(20)
  loc_B0C92C: CVarStr var_AC
  loc_B0C92F: PopAdLdVar
  loc_B0C930: FLdRfVar var_88
  loc_B0C933: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B0C938: LitI2_Byte 0
  loc_B0C93A: FLdPr Me
  loc_B0C93D: MemLdRfVar from_stack_1.global_108
  loc_B0C940: CVarRef
  loc_B0C945: LitI2_Byte &HFF
  loc_B0C947: FMemLdR4 var_1EC(24)
  loc_B0C94C: CVarStr var_AC
  loc_B0C94F: PopAdLdVar
  loc_B0C950: FLdRfVar var_88
  loc_B0C953: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B0C958: LitI2_Byte 0
  loc_B0C95A: FLdPr Me
  loc_B0C95D: MemLdRfVar from_stack_1.global_112
  loc_B0C960: CVarRef
  loc_B0C965: LitI2_Byte &HFF
  loc_B0C967: FMemLdR4 var_1EC(28)
  loc_B0C96C: CVarStr var_AC
  loc_B0C96F: PopAdLdVar
  loc_B0C970: FLdRfVar var_88
  loc_B0C973: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B0C978: LitI2_Byte 0
  loc_B0C97A: FLdPr Me
  loc_B0C97D: MemLdRfVar from_stack_1.global_116
  loc_B0C980: CVarRef
  loc_B0C985: LitI2_Byte &HFF
  loc_B0C987: FMemLdR4 var_1EC(32)
  loc_B0C98C: CVarStr var_AC
  loc_B0C98F: PopAdLdVar
  loc_B0C990: FLdRfVar var_88
  loc_B0C993: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B0C998: LitI2_Byte 0
  loc_B0C99A: FLdPr Me
  loc_B0C99D: MemLdRfVar from_stack_1.global_120
  loc_B0C9A0: CVarRef
  loc_B0C9A5: LitI2_Byte &HFF
  loc_B0C9A7: FMemLdR4 var_1EC(36)
  loc_B0C9AC: CVarStr var_AC
  loc_B0C9AF: PopAdLdVar
  loc_B0C9B0: FLdRfVar var_88
  loc_B0C9B3: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B0C9B8: LitI2_Byte 0
  loc_B0C9BA: FLdPr Me
  loc_B0C9BD: MemLdRfVar from_stack_1.global_124
  loc_B0C9C0: CVarRef
  loc_B0C9C5: LitI2_Byte &HFF
  loc_B0C9C7: FMemLdR4 var_1EC(40)
  loc_B0C9CC: CVarStr var_AC
  loc_B0C9CF: PopAdLdVar
  loc_B0C9D0: FLdRfVar var_88
  loc_B0C9D3: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B0C9D8: LitI4 0
  loc_B0C9DD: FStR4 var_1EC
  loc_B0C9E0: AryUnlock
  loc_B0C9E3: ExitProcHresult
End Function

Private Function Proc_237_29_AE6138(arg_C) 'AE6138
  'Data Table: 489654
  loc_AE5A88: FLdPr Me
  loc_AE5A8B: MemLdRfVar from_stack_1.global_88
  loc_AE5A8E: NewIfNullAd
  loc_AE5A91: FStAd var_8C 
  loc_AE5A95: LitI4 1
  loc_AE5A9A: FLdRfVar var_90
  loc_AE5A9D: FLdPr var_8C
  loc_AE5AA0: from_stack_1 = clsimputacion.RecordCount
  loc_AE5AA5: ILdRf var_90
  loc_AE5AA8: FMemLdRf unk_489661
  loc_AE5AAD: Redim
  loc_AE5AB7: LitStr vbNullString
  loc_AE5ABA: FMemStStrCopy
  loc_AE5ABF: LitStr vbNullString
  loc_AE5AC2: FMemStStrCopy
  loc_AE5AC7: LitStr vbNullString
  loc_AE5ACA: FMemStStrCopy
  loc_AE5ACF: LitStr vbNullString
  loc_AE5AD2: FMemStStrCopy
  loc_AE5AD7: LitStr vbNullString
  loc_AE5ADA: FMemStStrCopy
  loc_AE5ADF: LitStr vbNullString
  loc_AE5AE2: FMemStStrCopy
  loc_AE5AE7: LitStr vbNullString
  loc_AE5AEA: FMemStStrCopy
  loc_AE5AEF: LitStr vbNullString
  loc_AE5AF2: FMemStStrCopy
  loc_AE5AF7: FLdPr var_8C
  loc_AE5AFA: Call clsimputacion.MoveFirst()
  loc_AE5AFF: LitI2_Byte &HFF
  loc_AE5B01: FMemStI2 arg_C(8)
  loc_AE5B06: LitI2_Byte 1
  loc_AE5B08: FLdPr Me
  loc_AE5B0B: MemLdRfVar from_stack_1.global_128
  loc_AE5B0E: FMemLdR4 arg_C(0)
  loc_AE5B13: LitI2_Byte 1
  loc_AE5B15: FnUBound
  loc_AE5B17: CI2I4
  loc_AE5B18: ForI2 var_94
  loc_AE5B1E: FLdRfVar var_B0
  loc_AE5B21: LitVarStr var_AC, "CodiPart"
  loc_AE5B26: PopAdLdVar
  loc_AE5B27: FLdRfVar var_9C
  loc_AE5B2A: FLdRfVar var_98
  loc_AE5B2D: FLdPr var_8C
  loc_AE5B30: from_stack_1v = clsimputacion.RsFrmGet()
  loc_AE5B35: FLdPr var_98
  loc_AE5B38:  = Me.Fields
  loc_AE5B3D: FLdPr var_9C
  loc_AE5B40: from_stack_2 = Me.Item(from_stack_1)
  loc_AE5B45: LitI2_Byte 0
  loc_AE5B47: LitVar_Missing var_E4
  loc_AE5B4A: LitI2_Byte 0
  loc_AE5B4C: FLdZeroAd var_B0
  loc_AE5B4F: CVarAd
  loc_AE5B53: PopAdLdVar
  loc_AE5B54: FLdPr Me
  loc_AE5B57: MemLdI2 global_128
  loc_AE5B5A: CI4UI1
  loc_AE5B5B: FMemLdR4 arg_C(0)
  loc_AE5B60: AryLock
  loc_AE5B63: Ary1LdPr
  loc_AE5B64: MemLdRfVar from_stack_1.global_0
  loc_AE5B67: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AE5B6C: AryUnlock
  loc_AE5B6F: FFreeAd var_98 = ""
  loc_AE5B76: FFreeVar var_C4 = ""
  loc_AE5B7D: FLdRfVar var_B0
  loc_AE5B80: LitVarStr var_AC, "DetaPart"
  loc_AE5B85: PopAdLdVar
  loc_AE5B86: FLdRfVar var_9C
  loc_AE5B89: FLdRfVar var_98
  loc_AE5B8C: FLdPr var_8C
  loc_AE5B8F: from_stack_1v = clsimputacion.RsFrmGet()
  loc_AE5B94: FLdPr var_98
  loc_AE5B97:  = Me.Fields
  loc_AE5B9C: FLdPr var_9C
  loc_AE5B9F: from_stack_2 = Me.Item(from_stack_1)
  loc_AE5BA4: LitI2_Byte 0
  loc_AE5BA6: LitVar_Missing var_E4
  loc_AE5BA9: LitI2_Byte 0
  loc_AE5BAB: FLdZeroAd var_B0
  loc_AE5BAE: CVarAd
  loc_AE5BB2: PopAdLdVar
  loc_AE5BB3: FLdPr Me
  loc_AE5BB6: MemLdI2 global_128
  loc_AE5BB9: CI4UI1
  loc_AE5BBA: FMemLdR4 arg_C(0)
  loc_AE5BBF: AryLock
  loc_AE5BC2: Ary1LdPr
  loc_AE5BC3: MemLdRfVar from_stack_1.global_4
  loc_AE5BC6: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AE5BCB: AryUnlock
  loc_AE5BCE: FFreeAd var_98 = ""
  loc_AE5BD5: FFreeVar var_C4 = ""
  loc_AE5BDC: FLdRfVar var_B0
  loc_AE5BDF: LitVarStr var_AC, "AutoAuto"
  loc_AE5BE4: PopAdLdVar
  loc_AE5BE5: FLdRfVar var_9C
  loc_AE5BE8: FLdRfVar var_98
  loc_AE5BEB: FLdPr var_8C
  loc_AE5BEE: from_stack_1v = clsimputacion.RsFrmGet()
  loc_AE5BF3: FLdPr var_98
  loc_AE5BF6:  = Me.Fields
  loc_AE5BFB: FLdPr var_9C
  loc_AE5BFE: from_stack_2 = Me.Item(from_stack_1)
  loc_AE5C03: LitI2_Byte 0
  loc_AE5C05: FMemLdRf unk_489661
  loc_AE5C0A: CVarRef
  loc_AE5C0F: LitI2_Byte &HFF
  loc_AE5C11: FLdZeroAd var_B0
  loc_AE5C14: CVarAd
  loc_AE5C18: PopAdLdVar
  loc_AE5C19: FLdPr Me
  loc_AE5C1C: MemLdI2 global_128
  loc_AE5C1F: CI4UI1
  loc_AE5C20: FMemLdR4 arg_C(0)
  loc_AE5C25: AryLock
  loc_AE5C28: Ary1LdPr
  loc_AE5C29: MemLdRfVar from_stack_1.global_8
  loc_AE5C2C: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AE5C31: AryUnlock
  loc_AE5C34: FFreeAd var_98 = ""
  loc_AE5C3B: FFree1Var var_C4 = ""
  loc_AE5C3E: FLdRfVar var_B0
  loc_AE5C41: LitVarStr var_AC, "AumeAuto"
  loc_AE5C46: PopAdLdVar
  loc_AE5C47: FLdRfVar var_9C
  loc_AE5C4A: FLdRfVar var_98
  loc_AE5C4D: FLdPr var_8C
  loc_AE5C50: from_stack_1v = clsimputacion.RsFrmGet()
  loc_AE5C55: FLdPr var_98
  loc_AE5C58:  = Me.Fields
  loc_AE5C5D: FLdPr var_9C
  loc_AE5C60: from_stack_2 = Me.Item(from_stack_1)
  loc_AE5C65: LitI2_Byte 0
  loc_AE5C67: FMemLdRf unk_489661
  loc_AE5C6C: CVarRef
  loc_AE5C71: LitI2_Byte &HFF
  loc_AE5C73: FLdZeroAd var_B0
  loc_AE5C76: CVarAd
  loc_AE5C7A: PopAdLdVar
  loc_AE5C7B: FLdPr Me
  loc_AE5C7E: MemLdI2 global_128
  loc_AE5C81: CI4UI1
  loc_AE5C82: FMemLdR4 arg_C(0)
  loc_AE5C87: AryLock
  loc_AE5C8A: Ary1LdPr
  loc_AE5C8B: MemLdRfVar from_stack_1.global_12
  loc_AE5C8E: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AE5C93: AryUnlock
  loc_AE5C96: FFreeAd var_98 = ""
  loc_AE5C9D: FFree1Var var_C4 = ""
  loc_AE5CA0: FLdRfVar var_B0
  loc_AE5CA3: LitVarStr var_AC, "DismAuto"
  loc_AE5CA8: PopAdLdVar
  loc_AE5CA9: FLdRfVar var_9C
  loc_AE5CAC: FLdRfVar var_98
  loc_AE5CAF: FLdPr var_8C
  loc_AE5CB2: from_stack_1v = clsimputacion.RsFrmGet()
  loc_AE5CB7: FLdPr var_98
  loc_AE5CBA:  = Me.Fields
  loc_AE5CBF: FLdPr var_9C
  loc_AE5CC2: from_stack_2 = Me.Item(from_stack_1)
  loc_AE5CC7: LitI2_Byte 0
  loc_AE5CC9: FMemLdRf unk_489661
  loc_AE5CCE: CVarRef
  loc_AE5CD3: LitI2_Byte &HFF
  loc_AE5CD5: FLdZeroAd var_B0
  loc_AE5CD8: CVarAd
  loc_AE5CDC: PopAdLdVar
  loc_AE5CDD: FLdPr Me
  loc_AE5CE0: MemLdI2 global_128
  loc_AE5CE3: CI4UI1
  loc_AE5CE4: FMemLdR4 arg_C(0)
  loc_AE5CE9: AryLock
  loc_AE5CEC: Ary1LdPr
  loc_AE5CED: MemLdRfVar from_stack_1.global_16
  loc_AE5CF0: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AE5CF5: AryUnlock
  loc_AE5CF8: FFreeAd var_98 = ""
  loc_AE5CFF: FFree1Var var_C4 = ""
  loc_AE5D02: FLdRfVar var_C4
  loc_AE5D05: FLdRfVar var_B0
  loc_AE5D08: LitVarStr var_AC, "AutoAuto"
  loc_AE5D0D: PopAdLdVar
  loc_AE5D0E: FLdRfVar var_9C
  loc_AE5D11: FLdRfVar var_98
  loc_AE5D14: FLdPr var_8C
  loc_AE5D17: from_stack_1v = clsimputacion.RsFrmGet()
  loc_AE5D1C: FLdPr var_98
  loc_AE5D1F:  = Me.Fields
  loc_AE5D24: FLdPr var_9C
  loc_AE5D27: from_stack_2 = Me.Item(from_stack_1)
  loc_AE5D2C: FLdPr var_B0
  loc_AE5D2F:  = Me.Value
  loc_AE5D34: LitI4 2
  loc_AE5D39: FLdRfVar var_C4
  loc_AE5D3C: FnCDblVar
  loc_AE5D3E: CVarR8
  loc_AE5D42: FLdRfVar var_F4
  loc_AE5D45: ImpAdCallFPR4  = Round(, )
  loc_AE5D4A: FLdRfVar var_120
  loc_AE5D4D: FLdRfVar var_110
  loc_AE5D50: LitVarStr var_10C, "AumeAuto"
  loc_AE5D55: PopAdLdVar
  loc_AE5D56: FLdRfVar var_FC
  loc_AE5D59: FLdRfVar var_F8
  loc_AE5D5C: FLdPr var_8C
  loc_AE5D5F: from_stack_1v = clsimputacion.RsFrmGet()
  loc_AE5D64: FLdPr var_F8
  loc_AE5D67:  = Me.Fields
  loc_AE5D6C: FLdPr var_FC
  loc_AE5D6F: from_stack_2 = Me.Item(from_stack_1)
  loc_AE5D74: FLdPr var_110
  loc_AE5D77:  = Me.Value
  loc_AE5D7C: LitI4 2
  loc_AE5D81: FLdRfVar var_120
  loc_AE5D84: FnCDblVar
  loc_AE5D86: CVarR8
  loc_AE5D8A: FLdRfVar var_150
  loc_AE5D8D: ImpAdCallFPR4  = Round(, )
  loc_AE5D92: FLdRfVar var_18C
  loc_AE5D95: FLdRfVar var_17C
  loc_AE5D98: LitVarStr var_178, "DismAuto"
  loc_AE5D9D: PopAdLdVar
  loc_AE5D9E: FLdRfVar var_168
  loc_AE5DA1: FLdRfVar var_164
  loc_AE5DA4: FLdPr var_8C
  loc_AE5DA7: from_stack_1v = clsimputacion.RsFrmGet()
  loc_AE5DAC: FLdPr var_164
  loc_AE5DAF:  = Me.Fields
  loc_AE5DB4: FLdPr var_168
  loc_AE5DB7: from_stack_2 = Me.Item(from_stack_1)
  loc_AE5DBC: FLdPr var_17C
  loc_AE5DBF:  = Me.Value
  loc_AE5DC4: LitI4 2
  loc_AE5DC9: FLdRfVar var_18C
  loc_AE5DCC: FnCDblVar
  loc_AE5DCE: CVarR8
  loc_AE5DD2: FLdRfVar var_1BC
  loc_AE5DD5: ImpAdCallFPR4  = Round(, )
  loc_AE5DDA: LitI2_Byte 0
  loc_AE5DDC: FMemLdRf unk_489661
  loc_AE5DE1: CVarRef
  loc_AE5DE6: LitI2_Byte &HFF
  loc_AE5DE8: FLdRfVar var_F4
  loc_AE5DEB: FLdRfVar var_150
  loc_AE5DEE: AddVar var_160
  loc_AE5DF2: FLdRfVar var_1BC
  loc_AE5DF5: SubVar var_1CC
  loc_AE5DF9: PopAdLdVar
  loc_AE5DFA: FLdPr Me
  loc_AE5DFD: MemLdI2 global_128
  loc_AE5E00: CI4UI1
  loc_AE5E01: FMemLdR4 arg_C(0)
  loc_AE5E06: AryLock
  loc_AE5E09: Ary1LdPr
  loc_AE5E0A: MemLdRfVar from_stack_1.global_20
  loc_AE5E0D: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AE5E12: AryUnlock
  loc_AE5E15: FFreeAd var_98 = "": var_9C = "": var_B0 = "": var_F8 = "": var_FC = "": var_110 = "": var_164 = "": var_168 = ""
  loc_AE5E2A: FFreeVar var_C4 = "": var_E4 = "": var_120 = "": var_140 = "": var_F4 = "": var_150 = "": var_18C = "": var_1AC = "": var_160 = ""
  loc_AE5E41: FLdRfVar var_B0
  loc_AE5E44: LitVarStr var_AC, "PrevImpu"
  loc_AE5E49: PopAdLdVar
  loc_AE5E4A: FLdRfVar var_9C
  loc_AE5E4D: FLdRfVar var_98
  loc_AE5E50: FLdPr var_8C
  loc_AE5E53: from_stack_1v = clsimputacion.RsFrmGet()
  loc_AE5E58: FLdPr var_98
  loc_AE5E5B:  = Me.Fields
  loc_AE5E60: FLdPr var_9C
  loc_AE5E63: from_stack_2 = Me.Item(from_stack_1)
  loc_AE5E68: LitI2_Byte 0
  loc_AE5E6A: FMemLdRf unk_489661
  loc_AE5E6F: CVarRef
  loc_AE5E74: LitI2_Byte &HFF
  loc_AE5E76: FLdZeroAd var_B0
  loc_AE5E79: CVarAd
  loc_AE5E7D: PopAdLdVar
  loc_AE5E7E: FLdPr Me
  loc_AE5E81: MemLdI2 global_128
  loc_AE5E84: CI4UI1
  loc_AE5E85: FMemLdR4 arg_C(0)
  loc_AE5E8A: AryLock
  loc_AE5E8D: Ary1LdPr
  loc_AE5E8E: MemLdRfVar from_stack_1.global_24
  loc_AE5E91: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AE5E96: AryUnlock
  loc_AE5E99: FFreeAd var_98 = ""
  loc_AE5EA0: FFree1Var var_C4 = ""
  loc_AE5EA3: LitI4 2
  loc_AE5EA8: FLdPr Me
  loc_AE5EAB: MemLdI2 global_128
  loc_AE5EAE: CI4UI1
  loc_AE5EAF: FMemLdR4 arg_C(0)
  loc_AE5EB4: Ary1LdPr
  loc_AE5EB5: MemLdStr global_20
  loc_AE5EB8: CR8Str
  loc_AE5EBA: CVarR8
  loc_AE5EBE: FLdRfVar var_E4
  loc_AE5EC1: ImpAdCallFPR4  = Round(, )
  loc_AE5EC6: LitI4 2
  loc_AE5ECB: FLdPr Me
  loc_AE5ECE: MemLdI2 global_128
  loc_AE5ED1: CI4UI1
  loc_AE5ED2: FMemLdR4 arg_C(0)
  loc_AE5ED7: Ary1LdPr
  loc_AE5ED8: MemLdStr global_24
  loc_AE5EDB: CR8Str
  loc_AE5EDD: CVarR8
  loc_AE5EE1: FLdRfVar var_120
  loc_AE5EE4: ImpAdCallFPR4  = Round(, )
  loc_AE5EE9: LitI2_Byte 0
  loc_AE5EEB: FMemLdRf unk_489661
  loc_AE5EF0: CVarRef
  loc_AE5EF5: LitI2_Byte &HFF
  loc_AE5EF7: FLdRfVar var_E4
  loc_AE5EFA: FLdRfVar var_120
  loc_AE5EFD: SubVar var_140
  loc_AE5F01: PopAdLdVar
  loc_AE5F02: FLdPr Me
  loc_AE5F05: MemLdI2 global_128
  loc_AE5F08: CI4UI1
  loc_AE5F09: FMemLdR4 arg_C(0)
  loc_AE5F0E: AryLock
  loc_AE5F11: Ary1LdPr
  loc_AE5F12: MemLdRfVar from_stack_1.global_28
  loc_AE5F15: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AE5F1A: AryUnlock
  loc_AE5F1D: FFreeVar var_C4 = "": var_F4 = "": var_E4 = ""
  loc_AE5F28: FLdRfVar var_B0
  loc_AE5F2B: LitVarStr var_AC, "Prevfutu"
  loc_AE5F30: PopAdLdVar
  loc_AE5F31: FLdRfVar var_9C
  loc_AE5F34: FLdRfVar var_98
  loc_AE5F37: FLdPr var_8C
  loc_AE5F3A: from_stack_1v = clsimputacion.RsFrmGet()
  loc_AE5F3F: FLdPr var_98
  loc_AE5F42:  = Me.Fields
  loc_AE5F47: FLdPr var_9C
  loc_AE5F4A: from_stack_2 = Me.Item(from_stack_1)
  loc_AE5F4F: LitI2_Byte 0
  loc_AE5F51: FMemLdRf unk_489661
  loc_AE5F56: CVarRef
  loc_AE5F5B: LitI2_Byte &HFF
  loc_AE5F5D: FLdZeroAd var_B0
  loc_AE5F60: CVarAd
  loc_AE5F64: PopAdLdVar
  loc_AE5F65: FLdPr Me
  loc_AE5F68: MemLdI2 global_128
  loc_AE5F6B: CI4UI1
  loc_AE5F6C: FMemLdR4 arg_C(0)
  loc_AE5F71: AryLock
  loc_AE5F74: Ary1LdPr
  loc_AE5F75: MemLdRfVar from_stack_1.global_32
  loc_AE5F78: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AE5F7D: AryUnlock
  loc_AE5F80: FFreeAd var_98 = ""
  loc_AE5F87: FFree1Var var_C4 = ""
  loc_AE5F8A: LitI4 2
  loc_AE5F8F: FLdPr Me
  loc_AE5F92: MemLdI2 global_128
  loc_AE5F95: CI4UI1
  loc_AE5F96: FMemLdR4 arg_C(0)
  loc_AE5F9B: Ary1LdPr
  loc_AE5F9C: MemLdStr global_28
  loc_AE5F9F: CR8Str
  loc_AE5FA1: CVarR8
  loc_AE5FA5: FLdRfVar var_E4
  loc_AE5FA8: ImpAdCallFPR4  = Round(, )
  loc_AE5FAD: LitI4 2
  loc_AE5FB2: FLdPr Me
  loc_AE5FB5: MemLdI2 global_128
  loc_AE5FB8: CI4UI1
  loc_AE5FB9: FMemLdR4 arg_C(0)
  loc_AE5FBE: Ary1LdPr
  loc_AE5FBF: MemLdStr global_32
  loc_AE5FC2: CR8Str
  loc_AE5FC4: CVarR8
  loc_AE5FC8: FLdRfVar var_120
  loc_AE5FCB: ImpAdCallFPR4  = Round(, )
  loc_AE5FD0: LitI2_Byte 0
  loc_AE5FD2: FMemLdRf unk_489661
  loc_AE5FD7: CVarRef
  loc_AE5FDC: LitI2_Byte &HFF
  loc_AE5FDE: FLdRfVar var_E4
  loc_AE5FE1: FLdRfVar var_120
  loc_AE5FE4: SubVar var_140
  loc_AE5FE8: PopAdLdVar
  loc_AE5FE9: FLdPr Me
  loc_AE5FEC: MemLdI2 global_128
  loc_AE5FEF: CI4UI1
  loc_AE5FF0: FMemLdR4 arg_C(0)
  loc_AE5FF5: AryLock
  loc_AE5FF8: Ary1LdPr
  loc_AE5FF9: MemLdRfVar from_stack_1.global_36
  loc_AE5FFC: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AE6001: AryUnlock
  loc_AE6004: FFreeVar var_C4 = "": var_F4 = "": var_E4 = ""
  loc_AE600F: FLdPr var_8C
  loc_AE6012: Call clsimputacion.MoveSiguiente()
  loc_AE6017: FLdPr Me
  loc_AE601A: MemLdRfVar from_stack_1.global_128
  loc_AE601D: NextI2 var_94, loc_AE5B1E
  loc_AE6022: LitNothing
  loc_AE6024: FStAd var_8C 
  loc_AE6028: ILdRf arg_C
  loc_AE602B: FStR4 var_1E0
  loc_AE602E: LitI2_Byte 0
  loc_AE6030: FLdPr Me
  loc_AE6033: MemLdRfVar from_stack_1.global_96
  loc_AE6036: CVarRef
  loc_AE603B: LitI2_Byte &HFF
  loc_AE603D: FMemLdR4 var_1E0(12)
  loc_AE6042: CVarStr var_AC
  loc_AE6045: PopAdLdVar
  loc_AE6046: FLdRfVar var_88
  loc_AE6049: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AE604E: LitI2_Byte 0
  loc_AE6050: FLdPr Me
  loc_AE6053: MemLdRfVar from_stack_1.global_100
  loc_AE6056: CVarRef
  loc_AE605B: LitI2_Byte &HFF
  loc_AE605D: FMemLdR4 var_1E0(16)
  loc_AE6062: CVarStr var_AC
  loc_AE6065: PopAdLdVar
  loc_AE6066: FLdRfVar var_88
  loc_AE6069: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AE606E: LitI2_Byte 0
  loc_AE6070: FLdPr Me
  loc_AE6073: MemLdRfVar from_stack_1.global_104
  loc_AE6076: CVarRef
  loc_AE607B: LitI2_Byte &HFF
  loc_AE607D: FMemLdR4 var_1E0(20)
  loc_AE6082: CVarStr var_AC
  loc_AE6085: PopAdLdVar
  loc_AE6086: FLdRfVar var_88
  loc_AE6089: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AE608E: LitI2_Byte 0
  loc_AE6090: FLdPr Me
  loc_AE6093: MemLdRfVar from_stack_1.global_108
  loc_AE6096: CVarRef
  loc_AE609B: LitI2_Byte &HFF
  loc_AE609D: FMemLdR4 var_1E0(24)
  loc_AE60A2: CVarStr var_AC
  loc_AE60A5: PopAdLdVar
  loc_AE60A6: FLdRfVar var_88
  loc_AE60A9: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AE60AE: LitI2_Byte 0
  loc_AE60B0: FLdPr Me
  loc_AE60B3: MemLdRfVar from_stack_1.global_112
  loc_AE60B6: CVarRef
  loc_AE60BB: LitI2_Byte &HFF
  loc_AE60BD: FMemLdR4 var_1E0(28)
  loc_AE60C2: CVarStr var_AC
  loc_AE60C5: PopAdLdVar
  loc_AE60C6: FLdRfVar var_88
  loc_AE60C9: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AE60CE: LitI2_Byte 0
  loc_AE60D0: FLdPr Me
  loc_AE60D3: MemLdRfVar from_stack_1.global_116
  loc_AE60D6: CVarRef
  loc_AE60DB: LitI2_Byte &HFF
  loc_AE60DD: FMemLdR4 var_1E0(32)
  loc_AE60E2: CVarStr var_AC
  loc_AE60E5: PopAdLdVar
  loc_AE60E6: FLdRfVar var_88
  loc_AE60E9: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AE60EE: LitI2_Byte 0
  loc_AE60F0: FLdPr Me
  loc_AE60F3: MemLdRfVar from_stack_1.global_120
  loc_AE60F6: CVarRef
  loc_AE60FB: LitI2_Byte &HFF
  loc_AE60FD: FMemLdR4 var_1E0(36)
  loc_AE6102: CVarStr var_AC
  loc_AE6105: PopAdLdVar
  loc_AE6106: FLdRfVar var_88
  loc_AE6109: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AE610E: LitI2_Byte 0
  loc_AE6110: FLdPr Me
  loc_AE6113: MemLdRfVar from_stack_1.global_124
  loc_AE6116: CVarRef
  loc_AE611B: LitI2_Byte &HFF
  loc_AE611D: FMemLdR4 var_1E0(40)
  loc_AE6122: CVarStr var_AC
  loc_AE6125: PopAdLdVar
  loc_AE6126: FLdRfVar var_88
  loc_AE6129: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AE612E: LitI4 0
  loc_AE6133: FStR4 var_1E0
  loc_AE6136: ExitProcHresult
End Function

Private Function Proc_237_30_A3C400(arg_C) 'A3C400
  'Data Table: 489654
  loc_A3C1C8: LitI2_Byte 1
  loc_A3C1CA: FLdPr Me
  loc_A3C1CD: MemLdRfVar from_stack_1.global_128
  loc_A3C1D0: FLdI2 arg_C
  loc_A3C1D3: CI4UI1
  loc_A3C1D4: FLdPr Me
  loc_A3C1D7: MemLdStr global_140
  loc_A3C1DA: Ary1LdPr
  loc_A3C1DB: MemLdStr global_0
  loc_A3C1DE: LitI2_Byte 1
  loc_A3C1E0: FnUBound
  loc_A3C1E2: CI2I4
  loc_A3C1E3: ForI2 var_88
  loc_A3C1E9: FLdPr Me
  loc_A3C1EC: MemLdI2 global_128
  loc_A3C1EF: CI4UI1
  loc_A3C1F0: FLdI2 arg_C
  loc_A3C1F3: CI4UI1
  loc_A3C1F4: FLdPr Me
  loc_A3C1F7: MemLdStr global_140
  loc_A3C1FA: AryLock
  loc_A3C1FD: Ary1LdPr
  loc_A3C1FE: MemLdStr global_0
  loc_A3C201: AryLock
  loc_A3C204: Ary1LdRf
  loc_A3C205: FStR4 var_94
  loc_A3C208: LitVarStr var_A4, "    <tr valign=""top"" class=""LineaDato"">"
  loc_A3C20D: PopAdLdVar
  loc_A3C20E: FLdPr Me
  loc_A3C211: MemLdRfVar from_stack_1.htmFile
  loc_A3C214: LdPrVar
  loc_A3C216: LateMemCall
  loc_A3C21C: LitI4 0
  loc_A3C221: LitI4 0
  loc_A3C226: LitI2_Byte 0
  loc_A3C228: LitStr "left"
  loc_A3C22B: FMemLdR4 var_94(0)
  loc_A3C230: LitStr " - "
  loc_A3C233: ConcatStr
  loc_A3C234: FStStrNoPop var_B8
  loc_A3C237: FMemLdR4 var_94(4)
  loc_A3C23C: ConcatStr
  loc_A3C23D: FStStrNoPop var_BC
  loc_A3C240: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A3C245: CVarStr var_CC
  loc_A3C248: PopAdLdVar
  loc_A3C249: FLdPr Me
  loc_A3C24C: MemLdRfVar from_stack_1.htmFile
  loc_A3C24F: LdPrVar
  loc_A3C251: LateMemCall
  loc_A3C257: FFreeStr var_B8 = ""
  loc_A3C25E: FFree1Var var_CC = ""
  loc_A3C261: LitI4 0
  loc_A3C266: LitI4 0
  loc_A3C26B: LitI2_Byte 0
  loc_A3C26D: LitStr "right"
  loc_A3C270: FMemLdR4 var_94(8)
  loc_A3C275: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A3C27A: CVarStr var_CC
  loc_A3C27D: PopAdLdVar
  loc_A3C27E: FLdPr Me
  loc_A3C281: MemLdRfVar from_stack_1.htmFile
  loc_A3C284: LdPrVar
  loc_A3C286: LateMemCall
  loc_A3C28C: FFree1Var var_CC = ""
  loc_A3C28F: LitI4 0
  loc_A3C294: LitI4 0
  loc_A3C299: LitI2_Byte 0
  loc_A3C29B: LitStr "right"
  loc_A3C29E: FMemLdR4 var_94(12)
  loc_A3C2A3: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A3C2A8: CVarStr var_CC
  loc_A3C2AB: PopAdLdVar
  loc_A3C2AC: FLdPr Me
  loc_A3C2AF: MemLdRfVar from_stack_1.htmFile
  loc_A3C2B2: LdPrVar
  loc_A3C2B4: LateMemCall
  loc_A3C2BA: FFree1Var var_CC = ""
  loc_A3C2BD: LitI4 0
  loc_A3C2C2: LitI4 0
  loc_A3C2C7: LitI2_Byte 0
  loc_A3C2C9: LitStr "right"
  loc_A3C2CC: FMemLdR4 var_94(16)
  loc_A3C2D1: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A3C2D6: CVarStr var_CC
  loc_A3C2D9: PopAdLdVar
  loc_A3C2DA: FLdPr Me
  loc_A3C2DD: MemLdRfVar from_stack_1.htmFile
  loc_A3C2E0: LdPrVar
  loc_A3C2E2: LateMemCall
  loc_A3C2E8: FFree1Var var_CC = ""
  loc_A3C2EB: LitI4 0
  loc_A3C2F0: LitI4 0
  loc_A3C2F5: LitI2_Byte 0
  loc_A3C2F7: LitStr "right"
  loc_A3C2FA: FMemLdR4 var_94(20)
  loc_A3C2FF: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A3C304: CVarStr var_CC
  loc_A3C307: PopAdLdVar
  loc_A3C308: FLdPr Me
  loc_A3C30B: MemLdRfVar from_stack_1.htmFile
  loc_A3C30E: LdPrVar
  loc_A3C310: LateMemCall
  loc_A3C316: FFree1Var var_CC = ""
  loc_A3C319: LitI4 0
  loc_A3C31E: LitI4 0
  loc_A3C323: LitI2_Byte 0
  loc_A3C325: LitStr "right"
  loc_A3C328: FMemLdR4 var_94(24)
  loc_A3C32D: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A3C332: CVarStr var_CC
  loc_A3C335: PopAdLdVar
  loc_A3C336: FLdPr Me
  loc_A3C339: MemLdRfVar from_stack_1.htmFile
  loc_A3C33C: LdPrVar
  loc_A3C33E: LateMemCall
  loc_A3C344: FFree1Var var_CC = ""
  loc_A3C347: LitI4 0
  loc_A3C34C: LitI4 0
  loc_A3C351: LitI2_Byte 0
  loc_A3C353: LitStr "right"
  loc_A3C356: FMemLdR4 var_94(28)
  loc_A3C35B: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A3C360: CVarStr var_CC
  loc_A3C363: PopAdLdVar
  loc_A3C364: FLdPr Me
  loc_A3C367: MemLdRfVar from_stack_1.htmFile
  loc_A3C36A: LdPrVar
  loc_A3C36C: LateMemCall
  loc_A3C372: FFree1Var var_CC = ""
  loc_A3C375: LitI4 0
  loc_A3C37A: LitI4 0
  loc_A3C37F: LitI2_Byte 0
  loc_A3C381: LitStr "right"
  loc_A3C384: FMemLdR4 var_94(32)
  loc_A3C389: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A3C38E: CVarStr var_CC
  loc_A3C391: PopAdLdVar
  loc_A3C392: FLdPr Me
  loc_A3C395: MemLdRfVar from_stack_1.htmFile
  loc_A3C398: LdPrVar
  loc_A3C39A: LateMemCall
  loc_A3C3A0: FFree1Var var_CC = ""
  loc_A3C3A3: LitI4 0
  loc_A3C3A8: LitI4 0
  loc_A3C3AD: LitI2_Byte 0
  loc_A3C3AF: LitStr "right"
  loc_A3C3B2: FMemLdR4 var_94(36)
  loc_A3C3B7: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A3C3BC: CVarStr var_CC
  loc_A3C3BF: PopAdLdVar
  loc_A3C3C0: FLdPr Me
  loc_A3C3C3: MemLdRfVar from_stack_1.htmFile
  loc_A3C3C6: LdPrVar
  loc_A3C3C8: LateMemCall
  loc_A3C3CE: FFree1Var var_CC = ""
  loc_A3C3D1: LitI4 0
  loc_A3C3D6: FStR4 var_94
  loc_A3C3D9: AryUnlock
  loc_A3C3DC: AryUnlock
  loc_A3C3DF: LitVarStr var_A4, "     </tr>"
  loc_A3C3E4: PopAdLdVar
  loc_A3C3E5: FLdPr Me
  loc_A3C3E8: MemLdRfVar from_stack_1.htmFile
  loc_A3C3EB: LdPrVar
  loc_A3C3ED: LateMemCall
  loc_A3C3F3: FLdPr Me
  loc_A3C3F6: MemLdRfVar from_stack_1.global_128
  loc_A3C3F9: NextI2 var_88, loc_A3C1E9
  loc_A3C3FE: ExitProcHresult
End Function

Private Function Proc_237_31_A949D0() 'A949D0
  'Data Table: 489654
  loc_A94534: LitVarStr var_94, "<html>"
  loc_A94539: PopAdLdVar
  loc_A9453A: FLdPr Me
  loc_A9453D: MemLdRfVar from_stack_1.htmFile
  loc_A94540: LdPrVar
  loc_A94542: LateMemCall
  loc_A94548: LitVarStr var_94, "<head>"
  loc_A9454D: PopAdLdVar
  loc_A9454E: FLdPr Me
  loc_A94551: MemLdRfVar from_stack_1.htmFile
  loc_A94554: LdPrVar
  loc_A94556: LateMemCall
  loc_A9455C: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_A94561: PopAdLdVar
  loc_A94562: FLdPr Me
  loc_A94565: MemLdRfVar from_stack_1.htmFile
  loc_A94568: LdPrVar
  loc_A9456A: LateMemCall
  loc_A94570: LitStr "<title>"
  loc_A94573: FLdRfVar var_A8
  loc_A94576: FLdPr Me
  loc_A94579:  = Me.Caption
  loc_A9457E: ILdRf var_A8
  loc_A94581: ConcatStr
  loc_A94582: FStStrNoPop var_AC
  loc_A94585: LitStr "</title>"
  loc_A94588: ConcatStr
  loc_A94589: CVarStr var_BC
  loc_A9458C: PopAdLdVar
  loc_A9458D: FLdPr Me
  loc_A94590: MemLdRfVar from_stack_1.htmFile
  loc_A94593: LdPrVar
  loc_A94595: LateMemCall
  loc_A9459B: FFreeStr var_A8 = ""
  loc_A945A2: FFree1Var var_BC = ""
  loc_A945A5: LitStr vbNullString
  loc_A945A8: ILdRf Me
  loc_A945AB: CastAd
  loc_A945AE: FStAdFunc var_C0
  loc_A945B1: FLdRfVar var_C0
  loc_A945B4: ImpAdCallFPR4 Proc_263_23_B3DAB8(, )
  loc_A945B9: FFree1Ad var_C0
  loc_A945BC: LitI4 0
  loc_A945C1: FStStrCopy var_AC
  loc_A945C4: FLdRfVar var_AC
  loc_A945C7: LitI4 0
  loc_A945CC: FStStrCopy var_A8
  loc_A945CF: FLdRfVar var_A8
  loc_A945D2: LitI2_Byte &HFF
  loc_A945D4: PopTmpLdAd2 var_C2
  loc_A945D7: FLdPr Me
  loc_A945DA: MemLdRfVar from_stack_1.htmFile
  loc_A945DD: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_A945E2: FFreeStr var_A8 = ""
  loc_A945E9: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_A945EE: PopAdLdVar
  loc_A945EF: FLdPr Me
  loc_A945F2: MemLdRfVar from_stack_1.htmFile
  loc_A945F5: LdPrVar
  loc_A945F7: LateMemCall
  loc_A945FD: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_A94602: PopAdLdVar
  loc_A94603: FLdPr Me
  loc_A94606: MemLdRfVar from_stack_1.htmFile
  loc_A94609: LdPrVar
  loc_A9460B: LateMemCall
  loc_A94611: LitVarStr var_A4, "    <th width=""100" & Chr(37) & """ align=""center"" valign=""bottom""><p><img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br><br>"
  loc_A94616: LitVarStr var_94, "Municipalidad de Guaymallén"
  loc_A9461B: FStVarCopyObj var_BC
  loc_A9461E: FLdRfVar var_BC
  loc_A94621: FLdRfVar var_D4
  loc_A94624: ImpAdCallFPR4  = Ucase()
  loc_A94629: FLdRfVar var_D4
  loc_A9462C: ConcatVar var_E4
  loc_A94630: LitVarStr var_F4, "</p>"
  loc_A94635: ConcatVar var_104
  loc_A94639: PopAdLdVar
  loc_A9463A: FLdPr Me
  loc_A9463D: MemLdRfVar from_stack_1.htmFile
  loc_A94640: LdPrVar
  loc_A94642: LateMemCall
  loc_A94648: FFreeVar var_BC = "": var_D4 = "": var_E4 = ""
  loc_A94653: LitStr "    <p>"
  loc_A94656: FLdRfVar var_A8
  loc_A94659: FLdPr Me
  loc_A9465C:  = Me.Caption
  loc_A94661: ILdRf var_A8
  loc_A94664: ConcatStr
  loc_A94665: FStStrNoPop var_AC
  loc_A94668: LitStr "</p></th>"
  loc_A9466B: ConcatStr
  loc_A9466C: CVarStr var_BC
  loc_A9466F: PopAdLdVar
  loc_A94670: FLdPr Me
  loc_A94673: MemLdRfVar from_stack_1.htmFile
  loc_A94676: LdPrVar
  loc_A94678: LateMemCall
  loc_A9467E: FFreeStr var_A8 = ""
  loc_A94685: FFree1Var var_BC = ""
  loc_A94688: LitVarStr var_94, "  </tr>"
  loc_A9468D: PopAdLdVar
  loc_A9468E: FLdPr Me
  loc_A94691: MemLdRfVar from_stack_1.htmFile
  loc_A94694: LdPrVar
  loc_A94696: LateMemCall
  loc_A9469C: LitVarStr var_94, "  <tr>"
  loc_A946A1: PopAdLdVar
  loc_A946A2: FLdPr Me
  loc_A946A5: MemLdRfVar from_stack_1.htmFile
  loc_A946A8: LdPrVar
  loc_A946AA: LateMemCall
  loc_A946B0: LitVarStr var_94, "    <th><hr></th>"
  loc_A946B5: PopAdLdVar
  loc_A946B6: FLdPr Me
  loc_A946B9: MemLdRfVar from_stack_1.htmFile
  loc_A946BC: LdPrVar
  loc_A946BE: LateMemCall
  loc_A946C4: LitVarStr var_94, "  </tr>"
  loc_A946C9: PopAdLdVar
  loc_A946CA: FLdPr Me
  loc_A946CD: MemLdRfVar from_stack_1.htmFile
  loc_A946D0: LdPrVar
  loc_A946D2: LateMemCall
  loc_A946D8: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_A946DD: PopAdLdVar
  loc_A946DE: FLdPr Me
  loc_A946E1: MemLdRfVar from_stack_1.htmFile
  loc_A946E4: LdPrVar
  loc_A946E6: LateMemCall
  loc_A946EC: LitVarStr var_94, "    <th align=""left"" valign=""bottom""><p>"
  loc_A946F1: PopAdLdVar
  loc_A946F2: FLdPr Me
  loc_A946F5: MemLdRfVar from_stack_1.htmFile
  loc_A946F8: LdPrVar
  loc_A946FA: LateMemCall
  loc_A94700: LitStr "    Periodo: <span class=""Normal"">"
  loc_A94703: FLdRfVar var_A8
  loc_A94706: FLdPr Me
  loc_A94709: VCallAd Control_ID_cboPeriodo
  loc_A9470C: FStAdFunc var_C0
  loc_A9470F: FLdPr var_C0
  loc_A94712:  = Me.Text
  loc_A94717: ILdRf var_A8
  loc_A9471A: ConcatStr
  loc_A9471B: FStStrNoPop var_AC
  loc_A9471E: LitStr "</span><br>"
  loc_A94721: ConcatStr
  loc_A94722: CVarStr var_BC
  loc_A94725: PopAdLdVar
  loc_A94726: FLdPr Me
  loc_A94729: MemLdRfVar from_stack_1.htmFile
  loc_A9472C: LdPrVar
  loc_A9472E: LateMemCall
  loc_A94734: FFreeStr var_A8 = ""
  loc_A9473B: FFree1Ad var_C0
  loc_A9473E: FFree1Var var_BC = ""
  loc_A94741: LitStr "    Hasta: <span class=""Normal"">"
  loc_A94744: FLdPr Me
  loc_A94747: VCallAd Control_ID_mskHasta
  loc_A9474A: FStAdFunc var_C0
  loc_A9474D: FLdPr var_C0
  loc_A94750: LateIdLdVar var_BC DispID_15 0
  loc_A94757: CStrVarTmp
  loc_A94758: FStStrNoPop var_A8
  loc_A9475B: ConcatStr
  loc_A9475C: FStStrNoPop var_AC
  loc_A9475F: LitStr "</span><br>"
  loc_A94762: ConcatStr
  loc_A94763: CVarStr var_D4
  loc_A94766: PopAdLdVar
  loc_A94767: FLdPr Me
  loc_A9476A: MemLdRfVar from_stack_1.htmFile
  loc_A9476D: LdPrVar
  loc_A9476F: LateMemCall
  loc_A94775: FFreeStr var_A8 = ""
  loc_A9477C: FFree1Ad var_C0
  loc_A9477F: FFreeVar var_BC = ""
  loc_A94786: FLdRfVar var_C2
  loc_A94789: FLdPr Me
  loc_A9478C: VCallAd Control_ID_chkNotCodiPart
  loc_A9478F: FStAdFunc var_C0
  loc_A94792: FLdPr var_C0
  loc_A94795:  = Me.Value
  loc_A9479A: FLdI2 var_C2
  loc_A9479D: CI4UI1
  loc_A9479E: LitI4 0
  loc_A947A3: EqI4
  loc_A947A4: FFree1Ad var_C0
  loc_A947A7: BranchF loc_A947F2
  loc_A947AA: LitStr "    Partidas que comienzan con: <span class=""Normal"">"
  loc_A947AD: FLdPr Me
  loc_A947B0: VCallAd Control_ID_CodiPartMsk
  loc_A947B3: FStAdFunc var_C0
  loc_A947B6: FLdPr var_C0
  loc_A947B9: LateIdLdVar var_BC DispID_0 0
  loc_A947C0: CStrVarTmp
  loc_A947C1: FStStrNoPop var_A8
  loc_A947C4: ConcatStr
  loc_A947C5: FStStrNoPop var_AC
  loc_A947C8: LitStr "...</span><br>"
  loc_A947CB: ConcatStr
  loc_A947CC: CVarStr var_D4
  loc_A947CF: PopAdLdVar
  loc_A947D0: FLdPr Me
  loc_A947D3: MemLdRfVar from_stack_1.htmFile
  loc_A947D6: LdPrVar
  loc_A947D8: LateMemCall
  loc_A947DE: FFreeStr var_A8 = ""
  loc_A947E5: FFree1Ad var_C0
  loc_A947E8: FFreeVar var_BC = ""
  loc_A947EF: Branch loc_A94837
  loc_A947F2: LitStr "    Partidas que no comienzan con: <span class=""Normal"">"
  loc_A947F5: FLdPr Me
  loc_A947F8: VCallAd Control_ID_CodiPartMsk
  loc_A947FB: FStAdFunc var_C0
  loc_A947FE: FLdPr var_C0
  loc_A94801: LateIdLdVar var_BC DispID_0 0
  loc_A94808: CStrVarTmp
  loc_A94809: FStStrNoPop var_A8
  loc_A9480C: ConcatStr
  loc_A9480D: FStStrNoPop var_AC
  loc_A94810: LitStr "...</span><br>"
  loc_A94813: ConcatStr
  loc_A94814: CVarStr var_D4
  loc_A94817: PopAdLdVar
  loc_A94818: FLdPr Me
  loc_A9481B: MemLdRfVar from_stack_1.htmFile
  loc_A9481E: LdPrVar
  loc_A94820: LateMemCall
  loc_A94826: FFreeStr var_A8 = ""
  loc_A9482D: FFree1Ad var_C0
  loc_A94830: FFreeVar var_BC = ""
  loc_A94837: LitStr "    Jurisdicción: <span class=""Normal"">"
  loc_A9483A: FLdRfVar var_A8
  loc_A9483D: FLdPr Me
  loc_A94840: VCallAd Control_ID_cboCodiOrga
  loc_A94843: FStAdFunc var_C0
  loc_A94846: FLdPr var_C0
  loc_A94849:  = Me.Text
  loc_A9484E: ILdRf var_A8
  loc_A94851: ConcatStr
  loc_A94852: FStStrNoPop var_AC
  loc_A94855: LitStr "</span>"
  loc_A94858: ConcatStr
  loc_A94859: CVarStr var_BC
  loc_A9485C: PopAdLdVar
  loc_A9485D: FLdPr Me
  loc_A94860: MemLdRfVar from_stack_1.htmFile
  loc_A94863: LdPrVar
  loc_A94865: LateMemCall
  loc_A9486B: FFreeStr var_A8 = ""
  loc_A94872: FFree1Ad var_C0
  loc_A94875: FFree1Var var_BC = ""
  loc_A94878: LitVarStr var_94, " </p></th>"
  loc_A9487D: PopAdLdVar
  loc_A9487E: FLdPr Me
  loc_A94881: MemLdRfVar from_stack_1.htmFile
  loc_A94884: LdPrVar
  loc_A94886: LateMemCall
  loc_A9488C: LitVarStr var_94, "  </tr>"
  loc_A94891: PopAdLdVar
  loc_A94892: FLdPr Me
  loc_A94895: MemLdRfVar from_stack_1.htmFile
  loc_A94898: LdPrVar
  loc_A9489A: LateMemCall
  loc_A948A0: LitVarStr var_94, "</table>"
  loc_A948A5: PopAdLdVar
  loc_A948A6: FLdPr Me
  loc_A948A9: MemLdRfVar from_stack_1.htmFile
  loc_A948AC: LdPrVar
  loc_A948AE: LateMemCall
  loc_A948B4: LitVarStr var_94, "<table with=""90" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_A948B9: PopAdLdVar
  loc_A948BA: FLdPr Me
  loc_A948BD: MemLdRfVar from_stack_1.htmFile
  loc_A948C0: LdPrVar
  loc_A948C2: LateMemCall
  loc_A948C8: LitVarStr var_94, " <THEAD>"
  loc_A948CD: PopAdLdVar
  loc_A948CE: FLdPr Me
  loc_A948D1: MemLdRfVar from_stack_1.htmFile
  loc_A948D4: LdPrVar
  loc_A948D6: LateMemCall
  loc_A948DC: LitVarStr var_94, " <tr class=""Encabezado"">"
  loc_A948E1: PopAdLdVar
  loc_A948E2: FLdPr Me
  loc_A948E5: MemLdRfVar from_stack_1.htmFile
  loc_A948E8: LdPrVar
  loc_A948EA: LateMemCall
  loc_A948F0: LitVarStr var_94, "     <th align=""center"">Partida</th>"
  loc_A948F5: PopAdLdVar
  loc_A948F6: FLdPr Me
  loc_A948F9: MemLdRfVar from_stack_1.htmFile
  loc_A948FC: LdPrVar
  loc_A948FE: LateMemCall
  loc_A94904: LitVarStr var_94, "     <th width=""10" & Chr(37) & """ align=""center"">Crédito Autorizado Original</th>"
  loc_A94909: PopAdLdVar
  loc_A9490A: FLdPr Me
  loc_A9490D: MemLdRfVar from_stack_1.htmFile
  loc_A94910: LdPrVar
  loc_A94912: LateMemCall
  loc_A94918: LitVarStr var_94, "     <th width=""10" & Chr(37) & """ align=""center"">Aumentos</th>"
  loc_A9491D: PopAdLdVar
  loc_A9491E: FLdPr Me
  loc_A94921: MemLdRfVar from_stack_1.htmFile
  loc_A94924: LdPrVar
  loc_A94926: LateMemCall
  loc_A9492C: LitVarStr var_94, "     <th width=""10" & Chr(37) & """ align=""center"">Disminu<br>ciones</th>"
  loc_A94931: PopAdLdVar
  loc_A94932: FLdPr Me
  loc_A94935: MemLdRfVar from_stack_1.htmFile
  loc_A94938: LdPrVar
  loc_A9493A: LateMemCall
  loc_A94940: LitVarStr var_94, "     <th width=""10" & Chr(37) & """ align=""center"">Crédito Autorizado Definitivo al fin de cada mes</th>"
  loc_A94945: PopAdLdVar
  loc_A94946: FLdPr Me
  loc_A94949: MemLdRfVar from_stack_1.htmFile
  loc_A9494C: LdPrVar
  loc_A9494E: LateMemCall
  loc_A94954: LitVarStr var_94, "     <th width=""10" & Chr(37) & """ align=""center"">Afectaciones Preventivas</th>"
  loc_A94959: PopAdLdVar
  loc_A9495A: FLdPr Me
  loc_A9495D: MemLdRfVar from_stack_1.htmFile
  loc_A94960: LdPrVar
  loc_A94962: LateMemCall
  loc_A94968: LitVarStr var_94, "     <th width=""10" & Chr(37) & """ align=""center"">Saldo de Autorizados</th>"
  loc_A9496D: PopAdLdVar
  loc_A9496E: FLdPr Me
  loc_A94971: MemLdRfVar from_stack_1.htmFile
  loc_A94974: LdPrVar
  loc_A94976: LateMemCall
  loc_A9497C: LitVarStr var_94, "     <th width=""10" & Chr(37) & """ align=""center"">Prev. Futuras</th>"
  loc_A94981: PopAdLdVar
  loc_A94982: FLdPr Me
  loc_A94985: MemLdRfVar from_stack_1.htmFile
  loc_A94988: LdPrVar
  loc_A9498A: LateMemCall
  loc_A94990: LitVarStr var_94, "     <th width=""10" & Chr(37) & """ align=""center"">Saldo Efectivo</th>"
  loc_A94995: PopAdLdVar
  loc_A94996: FLdPr Me
  loc_A94999: MemLdRfVar from_stack_1.htmFile
  loc_A9499C: LdPrVar
  loc_A9499E: LateMemCall
  loc_A949A4: LitVarStr var_94, "  </tr>"
  loc_A949A9: PopAdLdVar
  loc_A949AA: FLdPr Me
  loc_A949AD: MemLdRfVar from_stack_1.htmFile
  loc_A949B0: LdPrVar
  loc_A949B2: LateMemCall
  loc_A949B8: LitVarStr var_94, "  </THEAD>"
  loc_A949BD: PopAdLdVar
  loc_A949BE: FLdPr Me
  loc_A949C1: MemLdRfVar from_stack_1.htmFile
  loc_A949C4: LdPrVar
  loc_A949C6: LateMemCall
  loc_A949CC: ExitProcHresult
End Function

Private Function Proc_237_32_982070() '982070
  'Data Table: 489654
  loc_982030: LitVarStr var_94, "</table>"
  loc_982035: PopAdLdVar
  loc_982036: FLdPr Me
  loc_982039: MemLdRfVar from_stack_1.htmFile
  loc_98203C: LdPrVar
  loc_98203E: LateMemCall
  loc_982044: LitVarStr var_94, "</body>"
  loc_982049: PopAdLdVar
  loc_98204A: FLdPr Me
  loc_98204D: MemLdRfVar from_stack_1.htmFile
  loc_982050: LdPrVar
  loc_982052: LateMemCall
  loc_982058: LitVarStr var_94, "</html>"
  loc_98205D: PopAdLdVar
  loc_98205E: FLdPr Me
  loc_982061: MemLdRfVar from_stack_1.htmFile
  loc_982064: LdPrVar
  loc_982066: LateMemCall
  loc_98206C: ExitProcHresult
End Function
