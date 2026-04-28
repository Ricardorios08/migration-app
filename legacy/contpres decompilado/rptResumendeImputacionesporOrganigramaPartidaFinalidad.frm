VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptResumendeImputacionesporOrganigramaPartidaFinalidad
  Caption = "Resumen de Imputaciones por Organigrama-Partida-Finalidad"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptResumendeImputacionesporOrganigramaPartidaFinalidad.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 7845
  ClientHeight = 4830
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 4575
    Width = 7845
    Height = 255
    TabIndex = 30
    OleObjectBlob = "rptResumendeImputacionesporOrganigramaPartidaFinalidad.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 6720
    Top = 3600
    Width = 735
    Height = 615
    TabIndex = 28
    Cancel = -1  'True
    Picture = "rptResumendeImputacionesporOrganigramaPartidaFinalidad.frx":094A
    Style = 1
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptResumendeImputacionesporOrganigramaPartidaFinalidad.frx":0B9C
    Left = 4560
    Top = 0
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 3360
    Width = 3255
    Height = 1095
    TabIndex = 25
    Begin VB.CommandButton cmdXLS
      Caption = "&XLS"
      Left = 1680
      Top = 360
      Width = 1335
      Height = 495
      Enabled = 0   'False
      TabIndex = 27
    End
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 26
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 3360
    Width = 3015
    Height = 1095
    TabIndex = 22
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 24
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 23
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 7575
    Height = 3255
    TabIndex = 0
    Begin VB.CommandButton cmdCodiPart
      Left = 3120
      Top = 2160
      Width = 375
      Height = 375
      TabIndex = 16
      Picture = "rptResumendeImputacionesporOrganigramaPartidaFinalidad.frx":0C00
      Style = 1
    End
    Begin VB.CommandButton cmdCodiOrga
      Left = 3120
      Top = 1680
      Width = 375
      Height = 375
      TabIndex = 12
      Picture = "rptResumendeImputacionesporOrganigramaPartidaFinalidad.frx":0CFA
      Style = 1
    End
    Begin VB.CommandButton cmdCodiFifu
      Left = 3120
      Top = 2640
      Width = 375
      Height = 375
      TabIndex = 20
      Picture = "rptResumendeImputacionesporOrganigramaPartidaFinalidad.frx":0DF4
      Style = 1
    End
    Begin VB.ComboBox cboPeriodo
      Style = 2
      ForeColor = &HFF0000&
      Left = 1680
      Top = 240
      Width = 1095
      Height = 315
      TabIndex = 2
    End
    Begin VB.CommandButton cmdCalHasta
      Left = 2880
      Top = 1200
      Width = 375
      Height = 375
      TabIndex = 9
      Picture = "rptResumendeImputacionesporOrganigramaPartidaFinalidad.frx":0EEE
      Style = 1
    End
    Begin VB.CommandButton cmdCalDesde
      Left = 2880
      Top = 720
      Width = 375
      Height = 375
      TabIndex = 6
      Picture = "rptResumendeImputacionesporOrganigramaPartidaFinalidad.frx":1430
      Style = 1
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 5160
      Top = 240
      Width = 1335
      Height = 495
      TabIndex = 3
    End
    Begin MSMask.MaskEdBox mskDesde
      Left = 1680
      Top = 720
      Width = 1095
      Height = 285
      TabIndex = 5
      OleObjectBlob = "rptResumendeImputacionesporOrganigramaPartidaFinalidad.frx":1972
    End
    Begin MSMask.MaskEdBox mskHasta
      Left = 1680
      Top = 1200
      Width = 1095
      Height = 285
      TabIndex = 8
      OleObjectBlob = "rptResumendeImputacionesporOrganigramaPartidaFinalidad.frx":19FA
    End
    Begin MSMask.MaskEdBox CodiFifuMsk
      Left = 1680
      Top = 2640
      Width = 1335
      Height = 315
      TabIndex = 18
      OleObjectBlob = "rptResumendeImputacionesporOrganigramaPartidaFinalidad.frx":1A82
    End
    Begin MSMask.MaskEdBox CodiOrgaMsk
      Left = 1680
      Top = 1680
      Width = 1335
      Height = 315
      TabIndex = 11
      OleObjectBlob = "rptResumendeImputacionesporOrganigramaPartidaFinalidad.frx":1AE2
    End
    Begin MSMask.MaskEdBox CodiPartMsk
      Left = 1680
      Top = 2160
      Width = 1335
      Height = 285
      TabIndex = 15
      OleObjectBlob = "rptResumendeImputacionesporOrganigramaPartidaFinalidad.frx":1B42
    End
    Begin VB.Label Label5
      Caption = "Partida:"
      Left = 960
      Top = 2160
      Width = 615
      Height = 315
      TabIndex = 14
    End
    Begin VB.Label Label4
      Caption = "Organigrama:"
      Left = 600
      Top = 1680
      Width = 975
      Height = 315
      TabIndex = 10
    End
    Begin VB.Label Label17
      Caption = "Finalidad-Funcion:"
      Left = 240
      Top = 2640
      Width = 1455
      Height = 315
      TabIndex = 19
    End
    Begin VB.Label CodiPartLbl
      Left = 3600
      Top = 2160
      Width = 3855
      Height = 375
      TabIndex = 17
      BorderStyle = 1 'Fixed Single
    End
    Begin VB.Label CodiOrgaLbl
      Left = 3600
      Top = 1680
      Width = 3855
      Height = 375
      TabIndex = 13
      BorderStyle = 1 'Fixed Single
    End
    Begin VB.Label CodiFifuLbl
      Left = 3600
      Top = 2640
      Width = 3855
      Height = 375
      TabIndex = 21
      BorderStyle = 1 'Fixed Single
    End
    Begin VB.Label Label3
      Caption = "Periodo:"
      Left = 960
      Top = 240
      Width = 585
      Height = 195
      TabIndex = 1
      AutoSize = -1  'True
    End
    Begin VB.Label Label2
      Caption = "Hasta:"
      Left = 1080
      Top = 1200
      Width = 465
      Height = 195
      TabIndex = 7
      AutoSize = -1  'True
    End
    Begin VB.Label Label1
      Caption = "Desde:"
      Left = 1035
      Top = 720
      Width = 510
      Height = 195
      TabIndex = 4
      AutoSize = -1  'True
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 6840
    Top = 3840
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 29
    OleObjectBlob = "rptResumendeImputacionesporOrganigramaPartidaFinalidad.frx":1BA2
  End
End

Attribute VB_Name = "rptResumendeImputacionesporOrganigramaPartidaFinalidad"

Public htmFile As Variant
Public bLogos As Boolean
Public bGenerado As Boolean

Private Type UDT_1_0059A1E0
  bStruc(20) As Byte ' String fields: 5
End Type

Private Type UDT_2_006073EC
  bStruc(40) As Byte ' String fields: 8
End Type

Private Type UDT_3_00607218
  bStruc(48) As Byte ' String fields: 9
End Type

Private Type UDT_4_00607C28
  bStruc(44) As Byte ' String fields: 9
End Type


Private Sub cmdPredeterminada_Click() '96061C
  'Data Table: 4C2F64
  loc_960604: ILdRf Me
  loc_960607: CastAd
  loc_96060A: FStAdFunc var_88
  loc_96060D: FLdRfVar var_88
  loc_960610: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_960615: FFree1Ad var_88
  loc_960618: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '9606B4
  'Data Table: 4C2F64
  loc_96069C: ILdRf Me
  loc_96069F: CastAd
  loc_9606A2: FStAdFunc var_88
  loc_9606A5: FLdRfVar var_88
  loc_9606A8: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_9606AD: FFree1Ad var_88
  loc_9606B0: ExitProcHresult
End Sub

Private Sub cmdCodiPart_Click() '9F6848
  'Data Table: 4C2F64
  loc_9F6718: LitNothing
  loc_9F671A: CastAd
  loc_9F671D: FStAdFuncNoPop
  loc_9F6720: ImpAdLdRf MemVar_C3D724
  loc_9F6723: NewIfNullPr bscPartida
  loc_9F6726: Call bscPartida.global_4332396Set(from_stack_1v)
  loc_9F672B: FFree1Ad var_88
  loc_9F672E: LitVar_Missing var_A8
  loc_9F6731: PopAdLdVar
  loc_9F6732: LitVarI4
  loc_9F673A: PopAdLdVar
  loc_9F673B: ImpAdLdRf MemVar_C3D724
  loc_9F673E: NewIfNullPr bscPartida
  loc_9F6741: bscPartida.Show from_stack_1, from_stack_2
  loc_9F6746: FLdRfVar var_AC
  loc_9F6749: FLdRfVar var_88
  loc_9F674C: ImpAdLdRf MemVar_C3D724
  loc_9F674F: NewIfNullPr bscPartida
  loc_9F6752: from_stack_1v = bscPartida.global_4332396Get()
  loc_9F6757: FLdPr var_88
  loc_9F675A: from_stack_1 = clsbase.RecordCount
  loc_9F675F: ILdRf var_AC
  loc_9F6762: LitI4 0
  loc_9F6767: GtI4
  loc_9F6768: FFree1Ad var_88
  loc_9F676B: BranchF loc_9F6846
  loc_9F676E: FLdRfVar var_C8
  loc_9F6771: FLdRfVar var_B8
  loc_9F6774: LitVarStr var_98, "CodiPart"
  loc_9F6779: PopAdLdVar
  loc_9F677A: FLdRfVar var_B4
  loc_9F677D: FLdRfVar var_B0
  loc_9F6780: FLdRfVar var_88
  loc_9F6783: ImpAdLdRf MemVar_C3D724
  loc_9F6786: NewIfNullPr bscPartida
  loc_9F6789: from_stack_1v = bscPartida.global_4332396Get()
  loc_9F678E: FLdPr var_88
  loc_9F6791: from_stack_1v = clsbase.RsFrmGet()
  loc_9F6796: FLdPr var_B0
  loc_9F6799:  = Me.Fields
  loc_9F679E: FLdPr var_B4
  loc_9F67A1: from_stack_2 = Me.Item(from_stack_1)
  loc_9F67A6: FLdPr var_B8
  loc_9F67A9:  = Me.Value
  loc_9F67AE: FLdRfVar var_C8
  loc_9F67B1: CStrVarTmp
  loc_9F67B2: CVarStr var_D8
  loc_9F67B5: PopAdLdVar
  loc_9F67B6: FLdPr Me
  loc_9F67B9: VCallAd Control_ID_CodiPartMsk
  loc_9F67BC: FStAdFunc var_DC
  loc_9F67BF: FLdPr var_DC
  loc_9F67C2: LateIdSt
  loc_9F67C7: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9F67D4: FFreeVar var_C8 = ""
  loc_9F67DB: FLdRfVar var_C8
  loc_9F67DE: FLdRfVar var_B8
  loc_9F67E1: LitVarStr var_98, "DetaPart"
  loc_9F67E6: PopAdLdVar
  loc_9F67E7: FLdRfVar var_B4
  loc_9F67EA: FLdRfVar var_B0
  loc_9F67ED: FLdRfVar var_88
  loc_9F67F0: ImpAdLdRf MemVar_C3D724
  loc_9F67F3: NewIfNullPr bscPartida
  loc_9F67F6: from_stack_1v = bscPartida.global_4332396Get()
  loc_9F67FB: FLdPr var_88
  loc_9F67FE: from_stack_1v = clsbase.RsFrmGet()
  loc_9F6803: FLdPr var_B0
  loc_9F6806:  = Me.Fields
  loc_9F680B: FLdPr var_B4
  loc_9F680E: from_stack_2 = Me.Item(from_stack_1)
  loc_9F6813: FLdPr var_B8
  loc_9F6816:  = Me.Value
  loc_9F681B: FLdRfVar var_C8
  loc_9F681E: CStrVarTmp
  loc_9F681F: FStStrNoPop var_E0
  loc_9F6822: FLdPr Me
  loc_9F6825: VCallAd Control_ID_CodiPartLbl
  loc_9F6828: FStAdFunc var_DC
  loc_9F682B: FLdPr var_DC
  loc_9F682E: Me.Caption = from_stack_1
  loc_9F6833: FFree1Str var_E0
  loc_9F6836: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9F6843: FFree1Var var_C8 = ""
  loc_9F6846: ExitProcHresult
End Sub

Private Sub CodiPartMsk_UnknownEvent_0 '951B28
  'Data Table: 4C2F64
  loc_951B14: FLdPr Me
  loc_951B17: VCallAd Control_ID_CodiPartMsk
  loc_951B1A: CVarAd
  loc_951B1E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_951B23: FFree1Var var_94 = ""
  loc_951B26: ExitProcHresult
End Sub

Private Sub CodiPartMsk_UnknownEvent_1 'A0F0A4
  'Data Table: 4C2F64
  loc_A0EF4C: LitStr "SELECT DetaPart FROM partida WHERE PeriInfo = "
  loc_A0EF4F: FLdRfVar var_8C
  loc_A0EF52: FLdPr Me
  loc_A0EF55: VCallAd Control_ID_cboPeriodo
  loc_A0EF58: FStAdFunc var_88
  loc_A0EF5B: FLdPr var_88
  loc_A0EF5E:  = Me.Text
  loc_A0EF63: ILdRf var_8C
  loc_A0EF66: ConcatStr
  loc_A0EF67: FStStrNoPop var_90
  loc_A0EF6A: LitStr " AND CodiPart LIKE '"
  loc_A0EF6D: ConcatStr
  loc_A0EF6E: FStStrNoPop var_A8
  loc_A0EF71: FLdPr Me
  loc_A0EF74: VCallAd Control_ID_CodiPartMsk
  loc_A0EF77: FStAdFunc var_94
  loc_A0EF7A: FLdPr var_94
  loc_A0EF7D: LateIdLdVar var_A4 DispID_22 0
  loc_A0EF84: CStrVarTmp
  loc_A0EF85: FStStrNoPop var_AC
  loc_A0EF88: ConcatStr
  loc_A0EF89: FStStrNoPop var_B0
  loc_A0EF8C: LitStr Chr(37) & "'"
  loc_A0EF8F: ConcatStr
  loc_A0EF90: FStStrNoPop var_B4
  loc_A0EF93: FLdPr Me
  loc_A0EF96: MemLdRfVar from_stack_1.global_80
  loc_A0EF99: NewIfNullPr clspartida
  loc_A0EF9C: Call clspartida.RedefineRS(from_stack_1v)
  loc_A0EFA1: FFreeStr var_8C = "": var_90 = "": var_A8 = "": var_AC = "": var_B0 = ""
  loc_A0EFB0: FFreeAd var_88 = ""
  loc_A0EFB7: FFree1Var var_A4 = ""
  loc_A0EFBA: FLdRfVar var_B8
  loc_A0EFBD: FLdPr Me
  loc_A0EFC0: MemLdRfVar from_stack_1.global_80
  loc_A0EFC3: NewIfNullPr clspartida
  loc_A0EFC6: from_stack_1 = clspartida.RecordCount
  loc_A0EFCB: ILdRf var_B8
  loc_A0EFCE: FStR4 var_BC
  loc_A0EFD1: ILdRf var_BC
  loc_A0EFD4: LitI4 0
  loc_A0EFD9: EqI4
  loc_A0EFDA: BranchF loc_A0EFF7
  loc_A0EFDD: LitStr "0 registros encontrados"
  loc_A0EFE0: FLdPr Me
  loc_A0EFE3: VCallAd Control_ID_CodiPartLbl
  loc_A0EFE6: FStAdFunc var_88
  loc_A0EFE9: FLdPr var_88
  loc_A0EFEC: Me.Caption = from_stack_1
  loc_A0EFF1: FFree1Ad var_88
  loc_A0EFF4: Branch loc_A0F0A2
  loc_A0EFF7: ILdRf var_BC
  loc_A0EFFA: LitI4 1
  loc_A0EFFF: EqI4
  loc_A0F000: BranchF loc_A0F067
  loc_A0F003: FLdRfVar var_A4
  loc_A0F006: FLdRfVar var_D0
  loc_A0F009: LitVarStr var_CC, "DetaPart"
  loc_A0F00E: PopAdLdVar
  loc_A0F00F: FLdRfVar var_94
  loc_A0F012: FLdRfVar var_88
  loc_A0F015: FLdPr Me
  loc_A0F018: MemLdRfVar from_stack_1.global_80
  loc_A0F01B: NewIfNullPr clspartida
  loc_A0F01E: from_stack_1v = clspartida.RsFrmGet()
  loc_A0F023: FLdPr var_88
  loc_A0F026:  = Me.Fields
  loc_A0F02B: FLdPr var_94
  loc_A0F02E: from_stack_2 = Me.Item(from_stack_1)
  loc_A0F033: FLdPr var_D0
  loc_A0F036:  = Me.Value
  loc_A0F03B: FLdRfVar var_A4
  loc_A0F03E: CStrVarTmp
  loc_A0F03F: FStStrNoPop var_8C
  loc_A0F042: FLdPr Me
  loc_A0F045: VCallAd Control_ID_CodiPartLbl
  loc_A0F048: FStAdFunc var_D4
  loc_A0F04B: FLdPr var_D4
  loc_A0F04E: Me.Caption = from_stack_1
  loc_A0F053: FFree1Str var_8C
  loc_A0F056: FFreeAd var_88 = "": var_94 = "": var_D0 = ""
  loc_A0F061: FFree1Var var_A4 = ""
  loc_A0F064: Branch loc_A0F0A2
  loc_A0F067: FLdRfVar var_B8
  loc_A0F06A: FLdPr Me
  loc_A0F06D: MemLdRfVar from_stack_1.global_80
  loc_A0F070: NewIfNullPr clspartida
  loc_A0F073: from_stack_1 = clspartida.RecordCount
  loc_A0F078: ILdRf var_B8
  loc_A0F07B: CStrI4
  loc_A0F07D: FStStrNoPop var_8C
  loc_A0F080: LitStr " partidas encontradas"
  loc_A0F083: ConcatStr
  loc_A0F084: FStStrNoPop var_90
  loc_A0F087: FLdPr Me
  loc_A0F08A: VCallAd Control_ID_CodiPartLbl
  loc_A0F08D: FStAdFunc var_88
  loc_A0F090: FLdPr var_88
  loc_A0F093: Me.Caption = from_stack_1
  loc_A0F098: FFreeStr var_8C = ""
  loc_A0F09F: FFree1Ad var_88
  loc_A0F0A2: ExitProcHresult
End Sub

Private Sub CodiFifuMsk_UnknownEvent_0 '951B70
  'Data Table: 4C2F64
  loc_951B5C: FLdPr Me
  loc_951B5F: VCallAd Control_ID_CodiFifuMsk
  loc_951B62: CVarAd
  loc_951B66: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_951B6B: FFree1Var var_94 = ""
  loc_951B6E: ExitProcHresult
End Sub

Private Sub CodiFifuMsk_UnknownEvent_1 'A101AC
  'Data Table: 4C2F64
  loc_A10054: LitStr "SELECT DetaFifu FROM finalidad WHERE PeriInfo = "
  loc_A10057: FLdRfVar var_8C
  loc_A1005A: FLdPr Me
  loc_A1005D: VCallAd Control_ID_cboPeriodo
  loc_A10060: FStAdFunc var_88
  loc_A10063: FLdPr var_88
  loc_A10066:  = Me.Text
  loc_A1006B: ILdRf var_8C
  loc_A1006E: ConcatStr
  loc_A1006F: FStStrNoPop var_90
  loc_A10072: LitStr " AND CodiFifu LIKE '"
  loc_A10075: ConcatStr
  loc_A10076: FStStrNoPop var_A8
  loc_A10079: FLdPr Me
  loc_A1007C: VCallAd Control_ID_CodiFifuMsk
  loc_A1007F: FStAdFunc var_94
  loc_A10082: FLdPr var_94
  loc_A10085: LateIdLdVar var_A4 DispID_22 0
  loc_A1008C: CStrVarTmp
  loc_A1008D: FStStrNoPop var_AC
  loc_A10090: ConcatStr
  loc_A10091: FStStrNoPop var_B0
  loc_A10094: LitStr Chr(37) & "'"
  loc_A10097: ConcatStr
  loc_A10098: FStStrNoPop var_B4
  loc_A1009B: FLdPr Me
  loc_A1009E: MemLdRfVar from_stack_1.global_88
  loc_A100A1: NewIfNullPr clsfinalidad
  loc_A100A4: Call clsfinalidad.RedefineRS(from_stack_1v)
  loc_A100A9: FFreeStr var_8C = "": var_90 = "": var_A8 = "": var_AC = "": var_B0 = ""
  loc_A100B8: FFreeAd var_88 = ""
  loc_A100BF: FFree1Var var_A4 = ""
  loc_A100C2: FLdRfVar var_B8
  loc_A100C5: FLdPr Me
  loc_A100C8: MemLdRfVar from_stack_1.global_88
  loc_A100CB: NewIfNullPr clsfinalidad
  loc_A100CE: from_stack_1 = clsfinalidad.RecordCount
  loc_A100D3: ILdRf var_B8
  loc_A100D6: FStR4 var_BC
  loc_A100D9: ILdRf var_BC
  loc_A100DC: LitI4 0
  loc_A100E1: EqI4
  loc_A100E2: BranchF loc_A100FF
  loc_A100E5: LitStr "0 registros encontrados"
  loc_A100E8: FLdPr Me
  loc_A100EB: VCallAd Control_ID_CodiFifuLbl
  loc_A100EE: FStAdFunc var_88
  loc_A100F1: FLdPr var_88
  loc_A100F4: Me.Caption = from_stack_1
  loc_A100F9: FFree1Ad var_88
  loc_A100FC: Branch loc_A101AA
  loc_A100FF: ILdRf var_BC
  loc_A10102: LitI4 1
  loc_A10107: EqI4
  loc_A10108: BranchF loc_A1016F
  loc_A1010B: FLdRfVar var_A4
  loc_A1010E: FLdRfVar var_D0
  loc_A10111: LitVarStr var_CC, "DetaFifu"
  loc_A10116: PopAdLdVar
  loc_A10117: FLdRfVar var_94
  loc_A1011A: FLdRfVar var_88
  loc_A1011D: FLdPr Me
  loc_A10120: MemLdRfVar from_stack_1.global_88
  loc_A10123: NewIfNullPr clsfinalidad
  loc_A10126: from_stack_1v = clsfinalidad.RsFrmGet()
  loc_A1012B: FLdPr var_88
  loc_A1012E:  = Me.Fields
  loc_A10133: FLdPr var_94
  loc_A10136: from_stack_2 = Me.Item(from_stack_1)
  loc_A1013B: FLdPr var_D0
  loc_A1013E:  = Me.Value
  loc_A10143: FLdRfVar var_A4
  loc_A10146: CStrVarTmp
  loc_A10147: FStStrNoPop var_8C
  loc_A1014A: FLdPr Me
  loc_A1014D: VCallAd Control_ID_CodiFifuLbl
  loc_A10150: FStAdFunc var_D4
  loc_A10153: FLdPr var_D4
  loc_A10156: Me.Caption = from_stack_1
  loc_A1015B: FFree1Str var_8C
  loc_A1015E: FFreeAd var_88 = "": var_94 = "": var_D0 = ""
  loc_A10169: FFree1Var var_A4 = ""
  loc_A1016C: Branch loc_A101AA
  loc_A1016F: FLdRfVar var_B8
  loc_A10172: FLdPr Me
  loc_A10175: MemLdRfVar from_stack_1.global_88
  loc_A10178: NewIfNullPr clsfinalidad
  loc_A1017B: from_stack_1 = clsfinalidad.RecordCount
  loc_A10180: ILdRf var_B8
  loc_A10183: CStrI4
  loc_A10185: FStStrNoPop var_8C
  loc_A10188: LitStr " finalidades encontradas"
  loc_A1018B: ConcatStr
  loc_A1018C: FStStrNoPop var_90
  loc_A1018F: FLdPr Me
  loc_A10192: VCallAd Control_ID_CodiFifuLbl
  loc_A10195: FStAdFunc var_88
  loc_A10198: FLdPr var_88
  loc_A1019B: Me.Caption = from_stack_1
  loc_A101A0: FFreeStr var_8C = ""
  loc_A101A7: FFree1Ad var_88
  loc_A101AA: ExitProcHresult
End Sub

Private Sub cmdCalDesde_Click() '97F278
  'Data Table: 4C2F64
  loc_97F244: LitVar_Missing var_A4
  loc_97F247: PopAdLdVar
  loc_97F248: LitVarI4
  loc_97F250: PopAdLdVar
  loc_97F251: ImpAdLdRf MemVar_C3D9A8
  loc_97F254: NewIfNullPr frmCalendario
  loc_97F257: frmCalendario.Show from_stack_1, from_stack_2
  loc_97F25C: ImpAdLdRf MemVar_C3D038
  loc_97F25F: CDargRef
  loc_97F263: FLdPr Me
  loc_97F266: VCallAd Control_ID_mskDesde
  loc_97F269: FStAdFunc var_A8
  loc_97F26C: FLdPr var_A8
  loc_97F26F: LateIdSt
  loc_97F274: FFree1Ad var_A8
  loc_97F277: ExitProcHresult
End Sub

