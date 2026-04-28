VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptResumendeImputacionesporFinalidad
  Caption = "Resumen de Imputaciones por Finalidad"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptResumendeImputacionesporFinalidad.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 7695
  ClientHeight = 4260
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 4005
    Width = 7695
    Height = 255
    TabIndex = 20
    OleObjectBlob = "rptResumendeImputacionesporFinalidad.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 6720
    Top = 3000
    Width = 735
    Height = 615
    TabIndex = 17
    Cancel = -1  'True
    Picture = "rptResumendeImputacionesporFinalidad.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptResumendeImputacionesporFinalidad.frx":0B9C
    Left = 5160
    Top = 480
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 2760
    Width = 3135
    Height = 1095
    TabIndex = 18
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 14
    End
    Begin VB.CommandButton cmdHtml
      Caption = "&HTML"
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 13
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 2760
    Width = 3015
    Height = 1095
    TabIndex = 15
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
    Width = 7455
    Height = 2655
    TabIndex = 0
    Begin VB.OptionButton OptSintetico
      Caption = "Sintetico:"
      Left = 1800
      Top = 2280
      Width = 975
      Height = 255
      TabIndex = 24
      Alignment = 1 'Right Justify
    End
    Begin VB.OptionButton OptAnalitico
      Caption = "Analitico:"
      Left = 600
      Top = 2280
      Width = 975
      Height = 255
      TabIndex = 23
      Value = 255
      Alignment = 1 'Right Justify
    End
    Begin VB.CommandButton cmdCodiFifu
      Left = 2880
      Top = 1800
      Width = 375
      Height = 375
      TabIndex = 10
      Picture = "rptResumendeImputacionesporFinalidad.frx":0C00
      Style = 1
    End
    Begin VB.CommandButton cmdDesde
      Left = 2610
      Top = 840
      Width = 375
      Height = 375
      TabIndex = 5
      Picture = "rptResumendeImputacionesporFinalidad.frx":0CFA
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CommandButton cmdHasta
      Left = 2610
      Top = 1320
      Width = 375
      Height = 375
      TabIndex = 8
      Picture = "rptResumendeImputacionesporFinalidad.frx":123C
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 5880
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 16
    End
    Begin VB.ComboBox cboPeriodo
      Style = 2
      ForeColor = &HFF0000&
      Left = 1455
      Top = 360
      Width = 975
      Height = 315
      TabIndex = 2
    End
    Begin MSMask.MaskEdBox mskDesde
      Left = 1455
      Top = 840
      Width = 1095
      Height = 285
      TabIndex = 4
      OleObjectBlob = "rptResumendeImputacionesporFinalidad.frx":177E
    End
    Begin MSMask.MaskEdBox mskHasta
      Left = 1455
      Top = 1320
      Width = 1095
      Height = 285
      TabIndex = 7
      OleObjectBlob = "rptResumendeImputacionesporFinalidad.frx":1806
    End
    Begin MSMask.MaskEdBox CodiFifuMsk
      Left = 1455
      Top = 1800
      Width = 1335
      Height = 315
      TabIndex = 9
      OleObjectBlob = "rptResumendeImputacionesporFinalidad.frx":188E
    End
    Begin VB.Label CodiFifuLbl
      Left = 3360
      Top = 1800
      Width = 3855
      Height = 375
      TabIndex = 22
      BorderStyle = 1 'Fixed Single
    End
    Begin VB.Label Label17
      Caption = "Finalidad-Funcion:"
      Left = 30
      Top = 1800
      Width = 1290
      Height = 195
      TabIndex = 21
    End
    Begin VB.Label Label4
      Caption = "Desde:"
      Left = 810
      Top = 840
      Width = 510
      Height = 195
      TabIndex = 3
      Alignment = 1 'Right Justify
    End
    Begin VB.Label Label3
      Caption = "Hasta:"
      Left = 855
      Top = 1320
      Width = 465
      Height = 195
      TabIndex = 6
      Alignment = 1 'Right Justify
    End
    Begin VB.Label Label1
      Caption = "Periodo:"
      Left = 735
      Top = 360
      Width = 585
      Height = 195
      TabIndex = 1
      Alignment = 1 'Right Justify
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 6840
    Top = 3120
    Width = 495
    Height = 375
    TabStop = 0   'False
    TabIndex = 19
    OleObjectBlob = "rptResumendeImputacionesporFinalidad.frx":18EE
  End
End

Attribute VB_Name = "rptResumendeImputacionesporFinalidad"

Public htmFile As Variant
Public bGenerado As Boolean

Private Type UDT_1_006056F0
  bStruc(32) As Byte ' String fields: 7
End Type


Private Sub mskDesde_UnknownEvent_0 '94E570
  'Data Table: 49A5B8
  loc_94E55C: FLdPr Me
  loc_94E55F: VCallAd Control_ID_mskDesde
  loc_94E562: CVarAd
  loc_94E566: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94E56B: FFree1Var var_94 = ""
  loc_94E56E: ExitProcHresult
End Sub

Private Function mskDesde_UnknownEvent_8(arg_C) '9B0344
  'Data Table: 49A5B8
  loc_9B02A8: FLdPr Me
  loc_9B02AB: VCallAd Control_ID_mskDesde
  loc_9B02AE: FStAdFunc var_88
  loc_9B02B1: FLdPr var_88
  loc_9B02B4: LateIdLdVar var_98 DispID_15 0
  loc_9B02BB: PopAd
  loc_9B02BD: FLdPr Me
  loc_9B02C0: VCallAd Control_ID_mskDesde
  loc_9B02C3: FStAdFunc var_AC
  loc_9B02C6: LitI2_Byte &HFF
  loc_9B02C8: PopTmpLdAd2 var_A2
  loc_9B02CB: FLdZeroAd var_AC
  loc_9B02CE: FStAdFunc var_A0
  loc_9B02D1: FLdRfVar var_A0
  loc_9B02D4: LitStr vbNullString
  loc_9B02D7: LitI2_Byte 0
  loc_9B02D9: LitI2_Byte 0
  loc_9B02DB: FLdRfVar var_98
  loc_9B02DE: CStrVarTmp
  loc_9B02DF: FStStrNoPop var_9C
  loc_9B02E2: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9B02E7: FStStrNoPop var_A8
  loc_9B02EA: FLdPr Me
  loc_9B02ED: MemStStrCopy
  loc_9B02F1: FFreeStr var_9C = ""
  loc_9B02F8: FFreeAd var_88 = "": var_A0 = ""
  loc_9B0301: FFree1Var var_98 = ""
  loc_9B0304: FLdPr Me
  loc_9B0307: VCallAd Control_ID_mskDesde
  loc_9B030A: FStAdFunc var_B0
  loc_9B030D: LitNothing
  loc_9B030F: CastAd
  loc_9B0312: FStAdFunc var_AC
  loc_9B0315: FLdRfVar var_AC
  loc_9B0318: FLdZeroAd var_B0
  loc_9B031B: FStAdFuncNoPop
  loc_9B031E: CastAd
  loc_9B0321: FStAdFunc var_A0
  loc_9B0324: FLdRfVar var_A0
  loc_9B0327: FLdPr Me
  loc_9B032A: MemLdRfVar from_stack_1.global_108
  loc_9B032D: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9B0332: IStI2 arg_C
  loc_9B0335: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9B0340: ExitProcHresult
End Function

Private Sub cmdDesde_Click() '97E370
  'Data Table: 49A5B8
  loc_97E33C: LitVar_Missing var_A4
  loc_97E33F: PopAdLdVar
  loc_97E340: LitVarI4
  loc_97E348: PopAdLdVar
  loc_97E349: ImpAdLdRf MemVar_C3D9A8
  loc_97E34C: NewIfNullPr frmCalendario
  loc_97E34F: frmCalendario.Show from_stack_1, from_stack_2
  loc_97E354: ImpAdLdRf MemVar_C3D038
  loc_97E357: CDargRef
  loc_97E35B: FLdPr Me
  loc_97E35E: VCallAd Control_ID_mskDesde
  loc_97E361: FStAdFunc var_A8
  loc_97E364: FLdPr var_A8
  loc_97E367: LateIdSt
  loc_97E36C: FFree1Ad var_A8
  loc_97E36F: ExitProcHresult
End Sub

Private Sub cmdHasta_Click() '97EA58
  'Data Table: 49A5B8
  loc_97EA24: LitVar_Missing var_A4
  loc_97EA27: PopAdLdVar
  loc_97EA28: LitVarI4
  loc_97EA30: PopAdLdVar
  loc_97EA31: ImpAdLdRf MemVar_C3D9A8
  loc_97EA34: NewIfNullPr frmCalendario
  loc_97EA37: frmCalendario.Show from_stack_1, from_stack_2
  loc_97EA3C: ImpAdLdRf MemVar_C3D038
  loc_97EA3F: CDargRef
  loc_97EA43: FLdPr Me
  loc_97EA46: VCallAd Control_ID_mskHasta
  loc_97EA49: FStAdFunc var_A8
  loc_97EA4C: FLdPr var_A8
  loc_97EA4F: LateIdSt
  loc_97EA54: FFree1Ad var_A8
  loc_97EA57: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() '9CA434
  'Data Table: 49A5B8
  loc_9CA354: LitI2_Byte 0
  loc_9CA356: FLdPr Me
  loc_9CA359: MemStI2 bGenerado
  loc_9CA35C: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_9CA361: ImpAdLdI2 MemVar_C3D064
  loc_9CA364: CStrUI1
  loc_9CA366: FStStrNoPop var_88
  loc_9CA369: FLdPr Me
  loc_9CA36C: VCallAd Control_ID_cboPeriodo
  loc_9CA36F: FStAdFunc var_8C
  loc_9CA372: FLdPr var_8C
  loc_9CA375: Me.Text = from_stack_1
  loc_9CA37A: FFree1Str var_88
  loc_9CA37D: FFree1Ad var_8C
  loc_9CA380: LitI2_Byte 1
  loc_9CA382: LitI2_Byte 1
  loc_9CA384: ImpAdLdI2 MemVar_C3D064
  loc_9CA387: FLdRfVar var_9C
  loc_9CA38A: ImpAdCallFPR4  = DateSerial(, , )
  loc_9CA38F: FLdRfVar var_9C
  loc_9CA392: CStrVarTmp
  loc_9CA393: CVarStr var_AC
  loc_9CA396: PopAdLdVar
  loc_9CA397: FLdPr Me
  loc_9CA39A: VCallAd Control_ID_mskDesde
  loc_9CA39D: FStAdFunc var_8C
  loc_9CA3A0: FLdPr var_8C
  loc_9CA3A3: LateIdSt
  loc_9CA3A8: FFree1Ad var_8C
  loc_9CA3AB: FFreeVar var_9C = ""
  loc_9CA3B2: ImpAdLdFPR8 MemVar_C3D04C
  loc_9CA3B5: CStrDate
  loc_9CA3B7: CVarStr var_9C
  loc_9CA3BA: PopAdLdVar
  loc_9CA3BB: FLdPr Me
  loc_9CA3BE: VCallAd Control_ID_mskHasta
  loc_9CA3C1: FStAdFunc var_8C
  loc_9CA3C4: FLdPr var_8C
  loc_9CA3C7: LateIdSt
  loc_9CA3CC: FFree1Ad var_8C
  loc_9CA3CF: FFree1Var var_9C = ""
  loc_9CA3D2: LitVarStr var_BC, vbNullString
  loc_9CA3D7: PopAdLdVar
  loc_9CA3D8: FLdPr Me
  loc_9CA3DB: VCallAd Control_ID_CodiFifuMsk
  loc_9CA3DE: FStAdFunc var_8C
  loc_9CA3E1: FLdPr var_8C
  loc_9CA3E4: LateIdSt
  loc_9CA3E9: FFree1Ad var_8C
  loc_9CA3EC: LitStr vbNullString
  loc_9CA3EF: FLdPr Me
  loc_9CA3F2: VCallAd Control_ID_CodiFifuLbl
  loc_9CA3F5: FStAdFunc var_8C
  loc_9CA3F8: FLdPr var_8C
  loc_9CA3FB: Me.Caption = from_stack_1
  loc_9CA400: FFree1Ad var_8C
  loc_9CA403: LitI2_Byte &HFF
  loc_9CA405: FLdPr Me
  loc_9CA408: VCallAd Control_ID_OptAnalitico
  loc_9CA40B: FStAdFunc var_8C
  loc_9CA40E: FLdPr var_8C
  loc_9CA411: Me.Value = from_stack_1b
  loc_9CA416: FFree1Ad var_8C
  loc_9CA419: Call HabilitarCriterio()
  loc_9CA41E: ILdRf Me
  loc_9CA421: CastAd
  loc_9CA424: FStAdFunc var_8C
  loc_9CA427: FLdRfVar var_8C
  loc_9CA42A: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_9CA42F: FFree1Ad var_8C
  loc_9CA432: ExitProcHresult
End Sub

Private Sub cmdHtml_Click() '96262C
  'Data Table: 49A5B8
  loc_962614: ILdRf Me
  loc_962617: CastAd
  loc_96261A: FStAdFunc var_88
  loc_96261D: FLdRfVar var_88
  loc_962620: ImpAdCallFPR4 Proc_263_5_9C6568()
  loc_962625: FFree1Ad var_88
  loc_962628: ExitProcHresult
End Sub

Private Sub mskHasta_UnknownEvent_0 '94E8D0
  'Data Table: 49A5B8
  loc_94E8BC: FLdPr Me
  loc_94E8BF: VCallAd Control_ID_mskHasta
  loc_94E8C2: CVarAd
  loc_94E8C6: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94E8CB: FFree1Var var_94 = ""
  loc_94E8CE: ExitProcHresult
End Sub

