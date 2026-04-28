VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptResumendeimputaciones
  Caption = "Resumen de Imputaciones"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptResumendeimputaciones.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 9225
  ClientHeight = 5745
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 5490
    Width = 9225
    Height = 255
    TabIndex = 25
    OleObjectBlob = "rptResumendeimputaciones.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 7800
    Top = 4080
    Width = 735
    Height = 615
    TabIndex = 22
    Cancel = -1  'True
    Picture = "rptResumendeimputaciones.frx":094A
    Style = 1
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptResumendeimputaciones.frx":0B9C
    Left = 4560
    Top = 0
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 3840
    Width = 1815
    Height = 1095
    TabIndex = 23
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 19
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 3840
    Width = 3015
    Height = 1095
    TabIndex = 20
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 18
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 17
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 9015
    Height = 3735
    TabIndex = 0
    Begin VB.CommandButton cmdCodiFifu
      Left = 3105
      Top = 3120
      Width = 375
      Height = 375
      TabIndex = 16
      Picture = "rptResumendeimputaciones.frx":0C00
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CommandButton cmdCodiOrga
      Left = 2745
      Top = 2160
      Width = 375
      Height = 375
      TabIndex = 12
      Picture = "rptResumendeimputaciones.frx":0CFA
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CommandButton cmdCodiPart
      Left = 2985
      Top = 1680
      Width = 375
      Height = 375
      TabIndex = 10
      Picture = "rptResumendeimputaciones.frx":0DF4
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CommandButton CodiUngaCmd
      Left = 2400
      Top = 2640
      Width = 375
      Height = 375
      Enabled = 0   'False
      TabIndex = 14
      Picture = "rptResumendeimputaciones.frx":0EEE
      Style = 1
      CausesValidation = 0   'False
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
      TabIndex = 8
      Picture = "rptResumendeimputaciones.frx":0FE8
      Style = 1
    End
    Begin VB.CommandButton cmdCalDesde
      Left = 2880
      Top = 720
      Width = 375
      Height = 375
      TabIndex = 5
      Picture = "rptResumendeimputaciones.frx":152A
      Style = 1
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 7440
      Top = 240
      Width = 1335
      Height = 495
      TabIndex = 21
    End
    Begin MSMask.MaskEdBox mskDesde
      Left = 1680
      Top = 720
      Width = 1095
      Height = 285
      TabIndex = 4
      OleObjectBlob = "rptResumendeimputaciones.frx":1A6C
    End
    Begin MSMask.MaskEdBox mskHasta
      Left = 1680
      Top = 1200
      Width = 1095
      Height = 285
      TabIndex = 7
      OleObjectBlob = "rptResumendeimputaciones.frx":1AF4
    End
    Begin MSMask.MaskEdBox CodiFifuMsk
      Left = 1665
      Top = 3120
      Width = 1335
      Height = 315
      TabIndex = 15
      OleObjectBlob = "rptResumendeimputaciones.frx":1B7C
    End
    Begin MSMask.MaskEdBox CodiOrgaMsk
      Left = 1665
      Top = 2160
      Width = 975
      Height = 315
      TabIndex = 11
      OleObjectBlob = "rptResumendeimputaciones.frx":1BDC
    End
    Begin MSMask.MaskEdBox CodiPartMsk
      Left = 1665
      Top = 1680
      Width = 1215
      Height = 285
      TabIndex = 9
      OleObjectBlob = "rptResumendeimputaciones.frx":1C3C
    End
    Begin MSMask.MaskEdBox CodiUngaMsk
      Left = 1665
      Top = 2640
      Width = 600
      Height = 315
      TabIndex = 13
      OleObjectBlob = "rptResumendeimputaciones.frx":1CC4
      DataField = "CodiUnga"
    End
    Begin VB.Label CodiFifuLbl
      Left = 3585
      Top = 3120
      Width = 5295
      Height = 375
      TabIndex = 33
      BorderStyle = 1 'Fixed Single
    End
    Begin VB.Label CodiOrgaLbl
      Left = 3225
      Top = 2160
      Width = 5655
      Height = 375
      TabIndex = 32
      BorderStyle = 1 'Fixed Single
    End
    Begin VB.Label CodiPartLbl
      Left = 3465
      Top = 1680
      Width = 5415
      Height = 375
      TabIndex = 31
      BorderStyle = 1 'Fixed Single
    End
    Begin VB.Label Label17
      Caption = "Finalidad-Función:"
      Left = 240
      Top = 3120
      Width = 1290
      Height = 195
      TabIndex = 30
    End
    Begin VB.Label Label4
      Caption = "Organigrama:"
      Left = 585
      Top = 2160
      Width = 945
      Height = 195
      TabIndex = 29
    End
    Begin VB.Label Label5
      Caption = "Partida:"
      Left = 960
      Top = 1680
      Width = 540
      Height = 195
      TabIndex = 28
    End
    Begin VB.Label Label16
      Caption = "Unidad de Gasto:"
      Left = 285
      Top = 2640
      Width = 1245
      Height = 195
      TabIndex = 27
    End
    Begin VB.Label DetaUngaLbl
      Left = 2865
      Top = 2640
      Width = 6015
      Height = 375
      TabIndex = 26
      BorderStyle = 1 'Fixed Single
      DataField = "DetaUnga"
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
      TabIndex = 6
      AutoSize = -1  'True
    End
    Begin VB.Label Label1
      Caption = "Desde:"
      Left = 1035
      Top = 720
      Width = 510
      Height = 195
      TabIndex = 3
      AutoSize = -1  'True
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 7920
    Top = 4440
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 24
    OleObjectBlob = "rptResumendeimputaciones.frx":1D54
  End
End

Attribute VB_Name = "rptResumendeimputaciones"

Public bGenerado As Boolean

Private Type UDT_1_00604F20
  bStruc(4) As Byte ' String fields: 1
End Type

Private Type UDT_2_00604F38
  bStruc(44) As Byte ' String fields: 5
End Type

Private Type UDT_3_00604FAC
  bStruc(44) As Byte ' String fields: 5
End Type

Private Type UDT_4_00605084
  bStruc(48) As Byte ' String fields: 5
End Type


Private Sub CodiFifuMsk_UnknownEvent_0 '94E2A0
  'Data Table: 4CC8C0
  loc_94E28C: FLdPr Me
  loc_94E28F: VCallAd Control_ID_CodiFifuMsk
  loc_94E292: CVarAd
  loc_94E296: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94E29B: FFree1Var var_94 = ""
  loc_94E29E: ExitProcHresult
End Sub

Private Sub CodiFifuMsk_UnknownEvent_8 'A10514
  'Data Table: 4CC8C0
  loc_A103BC: LitStr "SELECT DetaFifu FROM finalidad WHERE PeriInfo = "
  loc_A103BF: FLdRfVar var_8C
  loc_A103C2: FLdPr Me
  loc_A103C5: VCallAd Control_ID_cboPeriodo
  loc_A103C8: FStAdFunc var_88
  loc_A103CB: FLdPr var_88
  loc_A103CE:  = Me.Text
  loc_A103D3: ILdRf var_8C
  loc_A103D6: ConcatStr
  loc_A103D7: FStStrNoPop var_90
  loc_A103DA: LitStr " AND CodiFifu LIKE '"
  loc_A103DD: ConcatStr
  loc_A103DE: FStStrNoPop var_A8
  loc_A103E1: FLdPr Me
  loc_A103E4: VCallAd Control_ID_CodiFifuMsk
  loc_A103E7: FStAdFunc var_94
  loc_A103EA: FLdPr var_94
  loc_A103ED: LateIdLdVar var_A4 DispID_22 0
  loc_A103F4: CStrVarTmp
  loc_A103F5: FStStrNoPop var_AC
  loc_A103F8: ConcatStr
  loc_A103F9: FStStrNoPop var_B0
  loc_A103FC: LitStr Chr(37) & "'"
  loc_A103FF: ConcatStr
  loc_A10400: FStStrNoPop var_B4
  loc_A10403: FLdPr Me
  loc_A10406: MemLdRfVar from_stack_1.global_72
  loc_A10409: NewIfNullPr clsfinalidad
  loc_A1040C: Call clsfinalidad.RedefineRS(from_stack_1v)
  loc_A10411: FFreeStr var_8C = "": var_90 = "": var_A8 = "": var_AC = "": var_B0 = ""
  loc_A10420: FFreeAd var_88 = ""
  loc_A10427: FFree1Var var_A4 = ""
  loc_A1042A: FLdRfVar var_B8
  loc_A1042D: FLdPr Me
  loc_A10430: MemLdRfVar from_stack_1.global_72
  loc_A10433: NewIfNullPr clsfinalidad
  loc_A10436: from_stack_1 = clsfinalidad.RecordCount
  loc_A1043B: ILdRf var_B8
  loc_A1043E: FStR4 var_BC
  loc_A10441: ILdRf var_BC
  loc_A10444: LitI4 0
  loc_A10449: EqI4
  loc_A1044A: BranchF loc_A10467
  loc_A1044D: LitStr "0 registros encontrados"
  loc_A10450: FLdPr Me
  loc_A10453: VCallAd Control_ID_CodiFifuLbl
  loc_A10456: FStAdFunc var_88
  loc_A10459: FLdPr var_88
  loc_A1045C: Me.Caption = from_stack_1
  loc_A10461: FFree1Ad var_88
  loc_A10464: Branch loc_A10512
  loc_A10467: ILdRf var_BC
  loc_A1046A: LitI4 1
  loc_A1046F: EqI4
  loc_A10470: BranchF loc_A104D7
  loc_A10473: FLdRfVar var_A4
  loc_A10476: FLdRfVar var_D0
  loc_A10479: LitVarStr var_CC, "DetaFifu"
  loc_A1047E: PopAdLdVar
  loc_A1047F: FLdRfVar var_94
  loc_A10482: FLdRfVar var_88
  loc_A10485: FLdPr Me
  loc_A10488: MemLdRfVar from_stack_1.global_72
  loc_A1048B: NewIfNullPr clsfinalidad
  loc_A1048E: from_stack_1v = clsfinalidad.RsFrmGet()
  loc_A10493: FLdPr var_88
  loc_A10496:  = Me.Fields
  loc_A1049B: FLdPr var_94
  loc_A1049E: from_stack_2 = Me.Item(from_stack_1)
  loc_A104A3: FLdPr var_D0
  loc_A104A6:  = Me.Value
  loc_A104AB: FLdRfVar var_A4
  loc_A104AE: CStrVarTmp
  loc_A104AF: FStStrNoPop var_8C
  loc_A104B2: FLdPr Me
  loc_A104B5: VCallAd Control_ID_CodiFifuLbl
  loc_A104B8: FStAdFunc var_D4
  loc_A104BB: FLdPr var_D4
  loc_A104BE: Me.Caption = from_stack_1
  loc_A104C3: FFree1Str var_8C
  loc_A104C6: FFreeAd var_88 = "": var_94 = "": var_D0 = ""
  loc_A104D1: FFree1Var var_A4 = ""
  loc_A104D4: Branch loc_A10512
  loc_A104D7: FLdRfVar var_B8
  loc_A104DA: FLdPr Me
  loc_A104DD: MemLdRfVar from_stack_1.global_72
  loc_A104E0: NewIfNullPr clsfinalidad
  loc_A104E3: from_stack_1 = clsfinalidad.RecordCount
  loc_A104E8: ILdRf var_B8
  loc_A104EB: CStrI4
  loc_A104ED: FStStrNoPop var_8C
  loc_A104F0: LitStr " finalidades encontradas"
  loc_A104F3: ConcatStr
  loc_A104F4: FStStrNoPop var_90
  loc_A104F7: FLdPr Me
  loc_A104FA: VCallAd Control_ID_CodiFifuLbl
  loc_A104FD: FStAdFunc var_88
  loc_A10500: FLdPr var_88
  loc_A10503: Me.Caption = from_stack_1
  loc_A10508: FFreeStr var_8C = ""
  loc_A1050F: FFree1Ad var_88
  loc_A10512: ExitProcHresult
End Sub

Private Sub CodiUngaCmd_Click() '9FEBE0
  'Data Table: 4CC8C0
  loc_9FEA9C: LitI2_Byte &HFF
  loc_9FEA9E: ImpAdLdRf MemVar_C3D7D8
  loc_9FEAA1: NewIfNullPr bscUnidadGasto
  loc_9FEAA4: Call bscUnidadGasto.MuestroAnuladosPut(from_stack_1v)
  loc_9FEAA9: LitNothing
  loc_9FEAAB: CastAd
  loc_9FEAAE: FStAdFuncNoPop
  loc_9FEAB1: ImpAdLdRf MemVar_C3D7D8
  loc_9FEAB4: NewIfNullPr bscUnidadGasto
  loc_9FEAB7: Call bscUnidadGasto.global_4338300Set(from_stack_1v)
  loc_9FEABC: FFree1Ad var_88
  loc_9FEABF: LitVar_Missing var_A8
  loc_9FEAC2: PopAdLdVar
  loc_9FEAC3: LitVarI4
  loc_9FEACB: PopAdLdVar
  loc_9FEACC: ImpAdLdRf MemVar_C3D7D8
  loc_9FEACF: NewIfNullPr bscUnidadGasto
  loc_9FEAD2: bscUnidadGasto.Show from_stack_1, from_stack_2
  loc_9FEAD7: FLdRfVar var_AC
  loc_9FEADA: FLdRfVar var_88
  loc_9FEADD: ImpAdLdRf MemVar_C3D7D8
  loc_9FEAE0: NewIfNullPr bscUnidadGasto
  loc_9FEAE3: from_stack_1v = bscUnidadGasto.global_4338300Get()
  loc_9FEAE8: FLdPr var_88
  loc_9FEAEB: from_stack_1 = clsbase.RecordCount
  loc_9FEAF0: ILdRf var_AC
  loc_9FEAF3: LitI4 0
  loc_9FEAF8: GtI4
  loc_9FEAF9: FFree1Ad var_88
  loc_9FEAFC: BranchF loc_9FEBD7
  loc_9FEAFF: FLdRfVar var_C8
  loc_9FEB02: FLdRfVar var_B8
  loc_9FEB05: LitVarStr var_98, "CodiUnga"
  loc_9FEB0A: PopAdLdVar
  loc_9FEB0B: FLdRfVar var_B4
  loc_9FEB0E: FLdRfVar var_B0
  loc_9FEB11: FLdRfVar var_88
  loc_9FEB14: ImpAdLdRf MemVar_C3D7D8
  loc_9FEB17: NewIfNullPr bscUnidadGasto
  loc_9FEB1A: from_stack_1v = bscUnidadGasto.global_4338300Get()
  loc_9FEB1F: FLdPr var_88
  loc_9FEB22: from_stack_1v = clsbase.RsFrmGet()
  loc_9FEB27: FLdPr var_B0
  loc_9FEB2A:  = Me.Fields
  loc_9FEB2F: FLdPr var_B4
  loc_9FEB32: from_stack_2 = Me.Item(from_stack_1)
  loc_9FEB37: FLdPr var_B8
  loc_9FEB3A:  = Me.Value
  loc_9FEB3F: FLdRfVar var_C8
  loc_9FEB42: CStrVarTmp
  loc_9FEB43: CVarStr var_D8
  loc_9FEB46: PopAdLdVar
  loc_9FEB47: FLdPr Me
  loc_9FEB4A: VCallAd Control_ID_CodiUngaMsk
  loc_9FEB4D: FStAdFunc var_DC
  loc_9FEB50: FLdPr var_DC
  loc_9FEB53: LateIdSt
  loc_9FEB58: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9FEB65: FFreeVar var_C8 = ""
  loc_9FEB6C: FLdRfVar var_C8
  loc_9FEB6F: FLdRfVar var_B8
  loc_9FEB72: LitVarStr var_98, "DetaUnga"
  loc_9FEB77: PopAdLdVar
  loc_9FEB78: FLdRfVar var_B4
  loc_9FEB7B: FLdRfVar var_B0
  loc_9FEB7E: FLdRfVar var_88
  loc_9FEB81: ImpAdLdRf MemVar_C3D7D8
  loc_9FEB84: NewIfNullPr bscUnidadGasto
  loc_9FEB87: from_stack_1v = bscUnidadGasto.global_4338300Get()
  loc_9FEB8C: FLdPr var_88
  loc_9FEB8F: from_stack_1v = clsbase.RsFrmGet()
  loc_9FEB94: FLdPr var_B0
  loc_9FEB97:  = Me.Fields
  loc_9FEB9C: FLdPr var_B4
  loc_9FEB9F: from_stack_2 = Me.Item(from_stack_1)
  loc_9FEBA4: FLdPr var_B8
  loc_9FEBA7:  = Me.Value
  loc_9FEBAC: FLdRfVar var_C8
  loc_9FEBAF: CStrVarTmp
  loc_9FEBB0: FStStrNoPop var_E0
  loc_9FEBB3: FLdPr Me
  loc_9FEBB6: VCallAd Control_ID_DetaUngaLbl
  loc_9FEBB9: FStAdFunc var_DC
  loc_9FEBBC: FLdPr var_DC
  loc_9FEBBF: Me.Caption = from_stack_1
  loc_9FEBC4: FFree1Str var_E0
  loc_9FEBC7: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9FEBD4: FFree1Var var_C8 = ""
  loc_9FEBD7: ImpAdCallFPR4 Proc_261_52_966EEC()
  loc_9FEBDC: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '9628D8
  'Data Table: 4CC8C0
  loc_9628C0: LitI2_Byte 0
  loc_9628C2: ILdRf Me
  loc_9628C5: CastAd
  loc_9628C8: FStAdFunc var_88
  loc_9628CB: FLdRfVar var_88
  loc_9628CE: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_9628D3: FFree1Ad var_88
  loc_9628D6: ExitProcHresult
End Sub

Private Sub cmdCodiFifu_Click() '9F5C48
  'Data Table: 4CC8C0
  loc_9F5B18: LitNothing
  loc_9F5B1A: CastAd
  loc_9F5B1D: FStAdFuncNoPop
  loc_9F5B20: ImpAdLdRf MemVar_C3D6E8
  loc_9F5B23: NewIfNullPr bscFinalidad
  loc_9F5B26: Call bscFinalidad.global_4320824Set(from_stack_1v)
  loc_9F5B2B: FFree1Ad var_88
  loc_9F5B2E: LitVar_Missing var_A8
  loc_9F5B31: PopAdLdVar
  loc_9F5B32: LitVarI4
  loc_9F5B3A: PopAdLdVar
  loc_9F5B3B: ImpAdLdRf MemVar_C3D6E8
  loc_9F5B3E: NewIfNullPr bscFinalidad
  loc_9F5B41: bscFinalidad.Show from_stack_1, from_stack_2
  loc_9F5B46: FLdRfVar var_AC
  loc_9F5B49: FLdRfVar var_88
  loc_9F5B4C: ImpAdLdRf MemVar_C3D6E8
  loc_9F5B4F: NewIfNullPr bscFinalidad
  loc_9F5B52: from_stack_1v = bscFinalidad.global_4320824Get()
  loc_9F5B57: FLdPr var_88
  loc_9F5B5A: from_stack_1 = clsbase.RecordCount
  loc_9F5B5F: ILdRf var_AC
  loc_9F5B62: LitI4 0
  loc_9F5B67: GtI4
  loc_9F5B68: FFree1Ad var_88
  loc_9F5B6B: BranchF loc_9F5C46
  loc_9F5B6E: FLdRfVar var_C8
  loc_9F5B71: FLdRfVar var_B8
  loc_9F5B74: LitVarStr var_98, "CodiFifu"
  loc_9F5B79: PopAdLdVar
  loc_9F5B7A: FLdRfVar var_B4
  loc_9F5B7D: FLdRfVar var_B0
  loc_9F5B80: FLdRfVar var_88
  loc_9F5B83: ImpAdLdRf MemVar_C3D6E8
  loc_9F5B86: NewIfNullPr bscFinalidad
  loc_9F5B89: from_stack_1v = bscFinalidad.global_4320824Get()
  loc_9F5B8E: FLdPr var_88
  loc_9F5B91: from_stack_1v = clsbase.RsFrmGet()
  loc_9F5B96: FLdPr var_B0
  loc_9F5B99:  = Me.Fields
  loc_9F5B9E: FLdPr var_B4
  loc_9F5BA1: from_stack_2 = Me.Item(from_stack_1)
  loc_9F5BA6: FLdPr var_B8
  loc_9F5BA9:  = Me.Value
  loc_9F5BAE: FLdRfVar var_C8
  loc_9F5BB1: CStrVarTmp
  loc_9F5BB2: CVarStr var_D8
  loc_9F5BB5: PopAdLdVar
  loc_9F5BB6: FLdPr Me
  loc_9F5BB9: VCallAd Control_ID_CodiFifuMsk
  loc_9F5BBC: FStAdFunc var_DC
  loc_9F5BBF: FLdPr var_DC
  loc_9F5BC2: LateIdSt
  loc_9F5BC7: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9F5BD4: FFreeVar var_C8 = ""
  loc_9F5BDB: FLdRfVar var_C8
  loc_9F5BDE: FLdRfVar var_B8
  loc_9F5BE1: LitVarStr var_98, "DetaFifu"
  loc_9F5BE6: PopAdLdVar
  loc_9F5BE7: FLdRfVar var_B4
  loc_9F5BEA: FLdRfVar var_B0
  loc_9F5BED: FLdRfVar var_88
  loc_9F5BF0: ImpAdLdRf MemVar_C3D6E8
  loc_9F5BF3: NewIfNullPr bscFinalidad
  loc_9F5BF6: from_stack_1v = bscFinalidad.global_4320824Get()
  loc_9F5BFB: FLdPr var_88
  loc_9F5BFE: from_stack_1v = clsbase.RsFrmGet()
  loc_9F5C03: FLdPr var_B0
  loc_9F5C06:  = Me.Fields
  loc_9F5C0B: FLdPr var_B4
  loc_9F5C0E: from_stack_2 = Me.Item(from_stack_1)
  loc_9F5C13: FLdPr var_B8
  loc_9F5C16:  = Me.Value
  loc_9F5C1B: FLdRfVar var_C8
  loc_9F5C1E: CStrVarTmp
  loc_9F5C1F: FStStrNoPop var_E0
  loc_9F5C22: FLdPr Me
  loc_9F5C25: VCallAd Control_ID_CodiFifuLbl
  loc_9F5C28: FStAdFunc var_DC
  loc_9F5C2B: FLdPr var_DC
  loc_9F5C2E: Me.Caption = from_stack_1
  loc_9F5C33: FFree1Str var_E0
  loc_9F5C36: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9F5C43: FFree1Var var_C8 = ""
  loc_9F5C46: ExitProcHresult
End Sub

Private Sub cmdCodiOrga_Click() '9F92F8
  'Data Table: 4CC8C0
  loc_9F91BC: LitI2_Byte &HFF
  loc_9F91BE: ImpAdLdRf MemVar_C3D710
  loc_9F91C1: NewIfNullPr bscOrganigrama
  loc_9F91C4: Call bscOrganigrama.MuestroAnuladosPut(from_stack_1v)
  loc_9F91C9: LitNothing
  loc_9F91CB: CastAd
  loc_9F91CE: FStAdFuncNoPop
  loc_9F91D1: ImpAdLdRf MemVar_C3D710
  loc_9F91D4: NewIfNullPr bscOrganigrama
  loc_9F91D7: Call bscOrganigrama.global_4318932Set(from_stack_1v)
  loc_9F91DC: FFree1Ad var_88
  loc_9F91DF: LitVar_Missing var_A8
  loc_9F91E2: PopAdLdVar
  loc_9F91E3: LitVarI4
  loc_9F91EB: PopAdLdVar
  loc_9F91EC: ImpAdLdRf MemVar_C3D710
  loc_9F91EF: NewIfNullPr bscOrganigrama
  loc_9F91F2: bscOrganigrama.Show from_stack_1, from_stack_2
  loc_9F91F7: FLdRfVar var_AC
  loc_9F91FA: FLdRfVar var_88
  loc_9F91FD: ImpAdLdRf MemVar_C3D710
  loc_9F9200: NewIfNullPr bscOrganigrama
  loc_9F9203: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_9F9208: FLdPr var_88
  loc_9F920B: from_stack_1 = clsbase.RecordCount
  loc_9F9210: ILdRf var_AC
  loc_9F9213: LitI4 0
  loc_9F9218: GtI4
  loc_9F9219: FFree1Ad var_88
  loc_9F921C: BranchF loc_9F92F7
  loc_9F921F: FLdRfVar var_C8
  loc_9F9222: FLdRfVar var_B8
  loc_9F9225: LitVarStr var_98, "CodiOrga"
  loc_9F922A: PopAdLdVar
  loc_9F922B: FLdRfVar var_B4
  loc_9F922E: FLdRfVar var_B0
  loc_9F9231: FLdRfVar var_88
  loc_9F9234: ImpAdLdRf MemVar_C3D710
  loc_9F9237: NewIfNullPr bscOrganigrama
  loc_9F923A: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_9F923F: FLdPr var_88
  loc_9F9242: from_stack_1v = clsbase.RsFrmGet()
  loc_9F9247: FLdPr var_B0
  loc_9F924A:  = Me.Fields
  loc_9F924F: FLdPr var_B4
  loc_9F9252: from_stack_2 = Me.Item(from_stack_1)
  loc_9F9257: FLdPr var_B8
  loc_9F925A:  = Me.Value
  loc_9F925F: FLdRfVar var_C8
  loc_9F9262: CStrVarTmp
  loc_9F9263: CVarStr var_D8
  loc_9F9266: PopAdLdVar
  loc_9F9267: FLdPr Me
  loc_9F926A: VCallAd Control_ID_CodiOrgaMsk
  loc_9F926D: FStAdFunc var_DC
  loc_9F9270: FLdPr var_DC
  loc_9F9273: LateIdSt
  loc_9F9278: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9F9285: FFreeVar var_C8 = ""
  loc_9F928C: FLdRfVar var_C8
  loc_9F928F: FLdRfVar var_B8
  loc_9F9292: LitVarStr var_98, "DetaOrga"
  loc_9F9297: PopAdLdVar
  loc_9F9298: FLdRfVar var_B4
  loc_9F929B: FLdRfVar var_B0
  loc_9F929E: FLdRfVar var_88
  loc_9F92A1: ImpAdLdRf MemVar_C3D710
  loc_9F92A4: NewIfNullPr bscOrganigrama
  loc_9F92A7: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_9F92AC: FLdPr var_88
  loc_9F92AF: from_stack_1v = clsbase.RsFrmGet()
  loc_9F92B4: FLdPr var_B0
  loc_9F92B7:  = Me.Fields
  loc_9F92BC: FLdPr var_B4
  loc_9F92BF: from_stack_2 = Me.Item(from_stack_1)
  loc_9F92C4: FLdPr var_B8
  loc_9F92C7:  = Me.Value
  loc_9F92CC: FLdRfVar var_C8
  loc_9F92CF: CStrVarTmp
  loc_9F92D0: FStStrNoPop var_E0
  loc_9F92D3: FLdPr Me
  loc_9F92D6: VCallAd Control_ID_CodiOrgaLbl
  loc_9F92D9: FStAdFunc var_DC
  loc_9F92DC: FLdPr var_DC
  loc_9F92DF: Me.Caption = from_stack_1
  loc_9F92E4: FFree1Str var_E0
  loc_9F92E7: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9F92F4: FFree1Var var_C8 = ""
  loc_9F92F7: ExitProcHresult
End Sub

Private Sub CodiPartMsk_UnknownEvent_0 '94E180
  'Data Table: 4CC8C0
  loc_94E16C: FLdPr Me
  loc_94E16F: VCallAd Control_ID_CodiPartMsk
  loc_94E172: CVarAd
  loc_94E176: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94E17B: FFree1Var var_94 = ""
  loc_94E17E: ExitProcHresult
End Sub

Private Sub CodiPartMsk_UnknownEvent_8 'A0FFF8
  'Data Table: 4CC8C0
  loc_A0FEA0: LitStr "SELECT DetaPart FROM partida WHERE PeriInfo = "
  loc_A0FEA3: FLdRfVar var_8C
  loc_A0FEA6: FLdPr Me
  loc_A0FEA9: VCallAd Control_ID_cboPeriodo
  loc_A0FEAC: FStAdFunc var_88
  loc_A0FEAF: FLdPr var_88
  loc_A0FEB2:  = Me.Text
  loc_A0FEB7: ILdRf var_8C
  loc_A0FEBA: ConcatStr
  loc_A0FEBB: FStStrNoPop var_90
  loc_A0FEBE: LitStr " AND CodiPart LIKE '"
  loc_A0FEC1: ConcatStr
  loc_A0FEC2: FStStrNoPop var_A8
  loc_A0FEC5: FLdPr Me
  loc_A0FEC8: VCallAd Control_ID_CodiPartMsk
  loc_A0FECB: FStAdFunc var_94
  loc_A0FECE: FLdPr var_94
  loc_A0FED1: LateIdLdVar var_A4 DispID_22 0
  loc_A0FED8: CStrVarTmp
  loc_A0FED9: FStStrNoPop var_AC
  loc_A0FEDC: ConcatStr
  loc_A0FEDD: FStStrNoPop var_B0
  loc_A0FEE0: LitStr Chr(37) & "'"
  loc_A0FEE3: ConcatStr
  loc_A0FEE4: FStStrNoPop var_B4
  loc_A0FEE7: FLdPr Me
  loc_A0FEEA: MemLdRfVar from_stack_1.global_64
  loc_A0FEED: NewIfNullPr clspartida
  loc_A0FEF0: Call clspartida.RedefineRS(from_stack_1v)
  loc_A0FEF5: FFreeStr var_8C = "": var_90 = "": var_A8 = "": var_AC = "": var_B0 = ""
  loc_A0FF04: FFreeAd var_88 = ""
  loc_A0FF0B: FFree1Var var_A4 = ""
  loc_A0FF0E: FLdRfVar var_B8
  loc_A0FF11: FLdPr Me
  loc_A0FF14: MemLdRfVar from_stack_1.global_64
  loc_A0FF17: NewIfNullPr clspartida
  loc_A0FF1A: from_stack_1 = clspartida.RecordCount
  loc_A0FF1F: ILdRf var_B8
  loc_A0FF22: FStR4 var_BC
  loc_A0FF25: ILdRf var_BC
  loc_A0FF28: LitI4 0
  loc_A0FF2D: EqI4
  loc_A0FF2E: BranchF loc_A0FF4B
  loc_A0FF31: LitStr "0 registros encontrados"
  loc_A0FF34: FLdPr Me
  loc_A0FF37: VCallAd Control_ID_CodiPartLbl
  loc_A0FF3A: FStAdFunc var_88
  loc_A0FF3D: FLdPr var_88
  loc_A0FF40: Me.Caption = from_stack_1
  loc_A0FF45: FFree1Ad var_88
  loc_A0FF48: Branch loc_A0FFF6
  loc_A0FF4B: ILdRf var_BC
  loc_A0FF4E: LitI4 1
  loc_A0FF53: EqI4
  loc_A0FF54: BranchF loc_A0FFBB
  loc_A0FF57: FLdRfVar var_A4
  loc_A0FF5A: FLdRfVar var_D0
  loc_A0FF5D: LitVarStr var_CC, "DetaPart"
  loc_A0FF62: PopAdLdVar
  loc_A0FF63: FLdRfVar var_94
  loc_A0FF66: FLdRfVar var_88
  loc_A0FF69: FLdPr Me
  loc_A0FF6C: MemLdRfVar from_stack_1.global_64
  loc_A0FF6F: NewIfNullPr clspartida
  loc_A0FF72: from_stack_1v = clspartida.RsFrmGet()
  loc_A0FF77: FLdPr var_88
  loc_A0FF7A:  = Me.Fields
  loc_A0FF7F: FLdPr var_94
  loc_A0FF82: from_stack_2 = Me.Item(from_stack_1)
  loc_A0FF87: FLdPr var_D0
  loc_A0FF8A:  = Me.Value
  loc_A0FF8F: FLdRfVar var_A4
  loc_A0FF92: CStrVarTmp
  loc_A0FF93: FStStrNoPop var_8C
  loc_A0FF96: FLdPr Me
  loc_A0FF99: VCallAd Control_ID_CodiPartLbl
  loc_A0FF9C: FStAdFunc var_D4
  loc_A0FF9F: FLdPr var_D4
  loc_A0FFA2: Me.Caption = from_stack_1
  loc_A0FFA7: FFree1Str var_8C
  loc_A0FFAA: FFreeAd var_88 = "": var_94 = "": var_D0 = ""
  loc_A0FFB5: FFree1Var var_A4 = ""
  loc_A0FFB8: Branch loc_A0FFF6
  loc_A0FFBB: FLdRfVar var_B8
  loc_A0FFBE: FLdPr Me
  loc_A0FFC1: MemLdRfVar from_stack_1.global_64
  loc_A0FFC4: NewIfNullPr clspartida
  loc_A0FFC7: from_stack_1 = clspartida.RecordCount
  loc_A0FFCC: ILdRf var_B8
  loc_A0FFCF: CStrI4
  loc_A0FFD1: FStStrNoPop var_8C
  loc_A0FFD4: LitStr " partidas encontradas"
  loc_A0FFD7: ConcatStr
  loc_A0FFD8: FStStrNoPop var_90
  loc_A0FFDB: FLdPr Me
  loc_A0FFDE: VCallAd Control_ID_CodiPartLbl
  loc_A0FFE1: FStAdFunc var_88
  loc_A0FFE4: FLdPr var_88
  loc_A0FFE7: Me.Caption = from_stack_1
  loc_A0FFEC: FFreeStr var_8C = ""
  loc_A0FFF3: FFree1Ad var_88
  loc_A0FFF6: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() '9797A4
  'Data Table: 4CC8C0
  loc_979774: LitVarStr var_94, "Cerrando..."
  loc_979779: PopAdLdVar
  loc_97977A: FLdPr Me
  loc_97977D: VCallAd Control_ID_statusBar
  loc_979780: FStAdFunc var_A8
  loc_979783: FLdPr var_A8
  loc_979786: LateIdSt
  loc_97978B: FFree1Ad var_A8
  loc_97978E: ILdRf Me
  loc_979791: FStAdNoPop
  loc_979795: ImpAdLdRf MemVar_C44F9C
  loc_979798: NewIfNullPr Me
  loc_97979B: Me.Global.Unload from_stack_1
  loc_9797A0: FFree1Ad var_A8
  loc_9797A3: ExitProcHresult