Private Sub cmdCalHasta_Click() '980388
  'Data Table: 4C2F64
  loc_980354: LitVar_Missing var_A4
  loc_980357: PopAdLdVar
  loc_980358: LitVarI4
  loc_980360: PopAdLdVar
  loc_980361: ImpAdLdRf MemVar_C3D9A8
  loc_980364: NewIfNullPr frmCalendario
  loc_980367: frmCalendario.Show from_stack_1, from_stack_2
  loc_98036C: ImpAdLdRf MemVar_C3D038
  loc_98036F: CDargRef
  loc_980373: FLdPr Me
  loc_980376: VCallAd Control_ID_mskHasta
  loc_980379: FStAdFunc var_A8
  loc_98037C: FLdPr var_A8
  loc_98037F: LateIdSt
  loc_980384: FFree1Ad var_A8
  loc_980387: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() '9764DC
  'Data Table: 4C2F64
  loc_9764AC: LitVarStr var_94, "Cerrando..."
  loc_9764B1: PopAdLdVar
  loc_9764B2: FLdPr Me
  loc_9764B5: VCallAd Control_ID_statusBar
  loc_9764B8: FStAdFunc var_A8
  loc_9764BB: FLdPr var_A8
  loc_9764BE: LateIdSt
  loc_9764C3: FFree1Ad var_A8
  loc_9764C6: ILdRf Me
  loc_9764C9: FStAdNoPop
  loc_9764CD: ImpAdLdRf MemVar_C44F9C
  loc_9764D0: NewIfNullPr Me
  loc_9764D3: Me.Global.Unload from_stack_1
  loc_9764D8: FFree1Ad var_A8
  loc_9764DB: ExitProcHresult
End Sub

Private Sub cmdCodiOrga_Click() '9FB374
  'Data Table: 4C2F64
  loc_9FB238: LitI2_Byte &HFF
  loc_9FB23A: ImpAdLdRf MemVar_C3D710
  loc_9FB23D: NewIfNullPr bscOrganigrama
  loc_9FB240: Call bscOrganigrama.MuestroAnuladosPut(from_stack_1v)
  loc_9FB245: LitNothing
  loc_9FB247: CastAd
  loc_9FB24A: FStAdFuncNoPop
  loc_9FB24D: ImpAdLdRf MemVar_C3D710
  loc_9FB250: NewIfNullPr bscOrganigrama
  loc_9FB253: Call bscOrganigrama.global_4318932Set(from_stack_1v)
  loc_9FB258: FFree1Ad var_88
  loc_9FB25B: LitVar_Missing var_A8
  loc_9FB25E: PopAdLdVar
  loc_9FB25F: LitVarI4
  loc_9FB267: PopAdLdVar
  loc_9FB268: ImpAdLdRf MemVar_C3D710
  loc_9FB26B: NewIfNullPr bscOrganigrama
  loc_9FB26E: bscOrganigrama.Show from_stack_1, from_stack_2
  loc_9FB273: FLdRfVar var_AC
  loc_9FB276: FLdRfVar var_88
  loc_9FB279: ImpAdLdRf MemVar_C3D710
  loc_9FB27C: NewIfNullPr bscOrganigrama
  loc_9FB27F: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_9FB284: FLdPr var_88
  loc_9FB287: from_stack_1 = clsbase.RecordCount
  loc_9FB28C: ILdRf var_AC
  loc_9FB28F: LitI4 0
  loc_9FB294: GtI4
  loc_9FB295: FFree1Ad var_88
  loc_9FB298: BranchF loc_9FB373
  loc_9FB29B: FLdRfVar var_C8
  loc_9FB29E: FLdRfVar var_B8
  loc_9FB2A1: LitVarStr var_98, "CodiOrga"
  loc_9FB2A6: PopAdLdVar
  loc_9FB2A7: FLdRfVar var_B4
  loc_9FB2AA: FLdRfVar var_B0
  loc_9FB2AD: FLdRfVar var_88
  loc_9FB2B0: ImpAdLdRf MemVar_C3D710
  loc_9FB2B3: NewIfNullPr bscOrganigrama
  loc_9FB2B6: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_9FB2BB: FLdPr var_88
  loc_9FB2BE: from_stack_1v = clsbase.RsFrmGet()
  loc_9FB2C3: FLdPr var_B0
  loc_9FB2C6:  = Me.Fields
  loc_9FB2CB: FLdPr var_B4
  loc_9FB2CE: from_stack_2 = Me.Item(from_stack_1)
  loc_9FB2D3: FLdPr var_B8
  loc_9FB2D6:  = Me.Value
  loc_9FB2DB: FLdRfVar var_C8
  loc_9FB2DE: CStrVarTmp
  loc_9FB2DF: CVarStr var_D8
  loc_9FB2E2: PopAdLdVar
  loc_9FB2E3: FLdPr Me
  loc_9FB2E6: VCallAd Control_ID_CodiOrgaMsk
  loc_9FB2E9: FStAdFunc var_DC
  loc_9FB2EC: FLdPr var_DC
  loc_9FB2EF: LateIdSt
  loc_9FB2F4: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9FB301: FFreeVar var_C8 = ""
  loc_9FB308: FLdRfVar var_C8
  loc_9FB30B: FLdRfVar var_B8
  loc_9FB30E: LitVarStr var_98, "DetaOrga"
  loc_9FB313: PopAdLdVar
  loc_9FB314: FLdRfVar var_B4
  loc_9FB317: FLdRfVar var_B0
  loc_9FB31A: FLdRfVar var_88
  loc_9FB31D: ImpAdLdRf MemVar_C3D710
  loc_9FB320: NewIfNullPr bscOrganigrama
  loc_9FB323: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_9FB328: FLdPr var_88
  loc_9FB32B: from_stack_1v = clsbase.RsFrmGet()
  loc_9FB330: FLdPr var_B0
  loc_9FB333:  = Me.Fields
  loc_9FB338: FLdPr var_B4
  loc_9FB33B: from_stack_2 = Me.Item(from_stack_1)
  loc_9FB340: FLdPr var_B8
  loc_9FB343:  = Me.Value
  loc_9FB348: FLdRfVar var_C8
  loc_9FB34B: CStrVarTmp
  loc_9FB34C: FStStrNoPop var_E0
  loc_9FB34F: FLdPr Me
  loc_9FB352: VCallAd Control_ID_CodiOrgaLbl
  loc_9FB355: FStAdFunc var_DC
  loc_9FB358: FLdPr var_DC
  loc_9FB35B: Me.Caption = from_stack_1
  loc_9FB360: FFree1Str var_E0
  loc_9FB363: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9FB370: FFree1Var var_C8 = ""
  loc_9FB373: ExitProcHresult
End Sub

Private Sub cmdCodiFifu_Click() '9F66C8
  'Data Table: 4C2F64
  loc_9F6598: LitNothing
  loc_9F659A: CastAd
  loc_9F659D: FStAdFuncNoPop
  loc_9F65A0: ImpAdLdRf MemVar_C3D6E8
  loc_9F65A3: NewIfNullPr bscFinalidad
  loc_9F65A6: Call bscFinalidad.global_4320824Set(from_stack_1v)
  loc_9F65AB: FFree1Ad var_88
  loc_9F65AE: LitVar_Missing var_A8
  loc_9F65B1: PopAdLdVar
  loc_9F65B2: LitVarI4
  loc_9F65BA: PopAdLdVar
  loc_9F65BB: ImpAdLdRf MemVar_C3D6E8
  loc_9F65BE: NewIfNullPr bscFinalidad
  loc_9F65C1: bscFinalidad.Show from_stack_1, from_stack_2
  loc_9F65C6: FLdRfVar var_AC
  loc_9F65C9: FLdRfVar var_88
  loc_9F65CC: ImpAdLdRf MemVar_C3D6E8
  loc_9F65CF: NewIfNullPr bscFinalidad
  loc_9F65D2: from_stack_1v = bscFinalidad.global_4320824Get()
  loc_9F65D7: FLdPr var_88
  loc_9F65DA: from_stack_1 = clsbase.RecordCount
  loc_9F65DF: ILdRf var_AC
  loc_9F65E2: LitI4 0
  loc_9F65E7: GtI4
  loc_9F65E8: FFree1Ad var_88
  loc_9F65EB: BranchF loc_9F66C6
  loc_9F65EE: FLdRfVar var_C8
  loc_9F65F1: FLdRfVar var_B8
  loc_9F65F4: LitVarStr var_98, "CodiFifu"
  loc_9F65F9: PopAdLdVar
  loc_9F65FA: FLdRfVar var_B4
  loc_9F65FD: FLdRfVar var_B0
  loc_9F6600: FLdRfVar var_88
  loc_9F6603: ImpAdLdRf MemVar_C3D6E8
  loc_9F6606: NewIfNullPr bscFinalidad
  loc_9F6609: from_stack_1v = bscFinalidad.global_4320824Get()
  loc_9F660E: FLdPr var_88
  loc_9F6611: from_stack_1v = clsbase.RsFrmGet()
  loc_9F6616: FLdPr var_B0
  loc_9F6619:  = Me.Fields
  loc_9F661E: FLdPr var_B4
  loc_9F6621: from_stack_2 = Me.Item(from_stack_1)
  loc_9F6626: FLdPr var_B8
  loc_9F6629:  = Me.Value
  loc_9F662E: FLdRfVar var_C8
  loc_9F6631: CStrVarTmp
  loc_9F6632: CVarStr var_D8
  loc_9F6635: PopAdLdVar
  loc_9F6636: FLdPr Me
  loc_9F6639: VCallAd Control_ID_CodiFifuMsk
  loc_9F663C: FStAdFunc var_DC
  loc_9F663F: FLdPr var_DC
  loc_9F6642: LateIdSt
  loc_9F6647: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9F6654: FFreeVar var_C8 = ""
  loc_9F665B: FLdRfVar var_C8
  loc_9F665E: FLdRfVar var_B8
  loc_9F6661: LitVarStr var_98, "DetaFifu"
  loc_9F6666: PopAdLdVar
  loc_9F6667: FLdRfVar var_B4
  loc_9F666A: FLdRfVar var_B0
  loc_9F666D: FLdRfVar var_88
  loc_9F6670: ImpAdLdRf MemVar_C3D6E8
  loc_9F6673: NewIfNullPr bscFinalidad
  loc_9F6676: from_stack_1v = bscFinalidad.global_4320824Get()
  loc_9F667B: FLdPr var_88
  loc_9F667E: from_stack_1v = clsbase.RsFrmGet()
  loc_9F6683: FLdPr var_B0
  loc_9F6686:  = Me.Fields
  loc_9F668B: FLdPr var_B4
  loc_9F668E: from_stack_2 = Me.Item(from_stack_1)
  loc_9F6693: FLdPr var_B8
  loc_9F6696:  = Me.Value
  loc_9F669B: FLdRfVar var_C8
  loc_9F669E: CStrVarTmp
  loc_9F669F: FStStrNoPop var_E0
  loc_9F66A2: FLdPr Me
  loc_9F66A5: VCallAd Control_ID_CodiFifuLbl
  loc_9F66A8: FStAdFunc var_DC
  loc_9F66AB: FLdPr var_DC
  loc_9F66AE: Me.Caption = from_stack_1
  loc_9F66B3: FFree1Str var_E0
  loc_9F66B6: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9F66C3: FFree1Var var_C8 = ""
  loc_9F66C6: ExitProcHresult
End Sub

Private Sub cmdXLS_Click() '96B62C
  'Data Table: 4C2F64
  loc_96B610: LitI2_Byte &HFF
  loc_96B612: LitI2_Byte 0
  loc_96B614: ILdRf Me
  loc_96B617: CastAd
  loc_96B61A: FStAdFunc var_88
  loc_96B61D: FLdRfVar var_88
  loc_96B620: ImpAdCallFPR4 Proc_263_4_A28DF0(, , )
  loc_96B625: FFree1Ad var_88
  loc_96B628: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() '9FE404
  'Data Table: 4C2F64
  loc_9FE2B8: LitI2_Byte 0
  loc_9FE2BA: FLdPr Me
  loc_9FE2BD: MemStI2 bGenerado
  loc_9FE2C0: LitI2_Byte &HFF
  loc_9FE2C2: FLdPr Me
  loc_9FE2C5: MemStI2 bLogos
  loc_9FE2C8: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_9FE2CD: ImpAdLdI2 MemVar_C3D064
  loc_9FE2D0: CStrUI1
  loc_9FE2D2: FStStrNoPop var_88
  loc_9FE2D5: FLdPr Me
  loc_9FE2D8: VCallAd Control_ID_cboPeriodo
  loc_9FE2DB: FStAdFunc var_8C
  loc_9FE2DE: FLdPr var_8C
  loc_9FE2E1: Me.Text = from_stack_1
  loc_9FE2E6: FFree1Str var_88
  loc_9FE2E9: FFree1Ad var_8C
  loc_9FE2EC: LitVarStr var_D0, "01/01/"
  loc_9FE2F1: LitI2_Byte 0
  loc_9FE2F3: PopTmpLdAd2 var_8E
  loc_9FE2F6: ImpAdCallFPR4 Proc_261_32_A53D7C()
  loc_9FE2FB: CVarDate var_B0
  loc_9FE2FF: FLdRfVar var_C0
  loc_9FE302: ImpAdCallFPR4  = Year()
  loc_9FE307: FLdRfVar var_C0
  loc_9FE30A: ConcatVar var_E0
  loc_9FE30E: FnCDateVar
  loc_9FE310: CStrDate
  loc_9FE312: CVarStr var_F0
  loc_9FE315: PopAdLdVar
  loc_9FE316: FLdPr Me
  loc_9FE319: VCallAd Control_ID_mskDesde
  loc_9FE31C: FStAdFunc var_8C
  loc_9FE31F: FLdPr var_8C
  loc_9FE322: LateIdSt
  loc_9FE327: FFree1Ad var_8C
  loc_9FE32A: FFreeVar var_B0 = "": var_C0 = "": var_E0 = "": var_E0 = ""
  loc_9FE337: ImpAdLdFPR8 MemVar_C3D04C
  loc_9FE33A: CStrDate
  loc_9FE33C: CVarStr var_B0
  loc_9FE33F: PopAdLdVar
  loc_9FE340: FLdPr Me
  loc_9FE343: VCallAd Control_ID_mskHasta
  loc_9FE346: FStAdFunc var_8C
  loc_9FE349: FLdPr var_8C
  loc_9FE34C: LateIdSt
  loc_9FE351: FFree1Ad var_8C
  loc_9FE354: FFree1Var var_B0 = ""
  loc_9FE357: LitVarStr var_A0, vbNullString
  loc_9FE35C: PopAdLdVar
  loc_9FE35D: FLdPr Me
  loc_9FE360: VCallAd Control_ID_CodiPartMsk
  loc_9FE363: FStAdFunc var_8C
  loc_9FE366: FLdPr var_8C
  loc_9FE369: LateIdSt
  loc_9FE36E: FFree1Ad var_8C
  loc_9FE371: LitVarStr var_A0, vbNullString
  loc_9FE376: PopAdLdVar
  loc_9FE377: FLdPr Me
  loc_9FE37A: VCallAd Control_ID_CodiOrgaMsk
  loc_9FE37D: FStAdFunc var_8C
  loc_9FE380: FLdPr var_8C
  loc_9FE383: LateIdSt
  loc_9FE388: FFree1Ad var_8C
  loc_9FE38B: LitVarStr var_A0, vbNullString
  loc_9FE390: PopAdLdVar
  loc_9FE391: FLdPr Me
  loc_9FE394: VCallAd Control_ID_CodiFifuMsk
  loc_9FE397: FStAdFunc var_8C
  loc_9FE39A: FLdPr var_8C
  loc_9FE39D: LateIdSt
  loc_9FE3A2: FFree1Ad var_8C
  loc_9FE3A5: LitStr vbNullString
  loc_9FE3A8: FLdPr Me
  loc_9FE3AB: VCallAd Control_ID_CodiPartLbl
  loc_9FE3AE: FStAdFunc var_8C
  loc_9FE3B1: FLdPr var_8C
  loc_9FE3B4: Me.Caption = from_stack_1
  loc_9FE3B9: FFree1Ad var_8C
  loc_9FE3BC: LitStr vbNullString
  loc_9FE3BF: FLdPr Me
  loc_9FE3C2: VCallAd Control_ID_CodiOrgaLbl
  loc_9FE3C5: FStAdFunc var_8C
  loc_9FE3C8: FLdPr var_8C
  loc_9FE3CB: Me.Caption = from_stack_1
  loc_9FE3D0: FFree1Ad var_8C
  loc_9FE3D3: LitStr vbNullString
  loc_9FE3D6: FLdPr Me
  loc_9FE3D9: VCallAd Control_ID_CodiFifuLbl
  loc_9FE3DC: FStAdFunc var_8C
  loc_9FE3DF: FLdPr var_8C
  loc_9FE3E2: Me.Caption = from_stack_1
  loc_9FE3E7: FFree1Ad var_8C
  loc_9FE3EA: Call HabilitarCriterio()
  loc_9FE3EF: ILdRf Me
  loc_9FE3F2: CastAd
  loc_9FE3F5: FStAdFunc var_8C
  loc_9FE3F8: FLdRfVar var_8C
  loc_9FE3FB: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_9FE400: FFree1Ad var_8C
  loc_9FE403: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '98B06C
  'Data Table: 4C2F64
  loc_98B034: FLdPr Me
  loc_98B037: VCallAd Control_ID_statusBar
  loc_98B03A: FStAdFunc var_88
  loc_98B03D: FLdPr var_88
  loc_98B040: LateIdLdVar var_98 DispID_1 0
  loc_98B047: CStrVarTmp
  loc_98B048: CVarStr var_A8
  loc_98B04B: PopAdLdVar
  loc_98B04C: FLdPr Me
  loc_98B04F: VCallAd Control_ID_statusBar
  loc_98B052: FStAdFunc var_BC
  loc_98B055: FLdPr var_BC
  loc_98B058: LateIdSt
  loc_98B05D: FFreeAd var_88 = ""
  loc_98B064: FFreeVar var_98 = ""
  loc_98B06B: ExitProcHresult
End Sub

Private Sub CodiOrgaMsk_UnknownEvent_0 '951C90
  'Data Table: 4C2F64
  loc_951C7C: FLdPr Me
  loc_951C7F: VCallAd Control_ID_CodiOrgaMsk
  loc_951C82: CVarAd
  loc_951C86: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_951C8B: FFree1Var var_94 = ""
  loc_951C8E: ExitProcHresult
End Sub

Private Sub CodiOrgaMsk_UnknownEvent_1 'A0FC90
  'Data Table: 4C2F64
  loc_A0FB38: LitStr "SELECT DetaOrga FROM infogov.organigrama WHERE PeriInfo = "
  loc_A0FB3B: FLdRfVar var_8C
  loc_A0FB3E: FLdPr Me
  loc_A0FB41: VCallAd Control_ID_cboPeriodo
  loc_A0FB44: FStAdFunc var_88
  loc_A0FB47: FLdPr var_88
  loc_A0FB4A:  = Me.Text
  loc_A0FB4F: ILdRf var_8C
  loc_A0FB52: ConcatStr
  loc_A0FB53: FStStrNoPop var_90
  loc_A0FB56: LitStr " AND CodiOrga LIKE '"
  loc_A0FB59: ConcatStr
  loc_A0FB5A: FStStrNoPop var_A8
  loc_A0FB5D: FLdPr Me
  loc_A0FB60: VCallAd Control_ID_CodiOrgaMsk
  loc_A0FB63: FStAdFunc var_94
  loc_A0FB66: FLdPr var_94
  loc_A0FB69: LateIdLdVar var_A4 DispID_22 0
  loc_A0FB70: CStrVarTmp
  loc_A0FB71: FStStrNoPop var_AC
  loc_A0FB74: ConcatStr
  loc_A0FB75: FStStrNoPop var_B0
  loc_A0FB78: LitStr Chr(37) & "'"
  loc_A0FB7B: ConcatStr
  loc_A0FB7C: FStStrNoPop var_B4
  loc_A0FB7F: FLdPr Me
  loc_A0FB82: MemLdRfVar from_stack_1.global_84
  loc_A0FB85: NewIfNullPr clsorganigrama
  loc_A0FB88: Call clsorganigrama.RedefineRS(from_stack_1v)
  loc_A0FB8D: FFreeStr var_8C = "": var_90 = "": var_A8 = "": var_AC = "": var_B0 = ""
  loc_A0FB9C: FFreeAd var_88 = ""
  loc_A0FBA3: FFree1Var var_A4 = ""
  loc_A0FBA6: FLdRfVar var_B8
  loc_A0FBA9: FLdPr Me
  loc_A0FBAC: MemLdRfVar from_stack_1.global_84
  loc_A0FBAF: NewIfNullPr clsorganigrama
  loc_A0FBB2: from_stack_1 = clsorganigrama.RecordCount
  loc_A0FBB7: ILdRf var_B8
  loc_A0FBBA: FStR4 var_BC
  loc_A0FBBD: ILdRf var_BC
  loc_A0FBC0: LitI4 0
  loc_A0FBC5: EqI4
  loc_A0FBC6: BranchF loc_A0FBE3
  loc_A0FBC9: LitStr "0 registros encontrados"
  loc_A0FBCC: FLdPr Me
  loc_A0FBCF: VCallAd Control_ID_CodiOrgaLbl
  loc_A0FBD2: FStAdFunc var_88
  loc_A0FBD5: FLdPr var_88
  loc_A0FBD8: Me.Caption = from_stack_1
  loc_A0FBDD: FFree1Ad var_88
  loc_A0FBE0: Branch loc_A0FC8E
  loc_A0FBE3: ILdRf var_BC
  loc_A0FBE6: LitI4 1
  loc_A0FBEB: EqI4
  loc_A0FBEC: BranchF loc_A0FC53
  loc_A0FBEF: FLdRfVar var_A4
  loc_A0FBF2: FLdRfVar var_D0
  loc_A0FBF5: LitVarStr var_CC, "DetaOrga"
  loc_A0FBFA: PopAdLdVar
  loc_A0FBFB: FLdRfVar var_94
  loc_A0FBFE: FLdRfVar var_88
  loc_A0FC01: FLdPr Me
  loc_A0FC04: MemLdRfVar from_stack_1.global_84
  loc_A0FC07: NewIfNullPr clsorganigrama
  loc_A0FC0A: from_stack_1v = clsorganigrama.RsFrmGet()
  loc_A0FC0F: FLdPr var_88
  loc_A0FC12:  = Me.Fields
  loc_A0FC17: FLdPr var_94
  loc_A0FC1A: from_stack_2 = Me.Item(from_stack_1)
  loc_A0FC1F: FLdPr var_D0
  loc_A0FC22:  = Me.Value
  loc_A0FC27: FLdRfVar var_A4
  loc_A0FC2A: CStrVarTmp
  loc_A0FC2B: FStStrNoPop var_8C
  loc_A0FC2E: FLdPr Me
  loc_A0FC31: VCallAd Control_ID_CodiOrgaLbl
  loc_A0FC34: FStAdFunc var_D4
  loc_A0FC37: FLdPr var_D4
  loc_A0FC3A: Me.Caption = from_stack_1
  loc_A0FC3F: FFree1Str var_8C
  loc_A0FC42: FFreeAd var_88 = "": var_94 = "": var_D0 = ""
  loc_A0FC4D: FFree1Var var_A4 = ""
  loc_A0FC50: Branch loc_A0FC8E
  loc_A0FC53: FLdRfVar var_B8
  loc_A0FC56: FLdPr Me
  loc_A0FC59: MemLdRfVar from_stack_1.global_84
  loc_A0FC5C: NewIfNullPr clsorganigrama
  loc_A0FC5F: from_stack_1 = clsorganigrama.RecordCount
  loc_A0FC64: ILdRf var_B8
  loc_A0FC67: CStrI4
  loc_A0FC69: FStStrNoPop var_8C
  loc_A0FC6C: LitStr " organigramas encontrados"
  loc_A0FC6F: ConcatStr
  loc_A0FC70: FStStrNoPop var_90
  loc_A0FC73: FLdPr Me
  loc_A0FC76: VCallAd Control_ID_CodiOrgaLbl
  loc_A0FC79: FStAdFunc var_88
  loc_A0FC7C: FLdPr var_88
  loc_A0FC7F: Me.Caption = from_stack_1
  loc_A0FC84: FFreeStr var_8C = ""
  loc_A0FC8B: FFree1Ad var_88
  loc_A0FC8E: ExitProcHresult
End Sub