Private Function mskHasta_UnknownEvent_8(arg_C) '9AFB1C
  'Data Table: 49A5B8
  loc_9AFA80: FLdPr Me
  loc_9AFA83: VCallAd Control_ID_mskHasta
  loc_9AFA86: FStAdFunc var_88
  loc_9AFA89: FLdPr var_88
  loc_9AFA8C: LateIdLdVar var_98 DispID_15 0
  loc_9AFA93: PopAd
  loc_9AFA95: FLdPr Me
  loc_9AFA98: VCallAd Control_ID_mskHasta
  loc_9AFA9B: FStAdFunc var_AC
  loc_9AFA9E: LitI2_Byte &HFF
  loc_9AFAA0: PopTmpLdAd2 var_A2
  loc_9AFAA3: FLdZeroAd var_AC
  loc_9AFAA6: FStAdFunc var_A0
  loc_9AFAA9: FLdRfVar var_A0
  loc_9AFAAC: LitStr vbNullString
  loc_9AFAAF: LitI2_Byte 0
  loc_9AFAB1: LitI2_Byte 0
  loc_9AFAB3: FLdRfVar var_98
  loc_9AFAB6: CStrVarTmp
  loc_9AFAB7: FStStrNoPop var_9C
  loc_9AFABA: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9AFABF: FStStrNoPop var_A8
  loc_9AFAC2: FLdPr Me
  loc_9AFAC5: MemStStrCopy
  loc_9AFAC9: FFreeStr var_9C = ""
  loc_9AFAD0: FFreeAd var_88 = "": var_A0 = ""
  loc_9AFAD9: FFree1Var var_98 = ""
  loc_9AFADC: FLdPr Me
  loc_9AFADF: VCallAd Control_ID_mskHasta
  loc_9AFAE2: FStAdFunc var_B0
  loc_9AFAE5: LitNothing
  loc_9AFAE7: CastAd
  loc_9AFAEA: FStAdFunc var_AC
  loc_9AFAED: FLdRfVar var_AC
  loc_9AFAF0: FLdZeroAd var_B0
  loc_9AFAF3: FStAdFuncNoPop
  loc_9AFAF6: CastAd
  loc_9AFAF9: FStAdFunc var_A0
  loc_9AFAFC: FLdRfVar var_A0
  loc_9AFAFF: FLdPr Me
  loc_9AFB02: MemLdRfVar from_stack_1.global_108
  loc_9AFB05: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9AFB0A: IStI2 arg_C
  loc_9AFB0D: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9AFB18: ExitProcHresult
  loc_9AFB19: CR8R8
  loc_9AFB1A: NewIfNullPr Me
End Function

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '98B42C
  'Data Table: 49A5B8
  loc_98B3F4: FLdPr Me
  loc_98B3F7: VCallAd Control_ID_statusBar
  loc_98B3FA: FStAdFunc var_88
  loc_98B3FD: FLdPr var_88
  loc_98B400: LateIdLdVar var_98 DispID_1 0
  loc_98B407: CStrVarTmp
  loc_98B408: CVarStr var_A8
  loc_98B40B: PopAdLdVar
  loc_98B40C: FLdPr Me
  loc_98B40F: VCallAd Control_ID_statusBar
  loc_98B412: FStAdFunc var_BC
  loc_98B415: FLdPr var_BC
  loc_98B418: LateIdSt
  loc_98B41D: FFreeAd var_88 = ""
  loc_98B424: FFreeVar var_98 = ""
  loc_98B42B: ExitProcHresult
End Sub

Private Sub cmdCodiFifu_Click() 'A09FB0
  'Data Table: 49A5B8
  loc_A09E54: FLdRfVar var_8C
  loc_A09E57: FLdPr Me
  loc_A09E5A: VCallAd Control_ID_cboPeriodo
  loc_A09E5D: FStAdFunc var_88
  loc_A09E60: FLdPr var_88
  loc_A09E63:  = Me.Text
  loc_A09E68: ILdRf var_8C
  loc_A09E6B: CI2Str
  loc_A09E6D: ImpAdLdRf MemVar_C3D6E8
  loc_A09E70: NewIfNullPr bscFinalidad
  loc_A09E73: Call bscFinalidad.iPeriInfoPut(from_stack_1v)
  loc_A09E78: FFree1Str var_8C
  loc_A09E7B: FFree1Ad var_88
  loc_A09E7E: LitNothing
  loc_A09E80: CastAd
  loc_A09E83: FStAdFuncNoPop
  loc_A09E86: ImpAdLdRf MemVar_C3D6E8
  loc_A09E89: NewIfNullPr bscFinalidad
  loc_A09E8C: Call bscFinalidad.global_4320824Set(from_stack_1v)
  loc_A09E91: FFree1Ad var_88
  loc_A09E94: LitVar_Missing var_AC
  loc_A09E97: PopAdLdVar
  loc_A09E98: LitVarI4
  loc_A09EA0: PopAdLdVar
  loc_A09EA1: ImpAdLdRf MemVar_C3D6E8
  loc_A09EA4: NewIfNullPr bscFinalidad
  loc_A09EA7: bscFinalidad.Show from_stack_1, from_stack_2
  loc_A09EAC: FLdRfVar var_B0
  loc_A09EAF: FLdRfVar var_88
  loc_A09EB2: ImpAdLdRf MemVar_C3D6E8
  loc_A09EB5: NewIfNullPr bscFinalidad
  loc_A09EB8: from_stack_1v = bscFinalidad.global_4320824Get()
  loc_A09EBD: FLdPr var_88
  loc_A09EC0: from_stack_1 = clsbase.RecordCount
  loc_A09EC5: ILdRf var_B0
  loc_A09EC8: LitI4 0
  loc_A09ECD: GtI4
  loc_A09ECE: FFree1Ad var_88
  loc_A09ED1: BranchF loc_A09FAC
  loc_A09ED4: FLdRfVar var_CC
  loc_A09ED7: FLdRfVar var_BC
  loc_A09EDA: LitVarStr var_9C, "CodiFifu"
  loc_A09EDF: PopAdLdVar
  loc_A09EE0: FLdRfVar var_B8
  loc_A09EE3: FLdRfVar var_B4
  loc_A09EE6: FLdRfVar var_88
  loc_A09EE9: ImpAdLdRf MemVar_C3D6E8
  loc_A09EEC: NewIfNullPr bscFinalidad
  loc_A09EEF: from_stack_1v = bscFinalidad.global_4320824Get()
  loc_A09EF4: FLdPr var_88
  loc_A09EF7: from_stack_1v = clsbase.RsFrmGet()
  loc_A09EFC: FLdPr var_B4
  loc_A09EFF:  = Me.Fields
  loc_A09F04: FLdPr var_B8
  loc_A09F07: from_stack_2 = Me.Item(from_stack_1)
  loc_A09F0C: FLdPr var_BC
  loc_A09F0F:  = Me.Value
  loc_A09F14: FLdRfVar var_CC
  loc_A09F17: CStrVarTmp
  loc_A09F18: CVarStr var_DC
  loc_A09F1B: PopAdLdVar
  loc_A09F1C: FLdPr Me
  loc_A09F1F: VCallAd Control_ID_CodiFifuMsk
  loc_A09F22: FStAdFunc var_E0
  loc_A09F25: FLdPr var_E0
  loc_A09F28: LateIdSt
  loc_A09F2D: FFreeAd var_88 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_A09F3A: FFreeVar var_CC = ""
  loc_A09F41: FLdRfVar var_CC
  loc_A09F44: FLdRfVar var_BC
  loc_A09F47: LitVarStr var_9C, "DetaFifu"
  loc_A09F4C: PopAdLdVar
  loc_A09F4D: FLdRfVar var_B8
  loc_A09F50: FLdRfVar var_B4
  loc_A09F53: FLdRfVar var_88
  loc_A09F56: ImpAdLdRf MemVar_C3D6E8
  loc_A09F59: NewIfNullPr bscFinalidad
  loc_A09F5C: from_stack_1v = bscFinalidad.global_4320824Get()
  loc_A09F61: FLdPr var_88
  loc_A09F64: from_stack_1v = clsbase.RsFrmGet()
  loc_A09F69: FLdPr var_B4
  loc_A09F6C:  = Me.Fields
  loc_A09F71: FLdPr var_B8
  loc_A09F74: from_stack_2 = Me.Item(from_stack_1)
  loc_A09F79: FLdPr var_BC
  loc_A09F7C:  = Me.Value
  loc_A09F81: FLdRfVar var_CC
  loc_A09F84: CStrVarTmp
  loc_A09F85: FStStrNoPop var_8C
  loc_A09F88: FLdPr Me
  loc_A09F8B: VCallAd Control_ID_CodiFifuLbl
  loc_A09F8E: FStAdFunc var_E0
  loc_A09F91: FLdPr var_E0
  loc_A09F94: Me.Caption = from_stack_1
  loc_A09F99: FFree1Str var_8C
  loc_A09F9C: FFreeAd var_88 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_A09FA9: FFree1Var var_CC = ""
  loc_A09FAC: ExitProcHresult
  loc_A09FAD: BranchT loc_A0A1B3
End Sub

Private Sub cmdPredeterminada_Click() '9626C4
  'Data Table: 49A5B8
  loc_9626AC: ILdRf Me
  loc_9626AF: CastAd
  loc_9626B2: FStAdFunc var_88
  loc_9626B5: FLdRfVar var_88
  loc_9626B8: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_9626BD: FFree1Ad var_88
  loc_9626C0: ExitProcHresult
End Sub

Private Sub Form_Load() '9D97B4
  'Data Table: 49A5B8
  loc_9D96C0: LitVarStr var_94, "##.##.##"
  loc_9D96C5: PopAdLdVar
  loc_9D96C6: FLdPr Me
  loc_9D96C9: VCallAd Control_ID_CodiFifuMsk
  loc_9D96CC: FStAdFunc var_A8
  loc_9D96CF: FLdPr var_A8
  loc_9D96D2: LateIdSt
  loc_9D96D7: FFree1Ad var_A8
  loc_9D96DA: LitI2_Byte &HFF
  loc_9D96DC: ImpAdStI2 MemVar_C3D840
  loc_9D96DF: ILdRf Me
  loc_9D96E2: CastAd
  loc_9D96E5: FStAdFunc var_A8
  loc_9D96E8: FLdRfVar var_A8
  loc_9D96EB: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_9D96F0: FFree1Ad var_A8
  loc_9D96F3: LitStr "SELECT * FROM infogov.periodo ORDER BY PeriInfo"
  loc_9D96F6: FLdRfVar var_AC
  loc_9D96F9: NewIfNullPr clsperiodo
  loc_9D96FC: Call clsperiodo.RedefineRS(from_stack_1v)
  loc_9D9701: FLdRfVar var_B0
  loc_9D9704: FLdRfVar var_AC
  loc_9D9707: NewIfNullPr clsperiodo
  loc_9D970A: from_stack_1 = clsperiodo.RecordCount
  loc_9D970F: ILdRf var_B0
  loc_9D9712: LitI4 0
  loc_9D9717: GtI4
  loc_9D9718: BranchF loc_9D97AB
  loc_9D971B: FLdRfVar var_AC
  loc_9D971E: NewIfNullPr clsperiodo
  loc_9D9721: Call clsperiodo.MoveFirst()
  loc_9D9726: FLdRfVar var_B2
  loc_9D9729: FLdRfVar var_AC
  loc_9D972C: NewIfNullPr clsperiodo
  loc_9D972F: from_stack_1 = clsperiodo.EOF
  loc_9D9734: FLdI2 var_B2
  loc_9D9737: NotI4
  loc_9D9738: BranchF loc_9D97AB
  loc_9D973B: LitVar_Missing var_A4
  loc_9D973E: PopAdLdVar
  loc_9D973F: FLdRfVar var_CC
  loc_9D9742: FLdRfVar var_BC
  loc_9D9745: LitVarStr var_94, "PeriInfo"
  loc_9D974A: PopAdLdVar
  loc_9D974B: FLdRfVar var_B8
  loc_9D974E: FLdRfVar var_A8
  loc_9D9751: FLdRfVar var_AC
  loc_9D9754: NewIfNullPr clsperiodo
  loc_9D9757: from_stack_1v = clsperiodo.RsFrmGet()
  loc_9D975C: FLdPr var_A8
  loc_9D975F:  = Me.Fields
  loc_9D9764: FLdPr var_B8
  loc_9D9767: from_stack_2 = Me.Item(from_stack_1)
  loc_9D976C: FLdPr var_BC
  loc_9D976F:  = Me.Value
  loc_9D9774: FLdRfVar var_CC
  loc_9D9777: CStrVarTmp
  loc_9D9778: FStStrNoPop var_D0
  loc_9D977B: FLdPr Me
  loc_9D977E: VCallAd Control_ID_cboPeriodo
  loc_9D9781: FStAdFunc var_D4
  loc_9D9784: FLdPr var_D4
  loc_9D9787: Me.AddItem from_stack_1, from_stack_2
  loc_9D978C: FFree1Str var_D0
  loc_9D978F: FFreeAd var_A8 = "": var_B8 = "": var_BC = ""
  loc_9D979A: FFree1Var var_CC = ""
  loc_9D979D: FLdRfVar var_AC
  loc_9D97A0: NewIfNullPr clsperiodo
  loc_9D97A3: Call clsperiodo.MoveSiguiente()
  loc_9D97A8: Branch loc_9D9726
  loc_9D97AB: Call cmdNueva_Click()
  loc_9D97B0: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '962204
  'Data Table: 49A5B8
  loc_9621EC: FLdPr Me
  loc_9621EF: VCallAd Control_ID_wbbReporte
  loc_9621F2: FStAdFunc var_88
  loc_9621F5: FLdRfVar var_88
  loc_9621F8: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_9621FD: FFree1Ad var_88
  loc_962200: ExitProcHresult
  loc_962201: LitI2FP 865
End Sub

Private Sub cmdSalir_Click() '979164
  'Data Table: 49A5B8
  loc_979134: LitVarStr var_94, "Cerrando..."
  loc_979139: PopAdLdVar
  loc_97913A: FLdPr Me
  loc_97913D: VCallAd Control_ID_statusBar
  loc_979140: FStAdFunc var_A8
  loc_979143: FLdPr var_A8
  loc_979146: LateIdSt
  loc_97914B: FFree1Ad var_A8
  loc_97914E: ILdRf Me
  loc_979151: FStAdNoPop
  loc_979155: ImpAdLdRf MemVar_C44F9C
  loc_979158: NewIfNullPr Me
  loc_97915B: Me.Global.Unload from_stack_1
  loc_979160: FFree1Ad var_A8
  loc_979163: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '962594
  'Data Table: 49A5B8
  loc_96257C: LitI2_Byte 0
  loc_96257E: ILdRf Me
  loc_962581: CastAd
  loc_962584: FStAdFunc var_88
  loc_962587: FLdRfVar var_88
  loc_96258A: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_96258F: FFree1Ad var_88
  loc_962592: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '962710
  'Data Table: 49A5B8
  loc_9626F8: ILdRf Me
  loc_9626FB: CastAd
  loc_9626FE: FStAdFunc var_88
  loc_962701: FLdRfVar var_88
  loc_962704: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_962709: FFree1Ad var_88
  loc_96270C: ExitProcHresult
End Sub