End Sub

Private Sub cmdCalDesde_Click() '97DA80
  'Data Table: 4CC8C0
  loc_97DA4C: LitVar_Missing var_A4
  loc_97DA4F: PopAdLdVar
  loc_97DA50: LitVarI4
  loc_97DA58: PopAdLdVar
  loc_97DA59: ImpAdLdRf MemVar_C3D9A8
  loc_97DA5C: NewIfNullPr frmCalendario
  loc_97DA5F: frmCalendario.Show from_stack_1, from_stack_2
  loc_97DA64: ImpAdLdRf MemVar_C3D038
  loc_97DA67: CDargRef
  loc_97DA6B: FLdPr Me
  loc_97DA6E: VCallAd Control_ID_mskDesde
  loc_97DA71: FStAdFunc var_A8
  loc_97DA74: FLdPr var_A8
  loc_97DA77: LateIdSt
  loc_97DA7C: FFree1Ad var_A8
  loc_97DA7F: ExitProcHresult
End Sub

Private Sub cmdCalHasta_Click() '97DAE8
  'Data Table: 4CC8C0
  loc_97DAB4: LitVar_Missing var_A4
  loc_97DAB7: PopAdLdVar
  loc_97DAB8: LitVarI4
  loc_97DAC0: PopAdLdVar
  loc_97DAC1: ImpAdLdRf MemVar_C3D9A8
  loc_97DAC4: NewIfNullPr frmCalendario
  loc_97DAC7: frmCalendario.Show from_stack_1, from_stack_2
  loc_97DACC: ImpAdLdRf MemVar_C3D038
  loc_97DACF: CDargRef
  loc_97DAD3: FLdPr Me
  loc_97DAD6: VCallAd Control_ID_mskHasta
  loc_97DAD9: FStAdFunc var_A8
  loc_97DADC: FLdPr var_A8
  loc_97DADF: LateIdSt
  loc_97DAE4: FFree1Ad var_A8
  loc_97DAE7: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '98BF6C
  'Data Table: 4CC8C0
  loc_98BF34: FLdPr Me
  loc_98BF37: VCallAd Control_ID_statusBar
  loc_98BF3A: FStAdFunc var_88
  loc_98BF3D: FLdPr var_88
  loc_98BF40: LateIdLdVar var_98 DispID_1 0
  loc_98BF47: CStrVarTmp
  loc_98BF48: CVarStr var_A8
  loc_98BF4B: PopAdLdVar
  loc_98BF4C: FLdPr Me
  loc_98BF4F: VCallAd Control_ID_statusBar
  loc_98BF52: FStAdFunc var_BC
  loc_98BF55: FLdPr var_BC
  loc_98BF58: LateIdSt
  loc_98BF5D: FFreeAd var_88 = ""
  loc_98BF64: FFreeVar var_98 = ""
  loc_98BF6B: ExitProcHresult
End Sub

Private Sub mskDesde_UnknownEvent_0 '94E0F0
  'Data Table: 4CC8C0
  loc_94E0DC: FLdPr Me
  loc_94E0DF: VCallAd Control_ID_mskDesde
  loc_94E0E2: CVarAd
  loc_94E0E6: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94E0EB: FFree1Var var_94 = ""
  loc_94E0EE: ExitProcHresult
End Sub

Private Sub mskDesde_UnknownEvent_8 '9CD968
  'Data Table: 4CC8C0
  loc_9CD89C: FLdPr Me
  loc_9CD89F: VCallAd Control_ID_mskDesde
  loc_9CD8A2: FStAdFunc var_88
  loc_9CD8A5: FLdPr var_88
  loc_9CD8A8: LateIdLdVar var_98 DispID_15 0
  loc_9CD8AF: PopAd
  loc_9CD8B1: FLdRfVar var_A0
  loc_9CD8B4: FLdPr Me
  loc_9CD8B7: VCallAd Control_ID_cboPeriodo
  loc_9CD8BA: FStAdFunc var_9C
  loc_9CD8BD: FLdPr var_9C
  loc_9CD8C0:  = Me.Text
  loc_9CD8C5: LitI2_Byte 1
  loc_9CD8C7: LitI2_Byte 1
  loc_9CD8C9: ILdRf var_A0
  loc_9CD8CC: CI2Str
  loc_9CD8CE: FLdRfVar var_B0
  loc_9CD8D1: ImpAdCallFPR4  = DateSerial(, , )
  loc_9CD8D6: FLdPr Me
  loc_9CD8D9: VCallAd Control_ID_mskDesde
  loc_9CD8DC: FStAdFunc var_C8
  loc_9CD8DF: LitI2_Byte &HFF
  loc_9CD8E1: PopTmpLdAd2 var_BE
  loc_9CD8E4: FLdZeroAd var_C8
  loc_9CD8E7: FStAdFunc var_BC
  loc_9CD8EA: FLdRfVar var_BC
  loc_9CD8ED: FLdRfVar var_B0
  loc_9CD8F0: CStrVarVal var_B8
  loc_9CD8F4: LitI2_Byte 0
  loc_9CD8F6: LitI2_Byte 0
  loc_9CD8F8: FLdRfVar var_98
  loc_9CD8FB: CStrVarTmp
  loc_9CD8FC: FStStrNoPop var_B4
  loc_9CD8FF: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9CD904: FStStrNoPop var_C4
  loc_9CD907: FLdPr Me
  loc_9CD90A: MemStStrCopy
  loc_9CD90E: FFreeStr var_A0 = "": var_B4 = "": var_B8 = ""
  loc_9CD919: FFreeAd var_88 = "": var_9C = "": var_BC = ""
  loc_9CD924: FFreeVar var_98 = ""
  loc_9CD92B: FLdPr Me
  loc_9CD92E: VCallAd Control_ID_mskDesde
  loc_9CD931: FStAdFunc var_C8
  loc_9CD934: LitNothing
  loc_9CD936: CastAd
  loc_9CD939: FStAdFunc var_BC
  loc_9CD93C: FLdRfVar var_BC
  loc_9CD93F: FLdZeroAd var_C8
  loc_9CD942: FStAdFuncNoPop
  loc_9CD945: CastAd
  loc_9CD948: FStAdFunc var_9C
  loc_9CD94B: FLdRfVar var_9C
  loc_9CD94E: FLdPr Me
  loc_9CD951: MemLdRfVar from_stack_1.global_128
  loc_9CD954: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9CD959: IStI2 Button
  loc_9CD95C: FFreeAd var_88 = "": var_9C = "": var_BC = ""
  loc_9CD967: ExitProcHresult
End Sub

Private Sub mskHasta_UnknownEvent_0 '9537D8
  'Data Table: 4CC8C0
  loc_9537C4: FLdPr Me
  loc_9537C7: VCallAd Control_ID_mskHasta
  loc_9537CA: CVarAd
  loc_9537CE: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_9537D3: FFree1Var var_94 = ""
  loc_9537D6: ExitProcHresult
End Sub

Private Sub mskHasta_UnknownEvent_8 '9C5200
  'Data Table: 4CC8C0
  loc_9C5144: FLdPr Me
  loc_9C5147: VCallAd Control_ID_mskHasta
  loc_9C514A: FStAdFunc var_88
  loc_9C514D: FLdPr var_88
  loc_9C5150: LateIdLdVar var_98 DispID_15 0
  loc_9C5157: PopAd
  loc_9C5159: FLdPr Me
  loc_9C515C: VCallAd Control_ID_mskDesde
  loc_9C515F: FStAdFunc var_9C
  loc_9C5162: FLdPr var_9C
  loc_9C5165: LateIdLdVar var_AC DispID_15 0
  loc_9C516C: PopAd
  loc_9C516E: FLdPr Me
  loc_9C5171: VCallAd Control_ID_mskHasta
  loc_9C5174: FStAdFunc var_C4
  loc_9C5177: LitI2_Byte &HFF
  loc_9C5179: PopTmpLdAd2 var_BA
  loc_9C517C: FLdZeroAd var_C4
  loc_9C517F: FStAdFunc var_B8
  loc_9C5182: FLdRfVar var_B8
  loc_9C5185: FLdRfVar var_AC
  loc_9C5188: CStrVarTmp
  loc_9C5189: FStStrNoPop var_B4
  loc_9C518C: LitI2_Byte 0
  loc_9C518E: LitI2_Byte 0
  loc_9C5190: FLdRfVar var_98
  loc_9C5193: CStrVarTmp
  loc_9C5194: FStStrNoPop var_B0
  loc_9C5197: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9C519C: FStStrNoPop var_C0
  loc_9C519F: FLdPr Me
  loc_9C51A2: MemStStrCopy
  loc_9C51A6: FFreeStr var_B0 = "": var_B4 = ""
  loc_9C51AF: FFreeAd var_88 = "": var_9C = "": var_B8 = ""
  loc_9C51BA: FFreeVar var_98 = ""
  loc_9C51C1: FLdPr Me
  loc_9C51C4: VCallAd Control_ID_mskHasta
  loc_9C51C7: FStAdFunc var_C4
  loc_9C51CA: LitNothing
  loc_9C51CC: CastAd
  loc_9C51CF: FStAdFunc var_B8
  loc_9C51D2: FLdRfVar var_B8
  loc_9C51D5: FLdZeroAd var_C4
  loc_9C51D8: FStAdFuncNoPop
  loc_9C51DB: CastAd
  loc_9C51DE: FStAdFunc var_9C
  loc_9C51E1: FLdRfVar var_9C
  loc_9C51E4: FLdPr Me
  loc_9C51E7: MemLdRfVar from_stack_1.global_128
  loc_9C51EA: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9C51EF: IStI2 Button
  loc_9C51F2: FFreeAd var_88 = "": var_9C = "": var_B8 = ""
  loc_9C51FD: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '9629BC
  'Data Table: 4CC8C0
  loc_9629A4: ILdRf Me
  loc_9629A7: CastAd
  loc_9629AA: FStAdFunc var_88
  loc_9629AD: FLdRfVar var_88
  loc_9629B0: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_9629B5: FFree1Ad var_88
  loc_9629B8: ExitProcHresult
End Sub

Private Sub Form_Load() '9F4ED0
  'Data Table: 4CC8C0
  loc_9F4D98: LitVarStr var_94, "######"
  loc_9F4D9D: PopAdLdVar
  loc_9F4D9E: FLdPr Me
  loc_9F4DA1: VCallAd Control_ID_CodiOrgaMsk
  loc_9F4DA4: FStAdFunc var_A8
  loc_9F4DA7: FLdPr var_A8
  loc_9F4DAA: LateIdSt
  loc_9F4DAF: FFree1Ad var_A8
  loc_9F4DB2: LitVarStr var_94, "#.#.#.#.##.##"
  loc_9F4DB7: PopAdLdVar
  loc_9F4DB8: FLdPr Me
  loc_9F4DBB: VCallAd Control_ID_CodiPartMsk
  loc_9F4DBE: FStAdFunc var_A8
  loc_9F4DC1: FLdPr var_A8
  loc_9F4DC4: LateIdSt
  loc_9F4DC9: FFree1Ad var_A8
  loc_9F4DCC: LitVarStr var_94, "##.##.##"
  loc_9F4DD1: PopAdLdVar
  loc_9F4DD2: FLdPr Me
  loc_9F4DD5: VCallAd Control_ID_CodiFifuMsk
  loc_9F4DD8: FStAdFunc var_A8
  loc_9F4DDB: FLdPr var_A8
  loc_9F4DDE: LateIdSt
  loc_9F4DE3: FFree1Ad var_A8
  loc_9F4DE6: LitI2_Byte &HFF
  loc_9F4DE8: ImpAdStI2 MemVar_C3D840
  loc_9F4DEB: ILdRf Me
  loc_9F4DEE: CastAd
  loc_9F4DF1: FStAdFunc var_A8
  loc_9F4DF4: FLdRfVar var_A8
  loc_9F4DF7: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_9F4DFC: FFree1Ad var_A8
  loc_9F4DFF: LitStr "SELECT * FROM infogov.periodo ORDER BY PeriInfo"
  loc_9F4E02: FLdPr Me
  loc_9F4E05: MemLdRfVar from_stack_1.global_56
  loc_9F4E08: NewIfNullPr clsperiodo
  loc_9F4E0B: Call clsperiodo.RedefineRS(from_stack_1v)
  loc_9F4E10: FLdRfVar var_AC
  loc_9F4E13: FLdPr Me
  loc_9F4E16: MemLdRfVar from_stack_1.global_56
  loc_9F4E19: NewIfNullPr clsperiodo
  loc_9F4E1C: from_stack_1 = clsperiodo.RecordCount
  loc_9F4E21: ILdRf var_AC
  loc_9F4E24: LitI4 0
  loc_9F4E29: GtI4
  loc_9F4E2A: BranchF loc_9F4EC9
  loc_9F4E2D: FLdPr Me
  loc_9F4E30: MemLdRfVar from_stack_1.global_56
  loc_9F4E33: NewIfNullPr clsperiodo
  loc_9F4E36: Call clsperiodo.MoveFirst()
  loc_9F4E3B: FLdRfVar var_AE
  loc_9F4E3E: FLdPr Me
  loc_9F4E41: MemLdRfVar from_stack_1.global_56
  loc_9F4E44: NewIfNullPr clsperiodo
  loc_9F4E47: from_stack_1 = clsperiodo.EOF
  loc_9F4E4C: FLdI2 var_AE
  loc_9F4E4F: NotI4
  loc_9F4E50: BranchF loc_9F4EC9
  loc_9F4E53: LitVar_Missing var_A4
  loc_9F4E56: PopAdLdVar
  loc_9F4E57: FLdRfVar var_C8
  loc_9F4E5A: FLdRfVar var_B8
  loc_9F4E5D: LitVarStr var_94, "PeriInfo"
  loc_9F4E62: PopAdLdVar
  loc_9F4E63: FLdRfVar var_B4
  loc_9F4E66: FLdRfVar var_A8
  loc_9F4E69: FLdPr Me
  loc_9F4E6C: MemLdRfVar from_stack_1.global_56
  loc_9F4E6F: NewIfNullPr clsperiodo
  loc_9F4E72: from_stack_1v = clsperiodo.RsFrmGet()
  loc_9F4E77: FLdPr var_A8
  loc_9F4E7A:  = Me.Fields
  loc_9F4E7F: FLdPr var_B4
  loc_9F4E82: from_stack_2 = Me.Item(from_stack_1)
  loc_9F4E87: FLdPr var_B8
  loc_9F4E8A:  = Me.Value
  loc_9F4E8F: FLdRfVar var_C8
  loc_9F4E92: CStrVarTmp
  loc_9F4E93: FStStrNoPop var_CC
  loc_9F4E96: FLdPr Me
  loc_9F4E99: VCallAd Control_ID_cboPeriodo
  loc_9F4E9C: FStAdFunc var_D0
  loc_9F4E9F: FLdPr var_D0
  loc_9F4EA2: Me.AddItem from_stack_1, from_stack_2
  loc_9F4EA7: FFree1Str var_CC
  loc_9F4EAA: FFreeAd var_A8 = "": var_B4 = "": var_B8 = ""
  loc_9F4EB5: FFree1Var var_C8 = ""
  loc_9F4EB8: FLdPr Me
  loc_9F4EBB: MemLdRfVar from_stack_1.global_56
  loc_9F4EBE: NewIfNullPr clsperiodo
  loc_9F4EC1: Call clsperiodo.MoveSiguiente()
  loc_9F4EC6: Branch loc_9F4E3B
  loc_9F4EC9: Call cmdNueva_Click()
  loc_9F4ECE: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9627A8
  'Data Table: 4CC8C0
  loc_962790: FLdPr Me
  loc_962793: VCallAd Control_ID_wbbReporte
  loc_962796: FStAdFunc var_88
  loc_962799: FLdRfVar var_88
  loc_96279C: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_9627A1: FFree1Ad var_88
  loc_9627A4: ExitProcHresult
End Sub

Private Sub cboPeriodo_Click() '9D3A40
  'Data Table: 4CC8C0
  loc_9D3958: FLdRfVar var_8C
  loc_9D395B: FLdPr Me
  loc_9D395E: VCallAd Control_ID_cboPeriodo
  loc_9D3961: FStAdFunc var_88
  loc_9D3964: FLdPr var_88
  loc_9D3967:  = Me.Text
  loc_9D396C: LitI2_Byte 1
  loc_9D396E: LitI2_Byte 1
  loc_9D3970: ILdRf var_8C
  loc_9D3973: CI2Str
  loc_9D3975: FLdRfVar var_9C
  loc_9D3978: ImpAdCallFPR4  = DateSerial(, , )
  loc_9D397D: FLdRfVar var_9C
  loc_9D3980: CStrVarTmp
  loc_9D3981: CVarStr var_AC
  loc_9D3984: PopAdLdVar
  loc_9D3985: FLdPr Me
  loc_9D3988: VCallAd Control_ID_mskDesde
  loc_9D398B: FStAdFunc var_C0
  loc_9D398E: FLdPr var_C0
  loc_9D3991: LateIdSt
  loc_9D3996: FFree1Str var_8C
  loc_9D3999: FFreeAd var_88 = ""
  loc_9D39A0: FFreeVar var_9C = ""
  loc_9D39A7: FLdRfVar var_8C
  loc_9D39AA: FLdPr Me
  loc_9D39AD: VCallAd Control_ID_cboPeriodo
  loc_9D39B0: FStAdFunc var_88
  loc_9D39B3: FLdPr var_88
  loc_9D39B6:  = Me.Text
  loc_9D39BB: ILdRf var_8C
  loc_9D39BE: CI2Str
  loc_9D39C0: ImpAdLdI2 MemVar_C3D064
  loc_9D39C3: LtI2
  loc_9D39C4: FFree1Str var_8C
  loc_9D39C7: FFree1Ad var_88
  loc_9D39CA: BranchF loc_9D3A1F
  loc_9D39CD: FLdRfVar var_8C
  loc_9D39D0: FLdPr Me
  loc_9D39D3: VCallAd Control_ID_cboPeriodo
  loc_9D39D6: FStAdFunc var_88
  loc_9D39D9: FLdPr var_88
  loc_9D39DC:  = Me.Text
  loc_9D39E1: LitI2_Byte &H1F
  loc_9D39E3: LitI2_Byte &HC
  loc_9D39E5: ILdRf var_8C
  loc_9D39E8: CI2Str
  loc_9D39EA: FLdRfVar var_9C
  loc_9D39ED: ImpAdCallFPR4  = DateSerial(, , )
  loc_9D39F2: FLdRfVar var_9C
  loc_9D39F5: CStrVarTmp
  loc_9D39F6: CVarStr var_AC
  loc_9D39F9: PopAdLdVar
  loc_9D39FA: FLdPr Me
  loc_9D39FD: VCallAd Control_ID_mskHasta
  loc_9D3A00: FStAdFunc var_C0
  loc_9D3A03: FLdPr var_C0
  loc_9D3A06: LateIdSt
  loc_9D3A0B: FFree1Str var_8C
  loc_9D3A0E: FFreeAd var_88 = ""
  loc_9D3A15: FFreeVar var_9C = ""
  loc_9D3A1C: Branch loc_9D3A3F
  loc_9D3A1F: ImpAdLdFPR8 MemVar_C3D04C
  loc_9D3A22: CStrDate
  loc_9D3A24: CVarStr var_9C
  loc_9D3A27: PopAdLdVar
  loc_9D3A28: FLdPr Me
  loc_9D3A2B: VCallAd Control_ID_mskHasta
  loc_9D3A2E: FStAdFunc var_88
  loc_9D3A31: FLdPr var_88
  loc_9D3A34: LateIdSt
  loc_9D3A39: FFree1Ad var_88
  loc_9D3A3C: FFree1Var var_9C = ""
  loc_9D3A3F: ExitProcHresult
End Sub

Private Sub cmdCodiPart_Click() '9F51C8
  'Data Table: 4CC8C0
  loc_9F5098: LitNothing
  loc_9F509A: CastAd
  loc_9F509D: FStAdFuncNoPop
  loc_9F50A0: ImpAdLdRf MemVar_C3D724
  loc_9F50A3: NewIfNullPr bscPartida
  loc_9F50A6: Call bscPartida.global_4332396Set(from_stack_1v)
  loc_9F50AB: FFree1Ad var_88
  loc_9F50AE: LitVar_Missing var_A8
  loc_9F50B1: PopAdLdVar
  loc_9F50B2: LitVarI4
  loc_9F50BA: PopAdLdVar
  loc_9F50BB: ImpAdLdRf MemVar_C3D724
  loc_9F50BE: NewIfNullPr bscPartida
  loc_9F50C1: bscPartida.Show from_stack_1, from_stack_2
  loc_9F50C6: FLdRfVar var_AC
  loc_9F50C9: FLdRfVar var_88
  loc_9F50CC: ImpAdLdRf MemVar_C3D724
  loc_9F50CF: NewIfNullPr bscPartida
  loc_9F50D2: from_stack_1v = bscPartida.global_4332396Get()
  loc_9F50D7: FLdPr var_88
  loc_9F50DA: from_stack_1 = clsbase.RecordCount
  loc_9F50DF: ILdRf var_AC
  loc_9F50E2: LitI4 0
  loc_9F50E7: GtI4
  loc_9F50E8: FFree1Ad var_88
  loc_9F50EB: BranchF loc_9F51C6
  loc_9F50EE: FLdRfVar var_C8
  loc_9F50F1: FLdRfVar var_B8
  loc_9F50F4: LitVarStr var_98, "CodiPart"
  loc_9F50F9: PopAdLdVar
  loc_9F50FA: FLdRfVar var_B4
  loc_9F50FD: FLdRfVar var_B0
  loc_9F5100: FLdRfVar var_88
  loc_9F5103: ImpAdLdRf MemVar_C3D724
  loc_9F5106: NewIfNullPr bscPartida
  loc_9F5109: from_stack_1v = bscPartida.global_4332396Get()
  loc_9F510E: FLdPr var_88
  loc_9F5111: from_stack_1v = clsbase.RsFrmGet()
  loc_9F5116: FLdPr var_B0
  loc_9F5119:  = Me.Fields
  loc_9F511E: FLdPr var_B4
  loc_9F5121: from_stack_2 = Me.Item(from_stack_1)
  loc_9F5126: FLdPr var_B8
  loc_9F5129:  = Me.Value
  loc_9F512E: FLdRfVar var_C8
  loc_9F5131: CStrVarTmp
  loc_9F5132: CVarStr var_D8
  loc_9F5135: PopAdLdVar
  loc_9F5136: FLdPr Me
  loc_9F5139: VCallAd Control_ID_CodiPartMsk
  loc_9F513C: FStAdFunc var_DC
  loc_9F513F: FLdPr var_DC
  loc_9F5142: LateIdSt
  loc_9F5147: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9F5154: FFreeVar var_C8 = ""
  loc_9F515B: FLdRfVar var_C8
  loc_9F515E: FLdRfVar var_B8
  loc_9F5161: LitVarStr var_98, "DetaPart"
  loc_9F5166: PopAdLdVar
  loc_9F5167: FLdRfVar var_B4
  loc_9F516A: FLdRfVar var_B0
  loc_9F516D: FLdRfVar var_88
  loc_9F5170: ImpAdLdRf MemVar_C3D724
  loc_9F5173: NewIfNullPr bscPartida
  loc_9F5176: from_stack_1v = bscPartida.global_4332396Get()
  loc_9F517B: FLdPr var_88
  loc_9F517E: from_stack_1v = clsbase.RsFrmGet()
  loc_9F5183: FLdPr var_B0
  loc_9F5186:  = Me.Fields
  loc_9F518B: FLdPr var_B4
  loc_9F518E: from_stack_2 = Me.Item(from_stack_1)
  loc_9F5193: FLdPr var_B8
  loc_9F5196:  = Me.Value
  loc_9F519B: FLdRfVar var_C8
  loc_9F519E: CStrVarTmp
  loc_9F519F: FStStrNoPop var_E0
  loc_9F51A2: FLdPr Me
  loc_9F51A5: VCallAd Control_ID_CodiPartLbl
  loc_9F51A8: FStAdFunc var_DC
  loc_9F51AB: FLdPr var_DC
  loc_9F51AE: Me.Caption = from_stack_1
  loc_9F51B3: FFree1Str var_E0
  loc_9F51B6: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9F51C3: FFree1Var var_C8 = ""
  loc_9F51C6: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() '9DB5D8
  'Data Table: 4CC8C0
  loc_9DB4CC: LitI2_Byte 0
  loc_9DB4CE: FLdPr Me
  loc_9DB4D1: MemStI2 bGenerado
  loc_9DB4D4: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_9DB4D9: ImpAdLdI2 MemVar_C3D064
  loc_9DB4DC: CStrUI1
  loc_9DB4DE: FStStrNoPop var_88
  loc_9DB4E1: FLdPr Me
  loc_9DB4E4: VCallAd Control_ID_cboPeriodo
  loc_9DB4E7: FStAdFunc var_8C
  loc_9DB4EA: FLdPr var_8C
  loc_9DB4ED: Me.Text = from_stack_1
  loc_9DB4F2: FFree1Str var_88
  loc_9DB4F5: FFree1Ad var_8C
  loc_9DB4F8: LitVarStr var_9C, vbNullString
  loc_9DB4FD: PopAdLdVar
  loc_9DB4FE: FLdPr Me
  loc_9DB501: VCallAd Control_ID_CodiPartMsk
  loc_9DB504: FStAdFunc var_8C
  loc_9DB507: FLdPr var_8C
  loc_9DB50A: LateIdSt
  loc_9DB50F: FFree1Ad var_8C
  loc_9DB512: LitVarStr var_9C, vbNullString
  loc_9DB517: PopAdLdVar
  loc_9DB518: FLdPr Me
  loc_9DB51B: VCallAd Control_ID_CodiOrgaMsk
  loc_9DB51E: FStAdFunc var_8C
  loc_9DB521: FLdPr var_8C
  loc_9DB524: LateIdSt
  loc_9DB529: FFree1Ad var_8C
  loc_9DB52C: LitVarStr var_9C, vbNullString
  loc_9DB531: PopAdLdVar
  loc_9DB532: FLdPr Me
  loc_9DB535: VCallAd Control_ID_CodiUngaMsk
  loc_9DB538: FStAdFunc var_8C
  loc_9DB53B: FLdPr var_8C
  loc_9DB53E: LateIdSt
  loc_9DB543: FFree1Ad var_8C
  loc_9DB546: LitVarStr var_9C, vbNullString
  loc_9DB54B: PopAdLdVar
  loc_9DB54C: FLdPr Me
  loc_9DB54F: VCallAd Control_ID_CodiFifuMsk
  loc_9DB552: FStAdFunc var_8C
  loc_9DB555: FLdPr var_8C
  loc_9DB558: LateIdSt
  loc_9DB55D: FFree1Ad var_8C
  loc_9DB560: LitStr vbNullString
  loc_9DB563: FLdPr Me
  loc_9DB566: VCallAd Control_ID_CodiPartLbl
  loc_9DB569: FStAdFunc var_8C
  loc_9DB56C: FLdPr var_8C
  loc_9DB56F: Me.Caption = from_stack_1
  loc_9DB574: FFree1Ad var_8C
  loc_9DB577: LitStr vbNullString
  loc_9DB57A: FLdPr Me
  loc_9DB57D: VCallAd Control_ID_CodiOrgaLbl
  loc_9DB580: FStAdFunc var_8C
  loc_9DB583: FLdPr var_8C
  loc_9DB586: Me.Caption = from_stack_1
  loc_9DB58B: FFree1Ad var_8C
  loc_9DB58E: LitStr vbNullString
  loc_9DB591: FLdPr Me
  loc_9DB594: VCallAd Control_ID_DetaUngaLbl
  loc_9DB597: FStAdFunc var_8C
  loc_9DB59A: FLdPr var_8C
  loc_9DB59D: Me.Caption = from_stack_1
  loc_9DB5A2: FFree1Ad var_8C
  loc_9DB5A5: LitStr vbNullString
  loc_9DB5A8: FLdPr Me
  loc_9DB5AB: VCallAd Control_ID_CodiFifuLbl
  loc_9DB5AE: FStAdFunc var_8C
  loc_9DB5B1: FLdPr var_8C
  loc_9DB5B4: Me.Caption = from_stack_1
  loc_9DB5B9: FFree1Ad var_8C
  loc_9DB5BC: Call HabilitarCriterio()
  loc_9DB5C1: ILdRf Me
  loc_9DB5C4: CastAd
  loc_9DB5C7: FStAdFunc var_8C
  loc_9DB5CA: FLdRfVar var_8C
  loc_9DB5CD: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_9DB5D2: FFree1Ad var_8C
  loc_9DB5D5: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '962924
  'Data Table: 4CC8C0
  loc_96290C: ILdRf Me
  loc_96290F: CastAd
  loc_962912: FStAdFunc var_88
  loc_962915: FLdRfVar var_88
  loc_962918: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_96291D: FFree1Ad var_88
  loc_962920: ExitProcHresult