Private Sub Form_Load() '9F6250
  'Data Table: 4C2F64
  loc_9F6118: LitVarStr var_94, "######"
  loc_9F611D: PopAdLdVar
  loc_9F611E: FLdPr Me
  loc_9F6121: VCallAd Control_ID_CodiOrgaMsk
  loc_9F6124: FStAdFunc var_A8
  loc_9F6127: FLdPr var_A8
  loc_9F612A: LateIdSt
  loc_9F612F: FFree1Ad var_A8
  loc_9F6132: LitVarStr var_94, "#.#.#.#.##.##"
  loc_9F6137: PopAdLdVar
  loc_9F6138: FLdPr Me
  loc_9F613B: VCallAd Control_ID_CodiPartMsk
  loc_9F613E: FStAdFunc var_A8
  loc_9F6141: FLdPr var_A8
  loc_9F6144: LateIdSt
  loc_9F6149: FFree1Ad var_A8
  loc_9F614C: LitVarStr var_94, "##.##.##"
  loc_9F6151: PopAdLdVar
  loc_9F6152: FLdPr Me
  loc_9F6155: VCallAd Control_ID_CodiFifuMsk
  loc_9F6158: FStAdFunc var_A8
  loc_9F615B: FLdPr var_A8
  loc_9F615E: LateIdSt
  loc_9F6163: FFree1Ad var_A8
  loc_9F6166: LitI2_Byte &HFF
  loc_9F6168: ImpAdStI2 MemVar_C3D840
  loc_9F616B: ILdRf Me
  loc_9F616E: CastAd
  loc_9F6171: FStAdFunc var_A8
  loc_9F6174: FLdRfVar var_A8
  loc_9F6177: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_9F617C: FFree1Ad var_A8
  loc_9F617F: LitStr "SELECT * FROM infogov.periodo ORDER BY PeriInfo"
  loc_9F6182: FLdPr Me
  loc_9F6185: MemLdRfVar from_stack_1.global_72
  loc_9F6188: NewIfNullPr clsperiodo
  loc_9F618B: Call clsperiodo.RedefineRS(from_stack_1v)
  loc_9F6190: FLdRfVar var_AC
  loc_9F6193: FLdPr Me
  loc_9F6196: MemLdRfVar from_stack_1.global_72
  loc_9F6199: NewIfNullPr clsperiodo
  loc_9F619C: from_stack_1 = clsperiodo.RecordCount
  loc_9F61A1: ILdRf var_AC
  loc_9F61A4: LitI4 0
  loc_9F61A9: GtI4
  loc_9F61AA: BranchF loc_9F6249
  loc_9F61AD: FLdPr Me
  loc_9F61B0: MemLdRfVar from_stack_1.global_72
  loc_9F61B3: NewIfNullPr clsperiodo
  loc_9F61B6: Call clsperiodo.MoveFirst()
  loc_9F61BB: FLdRfVar var_AE
  loc_9F61BE: FLdPr Me
  loc_9F61C1: MemLdRfVar from_stack_1.global_72
  loc_9F61C4: NewIfNullPr clsperiodo
  loc_9F61C7: from_stack_1 = clsperiodo.EOF
  loc_9F61CC: FLdI2 var_AE
  loc_9F61CF: NotI4
  loc_9F61D0: BranchF loc_9F6249
  loc_9F61D3: LitVar_Missing var_A4
  loc_9F61D6: PopAdLdVar
  loc_9F61D7: FLdRfVar var_C8
  loc_9F61DA: FLdRfVar var_B8
  loc_9F61DD: LitVarStr var_94, "PeriInfo"
  loc_9F61E2: PopAdLdVar
  loc_9F61E3: FLdRfVar var_B4
  loc_9F61E6: FLdRfVar var_A8
  loc_9F61E9: FLdPr Me
  loc_9F61EC: MemLdRfVar from_stack_1.global_72
  loc_9F61EF: NewIfNullPr clsperiodo
  loc_9F61F2: from_stack_1v = clsperiodo.RsFrmGet()
  loc_9F61F7: FLdPr var_A8
  loc_9F61FA:  = Me.Fields
  loc_9F61FF: FLdPr var_B4
  loc_9F6202: from_stack_2 = Me.Item(from_stack_1)
  loc_9F6207: FLdPr var_B8
  loc_9F620A:  = Me.Value
  loc_9F620F: FLdRfVar var_C8
  loc_9F6212: CStrVarTmp
  loc_9F6213: FStStrNoPop var_CC
  loc_9F6216: FLdPr Me
  loc_9F6219: VCallAd Control_ID_cboPeriodo
  loc_9F621C: FStAdFunc var_D0
  loc_9F621F: FLdPr var_D0
  loc_9F6222: Me.AddItem from_stack_1, from_stack_2
  loc_9F6227: FFree1Str var_CC
  loc_9F622A: FFreeAd var_A8 = "": var_B4 = "": var_B8 = ""
  loc_9F6235: FFree1Var var_C8 = ""
  loc_9F6238: FLdPr Me
  loc_9F623B: MemLdRfVar from_stack_1.global_72
  loc_9F623E: NewIfNullPr clsperiodo
  loc_9F6241: Call clsperiodo.MoveSiguiente()
  loc_9F6246: Branch loc_9F61BB
  loc_9F6249: Call cmdNueva_Click()
  loc_9F624E: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9601F4
  'Data Table: 4C2F64
  loc_9601DC: FLdPr Me
  loc_9601DF: VCallAd Control_ID_wbbReporte
  loc_9601E2: FStAdFunc var_88
  loc_9601E5: FLdRfVar var_88
  loc_9601E8: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_9601ED: FFree1Ad var_88
  loc_9601F0: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '960584
  'Data Table: 4C2F64
  loc_96056C: LitI2_Byte 0
  loc_96056E: ILdRf Me
  loc_960571: CastAd
  loc_960574: FStAdFunc var_88
  loc_960577: FLdRfVar var_88
  loc_96057A: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_96057F: FFree1Ad var_88
  loc_960582: ExitProcHresult
End Sub

Private Sub mskDesde_UnknownEvent_0 '94E9F0
  'Data Table: 4C2F64
  loc_94E9DC: FLdPr Me
  loc_94E9DF: VCallAd Control_ID_mskDesde
  loc_94E9E2: CVarAd
  loc_94E9E6: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94E9EB: FFree1Var var_94 = ""
  loc_94E9EE: ExitProcHresult
End Sub

Private Function mskDesde_UnknownEvent_8(arg_C) '9AFCEC
  'Data Table: 4C2F64
  loc_9AFC50: FLdPr Me
  loc_9AFC53: VCallAd Control_ID_mskDesde
  loc_9AFC56: FStAdFunc var_88
  loc_9AFC59: FLdPr var_88
  loc_9AFC5C: LateIdLdVar var_98 DispID_15 0
  loc_9AFC63: PopAd
  loc_9AFC65: FLdPr Me
  loc_9AFC68: VCallAd Control_ID_mskDesde
  loc_9AFC6B: FStAdFunc var_AC
  loc_9AFC6E: LitI2_Byte 0
  loc_9AFC70: PopTmpLdAd2 var_A2
  loc_9AFC73: FLdZeroAd var_AC
  loc_9AFC76: FStAdFunc var_A0
  loc_9AFC79: FLdRfVar var_A0
  loc_9AFC7C: LitStr vbNullString
  loc_9AFC7F: LitI2_Byte 0
  loc_9AFC81: LitI2_Byte 0
  loc_9AFC83: FLdRfVar var_98
  loc_9AFC86: CStrVarTmp
  loc_9AFC87: FStStrNoPop var_9C
  loc_9AFC8A: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9AFC8F: FStStrNoPop var_A8
  loc_9AFC92: FLdPr Me
  loc_9AFC95: MemStStrCopy
  loc_9AFC99: FFreeStr var_9C = ""
  loc_9AFCA0: FFreeAd var_88 = "": var_A0 = ""
  loc_9AFCA9: FFree1Var var_98 = ""
  loc_9AFCAC: FLdPr Me
  loc_9AFCAF: VCallAd Control_ID_mskDesde
  loc_9AFCB2: FStAdFunc var_B0
  loc_9AFCB5: LitNothing
  loc_9AFCB7: CastAd
  loc_9AFCBA: FStAdFunc var_AC
  loc_9AFCBD: FLdRfVar var_AC
  loc_9AFCC0: FLdZeroAd var_B0
  loc_9AFCC3: FStAdFuncNoPop
  loc_9AFCC6: CastAd
  loc_9AFCC9: FStAdFunc var_A0
  loc_9AFCCC: FLdRfVar var_A0
  loc_9AFCCF: FLdPr Me
  loc_9AFCD2: MemLdRfVar from_stack_1.global_132
  loc_9AFCD5: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9AFCDA: IStI2 arg_C
  loc_9AFCDD: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9AFCE8: ExitProcHresult
  loc_9AFCE9: CopyBytes
End Function

Private Sub mskHasta_UnknownEvent_0 '94EA38
  'Data Table: 4C2F64
  loc_94EA24: FLdPr Me
  loc_94EA27: VCallAd Control_ID_mskHasta
  loc_94EA2A: CVarAd
  loc_94EA2E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94EA33: FFree1Var var_94 = ""
  loc_94EA36: ExitProcHresult
End Sub

Private Function mskHasta_UnknownEvent_8(arg_C) '9AFDD4
  'Data Table: 4C2F64
  loc_9AFD38: FLdPr Me
  loc_9AFD3B: VCallAd Control_ID_mskHasta
  loc_9AFD3E: FStAdFunc var_88
  loc_9AFD41: FLdPr var_88
  loc_9AFD44: LateIdLdVar var_98 DispID_15 0
  loc_9AFD4B: PopAd
  loc_9AFD4D: FLdPr Me
  loc_9AFD50: VCallAd Control_ID_mskHasta
  loc_9AFD53: FStAdFunc var_AC
  loc_9AFD56: LitI2_Byte 0
  loc_9AFD58: PopTmpLdAd2 var_A2
  loc_9AFD5B: FLdZeroAd var_AC
  loc_9AFD5E: FStAdFunc var_A0
  loc_9AFD61: FLdRfVar var_A0
  loc_9AFD64: LitStr vbNullString
  loc_9AFD67: LitI2_Byte 0
  loc_9AFD69: LitI2_Byte 0
  loc_9AFD6B: FLdRfVar var_98
  loc_9AFD6E: CStrVarTmp
  loc_9AFD6F: FStStrNoPop var_9C
  loc_9AFD72: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9AFD77: FStStrNoPop var_A8
  loc_9AFD7A: FLdPr Me
  loc_9AFD7D: MemStStrCopy
  loc_9AFD81: FFreeStr var_9C = ""
  loc_9AFD88: FFreeAd var_88 = "": var_A0 = ""
  loc_9AFD91: FFree1Var var_98 = ""
  loc_9AFD94: FLdPr Me
  loc_9AFD97: VCallAd Control_ID_mskHasta
  loc_9AFD9A: FStAdFunc var_B0
  loc_9AFD9D: LitNothing
  loc_9AFD9F: CastAd
  loc_9AFDA2: FStAdFunc var_AC
  loc_9AFDA5: FLdRfVar var_AC
  loc_9AFDA8: FLdZeroAd var_B0
  loc_9AFDAB: FStAdFuncNoPop
  loc_9AFDAE: CastAd
  loc_9AFDB1: FStAdFunc var_A0
  loc_9AFDB4: FLdRfVar var_A0
  loc_9AFDB7: FLdPr Me
  loc_9AFDBA: MemLdRfVar from_stack_1.global_132
  loc_9AFDBD: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9AFDC2: IStI2 arg_C
  loc_9AFDC5: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9AFDD0: ExitProcHresult
End Function

Public Function htmFileGet() '4C44E4
  htmFileGet = htmFile
End Function

Public Sub htmFilePut(Value) '4C44F3
  htmFile = Value
End Sub

Public Sub htmFileSet(Value) '4C4502
  htmFile = Value
End Sub

Public Function bLogosGet() '4C4511
  bLogosGet = bLogos
End Function

Public Sub bLogosPut(Value) '4C4520
  bLogos = Value
End Sub