Private Sub cboPeriodo_Click() '9D2780
  'Data Table: 49A5B8
  loc_9D2698: FLdRfVar var_8C
  loc_9D269B: FLdPr Me
  loc_9D269E: VCallAd Control_ID_cboPeriodo
  loc_9D26A1: FStAdFunc var_88
  loc_9D26A4: FLdPr var_88
  loc_9D26A7:  = Me.Text
  loc_9D26AC: LitI2_Byte 1
  loc_9D26AE: LitI2_Byte 1
  loc_9D26B0: ILdRf var_8C
  loc_9D26B3: CI2Str
  loc_9D26B5: FLdRfVar var_9C
  loc_9D26B8: ImpAdCallFPR4  = DateSerial(, , )
  loc_9D26BD: FLdRfVar var_9C
  loc_9D26C0: CStrVarTmp
  loc_9D26C1: CVarStr var_AC
  loc_9D26C4: PopAdLdVar
  loc_9D26C5: FLdPr Me
  loc_9D26C8: VCallAd Control_ID_mskDesde
  loc_9D26CB: FStAdFunc var_C0
  loc_9D26CE: FLdPr var_C0
  loc_9D26D1: LateIdSt
  loc_9D26D6: FFree1Str var_8C
  loc_9D26D9: FFreeAd var_88 = ""
  loc_9D26E0: FFreeVar var_9C = ""
  loc_9D26E7: FLdRfVar var_8C
  loc_9D26EA: FLdPr Me
  loc_9D26ED: VCallAd Control_ID_cboPeriodo
  loc_9D26F0: FStAdFunc var_88
  loc_9D26F3: FLdPr var_88
  loc_9D26F6:  = Me.Text
  loc_9D26FB: ILdRf var_8C
  loc_9D26FE: CI2Str
  loc_9D2700: ImpAdLdI2 MemVar_C3D064
  loc_9D2703: LtI2
  loc_9D2704: FFree1Str var_8C
  loc_9D2707: FFree1Ad var_88
  loc_9D270A: BranchF loc_9D275F
  loc_9D270D: FLdRfVar var_8C
  loc_9D2710: FLdPr Me
  loc_9D2713: VCallAd Control_ID_cboPeriodo
  loc_9D2716: FStAdFunc var_88
  loc_9D2719: FLdPr var_88
  loc_9D271C:  = Me.Text
  loc_9D2721: LitI2_Byte &H1F
  loc_9D2723: LitI2_Byte &HC
  loc_9D2725: ILdRf var_8C
  loc_9D2728: CI2Str
  loc_9D272A: FLdRfVar var_9C
  loc_9D272D: ImpAdCallFPR4  = DateSerial(, , )
  loc_9D2732: FLdRfVar var_9C
  loc_9D2735: CStrVarTmp
  loc_9D2736: CVarStr var_AC
  loc_9D2739: PopAdLdVar
  loc_9D273A: FLdPr Me
  loc_9D273D: VCallAd Control_ID_mskHasta
  loc_9D2740: FStAdFunc var_C0
  loc_9D2743: FLdPr var_C0
  loc_9D2746: LateIdSt
  loc_9D274B: FFree1Str var_8C
  loc_9D274E: FFreeAd var_88 = ""
  loc_9D2755: FFreeVar var_9C = ""
  loc_9D275C: Branch loc_9D277F
  loc_9D275F: ImpAdLdFPR8 MemVar_C3D04C
  loc_9D2762: CStrDate
  loc_9D2764: CVarStr var_9C
  loc_9D2767: PopAdLdVar
  loc_9D2768: FLdPr Me
  loc_9D276B: VCallAd Control_ID_mskHasta
  loc_9D276E: FStAdFunc var_88
  loc_9D2771: FLdPr var_88
  loc_9D2774: LateIdSt
  loc_9D2779: FFree1Ad var_88
  loc_9D277C: FFree1Var var_9C = ""
  loc_9D277F: ExitProcHresult
End Sub

Private Sub CodiFifuMsk_UnknownEvent_0 '94E4E0
  'Data Table: 49A5B8
  loc_94E4CC: FLdPr Me
  loc_94E4CF: VCallAd Control_ID_CodiFifuMsk
  loc_94E4D2: CVarAd
  loc_94E4D6: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94E4DB: FFree1Var var_94 = ""
  loc_94E4DE: ExitProcHresult
End Sub

Private Sub CodiFifuMsk_UnknownEvent_8 'A08EE8
  'Data Table: 49A5B8
  loc_A08D9C: LitStr "SELECT DetaFifu FROM finalidad WHERE PeriInfo = "
  loc_A08D9F: FLdRfVar var_90
  loc_A08DA2: FLdPr Me
  loc_A08DA5: VCallAd Control_ID_cboPeriodo
  loc_A08DA8: FStAdFunc var_8C
  loc_A08DAB: FLdPr var_8C
  loc_A08DAE:  = Me.Text
  loc_A08DB3: ILdRf var_90
  loc_A08DB6: ConcatStr
  loc_A08DB7: FStStrNoPop var_94
  loc_A08DBA: LitStr " AND CodiFifu LIKE '"
  loc_A08DBD: ConcatStr
  loc_A08DBE: FStStrNoPop var_AC
  loc_A08DC1: FLdPr Me
  loc_A08DC4: VCallAd Control_ID_CodiFifuMsk
  loc_A08DC7: FStAdFunc var_98
  loc_A08DCA: FLdPr var_98
  loc_A08DCD: LateIdLdVar var_A8 DispID_22 0
  loc_A08DD4: CStrVarTmp
  loc_A08DD5: FStStrNoPop var_B0
  loc_A08DD8: ConcatStr
  loc_A08DD9: FStStrNoPop var_B4
  loc_A08DDC: LitStr Chr(37) & "'"
  loc_A08DDF: ConcatStr
  loc_A08DE0: FStStrNoPop var_B8
  loc_A08DE3: FLdRfVar var_88
  loc_A08DE6: NewIfNullPr clsfinalidad
  loc_A08DE9: Call clsfinalidad.RedefineRS(from_stack_1v)
  loc_A08DEE: FFreeStr var_90 = "": var_94 = "": var_AC = "": var_B0 = "": var_B4 = ""
  loc_A08DFD: FFreeAd var_8C = ""
  loc_A08E04: FFree1Var var_A8 = ""
  loc_A08E07: FLdRfVar var_BC
  loc_A08E0A: FLdRfVar var_88
  loc_A08E0D: NewIfNullPr clsfinalidad
  loc_A08E10: from_stack_1 = clsfinalidad.RecordCount
  loc_A08E15: ILdRf var_BC
  loc_A08E18: FStR4 var_C0
  loc_A08E1B: ILdRf var_C0
  loc_A08E1E: LitI4 0
  loc_A08E23: EqI4
  loc_A08E24: BranchF loc_A08E41
  loc_A08E27: LitStr "0 registros encontrados"
  loc_A08E2A: FLdPr Me
  loc_A08E2D: VCallAd Control_ID_CodiFifuLbl
  loc_A08E30: FStAdFunc var_8C
  loc_A08E33: FLdPr var_8C
  loc_A08E36: Me.Caption = from_stack_1
  loc_A08E3B: FFree1Ad var_8C
  loc_A08E3E: Branch loc_A08EE6
  loc_A08E41: ILdRf var_C0
  loc_A08E44: LitI4 1
  loc_A08E49: EqI4
  loc_A08E4A: BranchF loc_A08EAE
  loc_A08E4D: FLdRfVar var_A8
  loc_A08E50: FLdRfVar var_D4
  loc_A08E53: LitVarStr var_D0, "DetaFifu"
  loc_A08E58: PopAdLdVar
  loc_A08E59: FLdRfVar var_98
  loc_A08E5C: FLdRfVar var_8C
  loc_A08E5F: FLdRfVar var_88
  loc_A08E62: NewIfNullPr clsfinalidad
  loc_A08E65: from_stack_1v = clsfinalidad.RsFrmGet()
  loc_A08E6A: FLdPr var_8C
  loc_A08E6D:  = Me.Fields
  loc_A08E72: FLdPr var_98
  loc_A08E75: from_stack_2 = Me.Item(from_stack_1)
  loc_A08E7A: FLdPr var_D4
  loc_A08E7D:  = Me.Value
  loc_A08E82: FLdRfVar var_A8
  loc_A08E85: CStrVarTmp
  loc_A08E86: FStStrNoPop var_90
  loc_A08E89: FLdPr Me
  loc_A08E8C: VCallAd Control_ID_CodiFifuLbl
  loc_A08E8F: FStAdFunc var_D8
  loc_A08E92: FLdPr var_D8
  loc_A08E95: Me.Caption = from_stack_1
  loc_A08E9A: FFree1Str var_90
  loc_A08E9D: FFreeAd var_8C = "": var_98 = "": var_D4 = ""
  loc_A08EA8: FFree1Var var_A8 = ""
  loc_A08EAB: Branch loc_A08EE6
  loc_A08EAE: FLdRfVar var_BC
  loc_A08EB1: FLdRfVar var_88
  loc_A08EB4: NewIfNullPr clsfinalidad
  loc_A08EB7: from_stack_1 = clsfinalidad.RecordCount
  loc_A08EBC: ILdRf var_BC
  loc_A08EBF: CStrI4
  loc_A08EC1: FStStrNoPop var_90
  loc_A08EC4: LitStr " finalidades encontradas"
  loc_A08EC7: ConcatStr
  loc_A08EC8: FStStrNoPop var_94
  loc_A08ECB: FLdPr Me
  loc_A08ECE: VCallAd Control_ID_CodiFifuLbl
  loc_A08ED1: FStAdFunc var_8C
  loc_A08ED4: FLdPr var_8C
  loc_A08ED7: Me.Caption = from_stack_1
  loc_A08EDC: FFreeStr var_90 = ""
  loc_A08EE3: FFree1Ad var_8C
  loc_A08EE6: ExitProcHresult
End Sub

Public Function htmFileGet() '49B778
  htmFileGet = htmFile
End Function

Public Sub htmFilePut(Value) '49B787
  htmFile = Value
End Sub

Public Sub htmFileSet(Value) '49B796
  htmFile = Value
End Sub