End Sub

Private Sub CodiUngaMsk_UnknownEvent_0 '94E258
  'Data Table: 4CC8C0
  loc_94E244: FLdPr Me
  loc_94E247: VCallAd Control_ID_CodiUngaMsk
  loc_94E24A: CVarAd
  loc_94E24E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94E253: FFree1Var var_94 = ""
  loc_94E256: ExitProcHresult
End Sub

Private Sub CodiUngaMsk_UnknownEvent_8 '97DB48
  'Data Table: 4CC8C0
  loc_97DB1C: FLdRfVar var_8C
  loc_97DB1F: FLdRfVar var_88
  loc_97DB22: NewIfNullPr tblunidadgasto
  loc_97DB25: from_stack_1v = tblunidadgasto.DetaUngaGet()
  loc_97DB2A: ILdRf var_8C
  loc_97DB2D: FLdPr Me
  loc_97DB30: VCallAd Control_ID_DetaUngaLbl
  loc_97DB33: FStAdFunc var_90
  loc_97DB36: FLdPr var_90
  loc_97DB39: Me.Caption = from_stack_1
  loc_97DB3E: FFree1Str var_8C
  loc_97DB41: FFree1Ad var_90
  loc_97DB44: ExitProcHresult
End Sub

Private Sub CodiOrgaMsk_UnknownEvent_0 '94E138
  'Data Table: 4CC8C0
  loc_94E124: FLdPr Me
  loc_94E127: VCallAd Control_ID_CodiOrgaMsk
  loc_94E12A: CVarAd
  loc_94E12E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94E133: FFree1Var var_94 = ""
  loc_94E136: ExitProcHresult
End Sub

Private Sub CodiOrgaMsk_UnknownEvent_8 'A53A54
  'Data Table: 4CC8C0
  loc_A537B0: LitStr "SELECT DetaOrga FROM infogov.organigrama WHERE PeriInfo = "
  loc_A537B3: FLdRfVar var_8C
  loc_A537B6: FLdPr Me
  loc_A537B9: VCallAd Control_ID_cboPeriodo
  loc_A537BC: FStAdFunc var_88
  loc_A537BF: FLdPr var_88
  loc_A537C2:  = Me.Text
  loc_A537C7: ILdRf var_8C
  loc_A537CA: ConcatStr
  loc_A537CB: FStStrNoPop var_90
  loc_A537CE: LitStr " AND CodiOrga LIKE '"
  loc_A537D1: ConcatStr
  loc_A537D2: FStStrNoPop var_A8
  loc_A537D5: FLdPr Me
  loc_A537D8: VCallAd Control_ID_CodiOrgaMsk
  loc_A537DB: FStAdFunc var_94
  loc_A537DE: FLdPr var_94
  loc_A537E1: LateIdLdVar var_A4 DispID_22 0
  loc_A537E8: CStrVarTmp
  loc_A537E9: FStStrNoPop var_AC
  loc_A537EC: ConcatStr
  loc_A537ED: FStStrNoPop var_B0
  loc_A537F0: LitStr Chr(37) & "'"
  loc_A537F3: ConcatStr
  loc_A537F4: FStStrNoPop var_B4
  loc_A537F7: FLdPr Me
  loc_A537FA: MemLdRfVar from_stack_1.global_68
  loc_A537FD: NewIfNullPr clsorganigrama
  loc_A53800: Call clsorganigrama.RedefineRS(from_stack_1v)
  loc_A53805: FFreeStr var_8C = "": var_90 = "": var_A8 = "": var_AC = "": var_B0 = ""
  loc_A53814: FFreeAd var_88 = ""
  loc_A5381B: FFree1Var var_A4 = ""
  loc_A5381E: FLdRfVar var_B8
  loc_A53821: FLdPr Me
  loc_A53824: MemLdRfVar from_stack_1.global_68
  loc_A53827: NewIfNullPr clsorganigrama
  loc_A5382A: from_stack_1 = clsorganigrama.RecordCount
  loc_A5382F: ILdRf var_B8
  loc_A53832: FStR4 var_BC
  loc_A53835: ILdRf var_BC
  loc_A53838: LitI4 0
  loc_A5383D: EqI4
  loc_A5383E: BranchF loc_A538D1
  loc_A53841: LitStr "0 registros encontrados"
  loc_A53844: FLdPr Me
  loc_A53847: VCallAd Control_ID_CodiOrgaLbl
  loc_A5384A: FStAdFunc var_88
  loc_A5384D: FLdPr var_88
  loc_A53850: Me.Caption = from_stack_1
  loc_A53855: FFree1Ad var_88
  loc_A53858: LitI4 0
  loc_A5385D: LitI4 1
  loc_A53862: FLdRfVar var_C0
  loc_A53865: Redim
  loc_A5386F: FLdPr Me
  loc_A53872: VCallAd Control_ID_CodiUngaMsk
  loc_A53875: CVarAd
  loc_A53879: ParmAry1St
  loc_A5387F: FLdPr Me
  loc_A53882: VCallAd Control_ID_CodiUngaCmd
  loc_A53885: CVarAd
  loc_A53889: ParmAry1St
  loc_A5388F: FLdRfVar var_C0
  loc_A53892: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_A53897: FLdRfVar var_C0
  loc_A5389A: Erase
  loc_A5389B: LitI4 0
  loc_A538A0: LitI4 0
  loc_A538A5: FLdRfVar var_C0
  loc_A538A8: Redim
  loc_A538B2: FLdPr Me
  loc_A538B5: VCallAd Control_ID_CodiUngaMsk
  loc_A538B8: CVarAd
  loc_A538BC: ParmAry1St
  loc_A538C2: FLdRfVar var_C0
  loc_A538C5: ImpAdCallFPR4 Proc_261_4_9A47F0()
  loc_A538CA: FLdRfVar var_C0
  loc_A538CD: Erase
  loc_A538CE: Branch loc_A53A53
  loc_A538D1: ILdRf var_BC
  loc_A538D4: LitI4 1
  loc_A538D9: EqI4
  loc_A538DA: BranchF loc_A539A2
  loc_A538DD: FLdRfVar var_A4
  loc_A538E0: FLdRfVar var_E4
  loc_A538E3: LitVarStr var_E0, "DetaOrga"
  loc_A538E8: PopAdLdVar
  loc_A538E9: FLdRfVar var_94
  loc_A538EC: FLdRfVar var_88
  loc_A538EF: FLdPr Me
  loc_A538F2: MemLdRfVar from_stack_1.global_68
  loc_A538F5: NewIfNullPr clsorganigrama
  loc_A538F8: from_stack_1v = clsorganigrama.RsFrmGet()
  loc_A538FD: FLdPr var_88
  loc_A53900:  = Me.Fields
  loc_A53905: FLdPr var_94
  loc_A53908: from_stack_2 = Me.Item(from_stack_1)
  loc_A5390D: FLdPr var_E4
  loc_A53910:  = Me.Value
  loc_A53915: FLdRfVar var_A4
  loc_A53918: CStrVarTmp
  loc_A53919: FStStrNoPop var_8C
  loc_A5391C: FLdPr Me
  loc_A5391F: VCallAd Control_ID_CodiOrgaLbl
  loc_A53922: FStAdFunc var_E8
  loc_A53925: FLdPr var_E8
  loc_A53928: Me.Caption = from_stack_1
  loc_A5392D: FFree1Str var_8C
  loc_A53930: FFreeAd var_88 = "": var_94 = "": var_E4 = ""
  loc_A5393B: FFree1Var var_A4 = ""
  loc_A5393E: FLdPr Me
  loc_A53941: VCallAd Control_ID_CodiOrgaMsk
  loc_A53944: FStAdFunc var_88
  loc_A53947: FLdPr var_88
  loc_A5394A: LateIdLdVar var_A4 DispID_13 -32767
  loc_A53951: CBoolVar
  loc_A53953: FFree1Ad var_88
  loc_A53956: FFree1Var var_A4 = ""
  loc_A53959: BranchF loc_A5399F
  loc_A5395C: LitI4 0
  loc_A53961: LitI4 1
  loc_A53966: FLdRfVar var_C0
  loc_A53969: Redim
  loc_A53973: FLdPr Me
  loc_A53976: VCallAd Control_ID_CodiUngaMsk
  loc_A53979: CVarAd
  loc_A5397D: ParmAry1St
  loc_A53983: FLdPr Me
  loc_A53986: VCallAd Control_ID_CodiUngaCmd
  loc_A53989: CVarAd
  loc_A5398D: ParmAry1St
  loc_A53993: FLdRfVar var_C0
  loc_A53996: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_A5399B: FLdRfVar var_C0
  loc_A5399E: Erase
  loc_A5399F: Branch loc_A53A53
  loc_A539A2: FLdRfVar var_B8
  loc_A539A5: FLdPr Me
  loc_A539A8: MemLdRfVar from_stack_1.global_68
  loc_A539AB: NewIfNullPr clsorganigrama
  loc_A539AE: from_stack_1 = clsorganigrama.RecordCount
  loc_A539B3: ILdRf var_B8
  loc_A539B6: CStrI4
  loc_A539B8: FStStrNoPop var_8C
  loc_A539BB: LitStr " organigramas encontrados"
  loc_A539BE: ConcatStr
  loc_A539BF: FStStrNoPop var_90
  loc_A539C2: FLdPr Me
  loc_A539C5: VCallAd Control_ID_CodiOrgaLbl
  loc_A539C8: FStAdFunc var_88
  loc_A539CB: FLdPr var_88
  loc_A539CE: Me.Caption = from_stack_1
  loc_A539D3: FFreeStr var_8C = ""
  loc_A539DA: FFree1Ad var_88
  loc_A539DD: LitI4 0
  loc_A539E2: LitI4 1
  loc_A539E7: FLdRfVar var_C0
  loc_A539EA: Redim
  loc_A539F4: FLdPr Me
  loc_A539F7: VCallAd Control_ID_CodiUngaMsk
  loc_A539FA: CVarAd
  loc_A539FE: ParmAry1St
  loc_A53A04: FLdPr Me
  loc_A53A07: VCallAd Control_ID_CodiUngaCmd
  loc_A53A0A: CVarAd
  loc_A53A0E: ParmAry1St
  loc_A53A14: FLdRfVar var_C0
  loc_A53A17: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_A53A1C: FLdRfVar var_C0
  loc_A53A1F: Erase
  loc_A53A20: LitI4 0
  loc_A53A25: LitI4 0
  loc_A53A2A: FLdRfVar var_C0
  loc_A53A2D: Redim
  loc_A53A37: FLdPr Me
  loc_A53A3A: VCallAd Control_ID_CodiUngaMsk
  loc_A53A3D: CVarAd
  loc_A53A41: ParmAry1St
  loc_A53A47: FLdRfVar var_C0
  loc_A53A4A: ImpAdCallFPR4 Proc_261_4_9A47F0()
  loc_A53A4F: FLdRfVar var_C0
  loc_A53A52: Erase
  loc_A53A53: ExitProcHresult
End Sub