Public Function bGeneradoGet() '4C452F
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '4C453E
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() '9D73AC
  'Data Table: 4C2F64
  loc_9D72D8: LitI4 0
  loc_9D72DD: LitI4 &HA
  loc_9D72E2: FLdRfVar var_88
  loc_9D72E5: Redim
  loc_9D72EF: FLdPr Me
  loc_9D72F2: VCallAd Control_ID_cboPeriodo
  loc_9D72F5: CVarAd
  loc_9D72F9: ParmAry1St
  loc_9D72FF: FLdPr Me
  loc_9D7302: VCallAd Control_ID_mskDesde
  loc_9D7305: CVarAd
  loc_9D7309: ParmAry1St
  loc_9D730F: FLdPr Me
  loc_9D7312: VCallAd Control_ID_cmdCalDesde
  loc_9D7315: CVarAd
  loc_9D7319: ParmAry1St
  loc_9D731F: FLdPr Me
  loc_9D7322: VCallAd Control_ID_mskHasta
  loc_9D7325: CVarAd
  loc_9D7329: ParmAry1St
  loc_9D732F: FLdPr Me
  loc_9D7332: VCallAd Control_ID_cmdCalHasta
  loc_9D7335: CVarAd
  loc_9D7339: ParmAry1St
  loc_9D733F: FLdPr Me
  loc_9D7342: VCallAd Control_ID_CodiPartMsk
  loc_9D7345: CVarAd
  loc_9D7349: ParmAry1St
  loc_9D734F: FLdPr Me
  loc_9D7352: VCallAd Control_ID_cmdCodiPart
  loc_9D7355: CVarAd
  loc_9D7359: ParmAry1St
  loc_9D735F: FLdPr Me
  loc_9D7362: VCallAd Control_ID_CodiOrgaMsk
  loc_9D7365: CVarAd
  loc_9D7369: ParmAry1St
  loc_9D736F: FLdPr Me
  loc_9D7372: VCallAd Control_ID_cmdCodiOrga
  loc_9D7375: CVarAd
  loc_9D7379: ParmAry1St
  loc_9D737F: FLdPr Me
  loc_9D7382: VCallAd Control_ID_CodiFifuMsk
  loc_9D7385: CVarAd
  loc_9D7389: ParmAry1St
  loc_9D738F: FLdPr Me
  loc_9D7392: VCallAd Control_ID_cmdCodiFifu
  loc_9D7395: CVarAd
  loc_9D7399: ParmAry1St
  loc_9D739F: FLdRfVar var_88
  loc_9D73A2: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9D73A7: FLdRfVar var_88
  loc_9D73AA: Erase
  loc_9D73AB: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'B1EEDC
  'Data Table: 4C2F64
  loc_B1E66C: LitStr vbNullString
  loc_B1E66F: FLdPr Me
  loc_B1E672: MemStStrCopy
  loc_B1E676: LitI2_Byte 0
  loc_B1E678: PopTmpLdAd2 var_94
  loc_B1E67B: from_stack_2v = mskDesde_UnknownEvent_8(from_stack_1v)
  loc_B1E680: FLdPr Me
  loc_B1E683: MemLdStr global_132
  loc_B1E686: LitStr vbNullString
  loc_B1E689: NeStr
  loc_B1E68B: BranchF loc_B1E68F
  loc_B1E68E: ExitProcHresult
  loc_B1E68F: LitI2_Byte 0
  loc_B1E691: PopTmpLdAd2 var_94
  loc_B1E694: from_stack_2v = mskHasta_UnknownEvent_8(from_stack_1v)
  loc_B1E699: FLdPr Me
  loc_B1E69C: MemLdStr global_132
  loc_B1E69F: LitStr vbNullString
  loc_B1E6A2: NeStr
  loc_B1E6A4: BranchF loc_B1E6A8
  loc_B1E6A7: ExitProcHresult
  loc_B1E6A8: OnErrorGoto loc_B1EE79
  loc_B1E6AB: FLdPr Me
  loc_B1E6AE: MemLdI2 bGenerado
  loc_B1E6B1: BranchF loc_B1E6B5
  loc_B1E6B4: ExitProcHresult
  loc_B1E6B5: LitVarStr var_A4, "Generando reporte..."
  loc_B1E6BA: PopAdLdVar
  loc_B1E6BB: FLdPr Me
  loc_B1E6BE: VCallAd Control_ID_statusBar
  loc_B1E6C1: FStAdFunc var_B8
  loc_B1E6C4: FLdPr var_B8
  loc_B1E6C7: LateIdSt
  loc_B1E6CC: FFree1Ad var_B8
  loc_B1E6CF: LitI4 &HB
  loc_B1E6D4: CI2I4
  loc_B1E6D5: FLdPr Me
  loc_B1E6D8: Me.MousePointer = from_stack_1
  loc_B1E6DD: Call CodiPartMsk_UnknownEvent_1()
  loc_B1E6E2: Call CodiOrgaMsk_UnknownEvent_1()
  loc_B1E6E7: Call CodiFifuMsk_UnknownEvent_1()
  loc_B1E6EC: FLdPr Me
  loc_B1E6EF: VCallAd Control_ID_CodiPartMsk
  loc_B1E6F2: FStAdFunc var_B8
  loc_B1E6F5: FLdPr var_B8
  loc_B1E6F8: LateIdLdVar var_C8 DispID_22 0
  loc_B1E6FF: CStrVarTmp
  loc_B1E700: FStStrNoPop var_CC
  loc_B1E703: LitStr vbNullString
  loc_B1E706: NeStr
  loc_B1E708: FFree1Str var_CC
  loc_B1E70B: FFree1Ad var_B8
  loc_B1E70E: FFree1Var var_C8 = ""
  loc_B1E711: BranchF loc_B1E746
  loc_B1E714: LitStr " AND imputacion.CodiPart LIKE '"
  loc_B1E717: FLdPr Me
  loc_B1E71A: VCallAd Control_ID_CodiPartMsk
  loc_B1E71D: FStAdFunc var_B8
  loc_B1E720: FLdPr var_B8
  loc_B1E723: LateIdLdVar var_C8 DispID_22 0
  loc_B1E72A: CStrVarTmp
  loc_B1E72B: FStStrNoPop var_CC
  loc_B1E72E: ConcatStr
  loc_B1E72F: FStStrNoPop var_D0
  loc_B1E732: LitStr Chr(37) & "'"
  loc_B1E735: ConcatStr
  loc_B1E736: FStStr var_88
  loc_B1E739: FFreeStr var_CC = ""
  loc_B1E740: FFree1Ad var_B8
  loc_B1E743: FFree1Var var_C8 = ""
  loc_B1E746: FLdPr Me
  loc_B1E749: VCallAd Control_ID_CodiOrgaMsk
  loc_B1E74C: FStAdFunc var_B8
  loc_B1E74F: FLdPr var_B8
  loc_B1E752: LateIdLdVar var_C8 DispID_22 0
  loc_B1E759: CStrVarTmp
  loc_B1E75A: FStStrNoPop var_CC
  loc_B1E75D: LitStr vbNullString
  loc_B1E760: NeStr
  loc_B1E762: FFree1Str var_CC
  loc_B1E765: FFree1Ad var_B8
  loc_B1E768: FFree1Var var_C8 = ""
  loc_B1E76B: BranchF loc_B1E7A0
  loc_B1E76E: LitStr " AND imputacion.CodiOrga LIKE '"
  loc_B1E771: FLdPr Me
  loc_B1E774: VCallAd Control_ID_CodiOrgaMsk
  loc_B1E777: FStAdFunc var_B8
  loc_B1E77A: FLdPr var_B8
  loc_B1E77D: LateIdLdVar var_C8 DispID_22 0
  loc_B1E784: CStrVarTmp
  loc_B1E785: FStStrNoPop var_CC
  loc_B1E788: ConcatStr
  loc_B1E789: FStStrNoPop var_D0
  loc_B1E78C: LitStr Chr(37) & "'"
  loc_B1E78F: ConcatStr
  loc_B1E790: FStStr var_8C
  loc_B1E793: FFreeStr var_CC = ""
  loc_B1E79A: FFree1Ad var_B8
  loc_B1E79D: FFree1Var var_C8 = ""
  loc_B1E7A0: FLdPr Me
  loc_B1E7A3: VCallAd Control_ID_CodiFifuMsk
  loc_B1E7A6: FStAdFunc var_B8
  loc_B1E7A9: FLdPr var_B8
  loc_B1E7AC: LateIdLdVar var_C8 DispID_22 0
  loc_B1E7B3: CStrVarTmp
  loc_B1E7B4: FStStrNoPop var_CC
  loc_B1E7B7: LitStr vbNullString
  loc_B1E7BA: NeStr
  loc_B1E7BC: FFree1Str var_CC
  loc_B1E7BF: FFree1Ad var_B8
  loc_B1E7C2: FFree1Var var_C8 = ""
  loc_B1E7C5: BranchF loc_B1E7FA
  loc_B1E7C8: LitStr " AND imputacion.CodiFifu LIKE '"
  loc_B1E7CB: FLdPr Me
  loc_B1E7CE: VCallAd Control_ID_CodiFifuMsk
  loc_B1E7D1: FStAdFunc var_B8
  loc_B1E7D4: FLdPr var_B8
  loc_B1E7D7: LateIdLdVar var_C8 DispID_22 0
  loc_B1E7DE: CStrVarTmp
  loc_B1E7DF: FStStrNoPop var_CC
  loc_B1E7E2: ConcatStr
  loc_B1E7E3: FStStrNoPop var_D0
  loc_B1E7E6: LitStr Chr(37) & "'"
  loc_B1E7E9: ConcatStr
  loc_B1E7EA: FStStr var_90
  loc_B1E7ED: FFreeStr var_CC = ""
  loc_B1E7F4: FFree1Ad var_B8
  loc_B1E7F7: FFree1Var var_C8 = ""
  loc_B1E7FA: FLdPr Me
  loc_B1E7FD: VCallAd Control_ID_mskDesde
  loc_B1E800: FStAdFunc var_104
  loc_B1E803: FLdPr var_104
  loc_B1E806: LateIdLdVar var_C8 DispID_15 0
  loc_B1E80D: PopAd
  loc_B1E80F: FLdPr Me
  loc_B1E812: VCallAd Control_ID_mskHasta
  loc_B1E815: FStAdFunc var_168
  loc_B1E818: FLdPr var_168
  loc_B1E81B: LateIdLdVar var_178 DispID_15 0
  loc_B1E822: PopAd
  loc_B1E824: LitStr "SELECT imputacion.CodiOrga, DetaOrga, imputacion.CodiPart, DetaPart, imputacion.CodiFifu, DetaFifu, "
  loc_B1E827: LitStr " sum(PrevImpu) as PrevImpu, sum(DefiImpu) as DefiImpu, sum(DeveImpu) as DeveImpu, sum(MapaImpu) as MapaImpu, sum(PagaImpu) as PagaImpu"
  loc_B1E82A: ConcatStr
  loc_B1E82B: FStStrNoPop var_CC
  loc_B1E82E: LitStr " FROM imputacion"
  loc_B1E831: ConcatStr
  loc_B1E832: FStStrNoPop var_D0
  loc_B1E835: LitStr " LEFT JOIN infogov.organigrama"
  loc_B1E838: ConcatStr
  loc_B1E839: FStStrNoPop var_D4
  loc_B1E83C: LitStr " ON organigrama.PeriInfo = imputacion.PeriInfo"
  loc_B1E83F: ConcatStr
  loc_B1E840: FStStrNoPop var_D8
  loc_B1E843: LitStr " AND organigrama.CodiOrga = imputacion.CodiOrga"
  loc_B1E846: ConcatStr
  loc_B1E847: FStStrNoPop var_DC
  loc_B1E84A: LitStr " LEFT JOIN partida"
  loc_B1E84D: ConcatStr
  loc_B1E84E: FStStrNoPop var_E0
  loc_B1E851: LitStr " ON partida.PeriInfo = imputacion.PeriInfo"
  loc_B1E854: ConcatStr
  loc_B1E855: FStStrNoPop var_E4
  loc_B1E858: LitStr " AND partida.CodiPart = imputacion.CodiPart"
  loc_B1E85B: ConcatStr
  loc_B1E85C: FStStrNoPop var_E8
  loc_B1E85F: LitStr " LEFT JOIN finalidad"
  loc_B1E862: ConcatStr
  loc_B1E863: FStStrNoPop var_EC
  loc_B1E866: LitStr " ON finalidad.PeriInfo = imputacion.PeriInfo"
  loc_B1E869: ConcatStr
  loc_B1E86A: FStStrNoPop var_F0
  loc_B1E86D: LitStr " AND finalidad.CodiFifu = imputacion.CodiFifu"
  loc_B1E870: ConcatStr
  loc_B1E871: FStStrNoPop var_F4
  loc_B1E874: LitStr " WHERE imputacion.PeriInfo = "
  loc_B1E877: ConcatStr
  loc_B1E878: FStStrNoPop var_FC
  loc_B1E87B: FLdRfVar var_F8
  loc_B1E87E: FLdPr Me
  loc_B1E881: VCallAd Control_ID_cboPeriodo
  loc_B1E884: FStAdFunc var_B8
  loc_B1E887: FLdPr var_B8
  loc_B1E88A:  = Me.Text
  loc_B1E88F: ILdRf var_F8
  loc_B1E892: ConcatStr
  loc_B1E893: FStStrNoPop var_100
  loc_B1E896: LitStr " AND FechImpu BETWEEN '"
  loc_B1E899: ConcatStr
  loc_B1E89A: CVarStr var_144
  loc_B1E89D: LitI4 1
  loc_B1E8A2: LitI4 1
  loc_B1E8A7: LitVarStr var_A4, "yyyy-mm-dd"
  loc_B1E8AC: FStVarCopyObj var_124
  loc_B1E8AF: FLdRfVar var_124
  loc_B1E8B2: FLdRfVar var_C8
  loc_B1E8B5: CStrVarTmp
  loc_B1E8B6: CVarStr var_114
  loc_B1E8B9: FLdRfVar var_134
  loc_B1E8BC: ImpAdCallFPR4  = Format(, )
  loc_B1E8C1: FLdRfVar var_134
  loc_B1E8C4: ConcatVar var_154
  loc_B1E8C8: LitVarStr var_B4, "' AND '"
  loc_B1E8CD: ConcatVar var_164
  loc_B1E8D1: LitI4 1
  loc_B1E8D6: LitI4 1
  loc_B1E8DB: LitVarStr var_198, "yyyy-mm-dd"
  loc_B1E8E0: FStVarCopyObj var_1A8
  loc_B1E8E3: FLdRfVar var_1A8
  loc_B1E8E6: FLdRfVar var_178
  loc_B1E8E9: CStrVarTmp
  loc_B1E8EA: CVarStr var_188
  loc_B1E8ED: FLdRfVar var_1B8
  loc_B1E8F0: ImpAdCallFPR4  = Format(, )
  loc_B1E8F5: FLdRfVar var_1B8
  loc_B1E8F8: ConcatVar var_1C8
  loc_B1E8FC: LitVarStr var_1D8, "'"
  loc_B1E901: ConcatVar var_1E8
  loc_B1E905: ILdRf var_88
  loc_B1E908: CVarStr var_1F8
  loc_B1E90B: ConcatVar var_208
  loc_B1E90F: ILdRf var_8C
  loc_B1E912: CVarStr var_218
  loc_B1E915: ConcatVar var_228
  loc_B1E919: ILdRf var_90
  loc_B1E91C: CVarStr var_238
  loc_B1E91F: ConcatVar var_248
  loc_B1E923: LitVarStr var_258, " GROUP BY CodiOrga, CodiPart, CodiFifu"
  loc_B1E928: ConcatVar var_268
  loc_B1E92C: CStrVarVal var_26C
  loc_B1E930: FLdPr Me
  loc_B1E933: MemLdRfVar from_stack_1.global_76
  loc_B1E936: NewIfNullPr clsimputacion
  loc_B1E939: Call clsimputacion.RedefineRS(from_stack_1v)
  loc_B1E93E: FFreeStr var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_FC = "": var_F8 = "": var_100 = ""
  loc_B1E95F: FFreeAd var_B8 = "": var_104 = ""
  loc_B1E968: FFreeVar var_C8 = "": var_114 = "": var_124 = "": var_144 = "": var_134 = "": var_154 = "": var_178 = "": var_188 = "": var_1A8 = "": var_164 = "": var_1B8 = "": var_1C8 = "": var_1E8 = "": var_208 = "": var_228 = "": var_248 = ""
  loc_B1E98D: FLdRfVar var_270
  loc_B1E990: FLdPr Me
  loc_B1E993: MemLdRfVar from_stack_1.global_76
  loc_B1E996: NewIfNullPr clsimputacion
  loc_B1E999: from_stack_1 = clsimputacion.RecordCount
  loc_B1E99E: ILdRf var_270
  loc_B1E9A1: LitI4 0
  loc_B1E9A6: EqI4
  loc_B1E9A7: BranchF loc_B1E9BA
  loc_B1E9AA: LitI4 0
  loc_B1E9AF: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_B1E9B2: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B1E9B7: Branch loc_B1EE50
  loc_B1E9BA: LitI4 1
  loc_B1E9BF: LitI4 1
  loc_B1E9C4: FLdPr Me
  loc_B1E9C7: MemLdRfVar from_stack_1.global_96
  loc_B1E9CA: Redim
  loc_B1E9D4: LitI2_Byte 0
  loc_B1E9D6: LitVar_Missing var_C8
  loc_B1E9D9: LitI2_Byte &HFF
  loc_B1E9DB: LitVarI2 var_A4, 0
  loc_B1E9E0: PopAdLdVar
  loc_B1E9E1: FLdPr Me
  loc_B1E9E4: MemLdRfVar from_stack_1.global_100
  loc_B1E9E7: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B1E9EC: FFree1Var var_C8 = ""
  loc_B1E9EF: LitI2_Byte 0
  loc_B1E9F1: LitVar_Missing var_C8
  loc_B1E9F4: LitI2_Byte &HFF
  loc_B1E9F6: LitVarI2 var_A4, 0
  loc_B1E9FB: PopAdLdVar
  loc_B1E9FC: FLdPr Me
  loc_B1E9FF: MemLdRfVar from_stack_1.global_104
  loc_B1EA02: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B1EA07: FFree1Var var_C8 = ""
  loc_B1EA0A: LitI2_Byte 0
  loc_B1EA0C: LitVar_Missing var_C8
  loc_B1EA0F: LitI2_Byte &HFF
  loc_B1EA11: LitVarI2 var_A4, 0
  loc_B1EA16: PopAdLdVar
  loc_B1EA17: FLdPr Me
  loc_B1EA1A: MemLdRfVar from_stack_1.global_108
  loc_B1EA1D: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B1EA22: FFree1Var var_C8 = ""
  loc_B1EA25: LitI2_Byte 0
  loc_B1EA27: LitVar_Missing var_C8
  loc_B1EA2A: LitI2_Byte &HFF
  loc_B1EA2C: LitVarI2 var_A4, 0
  loc_B1EA31: PopAdLdVar
  loc_B1EA32: FLdPr Me
  loc_B1EA35: MemLdRfVar from_stack_1.global_112
  loc_B1EA38: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B1EA3D: FFree1Var var_C8 = ""
  loc_B1EA40: LitI2_Byte 0
  loc_B1EA42: LitVar_Missing var_C8
  loc_B1EA45: LitI2_Byte &HFF
  loc_B1EA47: LitVarI2 var_A4, 0
  loc_B1EA4C: PopAdLdVar
  loc_B1EA4D: FLdPr Me
  loc_B1EA50: MemLdRfVar from_stack_1.global_116
  loc_B1EA53: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B1EA58: FFree1Var var_C8 = ""
  loc_B1EA5B: LitI2_Byte 0
  loc_B1EA5D: FLdPr Me
  loc_B1EA60: MemStI2 global_122
  loc_B1EA63: FLdPr Me
  loc_B1EA66: MemLdRfVar from_stack_1.global_76
  loc_B1EA69: NewIfNullAd
  loc_B1EA6C: FStAd var_274 
  loc_B1EA70: FLdPr var_274
  loc_B1EA73: Call clsimputacion.MoveFirst()
  loc_B1EA78: Call Proc_231_35_9ECECC()
  loc_B1EA7D: FLdRfVar var_270
  loc_B1EA80: FLdPr var_274
  loc_B1EA83: from_stack_1 = clsimputacion.RecordCount
  loc_B1EA88: ILdRf var_270
  loc_B1EA8B: LitI4 1
  loc_B1EA90: GtI4
  loc_B1EA91: BranchF loc_B1EBA2
  loc_B1EA94: LitI2_Byte 2
  loc_B1EA96: FLdRfVar var_92
  loc_B1EA99: FLdRfVar var_270
  loc_B1EA9C: FLdPr var_274
  loc_B1EA9F: from_stack_1 = clsimputacion.RecordCount
  loc_B1EAA4: ILdRf var_270
  loc_B1EAA7: CI2I4
  loc_B1EAA8: ForI2 var_278
  loc_B1EAAE: FLdPr var_274
  loc_B1EAB1: Call clsimputacion.MoveSiguiente()
  loc_B1EAB6: FLdRfVar var_C8
  loc_B1EAB9: FLdRfVar var_168
  loc_B1EABC: LitVarStr var_A4, "CodiOrga"
  loc_B1EAC1: PopAdLdVar
  loc_B1EAC2: FLdRfVar var_104
  loc_B1EAC5: FLdRfVar var_B8
  loc_B1EAC8: FLdPr var_274
  loc_B1EACB: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B1EAD0: FLdPr var_B8
  loc_B1EAD3:  = Me.Fields
  loc_B1EAD8: FLdPr var_104
  loc_B1EADB: from_stack_2 = Me.Item(from_stack_1)
  loc_B1EAE0: FLdPr var_168
  loc_B1EAE3:  = Me.Value
  loc_B1EAE8: FLdRfVar var_C8
  loc_B1EAEB: FLdPr Me
  loc_B1EAEE: MemLdI2 global_122
  loc_B1EAF1: CI4UI1
  loc_B1EAF2: FLdPr Me
  loc_B1EAF5: MemLdStr global_96
  loc_B1EAF8: Ary1LdPr
  loc_B1EAF9: MemLdRfVar from_stack_1.global_0
  loc_B1EAFC: LdFixedStr
  loc_B1EAFF: CVarStr var_114
  loc_B1EB02: HardType
  loc_B1EB03: NeVarBool
  loc_B1EB05: FFreeAd var_B8 = "": var_104 = ""
  loc_B1EB0E: FFreeVar var_C8 = ""
  loc_B1EB15: BranchF loc_B1EB20
  loc_B1EB18: Call Proc_231_35_9ECECC()
  loc_B1EB1D: Branch loc_B1EB9A
  loc_B1EB20: FLdRfVar var_C8
  loc_B1EB23: FLdRfVar var_168
  loc_B1EB26: LitVarStr var_A4, "CodiPart"
  loc_B1EB2B: PopAdLdVar
  loc_B1EB2C: FLdRfVar var_104
  loc_B1EB2F: FLdRfVar var_B8
  loc_B1EB32: FLdPr var_274
  loc_B1EB35: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B1EB3A: FLdPr var_B8
  loc_B1EB3D:  = Me.Fields
  loc_B1EB42: FLdPr var_104
  loc_B1EB45: from_stack_2 = Me.Item(from_stack_1)
  loc_B1EB4A: FLdPr var_168
  loc_B1EB4D:  = Me.Value
  loc_B1EB52: FLdRfVar var_C8
  loc_B1EB55: FLdPr Me
  loc_B1EB58: MemLdI2 global_120
  loc_B1EB5B: CI4UI1
  loc_B1EB5C: FLdPr Me
  loc_B1EB5F: MemLdI2 global_122
  loc_B1EB62: CI4UI1
  loc_B1EB63: FLdPr Me
  loc_B1EB66: MemLdStr global_96
  loc_B1EB69: Ary1LdPr
  loc_B1EB6A: MemLdStr global_20
  loc_B1EB6D: Ary1LdPr
  loc_B1EB6E: MemLdRfVar from_stack_1.global_0
  loc_B1EB71: LdFixedStr
  loc_B1EB74: CVarStr var_114
  loc_B1EB77: HardType
  loc_B1EB78: NeVarBool
  loc_B1EB7A: FFreeAd var_B8 = "": var_104 = ""
  loc_B1EB83: FFreeVar var_C8 = ""
  loc_B1EB8A: BranchF loc_B1EB95
  loc_B1EB8D: Call Proc_231_36_A05EF4()
  loc_B1EB92: Branch loc_B1EB9A
  loc_B1EB95: Call Proc_231_37_AAE09C()
  loc_B1EB9A: FLdRfVar var_92
  loc_B1EB9D: NextI2 var_278, loc_B1EAAE
  loc_B1EBA2: LitNothing
  loc_B1EBA4: FStAd var_274 
  loc_B1EBA8: LitI2_Byte 1
  loc_B1EBAA: FLdPr Me
  loc_B1EBAD: MemLdRfVar from_stack_1.global_122
  loc_B1EBB0: FLdPr Me
  loc_B1EBB3: MemLdStr global_96
  loc_B1EBB6: LitI2_Byte 1
  loc_B1EBB8: FnUBound
  loc_B1EBBA: CI2I4
  loc_B1EBBB: ForI2 var_27C
  loc_B1EBC1: LitI2_Byte 1
  loc_B1EBC3: FLdPr Me
  loc_B1EBC6: MemLdRfVar from_stack_1.global_120
  loc_B1EBC9: FLdPr Me
  loc_B1EBCC: MemLdI2 global_122
  loc_B1EBCF: CI4UI1
  loc_B1EBD0: FLdPr Me
  loc_B1EBD3: MemLdStr global_96
  loc_B1EBD6: Ary1LdPr
  loc_B1EBD7: MemLdStr global_20
  loc_B1EBDA: LitI2_Byte 1
  loc_B1EBDC: FnUBound
  loc_B1EBDE: CI2I4
  loc_B1EBDF: ForI2 var_280
  loc_B1EBE5: LitI2_Byte 1
  loc_B1EBE7: FLdPr Me
  loc_B1EBEA: MemLdRfVar from_stack_1.global_124
  loc_B1EBED: FLdPr Me
  loc_B1EBF0: MemLdI2 global_120
  loc_B1EBF3: CI4UI1
  loc_B1EBF4: FLdPr Me
  loc_B1EBF7: MemLdI2 global_122
  loc_B1EBFA: CI4UI1
  loc_B1EBFB: FLdPr Me
  loc_B1EBFE: MemLdStr global_96
  loc_B1EC01: Ary1LdPr
  loc_B1EC02: MemLdStr global_20
  loc_B1EC05: Ary1LdPr
  loc_B1EC06: MemLdStr global_24
  loc_B1EC09: LitI2_Byte 1
  loc_B1EC0B: FnUBound
  loc_B1EC0D: CI2I4
  loc_B1EC0E: ForI2 var_284
  loc_B1EC14: LitI2_Byte 1
  loc_B1EC16: FLdPr Me
  loc_B1EC19: MemLdI2 global_124
  loc_B1EC1C: CI4UI1
  loc_B1EC1D: FLdPr Me
  loc_B1EC20: MemLdI2 global_120
  loc_B1EC23: CI4UI1
  loc_B1EC24: FLdPr Me
  loc_B1EC27: MemLdI2 global_122
  loc_B1EC2A: CI4UI1
  loc_B1EC2B: FLdPr Me
  loc_B1EC2E: MemLdStr global_96
  loc_B1EC31: Ary1LdPr
  loc_B1EC32: MemLdStr global_20
  loc_B1EC35: Ary1LdPr
  loc_B1EC36: MemLdStr global_24
  loc_B1EC39: Ary1LdPr
  loc_B1EC3A: MemStI2 global_16
  loc_B1EC3D: FLdPr Me
  loc_B1EC40: MemLdI2 global_120
  loc_B1EC43: CI4UI1
  loc_B1EC44: FLdPr Me
  loc_B1EC47: MemLdI2 global_122
  loc_B1EC4A: CI4UI1
  loc_B1EC4B: FLdPr Me
  loc_B1EC4E: MemLdStr global_96
  loc_B1EC51: Ary1LdPr
  loc_B1EC52: MemLdStr global_20
  loc_B1EC55: Ary1LdPr
  loc_B1EC56: MemLdI2 global_20
  loc_B1EC59: FLdPr Me
  loc_B1EC5C: MemLdI2 global_124
  loc_B1EC5F: CI4UI1
  loc_B1EC60: FLdPr Me
  loc_B1EC63: MemLdI2 global_120
  loc_B1EC66: CI4UI1
  loc_B1EC67: FLdPr Me
  loc_B1EC6A: MemLdI2 global_122
  loc_B1EC6D: CI4UI1
  loc_B1EC6E: FLdPr Me
  loc_B1EC71: MemLdStr global_96
  loc_B1EC74: Ary1LdPr
  loc_B1EC75: MemLdStr global_20
  loc_B1EC78: Ary1LdPr
  loc_B1EC79: MemLdStr global_24
  loc_B1EC7C: Ary1LdPr
  loc_B1EC7D: MemLdI2 global_16
  loc_B1EC80: AddI2
  loc_B1EC81: FLdPr Me
  loc_B1EC84: MemLdI2 global_120
  loc_B1EC87: CI4UI1
  loc_B1EC88: FLdPr Me
  loc_B1EC8B: MemLdI2 global_122
  loc_B1EC8E: CI4UI1
  loc_B1EC8F: FLdPr Me
  loc_B1EC92: MemLdStr global_96
  loc_B1EC95: Ary1LdPr
  loc_B1EC96: MemLdStr global_20
  loc_B1EC99: Ary1LdPr
  loc_B1EC9A: MemStI2 global_20
  loc_B1EC9D: FLdPr Me
  loc_B1ECA0: MemLdRfVar from_stack_1.global_124
  loc_B1ECA3: NextI2 var_284, loc_B1EC14
  loc_B1ECA8: FLdPr Me
  loc_B1ECAB: MemLdI2 global_120
  loc_B1ECAE: CI4UI1
  loc_B1ECAF: FLdPr Me
  loc_B1ECB2: MemLdI2 global_122
  loc_B1ECB5: CI4UI1
  loc_B1ECB6: FLdPr Me
  loc_B1ECB9: MemLdStr global_96
  loc_B1ECBC: Ary1LdPr
  loc_B1ECBD: MemLdStr global_20
  loc_B1ECC0: Ary1LdPr
  loc_B1ECC1: MemLdI2 global_20
  loc_B1ECC4: LitI2_Byte 1
  loc_B1ECC6: AddI2
  loc_B1ECC7: FLdPr Me
  loc_B1ECCA: MemLdI2 global_120
  loc_B1ECCD: CI4UI1
  loc_B1ECCE: FLdPr Me
  loc_B1ECD1: MemLdI2 global_122
  loc_B1ECD4: CI4UI1
  loc_B1ECD5: FLdPr Me
  loc_B1ECD8: MemLdStr global_96
  loc_B1ECDB: Ary1LdPr
  loc_B1ECDC: MemLdStr global_20
  loc_B1ECDF: Ary1LdPr
  loc_B1ECE0: MemStI2 global_20
  loc_B1ECE3: FLdPr Me
  loc_B1ECE6: MemLdI2 global_122
  loc_B1ECE9: CI4UI1
  loc_B1ECEA: FLdPr Me
  loc_B1ECED: MemLdStr global_96
  loc_B1ECF0: Ary1LdPr
  loc_B1ECF1: MemLdI2 global_16
  loc_B1ECF4: FLdPr Me
  loc_B1ECF7: MemLdI2 global_120
  loc_B1ECFA: CI4UI1
  loc_B1ECFB: FLdPr Me
  loc_B1ECFE: MemLdI2 global_122
  loc_B1ED01: CI4UI1
  loc_B1ED02: FLdPr Me
  loc_B1ED05: MemLdStr global_96
  loc_B1ED08: Ary1LdPr
  loc_B1ED09: MemLdStr global_20
  loc_B1ED0C: Ary1LdPr
  loc_B1ED0D: MemLdI2 global_20
  loc_B1ED10: AddI2
  loc_B1ED11: FLdPr Me
  loc_B1ED14: MemLdI2 global_122
  loc_B1ED17: CI4UI1
  loc_B1ED18: FLdPr Me
  loc_B1ED1B: MemLdStr global_96
  loc_B1ED1E: Ary1LdPr
  loc_B1ED1F: MemStI2 global_16
  loc_B1ED22: FLdPr Me
  loc_B1ED25: MemLdRfVar from_stack_1.global_120
  loc_B1ED28: NextI2 var_280, loc_B1EBE5
  loc_B1ED2D: FLdPr Me
  loc_B1ED30: MemLdI2 global_122
  loc_B1ED33: CI4UI1
  loc_B1ED34: FLdPr Me
  loc_B1ED37: MemLdStr global_96
  loc_B1ED3A: Ary1LdPr
  loc_B1ED3B: MemLdI2 global_16
  loc_B1ED3E: LitI2_Byte 1
  loc_B1ED40: AddI2
  loc_B1ED41: FLdPr Me
  loc_B1ED44: MemLdI2 global_122
  loc_B1ED47: CI4UI1
  loc_B1ED48: FLdPr Me
  loc_B1ED4B: MemLdStr global_96
  loc_B1ED4E: Ary1LdPr
  loc_B1ED4F: MemStI2 global_16
  loc_B1ED52: LitI2_Byte 0
  loc_B1ED54: FLdPr Me
  loc_B1ED57: MemLdRfVar from_stack_1.global_100
  loc_B1ED5A: CVarRef
  loc_B1ED5F: LitI2_Byte &HFF
  loc_B1ED61: FLdPr Me
  loc_B1ED64: MemLdI2 global_122
  loc_B1ED67: CI4UI1
  loc_B1ED68: FLdPr Me
  loc_B1ED6B: MemLdStr global_96
  loc_B1ED6E: Ary1LdPr
  loc_B1ED6F: MemLdStr global_24
  loc_B1ED72: CVarStr var_A4
  loc_B1ED75: PopAdLdVar
  loc_B1ED76: FLdPr Me
  loc_B1ED79: MemLdRfVar from_stack_1.global_128
  loc_B1ED7C: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B1ED81: LitI2_Byte 0
  loc_B1ED83: FLdPr Me
  loc_B1ED86: MemLdRfVar from_stack_1.global_104
  loc_B1ED89: CVarRef
  loc_B1ED8E: LitI2_Byte &HFF
  loc_B1ED90: FLdPr Me
  loc_B1ED93: MemLdI2 global_122
  loc_B1ED96: CI4UI1
  loc_B1ED97: FLdPr Me
  loc_B1ED9A: MemLdStr global_96
  loc_B1ED9D: Ary1LdPr
  loc_B1ED9E: MemLdStr global_28
  loc_B1EDA1: CVarStr var_A4
  loc_B1EDA4: PopAdLdVar
  loc_B1EDA5: FLdPr Me
  loc_B1EDA8: MemLdRfVar from_stack_1.global_128
  loc_B1EDAB: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B1EDB0: LitI2_Byte 0
  loc_B1EDB2: FLdPr Me
  loc_B1EDB5: MemLdRfVar from_stack_1.global_108
  loc_B1EDB8: CVarRef
  loc_B1EDBD: LitI2_Byte &HFF
  loc_B1EDBF: FLdPr Me
  loc_B1EDC2: MemLdI2 global_122
  loc_B1EDC5: CI4UI1
  loc_B1EDC6: FLdPr Me
  loc_B1EDC9: MemLdStr global_96
  loc_B1EDCC: Ary1LdPr
  loc_B1EDCD: MemLdStr global_32
  loc_B1EDD0: CVarStr var_A4
  loc_B1EDD3: PopAdLdVar
  loc_B1EDD4: FLdPr Me
  loc_B1EDD7: MemLdRfVar from_stack_1.global_128
  loc_B1EDDA: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B1EDDF: LitI2_Byte 0
  loc_B1EDE1: FLdPr Me
  loc_B1EDE4: MemLdRfVar from_stack_1.global_112
  loc_B1EDE7: CVarRef
  loc_B1EDEC: LitI2_Byte &HFF
  loc_B1EDEE: FLdPr Me
  loc_B1EDF1: MemLdI2 global_122
  loc_B1EDF4: CI4UI1
  loc_B1EDF5: FLdPr Me
  loc_B1EDF8: MemLdStr global_96
  loc_B1EDFB: Ary1LdPr
  loc_B1EDFC: MemLdStr global_36
  loc_B1EDFF: CVarStr var_A4
  loc_B1EE02: PopAdLdVar
  loc_B1EE03: FLdPr Me
  loc_B1EE06: MemLdRfVar from_stack_1.global_128
  loc_B1EE09: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B1EE0E: LitI2_Byte 0
  loc_B1EE10: FLdPr Me
  loc_B1EE13: MemLdRfVar from_stack_1.global_116
  loc_B1EE16: CVarRef
  loc_B1EE1B: LitI2_Byte &HFF
  loc_B1EE1D: FLdPr Me
  loc_B1EE20: MemLdI2 global_122
  loc_B1EE23: CI4UI1
  loc_B1EE24: FLdPr Me
  loc_B1EE27: MemLdStr global_96
  loc_B1EE2A: Ary1LdPr
  loc_B1EE2B: MemLdStr global_40
  loc_B1EE2E: CVarStr var_A4
  loc_B1EE31: PopAdLdVar
  loc_B1EE32: FLdPr Me
  loc_B1EE35: MemLdRfVar from_stack_1.global_128
  loc_B1EE38: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B1EE3D: FLdPr Me
  loc_B1EE40: MemLdRfVar from_stack_1.global_122
  loc_B1EE43: NextI2 var_27C, loc_B1EBC1
  loc_B1EE48: LitI2_Byte &HFF
  loc_B1EE4A: FLdPr Me
  loc_B1EE4D: MemStI2 bGenerado
  loc_B1EE50: LitI4 0
  loc_B1EE55: CI2I4
  loc_B1EE56: FLdPr Me
  loc_B1EE59: Me.MousePointer = from_stack_1
  loc_B1EE5E: LitVarStr var_A4, vbNullString
  loc_B1EE63: PopAdLdVar
  loc_B1EE64: FLdPr Me
  loc_B1EE67: VCallAd Control_ID_statusBar
  loc_B1EE6A: FStAdFunc var_B8
  loc_B1EE6D: FLdPr var_B8
  loc_B1EE70: LateIdSt
  loc_B1EE75: FFree1Ad var_B8
  loc_B1EE78: ExitProcHresult
  loc_B1EE79: LitI4 0
  loc_B1EE7E: LitStr "Error "
  loc_B1EE81: FLdRfVar var_270
  loc_B1EE84: ImpAdCallI2 Err 'rtcErrObj
  loc_B1EE89: FStAdFunc var_B8
  loc_B1EE8C: FLdPr var_B8
  loc_B1EE8F:  = Err.Number
  loc_B1EE94: ILdRf var_270
  loc_B1EE97: CStrI4
  loc_B1EE99: FStStrNoPop var_CC
  loc_B1EE9C: ConcatStr
  loc_B1EE9D: FStStrNoPop var_D0
  loc_B1EEA0: LitStr ": "
  loc_B1EEA3: ConcatStr
  loc_B1EEA4: FStStrNoPop var_D8
  loc_B1EEA7: FLdRfVar var_D4
  loc_B1EEAA: ImpAdCallI2 Err 'rtcErrObj
  loc_B1EEAF: FStAdFunc var_104
  loc_B1EEB2: FLdPr var_104
  loc_B1EEB5:  = Err.Description
  loc_B1EEBA: ILdRf var_D4
  loc_B1EEBD: ConcatStr
  loc_B1EEBE: FStStrNoPop var_DC
  loc_B1EEC1: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B1EEC6: FFreeStr var_CC = "": var_D0 = "": var_D8 = "": var_D4 = ""
  loc_B1EED3: FFreeAd var_B8 = ""
  loc_B1EEDA: ExitProcHresult
  loc_B1EEDB: ExitProcHresult
End Sub