Public Function bGeneradoGet() '49B7A5
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '49B7B4
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() '9C5B8C
  'Data Table: 49A5B8
  loc_9C5AD8: LitI4 0
  loc_9C5ADD: LitI4 8
  loc_9C5AE2: FLdRfVar var_88
  loc_9C5AE5: Redim
  loc_9C5AEF: FLdPr Me
  loc_9C5AF2: VCallAd Control_ID_cboPeriodo
  loc_9C5AF5: CVarAd
  loc_9C5AF9: ParmAry1St
  loc_9C5AFF: FLdPr Me
  loc_9C5B02: VCallAd Control_ID_mskDesde
  loc_9C5B05: CVarAd
  loc_9C5B09: ParmAry1St
  loc_9C5B0F: FLdPr Me
  loc_9C5B12: VCallAd Control_ID_cmdDesde
  loc_9C5B15: CVarAd
  loc_9C5B19: ParmAry1St
  loc_9C5B1F: FLdPr Me
  loc_9C5B22: VCallAd Control_ID_mskHasta
  loc_9C5B25: CVarAd
  loc_9C5B29: ParmAry1St
  loc_9C5B2F: FLdPr Me
  loc_9C5B32: VCallAd Control_ID_cmdHasta
  loc_9C5B35: CVarAd
  loc_9C5B39: ParmAry1St
  loc_9C5B3F: FLdPr Me
  loc_9C5B42: VCallAd Control_ID_CodiFifuMsk
  loc_9C5B45: CVarAd
  loc_9C5B49: ParmAry1St
  loc_9C5B4F: FLdPr Me
  loc_9C5B52: VCallAd Control_ID_cmdCodiFifu
  loc_9C5B55: CVarAd
  loc_9C5B59: ParmAry1St
  loc_9C5B5F: FLdPr Me
  loc_9C5B62: VCallAd Control_ID_OptAnalitico
  loc_9C5B65: CVarAd
  loc_9C5B69: ParmAry1St
  loc_9C5B6F: FLdPr Me
  loc_9C5B72: VCallAd Control_ID_OptSintetico
  loc_9C5B75: CVarAd
  loc_9C5B79: ParmAry1St
  loc_9C5B7F: FLdRfVar var_88
  loc_9C5B82: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9C5B87: FLdRfVar var_88
  loc_9C5B8A: Erase
  loc_9C5B8B: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'B404B8
  'Data Table: 49A5B8
  loc_B3FAC4: FLdPr Me
  loc_B3FAC7: MemLdI2 bGenerado
  loc_B3FACA: BranchF loc_B3FACE
  loc_B3FACD: ExitProcHresult
  loc_B3FACE: LitVarStr var_94, "Generando reporte..."
  loc_B3FAD3: PopAdLdVar
  loc_B3FAD4: FLdPr Me
  loc_B3FAD7: VCallAd Control_ID_statusBar
  loc_B3FADA: FStAdFunc var_A8
  loc_B3FADD: FLdPr var_A8
  loc_B3FAE0: LateIdSt
  loc_B3FAE5: FFree1Ad var_A8
  loc_B3FAE8: LitI4 &HB
  loc_B3FAED: CI2I4
  loc_B3FAEE: FLdPr Me
  loc_B3FAF1: Me.MousePointer = from_stack_1
  loc_B3FAF6: LitI2_Byte 0
  loc_B3FAF8: PopTmpLdAd2 var_AA
  loc_B3FAFB: from_stack_2v = mskDesde_UnknownEvent_8(from_stack_1v)
  loc_B3FB00: FLdPr Me
  loc_B3FB03: MemLdStr global_108
  loc_B3FB06: LitStr vbNullString
  loc_B3FB09: NeStr
  loc_B3FB0B: BranchF loc_B3FB11
  loc_B3FB0E: Branch loc_B40492
  loc_B3FB11: LitI2_Byte 0
  loc_B3FB13: PopTmpLdAd2 var_AA
  loc_B3FB16: from_stack_2v = mskHasta_UnknownEvent_8(from_stack_1v)
  loc_B3FB1B: FLdPr Me
  loc_B3FB1E: MemLdStr global_108
  loc_B3FB21: LitStr vbNullString
  loc_B3FB24: NeStr
  loc_B3FB26: BranchF loc_B3FB2C
  loc_B3FB29: Branch loc_B40492
  loc_B3FB2C: LitI2_Byte 0
  loc_B3FB2E: PopTmpLdAd2 var_AA
  loc_B3FB31: Call CodiFifuMsk_UnknownEvent_8()
  loc_B3FB36: FLdPr Me
  loc_B3FB39: MemLdRfVar from_stack_1.global_72
  loc_B3FB3C: NewIfNullAd
  loc_B3FB3F: FStAd var_B0 
  loc_B3FB43: LitStr "DROP TEMPORARY TABLE IF EXISTS itmp;"
  loc_B3FB46: LitStr " CREATE TEMPORARY TABLE tmp` ("
  loc_B3FB49: ConcatStr
  loc_B3FB4A: FStStrNoPop var_B4
  loc_B3FB4D: LitStr "   odiFifu` varchar(9) NOT NULL default '',"
  loc_B3FB50: ConcatStr
  loc_B3FB51: FStStrNoPop var_B8
  loc_B3FB54: LitStr "   revImpu` decimal(12,2) NOT NULL default '0.00',"
  loc_B3FB57: ConcatStr
  loc_B3FB58: FStStrNoPop var_BC
  loc_B3FB5B: LitStr "   efiImpu` decimal(12,2) NOT NULL default '0.00',"
  loc_B3FB5E: ConcatStr
  loc_B3FB5F: FStStrNoPop var_C0
  loc_B3FB62: LitStr "   eveImpu` decimal(12,2) NOT NULL default '0.00',"
  loc_B3FB65: ConcatStr
  loc_B3FB66: FStStrNoPop var_C4
  loc_B3FB69: LitStr "   apaImpu` decimal(12,2) NOT NULL default '0.00',"
  loc_B3FB6C: ConcatStr
  loc_B3FB6D: FStStrNoPop var_C8
  loc_B3FB70: LitStr "   agaImpu` decimal(12,2) NOT NULL default '0.00',"
  loc_B3FB73: ConcatStr
  loc_B3FB74: FStStrNoPop var_CC
  loc_B3FB77: LitStr "   PRIMARY KEY  (odiFifu`)"
  loc_B3FB7A: ConcatStr
  loc_B3FB7B: FStStrNoPop var_D0
  loc_B3FB7E: LitStr " ) ENGINE=MyISAM ;"
  loc_B3FB81: ConcatStr
  loc_B3FB82: FStStrNoPop var_D4
  loc_B3FB85: LitStr " DROP TEMPORARY TABLE IF EXISTS final;"
  loc_B3FB88: ConcatStr
  loc_B3FB89: FStStrNoPop var_D8
  loc_B3FB8C: LitStr " CREATE TEMPORARY TABLE inal` ("
  loc_B3FB8F: ConcatStr
  loc_B3FB90: FStStrNoPop var_DC
  loc_B3FB93: LitStr "   sTit` TINYINT(1) UNSIGNED NOT NULL,"
  loc_B3FB96: ConcatStr
  loc_B3FB97: FStStrNoPop var_E0
  loc_B3FB9A: LitStr "   odiFifu` varchar(9) NOT NULL default '',"
  loc_B3FB9D: ConcatStr
  loc_B3FB9E: FStStrNoPop var_E4
  loc_B3FBA1: LitStr "   revImpu` decimal(12,2) NOT NULL default '0.00',"
  loc_B3FBA4: ConcatStr
  loc_B3FBA5: FStStrNoPop var_E8
  loc_B3FBA8: LitStr "   efiImpu` decimal(12,2) NOT NULL default '0.00',"
  loc_B3FBAB: ConcatStr
  loc_B3FBAC: FStStrNoPop var_EC
  loc_B3FBAF: LitStr "   eveImpu` decimal(12,2) NOT NULL default '0.00',"
  loc_B3FBB2: ConcatStr
  loc_B3FBB3: FStStrNoPop var_F0
  loc_B3FBB6: LitStr "   apaImpu` decimal(12,2) NOT NULL default '0.00',"
  loc_B3FBB9: ConcatStr
  loc_B3FBBA: FStStrNoPop var_F4
  loc_B3FBBD: LitStr "   agaImpu` decimal(12,2) NOT NULL default '0.00',"
  loc_B3FBC0: ConcatStr
  loc_B3FBC1: FStStrNoPop var_F8
  loc_B3FBC4: LitStr "   PRIMARY KEY  (sTit`,`CodiFifu`)"
  loc_B3FBC7: ConcatStr
  loc_B3FBC8: FStStrNoPop var_FC
  loc_B3FBCB: LitStr " ) ENGINE=MyISAM ;"
  loc_B3FBCE: ConcatStr
  loc_B3FBCF: FStStrNoPop var_100
  loc_B3FBD2: FLdPr var_B0
  loc_B3FBD5: Call clsimputacion.RedefineRS(from_stack_1v)
  loc_B3FBDA: FFreeStr var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = ""
  loc_B3FC05: FLdPr Me
  loc_B3FC08: VCallAd Control_ID_mskDesde
  loc_B3FC0B: FStAdFunc var_118
  loc_B3FC0E: FLdPr var_118
  loc_B3FC11: LateIdLdVar var_128 DispID_15 0
  loc_B3FC18: PopAd
  loc_B3FC1A: FLdPr Me
  loc_B3FC1D: VCallAd Control_ID_mskHasta
  loc_B3FC20: FStAdFunc var_14C
  loc_B3FC23: FLdPr var_14C
  loc_B3FC26: LateIdLdVar var_15C DispID_15 0
  loc_B3FC2D: PopAd
  loc_B3FC2F: LitStr "INSERT INTO itmp"
  loc_B3FC32: LitStr " SELECT CodiFifu, Sum(PrevImpu), Sum(DefiImpu), Sum(DeveImpu), Sum(MapaImpu), Sum(PagaImpu)"
  loc_B3FC35: ConcatStr
  loc_B3FC36: FStStrNoPop var_B4
  loc_B3FC39: LitStr " FROM imputacion i"
  loc_B3FC3C: ConcatStr
  loc_B3FC3D: FStStrNoPop var_B8
  loc_B3FC40: LitStr " INNER JOIN paraconta pc ON pc.PeriInfo = i.PeriInfo"
  loc_B3FC43: ConcatStr
  loc_B3FC44: FStStrNoPop var_BC
  loc_B3FC47: LitStr " WHERE i.PeriInfo = "
  loc_B3FC4A: ConcatStr
  loc_B3FC4B: FStStrNoPop var_C4
  loc_B3FC4E: FLdRfVar var_C0
  loc_B3FC51: FLdPr Me
  loc_B3FC54: VCallAd Control_ID_cboPeriodo
  loc_B3FC57: FStAdFunc var_A8
  loc_B3FC5A: FLdPr var_A8
  loc_B3FC5D:  = Me.Text
  loc_B3FC62: ILdRf var_C0
  loc_B3FC65: ConcatStr
  loc_B3FC66: FStStrNoPop var_C8
  loc_B3FC69: LitStr " AND CodiFifu LIKE '"
  loc_B3FC6C: ConcatStr
  loc_B3FC6D: FStStrNoPop var_CC
  loc_B3FC70: FLdPr Me
  loc_B3FC73: VCallAd Control_ID_CodiFifuMsk
  loc_B3FC76: FStAdFunc var_104
  loc_B3FC79: FLdPr var_104
  loc_B3FC7C: LateIdLdVar var_114 DispID_22 0
  loc_B3FC83: CStrVarTmp
  loc_B3FC84: FStStrNoPop var_D0
  loc_B3FC87: ConcatStr
  loc_B3FC88: FStStrNoPop var_D4
  loc_B3FC8B: LitStr Chr(37) & "'"
  loc_B3FC8E: ConcatStr
  loc_B3FC8F: FStStrNoPop var_D8
  loc_B3FC92: LitStr " AND left(i.CodiPart,1) != PaexPaco"
  loc_B3FC95: ConcatStr
  loc_B3FC96: FStStrNoPop var_DC
  loc_B3FC99: LitStr " AND FechImpu BETWEEN "
  loc_B3FC9C: ConcatStr
  loc_B3FC9D: FStStrNoPop var_E0
  loc_B3FCA0: LitI4 1
  loc_B3FCA5: LitI4 1
  loc_B3FCAA: LitVarStr var_94, "'yyyy-mm-dd'"
  loc_B3FCAF: FStVarCopyObj var_148
  loc_B3FCB2: FLdRfVar var_148
  loc_B3FCB5: FLdRfVar var_128
  loc_B3FCB8: CStrVarTmp
  loc_B3FCB9: CVarStr var_138
  loc_B3FCBC: ImpAdCallI2 Format$(, )
  loc_B3FCC1: FStStrNoPop var_E4
  loc_B3FCC4: ConcatStr
  loc_B3FCC5: FStStrNoPop var_E8
  loc_B3FCC8: LitStr " AND "
  loc_B3FCCB: ConcatStr
  loc_B3FCCC: FStStrNoPop var_EC
  loc_B3FCCF: LitI4 1
  loc_B3FCD4: LitI4 1
  loc_B3FCD9: LitVarStr var_A4, "'yyyy-mm-dd'"
  loc_B3FCDE: FStVarCopyObj var_17C
  loc_B3FCE1: FLdRfVar var_17C
  loc_B3FCE4: FLdRfVar var_15C
  loc_B3FCE7: CStrVarTmp
  loc_B3FCE8: CVarStr var_16C
  loc_B3FCEB: ImpAdCallI2 Format$(, )
  loc_B3FCF0: FStStrNoPop var_F0
  loc_B3FCF3: ConcatStr
  loc_B3FCF4: FStStrNoPop var_F4
  loc_B3FCF7: LitStr " GROUP BY CodiFifu;"
  loc_B3FCFA: ConcatStr
  loc_B3FCFB: FStStrNoPop var_F8
  loc_B3FCFE: FLdPr var_B0
  loc_B3FD01: Call clsimputacion.RedefineRS(from_stack_1v)
  loc_B3FD06: FFreeStr var_B4 = "": var_B8 = "": var_BC = "": var_C4 = "": var_C0 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = ""
  loc_B3FD2D: FFreeAd var_A8 = "": var_104 = "": var_118 = ""
  loc_B3FD38: FFreeVar var_114 = "": var_128 = "": var_138 = "": var_148 = "": var_15C = "": var_16C = ""
  loc_B3FD49: LitStr "Municipalidad de Guaymallén"
  loc_B3FD4C: LitStr "Municipalidad de Maipú"
  loc_B3FD4F: EqStr
  loc_B3FD51: BranchF loc_B3FDD2
  loc_B3FD54: LitStr " INSERT INTO final"
  loc_B3FD57: LitStr " SELECT 1 AS EsTit, Concat(Left(CodiFifu,1),'0000000') CodiFifu, Sum(PrevImpu), Sum(DefiImpu), Sum(DeveImpu), Sum(MapaImpu), Sum(PagaImpu)"
  loc_B3FD5A: ConcatStr
  loc_B3FD5B: FStStrNoPop var_B4
  loc_B3FD5E: LitStr " FROM itmp GROUP BY Left(CodiFifu,1);"
  loc_B3FD61: ConcatStr
  loc_B3FD62: FStStrNoPop var_B8
  loc_B3FD65: LitStr " INSERT IGNORE INTO final"
  loc_B3FD68: ConcatStr
  loc_B3FD69: FStStrNoPop var_BC
  loc_B3FD6C: LitStr " SELECT 2 AS EsTit, Concat(Left(CodiFifu,3),'00000') CodiFifu, Sum(PrevImpu), Sum(DefiImpu), Sum(DeveImpu), Sum(MapaImpu), Sum(PagaImpu)"
  loc_B3FD6F: ConcatStr
  loc_B3FD70: FStStrNoPop var_C0
  loc_B3FD73: LitStr " FROM itmp GROUP BY Left(CodiFifu,3);"
  loc_B3FD76: ConcatStr
  loc_B3FD77: FStStrNoPop var_C4
  loc_B3FD7A: FLdPr var_B0
  loc_B3FD7D: Call clsimputacion.RedefineRS(from_stack_1v)
  loc_B3FD82: FFreeStr var_B4 = "": var_B8 = "": var_BC = "": var_C0 = ""
  loc_B3FD8F: FLdRfVar var_AA
  loc_B3FD92: FLdPr Me
  loc_B3FD95: VCallAd Control_ID_OptAnalitico
  loc_B3FD98: FStAdFunc var_A8
  loc_B3FD9B: FLdPr var_A8
  loc_B3FD9E:  = Me.Value
  loc_B3FDA3: FLdI2 var_AA
  loc_B3FDA6: LitI2_Byte &HFF
  loc_B3FDA8: EqI2
  loc_B3FDA9: FFree1Ad var_A8
  loc_B3FDAC: BranchF loc_B3FDCF
  loc_B3FDAF: LitStr " INSERT IGNORE INTO final"
  loc_B3FDB2: LitStr " SELECT 3 AS EsTit, Concat(Left(CodiFifu,5),'000') CodiFifu, Sum(PrevImpu), Sum(DefiImpu), Sum(DeveImpu), Sum(MapaImpu), Sum(PagaImpu)"
  loc_B3FDB5: ConcatStr
  loc_B3FDB6: FStStrNoPop var_B4
  loc_B3FDB9: LitStr " FROM itmp GROUP BY Left(CodiFifu,5);"
  loc_B3FDBC: ConcatStr
  loc_B3FDBD: FStStrNoPop var_B8
  loc_B3FDC0: FLdPr var_B0
  loc_B3FDC3: Call clsimputacion.RedefineRS(from_stack_1v)
  loc_B3FDC8: FFreeStr var_B4 = ""
  loc_B3FDCF: Branch loc_B3FE0D
  loc_B3FDD2: LitStr " INSERT INTO final"
  loc_B3FDD5: LitStr " SELECT 1 AS EsTit, Concat(Left(CodiFifu,2),'0000') CodiFifu, Sum(PrevImpu), Sum(DefiImpu), Sum(DeveImpu), Sum(MapaImpu), Sum(PagaImpu)"
  loc_B3FDD8: ConcatStr
  loc_B3FDD9: FStStrNoPop var_B4
  loc_B3FDDC: LitStr " FROM itmp GROUP BY Left(CodiFifu,2);"
  loc_B3FDDF: ConcatStr
  loc_B3FDE0: FStStrNoPop var_B8
  loc_B3FDE3: LitStr " INSERT IGNORE INTO final"
  loc_B3FDE6: ConcatStr
  loc_B3FDE7: FStStrNoPop var_BC
  loc_B3FDEA: LitStr " SELECT 2 AS EsTit, Concat(Left(CodiFifu,4),'00') CodiFifu, Sum(PrevImpu), Sum(DefiImpu), Sum(DeveImpu), Sum(MapaImpu), Sum(PagaImpu)"
  loc_B3FDED: ConcatStr
  loc_B3FDEE: FStStrNoPop var_C0
  loc_B3FDF1: LitStr " FROM itmp GROUP BY Left(CodiFifu,4);"
  loc_B3FDF4: ConcatStr
  loc_B3FDF5: FStStrNoPop var_C4
  loc_B3FDF8: FLdPr var_B0
  loc_B3FDFB: Call clsimputacion.RedefineRS(from_stack_1v)
  loc_B3FE00: FFreeStr var_B4 = "": var_B8 = "": var_BC = "": var_C0 = ""
  loc_B3FE0D: FLdRfVar var_AA
  loc_B3FE10: FLdPr Me
  loc_B3FE13: VCallAd Control_ID_OptAnalitico
  loc_B3FE16: FStAdFunc var_A8
  loc_B3FE19: FLdPr var_A8
  loc_B3FE1C:  = Me.Value
  loc_B3FE21: FLdI2 var_AA
  loc_B3FE24: LitI2_Byte &HFF
  loc_B3FE26: EqI2
  loc_B3FE27: FFree1Ad var_A8
  loc_B3FE2A: BranchF loc_B3FE4D
  loc_B3FE2D: LitStr " INSERT IGNORE INTO final"
  loc_B3FE30: LitStr " SELECT 0 AS EsTit, CodiFifu, Sum(PrevImpu), Sum(DefiImpu), Sum(DeveImpu), Sum(MapaImpu), Sum(PagaImpu)"
  loc_B3FE33: ConcatStr
  loc_B3FE34: FStStrNoPop var_B4
  loc_B3FE37: LitStr " FROM itmp GROUP BY CodiFifu;"
  loc_B3FE3A: ConcatStr
  loc_B3FE3B: FStStrNoPop var_B8
  loc_B3FE3E: FLdPr var_B0
  loc_B3FE41: Call clsimputacion.RedefineRS(from_stack_1v)
  loc_B3FE46: FFreeStr var_B4 = ""
  loc_B3FE4D: LitStr "SELECT final.*, EsTit AS Dife, DetaFifu FROM final"
  loc_B3FE50: LitStr " LEFT JOIN finalidad ON finalidad.PeriInfo = "
  loc_B3FE53: ConcatStr
  loc_B3FE54: FStStrNoPop var_B8
  loc_B3FE57: FLdRfVar var_B4
  loc_B3FE5A: FLdPr Me
  loc_B3FE5D: VCallAd Control_ID_cboPeriodo
  loc_B3FE60: FStAdFunc var_A8
  loc_B3FE63: FLdPr var_A8
  loc_B3FE66:  = Me.Text
  loc_B3FE6B: ILdRf var_B4
  loc_B3FE6E: ConcatStr
  loc_B3FE6F: FStStrNoPop var_BC
  loc_B3FE72: LitStr " AND finalidad.CodiFifu = final.CodiFifu"
  loc_B3FE75: ConcatStr
  loc_B3FE76: FStStrNoPop var_C0
  loc_B3FE79: LitStr " ORDER BY CodiFifu, EsTit DESC"
  loc_B3FE7C: ConcatStr
  loc_B3FE7D: FStStrNoPop var_C4
  loc_B3FE80: FLdPr var_B0
  loc_B3FE83: Call clsimputacion.RedefineRS(from_stack_1v)
  loc_B3FE88: FFreeStr var_B8 = "": var_B4 = "": var_BC = "": var_C0 = ""
  loc_B3FE95: FFree1Ad var_A8
  loc_B3FE98: FLdRfVar var_180
  loc_B3FE9B: FLdPr var_B0
  loc_B3FE9E: from_stack_1 = clsimputacion.RecordCount
  loc_B3FEA3: ILdRf var_180
  loc_B3FEA6: LitI4 1
  loc_B3FEAB: LtI4
  loc_B3FEAC: BranchF loc_B3FEBF
  loc_B3FEAF: LitI4 0
  loc_B3FEB4: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_B3FEB7: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B3FEBC: Branch loc_B40492
  loc_B3FEBF: LitI4 0
  loc_B3FEC4: FLdRfVar var_180
  loc_B3FEC7: FLdPr var_B0
  loc_B3FECA: from_stack_1 = clsimputacion.RecordCount
  loc_B3FECF: ILdRf var_180
  loc_B3FED2: FLdPr Me
  loc_B3FED5: MemLdRfVar from_stack_1.global_96
  loc_B3FED8: Redim
  loc_B3FEE2: LitI4 0
  loc_B3FEE7: LitI4 1
  loc_B3FEEC: FLdPr Me
  loc_B3FEEF: MemLdRfVar from_stack_1.global_104
  loc_B3FEF2: Redim
  loc_B3FEFC: FLdPr var_B0
  loc_B3FEFF: Call clsimputacion.MoveFirst()
  loc_B3FF04: LitI2_Byte 1
  loc_B3FF06: FLdPr Me
  loc_B3FF09: MemLdRfVar from_stack_1.global_100
  loc_B3FF0C: FLdPr Me
  loc_B3FF0F: MemLdStr global_96
  loc_B3FF12: LitI2_Byte 1
  loc_B3FF14: FnUBound
  loc_B3FF16: CI2I4
  loc_B3FF17: ForI2 var_184
  loc_B3FF1D: FLdRfVar var_114
  loc_B3FF20: FLdRfVar var_118
  loc_B3FF23: LitVarStr var_94, "Dife"
  loc_B3FF28: PopAdLdVar
  loc_B3FF29: FLdRfVar var_104
  loc_B3FF2C: FLdRfVar var_A8
  loc_B3FF2F: FLdPr var_B0
  loc_B3FF32: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B3FF37: FLdPr var_A8
  loc_B3FF3A:  = Me.Fields
  loc_B3FF3F: FLdPr var_104
  loc_B3FF42: from_stack_2 = Me.Item(from_stack_1)
  loc_B3FF47: FLdPr var_118
  loc_B3FF4A:  = Me.Value
  loc_B3FF4F: FLdRfVar var_114
  loc_B3FF52: CI2Var
  loc_B3FF53: FLdPr Me
  loc_B3FF56: MemLdI2 global_100
  loc_B3FF59: CI4UI1
  loc_B3FF5A: FLdPr Me
  loc_B3FF5D: MemLdStr global_96
  loc_B3FF60: Ary1LdPr
  loc_B3FF61: MemStI2 global_0
  loc_B3FF64: FFreeAd var_A8 = "": var_104 = ""
  loc_B3FF6D: FFree1Var var_114 = ""
  loc_B3FF70: FLdRfVar var_118
  loc_B3FF73: LitVarStr var_94, "CodiFifu"
  loc_B3FF78: PopAdLdVar
  loc_B3FF79: FLdRfVar var_104
  loc_B3FF7C: FLdRfVar var_A8
  loc_B3FF7F: FLdPr var_B0
  loc_B3FF82: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B3FF87: FLdPr var_A8
  loc_B3FF8A:  = Me.Fields
  loc_B3FF8F: FLdPr var_104
  loc_B3FF92: from_stack_2 = Me.Item(from_stack_1)
  loc_B3FF97: LitI2_Byte 0
  loc_B3FF99: LitVar_Missing var_128
  loc_B3FF9C: LitI2_Byte 0
  loc_B3FF9E: FLdZeroAd var_118
  loc_B3FFA1: CVarAd
  loc_B3FFA5: PopAdLdVar
  loc_B3FFA6: FLdPr Me
  loc_B3FFA9: MemLdI2 global_100
  loc_B3FFAC: CI4UI1
  loc_B3FFAD: FLdPr Me
  loc_B3FFB0: MemLdStr global_96
  loc_B3FFB3: AryLock
  loc_B3FFB6: Ary1LdPr
  loc_B3FFB7: MemLdRfVar from_stack_1.global_4
  loc_B3FFBA: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B3FFBF: AryUnlock
  loc_B3FFC2: FFreeAd var_A8 = ""
  loc_B3FFC9: FFreeVar var_114 = ""
  loc_B3FFD0: FLdRfVar var_118
  loc_B3FFD3: LitVarStr var_94, "DetaFifu"
  loc_B3FFD8: PopAdLdVar
  loc_B3FFD9: FLdRfVar var_104
  loc_B3FFDC: FLdRfVar var_A8
  loc_B3FFDF: FLdPr var_B0
  loc_B3FFE2: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B3FFE7: FLdPr var_A8
  loc_B3FFEA:  = Me.Fields
  loc_B3FFEF: FLdPr var_104
  loc_B3FFF2: from_stack_2 = Me.Item(from_stack_1)
  loc_B3FFF7: LitI2_Byte 0
  loc_B3FFF9: LitVar_Missing var_128
  loc_B3FFFC: LitI2_Byte 0
  loc_B3FFFE: FLdZeroAd var_118
  loc_B40001: CVarAd
  loc_B40005: PopAdLdVar
  loc_B40006: FLdPr Me
  loc_B40009: MemLdI2 global_100
  loc_B4000C: CI4UI1
  loc_B4000D: FLdPr Me
  loc_B40010: MemLdStr global_96
  loc_B40013: AryLock
  loc_B40016: Ary1LdPr
  loc_B40017: MemLdRfVar from_stack_1.global_8
  loc_B4001A: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B4001F: AryUnlock
  loc_B40022: FFreeAd var_A8 = ""
  loc_B40029: FFreeVar var_114 = ""
  loc_B40030: FLdPr Me
  loc_B40033: MemLdI2 global_100
  loc_B40036: CI4UI1
  loc_B40037: FLdPr Me
  loc_B4003A: MemLdStr global_96
  loc_B4003D: Ary1LdPr
  loc_B4003E: MemLdI2 global_0
  loc_B40041: LitI2_Byte 1
  loc_B40043: EqI2
  loc_B40044: BranchF loc_B40289
  loc_B40047: FLdRfVar var_118
  loc_B4004A: LitVarStr var_94, "PrevImpu"
  loc_B4004F: PopAdLdVar
  loc_B40050: FLdRfVar var_104
  loc_B40053: FLdRfVar var_A8
  loc_B40056: FLdPr var_B0
  loc_B40059: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B4005E: FLdPr var_A8
  loc_B40061:  = Me.Fields
  loc_B40066: FLdPr var_104
  loc_B40069: from_stack_2 = Me.Item(from_stack_1)
  loc_B4006E: LitI2_Byte 0
  loc_B40070: LitI4 1
  loc_B40075: FLdPr Me
  loc_B40078: MemLdStr global_104
  loc_B4007B: AryLock
  loc_B4007E: Ary1LdPr
  loc_B4007F: MemLdRfVar from_stack_1.global_12
  loc_B40082: CVarRef
  loc_B40087: LitI2_Byte &HFF
  loc_B40089: FLdZeroAd var_118
  loc_B4008C: CVarAd
  loc_B40090: PopAdLdVar
  loc_B40091: FLdPr Me
  loc_B40094: MemLdI2 global_100
  loc_B40097: CI4UI1
  loc_B40098: FLdPr Me
  loc_B4009B: MemLdStr global_96
  loc_B4009E: AryLock
  loc_B400A1: Ary1LdPr
  loc_B400A2: MemLdRfVar from_stack_1.global_12
  loc_B400A5: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B400AA: AryUnlock
  loc_B400AD: AryUnlock
  loc_B400B0: FFreeAd var_A8 = ""
  loc_B400B7: FFree1Var var_114 = ""
  loc_B400BA: FLdRfVar var_118
  loc_B400BD: LitVarStr var_94, "DefiImpu"
  loc_B400C2: PopAdLdVar
  loc_B400C3: FLdRfVar var_104
  loc_B400C6: FLdRfVar var_A8
  loc_B400C9: FLdPr var_B0
  loc_B400CC: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B400D1: FLdPr var_A8
  loc_B400D4:  = Me.Fields
  loc_B400D9: FLdPr var_104
  loc_B400DC: from_stack_2 = Me.Item(from_stack_1)
  loc_B400E1: LitI2_Byte 0
  loc_B400E3: LitI4 1
  loc_B400E8: FLdPr Me
  loc_B400EB: MemLdStr global_104
  loc_B400EE: AryLock
  loc_B400F1: Ary1LdPr
  loc_B400F2: MemLdRfVar from_stack_1.global_16
  loc_B400F5: CVarRef
  loc_B400FA: LitI2_Byte &HFF
  loc_B400FC: FLdZeroAd var_118
  loc_B400FF: CVarAd
  loc_B40103: PopAdLdVar
  loc_B40104: FLdPr Me
  loc_B40107: MemLdI2 global_100
  loc_B4010A: CI4UI1
  loc_B4010B: FLdPr Me
  loc_B4010E: MemLdStr global_96
  loc_B40111: AryLock
  loc_B40114: Ary1LdPr
  loc_B40115: MemLdRfVar from_stack_1.global_16
  loc_B40118: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B4011D: AryUnlock
  loc_B40120: AryUnlock
  loc_B40123: FFreeAd var_A8 = ""
  loc_B4012A: FFree1Var var_114 = ""
  loc_B4012D: FLdRfVar var_118
  loc_B40130: LitVarStr var_94, "DeveImpu"
  loc_B40135: PopAdLdVar
  loc_B40136: FLdRfVar var_104
  loc_B40139: FLdRfVar var_A8
  loc_B4013C: FLdPr var_B0
  loc_B4013F: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B40144: FLdPr var_A8
  loc_B40147:  = Me.Fields
  loc_B4014C: FLdPr var_104
  loc_B4014F: from_stack_2 = Me.Item(from_stack_1)
  loc_B40154: LitI2_Byte 0
  loc_B40156: LitI4 1
  loc_B4015B: FLdPr Me
  loc_B4015E: MemLdStr global_104
  loc_B40161: AryLock
  loc_B40164: Ary1LdPr
  loc_B40165: MemLdRfVar from_stack_1.global_20
  loc_B40168: CVarRef
  loc_B4016D: LitI2_Byte &HFF
  loc_B4016F: FLdZeroAd var_118
  loc_B40172: CVarAd
  loc_B40176: PopAdLdVar
  loc_B40177: FLdPr Me
  loc_B4017A: MemLdI2 global_100
  loc_B4017D: CI4UI1
  loc_B4017E: FLdPr Me
  loc_B40181: MemLdStr global_96
  loc_B40184: AryLock
  loc_B40187: Ary1LdPr
  loc_B40188: MemLdRfVar from_stack_1.global_20
  loc_B4018B: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B40190: AryUnlock
  loc_B40193: AryUnlock
  loc_B40196: FFreeAd var_A8 = ""
  loc_B4019D: FFree1Var var_114 = ""
  loc_B401A0: FLdRfVar var_118
  loc_B401A3: LitVarStr var_94, "MapaImpu"
  loc_B401A8: PopAdLdVar
  loc_B401A9: FLdRfVar var_104
  loc_B401AC: FLdRfVar var_A8
  loc_B401AF: FLdPr var_B0
  loc_B401B2: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B401B7: FLdPr var_A8
  loc_B401BA:  = Me.Fields
  loc_B401BF: FLdPr var_104
  loc_B401C2: from_stack_2 = Me.Item(from_stack_1)
  loc_B401C7: LitI2_Byte 0
  loc_B401C9: LitI4 1
  loc_B401CE: FLdPr Me
  loc_B401D1: MemLdStr global_104
  loc_B401D4: AryLock
  loc_B401D7: Ary1LdPr
  loc_B401D8: MemLdRfVar from_stack_1.global_24
  loc_B401DB: CVarRef
  loc_B401E0: LitI2_Byte &HFF
  loc_B401E2: FLdZeroAd var_118
  loc_B401E5: CVarAd
  loc_B401E9: PopAdLdVar
  loc_B401EA: FLdPr Me
  loc_B401ED: MemLdI2 global_100
  loc_B401F0: CI4UI1
  loc_B401F1: FLdPr Me
  loc_B401F4: MemLdStr global_96
  loc_B401F7: AryLock
  loc_B401FA: Ary1LdPr
  loc_B401FB: MemLdRfVar from_stack_1.global_24
  loc_B401FE: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B40203: AryUnlock
  loc_B40206: AryUnlock
  loc_B40209: FFreeAd var_A8 = ""
  loc_B40210: FFree1Var var_114 = ""
  loc_B40213: FLdRfVar var_118
  loc_B40216: LitVarStr var_94, "PagaImpu"
  loc_B4021B: PopAdLdVar
  loc_B4021C: FLdRfVar var_104
  loc_B4021F: FLdRfVar var_A8
  loc_B40222: FLdPr var_B0
  loc_B40225: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B4022A: FLdPr var_A8
  loc_B4022D:  = Me.Fields
  loc_B40232: FLdPr var_104
  loc_B40235: from_stack_2 = Me.Item(from_stack_1)
  loc_B4023A: LitI2_Byte 0
  loc_B4023C: LitI4 1
  loc_B40241: FLdPr Me
  loc_B40244: MemLdStr global_104
  loc_B40247: AryLock
  loc_B4024A: Ary1LdPr
  loc_B4024B: MemLdRfVar from_stack_1.global_28
  loc_B4024E: CVarRef
  loc_B40253: LitI2_Byte &HFF
  loc_B40255: FLdZeroAd var_118
  loc_B40258: CVarAd
  loc_B4025C: PopAdLdVar
  loc_B4025D: FLdPr Me
  loc_B40260: MemLdI2 global_100
  loc_B40263: CI4UI1
  loc_B40264: FLdPr Me
  loc_B40267: MemLdStr global_96
  loc_B4026A: AryLock
  loc_B4026D: Ary1LdPr
  loc_B4026E: MemLdRfVar from_stack_1.global_28
  loc_B40271: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B40276: AryUnlock
  loc_B40279: AryUnlock
  loc_B4027C: FFreeAd var_A8 = ""
  loc_B40283: FFree1Var var_114 = ""
  loc_B40286: Branch loc_B40469
  loc_B40289: FLdRfVar var_118
  loc_B4028C: LitVarStr var_94, "PrevImpu"
  loc_B40291: PopAdLdVar
  loc_B40292: FLdRfVar var_104
  loc_B40295: FLdRfVar var_A8
  loc_B40298: FLdPr var_B0
  loc_B4029B: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B402A0: FLdPr var_A8
  loc_B402A3:  = Me.Fields
  loc_B402A8: FLdPr var_104
  loc_B402AB: from_stack_2 = Me.Item(from_stack_1)
  loc_B402B0: LitI2_Byte 0
  loc_B402B2: LitVar_Missing var_128
  loc_B402B5: LitI2_Byte &HFF
  loc_B402B7: FLdZeroAd var_118
  loc_B402BA: CVarAd
  loc_B402BE: PopAdLdVar
  loc_B402BF: FLdPr Me
  loc_B402C2: MemLdI2 global_100
  loc_B402C5: CI4UI1
  loc_B402C6: FLdPr Me
  loc_B402C9: MemLdStr global_96
  loc_B402CC: AryLock
  loc_B402CF: Ary1LdPr
  loc_B402D0: MemLdRfVar from_stack_1.global_12
  loc_B402D3: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B402D8: AryUnlock
  loc_B402DB: FFreeAd var_A8 = ""
  loc_B402E2: FFreeVar var_114 = ""
  loc_B402E9: FLdRfVar var_118
  loc_B402EC: LitVarStr var_94, "DefiImpu"
  loc_B402F1: PopAdLdVar
  loc_B402F2: FLdRfVar var_104
  loc_B402F5: FLdRfVar var_A8
  loc_B402F8: FLdPr var_B0
  loc_B402FB: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B40300: FLdPr var_A8
  loc_B40303:  = Me.Fields
  loc_B40308: FLdPr var_104
  loc_B4030B: from_stack_2 = Me.Item(from_stack_1)
  loc_B40310: LitI2_Byte 0
  loc_B40312: LitVar_Missing var_128
  loc_B40315: LitI2_Byte &HFF
  loc_B40317: FLdZeroAd var_118
  loc_B4031A: CVarAd
  loc_B4031E: PopAdLdVar
  loc_B4031F: FLdPr Me
  loc_B40322: MemLdI2 global_100
  loc_B40325: CI4UI1
  loc_B40326: FLdPr Me
  loc_B40329: MemLdStr global_96
  loc_B4032C: AryLock
  loc_B4032F: Ary1LdPr
  loc_B40330: MemLdRfVar from_stack_1.global_16
  loc_B40333: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B40338: AryUnlock
  loc_B4033B: FFreeAd var_A8 = ""
  loc_B40342: FFreeVar var_114 = ""
  loc_B40349: FLdRfVar var_118
  loc_B4034C: LitVarStr var_94, "DeveImpu"
  loc_B40351: PopAdLdVar
  loc_B40352: FLdRfVar var_104
  loc_B40355: FLdRfVar var_A8
  loc_B40358: FLdPr var_B0
  loc_B4035B: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B40360: FLdPr var_A8
  loc_B40363:  = Me.Fields
  loc_B40368: FLdPr var_104
  loc_B4036B: from_stack_2 = Me.Item(from_stack_1)
  loc_B40370: LitI2_Byte 0
  loc_B40372: LitVar_Missing var_128
  loc_B40375: LitI2_Byte &HFF
  loc_B40377: FLdZeroAd var_118
  loc_B4037A: CVarAd
  loc_B4037E: PopAdLdVar
  loc_B4037F: FLdPr Me
  loc_B40382: MemLdI2 global_100
  loc_B40385: CI4UI1
  loc_B40386: FLdPr Me
  loc_B40389: MemLdStr global_96
  loc_B4038C: AryLock
  loc_B4038F: Ary1LdPr
  loc_B40390: MemLdRfVar from_stack_1.global_20
  loc_B40393: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B40398: AryUnlock
  loc_B4039B: FFreeAd var_A8 = ""
  loc_B403A2: FFreeVar var_114 = ""
  loc_B403A9: FLdRfVar var_118
  loc_B403AC: LitVarStr var_94, "MapaImpu"
  loc_B403B1: PopAdLdVar
  loc_B403B2: FLdRfVar var_104
  loc_B403B5: FLdRfVar var_A8
  loc_B403B8: FLdPr var_B0
  loc_B403BB: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B403C0: FLdPr var_A8
  loc_B403C3:  = Me.Fields
  loc_B403C8: FLdPr var_104
  loc_B403CB: from_stack_2 = Me.Item(from_stack_1)
  loc_B403D0: LitI2_Byte 0
  loc_B403D2: LitVar_Missing var_128
  loc_B403D5: LitI2_Byte &HFF
  loc_B403D7: FLdZeroAd var_118
  loc_B403DA: CVarAd
  loc_B403DE: PopAdLdVar
  loc_B403DF: FLdPr Me
  loc_B403E2: MemLdI2 global_100
  loc_B403E5: CI4UI1
  loc_B403E6: FLdPr Me
  loc_B403E9: MemLdStr global_96
  loc_B403EC: AryLock
  loc_B403EF: Ary1LdPr
  loc_B403F0: MemLdRfVar from_stack_1.global_24
  loc_B403F3: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B403F8: AryUnlock
  loc_B403FB: FFreeAd var_A8 = ""
  loc_B40402: FFreeVar var_114 = ""
  loc_B40409: FLdRfVar var_118
  loc_B4040C: LitVarStr var_94, "PagaImpu"
  loc_B40411: PopAdLdVar
  loc_B40412: FLdRfVar var_104
  loc_B40415: FLdRfVar var_A8
  loc_B40418: FLdPr var_B0
  loc_B4041B: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B40420: FLdPr var_A8
  loc_B40423:  = Me.Fields
  loc_B40428: FLdPr var_104
  loc_B4042B: from_stack_2 = Me.Item(from_stack_1)
  loc_B40430: LitI2_Byte 0
  loc_B40432: LitVar_Missing var_128
  loc_B40435: LitI2_Byte &HFF
  loc_B40437: FLdZeroAd var_118
  loc_B4043A: CVarAd
  loc_B4043E: PopAdLdVar
  loc_B4043F: FLdPr Me
  loc_B40442: MemLdI2 global_100
  loc_B40445: CI4UI1
  loc_B40446: FLdPr Me
  loc_B40449: MemLdStr global_96
  loc_B4044C: AryLock
  loc_B4044F: Ary1LdPr
  loc_B40450: MemLdRfVar from_stack_1.global_28
  loc_B40453: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B40458: AryUnlock
  loc_B4045B: FFreeAd var_A8 = ""
  loc_B40462: FFreeVar var_114 = ""
  loc_B40469: LitI4 1
  loc_B4046E: PopTmpLdAdStr var_180
  loc_B40471: FLdPr var_B0
  loc_B40474: Call clsimputacion.Mover(from_stack_1v)
  loc_B40479: FLdPr Me
  loc_B4047C: MemLdRfVar from_stack_1.global_100
  loc_B4047F: NextI2 var_184, loc_B3FF1D
  loc_B40484: LitNothing
  loc_B40486: FStAd var_B0 
  loc_B4048A: LitI2_Byte &HFF
  loc_B4048C: FLdPr Me
  loc_B4048F: MemStI2 bGenerado
  loc_B40492: LitI2_Byte 0
  loc_B40494: FLdPr Me
  loc_B40497: Me.MousePointer = from_stack_1
  loc_B4049C: LitVarStr var_94, vbNullString
  loc_B404A1: PopAdLdVar
  loc_B404A2: FLdPr Me
  loc_B404A5: VCallAd Control_ID_statusBar
  loc_B404A8: FStAdFunc var_A8
  loc_B404AB: FLdPr var_A8
  loc_B404AE: LateIdSt
  loc_B404B3: FFree1Ad var_A8
  loc_B404B6: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'A76F28
  'Data Table: 49A5B8
  loc_A76B50: FLdRfVar var_88
  loc_A76B53: LitI2_Byte 0
  loc_A76B55: LitI2_Byte &HFF
  loc_A76B57: ImpAdLdI4 MemVar_C3D83C
  loc_A76B5A: FLdPr Me
  loc_A76B5D: MemLdRfVar from_stack_1.global_76
  loc_A76B60: NewIfNullPr IFileSystem3
  loc_A76B63: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_A76B68: ILdRf var_88
  loc_A76B6B: FLdPr Me
  loc_A76B6E: MemStVarAd
  loc_A76B72: FFree1Ad var_88
  loc_A76B75: Call Proc_228_27_A91458()
  loc_A76B7A: LitI2_Byte 1
  loc_A76B7C: FLdPr Me
  loc_A76B7F: MemLdRfVar from_stack_1.global_100
  loc_A76B82: FLdPr Me
  loc_A76B85: MemLdStr global_96
  loc_A76B88: LitI2_Byte 1
  loc_A76B8A: FnUBound
  loc_A76B8C: CI2I4
  loc_A76B8D: ForI2 var_8C
  loc_A76B93: FLdPr Me
  loc_A76B96: MemLdI2 global_100
  loc_A76B99: CI4UI1
  loc_A76B9A: FLdPr Me
  loc_A76B9D: MemLdStr global_96
  loc_A76BA0: AryLock
  loc_A76BA3: Ary1LdRf
  loc_A76BA4: FStR4 var_94
  loc_A76BA7: FMemLdI2 var_94(0)
  loc_A76BAC: FStI2 var_96
  loc_A76BAF: FLdI2 var_96
  loc_A76BB2: LitI2_Byte 1
  loc_A76BB4: EqI2
  loc_A76BB5: BranchF loc_A76BCF
  loc_A76BB8: LitVarStr var_A8, "    <tr valign=""top"" class=""Totales"" nowrap>"
  loc_A76BBD: PopAdLdVar
  loc_A76BBE: FLdPr Me
  loc_A76BC1: MemLdRfVar from_stack_1.htmFile
  loc_A76BC4: LdPrVar
  loc_A76BC6: LateMemCall
  loc_A76BCC: Branch loc_A76C63
  loc_A76BCF: FLdI2 var_96
  loc_A76BD2: LitI2_Byte 2
  loc_A76BD4: EqI2
  loc_A76BD5: BranchF loc_A76BEF
  loc_A76BD8: LitVarStr var_A8, "    <tr valign=""top"" class=""Totales2"" nowrap>"
  loc_A76BDD: PopAdLdVar
  loc_A76BDE: FLdPr Me
  loc_A76BE1: MemLdRfVar from_stack_1.htmFile
  loc_A76BE4: LdPrVar
  loc_A76BE6: LateMemCall
  loc_A76BEC: Branch loc_A76C63
  loc_A76BEF: FLdI2 var_96
  loc_A76BF2: LitI2_Byte 3
  loc_A76BF4: EqI2
  loc_A76BF5: BranchF loc_A76C0F
  loc_A76BF8: LitVarStr var_A8, "    <tr valign=""top"" class=""Totales3"" nowrap>"
  loc_A76BFD: PopAdLdVar
  loc_A76BFE: FLdPr Me
  loc_A76C01: MemLdRfVar from_stack_1.htmFile
  loc_A76C04: LdPrVar
  loc_A76C06: LateMemCall
  loc_A76C0C: Branch loc_A76C63
  loc_A76C0F: FLdI2 var_96
  loc_A76C12: LitI2_Byte 4
  loc_A76C14: EqI2
  loc_A76C15: BranchF loc_A76C2F
  loc_A76C18: LitVarStr var_A8, "    <tr valign=""top"" class=""Totales4"" nowrap>"
  loc_A76C1D: PopAdLdVar
  loc_A76C1E: FLdPr Me
  loc_A76C21: MemLdRfVar from_stack_1.htmFile
  loc_A76C24: LdPrVar
  loc_A76C26: LateMemCall
  loc_A76C2C: Branch loc_A76C63
  loc_A76C2F: FLdI2 var_96
  loc_A76C32: LitI2_Byte 5
  loc_A76C34: EqI2
  loc_A76C35: BranchF loc_A76C4F
  loc_A76C38: LitVarStr var_A8, "    <tr valign=""top"" class=""Totales5"" nowrap>"
  loc_A76C3D: PopAdLdVar
  loc_A76C3E: FLdPr Me
  loc_A76C41: MemLdRfVar from_stack_1.htmFile
  loc_A76C44: LdPrVar
  loc_A76C46: LateMemCall
  loc_A76C4C: Branch loc_A76C63
  loc_A76C4F: LitVarStr var_A8, "    <tr valign=""top"" class=""LineaDato"">"
  loc_A76C54: PopAdLdVar
  loc_A76C55: FLdPr Me
  loc_A76C58: MemLdRfVar from_stack_1.htmFile
  loc_A76C5B: LdPrVar
  loc_A76C5D: LateMemCall
  loc_A76C63: LitI4 0
  loc_A76C68: LitI4 0
  loc_A76C6D: LitI2_Byte 0
  loc_A76C6F: LitStr "left"
  loc_A76C72: FMemLdR4 var_94(4)
  loc_A76C77: LitStr " - "
  loc_A76C7A: ConcatStr
  loc_A76C7B: FStStrNoPop var_BC
  loc_A76C7E: FMemLdR4 var_94(8)
  loc_A76C83: ConcatStr
  loc_A76C84: FStStrNoPop var_C0
  loc_A76C87: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A76C8C: CVarStr var_D0
  loc_A76C8F: PopAdLdVar
  loc_A76C90: FLdPr Me
  loc_A76C93: MemLdRfVar from_stack_1.htmFile
  loc_A76C96: LdPrVar
  loc_A76C98: LateMemCall
  loc_A76C9E: FFreeStr var_BC = ""
  loc_A76CA5: FFree1Var var_D0 = ""
  loc_A76CA8: LitI4 0
  loc_A76CAD: LitI4 0
  loc_A76CB2: LitI2_Byte 0
  loc_A76CB4: LitStr "right"
  loc_A76CB7: FMemLdR4 var_94(12)
  loc_A76CBC: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A76CC1: CVarStr var_D0
  loc_A76CC4: PopAdLdVar
  loc_A76CC5: FLdPr Me
  loc_A76CC8: MemLdRfVar from_stack_1.htmFile
  loc_A76CCB: LdPrVar
  loc_A76CCD: LateMemCall
  loc_A76CD3: FFree1Var var_D0 = ""
  loc_A76CD6: LitI4 0
  loc_A76CDB: LitI4 0
  loc_A76CE0: LitI2_Byte 0
  loc_A76CE2: LitStr "right"
  loc_A76CE5: FMemLdR4 var_94(16)
  loc_A76CEA: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A76CEF: CVarStr var_D0
  loc_A76CF2: PopAdLdVar
  loc_A76CF3: FLdPr Me
  loc_A76CF6: MemLdRfVar from_stack_1.htmFile
  loc_A76CF9: LdPrVar
  loc_A76CFB: LateMemCall
  loc_A76D01: FFree1Var var_D0 = ""
  loc_A76D04: LitI4 0
  loc_A76D09: LitI4 0
  loc_A76D0E: LitI2_Byte 0
  loc_A76D10: LitStr "right"
  loc_A76D13: FMemLdR4 var_94(20)
  loc_A76D18: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A76D1D: CVarStr var_D0
  loc_A76D20: PopAdLdVar
  loc_A76D21: FLdPr Me
  loc_A76D24: MemLdRfVar from_stack_1.htmFile
  loc_A76D27: LdPrVar
  loc_A76D29: LateMemCall
  loc_A76D2F: FFree1Var var_D0 = ""
  loc_A76D32: LitI4 0
  loc_A76D37: LitI4 0
  loc_A76D3C: LitI2_Byte 0
  loc_A76D3E: LitStr "right"
  loc_A76D41: FMemLdR4 var_94(24)
  loc_A76D46: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A76D4B: CVarStr var_D0
  loc_A76D4E: PopAdLdVar
  loc_A76D4F: FLdPr Me
  loc_A76D52: MemLdRfVar from_stack_1.htmFile
  loc_A76D55: LdPrVar
  loc_A76D57: LateMemCall
  loc_A76D5D: FFree1Var var_D0 = ""
  loc_A76D60: LitI4 0
  loc_A76D65: LitI4 0
  loc_A76D6A: LitI2_Byte 0
  loc_A76D6C: LitStr "right"
  loc_A76D6F: FMemLdR4 var_94(28)
  loc_A76D74: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A76D79: CVarStr var_D0
  loc_A76D7C: PopAdLdVar
  loc_A76D7D: FLdPr Me
  loc_A76D80: MemLdRfVar from_stack_1.htmFile
  loc_A76D83: LdPrVar
  loc_A76D85: LateMemCall
  loc_A76D8B: FFree1Var var_D0 = ""
  loc_A76D8E: LitVarStr var_A8, "     </tr>"
  loc_A76D93: PopAdLdVar
  loc_A76D94: FLdPr Me
  loc_A76D97: MemLdRfVar from_stack_1.htmFile
  loc_A76D9A: LdPrVar
  loc_A76D9C: LateMemCall
  loc_A76DA2: LitI4 0
  loc_A76DA7: FStR4 var_94
  loc_A76DAA: AryUnlock
  loc_A76DAD: FLdPr Me
  loc_A76DB0: MemLdRfVar from_stack_1.global_100
  loc_A76DB3: NextI2 var_8C, loc_A76B93
  loc_A76DB8: LitVarStr var_A8, "    <tr valign=""top"" class=""Totales"" nowrap>"
  loc_A76DBD: PopAdLdVar
  loc_A76DBE: FLdPr Me
  loc_A76DC1: MemLdRfVar from_stack_1.htmFile
  loc_A76DC4: LdPrVar
  loc_A76DC6: LateMemCall
  loc_A76DCC: LitI4 1
  loc_A76DD1: FLdPr Me
  loc_A76DD4: MemLdStr global_104
  loc_A76DD7: AryLock
  loc_A76DDA: Ary1LdRf
  loc_A76DDB: FStR4 var_D8
  loc_A76DDE: LitI4 0
  loc_A76DE3: LitI4 0
  loc_A76DE8: LitI2_Byte 0
  loc_A76DEA: LitStr "right"
  loc_A76DED: LitStr "TOTALES"
  loc_A76DF0: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A76DF5: CVarStr var_D0
  loc_A76DF8: PopAdLdVar
  loc_A76DF9: FLdPr Me
  loc_A76DFC: MemLdRfVar from_stack_1.htmFile
  loc_A76DFF: LdPrVar
  loc_A76E01: LateMemCall
  loc_A76E07: FFree1Var var_D0 = ""
  loc_A76E0A: LitI4 0
  loc_A76E0F: LitI4 0
  loc_A76E14: LitI2_Byte 0
  loc_A76E16: LitStr "right"
  loc_A76E19: FMemLdR4 var_D8(12)
  loc_A76E1E: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A76E23: CVarStr var_D0
  loc_A76E26: PopAdLdVar
  loc_A76E27: FLdPr Me
  loc_A76E2A: MemLdRfVar from_stack_1.htmFile
  loc_A76E2D: LdPrVar
  loc_A76E2F: LateMemCall
  loc_A76E35: FFree1Var var_D0 = ""
  loc_A76E38: LitI4 0
  loc_A76E3D: LitI4 0
  loc_A76E42: LitI2_Byte 0
  loc_A76E44: LitStr "right"
  loc_A76E47: FMemLdR4 var_D8(16)
  loc_A76E4C: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A76E51: CVarStr var_D0
  loc_A76E54: PopAdLdVar
  loc_A76E55: FLdPr Me
  loc_A76E58: MemLdRfVar from_stack_1.htmFile
  loc_A76E5B: LdPrVar
  loc_A76E5D: LateMemCall
  loc_A76E63: FFree1Var var_D0 = ""
  loc_A76E66: LitI4 0
  loc_A76E6B: LitI4 0
  loc_A76E70: LitI2_Byte 0
  loc_A76E72: LitStr "right"
  loc_A76E75: FMemLdR4 var_D8(20)
  loc_A76E7A: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A76E7F: CVarStr var_D0
  loc_A76E82: PopAdLdVar
  loc_A76E83: FLdPr Me
  loc_A76E86: MemLdRfVar from_stack_1.htmFile
  loc_A76E89: LdPrVar
  loc_A76E8B: LateMemCall
  loc_A76E91: FFree1Var var_D0 = ""
  loc_A76E94: LitI4 0
  loc_A76E99: LitI4 0
  loc_A76E9E: LitI2_Byte 0
  loc_A76EA0: LitStr "right"
  loc_A76EA3: FMemLdR4 var_D8(24)
  loc_A76EA8: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A76EAD: CVarStr var_D0
  loc_A76EB0: PopAdLdVar
  loc_A76EB1: FLdPr Me
  loc_A76EB4: MemLdRfVar from_stack_1.htmFile
  loc_A76EB7: LdPrVar
  loc_A76EB9: LateMemCall
  loc_A76EBF: FFree1Var var_D0 = ""
  loc_A76EC2: LitI4 0
  loc_A76EC7: LitI4 0
  loc_A76ECC: LitI2_Byte 0
  loc_A76ECE: LitStr "right"
  loc_A76ED1: FMemLdR4 var_D8(28)
  loc_A76ED6: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A76EDB: CVarStr var_D0
  loc_A76EDE: PopAdLdVar
  loc_A76EDF: FLdPr Me
  loc_A76EE2: MemLdRfVar from_stack_1.htmFile
  loc_A76EE5: LdPrVar
  loc_A76EE7: LateMemCall
  loc_A76EED: FFree1Var var_D0 = ""
  loc_A76EF0: LitI4 0
  loc_A76EF5: FStR4 var_D8
  loc_A76EF8: AryUnlock
  loc_A76EFB: LitVarStr var_A8, "     </tr>"
  loc_A76F00: PopAdLdVar
  loc_A76F01: FLdPr Me
  loc_A76F04: MemLdRfVar from_stack_1.htmFile
  loc_A76F07: LdPrVar
  loc_A76F09: LateMemCall
  loc_A76F0F: Call Proc_228_28_983FF0()
  loc_A76F14: FLdPr Me
  loc_A76F17: MemLdRfVar from_stack_1.htmFile
  loc_A76F1A: LdPrVar
  loc_A76F1C: LateMemCall
  loc_A76F22: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_A76F27: ExitProcHresult