Public Function bGeneradoGet() '4CE040
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '4CE04F
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() '9D7760
  'Data Table: 4CC8C0
  loc_9D768C: LitI4 0
  loc_9D7691: LitI4 &HA
  loc_9D7696: FLdRfVar var_88
  loc_9D7699: Redim
  loc_9D76A3: FLdPr Me
  loc_9D76A6: VCallAd Control_ID_cboPeriodo
  loc_9D76A9: CVarAd
  loc_9D76AD: ParmAry1St
  loc_9D76B3: FLdPr Me
  loc_9D76B6: VCallAd Control_ID_mskDesde
  loc_9D76B9: CVarAd
  loc_9D76BD: ParmAry1St
  loc_9D76C3: FLdPr Me
  loc_9D76C6: VCallAd Control_ID_cmdCalDesde
  loc_9D76C9: CVarAd
  loc_9D76CD: ParmAry1St
  loc_9D76D3: FLdPr Me
  loc_9D76D6: VCallAd Control_ID_mskHasta
  loc_9D76D9: CVarAd
  loc_9D76DD: ParmAry1St
  loc_9D76E3: FLdPr Me
  loc_9D76E6: VCallAd Control_ID_cmdCalHasta
  loc_9D76E9: CVarAd
  loc_9D76ED: ParmAry1St
  loc_9D76F3: FLdPr Me
  loc_9D76F6: VCallAd Control_ID_CodiPartMsk
  loc_9D76F9: CVarAd
  loc_9D76FD: ParmAry1St
  loc_9D7703: FLdPr Me
  loc_9D7706: VCallAd Control_ID_cmdCodiPart
  loc_9D7709: CVarAd
  loc_9D770D: ParmAry1St
  loc_9D7713: FLdPr Me
  loc_9D7716: VCallAd Control_ID_CodiOrgaMsk
  loc_9D7719: CVarAd
  loc_9D771D: ParmAry1St
  loc_9D7723: FLdPr Me
  loc_9D7726: VCallAd Control_ID_cmdCodiOrga
  loc_9D7729: CVarAd
  loc_9D772D: ParmAry1St
  loc_9D7733: FLdPr Me
  loc_9D7736: VCallAd Control_ID_CodiFifuMsk
  loc_9D7739: CVarAd
  loc_9D773D: ParmAry1St
  loc_9D7743: FLdPr Me
  loc_9D7746: VCallAd Control_ID_cmdCodiFifu
  loc_9D7749: CVarAd
  loc_9D774D: ParmAry1St
  loc_9D7753: FLdRfVar var_88
  loc_9D7756: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9D775B: FLdRfVar var_88
  loc_9D775E: Erase
  loc_9D775F: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'B39B64
  'Data Table: 4CC8C0
  loc_B391C8: OnErrorGoto loc_B39B01
  loc_B391CB: FLdPr Me
  loc_B391CE: MemLdI2 bGenerado
  loc_B391D1: BranchF loc_B391D5
  loc_B391D4: ExitProcHresult
  loc_B391D5: LitVarStr var_A8, "Generando reporte..."
  loc_B391DA: PopAdLdVar
  loc_B391DB: FLdPr Me
  loc_B391DE: VCallAd Control_ID_statusBar
  loc_B391E1: FStAdFunc var_BC
  loc_B391E4: FLdPr var_BC
  loc_B391E7: LateIdSt
  loc_B391EC: FFree1Ad var_BC
  loc_B391EF: LitI4 &HB
  loc_B391F4: CI2I4
  loc_B391F5: FLdPr Me
  loc_B391F8: Me.MousePointer = from_stack_1
  loc_B391FD: LitI2_Byte 0
  loc_B391FF: PopTmpLdAd2 var_BE
  loc_B39202: Call mskDesde_UnknownEvent_8()
  loc_B39207: FLdPr Me
  loc_B3920A: MemLdStr global_128
  loc_B3920D: LitStr vbNullString
  loc_B39210: NeStr
  loc_B39212: BranchF loc_B39218
  loc_B39215: Branch loc_B39AD8
  loc_B39218: LitI2_Byte 0
  loc_B3921A: PopTmpLdAd2 var_BE
  loc_B3921D: Call mskHasta_UnknownEvent_8()
  loc_B39222: FLdPr Me
  loc_B39225: MemLdStr global_128
  loc_B39228: LitStr vbNullString
  loc_B3922B: NeStr
  loc_B3922D: BranchF loc_B39233
  loc_B39230: Branch loc_B39AD8
  loc_B39233: LitI2_Byte 0
  loc_B39235: PopTmpLdAd2 var_BE
  loc_B39238: Call CodiPartMsk_UnknownEvent_8()
  loc_B3923D: LitI2_Byte 0
  loc_B3923F: PopTmpLdAd2 var_BE
  loc_B39242: Call CodiOrgaMsk_UnknownEvent_8()
  loc_B39247: LitI2_Byte 0
  loc_B39249: PopTmpLdAd2 var_BE
  loc_B3924C: Call CodiFifuMsk_UnknownEvent_8()
  loc_B39251: FLdPr Me
  loc_B39254: VCallAd Control_ID_CodiPartMsk
  loc_B39257: FStAdFunc var_BC
  loc_B3925A: FLdPr var_BC
  loc_B3925D: LateIdLdVar var_D0 DispID_22 0
  loc_B39264: PopAd
  loc_B39266: FLdPr Me
  loc_B39269: VCallAd Control_ID_CodiPartMsk
  loc_B3926C: FStAdFunc var_D8
  loc_B3926F: FLdPr var_D8
  loc_B39272: LateIdLdVar var_E8 DispID_22 0
  loc_B39279: PopAd
  loc_B3927B: LitVarStr var_B8, vbNullString
  loc_B39280: FStVarCopyObj var_110
  loc_B39283: FLdRfVar var_110
  loc_B39286: LitStr " AND imputacion.CodiPart LIKE '"
  loc_B39289: FLdRfVar var_E8
  loc_B3928C: CStrVarTmp
  loc_B3928D: FStStrNoPop var_EC
  loc_B39290: ConcatStr
  loc_B39291: FStStrNoPop var_F0
  loc_B39294: LitStr Chr(37) & "'"
  loc_B39297: ConcatStr
  loc_B39298: CVarStr var_100
  loc_B3929B: FLdRfVar var_D0
  loc_B3929E: CStrVarTmp
  loc_B3929F: FStStrNoPop var_D4
  loc_B392A2: LitStr vbNullString
  loc_B392A5: NeStr
  loc_B392A7: CVarBoolI2 var_A8
  loc_B392AB: FLdRfVar var_120
  loc_B392AE: ImpAdCallFPR4  = IIf(, , )
  loc_B392B3: FLdRfVar var_120
  loc_B392B6: CStrVarTmp
  loc_B392B7: FStStr var_88
  loc_B392BA: FFreeStr var_D4 = "": var_EC = ""
  loc_B392C3: FFreeAd var_BC = ""
  loc_B392CA: FFreeVar var_D0 = "": var_E8 = "": var_A8 = "": var_100 = "": var_110 = ""
  loc_B392D9: FLdPr Me
  loc_B392DC: VCallAd Control_ID_CodiOrgaMsk
  loc_B392DF: FStAdFunc var_BC
  loc_B392E2: FLdPr var_BC
  loc_B392E5: LateIdLdVar var_D0 DispID_22 0
  loc_B392EC: PopAd
  loc_B392EE: FLdPr Me
  loc_B392F1: VCallAd Control_ID_CodiOrgaMsk
  loc_B392F4: FStAdFunc var_D8
  loc_B392F7: FLdPr var_D8
  loc_B392FA: LateIdLdVar var_E8 DispID_22 0
  loc_B39301: PopAd
  loc_B39303: LitVarStr var_B8, vbNullString
  loc_B39308: FStVarCopyObj var_110
  loc_B3930B: FLdRfVar var_110
  loc_B3930E: LitStr " AND imputacion.CodiOrga LIKE '"
  loc_B39311: FLdRfVar var_E8
  loc_B39314: CStrVarTmp
  loc_B39315: FStStrNoPop var_EC
  loc_B39318: ConcatStr
  loc_B39319: FStStrNoPop var_F0
  loc_B3931C: LitStr Chr(37) & "'"
  loc_B3931F: ConcatStr
  loc_B39320: CVarStr var_100
  loc_B39323: FLdRfVar var_D0
  loc_B39326: CStrVarTmp
  loc_B39327: FStStrNoPop var_D4
  loc_B3932A: LitStr vbNullString
  loc_B3932D: NeStr
  loc_B3932F: CVarBoolI2 var_A8
  loc_B39333: FLdRfVar var_120
  loc_B39336: ImpAdCallFPR4  = IIf(, , )
  loc_B3933B: FLdRfVar var_120
  loc_B3933E: CStrVarTmp
  loc_B3933F: FStStr var_8C
  loc_B39342: FFreeStr var_D4 = "": var_EC = ""
  loc_B3934B: FFreeAd var_BC = ""
  loc_B39352: FFreeVar var_D0 = "": var_E8 = "": var_A8 = "": var_100 = "": var_110 = ""
  loc_B39361: FLdPr Me
  loc_B39364: VCallAd Control_ID_CodiUngaMsk
  loc_B39367: FStAdFunc var_BC
  loc_B3936A: FLdPr var_BC
  loc_B3936D: LateIdLdVar var_D0 DispID_22 0
  loc_B39374: PopAd
  loc_B39376: FLdPr Me
  loc_B39379: VCallAd Control_ID_CodiUngaMsk
  loc_B3937C: FStAdFunc var_D8
  loc_B3937F: FLdPr var_D8
  loc_B39382: LateIdLdVar var_E8 DispID_22 0
  loc_B39389: PopAd
  loc_B3938B: LitVarStr var_B8, vbNullString
  loc_B39390: FStVarCopyObj var_110
  loc_B39393: FLdRfVar var_110
  loc_B39396: LitStr " AND imputacion.CodiUnga = '"
  loc_B39399: FLdRfVar var_E8
  loc_B3939C: CStrVarTmp
  loc_B3939D: FStStrNoPop var_EC
  loc_B393A0: ConcatStr
  loc_B393A1: FStStrNoPop var_F0
  loc_B393A4: LitStr "'"
  loc_B393A7: ConcatStr
  loc_B393A8: CVarStr var_100
  loc_B393AB: FLdRfVar var_D0
  loc_B393AE: CStrVarTmp
  loc_B393AF: FStStrNoPop var_D4
  loc_B393B2: LitStr vbNullString
  loc_B393B5: NeStr
  loc_B393B7: CVarBoolI2 var_A8
  loc_B393BB: FLdRfVar var_120
  loc_B393BE: ImpAdCallFPR4  = IIf(, , )
  loc_B393C3: FLdRfVar var_120
  loc_B393C6: CStrVarTmp
  loc_B393C7: FStStr var_90
  loc_B393CA: FFreeStr var_D4 = "": var_EC = ""
  loc_B393D3: FFreeAd var_BC = ""
  loc_B393DA: FFreeVar var_D0 = "": var_E8 = "": var_A8 = "": var_100 = "": var_110 = ""
  loc_B393E9: FLdPr Me
  loc_B393EC: VCallAd Control_ID_CodiFifuMsk
  loc_B393EF: FStAdFunc var_BC
  loc_B393F2: FLdPr var_BC
  loc_B393F5: LateIdLdVar var_D0 DispID_22 0
  loc_B393FC: PopAd
  loc_B393FE: FLdPr Me
  loc_B39401: VCallAd Control_ID_CodiFifuMsk
  loc_B39404: FStAdFunc var_D8
  loc_B39407: FLdPr var_D8
  loc_B3940A: LateIdLdVar var_E8 DispID_22 0
  loc_B39411: PopAd
  loc_B39413: LitVarStr var_B8, vbNullString
  loc_B39418: FStVarCopyObj var_110
  loc_B3941B: FLdRfVar var_110
  loc_B3941E: LitStr " AND imputacion.CodiFifu LIKE '"
  loc_B39421: FLdRfVar var_E8
  loc_B39424: CStrVarTmp
  loc_B39425: FStStrNoPop var_EC
  loc_B39428: ConcatStr
  loc_B39429: FStStrNoPop var_F0
  loc_B3942C: LitStr Chr(37) & "'"
  loc_B3942F: ConcatStr
  loc_B39430: CVarStr var_100
  loc_B39433: FLdRfVar var_D0
  loc_B39436: CStrVarTmp
  loc_B39437: FStStrNoPop var_D4
  loc_B3943A: LitStr vbNullString
  loc_B3943D: NeStr
  loc_B3943F: CVarBoolI2 var_A8
  loc_B39443: FLdRfVar var_120
  loc_B39446: ImpAdCallFPR4  = IIf(, , )
  loc_B3944B: FLdRfVar var_120
  loc_B3944E: CStrVarTmp
  loc_B3944F: FStStr var_94
  loc_B39452: FFreeStr var_D4 = "": var_EC = ""
  loc_B3945B: FFreeAd var_BC = ""
  loc_B39462: FFreeVar var_D0 = "": var_E8 = "": var_A8 = "": var_100 = "": var_110 = ""
  loc_B39471: FLdPr Me
  loc_B39474: VCallAd Control_ID_mskDesde
  loc_B39477: FStAdFunc var_D8
  loc_B3947A: FLdPr var_D8
  loc_B3947D: LateIdLdVar var_D0 DispID_15 0
  loc_B39484: PopAd
  loc_B39486: FLdPr Me
  loc_B39489: VCallAd Control_ID_mskHasta
  loc_B3948C: FStAdFunc var_154
  loc_B3948F: FLdPr var_154
  loc_B39492: LateIdLdVar var_164 DispID_15 0
  loc_B39499: PopAd
  loc_B3949B: LitStr "SELECT imputacion.*, DetaPart, DetaOrga, DetaFifu"
  loc_B3949E: LitStr " FROM imputacion"
  loc_B394A1: ConcatStr
  loc_B394A2: FStStrNoPop var_D4
  loc_B394A5: LitStr " INNER JOIN partida ON partida.PeriInfo = imputacion.PeriInfo AND partida.CodiPart = imputacion.CodiPart"
  loc_B394A8: ConcatStr
  loc_B394A9: FStStrNoPop var_EC
  loc_B394AC: LitStr " INNER JOIN infogov.organigrama ON organigrama.PeriInfo = imputacion.PeriInfo AND organigrama.CodiOrga = imputacion.CodiOrga"
  loc_B394AF: ConcatStr
  loc_B394B0: FStStrNoPop var_F0
  loc_B394B3: LitStr " INNER JOIN finalidad ON finalidad.PeriInfo = imputacion.PeriInfo AND finalidad.CodiFifu = imputacion.CodiFifu"
  loc_B394B6: ConcatStr
  loc_B394B7: FStStrNoPop var_124
  loc_B394BA: LitStr " WHERE imputacion.PeriInfo = "
  loc_B394BD: ConcatStr
  loc_B394BE: FStStrNoPop var_12C
  loc_B394C1: FLdRfVar var_128
  loc_B394C4: FLdPr Me
  loc_B394C7: VCallAd Control_ID_cboPeriodo
  loc_B394CA: FStAdFunc var_BC
  loc_B394CD: FLdPr var_BC
  loc_B394D0:  = Me.Text
  loc_B394D5: ILdRf var_128
  loc_B394D8: ConcatStr
  loc_B394D9: FStStrNoPop var_130
  loc_B394DC: LitStr " AND FechImpu BETWEEN '"
  loc_B394DF: ConcatStr
  loc_B394E0: CVarStr var_120
  loc_B394E3: LitI4 1
  loc_B394E8: LitI4 1
  loc_B394ED: LitVarStr var_A8, "yyyy-mm-dd"
  loc_B394F2: FStVarCopyObj var_100
  loc_B394F5: FLdRfVar var_100
  loc_B394F8: FLdRfVar var_D0
  loc_B394FB: CStrVarTmp
  loc_B394FC: CVarStr var_E8
  loc_B394FF: FLdRfVar var_110
  loc_B39502: ImpAdCallFPR4  = Format(, )
  loc_B39507: FLdRfVar var_110
  loc_B3950A: ConcatVar var_140
  loc_B3950E: LitVarStr var_B8, "' AND '"
  loc_B39513: ConcatVar var_150
  loc_B39517: LitI4 1
  loc_B3951C: LitI4 1
  loc_B39521: LitVarStr var_184, "yyyy-mm-dd"
  loc_B39526: FStVarCopyObj var_194
  loc_B39529: FLdRfVar var_194
  loc_B3952C: FLdRfVar var_164
  loc_B3952F: CStrVarTmp
  loc_B39530: CVarStr var_174
  loc_B39533: FLdRfVar var_1A4
  loc_B39536: ImpAdCallFPR4  = Format(, )
  loc_B3953B: FLdRfVar var_1A4
  loc_B3953E: ConcatVar var_1B4
  loc_B39542: LitVarStr var_1C4, "'"
  loc_B39547: ConcatVar var_1D4
  loc_B3954B: ILdRf var_88
  loc_B3954E: CVarStr var_1E4
  loc_B39551: ConcatVar var_1F4
  loc_B39555: ILdRf var_8C
  loc_B39558: CVarStr var_204
  loc_B3955B: ConcatVar var_214
  loc_B3955F: ILdRf var_90
  loc_B39562: CVarStr var_224
  loc_B39565: ConcatVar var_234
  loc_B39569: ILdRf var_94
  loc_B3956C: CVarStr var_244
  loc_B3956F: ConcatVar var_254
  loc_B39573: LitVarStr var_264, " ORDER BY CodiPart, CodiOrga, CodiFifu"
  loc_B39578: ConcatVar var_274
  loc_B3957C: CStrVarVal var_278
  loc_B39580: FLdPr Me
  loc_B39583: MemLdRfVar from_stack_1.global_60
  loc_B39586: NewIfNullPr clsimputacion
  loc_B39589: Call clsimputacion.RedefineRS(from_stack_1v)
  loc_B3958E: FFreeStr var_D4 = "": var_EC = "": var_F0 = "": var_124 = "": var_12C = "": var_128 = "": var_130 = ""
  loc_B395A1: FFreeAd var_BC = "": var_D8 = ""
  loc_B395AA: FFreeVar var_D0 = "": var_E8 = "": var_100 = "": var_120 = "": var_110 = "": var_140 = "": var_164 = "": var_174 = "": var_194 = "": var_150 = "": var_1A4 = "": var_1B4 = "": var_1D4 = "": var_1F4 = "": var_214 = "": var_234 = "": var_254 = ""
  loc_B395D1: FLdRfVar var_27C
  loc_B395D4: FLdPr Me
  loc_B395D7: MemLdRfVar from_stack_1.global_60
  loc_B395DA: NewIfNullPr clsimputacion
  loc_B395DD: from_stack_1 = clsimputacion.RecordCount
  loc_B395E2: ILdRf var_27C
  loc_B395E5: LitI4 0
  loc_B395EA: EqI4
  loc_B395EB: BranchF loc_B395FE
  loc_B395EE: LitI4 0
  loc_B395F3: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_B395F6: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B395FB: Branch loc_B39AD8
  loc_B395FE: LitI4 0
  loc_B39603: LitI4 1
  loc_B39608: FLdPr Me
  loc_B3960B: MemLdRfVar from_stack_1.global_96
  loc_B3960E: Redim
  loc_B39618: LitI4 0
  loc_B3961D: LitI4 5
  loc_B39622: FLdPr Me
  loc_B39625: MemLdRfVar from_stack_1.global_124
  loc_B39628: Redim
  loc_B39632: LitI4 0
  loc_B39637: FLdPr Me
  loc_B3963A: MemStI4 global_100
  loc_B3963D: LitI4 0
  loc_B39642: FLdPr Me
  loc_B39645: MemStI4 global_104
  loc_B39648: LitI4 0
  loc_B3964D: FLdPr Me
  loc_B39650: MemStI4 global_108
  loc_B39653: FLdPr Me
  loc_B39656: MemLdRfVar from_stack_1.global_60
  loc_B39659: NewIfNullAd
  loc_B3965C: FStAd var_280 
  loc_B39660: FLdPr var_280
  loc_B39663: Call clsimputacion.MoveFirst()
  loc_B39668: LitI4 1
  loc_B3966D: Call Proc_227_32_B4DED0()
  loc_B39672: FLdPr Me
  loc_B39675: MemLdStr global_112
  loc_B39678: FLdPr Me
  loc_B3967B: MemLdStr global_108
  loc_B3967E: FLdPr Me
  loc_B39681: MemLdStr global_104
  loc_B39684: FLdPr Me
  loc_B39687: MemLdStr global_100
  loc_B3968A: Call Proc_227_33_B10664()
  loc_B3968F: FLdRfVar var_27C
  loc_B39692: FLdPr var_280
  loc_B39695: from_stack_1 = clsimputacion.RecordCount
  loc_B3969A: ILdRf var_27C
  loc_B3969D: LitI4 1
  loc_B396A2: GtI4
  loc_B396A3: BranchF loc_B39861
  loc_B396A6: LitI4 2
  loc_B396AB: FLdRfVar var_98
  loc_B396AE: FLdRfVar var_27C
  loc_B396B1: FLdPr var_280
  loc_B396B4: from_stack_1 = clsimputacion.RecordCount
  loc_B396B9: ILdRf var_27C
  loc_B396BC: ForI4 var_288
  loc_B396C2: FLdPr var_280
  loc_B396C5: Call clsimputacion.MoveSiguiente()
  loc_B396CA: FLdRfVar var_D0
  loc_B396CD: FLdRfVar var_154
  loc_B396D0: LitVarStr var_A8, "CodiPart"
  loc_B396D5: PopAdLdVar
  loc_B396D6: FLdRfVar var_D8
  loc_B396D9: FLdRfVar var_BC
  loc_B396DC: FLdPr var_280
  loc_B396DF: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B396E4: FLdPr var_BC
  loc_B396E7:  = Me.Fields
  loc_B396EC: FLdPr var_D8
  loc_B396EF: from_stack_2 = Me.Item(from_stack_1)
  loc_B396F4: FLdPr var_154
  loc_B396F7:  = Me.Value
  loc_B396FC: FLdRfVar var_D0
  loc_B396FF: FLdPr Me
  loc_B39702: MemLdStr global_100
  loc_B39705: FLdPr Me
  loc_B39708: MemLdStr global_96
  loc_B3970B: Ary1LdPr
  loc_B3970C: MemLdRfVar from_stack_1.global_0
  loc_B3970F: LdFixedStr
  loc_B39712: CVarStr var_E8
  loc_B39715: HardType
  loc_B39716: EqVarBool
  loc_B39718: FFreeAd var_BC = "": var_D8 = ""
  loc_B39721: FFreeVar var_D0 = ""
  loc_B39728: BranchF loc_B39832
  loc_B3972B: FLdRfVar var_D0
  loc_B3972E: FLdRfVar var_154
  loc_B39731: LitVarStr var_A8, "CodiOrga"
  loc_B39736: PopAdLdVar
  loc_B39737: FLdRfVar var_D8
  loc_B3973A: FLdRfVar var_BC
  loc_B3973D: FLdPr var_280
  loc_B39740: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B39745: FLdPr var_BC
  loc_B39748:  = Me.Fields
  loc_B3974D: FLdPr var_D8
  loc_B39750: from_stack_2 = Me.Item(from_stack_1)
  loc_B39755: FLdPr var_154
  loc_B39758:  = Me.Value
  loc_B3975D: FLdRfVar var_D0
  loc_B39760: FLdPr Me
  loc_B39763: MemLdStr global_104
  loc_B39766: FLdPr Me
  loc_B39769: MemLdStr global_100
  loc_B3976C: FLdPr Me
  loc_B3976F: MemLdStr global_96
  loc_B39772: Ary1LdPr
  loc_B39773: MemLdStr global_24
  loc_B39776: Ary1LdPr
  loc_B39777: MemLdRfVar from_stack_1.global_0
  loc_B3977A: LdFixedStr
  loc_B3977D: CVarStr var_E8
  loc_B39780: HardType
  loc_B39781: EqVarBool
  loc_B39783: FFreeAd var_BC = "": var_D8 = ""
  loc_B3978C: FFreeVar var_D0 = ""
  loc_B39793: BranchF loc_B39825
  loc_B39796: FLdRfVar var_D0
  loc_B39799: FLdRfVar var_154
  loc_B3979C: LitVarStr var_A8, "CodiFifu"
  loc_B397A1: PopAdLdVar
  loc_B397A2: FLdRfVar var_D8
  loc_B397A5: FLdRfVar var_BC
  loc_B397A8: FLdPr var_280
  loc_B397AB: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B397B0: FLdPr var_BC
  loc_B397B3:  = Me.Fields
  loc_B397B8: FLdPr var_D8
  loc_B397BB: from_stack_2 = Me.Item(from_stack_1)
  loc_B397C0: FLdPr var_154
  loc_B397C3:  = Me.Value
  loc_B397C8: FLdRfVar var_D0
  loc_B397CB: FLdPr Me
  loc_B397CE: MemLdStr global_108
  loc_B397D1: FLdPr Me
  loc_B397D4: MemLdStr global_104
  loc_B397D7: FLdPr Me
  loc_B397DA: MemLdStr global_100
  loc_B397DD: FLdPr Me
  loc_B397E0: MemLdStr global_96
  loc_B397E3: Ary1LdPr
  loc_B397E4: MemLdStr global_24
  loc_B397E7: Ary1LdPr
  loc_B397E8: MemLdStr global_20
  loc_B397EB: Ary1LdPr
  loc_B397EC: MemLdRfVar from_stack_1.global_0
  loc_B397EF: LdFixedStr
  loc_B397F2: CVarStr var_E8
  loc_B397F5: HardType
  loc_B397F6: EqVarBool
  loc_B397F8: FFreeAd var_BC = "": var_D8 = ""
  loc_B39801: FFreeVar var_D0 = ""
  loc_B39808: BranchF loc_B39818
  loc_B3980B: LitI4 4
  loc_B39810: Call Proc_227_32_B4DED0()
  loc_B39815: Branch loc_B39822
  loc_B39818: LitI4 3
  loc_B3981D: Call Proc_227_32_B4DED0()
  loc_B39822: Branch loc_B3982F
  loc_B39825: LitI4 2
  loc_B3982A: Call Proc_227_32_B4DED0()
  loc_B3982F: Branch loc_B3983C
  loc_B39832: LitI4 1
  loc_B39837: Call Proc_227_32_B4DED0()
  loc_B3983C: FLdPr Me
  loc_B3983F: MemLdStr global_112
  loc_B39842: FLdPr Me
  loc_B39845: MemLdStr global_108
  loc_B39848: FLdPr Me
  loc_B3984B: MemLdStr global_104
  loc_B3984E: FLdPr Me
  loc_B39851: MemLdStr global_100
  loc_B39854: Call Proc_227_33_B10664()
  loc_B39859: FLdRfVar var_98
  loc_B3985C: NextI4 var_288, loc_B396C2
  loc_B39861: LitNothing
  loc_B39863: FStAd var_280 
  loc_B39867: LitI4 1
  loc_B3986C: Call Proc_227_32_B4DED0()
  loc_B39871: LitI4 0
  loc_B39876: FLdPr Me
  loc_B39879: MemLdStr global_96
  loc_B3987C: LitI2_Byte 1
  loc_B3987E: FnUBound
  loc_B39880: LitI4 1
  loc_B39885: SubI4
  loc_B39886: FLdPr Me
  loc_B39889: MemLdRfVar from_stack_1.global_96
  loc_B3988C: RedimPreserve
  loc_B39896: LitI4 1
  loc_B3989B: FLdPr Me
  loc_B3989E: MemLdRfVar from_stack_1.global_100
  loc_B398A1: FLdPr Me
  loc_B398A4: MemLdStr global_96
  loc_B398A7: LitI2_Byte 1
  loc_B398A9: FnUBound
  loc_B398AB: ForI4 var_290
  loc_B398B1: LitI2_Byte 1
  loc_B398B3: FLdPr Me
  loc_B398B6: MemLdRfVar from_stack_1.global_116
  loc_B398B9: LitI2_Byte 5
  loc_B398BB: ForI2 var_294
  loc_B398C1: LitI2_Byte 0
  loc_B398C3: FLdPr Me
  loc_B398C6: MemLdI2 global_116
  loc_B398C9: CI4UI1
  loc_B398CA: FLdPr Me
  loc_B398CD: MemLdStr global_124
  loc_B398D0: AryLock
  loc_B398D3: Ary1LdRf
  loc_B398D4: CVarRef
  loc_B398D9: LitI2_Byte &HFF
  loc_B398DB: FLdPr Me
  loc_B398DE: MemLdI2 global_116
  loc_B398E1: CI4UI1
  loc_B398E2: FLdPr Me
  loc_B398E5: MemLdStr global_100
  loc_B398E8: FLdPr Me
  loc_B398EB: MemLdStr global_96
  loc_B398EE: Ary1LdPr
  loc_B398EF: MemLdRfVar from_stack_1.global_28
  loc_B398F2: AryInRecLdPr
  loc_B398F8: MemLdStr global_0
  loc_B398FB: CVarStr var_A8
  loc_B398FE: PopAdLdVar
  loc_B398FF: FLdPr Me
  loc_B39902: MemLdRfVar from_stack_1.global_120
  loc_B39905: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B3990A: AryUnlock
  loc_B3990D: FLdPr Me
  loc_B39910: MemLdRfVar from_stack_1.global_116
  loc_B39913: NextI2 var_294, loc_B398C1
  loc_B39918: FLdPr Me
  loc_B3991B: MemLdRfVar from_stack_1.global_100
  loc_B3991E: NextI4 var_290, loc_B398B1
  loc_B39923: LitI4 1
  loc_B39928: FLdPr Me
  loc_B3992B: MemLdRfVar from_stack_1.global_100
  loc_B3992E: FLdPr Me
  loc_B39931: MemLdStr global_96
  loc_B39934: LitI2_Byte 1
  loc_B39936: FnUBound
  loc_B39938: ForI4 var_2A0
  loc_B3993E: LitI4 1
  loc_B39943: FLdPr Me
  loc_B39946: MemLdRfVar from_stack_1.global_104
  loc_B39949: FLdPr Me
  loc_B3994C: MemLdStr global_100
  loc_B3994F: FLdPr Me
  loc_B39952: MemLdStr global_96
  loc_B39955: Ary1LdPr
  loc_B39956: MemLdStr global_24
  loc_B39959: LitI2_Byte 1
  loc_B3995B: FnUBound
  loc_B3995D: ForI4 var_2A8
  loc_B39963: LitI4 1
  loc_B39968: FLdPr Me
  loc_B3996B: MemLdRfVar from_stack_1.global_108
  loc_B3996E: FLdPr Me
  loc_B39971: MemLdStr global_104
  loc_B39974: FLdPr Me
  loc_B39977: MemLdStr global_100
  loc_B3997A: FLdPr Me
  loc_B3997D: MemLdStr global_96
  loc_B39980: Ary1LdPr
  loc_B39981: MemLdStr global_24
  loc_B39984: Ary1LdPr
  loc_B39985: MemLdStr global_20
  loc_B39988: LitI2_Byte 1
  loc_B3998A: FnUBound
  loc_B3998C: ForI4 var_2B0
  loc_B39992: LitI4 1
  loc_B39997: FLdPr Me
  loc_B3999A: MemLdStr global_108
  loc_B3999D: FLdPr Me
  loc_B399A0: MemLdStr global_104
  loc_B399A3: FLdPr Me
  loc_B399A6: MemLdStr global_100
  loc_B399A9: FLdPr Me
  loc_B399AC: MemLdStr global_96
  loc_B399AF: Ary1LdPr
  loc_B399B0: MemLdStr global_24
  loc_B399B3: Ary1LdPr
  loc_B399B4: MemLdStr global_20
  loc_B399B7: Ary1LdPr
  loc_B399B8: MemStI4 global_16
  loc_B399BB: FLdPr Me
  loc_B399BE: MemLdStr global_104
  loc_B399C1: FLdPr Me
  loc_B399C4: MemLdStr global_100
  loc_B399C7: FLdPr Me
  loc_B399CA: MemLdStr global_96
  loc_B399CD: Ary1LdPr
  loc_B399CE: MemLdStr global_24
  loc_B399D1: Ary1LdPr
  loc_B399D2: MemLdStr global_16
  loc_B399D5: FLdPr Me
  loc_B399D8: MemLdStr global_108
  loc_B399DB: FLdPr Me
  loc_B399DE: MemLdStr global_104
  loc_B399E1: FLdPr Me
  loc_B399E4: MemLdStr global_100
  loc_B399E7: FLdPr Me
  loc_B399EA: MemLdStr global_96
  loc_B399ED: Ary1LdPr
  loc_B399EE: MemLdStr global_24
  loc_B399F1: Ary1LdPr
  loc_B399F2: MemLdStr global_20
  loc_B399F5: Ary1LdPr
  loc_B399F6: MemLdStr global_16
  loc_B399F9: AddI4
  loc_B399FA: FLdPr Me
  loc_B399FD: MemLdStr global_104
  loc_B39A00: FLdPr Me
  loc_B39A03: MemLdStr global_100
  loc_B39A06: FLdPr Me
  loc_B39A09: MemLdStr global_96
  loc_B39A0C: Ary1LdPr
  loc_B39A0D: MemLdStr global_24
  loc_B39A10: Ary1LdPr
  loc_B39A11: MemStI4 global_16
  loc_B39A14: FLdPr Me
  loc_B39A17: MemLdRfVar from_stack_1.global_108
  loc_B39A1A: NextI4 var_2B0, loc_B39992
  loc_B39A1F: FLdPr Me
  loc_B39A22: MemLdStr global_104
  loc_B39A25: FLdPr Me
  loc_B39A28: MemLdStr global_100
  loc_B39A2B: FLdPr Me
  loc_B39A2E: MemLdStr global_96
  loc_B39A31: Ary1LdPr
  loc_B39A32: MemLdStr global_24
  loc_B39A35: Ary1LdPr
  loc_B39A36: MemLdStr global_16
  loc_B39A39: LitI4 1
  loc_B39A3E: AddI4
  loc_B39A3F: FLdPr Me
  loc_B39A42: MemLdStr global_104
  loc_B39A45: FLdPr Me
  loc_B39A48: MemLdStr global_100
  loc_B39A4B: FLdPr Me
  loc_B39A4E: MemLdStr global_96
  loc_B39A51: Ary1LdPr
  loc_B39A52: MemLdStr global_24
  loc_B39A55: Ary1LdPr
  loc_B39A56: MemStI4 global_16
  loc_B39A59: FLdPr Me
  loc_B39A5C: MemLdStr global_100
  loc_B39A5F: FLdPr Me
  loc_B39A62: MemLdStr global_96
  loc_B39A65: Ary1LdPr
  loc_B39A66: MemLdStr global_20
  loc_B39A69: FLdPr Me
  loc_B39A6C: MemLdStr global_104
  loc_B39A6F: FLdPr Me
  loc_B39A72: MemLdStr global_100
  loc_B39A75: FLdPr Me
  loc_B39A78: MemLdStr global_96
  loc_B39A7B: Ary1LdPr
  loc_B39A7C: MemLdStr global_24
  loc_B39A7F: Ary1LdPr
  loc_B39A80: MemLdStr global_16
  loc_B39A83: AddI4
  loc_B39A84: FLdPr Me
  loc_B39A87: MemLdStr global_100
  loc_B39A8A: FLdPr Me
  loc_B39A8D: MemLdStr global_96
  loc_B39A90: Ary1LdPr
  loc_B39A91: MemStI4 global_20
  loc_B39A94: FLdPr Me
  loc_B39A97: MemLdRfVar from_stack_1.global_104
  loc_B39A9A: NextI4 var_2A8, loc_B39963
  loc_B39A9F: FLdPr Me
  loc_B39AA2: MemLdStr global_100
  loc_B39AA5: FLdPr Me
  loc_B39AA8: MemLdStr global_96
  loc_B39AAB: Ary1LdPr
  loc_B39AAC: MemLdStr global_20
  loc_B39AAF: LitI4 1
  loc_B39AB4: AddI4
  loc_B39AB5: FLdPr Me
  loc_B39AB8: MemLdStr global_100
  loc_B39ABB: FLdPr Me
  loc_B39ABE: MemLdStr global_96
  loc_B39AC1: Ary1LdPr
  loc_B39AC2: MemStI4 global_20
  loc_B39AC5: FLdPr Me
  loc_B39AC8: MemLdRfVar from_stack_1.global_100
  loc_B39ACB: NextI4 var_2A0, loc_B3993E
  loc_B39AD0: LitI2_Byte &HFF
  loc_B39AD2: FLdPr Me
  loc_B39AD5: MemStI2 bGenerado
  loc_B39AD8: LitI4 0
  loc_B39ADD: CI2I4
  loc_B39ADE: FLdPr Me
  loc_B39AE1: Me.MousePointer = from_stack_1
  loc_B39AE6: LitVarStr var_A8, vbNullString
  loc_B39AEB: PopAdLdVar
  loc_B39AEC: FLdPr Me
  loc_B39AEF: VCallAd Control_ID_statusBar
  loc_B39AF2: FStAdFunc var_BC
  loc_B39AF5: FLdPr var_BC
  loc_B39AF8: LateIdSt
  loc_B39AFD: FFree1Ad var_BC
  loc_B39B00: ExitProcHresult
  loc_B39B01: LitI4 0
  loc_B39B06: LitStr "Error "
  loc_B39B09: FLdRfVar var_27C
  loc_B39B0C: ImpAdCallI2 Err 'rtcErrObj
  loc_B39B11: FStAdFunc var_BC
  loc_B39B14: FLdPr var_BC
  loc_B39B17:  = Err.Number
  loc_B39B1C: ILdRf var_27C
  loc_B39B1F: CStrI4
  loc_B39B21: FStStrNoPop var_D4
  loc_B39B24: ConcatStr
  loc_B39B25: FStStrNoPop var_EC
  loc_B39B28: LitStr ": "
  loc_B39B2B: ConcatStr
  loc_B39B2C: FStStrNoPop var_124
  loc_B39B2F: FLdRfVar var_F0
  loc_B39B32: ImpAdCallI2 Err 'rtcErrObj
  loc_B39B37: FStAdFunc var_D8
  loc_B39B3A: FLdPr var_D8
  loc_B39B3D:  = Err.Description
  loc_B39B42: ILdRf var_F0
  loc_B39B45: ConcatStr
  loc_B39B46: FStStrNoPop var_128
  loc_B39B49: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B39B4E: FFreeStr var_D4 = "": var_EC = "": var_124 = "": var_F0 = ""
  loc_B39B5B: FFreeAd var_BC = ""
  loc_B39B62: ExitProcHresult
  loc_B39B63: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'AE6FDC
  'Data Table: 4CC8C0
  loc_AE690C: FLdRfVar var_88
  loc_AE690F: LitI2_Byte 0
  loc_AE6911: LitI2_Byte &HFF
  loc_AE6913: ImpAdLdI4 MemVar_C3D83C
  loc_AE6916: FLdPr Me
  loc_AE6919: MemLdRfVar from_stack_1.global_76
  loc_AE691C: NewIfNullPr IFileSystem3
  loc_AE691F: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_AE6924: ILdRf var_88
  loc_AE6927: FLdPr Me
  loc_AE692A: MemStVarAd
  loc_AE692E: FFree1Ad var_88
  loc_AE6931: Call Proc_227_34_B20B08()
  loc_AE6936: LitI4 1
  loc_AE693B: FLdPr Me
  loc_AE693E: MemLdRfVar from_stack_1.global_100
  loc_AE6941: FLdPr Me
  loc_AE6944: MemLdStr global_96
  loc_AE6947: LitI2_Byte 1
  loc_AE6949: FnUBound
  loc_AE694B: ForI4 var_90
  loc_AE6951: LitVarStr var_A0, "    <tr valign=""top"" class=""LineaDato"">"
  loc_AE6956: PopAdLdVar
  loc_AE6957: FLdPr Me
  loc_AE695A: MemLdRfVar from_stack_1.global_80
  loc_AE695D: LdPrVar
  loc_AE695F: LateMemCall
  loc_AE6965: LitVarStr var_A0, "<th rowspan="
  loc_AE696A: LitI4 &H22
  loc_AE696F: FLdRfVar var_C0
  loc_AE6972: ImpAdCallFPR4  = Chr()
  loc_AE6977: FLdRfVar var_C0
  loc_AE697A: ConcatVar var_D0
  loc_AE697E: FLdPr Me
  loc_AE6981: MemLdStr global_100
  loc_AE6984: FLdPr Me
  loc_AE6987: MemLdStr global_96
  loc_AE698A: Ary1LdPr
  loc_AE698B: MemLdStr global_20
  loc_AE698E: CVarI4
  loc_AE6992: ConcatVar var_E0
  loc_AE6996: LitI4 &H22
  loc_AE699B: FLdRfVar var_F0
  loc_AE699E: ImpAdCallFPR4  = Chr()
  loc_AE69A3: FLdRfVar var_F0
  loc_AE69A6: ConcatVar var_100
  loc_AE69AA: LitVarStr var_110, " align=""center"" valign=""top"" class=""LineaDato"">"
  loc_AE69AF: ConcatVar var_120
  loc_AE69B3: FLdPr Me
  loc_AE69B6: MemLdStr global_100
  loc_AE69B9: FLdPr Me
  loc_AE69BC: MemLdStr global_96
  loc_AE69BF: Ary1LdPr
  loc_AE69C0: MemLdRfVar from_stack_1.global_0
  loc_AE69C3: LdFixedStr
  loc_AE69C6: CVarStr var_130
  loc_AE69C9: ConcatVar var_140
  loc_AE69CD: LitVarStr var_150, "<br>"
  loc_AE69D2: ConcatVar var_160
  loc_AE69D6: FLdPr Me
  loc_AE69D9: MemLdStr global_100
  loc_AE69DC: FLdPr Me
  loc_AE69DF: MemLdStr global_96
  loc_AE69E2: Ary1LdPr
  loc_AE69E3: MemLdStr global_16
  loc_AE69E6: CVarStr var_170
  loc_AE69E9: ConcatVar var_180
  loc_AE69ED: LitVarStr var_190, "</th>"
  loc_AE69F2: ConcatVar var_1A0
  loc_AE69F6: PopAdLdVar
  loc_AE69F7: FLdPr Me
  loc_AE69FA: MemLdRfVar from_stack_1.global_80
  loc_AE69FD: LdPrVar
  loc_AE69FF: LateMemCall
  loc_AE6A05: FFreeVar var_C0 = "": var_D0 = "": var_E0 = "": var_F0 = "": var_100 = "": var_120 = "": var_130 = "": var_140 = "": var_160 = "": var_180 = ""
  loc_AE6A1E: LitI4 1
  loc_AE6A23: FLdPr Me
  loc_AE6A26: MemLdRfVar from_stack_1.global_104
  loc_AE6A29: FLdPr Me
  loc_AE6A2C: MemLdStr global_100
  loc_AE6A2F: FLdPr Me
  loc_AE6A32: MemLdStr global_96
  loc_AE6A35: Ary1LdPr
  loc_AE6A36: MemLdStr global_24
  loc_AE6A39: LitI2_Byte 1
  loc_AE6A3B: FnUBound
  loc_AE6A3D: ForI4 var_1B8
  loc_AE6A43: FLdPr Me
  loc_AE6A46: MemLdStr global_104
  loc_AE6A49: LitI4 1
  loc_AE6A4E: GtI4
  loc_AE6A4F: BranchF loc_AE6A66
  loc_AE6A52: LitVarStr var_A0, "    <tr valign=""top"" class=""LineaDato"">"
  loc_AE6A57: PopAdLdVar
  loc_AE6A58: FLdPr Me
  loc_AE6A5B: MemLdRfVar from_stack_1.global_80
  loc_AE6A5E: LdPrVar
  loc_AE6A60: LateMemCall
  loc_AE6A66: LitVarStr var_A0, "<th rowspan="
  loc_AE6A6B: LitI4 &H22
  loc_AE6A70: FLdRfVar var_C0
  loc_AE6A73: ImpAdCallFPR4  = Chr()
  loc_AE6A78: FLdRfVar var_C0
  loc_AE6A7B: ConcatVar var_D0
  loc_AE6A7F: FLdPr Me
  loc_AE6A82: MemLdStr global_104
  loc_AE6A85: FLdPr Me
  loc_AE6A88: MemLdStr global_100
  loc_AE6A8B: FLdPr Me
  loc_AE6A8E: MemLdStr global_96
  loc_AE6A91: Ary1LdPr
  loc_AE6A92: MemLdStr global_24
  loc_AE6A95: Ary1LdPr
  loc_AE6A96: MemLdStr global_16
  loc_AE6A99: CVarI4
  loc_AE6A9D: ConcatVar var_E0
  loc_AE6AA1: LitI4 &H22
  loc_AE6AA6: FLdRfVar var_F0
  loc_AE6AA9: ImpAdCallFPR4  = Chr()
  loc_AE6AAE: FLdRfVar var_F0
  loc_AE6AB1: ConcatVar var_100
  loc_AE6AB5: LitVarStr var_110, " align=""center"" valign=""top"" class=""LineaDato"">"
  loc_AE6ABA: ConcatVar var_120
  loc_AE6ABE: FLdPr Me
  loc_AE6AC1: MemLdStr global_104
  loc_AE6AC4: FLdPr Me
  loc_AE6AC7: MemLdStr global_100
  loc_AE6ACA: FLdPr Me
  loc_AE6ACD: MemLdStr global_96
  loc_AE6AD0: Ary1LdPr
  loc_AE6AD1: MemLdStr global_24
  loc_AE6AD4: Ary1LdPr
  loc_AE6AD5: MemLdRfVar from_stack_1.global_0
  loc_AE6AD8: LdFixedStr
  loc_AE6ADB: CVarStr var_130
  loc_AE6ADE: ConcatVar var_140
  loc_AE6AE2: LitVarStr var_150, "<br>"
  loc_AE6AE7: ConcatVar var_160
  loc_AE6AEB: FLdPr Me
  loc_AE6AEE: MemLdStr global_104
  loc_AE6AF1: FLdPr Me
  loc_AE6AF4: MemLdStr global_100
  loc_AE6AF7: FLdPr Me
  loc_AE6AFA: MemLdStr global_96
  loc_AE6AFD: Ary1LdPr
  loc_AE6AFE: MemLdStr global_24
  loc_AE6B01: Ary1LdPr
  loc_AE6B02: MemLdStr global_12
  loc_AE6B05: CVarStr var_170
  loc_AE6B08: ConcatVar var_180
  loc_AE6B0C: LitVarStr var_190, "</th>"
  loc_AE6B11: ConcatVar var_1A0
  loc_AE6B15: PopAdLdVar
  loc_AE6B16: FLdPr Me
  loc_AE6B19: MemLdRfVar from_stack_1.global_80
  loc_AE6B1C: LdPrVar
  loc_AE6B1E: LateMemCall
  loc_AE6B24: FFreeVar var_C0 = "": var_D0 = "": var_E0 = "": var_F0 = "": var_100 = "": var_120 = "": var_130 = "": var_140 = "": var_160 = "": var_180 = ""
  loc_AE6B3D: LitI4 1
  loc_AE6B42: FLdPr Me
  loc_AE6B45: MemLdRfVar from_stack_1.global_108
  loc_AE6B48: FLdPr Me
  loc_AE6B4B: MemLdStr global_104
  loc_AE6B4E: FLdPr Me
  loc_AE6B51: MemLdStr global_100
  loc_AE6B54: FLdPr Me
  loc_AE6B57: MemLdStr global_96
  loc_AE6B5A: Ary1LdPr
  loc_AE6B5B: MemLdStr global_24
  loc_AE6B5E: Ary1LdPr
  loc_AE6B5F: MemLdStr global_20
  loc_AE6B62: LitI2_Byte 1
  loc_AE6B64: FnUBound
  loc_AE6B66: ForI4 var_1C0
  loc_AE6B6C: FLdPr Me
  loc_AE6B6F: MemLdStr global_108
  loc_AE6B72: LitI4 1
  loc_AE6B77: GtI4
  loc_AE6B78: BranchF loc_AE6B8F
  loc_AE6B7B: LitVarStr var_A0, "    <tr valign=""top"" class=""LineaDato"">"
  loc_AE6B80: PopAdLdVar
  loc_AE6B81: FLdPr Me
  loc_AE6B84: MemLdRfVar from_stack_1.global_80
  loc_AE6B87: LdPrVar
  loc_AE6B89: LateMemCall
  loc_AE6B8F: LitStr "<th align=""center"" valign=""top"" class=""LineaDato"">"
  loc_AE6B92: FLdPr Me
  loc_AE6B95: MemLdStr global_108
  loc_AE6B98: FLdPr Me
  loc_AE6B9B: MemLdStr global_104
  loc_AE6B9E: FLdPr Me
  loc_AE6BA1: MemLdStr global_100
  loc_AE6BA4: FLdPr Me
  loc_AE6BA7: MemLdStr global_96
  loc_AE6BAA: Ary1LdPr
  loc_AE6BAB: MemLdStr global_24
  loc_AE6BAE: Ary1LdPr
  loc_AE6BAF: MemLdStr global_20
  loc_AE6BB2: Ary1LdPr
  loc_AE6BB3: MemLdRfVar from_stack_1.global_0
  loc_AE6BB6: LdFixedStr
  loc_AE6BB9: FStStrNoPop var_1C4
  loc_AE6BBC: ConcatStr
  loc_AE6BBD: FStStrNoPop var_1C8
  loc_AE6BC0: LitStr "<br>"
  loc_AE6BC3: ConcatStr
  loc_AE6BC4: FStStrNoPop var_1CC
  loc_AE6BC7: FLdPr Me
  loc_AE6BCA: MemLdStr global_108
  loc_AE6BCD: FLdPr Me
  loc_AE6BD0: MemLdStr global_104
  loc_AE6BD3: FLdPr Me
  loc_AE6BD6: MemLdStr global_100
  loc_AE6BD9: FLdPr Me
  loc_AE6BDC: MemLdStr global_96
  loc_AE6BDF: Ary1LdPr
  loc_AE6BE0: MemLdStr global_24
  loc_AE6BE3: Ary1LdPr
  loc_AE6BE4: MemLdStr global_20
  loc_AE6BE7: Ary1LdPr
  loc_AE6BE8: MemLdStr global_12
  loc_AE6BEB: ConcatStr
  loc_AE6BEC: FStStrNoPop var_1D0
  loc_AE6BEF: LitStr "</th>"
  loc_AE6BF2: ConcatStr
  loc_AE6BF3: CVarStr var_C0
  loc_AE6BF6: PopAdLdVar
  loc_AE6BF7: FLdPr Me
  loc_AE6BFA: MemLdRfVar from_stack_1.global_80
  loc_AE6BFD: LdPrVar
  loc_AE6BFF: LateMemCall
  loc_AE6C05: FFreeStr var_1C4 = "": var_1C8 = "": var_1CC = ""
  loc_AE6C10: FFree1Var var_C0 = ""
  loc_AE6C13: LitStr "    <th colspan=""1"" align=""left"" class=""LineaDato"">Subtotales ("
  loc_AE6C16: FLdPr Me
  loc_AE6C19: MemLdStr global_100
  loc_AE6C1C: FLdPr Me
  loc_AE6C1F: MemLdStr global_96
  loc_AE6C22: Ary1LdPr
  loc_AE6C23: MemLdRfVar from_stack_1.global_0
  loc_AE6C26: LdFixedStr
  loc_AE6C29: FStStrNoPop var_1C4
  loc_AE6C2C: ConcatStr
  loc_AE6C2D: FStStrNoPop var_1C8
  loc_AE6C30: LitStr " - "
  loc_AE6C33: ConcatStr
  loc_AE6C34: FStStrNoPop var_1CC
  loc_AE6C37: FLdPr Me
  loc_AE6C3A: MemLdStr global_104
  loc_AE6C3D: FLdPr Me
  loc_AE6C40: MemLdStr global_100
  loc_AE6C43: FLdPr Me
  loc_AE6C46: MemLdStr global_96
  loc_AE6C49: Ary1LdPr
  loc_AE6C4A: MemLdStr global_24
  loc_AE6C4D: Ary1LdPr
  loc_AE6C4E: MemLdRfVar from_stack_1.global_0
  loc_AE6C51: LdFixedStr
  loc_AE6C54: FStStrNoPop var_1D0
  loc_AE6C57: ConcatStr
  loc_AE6C58: FStStrNoPop var_1D4
  loc_AE6C5B: LitStr " - "
  loc_AE6C5E: ConcatStr
  loc_AE6C5F: FStStrNoPop var_1D8
  loc_AE6C62: FLdPr Me
  loc_AE6C65: MemLdStr global_108
  loc_AE6C68: FLdPr Me
  loc_AE6C6B: MemLdStr global_104
  loc_AE6C6E: FLdPr Me
  loc_AE6C71: MemLdStr global_100
  loc_AE6C74: FLdPr Me
  loc_AE6C77: MemLdStr global_96
  loc_AE6C7A: Ary1LdPr
  loc_AE6C7B: MemLdStr global_24
  loc_AE6C7E: Ary1LdPr
  loc_AE6C7F: MemLdStr global_20
  loc_AE6C82: Ary1LdPr
  loc_AE6C83: MemLdRfVar from_stack_1.global_0
  loc_AE6C86: LdFixedStr
  loc_AE6C89: FStStrNoPop var_1DC
  loc_AE6C8C: ConcatStr
  loc_AE6C8D: FStStrNoPop var_1E0
  loc_AE6C90: LitStr ")</th>"
  loc_AE6C93: ConcatStr
  loc_AE6C94: CVarStr var_C0
  loc_AE6C97: PopAdLdVar
  loc_AE6C98: FLdPr Me
  loc_AE6C9B: MemLdRfVar from_stack_1.global_80
  loc_AE6C9E: LdPrVar
  loc_AE6CA0: LateMemCall
  loc_AE6CA6: FFreeStr var_1C4 = "": var_1C8 = "": var_1CC = "": var_1D0 = "": var_1D4 = "": var_1D8 = "": var_1DC = ""
  loc_AE6CB9: FFree1Var var_C0 = ""
  loc_AE6CBC: LitI2_Byte 1
  loc_AE6CBE: FLdPr Me
  loc_AE6CC1: MemLdRfVar from_stack_1.global_116
  loc_AE6CC4: LitI2_Byte 5
  loc_AE6CC6: ForI2 var_1E4
  loc_AE6CCC: LitStr "    <th align=""right"" class=""Totales"">"
  loc_AE6CCF: FLdPr Me
  loc_AE6CD2: MemLdI2 global_116
  loc_AE6CD5: CI4UI1
  loc_AE6CD6: FLdPr Me
  loc_AE6CD9: MemLdStr global_108
  loc_AE6CDC: FLdPr Me
  loc_AE6CDF: MemLdStr global_104
  loc_AE6CE2: FLdPr Me
  loc_AE6CE5: MemLdStr global_100
  loc_AE6CE8: FLdPr Me
  loc_AE6CEB: MemLdStr global_96
  loc_AE6CEE: Ary1LdPr
  loc_AE6CEF: MemLdStr global_24
  loc_AE6CF2: Ary1LdPr
  loc_AE6CF3: MemLdStr global_20
  loc_AE6CF6: Ary1LdPr
  loc_AE6CF7: MemLdRfVar from_stack_1.global_24
  loc_AE6CFA: AryInRecLdPr
  loc_AE6D00: MemLdStr global_0
  loc_AE6D03: ConcatStr
  loc_AE6D04: FStStrNoPop var_1C4
  loc_AE6D07: LitStr "</th>"
  loc_AE6D0A: ConcatStr
  loc_AE6D0B: CVarStr var_C0
  loc_AE6D0E: PopAdLdVar
  loc_AE6D0F: FLdPr Me
  loc_AE6D12: MemLdRfVar from_stack_1.global_80
  loc_AE6D15: LdPrVar
  loc_AE6D17: LateMemCall
  loc_AE6D1D: FFree1Str var_1C4
  loc_AE6D20: FFree1Var var_C0 = ""
  loc_AE6D23: FLdPr Me
  loc_AE6D26: MemLdRfVar from_stack_1.global_116
  loc_AE6D29: NextI2 var_1E4, loc_AE6CCC
  loc_AE6D2E: LitVarStr var_A0, "  </tr>"
  loc_AE6D33: PopAdLdVar
  loc_AE6D34: FLdPr Me
  loc_AE6D37: MemLdRfVar from_stack_1.global_80
  loc_AE6D3A: LdPrVar
  loc_AE6D3C: LateMemCall
  loc_AE6D42: FLdPr Me
  loc_AE6D45: MemLdRfVar from_stack_1.global_108
  loc_AE6D48: NextI4 var_1C0, loc_AE6B6C
  loc_AE6D4D: LitStr "    <th colspan=""2"" align=""left"" class=""LineaDato"">Subtotales ("
  loc_AE6D50: FLdPr Me
  loc_AE6D53: MemLdStr global_100
  loc_AE6D56: FLdPr Me
  loc_AE6D59: MemLdStr global_96
  loc_AE6D5C: Ary1LdPr
  loc_AE6D5D: MemLdRfVar from_stack_1.global_0
  loc_AE6D60: LdFixedStr
  loc_AE6D63: FStStrNoPop var_1C4
  loc_AE6D66: ConcatStr
  loc_AE6D67: FStStrNoPop var_1C8
  loc_AE6D6A: LitStr " - "
  loc_AE6D6D: ConcatStr
  loc_AE6D6E: FStStrNoPop var_1CC
  loc_AE6D71: FLdPr Me
  loc_AE6D74: MemLdStr global_104
  loc_AE6D77: FLdPr Me
  loc_AE6D7A: MemLdStr global_100
  loc_AE6D7D: FLdPr Me
  loc_AE6D80: MemLdStr global_96
  loc_AE6D83: Ary1LdPr
  loc_AE6D84: MemLdStr global_24
  loc_AE6D87: Ary1LdPr
  loc_AE6D88: MemLdRfVar from_stack_1.global_0
  loc_AE6D8B: LdFixedStr
  loc_AE6D8E: FStStrNoPop var_1D0
  loc_AE6D91: ConcatStr
  loc_AE6D92: FStStrNoPop var_1D4
  loc_AE6D95: LitStr ")</th>"
  loc_AE6D98: ConcatStr
  loc_AE6D99: CVarStr var_C0
  loc_AE6D9C: PopAdLdVar
  loc_AE6D9D: FLdPr Me
  loc_AE6DA0: MemLdRfVar from_stack_1.global_80
  loc_AE6DA3: LdPrVar
  loc_AE6DA5: LateMemCall
  loc_AE6DAB: FFreeStr var_1C4 = "": var_1C8 = "": var_1CC = "": var_1D0 = ""
  loc_AE6DB8: FFree1Var var_C0 = ""
  loc_AE6DBB: LitI2_Byte 1
  loc_AE6DBD: FLdPr Me
  loc_AE6DC0: MemLdRfVar from_stack_1.global_116
  loc_AE6DC3: LitI2_Byte 5
  loc_AE6DC5: ForI2 var_1E8
  loc_AE6DCB: LitStr "    <th align=""right"" class=""Totales"">"
  loc_AE6DCE: FLdPr Me
  loc_AE6DD1: MemLdI2 global_116
  loc_AE6DD4: CI4UI1
  loc_AE6DD5: FLdPr Me
  loc_AE6DD8: MemLdStr global_104
  loc_AE6DDB: FLdPr Me
  loc_AE6DDE: MemLdStr global_100
  loc_AE6DE1: FLdPr Me
  loc_AE6DE4: MemLdStr global_96
  loc_AE6DE7: Ary1LdPr
  loc_AE6DE8: MemLdStr global_24
  loc_AE6DEB: Ary1LdPr
  loc_AE6DEC: MemLdRfVar from_stack_1.global_24
  loc_AE6DEF: AryInRecLdPr
  loc_AE6DF5: MemLdStr global_0
  loc_AE6DF8: ConcatStr
  loc_AE6DF9: FStStrNoPop var_1C4
  loc_AE6DFC: LitStr "</th>"
  loc_AE6DFF: ConcatStr
  loc_AE6E00: CVarStr var_C0
  loc_AE6E03: PopAdLdVar
  loc_AE6E04: FLdPr Me
  loc_AE6E07: MemLdRfVar from_stack_1.global_80
  loc_AE6E0A: LdPrVar
  loc_AE6E0C: LateMemCall
  loc_AE6E12: FFree1Str var_1C4
  loc_AE6E15: FFree1Var var_C0 = ""
  loc_AE6E18: FLdPr Me
  loc_AE6E1B: MemLdRfVar from_stack_1.global_116
  loc_AE6E1E: NextI2 var_1E8, loc_AE6DCB
  loc_AE6E23: LitVarStr var_A0, "  </tr>"
  loc_AE6E28: PopAdLdVar
  loc_AE6E29: FLdPr Me
  loc_AE6E2C: MemLdRfVar from_stack_1.global_80
  loc_AE6E2F: LdPrVar
  loc_AE6E31: LateMemCall
  loc_AE6E37: FLdPr Me
  loc_AE6E3A: MemLdRfVar from_stack_1.global_104
  loc_AE6E3D: NextI4 var_1B8, loc_AE6A43
  loc_AE6E42: LitStr "    <th colspan=""3"" align=""left"" class=""LineaDato"">Subtotales ("
  loc_AE6E45: FLdPr Me
  loc_AE6E48: MemLdStr global_100
  loc_AE6E4B: FLdPr Me
  loc_AE6E4E: MemLdStr global_96
  loc_AE6E51: Ary1LdPr
  loc_AE6E52: MemLdRfVar from_stack_1.global_0
  loc_AE6E55: LdFixedStr
  loc_AE6E58: FStStrNoPop var_1C4
  loc_AE6E5B: ConcatStr
  loc_AE6E5C: FStStrNoPop var_1C8
  loc_AE6E5F: LitStr ")</th>"
  loc_AE6E62: ConcatStr
  loc_AE6E63: CVarStr var_C0
  loc_AE6E66: PopAdLdVar
  loc_AE6E67: FLdPr Me
  loc_AE6E6A: MemLdRfVar from_stack_1.global_80
  loc_AE6E6D: LdPrVar
  loc_AE6E6F: LateMemCall
  loc_AE6E75: FFreeStr var_1C4 = ""
  loc_AE6E7C: FFree1Var var_C0 = ""
  loc_AE6E7F: LitI2_Byte 1
  loc_AE6E81: FLdPr Me
  loc_AE6E84: MemLdRfVar from_stack_1.global_116
  loc_AE6E87: LitI2_Byte 5
  loc_AE6E89: ForI2 var_1EC
  loc_AE6E8F: LitStr "    <th align=""right"" class=""Totales"">"
  loc_AE6E92: FLdPr Me
  loc_AE6E95: MemLdI2 global_116
  loc_AE6E98: CI4UI1
  loc_AE6E99: FLdPr Me
  loc_AE6E9C: MemLdStr global_100
  loc_AE6E9F: FLdPr Me
  loc_AE6EA2: MemLdStr global_96
  loc_AE6EA5: Ary1LdPr
  loc_AE6EA6: MemLdRfVar from_stack_1.global_28
  loc_AE6EA9: AryInRecLdPr
  loc_AE6EAF: MemLdStr global_0
  loc_AE6EB2: ConcatStr
  loc_AE6EB3: FStStrNoPop var_1C4
  loc_AE6EB6: LitStr "</th>"
  loc_AE6EB9: ConcatStr
  loc_AE6EBA: CVarStr var_C0
  loc_AE6EBD: PopAdLdVar
  loc_AE6EBE: FLdPr Me
  loc_AE6EC1: MemLdRfVar from_stack_1.global_80
  loc_AE6EC4: LdPrVar
  loc_AE6EC6: LateMemCall
  loc_AE6ECC: FFree1Str var_1C4
  loc_AE6ECF: FFree1Var var_C0 = ""
  loc_AE6ED2: FLdPr Me
  loc_AE6ED5: MemLdRfVar from_stack_1.global_116
  loc_AE6ED8: NextI2 var_1EC, loc_AE6E8F
  loc_AE6EDD: LitVarStr var_A0, "  </tr>"
  loc_AE6EE2: PopAdLdVar
  loc_AE6EE3: FLdPr Me
  loc_AE6EE6: MemLdRfVar from_stack_1.global_80
  loc_AE6EE9: LdPrVar
  loc_AE6EEB: LateMemCall
  loc_AE6EF1: FLdPr Me
  loc_AE6EF4: MemLdRfVar from_stack_1.global_100
  loc_AE6EF7: NextI4 var_90, loc_AE6951
  loc_AE6EFC: LitVarStr var_A0, "    <tr valign=""top"" class=""LineaDato"">"
  loc_AE6F01: PopAdLdVar
  loc_AE6F02: FLdPr Me
  loc_AE6F05: MemLdRfVar from_stack_1.global_80
  loc_AE6F08: LdPrVar
  loc_AE6F0A: LateMemCall
  loc_AE6F10: LitVarStr var_A0, "    <th colspan=""9"" class=""Encabezado"">&nbsp;</th>"
  loc_AE6F15: PopAdLdVar
  loc_AE6F16: FLdPr Me
  loc_AE6F19: MemLdRfVar from_stack_1.global_80
  loc_AE6F1C: LdPrVar
  loc_AE6F1E: LateMemCall
  loc_AE6F24: LitVarStr var_A0, "  </tr>"
  loc_AE6F29: PopAdLdVar
  loc_AE6F2A: FLdPr Me
  loc_AE6F2D: MemLdRfVar from_stack_1.global_80
  loc_AE6F30: LdPrVar
  loc_AE6F32: LateMemCall
  loc_AE6F38: LitVarStr var_A0, "  <tr class=""LineaDato"">"
  loc_AE6F3D: PopAdLdVar
  loc_AE6F3E: FLdPr Me
  loc_AE6F41: MemLdRfVar from_stack_1.global_80
  loc_AE6F44: LdPrVar
  loc_AE6F46: LateMemCall
  loc_AE6F4C: LitVarStr var_A0, "    <th colspan=""4"" align=""right"" class=""Titulo2"">TOTALES:</th>"
  loc_AE6F51: PopAdLdVar
  loc_AE6F52: FLdPr Me
  loc_AE6F55: MemLdRfVar from_stack_1.global_80
  loc_AE6F58: LdPrVar
  loc_AE6F5A: LateMemCall
  loc_AE6F60: LitI2_Byte 1
  loc_AE6F62: FLdPr Me
  loc_AE6F65: MemLdRfVar from_stack_1.global_116
  loc_AE6F68: LitI2_Byte 5
  loc_AE6F6A: ForI2 var_1F0
  loc_AE6F70: LitStr "    <th align=""right"" class=""Totales"">"
  loc_AE6F73: FLdPr Me
  loc_AE6F76: MemLdI2 global_116
  loc_AE6F79: CI4UI1
  loc_AE6F7A: FLdPr Me
  loc_AE6F7D: MemLdStr global_124
  loc_AE6F80: Ary1LdI4
  loc_AE6F81: ConcatStr
  loc_AE6F82: FStStrNoPop var_1C4
  loc_AE6F85: LitStr "</th>"
  loc_AE6F88: ConcatStr
  loc_AE6F89: CVarStr var_C0
  loc_AE6F8C: PopAdLdVar
  loc_AE6F8D: FLdPr Me
  loc_AE6F90: MemLdRfVar from_stack_1.global_80
  loc_AE6F93: LdPrVar
  loc_AE6F95: LateMemCall
  loc_AE6F9B: FFree1Str var_1C4
  loc_AE6F9E: FFree1Var var_C0 = ""
  loc_AE6FA1: FLdPr Me
  loc_AE6FA4: MemLdRfVar from_stack_1.global_116
  loc_AE6FA7: NextI2 var_1F0, loc_AE6F70
  loc_AE6FAC: LitVarStr var_A0, "  </tr>"
  loc_AE6FB1: PopAdLdVar
  loc_AE6FB2: FLdPr Me
  loc_AE6FB5: MemLdRfVar from_stack_1.global_80
  loc_AE6FB8: LdPrVar
  loc_AE6FBA: LateMemCall
  loc_AE6FC0: Call Proc_227_35_983260()
  loc_AE6FC5: FLdPr Me
  loc_AE6FC8: MemLdRfVar from_stack_1.global_80
  loc_AE6FCB: LdPrVar
  loc_AE6FCD: LateMemCall
  loc_AE6FD3: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_AE6FD8: ExitProcHresult