Public Sub GeneraXLS() '951CDC
  'Data Table: 4C2F64
  loc_951CC4: LitI2_Byte 0
  loc_951CC6: FLdPr Me
  loc_951CC9: MemStI2 bLogos
  loc_951CCC: Call GeneraHTML()
  loc_951CD1: LitI2_Byte &HFF
  loc_951CD3: FLdPr Me
  loc_951CD6: MemStI2 bLogos
  loc_951CD9: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'B2D3B0
  'Data Table: 4C2F64
  loc_B2CA44: FLdRfVar var_88
  loc_B2CA47: LitI2_Byte 0
  loc_B2CA49: LitI2_Byte &HFF
  loc_B2CA4B: ImpAdLdI4 MemVar_C3D83C
  loc_B2CA4E: FLdPr Me
  loc_B2CA51: MemLdRfVar from_stack_1.global_92
  loc_B2CA54: NewIfNullPr IFileSystem3
  loc_B2CA57: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_B2CA5C: ILdRf var_88
  loc_B2CA5F: FLdPr Me
  loc_B2CA62: MemStVarAd
  loc_B2CA66: FFree1Ad var_88
  loc_B2CA69: Call Proc_231_38_AC1858()
  loc_B2CA6E: LitI2_Byte 1
  loc_B2CA70: FLdPr Me
  loc_B2CA73: MemLdRfVar from_stack_1.global_122
  loc_B2CA76: FLdPr Me
  loc_B2CA79: MemLdStr global_96
  loc_B2CA7C: LitI2_Byte 1
  loc_B2CA7E: FnUBound
  loc_B2CA80: CI2I4
  loc_B2CA81: ForI2 var_8C
  loc_B2CA87: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B2CA8C: PopAdLdVar
  loc_B2CA8D: FLdPr Me
  loc_B2CA90: MemLdRfVar from_stack_1.htmFile
  loc_B2CA93: LdPrVar
  loc_B2CA95: LateMemCall
  loc_B2CA9B: LitStr "<th rowspan="""
  loc_B2CA9E: FLdPr Me
  loc_B2CAA1: MemLdI2 global_122
  loc_B2CAA4: CI4UI1
  loc_B2CAA5: FLdPr Me
  loc_B2CAA8: MemLdStr global_96
  loc_B2CAAB: Ary1LdPr
  loc_B2CAAC: MemLdI2 global_16
  loc_B2CAAF: CStrUI1
  loc_B2CAB1: FStStrNoPop var_B0
  loc_B2CAB4: ConcatStr
  loc_B2CAB5: FStStrNoPop var_B4
  loc_B2CAB8: LitStr """ align=""center"" valign=""top"" class=""LineaDato"">"
  loc_B2CABB: ConcatStr
  loc_B2CABC: FStStrNoPop var_B8
  loc_B2CABF: FLdPr Me
  loc_B2CAC2: MemLdI2 global_122
  loc_B2CAC5: CI4UI1
  loc_B2CAC6: FLdPr Me
  loc_B2CAC9: MemLdStr global_96
  loc_B2CACC: Ary1LdPr
  loc_B2CACD: MemLdRfVar from_stack_1.global_0
  loc_B2CAD0: LdFixedStr
  loc_B2CAD3: FStStrNoPop var_BC
  loc_B2CAD6: ConcatStr
  loc_B2CAD7: FStStrNoPop var_C0
  loc_B2CADA: LitStr "<br>"
  loc_B2CADD: ConcatStr
  loc_B2CADE: FStStrNoPop var_C4
  loc_B2CAE1: FLdPr Me
  loc_B2CAE4: MemLdI2 global_122
  loc_B2CAE7: CI4UI1
  loc_B2CAE8: FLdPr Me
  loc_B2CAEB: MemLdStr global_96
  loc_B2CAEE: Ary1LdPr
  loc_B2CAEF: MemLdStr global_12
  loc_B2CAF2: ConcatStr
  loc_B2CAF3: FStStrNoPop var_C8
  loc_B2CAF6: LitStr "</th>"
  loc_B2CAF9: ConcatStr
  loc_B2CAFA: CVarStr var_D8
  loc_B2CAFD: PopAdLdVar
  loc_B2CAFE: FLdPr Me
  loc_B2CB01: MemLdRfVar from_stack_1.htmFile
  loc_B2CB04: LdPrVar
  loc_B2CB06: LateMemCall
  loc_B2CB0C: FFreeStr var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = ""
  loc_B2CB1D: FFree1Var var_D8 = ""
  loc_B2CB20: LitI2_Byte 1
  loc_B2CB22: FLdPr Me
  loc_B2CB25: MemLdRfVar from_stack_1.global_120
  loc_B2CB28: FLdPr Me
  loc_B2CB2B: MemLdI2 global_122
  loc_B2CB2E: CI4UI1
  loc_B2CB2F: FLdPr Me
  loc_B2CB32: MemLdStr global_96
  loc_B2CB35: Ary1LdPr
  loc_B2CB36: MemLdStr global_20
  loc_B2CB39: LitI2_Byte 1
  loc_B2CB3B: FnUBound
  loc_B2CB3D: CI2I4
  loc_B2CB3E: ForI2 var_DC
  loc_B2CB44: FLdPr Me
  loc_B2CB47: MemLdI2 global_120
  loc_B2CB4A: LitI2_Byte 1
  loc_B2CB4C: GtI2
  loc_B2CB4D: BranchF loc_B2CB64
  loc_B2CB50: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B2CB55: PopAdLdVar
  loc_B2CB56: FLdPr Me
  loc_B2CB59: MemLdRfVar from_stack_1.htmFile
  loc_B2CB5C: LdPrVar
  loc_B2CB5E: LateMemCall
  loc_B2CB64: LitStr "<th rowspan="""
  loc_B2CB67: FLdPr Me
  loc_B2CB6A: MemLdI2 global_120
  loc_B2CB6D: CI4UI1
  loc_B2CB6E: FLdPr Me
  loc_B2CB71: MemLdI2 global_122
  loc_B2CB74: CI4UI1
  loc_B2CB75: FLdPr Me
  loc_B2CB78: MemLdStr global_96
  loc_B2CB7B: Ary1LdPr
  loc_B2CB7C: MemLdStr global_20
  loc_B2CB7F: Ary1LdPr
  loc_B2CB80: MemLdI2 global_20
  loc_B2CB83: CStrUI1
  loc_B2CB85: FStStrNoPop var_B0
  loc_B2CB88: ConcatStr
  loc_B2CB89: FStStrNoPop var_B4
  loc_B2CB8C: LitStr """ align=""center"" valign=""top"" class=""LineaDato"">"
  loc_B2CB8F: ConcatStr
  loc_B2CB90: FStStrNoPop var_B8
  loc_B2CB93: FLdPr Me
  loc_B2CB96: MemLdI2 global_120
  loc_B2CB99: CI4UI1
  loc_B2CB9A: FLdPr Me
  loc_B2CB9D: MemLdI2 global_122
  loc_B2CBA0: CI4UI1
  loc_B2CBA1: FLdPr Me
  loc_B2CBA4: MemLdStr global_96
  loc_B2CBA7: Ary1LdPr
  loc_B2CBA8: MemLdStr global_20
  loc_B2CBAB: Ary1LdPr
  loc_B2CBAC: MemLdRfVar from_stack_1.global_0
  loc_B2CBAF: LdFixedStr
  loc_B2CBB2: FStStrNoPop var_BC
  loc_B2CBB5: ConcatStr
  loc_B2CBB6: FStStrNoPop var_C0
  loc_B2CBB9: LitStr "<br>"
  loc_B2CBBC: ConcatStr
  loc_B2CBBD: FStStrNoPop var_C4
  loc_B2CBC0: FLdPr Me
  loc_B2CBC3: MemLdI2 global_120
  loc_B2CBC6: CI4UI1
  loc_B2CBC7: FLdPr Me
  loc_B2CBCA: MemLdI2 global_122
  loc_B2CBCD: CI4UI1
  loc_B2CBCE: FLdPr Me
  loc_B2CBD1: MemLdStr global_96
  loc_B2CBD4: Ary1LdPr
  loc_B2CBD5: MemLdStr global_20
  loc_B2CBD8: Ary1LdPr
  loc_B2CBD9: MemLdStr global_16
  loc_B2CBDC: ConcatStr
  loc_B2CBDD: FStStrNoPop var_C8
  loc_B2CBE0: LitStr "</th>"
  loc_B2CBE3: ConcatStr
  loc_B2CBE4: CVarStr var_D8
  loc_B2CBE7: PopAdLdVar
  loc_B2CBE8: FLdPr Me
  loc_B2CBEB: MemLdRfVar from_stack_1.htmFile
  loc_B2CBEE: LdPrVar
  loc_B2CBF0: LateMemCall
  loc_B2CBF6: FFreeStr var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = ""
  loc_B2CC07: FFree1Var var_D8 = ""
  loc_B2CC0A: LitI2_Byte 1
  loc_B2CC0C: FLdPr Me
  loc_B2CC0F: MemLdRfVar from_stack_1.global_124
  loc_B2CC12: FLdPr Me
  loc_B2CC15: MemLdI2 global_120
  loc_B2CC18: CI4UI1
  loc_B2CC19: FLdPr Me
  loc_B2CC1C: MemLdI2 global_122
  loc_B2CC1F: CI4UI1
  loc_B2CC20: FLdPr Me
  loc_B2CC23: MemLdStr global_96
  loc_B2CC26: Ary1LdPr
  loc_B2CC27: MemLdStr global_20
  loc_B2CC2A: Ary1LdPr
  loc_B2CC2B: MemLdStr global_24
  loc_B2CC2E: LitI2_Byte 1
  loc_B2CC30: FnUBound
  loc_B2CC32: CI2I4
  loc_B2CC33: ForI2 var_E0
  loc_B2CC39: FLdPr Me
  loc_B2CC3C: MemLdI2 global_124
  loc_B2CC3F: LitI2_Byte 1
  loc_B2CC41: GtI2
  loc_B2CC42: BranchF loc_B2CC59
  loc_B2CC45: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B2CC4A: PopAdLdVar
  loc_B2CC4B: FLdPr Me
  loc_B2CC4E: MemLdRfVar from_stack_1.htmFile
  loc_B2CC51: LdPrVar
  loc_B2CC53: LateMemCall
  loc_B2CC59: LitStr "<th align=""center"" valign=""top"" class=""LineaDato"">"
  loc_B2CC5C: FLdPr Me
  loc_B2CC5F: MemLdI2 global_124
  loc_B2CC62: CI4UI1
  loc_B2CC63: FLdPr Me
  loc_B2CC66: MemLdI2 global_120
  loc_B2CC69: CI4UI1
  loc_B2CC6A: FLdPr Me
  loc_B2CC6D: MemLdI2 global_122
  loc_B2CC70: CI4UI1
  loc_B2CC71: FLdPr Me
  loc_B2CC74: MemLdStr global_96
  loc_B2CC77: Ary1LdPr
  loc_B2CC78: MemLdStr global_20
  loc_B2CC7B: Ary1LdPr
  loc_B2CC7C: MemLdStr global_24
  loc_B2CC7F: Ary1LdPr
  loc_B2CC80: MemLdRfVar from_stack_1.global_0
  loc_B2CC83: LdFixedStr
  loc_B2CC86: FStStrNoPop var_B0
  loc_B2CC89: ConcatStr
  loc_B2CC8A: FStStrNoPop var_B4
  loc_B2CC8D: LitStr "<br>"
  loc_B2CC90: ConcatStr
  loc_B2CC91: FStStrNoPop var_B8
  loc_B2CC94: FLdPr Me
  loc_B2CC97: MemLdI2 global_124
  loc_B2CC9A: CI4UI1
  loc_B2CC9B: FLdPr Me
  loc_B2CC9E: MemLdI2 global_120
  loc_B2CCA1: CI4UI1
  loc_B2CCA2: FLdPr Me
  loc_B2CCA5: MemLdI2 global_122
  loc_B2CCA8: CI4UI1
  loc_B2CCA9: FLdPr Me
  loc_B2CCAC: MemLdStr global_96
  loc_B2CCAF: Ary1LdPr
  loc_B2CCB0: MemLdStr global_20
  loc_B2CCB3: Ary1LdPr
  loc_B2CCB4: MemLdStr global_24
  loc_B2CCB7: Ary1LdPr
  loc_B2CCB8: MemLdStr global_12
  loc_B2CCBB: ConcatStr
  loc_B2CCBC: FStStrNoPop var_BC
  loc_B2CCBF: LitStr "</th>"
  loc_B2CCC2: ConcatStr
  loc_B2CCC3: CVarStr var_D8
  loc_B2CCC6: PopAdLdVar
  loc_B2CCC7: FLdPr Me
  loc_B2CCCA: MemLdRfVar from_stack_1.htmFile
  loc_B2CCCD: LdPrVar
  loc_B2CCCF: LateMemCall
  loc_B2CCD5: FFreeStr var_B0 = "": var_B4 = "": var_B8 = ""
  loc_B2CCE0: FFree1Var var_D8 = ""
  loc_B2CCE3: LitStr "    <th colspan=""1"" align=""left"" class=""LineaDato"">Subtotales ("
  loc_B2CCE6: FLdPr Me
  loc_B2CCE9: MemLdI2 global_122
  loc_B2CCEC: CI4UI1
  loc_B2CCED: FLdPr Me
  loc_B2CCF0: MemLdStr global_96
  loc_B2CCF3: Ary1LdPr
  loc_B2CCF4: MemLdRfVar from_stack_1.global_0
  loc_B2CCF7: LdFixedStr
  loc_B2CCFA: FStStrNoPop var_B0
  loc_B2CCFD: ConcatStr
  loc_B2CCFE: FStStrNoPop var_B4
  loc_B2CD01: LitStr " - "
  loc_B2CD04: ConcatStr
  loc_B2CD05: FStStrNoPop var_B8
  loc_B2CD08: FLdPr Me
  loc_B2CD0B: MemLdI2 global_120
  loc_B2CD0E: CI4UI1
  loc_B2CD0F: FLdPr Me
  loc_B2CD12: MemLdI2 global_122
  loc_B2CD15: CI4UI1
  loc_B2CD16: FLdPr Me
  loc_B2CD19: MemLdStr global_96
  loc_B2CD1C: Ary1LdPr
  loc_B2CD1D: MemLdStr global_20
  loc_B2CD20: Ary1LdPr
  loc_B2CD21: MemLdRfVar from_stack_1.global_0
  loc_B2CD24: LdFixedStr
  loc_B2CD27: FStStrNoPop var_BC
  loc_B2CD2A: ConcatStr
  loc_B2CD2B: FStStrNoPop var_C0
  loc_B2CD2E: LitStr " - "
  loc_B2CD31: ConcatStr
  loc_B2CD32: FStStrNoPop var_C4
  loc_B2CD35: FLdPr Me
  loc_B2CD38: MemLdI2 global_124
  loc_B2CD3B: CI4UI1
  loc_B2CD3C: FLdPr Me
  loc_B2CD3F: MemLdI2 global_120
  loc_B2CD42: CI4UI1
  loc_B2CD43: FLdPr Me
  loc_B2CD46: MemLdI2 global_122
  loc_B2CD49: CI4UI1
  loc_B2CD4A: FLdPr Me
  loc_B2CD4D: MemLdStr global_96
  loc_B2CD50: Ary1LdPr
  loc_B2CD51: MemLdStr global_20
  loc_B2CD54: Ary1LdPr
  loc_B2CD55: MemLdStr global_24
  loc_B2CD58: Ary1LdPr
  loc_B2CD59: MemLdRfVar from_stack_1.global_0
  loc_B2CD5C: LdFixedStr
  loc_B2CD5F: FStStrNoPop var_C8
  loc_B2CD62: ConcatStr
  loc_B2CD63: FStStrNoPop var_E4
  loc_B2CD66: LitStr ")</th>"
  loc_B2CD69: ConcatStr
  loc_B2CD6A: CVarStr var_D8
  loc_B2CD6D: PopAdLdVar
  loc_B2CD6E: FLdPr Me
  loc_B2CD71: MemLdRfVar from_stack_1.htmFile
  loc_B2CD74: LdPrVar
  loc_B2CD76: LateMemCall
  loc_B2CD7C: FFreeStr var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = ""
  loc_B2CD8F: FFree1Var var_D8 = ""
  loc_B2CD92: LitStr "    <th align=""right"" class=""Totales"">"
  loc_B2CD95: FLdPr Me
  loc_B2CD98: MemLdI2 global_124
  loc_B2CD9B: CI4UI1
  loc_B2CD9C: FLdPr Me
  loc_B2CD9F: MemLdI2 global_120
  loc_B2CDA2: CI4UI1
  loc_B2CDA3: FLdPr Me
  loc_B2CDA6: MemLdI2 global_122
  loc_B2CDA9: CI4UI1
  loc_B2CDAA: FLdPr Me
  loc_B2CDAD: MemLdStr global_96
  loc_B2CDB0: Ary1LdPr
  loc_B2CDB1: MemLdStr global_20
  loc_B2CDB4: Ary1LdPr
  loc_B2CDB5: MemLdStr global_24
  loc_B2CDB8: Ary1LdPr
  loc_B2CDB9: MemLdStr global_20
  loc_B2CDBC: ConcatStr
  loc_B2CDBD: FStStrNoPop var_B0
  loc_B2CDC0: LitStr "</th>"
  loc_B2CDC3: ConcatStr
  loc_B2CDC4: CVarStr var_D8
  loc_B2CDC7: PopAdLdVar
  loc_B2CDC8: FLdPr Me
  loc_B2CDCB: MemLdRfVar from_stack_1.htmFile
  loc_B2CDCE: LdPrVar
  loc_B2CDD0: LateMemCall
  loc_B2CDD6: FFree1Str var_B0
  loc_B2CDD9: FFree1Var var_D8 = ""
  loc_B2CDDC: LitStr "    <th align=""right"" class=""Totales"">"
  loc_B2CDDF: FLdPr Me
  loc_B2CDE2: MemLdI2 global_124
  loc_B2CDE5: CI4UI1
  loc_B2CDE6: FLdPr Me
  loc_B2CDE9: MemLdI2 global_120
  loc_B2CDEC: CI4UI1
  loc_B2CDED: FLdPr Me
  loc_B2CDF0: MemLdI2 global_122
  loc_B2CDF3: CI4UI1
  loc_B2CDF4: FLdPr Me
  loc_B2CDF7: MemLdStr global_96
  loc_B2CDFA: Ary1LdPr
  loc_B2CDFB: MemLdStr global_20
  loc_B2CDFE: Ary1LdPr
  loc_B2CDFF: MemLdStr global_24
  loc_B2CE02: Ary1LdPr
  loc_B2CE03: MemLdStr global_24
  loc_B2CE06: ConcatStr
  loc_B2CE07: FStStrNoPop var_B0
  loc_B2CE0A: LitStr "</th>"
  loc_B2CE0D: ConcatStr
  loc_B2CE0E: CVarStr var_D8
  loc_B2CE11: PopAdLdVar
  loc_B2CE12: FLdPr Me
  loc_B2CE15: MemLdRfVar from_stack_1.htmFile
  loc_B2CE18: LdPrVar
  loc_B2CE1A: LateMemCall
  loc_B2CE20: FFree1Str var_B0
  loc_B2CE23: FFree1Var var_D8 = ""
  loc_B2CE26: LitStr "    <th align=""right"" class=""Totales"">"
  loc_B2CE29: FLdPr Me
  loc_B2CE2C: MemLdI2 global_124
  loc_B2CE2F: CI4UI1
  loc_B2CE30: FLdPr Me
  loc_B2CE33: MemLdI2 global_120
  loc_B2CE36: CI4UI1
  loc_B2CE37: FLdPr Me
  loc_B2CE3A: MemLdI2 global_122
  loc_B2CE3D: CI4UI1
  loc_B2CE3E: FLdPr Me
  loc_B2CE41: MemLdStr global_96
  loc_B2CE44: Ary1LdPr
  loc_B2CE45: MemLdStr global_20
  loc_B2CE48: Ary1LdPr
  loc_B2CE49: MemLdStr global_24
  loc_B2CE4C: Ary1LdPr
  loc_B2CE4D: MemLdStr global_28
  loc_B2CE50: ConcatStr
  loc_B2CE51: FStStrNoPop var_B0
  loc_B2CE54: LitStr "</th>"
  loc_B2CE57: ConcatStr
  loc_B2CE58: CVarStr var_D8
  loc_B2CE5B: PopAdLdVar
  loc_B2CE5C: FLdPr Me
  loc_B2CE5F: MemLdRfVar from_stack_1.htmFile
  loc_B2CE62: LdPrVar
  loc_B2CE64: LateMemCall
  loc_B2CE6A: FFree1Str var_B0
  loc_B2CE6D: FFree1Var var_D8 = ""
  loc_B2CE70: LitStr "    <th align=""right"" class=""Totales"">"
  loc_B2CE73: FLdPr Me
  loc_B2CE76: MemLdI2 global_124
  loc_B2CE79: CI4UI1
  loc_B2CE7A: FLdPr Me
  loc_B2CE7D: MemLdI2 global_120
  loc_B2CE80: CI4UI1
  loc_B2CE81: FLdPr Me
  loc_B2CE84: MemLdI2 global_122
  loc_B2CE87: CI4UI1
  loc_B2CE88: FLdPr Me
  loc_B2CE8B: MemLdStr global_96
  loc_B2CE8E: Ary1LdPr
  loc_B2CE8F: MemLdStr global_20
  loc_B2CE92: Ary1LdPr
  loc_B2CE93: MemLdStr global_24
  loc_B2CE96: Ary1LdPr
  loc_B2CE97: MemLdStr global_32
  loc_B2CE9A: ConcatStr
  loc_B2CE9B: FStStrNoPop var_B0
  loc_B2CE9E: LitStr "</th>"
  loc_B2CEA1: ConcatStr
  loc_B2CEA2: CVarStr var_D8
  loc_B2CEA5: PopAdLdVar
  loc_B2CEA6: FLdPr Me
  loc_B2CEA9: MemLdRfVar from_stack_1.htmFile
  loc_B2CEAC: LdPrVar
  loc_B2CEAE: LateMemCall
  loc_B2CEB4: FFree1Str var_B0
  loc_B2CEB7: FFree1Var var_D8 = ""
  loc_B2CEBA: LitStr "    <th align=""right"" class=""Totales"">"
  loc_B2CEBD: FLdPr Me
  loc_B2CEC0: MemLdI2 global_124
  loc_B2CEC3: CI4UI1
  loc_B2CEC4: FLdPr Me
  loc_B2CEC7: MemLdI2 global_120
  loc_B2CECA: CI4UI1
  loc_B2CECB: FLdPr Me
  loc_B2CECE: MemLdI2 global_122
  loc_B2CED1: CI4UI1
  loc_B2CED2: FLdPr Me
  loc_B2CED5: MemLdStr global_96
  loc_B2CED8: Ary1LdPr
  loc_B2CED9: MemLdStr global_20
  loc_B2CEDC: Ary1LdPr
  loc_B2CEDD: MemLdStr global_24
  loc_B2CEE0: Ary1LdPr
  loc_B2CEE1: MemLdStr global_36
  loc_B2CEE4: ConcatStr
  loc_B2CEE5: FStStrNoPop var_B0
  loc_B2CEE8: LitStr "</th>"
  loc_B2CEEB: ConcatStr
  loc_B2CEEC: CVarStr var_D8
  loc_B2CEEF: PopAdLdVar
  loc_B2CEF0: FLdPr Me
  loc_B2CEF3: MemLdRfVar from_stack_1.htmFile
  loc_B2CEF6: LdPrVar
  loc_B2CEF8: LateMemCall
  loc_B2CEFE: FFree1Str var_B0
  loc_B2CF01: FFree1Var var_D8 = ""
  loc_B2CF04: LitVarStr var_9C, "  </tr>"
  loc_B2CF09: PopAdLdVar
  loc_B2CF0A: FLdPr Me
  loc_B2CF0D: MemLdRfVar from_stack_1.htmFile
  loc_B2CF10: LdPrVar
  loc_B2CF12: LateMemCall
  loc_B2CF18: FLdPr Me
  loc_B2CF1B: MemLdRfVar from_stack_1.global_124
  loc_B2CF1E: NextI2 var_E0, loc_B2CC39
  loc_B2CF23: LitStr "    <th colspan=""2"" align=""left"" class=""LineaDato"">Subtotales ("
  loc_B2CF26: FLdPr Me
  loc_B2CF29: MemLdI2 global_122
  loc_B2CF2C: CI4UI1
  loc_B2CF2D: FLdPr Me
  loc_B2CF30: MemLdStr global_96
  loc_B2CF33: Ary1LdPr
  loc_B2CF34: MemLdRfVar from_stack_1.global_0
  loc_B2CF37: LdFixedStr
  loc_B2CF3A: FStStrNoPop var_B0
  loc_B2CF3D: ConcatStr
  loc_B2CF3E: FStStrNoPop var_B4
  loc_B2CF41: LitStr " - "
  loc_B2CF44: ConcatStr
  loc_B2CF45: FStStrNoPop var_B8
  loc_B2CF48: FLdPr Me
  loc_B2CF4B: MemLdI2 global_120
  loc_B2CF4E: CI4UI1
  loc_B2CF4F: FLdPr Me
  loc_B2CF52: MemLdI2 global_122
  loc_B2CF55: CI4UI1
  loc_B2CF56: FLdPr Me
  loc_B2CF59: MemLdStr global_96
  loc_B2CF5C: Ary1LdPr
  loc_B2CF5D: MemLdStr global_20
  loc_B2CF60: Ary1LdPr
  loc_B2CF61: MemLdRfVar from_stack_1.global_0
  loc_B2CF64: LdFixedStr
  loc_B2CF67: FStStrNoPop var_BC
  loc_B2CF6A: ConcatStr
  loc_B2CF6B: FStStrNoPop var_C0
  loc_B2CF6E: LitStr ")</th>"
  loc_B2CF71: ConcatStr
  loc_B2CF72: CVarStr var_D8
  loc_B2CF75: PopAdLdVar
  loc_B2CF76: FLdPr Me
  loc_B2CF79: MemLdRfVar from_stack_1.htmFile
  loc_B2CF7C: LdPrVar
  loc_B2CF7E: LateMemCall
  loc_B2CF84: FFreeStr var_B0 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_B2CF91: FFree1Var var_D8 = ""
  loc_B2CF94: LitStr "    <th align=""right"" class=""Totales"">"
  loc_B2CF97: FLdPr Me
  loc_B2CF9A: MemLdI2 global_120
  loc_B2CF9D: CI4UI1
  loc_B2CF9E: FLdPr Me
  loc_B2CFA1: MemLdI2 global_122
  loc_B2CFA4: CI4UI1
  loc_B2CFA5: FLdPr Me
  loc_B2CFA8: MemLdStr global_96
  loc_B2CFAB: Ary1LdPr
  loc_B2CFAC: MemLdStr global_20
  loc_B2CFAF: Ary1LdPr
  loc_B2CFB0: MemLdStr global_28
  loc_B2CFB3: ConcatStr
  loc_B2CFB4: FStStrNoPop var_B0
  loc_B2CFB7: LitStr "</th>"
  loc_B2CFBA: ConcatStr
  loc_B2CFBB: CVarStr var_D8
  loc_B2CFBE: PopAdLdVar
  loc_B2CFBF: FLdPr Me
  loc_B2CFC2: MemLdRfVar from_stack_1.htmFile
  loc_B2CFC5: LdPrVar
  loc_B2CFC7: LateMemCall
  loc_B2CFCD: FFree1Str var_B0
  loc_B2CFD0: FFree1Var var_D8 = ""
  loc_B2CFD3: LitStr "    <th align=""right"" class=""Totales"">"
  loc_B2CFD6: FLdPr Me
  loc_B2CFD9: MemLdI2 global_120
  loc_B2CFDC: CI4UI1
  loc_B2CFDD: FLdPr Me
  loc_B2CFE0: MemLdI2 global_122
  loc_B2CFE3: CI4UI1
  loc_B2CFE4: FLdPr Me
  loc_B2CFE7: MemLdStr global_96
  loc_B2CFEA: Ary1LdPr
  loc_B2CFEB: MemLdStr global_20
  loc_B2CFEE: Ary1LdPr
  loc_B2CFEF: MemLdStr global_32
  loc_B2CFF2: ConcatStr
  loc_B2CFF3: FStStrNoPop var_B0
  loc_B2CFF6: LitStr "</th>"
  loc_B2CFF9: ConcatStr
  loc_B2CFFA: CVarStr var_D8
  loc_B2CFFD: PopAdLdVar
  loc_B2CFFE: FLdPr Me
  loc_B2D001: MemLdRfVar from_stack_1.htmFile
  loc_B2D004: LdPrVar
  loc_B2D006: LateMemCall
  loc_B2D00C: FFree1Str var_B0
  loc_B2D00F: FFree1Var var_D8 = ""
  loc_B2D012: LitStr "    <th align=""right"" class=""Totales"">"
  loc_B2D015: FLdPr Me
  loc_B2D018: MemLdI2 global_120
  loc_B2D01B: CI4UI1
  loc_B2D01C: FLdPr Me
  loc_B2D01F: MemLdI2 global_122
  loc_B2D022: CI4UI1
  loc_B2D023: FLdPr Me
  loc_B2D026: MemLdStr global_96
  loc_B2D029: Ary1LdPr
  loc_B2D02A: MemLdStr global_20
  loc_B2D02D: Ary1LdPr
  loc_B2D02E: MemLdStr global_36
  loc_B2D031: ConcatStr
  loc_B2D032: FStStrNoPop var_B0
  loc_B2D035: LitStr "</th>"
  loc_B2D038: ConcatStr
  loc_B2D039: CVarStr var_D8
  loc_B2D03C: PopAdLdVar
  loc_B2D03D: FLdPr Me
  loc_B2D040: MemLdRfVar from_stack_1.htmFile
  loc_B2D043: LdPrVar
  loc_B2D045: LateMemCall
  loc_B2D04B: FFree1Str var_B0
  loc_B2D04E: FFree1Var var_D8 = ""
  loc_B2D051: LitStr "    <th align=""right"" class=""Totales"">"
  loc_B2D054: FLdPr Me
  loc_B2D057: MemLdI2 global_120
  loc_B2D05A: CI4UI1
  loc_B2D05B: FLdPr Me
  loc_B2D05E: MemLdI2 global_122
  loc_B2D061: CI4UI1
  loc_B2D062: FLdPr Me
  loc_B2D065: MemLdStr global_96
  loc_B2D068: Ary1LdPr
  loc_B2D069: MemLdStr global_20
  loc_B2D06C: Ary1LdPr
  loc_B2D06D: MemLdStr global_40
  loc_B2D070: ConcatStr
  loc_B2D071: FStStrNoPop var_B0
  loc_B2D074: LitStr "</th>"
  loc_B2D077: ConcatStr
  loc_B2D078: CVarStr var_D8
  loc_B2D07B: PopAdLdVar
  loc_B2D07C: FLdPr Me
  loc_B2D07F: MemLdRfVar from_stack_1.htmFile
  loc_B2D082: LdPrVar
  loc_B2D084: LateMemCall
  loc_B2D08A: FFree1Str var_B0
  loc_B2D08D: FFree1Var var_D8 = ""
  loc_B2D090: LitStr "    <th align=""right"" class=""Totales"">"
  loc_B2D093: FLdPr Me
  loc_B2D096: MemLdI2 global_120
  loc_B2D099: CI4UI1
  loc_B2D09A: FLdPr Me
  loc_B2D09D: MemLdI2 global_122
  loc_B2D0A0: CI4UI1
  loc_B2D0A1: FLdPr Me
  loc_B2D0A4: MemLdStr global_96
  loc_B2D0A7: Ary1LdPr
  loc_B2D0A8: MemLdStr global_20
  loc_B2D0AB: Ary1LdPr
  loc_B2D0AC: MemLdStr global_44
  loc_B2D0AF: ConcatStr
  loc_B2D0B0: FStStrNoPop var_B0
  loc_B2D0B3: LitStr "</th>"
  loc_B2D0B6: ConcatStr
  loc_B2D0B7: CVarStr var_D8
  loc_B2D0BA: PopAdLdVar
  loc_B2D0BB: FLdPr Me
  loc_B2D0BE: MemLdRfVar from_stack_1.htmFile
  loc_B2D0C1: LdPrVar
  loc_B2D0C3: LateMemCall
  loc_B2D0C9: FFree1Str var_B0
  loc_B2D0CC: FFree1Var var_D8 = ""
  loc_B2D0CF: LitVarStr var_9C, "  </tr>"
  loc_B2D0D4: PopAdLdVar
  loc_B2D0D5: FLdPr Me
  loc_B2D0D8: MemLdRfVar from_stack_1.htmFile
  loc_B2D0DB: LdPrVar
  loc_B2D0DD: LateMemCall
  loc_B2D0E3: FLdPr Me
  loc_B2D0E6: MemLdRfVar from_stack_1.global_120
  loc_B2D0E9: NextI2 var_DC, loc_B2CB44
  loc_B2D0EE: LitStr "    <th colspan=""3"" align=""left"" class=""LineaDato"">Subtotales ("
  loc_B2D0F1: FLdPr Me
  loc_B2D0F4: MemLdI2 global_122
  loc_B2D0F7: CI4UI1
  loc_B2D0F8: FLdPr Me
  loc_B2D0FB: MemLdStr global_96
  loc_B2D0FE: Ary1LdPr
  loc_B2D0FF: MemLdRfVar from_stack_1.global_0
  loc_B2D102: LdFixedStr
  loc_B2D105: FStStrNoPop var_B0
  loc_B2D108: ConcatStr
  loc_B2D109: FStStrNoPop var_B4
  loc_B2D10C: LitStr ")</th>"
  loc_B2D10F: ConcatStr
  loc_B2D110: CVarStr var_D8
  loc_B2D113: PopAdLdVar
  loc_B2D114: FLdPr Me
  loc_B2D117: MemLdRfVar from_stack_1.htmFile
  loc_B2D11A: LdPrVar
  loc_B2D11C: LateMemCall
  loc_B2D122: FFreeStr var_B0 = ""
  loc_B2D129: FFree1Var var_D8 = ""
  loc_B2D12C: LitStr "    <th align=""right"" class=""Totales"">"
  loc_B2D12F: FLdPr Me
  loc_B2D132: MemLdI2 global_122
  loc_B2D135: CI4UI1
  loc_B2D136: FLdPr Me
  loc_B2D139: MemLdStr global_96
  loc_B2D13C: Ary1LdPr
  loc_B2D13D: MemLdStr global_24
  loc_B2D140: ConcatStr
  loc_B2D141: FStStrNoPop var_B0
  loc_B2D144: LitStr "</th>"
  loc_B2D147: ConcatStr
  loc_B2D148: CVarStr var_D8
  loc_B2D14B: PopAdLdVar
  loc_B2D14C: FLdPr Me
  loc_B2D14F: MemLdRfVar from_stack_1.htmFile
  loc_B2D152: LdPrVar
  loc_B2D154: LateMemCall
  loc_B2D15A: FFree1Str var_B0
  loc_B2D15D: FFree1Var var_D8 = ""
  loc_B2D160: LitStr "    <th align=""right"" class=""Totales"">"
  loc_B2D163: FLdPr Me
  loc_B2D166: MemLdI2 global_122
  loc_B2D169: CI4UI1
  loc_B2D16A: FLdPr Me
  loc_B2D16D: MemLdStr global_96
  loc_B2D170: Ary1LdPr
  loc_B2D171: MemLdStr global_28
  loc_B2D174: ConcatStr
  loc_B2D175: FStStrNoPop var_B0
  loc_B2D178: LitStr "</th>"
  loc_B2D17B: ConcatStr
  loc_B2D17C: CVarStr var_D8
  loc_B2D17F: PopAdLdVar
  loc_B2D180: FLdPr Me
  loc_B2D183: MemLdRfVar from_stack_1.htmFile
  loc_B2D186: LdPrVar
  loc_B2D188: LateMemCall
  loc_B2D18E: FFree1Str var_B0
  loc_B2D191: FFree1Var var_D8 = ""
  loc_B2D194: LitStr "    <th align=""right"" class=""Totales"">"
  loc_B2D197: FLdPr Me
  loc_B2D19A: MemLdI2 global_122
  loc_B2D19D: CI4UI1
  loc_B2D19E: FLdPr Me
  loc_B2D1A1: MemLdStr global_96
  loc_B2D1A4: Ary1LdPr
  loc_B2D1A5: MemLdStr global_32
  loc_B2D1A8: ConcatStr
  loc_B2D1A9: FStStrNoPop var_B0
  loc_B2D1AC: LitStr "</th>"
  loc_B2D1AF: ConcatStr
  loc_B2D1B0: CVarStr var_D8
  loc_B2D1B3: PopAdLdVar
  loc_B2D1B4: FLdPr Me
  loc_B2D1B7: MemLdRfVar from_stack_1.htmFile
  loc_B2D1BA: LdPrVar
  loc_B2D1BC: LateMemCall
  loc_B2D1C2: FFree1Str var_B0
  loc_B2D1C5: FFree1Var var_D8 = ""
  loc_B2D1C8: LitStr "    <th align=""right"" class=""Totales"">"
  loc_B2D1CB: FLdPr Me
  loc_B2D1CE: MemLdI2 global_122
  loc_B2D1D1: CI4UI1
  loc_B2D1D2: FLdPr Me
  loc_B2D1D5: MemLdStr global_96
  loc_B2D1D8: Ary1LdPr
  loc_B2D1D9: MemLdStr global_36
  loc_B2D1DC: ConcatStr
  loc_B2D1DD: FStStrNoPop var_B0
  loc_B2D1E0: LitStr "</th>"
  loc_B2D1E3: ConcatStr
  loc_B2D1E4: CVarStr var_D8
  loc_B2D1E7: PopAdLdVar
  loc_B2D1E8: FLdPr Me
  loc_B2D1EB: MemLdRfVar from_stack_1.htmFile
  loc_B2D1EE: LdPrVar
  loc_B2D1F0: LateMemCall
  loc_B2D1F6: FFree1Str var_B0
  loc_B2D1F9: FFree1Var var_D8 = ""
  loc_B2D1FC: LitStr "    <th align=""right"" class=""Totales"">"
  loc_B2D1FF: FLdPr Me
  loc_B2D202: MemLdI2 global_122
  loc_B2D205: CI4UI1
  loc_B2D206: FLdPr Me
  loc_B2D209: MemLdStr global_96
  loc_B2D20C: Ary1LdPr
  loc_B2D20D: MemLdStr global_40
  loc_B2D210: ConcatStr
  loc_B2D211: FStStrNoPop var_B0
  loc_B2D214: LitStr "</th>"
  loc_B2D217: ConcatStr
  loc_B2D218: CVarStr var_D8
  loc_B2D21B: PopAdLdVar
  loc_B2D21C: FLdPr Me
  loc_B2D21F: MemLdRfVar from_stack_1.htmFile
  loc_B2D222: LdPrVar
  loc_B2D224: LateMemCall
  loc_B2D22A: FFree1Str var_B0
  loc_B2D22D: FFree1Var var_D8 = ""
  loc_B2D230: LitVarStr var_9C, "  </tr>"
  loc_B2D235: PopAdLdVar
  loc_B2D236: FLdPr Me
  loc_B2D239: MemLdRfVar from_stack_1.htmFile
  loc_B2D23C: LdPrVar
  loc_B2D23E: LateMemCall
  loc_B2D244: FLdPr Me
  loc_B2D247: MemLdRfVar from_stack_1.global_122
  loc_B2D24A: NextI2 var_8C, loc_B2CA87
  loc_B2D24F: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B2D254: PopAdLdVar
  loc_B2D255: FLdPr Me
  loc_B2D258: MemLdRfVar from_stack_1.htmFile
  loc_B2D25B: LdPrVar
  loc_B2D25D: LateMemCall
  loc_B2D263: LitVarStr var_9C, "    <th colspan=""9"" class=""Encabezado"">&nbsp;</th>"
  loc_B2D268: PopAdLdVar
  loc_B2D269: FLdPr Me
  loc_B2D26C: MemLdRfVar from_stack_1.htmFile
  loc_B2D26F: LdPrVar
  loc_B2D271: LateMemCall
  loc_B2D277: LitVarStr var_9C, "  </tr>"
  loc_B2D27C: PopAdLdVar
  loc_B2D27D: FLdPr Me
  loc_B2D280: MemLdRfVar from_stack_1.htmFile
  loc_B2D283: LdPrVar
  loc_B2D285: LateMemCall
  loc_B2D28B: LitVarStr var_9C, "  <tr>"
  loc_B2D290: PopAdLdVar
  loc_B2D291: FLdPr Me
  loc_B2D294: MemLdRfVar from_stack_1.htmFile
  loc_B2D297: LdPrVar
  loc_B2D299: LateMemCall
  loc_B2D29F: LitVarStr var_9C, "    <th colspan=""4"" align=""right"" class=""Titulo2"">TOTALES:</th>"
  loc_B2D2A4: PopAdLdVar
  loc_B2D2A5: FLdPr Me
  loc_B2D2A8: MemLdRfVar from_stack_1.htmFile
  loc_B2D2AB: LdPrVar
  loc_B2D2AD: LateMemCall
  loc_B2D2B3: LitStr "    <th align=""right"" class=""Totales"">"
  loc_B2D2B6: FLdPr Me
  loc_B2D2B9: MemLdStr global_100
  loc_B2D2BC: ConcatStr
  loc_B2D2BD: FStStrNoPop var_B0
  loc_B2D2C0: LitStr "</th>"
  loc_B2D2C3: ConcatStr
  loc_B2D2C4: CVarStr var_D8
  loc_B2D2C7: PopAdLdVar
  loc_B2D2C8: FLdPr Me
  loc_B2D2CB: MemLdRfVar from_stack_1.htmFile
  loc_B2D2CE: LdPrVar
  loc_B2D2D0: LateMemCall
  loc_B2D2D6: FFree1Str var_B0
  loc_B2D2D9: FFree1Var var_D8 = ""
  loc_B2D2DC: LitStr "    <th align=""right"" class=""Totales"">"
  loc_B2D2DF: FLdPr Me
  loc_B2D2E2: MemLdStr global_104
  loc_B2D2E5: ConcatStr
  loc_B2D2E6: FStStrNoPop var_B0
  loc_B2D2E9: LitStr "</th>"
  loc_B2D2EC: ConcatStr
  loc_B2D2ED: CVarStr var_D8
  loc_B2D2F0: PopAdLdVar
  loc_B2D2F1: FLdPr Me
  loc_B2D2F4: MemLdRfVar from_stack_1.htmFile
  loc_B2D2F7: LdPrVar
  loc_B2D2F9: LateMemCall
  loc_B2D2FF: FFree1Str var_B0
  loc_B2D302: FFree1Var var_D8 = ""
  loc_B2D305: LitStr "    <th align=""right"" class=""Totales"">"
  loc_B2D308: FLdPr Me
  loc_B2D30B: MemLdStr global_108
  loc_B2D30E: ConcatStr
  loc_B2D30F: FStStrNoPop var_B0
  loc_B2D312: LitStr "</th>"
  loc_B2D315: ConcatStr
  loc_B2D316: CVarStr var_D8
  loc_B2D319: PopAdLdVar
  loc_B2D31A: FLdPr Me
  loc_B2D31D: MemLdRfVar from_stack_1.htmFile
  loc_B2D320: LdPrVar
  loc_B2D322: LateMemCall
  loc_B2D328: FFree1Str var_B0
  loc_B2D32B: FFree1Var var_D8 = ""
  loc_B2D32E: LitStr "    <th align=""right"" class=""Totales"">"
  loc_B2D331: FLdPr Me
  loc_B2D334: MemLdStr global_112
  loc_B2D337: ConcatStr
  loc_B2D338: FStStrNoPop var_B0
  loc_B2D33B: LitStr "</th>"
  loc_B2D33E: ConcatStr
  loc_B2D33F: CVarStr var_D8
  loc_B2D342: PopAdLdVar
  loc_B2D343: FLdPr Me
  loc_B2D346: MemLdRfVar from_stack_1.htmFile
  loc_B2D349: LdPrVar
  loc_B2D34B: LateMemCall
  loc_B2D351: FFree1Str var_B0
  loc_B2D354: FFree1Var var_D8 = ""
  loc_B2D357: LitStr "    <th align=""right"" class=""Totales"">"
  loc_B2D35A: FLdPr Me
  loc_B2D35D: MemLdStr global_116
  loc_B2D360: ConcatStr
  loc_B2D361: FStStrNoPop var_B0
  loc_B2D364: LitStr "</th>"
  loc_B2D367: ConcatStr
  loc_B2D368: CVarStr var_D8
  loc_B2D36B: PopAdLdVar
  loc_B2D36C: FLdPr Me
  loc_B2D36F: MemLdRfVar from_stack_1.htmFile
  loc_B2D372: LdPrVar
  loc_B2D374: LateMemCall
  loc_B2D37A: FFree1Str var_B0
  loc_B2D37D: FFree1Var var_D8 = ""
  loc_B2D380: LitVarStr var_9C, "  </tr>"
  loc_B2D385: PopAdLdVar
  loc_B2D386: FLdPr Me
  loc_B2D389: MemLdRfVar from_stack_1.htmFile
  loc_B2D38C: LdPrVar
  loc_B2D38E: LateMemCall
  loc_B2D394: Call Proc_231_39_9829A0()
  loc_B2D399: FLdPr Me
  loc_B2D39C: MemLdRfVar from_stack_1.htmFile
  loc_B2D39F: LdPrVar
  loc_B2D3A1: LateMemCall
  loc_B2D3A7: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_B2D3AC: ExitProcHresult
End Sub

Private Function Proc_231_35_9ECECC() '9ECECC
  'Data Table: 4C2F64
  loc_9ECDA4: FLdPr Me
  loc_9ECDA7: MemLdI2 global_122
  loc_9ECDAA: LitI2_Byte 1
  loc_9ECDAC: AddI2
  loc_9ECDAD: FLdPr Me
  loc_9ECDB0: MemStI2 global_122
  loc_9ECDB3: LitI2_Byte 0
  loc_9ECDB5: FLdPr Me
  loc_9ECDB8: MemStI2 global_120
  loc_9ECDBB: LitI2_Byte 0
  loc_9ECDBD: FLdPr Me
  loc_9ECDC0: MemStI2 global_124
  loc_9ECDC3: LitI4 1
  loc_9ECDC8: FLdPr Me
  loc_9ECDCB: MemLdI2 global_122
  loc_9ECDCE: CI4UI1
  loc_9ECDCF: FLdPr Me
  loc_9ECDD2: MemLdRfVar from_stack_1.global_96
  loc_9ECDD5: RedimPreserve
  loc_9ECDDF: FLdRfVar var_A0
  loc_9ECDE2: LitVarStr var_9C, "CodiOrga"
  loc_9ECDE7: PopAdLdVar
  loc_9ECDE8: FLdRfVar var_8C
  loc_9ECDEB: FLdRfVar var_88
  loc_9ECDEE: FLdPr Me
  loc_9ECDF1: MemLdRfVar from_stack_1.global_76
  loc_9ECDF4: NewIfNullPr clsimputacion
  loc_9ECDF7: from_stack_1v = clsimputacion.RsFrmGet()
  loc_9ECDFC: FLdPr var_88
  loc_9ECDFF:  = Me.Fields
  loc_9ECE04: FLdPr var_8C
  loc_9ECE07: from_stack_2 = Me.Item(from_stack_1)
  loc_9ECE0C: LitI2_Byte 0
  loc_9ECE0E: LitVar_Missing var_D4
  loc_9ECE11: LitI2_Byte 0
  loc_9ECE13: FLdZeroAd var_A0
  loc_9ECE16: CVarAd
  loc_9ECE1A: PopAdLdVar
  loc_9ECE1B: FLdPr Me
  loc_9ECE1E: MemLdI2 global_122
  loc_9ECE21: CI4UI1
  loc_9ECE22: FLdPr Me
  loc_9ECE25: MemLdStr global_96
  loc_9ECE28: Ary1LdPr
  loc_9ECE29: MemLdRfVar from_stack_1.global_0
  loc_9ECE2C: LdFixedStr
  loc_9ECE2F: PopTmpLdAdStr
  loc_9ECE33: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_9ECE38: ILdRf var_A4
  loc_9ECE3B: FLdPr Me
  loc_9ECE3E: MemLdI2 global_122
  loc_9ECE41: CI4UI1
  loc_9ECE42: FLdPr Me
  loc_9ECE45: MemLdStr global_96
  loc_9ECE48: Ary1LdPr
  loc_9ECE49: MemLdRfVar from_stack_1.global_0
  loc_9ECE4C: StFixedStr
  loc_9ECE4F: FFree1Str var_A4
  loc_9ECE52: FFreeAd var_88 = ""
  loc_9ECE59: FFreeVar var_B4 = ""
  loc_9ECE60: FLdRfVar var_A0
  loc_9ECE63: LitVarStr var_9C, "DetaOrga"
  loc_9ECE68: PopAdLdVar
  loc_9ECE69: FLdRfVar var_8C
  loc_9ECE6C: FLdRfVar var_88
  loc_9ECE6F: FLdPr Me
  loc_9ECE72: MemLdRfVar from_stack_1.global_76
  loc_9ECE75: NewIfNullPr clsimputacion
  loc_9ECE78: from_stack_1v = clsimputacion.RsFrmGet()
  loc_9ECE7D: FLdPr var_88
  loc_9ECE80:  = Me.Fields
  loc_9ECE85: FLdPr var_8C
  loc_9ECE88: from_stack_2 = Me.Item(from_stack_1)
  loc_9ECE8D: LitI2_Byte 0
  loc_9ECE8F: LitVar_Missing var_D4
  loc_9ECE92: LitI2_Byte 0
  loc_9ECE94: FLdZeroAd var_A0
  loc_9ECE97: CVarAd
  loc_9ECE9B: PopAdLdVar
  loc_9ECE9C: FLdPr Me
  loc_9ECE9F: MemLdI2 global_122
  loc_9ECEA2: CI4UI1
  loc_9ECEA3: FLdPr Me
  loc_9ECEA6: MemLdStr global_96
  loc_9ECEA9: AryLock
  loc_9ECEAC: Ary1LdPr
  loc_9ECEAD: MemLdRfVar from_stack_1.global_12
  loc_9ECEB0: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_9ECEB5: AryUnlock
  loc_9ECEB8: FFreeAd var_88 = ""
  loc_9ECEBF: FFreeVar var_B4 = ""
  loc_9ECEC6: Call Proc_231_36_A05EF4()
  loc_9ECECB: ExitProcHresult
End Function

Private Function Proc_231_36_A05EF4() 'A05EF4
  'Data Table: 4C2F64
  loc_A05DA0: FLdPr Me
  loc_A05DA3: MemLdI2 global_120
  loc_A05DA6: LitI2_Byte 1
  loc_A05DA8: AddI2
  loc_A05DA9: FLdPr Me
  loc_A05DAC: MemStI2 global_120
  loc_A05DAF: LitI2_Byte 0
  loc_A05DB1: FLdPr Me
  loc_A05DB4: MemStI2 global_124
  loc_A05DB7: LitI4 1
  loc_A05DBC: FLdPr Me
  loc_A05DBF: MemLdI2 global_120
  loc_A05DC2: CI4UI1
  loc_A05DC3: FLdPr Me
  loc_A05DC6: MemLdI2 global_122
  loc_A05DC9: CI4UI1
  loc_A05DCA: FLdPr Me
  loc_A05DCD: MemLdStr global_96
  loc_A05DD0: Ary1LdPr
  loc_A05DD1: MemLdRfVar from_stack_1.global_20
  loc_A05DD4: RedimPreserve
  loc_A05DDE: FLdRfVar var_A0
  loc_A05DE1: LitVarStr var_9C, "CodiPart"
  loc_A05DE6: PopAdLdVar
  loc_A05DE7: FLdRfVar var_8C
  loc_A05DEA: FLdRfVar var_88
  loc_A05DED: FLdPr Me
  loc_A05DF0: MemLdRfVar from_stack_1.global_76
  loc_A05DF3: NewIfNullPr clsimputacion
  loc_A05DF6: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A05DFB: FLdPr var_88
  loc_A05DFE:  = Me.Fields
  loc_A05E03: FLdPr var_8C
  loc_A05E06: from_stack_2 = Me.Item(from_stack_1)
  loc_A05E0B: LitI2_Byte 0
  loc_A05E0D: LitVar_Missing var_D4
  loc_A05E10: LitI2_Byte 0
  loc_A05E12: FLdZeroAd var_A0
  loc_A05E15: CVarAd
  loc_A05E19: PopAdLdVar
  loc_A05E1A: FLdPr Me
  loc_A05E1D: MemLdI2 global_120
  loc_A05E20: CI4UI1
  loc_A05E21: FLdPr Me
  loc_A05E24: MemLdI2 global_122
  loc_A05E27: CI4UI1
  loc_A05E28: FLdPr Me
  loc_A05E2B: MemLdStr global_96
  loc_A05E2E: Ary1LdPr
  loc_A05E2F: MemLdStr global_20
  loc_A05E32: Ary1LdPr
  loc_A05E33: MemLdRfVar from_stack_1.global_0
  loc_A05E36: LdFixedStr
  loc_A05E39: PopTmpLdAdStr
  loc_A05E3D: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A05E42: ILdRf var_A4
  loc_A05E45: FLdPr Me
  loc_A05E48: MemLdI2 global_120
  loc_A05E4B: CI4UI1
  loc_A05E4C: FLdPr Me
  loc_A05E4F: MemLdI2 global_122
  loc_A05E52: CI4UI1
  loc_A05E53: FLdPr Me
  loc_A05E56: MemLdStr global_96
  loc_A05E59: Ary1LdPr
  loc_A05E5A: MemLdStr global_20
  loc_A05E5D: Ary1LdPr
  loc_A05E5E: MemLdRfVar from_stack_1.global_0
  loc_A05E61: StFixedStr
  loc_A05E64: FFree1Str var_A4
  loc_A05E67: FFreeAd var_88 = ""
  loc_A05E6E: FFreeVar var_B4 = ""
  loc_A05E75: FLdRfVar var_A0
  loc_A05E78: LitVarStr var_9C, "DetaPart"
  loc_A05E7D: PopAdLdVar
  loc_A05E7E: FLdRfVar var_8C
  loc_A05E81: FLdRfVar var_88
  loc_A05E84: FLdPr Me
  loc_A05E87: MemLdRfVar from_stack_1.global_76
  loc_A05E8A: NewIfNullPr clsimputacion
  loc_A05E8D: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A05E92: FLdPr var_88
  loc_A05E95:  = Me.Fields
  loc_A05E9A: FLdPr var_8C
  loc_A05E9D: from_stack_2 = Me.Item(from_stack_1)
  loc_A05EA2: LitI2_Byte 0
  loc_A05EA4: LitVar_Missing var_D4
  loc_A05EA7: LitI2_Byte 0
  loc_A05EA9: FLdZeroAd var_A0
  loc_A05EAC: CVarAd
  loc_A05EB0: PopAdLdVar
  loc_A05EB1: FLdPr Me
  loc_A05EB4: MemLdI2 global_120
  loc_A05EB7: CI4UI1
  loc_A05EB8: FLdPr Me
  loc_A05EBB: MemLdI2 global_122
  loc_A05EBE: CI4UI1
  loc_A05EBF: FLdPr Me
  loc_A05EC2: MemLdStr global_96
  loc_A05EC5: AryLock
  loc_A05EC8: Ary1LdPr
  loc_A05EC9: MemLdStr global_20
  loc_A05ECC: AryLock
  loc_A05ECF: Ary1LdPr
  loc_A05ED0: MemLdRfVar from_stack_1.global_16
  loc_A05ED3: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A05ED8: AryUnlock
  loc_A05EDB: AryUnlock
  loc_A05EDE: FFreeAd var_88 = ""
  loc_A05EE5: FFreeVar var_B4 = ""
  loc_A05EEC: Call Proc_231_37_AAE09C()
  loc_A05EF1: ExitProcHresult
  loc_A05EF2: BranchT loc_A149A0
End Function

Private Function Proc_231_37_AAE09C() 'AAE09C
  'Data Table: 4C2F64
  loc_AADB64: FLdPr Me
  loc_AADB67: MemLdI2 global_124
  loc_AADB6A: LitI2_Byte 1
  loc_AADB6C: AddI2
  loc_AADB6D: FLdPr Me
  loc_AADB70: MemStI2 global_124
  loc_AADB73: LitI4 1
  loc_AADB78: FLdPr Me
  loc_AADB7B: MemLdI2 global_124
  loc_AADB7E: CI4UI1
  loc_AADB7F: FLdPr Me
  loc_AADB82: MemLdI2 global_120
  loc_AADB85: CI4UI1
  loc_AADB86: FLdPr Me
  loc_AADB89: MemLdI2 global_122
  loc_AADB8C: CI4UI1
  loc_AADB8D: FLdPr Me
  loc_AADB90: MemLdStr global_96
  loc_AADB93: Ary1LdPr
  loc_AADB94: MemLdStr global_20
  loc_AADB97: Ary1LdPr
  loc_AADB98: MemLdRfVar from_stack_1.global_24
  loc_AADB9B: RedimPreserve
  loc_AADBA5: FLdPr Me
  loc_AADBA8: MemLdI2 global_122
  loc_AADBAB: CI4UI1
  loc_AADBAC: FLdPr Me
  loc_AADBAF: MemLdStr global_96
  loc_AADBB2: AryLock
  loc_AADBB5: Ary1LdRf
  loc_AADBB6: FStR4 var_8C
  loc_AADBB9: FLdRfVar var_A8
  loc_AADBBC: LitVarStr var_A4, "CodiFifu"
  loc_AADBC1: PopAdLdVar
  loc_AADBC2: FLdRfVar var_94
  loc_AADBC5: FLdRfVar var_90
  loc_AADBC8: FLdPr Me
  loc_AADBCB: MemLdRfVar from_stack_1.global_76
  loc_AADBCE: NewIfNullPr clsimputacion
  loc_AADBD1: from_stack_1v = clsimputacion.RsFrmGet()
  loc_AADBD6: FLdPr var_90
  loc_AADBD9:  = Me.Fields
  loc_AADBDE: FLdPr var_94
  loc_AADBE1: from_stack_2 = Me.Item(from_stack_1)
  loc_AADBE6: LitI2_Byte 0
  loc_AADBE8: LitVar_Missing var_DC
  loc_AADBEB: LitI2_Byte 0
  loc_AADBED: FLdZeroAd var_A8
  loc_AADBF0: CVarAd
  loc_AADBF4: PopAdLdVar
  loc_AADBF5: FLdPr Me
  loc_AADBF8: MemLdI2 global_124
  loc_AADBFB: CI4UI1
  loc_AADBFC: FLdPr Me
  loc_AADBFF: MemLdI2 global_120
  loc_AADC02: CI4UI1
  loc_AADC03: FMemLdR4 var_8C(20)
  loc_AADC08: Ary1LdPr
  loc_AADC09: MemLdStr global_24
  loc_AADC0C: Ary1LdPr
  loc_AADC0D: MemLdRfVar from_stack_1.global_0
  loc_AADC10: LdFixedStr
  loc_AADC13: PopTmpLdAdStr
  loc_AADC17: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AADC1C: ILdRf var_AC
  loc_AADC1F: FLdPr Me
  loc_AADC22: MemLdI2 global_124
  loc_AADC25: CI4UI1
  loc_AADC26: FLdPr Me
  loc_AADC29: MemLdI2 global_120
  loc_AADC2C: CI4UI1
  loc_AADC2D: FMemLdR4 var_8C(20)
  loc_AADC32: Ary1LdPr
  loc_AADC33: MemLdStr global_24
  loc_AADC36: Ary1LdPr
  loc_AADC37: MemLdRfVar from_stack_1.global_0
  loc_AADC3A: StFixedStr
  loc_AADC3D: FFree1Str var_AC
  loc_AADC40: FFreeAd var_90 = ""
  loc_AADC47: FFreeVar var_BC = ""
  loc_AADC4E: FLdRfVar var_A8
  loc_AADC51: LitVarStr var_A4, "DetaFifu"
  loc_AADC56: PopAdLdVar
  loc_AADC57: FLdRfVar var_94
  loc_AADC5A: FLdRfVar var_90
  loc_AADC5D: FLdPr Me
  loc_AADC60: MemLdRfVar from_stack_1.global_76
  loc_AADC63: NewIfNullPr clsimputacion
  loc_AADC66: from_stack_1v = clsimputacion.RsFrmGet()
  loc_AADC6B: FLdPr var_90
  loc_AADC6E:  = Me.Fields
  loc_AADC73: FLdPr var_94
  loc_AADC76: from_stack_2 = Me.Item(from_stack_1)
  loc_AADC7B: LitI2_Byte 0
  loc_AADC7D: LitVar_Missing var_DC
  loc_AADC80: LitI2_Byte 0
  loc_AADC82: FLdZeroAd var_A8
  loc_AADC85: CVarAd
  loc_AADC89: PopAdLdVar
  loc_AADC8A: FLdPr Me
  loc_AADC8D: MemLdI2 global_124
  loc_AADC90: CI4UI1
  loc_AADC91: FLdPr Me
  loc_AADC94: MemLdI2 global_120
  loc_AADC97: CI4UI1
  loc_AADC98: FMemLdR4 var_8C(20)
  loc_AADC9D: AryLock
  loc_AADCA0: Ary1LdPr
  loc_AADCA1: MemLdStr global_24
  loc_AADCA4: AryLock
  loc_AADCA7: Ary1LdPr
  loc_AADCA8: MemLdRfVar from_stack_1.global_12
  loc_AADCAB: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AADCB0: AryUnlock
  loc_AADCB3: AryUnlock
  loc_AADCB6: FFreeAd var_90 = ""
  loc_AADCBD: FFreeVar var_BC = ""
  loc_AADCC4: FLdRfVar var_A8
  loc_AADCC7: LitVarStr var_A4, "PrevImpu"
  loc_AADCCC: PopAdLdVar
  loc_AADCCD: FLdRfVar var_94
  loc_AADCD0: FLdRfVar var_90
  loc_AADCD3: FLdPr Me
  loc_AADCD6: MemLdRfVar from_stack_1.global_76
  loc_AADCD9: NewIfNullPr clsimputacion
  loc_AADCDC: from_stack_1v = clsimputacion.RsFrmGet()
  loc_AADCE1: FLdPr var_90
  loc_AADCE4:  = Me.Fields
  loc_AADCE9: FLdPr var_94
  loc_AADCEC: from_stack_2 = Me.Item(from_stack_1)
  loc_AADCF1: LitI2_Byte 0
  loc_AADCF3: FLdPr Me
  loc_AADCF6: MemLdI2 global_120
  loc_AADCF9: CI4UI1
  loc_AADCFA: FMemLdR4 var_8C(20)
  loc_AADCFF: AryLock
  loc_AADD02: Ary1LdPr
  loc_AADD03: MemLdRfVar from_stack_1.global_28
  loc_AADD06: CVarRef
  loc_AADD0B: LitI2_Byte &HFF
  loc_AADD0D: FLdZeroAd var_A8
  loc_AADD10: CVarAd
  loc_AADD14: PopAdLdVar
  loc_AADD15: FLdPr Me
  loc_AADD18: MemLdI2 global_124
  loc_AADD1B: CI4UI1
  loc_AADD1C: FLdPr Me
  loc_AADD1F: MemLdI2 global_120
  loc_AADD22: CI4UI1
  loc_AADD23: FMemLdR4 var_8C(20)
  loc_AADD28: AryLock
  loc_AADD2B: Ary1LdPr
  loc_AADD2C: MemLdStr global_24
  loc_AADD2F: AryLock
  loc_AADD32: Ary1LdPr
  loc_AADD33: MemLdRfVar from_stack_1.global_20
  loc_AADD36: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AADD3B: AryUnlock
  loc_AADD3E: AryUnlock
  loc_AADD41: AryUnlock
  loc_AADD44: FFreeAd var_90 = ""
  loc_AADD4B: FFree1Var var_BC = ""
  loc_AADD4E: FLdRfVar var_A8
  loc_AADD51: LitVarStr var_A4, "DefiImpu"
  loc_AADD56: PopAdLdVar
  loc_AADD57: FLdRfVar var_94
  loc_AADD5A: FLdRfVar var_90
  loc_AADD5D: FLdPr Me
  loc_AADD60: MemLdRfVar from_stack_1.global_76
  loc_AADD63: NewIfNullPr clsimputacion
  loc_AADD66: from_stack_1v = clsimputacion.RsFrmGet()
  loc_AADD6B: FLdPr var_90
  loc_AADD6E:  = Me.Fields
  loc_AADD73: FLdPr var_94
  loc_AADD76: from_stack_2 = Me.Item(from_stack_1)
  loc_AADD7B: LitI2_Byte 0
  loc_AADD7D: FLdPr Me
  loc_AADD80: MemLdI2 global_120
  loc_AADD83: CI4UI1
  loc_AADD84: FMemLdR4 var_8C(20)
  loc_AADD89: AryLock
  loc_AADD8C: Ary1LdPr
  loc_AADD8D: MemLdRfVar from_stack_1.global_32
  loc_AADD90: CVarRef
  loc_AADD95: LitI2_Byte &HFF
  loc_AADD97: FLdZeroAd var_A8
  loc_AADD9A: CVarAd
  loc_AADD9E: PopAdLdVar
  loc_AADD9F: FLdPr Me
  loc_AADDA2: MemLdI2 global_124
  loc_AADDA5: CI4UI1
  loc_AADDA6: FLdPr Me
  loc_AADDA9: MemLdI2 global_120
  loc_AADDAC: CI4UI1
  loc_AADDAD: FMemLdR4 var_8C(20)
  loc_AADDB2: AryLock
  loc_AADDB5: Ary1LdPr
  loc_AADDB6: MemLdStr global_24
  loc_AADDB9: AryLock
  loc_AADDBC: Ary1LdPr
  loc_AADDBD: MemLdRfVar from_stack_1.global_24
  loc_AADDC0: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AADDC5: AryUnlock
  loc_AADDC8: AryUnlock
  loc_AADDCB: AryUnlock
  loc_AADDCE: FFreeAd var_90 = ""
  loc_AADDD5: FFree1Var var_BC = ""
  loc_AADDD8: FLdRfVar var_A8
  loc_AADDDB: LitVarStr var_A4, "DeveImpu"
  loc_AADDE0: PopAdLdVar
  loc_AADDE1: FLdRfVar var_94
  loc_AADDE4: FLdRfVar var_90
  loc_AADDE7: FLdPr Me
  loc_AADDEA: MemLdRfVar from_stack_1.global_76
  loc_AADDED: NewIfNullPr clsimputacion
  loc_AADDF0: from_stack_1v = clsimputacion.RsFrmGet()
  loc_AADDF5: FLdPr var_90
  loc_AADDF8:  = Me.Fields
  loc_AADDFD: FLdPr var_94
  loc_AADE00: from_stack_2 = Me.Item(from_stack_1)
  loc_AADE05: LitI2_Byte 0
  loc_AADE07: FLdPr Me
  loc_AADE0A: MemLdI2 global_120
  loc_AADE0D: CI4UI1
  loc_AADE0E: FMemLdR4 var_8C(20)
  loc_AADE13: AryLock
  loc_AADE16: Ary1LdPr
  loc_AADE17: MemLdRfVar from_stack_1.global_36
  loc_AADE1A: CVarRef
  loc_AADE1F: LitI2_Byte &HFF
  loc_AADE21: FLdZeroAd var_A8
  loc_AADE24: CVarAd
  loc_AADE28: PopAdLdVar
  loc_AADE29: FLdPr Me
  loc_AADE2C: MemLdI2 global_124
  loc_AADE2F: CI4UI1
  loc_AADE30: FLdPr Me
  loc_AADE33: MemLdI2 global_120
  loc_AADE36: CI4UI1
  loc_AADE37: FMemLdR4 var_8C(20)
  loc_AADE3C: AryLock
  loc_AADE3F: Ary1LdPr
  loc_AADE40: MemLdStr global_24
  loc_AADE43: AryLock
  loc_AADE46: Ary1LdPr
  loc_AADE47: MemLdRfVar from_stack_1.global_28
  loc_AADE4A: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AADE4F: AryUnlock
  loc_AADE52: AryUnlock
  loc_AADE55: AryUnlock
  loc_AADE58: FFreeAd var_90 = ""
  loc_AADE5F: FFree1Var var_BC = ""
  loc_AADE62: FLdRfVar var_A8
  loc_AADE65: LitVarStr var_A4, "MapaImpu"
  loc_AADE6A: PopAdLdVar
  loc_AADE6B: FLdRfVar var_94
  loc_AADE6E: FLdRfVar var_90
  loc_AADE71: FLdPr Me
  loc_AADE74: MemLdRfVar from_stack_1.global_76
  loc_AADE77: NewIfNullPr clsimputacion
  loc_AADE7A: from_stack_1v = clsimputacion.RsFrmGet()
  loc_AADE7F: FLdPr var_90
  loc_AADE82:  = Me.Fields
  loc_AADE87: FLdPr var_94
  loc_AADE8A: from_stack_2 = Me.Item(from_stack_1)
  loc_AADE8F: LitI2_Byte 0
  loc_AADE91: FLdPr Me
  loc_AADE94: MemLdI2 global_120
  loc_AADE97: CI4UI1
  loc_AADE98: FMemLdR4 var_8C(20)
  loc_AADE9D: AryLock
  loc_AADEA0: Ary1LdPr
  loc_AADEA1: MemLdRfVar from_stack_1.global_40
  loc_AADEA4: CVarRef
  loc_AADEA9: LitI2_Byte &HFF
  loc_AADEAB: FLdZeroAd var_A8
  loc_AADEAE: CVarAd
  loc_AADEB2: PopAdLdVar
  loc_AADEB3: FLdPr Me
  loc_AADEB6: MemLdI2 global_124
  loc_AADEB9: CI4UI1
  loc_AADEBA: FLdPr Me
  loc_AADEBD: MemLdI2 global_120
  loc_AADEC0: CI4UI1
  loc_AADEC1: FMemLdR4 var_8C(20)
  loc_AADEC6: AryLock
  loc_AADEC9: Ary1LdPr
  loc_AADECA: MemLdStr global_24
  loc_AADECD: AryLock
  loc_AADED0: Ary1LdPr
  loc_AADED1: MemLdRfVar from_stack_1.global_32
  loc_AADED4: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AADED9: AryUnlock
  loc_AADEDC: AryUnlock
  loc_AADEDF: AryUnlock
  loc_AADEE2: FFreeAd var_90 = ""
  loc_AADEE9: FFree1Var var_BC = ""
  loc_AADEEC: FLdRfVar var_A8
  loc_AADEEF: LitVarStr var_A4, "PagaImpu"
  loc_AADEF4: PopAdLdVar
  loc_AADEF5: FLdRfVar var_94
  loc_AADEF8: FLdRfVar var_90
  loc_AADEFB: FLdPr Me
  loc_AADEFE: MemLdRfVar from_stack_1.global_76
  loc_AADF01: NewIfNullPr clsimputacion
  loc_AADF04: from_stack_1v = clsimputacion.RsFrmGet()
  loc_AADF09: FLdPr var_90
  loc_AADF0C:  = Me.Fields
  loc_AADF11: FLdPr var_94
  loc_AADF14: from_stack_2 = Me.Item(from_stack_1)
  loc_AADF19: LitI2_Byte 0
  loc_AADF1B: FLdPr Me
  loc_AADF1E: MemLdI2 global_120
  loc_AADF21: CI4UI1
  loc_AADF22: FMemLdR4 var_8C(20)
  loc_AADF27: AryLock
  loc_AADF2A: Ary1LdPr
  loc_AADF2B: MemLdRfVar from_stack_1.global_44
  loc_AADF2E: CVarRef
  loc_AADF33: LitI2_Byte &HFF
  loc_AADF35: FLdZeroAd var_A8
  loc_AADF38: CVarAd
  loc_AADF3C: PopAdLdVar
  loc_AADF3D: FLdPr Me
  loc_AADF40: MemLdI2 global_124
  loc_AADF43: CI4UI1
  loc_AADF44: FLdPr Me
  loc_AADF47: MemLdI2 global_120
  loc_AADF4A: CI4UI1
  loc_AADF4B: FMemLdR4 var_8C(20)
  loc_AADF50: AryLock
  loc_AADF53: Ary1LdPr
  loc_AADF54: MemLdStr global_24
  loc_AADF57: AryLock
  loc_AADF5A: Ary1LdPr
  loc_AADF5B: MemLdRfVar from_stack_1.global_36
  loc_AADF5E: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AADF63: AryUnlock
  loc_AADF66: AryUnlock
  loc_AADF69: AryUnlock
  loc_AADF6C: FFreeAd var_90 = ""
  loc_AADF73: FFree1Var var_BC = ""
  loc_AADF76: LitI2_Byte 0
  loc_AADF78: FMemLdRf 94B8
  loc_AADF7D: CVarRef
  loc_AADF82: LitI2_Byte &HFF
  loc_AADF84: FLdPr Me
  loc_AADF87: MemLdI2 global_124
  loc_AADF8A: CI4UI1
  loc_AADF8B: FLdPr Me
  loc_AADF8E: MemLdI2 global_120
  loc_AADF91: CI4UI1
  loc_AADF92: FMemLdR4 var_8C(20)
  loc_AADF97: Ary1LdPr
  loc_AADF98: MemLdStr global_24
  loc_AADF9B: Ary1LdPr
  loc_AADF9C: MemLdStr global_20
  loc_AADF9F: CVarStr var_A4
  loc_AADFA2: PopAdLdVar
  loc_AADFA3: FLdPr Me
  loc_AADFA6: MemLdRfVar from_stack_1.global_128
  loc_AADFA9: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AADFAE: LitI2_Byte 0
  loc_AADFB0: FMemLdRf 94B8
  loc_AADFB5: CVarRef
  loc_AADFBA: LitI2_Byte &HFF
  loc_AADFBC: FLdPr Me
  loc_AADFBF: MemLdI2 global_124
  loc_AADFC2: CI4UI1
  loc_AADFC3: FLdPr Me
  loc_AADFC6: MemLdI2 global_120
  loc_AADFC9: CI4UI1
  loc_AADFCA: FMemLdR4 var_8C(20)
  loc_AADFCF: Ary1LdPr
  loc_AADFD0: MemLdStr global_24
  loc_AADFD3: Ary1LdPr
  loc_AADFD4: MemLdStr global_24
  loc_AADFD7: CVarStr var_A4
  loc_AADFDA: PopAdLdVar
  loc_AADFDB: FLdPr Me
  loc_AADFDE: MemLdRfVar from_stack_1.global_128
  loc_AADFE1: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AADFE6: LitI2_Byte 0
  loc_AADFE8: FMemLdRf 94B8
  loc_AADFED: CVarRef
  loc_AADFF2: LitI2_Byte &HFF
  loc_AADFF4: FLdPr Me
  loc_AADFF7: MemLdI2 global_124
  loc_AADFFA: CI4UI1
  loc_AADFFB: FLdPr Me
  loc_AADFFE: MemLdI2 global_120
  loc_AAE001: CI4UI1
  loc_AAE002: FMemLdR4 var_8C(20)
  loc_AAE007: Ary1LdPr
  loc_AAE008: MemLdStr global_24
  loc_AAE00B: Ary1LdPr
  loc_AAE00C: MemLdStr global_28
  loc_AAE00F: CVarStr var_A4
  loc_AAE012: PopAdLdVar
  loc_AAE013: FLdPr Me
  loc_AAE016: MemLdRfVar from_stack_1.global_128
  loc_AAE019: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AAE01E: LitI2_Byte 0
  loc_AAE020: FMemLdRf 94B8
  loc_AAE025: CVarRef
  loc_AAE02A: LitI2_Byte &HFF
  loc_AAE02C: FLdPr Me
  loc_AAE02F: MemLdI2 global_124
  loc_AAE032: CI4UI1
  loc_AAE033: FLdPr Me
  loc_AAE036: MemLdI2 global_120
  loc_AAE039: CI4UI1
  loc_AAE03A: FMemLdR4 var_8C(20)
  loc_AAE03F: Ary1LdPr
  loc_AAE040: MemLdStr global_24
  loc_AAE043: Ary1LdPr
  loc_AAE044: MemLdStr global_32
  loc_AAE047: CVarStr var_A4
  loc_AAE04A: PopAdLdVar
  loc_AAE04B: FLdPr Me
  loc_AAE04E: MemLdRfVar from_stack_1.global_128
  loc_AAE051: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AAE056: LitI2_Byte 0
  loc_AAE058: FMemLdRf 94B8
  loc_AAE05D: CVarRef
  loc_AAE062: LitI2_Byte &HFF
  loc_AAE064: FLdPr Me
  loc_AAE067: MemLdI2 global_124
  loc_AAE06A: CI4UI1
  loc_AAE06B: FLdPr Me
  loc_AAE06E: MemLdI2 global_120
  loc_AAE071: CI4UI1
  loc_AAE072: FMemLdR4 var_8C(20)
  loc_AAE077: Ary1LdPr
  loc_AAE078: MemLdStr global_24
  loc_AAE07B: Ary1LdPr
  loc_AAE07C: MemLdStr global_36
  loc_AAE07F: CVarStr var_A4
  loc_AAE082: PopAdLdVar
  loc_AAE083: FLdPr Me
  loc_AAE086: MemLdRfVar from_stack_1.global_128
  loc_AAE089: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AAE08E: LitI4 0
  loc_AAE093: FStR4 var_8C
  loc_AAE096: AryUnlock
  loc_AAE099: ExitProcHresult
End Function

Private Function Proc_231_38_AC1858() 'AC1858
  'Data Table: 4C2F64
  loc_AC1284: LitVarStr var_94, "<html>"
  loc_AC1289: PopAdLdVar
  loc_AC128A: FLdPr Me
  loc_AC128D: MemLdRfVar from_stack_1.htmFile
  loc_AC1290: LdPrVar
  loc_AC1292: LateMemCall
  loc_AC1298: LitVarStr var_94, "<head>"
  loc_AC129D: PopAdLdVar
  loc_AC129E: FLdPr Me
  loc_AC12A1: MemLdRfVar from_stack_1.htmFile
  loc_AC12A4: LdPrVar
  loc_AC12A6: LateMemCall
  loc_AC12AC: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_AC12B1: PopAdLdVar
  loc_AC12B2: FLdPr Me
  loc_AC12B5: MemLdRfVar from_stack_1.htmFile
  loc_AC12B8: LdPrVar
  loc_AC12BA: LateMemCall
  loc_AC12C0: LitStr "<title>"
  loc_AC12C3: FLdRfVar var_A8
  loc_AC12C6: FLdPr Me
  loc_AC12C9:  = Me.Caption
  loc_AC12CE: ILdRf var_A8
  loc_AC12D1: ConcatStr
  loc_AC12D2: FStStrNoPop var_AC
  loc_AC12D5: LitStr "</title>"
  loc_AC12D8: ConcatStr
  loc_AC12D9: CVarStr var_BC
  loc_AC12DC: PopAdLdVar
  loc_AC12DD: FLdPr Me
  loc_AC12E0: MemLdRfVar from_stack_1.htmFile
  loc_AC12E3: LdPrVar
  loc_AC12E5: LateMemCall
  loc_AC12EB: FFreeStr var_A8 = ""
  loc_AC12F2: FFree1Var var_BC = ""
  loc_AC12F5: LitStr vbNullString
  loc_AC12F8: ILdRf Me
  loc_AC12FB: CastAd
  loc_AC12FE: FStAdFunc var_C0
  loc_AC1301: FLdRfVar var_C0
  loc_AC1304: ImpAdCallFPR4 Proc_263_23_B3DAB8(, )
  loc_AC1309: FFree1Ad var_C0
  loc_AC130C: LitI4 0
  loc_AC1311: FStStrCopy var_AC
  loc_AC1314: FLdRfVar var_AC
  loc_AC1317: LitI4 0
  loc_AC131C: FStStrCopy var_A8
  loc_AC131F: FLdRfVar var_A8
  loc_AC1322: LitI2_Byte &HFF
  loc_AC1324: PopTmpLdAd2 var_C2
  loc_AC1327: FLdPr Me
  loc_AC132A: MemLdRfVar from_stack_1.htmFile
  loc_AC132D: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_AC1332: FFreeStr var_A8 = ""
  loc_AC1339: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_AC133E: PopAdLdVar
  loc_AC133F: FLdPr Me
  loc_AC1342: MemLdRfVar from_stack_1.htmFile
  loc_AC1345: LdPrVar
  loc_AC1347: LateMemCall
  loc_AC134D: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_AC1352: PopAdLdVar
  loc_AC1353: FLdPr Me
  loc_AC1356: MemLdRfVar from_stack_1.htmFile
  loc_AC1359: LdPrVar
  loc_AC135B: LateMemCall
  loc_AC1361: LitVarStr var_94, "    <th colspan=""3"" width=""100" & Chr(37) & """ align=""center"" valign=""bottom""><p>"
  loc_AC1366: PopAdLdVar
  loc_AC1367: FLdPr Me
  loc_AC136A: MemLdRfVar from_stack_1.htmFile
  loc_AC136D: LdPrVar
  loc_AC136F: LateMemCall
  loc_AC1375: FLdPr Me
  loc_AC1378: MemLdI2 bLogos
  loc_AC137B: BranchF loc_AC1392
  loc_AC137E: LitVarStr var_94, "    <img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right"">"
  loc_AC1383: PopAdLdVar
  loc_AC1384: FLdPr Me
  loc_AC1387: MemLdRfVar from_stack_1.htmFile
  loc_AC138A: LdPrVar
  loc_AC138C: LateMemCall
  loc_AC1392: LitVarStr var_A4, "    <br><br>"
  loc_AC1397: LitVarStr var_94, "Municipalidad de Guaymallén"
  loc_AC139C: FStVarCopyObj var_BC
  loc_AC139F: FLdRfVar var_BC
  loc_AC13A2: FLdRfVar var_D4
  loc_AC13A5: ImpAdCallFPR4  = Ucase()
  loc_AC13AA: FLdRfVar var_D4
  loc_AC13AD: ConcatVar var_E4
  loc_AC13B1: LitVarStr var_F4, "</p>"
  loc_AC13B6: ConcatVar var_104
  loc_AC13BA: PopAdLdVar
  loc_AC13BB: FLdPr Me
  loc_AC13BE: MemLdRfVar from_stack_1.htmFile
  loc_AC13C1: LdPrVar
  loc_AC13C3: LateMemCall
  loc_AC13C9: FFreeVar var_BC = "": var_D4 = "": var_E4 = ""
  loc_AC13D4: LitStr "    <p>"
  loc_AC13D7: FLdRfVar var_A8
  loc_AC13DA: FLdPr Me
  loc_AC13DD:  = Me.Caption
  loc_AC13E2: ILdRf var_A8
  loc_AC13E5: ConcatStr
  loc_AC13E6: FStStrNoPop var_AC
  loc_AC13E9: LitStr "</p></th>"
  loc_AC13EC: ConcatStr
  loc_AC13ED: CVarStr var_BC
  loc_AC13F0: PopAdLdVar
  loc_AC13F1: FLdPr Me
  loc_AC13F4: MemLdRfVar from_stack_1.htmFile
  loc_AC13F7: LdPrVar
  loc_AC13F9: LateMemCall
  loc_AC13FF: FFreeStr var_A8 = ""
  loc_AC1406: FFree1Var var_BC = ""
  loc_AC1409: LitVarStr var_94, "  </tr>"
  loc_AC140E: PopAdLdVar
  loc_AC140F: FLdPr Me
  loc_AC1412: MemLdRfVar from_stack_1.htmFile
  loc_AC1415: LdPrVar
  loc_AC1417: LateMemCall
  loc_AC141D: LitVarStr var_94, "  <tr><th><hr></th></tr>"
  loc_AC1422: PopAdLdVar
  loc_AC1423: FLdPr Me
  loc_AC1426: MemLdRfVar from_stack_1.htmFile
  loc_AC1429: LdPrVar
  loc_AC142B: LateMemCall
  loc_AC1431: LitVarStr var_94, "  <tr align=""left""><th>"
  loc_AC1436: PopAdLdVar
  loc_AC1437: FLdPr Me
  loc_AC143A: MemLdRfVar from_stack_1.htmFile
  loc_AC143D: LdPrVar
  loc_AC143F: LateMemCall
  loc_AC1445: LitStr "    Periodo: <span class=""Normal"">"
  loc_AC1448: FLdRfVar var_A8
  loc_AC144B: FLdPr Me
  loc_AC144E: VCallAd Control_ID_cboPeriodo
  loc_AC1451: FStAdFunc var_C0
  loc_AC1454: FLdPr var_C0
  loc_AC1457:  = Me.Text
  loc_AC145C: ILdRf var_A8
  loc_AC145F: ConcatStr
  loc_AC1460: FStStrNoPop var_AC
  loc_AC1463: LitStr "</span>"
  loc_AC1466: ConcatStr
  loc_AC1467: CVarStr var_BC
  loc_AC146A: PopAdLdVar
  loc_AC146B: FLdPr Me
  loc_AC146E: MemLdRfVar from_stack_1.htmFile
  loc_AC1471: LdPrVar
  loc_AC1473: LateMemCall
  loc_AC1479: FFreeStr var_A8 = ""
  loc_AC1480: FFree1Ad var_C0
  loc_AC1483: FFree1Var var_BC = ""
  loc_AC1486: LitStr "   <br>Desde: <span class=""Normal"">"
  loc_AC1489: FLdPr Me
  loc_AC148C: VCallAd Control_ID_mskDesde
  loc_AC148F: FStAdFunc var_C0
  loc_AC1492: FLdPr var_C0
  loc_AC1495: LateIdLdVar var_BC DispID_15 0
  loc_AC149C: CStrVarTmp
  loc_AC149D: FStStrNoPop var_A8
  loc_AC14A0: ConcatStr
  loc_AC14A1: FStStrNoPop var_AC
  loc_AC14A4: LitStr "</span>"
  loc_AC14A7: ConcatStr
  loc_AC14A8: CVarStr var_D4
  loc_AC14AB: PopAdLdVar
  loc_AC14AC: FLdPr Me
  loc_AC14AF: MemLdRfVar from_stack_1.htmFile
  loc_AC14B2: LdPrVar
  loc_AC14B4: LateMemCall
  loc_AC14BA: FFreeStr var_A8 = ""
  loc_AC14C1: FFree1Ad var_C0
  loc_AC14C4: FFreeVar var_BC = ""
  loc_AC14CB: LitStr "   <br>Hasta: <span class=""Normal"">"
  loc_AC14CE: FLdPr Me
  loc_AC14D1: VCallAd Control_ID_mskHasta
  loc_AC14D4: FStAdFunc var_C0
  loc_AC14D7: FLdPr var_C0
  loc_AC14DA: LateIdLdVar var_BC DispID_15 0
  loc_AC14E1: CStrVarTmp
  loc_AC14E2: FStStrNoPop var_A8
  loc_AC14E5: ConcatStr
  loc_AC14E6: FStStrNoPop var_AC
  loc_AC14E9: LitStr "</span>"
  loc_AC14EC: ConcatStr
  loc_AC14ED: CVarStr var_D4
  loc_AC14F0: PopAdLdVar
  loc_AC14F1: FLdPr Me
  loc_AC14F4: MemLdRfVar from_stack_1.htmFile
  loc_AC14F7: LdPrVar
  loc_AC14F9: LateMemCall
  loc_AC14FF: FFreeStr var_A8 = ""
  loc_AC1506: FFree1Ad var_C0
  loc_AC1509: FFreeVar var_BC = ""
  loc_AC1510: FLdPr Me
  loc_AC1513: VCallAd Control_ID_CodiOrgaMsk
  loc_AC1516: FStAdFunc var_C0
  loc_AC1519: FLdPr var_C0
  loc_AC151C: LateIdLdVar var_BC DispID_0 0
  loc_AC1523: CStrVarTmp
  loc_AC1524: FStStrNoPop var_A8
  loc_AC1527: LitStr vbNullString
  loc_AC152A: NeStr
  loc_AC152C: FFree1Str var_A8
  loc_AC152F: FFree1Ad var_C0
  loc_AC1532: FFree1Var var_BC = ""
  loc_AC1535: BranchF loc_AC15A9
  loc_AC1538: LitStr "   <br>Organigrama: <span class=""Normal"">Comenzando con '"
  loc_AC153B: FLdPr Me
  loc_AC153E: VCallAd Control_ID_CodiOrgaMsk
  loc_AC1541: FStAdFunc var_C0
  loc_AC1544: FLdPr var_C0
  loc_AC1547: LateIdLdVar var_BC DispID_0 0
  loc_AC154E: CStrVarTmp
  loc_AC154F: FStStrNoPop var_A8
  loc_AC1552: ConcatStr
  loc_AC1553: FStStrNoPop var_AC
  loc_AC1556: LitStr "'  -  "
  loc_AC1559: ConcatStr
  loc_AC155A: FStStrNoPop var_120
  loc_AC155D: FLdRfVar var_11C
  loc_AC1560: FLdPr Me
  loc_AC1563: VCallAd Control_ID_CodiOrgaLbl
  loc_AC1566: FStAdFunc var_118
  loc_AC1569: FLdPr var_118
  loc_AC156C:  = Me.Caption
  loc_AC1571: ILdRf var_11C
  loc_AC1574: ConcatStr
  loc_AC1575: FStStrNoPop var_124
  loc_AC1578: LitStr "</span>"
  loc_AC157B: ConcatStr
  loc_AC157C: CVarStr var_D4
  loc_AC157F: PopAdLdVar
  loc_AC1580: FLdPr Me
  loc_AC1583: MemLdRfVar from_stack_1.htmFile
  loc_AC1586: LdPrVar
  loc_AC1588: LateMemCall
  loc_AC158E: FFreeStr var_A8 = "": var_AC = "": var_120 = "": var_11C = ""
  loc_AC159B: FFreeAd var_C0 = ""
  loc_AC15A2: FFreeVar var_BC = ""
  loc_AC15A9: FLdPr Me
  loc_AC15AC: VCallAd Control_ID_CodiPartMsk
  loc_AC15AF: FStAdFunc var_C0
  loc_AC15B2: FLdPr var_C0
  loc_AC15B5: LateIdLdVar var_BC DispID_0 0
  loc_AC15BC: CStrVarTmp
  loc_AC15BD: FStStrNoPop var_A8
  loc_AC15C0: LitStr vbNullString
  loc_AC15C3: NeStr
  loc_AC15C5: FFree1Str var_A8
  loc_AC15C8: FFree1Ad var_C0
  loc_AC15CB: FFree1Var var_BC = ""
  loc_AC15CE: BranchF loc_AC1642
  loc_AC15D1: LitStr "   <br>Partida: <span class=""Normal"">Comenzando con '"
  loc_AC15D4: FLdPr Me
  loc_AC15D7: VCallAd Control_ID_CodiPartMsk
  loc_AC15DA: FStAdFunc var_C0
  loc_AC15DD: FLdPr var_C0
  loc_AC15E0: LateIdLdVar var_BC DispID_0 0
  loc_AC15E7: CStrVarTmp
  loc_AC15E8: FStStrNoPop var_A8
  loc_AC15EB: ConcatStr
  loc_AC15EC: FStStrNoPop var_AC
  loc_AC15EF: LitStr "'  -  "
  loc_AC15F2: ConcatStr
  loc_AC15F3: FStStrNoPop var_120
  loc_AC15F6: FLdRfVar var_11C
  loc_AC15F9: FLdPr Me
  loc_AC15FC: VCallAd Control_ID_CodiPartLbl
  loc_AC15FF: FStAdFunc var_118
  loc_AC1602: FLdPr var_118
  loc_AC1605:  = Me.Caption
  loc_AC160A: ILdRf var_11C
  loc_AC160D: ConcatStr
  loc_AC160E: FStStrNoPop var_124
  loc_AC1611: LitStr "</span>"
  loc_AC1614: ConcatStr
  loc_AC1615: CVarStr var_D4
  loc_AC1618: PopAdLdVar
  loc_AC1619: FLdPr Me
  loc_AC161C: MemLdRfVar from_stack_1.htmFile
  loc_AC161F: LdPrVar
  loc_AC1621: LateMemCall
  loc_AC1627: FFreeStr var_A8 = "": var_AC = "": var_120 = "": var_11C = ""
  loc_AC1634: FFreeAd var_C0 = ""
  loc_AC163B: FFreeVar var_BC = ""
  loc_AC1642: FLdPr Me
  loc_AC1645: VCallAd Control_ID_CodiFifuMsk
  loc_AC1648: FStAdFunc var_C0
  loc_AC164B: FLdPr var_C0
  loc_AC164E: LateIdLdVar var_BC DispID_0 0
  loc_AC1655: CStrVarTmp
  loc_AC1656: FStStrNoPop var_A8
  loc_AC1659: LitStr vbNullString
  loc_AC165C: NeStr
  loc_AC165E: FFree1Str var_A8
  loc_AC1661: FFree1Ad var_C0
  loc_AC1664: FFree1Var var_BC = ""
  loc_AC1667: BranchF loc_AC16DB
  loc_AC166A: LitStr "   <br>Finalidad y Funci&oacute;n: <span class=""Normal"">Comenzando con '"
  loc_AC166D: FLdPr Me
  loc_AC1670: VCallAd Control_ID_CodiFifuMsk
  loc_AC1673: FStAdFunc var_C0
  loc_AC1676: FLdPr var_C0
  loc_AC1679: LateIdLdVar var_BC DispID_0 0
  loc_AC1680: CStrVarTmp
  loc_AC1681: FStStrNoPop var_A8
  loc_AC1684: ConcatStr
  loc_AC1685: FStStrNoPop var_AC
  loc_AC1688: LitStr "'  -  "
  loc_AC168B: ConcatStr
  loc_AC168C: FStStrNoPop var_120
  loc_AC168F: FLdRfVar var_11C
  loc_AC1692: FLdPr Me
  loc_AC1695: VCallAd Control_ID_CodiFifuLbl
  loc_AC1698: FStAdFunc var_118
  loc_AC169B: FLdPr var_118
  loc_AC169E:  = Me.Caption
  loc_AC16A3: ILdRf var_11C
  loc_AC16A6: ConcatStr
  loc_AC16A7: FStStrNoPop var_124
  loc_AC16AA: LitStr "</span>"
  loc_AC16AD: ConcatStr
  loc_AC16AE: CVarStr var_D4
  loc_AC16B1: PopAdLdVar
  loc_AC16B2: FLdPr Me
  loc_AC16B5: MemLdRfVar from_stack_1.htmFile
  loc_AC16B8: LdPrVar
  loc_AC16BA: LateMemCall
  loc_AC16C0: FFreeStr var_A8 = "": var_AC = "": var_120 = "": var_11C = ""
  loc_AC16CD: FFreeAd var_C0 = ""
  loc_AC16D4: FFreeVar var_BC = ""
  loc_AC16DB: LitVarStr var_94, "   </th>"
  loc_AC16E0: PopAdLdVar
  loc_AC16E1: FLdPr Me
  loc_AC16E4: MemLdRfVar from_stack_1.htmFile
  loc_AC16E7: LdPrVar
  loc_AC16E9: LateMemCall
  loc_AC16EF: LitVarStr var_94, "  </tr>"
  loc_AC16F4: PopAdLdVar
  loc_AC16F5: FLdPr Me
  loc_AC16F8: MemLdRfVar from_stack_1.htmFile
  loc_AC16FB: LdPrVar
  loc_AC16FD: LateMemCall
  loc_AC1703: LitVarStr var_94, "</table>"
  loc_AC1708: PopAdLdVar
  loc_AC1709: FLdPr Me
  loc_AC170C: MemLdRfVar from_stack_1.htmFile
  loc_AC170F: LdPrVar
  loc_AC1711: LateMemCall
  loc_AC1717: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_AC171C: PopAdLdVar
  loc_AC171D: FLdPr Me
  loc_AC1720: MemLdRfVar from_stack_1.htmFile
  loc_AC1723: LdPrVar
  loc_AC1725: LateMemCall
  loc_AC172B: LitVarStr var_94, "  <THEAD>"
  loc_AC1730: PopAdLdVar
  loc_AC1731: FLdPr Me
  loc_AC1734: MemLdRfVar from_stack_1.htmFile
  loc_AC1737: LdPrVar
  loc_AC1739: LateMemCall
  loc_AC173F: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_AC1744: PopAdLdVar
  loc_AC1745: FLdPr Me
  loc_AC1748: MemLdRfVar from_stack_1.htmFile
  loc_AC174B: LdPrVar
  loc_AC174D: LateMemCall
  loc_AC1753: LitVarStr var_94, "    <th>Organigrama</th>"
  loc_AC1758: PopAdLdVar
  loc_AC1759: FLdPr Me
  loc_AC175C: MemLdRfVar from_stack_1.htmFile
  loc_AC175F: LdPrVar
  loc_AC1761: LateMemCall
  loc_AC1767: LitVarStr var_94, "    <th>Partida</th>"
  loc_AC176C: PopAdLdVar
  loc_AC176D: FLdPr Me
  loc_AC1770: MemLdRfVar from_stack_1.htmFile
  loc_AC1773: LdPrVar
  loc_AC1775: LateMemCall
  loc_AC177B: LitVarStr var_94, "    <th>Finalidad<br>"
  loc_AC1780: PopAdLdVar
  loc_AC1781: FLdPr Me
  loc_AC1784: MemLdRfVar from_stack_1.htmFile
  loc_AC1787: LdPrVar
  loc_AC1789: LateMemCall
  loc_AC178F: LitVarStr var_94, "    y funci&oacute;n</th>"
  loc_AC1794: PopAdLdVar
  loc_AC1795: FLdPr Me
  loc_AC1798: MemLdRfVar from_stack_1.htmFile
  loc_AC179B: LdPrVar
  loc_AC179D: LateMemCall
  loc_AC17A3: LitVarStr var_94, "    <th>&nbsp</th>"
  loc_AC17A8: PopAdLdVar
  loc_AC17A9: FLdPr Me
  loc_AC17AC: MemLdRfVar from_stack_1.htmFile
  loc_AC17AF: LdPrVar
  loc_AC17B1: LateMemCall
  loc_AC17B7: LitVarStr var_94, "    <th>Preventiva</th>"
  loc_AC17BC: PopAdLdVar
  loc_AC17BD: FLdPr Me
  loc_AC17C0: MemLdRfVar from_stack_1.htmFile
  loc_AC17C3: LdPrVar
  loc_AC17C5: LateMemCall
  loc_AC17CB: LitVarStr var_94, "    <th>Definitiva</th>"
  loc_AC17D0: PopAdLdVar
  loc_AC17D1: FLdPr Me
  loc_AC17D4: MemLdRfVar from_stack_1.htmFile
  loc_AC17D7: LdPrVar
  loc_AC17D9: LateMemCall
  loc_AC17DF: LitVarStr var_94, "    <th>Devengado</th>"
  loc_AC17E4: PopAdLdVar
  loc_AC17E5: FLdPr Me
  loc_AC17E8: MemLdRfVar from_stack_1.htmFile
  loc_AC17EB: LdPrVar
  loc_AC17ED: LateMemCall
  loc_AC17F3: LitVarStr var_94, "    <th>Mandado<br>"
  loc_AC17F8: PopAdLdVar
  loc_AC17F9: FLdPr Me
  loc_AC17FC: MemLdRfVar from_stack_1.htmFile
  loc_AC17FF: LdPrVar
  loc_AC1801: LateMemCall
  loc_AC1807: LitVarStr var_94, "    a pagar </th>"
  loc_AC180C: PopAdLdVar
  loc_AC180D: FLdPr Me
  loc_AC1810: MemLdRfVar from_stack_1.htmFile
  loc_AC1813: LdPrVar
  loc_AC1815: LateMemCall
  loc_AC181B: LitVarStr var_94, "    <th>Pagado</th>"
  loc_AC1820: PopAdLdVar
  loc_AC1821: FLdPr Me
  loc_AC1824: MemLdRfVar from_stack_1.htmFile
  loc_AC1827: LdPrVar
  loc_AC1829: LateMemCall
  loc_AC182F: LitVarStr var_94, "  </tr>"
  loc_AC1834: PopAdLdVar
  loc_AC1835: FLdPr Me
  loc_AC1838: MemLdRfVar from_stack_1.htmFile
  loc_AC183B: LdPrVar
  loc_AC183D: LateMemCall
  loc_AC1843: LitVarStr var_94, "  </THEAD>"
  loc_AC1848: PopAdLdVar
  loc_AC1849: FLdPr Me
  loc_AC184C: MemLdRfVar from_stack_1.htmFile
  loc_AC184F: LdPrVar
  loc_AC1851: LateMemCall
  loc_AC1857: ExitProcHresult
End Function

Private Function Proc_231_39_9829A0() '9829A0
  'Data Table: 4C2F64
  loc_982960: LitVarStr var_94, "</table>"
  loc_982965: PopAdLdVar
  loc_982966: FLdPr Me
  loc_982969: MemLdRfVar from_stack_1.htmFile
  loc_98296C: LdPrVar
  loc_98296E: LateMemCall
  loc_982974: LitVarStr var_94, "</body>"
  loc_982979: PopAdLdVar
  loc_98297A: FLdPr Me
  loc_98297D: MemLdRfVar from_stack_1.htmFile
  loc_982980: LdPrVar
  loc_982982: LateMemCall
  loc_982988: LitVarStr var_94, "</html>"
  loc_98298D: PopAdLdVar
  loc_98298E: FLdPr Me
  loc_982991: MemLdRfVar from_stack_1.htmFile
  loc_982994: LdPrVar
  loc_982996: LateMemCall
  loc_98299C: ExitProcHresult
End Function