End Sub

Private Function Proc_228_27_A91458() 'A91458
  'Data Table: 49A5B8
  loc_A90FDC: LitVarStr var_94, "<html>"
  loc_A90FE1: PopAdLdVar
  loc_A90FE2: FLdPr Me
  loc_A90FE5: MemLdRfVar from_stack_1.htmFile
  loc_A90FE8: LdPrVar
  loc_A90FEA: LateMemCall
  loc_A90FF0: LitVarStr var_94, "<head>"
  loc_A90FF5: PopAdLdVar
  loc_A90FF6: FLdPr Me
  loc_A90FF9: MemLdRfVar from_stack_1.htmFile
  loc_A90FFC: LdPrVar
  loc_A90FFE: LateMemCall
  loc_A91004: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_A91009: PopAdLdVar
  loc_A9100A: FLdPr Me
  loc_A9100D: MemLdRfVar from_stack_1.htmFile
  loc_A91010: LdPrVar
  loc_A91012: LateMemCall
  loc_A91018: LitStr "<title>"
  loc_A9101B: FLdRfVar var_A8
  loc_A9101E: FLdPr Me
  loc_A91021:  = Me.Caption
  loc_A91026: ILdRf var_A8
  loc_A91029: ConcatStr
  loc_A9102A: FStStrNoPop var_AC
  loc_A9102D: LitStr " - "
  loc_A91030: ConcatStr
  loc_A91031: FStStrNoPop var_B0
  loc_A91034: LitStr "Municipalidad de Guaymallén"
  loc_A91037: ConcatStr
  loc_A91038: FStStrNoPop var_B4
  loc_A9103B: LitStr "</title>"
  loc_A9103E: ConcatStr
  loc_A9103F: CVarStr var_C4
  loc_A91042: PopAdLdVar
  loc_A91043: FLdPr Me
  loc_A91046: MemLdRfVar from_stack_1.htmFile
  loc_A91049: LdPrVar
  loc_A9104B: LateMemCall
  loc_A91051: FFreeStr var_A8 = "": var_AC = "": var_B0 = ""
  loc_A9105C: FFree1Var var_C4 = ""
  loc_A9105F: LitStr vbNullString
  loc_A91062: ILdRf Me
  loc_A91065: CastAd
  loc_A91068: FStAdFunc var_C8
  loc_A9106B: FLdRfVar var_C8
  loc_A9106E: ImpAdCallFPR4 Proc_263_23_B3DAB8(, )
  loc_A91073: FFree1Ad var_C8
  loc_A91076: LitI4 0
  loc_A9107B: FStStrCopy var_AC
  loc_A9107E: FLdRfVar var_AC
  loc_A91081: LitI4 0
  loc_A91086: FStStrCopy var_A8
  loc_A91089: FLdRfVar var_A8
  loc_A9108C: LitI2_Byte &HFF
  loc_A9108E: PopTmpLdAd2 var_CA
  loc_A91091: FLdPr Me
  loc_A91094: MemLdRfVar from_stack_1.htmFile
  loc_A91097: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_A9109C: FFreeStr var_A8 = ""
  loc_A910A3: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_A910A8: PopAdLdVar
  loc_A910A9: FLdPr Me
  loc_A910AC: MemLdRfVar from_stack_1.htmFile
  loc_A910AF: LdPrVar
  loc_A910B1: LateMemCall
  loc_A910B7: LitVarStr var_94, "  <tr valign=""middle"">"
  loc_A910BC: PopAdLdVar
  loc_A910BD: FLdPr Me
  loc_A910C0: MemLdRfVar from_stack_1.htmFile
  loc_A910C3: LdPrVar
  loc_A910C5: LateMemCall
  loc_A910CB: LitVarStr var_A4, "    <th colspan=""2"" width=""100" & Chr(37) & """ align=""center"" valign=""bottom""><p><img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>"
  loc_A910D0: LitVarStr var_94, "Municipalidad de Guaymallén"
  loc_A910D5: FStVarCopyObj var_C4
  loc_A910D8: FLdRfVar var_C4
  loc_A910DB: FLdRfVar var_DC
  loc_A910DE: ImpAdCallFPR4  = Ucase()
  loc_A910E3: FLdRfVar var_DC
  loc_A910E6: ConcatVar var_EC
  loc_A910EA: LitVarStr var_FC, "</p>"
  loc_A910EF: ConcatVar var_10C
  loc_A910F3: PopAdLdVar
  loc_A910F4: FLdPr Me
  loc_A910F7: MemLdRfVar from_stack_1.htmFile
  loc_A910FA: LdPrVar
  loc_A910FC: LateMemCall
  loc_A91102: FFreeVar var_C4 = "": var_DC = "": var_EC = ""
  loc_A9110D: LitStr "    <p>"
  loc_A91110: FLdRfVar var_A8
  loc_A91113: FLdPr Me
  loc_A91116:  = Me.Caption
  loc_A9111B: ILdRf var_A8
  loc_A9111E: ConcatStr
  loc_A9111F: FStStrNoPop var_AC
  loc_A91122: LitStr "</p></th>"
  loc_A91125: ConcatStr
  loc_A91126: CVarStr var_C4
  loc_A91129: PopAdLdVar
  loc_A9112A: FLdPr Me
  loc_A9112D: MemLdRfVar from_stack_1.htmFile
  loc_A91130: LdPrVar
  loc_A91132: LateMemCall
  loc_A91138: FFreeStr var_A8 = ""
  loc_A9113F: FFree1Var var_C4 = ""
  loc_A91142: LitVarStr var_94, "  </tr>"
  loc_A91147: PopAdLdVar
  loc_A91148: FLdPr Me
  loc_A9114B: MemLdRfVar from_stack_1.htmFile
  loc_A9114E: LdPrVar
  loc_A91150: LateMemCall
  loc_A91156: LitVarStr var_94, "  <tr><th colspan=""2""><hr></th></tr>"
  loc_A9115B: PopAdLdVar
  loc_A9115C: FLdPr Me
  loc_A9115F: MemLdRfVar from_stack_1.htmFile
  loc_A91162: LdPrVar
  loc_A91164: LateMemCall
  loc_A9116A: LitVarStr var_94, "  <tr valign=""top"">"
  loc_A9116F: PopAdLdVar
  loc_A91170: FLdPr Me
  loc_A91173: MemLdRfVar from_stack_1.htmFile
  loc_A91176: LdPrVar
  loc_A91178: LateMemCall
  loc_A9117E: LitVarStr var_94, "    <th align=""left"">"
  loc_A91183: PopAdLdVar
  loc_A91184: FLdPr Me
  loc_A91187: MemLdRfVar from_stack_1.htmFile
  loc_A9118A: LdPrVar
  loc_A9118C: LateMemCall
  loc_A91192: LitStr "     Periodo: <span class=""Normal"">"
  loc_A91195: FLdRfVar var_A8
  loc_A91198: FLdPr Me
  loc_A9119B: VCallAd Control_ID_cboPeriodo
  loc_A9119E: FStAdFunc var_C8
  loc_A911A1: FLdPr var_C8
  loc_A911A4:  = Me.Text
  loc_A911A9: ILdRf var_A8
  loc_A911AC: ConcatStr
  loc_A911AD: FStStrNoPop var_AC
  loc_A911B0: LitStr "</span><br>"
  loc_A911B3: ConcatStr
  loc_A911B4: CVarStr var_C4
  loc_A911B7: PopAdLdVar
  loc_A911B8: FLdPr Me
  loc_A911BB: MemLdRfVar from_stack_1.htmFile
  loc_A911BE: LdPrVar
  loc_A911C0: LateMemCall
  loc_A911C6: FFreeStr var_A8 = ""
  loc_A911CD: FFree1Ad var_C8
  loc_A911D0: FFree1Var var_C4 = ""
  loc_A911D3: FLdPr Me
  loc_A911D6: VCallAd Control_ID_CodiFifuMsk
  loc_A911D9: FStAdFunc var_C8
  loc_A911DC: FLdPr var_C8
  loc_A911DF: LateIdLdVar var_C4 DispID_22 0
  loc_A911E6: CStrVarTmp
  loc_A911E7: FStStrNoPop var_A8
  loc_A911EA: LitStr vbNullString
  loc_A911ED: NeStr
  loc_A911EF: FFree1Str var_A8
  loc_A911F2: FFree1Ad var_C8
  loc_A911F5: FFree1Var var_C4 = ""
  loc_A911F8: BranchF loc_A91240
  loc_A911FB: LitStr "     Finalidades que comienzan con: <span class=""Normal"">"
  loc_A911FE: FLdPr Me
  loc_A91201: VCallAd Control_ID_CodiFifuMsk
  loc_A91204: FStAdFunc var_C8
  loc_A91207: FLdPr var_C8
  loc_A9120A: LateIdLdVar var_C4 DispID_22 0
  loc_A91211: CStrVarTmp
  loc_A91212: FStStrNoPop var_A8
  loc_A91215: ConcatStr
  loc_A91216: FStStrNoPop var_AC
  loc_A91219: LitStr "...</span>"
  loc_A9121C: ConcatStr
  loc_A9121D: CVarStr var_DC
  loc_A91220: PopAdLdVar
  loc_A91221: FLdPr Me
  loc_A91224: MemLdRfVar from_stack_1.htmFile
  loc_A91227: LdPrVar
  loc_A91229: LateMemCall
  loc_A9122F: FFreeStr var_A8 = ""
  loc_A91236: FFree1Ad var_C8
  loc_A91239: FFreeVar var_C4 = ""
  loc_A91240: LitVarStr var_94, "    </th>"
  loc_A91245: PopAdLdVar
  loc_A91246: FLdPr Me
  loc_A91249: MemLdRfVar from_stack_1.htmFile
  loc_A9124C: LdPrVar
  loc_A9124E: LateMemCall
  loc_A91254: LitVarStr var_94, "    <th align=""right"">"
  loc_A91259: PopAdLdVar
  loc_A9125A: FLdPr Me
  loc_A9125D: MemLdRfVar from_stack_1.htmFile
  loc_A91260: LdPrVar
  loc_A91262: LateMemCall
  loc_A91268: LitStr "     Desde: <span class=""Normal"">"
  loc_A9126B: FLdPr Me
  loc_A9126E: VCallAd Control_ID_mskDesde
  loc_A91271: FStAdFunc var_C8
  loc_A91274: FLdPr var_C8
  loc_A91277: LateIdLdVar var_C4 DispID_15 0
  loc_A9127E: CStrVarTmp
  loc_A9127F: FStStrNoPop var_A8
  loc_A91282: ConcatStr
  loc_A91283: FStStrNoPop var_AC
  loc_A91286: LitStr "</span><br>"
  loc_A91289: ConcatStr
  loc_A9128A: CVarStr var_DC
  loc_A9128D: PopAdLdVar
  loc_A9128E: FLdPr Me
  loc_A91291: MemLdRfVar from_stack_1.htmFile
  loc_A91294: LdPrVar
  loc_A91296: LateMemCall
  loc_A9129C: FFreeStr var_A8 = ""
  loc_A912A3: FFree1Ad var_C8
  loc_A912A6: FFreeVar var_C4 = ""
  loc_A912AD: LitStr "     Hasta: <span class=""Normal"">"
  loc_A912B0: FLdPr Me
  loc_A912B3: VCallAd Control_ID_mskHasta
  loc_A912B6: FStAdFunc var_C8
  loc_A912B9: FLdPr var_C8
  loc_A912BC: LateIdLdVar var_C4 DispID_15 0
  loc_A912C3: CStrVarTmp
  loc_A912C4: FStStrNoPop var_A8
  loc_A912C7: ConcatStr
  loc_A912C8: FStStrNoPop var_AC
  loc_A912CB: LitStr "</span><br>"
  loc_A912CE: ConcatStr
  loc_A912CF: CVarStr var_DC
  loc_A912D2: PopAdLdVar
  loc_A912D3: FLdPr Me
  loc_A912D6: MemLdRfVar from_stack_1.htmFile
  loc_A912D9: LdPrVar
  loc_A912DB: LateMemCall
  loc_A912E1: FFreeStr var_A8 = ""
  loc_A912E8: FFree1Ad var_C8
  loc_A912EB: FFreeVar var_C4 = ""
  loc_A912F2: FLdRfVar var_CA
  loc_A912F5: FLdPr Me
  loc_A912F8: VCallAd Control_ID_OptAnalitico
  loc_A912FB: FStAdFunc var_C8
  loc_A912FE: FLdPr var_C8
  loc_A91301:  = Me.Value
  loc_A91306: FLdI2 var_CA
  loc_A91309: LitI2_Byte &HFF
  loc_A9130B: EqI2
  loc_A9130C: FFree1Ad var_C8
  loc_A9130F: BranchF loc_A91329
  loc_A91312: LitVarStr var_94, "Analítico"
  loc_A91317: PopAdLdVar
  loc_A91318: FLdPr Me
  loc_A9131B: MemLdRfVar from_stack_1.htmFile
  loc_A9131E: LdPrVar
  loc_A91320: LateMemCall
  loc_A91326: Branch loc_A9133D
  loc_A91329: LitVarStr var_94, "Sintético"
  loc_A9132E: PopAdLdVar
  loc_A9132F: FLdPr Me
  loc_A91332: MemLdRfVar from_stack_1.htmFile
  loc_A91335: LdPrVar
  loc_A91337: LateMemCall
  loc_A9133D: LitVarStr var_94, "    </th>"
  loc_A91342: PopAdLdVar
  loc_A91343: FLdPr Me
  loc_A91346: MemLdRfVar from_stack_1.htmFile
  loc_A91349: LdPrVar
  loc_A9134B: LateMemCall
  loc_A91351: LitVarStr var_94, "  </tr>"
  loc_A91356: PopAdLdVar
  loc_A91357: FLdPr Me
  loc_A9135A: MemLdRfVar from_stack_1.htmFile
  loc_A9135D: LdPrVar
  loc_A9135F: LateMemCall
  loc_A91365: LitVarStr var_94, "</table>"
  loc_A9136A: PopAdLdVar
  loc_A9136B: FLdPr Me
  loc_A9136E: MemLdRfVar from_stack_1.htmFile
  loc_A91371: LdPrVar
  loc_A91373: LateMemCall
  loc_A91379: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_A9137E: PopAdLdVar
  loc_A9137F: FLdPr Me
  loc_A91382: MemLdRfVar from_stack_1.htmFile
  loc_A91385: LdPrVar
  loc_A91387: LateMemCall
  loc_A9138D: LitVarStr var_94, "  <THEAD>"
  loc_A91392: PopAdLdVar
  loc_A91393: FLdPr Me
  loc_A91396: MemLdRfVar from_stack_1.htmFile
  loc_A91399: LdPrVar
  loc_A9139B: LateMemCall
  loc_A913A1: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_A913A6: PopAdLdVar
  loc_A913A7: FLdPr Me
  loc_A913AA: MemLdRfVar from_stack_1.htmFile
  loc_A913AD: LdPrVar
  loc_A913AF: LateMemCall
  loc_A913B5: LitVarStr var_94, "    <th>finalidad</th>"
  loc_A913BA: PopAdLdVar
  loc_A913BB: FLdPr Me
  loc_A913BE: MemLdRfVar from_stack_1.htmFile
  loc_A913C1: LdPrVar
  loc_A913C3: LateMemCall
  loc_A913C9: LitVarStr var_94, "    <th>Preventiva</th>"
  loc_A913CE: PopAdLdVar
  loc_A913CF: FLdPr Me
  loc_A913D2: MemLdRfVar from_stack_1.htmFile
  loc_A913D5: LdPrVar
  loc_A913D7: LateMemCall
  loc_A913DD: LitVarStr var_94, "    <th>Definitiva</th>"
  loc_A913E2: PopAdLdVar
  loc_A913E3: FLdPr Me
  loc_A913E6: MemLdRfVar from_stack_1.htmFile
  loc_A913E9: LdPrVar
  loc_A913EB: LateMemCall
  loc_A913F1: LitVarStr var_94, "    <th>Devengado</th>"
  loc_A913F6: PopAdLdVar
  loc_A913F7: FLdPr Me
  loc_A913FA: MemLdRfVar from_stack_1.htmFile
  loc_A913FD: LdPrVar
  loc_A913FF: LateMemCall
  loc_A91405: LitVarStr var_94, "    <th>Mandado a Pagar</th>"
  loc_A9140A: PopAdLdVar
  loc_A9140B: FLdPr Me
  loc_A9140E: MemLdRfVar from_stack_1.htmFile
  loc_A91411: LdPrVar
  loc_A91413: LateMemCall
  loc_A91419: LitVarStr var_94, "    <th>Pagado</th>"
  loc_A9141E: PopAdLdVar
  loc_A9141F: FLdPr Me
  loc_A91422: MemLdRfVar from_stack_1.htmFile
  loc_A91425: LdPrVar
  loc_A91427: LateMemCall
  loc_A9142D: LitVarStr var_94, "  </tr>"
  loc_A91432: PopAdLdVar
  loc_A91433: FLdPr Me
  loc_A91436: MemLdRfVar from_stack_1.htmFile
  loc_A91439: LdPrVar
  loc_A9143B: LateMemCall
  loc_A91441: LitVarStr var_94, "  </THEAD>"
  loc_A91446: PopAdLdVar
  loc_A91447: FLdPr Me
  loc_A9144A: MemLdRfVar from_stack_1.htmFile
  loc_A9144D: LdPrVar
  loc_A9144F: LateMemCall
  loc_A91455: ExitProcHresult
  loc_A91456: HardType
End Function

Private Function Proc_228_28_983FF0() '983FF0
  'Data Table: 49A5B8
  loc_983FB0: LitVarStr var_94, "</table>"
  loc_983FB5: PopAdLdVar
  loc_983FB6: FLdPr Me
  loc_983FB9: MemLdRfVar from_stack_1.htmFile
  loc_983FBC: LdPrVar
  loc_983FBE: LateMemCall
  loc_983FC4: LitVarStr var_94, "</body>"
  loc_983FC9: PopAdLdVar
  loc_983FCA: FLdPr Me
  loc_983FCD: MemLdRfVar from_stack_1.htmFile
  loc_983FD0: LdPrVar
  loc_983FD2: LateMemCall
  loc_983FD8: LitVarStr var_94, "</html>"
  loc_983FDD: PopAdLdVar
  loc_983FDE: FLdPr Me
  loc_983FE1: MemLdRfVar from_stack_1.htmFile
  loc_983FE4: LdPrVar
  loc_983FE6: LateMemCall
  loc_983FEC: ExitProcHresult
  loc_983FED: LitI2FP 864
End Function