End Sub

Private Function Proc_227_32_B4DED0(arg_C) 'B4DED0
  'Data Table: 4CC8C0
  loc_B4D420: ILdRf arg_C
  loc_B4D423: LitI4 1
  loc_B4D428: EqI4
  loc_B4D429: BranchF loc_B4D947
  loc_B4D42C: FLdPr Me
  loc_B4D42F: MemLdStr global_100
  loc_B4D432: LitI4 0
  loc_B4D437: EqI4
  loc_B4D438: BranchF loc_B4D43E
  loc_B4D43B: Branch loc_B4D58A
  loc_B4D43E: LitI4 1
  loc_B4D443: FLdRfVar var_8C
  loc_B4D446: FLdPr Me
  loc_B4D449: MemLdStr global_108
  loc_B4D44C: ForI4 var_94
  loc_B4D452: LitI2_Byte 1
  loc_B4D454: FLdPr Me
  loc_B4D457: MemLdRfVar from_stack_1.global_116
  loc_B4D45A: LitI2_Byte 5
  loc_B4D45C: ForI2 var_98
  loc_B4D462: LitI2_Byte 0
  loc_B4D464: FLdPr Me
  loc_B4D467: MemLdI2 global_116
  loc_B4D46A: CI4UI1
  loc_B4D46B: FLdPr Me
  loc_B4D46E: MemLdStr global_104
  loc_B4D471: FLdPr Me
  loc_B4D474: MemLdStr global_100
  loc_B4D477: FLdPr Me
  loc_B4D47A: MemLdStr global_96
  loc_B4D47D: AryLock
  loc_B4D480: Ary1LdPr
  loc_B4D481: MemLdStr global_24
  loc_B4D484: AryLock
  loc_B4D487: Ary1LdPr
  loc_B4D488: MemLdRfVar from_stack_1.global_24
  loc_B4D48B: AryInRecLdRf
  loc_B4D491: CVarRef
  loc_B4D496: LitI2_Byte &HFF
  loc_B4D498: FLdPr Me
  loc_B4D49B: MemLdI2 global_116
  loc_B4D49E: CI4UI1
  loc_B4D49F: ILdRf var_8C
  loc_B4D4A2: FLdPr Me
  loc_B4D4A5: MemLdStr global_104
  loc_B4D4A8: FLdPr Me
  loc_B4D4AB: MemLdStr global_100
  loc_B4D4AE: FLdPr Me
  loc_B4D4B1: MemLdStr global_96
  loc_B4D4B4: Ary1LdPr
  loc_B4D4B5: MemLdStr global_24
  loc_B4D4B8: Ary1LdPr
  loc_B4D4B9: MemLdStr global_20
  loc_B4D4BC: Ary1LdPr
  loc_B4D4BD: MemLdRfVar from_stack_1.global_24
  loc_B4D4C0: AryInRecLdPr
  loc_B4D4C6: MemLdStr global_0
  loc_B4D4C9: CVarStr var_A8
  loc_B4D4CC: PopAdLdVar
  loc_B4D4CD: FLdPr Me
  loc_B4D4D0: MemLdRfVar from_stack_1.global_120
  loc_B4D4D3: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B4D4D8: AryUnlock
  loc_B4D4DB: AryUnlock
  loc_B4D4DE: FLdPr Me
  loc_B4D4E1: MemLdRfVar from_stack_1.global_116
  loc_B4D4E4: NextI2 var_98, loc_B4D462
  loc_B4D4E9: FLdRfVar var_8C
  loc_B4D4EC: NextI4 var_94, loc_B4D452
  loc_B4D4F1: LitI4 1
  loc_B4D4F6: FLdRfVar var_8C
  loc_B4D4F9: FLdPr Me
  loc_B4D4FC: MemLdStr global_104
  loc_B4D4FF: ForI4 var_C8
  loc_B4D505: LitI2_Byte 1
  loc_B4D507: FLdPr Me
  loc_B4D50A: MemLdRfVar from_stack_1.global_116
  loc_B4D50D: LitI2_Byte 5
  loc_B4D50F: ForI2 var_CC
  loc_B4D515: LitI2_Byte 0
  loc_B4D517: FLdPr Me
  loc_B4D51A: MemLdI2 global_116
  loc_B4D51D: CI4UI1
  loc_B4D51E: FLdPr Me
  loc_B4D521: MemLdStr global_100
  loc_B4D524: FLdPr Me
  loc_B4D527: MemLdStr global_96
  loc_B4D52A: AryLock
  loc_B4D52D: Ary1LdPr
  loc_B4D52E: MemLdRfVar from_stack_1.global_28
  loc_B4D531: AryInRecLdRf
  loc_B4D537: CVarRef
  loc_B4D53C: LitI2_Byte &HFF
  loc_B4D53E: FLdPr Me
  loc_B4D541: MemLdI2 global_116
  loc_B4D544: CI4UI1
  loc_B4D545: ILdRf var_8C
  loc_B4D548: FLdPr Me
  loc_B4D54B: MemLdStr global_100
  loc_B4D54E: FLdPr Me
  loc_B4D551: MemLdStr global_96
  loc_B4D554: Ary1LdPr
  loc_B4D555: MemLdStr global_24
  loc_B4D558: Ary1LdPr
  loc_B4D559: MemLdRfVar from_stack_1.global_24
  loc_B4D55C: AryInRecLdPr
  loc_B4D562: MemLdStr global_0
  loc_B4D565: CVarStr var_A8
  loc_B4D568: PopAdLdVar
  loc_B4D569: FLdPr Me
  loc_B4D56C: MemLdRfVar from_stack_1.global_120
  loc_B4D56F: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B4D574: AryUnlock
  loc_B4D577: FLdPr Me
  loc_B4D57A: MemLdRfVar from_stack_1.global_116
  loc_B4D57D: NextI2 var_CC, loc_B4D515
  loc_B4D582: FLdRfVar var_8C
  loc_B4D585: NextI4 var_C8, loc_B4D505
  loc_B4D58A: FLdPr Me
  loc_B4D58D: MemLdStr global_100
  loc_B4D590: LitI4 1
  loc_B4D595: AddI4
  loc_B4D596: FLdPr Me
  loc_B4D599: MemStI4 global_100
  loc_B4D59C: LitI4 1
  loc_B4D5A1: FLdPr Me
  loc_B4D5A4: MemStI4 global_104
  loc_B4D5A7: LitI4 1
  loc_B4D5AC: FLdPr Me
  loc_B4D5AF: MemStI4 global_108
  loc_B4D5B2: LitI4 1
  loc_B4D5B7: FLdPr Me
  loc_B4D5BA: MemStI4 global_112
  loc_B4D5BD: LitI4 0
  loc_B4D5C2: FLdPr Me
  loc_B4D5C5: MemLdStr global_100
  loc_B4D5C8: FLdPr Me
  loc_B4D5CB: MemLdRfVar from_stack_1.global_96
  loc_B4D5CE: RedimPreserve
  loc_B4D5D8: FLdRfVar var_D8
  loc_B4D5DB: LitVarStr var_A8, "CodiPart"
  loc_B4D5E0: PopAdLdVar
  loc_B4D5E1: FLdRfVar var_D4
  loc_B4D5E4: FLdRfVar var_D0
  loc_B4D5E7: FLdPr Me
  loc_B4D5EA: MemLdRfVar from_stack_1.global_60
  loc_B4D5ED: NewIfNullPr clsimputacion
  loc_B4D5F0: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B4D5F5: FLdPr var_D0
  loc_B4D5F8:  = Me.Fields
  loc_B4D5FD: FLdPr var_D4
  loc_B4D600: from_stack_2 = Me.Item(from_stack_1)
  loc_B4D605: LitI2_Byte 0
  loc_B4D607: LitVar_Missing var_FC
  loc_B4D60A: LitI2_Byte 0
  loc_B4D60C: FLdZeroAd var_D8
  loc_B4D60F: CVarAd
  loc_B4D613: PopAdLdVar
  loc_B4D614: FLdPr Me
  loc_B4D617: MemLdStr global_100
  loc_B4D61A: FLdPr Me
  loc_B4D61D: MemLdStr global_96
  loc_B4D620: Ary1LdPr
  loc_B4D621: MemLdRfVar from_stack_1.global_0
  loc_B4D624: LdFixedStr
  loc_B4D627: PopTmpLdAdStr
  loc_B4D62B: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B4D630: ILdRf var_DC
  loc_B4D633: FLdPr Me
  loc_B4D636: MemLdStr global_100
  loc_B4D639: FLdPr Me
  loc_B4D63C: MemLdStr global_96
  loc_B4D63F: Ary1LdPr
  loc_B4D640: MemLdRfVar from_stack_1.global_0
  loc_B4D643: StFixedStr
  loc_B4D646: FFree1Str var_DC
  loc_B4D649: FFreeAd var_D0 = ""
  loc_B4D650: FFreeVar var_EC = ""
  loc_B4D657: FLdRfVar var_D8
  loc_B4D65A: LitVarStr var_A8, "DetaPart"
  loc_B4D65F: PopAdLdVar
  loc_B4D660: FLdRfVar var_D4
  loc_B4D663: FLdRfVar var_D0
  loc_B4D666: FLdPr Me
  loc_B4D669: MemLdRfVar from_stack_1.global_60
  loc_B4D66C: NewIfNullPr clsimputacion
  loc_B4D66F: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B4D674: FLdPr var_D0
  loc_B4D677:  = Me.Fields
  loc_B4D67C: FLdPr var_D4
  loc_B4D67F: from_stack_2 = Me.Item(from_stack_1)
  loc_B4D684: LitI2_Byte 0
  loc_B4D686: LitVar_Missing var_FC
  loc_B4D689: LitI2_Byte 0
  loc_B4D68B: FLdZeroAd var_D8
  loc_B4D68E: CVarAd
  loc_B4D692: PopAdLdVar
  loc_B4D693: FLdPr Me
  loc_B4D696: MemLdStr global_100
  loc_B4D699: FLdPr Me
  loc_B4D69C: MemLdStr global_96
  loc_B4D69F: AryLock
  loc_B4D6A2: Ary1LdPr
  loc_B4D6A3: MemLdRfVar from_stack_1.global_16
  loc_B4D6A6: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B4D6AB: AryUnlock
  loc_B4D6AE: FFreeAd var_D0 = ""
  loc_B4D6B5: FFreeVar var_EC = ""
  loc_B4D6BC: LitI4 0
  loc_B4D6C1: FLdPr Me
  loc_B4D6C4: MemLdStr global_104
  loc_B4D6C7: FLdPr Me
  loc_B4D6CA: MemLdStr global_100
  loc_B4D6CD: FLdPr Me
  loc_B4D6D0: MemLdStr global_96
  loc_B4D6D3: Ary1LdPr
  loc_B4D6D4: MemLdRfVar from_stack_1.global_24
  loc_B4D6D7: RedimPreserve
  loc_B4D6E1: FLdRfVar var_D8
  loc_B4D6E4: LitVarStr var_A8, "CodiOrga"
  loc_B4D6E9: PopAdLdVar
  loc_B4D6EA: FLdRfVar var_D4
  loc_B4D6ED: FLdRfVar var_D0
  loc_B4D6F0: FLdPr Me
  loc_B4D6F3: MemLdRfVar from_stack_1.global_60
  loc_B4D6F6: NewIfNullPr clsimputacion
  loc_B4D6F9: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B4D6FE: FLdPr var_D0
  loc_B4D701:  = Me.Fields
  loc_B4D706: FLdPr var_D4
  loc_B4D709: from_stack_2 = Me.Item(from_stack_1)
  loc_B4D70E: LitI2_Byte 0
  loc_B4D710: LitVar_Missing var_FC
  loc_B4D713: LitI2_Byte 0
  loc_B4D715: FLdZeroAd var_D8
  loc_B4D718: CVarAd
  loc_B4D71C: PopAdLdVar
  loc_B4D71D: FLdPr Me
  loc_B4D720: MemLdStr global_104
  loc_B4D723: FLdPr Me
  loc_B4D726: MemLdStr global_100
  loc_B4D729: FLdPr Me
  loc_B4D72C: MemLdStr global_96
  loc_B4D72F: Ary1LdPr
  loc_B4D730: MemLdStr global_24
  loc_B4D733: Ary1LdPr
  loc_B4D734: MemLdRfVar from_stack_1.global_0
  loc_B4D737: LdFixedStr
  loc_B4D73A: PopTmpLdAdStr
  loc_B4D73E: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B4D743: ILdRf var_DC
  loc_B4D746: FLdPr Me
  loc_B4D749: MemLdStr global_104
  loc_B4D74C: FLdPr Me
  loc_B4D74F: MemLdStr global_100
  loc_B4D752: FLdPr Me
  loc_B4D755: MemLdStr global_96
  loc_B4D758: Ary1LdPr
  loc_B4D759: MemLdStr global_24
  loc_B4D75C: Ary1LdPr
  loc_B4D75D: MemLdRfVar from_stack_1.global_0
  loc_B4D760: StFixedStr
  loc_B4D763: FFree1Str var_DC
  loc_B4D766: FFreeAd var_D0 = ""
  loc_B4D76D: FFreeVar var_EC = ""
  loc_B4D774: FLdRfVar var_D8
  loc_B4D777: LitVarStr var_A8, "DetaOrga"
  loc_B4D77C: PopAdLdVar
  loc_B4D77D: FLdRfVar var_D4
  loc_B4D780: FLdRfVar var_D0
  loc_B4D783: FLdPr Me
  loc_B4D786: MemLdRfVar from_stack_1.global_60
  loc_B4D789: NewIfNullPr clsimputacion
  loc_B4D78C: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B4D791: FLdPr var_D0
  loc_B4D794:  = Me.Fields
  loc_B4D799: FLdPr var_D4
  loc_B4D79C: from_stack_2 = Me.Item(from_stack_1)
  loc_B4D7A1: LitI2_Byte 0
  loc_B4D7A3: LitVar_Missing var_FC
  loc_B4D7A6: LitI2_Byte 0
  loc_B4D7A8: FLdZeroAd var_D8
  loc_B4D7AB: CVarAd
  loc_B4D7AF: PopAdLdVar
  loc_B4D7B0: FLdPr Me
  loc_B4D7B3: MemLdStr global_104
  loc_B4D7B6: FLdPr Me
  loc_B4D7B9: MemLdStr global_100
  loc_B4D7BC: FLdPr Me
  loc_B4D7BF: MemLdStr global_96
  loc_B4D7C2: AryLock
  loc_B4D7C5: Ary1LdPr
  loc_B4D7C6: MemLdStr global_24
  loc_B4D7C9: AryLock
  loc_B4D7CC: Ary1LdPr
  loc_B4D7CD: MemLdRfVar from_stack_1.global_12
  loc_B4D7D0: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B4D7D5: AryUnlock
  loc_B4D7D8: AryUnlock
  loc_B4D7DB: FFreeAd var_D0 = ""
  loc_B4D7E2: FFreeVar var_EC = ""
  loc_B4D7E9: LitI4 0
  loc_B4D7EE: FLdPr Me
  loc_B4D7F1: MemLdStr global_108
  loc_B4D7F4: FLdPr Me
  loc_B4D7F7: MemLdStr global_104
  loc_B4D7FA: FLdPr Me
  loc_B4D7FD: MemLdStr global_100
  loc_B4D800: FLdPr Me
  loc_B4D803: MemLdStr global_96
  loc_B4D806: Ary1LdPr
  loc_B4D807: MemLdStr global_24
  loc_B4D80A: Ary1LdPr
  loc_B4D80B: MemLdRfVar from_stack_1.global_20
  loc_B4D80E: RedimPreserve
  loc_B4D818: FLdRfVar var_D8
  loc_B4D81B: LitVarStr var_A8, "CodiFifu"
  loc_B4D820: PopAdLdVar
  loc_B4D821: FLdRfVar var_D4
  loc_B4D824: FLdRfVar var_D0
  loc_B4D827: FLdPr Me
  loc_B4D82A: MemLdRfVar from_stack_1.global_60
  loc_B4D82D: NewIfNullPr clsimputacion
  loc_B4D830: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B4D835: FLdPr var_D0
  loc_B4D838:  = Me.Fields
  loc_B4D83D: FLdPr var_D4
  loc_B4D840: from_stack_2 = Me.Item(from_stack_1)
  loc_B4D845: LitI2_Byte 0
  loc_B4D847: LitVar_Missing var_FC
  loc_B4D84A: LitI2_Byte 0
  loc_B4D84C: FLdZeroAd var_D8
  loc_B4D84F: CVarAd
  loc_B4D853: PopAdLdVar
  loc_B4D854: FLdPr Me
  loc_B4D857: MemLdStr global_108
  loc_B4D85A: FLdPr Me
  loc_B4D85D: MemLdStr global_104
  loc_B4D860: FLdPr Me
  loc_B4D863: MemLdStr global_100
  loc_B4D866: FLdPr Me
  loc_B4D869: MemLdStr global_96
  loc_B4D86C: Ary1LdPr
  loc_B4D86D: MemLdStr global_24
  loc_B4D870: Ary1LdPr
  loc_B4D871: MemLdStr global_20
  loc_B4D874: Ary1LdPr
  loc_B4D875: MemLdRfVar from_stack_1.global_0
  loc_B4D878: LdFixedStr
  loc_B4D87B: PopTmpLdAdStr
  loc_B4D87F: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B4D884: ILdRf var_DC
  loc_B4D887: FLdPr Me
  loc_B4D88A: MemLdStr global_108
  loc_B4D88D: FLdPr Me
  loc_B4D890: MemLdStr global_104
  loc_B4D893: FLdPr Me
  loc_B4D896: MemLdStr global_100
  loc_B4D899: FLdPr Me
  loc_B4D89C: MemLdStr global_96
  loc_B4D89F: Ary1LdPr
  loc_B4D8A0: MemLdStr global_24
  loc_B4D8A3: Ary1LdPr
  loc_B4D8A4: MemLdStr global_20
  loc_B4D8A7: Ary1LdPr
  loc_B4D8A8: MemLdRfVar from_stack_1.global_0
  loc_B4D8AB: StFixedStr
  loc_B4D8AE: FFree1Str var_DC
  loc_B4D8B1: FFreeAd var_D0 = ""
  loc_B4D8B8: FFreeVar var_EC = ""
  loc_B4D8BF: FLdRfVar var_D8
  loc_B4D8C2: LitVarStr var_A8, "DetaFifu"
  loc_B4D8C7: PopAdLdVar
  loc_B4D8C8: FLdRfVar var_D4
  loc_B4D8CB: FLdRfVar var_D0
  loc_B4D8CE: FLdPr Me
  loc_B4D8D1: MemLdRfVar from_stack_1.global_60
  loc_B4D8D4: NewIfNullPr clsimputacion
  loc_B4D8D7: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B4D8DC: FLdPr var_D0
  loc_B4D8DF:  = Me.Fields
  loc_B4D8E4: FLdPr var_D4
  loc_B4D8E7: from_stack_2 = Me.Item(from_stack_1)
  loc_B4D8EC: LitI2_Byte 0
  loc_B4D8EE: LitVar_Missing var_FC
  loc_B4D8F1: LitI2_Byte 0
  loc_B4D8F3: FLdZeroAd var_D8
  loc_B4D8F6: CVarAd
  loc_B4D8FA: PopAdLdVar
  loc_B4D8FB: FLdPr Me
  loc_B4D8FE: MemLdStr global_108
  loc_B4D901: FLdPr Me
  loc_B4D904: MemLdStr global_104
  loc_B4D907: FLdPr Me
  loc_B4D90A: MemLdStr global_100
  loc_B4D90D: FLdPr Me
  loc_B4D910: MemLdStr global_96
  loc_B4D913: AryLock
  loc_B4D916: Ary1LdPr
  loc_B4D917: MemLdStr global_24
  loc_B4D91A: AryLock
  loc_B4D91D: Ary1LdPr
  loc_B4D91E: MemLdStr global_20
  loc_B4D921: AryLock
  loc_B4D924: Ary1LdPr
  loc_B4D925: MemLdRfVar from_stack_1.global_12
  loc_B4D928: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B4D92D: AryUnlock
  loc_B4D930: AryUnlock
  loc_B4D933: AryUnlock
  loc_B4D936: FFreeAd var_D0 = ""
  loc_B4D93D: FFreeVar var_EC = ""
  loc_B4D944: Branch loc_B4DE52
  loc_B4D947: ILdRf arg_C
  loc_B4D94A: LitI4 2
  loc_B4D94F: EqI4
  loc_B4D950: BranchF loc_B4DCB9
  loc_B4D953: LitI4 1
  loc_B4D958: FLdRfVar var_8C
  loc_B4D95B: FLdPr Me
  loc_B4D95E: MemLdStr global_108
  loc_B4D961: ForI4 var_108
  loc_B4D967: LitI2_Byte 1
  loc_B4D969: FLdPr Me
  loc_B4D96C: MemLdRfVar from_stack_1.global_116
  loc_B4D96F: LitI2_Byte 5
  loc_B4D971: ForI2 var_10C
  loc_B4D977: LitI2_Byte 0
  loc_B4D979: FLdPr Me
  loc_B4D97C: MemLdI2 global_116
  loc_B4D97F: CI4UI1
  loc_B4D980: FLdPr Me
  loc_B4D983: MemLdStr global_104
  loc_B4D986: FLdPr Me
  loc_B4D989: MemLdStr global_100
  loc_B4D98C: FLdPr Me
  loc_B4D98F: MemLdStr global_96
  loc_B4D992: AryLock
  loc_B4D995: Ary1LdPr
  loc_B4D996: MemLdStr global_24
  loc_B4D999: AryLock
  loc_B4D99C: Ary1LdPr
  loc_B4D99D: MemLdRfVar from_stack_1.global_24
  loc_B4D9A0: AryInRecLdRf
  loc_B4D9A6: CVarRef
  loc_B4D9AB: LitI2_Byte &HFF
  loc_B4D9AD: FLdPr Me
  loc_B4D9B0: MemLdI2 global_116
  loc_B4D9B3: CI4UI1
  loc_B4D9B4: ILdRf var_8C
  loc_B4D9B7: FLdPr Me
  loc_B4D9BA: MemLdStr global_104
  loc_B4D9BD: FLdPr Me
  loc_B4D9C0: MemLdStr global_100
  loc_B4D9C3: FLdPr Me
  loc_B4D9C6: MemLdStr global_96
  loc_B4D9C9: Ary1LdPr
  loc_B4D9CA: MemLdStr global_24
  loc_B4D9CD: Ary1LdPr
  loc_B4D9CE: MemLdStr global_20
  loc_B4D9D1: Ary1LdPr
  loc_B4D9D2: MemLdRfVar from_stack_1.global_24
  loc_B4D9D5: AryInRecLdPr
  loc_B4D9DB: MemLdStr global_0
  loc_B4D9DE: CVarStr var_A8
  loc_B4D9E1: PopAdLdVar
  loc_B4D9E2: FLdPr Me
  loc_B4D9E5: MemLdRfVar from_stack_1.global_120
  loc_B4D9E8: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B4D9ED: AryUnlock
  loc_B4D9F0: AryUnlock
  loc_B4D9F3: FLdPr Me
  loc_B4D9F6: MemLdRfVar from_stack_1.global_116
  loc_B4D9F9: NextI2 var_10C, loc_B4D977
  loc_B4D9FE: FLdRfVar var_8C
  loc_B4DA01: NextI4 var_108, loc_B4D967
  loc_B4DA06: FLdPr Me
  loc_B4DA09: MemLdStr global_104
  loc_B4DA0C: LitI4 1
  loc_B4DA11: AddI4
  loc_B4DA12: FLdPr Me
  loc_B4DA15: MemStI4 global_104
  loc_B4DA18: LitI4 1
  loc_B4DA1D: FLdPr Me
  loc_B4DA20: MemStI4 global_108
  loc_B4DA23: LitI4 1
  loc_B4DA28: FLdPr Me
  loc_B4DA2B: MemStI4 global_112
  loc_B4DA2E: LitI4 0
  loc_B4DA33: FLdPr Me
  loc_B4DA36: MemLdStr global_104
  loc_B4DA39: FLdPr Me
  loc_B4DA3C: MemLdStr global_100
  loc_B4DA3F: FLdPr Me
  loc_B4DA42: MemLdStr global_96
  loc_B4DA45: Ary1LdPr
  loc_B4DA46: MemLdRfVar from_stack_1.global_24
  loc_B4DA49: RedimPreserve
  loc_B4DA53: FLdRfVar var_D8
  loc_B4DA56: LitVarStr var_A8, "CodiOrga"
  loc_B4DA5B: PopAdLdVar
  loc_B4DA5C: FLdRfVar var_D4
  loc_B4DA5F: FLdRfVar var_D0
  loc_B4DA62: FLdPr Me
  loc_B4DA65: MemLdRfVar from_stack_1.global_60
  loc_B4DA68: NewIfNullPr clsimputacion
  loc_B4DA6B: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B4DA70: FLdPr var_D0
  loc_B4DA73:  = Me.Fields
  loc_B4DA78: FLdPr var_D4
  loc_B4DA7B: from_stack_2 = Me.Item(from_stack_1)
  loc_B4DA80: LitI2_Byte 0
  loc_B4DA82: LitVar_Missing var_FC
  loc_B4DA85: LitI2_Byte 0
  loc_B4DA87: FLdZeroAd var_D8
  loc_B4DA8A: CVarAd
  loc_B4DA8E: PopAdLdVar
  loc_B4DA8F: FLdPr Me
  loc_B4DA92: MemLdStr global_104
  loc_B4DA95: FLdPr Me
  loc_B4DA98: MemLdStr global_100
  loc_B4DA9B: FLdPr Me
  loc_B4DA9E: MemLdStr global_96
  loc_B4DAA1: Ary1LdPr
  loc_B4DAA2: MemLdStr global_24
  loc_B4DAA5: Ary1LdPr
  loc_B4DAA6: MemLdRfVar from_stack_1.global_0
  loc_B4DAA9: LdFixedStr
  loc_B4DAAC: PopTmpLdAdStr
  loc_B4DAB0: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B4DAB5: ILdRf var_DC
  loc_B4DAB8: FLdPr Me
  loc_B4DABB: MemLdStr global_104
  loc_B4DABE: FLdPr Me
  loc_B4DAC1: MemLdStr global_100
  loc_B4DAC4: FLdPr Me
  loc_B4DAC7: MemLdStr global_96
  loc_B4DACA: Ary1LdPr
  loc_B4DACB: MemLdStr global_24
  loc_B4DACE: Ary1LdPr
  loc_B4DACF: MemLdRfVar from_stack_1.global_0
  loc_B4DAD2: StFixedStr
  loc_B4DAD5: FFree1Str var_DC
  loc_B4DAD8: FFreeAd var_D0 = ""
  loc_B4DADF: FFreeVar var_EC = ""
  loc_B4DAE6: FLdRfVar var_D8
  loc_B4DAE9: LitVarStr var_A8, "DetaOrga"
  loc_B4DAEE: PopAdLdVar
  loc_B4DAEF: FLdRfVar var_D4
  loc_B4DAF2: FLdRfVar var_D0
  loc_B4DAF5: FLdPr Me
  loc_B4DAF8: MemLdRfVar from_stack_1.global_60
  loc_B4DAFB: NewIfNullPr clsimputacion
  loc_B4DAFE: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B4DB03: FLdPr var_D0
  loc_B4DB06:  = Me.Fields
  loc_B4DB0B: FLdPr var_D4
  loc_B4DB0E: from_stack_2 = Me.Item(from_stack_1)
  loc_B4DB13: LitI2_Byte 0
  loc_B4DB15: LitVar_Missing var_FC
  loc_B4DB18: LitI2_Byte 0
  loc_B4DB1A: FLdZeroAd var_D8
  loc_B4DB1D: CVarAd
  loc_B4DB21: PopAdLdVar
  loc_B4DB22: FLdPr Me
  loc_B4DB25: MemLdStr global_104
  loc_B4DB28: FLdPr Me
  loc_B4DB2B: MemLdStr global_100
  loc_B4DB2E: FLdPr Me
  loc_B4DB31: MemLdStr global_96
  loc_B4DB34: AryLock
  loc_B4DB37: Ary1LdPr
  loc_B4DB38: MemLdStr global_24
  loc_B4DB3B: AryLock
  loc_B4DB3E: Ary1LdPr
  loc_B4DB3F: MemLdRfVar from_stack_1.global_12
  loc_B4DB42: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B4DB47: AryUnlock
  loc_B4DB4A: AryUnlock
  loc_B4DB4D: FFreeAd var_D0 = ""
  loc_B4DB54: FFreeVar var_EC = ""
  loc_B4DB5B: LitI4 0
  loc_B4DB60: FLdPr Me
  loc_B4DB63: MemLdStr global_108
  loc_B4DB66: FLdPr Me
  loc_B4DB69: MemLdStr global_104
  loc_B4DB6C: FLdPr Me
  loc_B4DB6F: MemLdStr global_100
  loc_B4DB72: FLdPr Me
  loc_B4DB75: MemLdStr global_96
  loc_B4DB78: Ary1LdPr
  loc_B4DB79: MemLdStr global_24
  loc_B4DB7C: Ary1LdPr
  loc_B4DB7D: MemLdRfVar from_stack_1.global_20
  loc_B4DB80: RedimPreserve
  loc_B4DB8A: FLdRfVar var_D8
  loc_B4DB8D: LitVarStr var_A8, "CodiFifu"
  loc_B4DB92: PopAdLdVar
  loc_B4DB93: FLdRfVar var_D4
  loc_B4DB96: FLdRfVar var_D0
  loc_B4DB99: FLdPr Me
  loc_B4DB9C: MemLdRfVar from_stack_1.global_60
  loc_B4DB9F: NewIfNullPr clsimputacion
  loc_B4DBA2: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B4DBA7: FLdPr var_D0
  loc_B4DBAA:  = Me.Fields
  loc_B4DBAF: FLdPr var_D4
  loc_B4DBB2: from_stack_2 = Me.Item(from_stack_1)
  loc_B4DBB7: LitI2_Byte 0
  loc_B4DBB9: LitVar_Missing var_FC
  loc_B4DBBC: LitI2_Byte 0
  loc_B4DBBE: FLdZeroAd var_D8
  loc_B4DBC1: CVarAd
  loc_B4DBC5: PopAdLdVar
  loc_B4DBC6: FLdPr Me
  loc_B4DBC9: MemLdStr global_108
  loc_B4DBCC: FLdPr Me
  loc_B4DBCF: MemLdStr global_104
  loc_B4DBD2: FLdPr Me
  loc_B4DBD5: MemLdStr global_100
  loc_B4DBD8: FLdPr Me
  loc_B4DBDB: MemLdStr global_96
  loc_B4DBDE: Ary1LdPr
  loc_B4DBDF: MemLdStr global_24
  loc_B4DBE2: Ary1LdPr
  loc_B4DBE3: MemLdStr global_20
  loc_B4DBE6: Ary1LdPr
  loc_B4DBE7: MemLdRfVar from_stack_1.global_0
  loc_B4DBEA: LdFixedStr
  loc_B4DBED: PopTmpLdAdStr
  loc_B4DBF1: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B4DBF6: ILdRf var_DC
  loc_B4DBF9: FLdPr Me
  loc_B4DBFC: MemLdStr global_108
  loc_B4DBFF: FLdPr Me
  loc_B4DC02: MemLdStr global_104
  loc_B4DC05: FLdPr Me
  loc_B4DC08: MemLdStr global_100
  loc_B4DC0B: FLdPr Me
  loc_B4DC0E: MemLdStr global_96
  loc_B4DC11: Ary1LdPr
  loc_B4DC12: MemLdStr global_24
  loc_B4DC15: Ary1LdPr
  loc_B4DC16: MemLdStr global_20
  loc_B4DC19: Ary1LdPr
  loc_B4DC1A: MemLdRfVar from_stack_1.global_0
  loc_B4DC1D: StFixedStr
  loc_B4DC20: FFree1Str var_DC
  loc_B4DC23: FFreeAd var_D0 = ""
  loc_B4DC2A: FFreeVar var_EC = ""
  loc_B4DC31: FLdRfVar var_D8
  loc_B4DC34: LitVarStr var_A8, "DetaFifu"
  loc_B4DC39: PopAdLdVar
  loc_B4DC3A: FLdRfVar var_D4
  loc_B4DC3D: FLdRfVar var_D0
  loc_B4DC40: FLdPr Me
  loc_B4DC43: MemLdRfVar from_stack_1.global_60
  loc_B4DC46: NewIfNullPr clsimputacion
  loc_B4DC49: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B4DC4E: FLdPr var_D0
  loc_B4DC51:  = Me.Fields
  loc_B4DC56: FLdPr var_D4
  loc_B4DC59: from_stack_2 = Me.Item(from_stack_1)
  loc_B4DC5E: LitI2_Byte 0
  loc_B4DC60: LitVar_Missing var_FC
  loc_B4DC63: LitI2_Byte 0
  loc_B4DC65: FLdZeroAd var_D8
  loc_B4DC68: CVarAd
  loc_B4DC6C: PopAdLdVar
  loc_B4DC6D: FLdPr Me
  loc_B4DC70: MemLdStr global_108
  loc_B4DC73: FLdPr Me
  loc_B4DC76: MemLdStr global_104
  loc_B4DC79: FLdPr Me
  loc_B4DC7C: MemLdStr global_100
  loc_B4DC7F: FLdPr Me
  loc_B4DC82: MemLdStr global_96
  loc_B4DC85: AryLock
  loc_B4DC88: Ary1LdPr
  loc_B4DC89: MemLdStr global_24
  loc_B4DC8C: AryLock
  loc_B4DC8F: Ary1LdPr
  loc_B4DC90: MemLdStr global_20
  loc_B4DC93: AryLock
  loc_B4DC96: Ary1LdPr
  loc_B4DC97: MemLdRfVar from_stack_1.global_12
  loc_B4DC9A: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B4DC9F: AryUnlock
  loc_B4DCA2: AryUnlock
  loc_B4DCA5: AryUnlock
  loc_B4DCA8: FFreeAd var_D0 = ""
  loc_B4DCAF: FFreeVar var_EC = ""
  loc_B4DCB6: Branch loc_B4DE52
  loc_B4DCB9: ILdRf arg_C
  loc_B4DCBC: LitI4 3
  loc_B4DCC1: EqI4
  loc_B4DCC2: BranchF loc_B4DE40
  loc_B4DCC5: FLdPr Me
  loc_B4DCC8: MemLdStr global_108
  loc_B4DCCB: LitI4 1
  loc_B4DCD0: AddI4
  loc_B4DCD1: FLdPr Me
  loc_B4DCD4: MemStI4 global_108
  loc_B4DCD7: LitI4 1
  loc_B4DCDC: FLdPr Me
  loc_B4DCDF: MemStI4 global_112
  loc_B4DCE2: LitI4 0
  loc_B4DCE7: FLdPr Me
  loc_B4DCEA: MemLdStr global_108
  loc_B4DCED: FLdPr Me
  loc_B4DCF0: MemLdStr global_104
  loc_B4DCF3: FLdPr Me
  loc_B4DCF6: MemLdStr global_100
  loc_B4DCF9: FLdPr Me
  loc_B4DCFC: MemLdStr global_96
  loc_B4DCFF: Ary1LdPr
  loc_B4DD00: MemLdStr global_24
  loc_B4DD03: Ary1LdPr
  loc_B4DD04: MemLdRfVar from_stack_1.global_20
  loc_B4DD07: RedimPreserve
  loc_B4DD11: FLdRfVar var_D8
  loc_B4DD14: LitVarStr var_A8, "CodiFifu"
  loc_B4DD19: PopAdLdVar
  loc_B4DD1A: FLdRfVar var_D4
  loc_B4DD1D: FLdRfVar var_D0
  loc_B4DD20: FLdPr Me
  loc_B4DD23: MemLdRfVar from_stack_1.global_60
  loc_B4DD26: NewIfNullPr clsimputacion
  loc_B4DD29: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B4DD2E: FLdPr var_D0
  loc_B4DD31:  = Me.Fields
  loc_B4DD36: FLdPr var_D4
  loc_B4DD39: from_stack_2 = Me.Item(from_stack_1)
  loc_B4DD3E: LitI2_Byte 0
  loc_B4DD40: LitVar_Missing var_FC
  loc_B4DD43: LitI2_Byte 0
  loc_B4DD45: FLdZeroAd var_D8
  loc_B4DD48: CVarAd
  loc_B4DD4C: PopAdLdVar
  loc_B4DD4D: FLdPr Me
  loc_B4DD50: MemLdStr global_108
  loc_B4DD53: FLdPr Me
  loc_B4DD56: MemLdStr global_104
  loc_B4DD59: FLdPr Me
  loc_B4DD5C: MemLdStr global_100
  loc_B4DD5F: FLdPr Me
  loc_B4DD62: MemLdStr global_96
  loc_B4DD65: Ary1LdPr
  loc_B4DD66: MemLdStr global_24
  loc_B4DD69: Ary1LdPr
  loc_B4DD6A: MemLdStr global_20
  loc_B4DD6D: Ary1LdPr
  loc_B4DD6E: MemLdRfVar from_stack_1.global_0
  loc_B4DD71: LdFixedStr
  loc_B4DD74: PopTmpLdAdStr
  loc_B4DD78: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B4DD7D: ILdRf var_DC
  loc_B4DD80: FLdPr Me
  loc_B4DD83: MemLdStr global_108
  loc_B4DD86: FLdPr Me
  loc_B4DD89: MemLdStr global_104
  loc_B4DD8C: FLdPr Me
  loc_B4DD8F: MemLdStr global_100
  loc_B4DD92: FLdPr Me
  loc_B4DD95: MemLdStr global_96
  loc_B4DD98: Ary1LdPr
  loc_B4DD99: MemLdStr global_24
  loc_B4DD9C: Ary1LdPr
  loc_B4DD9D: MemLdStr global_20
  loc_B4DDA0: Ary1LdPr
  loc_B4DDA1: MemLdRfVar from_stack_1.global_0
  loc_B4DDA4: StFixedStr
  loc_B4DDA7: FFree1Str var_DC
  loc_B4DDAA: FFreeAd var_D0 = ""
  loc_B4DDB1: FFreeVar var_EC = ""
  loc_B4DDB8: FLdRfVar var_D8
  loc_B4DDBB: LitVarStr var_A8, "DetaFifu"
  loc_B4DDC0: PopAdLdVar
  loc_B4DDC1: FLdRfVar var_D4
  loc_B4DDC4: FLdRfVar var_D0
  loc_B4DDC7: FLdPr Me
  loc_B4DDCA: MemLdRfVar from_stack_1.global_60
  loc_B4DDCD: NewIfNullPr clsimputacion
  loc_B4DDD0: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B4DDD5: FLdPr var_D0
  loc_B4DDD8:  = Me.Fields
  loc_B4DDDD: FLdPr var_D4
  loc_B4DDE0: from_stack_2 = Me.Item(from_stack_1)
  loc_B4DDE5: LitI2_Byte 0
  loc_B4DDE7: LitVar_Missing var_FC
  loc_B4DDEA: LitI2_Byte 0
  loc_B4DDEC: FLdZeroAd var_D8
  loc_B4DDEF: CVarAd
  loc_B4DDF3: PopAdLdVar
  loc_B4DDF4: FLdPr Me
  loc_B4DDF7: MemLdStr global_108
  loc_B4DDFA: FLdPr Me
  loc_B4DDFD: MemLdStr global_104
  loc_B4DE00: FLdPr Me
  loc_B4DE03: MemLdStr global_100
  loc_B4DE06: FLdPr Me
  loc_B4DE09: MemLdStr global_96
  loc_B4DE0C: AryLock
  loc_B4DE0F: Ary1LdPr
  loc_B4DE10: MemLdStr global_24
  loc_B4DE13: AryLock
  loc_B4DE16: Ary1LdPr
  loc_B4DE17: MemLdStr global_20
  loc_B4DE1A: AryLock
  loc_B4DE1D: Ary1LdPr
  loc_B4DE1E: MemLdRfVar from_stack_1.global_12
  loc_B4DE21: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B4DE26: AryUnlock
  loc_B4DE29: AryUnlock
  loc_B4DE2C: AryUnlock
  loc_B4DE2F: FFreeAd var_D0 = ""
  loc_B4DE36: FFreeVar var_EC = ""
  loc_B4DE3D: Branch loc_B4DE52
  loc_B4DE40: FLdPr Me
  loc_B4DE43: MemLdStr global_112
  loc_B4DE46: LitI4 1
  loc_B4DE4B: AddI4
  loc_B4DE4C: FLdPr Me
  loc_B4DE4F: MemStI4 global_112
  loc_B4DE52: LitI4 0
  loc_B4DE57: FLdPr Me
  loc_B4DE5A: MemLdStr global_112
  loc_B4DE5D: FLdPr Me
  loc_B4DE60: MemLdStr global_108
  loc_B4DE63: FLdPr Me
  loc_B4DE66: MemLdStr global_104
  loc_B4DE69: FLdPr Me
  loc_B4DE6C: MemLdStr global_100
  loc_B4DE6F: FLdPr Me
  loc_B4DE72: MemLdStr global_96
  loc_B4DE75: Ary1LdPr
  loc_B4DE76: MemLdStr global_24
  loc_B4DE79: Ary1LdPr
  loc_B4DE7A: MemLdStr global_20
  loc_B4DE7D: Ary1LdPr
  loc_B4DE7E: MemLdRfVar from_stack_1.global_20
  loc_B4DE81: RedimPreserve
  loc_B4DE8B: LitI4 0
  loc_B4DE90: LitI4 5
  loc_B4DE95: FLdPr Me
  loc_B4DE98: MemLdStr global_112
  loc_B4DE9B: FLdPr Me
  loc_B4DE9E: MemLdStr global_108
  loc_B4DEA1: FLdPr Me
  loc_B4DEA4: MemLdStr global_104
  loc_B4DEA7: FLdPr Me
  loc_B4DEAA: MemLdStr global_100
  loc_B4DEAD: FLdPr Me
  loc_B4DEB0: MemLdStr global_96
  loc_B4DEB3: Ary1LdPr
  loc_B4DEB4: MemLdStr global_24
  loc_B4DEB7: Ary1LdPr
  loc_B4DEB8: MemLdStr global_20
  loc_B4DEBB: Ary1LdPr
  loc_B4DEBC: MemLdStr global_20
  loc_B4DEBF: Ary1LdPr
  loc_B4DEC0: MemLdRfVar from_stack_1.global_0
  loc_B4DEC3: RedimPreserve
  loc_B4DECD: ExitProcHresult
  loc_B4DECE: MulR8
End Function

Private Function Proc_227_33_B10664(arg_C, arg_10, arg_14, arg_18) 'B10664
  'Data Table: 4CC8C0
  loc_B0FE20: FLdPr Me
  loc_B0FE23: MemLdRfVar from_stack_1.global_60
  loc_B0FE26: NewIfNullAd
  loc_B0FE29: FStAd var_88 
  loc_B0FE2D: LitI2_Byte 0
  loc_B0FE2F: LitI4 1
  loc_B0FE34: ILdRf arg_14
  loc_B0FE37: ILdRf arg_10
  loc_B0FE3A: ILdRf arg_C
  loc_B0FE3D: FLdPr Me
  loc_B0FE40: MemLdStr global_96
  loc_B0FE43: AryLock
  loc_B0FE46: Ary1LdPr
  loc_B0FE47: MemLdStr global_24
  loc_B0FE4A: AryLock
  loc_B0FE4D: Ary1LdPr
  loc_B0FE4E: MemLdStr global_20
  loc_B0FE51: AryLock
  loc_B0FE54: Ary1LdPr
  loc_B0FE55: MemLdRfVar from_stack_1.global_24
  loc_B0FE58: AryInRecLdRf
  loc_B0FE5E: CVarRef
  loc_B0FE63: LitI2_Byte &HFF
  loc_B0FE65: LitVarI2 var_AC, 0
  loc_B0FE6A: PopAdLdVar
  loc_B0FE6B: LitI4 1
  loc_B0FE70: ILdRf arg_18
  loc_B0FE73: ILdRf arg_14
  loc_B0FE76: ILdRf arg_10
  loc_B0FE79: ILdRf arg_C
  loc_B0FE7C: FLdPr Me
  loc_B0FE7F: MemLdStr global_96
  loc_B0FE82: AryLock
  loc_B0FE85: Ary1LdPr
  loc_B0FE86: MemLdStr global_24
  loc_B0FE89: AryLock
  loc_B0FE8C: Ary1LdPr
  loc_B0FE8D: MemLdStr global_20
  loc_B0FE90: AryLock
  loc_B0FE93: Ary1LdPr
  loc_B0FE94: MemLdStr global_20
  loc_B0FE97: AryLock
  loc_B0FE9A: Ary1LdPr
  loc_B0FE9B: MemLdStr global_0
  loc_B0FE9E: AryLock
  loc_B0FEA1: Ary1LdRf
  loc_B0FEA2: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B0FEA7: AryUnlock
  loc_B0FEAA: AryUnlock
  loc_B0FEAD: AryUnlock
  loc_B0FEB0: AryUnlock
  loc_B0FEB3: AryUnlock
  loc_B0FEB6: AryUnlock
  loc_B0FEB9: AryUnlock
  loc_B0FEBC: AryUnlock
  loc_B0FEBF: LitI2_Byte 0
  loc_B0FEC1: LitI4 2
  loc_B0FEC6: ILdRf arg_14
  loc_B0FEC9: ILdRf arg_10
  loc_B0FECC: ILdRf arg_C
  loc_B0FECF: FLdPr Me
  loc_B0FED2: MemLdStr global_96
  loc_B0FED5: AryLock
  loc_B0FED8: Ary1LdPr
  loc_B0FED9: MemLdStr global_24
  loc_B0FEDC: AryLock
  loc_B0FEDF: Ary1LdPr
  loc_B0FEE0: MemLdStr global_20
  loc_B0FEE3: AryLock
  loc_B0FEE6: Ary1LdPr
  loc_B0FEE7: MemLdRfVar from_stack_1.global_24
  loc_B0FEEA: AryInRecLdRf
  loc_B0FEF0: CVarRef
  loc_B0FEF5: LitI2_Byte &HFF
  loc_B0FEF7: LitVarI2 var_AC, 0
  loc_B0FEFC: PopAdLdVar
  loc_B0FEFD: LitI4 2
  loc_B0FF02: ILdRf arg_18
  loc_B0FF05: ILdRf arg_14
  loc_B0FF08: ILdRf arg_10
  loc_B0FF0B: ILdRf arg_C
  loc_B0FF0E: FLdPr Me
  loc_B0FF11: MemLdStr global_96
  loc_B0FF14: AryLock
  loc_B0FF17: Ary1LdPr
  loc_B0FF18: MemLdStr global_24
  loc_B0FF1B: AryLock
  loc_B0FF1E: Ary1LdPr
  loc_B0FF1F: MemLdStr global_20
  loc_B0FF22: AryLock
  loc_B0FF25: Ary1LdPr
  loc_B0FF26: MemLdStr global_20
  loc_B0FF29: AryLock
  loc_B0FF2C: Ary1LdPr
  loc_B0FF2D: MemLdStr global_0
  loc_B0FF30: AryLock
  loc_B0FF33: Ary1LdRf
  loc_B0FF34: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B0FF39: AryUnlock
  loc_B0FF3C: AryUnlock
  loc_B0FF3F: AryUnlock
  loc_B0FF42: AryUnlock
  loc_B0FF45: AryUnlock
  loc_B0FF48: AryUnlock
  loc_B0FF4B: AryUnlock
  loc_B0FF4E: AryUnlock
  loc_B0FF51: LitI2_Byte 0
  loc_B0FF53: LitI4 3
  loc_B0FF58: ILdRf arg_14
  loc_B0FF5B: ILdRf arg_10
  loc_B0FF5E: ILdRf arg_C
  loc_B0FF61: FLdPr Me
  loc_B0FF64: MemLdStr global_96
  loc_B0FF67: AryLock
  loc_B0FF6A: Ary1LdPr
  loc_B0FF6B: MemLdStr global_24
  loc_B0FF6E: AryLock
  loc_B0FF71: Ary1LdPr
  loc_B0FF72: MemLdStr global_20
  loc_B0FF75: AryLock
  loc_B0FF78: Ary1LdPr
  loc_B0FF79: MemLdRfVar from_stack_1.global_24
  loc_B0FF7C: AryInRecLdRf
  loc_B0FF82: CVarRef
  loc_B0FF87: LitI2_Byte &HFF
  loc_B0FF89: LitVarI2 var_AC, 0
  loc_B0FF8E: PopAdLdVar
  loc_B0FF8F: LitI4 3
  loc_B0FF94: ILdRf arg_18
  loc_B0FF97: ILdRf arg_14
  loc_B0FF9A: ILdRf arg_10
  loc_B0FF9D: ILdRf arg_C
  loc_B0FFA0: FLdPr Me
  loc_B0FFA3: MemLdStr global_96
  loc_B0FFA6: AryLock
  loc_B0FFA9: Ary1LdPr
  loc_B0FFAA: MemLdStr global_24
  loc_B0FFAD: AryLock
  loc_B0FFB0: Ary1LdPr
  loc_B0FFB1: MemLdStr global_20
  loc_B0FFB4: AryLock
  loc_B0FFB7: Ary1LdPr
  loc_B0FFB8: MemLdStr global_20
  loc_B0FFBB: AryLock
  loc_B0FFBE: Ary1LdPr
  loc_B0FFBF: MemLdStr global_0
  loc_B0FFC2: AryLock
  loc_B0FFC5: Ary1LdRf
  loc_B0FFC6: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B0FFCB: AryUnlock
  loc_B0FFCE: AryUnlock
  loc_B0FFD1: AryUnlock
  loc_B0FFD4: AryUnlock
  loc_B0FFD7: AryUnlock
  loc_B0FFDA: AryUnlock
  loc_B0FFDD: AryUnlock
  loc_B0FFE0: AryUnlock
  loc_B0FFE3: LitI2_Byte 0
  loc_B0FFE5: LitI4 4
  loc_B0FFEA: ILdRf arg_14
  loc_B0FFED: ILdRf arg_10
  loc_B0FFF0: ILdRf arg_C
  loc_B0FFF3: FLdPr Me
  loc_B0FFF6: MemLdStr global_96
  loc_B0FFF9: AryLock
  loc_B0FFFC: Ary1LdPr
  loc_B0FFFD: MemLdStr global_24
  loc_B10000: AryLock
  loc_B10003: Ary1LdPr
  loc_B10004: MemLdStr global_20
  loc_B10007: AryLock
  loc_B1000A: Ary1LdPr
  loc_B1000B: MemLdRfVar from_stack_1.global_24
  loc_B1000E: AryInRecLdRf
  loc_B10014: CVarRef
  loc_B10019: LitI2_Byte &HFF
  loc_B1001B: LitVarI2 var_AC, 0
  loc_B10020: PopAdLdVar
  loc_B10021: LitI4 4
  loc_B10026: ILdRf arg_18
  loc_B10029: ILdRf arg_14
  loc_B1002C: ILdRf arg_10
  loc_B1002F: ILdRf arg_C
  loc_B10032: FLdPr Me
  loc_B10035: MemLdStr global_96
  loc_B10038: AryLock
  loc_B1003B: Ary1LdPr
  loc_B1003C: MemLdStr global_24
  loc_B1003F: AryLock
  loc_B10042: Ary1LdPr
  loc_B10043: MemLdStr global_20
  loc_B10046: AryLock
  loc_B10049: Ary1LdPr
  loc_B1004A: MemLdStr global_20
  loc_B1004D: AryLock
  loc_B10050: Ary1LdPr
  loc_B10051: MemLdStr global_0
  loc_B10054: AryLock
  loc_B10057: Ary1LdRf
  loc_B10058: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B1005D: AryUnlock
  loc_B10060: AryUnlock
  loc_B10063: AryUnlock
  loc_B10066: AryUnlock
  loc_B10069: AryUnlock
  loc_B1006C: AryUnlock
  loc_B1006F: AryUnlock
  loc_B10072: AryUnlock
  loc_B10075: LitI2_Byte 0
  loc_B10077: LitI4 5
  loc_B1007C: ILdRf arg_14
  loc_B1007F: ILdRf arg_10
  loc_B10082: ILdRf arg_C
  loc_B10085: FLdPr Me
  loc_B10088: MemLdStr global_96
  loc_B1008B: AryLock
  loc_B1008E: Ary1LdPr
  loc_B1008F: MemLdStr global_24
  loc_B10092: AryLock
  loc_B10095: Ary1LdPr
  loc_B10096: MemLdStr global_20
  loc_B10099: AryLock
  loc_B1009C: Ary1LdPr
  loc_B1009D: MemLdRfVar from_stack_1.global_24
  loc_B100A0: AryInRecLdRf
  loc_B100A6: CVarRef
  loc_B100AB: LitI2_Byte &HFF
  loc_B100AD: LitVarI2 var_AC, 0
  loc_B100B2: PopAdLdVar
  loc_B100B3: LitI4 5
  loc_B100B8: ILdRf arg_18
  loc_B100BB: ILdRf arg_14
  loc_B100BE: ILdRf arg_10
  loc_B100C1: ILdRf arg_C
  loc_B100C4: FLdPr Me
  loc_B100C7: MemLdStr global_96
  loc_B100CA: AryLock
  loc_B100CD: Ary1LdPr
  loc_B100CE: MemLdStr global_24
  loc_B100D1: AryLock
  loc_B100D4: Ary1LdPr
  loc_B100D5: MemLdStr global_20
  loc_B100D8: AryLock
  loc_B100DB: Ary1LdPr
  loc_B100DC: MemLdStr global_20
  loc_B100DF: AryLock
  loc_B100E2: Ary1LdPr
  loc_B100E3: MemLdStr global_0
  loc_B100E6: AryLock
  loc_B100E9: Ary1LdRf
  loc_B100EA: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B100EF: AryUnlock
  loc_B100F2: AryUnlock
  loc_B100F5: AryUnlock
  loc_B100F8: AryUnlock
  loc_B100FB: AryUnlock
  loc_B100FE: AryUnlock
  loc_B10101: AryUnlock
  loc_B10104: AryUnlock
  loc_B10107: FLdRfVar var_E4
  loc_B1010A: FLdRfVar var_D4
  loc_B1010D: LitVarStr var_AC, "PrevImpu"
  loc_B10112: PopAdLdVar
  loc_B10113: FLdRfVar var_D0
  loc_B10116: FLdRfVar var_CC
  loc_B10119: FLdPr var_88
  loc_B1011C: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B10121: FLdPr var_CC
  loc_B10124:  = Me.Fields
  loc_B10129: FLdPr var_D0
  loc_B1012C: from_stack_2 = Me.Item(from_stack_1)
  loc_B10131: FLdPr var_D4
  loc_B10134:  = Me.Value
  loc_B10139: FLdRfVar var_E4
  loc_B1013C: LitVarI2 var_BC, 0
  loc_B10141: HardType
  loc_B10142: NeVarBool
  loc_B10144: FFreeAd var_CC = "": var_D0 = ""
  loc_B1014D: FFree1Var var_E4 = ""
  loc_B10150: BranchF loc_B10218
  loc_B10153: FLdRfVar var_D4
  loc_B10156: LitVarStr var_AC, "PrevImpu"
  loc_B1015B: PopAdLdVar
  loc_B1015C: FLdRfVar var_D0
  loc_B1015F: FLdRfVar var_CC
  loc_B10162: FLdPr var_88
  loc_B10165: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B1016A: FLdPr var_CC
  loc_B1016D:  = Me.Fields
  loc_B10172: FLdPr var_D0
  loc_B10175: from_stack_2 = Me.Item(from_stack_1)
  loc_B1017A: LitI2_Byte 0
  loc_B1017C: LitI4 1
  loc_B10181: ILdRf arg_14
  loc_B10184: ILdRf arg_10
  loc_B10187: ILdRf arg_C
  loc_B1018A: FLdPr Me
  loc_B1018D: MemLdStr global_96
  loc_B10190: AryLock
  loc_B10193: Ary1LdPr
  loc_B10194: MemLdStr global_24
  loc_B10197: AryLock
  loc_B1019A: Ary1LdPr
  loc_B1019B: MemLdStr global_20
  loc_B1019E: AryLock
  loc_B101A1: Ary1LdPr
  loc_B101A2: MemLdRfVar from_stack_1.global_24
  loc_B101A5: AryInRecLdRf
  loc_B101AB: CVarRef
  loc_B101B0: LitI2_Byte &HFF
  loc_B101B2: FLdZeroAd var_D4
  loc_B101B5: CVarAd
  loc_B101B9: PopAdLdVar
  loc_B101BA: LitI4 1
  loc_B101BF: ILdRf arg_18
  loc_B101C2: ILdRf arg_14
  loc_B101C5: ILdRf arg_10
  loc_B101C8: ILdRf arg_C
  loc_B101CB: FLdPr Me
  loc_B101CE: MemLdStr global_96
  loc_B101D1: AryLock
  loc_B101D4: Ary1LdPr
  loc_B101D5: MemLdStr global_24
  loc_B101D8: AryLock
  loc_B101DB: Ary1LdPr
  loc_B101DC: MemLdStr global_20
  loc_B101DF: AryLock
  loc_B101E2: Ary1LdPr
  loc_B101E3: MemLdStr global_20
  loc_B101E6: AryLock
  loc_B101E9: Ary1LdPr
  loc_B101EA: MemLdStr global_0
  loc_B101ED: AryLock
  loc_B101F0: Ary1LdRf
  loc_B101F1: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B101F6: AryUnlock
  loc_B101F9: AryUnlock
  loc_B101FC: AryUnlock
  loc_B101FF: AryUnlock
  loc_B10202: AryUnlock
  loc_B10205: AryUnlock
  loc_B10208: AryUnlock
  loc_B1020B: AryUnlock
  loc_B1020E: FFreeAd var_CC = ""
  loc_B10215: FFree1Var var_E4 = ""
  loc_B10218: FLdRfVar var_E4
  loc_B1021B: FLdRfVar var_D4
  loc_B1021E: LitVarStr var_AC, "DefiImpu"
  loc_B10223: PopAdLdVar
  loc_B10224: FLdRfVar var_D0
  loc_B10227: FLdRfVar var_CC
  loc_B1022A: FLdPr var_88
  loc_B1022D: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B10232: FLdPr var_CC
  loc_B10235:  = Me.Fields
  loc_B1023A: FLdPr var_D0
  loc_B1023D: from_stack_2 = Me.Item(from_stack_1)
  loc_B10242: FLdPr var_D4
  loc_B10245:  = Me.Value
  loc_B1024A: FLdRfVar var_E4
  loc_B1024D: LitVarI2 var_BC, 0
  loc_B10252: HardType
  loc_B10253: NeVarBool
  loc_B10255: FFreeAd var_CC = "": var_D0 = ""
  loc_B1025E: FFree1Var var_E4 = ""
  loc_B10261: BranchF loc_B10329
  loc_B10264: FLdRfVar var_D4
  loc_B10267: LitVarStr var_AC, "DefiImpu"
  loc_B1026C: PopAdLdVar
  loc_B1026D: FLdRfVar var_D0
  loc_B10270: FLdRfVar var_CC
  loc_B10273: FLdPr var_88
  loc_B10276: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B1027B: FLdPr var_CC
  loc_B1027E:  = Me.Fields
  loc_B10283: FLdPr var_D0
  loc_B10286: from_stack_2 = Me.Item(from_stack_1)
  loc_B1028B: LitI2_Byte 0
  loc_B1028D: LitI4 2
  loc_B10292: ILdRf arg_14
  loc_B10295: ILdRf arg_10
  loc_B10298: ILdRf arg_C
  loc_B1029B: FLdPr Me
  loc_B1029E: MemLdStr global_96
  loc_B102A1: AryLock
  loc_B102A4: Ary1LdPr
  loc_B102A5: MemLdStr global_24
  loc_B102A8: AryLock
  loc_B102AB: Ary1LdPr
  loc_B102AC: MemLdStr global_20
  loc_B102AF: AryLock
  loc_B102B2: Ary1LdPr
  loc_B102B3: MemLdRfVar from_stack_1.global_24
  loc_B102B6: AryInRecLdRf
  loc_B102BC: CVarRef
  loc_B102C1: LitI2_Byte &HFF
  loc_B102C3: FLdZeroAd var_D4
  loc_B102C6: CVarAd
  loc_B102CA: PopAdLdVar
  loc_B102CB: LitI4 2
  loc_B102D0: ILdRf arg_18
  loc_B102D3: ILdRf arg_14
  loc_B102D6: ILdRf arg_10
  loc_B102D9: ILdRf arg_C
  loc_B102DC: FLdPr Me
  loc_B102DF: MemLdStr global_96
  loc_B102E2: AryLock
  loc_B102E5: Ary1LdPr
  loc_B102E6: MemLdStr global_24
  loc_B102E9: AryLock
  loc_B102EC: Ary1LdPr
  loc_B102ED: MemLdStr global_20
  loc_B102F0: AryLock
  loc_B102F3: Ary1LdPr
  loc_B102F4: MemLdStr global_20
  loc_B102F7: AryLock
  loc_B102FA: Ary1LdPr
  loc_B102FB: MemLdStr global_0
  loc_B102FE: AryLock
  loc_B10301: Ary1LdRf
  loc_B10302: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B10307: AryUnlock
  loc_B1030A: AryUnlock
  loc_B1030D: AryUnlock
  loc_B10310: AryUnlock
  loc_B10313: AryUnlock
  loc_B10316: AryUnlock
  loc_B10319: AryUnlock
  loc_B1031C: AryUnlock
  loc_B1031F: FFreeAd var_CC = ""
  loc_B10326: FFree1Var var_E4 = ""
  loc_B10329: FLdRfVar var_E4
  loc_B1032C: FLdRfVar var_D4
  loc_B1032F: LitVarStr var_AC, "DeveImpu"
  loc_B10334: PopAdLdVar
  loc_B10335: FLdRfVar var_D0
  loc_B10338: FLdRfVar var_CC
  loc_B1033B: FLdPr var_88
  loc_B1033E: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B10343: FLdPr var_CC
  loc_B10346:  = Me.Fields
  loc_B1034B: FLdPr var_D0
  loc_B1034E: from_stack_2 = Me.Item(from_stack_1)
  loc_B10353: FLdPr var_D4
  loc_B10356:  = Me.Value
  loc_B1035B: FLdRfVar var_E4
  loc_B1035E: LitVarI2 var_BC, 0
  loc_B10363: HardType
  loc_B10364: NeVarBool
  loc_B10366: FFreeAd var_CC = "": var_D0 = ""
  loc_B1036F: FFree1Var var_E4 = ""
  loc_B10372: BranchF loc_B1043A
  loc_B10375: FLdRfVar var_D4
  loc_B10378: LitVarStr var_AC, "DeveImpu"
  loc_B1037D: PopAdLdVar
  loc_B1037E: FLdRfVar var_D0
  loc_B10381: FLdRfVar var_CC
  loc_B10384: FLdPr var_88
  loc_B10387: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B1038C: FLdPr var_CC
  loc_B1038F:  = Me.Fields
  loc_B10394: FLdPr var_D0
  loc_B10397: from_stack_2 = Me.Item(from_stack_1)
  loc_B1039C: LitI2_Byte 0
  loc_B1039E: LitI4 3
  loc_B103A3: ILdRf arg_14
  loc_B103A6: ILdRf arg_10
  loc_B103A9: ILdRf arg_C
  loc_B103AC: FLdPr Me
  loc_B103AF: MemLdStr global_96
  loc_B103B2: AryLock
  loc_B103B5: Ary1LdPr
  loc_B103B6: MemLdStr global_24
  loc_B103B9: AryLock
  loc_B103BC: Ary1LdPr
  loc_B103BD: MemLdStr global_20
  loc_B103C0: AryLock
  loc_B103C3: Ary1LdPr
  loc_B103C4: MemLdRfVar from_stack_1.global_24
  loc_B103C7: AryInRecLdRf
  loc_B103CD: CVarRef
  loc_B103D2: LitI2_Byte &HFF
  loc_B103D4: FLdZeroAd var_D4
  loc_B103D7: CVarAd
  loc_B103DB: PopAdLdVar
  loc_B103DC: LitI4 3
  loc_B103E1: ILdRf arg_18
  loc_B103E4: ILdRf arg_14
  loc_B103E7: ILdRf arg_10
  loc_B103EA: ILdRf arg_C
  loc_B103ED: FLdPr Me
  loc_B103F0: MemLdStr global_96
  loc_B103F3: AryLock
  loc_B103F6: Ary1LdPr
  loc_B103F7: MemLdStr global_24
  loc_B103FA: AryLock
  loc_B103FD: Ary1LdPr
  loc_B103FE: MemLdStr global_20
  loc_B10401: AryLock
  loc_B10404: Ary1LdPr
  loc_B10405: MemLdStr global_20
  loc_B10408: AryLock
  loc_B1040B: Ary1LdPr
  loc_B1040C: MemLdStr global_0
  loc_B1040F: AryLock
  loc_B10412: Ary1LdRf
  loc_B10413: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B10418: AryUnlock
  loc_B1041B: AryUnlock
  loc_B1041E: AryUnlock
  loc_B10421: AryUnlock
  loc_B10424: AryUnlock
  loc_B10427: AryUnlock
  loc_B1042A: AryUnlock
  loc_B1042D: AryUnlock
  loc_B10430: FFreeAd var_CC = ""
  loc_B10437: FFree1Var var_E4 = ""
  loc_B1043A: FLdRfVar var_E4
  loc_B1043D: FLdRfVar var_D4
  loc_B10440: LitVarStr var_AC, "MapaImpu"
  loc_B10445: PopAdLdVar
  loc_B10446: FLdRfVar var_D0
  loc_B10449: FLdRfVar var_CC
  loc_B1044C: FLdPr var_88
  loc_B1044F: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B10454: FLdPr var_CC
  loc_B10457:  = Me.Fields
  loc_B1045C: FLdPr var_D0
  loc_B1045F: from_stack_2 = Me.Item(from_stack_1)
  loc_B10464: FLdPr var_D4
  loc_B10467:  = Me.Value
  loc_B1046C: FLdRfVar var_E4
  loc_B1046F: LitVarI2 var_BC, 0
  loc_B10474: HardType
  loc_B10475: NeVarBool
  loc_B10477: FFreeAd var_CC = "": var_D0 = ""
  loc_B10480: FFree1Var var_E4 = ""
  loc_B10483: BranchF loc_B1054B
  loc_B10486: FLdRfVar var_D4
  loc_B10489: LitVarStr var_AC, "MapaImpu"
  loc_B1048E: PopAdLdVar
  loc_B1048F: FLdRfVar var_D0
  loc_B10492: FLdRfVar var_CC
  loc_B10495: FLdPr var_88
  loc_B10498: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B1049D: FLdPr var_CC
  loc_B104A0:  = Me.Fields
  loc_B104A5: FLdPr var_D0
  loc_B104A8: from_stack_2 = Me.Item(from_stack_1)
  loc_B104AD: LitI2_Byte 0
  loc_B104AF: LitI4 4
  loc_B104B4: ILdRf arg_14
  loc_B104B7: ILdRf arg_10
  loc_B104BA: ILdRf arg_C
  loc_B104BD: FLdPr Me
  loc_B104C0: MemLdStr global_96
  loc_B104C3: AryLock
  loc_B104C6: Ary1LdPr
  loc_B104C7: MemLdStr global_24
  loc_B104CA: AryLock
  loc_B104CD: Ary1LdPr
  loc_B104CE: MemLdStr global_20
  loc_B104D1: AryLock
  loc_B104D4: Ary1LdPr
  loc_B104D5: MemLdRfVar from_stack_1.global_24
  loc_B104D8: AryInRecLdRf
  loc_B104DE: CVarRef
  loc_B104E3: LitI2_Byte &HFF
  loc_B104E5: FLdZeroAd var_D4
  loc_B104E8: CVarAd
  loc_B104EC: PopAdLdVar
  loc_B104ED: LitI4 4
  loc_B104F2: ILdRf arg_18
  loc_B104F5: ILdRf arg_14
  loc_B104F8: ILdRf arg_10
  loc_B104FB: ILdRf arg_C
  loc_B104FE: FLdPr Me
  loc_B10501: MemLdStr global_96
  loc_B10504: AryLock
  loc_B10507: Ary1LdPr
  loc_B10508: MemLdStr global_24
  loc_B1050B: AryLock
  loc_B1050E: Ary1LdPr
  loc_B1050F: MemLdStr global_20
  loc_B10512: AryLock
  loc_B10515: Ary1LdPr
  loc_B10516: MemLdStr global_20
  loc_B10519: AryLock
  loc_B1051C: Ary1LdPr
  loc_B1051D: MemLdStr global_0
  loc_B10520: AryLock
  loc_B10523: Ary1LdRf
  loc_B10524: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B10529: AryUnlock
  loc_B1052C: AryUnlock
  loc_B1052F: AryUnlock
  loc_B10532: AryUnlock
  loc_B10535: AryUnlock
  loc_B10538: AryUnlock
  loc_B1053B: AryUnlock
  loc_B1053E: AryUnlock
  loc_B10541: FFreeAd var_CC = ""
  loc_B10548: FFree1Var var_E4 = ""
  loc_B1054B: FLdRfVar var_E4
  loc_B1054E: FLdRfVar var_D4
  loc_B10551: LitVarStr var_AC, "PagaImpu"
  loc_B10556: PopAdLdVar
  loc_B10557: FLdRfVar var_D0
  loc_B1055A: FLdRfVar var_CC
  loc_B1055D: FLdPr var_88
  loc_B10560: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B10565: FLdPr var_CC
  loc_B10568:  = Me.Fields
  loc_B1056D: FLdPr var_D0
  loc_B10570: from_stack_2 = Me.Item(from_stack_1)
  loc_B10575: FLdPr var_D4
  loc_B10578:  = Me.Value
  loc_B1057D: FLdRfVar var_E4
  loc_B10580: LitVarI2 var_BC, 0
  loc_B10585: HardType
  loc_B10586: NeVarBool
  loc_B10588: FFreeAd var_CC = "": var_D0 = ""
  loc_B10591: FFree1Var var_E4 = ""
  loc_B10594: BranchF loc_B1065C
  loc_B10597: FLdRfVar var_D4
  loc_B1059A: LitVarStr var_AC, "PagaImpu"
  loc_B1059F: PopAdLdVar
  loc_B105A0: FLdRfVar var_D0
  loc_B105A3: FLdRfVar var_CC
  loc_B105A6: FLdPr var_88
  loc_B105A9: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B105AE: FLdPr var_CC
  loc_B105B1:  = Me.Fields
  loc_B105B6: FLdPr var_D0
  loc_B105B9: from_stack_2 = Me.Item(from_stack_1)
  loc_B105BE: LitI2_Byte 0
  loc_B105C0: LitI4 5
  loc_B105C5: ILdRf arg_14
  loc_B105C8: ILdRf arg_10
  loc_B105CB: ILdRf arg_C
  loc_B105CE: FLdPr Me
  loc_B105D1: MemLdStr global_96
  loc_B105D4: AryLock
  loc_B105D7: Ary1LdPr
  loc_B105D8: MemLdStr global_24
  loc_B105DB: AryLock
  loc_B105DE: Ary1LdPr
  loc_B105DF: MemLdStr global_20
  loc_B105E2: AryLock
  loc_B105E5: Ary1LdPr
  loc_B105E6: MemLdRfVar from_stack_1.global_24
  loc_B105E9: AryInRecLdRf
  loc_B105EF: CVarRef
  loc_B105F4: LitI2_Byte &HFF
  loc_B105F6: FLdZeroAd var_D4
  loc_B105F9: CVarAd
  loc_B105FD: PopAdLdVar
  loc_B105FE: LitI4 5
  loc_B10603: ILdRf arg_18
  loc_B10606: ILdRf arg_14
  loc_B10609: ILdRf arg_10
  loc_B1060C: ILdRf arg_C
  loc_B1060F: FLdPr Me
  loc_B10612: MemLdStr global_96
  loc_B10615: AryLock
  loc_B10618: Ary1LdPr
  loc_B10619: MemLdStr global_24
  loc_B1061C: AryLock
  loc_B1061F: Ary1LdPr
  loc_B10620: MemLdStr global_20
  loc_B10623: AryLock
  loc_B10626: Ary1LdPr
  loc_B10627: MemLdStr global_20
  loc_B1062A: AryLock
  loc_B1062D: Ary1LdPr
  loc_B1062E: MemLdStr global_0
  loc_B10631: AryLock
  loc_B10634: Ary1LdRf
  loc_B10635: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B1063A: AryUnlock
  loc_B1063D: AryUnlock
  loc_B10640: AryUnlock
  loc_B10643: AryUnlock
  loc_B10646: AryUnlock
  loc_B10649: AryUnlock
  loc_B1064C: AryUnlock
  loc_B1064F: AryUnlock
  loc_B10652: FFreeAd var_CC = ""
  loc_B10659: FFree1Var var_E4 = ""
  loc_B1065C: LitNothing
  loc_B1065E: FStAd var_88 
  loc_B10662: ExitProcHresult
End Function

Private Function Proc_227_34_B20B08() 'B20B08
  'Data Table: 4CC8C0
  loc_B20224: LitVarStr var_94, "<html>"
  loc_B20229: PopAdLdVar
  loc_B2022A: FLdPr Me
  loc_B2022D: MemLdRfVar from_stack_1.global_80
  loc_B20230: LdPrVar
  loc_B20232: LateMemCall
  loc_B20238: LitVarStr var_94, "<head>"
  loc_B2023D: PopAdLdVar
  loc_B2023E: FLdPr Me
  loc_B20241: MemLdRfVar from_stack_1.global_80
  loc_B20244: LdPrVar
  loc_B20246: LateMemCall
  loc_B2024C: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_B20251: PopAdLdVar
  loc_B20252: FLdPr Me
  loc_B20255: MemLdRfVar from_stack_1.global_80
  loc_B20258: LdPrVar
  loc_B2025A: LateMemCall
  loc_B20260: LitStr "<title>"
  loc_B20263: FLdRfVar var_A8
  loc_B20266: FLdPr Me
  loc_B20269:  = Me.Caption
  loc_B2026E: ILdRf var_A8
  loc_B20271: ConcatStr
  loc_B20272: FStStrNoPop var_AC
  loc_B20275: LitStr "</title>"
  loc_B20278: ConcatStr
  loc_B20279: CVarStr var_BC
  loc_B2027C: PopAdLdVar
  loc_B2027D: FLdPr Me
  loc_B20280: MemLdRfVar from_stack_1.global_80
  loc_B20283: LdPrVar
  loc_B20285: LateMemCall
  loc_B2028B: FFreeStr var_A8 = ""
  loc_B20292: FFree1Var var_BC = ""
  loc_B20295: LitVarStr var_94, "<style type=""text/css"">"
  loc_B2029A: PopAdLdVar
  loc_B2029B: FLdPr Me
  loc_B2029E: MemLdRfVar from_stack_1.global_80
  loc_B202A1: LdPrVar
  loc_B202A3: LateMemCall
  loc_B202A9: LitVarStr var_94, ".Titulo1 {"
  loc_B202AE: PopAdLdVar
  loc_B202AF: FLdPr Me
  loc_B202B2: MemLdRfVar from_stack_1.global_80
  loc_B202B5: LdPrVar
  loc_B202B7: LateMemCall
  loc_B202BD: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_B202C2: PopAdLdVar
  loc_B202C3: FLdPr Me
  loc_B202C6: MemLdRfVar from_stack_1.global_80
  loc_B202C9: LdPrVar
  loc_B202CB: LateMemCall
  loc_B202D1: LitVarStr var_94, " font-size: 18px;"
  loc_B202D6: PopAdLdVar
  loc_B202D7: FLdPr Me
  loc_B202DA: MemLdRfVar from_stack_1.global_80
  loc_B202DD: LdPrVar
  loc_B202DF: LateMemCall
  loc_B202E5: LitVarStr var_94, " font-weight: bold;"
  loc_B202EA: PopAdLdVar
  loc_B202EB: FLdPr Me
  loc_B202EE: MemLdRfVar from_stack_1.global_80
  loc_B202F1: LdPrVar
  loc_B202F3: LateMemCall
  loc_B202F9: LitVarStr var_94, "}"
  loc_B202FE: PopAdLdVar
  loc_B202FF: FLdPr Me
  loc_B20302: MemLdRfVar from_stack_1.global_80
  loc_B20305: LdPrVar
  loc_B20307: LateMemCall
  loc_B2030D: LitVarStr var_94, ".Titulo2 {"
  loc_B20312: PopAdLdVar
  loc_B20313: FLdPr Me
  loc_B20316: MemLdRfVar from_stack_1.global_80
  loc_B20319: LdPrVar
  loc_B2031B: LateMemCall
  loc_B20321: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_B20326: PopAdLdVar
  loc_B20327: FLdPr Me
  loc_B2032A: MemLdRfVar from_stack_1.global_80
  loc_B2032D: LdPrVar
  loc_B2032F: LateMemCall
  loc_B20335: LitVarStr var_94, " font-size: 14px;"
  loc_B2033A: PopAdLdVar
  loc_B2033B: FLdPr Me
  loc_B2033E: MemLdRfVar from_stack_1.global_80
  loc_B20341: LdPrVar
  loc_B20343: LateMemCall
  loc_B20349: LitVarStr var_94, " font-weight: bold;"
  loc_B2034E: PopAdLdVar
  loc_B2034F: FLdPr Me
  loc_B20352: MemLdRfVar from_stack_1.global_80
  loc_B20355: LdPrVar
  loc_B20357: LateMemCall
  loc_B2035D: LitVarStr var_94, "}"
  loc_B20362: PopAdLdVar
  loc_B20363: FLdPr Me
  loc_B20366: MemLdRfVar from_stack_1.global_80
  loc_B20369: LdPrVar
  loc_B2036B: LateMemCall
  loc_B20371: LitVarStr var_94, ".Normal {"
  loc_B20376: PopAdLdVar
  loc_B20377: FLdPr Me
  loc_B2037A: MemLdRfVar from_stack_1.global_80
  loc_B2037D: LdPrVar
  loc_B2037F: LateMemCall
  loc_B20385: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_B2038A: PopAdLdVar
  loc_B2038B: FLdPr Me
  loc_B2038E: MemLdRfVar from_stack_1.global_80
  loc_B20391: LdPrVar
  loc_B20393: LateMemCall
  loc_B20399: LitVarStr var_94, " font-size: 14px;"
  loc_B2039E: PopAdLdVar
  loc_B2039F: FLdPr Me
  loc_B203A2: MemLdRfVar from_stack_1.global_80
  loc_B203A5: LdPrVar
  loc_B203A7: LateMemCall
  loc_B203AD: LitVarStr var_94, " font-style: normal;"
  loc_B203B2: PopAdLdVar
  loc_B203B3: FLdPr Me
  loc_B203B6: MemLdRfVar from_stack_1.global_80
  loc_B203B9: LdPrVar
  loc_B203BB: LateMemCall
  loc_B203C1: LitVarStr var_94, " font-weight: normal;"
  loc_B203C6: PopAdLdVar
  loc_B203C7: FLdPr Me
  loc_B203CA: MemLdRfVar from_stack_1.global_80
  loc_B203CD: LdPrVar
  loc_B203CF: LateMemCall
  loc_B203D5: LitVarStr var_94, " font-variant: normal;"
  loc_B203DA: PopAdLdVar
  loc_B203DB: FLdPr Me
  loc_B203DE: MemLdRfVar from_stack_1.global_80
  loc_B203E1: LdPrVar
  loc_B203E3: LateMemCall
  loc_B203E9: LitVarStr var_94, "}"
  loc_B203EE: PopAdLdVar
  loc_B203EF: FLdPr Me
  loc_B203F2: MemLdRfVar from_stack_1.global_80
  loc_B203F5: LdPrVar
  loc_B203F7: LateMemCall
  loc_B203FD: LitVarStr var_94, ".Encabezado {"
  loc_B20402: PopAdLdVar
  loc_B20403: FLdPr Me
  loc_B20406: MemLdRfVar from_stack_1.global_80
  loc_B20409: LdPrVar
  loc_B2040B: LateMemCall
  loc_B20411: LitVarStr var_94, " font-family: ""Times New Roman"", Times, serif;"
  loc_B20416: PopAdLdVar
  loc_B20417: FLdPr Me
  loc_B2041A: MemLdRfVar from_stack_1.global_80
  loc_B2041D: LdPrVar
  loc_B2041F: LateMemCall
  loc_B20425: LitVarStr var_94, " font-size: 13px;"
  loc_B2042A: PopAdLdVar
  loc_B2042B: FLdPr Me
  loc_B2042E: MemLdRfVar from_stack_1.global_80
  loc_B20431: LdPrVar
  loc_B20433: LateMemCall
  loc_B20439: LitVarStr var_94, " font-weight: bold;"
  loc_B2043E: PopAdLdVar
  loc_B2043F: FLdPr Me
  loc_B20442: MemLdRfVar from_stack_1.global_80
  loc_B20445: LdPrVar
  loc_B20447: LateMemCall
  loc_B2044D: LitVarStr var_94, " background-color: #D3D3D3;"
  loc_B20452: PopAdLdVar
  loc_B20453: FLdPr Me
  loc_B20456: MemLdRfVar from_stack_1.global_80
  loc_B20459: LdPrVar
  loc_B2045B: LateMemCall
  loc_B20461: LitVarStr var_94, "}"
  loc_B20466: PopAdLdVar
  loc_B20467: FLdPr Me
  loc_B2046A: MemLdRfVar from_stack_1.global_80
  loc_B2046D: LdPrVar
  loc_B2046F: LateMemCall
  loc_B20475: LitVarStr var_94, ".LineaDato {"
  loc_B2047A: PopAdLdVar
  loc_B2047B: FLdPr Me
  loc_B2047E: MemLdRfVar from_stack_1.global_80
  loc_B20481: LdPrVar
  loc_B20483: LateMemCall
  loc_B20489: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_B2048E: PopAdLdVar
  loc_B2048F: FLdPr Me
  loc_B20492: MemLdRfVar from_stack_1.global_80
  loc_B20495: LdPrVar
  loc_B20497: LateMemCall
  loc_B2049D: LitVarStr var_94, " font-size: 10px;"
  loc_B204A2: PopAdLdVar
  loc_B204A3: FLdPr Me
  loc_B204A6: MemLdRfVar from_stack_1.global_80
  loc_B204A9: LdPrVar
  loc_B204AB: LateMemCall
  loc_B204B1: LitVarStr var_94, "}"
  loc_B204B6: PopAdLdVar
  loc_B204B7: FLdPr Me
  loc_B204BA: MemLdRfVar from_stack_1.global_80
  loc_B204BD: LdPrVar
  loc_B204BF: LateMemCall
  loc_B204C5: LitVarStr var_94, ".Totales {"
  loc_B204CA: PopAdLdVar
  loc_B204CB: FLdPr Me
  loc_B204CE: MemLdRfVar from_stack_1.global_80
  loc_B204D1: LdPrVar
  loc_B204D3: LateMemCall
  loc_B204D9: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_B204DE: PopAdLdVar
  loc_B204DF: FLdPr Me
  loc_B204E2: MemLdRfVar from_stack_1.global_80
  loc_B204E5: LdPrVar
  loc_B204E7: LateMemCall
  loc_B204ED: LitVarStr var_94, " font-size: 12px;"
  loc_B204F2: PopAdLdVar
  loc_B204F3: FLdPr Me
  loc_B204F6: MemLdRfVar from_stack_1.global_80
  loc_B204F9: LdPrVar
  loc_B204FB: LateMemCall
  loc_B20501: LitVarStr var_94, " font-weight: bold;"
  loc_B20506: PopAdLdVar
  loc_B20507: FLdPr Me
  loc_B2050A: MemLdRfVar from_stack_1.global_80
  loc_B2050D: LdPrVar
  loc_B2050F: LateMemCall
  loc_B20515: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_B2051A: PopAdLdVar
  loc_B2051B: FLdPr Me
  loc_B2051E: MemLdRfVar from_stack_1.global_80
  loc_B20521: LdPrVar
  loc_B20523: LateMemCall
  loc_B20529: LitVarStr var_94, "}"
  loc_B2052E: PopAdLdVar
  loc_B2052F: FLdPr Me
  loc_B20532: MemLdRfVar from_stack_1.global_80
  loc_B20535: LdPrVar
  loc_B20537: LateMemCall
  loc_B2053D: LitVarStr var_94, "THEAD { display: table-header-group; }"
  loc_B20542: PopAdLdVar
  loc_B20543: FLdPr Me
  loc_B20546: MemLdRfVar from_stack_1.global_80
  loc_B20549: LdPrVar
  loc_B2054B: LateMemCall
  loc_B20551: LitVarStr var_94, "</style>"
  loc_B20556: PopAdLdVar
  loc_B20557: FLdPr Me
  loc_B2055A: MemLdRfVar from_stack_1.global_80
  loc_B2055D: LdPrVar
  loc_B2055F: LateMemCall
  loc_B20565: LitI4 0
  loc_B2056A: FStStrCopy var_AC
  loc_B2056D: FLdRfVar var_AC
  loc_B20570: LitI4 0
  loc_B20575: FStStrCopy var_A8
  loc_B20578: FLdRfVar var_A8
  loc_B2057B: LitI2_Byte &HFF
  loc_B2057D: PopTmpLdAd2 var_BE
  loc_B20580: FLdPr Me
  loc_B20583: MemLdRfVar from_stack_1.global_80
  loc_B20586: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_B2058B: FFreeStr var_A8 = ""
  loc_B20592: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_B20597: PopAdLdVar
  loc_B20598: FLdPr Me
  loc_B2059B: MemLdRfVar from_stack_1.global_80
  loc_B2059E: LdPrVar
  loc_B205A0: LateMemCall
  loc_B205A6: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_B205AB: PopAdLdVar
  loc_B205AC: FLdPr Me
  loc_B205AF: MemLdRfVar from_stack_1.global_80
  loc_B205B2: LdPrVar
  loc_B205B4: LateMemCall
  loc_B205BA: LitVarStr var_A4, "    <th width=""100" & Chr(37) & """ valign=""bottom""><p align=""center""><img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>"
  loc_B205BF: LitVarStr var_94, "Municipalidad de Guaymallén"
  loc_B205C4: FStVarCopyObj var_BC
  loc_B205C7: FLdRfVar var_BC
  loc_B205CA: FLdRfVar var_D0
  loc_B205CD: ImpAdCallFPR4  = Ucase()
  loc_B205D2: FLdRfVar var_D0
  loc_B205D5: ConcatVar var_E0
  loc_B205D9: LitVarStr var_F0, "</p>"
  loc_B205DE: ConcatVar var_100
  loc_B205E2: PopAdLdVar
  loc_B205E3: FLdPr Me
  loc_B205E6: MemLdRfVar from_stack_1.global_80
  loc_B205E9: LdPrVar
  loc_B205EB: LateMemCall
  loc_B205F1: FFreeVar var_BC = "": var_D0 = "": var_E0 = ""
  loc_B205FC: LitStr "    <p align=""center"">"
  loc_B205FF: FLdRfVar var_A8
  loc_B20602: FLdPr Me
  loc_B20605:  = Me.Caption
  loc_B2060A: ILdRf var_A8
  loc_B2060D: ConcatStr
  loc_B2060E: FStStrNoPop var_AC
  loc_B20611: LitStr "</p></th>"
  loc_B20614: ConcatStr
  loc_B20615: CVarStr var_BC
  loc_B20618: PopAdLdVar
  loc_B20619: FLdPr Me
  loc_B2061C: MemLdRfVar from_stack_1.global_80
  loc_B2061F: LdPrVar
  loc_B20621: LateMemCall
  loc_B20627: FFreeStr var_A8 = ""
  loc_B2062E: FFree1Var var_BC = ""
  loc_B20631: LitVarStr var_94, "  </tr>"
  loc_B20636: PopAdLdVar
  loc_B20637: FLdPr Me
  loc_B2063A: MemLdRfVar from_stack_1.global_80
  loc_B2063D: LdPrVar
  loc_B2063F: LateMemCall
  loc_B20645: LitVarStr var_94, "  <tr><th><hr></th></tr>"
  loc_B2064A: PopAdLdVar
  loc_B2064B: FLdPr Me
  loc_B2064E: MemLdRfVar from_stack_1.global_80
  loc_B20651: LdPrVar
  loc_B20653: LateMemCall
  loc_B20659: LitVarStr var_94, "  <tr align=""left""><th>"
  loc_B2065E: PopAdLdVar
  loc_B2065F: FLdPr Me
  loc_B20662: MemLdRfVar from_stack_1.global_80
  loc_B20665: LdPrVar
  loc_B20667: LateMemCall
  loc_B2066D: LitStr "    Periodo: <span class=""Normal"">"
  loc_B20670: FLdRfVar var_A8
  loc_B20673: FLdPr Me
  loc_B20676: VCallAd Control_ID_cboPeriodo
  loc_B20679: FStAdFunc var_114
  loc_B2067C: FLdPr var_114
  loc_B2067F:  = Me.Text
  loc_B20684: ILdRf var_A8
  loc_B20687: ConcatStr
  loc_B20688: FStStrNoPop var_AC
  loc_B2068B: LitStr "</span>"
  loc_B2068E: ConcatStr
  loc_B2068F: CVarStr var_BC
  loc_B20692: PopAdLdVar
  loc_B20693: FLdPr Me
  loc_B20696: MemLdRfVar from_stack_1.global_80
  loc_B20699: LdPrVar
  loc_B2069B: LateMemCall
  loc_B206A1: FFreeStr var_A8 = ""
  loc_B206A8: FFree1Ad var_114
  loc_B206AB: FFree1Var var_BC = ""
  loc_B206AE: LitStr "   <br>Desde: <span class=""Normal"">"
  loc_B206B1: FLdPr Me
  loc_B206B4: VCallAd Control_ID_mskDesde
  loc_B206B7: FStAdFunc var_114
  loc_B206BA: FLdPr var_114
  loc_B206BD: LateIdLdVar var_BC DispID_15 0
  loc_B206C4: CStrVarTmp
  loc_B206C5: FStStrNoPop var_A8
  loc_B206C8: ConcatStr
  loc_B206C9: FStStrNoPop var_AC
  loc_B206CC: LitStr "</span>"
  loc_B206CF: ConcatStr
  loc_B206D0: CVarStr var_D0
  loc_B206D3: PopAdLdVar
  loc_B206D4: FLdPr Me
  loc_B206D7: MemLdRfVar from_stack_1.global_80
  loc_B206DA: LdPrVar
  loc_B206DC: LateMemCall
  loc_B206E2: FFreeStr var_A8 = ""
  loc_B206E9: FFree1Ad var_114
  loc_B206EC: FFreeVar var_BC = ""
  loc_B206F3: LitStr "   <br>Hasta: <span class=""Normal"">"
  loc_B206F6: FLdPr Me
  loc_B206F9: VCallAd Control_ID_mskHasta
  loc_B206FC: FStAdFunc var_114
  loc_B206FF: FLdPr var_114
  loc_B20702: LateIdLdVar var_BC DispID_15 0
  loc_B20709: CStrVarTmp
  loc_B2070A: FStStrNoPop var_A8
  loc_B2070D: ConcatStr
  loc_B2070E: FStStrNoPop var_AC
  loc_B20711: LitStr "</span>"
  loc_B20714: ConcatStr
  loc_B20715: CVarStr var_D0
  loc_B20718: PopAdLdVar
  loc_B20719: FLdPr Me
  loc_B2071C: MemLdRfVar from_stack_1.global_80
  loc_B2071F: LdPrVar
  loc_B20721: LateMemCall
  loc_B20727: FFreeStr var_A8 = ""
  loc_B2072E: FFree1Ad var_114
  loc_B20731: FFreeVar var_BC = ""
  loc_B20738: FLdPr Me
  loc_B2073B: VCallAd Control_ID_CodiPartMsk
  loc_B2073E: FStAdFunc var_114
  loc_B20741: FLdPr var_114
  loc_B20744: LateIdLdVar var_BC DispID_0 0
  loc_B2074B: CStrVarTmp
  loc_B2074C: FStStrNoPop var_A8
  loc_B2074F: LitStr vbNullString
  loc_B20752: NeStr
  loc_B20754: FFree1Str var_A8
  loc_B20757: FFree1Ad var_114
  loc_B2075A: FFree1Var var_BC = ""
  loc_B2075D: BranchF loc_B207D1
  loc_B20760: LitStr "   <br>Partida: <span class=""Normal"">Comenzando con '"
  loc_B20763: FLdPr Me
  loc_B20766: VCallAd Control_ID_CodiPartMsk
  loc_B20769: FStAdFunc var_114
  loc_B2076C: FLdPr var_114
  loc_B2076F: LateIdLdVar var_BC DispID_0 0
  loc_B20776: CStrVarTmp
  loc_B20777: FStStrNoPop var_A8
  loc_B2077A: ConcatStr
  loc_B2077B: FStStrNoPop var_AC
  loc_B2077E: LitStr "'  -  "
  loc_B20781: ConcatStr
  loc_B20782: FStStrNoPop var_120
  loc_B20785: FLdRfVar var_11C
  loc_B20788: FLdPr Me
  loc_B2078B: VCallAd Control_ID_CodiPartLbl
  loc_B2078E: FStAdFunc var_118
  loc_B20791: FLdPr var_118
  loc_B20794:  = Me.Caption
  loc_B20799: ILdRf var_11C
  loc_B2079C: ConcatStr
  loc_B2079D: FStStrNoPop var_124
  loc_B207A0: LitStr "</span>"
  loc_B207A3: ConcatStr
  loc_B207A4: CVarStr var_D0
  loc_B207A7: PopAdLdVar
  loc_B207A8: FLdPr Me
  loc_B207AB: MemLdRfVar from_stack_1.global_80
  loc_B207AE: LdPrVar
  loc_B207B0: LateMemCall
  loc_B207B6: FFreeStr var_A8 = "": var_AC = "": var_120 = "": var_11C = ""
  loc_B207C3: FFreeAd var_114 = ""
  loc_B207CA: FFreeVar var_BC = ""
  loc_B207D1: FLdPr Me
  loc_B207D4: VCallAd Control_ID_CodiOrgaMsk
  loc_B207D7: FStAdFunc var_114
  loc_B207DA: FLdPr var_114
  loc_B207DD: LateIdLdVar var_BC DispID_0 0
  loc_B207E4: CStrVarTmp
  loc_B207E5: FStStrNoPop var_A8
  loc_B207E8: LitStr vbNullString
  loc_B207EB: NeStr
  loc_B207ED: FFree1Str var_A8
  loc_B207F0: FFree1Ad var_114
  loc_B207F3: FFree1Var var_BC = ""
  loc_B207F6: BranchF loc_B2086A
  loc_B207F9: LitStr "   <br>Organigrama: <span class=""Normal"">Comenzando con '"
  loc_B207FC: FLdPr Me
  loc_B207FF: VCallAd Control_ID_CodiOrgaMsk
  loc_B20802: FStAdFunc var_114
  loc_B20805: FLdPr var_114
  loc_B20808: LateIdLdVar var_BC DispID_0 0
  loc_B2080F: CStrVarTmp
  loc_B20810: FStStrNoPop var_A8
  loc_B20813: ConcatStr
  loc_B20814: FStStrNoPop var_AC
  loc_B20817: LitStr "'  -  "
  loc_B2081A: ConcatStr
  loc_B2081B: FStStrNoPop var_120
  loc_B2081E: FLdRfVar var_11C
  loc_B20821: FLdPr Me
  loc_B20824: VCallAd Control_ID_CodiOrgaLbl
  loc_B20827: FStAdFunc var_118
  loc_B2082A: FLdPr var_118
  loc_B2082D:  = Me.Caption
  loc_B20832: ILdRf var_11C
  loc_B20835: ConcatStr
  loc_B20836: FStStrNoPop var_124
  loc_B20839: LitStr "</span>"
  loc_B2083C: ConcatStr
  loc_B2083D: CVarStr var_D0
  loc_B20840: PopAdLdVar
  loc_B20841: FLdPr Me
  loc_B20844: MemLdRfVar from_stack_1.global_80
  loc_B20847: LdPrVar
  loc_B20849: LateMemCall
  loc_B2084F: FFreeStr var_A8 = "": var_AC = "": var_120 = "": var_11C = ""
  loc_B2085C: FFreeAd var_114 = ""
  loc_B20863: FFreeVar var_BC = ""
  loc_B2086A: FLdPr Me
  loc_B2086D: VCallAd Control_ID_CodiUngaMsk
  loc_B20870: FStAdFunc var_114
  loc_B20873: FLdPr var_114
  loc_B20876: LateIdLdVar var_BC DispID_0 0
  loc_B2087D: CStrVarTmp
  loc_B2087E: FStStrNoPop var_A8
  loc_B20881: LitStr vbNullString
  loc_B20884: NeStr
  loc_B20886: FFree1Str var_A8
  loc_B20889: FFree1Ad var_114
  loc_B2088C: FFree1Var var_BC = ""
  loc_B2088F: BranchF loc_B20903
  loc_B20892: LitStr "   <br>Unidad de Gasto: <span class=""Normal"">"
  loc_B20895: FLdPr Me
  loc_B20898: VCallAd Control_ID_CodiUngaMsk
  loc_B2089B: FStAdFunc var_114
  loc_B2089E: FLdPr var_114
  loc_B208A1: LateIdLdVar var_BC DispID_22 0
  loc_B208A8: CStrVarTmp
  loc_B208A9: FStStrNoPop var_A8
  loc_B208AC: ConcatStr
  loc_B208AD: FStStrNoPop var_AC
  loc_B208B0: LitStr " - "
  loc_B208B3: ConcatStr
  loc_B208B4: FStStrNoPop var_120
  loc_B208B7: FLdRfVar var_11C
  loc_B208BA: FLdPr Me
  loc_B208BD: VCallAd Control_ID_DetaUngaLbl
  loc_B208C0: FStAdFunc var_118
  loc_B208C3: FLdPr var_118
  loc_B208C6:  = Me.Caption
  loc_B208CB: ILdRf var_11C
  loc_B208CE: ConcatStr
  loc_B208CF: FStStrNoPop var_124
  loc_B208D2: LitStr "</span>"
  loc_B208D5: ConcatStr
  loc_B208D6: CVarStr var_D0
  loc_B208D9: PopAdLdVar
  loc_B208DA: FLdPr Me
  loc_B208DD: MemLdRfVar from_stack_1.global_80
  loc_B208E0: LdPrVar
  loc_B208E2: LateMemCall
  loc_B208E8: FFreeStr var_A8 = "": var_AC = "": var_120 = "": var_11C = ""
  loc_B208F5: FFreeAd var_114 = ""
  loc_B208FC: FFreeVar var_BC = ""
  loc_B20903: FLdPr Me
  loc_B20906: VCallAd Control_ID_CodiFifuMsk
  loc_B20909: FStAdFunc var_114
  loc_B2090C: FLdPr var_114
  loc_B2090F: LateIdLdVar var_BC DispID_0 0
  loc_B20916: CStrVarTmp
  loc_B20917: FStStrNoPop var_A8
  loc_B2091A: LitStr vbNullString
  loc_B2091D: NeStr
  loc_B2091F: FFree1Str var_A8
  loc_B20922: FFree1Ad var_114
  loc_B20925: FFree1Var var_BC = ""
  loc_B20928: BranchF loc_B2099C
  loc_B2092B: LitStr "   <br>Finalidad y Funci&oacute;n: <span class=""Normal"">Comenzando con '"
  loc_B2092E: FLdPr Me
  loc_B20931: VCallAd Control_ID_CodiFifuMsk
  loc_B20934: FStAdFunc var_114
  loc_B20937: FLdPr var_114
  loc_B2093A: LateIdLdVar var_BC DispID_0 0
  loc_B20941: CStrVarTmp
  loc_B20942: FStStrNoPop var_A8
  loc_B20945: ConcatStr
  loc_B20946: FStStrNoPop var_AC
  loc_B20949: LitStr "'  -  "
  loc_B2094C: ConcatStr
  loc_B2094D: FStStrNoPop var_120
  loc_B20950: FLdRfVar var_11C
  loc_B20953: FLdPr Me
  loc_B20956: VCallAd Control_ID_CodiFifuLbl
  loc_B20959: FStAdFunc var_118
  loc_B2095C: FLdPr var_118
  loc_B2095F:  = Me.Caption
  loc_B20964: ILdRf var_11C
  loc_B20967: ConcatStr
  loc_B20968: FStStrNoPop var_124
  loc_B2096B: LitStr "</span>"
  loc_B2096E: ConcatStr
  loc_B2096F: CVarStr var_D0
  loc_B20972: PopAdLdVar
  loc_B20973: FLdPr Me
  loc_B20976: MemLdRfVar from_stack_1.global_80
  loc_B20979: LdPrVar
  loc_B2097B: LateMemCall
  loc_B20981: FFreeStr var_A8 = "": var_AC = "": var_120 = "": var_11C = ""
  loc_B2098E: FFreeAd var_114 = ""
  loc_B20995: FFreeVar var_BC = ""
  loc_B2099C: LitVarStr var_94, "   </th>"
  loc_B209A1: PopAdLdVar
  loc_B209A2: FLdPr Me
  loc_B209A5: MemLdRfVar from_stack_1.global_80
  loc_B209A8: LdPrVar
  loc_B209AA: LateMemCall
  loc_B209B0: LitVarStr var_94, "  </tr>"
  loc_B209B5: PopAdLdVar
  loc_B209B6: FLdPr Me
  loc_B209B9: MemLdRfVar from_stack_1.global_80
  loc_B209BC: LdPrVar
  loc_B209BE: LateMemCall
  loc_B209C4: LitVarStr var_94, "</table>"
  loc_B209C9: PopAdLdVar
  loc_B209CA: FLdPr Me
  loc_B209CD: MemLdRfVar from_stack_1.global_80
  loc_B209D0: LdPrVar
  loc_B209D2: LateMemCall
  loc_B209D8: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_B209DD: PopAdLdVar
  loc_B209DE: FLdPr Me
  loc_B209E1: MemLdRfVar from_stack_1.global_80
  loc_B209E4: LdPrVar
  loc_B209E6: LateMemCall
  loc_B209EC: LitVarStr var_94, "  <THEAD>"
  loc_B209F1: PopAdLdVar
  loc_B209F2: FLdPr Me
  loc_B209F5: MemLdRfVar from_stack_1.global_80
  loc_B209F8: LdPrVar
  loc_B209FA: LateMemCall
  loc_B20A00: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_B20A05: PopAdLdVar
  loc_B20A06: FLdPr Me
  loc_B20A09: MemLdRfVar from_stack_1.global_80
  loc_B20A0C: LdPrVar
  loc_B20A0E: LateMemCall
  loc_B20A14: LitVarStr var_94, "    <th>Partida</th>"
  loc_B20A19: PopAdLdVar
  loc_B20A1A: FLdPr Me
  loc_B20A1D: MemLdRfVar from_stack_1.global_80
  loc_B20A20: LdPrVar
  loc_B20A22: LateMemCall
  loc_B20A28: LitVarStr var_94, "    <th>Organigrama</th>"
  loc_B20A2D: PopAdLdVar
  loc_B20A2E: FLdPr Me
  loc_B20A31: MemLdRfVar from_stack_1.global_80
  loc_B20A34: LdPrVar
  loc_B20A36: LateMemCall
  loc_B20A3C: LitVarStr var_94, "    <th>Finalidad<br>"
  loc_B20A41: PopAdLdVar
  loc_B20A42: FLdPr Me
  loc_B20A45: MemLdRfVar from_stack_1.global_80
  loc_B20A48: LdPrVar
  loc_B20A4A: LateMemCall
  loc_B20A50: LitVarStr var_94, "    y funci&oacute;n</th>"
  loc_B20A55: PopAdLdVar
  loc_B20A56: FLdPr Me
  loc_B20A59: MemLdRfVar from_stack_1.global_80
  loc_B20A5C: LdPrVar
  loc_B20A5E: LateMemCall
  loc_B20A64: LitVarStr var_94, "    <th>&nbsp</th>"
  loc_B20A69: PopAdLdVar
  loc_B20A6A: FLdPr Me
  loc_B20A6D: MemLdRfVar from_stack_1.global_80
  loc_B20A70: LdPrVar
  loc_B20A72: LateMemCall
  loc_B20A78: LitVarStr var_94, "    <th>Preventiva</th>"
  loc_B20A7D: PopAdLdVar
  loc_B20A7E: FLdPr Me
  loc_B20A81: MemLdRfVar from_stack_1.global_80
  loc_B20A84: LdPrVar
  loc_B20A86: LateMemCall
  loc_B20A8C: LitVarStr var_94, "    <th>Definitiva</th>"
  loc_B20A91: PopAdLdVar
  loc_B20A92: FLdPr Me
  loc_B20A95: MemLdRfVar from_stack_1.global_80
  loc_B20A98: LdPrVar
  loc_B20A9A: LateMemCall
  loc_B20AA0: LitVarStr var_94, "    <th>Devengado</th>"
  loc_B20AA5: PopAdLdVar
  loc_B20AA6: FLdPr Me
  loc_B20AA9: MemLdRfVar from_stack_1.global_80
  loc_B20AAC: LdPrVar
  loc_B20AAE: LateMemCall
  loc_B20AB4: LitVarStr var_94, "    <th>Mandado<br>a pagar </th>"
  loc_B20AB9: PopAdLdVar
  loc_B20ABA: FLdPr Me
  loc_B20ABD: MemLdRfVar from_stack_1.global_80
  loc_B20AC0: LdPrVar
  loc_B20AC2: LateMemCall
  loc_B20AC8: LitVarStr var_94, "    <th>Pagado</th>"
  loc_B20ACD: PopAdLdVar
  loc_B20ACE: FLdPr Me
  loc_B20AD1: MemLdRfVar from_stack_1.global_80
  loc_B20AD4: LdPrVar
  loc_B20AD6: LateMemCall
  loc_B20ADC: LitVarStr var_94, "  </tr>"
  loc_B20AE1: PopAdLdVar
  loc_B20AE2: FLdPr Me
  loc_B20AE5: MemLdRfVar from_stack_1.global_80
  loc_B20AE8: LdPrVar
  loc_B20AEA: LateMemCall
  loc_B20AF0: LitVarStr var_94, "  </THEAD>"
  loc_B20AF5: PopAdLdVar
  loc_B20AF6: FLdPr Me
  loc_B20AF9: MemLdRfVar from_stack_1.global_80
  loc_B20AFC: LdPrVar
  loc_B20AFE: LateMemCall
  loc_B20B04: ExitProcHresult
End Function

Private Function Proc_227_35_983260() '983260
  'Data Table: 4CC8C0
  loc_983220: LitVarStr var_94, "</table>"
  loc_983225: PopAdLdVar
  loc_983226: FLdPr Me
  loc_983229: MemLdRfVar from_stack_1.global_80
  loc_98322C: LdPrVar
  loc_98322E: LateMemCall
  loc_983234: LitVarStr var_94, "</body>"
  loc_983239: PopAdLdVar
  loc_98323A: FLdPr Me
  loc_98323D: MemLdRfVar from_stack_1.global_80
  loc_983240: LdPrVar
  loc_983242: LateMemCall
  loc_983248: LitVarStr var_94, "</html>"
  loc_98324D: PopAdLdVar
  loc_98324E: FLdPr Me
  loc_983251: MemLdRfVar from_stack_1.global_80
  loc_983254: LdPrVar
  loc_983256: LateMemCall
  loc_98325C: ExitProcHresult
End Function
