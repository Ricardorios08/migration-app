VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptLibrodeImputacionesporInsumo
  Caption = "Libro de Imputaciones por Insumo"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptLibrodeImputacionesporInsumo.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2235
  ClientTop = 1845
  ClientWidth = 9225
  ClientHeight = 5745
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 5490
    Width = 9225
    Height = 255
    TabIndex = 29
    OleObjectBlob = "rptLibrodeImputacionesporInsumo.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 7320
    Top = 4560
    Width = 735
    Height = 615
    TabIndex = 24
    Cancel = -1  'True
    Picture = "rptLibrodeImputacionesporInsumo.frx":094A
    Style = 1
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptLibrodeImputacionesporInsumo.frx":0B9C
    Left = 4560
    Top = 0
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 4320
    Width = 3255
    Height = 1095
    TabIndex = 27
    Begin VB.CommandButton cmdXLS
      Caption = "&XLS"
      Left = 1680
      Top = 360
      Width = 1335
      Height = 495
      Enabled = 0   'False
      TabIndex = 38
    End
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 21
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 4320
    Width = 3015
    Height = 1095
    TabIndex = 26
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
    Width = 9015
    Height = 4215
    TabIndex = 0
    Begin VB.CommandButton cmdCodiFifu
      Left = 3105
      Top = 3600
      Width = 375
      Height = 375
      TabIndex = 18
      Picture = "rptLibrodeImputacionesporInsumo.frx":0C00
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CommandButton cmdCodiOrga
      Left = 2745
      Top = 2640
      Width = 375
      Height = 375
      TabIndex = 14
      Picture = "rptLibrodeImputacionesporInsumo.frx":0CFA
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CommandButton cmdCodiPart
      Left = 2985
      Top = 2160
      Width = 375
      Height = 375
      TabIndex = 12
      Picture = "rptLibrodeImputacionesporInsumo.frx":0DF4
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CommandButton CodiUngaCmd
      Left = 2400
      Top = 3120
      Width = 375
      Height = 375
      Enabled = 0   'False
      TabIndex = 16
      Picture = "rptLibrodeImputacionesporInsumo.frx":0EEE
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CommandButton cmdCodiInsu
      Left = 3120
      Top = 1680
      Width = 375
      Height = 375
      TabIndex = 10
      Picture = "rptLibrodeImputacionesporInsumo.frx":0FE8
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
      TabIndex = 8
      Picture = "rptLibrodeImputacionesporInsumo.frx":10E2
      Style = 1
    End
    Begin VB.CommandButton cmdCalDesde
      Left = 2880
      Top = 720
      Width = 375
      Height = 375
      TabIndex = 5
      Picture = "rptLibrodeImputacionesporInsumo.frx":1624
      Style = 1
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 7440
      Top = 240
      Width = 1335
      Height = 495
      TabIndex = 23
    End
    Begin MSMask.MaskEdBox mskDesde
      Left = 1680
      Top = 720
      Width = 1095
      Height = 285
      TabIndex = 4
      OleObjectBlob = "rptLibrodeImputacionesporInsumo.frx":1B66
    End
    Begin MSMask.MaskEdBox mskHasta
      Left = 1680
      Top = 1200
      Width = 1095
      Height = 285
      TabIndex = 7
      OleObjectBlob = "rptLibrodeImputacionesporInsumo.frx":1BEE
    End
    Begin MSMask.MaskEdBox CodiInsuMsk
      Left = 1680
      Top = 1680
      Width = 1335
      Height = 285
      TabIndex = 9
      OleObjectBlob = "rptLibrodeImputacionesporInsumo.frx":1C76
    End
    Begin MSMask.MaskEdBox CodiFifuMsk
      Left = 1665
      Top = 3600
      Width = 1335
      Height = 315
      TabIndex = 17
      OleObjectBlob = "rptLibrodeImputacionesporInsumo.frx":1CE6
    End
    Begin MSMask.MaskEdBox CodiOrgaMsk
      Left = 1665
      Top = 2640
      Width = 975
      Height = 315
      TabIndex = 13
      OleObjectBlob = "rptLibrodeImputacionesporInsumo.frx":1D46
    End
    Begin MSMask.MaskEdBox CodiPartMsk
      Left = 1665
      Top = 2160
      Width = 1215
      Height = 285
      TabIndex = 11
      OleObjectBlob = "rptLibrodeImputacionesporInsumo.frx":1DA6
    End
    Begin MSMask.MaskEdBox CodiUngaMsk
      Left = 1665
      Top = 3120
      Width = 600
      Height = 315
      TabIndex = 15
      OleObjectBlob = "rptLibrodeImputacionesporInsumo.frx":1E2E
      DataField = "CodiUnga"
    End
    Begin VB.Label CodiFifuLbl
      Left = 3585
      Top = 3600
      Width = 5295
      Height = 375
      TabIndex = 37
      BorderStyle = 1 'Fixed Single
    End
    Begin VB.Label CodiOrgaLbl
      Left = 3225
      Top = 2640
      Width = 5655
      Height = 375
      TabIndex = 36
      BorderStyle = 1 'Fixed Single
    End
    Begin VB.Label CodiPartLbl
      Left = 3465
      Top = 2160
      Width = 5415
      Height = 375
      TabIndex = 35
      BorderStyle = 1 'Fixed Single
    End
    Begin VB.Label Label17
      Caption = "Finalidad-Función:"
      Left = 240
      Top = 3600
      Width = 1290
      Height = 195
      TabIndex = 34
    End
    Begin VB.Label Label4
      Caption = "Organigrama:"
      Left = 585
      Top = 2640
      Width = 945
      Height = 195
      TabIndex = 33
    End
    Begin VB.Label Label5
      Caption = "Partida:"
      Left = 990
      Top = 2160
      Width = 540
      Height = 195
      TabIndex = 32
    End
    Begin VB.Label Label16
      Caption = "Unidad de Gasto:"
      Left = 285
      Top = 3120
      Width = 1245
      Height = 195
      TabIndex = 31
    End
    Begin VB.Label DetaUngaLbl
      Left = 2865
      Top = 3120
      Width = 6015
      Height = 375
      TabIndex = 30
      BorderStyle = 1 'Fixed Single
      DataField = "DetaUnga"
    End
    Begin VB.Label CodiInsuLbl
      Left = 3600
      Top = 1680
      Width = 2895
      Height = 375
      TabIndex = 25
      BorderStyle = 1 'Fixed Single
    End
    Begin VB.Label Label6
      Caption = "Insumo:"
      Left = 960
      Top = 1680
      Width = 615
      Height = 315
      TabIndex = 22
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
    Left = 7440
    Top = 4800
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 28
    OleObjectBlob = "rptLibrodeImputacionesporInsumo.frx":1EBE
  End
End

Attribute VB_Name = "rptLibrodeImputacionesporInsumo"

Public htmFile As Variant
Public bLogos As Boolean
Public bGenerado As Boolean

Private Type UDT_1_005DFA70
  bStruc(28) As Byte ' String fields: 7
End Type

Private Type UDT_2_005E1320
  bStruc(44) As Byte ' String fields: 5
End Type

Private Type UDT_3_005E1394
  bStruc(44) As Byte ' String fields: 5
End Type

Private Type UDT_4_005E1408
  bStruc(48) As Byte ' String fields: 5
End Type

Private Type UDT_5_005E147C
  bStruc(48) As Byte ' String fields: 5
End Type


Private Sub cmdCalHasta_Click() '97EBF8
  'Data Table: 4DCA5C
  loc_97EBC4: LitVar_Missing var_A4
  loc_97EBC7: PopAdLdVar
  loc_97EBC8: LitVarI4
  loc_97EBD0: PopAdLdVar
  loc_97EBD1: ImpAdLdRf MemVar_C3D9A8
  loc_97EBD4: NewIfNullPr frmCalendario
  loc_97EBD7: frmCalendario.Show from_stack_1, from_stack_2
  loc_97EBDC: ImpAdLdRf MemVar_C3D038
  loc_97EBDF: CDargRef
  loc_97EBE3: FLdPr Me
  loc_97EBE6: VCallAd Control_ID_mskHasta
  loc_97EBE9: FStAdFunc var_A8
  loc_97EBEC: FLdPr var_A8
  loc_97EBEF: LateIdSt
  loc_97EBF4: FFree1Ad var_A8
  loc_97EBF7: ExitProcHresult
End Sub

Private Sub CodiUngaMsk_UnknownEvent_0 '951D68
  'Data Table: 4DCA5C
  loc_951D54: FLdPr Me
  loc_951D57: VCallAd Control_ID_CodiUngaMsk
  loc_951D5A: CVarAd
  loc_951D5E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_951D63: FFree1Var var_94 = ""
  loc_951D66: ExitProcHresult
End Sub

Private Sub CodiUngaMsk_UnknownEvent_8 '97EB20
  'Data Table: 4DCA5C
  loc_97EAF4: FLdRfVar var_8C
  loc_97EAF7: FLdRfVar var_88
  loc_97EAFA: NewIfNullPr tblunidadgasto
  loc_97EAFD: from_stack_1v = tblunidadgasto.DetaUngaGet()
  loc_97EB02: ILdRf var_8C
  loc_97EB05: FLdPr Me
  loc_97EB08: VCallAd Control_ID_DetaUngaLbl
  loc_97EB0B: FStAdFunc var_90
  loc_97EB0E: FLdPr var_90
  loc_97EB11: Me.Caption = from_stack_1
  loc_97EB16: FFree1Str var_8C
  loc_97EB19: FFree1Ad var_90
  loc_97EB1C: ExitProcHresult
  loc_97EB1D: BranchF loc_97EE90
End Sub

Private Sub mskHasta_UnknownEvent_0 '94EBE8
  'Data Table: 4DCA5C
  loc_94EBD4: FLdPr Me
  loc_94EBD7: VCallAd Control_ID_mskHasta
  loc_94EBDA: CVarAd
  loc_94EBDE: ImpAdCallFPR4 Proc_261_5_9BDB84()
  loc_94EBE3: FFree1Var var_94 = ""
  loc_94EBE6: ExitProcHresult
End Sub

Private Function mskHasta_UnknownEvent_8(arg_C) '9C5420
  'Data Table: 4DCA5C
  loc_9C5364: FLdPr Me
  loc_9C5367: VCallAd Control_ID_mskHasta
  loc_9C536A: FStAdFunc var_88
  loc_9C536D: FLdPr var_88
  loc_9C5370: LateIdLdVar var_98 DispID_15 0
  loc_9C5377: PopAd
  loc_9C5379: FLdPr Me
  loc_9C537C: VCallAd Control_ID_mskDesde
  loc_9C537F: FStAdFunc var_9C
  loc_9C5382: FLdPr var_9C
  loc_9C5385: LateIdLdVar var_AC DispID_15 0
  loc_9C538C: PopAd
  loc_9C538E: FLdPr Me
  loc_9C5391: VCallAd Control_ID_mskHasta
  loc_9C5394: FStAdFunc var_C4
  loc_9C5397: LitI2_Byte 0
  loc_9C5399: PopTmpLdAd2 var_BA
  loc_9C539C: FLdZeroAd var_C4
  loc_9C539F: FStAdFunc var_B8
  loc_9C53A2: FLdRfVar var_B8
  loc_9C53A5: FLdRfVar var_AC
  loc_9C53A8: CStrVarTmp
  loc_9C53A9: FStStrNoPop var_B4
  loc_9C53AC: LitI2_Byte 0
  loc_9C53AE: LitI2_Byte 0
  loc_9C53B0: FLdRfVar var_98
  loc_9C53B3: CStrVarTmp
  loc_9C53B4: FStStrNoPop var_B0
  loc_9C53B7: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9C53BC: FStStrNoPop var_C0
  loc_9C53BF: FLdPr Me
  loc_9C53C2: MemStStrCopy
  loc_9C53C6: FFreeStr var_B0 = "": var_B4 = ""
  loc_9C53CF: FFreeAd var_88 = "": var_9C = "": var_B8 = ""
  loc_9C53DA: FFreeVar var_98 = ""
  loc_9C53E1: FLdPr Me
  loc_9C53E4: VCallAd Control_ID_mskHasta
  loc_9C53E7: FStAdFunc var_C4
  loc_9C53EA: LitNothing
  loc_9C53EC: CastAd
  loc_9C53EF: FStAdFunc var_B8
  loc_9C53F2: FLdRfVar var_B8
  loc_9C53F5: FLdZeroAd var_C4
  loc_9C53F8: FStAdFuncNoPop
  loc_9C53FB: CastAd
  loc_9C53FE: FStAdFunc var_9C
  loc_9C5401: FLdRfVar var_9C
  loc_9C5404: FLdPr Me
  loc_9C5407: MemLdRfVar from_stack_1.global_124
  loc_9C540A: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9C540F: IStI2 arg_C
  loc_9C5412: FFreeAd var_88 = "": var_9C = "": var_B8 = ""
  loc_9C541D: ExitProcHresult
  loc_9C541E: ImpAdLdPr 30019
End Function

Private Sub cmdCalDesde_Click() '97EED0
  'Data Table: 4DCA5C
  loc_97EE9C: LitVar_Missing var_A4
  loc_97EE9F: PopAdLdVar
  loc_97EEA0: LitVarI4
  loc_97EEA8: PopAdLdVar
  loc_97EEA9: ImpAdLdRf MemVar_C3D9A8
  loc_97EEAC: NewIfNullPr frmCalendario
  loc_97EEAF: frmCalendario.Show from_stack_1, from_stack_2
  loc_97EEB4: ImpAdLdRf MemVar_C3D038
  loc_97EEB7: CDargRef
  loc_97EEBB: FLdPr Me
  loc_97EEBE: VCallAd Control_ID_mskDesde
  loc_97EEC1: FStAdFunc var_A8
  loc_97EEC4: FLdPr var_A8
  loc_97EEC7: LateIdSt
  loc_97EECC: FFree1Ad var_A8
  loc_97EECF: ExitProcHresult
End Sub

Private Sub CodiUngaCmd_Click() '9FA588
  'Data Table: 4DCA5C
  loc_9FA44C: LitI2_Byte &HFF
  loc_9FA44E: ImpAdLdRf MemVar_C3D7D8
  loc_9FA451: NewIfNullPr bscUnidadGasto
  loc_9FA454: Call bscUnidadGasto.MuestroAnuladosPut(from_stack_1v)
  loc_9FA459: LitNothing
  loc_9FA45B: CastAd
  loc_9FA45E: FStAdFuncNoPop
  loc_9FA461: ImpAdLdRf MemVar_C3D7D8
  loc_9FA464: NewIfNullPr bscUnidadGasto
  loc_9FA467: Call bscUnidadGasto.global_4338300Set(from_stack_1v)
  loc_9FA46C: FFree1Ad var_88
  loc_9FA46F: LitVar_Missing var_A8
  loc_9FA472: PopAdLdVar
  loc_9FA473: LitVarI4
  loc_9FA47B: PopAdLdVar
  loc_9FA47C: ImpAdLdRf MemVar_C3D7D8
  loc_9FA47F: NewIfNullPr bscUnidadGasto
  loc_9FA482: bscUnidadGasto.Show from_stack_1, from_stack_2
  loc_9FA487: FLdRfVar var_AC
  loc_9FA48A: FLdRfVar var_88
  loc_9FA48D: ImpAdLdRf MemVar_C3D7D8
  loc_9FA490: NewIfNullPr bscUnidadGasto
  loc_9FA493: from_stack_1v = bscUnidadGasto.global_4338300Get()
  loc_9FA498: FLdPr var_88
  loc_9FA49B: from_stack_1 = clsbase.RecordCount
  loc_9FA4A0: ILdRf var_AC
  loc_9FA4A3: LitI4 0
  loc_9FA4A8: GtI4
  loc_9FA4A9: FFree1Ad var_88
  loc_9FA4AC: BranchF loc_9FA587
  loc_9FA4AF: FLdRfVar var_C8
  loc_9FA4B2: FLdRfVar var_B8
  loc_9FA4B5: LitVarStr var_98, "CodiUnga"
  loc_9FA4BA: PopAdLdVar
  loc_9FA4BB: FLdRfVar var_B4
  loc_9FA4BE: FLdRfVar var_B0
  loc_9FA4C1: FLdRfVar var_88
  loc_9FA4C4: ImpAdLdRf MemVar_C3D7D8
  loc_9FA4C7: NewIfNullPr bscUnidadGasto
  loc_9FA4CA: from_stack_1v = bscUnidadGasto.global_4338300Get()
  loc_9FA4CF: FLdPr var_88
  loc_9FA4D2: from_stack_1v = clsbase.RsFrmGet()
  loc_9FA4D7: FLdPr var_B0
  loc_9FA4DA:  = Me.Fields
  loc_9FA4DF: FLdPr var_B4
  loc_9FA4E2: from_stack_2 = Me.Item(from_stack_1)
  loc_9FA4E7: FLdPr var_B8
  loc_9FA4EA:  = Me.Value
  loc_9FA4EF: FLdRfVar var_C8
  loc_9FA4F2: CStrVarTmp
  loc_9FA4F3: CVarStr var_D8
  loc_9FA4F6: PopAdLdVar
  loc_9FA4F7: FLdPr Me
  loc_9FA4FA: VCallAd Control_ID_CodiUngaMsk
  loc_9FA4FD: FStAdFunc var_DC
  loc_9FA500: FLdPr var_DC
  loc_9FA503: LateIdSt
  loc_9FA508: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9FA515: FFreeVar var_C8 = ""
  loc_9FA51C: FLdRfVar var_C8
  loc_9FA51F: FLdRfVar var_B8
  loc_9FA522: LitVarStr var_98, "DetaUnga"
  loc_9FA527: PopAdLdVar
  loc_9FA528: FLdRfVar var_B4
  loc_9FA52B: FLdRfVar var_B0
  loc_9FA52E: FLdRfVar var_88
  loc_9FA531: ImpAdLdRf MemVar_C3D7D8
  loc_9FA534: NewIfNullPr bscUnidadGasto
  loc_9FA537: from_stack_1v = bscUnidadGasto.global_4338300Get()
  loc_9FA53C: FLdPr var_88
  loc_9FA53F: from_stack_1v = clsbase.RsFrmGet()
  loc_9FA544: FLdPr var_B0
  loc_9FA547:  = Me.Fields
  loc_9FA54C: FLdPr var_B4
  loc_9FA54F: from_stack_2 = Me.Item(from_stack_1)
  loc_9FA554: FLdPr var_B8
  loc_9FA557:  = Me.Value
  loc_9FA55C: FLdRfVar var_C8
  loc_9FA55F: CStrVarTmp
  loc_9FA560: FStStrNoPop var_E0
  loc_9FA563: FLdPr Me
  loc_9FA566: VCallAd Control_ID_DetaUngaLbl
  loc_9FA569: FStAdFunc var_DC
  loc_9FA56C: FLdPr var_DC
  loc_9FA56F: Me.Caption = from_stack_1
  loc_9FA574: FFree1Str var_E0
  loc_9FA577: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9FA584: FFree1Var var_C8 = ""
  loc_9FA587: ExitProcHresult
End Sub

Private Sub cmdCodiPart_Click() '9F4148
  'Data Table: 4DCA5C
  loc_9F4018: LitNothing
  loc_9F401A: CastAd
  loc_9F401D: FStAdFuncNoPop
  loc_9F4020: ImpAdLdRf MemVar_C3D724
  loc_9F4023: NewIfNullPr bscPartida
  loc_9F4026: Call bscPartida.global_4332396Set(from_stack_1v)
  loc_9F402B: FFree1Ad var_88
  loc_9F402E: LitVar_Missing var_A8
  loc_9F4031: PopAdLdVar
  loc_9F4032: LitVarI4
  loc_9F403A: PopAdLdVar
  loc_9F403B: ImpAdLdRf MemVar_C3D724
  loc_9F403E: NewIfNullPr bscPartida
  loc_9F4041: bscPartida.Show from_stack_1, from_stack_2
  loc_9F4046: FLdRfVar var_AC
  loc_9F4049: FLdRfVar var_88
  loc_9F404C: ImpAdLdRf MemVar_C3D724
  loc_9F404F: NewIfNullPr bscPartida
  loc_9F4052: from_stack_1v = bscPartida.global_4332396Get()
  loc_9F4057: FLdPr var_88
  loc_9F405A: from_stack_1 = clsbase.RecordCount
  loc_9F405F: ILdRf var_AC
  loc_9F4062: LitI4 0
  loc_9F4067: GtI4
  loc_9F4068: FFree1Ad var_88
  loc_9F406B: BranchF loc_9F4146
  loc_9F406E: FLdRfVar var_C8
  loc_9F4071: FLdRfVar var_B8
  loc_9F4074: LitVarStr var_98, "CodiPart"
  loc_9F4079: PopAdLdVar
  loc_9F407A: FLdRfVar var_B4
  loc_9F407D: FLdRfVar var_B0
  loc_9F4080: FLdRfVar var_88
  loc_9F4083: ImpAdLdRf MemVar_C3D724
  loc_9F4086: NewIfNullPr bscPartida
  loc_9F4089: from_stack_1v = bscPartida.global_4332396Get()
  loc_9F408E: FLdPr var_88
  loc_9F4091: from_stack_1v = clsbase.RsFrmGet()
  loc_9F4096: FLdPr var_B0
  loc_9F4099:  = Me.Fields
  loc_9F409E: FLdPr var_B4
  loc_9F40A1: from_stack_2 = Me.Item(from_stack_1)
  loc_9F40A6: FLdPr var_B8
  loc_9F40A9:  = Me.Value
  loc_9F40AE: FLdRfVar var_C8
  loc_9F40B1: CStrVarTmp
  loc_9F40B2: CVarStr var_D8
  loc_9F40B5: PopAdLdVar
  loc_9F40B6: FLdPr Me
  loc_9F40B9: VCallAd Control_ID_CodiPartMsk
  loc_9F40BC: FStAdFunc var_DC
  loc_9F40BF: FLdPr var_DC
  loc_9F40C2: LateIdSt
  loc_9F40C7: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9F40D4: FFreeVar var_C8 = ""
  loc_9F40DB: FLdRfVar var_C8
  loc_9F40DE: FLdRfVar var_B8
  loc_9F40E1: LitVarStr var_98, "DetaPart"
  loc_9F40E6: PopAdLdVar
  loc_9F40E7: FLdRfVar var_B4
  loc_9F40EA: FLdRfVar var_B0
  loc_9F40ED: FLdRfVar var_88
  loc_9F40F0: ImpAdLdRf MemVar_C3D724
  loc_9F40F3: NewIfNullPr bscPartida
  loc_9F40F6: from_stack_1v = bscPartida.global_4332396Get()
  loc_9F40FB: FLdPr var_88
  loc_9F40FE: from_stack_1v = clsbase.RsFrmGet()
  loc_9F4103: FLdPr var_B0
  loc_9F4106:  = Me.Fields
  loc_9F410B: FLdPr var_B4
  loc_9F410E: from_stack_2 = Me.Item(from_stack_1)
  loc_9F4113: FLdPr var_B8
  loc_9F4116:  = Me.Value
  loc_9F411B: FLdRfVar var_C8
  loc_9F411E: CStrVarTmp
  loc_9F411F: FStStrNoPop var_E0
  loc_9F4122: FLdPr Me
  loc_9F4125: VCallAd Control_ID_CodiPartLbl
  loc_9F4128: FStAdFunc var_DC
  loc_9F412B: FLdPr var_DC
  loc_9F412E: Me.Caption = from_stack_1
  loc_9F4133: FFree1Str var_E0
  loc_9F4136: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9F4143: FFree1Var var_C8 = ""
  loc_9F4146: ExitProcHresult
End Sub

Private Sub cmdCodiFifu_Click() '9F3FC8
  'Data Table: 4DCA5C
  loc_9F3E98: LitNothing
  loc_9F3E9A: CastAd
  loc_9F3E9D: FStAdFuncNoPop
  loc_9F3EA0: ImpAdLdRf MemVar_C3D6E8
  loc_9F3EA3: NewIfNullPr bscFinalidad
  loc_9F3EA6: Call bscFinalidad.global_4320824Set(from_stack_1v)
  loc_9F3EAB: FFree1Ad var_88
  loc_9F3EAE: LitVar_Missing var_A8
  loc_9F3EB1: PopAdLdVar
  loc_9F3EB2: LitVarI4
  loc_9F3EBA: PopAdLdVar
  loc_9F3EBB: ImpAdLdRf MemVar_C3D6E8
  loc_9F3EBE: NewIfNullPr bscFinalidad
  loc_9F3EC1: bscFinalidad.Show from_stack_1, from_stack_2
  loc_9F3EC6: FLdRfVar var_AC
  loc_9F3EC9: FLdRfVar var_88
  loc_9F3ECC: ImpAdLdRf MemVar_C3D6E8
  loc_9F3ECF: NewIfNullPr bscFinalidad
  loc_9F3ED2: from_stack_1v = bscFinalidad.global_4320824Get()
  loc_9F3ED7: FLdPr var_88
  loc_9F3EDA: from_stack_1 = clsbase.RecordCount
  loc_9F3EDF: ILdRf var_AC
  loc_9F3EE2: LitI4 0
  loc_9F3EE7: GtI4
  loc_9F3EE8: FFree1Ad var_88
  loc_9F3EEB: BranchF loc_9F3FC6
  loc_9F3EEE: FLdRfVar var_C8
  loc_9F3EF1: FLdRfVar var_B8
  loc_9F3EF4: LitVarStr var_98, "CodiFifu"
  loc_9F3EF9: PopAdLdVar
  loc_9F3EFA: FLdRfVar var_B4
  loc_9F3EFD: FLdRfVar var_B0
  loc_9F3F00: FLdRfVar var_88
  loc_9F3F03: ImpAdLdRf MemVar_C3D6E8
  loc_9F3F06: NewIfNullPr bscFinalidad
  loc_9F3F09: from_stack_1v = bscFinalidad.global_4320824Get()
  loc_9F3F0E: FLdPr var_88
  loc_9F3F11: from_stack_1v = clsbase.RsFrmGet()
  loc_9F3F16: FLdPr var_B0
  loc_9F3F19:  = Me.Fields
  loc_9F3F1E: FLdPr var_B4
  loc_9F3F21: from_stack_2 = Me.Item(from_stack_1)
  loc_9F3F26: FLdPr var_B8
  loc_9F3F29:  = Me.Value
  loc_9F3F2E: FLdRfVar var_C8
  loc_9F3F31: CStrVarTmp
  loc_9F3F32: CVarStr var_D8
  loc_9F3F35: PopAdLdVar
  loc_9F3F36: FLdPr Me
  loc_9F3F39: VCallAd Control_ID_CodiFifuMsk
  loc_9F3F3C: FStAdFunc var_DC
  loc_9F3F3F: FLdPr var_DC
  loc_9F3F42: LateIdSt
  loc_9F3F47: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9F3F54: FFreeVar var_C8 = ""
  loc_9F3F5B: FLdRfVar var_C8
  loc_9F3F5E: FLdRfVar var_B8
  loc_9F3F61: LitVarStr var_98, "DetaFifu"
  loc_9F3F66: PopAdLdVar
  loc_9F3F67: FLdRfVar var_B4
  loc_9F3F6A: FLdRfVar var_B0
  loc_9F3F6D: FLdRfVar var_88
  loc_9F3F70: ImpAdLdRf MemVar_C3D6E8
  loc_9F3F73: NewIfNullPr bscFinalidad
  loc_9F3F76: from_stack_1v = bscFinalidad.global_4320824Get()
  loc_9F3F7B: FLdPr var_88
  loc_9F3F7E: from_stack_1v = clsbase.RsFrmGet()
  loc_9F3F83: FLdPr var_B0
  loc_9F3F86:  = Me.Fields
  loc_9F3F8B: FLdPr var_B4
  loc_9F3F8E: from_stack_2 = Me.Item(from_stack_1)
  loc_9F3F93: FLdPr var_B8
  loc_9F3F96:  = Me.Value
  loc_9F3F9B: FLdRfVar var_C8
  loc_9F3F9E: CStrVarTmp
  loc_9F3F9F: FStStrNoPop var_E0
  loc_9F3FA2: FLdPr Me
  loc_9F3FA5: VCallAd Control_ID_CodiFifuLbl
  loc_9F3FA8: FStAdFunc var_DC
  loc_9F3FAB: FLdPr var_DC
  loc_9F3FAE: Me.Caption = from_stack_1
  loc_9F3FB3: FFree1Str var_E0
  loc_9F3FB6: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9F3FC3: FFree1Var var_C8 = ""
  loc_9F3FC6: ExitProcHresult
End Sub

Private Sub cmdCodiInsu_Click() '9F9610
  'Data Table: 4DCA5C
  loc_9F94D4: LitI2_Byte &HFF
  loc_9F94D6: ImpAdLdRf MemVar_C3D6FC
  loc_9F94D9: NewIfNullPr bscInsumo
  loc_9F94DC: Call bscInsumo.MuestroAnuladosPut(from_stack_1v)
  loc_9F94E1: LitNothing
  loc_9F94E3: CastAd
  loc_9F94E6: FStAdFuncNoPop
  loc_9F94E9: ImpAdLdRf MemVar_C3D6FC
  loc_9F94EC: NewIfNullPr bscInsumo
  loc_9F94EF: Call bscInsumo.global_4304576Set(from_stack_1v)
  loc_9F94F4: FFree1Ad var_88
  loc_9F94F7: LitVar_Missing var_A8
  loc_9F94FA: PopAdLdVar
  loc_9F94FB: LitVarI4
  loc_9F9503: PopAdLdVar
  loc_9F9504: ImpAdLdRf MemVar_C3D6FC
  loc_9F9507: NewIfNullPr bscInsumo
  loc_9F950A: bscInsumo.Show from_stack_1, from_stack_2
  loc_9F950F: FLdRfVar var_AC
  loc_9F9512: FLdRfVar var_88
  loc_9F9515: ImpAdLdRf MemVar_C3D6FC
  loc_9F9518: NewIfNullPr bscInsumo
  loc_9F951B: from_stack_1v = bscInsumo.global_4304576Get()
  loc_9F9520: FLdPr var_88
  loc_9F9523: from_stack_1 = clsbase.RecordCount
  loc_9F9528: ILdRf var_AC
  loc_9F952B: LitI4 0
  loc_9F9530: GtI4
  loc_9F9531: FFree1Ad var_88
  loc_9F9534: BranchF loc_9F960F
  loc_9F9537: FLdRfVar var_C8
  loc_9F953A: FLdRfVar var_B8
  loc_9F953D: LitVarStr var_98, "CodiInsu"
  loc_9F9542: PopAdLdVar
  loc_9F9543: FLdRfVar var_B4
  loc_9F9546: FLdRfVar var_B0
  loc_9F9549: FLdRfVar var_88
  loc_9F954C: ImpAdLdRf MemVar_C3D6FC
  loc_9F954F: NewIfNullPr bscInsumo
  loc_9F9552: from_stack_1v = bscInsumo.global_4304576Get()
  loc_9F9557: FLdPr var_88
  loc_9F955A: from_stack_1v = clsbase.RsFrmGet()
  loc_9F955F: FLdPr var_B0
  loc_9F9562:  = Me.Fields
  loc_9F9567: FLdPr var_B4
  loc_9F956A: from_stack_2 = Me.Item(from_stack_1)
  loc_9F956F: FLdPr var_B8
  loc_9F9572:  = Me.Value
  loc_9F9577: FLdRfVar var_C8
  loc_9F957A: CStrVarTmp
  loc_9F957B: CVarStr var_D8
  loc_9F957E: PopAdLdVar
  loc_9F957F: FLdPr Me
  loc_9F9582: VCallAd Control_ID_CodiInsuMsk
  loc_9F9585: FStAdFunc var_DC
  loc_9F9588: FLdPr var_DC
  loc_9F958B: LateIdSt
  loc_9F9590: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9F959D: FFreeVar var_C8 = ""
  loc_9F95A4: FLdRfVar var_C8
  loc_9F95A7: FLdRfVar var_B8
  loc_9F95AA: LitVarStr var_98, "DetaInsu"
  loc_9F95AF: PopAdLdVar
  loc_9F95B0: FLdRfVar var_B4
  loc_9F95B3: FLdRfVar var_B0
  loc_9F95B6: FLdRfVar var_88
  loc_9F95B9: ImpAdLdRf MemVar_C3D6FC
  loc_9F95BC: NewIfNullPr bscInsumo
  loc_9F95BF: from_stack_1v = bscInsumo.global_4304576Get()
  loc_9F95C4: FLdPr var_88
  loc_9F95C7: from_stack_1v = clsbase.RsFrmGet()
  loc_9F95CC: FLdPr var_B0
  loc_9F95CF:  = Me.Fields
  loc_9F95D4: FLdPr var_B4
  loc_9F95D7: from_stack_2 = Me.Item(from_stack_1)
  loc_9F95DC: FLdPr var_B8
  loc_9F95DF:  = Me.Value
  loc_9F95E4: FLdRfVar var_C8
  loc_9F95E7: CStrVarTmp
  loc_9F95E8: FStStrNoPop var_E0
  loc_9F95EB: FLdPr Me
  loc_9F95EE: VCallAd Control_ID_CodiInsuLbl
  loc_9F95F1: FStAdFunc var_DC
  loc_9F95F4: FLdPr var_DC
  loc_9F95F7: Me.Caption = from_stack_1
  loc_9F95FC: FFree1Str var_E0
  loc_9F95FF: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9F960C: FFree1Var var_C8 = ""
  loc_9F960F: ExitProcHresult
End Sub

Private Sub CodiFifuMsk_UnknownEvent_0 '951DF8
  'Data Table: 4DCA5C
  loc_951DE4: FLdPr Me
  loc_951DE7: VCallAd Control_ID_CodiFifuMsk
  loc_951DEA: CVarAd
  loc_951DEE: ImpAdCallFPR4 Proc_261_5_9BDB84()
  loc_951DF3: FFree1Var var_94 = ""
  loc_951DF6: ExitProcHresult
End Sub

Private Sub CodiFifuMsk_UnknownEvent_8 'A0FADC
  'Data Table: 4DCA5C
  loc_A0F984: LitStr "SELECT DetaFifu FROM finalidad WHERE PeriInfo = "
  loc_A0F987: FLdRfVar var_8C
  loc_A0F98A: FLdPr Me
  loc_A0F98D: VCallAd Control_ID_cboPeriodo
  loc_A0F990: FStAdFunc var_88
  loc_A0F993: FLdPr var_88
  loc_A0F996:  = Me.Text
  loc_A0F99B: ILdRf var_8C
  loc_A0F99E: ConcatStr
  loc_A0F99F: FStStrNoPop var_90
  loc_A0F9A2: LitStr " AND CodiFifu LIKE '"
  loc_A0F9A5: ConcatStr
  loc_A0F9A6: FStStrNoPop var_A8
  loc_A0F9A9: FLdPr Me
  loc_A0F9AC: VCallAd Control_ID_CodiFifuMsk
  loc_A0F9AF: FStAdFunc var_94
  loc_A0F9B2: FLdPr var_94
  loc_A0F9B5: LateIdLdVar var_A4 DispID_22 0
  loc_A0F9BC: CStrVarTmp
  loc_A0F9BD: FStStrNoPop var_AC
  loc_A0F9C0: ConcatStr
  loc_A0F9C1: FStStrNoPop var_B0
  loc_A0F9C4: LitStr Chr(37) & "'"
  loc_A0F9C7: ConcatStr
  loc_A0F9C8: FStStrNoPop var_B4
  loc_A0F9CB: FLdPr Me
  loc_A0F9CE: MemLdRfVar from_stack_1.global_92
  loc_A0F9D1: NewIfNullPr clsfinalidad
  loc_A0F9D4: Call clsfinalidad.RedefineRS(from_stack_1v)
  loc_A0F9D9: FFreeStr var_8C = "": var_90 = "": var_A8 = "": var_AC = "": var_B0 = ""
  loc_A0F9E8: FFreeAd var_88 = ""
  loc_A0F9EF: FFree1Var var_A4 = ""
  loc_A0F9F2: FLdRfVar var_B8
  loc_A0F9F5: FLdPr Me
  loc_A0F9F8: MemLdRfVar from_stack_1.global_92
  loc_A0F9FB: NewIfNullPr clsfinalidad
  loc_A0F9FE: from_stack_1 = clsfinalidad.RecordCount
  loc_A0FA03: ILdRf var_B8
  loc_A0FA06: FStR4 var_BC
  loc_A0FA09: ILdRf var_BC
  loc_A0FA0C: LitI4 0
  loc_A0FA11: EqI4
  loc_A0FA12: BranchF loc_A0FA2F
  loc_A0FA15: LitStr "0 registros encontrados"
  loc_A0FA18: FLdPr Me
  loc_A0FA1B: VCallAd Control_ID_CodiFifuLbl
  loc_A0FA1E: FStAdFunc var_88
  loc_A0FA21: FLdPr var_88
  loc_A0FA24: Me.Caption = from_stack_1
  loc_A0FA29: FFree1Ad var_88
  loc_A0FA2C: Branch loc_A0FADA
  loc_A0FA2F: ILdRf var_BC
  loc_A0FA32: LitI4 1
  loc_A0FA37: EqI4
  loc_A0FA38: BranchF loc_A0FA9F
  loc_A0FA3B: FLdRfVar var_A4
  loc_A0FA3E: FLdRfVar var_D0
  loc_A0FA41: LitVarStr var_CC, "DetaFifu"
  loc_A0FA46: PopAdLdVar
  loc_A0FA47: FLdRfVar var_94
  loc_A0FA4A: FLdRfVar var_88
  loc_A0FA4D: FLdPr Me
  loc_A0FA50: MemLdRfVar from_stack_1.global_92
  loc_A0FA53: NewIfNullPr clsfinalidad
  loc_A0FA56: from_stack_1v = clsfinalidad.RsFrmGet()
  loc_A0FA5B: FLdPr var_88
  loc_A0FA5E:  = Me.Fields
  loc_A0FA63: FLdPr var_94
  loc_A0FA66: from_stack_2 = Me.Item(from_stack_1)
  loc_A0FA6B: FLdPr var_D0
  loc_A0FA6E:  = Me.Value
  loc_A0FA73: FLdRfVar var_A4
  loc_A0FA76: CStrVarTmp
  loc_A0FA77: FStStrNoPop var_8C
  loc_A0FA7A: FLdPr Me
  loc_A0FA7D: VCallAd Control_ID_CodiFifuLbl
  loc_A0FA80: FStAdFunc var_D4
  loc_A0FA83: FLdPr var_D4
  loc_A0FA86: Me.Caption = from_stack_1
  loc_A0FA8B: FFree1Str var_8C
  loc_A0FA8E: FFreeAd var_88 = "": var_94 = "": var_D0 = ""
  loc_A0FA99: FFree1Var var_A4 = ""
  loc_A0FA9C: Branch loc_A0FADA
  loc_A0FA9F: FLdRfVar var_B8
  loc_A0FAA2: FLdPr Me
  loc_A0FAA5: MemLdRfVar from_stack_1.global_92
  loc_A0FAA8: NewIfNullPr clsfinalidad
  loc_A0FAAB: from_stack_1 = clsfinalidad.RecordCount
  loc_A0FAB0: ILdRf var_B8
  loc_A0FAB3: CStrI4
  loc_A0FAB5: FStStrNoPop var_8C
  loc_A0FAB8: LitStr " finalidades encontradas"
  loc_A0FABB: ConcatStr
  loc_A0FABC: FStStrNoPop var_90
  loc_A0FABF: FLdPr Me
  loc_A0FAC2: VCallAd Control_ID_CodiFifuLbl
  loc_A0FAC5: FStAdFunc var_88
  loc_A0FAC8: FLdPr var_88
  loc_A0FACB: Me.Caption = from_stack_1
  loc_A0FAD0: FFreeStr var_8C = ""
  loc_A0FAD7: FFree1Ad var_88
  loc_A0FADA: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '960078
  'Data Table: 4DCA5C
  loc_960060: ILdRf Me
  loc_960063: CastAd
  loc_960066: FStAdFunc var_88
  loc_960069: FLdRfVar var_88
  loc_96006C: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_960071: FFree1Ad var_88
  loc_960074: ExitProcHresult
  loc_960075: IDvI2
End Sub

Private Sub cmdNueva_Click() '9F39EC
  'Data Table: 4DCA5C
  loc_9F38A8: LitI2_Byte 0
  loc_9F38AA: FLdPr Me
  loc_9F38AD: MemStI2 bGenerado
  loc_9F38B0: LitI2_Byte &HFF
  loc_9F38B2: FLdPr Me
  loc_9F38B5: MemStI2 bLogos
  loc_9F38B8: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_9F38BD: ImpAdLdI2 MemVar_C3D064
  loc_9F38C0: CStrUI1
  loc_9F38C2: FStStrNoPop var_88
  loc_9F38C5: FLdPr Me
  loc_9F38C8: VCallAd Control_ID_cboPeriodo
  loc_9F38CB: FStAdFunc var_8C
  loc_9F38CE: FLdPr var_8C
  loc_9F38D1: Me.Text = from_stack_1
  loc_9F38D6: FFree1Str var_88
  loc_9F38D9: FFree1Ad var_8C
  loc_9F38DC: LitVarStr var_9C, vbNullString
  loc_9F38E1: PopAdLdVar
  loc_9F38E2: FLdPr Me
  loc_9F38E5: VCallAd Control_ID_CodiInsuMsk
  loc_9F38E8: FStAdFunc var_8C
  loc_9F38EB: FLdPr var_8C
  loc_9F38EE: LateIdSt
  loc_9F38F3: FFree1Ad var_8C
  loc_9F38F6: LitVarStr var_9C, vbNullString
  loc_9F38FB: PopAdLdVar
  loc_9F38FC: FLdPr Me
  loc_9F38FF: VCallAd Control_ID_CodiPartMsk
  loc_9F3902: FStAdFunc var_8C
  loc_9F3905: FLdPr var_8C
  loc_9F3908: LateIdSt
  loc_9F390D: FFree1Ad var_8C
  loc_9F3910: LitVarStr var_9C, vbNullString
  loc_9F3915: PopAdLdVar
  loc_9F3916: FLdPr Me
  loc_9F3919: VCallAd Control_ID_CodiOrgaMsk
  loc_9F391C: FStAdFunc var_8C
  loc_9F391F: FLdPr var_8C
  loc_9F3922: LateIdSt
  loc_9F3927: FFree1Ad var_8C
  loc_9F392A: LitVarStr var_9C, vbNullString
  loc_9F392F: PopAdLdVar
  loc_9F3930: FLdPr Me
  loc_9F3933: VCallAd Control_ID_CodiUngaMsk
  loc_9F3936: FStAdFunc var_8C
  loc_9F3939: FLdPr var_8C
  loc_9F393C: LateIdSt
  loc_9F3941: FFree1Ad var_8C
  loc_9F3944: LitVarStr var_9C, vbNullString
  loc_9F3949: PopAdLdVar
  loc_9F394A: FLdPr Me
  loc_9F394D: VCallAd Control_ID_CodiFifuMsk
  loc_9F3950: FStAdFunc var_8C
  loc_9F3953: FLdPr var_8C
  loc_9F3956: LateIdSt
  loc_9F395B: FFree1Ad var_8C
  loc_9F395E: LitStr vbNullString
  loc_9F3961: FLdPr Me
  loc_9F3964: VCallAd Control_ID_CodiInsuLbl
  loc_9F3967: FStAdFunc var_8C
  loc_9F396A: FLdPr var_8C
  loc_9F396D: Me.Caption = from_stack_1
  loc_9F3972: FFree1Ad var_8C
  loc_9F3975: LitStr vbNullString
  loc_9F3978: FLdPr Me
  loc_9F397B: VCallAd Control_ID_CodiPartLbl
  loc_9F397E: FStAdFunc var_8C
  loc_9F3981: FLdPr var_8C
  loc_9F3984: Me.Caption = from_stack_1
  loc_9F3989: FFree1Ad var_8C
  loc_9F398C: LitStr vbNullString
  loc_9F398F: FLdPr Me
  loc_9F3992: VCallAd Control_ID_CodiOrgaLbl
  loc_9F3995: FStAdFunc var_8C
  loc_9F3998: FLdPr var_8C
  loc_9F399B: Me.Caption = from_stack_1
  loc_9F39A0: FFree1Ad var_8C
  loc_9F39A3: LitStr vbNullString
  loc_9F39A6: FLdPr Me
  loc_9F39A9: VCallAd Control_ID_DetaUngaLbl
  loc_9F39AC: FStAdFunc var_8C
  loc_9F39AF: FLdPr var_8C
  loc_9F39B2: Me.Caption = from_stack_1
  loc_9F39B7: FFree1Ad var_8C
  loc_9F39BA: LitStr vbNullString
  loc_9F39BD: FLdPr Me
  loc_9F39C0: VCallAd Control_ID_CodiFifuLbl
  loc_9F39C3: FStAdFunc var_8C
  loc_9F39C6: FLdPr var_8C
  loc_9F39C9: Me.Caption = from_stack_1
  loc_9F39CE: FFree1Ad var_8C
  loc_9F39D1: Call HabilitarCriterio()
  loc_9F39D6: ILdRf Me
  loc_9F39D9: CastAd
  loc_9F39DC: FStAdFunc var_8C
  loc_9F39DF: FLdRfVar var_8C
  loc_9F39E2: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_9F39E7: FFree1Ad var_8C
  loc_9F39EA: ExitProcHresult
End Sub

Private Sub cmdCodiOrga_Click() '9FF570
  'Data Table: 4DCA5C
  loc_9FF428: LitI2_Byte &HFF
  loc_9FF42A: ImpAdLdRf MemVar_C3D710
  loc_9FF42D: NewIfNullPr bscOrganigrama
  loc_9FF430: Call bscOrganigrama.MuestroAnuladosPut(from_stack_1v)
  loc_9FF435: LitNothing
  loc_9FF437: CastAd
  loc_9FF43A: FStAdFuncNoPop
  loc_9FF43D: ImpAdLdRf MemVar_C3D710
  loc_9FF440: NewIfNullPr bscOrganigrama
  loc_9FF443: Call bscOrganigrama.global_4318932Set(from_stack_1v)
  loc_9FF448: FFree1Ad var_88
  loc_9FF44B: LitVar_Missing var_A8
  loc_9FF44E: PopAdLdVar
  loc_9FF44F: LitVarI4
  loc_9FF457: PopAdLdVar
  loc_9FF458: ImpAdLdRf MemVar_C3D710
  loc_9FF45B: NewIfNullPr bscOrganigrama
  loc_9FF45E: bscOrganigrama.Show from_stack_1, from_stack_2
  loc_9FF463: FLdRfVar var_AC
  loc_9FF466: FLdRfVar var_88
  loc_9FF469: ImpAdLdRf MemVar_C3D710
  loc_9FF46C: NewIfNullPr bscOrganigrama
  loc_9FF46F: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_9FF474: FLdPr var_88
  loc_9FF477: from_stack_1 = clsbase.RecordCount
  loc_9FF47C: ILdRf var_AC
  loc_9FF47F: LitI4 0
  loc_9FF484: GtI4
  loc_9FF485: FFree1Ad var_88
  loc_9FF488: BranchF loc_9FF563
  loc_9FF48B: FLdRfVar var_C8
  loc_9FF48E: FLdRfVar var_B8
  loc_9FF491: LitVarStr var_98, "CodiOrga"
  loc_9FF496: PopAdLdVar
  loc_9FF497: FLdRfVar var_B4
  loc_9FF49A: FLdRfVar var_B0
  loc_9FF49D: FLdRfVar var_88
  loc_9FF4A0: ImpAdLdRf MemVar_C3D710
  loc_9FF4A3: NewIfNullPr bscOrganigrama
  loc_9FF4A6: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_9FF4AB: FLdPr var_88
  loc_9FF4AE: from_stack_1v = clsbase.RsFrmGet()
  loc_9FF4B3: FLdPr var_B0
  loc_9FF4B6:  = Me.Fields
  loc_9FF4BB: FLdPr var_B4
  loc_9FF4BE: from_stack_2 = Me.Item(from_stack_1)
  loc_9FF4C3: FLdPr var_B8
  loc_9FF4C6:  = Me.Value
  loc_9FF4CB: FLdRfVar var_C8
  loc_9FF4CE: CStrVarTmp
  loc_9FF4CF: CVarStr var_D8
  loc_9FF4D2: PopAdLdVar
  loc_9FF4D3: FLdPr Me
  loc_9FF4D6: VCallAd Control_ID_CodiOrgaMsk
  loc_9FF4D9: FStAdFunc var_DC
  loc_9FF4DC: FLdPr var_DC
  loc_9FF4DF: LateIdSt
  loc_9FF4E4: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9FF4F1: FFreeVar var_C8 = ""
  loc_9FF4F8: FLdRfVar var_C8
  loc_9FF4FB: FLdRfVar var_B8
  loc_9FF4FE: LitVarStr var_98, "DetaOrga"
  loc_9FF503: PopAdLdVar
  loc_9FF504: FLdRfVar var_B4
  loc_9FF507: FLdRfVar var_B0
  loc_9FF50A: FLdRfVar var_88
  loc_9FF50D: ImpAdLdRf MemVar_C3D710
  loc_9FF510: NewIfNullPr bscOrganigrama
  loc_9FF513: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_9FF518: FLdPr var_88
  loc_9FF51B: from_stack_1v = clsbase.RsFrmGet()
  loc_9FF520: FLdPr var_B0
  loc_9FF523:  = Me.Fields
  loc_9FF528: FLdPr var_B4
  loc_9FF52B: from_stack_2 = Me.Item(from_stack_1)
  loc_9FF530: FLdPr var_B8
  loc_9FF533:  = Me.Value
  loc_9FF538: FLdRfVar var_C8
  loc_9FF53B: CStrVarTmp
  loc_9FF53C: FStStrNoPop var_E0
  loc_9FF53F: FLdPr Me
  loc_9FF542: VCallAd Control_ID_CodiOrgaLbl
  loc_9FF545: FStAdFunc var_DC
  loc_9FF548: FLdPr var_DC
  loc_9FF54B: Me.Caption = from_stack_1
  loc_9FF550: FFree1Str var_E0
  loc_9FF553: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9FF560: FFree1Var var_C8 = ""
  loc_9FF563: LitI2_Byte 0
  loc_9FF565: PopTmpLdAd2 var_E2
  loc_9FF568: Call CodiOrgaMsk_UnknownEvent_8()
  loc_9FF56D: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() '97AF78
  'Data Table: 4DCA5C
  loc_97AF48: LitVarStr var_94, "Cerrando..."
  loc_97AF4D: PopAdLdVar
  loc_97AF4E: FLdPr Me
  loc_97AF51: VCallAd Control_ID_statusBar
  loc_97AF54: FStAdFunc var_A8
  loc_97AF57: FLdPr var_A8
  loc_97AF5A: LateIdSt
  loc_97AF5F: FFree1Ad var_A8
  loc_97AF62: ILdRf Me
  loc_97AF65: FStAdNoPop
  loc_97AF69: ImpAdLdRf MemVar_C44F9C
  loc_97AF6C: NewIfNullPr Me
  loc_97AF6F: Me.Global.Unload from_stack_1
  loc_97AF74: FFree1Ad var_A8
  loc_97AF77: ExitProcHresult
End Sub

Private Sub CodiPartMsk_UnknownEvent_0 '94EB58
  'Data Table: 4DCA5C
  loc_94EB44: FLdPr Me
  loc_94EB47: VCallAd Control_ID_CodiPartMsk
  loc_94EB4A: CVarAd
  loc_94EB4E: ImpAdCallFPR4 Proc_261_5_9BDB84()
  loc_94EB53: FFree1Var var_94 = ""
  loc_94EB56: ExitProcHresult
End Sub

Private Sub CodiPartMsk_UnknownEvent_8 'A0F928
  'Data Table: 4DCA5C
  loc_A0F7D0: LitStr "SELECT DetaPart FROM partida WHERE PeriInfo = "
  loc_A0F7D3: FLdRfVar var_8C
  loc_A0F7D6: FLdPr Me
  loc_A0F7D9: VCallAd Control_ID_cboPeriodo
  loc_A0F7DC: FStAdFunc var_88
  loc_A0F7DF: FLdPr var_88
  loc_A0F7E2:  = Me.Text
  loc_A0F7E7: ILdRf var_8C
  loc_A0F7EA: ConcatStr
  loc_A0F7EB: FStStrNoPop var_90
  loc_A0F7EE: LitStr " AND CodiPart LIKE '"
  loc_A0F7F1: ConcatStr
  loc_A0F7F2: FStStrNoPop var_A8
  loc_A0F7F5: FLdPr Me
  loc_A0F7F8: VCallAd Control_ID_CodiPartMsk
  loc_A0F7FB: FStAdFunc var_94
  loc_A0F7FE: FLdPr var_94
  loc_A0F801: LateIdLdVar var_A4 DispID_22 0
  loc_A0F808: CStrVarTmp
  loc_A0F809: FStStrNoPop var_AC
  loc_A0F80C: ConcatStr
  loc_A0F80D: FStStrNoPop var_B0
  loc_A0F810: LitStr Chr(37) & "'"
  loc_A0F813: ConcatStr
  loc_A0F814: FStStrNoPop var_B4
  loc_A0F817: FLdPr Me
  loc_A0F81A: MemLdRfVar from_stack_1.global_84
  loc_A0F81D: NewIfNullPr clspartida
  loc_A0F820: Call clspartida.RedefineRS(from_stack_1v)
  loc_A0F825: FFreeStr var_8C = "": var_90 = "": var_A8 = "": var_AC = "": var_B0 = ""
  loc_A0F834: FFreeAd var_88 = ""
  loc_A0F83B: FFree1Var var_A4 = ""
  loc_A0F83E: FLdRfVar var_B8
  loc_A0F841: FLdPr Me
  loc_A0F844: MemLdRfVar from_stack_1.global_84
  loc_A0F847: NewIfNullPr clspartida
  loc_A0F84A: from_stack_1 = clspartida.RecordCount
  loc_A0F84F: ILdRf var_B8
  loc_A0F852: FStR4 var_BC
  loc_A0F855: ILdRf var_BC
  loc_A0F858: LitI4 0
  loc_A0F85D: EqI4
  loc_A0F85E: BranchF loc_A0F87B
  loc_A0F861: LitStr "0 registros encontrados"
  loc_A0F864: FLdPr Me
  loc_A0F867: VCallAd Control_ID_CodiPartLbl
  loc_A0F86A: FStAdFunc var_88
  loc_A0F86D: FLdPr var_88
  loc_A0F870: Me.Caption = from_stack_1
  loc_A0F875: FFree1Ad var_88
  loc_A0F878: Branch loc_A0F926
  loc_A0F87B: ILdRf var_BC
  loc_A0F87E: LitI4 1
  loc_A0F883: EqI4
  loc_A0F884: BranchF loc_A0F8EB
  loc_A0F887: FLdRfVar var_A4
  loc_A0F88A: FLdRfVar var_D0
  loc_A0F88D: LitVarStr var_CC, "DetaPart"
  loc_A0F892: PopAdLdVar
  loc_A0F893: FLdRfVar var_94
  loc_A0F896: FLdRfVar var_88
  loc_A0F899: FLdPr Me
  loc_A0F89C: MemLdRfVar from_stack_1.global_84
  loc_A0F89F: NewIfNullPr clspartida
  loc_A0F8A2: from_stack_1v = clspartida.RsFrmGet()
  loc_A0F8A7: FLdPr var_88
  loc_A0F8AA:  = Me.Fields
  loc_A0F8AF: FLdPr var_94
  loc_A0F8B2: from_stack_2 = Me.Item(from_stack_1)
  loc_A0F8B7: FLdPr var_D0
  loc_A0F8BA:  = Me.Value
  loc_A0F8BF: FLdRfVar var_A4
  loc_A0F8C2: CStrVarTmp
  loc_A0F8C3: FStStrNoPop var_8C
  loc_A0F8C6: FLdPr Me
  loc_A0F8C9: VCallAd Control_ID_CodiPartLbl
  loc_A0F8CC: FStAdFunc var_D4
  loc_A0F8CF: FLdPr var_D4
  loc_A0F8D2: Me.Caption = from_stack_1
  loc_A0F8D7: FFree1Str var_8C
  loc_A0F8DA: FFreeAd var_88 = "": var_94 = "": var_D0 = ""
  loc_A0F8E5: FFree1Var var_A4 = ""
  loc_A0F8E8: Branch loc_A0F926
  loc_A0F8EB: FLdRfVar var_B8
  loc_A0F8EE: FLdPr Me
  loc_A0F8F1: MemLdRfVar from_stack_1.global_84
  loc_A0F8F4: NewIfNullPr clspartida
  loc_A0F8F7: from_stack_1 = clspartida.RecordCount
  loc_A0F8FC: ILdRf var_B8
  loc_A0F8FF: CStrI4
  loc_A0F901: FStStrNoPop var_8C
  loc_A0F904: LitStr " partidas encontradas"
  loc_A0F907: ConcatStr
  loc_A0F908: FStStrNoPop var_90
  loc_A0F90B: FLdPr Me
  loc_A0F90E: VCallAd Control_ID_CodiPartLbl
  loc_A0F911: FStAdFunc var_88
  loc_A0F914: FLdPr var_88
  loc_A0F917: Me.Caption = from_stack_1
  loc_A0F91C: FFreeStr var_8C = ""
  loc_A0F923: FFree1Ad var_88
  loc_A0F926: ExitProcHresult
End Sub

Private Sub CodiInsuMsk_UnknownEvent_0 '94EBA0
  'Data Table: 4DCA5C
  loc_94EB8C: FLdPr Me
  loc_94EB8F: VCallAd Control_ID_CodiInsuMsk
  loc_94EB92: CVarAd
  loc_94EB96: ImpAdCallFPR4 Proc_261_5_9BDB84()
  loc_94EB9B: FFree1Var var_94 = ""
  loc_94EB9E: ExitProcHresult
End Sub

Private Sub CodiInsuMsk_UnknownEvent_8 '9F3268
  'Data Table: 4DCA5C
  loc_9F313C: LitStr "SELECT DetaInsu FROM infogov.insumo WHERE CodiInsu = '"
  loc_9F313F: FLdPr Me
  loc_9F3142: VCallAd Control_ID_CodiInsuMsk
  loc_9F3145: FStAdFunc var_88
  loc_9F3148: FLdPr var_88
  loc_9F314B: LateIdLdVar var_98 DispID_22 0
  loc_9F3152: CStrVarTmp
  loc_9F3153: FStStrNoPop var_9C
  loc_9F3156: ConcatStr
  loc_9F3157: FStStrNoPop var_A0
  loc_9F315A: LitStr "'"
  loc_9F315D: ConcatStr
  loc_9F315E: FStStrNoPop var_A4
  loc_9F3161: FLdPr Me
  loc_9F3164: MemLdRfVar from_stack_1.global_80
  loc_9F3167: NewIfNullPr clsinsumo
  loc_9F316A: Call clsinsumo.RedefineRS(from_stack_1v)
  loc_9F316F: FFreeStr var_9C = "": var_A0 = ""
  loc_9F3178: FFree1Ad var_88
  loc_9F317B: FFree1Var var_98 = ""
  loc_9F317E: FLdRfVar var_A8
  loc_9F3181: FLdPr Me
  loc_9F3184: MemLdRfVar from_stack_1.global_80
  loc_9F3187: NewIfNullPr clsinsumo
  loc_9F318A: from_stack_1 = clsinsumo.RecordCount
  loc_9F318F: ILdRf var_A8
  loc_9F3192: FStR4 var_AC
  loc_9F3195: ILdRf var_AC
  loc_9F3198: LitI4 0
  loc_9F319D: EqI4
  loc_9F319E: BranchF loc_9F31BB
  loc_9F31A1: LitStr "0 registros encontrados"
  loc_9F31A4: FLdPr Me
  loc_9F31A7: VCallAd Control_ID_CodiInsuLbl
  loc_9F31AA: FStAdFunc var_88
  loc_9F31AD: FLdPr var_88
  loc_9F31B0: Me.Caption = from_stack_1
  loc_9F31B5: FFree1Ad var_88
  loc_9F31B8: Branch loc_9F3266
  loc_9F31BB: ILdRf var_AC
  loc_9F31BE: LitI4 1
  loc_9F31C3: EqI4
  loc_9F31C4: BranchF loc_9F322B
  loc_9F31C7: FLdRfVar var_98
  loc_9F31CA: FLdRfVar var_C4
  loc_9F31CD: LitVarStr var_C0, "DetaInsu"
  loc_9F31D2: PopAdLdVar
  loc_9F31D3: FLdRfVar var_B0
  loc_9F31D6: FLdRfVar var_88
  loc_9F31D9: FLdPr Me
  loc_9F31DC: MemLdRfVar from_stack_1.global_80
  loc_9F31DF: NewIfNullPr clsinsumo
  loc_9F31E2: from_stack_1v = clsinsumo.RsFrmGet()
  loc_9F31E7: FLdPr var_88
  loc_9F31EA:  = Me.Fields
  loc_9F31EF: FLdPr var_B0
  loc_9F31F2: from_stack_2 = Me.Item(from_stack_1)
  loc_9F31F7: FLdPr var_C4
  loc_9F31FA:  = Me.Value
  loc_9F31FF: FLdRfVar var_98
  loc_9F3202: CStrVarTmp
  loc_9F3203: FStStrNoPop var_9C
  loc_9F3206: FLdPr Me
  loc_9F3209: VCallAd Control_ID_CodiInsuLbl
  loc_9F320C: FStAdFunc var_C8
  loc_9F320F: FLdPr var_C8
  loc_9F3212: Me.Caption = from_stack_1
  loc_9F3217: FFree1Str var_9C
  loc_9F321A: FFreeAd var_88 = "": var_B0 = "": var_C4 = ""
  loc_9F3225: FFree1Var var_98 = ""
  loc_9F3228: Branch loc_9F3266
  loc_9F322B: FLdRfVar var_A8
  loc_9F322E: FLdPr Me
  loc_9F3231: MemLdRfVar from_stack_1.global_80
  loc_9F3234: NewIfNullPr clsinsumo
  loc_9F3237: from_stack_1 = clsinsumo.RecordCount
  loc_9F323C: ILdRf var_A8
  loc_9F323F: CStrI4
  loc_9F3241: FStStrNoPop var_9C
  loc_9F3244: LitStr " insumos encontrados"
  loc_9F3247: ConcatStr
  loc_9F3248: FStStrNoPop var_A0
  loc_9F324B: FLdPr Me
  loc_9F324E: VCallAd Control_ID_CodiInsuLbl
  loc_9F3251: FStAdFunc var_88
  loc_9F3254: FLdPr var_88
  loc_9F3257: Me.Caption = from_stack_1
  loc_9F325C: FFreeStr var_9C = ""
  loc_9F3263: FFree1Ad var_88
  loc_9F3266: ExitProcHresult
End Sub

Private Sub cboPeriodo_Click() '9D3C98
  'Data Table: 4DCA5C
  loc_9D3BB0: FLdRfVar var_8C
  loc_9D3BB3: FLdPr Me
  loc_9D3BB6: VCallAd Control_ID_cboPeriodo
  loc_9D3BB9: FStAdFunc var_88
  loc_9D3BBC: FLdPr var_88
  loc_9D3BBF:  = Me.Text
  loc_9D3BC4: LitI2_Byte 1
  loc_9D3BC6: LitI2_Byte 1
  loc_9D3BC8: ILdRf var_8C
  loc_9D3BCB: CI2Str
  loc_9D3BCD: FLdRfVar var_9C
  loc_9D3BD0: ImpAdCallFPR4  = DateSerial(, , )
  loc_9D3BD5: FLdRfVar var_9C
  loc_9D3BD8: CStrVarTmp
  loc_9D3BD9: CVarStr var_AC
  loc_9D3BDC: PopAdLdVar
  loc_9D3BDD: FLdPr Me
  loc_9D3BE0: VCallAd Control_ID_mskDesde
  loc_9D3BE3: FStAdFunc var_C0
  loc_9D3BE6: FLdPr var_C0
  loc_9D3BE9: LateIdSt
  loc_9D3BEE: FFree1Str var_8C
  loc_9D3BF1: FFreeAd var_88 = ""
  loc_9D3BF8: FFreeVar var_9C = ""
  loc_9D3BFF: FLdRfVar var_8C
  loc_9D3C02: FLdPr Me
  loc_9D3C05: VCallAd Control_ID_cboPeriodo
  loc_9D3C08: FStAdFunc var_88
  loc_9D3C0B: FLdPr var_88
  loc_9D3C0E:  = Me.Text
  loc_9D3C13: ILdRf var_8C
  loc_9D3C16: CI2Str
  loc_9D3C18: ImpAdLdI2 MemVar_C3D064
  loc_9D3C1B: LtI2
  loc_9D3C1C: FFree1Str var_8C
  loc_9D3C1F: FFree1Ad var_88
  loc_9D3C22: BranchF loc_9D3C77
  loc_9D3C25: FLdRfVar var_8C
  loc_9D3C28: FLdPr Me
  loc_9D3C2B: VCallAd Control_ID_cboPeriodo
  loc_9D3C2E: FStAdFunc var_88
  loc_9D3C31: FLdPr var_88
  loc_9D3C34:  = Me.Text
  loc_9D3C39: LitI2_Byte &H1F
  loc_9D3C3B: LitI2_Byte &HC
  loc_9D3C3D: ILdRf var_8C
  loc_9D3C40: CI2Str
  loc_9D3C42: FLdRfVar var_9C
  loc_9D3C45: ImpAdCallFPR4  = DateSerial(, , )
  loc_9D3C4A: FLdRfVar var_9C
  loc_9D3C4D: CStrVarTmp
  loc_9D3C4E: CVarStr var_AC
  loc_9D3C51: PopAdLdVar
  loc_9D3C52: FLdPr Me
  loc_9D3C55: VCallAd Control_ID_mskHasta
  loc_9D3C58: FStAdFunc var_C0
  loc_9D3C5B: FLdPr var_C0
  loc_9D3C5E: LateIdSt
  loc_9D3C63: FFree1Str var_8C
  loc_9D3C66: FFreeAd var_88 = ""
  loc_9D3C6D: FFreeVar var_9C = ""
  loc_9D3C74: Branch loc_9D3C97
  loc_9D3C77: ImpAdLdFPR8 MemVar_C3D04C
  loc_9D3C7A: CStrDate
  loc_9D3C7C: CVarStr var_9C
  loc_9D3C7F: PopAdLdVar
  loc_9D3C80: FLdPr Me
  loc_9D3C83: VCallAd Control_ID_mskHasta
  loc_9D3C86: FStAdFunc var_88
  loc_9D3C89: FLdPr var_88
  loc_9D3C8C: LateIdSt
  loc_9D3C91: FFree1Ad var_88
  loc_9D3C94: FFree1Var var_9C = ""
  loc_9D3C97: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '9600C4
  'Data Table: 4DCA5C
  loc_9600AC: LitI2_Byte 0
  loc_9600AE: ILdRf Me
  loc_9600B1: CastAd
  loc_9600B4: FStAdFunc var_88
  loc_9600B7: FLdRfVar var_88
  loc_9600BA: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_9600BF: FFree1Ad var_88
  loc_9600C2: ExitProcHresult
End Sub

Private Sub Form_Load() '9F4750
  'Data Table: 4DCA5C
  loc_9F4618: LitVarStr var_94, "######"
  loc_9F461D: PopAdLdVar
  loc_9F461E: FLdPr Me
  loc_9F4621: VCallAd Control_ID_CodiOrgaMsk
  loc_9F4624: FStAdFunc var_A8
  loc_9F4627: FLdPr var_A8
  loc_9F462A: LateIdSt
  loc_9F462F: FFree1Ad var_A8
  loc_9F4632: LitVarStr var_94, "#.#.#.#.##.##"
  loc_9F4637: PopAdLdVar
  loc_9F4638: FLdPr Me
  loc_9F463B: VCallAd Control_ID_CodiPartMsk
  loc_9F463E: FStAdFunc var_A8
  loc_9F4641: FLdPr var_A8
  loc_9F4644: LateIdSt
  loc_9F4649: FFree1Ad var_A8
  loc_9F464C: LitVarStr var_94, "##.##.##"
  loc_9F4651: PopAdLdVar
  loc_9F4652: FLdPr Me
  loc_9F4655: VCallAd Control_ID_CodiFifuMsk
  loc_9F4658: FStAdFunc var_A8
  loc_9F465B: FLdPr var_A8
  loc_9F465E: LateIdSt
  loc_9F4663: FFree1Ad var_A8
  loc_9F4666: LitI2_Byte &HFF
  loc_9F4668: ImpAdStI2 MemVar_C3D840
  loc_9F466B: ILdRf Me
  loc_9F466E: CastAd
  loc_9F4671: FStAdFunc var_A8
  loc_9F4674: FLdRfVar var_A8
  loc_9F4677: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_9F467C: FFree1Ad var_A8
  loc_9F467F: LitStr "SELECT * FROM infogov.periodo ORDER BY PeriInfo"
  loc_9F4682: FLdPr Me
  loc_9F4685: MemLdRfVar from_stack_1.global_72
  loc_9F4688: NewIfNullPr clsperiodo
  loc_9F468B: Call clsperiodo.RedefineRS(from_stack_1v)
  loc_9F4690: FLdRfVar var_AC
  loc_9F4693: FLdPr Me
  loc_9F4696: MemLdRfVar from_stack_1.global_72
  loc_9F4699: NewIfNullPr clsperiodo
  loc_9F469C: from_stack_1 = clsperiodo.RecordCount
  loc_9F46A1: ILdRf var_AC
  loc_9F46A4: LitI4 0
  loc_9F46A9: GtI4
  loc_9F46AA: BranchF loc_9F4749
  loc_9F46AD: FLdPr Me
  loc_9F46B0: MemLdRfVar from_stack_1.global_72
  loc_9F46B3: NewIfNullPr clsperiodo
  loc_9F46B6: Call clsperiodo.MoveFirst()
  loc_9F46BB: FLdRfVar var_AE
  loc_9F46BE: FLdPr Me
  loc_9F46C1: MemLdRfVar from_stack_1.global_72
  loc_9F46C4: NewIfNullPr clsperiodo
  loc_9F46C7: from_stack_1 = clsperiodo.EOF
  loc_9F46CC: FLdI2 var_AE
  loc_9F46CF: NotI4
  loc_9F46D0: BranchF loc_9F4749
  loc_9F46D3: LitVar_Missing var_A4
  loc_9F46D6: PopAdLdVar
  loc_9F46D7: FLdRfVar var_C8
  loc_9F46DA: FLdRfVar var_B8
  loc_9F46DD: LitVarStr var_94, "PeriInfo"
  loc_9F46E2: PopAdLdVar
  loc_9F46E3: FLdRfVar var_B4
  loc_9F46E6: FLdRfVar var_A8
  loc_9F46E9: FLdPr Me
  loc_9F46EC: MemLdRfVar from_stack_1.global_72
  loc_9F46EF: NewIfNullPr clsperiodo
  loc_9F46F2: from_stack_1v = clsperiodo.RsFrmGet()
  loc_9F46F7: FLdPr var_A8
  loc_9F46FA:  = Me.Fields
  loc_9F46FF: FLdPr var_B4
  loc_9F4702: from_stack_2 = Me.Item(from_stack_1)
  loc_9F4707: FLdPr var_B8
  loc_9F470A:  = Me.Value
  loc_9F470F: FLdRfVar var_C8
  loc_9F4712: CStrVarTmp
  loc_9F4713: FStStrNoPop var_CC
  loc_9F4716: FLdPr Me
  loc_9F4719: VCallAd Control_ID_cboPeriodo
  loc_9F471C: FStAdFunc var_D0
  loc_9F471F: FLdPr var_D0
  loc_9F4722: Me.AddItem from_stack_1, from_stack_2
  loc_9F4727: FFree1Str var_CC
  loc_9F472A: FFreeAd var_A8 = "": var_B4 = "": var_B8 = ""
  loc_9F4735: FFree1Var var_C8 = ""
  loc_9F4738: FLdPr Me
  loc_9F473B: MemLdRfVar from_stack_1.global_72
  loc_9F473E: NewIfNullPr clsperiodo
  loc_9F4741: Call clsperiodo.MoveSiguiente()
  loc_9F4746: Branch loc_9F46BB
  loc_9F4749: Call cmdNueva_Click()
  loc_9F474E: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9601A8
  'Data Table: 4DCA5C
  loc_960190: FLdPr Me
  loc_960193: VCallAd Control_ID_wbbReporte
  loc_960196: FStAdFunc var_88
  loc_960199: FLdRfVar var_88
  loc_96019C: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_9601A1: FFree1Ad var_88
  loc_9601A4: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '9894C4
  'Data Table: 4DCA5C
  loc_98948C: FLdPr Me
  loc_98948F: VCallAd Control_ID_statusBar
  loc_989492: FStAdFunc var_88
  loc_989495: FLdPr var_88
  loc_989498: LateIdLdVar var_98 DispID_1 0
  loc_98949F: CStrVarTmp
  loc_9894A0: CVarStr var_A8
  loc_9894A3: PopAdLdVar
  loc_9894A4: FLdPr Me
  loc_9894A7: VCallAd Control_ID_statusBar
  loc_9894AA: FStAdFunc var_BC
  loc_9894AD: FLdPr var_BC
  loc_9894B0: LateIdSt
  loc_9894B5: FFreeAd var_88 = ""
  loc_9894BC: FFreeVar var_98 = ""
  loc_9894C3: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '96002C
  'Data Table: 4DCA5C
  loc_960014: ILdRf Me
  loc_960017: CastAd
  loc_96001A: FStAdFunc var_88
  loc_96001D: FLdRfVar var_88
  loc_960020: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_960025: FFree1Ad var_88
  loc_960028: ExitProcHresult
  loc_960029: Ary1LdPr
End Sub

Private Sub cmdXLS_Click() '96B12C
  'Data Table: 4DCA5C
  loc_96B110: LitI2_Byte &HFF
  loc_96B112: LitI2_Byte 0
  loc_96B114: ILdRf Me
  loc_96B117: CastAd
  loc_96B11A: FStAdFunc var_88
  loc_96B11D: FLdRfVar var_88
  loc_96B120: ImpAdCallFPR4 Proc_263_4_A28DF0(, , )
  loc_96B125: FFree1Ad var_88
  loc_96B128: ExitProcHresult
End Sub

Private Sub CodiOrgaMsk_UnknownEvent_0 '94EB10
  'Data Table: 4DCA5C
  loc_94EAFC: FLdPr Me
  loc_94EAFF: VCallAd Control_ID_CodiOrgaMsk
  loc_94EB02: CVarAd
  loc_94EB06: ImpAdCallFPR4 Proc_261_5_9BDB84()
  loc_94EB0B: FFree1Var var_94 = ""
  loc_94EB0E: ExitProcHresult
End Sub

Private Sub CodiOrgaMsk_UnknownEvent_8 'A53124
  'Data Table: 4DCA5C
  loc_A52E80: LitStr "SELECT DetaOrga FROM infogov.organigrama WHERE PeriInfo = "
  loc_A52E83: FLdRfVar var_8C
  loc_A52E86: FLdPr Me
  loc_A52E89: VCallAd Control_ID_cboPeriodo
  loc_A52E8C: FStAdFunc var_88
  loc_A52E8F: FLdPr var_88
  loc_A52E92:  = Me.Text
  loc_A52E97: ILdRf var_8C
  loc_A52E9A: ConcatStr
  loc_A52E9B: FStStrNoPop var_90
  loc_A52E9E: LitStr " AND CodiOrga LIKE '"
  loc_A52EA1: ConcatStr
  loc_A52EA2: FStStrNoPop var_A8
  loc_A52EA5: FLdPr Me
  loc_A52EA8: VCallAd Control_ID_CodiOrgaMsk
  loc_A52EAB: FStAdFunc var_94
  loc_A52EAE: FLdPr var_94
  loc_A52EB1: LateIdLdVar var_A4 DispID_22 0
  loc_A52EB8: CStrVarTmp
  loc_A52EB9: FStStrNoPop var_AC
  loc_A52EBC: ConcatStr
  loc_A52EBD: FStStrNoPop var_B0
  loc_A52EC0: LitStr Chr(37) & "'"
  loc_A52EC3: ConcatStr
  loc_A52EC4: FStStrNoPop var_B4
  loc_A52EC7: FLdPr Me
  loc_A52ECA: MemLdRfVar from_stack_1.global_88
  loc_A52ECD: NewIfNullPr clsorganigrama
  loc_A52ED0: Call clsorganigrama.RedefineRS(from_stack_1v)
  loc_A52ED5: FFreeStr var_8C = "": var_90 = "": var_A8 = "": var_AC = "": var_B0 = ""
  loc_A52EE4: FFreeAd var_88 = ""
  loc_A52EEB: FFree1Var var_A4 = ""
  loc_A52EEE: FLdRfVar var_B8
  loc_A52EF1: FLdPr Me
  loc_A52EF4: MemLdRfVar from_stack_1.global_88
  loc_A52EF7: NewIfNullPr clsorganigrama
  loc_A52EFA: from_stack_1 = clsorganigrama.RecordCount
  loc_A52EFF: ILdRf var_B8
  loc_A52F02: FStR4 var_BC
  loc_A52F05: ILdRf var_BC
  loc_A52F08: LitI4 0
  loc_A52F0D: EqI4
  loc_A52F0E: BranchF loc_A52FA1
  loc_A52F11: LitStr "0 registros encontrados"
  loc_A52F14: FLdPr Me
  loc_A52F17: VCallAd Control_ID_CodiOrgaLbl
  loc_A52F1A: FStAdFunc var_88
  loc_A52F1D: FLdPr var_88
  loc_A52F20: Me.Caption = from_stack_1
  loc_A52F25: FFree1Ad var_88
  loc_A52F28: LitI4 0
  loc_A52F2D: LitI4 1
  loc_A52F32: FLdRfVar var_C0
  loc_A52F35: Redim
  loc_A52F3F: FLdPr Me
  loc_A52F42: VCallAd Control_ID_CodiUngaMsk
  loc_A52F45: CVarAd
  loc_A52F49: ParmAry1St
  loc_A52F4F: FLdPr Me
  loc_A52F52: VCallAd Control_ID_CodiUngaCmd
  loc_A52F55: CVarAd
  loc_A52F59: ParmAry1St
  loc_A52F5F: FLdRfVar var_C0
  loc_A52F62: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_A52F67: FLdRfVar var_C0
  loc_A52F6A: Erase
  loc_A52F6B: LitI4 0
  loc_A52F70: LitI4 0
  loc_A52F75: FLdRfVar var_C0
  loc_A52F78: Redim
  loc_A52F82: FLdPr Me
  loc_A52F85: VCallAd Control_ID_CodiUngaMsk
  loc_A52F88: CVarAd
  loc_A52F8C: ParmAry1St
  loc_A52F92: FLdRfVar var_C0
  loc_A52F95: ImpAdCallFPR4 Proc_261_4_9A47F0()
  loc_A52F9A: FLdRfVar var_C0
  loc_A52F9D: Erase
  loc_A52F9E: Branch loc_A53123
  loc_A52FA1: ILdRf var_BC
  loc_A52FA4: LitI4 1
  loc_A52FA9: EqI4
  loc_A52FAA: BranchF loc_A53072
  loc_A52FAD: FLdRfVar var_A4
  loc_A52FB0: FLdRfVar var_E4
  loc_A52FB3: LitVarStr var_E0, "DetaOrga"
  loc_A52FB8: PopAdLdVar
  loc_A52FB9: FLdRfVar var_94
  loc_A52FBC: FLdRfVar var_88
  loc_A52FBF: FLdPr Me
  loc_A52FC2: MemLdRfVar from_stack_1.global_88
  loc_A52FC5: NewIfNullPr clsorganigrama
  loc_A52FC8: from_stack_1v = clsorganigrama.RsFrmGet()
  loc_A52FCD: FLdPr var_88
  loc_A52FD0:  = Me.Fields
  loc_A52FD5: FLdPr var_94
  loc_A52FD8: from_stack_2 = Me.Item(from_stack_1)
  loc_A52FDD: FLdPr var_E4
  loc_A52FE0:  = Me.Value
  loc_A52FE5: FLdRfVar var_A4
  loc_A52FE8: CStrVarTmp
  loc_A52FE9: FStStrNoPop var_8C
  loc_A52FEC: FLdPr Me
  loc_A52FEF: VCallAd Control_ID_CodiOrgaLbl
  loc_A52FF2: FStAdFunc var_E8
  loc_A52FF5: FLdPr var_E8
  loc_A52FF8: Me.Caption = from_stack_1
  loc_A52FFD: FFree1Str var_8C
  loc_A53000: FFreeAd var_88 = "": var_94 = "": var_E4 = ""
  loc_A5300B: FFree1Var var_A4 = ""
  loc_A5300E: FLdPr Me
  loc_A53011: VCallAd Control_ID_CodiOrgaMsk
  loc_A53014: FStAdFunc var_88
  loc_A53017: FLdPr var_88
  loc_A5301A: LateIdLdVar var_A4 DispID_13 -32767
  loc_A53021: CBoolVar
  loc_A53023: FFree1Ad var_88
  loc_A53026: FFree1Var var_A4 = ""
  loc_A53029: BranchF loc_A5306F
  loc_A5302C: LitI4 0
  loc_A53031: LitI4 1
  loc_A53036: FLdRfVar var_C0
  loc_A53039: Redim
  loc_A53043: FLdPr Me
  loc_A53046: VCallAd Control_ID_CodiUngaMsk
  loc_A53049: CVarAd
  loc_A5304D: ParmAry1St
  loc_A53053: FLdPr Me
  loc_A53056: VCallAd Control_ID_CodiUngaCmd
  loc_A53059: CVarAd
  loc_A5305D: ParmAry1St
  loc_A53063: FLdRfVar var_C0
  loc_A53066: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_A5306B: FLdRfVar var_C0
  loc_A5306E: Erase
  loc_A5306F: Branch loc_A53123
  loc_A53072: FLdRfVar var_B8
  loc_A53075: FLdPr Me
  loc_A53078: MemLdRfVar from_stack_1.global_88
  loc_A5307B: NewIfNullPr clsorganigrama
  loc_A5307E: from_stack_1 = clsorganigrama.RecordCount
  loc_A53083: ILdRf var_B8
  loc_A53086: CStrI4
  loc_A53088: FStStrNoPop var_8C
  loc_A5308B: LitStr " organigramas encontrados"
  loc_A5308E: ConcatStr
  loc_A5308F: FStStrNoPop var_90
  loc_A53092: FLdPr Me
  loc_A53095: VCallAd Control_ID_CodiOrgaLbl
  loc_A53098: FStAdFunc var_88
  loc_A5309B: FLdPr var_88
  loc_A5309E: Me.Caption = from_stack_1
  loc_A530A3: FFreeStr var_8C = ""
  loc_A530AA: FFree1Ad var_88
  loc_A530AD: LitI4 0
  loc_A530B2: LitI4 1
  loc_A530B7: FLdRfVar var_C0
  loc_A530BA: Redim
  loc_A530C4: FLdPr Me
  loc_A530C7: VCallAd Control_ID_CodiUngaMsk
  loc_A530CA: CVarAd
  loc_A530CE: ParmAry1St
  loc_A530D4: FLdPr Me
  loc_A530D7: VCallAd Control_ID_CodiUngaCmd
  loc_A530DA: CVarAd
  loc_A530DE: ParmAry1St
  loc_A530E4: FLdRfVar var_C0
  loc_A530E7: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_A530EC: FLdRfVar var_C0
  loc_A530EF: Erase
  loc_A530F0: LitI4 0
  loc_A530F5: LitI4 0
  loc_A530FA: FLdRfVar var_C0
  loc_A530FD: Redim
  loc_A53107: FLdPr Me
  loc_A5310A: VCallAd Control_ID_CodiUngaMsk
  loc_A5310D: CVarAd
  loc_A53111: ParmAry1St
  loc_A53117: FLdRfVar var_C0
  loc_A5311A: ImpAdCallFPR4 Proc_261_4_9A47F0()
  loc_A5311F: FLdRfVar var_C0
  loc_A53122: Erase
  loc_A53123: ExitProcHresult
End Sub

Private Sub mskDesde_UnknownEvent_0 '953118
  'Data Table: 4DCA5C
  loc_953104: FLdPr Me
  loc_953107: VCallAd Control_ID_mskDesde
  loc_95310A: CVarAd
  loc_95310E: ImpAdCallFPR4 Proc_261_5_9BDB84()
  loc_953113: FFree1Var var_94 = ""
  loc_953116: ExitProcHresult
End Sub

Private Function mskDesde_UnknownEvent_8(arg_C) '9CC604
  'Data Table: 4DCA5C
  loc_9CC538: FLdPr Me
  loc_9CC53B: VCallAd Control_ID_mskDesde
  loc_9CC53E: FStAdFunc var_88
  loc_9CC541: FLdPr var_88
  loc_9CC544: LateIdLdVar var_98 DispID_15 0
  loc_9CC54B: PopAd
  loc_9CC54D: FLdRfVar var_A0
  loc_9CC550: FLdPr Me
  loc_9CC553: VCallAd Control_ID_cboPeriodo
  loc_9CC556: FStAdFunc var_9C
  loc_9CC559: FLdPr var_9C
  loc_9CC55C:  = Me.Text
  loc_9CC561: LitI2_Byte 1
  loc_9CC563: LitI2_Byte 1
  loc_9CC565: ILdRf var_A0
  loc_9CC568: CI2Str
  loc_9CC56A: FLdRfVar var_B0
  loc_9CC56D: ImpAdCallFPR4  = DateSerial(, , )
  loc_9CC572: FLdPr Me
  loc_9CC575: VCallAd Control_ID_mskDesde
  loc_9CC578: FStAdFunc var_C8
  loc_9CC57B: LitI2_Byte &HFF
  loc_9CC57D: PopTmpLdAd2 var_BE
  loc_9CC580: FLdZeroAd var_C8
  loc_9CC583: FStAdFunc var_BC
  loc_9CC586: FLdRfVar var_BC
  loc_9CC589: FLdRfVar var_B0
  loc_9CC58C: CStrVarVal var_B8
  loc_9CC590: LitI2_Byte 0
  loc_9CC592: LitI2_Byte 0
  loc_9CC594: FLdRfVar var_98
  loc_9CC597: CStrVarTmp
  loc_9CC598: FStStrNoPop var_B4
  loc_9CC59B: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9CC5A0: FStStrNoPop var_C4
  loc_9CC5A3: FLdPr Me
  loc_9CC5A6: MemStStrCopy
  loc_9CC5AA: FFreeStr var_A0 = "": var_B4 = "": var_B8 = ""
  loc_9CC5B5: FFreeAd var_88 = "": var_9C = "": var_BC = ""
  loc_9CC5C0: FFreeVar var_98 = ""
  loc_9CC5C7: FLdPr Me
  loc_9CC5CA: VCallAd Control_ID_mskDesde
  loc_9CC5CD: FStAdFunc var_C8
  loc_9CC5D0: LitNothing
  loc_9CC5D2: CastAd
  loc_9CC5D5: FStAdFunc var_BC
  loc_9CC5D8: FLdRfVar var_BC
  loc_9CC5DB: FLdZeroAd var_C8
  loc_9CC5DE: FStAdFuncNoPop
  loc_9CC5E1: CastAd
  loc_9CC5E4: FStAdFunc var_9C
  loc_9CC5E7: FLdRfVar var_9C
  loc_9CC5EA: FLdPr Me
  loc_9CC5ED: MemLdRfVar from_stack_1.global_124
  loc_9CC5F0: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9CC5F5: IStI2 arg_C
  loc_9CC5F8: FFreeAd var_88 = "": var_9C = "": var_BC = ""
  loc_9CC603: ExitProcHresult
End Function

Public Function htmFileGet() '4DE500
  htmFileGet = htmFile
End Function

Public Sub htmFilePut(Value) '4DE50F
  htmFile = Value
End Sub

Public Sub htmFileSet(Value) '4DE51E
  htmFile = Value
End Sub

Public Function bLogosGet() '4DE52D
  bLogosGet = bLogos
End Function

Public Sub bLogosPut(Value) '4DE53C
  bLogos = Value
End Sub

Public Function bGeneradoGet() '4DE54B
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '4DE55A
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() '9E803C
  'Data Table: 4DCA5C
  loc_9E7F48: LitI4 0
  loc_9E7F4D: LitI4 &HC
  loc_9E7F52: FLdRfVar var_88
  loc_9E7F55: Redim
  loc_9E7F5F: FLdPr Me
  loc_9E7F62: VCallAd Control_ID_cboPeriodo
  loc_9E7F65: CVarAd
  loc_9E7F69: ParmAry1St
  loc_9E7F6F: FLdPr Me
  loc_9E7F72: VCallAd Control_ID_mskDesde
  loc_9E7F75: CVarAd
  loc_9E7F79: ParmAry1St
  loc_9E7F7F: FLdPr Me
  loc_9E7F82: VCallAd Control_ID_cmdCalDesde
  loc_9E7F85: CVarAd
  loc_9E7F89: ParmAry1St
  loc_9E7F8F: FLdPr Me
  loc_9E7F92: VCallAd Control_ID_mskHasta
  loc_9E7F95: CVarAd
  loc_9E7F99: ParmAry1St
  loc_9E7F9F: FLdPr Me
  loc_9E7FA2: VCallAd Control_ID_cmdCalHasta
  loc_9E7FA5: CVarAd
  loc_9E7FA9: ParmAry1St
  loc_9E7FAF: FLdPr Me
  loc_9E7FB2: VCallAd Control_ID_CodiInsuMsk
  loc_9E7FB5: CVarAd
  loc_9E7FB9: ParmAry1St
  loc_9E7FBF: FLdPr Me
  loc_9E7FC2: VCallAd Control_ID_cmdCodiInsu
  loc_9E7FC5: CVarAd
  loc_9E7FC9: ParmAry1St
  loc_9E7FCF: FLdPr Me
  loc_9E7FD2: VCallAd Control_ID_CodiPartMsk
  loc_9E7FD5: CVarAd
  loc_9E7FD9: ParmAry1St
  loc_9E7FDF: FLdPr Me
  loc_9E7FE2: VCallAd Control_ID_cmdCodiPart
  loc_9E7FE5: CVarAd
  loc_9E7FE9: ParmAry1St
  loc_9E7FEF: FLdPr Me
  loc_9E7FF2: VCallAd Control_ID_CodiOrgaMsk
  loc_9E7FF5: CVarAd
  loc_9E7FF9: ParmAry1St
  loc_9E7FFF: FLdPr Me
  loc_9E8002: VCallAd Control_ID_cmdCodiOrga
  loc_9E8005: CVarAd
  loc_9E8009: ParmAry1St
  loc_9E800F: FLdPr Me
  loc_9E8012: VCallAd Control_ID_CodiFifuMsk
  loc_9E8015: CVarAd
  loc_9E8019: ParmAry1St
  loc_9E801F: FLdPr Me
  loc_9E8022: VCallAd Control_ID_cmdCodiFifu
  loc_9E8025: CVarAd
  loc_9E8029: ParmAry1St
  loc_9E802F: FLdRfVar var_88
  loc_9E8032: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9E8037: FLdRfVar var_88
  loc_9E803A: Erase
  loc_9E803B: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'B9CB58
  'Data Table: 4DCA5C
  loc_B9BCC0: OnErrorGoto loc_B9CAF5
  loc_B9BCC3: FLdPr Me
  loc_B9BCC6: MemLdI2 bGenerado
  loc_B9BCC9: BranchF loc_B9BCCD
  loc_B9BCCC: ExitProcHresult
  loc_B9BCCD: LitVarStr var_AC, "Generando reporte..."
  loc_B9BCD2: PopAdLdVar
  loc_B9BCD3: FLdPr Me
  loc_B9BCD6: VCallAd Control_ID_statusBar
  loc_B9BCD9: FStAdFunc var_C0
  loc_B9BCDC: FLdPr var_C0
  loc_B9BCDF: LateIdSt
  loc_B9BCE4: FFree1Ad var_C0
  loc_B9BCE7: LitI4 &HB
  loc_B9BCEC: CI2I4
  loc_B9BCED: FLdPr Me
  loc_B9BCF0: Me.MousePointer = from_stack_1
  loc_B9BCF5: LitI2_Byte 0
  loc_B9BCF7: PopTmpLdAd2 var_C2
  loc_B9BCFA: from_stack_2v = mskDesde_UnknownEvent_8(from_stack_1v)
  loc_B9BCFF: FLdPr Me
  loc_B9BD02: MemLdStr global_124
  loc_B9BD05: LitStr vbNullString
  loc_B9BD08: NeStr
  loc_B9BD0A: BranchF loc_B9BD10
  loc_B9BD0D: Branch loc_B9CACC
  loc_B9BD10: LitI2_Byte 0
  loc_B9BD12: PopTmpLdAd2 var_C2
  loc_B9BD15: from_stack_2v = mskHasta_UnknownEvent_8(from_stack_1v)
  loc_B9BD1A: FLdPr Me
  loc_B9BD1D: MemLdStr global_124
  loc_B9BD20: LitStr vbNullString
  loc_B9BD23: NeStr
  loc_B9BD25: BranchF loc_B9BD2B
  loc_B9BD28: Branch loc_B9CACC
  loc_B9BD2B: LitI2_Byte 0
  loc_B9BD2D: PopTmpLdAd2 var_C2
  loc_B9BD30: Call CodiInsuMsk_UnknownEvent_8()
  loc_B9BD35: LitI2_Byte 0
  loc_B9BD37: PopTmpLdAd2 var_C2
  loc_B9BD3A: Call CodiPartMsk_UnknownEvent_8()
  loc_B9BD3F: LitI2_Byte 0
  loc_B9BD41: PopTmpLdAd2 var_C2
  loc_B9BD44: Call CodiOrgaMsk_UnknownEvent_8()
  loc_B9BD49: LitI2_Byte 0
  loc_B9BD4B: PopTmpLdAd2 var_C2
  loc_B9BD4E: Call CodiFifuMsk_UnknownEvent_8()
  loc_B9BD53: FLdPr Me
  loc_B9BD56: VCallAd Control_ID_CodiInsuMsk
  loc_B9BD59: FStAdFunc var_C0
  loc_B9BD5C: FLdPr var_C0
  loc_B9BD5F: LateIdLdVar var_D4 DispID_20 0
  loc_B9BD66: PopAd
  loc_B9BD68: FLdPr Me
  loc_B9BD6B: VCallAd Control_ID_CodiInsuMsk
  loc_B9BD6E: FStAdFunc var_DC
  loc_B9BD71: FLdPr var_DC
  loc_B9BD74: LateIdLdVar var_EC DispID_20 0
  loc_B9BD7B: PopAd
  loc_B9BD7D: LitVarStr var_BC, vbNullString
  loc_B9BD82: FStVarCopyObj var_110
  loc_B9BD85: FLdRfVar var_110
  loc_B9BD88: LitStr " AND imputacion.CodiInsu = "
  loc_B9BD8B: FLdRfVar var_EC
  loc_B9BD8E: CStrVarTmp
  loc_B9BD8F: FStStrNoPop var_F0
  loc_B9BD92: ConcatStr
  loc_B9BD93: CVarStr var_100
  loc_B9BD96: FLdRfVar var_D4
  loc_B9BD99: CStrVarTmp
  loc_B9BD9A: FStStrNoPop var_D8
  loc_B9BD9D: LitStr vbNullString
  loc_B9BDA0: NeStr
  loc_B9BDA2: CVarBoolI2 var_AC
  loc_B9BDA6: FLdRfVar var_120
  loc_B9BDA9: ImpAdCallFPR4  = IIf(, , )
  loc_B9BDAE: FLdRfVar var_120
  loc_B9BDB1: CStrVarTmp
  loc_B9BDB2: FStStr var_88
  loc_B9BDB5: FFreeStr var_D8 = ""
  loc_B9BDBC: FFreeAd var_C0 = ""
  loc_B9BDC3: FFreeVar var_D4 = "": var_EC = "": var_AC = "": var_100 = "": var_110 = ""
  loc_B9BDD2: FLdPr Me
  loc_B9BDD5: VCallAd Control_ID_CodiPartMsk
  loc_B9BDD8: FStAdFunc var_C0
  loc_B9BDDB: FLdPr var_C0
  loc_B9BDDE: LateIdLdVar var_D4 DispID_22 0
  loc_B9BDE5: PopAd
  loc_B9BDE7: FLdPr Me
  loc_B9BDEA: VCallAd Control_ID_CodiPartMsk
  loc_B9BDED: FStAdFunc var_DC
  loc_B9BDF0: FLdPr var_DC
  loc_B9BDF3: LateIdLdVar var_EC DispID_22 0
  loc_B9BDFA: PopAd
  loc_B9BDFC: LitVarStr var_BC, vbNullString
  loc_B9BE01: FStVarCopyObj var_110
  loc_B9BE04: FLdRfVar var_110
  loc_B9BE07: LitStr " AND imputacion.CodiPart LIKE '"
  loc_B9BE0A: FLdRfVar var_EC
  loc_B9BE0D: CStrVarTmp
  loc_B9BE0E: FStStrNoPop var_F0
  loc_B9BE11: ConcatStr
  loc_B9BE12: FStStrNoPop var_124
  loc_B9BE15: LitStr Chr(37) & "'"
  loc_B9BE18: ConcatStr
  loc_B9BE19: CVarStr var_100
  loc_B9BE1C: FLdRfVar var_D4
  loc_B9BE1F: CStrVarTmp
  loc_B9BE20: FStStrNoPop var_D8
  loc_B9BE23: LitStr vbNullString
  loc_B9BE26: NeStr
  loc_B9BE28: CVarBoolI2 var_AC
  loc_B9BE2C: FLdRfVar var_120
  loc_B9BE2F: ImpAdCallFPR4  = IIf(, , )
  loc_B9BE34: FLdRfVar var_120
  loc_B9BE37: CStrVarTmp
  loc_B9BE38: FStStr var_8C
  loc_B9BE3B: FFreeStr var_D8 = "": var_F0 = ""
  loc_B9BE44: FFreeAd var_C0 = ""
  loc_B9BE4B: FFreeVar var_D4 = "": var_EC = "": var_AC = "": var_100 = "": var_110 = ""
  loc_B9BE5A: FLdPr Me
  loc_B9BE5D: VCallAd Control_ID_CodiOrgaMsk
  loc_B9BE60: FStAdFunc var_C0
  loc_B9BE63: FLdPr var_C0
  loc_B9BE66: LateIdLdVar var_D4 DispID_22 0
  loc_B9BE6D: PopAd
  loc_B9BE6F: FLdPr Me
  loc_B9BE72: VCallAd Control_ID_CodiOrgaMsk
  loc_B9BE75: FStAdFunc var_DC
  loc_B9BE78: FLdPr var_DC
  loc_B9BE7B: LateIdLdVar var_EC DispID_22 0
  loc_B9BE82: PopAd
  loc_B9BE84: LitVarStr var_BC, vbNullString
  loc_B9BE89: FStVarCopyObj var_110
  loc_B9BE8C: FLdRfVar var_110
  loc_B9BE8F: LitStr " AND imputacion.CodiOrga LIKE '"
  loc_B9BE92: FLdRfVar var_EC
  loc_B9BE95: CStrVarTmp
  loc_B9BE96: FStStrNoPop var_F0
  loc_B9BE99: ConcatStr
  loc_B9BE9A: FStStrNoPop var_124
  loc_B9BE9D: LitStr Chr(37) & "'"
  loc_B9BEA0: ConcatStr
  loc_B9BEA1: CVarStr var_100
  loc_B9BEA4: FLdRfVar var_D4
  loc_B9BEA7: CStrVarTmp
  loc_B9BEA8: FStStrNoPop var_D8
  loc_B9BEAB: LitStr vbNullString
  loc_B9BEAE: NeStr
  loc_B9BEB0: CVarBoolI2 var_AC
  loc_B9BEB4: FLdRfVar var_120
  loc_B9BEB7: ImpAdCallFPR4  = IIf(, , )
  loc_B9BEBC: FLdRfVar var_120
  loc_B9BEBF: CStrVarTmp
  loc_B9BEC0: FStStr var_90
  loc_B9BEC3: FFreeStr var_D8 = "": var_F0 = ""
  loc_B9BECC: FFreeAd var_C0 = ""
  loc_B9BED3: FFreeVar var_D4 = "": var_EC = "": var_AC = "": var_100 = "": var_110 = ""
  loc_B9BEE2: FLdPr Me
  loc_B9BEE5: VCallAd Control_ID_CodiUngaMsk
  loc_B9BEE8: FStAdFunc var_C0
  loc_B9BEEB: FLdPr var_C0
  loc_B9BEEE: LateIdLdVar var_D4 DispID_22 0
  loc_B9BEF5: PopAd
  loc_B9BEF7: FLdPr Me
  loc_B9BEFA: VCallAd Control_ID_CodiUngaMsk
  loc_B9BEFD: FStAdFunc var_DC
  loc_B9BF00: FLdPr var_DC
  loc_B9BF03: LateIdLdVar var_EC DispID_22 0
  loc_B9BF0A: PopAd
  loc_B9BF0C: LitVarStr var_BC, vbNullString
  loc_B9BF11: FStVarCopyObj var_110
  loc_B9BF14: FLdRfVar var_110
  loc_B9BF17: LitStr " AND imputacion.CodiUnga = '"
  loc_B9BF1A: FLdRfVar var_EC
  loc_B9BF1D: CStrVarTmp
  loc_B9BF1E: FStStrNoPop var_F0
  loc_B9BF21: ConcatStr
  loc_B9BF22: FStStrNoPop var_124
  loc_B9BF25: LitStr "'"
  loc_B9BF28: ConcatStr
  loc_B9BF29: CVarStr var_100
  loc_B9BF2C: FLdRfVar var_D4
  loc_B9BF2F: CStrVarTmp
  loc_B9BF30: FStStrNoPop var_D8
  loc_B9BF33: LitStr vbNullString
  loc_B9BF36: NeStr
  loc_B9BF38: CVarBoolI2 var_AC
  loc_B9BF3C: FLdRfVar var_120
  loc_B9BF3F: ImpAdCallFPR4  = IIf(, , )
  loc_B9BF44: FLdRfVar var_120
  loc_B9BF47: CStrVarTmp
  loc_B9BF48: FStStr var_94
  loc_B9BF4B: FFreeStr var_D8 = "": var_F0 = ""
  loc_B9BF54: FFreeAd var_C0 = ""
  loc_B9BF5B: FFreeVar var_D4 = "": var_EC = "": var_AC = "": var_100 = "": var_110 = ""
  loc_B9BF6A: FLdPr Me
  loc_B9BF6D: VCallAd Control_ID_CodiFifuMsk
  loc_B9BF70: FStAdFunc var_C0
  loc_B9BF73: FLdPr var_C0
  loc_B9BF76: LateIdLdVar var_D4 DispID_22 0
  loc_B9BF7D: PopAd
  loc_B9BF7F: FLdPr Me
  loc_B9BF82: VCallAd Control_ID_CodiFifuMsk
  loc_B9BF85: FStAdFunc var_DC
  loc_B9BF88: FLdPr var_DC
  loc_B9BF8B: LateIdLdVar var_EC DispID_22 0
  loc_B9BF92: PopAd
  loc_B9BF94: LitVarStr var_BC, vbNullString
  loc_B9BF99: FStVarCopyObj var_110
  loc_B9BF9C: FLdRfVar var_110
  loc_B9BF9F: LitStr " AND imputacion.CodiFifu LIKE '"
  loc_B9BFA2: FLdRfVar var_EC
  loc_B9BFA5: CStrVarTmp
  loc_B9BFA6: FStStrNoPop var_F0
  loc_B9BFA9: ConcatStr
  loc_B9BFAA: FStStrNoPop var_124
  loc_B9BFAD: LitStr Chr(37) & "'"
  loc_B9BFB0: ConcatStr
  loc_B9BFB1: CVarStr var_100
  loc_B9BFB4: FLdRfVar var_D4
  loc_B9BFB7: CStrVarTmp
  loc_B9BFB8: FStStrNoPop var_D8
  loc_B9BFBB: LitStr vbNullString
  loc_B9BFBE: NeStr
  loc_B9BFC0: CVarBoolI2 var_AC
  loc_B9BFC4: FLdRfVar var_120
  loc_B9BFC7: ImpAdCallFPR4  = IIf(, , )
  loc_B9BFCC: FLdRfVar var_120
  loc_B9BFCF: CStrVarTmp
  loc_B9BFD0: FStStr var_98
  loc_B9BFD3: FFreeStr var_D8 = "": var_F0 = ""
  loc_B9BFDC: FFreeAd var_C0 = ""
  loc_B9BFE3: FFreeVar var_D4 = "": var_EC = "": var_AC = "": var_100 = "": var_110 = ""
  loc_B9BFF2: FLdPr Me
  loc_B9BFF5: VCallAd Control_ID_mskDesde
  loc_B9BFF8: FStAdFunc var_DC
  loc_B9BFFB: FLdPr var_DC
  loc_B9BFFE: LateIdLdVar var_D4 DispID_15 0
  loc_B9C005: PopAd
  loc_B9C007: FLdPr Me
  loc_B9C00A: VCallAd Control_ID_mskHasta
  loc_B9C00D: FStAdFunc var_15C
  loc_B9C010: FLdPr var_15C
  loc_B9C013: LateIdLdVar var_16C DispID_15 0
  loc_B9C01A: PopAd
  loc_B9C01C: LitStr "SELECT imputacion.*, DetaInsu, DetaPart, DetaOrga, DetaFifu"
  loc_B9C01F: LitStr " FROM imputacion"
  loc_B9C022: ConcatStr
  loc_B9C023: FStStrNoPop var_D8
  loc_B9C026: LitStr " INNER JOIN infogov.insumo ON insumo.CodiInsu = imputacion.CodiInsu"
  loc_B9C029: ConcatStr
  loc_B9C02A: FStStrNoPop var_F0
  loc_B9C02D: LitStr " INNER JOIN partida ON partida.PeriInfo = imputacion.PeriInfo AND partida.CodiPart = imputacion.CodiPart"
  loc_B9C030: ConcatStr
  loc_B9C031: FStStrNoPop var_124
  loc_B9C034: LitStr " INNER JOIN infogov.organigrama ON organigrama.PeriInfo = imputacion.PeriInfo AND organigrama.CodiOrga = imputacion.CodiOrga"
  loc_B9C037: ConcatStr
  loc_B9C038: FStStrNoPop var_128
  loc_B9C03B: LitStr " INNER JOIN finalidad ON finalidad.PeriInfo = imputacion.PeriInfo AND finalidad.CodiFifu = imputacion.CodiFifu"
  loc_B9C03E: ConcatStr
  loc_B9C03F: FStStrNoPop var_12C
  loc_B9C042: LitStr " WHERE imputacion.PeriInfo = "
  loc_B9C045: ConcatStr
  loc_B9C046: FStStrNoPop var_134
  loc_B9C049: FLdRfVar var_130
  loc_B9C04C: FLdPr Me
  loc_B9C04F: VCallAd Control_ID_cboPeriodo
  loc_B9C052: FStAdFunc var_C0
  loc_B9C055: FLdPr var_C0
  loc_B9C058:  = Me.Text
  loc_B9C05D: ILdRf var_130
  loc_B9C060: ConcatStr
  loc_B9C061: FStStrNoPop var_138
  loc_B9C064: LitStr " AND FechImpu BETWEEN '"
  loc_B9C067: ConcatStr
  loc_B9C068: CVarStr var_120
  loc_B9C06B: LitI4 1
  loc_B9C070: LitI4 1
  loc_B9C075: LitVarStr var_AC, "yyyy-mm-dd"
  loc_B9C07A: FStVarCopyObj var_100
  loc_B9C07D: FLdRfVar var_100
  loc_B9C080: FLdRfVar var_D4
  loc_B9C083: CStrVarTmp
  loc_B9C084: CVarStr var_EC
  loc_B9C087: FLdRfVar var_110
  loc_B9C08A: ImpAdCallFPR4  = Format(, )
  loc_B9C08F: FLdRfVar var_110
  loc_B9C092: ConcatVar var_148
  loc_B9C096: LitVarStr var_BC, "' AND '"
  loc_B9C09B: ConcatVar var_158
  loc_B9C09F: LitI4 1
  loc_B9C0A4: LitI4 1
  loc_B9C0A9: LitVarStr var_18C, "yyyy-mm-dd"
  loc_B9C0AE: FStVarCopyObj var_19C
  loc_B9C0B1: FLdRfVar var_19C
  loc_B9C0B4: FLdRfVar var_16C
  loc_B9C0B7: CStrVarTmp
  loc_B9C0B8: CVarStr var_17C
  loc_B9C0BB: FLdRfVar var_1AC
  loc_B9C0BE: ImpAdCallFPR4  = Format(, )
  loc_B9C0C3: FLdRfVar var_1AC
  loc_B9C0C6: ConcatVar var_1BC
  loc_B9C0CA: LitVarStr var_1CC, "'"
  loc_B9C0CF: ConcatVar var_1DC
  loc_B9C0D3: ILdRf var_88
  loc_B9C0D6: CVarStr var_1EC
  loc_B9C0D9: ConcatVar var_1FC
  loc_B9C0DD: ILdRf var_8C
  loc_B9C0E0: CVarStr var_20C
  loc_B9C0E3: ConcatVar var_21C
  loc_B9C0E7: ILdRf var_90
  loc_B9C0EA: CVarStr var_22C
  loc_B9C0ED: ConcatVar var_23C
  loc_B9C0F1: ILdRf var_94
  loc_B9C0F4: CVarStr var_24C
  loc_B9C0F7: ConcatVar var_25C
  loc_B9C0FB: ILdRf var_98
  loc_B9C0FE: CVarStr var_26C
  loc_B9C101: ConcatVar var_27C
  loc_B9C105: LitVarStr var_28C, " ORDER BY CodiInsu, CodiPart, CodiOrga, CodiFifu"
  loc_B9C10A: ConcatVar var_29C
  loc_B9C10E: CStrVarVal var_2A0
  loc_B9C112: FLdPr Me
  loc_B9C115: MemLdRfVar from_stack_1.global_76
  loc_B9C118: NewIfNullPr clsimputacion
  loc_B9C11B: Call clsimputacion.RedefineRS(from_stack_1v)
  loc_B9C120: FFreeStr var_D8 = "": var_F0 = "": var_124 = "": var_128 = "": var_12C = "": var_134 = "": var_130 = "": var_138 = ""
  loc_B9C135: FFreeAd var_C0 = "": var_DC = ""
  loc_B9C13E: FFreeVar var_D4 = "": var_EC = "": var_100 = "": var_120 = "": var_110 = "": var_148 = "": var_16C = "": var_17C = "": var_19C = "": var_158 = "": var_1AC = "": var_1BC = "": var_1DC = "": var_1FC = "": var_21C = "": var_23C = "": var_25C = "": var_27C = ""
  loc_B9C167: FLdRfVar var_2A4
  loc_B9C16A: FLdPr Me
  loc_B9C16D: MemLdRfVar from_stack_1.global_76
  loc_B9C170: NewIfNullPr clsimputacion
  loc_B9C173: from_stack_1 = clsimputacion.RecordCount
  loc_B9C178: ILdRf var_2A4
  loc_B9C17B: LitI4 0
  loc_B9C180: EqI4
  loc_B9C181: BranchF loc_B9C194
  loc_B9C184: LitI4 0
  loc_B9C189: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_B9C18C: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B9C191: Branch loc_B9CACC
  loc_B9C194: LitI4 0
  loc_B9C199: LitI4 1
  loc_B9C19E: FLdPr Me
  loc_B9C1A1: MemLdRfVar from_stack_1.global_100
  loc_B9C1A4: Redim
  loc_B9C1AE: LitI4 0
  loc_B9C1B3: LitI4 5
  loc_B9C1B8: FLdPr Me
  loc_B9C1BB: MemLdRfVar from_stack_1.global_120
  loc_B9C1BE: Redim
  loc_B9C1C8: LitI2_Byte 0
  loc_B9C1CA: FLdPr Me
  loc_B9C1CD: MemStI2 global_104
  loc_B9C1D0: LitI2_Byte 0
  loc_B9C1D2: FLdPr Me
  loc_B9C1D5: MemStI2 global_106
  loc_B9C1D8: LitI2_Byte 0
  loc_B9C1DA: FLdPr Me
  loc_B9C1DD: MemStI2 global_108
  loc_B9C1E0: LitI2_Byte 0
  loc_B9C1E2: FLdPr Me
  loc_B9C1E5: MemStI2 global_110
  loc_B9C1E8: FLdPr Me
  loc_B9C1EB: MemLdRfVar from_stack_1.global_76
  loc_B9C1EE: NewIfNullAd
  loc_B9C1F1: FStAd var_2A8 
  loc_B9C1F5: FLdPr var_2A8
  loc_B9C1F8: Call clsimputacion.MoveFirst()
  loc_B9C1FD: LitI4 0
  loc_B9C202: Call Proc_186_42_BA7878()
  loc_B9C207: Call Proc_186_43_B96134()
  loc_B9C20C: FLdRfVar var_2A4
  loc_B9C20F: FLdPr var_2A8
  loc_B9C212: from_stack_1 = clsimputacion.RecordCount
  loc_B9C217: ILdRf var_2A4
  loc_B9C21A: LitI4 1
  loc_B9C21F: GtI4
  loc_B9C220: BranchF loc_B9C487
  loc_B9C223: LitI4 2
  loc_B9C228: FLdRfVar var_9C
  loc_B9C22B: FLdRfVar var_2A4
  loc_B9C22E: FLdPr var_2A8
  loc_B9C231: from_stack_1 = clsimputacion.RecordCount
  loc_B9C236: ILdRf var_2A4
  loc_B9C239: ForI4 var_2B0
  loc_B9C23F: FLdPr var_2A8
  loc_B9C242: Call clsimputacion.MoveSiguiente()
  loc_B9C247: FLdRfVar var_D4
  loc_B9C24A: FLdRfVar var_15C
  loc_B9C24D: LitVarStr var_AC, "CodiInsu"
  loc_B9C252: PopAdLdVar
  loc_B9C253: FLdRfVar var_DC
  loc_B9C256: FLdRfVar var_C0
  loc_B9C259: FLdPr var_2A8
  loc_B9C25C: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B9C261: FLdPr var_C0
  loc_B9C264:  = Me.Fields
  loc_B9C269: FLdPr var_DC
  loc_B9C26C: from_stack_2 = Me.Item(from_stack_1)
  loc_B9C271: FLdPr var_15C
  loc_B9C274:  = Me.Value
  loc_B9C279: FLdRfVar var_D4
  loc_B9C27C: FnCStrVar
  loc_B9C27E: FStStrNoPop var_124
  loc_B9C281: FLdPr Me
  loc_B9C284: MemLdI2 global_104
  loc_B9C287: CI4UI1
  loc_B9C288: FLdPr Me
  loc_B9C28B: MemLdStr global_100
  loc_B9C28E: Ary1LdPr
  loc_B9C28F: MemLdRfVar from_stack_1.global_0
  loc_B9C292: LdFixedStr
  loc_B9C295: FStStrNoPop var_D8
  loc_B9C298: ImpAdCallI2 Trim$()
  loc_B9C29D: FStStr var_F0
  loc_B9C2A0: ILdRf var_D8
  loc_B9C2A3: FLdPr Me
  loc_B9C2A6: MemLdI2 global_104
  loc_B9C2A9: CI4UI1
  loc_B9C2AA: FLdPr Me
  loc_B9C2AD: MemLdStr global_100
  loc_B9C2B0: Ary1LdPr
  loc_B9C2B1: MemLdRfVar from_stack_1.global_0
  loc_B9C2B4: StFixedStr
  loc_B9C2B7: ILdRf var_F0
  loc_B9C2BA: EqStr
  loc_B9C2BC: FFreeStr var_D8 = "": var_124 = ""
  loc_B9C2C5: FFreeAd var_C0 = "": var_DC = ""
  loc_B9C2CE: FFree1Var var_D4 = ""
  loc_B9C2D1: BranchF loc_B9C470
  loc_B9C2D4: FLdRfVar var_D4
  loc_B9C2D7: FLdRfVar var_15C
  loc_B9C2DA: LitVarStr var_AC, "CodiPart"
  loc_B9C2DF: PopAdLdVar
  loc_B9C2E0: FLdRfVar var_DC
  loc_B9C2E3: FLdRfVar var_C0
  loc_B9C2E6: FLdPr var_2A8
  loc_B9C2E9: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B9C2EE: FLdPr var_C0
  loc_B9C2F1:  = Me.Fields
  loc_B9C2F6: FLdPr var_DC
  loc_B9C2F9: from_stack_2 = Me.Item(from_stack_1)
  loc_B9C2FE: FLdPr var_15C
  loc_B9C301:  = Me.Value
  loc_B9C306: FLdRfVar var_D4
  loc_B9C309: FLdPr Me
  loc_B9C30C: MemLdI2 global_106
  loc_B9C30F: CI4UI1
  loc_B9C310: FLdPr Me
  loc_B9C313: MemLdI2 global_104
  loc_B9C316: CI4UI1
  loc_B9C317: FLdPr Me
  loc_B9C31A: MemLdStr global_100
  loc_B9C31D: Ary1LdPr
  loc_B9C31E: MemLdStr global_24
  loc_B9C321: Ary1LdPr
  loc_B9C322: MemLdRfVar from_stack_1.global_0
  loc_B9C325: LdFixedStr
  loc_B9C328: CVarStr var_EC
  loc_B9C32B: HardType
  loc_B9C32C: EqVarBool
  loc_B9C32E: FFreeAd var_C0 = "": var_DC = ""
  loc_B9C337: FFreeVar var_D4 = ""
  loc_B9C33E: BranchF loc_B9C463
  loc_B9C341: FLdRfVar var_D4
  loc_B9C344: FLdRfVar var_15C
  loc_B9C347: LitVarStr var_AC, "CodiOrga"
  loc_B9C34C: PopAdLdVar
  loc_B9C34D: FLdRfVar var_DC
  loc_B9C350: FLdRfVar var_C0
  loc_B9C353: FLdPr var_2A8
  loc_B9C356: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B9C35B: FLdPr var_C0
  loc_B9C35E:  = Me.Fields
  loc_B9C363: FLdPr var_DC
  loc_B9C366: from_stack_2 = Me.Item(from_stack_1)
  loc_B9C36B: FLdPr var_15C
  loc_B9C36E:  = Me.Value
  loc_B9C373: FLdRfVar var_D4
  loc_B9C376: FLdPr Me
  loc_B9C379: MemLdI2 global_108
  loc_B9C37C: CI4UI1
  loc_B9C37D: FLdPr Me
  loc_B9C380: MemLdI2 global_106
  loc_B9C383: CI4UI1
  loc_B9C384: FLdPr Me
  loc_B9C387: MemLdI2 global_104
  loc_B9C38A: CI4UI1
  loc_B9C38B: FLdPr Me
  loc_B9C38E: MemLdStr global_100
  loc_B9C391: Ary1LdPr
  loc_B9C392: MemLdStr global_24
  loc_B9C395: Ary1LdPr
  loc_B9C396: MemLdStr global_24
  loc_B9C399: Ary1LdPr
  loc_B9C39A: MemLdRfVar from_stack_1.global_0
  loc_B9C39D: LdFixedStr
  loc_B9C3A0: CVarStr var_EC
  loc_B9C3A3: HardType
  loc_B9C3A4: EqVarBool
  loc_B9C3A6: FFreeAd var_C0 = "": var_DC = ""
  loc_B9C3AF: FFreeVar var_D4 = ""
  loc_B9C3B6: BranchF loc_B9C456
  loc_B9C3B9: FLdRfVar var_D4
  loc_B9C3BC: FLdRfVar var_15C
  loc_B9C3BF: LitVarStr var_AC, "CodiFifu"
  loc_B9C3C4: PopAdLdVar
  loc_B9C3C5: FLdRfVar var_DC
  loc_B9C3C8: FLdRfVar var_C0
  loc_B9C3CB: FLdPr var_2A8
  loc_B9C3CE: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B9C3D3: FLdPr var_C0
  loc_B9C3D6:  = Me.Fields
  loc_B9C3DB: FLdPr var_DC
  loc_B9C3DE: from_stack_2 = Me.Item(from_stack_1)
  loc_B9C3E3: FLdPr var_15C
  loc_B9C3E6:  = Me.Value
  loc_B9C3EB: FLdRfVar var_D4
  loc_B9C3EE: FLdPr Me
  loc_B9C3F1: MemLdI2 global_110
  loc_B9C3F4: CI4UI1
  loc_B9C3F5: FLdPr Me
  loc_B9C3F8: MemLdI2 global_108
  loc_B9C3FB: CI4UI1
  loc_B9C3FC: FLdPr Me
  loc_B9C3FF: MemLdI2 global_106
  loc_B9C402: CI4UI1
  loc_B9C403: FLdPr Me
  loc_B9C406: MemLdI2 global_104
  loc_B9C409: CI4UI1
  loc_B9C40A: FLdPr Me
  loc_B9C40D: MemLdStr global_100
  loc_B9C410: Ary1LdPr
  loc_B9C411: MemLdStr global_24
  loc_B9C414: Ary1LdPr
  loc_B9C415: MemLdStr global_24
  loc_B9C418: Ary1LdPr
  loc_B9C419: MemLdStr global_20
  loc_B9C41C: Ary1LdPr
  loc_B9C41D: MemLdRfVar from_stack_1.global_0
  loc_B9C420: LdFixedStr
  loc_B9C423: CVarStr var_EC
  loc_B9C426: HardType
  loc_B9C427: EqVarBool
  loc_B9C429: FFreeAd var_C0 = "": var_DC = ""
  loc_B9C432: FFreeVar var_D4 = ""
  loc_B9C439: BranchF loc_B9C449
  loc_B9C43C: LitI4 4
  loc_B9C441: Call Proc_186_42_BA7878()
  loc_B9C446: Branch loc_B9C453
  loc_B9C449: LitI4 3
  loc_B9C44E: Call Proc_186_42_BA7878()
  loc_B9C453: Branch loc_B9C460
  loc_B9C456: LitI4 2
  loc_B9C45B: Call Proc_186_42_BA7878()
  loc_B9C460: Branch loc_B9C46D
  loc_B9C463: LitI4 1
  loc_B9C468: Call Proc_186_42_BA7878()
  loc_B9C46D: Branch loc_B9C47A
  loc_B9C470: LitI4 0
  loc_B9C475: Call Proc_186_42_BA7878()
  loc_B9C47A: Call Proc_186_43_B96134()
  loc_B9C47F: FLdRfVar var_9C
  loc_B9C482: NextI4 var_2B0, loc_B9C23F
  loc_B9C487: LitNothing
  loc_B9C489: FStAd var_2A8 
  loc_B9C48D: LitI2_Byte 1
  loc_B9C48F: FLdPr Me
  loc_B9C492: MemLdRfVar from_stack_1.global_104
  loc_B9C495: FLdPr Me
  loc_B9C498: MemLdStr global_100
  loc_B9C49B: LitI2_Byte 1
  loc_B9C49D: FnUBound
  loc_B9C49F: CI2I4
  loc_B9C4A0: ForI2 var_2B4
  loc_B9C4A6: LitI2_Byte 1
  loc_B9C4A8: FLdPr Me
  loc_B9C4AB: MemLdRfVar from_stack_1.global_106
  loc_B9C4AE: FLdPr Me
  loc_B9C4B1: MemLdI2 global_104
  loc_B9C4B4: CI4UI1
  loc_B9C4B5: FLdPr Me
  loc_B9C4B8: MemLdStr global_100
  loc_B9C4BB: Ary1LdPr
  loc_B9C4BC: MemLdStr global_24
  loc_B9C4BF: LitI2_Byte 1
  loc_B9C4C1: FnUBound
  loc_B9C4C3: CI2I4
  loc_B9C4C4: ForI2 var_2B8
  loc_B9C4CA: LitI2_Byte 1
  loc_B9C4CC: FLdPr Me
  loc_B9C4CF: MemLdRfVar from_stack_1.global_108
  loc_B9C4D2: FLdPr Me
  loc_B9C4D5: MemLdI2 global_106
  loc_B9C4D8: CI4UI1
  loc_B9C4D9: FLdPr Me
  loc_B9C4DC: MemLdI2 global_104
  loc_B9C4DF: CI4UI1
  loc_B9C4E0: FLdPr Me
  loc_B9C4E3: MemLdStr global_100
  loc_B9C4E6: Ary1LdPr
  loc_B9C4E7: MemLdStr global_24
  loc_B9C4EA: Ary1LdPr
  loc_B9C4EB: MemLdStr global_24
  loc_B9C4EE: LitI2_Byte 1
  loc_B9C4F0: FnUBound
  loc_B9C4F2: CI2I4
  loc_B9C4F3: ForI2 var_2BC
  loc_B9C4F9: LitI2_Byte 1
  loc_B9C4FB: FLdPr Me
  loc_B9C4FE: MemLdRfVar from_stack_1.global_110
  loc_B9C501: FLdPr Me
  loc_B9C504: MemLdI2 global_108
  loc_B9C507: CI4UI1
  loc_B9C508: FLdPr Me
  loc_B9C50B: MemLdI2 global_106
  loc_B9C50E: CI4UI1
  loc_B9C50F: FLdPr Me
  loc_B9C512: MemLdI2 global_104
  loc_B9C515: CI4UI1
  loc_B9C516: FLdPr Me
  loc_B9C519: MemLdStr global_100
  loc_B9C51C: Ary1LdPr
  loc_B9C51D: MemLdStr global_24
  loc_B9C520: Ary1LdPr
  loc_B9C521: MemLdStr global_24
  loc_B9C524: Ary1LdPr
  loc_B9C525: MemLdStr global_20
  loc_B9C528: LitI2_Byte 1
  loc_B9C52A: FnUBound
  loc_B9C52C: CI2I4
  loc_B9C52D: ForI2 var_2C0
  loc_B9C533: LitI2_Byte 1
  loc_B9C535: FLdPr Me
  loc_B9C538: MemLdRfVar from_stack_1.global_114
  loc_B9C53B: LitI2_Byte 5
  loc_B9C53D: ForI2 var_2C4
  loc_B9C543: LitI2_Byte 0
  loc_B9C545: FLdPr Me
  loc_B9C548: MemLdI2 global_114
  loc_B9C54B: CI4UI1
  loc_B9C54C: FLdPr Me
  loc_B9C54F: MemLdI2 global_108
  loc_B9C552: CI4UI1
  loc_B9C553: FLdPr Me
  loc_B9C556: MemLdI2 global_106
  loc_B9C559: CI4UI1
  loc_B9C55A: FLdPr Me
  loc_B9C55D: MemLdI2 global_104
  loc_B9C560: CI4UI1
  loc_B9C561: FLdPr Me
  loc_B9C564: MemLdStr global_100
  loc_B9C567: AryLock
  loc_B9C56A: Ary1LdPr
  loc_B9C56B: MemLdStr global_24
  loc_B9C56E: AryLock
  loc_B9C571: Ary1LdPr
  loc_B9C572: MemLdStr global_24
  loc_B9C575: AryLock
  loc_B9C578: Ary1LdPr
  loc_B9C579: MemLdRfVar from_stack_1.global_24
  loc_B9C57C: AryInRecLdRf
  loc_B9C582: CVarRef
  loc_B9C587: LitI2_Byte &HFF
  loc_B9C589: FLdPr Me
  loc_B9C58C: MemLdI2 global_114
  loc_B9C58F: CI4UI1
  loc_B9C590: FLdPr Me
  loc_B9C593: MemLdI2 global_110
  loc_B9C596: CI4UI1
  loc_B9C597: FLdPr Me
  loc_B9C59A: MemLdI2 global_108
  loc_B9C59D: CI4UI1
  loc_B9C59E: FLdPr Me
  loc_B9C5A1: MemLdI2 global_106
  loc_B9C5A4: CI4UI1
  loc_B9C5A5: FLdPr Me
  loc_B9C5A8: MemLdI2 global_104
  loc_B9C5AB: CI4UI1
  loc_B9C5AC: FLdPr Me
  loc_B9C5AF: MemLdStr global_100
  loc_B9C5B2: Ary1LdPr
  loc_B9C5B3: MemLdStr global_24
  loc_B9C5B6: Ary1LdPr
  loc_B9C5B7: MemLdStr global_24
  loc_B9C5BA: Ary1LdPr
  loc_B9C5BB: MemLdStr global_20
  loc_B9C5BE: Ary1LdPr
  loc_B9C5BF: MemLdRfVar from_stack_1.global_24
  loc_B9C5C2: AryInRecLdPr
  loc_B9C5C8: MemLdStr global_0
  loc_B9C5CB: CVarStr var_AC
  loc_B9C5CE: PopAdLdVar
  loc_B9C5CF: FLdPr Me
  loc_B9C5D2: MemLdRfVar from_stack_1.global_116
  loc_B9C5D5: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B9C5DA: AryUnlock
  loc_B9C5DD: AryUnlock
  loc_B9C5E0: AryUnlock
  loc_B9C5E3: FLdPr Me
  loc_B9C5E6: MemLdRfVar from_stack_1.global_114
  loc_B9C5E9: NextI2 var_2C4, loc_B9C543
  loc_B9C5EE: FLdPr Me
  loc_B9C5F1: MemLdRfVar from_stack_1.global_110
  loc_B9C5F4: NextI2 var_2C0, loc_B9C533
  loc_B9C5F9: LitI2_Byte 1
  loc_B9C5FB: FLdPr Me
  loc_B9C5FE: MemLdRfVar from_stack_1.global_114
  loc_B9C601: LitI2_Byte 5
  loc_B9C603: ForI2 var_2D4
  loc_B9C609: LitI2_Byte 0
  loc_B9C60B: FLdPr Me
  loc_B9C60E: MemLdI2 global_114
  loc_B9C611: CI4UI1
  loc_B9C612: FLdPr Me
  loc_B9C615: MemLdI2 global_106
  loc_B9C618: CI4UI1
  loc_B9C619: FLdPr Me
  loc_B9C61C: MemLdI2 global_104
  loc_B9C61F: CI4UI1
  loc_B9C620: FLdPr Me
  loc_B9C623: MemLdStr global_100
  loc_B9C626: AryLock
  loc_B9C629: Ary1LdPr
  loc_B9C62A: MemLdStr global_24
  loc_B9C62D: AryLock
  loc_B9C630: Ary1LdPr
  loc_B9C631: MemLdRfVar from_stack_1.global_28
  loc_B9C634: AryInRecLdRf
  loc_B9C63A: CVarRef
  loc_B9C63F: LitI2_Byte &HFF
  loc_B9C641: FLdPr Me
  loc_B9C644: MemLdI2 global_114
  loc_B9C647: CI4UI1
  loc_B9C648: FLdPr Me
  loc_B9C64B: MemLdI2 global_108
  loc_B9C64E: CI4UI1
  loc_B9C64F: FLdPr Me
  loc_B9C652: MemLdI2 global_106
  loc_B9C655: CI4UI1
  loc_B9C656: FLdPr Me
  loc_B9C659: MemLdI2 global_104
  loc_B9C65C: CI4UI1
  loc_B9C65D: FLdPr Me
  loc_B9C660: MemLdStr global_100
  loc_B9C663: Ary1LdPr
  loc_B9C664: MemLdStr global_24
  loc_B9C667: Ary1LdPr
  loc_B9C668: MemLdStr global_24
  loc_B9C66B: Ary1LdPr
  loc_B9C66C: MemLdRfVar from_stack_1.global_24
  loc_B9C66F: AryInRecLdPr
  loc_B9C675: MemLdStr global_0
  loc_B9C678: CVarStr var_AC
  loc_B9C67B: PopAdLdVar
  loc_B9C67C: FLdPr Me
  loc_B9C67F: MemLdRfVar from_stack_1.global_116
  loc_B9C682: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B9C687: AryUnlock
  loc_B9C68A: AryUnlock
  loc_B9C68D: FLdPr Me
  loc_B9C690: MemLdRfVar from_stack_1.global_114
  loc_B9C693: NextI2 var_2D4, loc_B9C609
  loc_B9C698: FLdPr Me
  loc_B9C69B: MemLdRfVar from_stack_1.global_108
  loc_B9C69E: NextI2 var_2BC, loc_B9C4F9
  loc_B9C6A3: LitI2_Byte 1
  loc_B9C6A5: FLdPr Me
  loc_B9C6A8: MemLdRfVar from_stack_1.global_114
  loc_B9C6AB: LitI2_Byte 5
  loc_B9C6AD: ForI2 var_2D8
  loc_B9C6B3: LitI2_Byte 0
  loc_B9C6B5: FLdPr Me
  loc_B9C6B8: MemLdI2 global_114
  loc_B9C6BB: CI4UI1
  loc_B9C6BC: FLdPr Me
  loc_B9C6BF: MemLdI2 global_104
  loc_B9C6C2: CI4UI1
  loc_B9C6C3: FLdPr Me
  loc_B9C6C6: MemLdStr global_100
  loc_B9C6C9: AryLock
  loc_B9C6CC: Ary1LdPr
  loc_B9C6CD: MemLdRfVar from_stack_1.global_28
  loc_B9C6D0: AryInRecLdRf
  loc_B9C6D6: CVarRef
  loc_B9C6DB: LitI2_Byte &HFF
  loc_B9C6DD: FLdPr Me
  loc_B9C6E0: MemLdI2 global_114
  loc_B9C6E3: CI4UI1
  loc_B9C6E4: FLdPr Me
  loc_B9C6E7: MemLdI2 global_106
  loc_B9C6EA: CI4UI1
  loc_B9C6EB: FLdPr Me
  loc_B9C6EE: MemLdI2 global_104
  loc_B9C6F1: CI4UI1
  loc_B9C6F2: FLdPr Me
  loc_B9C6F5: MemLdStr global_100
  loc_B9C6F8: Ary1LdPr
  loc_B9C6F9: MemLdStr global_24
  loc_B9C6FC: Ary1LdPr
  loc_B9C6FD: MemLdRfVar from_stack_1.global_28
  loc_B9C700: AryInRecLdPr
  loc_B9C706: MemLdStr global_0
  loc_B9C709: CVarStr var_AC
  loc_B9C70C: PopAdLdVar
  loc_B9C70D: FLdPr Me
  loc_B9C710: MemLdRfVar from_stack_1.global_116
  loc_B9C713: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B9C718: AryUnlock
  loc_B9C71B: FLdPr Me
  loc_B9C71E: MemLdRfVar from_stack_1.global_114
  loc_B9C721: NextI2 var_2D8, loc_B9C6B3
  loc_B9C726: FLdPr Me
  loc_B9C729: MemLdRfVar from_stack_1.global_106
  loc_B9C72C: NextI2 var_2B8, loc_B9C4CA
  loc_B9C731: LitI2_Byte 1
  loc_B9C733: FLdPr Me
  loc_B9C736: MemLdRfVar from_stack_1.global_114
  loc_B9C739: LitI2_Byte 5
  loc_B9C73B: ForI2 var_2DC
  loc_B9C741: LitI2_Byte 0
  loc_B9C743: FLdPr Me
  loc_B9C746: MemLdI2 global_114
  loc_B9C749: CI4UI1
  loc_B9C74A: FLdPr Me
  loc_B9C74D: MemLdStr global_120
  loc_B9C750: AryLock
  loc_B9C753: Ary1LdRf
  loc_B9C754: CVarRef
  loc_B9C759: LitI2_Byte &HFF
  loc_B9C75B: FLdPr Me
  loc_B9C75E: MemLdI2 global_114
  loc_B9C761: CI4UI1
  loc_B9C762: FLdPr Me
  loc_B9C765: MemLdI2 global_104
  loc_B9C768: CI4UI1
  loc_B9C769: FLdPr Me
  loc_B9C76C: MemLdStr global_100
  loc_B9C76F: Ary1LdPr
  loc_B9C770: MemLdRfVar from_stack_1.global_28
  loc_B9C773: AryInRecLdPr
  loc_B9C779: MemLdStr global_0
  loc_B9C77C: CVarStr var_AC
  loc_B9C77F: PopAdLdVar
  loc_B9C780: FLdPr Me
  loc_B9C783: MemLdRfVar from_stack_1.global_116
  loc_B9C786: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B9C78B: AryUnlock
  loc_B9C78E: FLdPr Me
  loc_B9C791: MemLdRfVar from_stack_1.global_114
  loc_B9C794: NextI2 var_2DC, loc_B9C741
  loc_B9C799: FLdPr Me
  loc_B9C79C: MemLdRfVar from_stack_1.global_104
  loc_B9C79F: NextI2 var_2B4, loc_B9C4A6
  loc_B9C7A4: LitI2_Byte 1
  loc_B9C7A6: FLdPr Me
  loc_B9C7A9: MemLdRfVar from_stack_1.global_104
  loc_B9C7AC: FLdPr Me
  loc_B9C7AF: MemLdStr global_100
  loc_B9C7B2: LitI2_Byte 1
  loc_B9C7B4: FnUBound
  loc_B9C7B6: CI2I4
  loc_B9C7B7: ForI2 var_2E0
  loc_B9C7BD: LitI2_Byte 1
  loc_B9C7BF: FLdPr Me
  loc_B9C7C2: MemLdRfVar from_stack_1.global_106
  loc_B9C7C5: FLdPr Me
  loc_B9C7C8: MemLdI2 global_104
  loc_B9C7CB: CI4UI1
  loc_B9C7CC: FLdPr Me
  loc_B9C7CF: MemLdStr global_100
  loc_B9C7D2: Ary1LdPr
  loc_B9C7D3: MemLdStr global_24
  loc_B9C7D6: LitI2_Byte 1
  loc_B9C7D8: FnUBound
  loc_B9C7DA: CI2I4
  loc_B9C7DB: ForI2 var_2E4
  loc_B9C7E1: LitI2_Byte 1
  loc_B9C7E3: FLdPr Me
  loc_B9C7E6: MemLdRfVar from_stack_1.global_108
  loc_B9C7E9: FLdPr Me
  loc_B9C7EC: MemLdI2 global_106
  loc_B9C7EF: CI4UI1
  loc_B9C7F0: FLdPr Me
  loc_B9C7F3: MemLdI2 global_104
  loc_B9C7F6: CI4UI1
  loc_B9C7F7: FLdPr Me
  loc_B9C7FA: MemLdStr global_100
  loc_B9C7FD: Ary1LdPr
  loc_B9C7FE: MemLdStr global_24
  loc_B9C801: Ary1LdPr
  loc_B9C802: MemLdStr global_24
  loc_B9C805: LitI2_Byte 1
  loc_B9C807: FnUBound
  loc_B9C809: CI2I4
  loc_B9C80A: ForI2 var_2E8
  loc_B9C810: LitI2_Byte 1
  loc_B9C812: FLdPr Me
  loc_B9C815: MemLdRfVar from_stack_1.global_110
  loc_B9C818: FLdPr Me
  loc_B9C81B: MemLdI2 global_108
  loc_B9C81E: CI4UI1
  loc_B9C81F: FLdPr Me
  loc_B9C822: MemLdI2 global_106
  loc_B9C825: CI4UI1
  loc_B9C826: FLdPr Me
  loc_B9C829: MemLdI2 global_104
  loc_B9C82C: CI4UI1
  loc_B9C82D: FLdPr Me
  loc_B9C830: MemLdStr global_100
  loc_B9C833: Ary1LdPr
  loc_B9C834: MemLdStr global_24
  loc_B9C837: Ary1LdPr
  loc_B9C838: MemLdStr global_24
  loc_B9C83B: Ary1LdPr
  loc_B9C83C: MemLdStr global_20
  loc_B9C83F: LitI2_Byte 1
  loc_B9C841: FnUBound
  loc_B9C843: CI2I4
  loc_B9C844: ForI2 var_2EC
  loc_B9C84A: LitI4 1
  loc_B9C84F: FLdPr Me
  loc_B9C852: MemLdI2 global_110
  loc_B9C855: CI4UI1
  loc_B9C856: FLdPr Me
  loc_B9C859: MemLdI2 global_108
  loc_B9C85C: CI4UI1
  loc_B9C85D: FLdPr Me
  loc_B9C860: MemLdI2 global_106
  loc_B9C863: CI4UI1
  loc_B9C864: FLdPr Me
  loc_B9C867: MemLdI2 global_104
  loc_B9C86A: CI4UI1
  loc_B9C86B: FLdPr Me
  loc_B9C86E: MemLdStr global_100
  loc_B9C871: Ary1LdPr
  loc_B9C872: MemLdStr global_24
  loc_B9C875: Ary1LdPr
  loc_B9C876: MemLdStr global_24
  loc_B9C879: Ary1LdPr
  loc_B9C87A: MemLdStr global_20
  loc_B9C87D: Ary1LdPr
  loc_B9C87E: MemLdStr global_20
  loc_B9C881: LitI2_Byte 1
  loc_B9C883: FnUBound
  loc_B9C885: LitI4 2
  loc_B9C88A: MulI4
  loc_B9C88B: AddI4
  loc_B9C88C: FLdPr Me
  loc_B9C88F: MemLdI2 global_110
  loc_B9C892: CI4UI1
  loc_B9C893: FLdPr Me
  loc_B9C896: MemLdI2 global_108
  loc_B9C899: CI4UI1
  loc_B9C89A: FLdPr Me
  loc_B9C89D: MemLdI2 global_106
  loc_B9C8A0: CI4UI1
  loc_B9C8A1: FLdPr Me
  loc_B9C8A4: MemLdI2 global_104
  loc_B9C8A7: CI4UI1
  loc_B9C8A8: FLdPr Me
  loc_B9C8AB: MemLdStr global_100
  loc_B9C8AE: Ary1LdPr
  loc_B9C8AF: MemLdStr global_24
  loc_B9C8B2: Ary1LdPr
  loc_B9C8B3: MemLdStr global_24
  loc_B9C8B6: Ary1LdPr
  loc_B9C8B7: MemLdStr global_20
  loc_B9C8BA: Ary1LdPr
  loc_B9C8BB: MemStI4 global_16
  loc_B9C8BE: FLdPr Me
  loc_B9C8C1: MemLdI2 global_108
  loc_B9C8C4: CI4UI1
  loc_B9C8C5: FLdPr Me
  loc_B9C8C8: MemLdI2 global_106
  loc_B9C8CB: CI4UI1
  loc_B9C8CC: FLdPr Me
  loc_B9C8CF: MemLdI2 global_104
  loc_B9C8D2: CI4UI1
  loc_B9C8D3: FLdPr Me
  loc_B9C8D6: MemLdStr global_100
  loc_B9C8D9: Ary1LdPr
  loc_B9C8DA: MemLdStr global_24
  loc_B9C8DD: Ary1LdPr
  loc_B9C8DE: MemLdStr global_24
  loc_B9C8E1: Ary1LdPr
  loc_B9C8E2: MemLdStr global_16
  loc_B9C8E5: FLdPr Me
  loc_B9C8E8: MemLdI2 global_110
  loc_B9C8EB: CI4UI1
  loc_B9C8EC: FLdPr Me
  loc_B9C8EF: MemLdI2 global_108
  loc_B9C8F2: CI4UI1
  loc_B9C8F3: FLdPr Me
  loc_B9C8F6: MemLdI2 global_106
  loc_B9C8F9: CI4UI1
  loc_B9C8FA: FLdPr Me
  loc_B9C8FD: MemLdI2 global_104
  loc_B9C900: CI4UI1
  loc_B9C901: FLdPr Me
  loc_B9C904: MemLdStr global_100
  loc_B9C907: Ary1LdPr
  loc_B9C908: MemLdStr global_24
  loc_B9C90B: Ary1LdPr
  loc_B9C90C: MemLdStr global_24
  loc_B9C90F: Ary1LdPr
  loc_B9C910: MemLdStr global_20
  loc_B9C913: Ary1LdPr
  loc_B9C914: MemLdStr global_16
  loc_B9C917: AddI4
  loc_B9C918: FLdPr Me
  loc_B9C91B: MemLdI2 global_108
  loc_B9C91E: CI4UI1
  loc_B9C91F: FLdPr Me
  loc_B9C922: MemLdI2 global_106
  loc_B9C925: CI4UI1
  loc_B9C926: FLdPr Me
  loc_B9C929: MemLdI2 global_104
  loc_B9C92C: CI4UI1
  loc_B9C92D: FLdPr Me
  loc_B9C930: MemLdStr global_100
  loc_B9C933: Ary1LdPr
  loc_B9C934: MemLdStr global_24
  loc_B9C937: Ary1LdPr
  loc_B9C938: MemLdStr global_24
  loc_B9C93B: Ary1LdPr
  loc_B9C93C: MemStI4 global_16
  loc_B9C93F: FLdPr Me
  loc_B9C942: MemLdRfVar from_stack_1.global_110
  loc_B9C945: NextI2 var_2EC, loc_B9C84A
  loc_B9C94A: FLdPr Me
  loc_B9C94D: MemLdI2 global_108
  loc_B9C950: CI4UI1
  loc_B9C951: FLdPr Me
  loc_B9C954: MemLdI2 global_106
  loc_B9C957: CI4UI1
  loc_B9C958: FLdPr Me
  loc_B9C95B: MemLdI2 global_104
  loc_B9C95E: CI4UI1
  loc_B9C95F: FLdPr Me
  loc_B9C962: MemLdStr global_100
  loc_B9C965: Ary1LdPr
  loc_B9C966: MemLdStr global_24
  loc_B9C969: Ary1LdPr
  loc_B9C96A: MemLdStr global_24
  loc_B9C96D: Ary1LdPr
  loc_B9C96E: MemLdStr global_16
  loc_B9C971: LitI4 1
  loc_B9C976: AddI4
  loc_B9C977: FLdPr Me
  loc_B9C97A: MemLdI2 global_108
  loc_B9C97D: CI4UI1
  loc_B9C97E: FLdPr Me
  loc_B9C981: MemLdI2 global_106
  loc_B9C984: CI4UI1
  loc_B9C985: FLdPr Me
  loc_B9C988: MemLdI2 global_104
  loc_B9C98B: CI4UI1
  loc_B9C98C: FLdPr Me
  loc_B9C98F: MemLdStr global_100
  loc_B9C992: Ary1LdPr
  loc_B9C993: MemLdStr global_24
  loc_B9C996: Ary1LdPr
  loc_B9C997: MemLdStr global_24
  loc_B9C99A: Ary1LdPr
  loc_B9C99B: MemStI4 global_16
  loc_B9C99E: FLdPr Me
  loc_B9C9A1: MemLdI2 global_106
  loc_B9C9A4: CI4UI1
  loc_B9C9A5: FLdPr Me
  loc_B9C9A8: MemLdI2 global_104
  loc_B9C9AB: CI4UI1
  loc_B9C9AC: FLdPr Me
  loc_B9C9AF: MemLdStr global_100
  loc_B9C9B2: Ary1LdPr
  loc_B9C9B3: MemLdStr global_24
  loc_B9C9B6: Ary1LdPr
  loc_B9C9B7: MemLdStr global_20
  loc_B9C9BA: FLdPr Me
  loc_B9C9BD: MemLdI2 global_108
  loc_B9C9C0: CI4UI1
  loc_B9C9C1: FLdPr Me
  loc_B9C9C4: MemLdI2 global_106
  loc_B9C9C7: CI4UI1
  loc_B9C9C8: FLdPr Me
  loc_B9C9CB: MemLdI2 global_104
  loc_B9C9CE: CI4UI1
  loc_B9C9CF: FLdPr Me
  loc_B9C9D2: MemLdStr global_100
  loc_B9C9D5: Ary1LdPr
  loc_B9C9D6: MemLdStr global_24
  loc_B9C9D9: Ary1LdPr
  loc_B9C9DA: MemLdStr global_24
  loc_B9C9DD: Ary1LdPr
  loc_B9C9DE: MemLdStr global_16
  loc_B9C9E1: AddI4
  loc_B9C9E2: FLdPr Me
  loc_B9C9E5: MemLdI2 global_106
  loc_B9C9E8: CI4UI1
  loc_B9C9E9: FLdPr Me
  loc_B9C9EC: MemLdI2 global_104
  loc_B9C9EF: CI4UI1
  loc_B9C9F0: FLdPr Me
  loc_B9C9F3: MemLdStr global_100
  loc_B9C9F6: Ary1LdPr
  loc_B9C9F7: MemLdStr global_24
  loc_B9C9FA: Ary1LdPr
  loc_B9C9FB: MemStI4 global_20
  loc_B9C9FE: FLdPr Me
  loc_B9CA01: MemLdRfVar from_stack_1.global_108
  loc_B9CA04: NextI2 var_2E8, loc_B9C810
  loc_B9CA09: FLdPr Me
  loc_B9CA0C: MemLdI2 global_106
  loc_B9CA0F: CI4UI1
  loc_B9CA10: FLdPr Me
  loc_B9CA13: MemLdI2 global_104
  loc_B9CA16: CI4UI1
  loc_B9CA17: FLdPr Me
  loc_B9CA1A: MemLdStr global_100
  loc_B9CA1D: Ary1LdPr
  loc_B9CA1E: MemLdStr global_24
  loc_B9CA21: Ary1LdPr
  loc_B9CA22: MemLdStr global_20
  loc_B9CA25: LitI4 1
  loc_B9CA2A: AddI4
  loc_B9CA2B: FLdPr Me
  loc_B9CA2E: MemLdI2 global_106
  loc_B9CA31: CI4UI1
  loc_B9CA32: FLdPr Me
  loc_B9CA35: MemLdI2 global_104
  loc_B9CA38: CI4UI1
  loc_B9CA39: FLdPr Me
  loc_B9CA3C: MemLdStr global_100
  loc_B9CA3F: Ary1LdPr
  loc_B9CA40: MemLdStr global_24
  loc_B9CA43: Ary1LdPr
  loc_B9CA44: MemStI4 global_20
  loc_B9CA47: FLdPr Me
  loc_B9CA4A: MemLdI2 global_104
  loc_B9CA4D: CI4UI1
  loc_B9CA4E: FLdPr Me
  loc_B9CA51: MemLdStr global_100
  loc_B9CA54: Ary1LdPr
  loc_B9CA55: MemLdStr global_20
  loc_B9CA58: FLdPr Me
  loc_B9CA5B: MemLdI2 global_106
  loc_B9CA5E: CI4UI1
  loc_B9CA5F: FLdPr Me
  loc_B9CA62: MemLdI2 global_104
  loc_B9CA65: CI4UI1
  loc_B9CA66: FLdPr Me
  loc_B9CA69: MemLdStr global_100
  loc_B9CA6C: Ary1LdPr
  loc_B9CA6D: MemLdStr global_24
  loc_B9CA70: Ary1LdPr
  loc_B9CA71: MemLdStr global_20
  loc_B9CA74: AddI4
  loc_B9CA75: FLdPr Me
  loc_B9CA78: MemLdI2 global_104
  loc_B9CA7B: CI4UI1
  loc_B9CA7C: FLdPr Me
  loc_B9CA7F: MemLdStr global_100
  loc_B9CA82: Ary1LdPr
  loc_B9CA83: MemStI4 global_20
  loc_B9CA86: FLdPr Me
  loc_B9CA89: MemLdRfVar from_stack_1.global_106
  loc_B9CA8C: NextI2 var_2E4, loc_B9C7E1
  loc_B9CA91: FLdPr Me
  loc_B9CA94: MemLdI2 global_104
  loc_B9CA97: CI4UI1
  loc_B9CA98: FLdPr Me
  loc_B9CA9B: MemLdStr global_100
  loc_B9CA9E: Ary1LdPr
  loc_B9CA9F: MemLdStr global_20
  loc_B9CAA2: LitI4 1
  loc_B9CAA7: AddI4
  loc_B9CAA8: FLdPr Me
  loc_B9CAAB: MemLdI2 global_104
  loc_B9CAAE: CI4UI1
  loc_B9CAAF: FLdPr Me
  loc_B9CAB2: MemLdStr global_100
  loc_B9CAB5: Ary1LdPr
  loc_B9CAB6: MemStI4 global_20
  loc_B9CAB9: FLdPr Me
  loc_B9CABC: MemLdRfVar from_stack_1.global_104
  loc_B9CABF: NextI2 var_2E0, loc_B9C7BD
  loc_B9CAC4: LitI2_Byte &HFF
  loc_B9CAC6: FLdPr Me
  loc_B9CAC9: MemStI2 bGenerado
  loc_B9CACC: LitI4 0
  loc_B9CAD1: CI2I4
  loc_B9CAD2: FLdPr Me
  loc_B9CAD5: Me.MousePointer = from_stack_1
  loc_B9CADA: LitVarStr var_AC, vbNullString
  loc_B9CADF: PopAdLdVar
  loc_B9CAE0: FLdPr Me
  loc_B9CAE3: VCallAd Control_ID_statusBar
  loc_B9CAE6: FStAdFunc var_C0
  loc_B9CAE9: FLdPr var_C0
  loc_B9CAEC: LateIdSt
  loc_B9CAF1: FFree1Ad var_C0
  loc_B9CAF4: ExitProcHresult
  loc_B9CAF5: LitI4 0
  loc_B9CAFA: LitStr "Error "
  loc_B9CAFD: FLdRfVar var_2A4
  loc_B9CB00: ImpAdCallI2 Err 'rtcErrObj
  loc_B9CB05: FStAdFunc var_C0
  loc_B9CB08: FLdPr var_C0
  loc_B9CB0B:  = Err.Number
  loc_B9CB10: ILdRf var_2A4
  loc_B9CB13: CStrI4
  loc_B9CB15: FStStrNoPop var_D8
  loc_B9CB18: ConcatStr
  loc_B9CB19: FStStrNoPop var_F0
  loc_B9CB1C: LitStr ": "
  loc_B9CB1F: ConcatStr
  loc_B9CB20: FStStrNoPop var_128
  loc_B9CB23: FLdRfVar var_124
  loc_B9CB26: ImpAdCallI2 Err 'rtcErrObj
  loc_B9CB2B: FStAdFunc var_DC
  loc_B9CB2E: FLdPr var_DC
  loc_B9CB31:  = Err.Description
  loc_B9CB36: ILdRf var_124
  loc_B9CB39: ConcatStr
  loc_B9CB3A: FStStrNoPop var_12C
  loc_B9CB3D: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B9CB42: FFreeStr var_D8 = "": var_F0 = "": var_128 = "": var_124 = ""
  loc_B9CB4F: FFreeAd var_C0 = ""
  loc_B9CB56: ExitProcHresult
  loc_B9CB57: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'B72518
  'Data Table: 4DCA5C
  loc_B718B4: FLdRfVar var_88
  loc_B718B7: LitI2_Byte 0
  loc_B718B9: LitI2_Byte &HFF
  loc_B718BB: ImpAdLdI4 MemVar_C3D83C
  loc_B718BE: FLdPr Me
  loc_B718C1: MemLdRfVar from_stack_1.global_96
  loc_B718C4: NewIfNullPr IFileSystem3
  loc_B718C7: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_B718CC: ILdRf var_88
  loc_B718CF: FLdPr Me
  loc_B718D2: MemStVarAd
  loc_B718D6: FFree1Ad var_88
  loc_B718D9: Call Proc_186_44_AFF548()
  loc_B718DE: LitI2_Byte 1
  loc_B718E0: FLdPr Me
  loc_B718E3: MemLdRfVar from_stack_1.global_104
  loc_B718E6: FLdPr Me
  loc_B718E9: MemLdStr global_100
  loc_B718EC: LitI2_Byte 1
  loc_B718EE: FnUBound
  loc_B718F0: CI2I4
  loc_B718F1: ForI2 var_8C
  loc_B718F7: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B718FC: PopAdLdVar
  loc_B718FD: FLdPr Me
  loc_B71900: MemLdRfVar from_stack_1.htmFile
  loc_B71903: LdPrVar
  loc_B71905: LateMemCall
  loc_B7190B: LitStr "<th rowspan="""
  loc_B7190E: FLdPr Me
  loc_B71911: MemLdI2 global_104
  loc_B71914: CI4UI1
  loc_B71915: FLdPr Me
  loc_B71918: MemLdStr global_100
  loc_B7191B: Ary1LdPr
  loc_B7191C: MemLdStr global_20
  loc_B7191F: CStrI4
  loc_B71921: FStStrNoPop var_B0
  loc_B71924: ConcatStr
  loc_B71925: FStStrNoPop var_B4
  loc_B71928: LitStr """ align=""center"" valign=""top"" class=""LineaDato"">"
  loc_B7192B: ConcatStr
  loc_B7192C: FStStrNoPop var_B8
  loc_B7192F: FLdPr Me
  loc_B71932: MemLdI2 global_104
  loc_B71935: CI4UI1
  loc_B71936: FLdPr Me
  loc_B71939: MemLdStr global_100
  loc_B7193C: Ary1LdPr
  loc_B7193D: MemLdRfVar from_stack_1.global_0
  loc_B71940: LdFixedStr
  loc_B71943: FStStrNoPop var_BC
  loc_B71946: ConcatStr
  loc_B71947: FStStrNoPop var_C0
  loc_B7194A: LitStr "<br>"
  loc_B7194D: ConcatStr
  loc_B7194E: FStStrNoPop var_C4
  loc_B71951: FLdPr Me
  loc_B71954: MemLdI2 global_104
  loc_B71957: CI4UI1
  loc_B71958: FLdPr Me
  loc_B7195B: MemLdStr global_100
  loc_B7195E: Ary1LdPr
  loc_B7195F: MemLdStr global_16
  loc_B71962: ConcatStr
  loc_B71963: FStStrNoPop var_C8
  loc_B71966: LitStr "</th>"
  loc_B71969: ConcatStr
  loc_B7196A: CVarStr var_D8
  loc_B7196D: PopAdLdVar
  loc_B7196E: FLdPr Me
  loc_B71971: MemLdRfVar from_stack_1.htmFile
  loc_B71974: LdPrVar
  loc_B71976: LateMemCall
  loc_B7197C: FFreeStr var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = ""
  loc_B7198D: FFree1Var var_D8 = ""
  loc_B71990: LitI2_Byte 1
  loc_B71992: FLdPr Me
  loc_B71995: MemLdRfVar from_stack_1.global_106
  loc_B71998: FLdPr Me
  loc_B7199B: MemLdI2 global_104
  loc_B7199E: CI4UI1
  loc_B7199F: FLdPr Me
  loc_B719A2: MemLdStr global_100
  loc_B719A5: Ary1LdPr
  loc_B719A6: MemLdStr global_24
  loc_B719A9: LitI2_Byte 1
  loc_B719AB: FnUBound
  loc_B719AD: CI2I4
  loc_B719AE: ForI2 var_DC
  loc_B719B4: FLdPr Me
  loc_B719B7: MemLdI2 global_106
  loc_B719BA: LitI2_Byte 1
  loc_B719BC: GtI2
  loc_B719BD: BranchF loc_B719D4
  loc_B719C0: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B719C5: PopAdLdVar
  loc_B719C6: FLdPr Me
  loc_B719C9: MemLdRfVar from_stack_1.htmFile
  loc_B719CC: LdPrVar
  loc_B719CE: LateMemCall
  loc_B719D4: LitStr "<th rowspan="""
  loc_B719D7: FLdPr Me
  loc_B719DA: MemLdI2 global_106
  loc_B719DD: CI4UI1
  loc_B719DE: FLdPr Me
  loc_B719E1: MemLdI2 global_104
  loc_B719E4: CI4UI1
  loc_B719E5: FLdPr Me
  loc_B719E8: MemLdStr global_100
  loc_B719EB: Ary1LdPr
  loc_B719EC: MemLdStr global_24
  loc_B719EF: Ary1LdPr
  loc_B719F0: MemLdStr global_20
  loc_B719F3: CStrI4
  loc_B719F5: FStStrNoPop var_B0
  loc_B719F8: ConcatStr
  loc_B719F9: FStStrNoPop var_B4
  loc_B719FC: LitStr """ align=""center"" valign=""top"" class=""LineaDato"">"
  loc_B719FF: ConcatStr
  loc_B71A00: FStStrNoPop var_B8
  loc_B71A03: FLdPr Me
  loc_B71A06: MemLdI2 global_106
  loc_B71A09: CI4UI1
  loc_B71A0A: FLdPr Me
  loc_B71A0D: MemLdI2 global_104
  loc_B71A10: CI4UI1
  loc_B71A11: FLdPr Me
  loc_B71A14: MemLdStr global_100
  loc_B71A17: Ary1LdPr
  loc_B71A18: MemLdStr global_24
  loc_B71A1B: Ary1LdPr
  loc_B71A1C: MemLdRfVar from_stack_1.global_0
  loc_B71A1F: LdFixedStr
  loc_B71A22: FStStrNoPop var_BC
  loc_B71A25: ConcatStr
  loc_B71A26: FStStrNoPop var_C0
  loc_B71A29: LitStr "<br>"
  loc_B71A2C: ConcatStr
  loc_B71A2D: FStStrNoPop var_C4
  loc_B71A30: FLdPr Me
  loc_B71A33: MemLdI2 global_106
  loc_B71A36: CI4UI1
  loc_B71A37: FLdPr Me
  loc_B71A3A: MemLdI2 global_104
  loc_B71A3D: CI4UI1
  loc_B71A3E: FLdPr Me
  loc_B71A41: MemLdStr global_100
  loc_B71A44: Ary1LdPr
  loc_B71A45: MemLdStr global_24
  loc_B71A48: Ary1LdPr
  loc_B71A49: MemLdStr global_16
  loc_B71A4C: ConcatStr
  loc_B71A4D: FStStrNoPop var_C8
  loc_B71A50: LitStr "</th>"
  loc_B71A53: ConcatStr
  loc_B71A54: CVarStr var_D8
  loc_B71A57: PopAdLdVar
  loc_B71A58: FLdPr Me
  loc_B71A5B: MemLdRfVar from_stack_1.htmFile
  loc_B71A5E: LdPrVar
  loc_B71A60: LateMemCall
  loc_B71A66: FFreeStr var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = ""
  loc_B71A77: FFree1Var var_D8 = ""
  loc_B71A7A: LitI2_Byte 1
  loc_B71A7C: FLdPr Me
  loc_B71A7F: MemLdRfVar from_stack_1.global_108
  loc_B71A82: FLdPr Me
  loc_B71A85: MemLdI2 global_106
  loc_B71A88: CI4UI1
  loc_B71A89: FLdPr Me
  loc_B71A8C: MemLdI2 global_104
  loc_B71A8F: CI4UI1
  loc_B71A90: FLdPr Me
  loc_B71A93: MemLdStr global_100
  loc_B71A96: Ary1LdPr
  loc_B71A97: MemLdStr global_24
  loc_B71A9A: Ary1LdPr
  loc_B71A9B: MemLdStr global_24
  loc_B71A9E: LitI2_Byte 1
  loc_B71AA0: FnUBound
  loc_B71AA2: CI2I4
  loc_B71AA3: ForI2 var_E0
  loc_B71AA9: FLdPr Me
  loc_B71AAC: MemLdI2 global_108
  loc_B71AAF: LitI2_Byte 1
  loc_B71AB1: GtI2
  loc_B71AB2: BranchF loc_B71AC9
  loc_B71AB5: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B71ABA: PopAdLdVar
  loc_B71ABB: FLdPr Me
  loc_B71ABE: MemLdRfVar from_stack_1.htmFile
  loc_B71AC1: LdPrVar
  loc_B71AC3: LateMemCall
  loc_B71AC9: LitStr "<th rowspan="""
  loc_B71ACC: FLdPr Me
  loc_B71ACF: MemLdI2 global_108
  loc_B71AD2: CI4UI1
  loc_B71AD3: FLdPr Me
  loc_B71AD6: MemLdI2 global_106
  loc_B71AD9: CI4UI1
  loc_B71ADA: FLdPr Me
  loc_B71ADD: MemLdI2 global_104
  loc_B71AE0: CI4UI1
  loc_B71AE1: FLdPr Me
  loc_B71AE4: MemLdStr global_100
  loc_B71AE7: Ary1LdPr
  loc_B71AE8: MemLdStr global_24
  loc_B71AEB: Ary1LdPr
  loc_B71AEC: MemLdStr global_24
  loc_B71AEF: Ary1LdPr
  loc_B71AF0: MemLdStr global_16
  loc_B71AF3: CStrI4
  loc_B71AF5: FStStrNoPop var_B0
  loc_B71AF8: ConcatStr
  loc_B71AF9: FStStrNoPop var_B4
  loc_B71AFC: LitStr """ align=""center"" valign=""top"" class=""LineaDato"">"
  loc_B71AFF: ConcatStr
  loc_B71B00: FStStrNoPop var_B8
  loc_B71B03: FLdPr Me
  loc_B71B06: MemLdI2 global_108
  loc_B71B09: CI4UI1
  loc_B71B0A: FLdPr Me
  loc_B71B0D: MemLdI2 global_106
  loc_B71B10: CI4UI1
  loc_B71B11: FLdPr Me
  loc_B71B14: MemLdI2 global_104
  loc_B71B17: CI4UI1
  loc_B71B18: FLdPr Me
  loc_B71B1B: MemLdStr global_100
  loc_B71B1E: Ary1LdPr
  loc_B71B1F: MemLdStr global_24
  loc_B71B22: Ary1LdPr
  loc_B71B23: MemLdStr global_24
  loc_B71B26: Ary1LdPr
  loc_B71B27: MemLdRfVar from_stack_1.global_0
  loc_B71B2A: LdFixedStr
  loc_B71B2D: FStStrNoPop var_BC
  loc_B71B30: ConcatStr
  loc_B71B31: FStStrNoPop var_C0
  loc_B71B34: LitStr "<br>"
  loc_B71B37: ConcatStr
  loc_B71B38: FStStrNoPop var_C4
  loc_B71B3B: FLdPr Me
  loc_B71B3E: MemLdI2 global_108
  loc_B71B41: CI4UI1
  loc_B71B42: FLdPr Me
  loc_B71B45: MemLdI2 global_106
  loc_B71B48: CI4UI1
  loc_B71B49: FLdPr Me
  loc_B71B4C: MemLdI2 global_104
  loc_B71B4F: CI4UI1
  loc_B71B50: FLdPr Me
  loc_B71B53: MemLdStr global_100
  loc_B71B56: Ary1LdPr
  loc_B71B57: MemLdStr global_24
  loc_B71B5A: Ary1LdPr
  loc_B71B5B: MemLdStr global_24
  loc_B71B5E: Ary1LdPr
  loc_B71B5F: MemLdStr global_12
  loc_B71B62: ConcatStr
  loc_B71B63: FStStrNoPop var_C8
  loc_B71B66: LitStr "</th>"
  loc_B71B69: ConcatStr
  loc_B71B6A: CVarStr var_D8
  loc_B71B6D: PopAdLdVar
  loc_B71B6E: FLdPr Me
  loc_B71B71: MemLdRfVar from_stack_1.htmFile
  loc_B71B74: LdPrVar
  loc_B71B76: LateMemCall
  loc_B71B7C: FFreeStr var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = ""
  loc_B71B8D: FFree1Var var_D8 = ""
  loc_B71B90: LitI2_Byte 1
  loc_B71B92: FLdPr Me
  loc_B71B95: MemLdRfVar from_stack_1.global_110
  loc_B71B98: FLdPr Me
  loc_B71B9B: MemLdI2 global_108
  loc_B71B9E: CI4UI1
  loc_B71B9F: FLdPr Me
  loc_B71BA2: MemLdI2 global_106
  loc_B71BA5: CI4UI1
  loc_B71BA6: FLdPr Me
  loc_B71BA9: MemLdI2 global_104
  loc_B71BAC: CI4UI1
  loc_B71BAD: FLdPr Me
  loc_B71BB0: MemLdStr global_100
  loc_B71BB3: Ary1LdPr
  loc_B71BB4: MemLdStr global_24
  loc_B71BB7: Ary1LdPr
  loc_B71BB8: MemLdStr global_24
  loc_B71BBB: Ary1LdPr
  loc_B71BBC: MemLdStr global_20
  loc_B71BBF: LitI2_Byte 1
  loc_B71BC1: FnUBound
  loc_B71BC3: CI2I4
  loc_B71BC4: ForI2 var_E4
  loc_B71BCA: FLdPr Me
  loc_B71BCD: MemLdI2 global_110
  loc_B71BD0: LitI2_Byte 1
  loc_B71BD2: GtI2
  loc_B71BD3: BranchF loc_B71BEA
  loc_B71BD6: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B71BDB: PopAdLdVar
  loc_B71BDC: FLdPr Me
  loc_B71BDF: MemLdRfVar from_stack_1.htmFile
  loc_B71BE2: LdPrVar
  loc_B71BE4: LateMemCall
  loc_B71BEA: LitStr "<th rowspan="""
  loc_B71BED: FLdPr Me
  loc_B71BF0: MemLdI2 global_110
  loc_B71BF3: CI4UI1
  loc_B71BF4: FLdPr Me
  loc_B71BF7: MemLdI2 global_108
  loc_B71BFA: CI4UI1
  loc_B71BFB: FLdPr Me
  loc_B71BFE: MemLdI2 global_106
  loc_B71C01: CI4UI1
  loc_B71C02: FLdPr Me
  loc_B71C05: MemLdI2 global_104
  loc_B71C08: CI4UI1
  loc_B71C09: FLdPr Me
  loc_B71C0C: MemLdStr global_100
  loc_B71C0F: Ary1LdPr
  loc_B71C10: MemLdStr global_24
  loc_B71C13: Ary1LdPr
  loc_B71C14: MemLdStr global_24
  loc_B71C17: Ary1LdPr
  loc_B71C18: MemLdStr global_20
  loc_B71C1B: Ary1LdPr
  loc_B71C1C: MemLdStr global_16
  loc_B71C1F: CStrI4
  loc_B71C21: FStStrNoPop var_B0
  loc_B71C24: ConcatStr
  loc_B71C25: FStStrNoPop var_B4
  loc_B71C28: LitStr """ align=""center"" valign=""top"" class=""LineaDato"">"
  loc_B71C2B: ConcatStr
  loc_B71C2C: FStStrNoPop var_B8
  loc_B71C2F: FLdPr Me
  loc_B71C32: MemLdI2 global_110
  loc_B71C35: CI4UI1
  loc_B71C36: FLdPr Me
  loc_B71C39: MemLdI2 global_108
  loc_B71C3C: CI4UI1
  loc_B71C3D: FLdPr Me
  loc_B71C40: MemLdI2 global_106
  loc_B71C43: CI4UI1
  loc_B71C44: FLdPr Me
  loc_B71C47: MemLdI2 global_104
  loc_B71C4A: CI4UI1
  loc_B71C4B: FLdPr Me
  loc_B71C4E: MemLdStr global_100
  loc_B71C51: Ary1LdPr
  loc_B71C52: MemLdStr global_24
  loc_B71C55: Ary1LdPr
  loc_B71C56: MemLdStr global_24
  loc_B71C59: Ary1LdPr
  loc_B71C5A: MemLdStr global_20
  loc_B71C5D: Ary1LdPr
  loc_B71C5E: MemLdRfVar from_stack_1.global_0
  loc_B71C61: LdFixedStr
  loc_B71C64: FStStrNoPop var_BC
  loc_B71C67: ConcatStr
  loc_B71C68: FStStrNoPop var_C0
  loc_B71C6B: LitStr "<br>"
  loc_B71C6E: ConcatStr
  loc_B71C6F: FStStrNoPop var_C4
  loc_B71C72: FLdPr Me
  loc_B71C75: MemLdI2 global_110
  loc_B71C78: CI4UI1
  loc_B71C79: FLdPr Me
  loc_B71C7C: MemLdI2 global_108
  loc_B71C7F: CI4UI1
  loc_B71C80: FLdPr Me
  loc_B71C83: MemLdI2 global_106
  loc_B71C86: CI4UI1
  loc_B71C87: FLdPr Me
  loc_B71C8A: MemLdI2 global_104
  loc_B71C8D: CI4UI1
  loc_B71C8E: FLdPr Me
  loc_B71C91: MemLdStr global_100
  loc_B71C94: Ary1LdPr
  loc_B71C95: MemLdStr global_24
  loc_B71C98: Ary1LdPr
  loc_B71C99: MemLdStr global_24
  loc_B71C9C: Ary1LdPr
  loc_B71C9D: MemLdStr global_20
  loc_B71CA0: Ary1LdPr
  loc_B71CA1: MemLdStr global_12
  loc_B71CA4: ConcatStr
  loc_B71CA5: FStStrNoPop var_C8
  loc_B71CA8: LitStr "</th>"
  loc_B71CAB: ConcatStr
  loc_B71CAC: CVarStr var_D8
  loc_B71CAF: PopAdLdVar
  loc_B71CB0: FLdPr Me
  loc_B71CB3: MemLdRfVar from_stack_1.htmFile
  loc_B71CB6: LdPrVar
  loc_B71CB8: LateMemCall
  loc_B71CBE: FFreeStr var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = ""
  loc_B71CCF: FFree1Var var_D8 = ""
  loc_B71CD2: LitI2_Byte 1
  loc_B71CD4: FLdPr Me
  loc_B71CD7: MemLdRfVar from_stack_1.global_112
  loc_B71CDA: FLdPr Me
  loc_B71CDD: MemLdI2 global_110
  loc_B71CE0: CI4UI1
  loc_B71CE1: FLdPr Me
  loc_B71CE4: MemLdI2 global_108
  loc_B71CE7: CI4UI1
  loc_B71CE8: FLdPr Me
  loc_B71CEB: MemLdI2 global_106
  loc_B71CEE: CI4UI1
  loc_B71CEF: FLdPr Me
  loc_B71CF2: MemLdI2 global_104
  loc_B71CF5: CI4UI1
  loc_B71CF6: FLdPr Me
  loc_B71CF9: MemLdStr global_100
  loc_B71CFC: Ary1LdPr
  loc_B71CFD: MemLdStr global_24
  loc_B71D00: Ary1LdPr
  loc_B71D01: MemLdStr global_24
  loc_B71D04: Ary1LdPr
  loc_B71D05: MemLdStr global_20
  loc_B71D08: Ary1LdPr
  loc_B71D09: MemLdStr global_20
  loc_B71D0C: LitI2_Byte 1
  loc_B71D0E: FnUBound
  loc_B71D10: CI2I4
  loc_B71D11: ForI2 var_E8
  loc_B71D17: FLdPr Me
  loc_B71D1A: MemLdI2 global_112
  loc_B71D1D: LitI2_Byte 1
  loc_B71D1F: GtI2
  loc_B71D20: BranchF loc_B71D37
  loc_B71D23: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B71D28: PopAdLdVar
  loc_B71D29: FLdPr Me
  loc_B71D2C: MemLdRfVar from_stack_1.htmFile
  loc_B71D2F: LdPrVar
  loc_B71D31: LateMemCall
  loc_B71D37: FLdPr Me
  loc_B71D3A: MemLdI2 global_112
  loc_B71D3D: CI4UI1
  loc_B71D3E: FLdPr Me
  loc_B71D41: MemLdI2 global_110
  loc_B71D44: CI4UI1
  loc_B71D45: FLdPr Me
  loc_B71D48: MemLdI2 global_108
  loc_B71D4B: CI4UI1
  loc_B71D4C: FLdPr Me
  loc_B71D4F: MemLdI2 global_106
  loc_B71D52: CI4UI1
  loc_B71D53: FLdPr Me
  loc_B71D56: MemLdI2 global_104
  loc_B71D59: CI4UI1
  loc_B71D5A: FLdPr Me
  loc_B71D5D: MemLdStr global_100
  loc_B71D60: AryLock
  loc_B71D63: Ary1LdPr
  loc_B71D64: MemLdStr global_24
  loc_B71D67: AryLock
  loc_B71D6A: Ary1LdPr
  loc_B71D6B: MemLdStr global_24
  loc_B71D6E: AryLock
  loc_B71D71: Ary1LdPr
  loc_B71D72: MemLdStr global_20
  loc_B71D75: AryLock
  loc_B71D78: Ary1LdPr
  loc_B71D79: MemLdStr global_20
  loc_B71D7C: AryLock
  loc_B71D7F: Ary1LdRf
  loc_B71D80: FStR4 var_100
  loc_B71D83: LitI4 0
  loc_B71D88: LitI4 0
  loc_B71D8D: LitI2_Byte 0
  loc_B71D8F: LitStr "left"
  loc_B71D92: FMemLdR4 var_100(4)
  loc_B71D97: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B71D9C: CVarStr var_D8
  loc_B71D9F: PopAdLdVar
  loc_B71DA0: FLdPr Me
  loc_B71DA3: MemLdRfVar from_stack_1.htmFile
  loc_B71DA6: LdPrVar
  loc_B71DA8: LateMemCall
  loc_B71DAE: FFree1Var var_D8 = ""
  loc_B71DB1: LitI4 0
  loc_B71DB6: LitI4 0
  loc_B71DBB: LitI2_Byte 0
  loc_B71DBD: LitStr "left"
  loc_B71DC0: FMemLdR4 var_100(8)
  loc_B71DC5: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B71DCA: CVarStr var_D8
  loc_B71DCD: PopAdLdVar
  loc_B71DCE: FLdPr Me
  loc_B71DD1: MemLdRfVar from_stack_1.htmFile
  loc_B71DD4: LdPrVar
  loc_B71DD6: LateMemCall
  loc_B71DDC: FFree1Var var_D8 = ""
  loc_B71DDF: LitI4 0
  loc_B71DE4: LitI4 0
  loc_B71DE9: LitI2_Byte 0
  loc_B71DEB: LitStr "center"
  loc_B71DEE: FMemLdR4 var_100(12)
  loc_B71DF3: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B71DF8: CVarStr var_D8
  loc_B71DFB: PopAdLdVar
  loc_B71DFC: FLdPr Me
  loc_B71DFF: MemLdRfVar from_stack_1.htmFile
  loc_B71E02: LdPrVar
  loc_B71E04: LateMemCall
  loc_B71E0A: FFree1Var var_D8 = ""
  loc_B71E0D: LitI4 0
  loc_B71E12: LitI4 0
  loc_B71E17: LitI2_Byte 0
  loc_B71E19: LitStr "right"
  loc_B71E1C: FMemLdR4 var_100(16)
  loc_B71E21: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B71E26: CVarStr var_D8
  loc_B71E29: PopAdLdVar
  loc_B71E2A: FLdPr Me
  loc_B71E2D: MemLdRfVar from_stack_1.htmFile
  loc_B71E30: LdPrVar
  loc_B71E32: LateMemCall
  loc_B71E38: FFree1Var var_D8 = ""
  loc_B71E3B: LitI4 0
  loc_B71E40: LitI4 0
  loc_B71E45: LitI2_Byte 0
  loc_B71E47: LitStr "right"
  loc_B71E4A: FMemLdR4 var_100(20)
  loc_B71E4F: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B71E54: CVarStr var_D8
  loc_B71E57: PopAdLdVar
  loc_B71E58: FLdPr Me
  loc_B71E5B: MemLdRfVar from_stack_1.htmFile
  loc_B71E5E: LdPrVar
  loc_B71E60: LateMemCall
  loc_B71E66: FFree1Var var_D8 = ""
  loc_B71E69: LitI2_Byte 1
  loc_B71E6B: FLdPr Me
  loc_B71E6E: MemLdRfVar from_stack_1.global_114
  loc_B71E71: LitI2_Byte 5
  loc_B71E73: ForI2 var_104
  loc_B71E79: FLdPr Me
  loc_B71E7C: MemLdI2 global_114
  loc_B71E7F: CI4UI1
  loc_B71E80: FMemLdR4 var_100(24)
  loc_B71E85: Ary1LdI4
  loc_B71E86: LitStr "0,00"
  loc_B71E89: EqStr
  loc_B71E8B: BranchF loc_B71EBF
  loc_B71E8E: LitI4 0
  loc_B71E93: LitI4 0
  loc_B71E98: LitI2_Byte 0
  loc_B71E9A: LitI4 0
  loc_B71E9F: LitStr "&nbsp"
  loc_B71EA2: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B71EA7: CVarStr var_D8
  loc_B71EAA: PopAdLdVar
  loc_B71EAB: FLdPr Me
  loc_B71EAE: MemLdRfVar from_stack_1.htmFile
  loc_B71EB1: LdPrVar
  loc_B71EB3: LateMemCall
  loc_B71EB9: FFree1Var var_D8 = ""
  loc_B71EBC: Branch loc_B71EF7
  loc_B71EBF: LitI4 0
  loc_B71EC4: LitI4 0
  loc_B71EC9: LitI2_Byte 0
  loc_B71ECB: LitI4 0
  loc_B71ED0: FLdPr Me
  loc_B71ED3: MemLdI2 global_114
  loc_B71ED6: CI4UI1
  loc_B71ED7: FMemLdR4 var_100(24)
  loc_B71EDC: Ary1LdI4
  loc_B71EDD: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B71EE2: CVarStr var_D8
  loc_B71EE5: PopAdLdVar
  loc_B71EE6: FLdPr Me
  loc_B71EE9: MemLdRfVar from_stack_1.htmFile
  loc_B71EEC: LdPrVar
  loc_B71EEE: LateMemCall
  loc_B71EF4: FFree1Var var_D8 = ""
  loc_B71EF7: FLdPr Me
  loc_B71EFA: MemLdRfVar from_stack_1.global_114
  loc_B71EFD: NextI2 var_104, loc_B71E79
  loc_B71F02: LitVarStr var_9C, "     </tr>"
  loc_B71F07: PopAdLdVar
  loc_B71F08: FLdPr Me
  loc_B71F0B: MemLdRfVar from_stack_1.htmFile
  loc_B71F0E: LdPrVar
  loc_B71F10: LateMemCall
  loc_B71F16: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B71F1B: PopAdLdVar
  loc_B71F1C: FLdPr Me
  loc_B71F1F: MemLdRfVar from_stack_1.htmFile
  loc_B71F22: LdPrVar
  loc_B71F24: LateMemCall
  loc_B71F2A: LitStr "      <td colspan=""10"" align=""left"" valign=""top"">"
  loc_B71F2D: FMemLdR4 var_100(0)
  loc_B71F32: ConcatStr
  loc_B71F33: FStStrNoPop var_B0
  loc_B71F36: LitStr "</td>"
  loc_B71F39: ConcatStr
  loc_B71F3A: CVarStr var_D8
  loc_B71F3D: PopAdLdVar
  loc_B71F3E: FLdPr Me
  loc_B71F41: MemLdRfVar from_stack_1.htmFile
  loc_B71F44: LdPrVar
  loc_B71F46: LateMemCall
  loc_B71F4C: FFree1Str var_B0
  loc_B71F4F: FFree1Var var_D8 = ""
  loc_B71F52: LitVarStr var_9C, "     </tr>"
  loc_B71F57: PopAdLdVar
  loc_B71F58: FLdPr Me
  loc_B71F5B: MemLdRfVar from_stack_1.htmFile
  loc_B71F5E: LdPrVar
  loc_B71F60: LateMemCall
  loc_B71F66: LitI4 0
  loc_B71F6B: FStR4 var_100
  loc_B71F6E: AryUnlock
  loc_B71F71: AryUnlock
  loc_B71F74: AryUnlock
  loc_B71F77: AryUnlock
  loc_B71F7A: AryUnlock
  loc_B71F7D: FLdPr Me
  loc_B71F80: MemLdRfVar from_stack_1.global_112
  loc_B71F83: NextI2 var_E8, loc_B71D17
  loc_B71F88: LitStr "    <th colspan=""5"" align=""left"" class=""LineaDato"">Subtotales ("
  loc_B71F8B: FLdPr Me
  loc_B71F8E: MemLdI2 global_104
  loc_B71F91: CI4UI1
  loc_B71F92: FLdPr Me
  loc_B71F95: MemLdStr global_100
  loc_B71F98: Ary1LdPr
  loc_B71F99: MemLdRfVar from_stack_1.global_0
  loc_B71F9C: LdFixedStr
  loc_B71F9F: FStStrNoPop var_B0
  loc_B71FA2: ConcatStr
  loc_B71FA3: FStStrNoPop var_B4
  loc_B71FA6: LitStr " - "
  loc_B71FA9: ConcatStr
  loc_B71FAA: FStStrNoPop var_B8
  loc_B71FAD: FLdPr Me
  loc_B71FB0: MemLdI2 global_106
  loc_B71FB3: CI4UI1
  loc_B71FB4: FLdPr Me
  loc_B71FB7: MemLdI2 global_104
  loc_B71FBA: CI4UI1
  loc_B71FBB: FLdPr Me
  loc_B71FBE: MemLdStr global_100
  loc_B71FC1: Ary1LdPr
  loc_B71FC2: MemLdStr global_24
  loc_B71FC5: Ary1LdPr
  loc_B71FC6: MemLdRfVar from_stack_1.global_0
  loc_B71FC9: LdFixedStr
  loc_B71FCC: FStStrNoPop var_BC
  loc_B71FCF: ConcatStr
  loc_B71FD0: FStStrNoPop var_C0
  loc_B71FD3: LitStr " - "
  loc_B71FD6: ConcatStr
  loc_B71FD7: FStStrNoPop var_C4
  loc_B71FDA: FLdPr Me
  loc_B71FDD: MemLdI2 global_108
  loc_B71FE0: CI4UI1
  loc_B71FE1: FLdPr Me
  loc_B71FE4: MemLdI2 global_106
  loc_B71FE7: CI4UI1
  loc_B71FE8: FLdPr Me
  loc_B71FEB: MemLdI2 global_104
  loc_B71FEE: CI4UI1
  loc_B71FEF: FLdPr Me
  loc_B71FF2: MemLdStr global_100
  loc_B71FF5: Ary1LdPr
  loc_B71FF6: MemLdStr global_24
  loc_B71FF9: Ary1LdPr
  loc_B71FFA: MemLdStr global_24
  loc_B71FFD: Ary1LdPr
  loc_B71FFE: MemLdRfVar from_stack_1.global_0
  loc_B72001: LdFixedStr
  loc_B72004: FStStrNoPop var_C8
  loc_B72007: ConcatStr
  loc_B72008: FStStrNoPop var_108
  loc_B7200B: LitStr " - "
  loc_B7200E: ConcatStr
  loc_B7200F: FStStrNoPop var_10C
  loc_B72012: FLdPr Me
  loc_B72015: MemLdI2 global_110
  loc_B72018: CI4UI1
  loc_B72019: FLdPr Me
  loc_B7201C: MemLdI2 global_108
  loc_B7201F: CI4UI1
  loc_B72020: FLdPr Me
  loc_B72023: MemLdI2 global_106
  loc_B72026: CI4UI1
  loc_B72027: FLdPr Me
  loc_B7202A: MemLdI2 global_104
  loc_B7202D: CI4UI1
  loc_B7202E: FLdPr Me
  loc_B72031: MemLdStr global_100
  loc_B72034: Ary1LdPr
  loc_B72035: MemLdStr global_24
  loc_B72038: Ary1LdPr
  loc_B72039: MemLdStr global_24
  loc_B7203C: Ary1LdPr
  loc_B7203D: MemLdStr global_20
  loc_B72040: Ary1LdPr
  loc_B72041: MemLdRfVar from_stack_1.global_0
  loc_B72044: LdFixedStr
  loc_B72047: FStStrNoPop var_110
  loc_B7204A: ConcatStr
  loc_B7204B: FStStrNoPop var_114
  loc_B7204E: LitStr ")</th>"
  loc_B72051: ConcatStr
  loc_B72052: CVarStr var_D8
  loc_B72055: PopAdLdVar
  loc_B72056: FLdPr Me
  loc_B72059: MemLdRfVar from_stack_1.htmFile
  loc_B7205C: LdPrVar
  loc_B7205E: LateMemCall
  loc_B72064: FFreeStr var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_108 = "": var_10C = "": var_110 = ""
  loc_B7207D: FFree1Var var_D8 = ""
  loc_B72080: LitI2_Byte 1
  loc_B72082: FLdPr Me
  loc_B72085: MemLdRfVar from_stack_1.global_114
  loc_B72088: LitI2_Byte 5
  loc_B7208A: ForI2 var_118
  loc_B72090: LitStr "    <th align=""right"" class=""Totales"">"
  loc_B72093: FLdPr Me
  loc_B72096: MemLdI2 global_114
  loc_B72099: CI4UI1
  loc_B7209A: FLdPr Me
  loc_B7209D: MemLdI2 global_110
  loc_B720A0: CI4UI1
  loc_B720A1: FLdPr Me
  loc_B720A4: MemLdI2 global_108
  loc_B720A7: CI4UI1
  loc_B720A8: FLdPr Me
  loc_B720AB: MemLdI2 global_106
  loc_B720AE: CI4UI1
  loc_B720AF: FLdPr Me
  loc_B720B2: MemLdI2 global_104
  loc_B720B5: CI4UI1
  loc_B720B6: FLdPr Me
  loc_B720B9: MemLdStr global_100
  loc_B720BC: Ary1LdPr
  loc_B720BD: MemLdStr global_24
  loc_B720C0: Ary1LdPr
  loc_B720C1: MemLdStr global_24
  loc_B720C4: Ary1LdPr
  loc_B720C5: MemLdStr global_20
  loc_B720C8: Ary1LdPr
  loc_B720C9: MemLdRfVar from_stack_1.global_24
  loc_B720CC: AryInRecLdPr
  loc_B720D2: MemLdStr global_0
  loc_B720D5: ConcatStr
  loc_B720D6: FStStrNoPop var_B0
  loc_B720D9: LitStr "</th>"
  loc_B720DC: ConcatStr
  loc_B720DD: CVarStr var_D8
  loc_B720E0: PopAdLdVar
  loc_B720E1: FLdPr Me
  loc_B720E4: MemLdRfVar from_stack_1.htmFile
  loc_B720E7: LdPrVar
  loc_B720E9: LateMemCall
  loc_B720EF: FFree1Str var_B0
  loc_B720F2: FFree1Var var_D8 = ""
  loc_B720F5: FLdPr Me
  loc_B720F8: MemLdRfVar from_stack_1.global_114
  loc_B720FB: NextI2 var_118, loc_B72090
  loc_B72100: LitVarStr var_9C, "  </tr>"
  loc_B72105: PopAdLdVar
  loc_B72106: FLdPr Me
  loc_B72109: MemLdRfVar from_stack_1.htmFile
  loc_B7210C: LdPrVar
  loc_B7210E: LateMemCall
  loc_B72114: FLdPr Me
  loc_B72117: MemLdRfVar from_stack_1.global_110
  loc_B7211A: NextI2 var_E4, loc_B71BCA
  loc_B7211F: LitStr "    <th colspan=""6"" align=""left"" class=""LineaDato"">Subtotales ("
  loc_B72122: FLdPr Me
  loc_B72125: MemLdI2 global_104
  loc_B72128: CI4UI1
  loc_B72129: FLdPr Me
  loc_B7212C: MemLdStr global_100
  loc_B7212F: Ary1LdPr
  loc_B72130: MemLdRfVar from_stack_1.global_0
  loc_B72133: LdFixedStr
  loc_B72136: FStStrNoPop var_B0
  loc_B72139: ConcatStr
  loc_B7213A: FStStrNoPop var_B4
  loc_B7213D: LitStr " - "
  loc_B72140: ConcatStr
  loc_B72141: FStStrNoPop var_B8
  loc_B72144: FLdPr Me
  loc_B72147: MemLdI2 global_106
  loc_B7214A: CI4UI1
  loc_B7214B: FLdPr Me
  loc_B7214E: MemLdI2 global_104
  loc_B72151: CI4UI1
  loc_B72152: FLdPr Me
  loc_B72155: MemLdStr global_100
  loc_B72158: Ary1LdPr
  loc_B72159: MemLdStr global_24
  loc_B7215C: Ary1LdPr
  loc_B7215D: MemLdRfVar from_stack_1.global_0
  loc_B72160: LdFixedStr
  loc_B72163: FStStrNoPop var_BC
  loc_B72166: ConcatStr
  loc_B72167: FStStrNoPop var_C0
  loc_B7216A: LitStr " - "
  loc_B7216D: ConcatStr
  loc_B7216E: FStStrNoPop var_C4
  loc_B72171: FLdPr Me
  loc_B72174: MemLdI2 global_108
  loc_B72177: CI4UI1
  loc_B72178: FLdPr Me
  loc_B7217B: MemLdI2 global_106
  loc_B7217E: CI4UI1
  loc_B7217F: FLdPr Me
  loc_B72182: MemLdI2 global_104
  loc_B72185: CI4UI1
  loc_B72186: FLdPr Me
  loc_B72189: MemLdStr global_100
  loc_B7218C: Ary1LdPr
  loc_B7218D: MemLdStr global_24
  loc_B72190: Ary1LdPr
  loc_B72191: MemLdStr global_24
  loc_B72194: Ary1LdPr
  loc_B72195: MemLdRfVar from_stack_1.global_0
  loc_B72198: LdFixedStr
  loc_B7219B: FStStrNoPop var_C8
  loc_B7219E: ConcatStr
  loc_B7219F: FStStrNoPop var_108
  loc_B721A2: LitStr ")</th>"
  loc_B721A5: ConcatStr
  loc_B721A6: CVarStr var_D8
  loc_B721A9: PopAdLdVar
  loc_B721AA: FLdPr Me
  loc_B721AD: MemLdRfVar from_stack_1.htmFile
  loc_B721B0: LdPrVar
  loc_B721B2: LateMemCall
  loc_B721B8: FFreeStr var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = ""
  loc_B721CB: FFree1Var var_D8 = ""
  loc_B721CE: LitI2_Byte 1
  loc_B721D0: FLdPr Me
  loc_B721D3: MemLdRfVar from_stack_1.global_114
  loc_B721D6: LitI2_Byte 5
  loc_B721D8: ForI2 var_11C
  loc_B721DE: LitStr "    <th align=""right"" class=""Totales"">"
  loc_B721E1: FLdPr Me
  loc_B721E4: MemLdI2 global_114
  loc_B721E7: CI4UI1
  loc_B721E8: FLdPr Me
  loc_B721EB: MemLdI2 global_108
  loc_B721EE: CI4UI1
  loc_B721EF: FLdPr Me
  loc_B721F2: MemLdI2 global_106
  loc_B721F5: CI4UI1
  loc_B721F6: FLdPr Me
  loc_B721F9: MemLdI2 global_104
  loc_B721FC: CI4UI1
  loc_B721FD: FLdPr Me
  loc_B72200: MemLdStr global_100
  loc_B72203: Ary1LdPr
  loc_B72204: MemLdStr global_24
  loc_B72207: Ary1LdPr
  loc_B72208: MemLdStr global_24
  loc_B7220B: Ary1LdPr
  loc_B7220C: MemLdRfVar from_stack_1.global_24
  loc_B7220F: AryInRecLdPr
  loc_B72215: MemLdStr global_0
  loc_B72218: ConcatStr
  loc_B72219: FStStrNoPop var_B0
  loc_B7221C: LitStr "</th>"
  loc_B7221F: ConcatStr
  loc_B72220: CVarStr var_D8
  loc_B72223: PopAdLdVar
  loc_B72224: FLdPr Me
  loc_B72227: MemLdRfVar from_stack_1.htmFile
  loc_B7222A: LdPrVar
  loc_B7222C: LateMemCall
  loc_B72232: FFree1Str var_B0
  loc_B72235: FFree1Var var_D8 = ""
  loc_B72238: FLdPr Me
  loc_B7223B: MemLdRfVar from_stack_1.global_114
  loc_B7223E: NextI2 var_11C, loc_B721DE
  loc_B72243: LitVarStr var_9C, "  </tr>"
  loc_B72248: PopAdLdVar
  loc_B72249: FLdPr Me
  loc_B7224C: MemLdRfVar from_stack_1.htmFile
  loc_B7224F: LdPrVar
  loc_B72251: LateMemCall
  loc_B72257: FLdPr Me
  loc_B7225A: MemLdRfVar from_stack_1.global_108
  loc_B7225D: NextI2 var_E0, loc_B71AA9
  loc_B72262: LitStr "    <th colspan=""7"" align=""left"" class=""LineaDato"">Subtotales ("
  loc_B72265: FLdPr Me
  loc_B72268: MemLdI2 global_104
  loc_B7226B: CI4UI1
  loc_B7226C: FLdPr Me
  loc_B7226F: MemLdStr global_100
  loc_B72272: Ary1LdPr
  loc_B72273: MemLdRfVar from_stack_1.global_0
  loc_B72276: LdFixedStr
  loc_B72279: FStStrNoPop var_B0
  loc_B7227C: ConcatStr
  loc_B7227D: FStStrNoPop var_B4
  loc_B72280: LitStr " - "
  loc_B72283: ConcatStr
  loc_B72284: FStStrNoPop var_B8
  loc_B72287: FLdPr Me
  loc_B7228A: MemLdI2 global_106
  loc_B7228D: CI4UI1
  loc_B7228E: FLdPr Me
  loc_B72291: MemLdI2 global_104
  loc_B72294: CI4UI1
  loc_B72295: FLdPr Me
  loc_B72298: MemLdStr global_100
  loc_B7229B: Ary1LdPr
  loc_B7229C: MemLdStr global_24
  loc_B7229F: Ary1LdPr
  loc_B722A0: MemLdRfVar from_stack_1.global_0
  loc_B722A3: LdFixedStr
  loc_B722A6: FStStrNoPop var_BC
  loc_B722A9: ConcatStr
  loc_B722AA: FStStrNoPop var_C0
  loc_B722AD: LitStr ")</th>"
  loc_B722B0: ConcatStr
  loc_B722B1: CVarStr var_D8
  loc_B722B4: PopAdLdVar
  loc_B722B5: FLdPr Me
  loc_B722B8: MemLdRfVar from_stack_1.htmFile
  loc_B722BB: LdPrVar
  loc_B722BD: LateMemCall
  loc_B722C3: FFreeStr var_B0 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_B722D0: FFree1Var var_D8 = ""
  loc_B722D3: LitI2_Byte 1
  loc_B722D5: FLdPr Me
  loc_B722D8: MemLdRfVar from_stack_1.global_114
  loc_B722DB: LitI2_Byte 5
  loc_B722DD: ForI2 var_120
  loc_B722E3: LitStr "    <th align=""right"" class=""Totales"">"
  loc_B722E6: FLdPr Me
  loc_B722E9: MemLdI2 global_114
  loc_B722EC: CI4UI1
  loc_B722ED: FLdPr Me
  loc_B722F0: MemLdI2 global_106
  loc_B722F3: CI4UI1
  loc_B722F4: FLdPr Me
  loc_B722F7: MemLdI2 global_104
  loc_B722FA: CI4UI1
  loc_B722FB: FLdPr Me
  loc_B722FE: MemLdStr global_100
  loc_B72301: Ary1LdPr
  loc_B72302: MemLdStr global_24
  loc_B72305: Ary1LdPr
  loc_B72306: MemLdRfVar from_stack_1.global_28
  loc_B72309: AryInRecLdPr
  loc_B7230F: MemLdStr global_0
  loc_B72312: ConcatStr
  loc_B72313: FStStrNoPop var_B0
  loc_B72316: LitStr "</th>"
  loc_B72319: ConcatStr
  loc_B7231A: CVarStr var_D8
  loc_B7231D: PopAdLdVar
  loc_B7231E: FLdPr Me
  loc_B72321: MemLdRfVar from_stack_1.htmFile
  loc_B72324: LdPrVar
  loc_B72326: LateMemCall
  loc_B7232C: FFree1Str var_B0
  loc_B7232F: FFree1Var var_D8 = ""
  loc_B72332: FLdPr Me
  loc_B72335: MemLdRfVar from_stack_1.global_114
  loc_B72338: NextI2 var_120, loc_B722E3
  loc_B7233D: LitVarStr var_9C, "  </tr>"
  loc_B72342: PopAdLdVar
  loc_B72343: FLdPr Me
  loc_B72346: MemLdRfVar from_stack_1.htmFile
  loc_B72349: LdPrVar
  loc_B7234B: LateMemCall
  loc_B72351: FLdPr Me
  loc_B72354: MemLdRfVar from_stack_1.global_106
  loc_B72357: NextI2 var_DC, loc_B719B4
  loc_B7235C: LitStr "    <th colspan=""8"" align=""left"" class=""LineaDato"">Subtotales ("
  loc_B7235F: FLdPr Me
  loc_B72362: MemLdI2 global_104
  loc_B72365: CI4UI1
  loc_B72366: FLdPr Me
  loc_B72369: MemLdStr global_100
  loc_B7236C: Ary1LdPr
  loc_B7236D: MemLdRfVar from_stack_1.global_0
  loc_B72370: LdFixedStr
  loc_B72373: FStStrNoPop var_B0
  loc_B72376: ConcatStr
  loc_B72377: FStStrNoPop var_B4
  loc_B7237A: LitStr " "
  loc_B7237D: ConcatStr
  loc_B7237E: FStStrNoPop var_B8
  loc_B72381: FLdPr Me
  loc_B72384: MemLdI2 global_104
  loc_B72387: CI4UI1
  loc_B72388: FLdPr Me
  loc_B7238B: MemLdStr global_100
  loc_B7238E: Ary1LdPr
  loc_B7238F: MemLdStr global_16
  loc_B72392: ConcatStr
  loc_B72393: FStStrNoPop var_BC
  loc_B72396: LitStr ")</th>"
  loc_B72399: ConcatStr
  loc_B7239A: CVarStr var_D8
  loc_B7239D: PopAdLdVar
  loc_B7239E: FLdPr Me
  loc_B723A1: MemLdRfVar from_stack_1.htmFile
  loc_B723A4: LdPrVar
  loc_B723A6: LateMemCall
  loc_B723AC: FFreeStr var_B0 = "": var_B4 = "": var_B8 = ""
  loc_B723B7: FFree1Var var_D8 = ""
  loc_B723BA: LitI2_Byte 1
  loc_B723BC: FLdPr Me
  loc_B723BF: MemLdRfVar from_stack_1.global_114
  loc_B723C2: LitI2_Byte 5
  loc_B723C4: ForI2 var_124
  loc_B723CA: LitStr "    <th align=""right"" class=""Totales"">"
  loc_B723CD: FLdPr Me
  loc_B723D0: MemLdI2 global_114
  loc_B723D3: CI4UI1
  loc_B723D4: FLdPr Me
  loc_B723D7: MemLdI2 global_104
  loc_B723DA: CI4UI1
  loc_B723DB: FLdPr Me
  loc_B723DE: MemLdStr global_100
  loc_B723E1: Ary1LdPr
  loc_B723E2: MemLdRfVar from_stack_1.global_28
  loc_B723E5: AryInRecLdPr
  loc_B723EB: MemLdStr global_0
  loc_B723EE: ConcatStr
  loc_B723EF: FStStrNoPop var_B0
  loc_B723F2: LitStr "</th>"
  loc_B723F5: ConcatStr
  loc_B723F6: CVarStr var_D8
  loc_B723F9: PopAdLdVar
  loc_B723FA: FLdPr Me
  loc_B723FD: MemLdRfVar from_stack_1.htmFile
  loc_B72400: LdPrVar
  loc_B72402: LateMemCall
  loc_B72408: FFree1Str var_B0
  loc_B7240B: FFree1Var var_D8 = ""
  loc_B7240E: FLdPr Me
  loc_B72411: MemLdRfVar from_stack_1.global_114
  loc_B72414: NextI2 var_124, loc_B723CA
  loc_B72419: LitVarStr var_9C, "  </tr>"
  loc_B7241E: PopAdLdVar
  loc_B7241F: FLdPr Me
  loc_B72422: MemLdRfVar from_stack_1.htmFile
  loc_B72425: LdPrVar
  loc_B72427: LateMemCall
  loc_B7242D: FLdPr Me
  loc_B72430: MemLdRfVar from_stack_1.global_104
  loc_B72433: NextI2 var_8C, loc_B718F7
  loc_B72438: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B7243D: PopAdLdVar
  loc_B7243E: FLdPr Me
  loc_B72441: MemLdRfVar from_stack_1.htmFile
  loc_B72444: LdPrVar
  loc_B72446: LateMemCall
  loc_B7244C: LitVarStr var_9C, "    <th colspan=""14"" class=""Encabezado"">&nbsp;</th>"
  loc_B72451: PopAdLdVar
  loc_B72452: FLdPr Me
  loc_B72455: MemLdRfVar from_stack_1.htmFile
  loc_B72458: LdPrVar
  loc_B7245A: LateMemCall
  loc_B72460: LitVarStr var_9C, "  </tr>"
  loc_B72465: PopAdLdVar
  loc_B72466: FLdPr Me
  loc_B72469: MemLdRfVar from_stack_1.htmFile
  loc_B7246C: LdPrVar
  loc_B7246E: LateMemCall
  loc_B72474: LitVarStr var_9C, "  <tr class=""LineaDato"">"
  loc_B72479: PopAdLdVar
  loc_B7247A: FLdPr Me
  loc_B7247D: MemLdRfVar from_stack_1.htmFile
  loc_B72480: LdPrVar
  loc_B72482: LateMemCall
  loc_B72488: LitVarStr var_9C, "    <th colspan=""9"" align=""right"" class=""Normal"">TOTALES:</th>"
  loc_B7248D: PopAdLdVar
  loc_B7248E: FLdPr Me
  loc_B72491: MemLdRfVar from_stack_1.htmFile
  loc_B72494: LdPrVar
  loc_B72496: LateMemCall
  loc_B7249C: LitI2_Byte 1
  loc_B7249E: FLdPr Me
  loc_B724A1: MemLdRfVar from_stack_1.global_114
  loc_B724A4: LitI2_Byte 5
  loc_B724A6: ForI2 var_128
  loc_B724AC: LitStr "    <th align=""right"" class=""Totales"">"
  loc_B724AF: FLdPr Me
  loc_B724B2: MemLdI2 global_114
  loc_B724B5: CI4UI1
  loc_B724B6: FLdPr Me
  loc_B724B9: MemLdStr global_120
  loc_B724BC: Ary1LdI4
  loc_B724BD: ConcatStr
  loc_B724BE: FStStrNoPop var_B0
  loc_B724C1: LitStr "</th>"
  loc_B724C4: ConcatStr
  loc_B724C5: CVarStr var_D8
  loc_B724C8: PopAdLdVar
  loc_B724C9: FLdPr Me
  loc_B724CC: MemLdRfVar from_stack_1.htmFile
  loc_B724CF: LdPrVar
  loc_B724D1: LateMemCall
  loc_B724D7: FFree1Str var_B0
  loc_B724DA: FFree1Var var_D8 = ""
  loc_B724DD: FLdPr Me
  loc_B724E0: MemLdRfVar from_stack_1.global_114
  loc_B724E3: NextI2 var_128, loc_B724AC
  loc_B724E8: LitVarStr var_9C, "  </tr>"
  loc_B724ED: PopAdLdVar
  loc_B724EE: FLdPr Me
  loc_B724F1: MemLdRfVar from_stack_1.htmFile
  loc_B724F4: LdPrVar
  loc_B724F6: LateMemCall
  loc_B724FC: Call Proc_186_45_982B60()
  loc_B72501: FLdPr Me
  loc_B72504: MemLdRfVar from_stack_1.htmFile
  loc_B72507: LdPrVar
  loc_B72509: LateMemCall
  loc_B7250F: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_B72514: ExitProcHresult
  loc_B72515: GtCy
  loc_B72516: ExitProcR8
End Sub

Public Sub GeneraXLS() '9538FC
  'Data Table: 4DCA5C
  loc_9538E4: LitI2_Byte 0
  loc_9538E6: FLdPr Me
  loc_9538E9: MemStI2 bLogos
  loc_9538EC: Call GeneraHTML()
  loc_9538F1: LitI2_Byte &HFF
  loc_9538F3: FLdPr Me
  loc_9538F6: MemStI2 bLogos
  loc_9538F9: ExitProcHresult
  loc_9538FA: MemStFPR8 global_-7168
End Sub

Private Function Proc_186_42_BA7878(arg_C) 'BA7878
  'Data Table: 4DCA5C
  loc_BA68F8: ILdRf arg_C
  loc_BA68FB: FStR4 var_8C
  loc_BA68FE: ILdRf var_8C
  loc_BA6901: LitI4 0
  loc_BA6906: EqI4
  loc_BA6907: BranchF loc_BA6E74
  loc_BA690A: FLdPr Me
  loc_BA690D: MemLdI2 global_104
  loc_BA6910: LitI2_Byte 1
  loc_BA6912: AddI2
  loc_BA6913: FLdPr Me
  loc_BA6916: MemStI2 global_104
  loc_BA6919: LitI2_Byte 1
  loc_BA691B: FLdPr Me
  loc_BA691E: MemStI2 global_106
  loc_BA6921: LitI2_Byte 1
  loc_BA6923: FLdPr Me
  loc_BA6926: MemStI2 global_108
  loc_BA6929: LitI2_Byte 1
  loc_BA692B: FLdPr Me
  loc_BA692E: MemStI2 global_110
  loc_BA6931: LitI2_Byte 1
  loc_BA6933: FLdPr Me
  loc_BA6936: MemStI2 global_112
  loc_BA6939: LitI4 0
  loc_BA693E: FLdPr Me
  loc_BA6941: MemLdI2 global_104
  loc_BA6944: CI4UI1
  loc_BA6945: FLdPr Me
  loc_BA6948: MemLdRfVar from_stack_1.global_100
  loc_BA694B: RedimPreserve
  loc_BA6955: FLdRfVar var_A8
  loc_BA6958: LitVarStr var_A4, "CodiInsu"
  loc_BA695D: PopAdLdVar
  loc_BA695E: FLdRfVar var_94
  loc_BA6961: FLdRfVar var_90
  loc_BA6964: FLdPr Me
  loc_BA6967: MemLdRfVar from_stack_1.global_76
  loc_BA696A: NewIfNullPr clsimputacion
  loc_BA696D: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BA6972: FLdPr var_90
  loc_BA6975:  = Me.Fields
  loc_BA697A: FLdPr var_94
  loc_BA697D: from_stack_2 = Me.Item(from_stack_1)
  loc_BA6982: LitI2_Byte 0
  loc_BA6984: LitVar_Missing var_DC
  loc_BA6987: LitI2_Byte 0
  loc_BA6989: FLdZeroAd var_A8
  loc_BA698C: CVarAd
  loc_BA6990: PopAdLdVar
  loc_BA6991: FLdPr Me
  loc_BA6994: MemLdI2 global_104
  loc_BA6997: CI4UI1
  loc_BA6998: FLdPr Me
  loc_BA699B: MemLdStr global_100
  loc_BA699E: Ary1LdPr
  loc_BA699F: MemLdRfVar from_stack_1.global_0
  loc_BA69A2: LdFixedStr
  loc_BA69A5: PopTmpLdAdStr
  loc_BA69A9: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BA69AE: ILdRf var_AC
  loc_BA69B1: FLdPr Me
  loc_BA69B4: MemLdI2 global_104
  loc_BA69B7: CI4UI1
  loc_BA69B8: FLdPr Me
  loc_BA69BB: MemLdStr global_100
  loc_BA69BE: Ary1LdPr
  loc_BA69BF: MemLdRfVar from_stack_1.global_0
  loc_BA69C2: StFixedStr
  loc_BA69C5: FFree1Str var_AC
  loc_BA69C8: FFreeAd var_90 = ""
  loc_BA69CF: FFreeVar var_BC = ""
  loc_BA69D6: FLdRfVar var_A8
  loc_BA69D9: LitVarStr var_A4, "DetaInsu"
  loc_BA69DE: PopAdLdVar
  loc_BA69DF: FLdRfVar var_94
  loc_BA69E2: FLdRfVar var_90
  loc_BA69E5: FLdPr Me
  loc_BA69E8: MemLdRfVar from_stack_1.global_76
  loc_BA69EB: NewIfNullPr clsimputacion
  loc_BA69EE: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BA69F3: FLdPr var_90
  loc_BA69F6:  = Me.Fields
  loc_BA69FB: FLdPr var_94
  loc_BA69FE: from_stack_2 = Me.Item(from_stack_1)
  loc_BA6A03: LitI2_Byte 0
  loc_BA6A05: LitVar_Missing var_DC
  loc_BA6A08: LitI2_Byte 0
  loc_BA6A0A: FLdZeroAd var_A8
  loc_BA6A0D: CVarAd
  loc_BA6A11: PopAdLdVar
  loc_BA6A12: FLdPr Me
  loc_BA6A15: MemLdI2 global_104
  loc_BA6A18: CI4UI1
  loc_BA6A19: FLdPr Me
  loc_BA6A1C: MemLdStr global_100
  loc_BA6A1F: AryLock
  loc_BA6A22: Ary1LdPr
  loc_BA6A23: MemLdRfVar from_stack_1.global_16
  loc_BA6A26: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BA6A2B: AryUnlock
  loc_BA6A2E: FFreeAd var_90 = ""
  loc_BA6A35: FFreeVar var_BC = ""
  loc_BA6A3C: LitI4 0
  loc_BA6A41: FLdPr Me
  loc_BA6A44: MemLdI2 global_106
  loc_BA6A47: CI4UI1
  loc_BA6A48: FLdPr Me
  loc_BA6A4B: MemLdI2 global_104
  loc_BA6A4E: CI4UI1
  loc_BA6A4F: FLdPr Me
  loc_BA6A52: MemLdStr global_100
  loc_BA6A55: Ary1LdPr
  loc_BA6A56: MemLdRfVar from_stack_1.global_24
  loc_BA6A59: RedimPreserve
  loc_BA6A63: FLdRfVar var_A8
  loc_BA6A66: LitVarStr var_A4, "CodiPart"
  loc_BA6A6B: PopAdLdVar
  loc_BA6A6C: FLdRfVar var_94
  loc_BA6A6F: FLdRfVar var_90
  loc_BA6A72: FLdPr Me
  loc_BA6A75: MemLdRfVar from_stack_1.global_76
  loc_BA6A78: NewIfNullPr clsimputacion
  loc_BA6A7B: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BA6A80: FLdPr var_90
  loc_BA6A83:  = Me.Fields
  loc_BA6A88: FLdPr var_94
  loc_BA6A8B: from_stack_2 = Me.Item(from_stack_1)
  loc_BA6A90: LitI2_Byte 0
  loc_BA6A92: LitVar_Missing var_DC
  loc_BA6A95: LitI2_Byte 0
  loc_BA6A97: FLdZeroAd var_A8
  loc_BA6A9A: CVarAd
  loc_BA6A9E: PopAdLdVar
  loc_BA6A9F: FLdPr Me
  loc_BA6AA2: MemLdI2 global_106
  loc_BA6AA5: CI4UI1
  loc_BA6AA6: FLdPr Me
  loc_BA6AA9: MemLdI2 global_104
  loc_BA6AAC: CI4UI1
  loc_BA6AAD: FLdPr Me
  loc_BA6AB0: MemLdStr global_100
  loc_BA6AB3: Ary1LdPr
  loc_BA6AB4: MemLdStr global_24
  loc_BA6AB7: Ary1LdPr
  loc_BA6AB8: MemLdRfVar from_stack_1.global_0
  loc_BA6ABB: LdFixedStr
  loc_BA6ABE: PopTmpLdAdStr
  loc_BA6AC2: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BA6AC7: ILdRf var_AC
  loc_BA6ACA: FLdPr Me
  loc_BA6ACD: MemLdI2 global_106
  loc_BA6AD0: CI4UI1
  loc_BA6AD1: FLdPr Me
  loc_BA6AD4: MemLdI2 global_104
  loc_BA6AD7: CI4UI1
  loc_BA6AD8: FLdPr Me
  loc_BA6ADB: MemLdStr global_100
  loc_BA6ADE: Ary1LdPr
  loc_BA6ADF: MemLdStr global_24
  loc_BA6AE2: Ary1LdPr
  loc_BA6AE3: MemLdRfVar from_stack_1.global_0
  loc_BA6AE6: StFixedStr
  loc_BA6AE9: FFree1Str var_AC
  loc_BA6AEC: FFreeAd var_90 = ""
  loc_BA6AF3: FFreeVar var_BC = ""
  loc_BA6AFA: FLdRfVar var_A8
  loc_BA6AFD: LitVarStr var_A4, "DetaPart"
  loc_BA6B02: PopAdLdVar
  loc_BA6B03: FLdRfVar var_94
  loc_BA6B06: FLdRfVar var_90
  loc_BA6B09: FLdPr Me
  loc_BA6B0C: MemLdRfVar from_stack_1.global_76
  loc_BA6B0F: NewIfNullPr clsimputacion
  loc_BA6B12: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BA6B17: FLdPr var_90
  loc_BA6B1A:  = Me.Fields
  loc_BA6B1F: FLdPr var_94
  loc_BA6B22: from_stack_2 = Me.Item(from_stack_1)
  loc_BA6B27: LitI2_Byte 0
  loc_BA6B29: LitVar_Missing var_DC
  loc_BA6B2C: LitI2_Byte 0
  loc_BA6B2E: FLdZeroAd var_A8
  loc_BA6B31: CVarAd
  loc_BA6B35: PopAdLdVar
  loc_BA6B36: FLdPr Me
  loc_BA6B39: MemLdI2 global_106
  loc_BA6B3C: CI4UI1
  loc_BA6B3D: FLdPr Me
  loc_BA6B40: MemLdI2 global_104
  loc_BA6B43: CI4UI1
  loc_BA6B44: FLdPr Me
  loc_BA6B47: MemLdStr global_100
  loc_BA6B4A: AryLock
  loc_BA6B4D: Ary1LdPr
  loc_BA6B4E: MemLdStr global_24
  loc_BA6B51: AryLock
  loc_BA6B54: Ary1LdPr
  loc_BA6B55: MemLdRfVar from_stack_1.global_16
  loc_BA6B58: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BA6B5D: AryUnlock
  loc_BA6B60: AryUnlock
  loc_BA6B63: FFreeAd var_90 = ""
  loc_BA6B6A: FFreeVar var_BC = ""
  loc_BA6B71: LitI4 0
  loc_BA6B76: FLdPr Me
  loc_BA6B79: MemLdI2 global_108
  loc_BA6B7C: CI4UI1
  loc_BA6B7D: FLdPr Me
  loc_BA6B80: MemLdI2 global_106
  loc_BA6B83: CI4UI1
  loc_BA6B84: FLdPr Me
  loc_BA6B87: MemLdI2 global_104
  loc_BA6B8A: CI4UI1
  loc_BA6B8B: FLdPr Me
  loc_BA6B8E: MemLdStr global_100
  loc_BA6B91: Ary1LdPr
  loc_BA6B92: MemLdStr global_24
  loc_BA6B95: Ary1LdPr
  loc_BA6B96: MemLdRfVar from_stack_1.global_24
  loc_BA6B99: RedimPreserve
  loc_BA6BA3: FLdRfVar var_A8
  loc_BA6BA6: LitVarStr var_A4, "CodiOrga"
  loc_BA6BAB: PopAdLdVar
  loc_BA6BAC: FLdRfVar var_94
  loc_BA6BAF: FLdRfVar var_90
  loc_BA6BB2: FLdPr Me
  loc_BA6BB5: MemLdRfVar from_stack_1.global_76
  loc_BA6BB8: NewIfNullPr clsimputacion
  loc_BA6BBB: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BA6BC0: FLdPr var_90
  loc_BA6BC3:  = Me.Fields
  loc_BA6BC8: FLdPr var_94
  loc_BA6BCB: from_stack_2 = Me.Item(from_stack_1)
  loc_BA6BD0: LitI2_Byte 0
  loc_BA6BD2: LitVar_Missing var_DC
  loc_BA6BD5: LitI2_Byte 0
  loc_BA6BD7: FLdZeroAd var_A8
  loc_BA6BDA: CVarAd
  loc_BA6BDE: PopAdLdVar
  loc_BA6BDF: FLdPr Me
  loc_BA6BE2: MemLdI2 global_108
  loc_BA6BE5: CI4UI1
  loc_BA6BE6: FLdPr Me
  loc_BA6BE9: MemLdI2 global_106
  loc_BA6BEC: CI4UI1
  loc_BA6BED: FLdPr Me
  loc_BA6BF0: MemLdI2 global_104
  loc_BA6BF3: CI4UI1
  loc_BA6BF4: FLdPr Me
  loc_BA6BF7: MemLdStr global_100
  loc_BA6BFA: Ary1LdPr
  loc_BA6BFB: MemLdStr global_24
  loc_BA6BFE: Ary1LdPr
  loc_BA6BFF: MemLdStr global_24
  loc_BA6C02: Ary1LdPr
  loc_BA6C03: MemLdRfVar from_stack_1.global_0
  loc_BA6C06: LdFixedStr
  loc_BA6C09: PopTmpLdAdStr
  loc_BA6C0D: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BA6C12: ILdRf var_AC
  loc_BA6C15: FLdPr Me
  loc_BA6C18: MemLdI2 global_108
  loc_BA6C1B: CI4UI1
  loc_BA6C1C: FLdPr Me
  loc_BA6C1F: MemLdI2 global_106
  loc_BA6C22: CI4UI1
  loc_BA6C23: FLdPr Me
  loc_BA6C26: MemLdI2 global_104
  loc_BA6C29: CI4UI1
  loc_BA6C2A: FLdPr Me
  loc_BA6C2D: MemLdStr global_100
  loc_BA6C30: Ary1LdPr
  loc_BA6C31: MemLdStr global_24
  loc_BA6C34: Ary1LdPr
  loc_BA6C35: MemLdStr global_24
  loc_BA6C38: Ary1LdPr
  loc_BA6C39: MemLdRfVar from_stack_1.global_0
  loc_BA6C3C: StFixedStr
  loc_BA6C3F: FFree1Str var_AC
  loc_BA6C42: FFreeAd var_90 = ""
  loc_BA6C49: FFreeVar var_BC = ""
  loc_BA6C50: FLdRfVar var_A8
  loc_BA6C53: LitVarStr var_A4, "DetaOrga"
  loc_BA6C58: PopAdLdVar
  loc_BA6C59: FLdRfVar var_94
  loc_BA6C5C: FLdRfVar var_90
  loc_BA6C5F: FLdPr Me
  loc_BA6C62: MemLdRfVar from_stack_1.global_76
  loc_BA6C65: NewIfNullPr clsimputacion
  loc_BA6C68: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BA6C6D: FLdPr var_90
  loc_BA6C70:  = Me.Fields
  loc_BA6C75: FLdPr var_94
  loc_BA6C78: from_stack_2 = Me.Item(from_stack_1)
  loc_BA6C7D: LitI2_Byte 0
  loc_BA6C7F: LitVar_Missing var_DC
  loc_BA6C82: LitI2_Byte 0
  loc_BA6C84: FLdZeroAd var_A8
  loc_BA6C87: CVarAd
  loc_BA6C8B: PopAdLdVar
  loc_BA6C8C: FLdPr Me
  loc_BA6C8F: MemLdI2 global_108
  loc_BA6C92: CI4UI1
  loc_BA6C93: FLdPr Me
  loc_BA6C96: MemLdI2 global_106
  loc_BA6C99: CI4UI1
  loc_BA6C9A: FLdPr Me
  loc_BA6C9D: MemLdI2 global_104
  loc_BA6CA0: CI4UI1
  loc_BA6CA1: FLdPr Me
  loc_BA6CA4: MemLdStr global_100
  loc_BA6CA7: AryLock
  loc_BA6CAA: Ary1LdPr
  loc_BA6CAB: MemLdStr global_24
  loc_BA6CAE: AryLock
  loc_BA6CB1: Ary1LdPr
  loc_BA6CB2: MemLdStr global_24
  loc_BA6CB5: AryLock
  loc_BA6CB8: Ary1LdPr
  loc_BA6CB9: MemLdRfVar from_stack_1.global_12
  loc_BA6CBC: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BA6CC1: AryUnlock
  loc_BA6CC4: AryUnlock
  loc_BA6CC7: AryUnlock
  loc_BA6CCA: FFreeAd var_90 = ""
  loc_BA6CD1: FFreeVar var_BC = ""
  loc_BA6CD8: LitI4 0
  loc_BA6CDD: FLdPr Me
  loc_BA6CE0: MemLdI2 global_110
  loc_BA6CE3: CI4UI1
  loc_BA6CE4: FLdPr Me
  loc_BA6CE7: MemLdI2 global_108
  loc_BA6CEA: CI4UI1
  loc_BA6CEB: FLdPr Me
  loc_BA6CEE: MemLdI2 global_106
  loc_BA6CF1: CI4UI1
  loc_BA6CF2: FLdPr Me
  loc_BA6CF5: MemLdI2 global_104
  loc_BA6CF8: CI4UI1
  loc_BA6CF9: FLdPr Me
  loc_BA6CFC: MemLdStr global_100
  loc_BA6CFF: Ary1LdPr
  loc_BA6D00: MemLdStr global_24
  loc_BA6D03: Ary1LdPr
  loc_BA6D04: MemLdStr global_24
  loc_BA6D07: Ary1LdPr
  loc_BA6D08: MemLdRfVar from_stack_1.global_20
  loc_BA6D0B: RedimPreserve
  loc_BA6D15: FLdRfVar var_A8
  loc_BA6D18: LitVarStr var_A4, "CodiFifu"
  loc_BA6D1D: PopAdLdVar
  loc_BA6D1E: FLdRfVar var_94
  loc_BA6D21: FLdRfVar var_90
  loc_BA6D24: FLdPr Me
  loc_BA6D27: MemLdRfVar from_stack_1.global_76
  loc_BA6D2A: NewIfNullPr clsimputacion
  loc_BA6D2D: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BA6D32: FLdPr var_90
  loc_BA6D35:  = Me.Fields
  loc_BA6D3A: FLdPr var_94
  loc_BA6D3D: from_stack_2 = Me.Item(from_stack_1)
  loc_BA6D42: LitI2_Byte 0
  loc_BA6D44: LitVar_Missing var_DC
  loc_BA6D47: LitI2_Byte 0
  loc_BA6D49: FLdZeroAd var_A8
  loc_BA6D4C: CVarAd
  loc_BA6D50: PopAdLdVar
  loc_BA6D51: FLdPr Me
  loc_BA6D54: MemLdI2 global_110
  loc_BA6D57: CI4UI1
  loc_BA6D58: FLdPr Me
  loc_BA6D5B: MemLdI2 global_108
  loc_BA6D5E: CI4UI1
  loc_BA6D5F: FLdPr Me
  loc_BA6D62: MemLdI2 global_106
  loc_BA6D65: CI4UI1
  loc_BA6D66: FLdPr Me
  loc_BA6D69: MemLdI2 global_104
  loc_BA6D6C: CI4UI1
  loc_BA6D6D: FLdPr Me
  loc_BA6D70: MemLdStr global_100
  loc_BA6D73: Ary1LdPr
  loc_BA6D74: MemLdStr global_24
  loc_BA6D77: Ary1LdPr
  loc_BA6D78: MemLdStr global_24
  loc_BA6D7B: Ary1LdPr
  loc_BA6D7C: MemLdStr global_20
  loc_BA6D7F: Ary1LdPr
  loc_BA6D80: MemLdRfVar from_stack_1.global_0
  loc_BA6D83: LdFixedStr
  loc_BA6D86: PopTmpLdAdStr
  loc_BA6D8A: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BA6D8F: ILdRf var_AC
  loc_BA6D92: FLdPr Me
  loc_BA6D95: MemLdI2 global_110
  loc_BA6D98: CI4UI1
  loc_BA6D99: FLdPr Me
  loc_BA6D9C: MemLdI2 global_108
  loc_BA6D9F: CI4UI1
  loc_BA6DA0: FLdPr Me
  loc_BA6DA3: MemLdI2 global_106
  loc_BA6DA6: CI4UI1
  loc_BA6DA7: FLdPr Me
  loc_BA6DAA: MemLdI2 global_104
  loc_BA6DAD: CI4UI1
  loc_BA6DAE: FLdPr Me
  loc_BA6DB1: MemLdStr global_100
  loc_BA6DB4: Ary1LdPr
  loc_BA6DB5: MemLdStr global_24
  loc_BA6DB8: Ary1LdPr
  loc_BA6DB9: MemLdStr global_24
  loc_BA6DBC: Ary1LdPr
  loc_BA6DBD: MemLdStr global_20
  loc_BA6DC0: Ary1LdPr
  loc_BA6DC1: MemLdRfVar from_stack_1.global_0
  loc_BA6DC4: StFixedStr
  loc_BA6DC7: FFree1Str var_AC
  loc_BA6DCA: FFreeAd var_90 = ""
  loc_BA6DD1: FFreeVar var_BC = ""
  loc_BA6DD8: FLdRfVar var_A8
  loc_BA6DDB: LitVarStr var_A4, "DetaFifu"
  loc_BA6DE0: PopAdLdVar
  loc_BA6DE1: FLdRfVar var_94
  loc_BA6DE4: FLdRfVar var_90
  loc_BA6DE7: FLdPr Me
  loc_BA6DEA: MemLdRfVar from_stack_1.global_76
  loc_BA6DED: NewIfNullPr clsimputacion
  loc_BA6DF0: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BA6DF5: FLdPr var_90
  loc_BA6DF8:  = Me.Fields
  loc_BA6DFD: FLdPr var_94
  loc_BA6E00: from_stack_2 = Me.Item(from_stack_1)
  loc_BA6E05: LitI2_Byte 0
  loc_BA6E07: LitVar_Missing var_DC
  loc_BA6E0A: LitI2_Byte 0
  loc_BA6E0C: FLdZeroAd var_A8
  loc_BA6E0F: CVarAd
  loc_BA6E13: PopAdLdVar
  loc_BA6E14: FLdPr Me
  loc_BA6E17: MemLdI2 global_110
  loc_BA6E1A: CI4UI1
  loc_BA6E1B: FLdPr Me
  loc_BA6E1E: MemLdI2 global_108
  loc_BA6E21: CI4UI1
  loc_BA6E22: FLdPr Me
  loc_BA6E25: MemLdI2 global_106
  loc_BA6E28: CI4UI1
  loc_BA6E29: FLdPr Me
  loc_BA6E2C: MemLdI2 global_104
  loc_BA6E2F: CI4UI1
  loc_BA6E30: FLdPr Me
  loc_BA6E33: MemLdStr global_100
  loc_BA6E36: AryLock
  loc_BA6E39: Ary1LdPr
  loc_BA6E3A: MemLdStr global_24
  loc_BA6E3D: AryLock
  loc_BA6E40: Ary1LdPr
  loc_BA6E41: MemLdStr global_24
  loc_BA6E44: AryLock
  loc_BA6E47: Ary1LdPr
  loc_BA6E48: MemLdStr global_20
  loc_BA6E4B: AryLock
  loc_BA6E4E: Ary1LdPr
  loc_BA6E4F: MemLdRfVar from_stack_1.global_12
  loc_BA6E52: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BA6E57: AryUnlock
  loc_BA6E5A: AryUnlock
  loc_BA6E5D: AryUnlock
  loc_BA6E60: AryUnlock
  loc_BA6E63: FFreeAd var_90 = ""
  loc_BA6E6A: FFreeVar var_BC = ""
  loc_BA6E71: Branch loc_BA77DB
  loc_BA6E74: ILdRf var_8C
  loc_BA6E77: LitI4 1
  loc_BA6E7C: EqI4
  loc_BA6E7D: BranchF loc_BA72DF
  loc_BA6E80: FLdPr Me
  loc_BA6E83: MemLdI2 global_106
  loc_BA6E86: LitI2_Byte 1
  loc_BA6E88: AddI2
  loc_BA6E89: FLdPr Me
  loc_BA6E8C: MemStI2 global_106
  loc_BA6E8F: LitI2_Byte 1
  loc_BA6E91: FLdPr Me
  loc_BA6E94: MemStI2 global_108
  loc_BA6E97: LitI2_Byte 1
  loc_BA6E99: FLdPr Me
  loc_BA6E9C: MemStI2 global_110
  loc_BA6E9F: LitI2_Byte 1
  loc_BA6EA1: FLdPr Me
  loc_BA6EA4: MemStI2 global_112
  loc_BA6EA7: LitI4 0
  loc_BA6EAC: FLdPr Me
  loc_BA6EAF: MemLdI2 global_106
  loc_BA6EB2: CI4UI1
  loc_BA6EB3: FLdPr Me
  loc_BA6EB6: MemLdI2 global_104
  loc_BA6EB9: CI4UI1
  loc_BA6EBA: FLdPr Me
  loc_BA6EBD: MemLdStr global_100
  loc_BA6EC0: Ary1LdPr
  loc_BA6EC1: MemLdRfVar from_stack_1.global_24
  loc_BA6EC4: RedimPreserve
  loc_BA6ECE: FLdRfVar var_A8
  loc_BA6ED1: LitVarStr var_A4, "CodiPart"
  loc_BA6ED6: PopAdLdVar
  loc_BA6ED7: FLdRfVar var_94
  loc_BA6EDA: FLdRfVar var_90
  loc_BA6EDD: FLdPr Me
  loc_BA6EE0: MemLdRfVar from_stack_1.global_76
  loc_BA6EE3: NewIfNullPr clsimputacion
  loc_BA6EE6: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BA6EEB: FLdPr var_90
  loc_BA6EEE:  = Me.Fields
  loc_BA6EF3: FLdPr var_94
  loc_BA6EF6: from_stack_2 = Me.Item(from_stack_1)
  loc_BA6EFB: LitI2_Byte 0
  loc_BA6EFD: LitVar_Missing var_DC
  loc_BA6F00: LitI2_Byte 0
  loc_BA6F02: FLdZeroAd var_A8
  loc_BA6F05: CVarAd
  loc_BA6F09: PopAdLdVar
  loc_BA6F0A: FLdPr Me
  loc_BA6F0D: MemLdI2 global_106
  loc_BA6F10: CI4UI1
  loc_BA6F11: FLdPr Me
  loc_BA6F14: MemLdI2 global_104
  loc_BA6F17: CI4UI1
  loc_BA6F18: FLdPr Me
  loc_BA6F1B: MemLdStr global_100
  loc_BA6F1E: Ary1LdPr
  loc_BA6F1F: MemLdStr global_24
  loc_BA6F22: Ary1LdPr
  loc_BA6F23: MemLdRfVar from_stack_1.global_0
  loc_BA6F26: LdFixedStr
  loc_BA6F29: PopTmpLdAdStr
  loc_BA6F2D: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BA6F32: ILdRf var_AC
  loc_BA6F35: FLdPr Me
  loc_BA6F38: MemLdI2 global_106
  loc_BA6F3B: CI4UI1
  loc_BA6F3C: FLdPr Me
  loc_BA6F3F: MemLdI2 global_104
  loc_BA6F42: CI4UI1
  loc_BA6F43: FLdPr Me
  loc_BA6F46: MemLdStr global_100
  loc_BA6F49: Ary1LdPr
  loc_BA6F4A: MemLdStr global_24
  loc_BA6F4D: Ary1LdPr
  loc_BA6F4E: MemLdRfVar from_stack_1.global_0
  loc_BA6F51: StFixedStr
  loc_BA6F54: FFree1Str var_AC
  loc_BA6F57: FFreeAd var_90 = ""
  loc_BA6F5E: FFreeVar var_BC = ""
  loc_BA6F65: FLdRfVar var_A8
  loc_BA6F68: LitVarStr var_A4, "DetaPart"
  loc_BA6F6D: PopAdLdVar
  loc_BA6F6E: FLdRfVar var_94
  loc_BA6F71: FLdRfVar var_90
  loc_BA6F74: FLdPr Me
  loc_BA6F77: MemLdRfVar from_stack_1.global_76
  loc_BA6F7A: NewIfNullPr clsimputacion
  loc_BA6F7D: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BA6F82: FLdPr var_90
  loc_BA6F85:  = Me.Fields
  loc_BA6F8A: FLdPr var_94
  loc_BA6F8D: from_stack_2 = Me.Item(from_stack_1)
  loc_BA6F92: LitI2_Byte 0
  loc_BA6F94: LitVar_Missing var_DC
  loc_BA6F97: LitI2_Byte 0
  loc_BA6F99: FLdZeroAd var_A8
  loc_BA6F9C: CVarAd
  loc_BA6FA0: PopAdLdVar
  loc_BA6FA1: FLdPr Me
  loc_BA6FA4: MemLdI2 global_106
  loc_BA6FA7: CI4UI1
  loc_BA6FA8: FLdPr Me
  loc_BA6FAB: MemLdI2 global_104
  loc_BA6FAE: CI4UI1
  loc_BA6FAF: FLdPr Me
  loc_BA6FB2: MemLdStr global_100
  loc_BA6FB5: AryLock
  loc_BA6FB8: Ary1LdPr
  loc_BA6FB9: MemLdStr global_24
  loc_BA6FBC: AryLock
  loc_BA6FBF: Ary1LdPr
  loc_BA6FC0: MemLdRfVar from_stack_1.global_16
  loc_BA6FC3: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BA6FC8: AryUnlock
  loc_BA6FCB: AryUnlock
  loc_BA6FCE: FFreeAd var_90 = ""
  loc_BA6FD5: FFreeVar var_BC = ""
  loc_BA6FDC: LitI4 0
  loc_BA6FE1: FLdPr Me
  loc_BA6FE4: MemLdI2 global_108
  loc_BA6FE7: CI4UI1
  loc_BA6FE8: FLdPr Me
  loc_BA6FEB: MemLdI2 global_106
  loc_BA6FEE: CI4UI1
  loc_BA6FEF: FLdPr Me
  loc_BA6FF2: MemLdI2 global_104
  loc_BA6FF5: CI4UI1
  loc_BA6FF6: FLdPr Me
  loc_BA6FF9: MemLdStr global_100
  loc_BA6FFC: Ary1LdPr
  loc_BA6FFD: MemLdStr global_24
  loc_BA7000: Ary1LdPr
  loc_BA7001: MemLdRfVar from_stack_1.global_24
  loc_BA7004: RedimPreserve
  loc_BA700E: FLdRfVar var_A8
  loc_BA7011: LitVarStr var_A4, "CodiOrga"
  loc_BA7016: PopAdLdVar
  loc_BA7017: FLdRfVar var_94
  loc_BA701A: FLdRfVar var_90
  loc_BA701D: FLdPr Me
  loc_BA7020: MemLdRfVar from_stack_1.global_76
  loc_BA7023: NewIfNullPr clsimputacion
  loc_BA7026: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BA702B: FLdPr var_90
  loc_BA702E:  = Me.Fields
  loc_BA7033: FLdPr var_94
  loc_BA7036: from_stack_2 = Me.Item(from_stack_1)
  loc_BA703B: LitI2_Byte 0
  loc_BA703D: LitVar_Missing var_DC
  loc_BA7040: LitI2_Byte 0
  loc_BA7042: FLdZeroAd var_A8
  loc_BA7045: CVarAd
  loc_BA7049: PopAdLdVar
  loc_BA704A: FLdPr Me
  loc_BA704D: MemLdI2 global_108
  loc_BA7050: CI4UI1
  loc_BA7051: FLdPr Me
  loc_BA7054: MemLdI2 global_106
  loc_BA7057: CI4UI1
  loc_BA7058: FLdPr Me
  loc_BA705B: MemLdI2 global_104
  loc_BA705E: CI4UI1
  loc_BA705F: FLdPr Me
  loc_BA7062: MemLdStr global_100
  loc_BA7065: Ary1LdPr
  loc_BA7066: MemLdStr global_24
  loc_BA7069: Ary1LdPr
  loc_BA706A: MemLdStr global_24
  loc_BA706D: Ary1LdPr
  loc_BA706E: MemLdRfVar from_stack_1.global_0
  loc_BA7071: LdFixedStr
  loc_BA7074: PopTmpLdAdStr
  loc_BA7078: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BA707D: ILdRf var_AC
  loc_BA7080: FLdPr Me
  loc_BA7083: MemLdI2 global_108
  loc_BA7086: CI4UI1
  loc_BA7087: FLdPr Me
  loc_BA708A: MemLdI2 global_106
  loc_BA708D: CI4UI1
  loc_BA708E: FLdPr Me
  loc_BA7091: MemLdI2 global_104
  loc_BA7094: CI4UI1
  loc_BA7095: FLdPr Me
  loc_BA7098: MemLdStr global_100
  loc_BA709B: Ary1LdPr
  loc_BA709C: MemLdStr global_24
  loc_BA709F: Ary1LdPr
  loc_BA70A0: MemLdStr global_24
  loc_BA70A3: Ary1LdPr
  loc_BA70A4: MemLdRfVar from_stack_1.global_0
  loc_BA70A7: StFixedStr
  loc_BA70AA: FFree1Str var_AC
  loc_BA70AD: FFreeAd var_90 = ""
  loc_BA70B4: FFreeVar var_BC = ""
  loc_BA70BB: FLdRfVar var_A8
  loc_BA70BE: LitVarStr var_A4, "DetaOrga"
  loc_BA70C3: PopAdLdVar
  loc_BA70C4: FLdRfVar var_94
  loc_BA70C7: FLdRfVar var_90
  loc_BA70CA: FLdPr Me
  loc_BA70CD: MemLdRfVar from_stack_1.global_76
  loc_BA70D0: NewIfNullPr clsimputacion
  loc_BA70D3: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BA70D8: FLdPr var_90
  loc_BA70DB:  = Me.Fields
  loc_BA70E0: FLdPr var_94
  loc_BA70E3: from_stack_2 = Me.Item(from_stack_1)
  loc_BA70E8: LitI2_Byte 0
  loc_BA70EA: LitVar_Missing var_DC
  loc_BA70ED: LitI2_Byte 0
  loc_BA70EF: FLdZeroAd var_A8
  loc_BA70F2: CVarAd
  loc_BA70F6: PopAdLdVar
  loc_BA70F7: FLdPr Me
  loc_BA70FA: MemLdI2 global_108
  loc_BA70FD: CI4UI1
  loc_BA70FE: FLdPr Me
  loc_BA7101: MemLdI2 global_106
  loc_BA7104: CI4UI1
  loc_BA7105: FLdPr Me
  loc_BA7108: MemLdI2 global_104
  loc_BA710B: CI4UI1
  loc_BA710C: FLdPr Me
  loc_BA710F: MemLdStr global_100
  loc_BA7112: AryLock
  loc_BA7115: Ary1LdPr
  loc_BA7116: MemLdStr global_24
  loc_BA7119: AryLock
  loc_BA711C: Ary1LdPr
  loc_BA711D: MemLdStr global_24
  loc_BA7120: AryLock
  loc_BA7123: Ary1LdPr
  loc_BA7124: MemLdRfVar from_stack_1.global_12
  loc_BA7127: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BA712C: AryUnlock
  loc_BA712F: AryUnlock
  loc_BA7132: AryUnlock
  loc_BA7135: FFreeAd var_90 = ""
  loc_BA713C: FFreeVar var_BC = ""
  loc_BA7143: LitI4 0
  loc_BA7148: FLdPr Me
  loc_BA714B: MemLdI2 global_110
  loc_BA714E: CI4UI1
  loc_BA714F: FLdPr Me
  loc_BA7152: MemLdI2 global_108
  loc_BA7155: CI4UI1
  loc_BA7156: FLdPr Me
  loc_BA7159: MemLdI2 global_106
  loc_BA715C: CI4UI1
  loc_BA715D: FLdPr Me
  loc_BA7160: MemLdI2 global_104
  loc_BA7163: CI4UI1
  loc_BA7164: FLdPr Me
  loc_BA7167: MemLdStr global_100
  loc_BA716A: Ary1LdPr
  loc_BA716B: MemLdStr global_24
  loc_BA716E: Ary1LdPr
  loc_BA716F: MemLdStr global_24
  loc_BA7172: Ary1LdPr
  loc_BA7173: MemLdRfVar from_stack_1.global_20
  loc_BA7176: RedimPreserve
  loc_BA7180: FLdRfVar var_A8
  loc_BA7183: LitVarStr var_A4, "CodiFifu"
  loc_BA7188: PopAdLdVar
  loc_BA7189: FLdRfVar var_94
  loc_BA718C: FLdRfVar var_90
  loc_BA718F: FLdPr Me
  loc_BA7192: MemLdRfVar from_stack_1.global_76
  loc_BA7195: NewIfNullPr clsimputacion
  loc_BA7198: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BA719D: FLdPr var_90
  loc_BA71A0:  = Me.Fields
  loc_BA71A5: FLdPr var_94
  loc_BA71A8: from_stack_2 = Me.Item(from_stack_1)
  loc_BA71AD: LitI2_Byte 0
  loc_BA71AF: LitVar_Missing var_DC
  loc_BA71B2: LitI2_Byte 0
  loc_BA71B4: FLdZeroAd var_A8
  loc_BA71B7: CVarAd
  loc_BA71BB: PopAdLdVar
  loc_BA71BC: FLdPr Me
  loc_BA71BF: MemLdI2 global_110
  loc_BA71C2: CI4UI1
  loc_BA71C3: FLdPr Me
  loc_BA71C6: MemLdI2 global_108
  loc_BA71C9: CI4UI1
  loc_BA71CA: FLdPr Me
  loc_BA71CD: MemLdI2 global_106
  loc_BA71D0: CI4UI1
  loc_BA71D1: FLdPr Me
  loc_BA71D4: MemLdI2 global_104
  loc_BA71D7: CI4UI1
  loc_BA71D8: FLdPr Me
  loc_BA71DB: MemLdStr global_100
  loc_BA71DE: Ary1LdPr
  loc_BA71DF: MemLdStr global_24
  loc_BA71E2: Ary1LdPr
  loc_BA71E3: MemLdStr global_24
  loc_BA71E6: Ary1LdPr
  loc_BA71E7: MemLdStr global_20
  loc_BA71EA: Ary1LdPr
  loc_BA71EB: MemLdRfVar from_stack_1.global_0
  loc_BA71EE: LdFixedStr
  loc_BA71F1: PopTmpLdAdStr
  loc_BA71F5: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BA71FA: ILdRf var_AC
  loc_BA71FD: FLdPr Me
  loc_BA7200: MemLdI2 global_110
  loc_BA7203: CI4UI1
  loc_BA7204: FLdPr Me
  loc_BA7207: MemLdI2 global_108
  loc_BA720A: CI4UI1
  loc_BA720B: FLdPr Me
  loc_BA720E: MemLdI2 global_106
  loc_BA7211: CI4UI1
  loc_BA7212: FLdPr Me
  loc_BA7215: MemLdI2 global_104
  loc_BA7218: CI4UI1
  loc_BA7219: FLdPr Me
  loc_BA721C: MemLdStr global_100
  loc_BA721F: Ary1LdPr
  loc_BA7220: MemLdStr global_24
  loc_BA7223: Ary1LdPr
  loc_BA7224: MemLdStr global_24
  loc_BA7227: Ary1LdPr
  loc_BA7228: MemLdStr global_20
  loc_BA722B: Ary1LdPr
  loc_BA722C: MemLdRfVar from_stack_1.global_0
  loc_BA722F: StFixedStr
  loc_BA7232: FFree1Str var_AC
  loc_BA7235: FFreeAd var_90 = ""
  loc_BA723C: FFreeVar var_BC = ""
  loc_BA7243: FLdRfVar var_A8
  loc_BA7246: LitVarStr var_A4, "DetaFifu"
  loc_BA724B: PopAdLdVar
  loc_BA724C: FLdRfVar var_94
  loc_BA724F: FLdRfVar var_90
  loc_BA7252: FLdPr Me
  loc_BA7255: MemLdRfVar from_stack_1.global_76
  loc_BA7258: NewIfNullPr clsimputacion
  loc_BA725B: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BA7260: FLdPr var_90
  loc_BA7263:  = Me.Fields
  loc_BA7268: FLdPr var_94
  loc_BA726B: from_stack_2 = Me.Item(from_stack_1)
  loc_BA7270: LitI2_Byte 0
  loc_BA7272: LitVar_Missing var_DC
  loc_BA7275: LitI2_Byte 0
  loc_BA7277: FLdZeroAd var_A8
  loc_BA727A: CVarAd
  loc_BA727E: PopAdLdVar
  loc_BA727F: FLdPr Me
  loc_BA7282: MemLdI2 global_110
  loc_BA7285: CI4UI1
  loc_BA7286: FLdPr Me
  loc_BA7289: MemLdI2 global_108
  loc_BA728C: CI4UI1
  loc_BA728D: FLdPr Me
  loc_BA7290: MemLdI2 global_106
  loc_BA7293: CI4UI1
  loc_BA7294: FLdPr Me
  loc_BA7297: MemLdI2 global_104
  loc_BA729A: CI4UI1
  loc_BA729B: FLdPr Me
  loc_BA729E: MemLdStr global_100
  loc_BA72A1: AryLock
  loc_BA72A4: Ary1LdPr
  loc_BA72A5: MemLdStr global_24
  loc_BA72A8: AryLock
  loc_BA72AB: Ary1LdPr
  loc_BA72AC: MemLdStr global_24
  loc_BA72AF: AryLock
  loc_BA72B2: Ary1LdPr
  loc_BA72B3: MemLdStr global_20
  loc_BA72B6: AryLock
  loc_BA72B9: Ary1LdPr
  loc_BA72BA: MemLdRfVar from_stack_1.global_12
  loc_BA72BD: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BA72C2: AryUnlock
  loc_BA72C5: AryUnlock
  loc_BA72C8: AryUnlock
  loc_BA72CB: AryUnlock
  loc_BA72CE: FFreeAd var_90 = ""
  loc_BA72D5: FFreeVar var_BC = ""
  loc_BA72DC: Branch loc_BA77DB
  loc_BA72DF: ILdRf var_8C
  loc_BA72E2: LitI4 2
  loc_BA72E7: EqI4
  loc_BA72E8: BranchF loc_BA760D
  loc_BA72EB: FLdPr Me
  loc_BA72EE: MemLdI2 global_108
  loc_BA72F1: LitI2_Byte 1
  loc_BA72F3: AddI2
  loc_BA72F4: FLdPr Me
  loc_BA72F7: MemStI2 global_108
  loc_BA72FA: LitI2_Byte 1
  loc_BA72FC: FLdPr Me
  loc_BA72FF: MemStI2 global_110
  loc_BA7302: LitI2_Byte 1
  loc_BA7304: FLdPr Me
  loc_BA7307: MemStI2 global_112
  loc_BA730A: LitI4 0
  loc_BA730F: FLdPr Me
  loc_BA7312: MemLdI2 global_108
  loc_BA7315: CI4UI1
  loc_BA7316: FLdPr Me
  loc_BA7319: MemLdI2 global_106
  loc_BA731C: CI4UI1
  loc_BA731D: FLdPr Me
  loc_BA7320: MemLdI2 global_104
  loc_BA7323: CI4UI1
  loc_BA7324: FLdPr Me
  loc_BA7327: MemLdStr global_100
  loc_BA732A: Ary1LdPr
  loc_BA732B: MemLdStr global_24
  loc_BA732E: Ary1LdPr
  loc_BA732F: MemLdRfVar from_stack_1.global_24
  loc_BA7332: RedimPreserve
  loc_BA733C: FLdRfVar var_A8
  loc_BA733F: LitVarStr var_A4, "CodiOrga"
  loc_BA7344: PopAdLdVar
  loc_BA7345: FLdRfVar var_94
  loc_BA7348: FLdRfVar var_90
  loc_BA734B: FLdPr Me
  loc_BA734E: MemLdRfVar from_stack_1.global_76
  loc_BA7351: NewIfNullPr clsimputacion
  loc_BA7354: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BA7359: FLdPr var_90
  loc_BA735C:  = Me.Fields
  loc_BA7361: FLdPr var_94
  loc_BA7364: from_stack_2 = Me.Item(from_stack_1)
  loc_BA7369: LitI2_Byte 0
  loc_BA736B: LitVar_Missing var_DC
  loc_BA736E: LitI2_Byte 0
  loc_BA7370: FLdZeroAd var_A8
  loc_BA7373: CVarAd
  loc_BA7377: PopAdLdVar
  loc_BA7378: FLdPr Me
  loc_BA737B: MemLdI2 global_108
  loc_BA737E: CI4UI1
  loc_BA737F: FLdPr Me
  loc_BA7382: MemLdI2 global_106
  loc_BA7385: CI4UI1
  loc_BA7386: FLdPr Me
  loc_BA7389: MemLdI2 global_104
  loc_BA738C: CI4UI1
  loc_BA738D: FLdPr Me
  loc_BA7390: MemLdStr global_100
  loc_BA7393: Ary1LdPr
  loc_BA7394: MemLdStr global_24
  loc_BA7397: Ary1LdPr
  loc_BA7398: MemLdStr global_24
  loc_BA739B: Ary1LdPr
  loc_BA739C: MemLdRfVar from_stack_1.global_0
  loc_BA739F: LdFixedStr
  loc_BA73A2: PopTmpLdAdStr
  loc_BA73A6: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BA73AB: ILdRf var_AC
  loc_BA73AE: FLdPr Me
  loc_BA73B1: MemLdI2 global_108
  loc_BA73B4: CI4UI1
  loc_BA73B5: FLdPr Me
  loc_BA73B8: MemLdI2 global_106
  loc_BA73BB: CI4UI1
  loc_BA73BC: FLdPr Me
  loc_BA73BF: MemLdI2 global_104
  loc_BA73C2: CI4UI1
  loc_BA73C3: FLdPr Me
  loc_BA73C6: MemLdStr global_100
  loc_BA73C9: Ary1LdPr
  loc_BA73CA: MemLdStr global_24
  loc_BA73CD: Ary1LdPr
  loc_BA73CE: MemLdStr global_24
  loc_BA73D1: Ary1LdPr
  loc_BA73D2: MemLdRfVar from_stack_1.global_0
  loc_BA73D5: StFixedStr
  loc_BA73D8: FFree1Str var_AC
  loc_BA73DB: FFreeAd var_90 = ""
  loc_BA73E2: FFreeVar var_BC = ""
  loc_BA73E9: FLdRfVar var_A8
  loc_BA73EC: LitVarStr var_A4, "DetaOrga"
  loc_BA73F1: PopAdLdVar
  loc_BA73F2: FLdRfVar var_94
  loc_BA73F5: FLdRfVar var_90
  loc_BA73F8: FLdPr Me
  loc_BA73FB: MemLdRfVar from_stack_1.global_76
  loc_BA73FE: NewIfNullPr clsimputacion
  loc_BA7401: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BA7406: FLdPr var_90
  loc_BA7409:  = Me.Fields
  loc_BA740E: FLdPr var_94
  loc_BA7411: from_stack_2 = Me.Item(from_stack_1)
  loc_BA7416: LitI2_Byte 0
  loc_BA7418: LitVar_Missing var_DC
  loc_BA741B: LitI2_Byte 0
  loc_BA741D: FLdZeroAd var_A8
  loc_BA7420: CVarAd
  loc_BA7424: PopAdLdVar
  loc_BA7425: FLdPr Me
  loc_BA7428: MemLdI2 global_108
  loc_BA742B: CI4UI1
  loc_BA742C: FLdPr Me
  loc_BA742F: MemLdI2 global_106
  loc_BA7432: CI4UI1
  loc_BA7433: FLdPr Me
  loc_BA7436: MemLdI2 global_104
  loc_BA7439: CI4UI1
  loc_BA743A: FLdPr Me
  loc_BA743D: MemLdStr global_100
  loc_BA7440: AryLock
  loc_BA7443: Ary1LdPr
  loc_BA7444: MemLdStr global_24
  loc_BA7447: AryLock
  loc_BA744A: Ary1LdPr
  loc_BA744B: MemLdStr global_24
  loc_BA744E: AryLock
  loc_BA7451: Ary1LdPr
  loc_BA7452: MemLdRfVar from_stack_1.global_12
  loc_BA7455: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BA745A: AryUnlock
  loc_BA745D: AryUnlock
  loc_BA7460: AryUnlock
  loc_BA7463: FFreeAd var_90 = ""
  loc_BA746A: FFreeVar var_BC = ""
  loc_BA7471: LitI4 0
  loc_BA7476: FLdPr Me
  loc_BA7479: MemLdI2 global_110
  loc_BA747C: CI4UI1
  loc_BA747D: FLdPr Me
  loc_BA7480: MemLdI2 global_108
  loc_BA7483: CI4UI1
  loc_BA7484: FLdPr Me
  loc_BA7487: MemLdI2 global_106
  loc_BA748A: CI4UI1
  loc_BA748B: FLdPr Me
  loc_BA748E: MemLdI2 global_104
  loc_BA7491: CI4UI1
  loc_BA7492: FLdPr Me
  loc_BA7495: MemLdStr global_100
  loc_BA7498: Ary1LdPr
  loc_BA7499: MemLdStr global_24
  loc_BA749C: Ary1LdPr
  loc_BA749D: MemLdStr global_24
  loc_BA74A0: Ary1LdPr
  loc_BA74A1: MemLdRfVar from_stack_1.global_20
  loc_BA74A4: RedimPreserve
  loc_BA74AE: FLdRfVar var_A8
  loc_BA74B1: LitVarStr var_A4, "CodiFifu"
  loc_BA74B6: PopAdLdVar
  loc_BA74B7: FLdRfVar var_94
  loc_BA74BA: FLdRfVar var_90
  loc_BA74BD: FLdPr Me
  loc_BA74C0: MemLdRfVar from_stack_1.global_76
  loc_BA74C3: NewIfNullPr clsimputacion
  loc_BA74C6: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BA74CB: FLdPr var_90
  loc_BA74CE:  = Me.Fields
  loc_BA74D3: FLdPr var_94
  loc_BA74D6: from_stack_2 = Me.Item(from_stack_1)
  loc_BA74DB: LitI2_Byte 0
  loc_BA74DD: LitVar_Missing var_DC
  loc_BA74E0: LitI2_Byte 0
  loc_BA74E2: FLdZeroAd var_A8
  loc_BA74E5: CVarAd
  loc_BA74E9: PopAdLdVar
  loc_BA74EA: FLdPr Me
  loc_BA74ED: MemLdI2 global_110
  loc_BA74F0: CI4UI1
  loc_BA74F1: FLdPr Me
  loc_BA74F4: MemLdI2 global_108
  loc_BA74F7: CI4UI1
  loc_BA74F8: FLdPr Me
  loc_BA74FB: MemLdI2 global_106
  loc_BA74FE: CI4UI1
  loc_BA74FF: FLdPr Me
  loc_BA7502: MemLdI2 global_104
  loc_BA7505: CI4UI1
  loc_BA7506: FLdPr Me
  loc_BA7509: MemLdStr global_100
  loc_BA750C: Ary1LdPr
  loc_BA750D: MemLdStr global_24
  loc_BA7510: Ary1LdPr
  loc_BA7511: MemLdStr global_24
  loc_BA7514: Ary1LdPr
  loc_BA7515: MemLdStr global_20
  loc_BA7518: Ary1LdPr
  loc_BA7519: MemLdRfVar from_stack_1.global_0
  loc_BA751C: LdFixedStr
  loc_BA751F: PopTmpLdAdStr
  loc_BA7523: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BA7528: ILdRf var_AC
  loc_BA752B: FLdPr Me
  loc_BA752E: MemLdI2 global_110
  loc_BA7531: CI4UI1
  loc_BA7532: FLdPr Me
  loc_BA7535: MemLdI2 global_108
  loc_BA7538: CI4UI1
  loc_BA7539: FLdPr Me
  loc_BA753C: MemLdI2 global_106
  loc_BA753F: CI4UI1
  loc_BA7540: FLdPr Me
  loc_BA7543: MemLdI2 global_104
  loc_BA7546: CI4UI1
  loc_BA7547: FLdPr Me
  loc_BA754A: MemLdStr global_100
  loc_BA754D: Ary1LdPr
  loc_BA754E: MemLdStr global_24
  loc_BA7551: Ary1LdPr
  loc_BA7552: MemLdStr global_24
  loc_BA7555: Ary1LdPr
  loc_BA7556: MemLdStr global_20
  loc_BA7559: Ary1LdPr
  loc_BA755A: MemLdRfVar from_stack_1.global_0
  loc_BA755D: StFixedStr
  loc_BA7560: FFree1Str var_AC
  loc_BA7563: FFreeAd var_90 = ""
  loc_BA756A: FFreeVar var_BC = ""
  loc_BA7571: FLdRfVar var_A8
  loc_BA7574: LitVarStr var_A4, "DetaFifu"
  loc_BA7579: PopAdLdVar
  loc_BA757A: FLdRfVar var_94
  loc_BA757D: FLdRfVar var_90
  loc_BA7580: FLdPr Me
  loc_BA7583: MemLdRfVar from_stack_1.global_76
  loc_BA7586: NewIfNullPr clsimputacion
  loc_BA7589: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BA758E: FLdPr var_90
  loc_BA7591:  = Me.Fields
  loc_BA7596: FLdPr var_94
  loc_BA7599: from_stack_2 = Me.Item(from_stack_1)
  loc_BA759E: LitI2_Byte 0
  loc_BA75A0: LitVar_Missing var_DC
  loc_BA75A3: LitI2_Byte 0
  loc_BA75A5: FLdZeroAd var_A8
  loc_BA75A8: CVarAd
  loc_BA75AC: PopAdLdVar
  loc_BA75AD: FLdPr Me
  loc_BA75B0: MemLdI2 global_110
  loc_BA75B3: CI4UI1
  loc_BA75B4: FLdPr Me
  loc_BA75B7: MemLdI2 global_108
  loc_BA75BA: CI4UI1
  loc_BA75BB: FLdPr Me
  loc_BA75BE: MemLdI2 global_106
  loc_BA75C1: CI4UI1
  loc_BA75C2: FLdPr Me
  loc_BA75C5: MemLdI2 global_104
  loc_BA75C8: CI4UI1
  loc_BA75C9: FLdPr Me
  loc_BA75CC: MemLdStr global_100
  loc_BA75CF: AryLock
  loc_BA75D2: Ary1LdPr
  loc_BA75D3: MemLdStr global_24
  loc_BA75D6: AryLock
  loc_BA75D9: Ary1LdPr
  loc_BA75DA: MemLdStr global_24
  loc_BA75DD: AryLock
  loc_BA75E0: Ary1LdPr
  loc_BA75E1: MemLdStr global_20
  loc_BA75E4: AryLock
  loc_BA75E7: Ary1LdPr
  loc_BA75E8: MemLdRfVar from_stack_1.global_12
  loc_BA75EB: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BA75F0: AryUnlock
  loc_BA75F3: AryUnlock
  loc_BA75F6: AryUnlock
  loc_BA75F9: AryUnlock
  loc_BA75FC: FFreeAd var_90 = ""
  loc_BA7603: FFreeVar var_BC = ""
  loc_BA760A: Branch loc_BA77DB
  loc_BA760D: ILdRf var_8C
  loc_BA7610: LitI4 3
  loc_BA7615: EqI4
  loc_BA7616: BranchF loc_BA77CC
  loc_BA7619: FLdPr Me
  loc_BA761C: MemLdI2 global_110
  loc_BA761F: LitI2_Byte 1
  loc_BA7621: AddI2
  loc_BA7622: FLdPr Me
  loc_BA7625: MemStI2 global_110
  loc_BA7628: LitI2_Byte 1
  loc_BA762A: FLdPr Me
  loc_BA762D: MemStI2 global_112
  loc_BA7630: LitI4 0
  loc_BA7635: FLdPr Me
  loc_BA7638: MemLdI2 global_110
  loc_BA763B: CI4UI1
  loc_BA763C: FLdPr Me
  loc_BA763F: MemLdI2 global_108
  loc_BA7642: CI4UI1
  loc_BA7643: FLdPr Me
  loc_BA7646: MemLdI2 global_106
  loc_BA7649: CI4UI1
  loc_BA764A: FLdPr Me
  loc_BA764D: MemLdI2 global_104
  loc_BA7650: CI4UI1
  loc_BA7651: FLdPr Me
  loc_BA7654: MemLdStr global_100
  loc_BA7657: Ary1LdPr
  loc_BA7658: MemLdStr global_24
  loc_BA765B: Ary1LdPr
  loc_BA765C: MemLdStr global_24
  loc_BA765F: Ary1LdPr
  loc_BA7660: MemLdRfVar from_stack_1.global_20
  loc_BA7663: RedimPreserve
  loc_BA766D: FLdRfVar var_A8
  loc_BA7670: LitVarStr var_A4, "CodiFifu"
  loc_BA7675: PopAdLdVar
  loc_BA7676: FLdRfVar var_94
  loc_BA7679: FLdRfVar var_90
  loc_BA767C: FLdPr Me
  loc_BA767F: MemLdRfVar from_stack_1.global_76
  loc_BA7682: NewIfNullPr clsimputacion
  loc_BA7685: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BA768A: FLdPr var_90
  loc_BA768D:  = Me.Fields
  loc_BA7692: FLdPr var_94
  loc_BA7695: from_stack_2 = Me.Item(from_stack_1)
  loc_BA769A: LitI2_Byte 0
  loc_BA769C: LitVar_Missing var_DC
  loc_BA769F: LitI2_Byte 0
  loc_BA76A1: FLdZeroAd var_A8
  loc_BA76A4: CVarAd
  loc_BA76A8: PopAdLdVar
  loc_BA76A9: FLdPr Me
  loc_BA76AC: MemLdI2 global_110
  loc_BA76AF: CI4UI1
  loc_BA76B0: FLdPr Me
  loc_BA76B3: MemLdI2 global_108
  loc_BA76B6: CI4UI1
  loc_BA76B7: FLdPr Me
  loc_BA76BA: MemLdI2 global_106
  loc_BA76BD: CI4UI1
  loc_BA76BE: FLdPr Me
  loc_BA76C1: MemLdI2 global_104
  loc_BA76C4: CI4UI1
  loc_BA76C5: FLdPr Me
  loc_BA76C8: MemLdStr global_100
  loc_BA76CB: Ary1LdPr
  loc_BA76CC: MemLdStr global_24
  loc_BA76CF: Ary1LdPr
  loc_BA76D0: MemLdStr global_24
  loc_BA76D3: Ary1LdPr
  loc_BA76D4: MemLdStr global_20
  loc_BA76D7: Ary1LdPr
  loc_BA76D8: MemLdRfVar from_stack_1.global_0
  loc_BA76DB: LdFixedStr
  loc_BA76DE: PopTmpLdAdStr
  loc_BA76E2: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BA76E7: ILdRf var_AC
  loc_BA76EA: FLdPr Me
  loc_BA76ED: MemLdI2 global_110
  loc_BA76F0: CI4UI1
  loc_BA76F1: FLdPr Me
  loc_BA76F4: MemLdI2 global_108
  loc_BA76F7: CI4UI1
  loc_BA76F8: FLdPr Me
  loc_BA76FB: MemLdI2 global_106
  loc_BA76FE: CI4UI1
  loc_BA76FF: FLdPr Me
  loc_BA7702: MemLdI2 global_104
  loc_BA7705: CI4UI1
  loc_BA7706: FLdPr Me
  loc_BA7709: MemLdStr global_100
  loc_BA770C: Ary1LdPr
  loc_BA770D: MemLdStr global_24
  loc_BA7710: Ary1LdPr
  loc_BA7711: MemLdStr global_24
  loc_BA7714: Ary1LdPr
  loc_BA7715: MemLdStr global_20
  loc_BA7718: Ary1LdPr
  loc_BA7719: MemLdRfVar from_stack_1.global_0
  loc_BA771C: StFixedStr
  loc_BA771F: FFree1Str var_AC
  loc_BA7722: FFreeAd var_90 = ""
  loc_BA7729: FFreeVar var_BC = ""
  loc_BA7730: FLdRfVar var_A8
  loc_BA7733: LitVarStr var_A4, "DetaFifu"
  loc_BA7738: PopAdLdVar
  loc_BA7739: FLdRfVar var_94
  loc_BA773C: FLdRfVar var_90
  loc_BA773F: FLdPr Me
  loc_BA7742: MemLdRfVar from_stack_1.global_76
  loc_BA7745: NewIfNullPr clsimputacion
  loc_BA7748: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BA774D: FLdPr var_90
  loc_BA7750:  = Me.Fields
  loc_BA7755: FLdPr var_94
  loc_BA7758: from_stack_2 = Me.Item(from_stack_1)
  loc_BA775D: LitI2_Byte 0
  loc_BA775F: LitVar_Missing var_DC
  loc_BA7762: LitI2_Byte 0
  loc_BA7764: FLdZeroAd var_A8
  loc_BA7767: CVarAd
  loc_BA776B: PopAdLdVar
  loc_BA776C: FLdPr Me
  loc_BA776F: MemLdI2 global_110
  loc_BA7772: CI4UI1
  loc_BA7773: FLdPr Me
  loc_BA7776: MemLdI2 global_108
  loc_BA7779: CI4UI1
  loc_BA777A: FLdPr Me
  loc_BA777D: MemLdI2 global_106
  loc_BA7780: CI4UI1
  loc_BA7781: FLdPr Me
  loc_BA7784: MemLdI2 global_104
  loc_BA7787: CI4UI1
  loc_BA7788: FLdPr Me
  loc_BA778B: MemLdStr global_100
  loc_BA778E: AryLock
  loc_BA7791: Ary1LdPr
  loc_BA7792: MemLdStr global_24
  loc_BA7795: AryLock
  loc_BA7798: Ary1LdPr
  loc_BA7799: MemLdStr global_24
  loc_BA779C: AryLock
  loc_BA779F: Ary1LdPr
  loc_BA77A0: MemLdStr global_20
  loc_BA77A3: AryLock
  loc_BA77A6: Ary1LdPr
  loc_BA77A7: MemLdRfVar from_stack_1.global_12
  loc_BA77AA: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BA77AF: AryUnlock
  loc_BA77B2: AryUnlock
  loc_BA77B5: AryUnlock
  loc_BA77B8: AryUnlock
  loc_BA77BB: FFreeAd var_90 = ""
  loc_BA77C2: FFreeVar var_BC = ""
  loc_BA77C9: Branch loc_BA77DB
  loc_BA77CC: FLdPr Me
  loc_BA77CF: MemLdI2 global_112
  loc_BA77D2: LitI2_Byte 1
  loc_BA77D4: AddI2
  loc_BA77D5: FLdPr Me
  loc_BA77D8: MemStI2 global_112
  loc_BA77DB: LitI4 0
  loc_BA77E0: FLdPr Me
  loc_BA77E3: MemLdI2 global_112
  loc_BA77E6: CI4UI1
  loc_BA77E7: FLdPr Me
  loc_BA77EA: MemLdI2 global_110
  loc_BA77ED: CI4UI1
  loc_BA77EE: FLdPr Me
  loc_BA77F1: MemLdI2 global_108
  loc_BA77F4: CI4UI1
  loc_BA77F5: FLdPr Me
  loc_BA77F8: MemLdI2 global_106
  loc_BA77FB: CI4UI1
  loc_BA77FC: FLdPr Me
  loc_BA77FF: MemLdI2 global_104
  loc_BA7802: CI4UI1
  loc_BA7803: FLdPr Me
  loc_BA7806: MemLdStr global_100
  loc_BA7809: Ary1LdPr
  loc_BA780A: MemLdStr global_24
  loc_BA780D: Ary1LdPr
  loc_BA780E: MemLdStr global_24
  loc_BA7811: Ary1LdPr
  loc_BA7812: MemLdStr global_20
  loc_BA7815: Ary1LdPr
  loc_BA7816: MemLdRfVar from_stack_1.global_20
  loc_BA7819: RedimPreserve
  loc_BA7823: LitI4 0
  loc_BA7828: LitI4 5
  loc_BA782D: FLdPr Me
  loc_BA7830: MemLdI2 global_112
  loc_BA7833: CI4UI1
  loc_BA7834: FLdPr Me
  loc_BA7837: MemLdI2 global_110
  loc_BA783A: CI4UI1
  loc_BA783B: FLdPr Me
  loc_BA783E: MemLdI2 global_108
  loc_BA7841: CI4UI1
  loc_BA7842: FLdPr Me
  loc_BA7845: MemLdI2 global_106
  loc_BA7848: CI4UI1
  loc_BA7849: FLdPr Me
  loc_BA784C: MemLdI2 global_104
  loc_BA784F: CI4UI1
  loc_BA7850: FLdPr Me
  loc_BA7853: MemLdStr global_100
  loc_BA7856: Ary1LdPr
  loc_BA7857: MemLdStr global_24
  loc_BA785A: Ary1LdPr
  loc_BA785B: MemLdStr global_24
  loc_BA785E: Ary1LdPr
  loc_BA785F: MemLdStr global_20
  loc_BA7862: Ary1LdPr
  loc_BA7863: MemLdStr global_20
  loc_BA7866: Ary1LdPr
  loc_BA7867: MemLdRfVar from_stack_1.global_24
  loc_BA786A: RedimPreserve
  loc_BA7874: ExitProcHresult
End Function

Private Function Proc_186_43_B96134() 'B96134
  'Data Table: 4DCA5C
  loc_B952AC: FLdPr Me
  loc_B952AF: MemLdRfVar from_stack_1.global_76
  loc_B952B2: NewIfNullAd
  loc_B952B5: FStAd var_88 
  loc_B952B9: FLdRfVar var_A4
  loc_B952BC: LitVarStr var_A0, "DetaImpu"
  loc_B952C1: PopAdLdVar
  loc_B952C2: FLdRfVar var_90
  loc_B952C5: FLdRfVar var_8C
  loc_B952C8: FLdPr var_88
  loc_B952CB: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B952D0: FLdPr var_8C
  loc_B952D3:  = Me.Fields
  loc_B952D8: FLdPr var_90
  loc_B952DB: from_stack_2 = Me.Item(from_stack_1)
  loc_B952E0: LitI2_Byte 0
  loc_B952E2: LitVar_Missing var_E8
  loc_B952E5: LitI2_Byte 0
  loc_B952E7: FLdZeroAd var_A4
  loc_B952EA: CVarAd
  loc_B952EE: PopAdLdVar
  loc_B952EF: FLdPr Me
  loc_B952F2: MemLdI2 global_112
  loc_B952F5: CI4UI1
  loc_B952F6: FLdPr Me
  loc_B952F9: MemLdI2 global_110
  loc_B952FC: CI4UI1
  loc_B952FD: FLdPr Me
  loc_B95300: MemLdI2 global_108
  loc_B95303: CI4UI1
  loc_B95304: FLdPr Me
  loc_B95307: MemLdI2 global_106
  loc_B9530A: CI4UI1
  loc_B9530B: FLdPr Me
  loc_B9530E: MemLdI2 global_104
  loc_B95311: CI4UI1
  loc_B95312: FLdPr Me
  loc_B95315: MemLdStr global_100
  loc_B95318: AryLock
  loc_B9531B: Ary1LdPr
  loc_B9531C: MemLdStr global_24
  loc_B9531F: AryLock
  loc_B95322: Ary1LdPr
  loc_B95323: MemLdStr global_24
  loc_B95326: AryLock
  loc_B95329: Ary1LdPr
  loc_B9532A: MemLdStr global_20
  loc_B9532D: AryLock
  loc_B95330: Ary1LdPr
  loc_B95331: MemLdStr global_20
  loc_B95334: AryLock
  loc_B95337: Ary1LdPr
  loc_B95338: MemLdRfVar from_stack_1.global_0
  loc_B9533B: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B95340: AryUnlock
  loc_B95343: AryUnlock
  loc_B95346: AryUnlock
  loc_B95349: AryUnlock
  loc_B9534C: AryUnlock
  loc_B9534F: FFreeAd var_8C = ""
  loc_B95356: FFreeVar var_C8 = ""
  loc_B9535D: FLdRfVar var_A4
  loc_B95360: LitVarStr var_A0, "ExorImpu"
  loc_B95365: PopAdLdVar
  loc_B95366: FLdRfVar var_90
  loc_B95369: FLdRfVar var_8C
  loc_B9536C: FLdPr var_88
  loc_B9536F: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B95374: FLdPr var_8C
  loc_B95377:  = Me.Fields
  loc_B9537C: FLdPr var_90
  loc_B9537F: from_stack_2 = Me.Item(from_stack_1)
  loc_B95384: LitI2_Byte 0
  loc_B95386: LitVar_Missing var_E8
  loc_B95389: LitI2_Byte 0
  loc_B9538B: FLdZeroAd var_A4
  loc_B9538E: CVarAd
  loc_B95392: PopAdLdVar
  loc_B95393: FLdPr Me
  loc_B95396: MemLdI2 global_112
  loc_B95399: CI4UI1
  loc_B9539A: FLdPr Me
  loc_B9539D: MemLdI2 global_110
  loc_B953A0: CI4UI1
  loc_B953A1: FLdPr Me
  loc_B953A4: MemLdI2 global_108
  loc_B953A7: CI4UI1
  loc_B953A8: FLdPr Me
  loc_B953AB: MemLdI2 global_106
  loc_B953AE: CI4UI1
  loc_B953AF: FLdPr Me
  loc_B953B2: MemLdI2 global_104
  loc_B953B5: CI4UI1
  loc_B953B6: FLdPr Me
  loc_B953B9: MemLdStr global_100
  loc_B953BC: AryLock
  loc_B953BF: Ary1LdPr
  loc_B953C0: MemLdStr global_24
  loc_B953C3: AryLock
  loc_B953C6: Ary1LdPr
  loc_B953C7: MemLdStr global_24
  loc_B953CA: AryLock
  loc_B953CD: Ary1LdPr
  loc_B953CE: MemLdStr global_20
  loc_B953D1: AryLock
  loc_B953D4: Ary1LdPr
  loc_B953D5: MemLdStr global_20
  loc_B953D8: AryLock
  loc_B953DB: Ary1LdPr
  loc_B953DC: MemLdRfVar from_stack_1.global_4
  loc_B953DF: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B953E4: AryUnlock
  loc_B953E7: AryUnlock
  loc_B953EA: AryUnlock
  loc_B953ED: AryUnlock
  loc_B953F0: AryUnlock
  loc_B953F3: FFreeAd var_8C = ""
  loc_B953FA: FFreeVar var_C8 = ""
  loc_B95401: FLdRfVar var_A4
  loc_B95404: LitVarStr var_A0, "ExpeImpu"
  loc_B95409: PopAdLdVar
  loc_B9540A: FLdRfVar var_90
  loc_B9540D: FLdRfVar var_8C
  loc_B95410: FLdPr var_88
  loc_B95413: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B95418: FLdPr var_8C
  loc_B9541B:  = Me.Fields
  loc_B95420: FLdPr var_90
  loc_B95423: from_stack_2 = Me.Item(from_stack_1)
  loc_B95428: LitI2_Byte 0
  loc_B9542A: LitVar_Missing var_E8
  loc_B9542D: LitI2_Byte 0
  loc_B9542F: FLdZeroAd var_A4
  loc_B95432: CVarAd
  loc_B95436: PopAdLdVar
  loc_B95437: FLdPr Me
  loc_B9543A: MemLdI2 global_112
  loc_B9543D: CI4UI1
  loc_B9543E: FLdPr Me
  loc_B95441: MemLdI2 global_110
  loc_B95444: CI4UI1
  loc_B95445: FLdPr Me
  loc_B95448: MemLdI2 global_108
  loc_B9544B: CI4UI1
  loc_B9544C: FLdPr Me
  loc_B9544F: MemLdI2 global_106
  loc_B95452: CI4UI1
  loc_B95453: FLdPr Me
  loc_B95456: MemLdI2 global_104
  loc_B95459: CI4UI1
  loc_B9545A: FLdPr Me
  loc_B9545D: MemLdStr global_100
  loc_B95460: AryLock
  loc_B95463: Ary1LdPr
  loc_B95464: MemLdStr global_24
  loc_B95467: AryLock
  loc_B9546A: Ary1LdPr
  loc_B9546B: MemLdStr global_24
  loc_B9546E: AryLock
  loc_B95471: Ary1LdPr
  loc_B95472: MemLdStr global_20
  loc_B95475: AryLock
  loc_B95478: Ary1LdPr
  loc_B95479: MemLdStr global_20
  loc_B9547C: AryLock
  loc_B9547F: Ary1LdPr
  loc_B95480: MemLdRfVar from_stack_1.global_8
  loc_B95483: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B95488: AryUnlock
  loc_B9548B: AryUnlock
  loc_B9548E: AryUnlock
  loc_B95491: AryUnlock
  loc_B95494: AryUnlock
  loc_B95497: FFreeAd var_8C = ""
  loc_B9549E: FFreeVar var_C8 = ""
  loc_B954A5: FLdRfVar var_A4
  loc_B954A8: LitVarStr var_A0, "CucuPers"
  loc_B954AD: PopAdLdVar
  loc_B954AE: FLdRfVar var_90
  loc_B954B1: FLdRfVar var_8C
  loc_B954B4: FLdPr var_88
  loc_B954B7: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B954BC: FLdPr var_8C
  loc_B954BF:  = Me.Fields
  loc_B954C4: FLdPr var_90
  loc_B954C7: from_stack_2 = Me.Item(from_stack_1)
  loc_B954CC: LitI2_Byte 0
  loc_B954CE: LitVar_Missing var_E8
  loc_B954D1: LitI2_Byte 0
  loc_B954D3: FLdZeroAd var_A4
  loc_B954D6: CVarAd
  loc_B954DA: PopAdLdVar
  loc_B954DB: FLdPr Me
  loc_B954DE: MemLdI2 global_112
  loc_B954E1: CI4UI1
  loc_B954E2: FLdPr Me
  loc_B954E5: MemLdI2 global_110
  loc_B954E8: CI4UI1
  loc_B954E9: FLdPr Me
  loc_B954EC: MemLdI2 global_108
  loc_B954EF: CI4UI1
  loc_B954F0: FLdPr Me
  loc_B954F3: MemLdI2 global_106
  loc_B954F6: CI4UI1
  loc_B954F7: FLdPr Me
  loc_B954FA: MemLdI2 global_104
  loc_B954FD: CI4UI1
  loc_B954FE: FLdPr Me
  loc_B95501: MemLdStr global_100
  loc_B95504: AryLock
  loc_B95507: Ary1LdPr
  loc_B95508: MemLdStr global_24
  loc_B9550B: AryLock
  loc_B9550E: Ary1LdPr
  loc_B9550F: MemLdStr global_24
  loc_B95512: AryLock
  loc_B95515: Ary1LdPr
  loc_B95516: MemLdStr global_20
  loc_B95519: AryLock
  loc_B9551C: Ary1LdPr
  loc_B9551D: MemLdStr global_20
  loc_B95520: AryLock
  loc_B95523: Ary1LdPr
  loc_B95524: MemLdRfVar from_stack_1.global_12
  loc_B95527: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B9552C: AryUnlock
  loc_B9552F: AryUnlock
  loc_B95532: AryUnlock
  loc_B95535: AryUnlock
  loc_B95538: AryUnlock
  loc_B9553B: FFreeAd var_8C = ""
  loc_B95542: FFreeVar var_C8 = ""
  loc_B95549: FLdRfVar var_A4
  loc_B9554C: LitVarStr var_A0, "CantImpu"
  loc_B95551: PopAdLdVar
  loc_B95552: FLdRfVar var_90
  loc_B95555: FLdRfVar var_8C
  loc_B95558: FLdPr var_88
  loc_B9555B: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B95560: FLdPr var_8C
  loc_B95563:  = Me.Fields
  loc_B95568: FLdPr var_90
  loc_B9556B: from_stack_2 = Me.Item(from_stack_1)
  loc_B95570: LitI2_Byte 0
  loc_B95572: LitVar_Missing var_E8
  loc_B95575: LitI2_Byte 0
  loc_B95577: FLdZeroAd var_A4
  loc_B9557A: CVarAd
  loc_B9557E: PopAdLdVar
  loc_B9557F: FLdPr Me
  loc_B95582: MemLdI2 global_112
  loc_B95585: CI4UI1
  loc_B95586: FLdPr Me
  loc_B95589: MemLdI2 global_110
  loc_B9558C: CI4UI1
  loc_B9558D: FLdPr Me
  loc_B95590: MemLdI2 global_108
  loc_B95593: CI4UI1
  loc_B95594: FLdPr Me
  loc_B95597: MemLdI2 global_106
  loc_B9559A: CI4UI1
  loc_B9559B: FLdPr Me
  loc_B9559E: MemLdI2 global_104
  loc_B955A1: CI4UI1
  loc_B955A2: FLdPr Me
  loc_B955A5: MemLdStr global_100
  loc_B955A8: AryLock
  loc_B955AB: Ary1LdPr
  loc_B955AC: MemLdStr global_24
  loc_B955AF: AryLock
  loc_B955B2: Ary1LdPr
  loc_B955B3: MemLdStr global_24
  loc_B955B6: AryLock
  loc_B955B9: Ary1LdPr
  loc_B955BA: MemLdStr global_20
  loc_B955BD: AryLock
  loc_B955C0: Ary1LdPr
  loc_B955C1: MemLdStr global_20
  loc_B955C4: AryLock
  loc_B955C7: Ary1LdPr
  loc_B955C8: MemLdRfVar from_stack_1.global_16
  loc_B955CB: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B955D0: AryUnlock
  loc_B955D3: AryUnlock
  loc_B955D6: AryUnlock
  loc_B955D9: AryUnlock
  loc_B955DC: AryUnlock
  loc_B955DF: FFreeAd var_8C = ""
  loc_B955E6: FFreeVar var_C8 = ""
  loc_B955ED: FLdRfVar var_A4
  loc_B955F0: LitVarStr var_A0, "ImunImpu"
  loc_B955F5: PopAdLdVar
  loc_B955F6: FLdRfVar var_90
  loc_B955F9: FLdRfVar var_8C
  loc_B955FC: FLdPr var_88
  loc_B955FF: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B95604: FLdPr var_8C
  loc_B95607:  = Me.Fields
  loc_B9560C: FLdPr var_90
  loc_B9560F: from_stack_2 = Me.Item(from_stack_1)
  loc_B95614: LitI2_Byte 0
  loc_B95616: LitVar_Missing var_E8
  loc_B95619: LitI2_Byte &HFF
  loc_B9561B: FLdZeroAd var_A4
  loc_B9561E: CVarAd
  loc_B95622: PopAdLdVar
  loc_B95623: FLdPr Me
  loc_B95626: MemLdI2 global_112
  loc_B95629: CI4UI1
  loc_B9562A: FLdPr Me
  loc_B9562D: MemLdI2 global_110
  loc_B95630: CI4UI1
  loc_B95631: FLdPr Me
  loc_B95634: MemLdI2 global_108
  loc_B95637: CI4UI1
  loc_B95638: FLdPr Me
  loc_B9563B: MemLdI2 global_106
  loc_B9563E: CI4UI1
  loc_B9563F: FLdPr Me
  loc_B95642: MemLdI2 global_104
  loc_B95645: CI4UI1
  loc_B95646: FLdPr Me
  loc_B95649: MemLdStr global_100
  loc_B9564C: AryLock
  loc_B9564F: Ary1LdPr
  loc_B95650: MemLdStr global_24
  loc_B95653: AryLock
  loc_B95656: Ary1LdPr
  loc_B95657: MemLdStr global_24
  loc_B9565A: AryLock
  loc_B9565D: Ary1LdPr
  loc_B9565E: MemLdStr global_20
  loc_B95661: AryLock
  loc_B95664: Ary1LdPr
  loc_B95665: MemLdStr global_20
  loc_B95668: AryLock
  loc_B9566B: Ary1LdPr
  loc_B9566C: MemLdRfVar from_stack_1.global_20
  loc_B9566F: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B95674: AryUnlock
  loc_B95677: AryUnlock
  loc_B9567A: AryUnlock
  loc_B9567D: AryUnlock
  loc_B95680: AryUnlock
  loc_B95683: FFreeAd var_8C = ""
  loc_B9568A: FFreeVar var_C8 = ""
  loc_B95691: LitI2_Byte 0
  loc_B95693: LitI4 1
  loc_B95698: FLdPr Me
  loc_B9569B: MemLdI2 global_110
  loc_B9569E: CI4UI1
  loc_B9569F: FLdPr Me
  loc_B956A2: MemLdI2 global_108
  loc_B956A5: CI4UI1
  loc_B956A6: FLdPr Me
  loc_B956A9: MemLdI2 global_106
  loc_B956AC: CI4UI1
  loc_B956AD: FLdPr Me
  loc_B956B0: MemLdI2 global_104
  loc_B956B3: CI4UI1
  loc_B956B4: FLdPr Me
  loc_B956B7: MemLdStr global_100
  loc_B956BA: AryLock
  loc_B956BD: Ary1LdPr
  loc_B956BE: MemLdStr global_24
  loc_B956C1: AryLock
  loc_B956C4: Ary1LdPr
  loc_B956C5: MemLdStr global_24
  loc_B956C8: AryLock
  loc_B956CB: Ary1LdPr
  loc_B956CC: MemLdStr global_20
  loc_B956CF: AryLock
  loc_B956D2: Ary1LdPr
  loc_B956D3: MemLdRfVar from_stack_1.global_24
  loc_B956D6: AryInRecLdRf
  loc_B956DC: CVarRef
  loc_B956E1: LitI2_Byte &HFF
  loc_B956E3: LitVarI2 var_A0, 0
  loc_B956E8: PopAdLdVar
  loc_B956E9: LitI4 1
  loc_B956EE: FLdPr Me
  loc_B956F1: MemLdI2 global_112
  loc_B956F4: CI4UI1
  loc_B956F5: FLdPr Me
  loc_B956F8: MemLdI2 global_110
  loc_B956FB: CI4UI1
  loc_B956FC: FLdPr Me
  loc_B956FF: MemLdI2 global_108
  loc_B95702: CI4UI1
  loc_B95703: FLdPr Me
  loc_B95706: MemLdI2 global_106
  loc_B95709: CI4UI1
  loc_B9570A: FLdPr Me
  loc_B9570D: MemLdI2 global_104
  loc_B95710: CI4UI1
  loc_B95711: FLdPr Me
  loc_B95714: MemLdStr global_100
  loc_B95717: AryLock
  loc_B9571A: Ary1LdPr
  loc_B9571B: MemLdStr global_24
  loc_B9571E: AryLock
  loc_B95721: Ary1LdPr
  loc_B95722: MemLdStr global_24
  loc_B95725: AryLock
  loc_B95728: Ary1LdPr
  loc_B95729: MemLdStr global_20
  loc_B9572C: AryLock
  loc_B9572F: Ary1LdPr
  loc_B95730: MemLdStr global_20
  loc_B95733: AryLock
  loc_B95736: Ary1LdPr
  loc_B95737: MemLdStr global_24
  loc_B9573A: AryLock
  loc_B9573D: Ary1LdRf
  loc_B9573E: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B95743: AryUnlock
  loc_B95746: AryUnlock
  loc_B95749: AryUnlock
  loc_B9574C: AryUnlock
  loc_B9574F: AryUnlock
  loc_B95752: AryUnlock
  loc_B95755: AryUnlock
  loc_B95758: AryUnlock
  loc_B9575B: AryUnlock
  loc_B9575E: AryUnlock
  loc_B95761: LitI2_Byte 0
  loc_B95763: LitI4 2
  loc_B95768: FLdPr Me
  loc_B9576B: MemLdI2 global_110
  loc_B9576E: CI4UI1
  loc_B9576F: FLdPr Me
  loc_B95772: MemLdI2 global_108
  loc_B95775: CI4UI1
  loc_B95776: FLdPr Me
  loc_B95779: MemLdI2 global_106
  loc_B9577C: CI4UI1
  loc_B9577D: FLdPr Me
  loc_B95780: MemLdI2 global_104
  loc_B95783: CI4UI1
  loc_B95784: FLdPr Me
  loc_B95787: MemLdStr global_100
  loc_B9578A: AryLock
  loc_B9578D: Ary1LdPr
  loc_B9578E: MemLdStr global_24
  loc_B95791: AryLock
  loc_B95794: Ary1LdPr
  loc_B95795: MemLdStr global_24
  loc_B95798: AryLock
  loc_B9579B: Ary1LdPr
  loc_B9579C: MemLdStr global_20
  loc_B9579F: AryLock
  loc_B957A2: Ary1LdPr
  loc_B957A3: MemLdRfVar from_stack_1.global_24
  loc_B957A6: AryInRecLdRf
  loc_B957AC: CVarRef
  loc_B957B1: LitI2_Byte &HFF
  loc_B957B3: LitVarI2 var_A0, 0
  loc_B957B8: PopAdLdVar
  loc_B957B9: LitI4 2
  loc_B957BE: FLdPr Me
  loc_B957C1: MemLdI2 global_112
  loc_B957C4: CI4UI1
  loc_B957C5: FLdPr Me
  loc_B957C8: MemLdI2 global_110
  loc_B957CB: CI4UI1
  loc_B957CC: FLdPr Me
  loc_B957CF: MemLdI2 global_108
  loc_B957D2: CI4UI1
  loc_B957D3: FLdPr Me
  loc_B957D6: MemLdI2 global_106
  loc_B957D9: CI4UI1
  loc_B957DA: FLdPr Me
  loc_B957DD: MemLdI2 global_104
  loc_B957E0: CI4UI1
  loc_B957E1: FLdPr Me
  loc_B957E4: MemLdStr global_100
  loc_B957E7: AryLock
  loc_B957EA: Ary1LdPr
  loc_B957EB: MemLdStr global_24
  loc_B957EE: AryLock
  loc_B957F1: Ary1LdPr
  loc_B957F2: MemLdStr global_24
  loc_B957F5: AryLock
  loc_B957F8: Ary1LdPr
  loc_B957F9: MemLdStr global_20
  loc_B957FC: AryLock
  loc_B957FF: Ary1LdPr
  loc_B95800: MemLdStr global_20
  loc_B95803: AryLock
  loc_B95806: Ary1LdPr
  loc_B95807: MemLdStr global_24
  loc_B9580A: AryLock
  loc_B9580D: Ary1LdRf
  loc_B9580E: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B95813: AryUnlock
  loc_B95816: AryUnlock
  loc_B95819: AryUnlock
  loc_B9581C: AryUnlock
  loc_B9581F: AryUnlock
  loc_B95822: AryUnlock
  loc_B95825: AryUnlock
  loc_B95828: AryUnlock
  loc_B9582B: AryUnlock
  loc_B9582E: AryUnlock
  loc_B95831: LitI2_Byte 0
  loc_B95833: LitI4 3
  loc_B95838: FLdPr Me
  loc_B9583B: MemLdI2 global_110
  loc_B9583E: CI4UI1
  loc_B9583F: FLdPr Me
  loc_B95842: MemLdI2 global_108
  loc_B95845: CI4UI1
  loc_B95846: FLdPr Me
  loc_B95849: MemLdI2 global_106
  loc_B9584C: CI4UI1
  loc_B9584D: FLdPr Me
  loc_B95850: MemLdI2 global_104
  loc_B95853: CI4UI1
  loc_B95854: FLdPr Me
  loc_B95857: MemLdStr global_100
  loc_B9585A: AryLock
  loc_B9585D: Ary1LdPr
  loc_B9585E: MemLdStr global_24
  loc_B95861: AryLock
  loc_B95864: Ary1LdPr
  loc_B95865: MemLdStr global_24
  loc_B95868: AryLock
  loc_B9586B: Ary1LdPr
  loc_B9586C: MemLdStr global_20
  loc_B9586F: AryLock
  loc_B95872: Ary1LdPr
  loc_B95873: MemLdRfVar from_stack_1.global_24
  loc_B95876: AryInRecLdRf
  loc_B9587C: CVarRef
  loc_B95881: LitI2_Byte &HFF
  loc_B95883: LitVarI2 var_A0, 0
  loc_B95888: PopAdLdVar
  loc_B95889: LitI4 3
  loc_B9588E: FLdPr Me
  loc_B95891: MemLdI2 global_112
  loc_B95894: CI4UI1
  loc_B95895: FLdPr Me
  loc_B95898: MemLdI2 global_110
  loc_B9589B: CI4UI1
  loc_B9589C: FLdPr Me
  loc_B9589F: MemLdI2 global_108
  loc_B958A2: CI4UI1
  loc_B958A3: FLdPr Me
  loc_B958A6: MemLdI2 global_106
  loc_B958A9: CI4UI1
  loc_B958AA: FLdPr Me
  loc_B958AD: MemLdI2 global_104
  loc_B958B0: CI4UI1
  loc_B958B1: FLdPr Me
  loc_B958B4: MemLdStr global_100
  loc_B958B7: AryLock
  loc_B958BA: Ary1LdPr
  loc_B958BB: MemLdStr global_24
  loc_B958BE: AryLock
  loc_B958C1: Ary1LdPr
  loc_B958C2: MemLdStr global_24
  loc_B958C5: AryLock
  loc_B958C8: Ary1LdPr
  loc_B958C9: MemLdStr global_20
  loc_B958CC: AryLock
  loc_B958CF: Ary1LdPr
  loc_B958D0: MemLdStr global_20
  loc_B958D3: AryLock
  loc_B958D6: Ary1LdPr
  loc_B958D7: MemLdStr global_24
  loc_B958DA: AryLock
  loc_B958DD: Ary1LdRf
  loc_B958DE: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B958E3: AryUnlock
  loc_B958E6: AryUnlock
  loc_B958E9: AryUnlock
  loc_B958EC: AryUnlock
  loc_B958EF: AryUnlock
  loc_B958F2: AryUnlock
  loc_B958F5: AryUnlock
  loc_B958F8: AryUnlock
  loc_B958FB: AryUnlock
  loc_B958FE: AryUnlock
  loc_B95901: LitI2_Byte 0
  loc_B95903: LitI4 4
  loc_B95908: FLdPr Me
  loc_B9590B: MemLdI2 global_110
  loc_B9590E: CI4UI1
  loc_B9590F: FLdPr Me
  loc_B95912: MemLdI2 global_108
  loc_B95915: CI4UI1
  loc_B95916: FLdPr Me
  loc_B95919: MemLdI2 global_106
  loc_B9591C: CI4UI1
  loc_B9591D: FLdPr Me
  loc_B95920: MemLdI2 global_104
  loc_B95923: CI4UI1
  loc_B95924: FLdPr Me
  loc_B95927: MemLdStr global_100
  loc_B9592A: AryLock
  loc_B9592D: Ary1LdPr
  loc_B9592E: MemLdStr global_24
  loc_B95931: AryLock
  loc_B95934: Ary1LdPr
  loc_B95935: MemLdStr global_24
  loc_B95938: AryLock
  loc_B9593B: Ary1LdPr
  loc_B9593C: MemLdStr global_20
  loc_B9593F: AryLock
  loc_B95942: Ary1LdPr
  loc_B95943: MemLdRfVar from_stack_1.global_24
  loc_B95946: AryInRecLdRf
  loc_B9594C: CVarRef
  loc_B95951: LitI2_Byte &HFF
  loc_B95953: LitVarI2 var_A0, 0
  loc_B95958: PopAdLdVar
  loc_B95959: LitI4 4
  loc_B9595E: FLdPr Me
  loc_B95961: MemLdI2 global_112
  loc_B95964: CI4UI1
  loc_B95965: FLdPr Me
  loc_B95968: MemLdI2 global_110
  loc_B9596B: CI4UI1
  loc_B9596C: FLdPr Me
  loc_B9596F: MemLdI2 global_108
  loc_B95972: CI4UI1
  loc_B95973: FLdPr Me
  loc_B95976: MemLdI2 global_106
  loc_B95979: CI4UI1
  loc_B9597A: FLdPr Me
  loc_B9597D: MemLdI2 global_104
  loc_B95980: CI4UI1
  loc_B95981: FLdPr Me
  loc_B95984: MemLdStr global_100
  loc_B95987: AryLock
  loc_B9598A: Ary1LdPr
  loc_B9598B: MemLdStr global_24
  loc_B9598E: AryLock
  loc_B95991: Ary1LdPr
  loc_B95992: MemLdStr global_24
  loc_B95995: AryLock
  loc_B95998: Ary1LdPr
  loc_B95999: MemLdStr global_20
  loc_B9599C: AryLock
  loc_B9599F: Ary1LdPr
  loc_B959A0: MemLdStr global_20
  loc_B959A3: AryLock
  loc_B959A6: Ary1LdPr
  loc_B959A7: MemLdStr global_24
  loc_B959AA: AryLock
  loc_B959AD: Ary1LdRf
  loc_B959AE: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B959B3: AryUnlock
  loc_B959B6: AryUnlock
  loc_B959B9: AryUnlock
  loc_B959BC: AryUnlock
  loc_B959BF: AryUnlock
  loc_B959C2: AryUnlock
  loc_B959C5: AryUnlock
  loc_B959C8: AryUnlock
  loc_B959CB: AryUnlock
  loc_B959CE: AryUnlock
  loc_B959D1: LitI2_Byte 0
  loc_B959D3: LitI4 5
  loc_B959D8: FLdPr Me
  loc_B959DB: MemLdI2 global_110
  loc_B959DE: CI4UI1
  loc_B959DF: FLdPr Me
  loc_B959E2: MemLdI2 global_108
  loc_B959E5: CI4UI1
  loc_B959E6: FLdPr Me
  loc_B959E9: MemLdI2 global_106
  loc_B959EC: CI4UI1
  loc_B959ED: FLdPr Me
  loc_B959F0: MemLdI2 global_104
  loc_B959F3: CI4UI1
  loc_B959F4: FLdPr Me
  loc_B959F7: MemLdStr global_100
  loc_B959FA: AryLock
  loc_B959FD: Ary1LdPr
  loc_B959FE: MemLdStr global_24
  loc_B95A01: AryLock
  loc_B95A04: Ary1LdPr
  loc_B95A05: MemLdStr global_24
  loc_B95A08: AryLock
  loc_B95A0B: Ary1LdPr
  loc_B95A0C: MemLdStr global_20
  loc_B95A0F: AryLock
  loc_B95A12: Ary1LdPr
  loc_B95A13: MemLdRfVar from_stack_1.global_24
  loc_B95A16: AryInRecLdRf
  loc_B95A1C: CVarRef
  loc_B95A21: LitI2_Byte &HFF
  loc_B95A23: LitVarI2 var_A0, 0
  loc_B95A28: PopAdLdVar
  loc_B95A29: LitI4 5
  loc_B95A2E: FLdPr Me
  loc_B95A31: MemLdI2 global_112
  loc_B95A34: CI4UI1
  loc_B95A35: FLdPr Me
  loc_B95A38: MemLdI2 global_110
  loc_B95A3B: CI4UI1
  loc_B95A3C: FLdPr Me
  loc_B95A3F: MemLdI2 global_108
  loc_B95A42: CI4UI1
  loc_B95A43: FLdPr Me
  loc_B95A46: MemLdI2 global_106
  loc_B95A49: CI4UI1
  loc_B95A4A: FLdPr Me
  loc_B95A4D: MemLdI2 global_104
  loc_B95A50: CI4UI1
  loc_B95A51: FLdPr Me
  loc_B95A54: MemLdStr global_100
  loc_B95A57: AryLock
  loc_B95A5A: Ary1LdPr
  loc_B95A5B: MemLdStr global_24
  loc_B95A5E: AryLock
  loc_B95A61: Ary1LdPr
  loc_B95A62: MemLdStr global_24
  loc_B95A65: AryLock
  loc_B95A68: Ary1LdPr
  loc_B95A69: MemLdStr global_20
  loc_B95A6C: AryLock
  loc_B95A6F: Ary1LdPr
  loc_B95A70: MemLdStr global_20
  loc_B95A73: AryLock
  loc_B95A76: Ary1LdPr
  loc_B95A77: MemLdStr global_24
  loc_B95A7A: AryLock
  loc_B95A7D: Ary1LdRf
  loc_B95A7E: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B95A83: AryUnlock
  loc_B95A86: AryUnlock
  loc_B95A89: AryUnlock
  loc_B95A8C: AryUnlock
  loc_B95A8F: AryUnlock
  loc_B95A92: AryUnlock
  loc_B95A95: AryUnlock
  loc_B95A98: AryUnlock
  loc_B95A9B: AryUnlock
  loc_B95A9E: AryUnlock
  loc_B95AA1: FLdRfVar var_C8
  loc_B95AA4: FLdRfVar var_A4
  loc_B95AA7: LitVarStr var_A0, "PrevImpu"
  loc_B95AAC: PopAdLdVar
  loc_B95AAD: FLdRfVar var_90
  loc_B95AB0: FLdRfVar var_8C
  loc_B95AB3: FLdPr var_88
  loc_B95AB6: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B95ABB: FLdPr var_8C
  loc_B95ABE:  = Me.Fields
  loc_B95AC3: FLdPr var_90
  loc_B95AC6: from_stack_2 = Me.Item(from_stack_1)
  loc_B95ACB: FLdPr var_A4
  loc_B95ACE:  = Me.Value
  loc_B95AD3: FLdRfVar var_C8
  loc_B95AD6: LitVarI2 var_D8, 0
  loc_B95ADB: HardType
  loc_B95ADC: NeVarBool
  loc_B95ADE: FFreeAd var_8C = "": var_90 = ""
  loc_B95AE7: FFree1Var var_C8 = ""
  loc_B95AEA: BranchF loc_B95BF0
  loc_B95AED: FLdRfVar var_A4
  loc_B95AF0: LitVarStr var_A0, "PrevImpu"
  loc_B95AF5: PopAdLdVar
  loc_B95AF6: FLdRfVar var_90
  loc_B95AF9: FLdRfVar var_8C
  loc_B95AFC: FLdPr var_88
  loc_B95AFF: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B95B04: FLdPr var_8C
  loc_B95B07:  = Me.Fields
  loc_B95B0C: FLdPr var_90
  loc_B95B0F: from_stack_2 = Me.Item(from_stack_1)
  loc_B95B14: LitI2_Byte 0
  loc_B95B16: LitI4 1
  loc_B95B1B: FLdPr Me
  loc_B95B1E: MemLdI2 global_110
  loc_B95B21: CI4UI1
  loc_B95B22: FLdPr Me
  loc_B95B25: MemLdI2 global_108
  loc_B95B28: CI4UI1
  loc_B95B29: FLdPr Me
  loc_B95B2C: MemLdI2 global_106
  loc_B95B2F: CI4UI1
  loc_B95B30: FLdPr Me
  loc_B95B33: MemLdI2 global_104
  loc_B95B36: CI4UI1
  loc_B95B37: FLdPr Me
  loc_B95B3A: MemLdStr global_100
  loc_B95B3D: AryLock
  loc_B95B40: Ary1LdPr
  loc_B95B41: MemLdStr global_24
  loc_B95B44: AryLock
  loc_B95B47: Ary1LdPr
  loc_B95B48: MemLdStr global_24
  loc_B95B4B: AryLock
  loc_B95B4E: Ary1LdPr
  loc_B95B4F: MemLdStr global_20
  loc_B95B52: AryLock
  loc_B95B55: Ary1LdPr
  loc_B95B56: MemLdRfVar from_stack_1.global_24
  loc_B95B59: AryInRecLdRf
  loc_B95B5F: CVarRef
  loc_B95B64: LitI2_Byte &HFF
  loc_B95B66: FLdZeroAd var_A4
  loc_B95B69: CVarAd
  loc_B95B6D: PopAdLdVar
  loc_B95B6E: LitI4 1
  loc_B95B73: FLdPr Me
  loc_B95B76: MemLdI2 global_112
  loc_B95B79: CI4UI1
  loc_B95B7A: FLdPr Me
  loc_B95B7D: MemLdI2 global_110
  loc_B95B80: CI4UI1
  loc_B95B81: FLdPr Me
  loc_B95B84: MemLdI2 global_108
  loc_B95B87: CI4UI1
  loc_B95B88: FLdPr Me
  loc_B95B8B: MemLdI2 global_106
  loc_B95B8E: CI4UI1
  loc_B95B8F: FLdPr Me
  loc_B95B92: MemLdI2 global_104
  loc_B95B95: CI4UI1
  loc_B95B96: FLdPr Me
  loc_B95B99: MemLdStr global_100
  loc_B95B9C: AryLock
  loc_B95B9F: Ary1LdPr
  loc_B95BA0: MemLdStr global_24
  loc_B95BA3: AryLock
  loc_B95BA6: Ary1LdPr
  loc_B95BA7: MemLdStr global_24
  loc_B95BAA: AryLock
  loc_B95BAD: Ary1LdPr
  loc_B95BAE: MemLdStr global_20
  loc_B95BB1: AryLock
  loc_B95BB4: Ary1LdPr
  loc_B95BB5: MemLdStr global_20
  loc_B95BB8: AryLock
  loc_B95BBB: Ary1LdPr
  loc_B95BBC: MemLdStr global_24
  loc_B95BBF: AryLock
  loc_B95BC2: Ary1LdRf
  loc_B95BC3: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B95BC8: AryUnlock
  loc_B95BCB: AryUnlock
  loc_B95BCE: AryUnlock
  loc_B95BD1: AryUnlock
  loc_B95BD4: AryUnlock
  loc_B95BD7: AryUnlock
  loc_B95BDA: AryUnlock
  loc_B95BDD: AryUnlock
  loc_B95BE0: AryUnlock
  loc_B95BE3: AryUnlock
  loc_B95BE6: FFreeAd var_8C = ""
  loc_B95BED: FFree1Var var_C8 = ""
  loc_B95BF0: FLdRfVar var_C8
  loc_B95BF3: FLdRfVar var_A4
  loc_B95BF6: LitVarStr var_A0, "DefiImpu"
  loc_B95BFB: PopAdLdVar
  loc_B95BFC: FLdRfVar var_90
  loc_B95BFF: FLdRfVar var_8C
  loc_B95C02: FLdPr var_88
  loc_B95C05: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B95C0A: FLdPr var_8C
  loc_B95C0D:  = Me.Fields
  loc_B95C12: FLdPr var_90
  loc_B95C15: from_stack_2 = Me.Item(from_stack_1)
  loc_B95C1A: FLdPr var_A4
  loc_B95C1D:  = Me.Value
  loc_B95C22: FLdRfVar var_C8
  loc_B95C25: LitVarI2 var_D8, 0
  loc_B95C2A: HardType
  loc_B95C2B: NeVarBool
  loc_B95C2D: FFreeAd var_8C = "": var_90 = ""
  loc_B95C36: FFree1Var var_C8 = ""
  loc_B95C39: BranchF loc_B95D3F
  loc_B95C3C: FLdRfVar var_A4
  loc_B95C3F: LitVarStr var_A0, "DefiImpu"
  loc_B95C44: PopAdLdVar
  loc_B95C45: FLdRfVar var_90
  loc_B95C48: FLdRfVar var_8C
  loc_B95C4B: FLdPr var_88
  loc_B95C4E: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B95C53: FLdPr var_8C
  loc_B95C56:  = Me.Fields
  loc_B95C5B: FLdPr var_90
  loc_B95C5E: from_stack_2 = Me.Item(from_stack_1)
  loc_B95C63: LitI2_Byte 0
  loc_B95C65: LitI4 2
  loc_B95C6A: FLdPr Me
  loc_B95C6D: MemLdI2 global_110
  loc_B95C70: CI4UI1
  loc_B95C71: FLdPr Me
  loc_B95C74: MemLdI2 global_108
  loc_B95C77: CI4UI1
  loc_B95C78: FLdPr Me
  loc_B95C7B: MemLdI2 global_106
  loc_B95C7E: CI4UI1
  loc_B95C7F: FLdPr Me
  loc_B95C82: MemLdI2 global_104
  loc_B95C85: CI4UI1
  loc_B95C86: FLdPr Me
  loc_B95C89: MemLdStr global_100
  loc_B95C8C: AryLock
  loc_B95C8F: Ary1LdPr
  loc_B95C90: MemLdStr global_24
  loc_B95C93: AryLock
  loc_B95C96: Ary1LdPr
  loc_B95C97: MemLdStr global_24
  loc_B95C9A: AryLock
  loc_B95C9D: Ary1LdPr
  loc_B95C9E: MemLdStr global_20
  loc_B95CA1: AryLock
  loc_B95CA4: Ary1LdPr
  loc_B95CA5: MemLdRfVar from_stack_1.global_24
  loc_B95CA8: AryInRecLdRf
  loc_B95CAE: CVarRef
  loc_B95CB3: LitI2_Byte &HFF
  loc_B95CB5: FLdZeroAd var_A4
  loc_B95CB8: CVarAd
  loc_B95CBC: PopAdLdVar
  loc_B95CBD: LitI4 2
  loc_B95CC2: FLdPr Me
  loc_B95CC5: MemLdI2 global_112
  loc_B95CC8: CI4UI1
  loc_B95CC9: FLdPr Me
  loc_B95CCC: MemLdI2 global_110
  loc_B95CCF: CI4UI1
  loc_B95CD0: FLdPr Me
  loc_B95CD3: MemLdI2 global_108
  loc_B95CD6: CI4UI1
  loc_B95CD7: FLdPr Me
  loc_B95CDA: MemLdI2 global_106
  loc_B95CDD: CI4UI1
  loc_B95CDE: FLdPr Me
  loc_B95CE1: MemLdI2 global_104
  loc_B95CE4: CI4UI1
  loc_B95CE5: FLdPr Me
  loc_B95CE8: MemLdStr global_100
  loc_B95CEB: AryLock
  loc_B95CEE: Ary1LdPr
  loc_B95CEF: MemLdStr global_24
  loc_B95CF2: AryLock
  loc_B95CF5: Ary1LdPr
  loc_B95CF6: MemLdStr global_24
  loc_B95CF9: AryLock
  loc_B95CFC: Ary1LdPr
  loc_B95CFD: MemLdStr global_20
  loc_B95D00: AryLock
  loc_B95D03: Ary1LdPr
  loc_B95D04: MemLdStr global_20
  loc_B95D07: AryLock
  loc_B95D0A: Ary1LdPr
  loc_B95D0B: MemLdStr global_24
  loc_B95D0E: AryLock
  loc_B95D11: Ary1LdRf
  loc_B95D12: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B95D17: AryUnlock
  loc_B95D1A: AryUnlock
  loc_B95D1D: AryUnlock
  loc_B95D20: AryUnlock
  loc_B95D23: AryUnlock
  loc_B95D26: AryUnlock
  loc_B95D29: AryUnlock
  loc_B95D2C: AryUnlock
  loc_B95D2F: AryUnlock
  loc_B95D32: AryUnlock
  loc_B95D35: FFreeAd var_8C = ""
  loc_B95D3C: FFree1Var var_C8 = ""
  loc_B95D3F: FLdRfVar var_C8
  loc_B95D42: FLdRfVar var_A4
  loc_B95D45: LitVarStr var_A0, "DeveImpu"
  loc_B95D4A: PopAdLdVar
  loc_B95D4B: FLdRfVar var_90
  loc_B95D4E: FLdRfVar var_8C
  loc_B95D51: FLdPr var_88
  loc_B95D54: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B95D59: FLdPr var_8C
  loc_B95D5C:  = Me.Fields
  loc_B95D61: FLdPr var_90
  loc_B95D64: from_stack_2 = Me.Item(from_stack_1)
  loc_B95D69: FLdPr var_A4
  loc_B95D6C:  = Me.Value
  loc_B95D71: FLdRfVar var_C8
  loc_B95D74: LitVarI2 var_D8, 0
  loc_B95D79: HardType
  loc_B95D7A: NeVarBool
  loc_B95D7C: FFreeAd var_8C = "": var_90 = ""
  loc_B95D85: FFree1Var var_C8 = ""
  loc_B95D88: BranchF loc_B95E8E
  loc_B95D8B: FLdRfVar var_A4
  loc_B95D8E: LitVarStr var_A0, "DeveImpu"
  loc_B95D93: PopAdLdVar
  loc_B95D94: FLdRfVar var_90
  loc_B95D97: FLdRfVar var_8C
  loc_B95D9A: FLdPr var_88
  loc_B95D9D: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B95DA2: FLdPr var_8C
  loc_B95DA5:  = Me.Fields
  loc_B95DAA: FLdPr var_90
  loc_B95DAD: from_stack_2 = Me.Item(from_stack_1)
  loc_B95DB2: LitI2_Byte 0
  loc_B95DB4: LitI4 3
  loc_B95DB9: FLdPr Me
  loc_B95DBC: MemLdI2 global_110
  loc_B95DBF: CI4UI1
  loc_B95DC0: FLdPr Me
  loc_B95DC3: MemLdI2 global_108
  loc_B95DC6: CI4UI1
  loc_B95DC7: FLdPr Me
  loc_B95DCA: MemLdI2 global_106
  loc_B95DCD: CI4UI1
  loc_B95DCE: FLdPr Me
  loc_B95DD1: MemLdI2 global_104
  loc_B95DD4: CI4UI1
  loc_B95DD5: FLdPr Me
  loc_B95DD8: MemLdStr global_100
  loc_B95DDB: AryLock
  loc_B95DDE: Ary1LdPr
  loc_B95DDF: MemLdStr global_24
  loc_B95DE2: AryLock
  loc_B95DE5: Ary1LdPr
  loc_B95DE6: MemLdStr global_24
  loc_B95DE9: AryLock
  loc_B95DEC: Ary1LdPr
  loc_B95DED: MemLdStr global_20
  loc_B95DF0: AryLock
  loc_B95DF3: Ary1LdPr
  loc_B95DF4: MemLdRfVar from_stack_1.global_24
  loc_B95DF7: AryInRecLdRf
  loc_B95DFD: CVarRef
  loc_B95E02: LitI2_Byte &HFF
  loc_B95E04: FLdZeroAd var_A4
  loc_B95E07: CVarAd
  loc_B95E0B: PopAdLdVar
  loc_B95E0C: LitI4 3
  loc_B95E11: FLdPr Me
  loc_B95E14: MemLdI2 global_112
  loc_B95E17: CI4UI1
  loc_B95E18: FLdPr Me
  loc_B95E1B: MemLdI2 global_110
  loc_B95E1E: CI4UI1
  loc_B95E1F: FLdPr Me
  loc_B95E22: MemLdI2 global_108
  loc_B95E25: CI4UI1
  loc_B95E26: FLdPr Me
  loc_B95E29: MemLdI2 global_106
  loc_B95E2C: CI4UI1
  loc_B95E2D: FLdPr Me
  loc_B95E30: MemLdI2 global_104
  loc_B95E33: CI4UI1
  loc_B95E34: FLdPr Me
  loc_B95E37: MemLdStr global_100
  loc_B95E3A: AryLock
  loc_B95E3D: Ary1LdPr
  loc_B95E3E: MemLdStr global_24
  loc_B95E41: AryLock
  loc_B95E44: Ary1LdPr
  loc_B95E45: MemLdStr global_24
  loc_B95E48: AryLock
  loc_B95E4B: Ary1LdPr
  loc_B95E4C: MemLdStr global_20
  loc_B95E4F: AryLock
  loc_B95E52: Ary1LdPr
  loc_B95E53: MemLdStr global_20
  loc_B95E56: AryLock
  loc_B95E59: Ary1LdPr
  loc_B95E5A: MemLdStr global_24
  loc_B95E5D: AryLock
  loc_B95E60: Ary1LdRf
  loc_B95E61: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B95E66: AryUnlock
  loc_B95E69: AryUnlock
  loc_B95E6C: AryUnlock
  loc_B95E6F: AryUnlock
  loc_B95E72: AryUnlock
  loc_B95E75: AryUnlock
  loc_B95E78: AryUnlock
  loc_B95E7B: AryUnlock
  loc_B95E7E: AryUnlock
  loc_B95E81: AryUnlock
  loc_B95E84: FFreeAd var_8C = ""
  loc_B95E8B: FFree1Var var_C8 = ""
  loc_B95E8E: FLdRfVar var_C8
  loc_B95E91: FLdRfVar var_A4
  loc_B95E94: LitVarStr var_A0, "MapaImpu"
  loc_B95E99: PopAdLdVar
  loc_B95E9A: FLdRfVar var_90
  loc_B95E9D: FLdRfVar var_8C
  loc_B95EA0: FLdPr var_88
  loc_B95EA3: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B95EA8: FLdPr var_8C
  loc_B95EAB:  = Me.Fields
  loc_B95EB0: FLdPr var_90
  loc_B95EB3: from_stack_2 = Me.Item(from_stack_1)
  loc_B95EB8: FLdPr var_A4
  loc_B95EBB:  = Me.Value
  loc_B95EC0: FLdRfVar var_C8
  loc_B95EC3: LitVarI2 var_D8, 0
  loc_B95EC8: HardType
  loc_B95EC9: NeVarBool
  loc_B95ECB: FFreeAd var_8C = "": var_90 = ""
  loc_B95ED4: FFree1Var var_C8 = ""
  loc_B95ED7: BranchF loc_B95FDD
  loc_B95EDA: FLdRfVar var_A4
  loc_B95EDD: LitVarStr var_A0, "MapaImpu"
  loc_B95EE2: PopAdLdVar
  loc_B95EE3: FLdRfVar var_90
  loc_B95EE6: FLdRfVar var_8C
  loc_B95EE9: FLdPr var_88
  loc_B95EEC: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B95EF1: FLdPr var_8C
  loc_B95EF4:  = Me.Fields
  loc_B95EF9: FLdPr var_90
  loc_B95EFC: from_stack_2 = Me.Item(from_stack_1)
  loc_B95F01: LitI2_Byte 0
  loc_B95F03: LitI4 4
  loc_B95F08: FLdPr Me
  loc_B95F0B: MemLdI2 global_110
  loc_B95F0E: CI4UI1
  loc_B95F0F: FLdPr Me
  loc_B95F12: MemLdI2 global_108
  loc_B95F15: CI4UI1
  loc_B95F16: FLdPr Me
  loc_B95F19: MemLdI2 global_106
  loc_B95F1C: CI4UI1
  loc_B95F1D: FLdPr Me
  loc_B95F20: MemLdI2 global_104
  loc_B95F23: CI4UI1
  loc_B95F24: FLdPr Me
  loc_B95F27: MemLdStr global_100
  loc_B95F2A: AryLock
  loc_B95F2D: Ary1LdPr
  loc_B95F2E: MemLdStr global_24
  loc_B95F31: AryLock
  loc_B95F34: Ary1LdPr
  loc_B95F35: MemLdStr global_24
  loc_B95F38: AryLock
  loc_B95F3B: Ary1LdPr
  loc_B95F3C: MemLdStr global_20
  loc_B95F3F: AryLock
  loc_B95F42: Ary1LdPr
  loc_B95F43: MemLdRfVar from_stack_1.global_24
  loc_B95F46: AryInRecLdRf
  loc_B95F4C: CVarRef
  loc_B95F51: LitI2_Byte &HFF
  loc_B95F53: FLdZeroAd var_A4
  loc_B95F56: CVarAd
  loc_B95F5A: PopAdLdVar
  loc_B95F5B: LitI4 4
  loc_B95F60: FLdPr Me
  loc_B95F63: MemLdI2 global_112
  loc_B95F66: CI4UI1
  loc_B95F67: FLdPr Me
  loc_B95F6A: MemLdI2 global_110
  loc_B95F6D: CI4UI1
  loc_B95F6E: FLdPr Me
  loc_B95F71: MemLdI2 global_108
  loc_B95F74: CI4UI1
  loc_B95F75: FLdPr Me
  loc_B95F78: MemLdI2 global_106
  loc_B95F7B: CI4UI1
  loc_B95F7C: FLdPr Me
  loc_B95F7F: MemLdI2 global_104
  loc_B95F82: CI4UI1
  loc_B95F83: FLdPr Me
  loc_B95F86: MemLdStr global_100
  loc_B95F89: AryLock
  loc_B95F8C: Ary1LdPr
  loc_B95F8D: MemLdStr global_24
  loc_B95F90: AryLock
  loc_B95F93: Ary1LdPr
  loc_B95F94: MemLdStr global_24
  loc_B95F97: AryLock
  loc_B95F9A: Ary1LdPr
  loc_B95F9B: MemLdStr global_20
  loc_B95F9E: AryLock
  loc_B95FA1: Ary1LdPr
  loc_B95FA2: MemLdStr global_20
  loc_B95FA5: AryLock
  loc_B95FA8: Ary1LdPr
  loc_B95FA9: MemLdStr global_24
  loc_B95FAC: AryLock
  loc_B95FAF: Ary1LdRf
  loc_B95FB0: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B95FB5: AryUnlock
  loc_B95FB8: AryUnlock
  loc_B95FBB: AryUnlock
  loc_B95FBE: AryUnlock
  loc_B95FC1: AryUnlock
  loc_B95FC4: AryUnlock
  loc_B95FC7: AryUnlock
  loc_B95FCA: AryUnlock
  loc_B95FCD: AryUnlock
  loc_B95FD0: AryUnlock
  loc_B95FD3: FFreeAd var_8C = ""
  loc_B95FDA: FFree1Var var_C8 = ""
  loc_B95FDD: FLdRfVar var_C8
  loc_B95FE0: FLdRfVar var_A4
  loc_B95FE3: LitVarStr var_A0, "PagaImpu"
  loc_B95FE8: PopAdLdVar
  loc_B95FE9: FLdRfVar var_90
  loc_B95FEC: FLdRfVar var_8C
  loc_B95FEF: FLdPr var_88
  loc_B95FF2: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B95FF7: FLdPr var_8C
  loc_B95FFA:  = Me.Fields
  loc_B95FFF: FLdPr var_90
  loc_B96002: from_stack_2 = Me.Item(from_stack_1)
  loc_B96007: FLdPr var_A4
  loc_B9600A:  = Me.Value
  loc_B9600F: FLdRfVar var_C8
  loc_B96012: LitVarI2 var_D8, 0
  loc_B96017: HardType
  loc_B96018: NeVarBool
  loc_B9601A: FFreeAd var_8C = "": var_90 = ""
  loc_B96023: FFree1Var var_C8 = ""
  loc_B96026: BranchF loc_B9612C
  loc_B96029: FLdRfVar var_A4
  loc_B9602C: LitVarStr var_A0, "PagaImpu"
  loc_B96031: PopAdLdVar
  loc_B96032: FLdRfVar var_90
  loc_B96035: FLdRfVar var_8C
  loc_B96038: FLdPr var_88
  loc_B9603B: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B96040: FLdPr var_8C
  loc_B96043:  = Me.Fields
  loc_B96048: FLdPr var_90
  loc_B9604B: from_stack_2 = Me.Item(from_stack_1)
  loc_B96050: LitI2_Byte 0
  loc_B96052: LitI4 5
  loc_B96057: FLdPr Me
  loc_B9605A: MemLdI2 global_110
  loc_B9605D: CI4UI1
  loc_B9605E: FLdPr Me
  loc_B96061: MemLdI2 global_108
  loc_B96064: CI4UI1
  loc_B96065: FLdPr Me
  loc_B96068: MemLdI2 global_106
  loc_B9606B: CI4UI1
  loc_B9606C: FLdPr Me
  loc_B9606F: MemLdI2 global_104
  loc_B96072: CI4UI1
  loc_B96073: FLdPr Me
  loc_B96076: MemLdStr global_100
  loc_B96079: AryLock
  loc_B9607C: Ary1LdPr
  loc_B9607D: MemLdStr global_24
  loc_B96080: AryLock
  loc_B96083: Ary1LdPr
  loc_B96084: MemLdStr global_24
  loc_B96087: AryLock
  loc_B9608A: Ary1LdPr
  loc_B9608B: MemLdStr global_20
  loc_B9608E: AryLock
  loc_B96091: Ary1LdPr
  loc_B96092: MemLdRfVar from_stack_1.global_24
  loc_B96095: AryInRecLdRf
  loc_B9609B: CVarRef
  loc_B960A0: LitI2_Byte &HFF
  loc_B960A2: FLdZeroAd var_A4
  loc_B960A5: CVarAd
  loc_B960A9: PopAdLdVar
  loc_B960AA: LitI4 5
  loc_B960AF: FLdPr Me
  loc_B960B2: MemLdI2 global_112
  loc_B960B5: CI4UI1
  loc_B960B6: FLdPr Me
  loc_B960B9: MemLdI2 global_110
  loc_B960BC: CI4UI1
  loc_B960BD: FLdPr Me
  loc_B960C0: MemLdI2 global_108
  loc_B960C3: CI4UI1
  loc_B960C4: FLdPr Me
  loc_B960C7: MemLdI2 global_106
  loc_B960CA: CI4UI1
  loc_B960CB: FLdPr Me
  loc_B960CE: MemLdI2 global_104
  loc_B960D1: CI4UI1
  loc_B960D2: FLdPr Me
  loc_B960D5: MemLdStr global_100
  loc_B960D8: AryLock
  loc_B960DB: Ary1LdPr
  loc_B960DC: MemLdStr global_24
  loc_B960DF: AryLock
  loc_B960E2: Ary1LdPr
  loc_B960E3: MemLdStr global_24
  loc_B960E6: AryLock
  loc_B960E9: Ary1LdPr
  loc_B960EA: MemLdStr global_20
  loc_B960ED: AryLock
  loc_B960F0: Ary1LdPr
  loc_B960F1: MemLdStr global_20
  loc_B960F4: AryLock
  loc_B960F7: Ary1LdPr
  loc_B960F8: MemLdStr global_24
  loc_B960FB: AryLock
  loc_B960FE: Ary1LdRf
  loc_B960FF: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B96104: AryUnlock
  loc_B96107: AryUnlock
  loc_B9610A: AryUnlock
  loc_B9610D: AryUnlock
  loc_B96110: AryUnlock
  loc_B96113: AryUnlock
  loc_B96116: AryUnlock
  loc_B96119: AryUnlock
  loc_B9611C: AryUnlock
  loc_B9611F: AryUnlock
  loc_B96122: FFreeAd var_8C = ""
  loc_B96129: FFree1Var var_C8 = ""
  loc_B9612C: LitNothing
  loc_B9612E: FStAd var_88 
  loc_B96132: ExitProcHresult
End Function

Private Function Proc_186_44_AFF548() 'AFF548
  'Data Table: 4DCA5C
  loc_AFEDB4: LitVarStr var_94, "<html>"
  loc_AFEDB9: PopAdLdVar
  loc_AFEDBA: FLdPr Me
  loc_AFEDBD: MemLdRfVar from_stack_1.htmFile
  loc_AFEDC0: LdPrVar
  loc_AFEDC2: LateMemCall
  loc_AFEDC8: LitVarStr var_94, "<head>"
  loc_AFEDCD: PopAdLdVar
  loc_AFEDCE: FLdPr Me
  loc_AFEDD1: MemLdRfVar from_stack_1.htmFile
  loc_AFEDD4: LdPrVar
  loc_AFEDD6: LateMemCall
  loc_AFEDDC: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_AFEDE1: PopAdLdVar
  loc_AFEDE2: FLdPr Me
  loc_AFEDE5: MemLdRfVar from_stack_1.htmFile
  loc_AFEDE8: LdPrVar
  loc_AFEDEA: LateMemCall
  loc_AFEDF0: LitStr "<title>"
  loc_AFEDF3: FLdRfVar var_A8
  loc_AFEDF6: FLdPr Me
  loc_AFEDF9:  = Me.Caption
  loc_AFEDFE: ILdRf var_A8
  loc_AFEE01: ConcatStr
  loc_AFEE02: FStStrNoPop var_AC
  loc_AFEE05: LitStr "</title>"
  loc_AFEE08: ConcatStr
  loc_AFEE09: CVarStr var_BC
  loc_AFEE0C: PopAdLdVar
  loc_AFEE0D: FLdPr Me
  loc_AFEE10: MemLdRfVar from_stack_1.htmFile
  loc_AFEE13: LdPrVar
  loc_AFEE15: LateMemCall
  loc_AFEE1B: FFreeStr var_A8 = ""
  loc_AFEE22: FFree1Var var_BC = ""
  loc_AFEE25: LitStr vbNullString
  loc_AFEE28: ILdRf Me
  loc_AFEE2B: CastAd
  loc_AFEE2E: FStAdFunc var_C0
  loc_AFEE31: FLdRfVar var_C0
  loc_AFEE34: ImpAdCallFPR4 Proc_263_23_B3DAB8(, )
  loc_AFEE39: FFree1Ad var_C0
  loc_AFEE3C: LitI4 0
  loc_AFEE41: FStStrCopy var_AC
  loc_AFEE44: FLdRfVar var_AC
  loc_AFEE47: LitI4 0
  loc_AFEE4C: FStStrCopy var_A8
  loc_AFEE4F: FLdRfVar var_A8
  loc_AFEE52: LitI2_Byte &HFF
  loc_AFEE54: PopTmpLdAd2 var_C2
  loc_AFEE57: FLdPr Me
  loc_AFEE5A: MemLdRfVar from_stack_1.htmFile
  loc_AFEE5D: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_AFEE62: FFreeStr var_A8 = ""
  loc_AFEE69: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_AFEE6E: PopAdLdVar
  loc_AFEE6F: FLdPr Me
  loc_AFEE72: MemLdRfVar from_stack_1.htmFile
  loc_AFEE75: LdPrVar
  loc_AFEE77: LateMemCall
  loc_AFEE7D: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_AFEE82: PopAdLdVar
  loc_AFEE83: FLdPr Me
  loc_AFEE86: MemLdRfVar from_stack_1.htmFile
  loc_AFEE89: LdPrVar
  loc_AFEE8B: LateMemCall
  loc_AFEE91: LitVarStr var_94, "    <th width=""100" & Chr(37) & """ valign=""bottom""><p align=""center"">"
  loc_AFEE96: PopAdLdVar
  loc_AFEE97: FLdPr Me
  loc_AFEE9A: MemLdRfVar from_stack_1.htmFile
  loc_AFEE9D: LdPrVar
  loc_AFEE9F: LateMemCall
  loc_AFEEA5: FLdPr Me
  loc_AFEEA8: MemLdI2 bLogos
  loc_AFEEAB: BranchF loc_AFEEF0
  loc_AFEEAE: LitVarStr var_A4, "<img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>"
  loc_AFEEB3: LitVarStr var_94, "Municipalidad de Guaymallén"
  loc_AFEEB8: FStVarCopyObj var_BC
  loc_AFEEBB: FLdRfVar var_BC
  loc_AFEEBE: FLdRfVar var_D4
  loc_AFEEC1: ImpAdCallFPR4  = Ucase()
  loc_AFEEC6: FLdRfVar var_D4
  loc_AFEEC9: ConcatVar var_E4
  loc_AFEECD: LitVarStr var_F4, "</p>"
  loc_AFEED2: ConcatVar var_104
  loc_AFEED6: PopAdLdVar
  loc_AFEED7: FLdPr Me
  loc_AFEEDA: MemLdRfVar from_stack_1.htmFile
  loc_AFEEDD: LdPrVar
  loc_AFEEDF: LateMemCall
  loc_AFEEE5: FFreeVar var_BC = "": var_D4 = "": var_E4 = ""
  loc_AFEEF0: LitStr "    <p align=""center"">"
  loc_AFEEF3: FLdRfVar var_A8
  loc_AFEEF6: FLdPr Me
  loc_AFEEF9:  = Me.Caption
  loc_AFEEFE: ILdRf var_A8
  loc_AFEF01: ConcatStr
  loc_AFEF02: FStStrNoPop var_AC
  loc_AFEF05: LitStr "</p></th>"
  loc_AFEF08: ConcatStr
  loc_AFEF09: CVarStr var_BC
  loc_AFEF0C: PopAdLdVar
  loc_AFEF0D: FLdPr Me
  loc_AFEF10: MemLdRfVar from_stack_1.htmFile
  loc_AFEF13: LdPrVar
  loc_AFEF15: LateMemCall
  loc_AFEF1B: FFreeStr var_A8 = ""
  loc_AFEF22: FFree1Var var_BC = ""
  loc_AFEF25: LitVarStr var_94, "  </tr>"
  loc_AFEF2A: PopAdLdVar
  loc_AFEF2B: FLdPr Me
  loc_AFEF2E: MemLdRfVar from_stack_1.htmFile
  loc_AFEF31: LdPrVar
  loc_AFEF33: LateMemCall
  loc_AFEF39: LitVarStr var_94, "  <tr><th><hr></th></tr>"
  loc_AFEF3E: PopAdLdVar
  loc_AFEF3F: FLdPr Me
  loc_AFEF42: MemLdRfVar from_stack_1.htmFile
  loc_AFEF45: LdPrVar
  loc_AFEF47: LateMemCall
  loc_AFEF4D: LitVarStr var_94, "  <tr align=""left""><th>"
  loc_AFEF52: PopAdLdVar
  loc_AFEF53: FLdPr Me
  loc_AFEF56: MemLdRfVar from_stack_1.htmFile
  loc_AFEF59: LdPrVar
  loc_AFEF5B: LateMemCall
  loc_AFEF61: LitStr "    Periodo: <span class=""Normal"">"
  loc_AFEF64: FLdRfVar var_A8
  loc_AFEF67: FLdPr Me
  loc_AFEF6A: VCallAd Control_ID_cboPeriodo
  loc_AFEF6D: FStAdFunc var_C0
  loc_AFEF70: FLdPr var_C0
  loc_AFEF73:  = Me.Text
  loc_AFEF78: ILdRf var_A8
  loc_AFEF7B: ConcatStr
  loc_AFEF7C: FStStrNoPop var_AC
  loc_AFEF7F: LitStr "</span>"
  loc_AFEF82: ConcatStr
  loc_AFEF83: CVarStr var_BC
  loc_AFEF86: PopAdLdVar
  loc_AFEF87: FLdPr Me
  loc_AFEF8A: MemLdRfVar from_stack_1.htmFile
  loc_AFEF8D: LdPrVar
  loc_AFEF8F: LateMemCall
  loc_AFEF95: FFreeStr var_A8 = ""
  loc_AFEF9C: FFree1Ad var_C0
  loc_AFEF9F: FFree1Var var_BC = ""
  loc_AFEFA2: LitStr "   <br>Desde: <span class=""Normal"">"
  loc_AFEFA5: FLdPr Me
  loc_AFEFA8: VCallAd Control_ID_mskDesde
  loc_AFEFAB: FStAdFunc var_C0
  loc_AFEFAE: FLdPr var_C0
  loc_AFEFB1: LateIdLdVar var_BC DispID_15 0
  loc_AFEFB8: CStrVarTmp
  loc_AFEFB9: FStStrNoPop var_A8
  loc_AFEFBC: ConcatStr
  loc_AFEFBD: FStStrNoPop var_AC
  loc_AFEFC0: LitStr "</span>"
  loc_AFEFC3: ConcatStr
  loc_AFEFC4: CVarStr var_D4
  loc_AFEFC7: PopAdLdVar
  loc_AFEFC8: FLdPr Me
  loc_AFEFCB: MemLdRfVar from_stack_1.htmFile
  loc_AFEFCE: LdPrVar
  loc_AFEFD0: LateMemCall
  loc_AFEFD6: FFreeStr var_A8 = ""
  loc_AFEFDD: FFree1Ad var_C0
  loc_AFEFE0: FFreeVar var_BC = ""
  loc_AFEFE7: LitStr "   <br>Hasta: <span class=""Normal"">"
  loc_AFEFEA: FLdPr Me
  loc_AFEFED: VCallAd Control_ID_mskHasta
  loc_AFEFF0: FStAdFunc var_C0
  loc_AFEFF3: FLdPr var_C0
  loc_AFEFF6: LateIdLdVar var_BC DispID_15 0
  loc_AFEFFD: CStrVarTmp
  loc_AFEFFE: FStStrNoPop var_A8
  loc_AFF001: ConcatStr
  loc_AFF002: FStStrNoPop var_AC
  loc_AFF005: LitStr "</span>"
  loc_AFF008: ConcatStr
  loc_AFF009: CVarStr var_D4
  loc_AFF00C: PopAdLdVar
  loc_AFF00D: FLdPr Me
  loc_AFF010: MemLdRfVar from_stack_1.htmFile
  loc_AFF013: LdPrVar
  loc_AFF015: LateMemCall
  loc_AFF01B: FFreeStr var_A8 = ""
  loc_AFF022: FFree1Ad var_C0
  loc_AFF025: FFreeVar var_BC = ""
  loc_AFF02C: FLdPr Me
  loc_AFF02F: VCallAd Control_ID_CodiInsuMsk
  loc_AFF032: FStAdFunc var_C0
  loc_AFF035: FLdPr var_C0
  loc_AFF038: LateIdLdVar var_BC DispID_0 0
  loc_AFF03F: CStrVarTmp
  loc_AFF040: FStStrNoPop var_A8
  loc_AFF043: LitStr vbNullString
  loc_AFF046: NeStr
  loc_AFF048: FFree1Str var_A8
  loc_AFF04B: FFree1Ad var_C0
  loc_AFF04E: FFree1Var var_BC = ""
  loc_AFF051: BranchF loc_AFF0C5
  loc_AFF054: LitStr "   <br>Insumo: <span class=""Normal"">Igual a '"
  loc_AFF057: FLdPr Me
  loc_AFF05A: VCallAd Control_ID_CodiInsuMsk
  loc_AFF05D: FStAdFunc var_C0
  loc_AFF060: FLdPr var_C0
  loc_AFF063: LateIdLdVar var_BC DispID_0 0
  loc_AFF06A: CStrVarTmp
  loc_AFF06B: FStStrNoPop var_A8
  loc_AFF06E: ConcatStr
  loc_AFF06F: FStStrNoPop var_AC
  loc_AFF072: LitStr "'  -  "
  loc_AFF075: ConcatStr
  loc_AFF076: FStStrNoPop var_120
  loc_AFF079: FLdRfVar var_11C
  loc_AFF07C: FLdPr Me
  loc_AFF07F: VCallAd Control_ID_CodiInsuLbl
  loc_AFF082: FStAdFunc var_118
  loc_AFF085: FLdPr var_118
  loc_AFF088:  = Me.Caption
  loc_AFF08D: ILdRf var_11C
  loc_AFF090: ConcatStr
  loc_AFF091: FStStrNoPop var_124
  loc_AFF094: LitStr "</span>"
  loc_AFF097: ConcatStr
  loc_AFF098: CVarStr var_D4
  loc_AFF09B: PopAdLdVar
  loc_AFF09C: FLdPr Me
  loc_AFF09F: MemLdRfVar from_stack_1.htmFile
  loc_AFF0A2: LdPrVar
  loc_AFF0A4: LateMemCall
  loc_AFF0AA: FFreeStr var_A8 = "": var_AC = "": var_120 = "": var_11C = ""
  loc_AFF0B7: FFreeAd var_C0 = ""
  loc_AFF0BE: FFreeVar var_BC = ""
  loc_AFF0C5: FLdPr Me
  loc_AFF0C8: VCallAd Control_ID_CodiPartMsk
  loc_AFF0CB: FStAdFunc var_C0
  loc_AFF0CE: FLdPr var_C0
  loc_AFF0D1: LateIdLdVar var_BC DispID_0 0
  loc_AFF0D8: CStrVarTmp
  loc_AFF0D9: FStStrNoPop var_A8
  loc_AFF0DC: LitStr vbNullString
  loc_AFF0DF: NeStr
  loc_AFF0E1: FFree1Str var_A8
  loc_AFF0E4: FFree1Ad var_C0
  loc_AFF0E7: FFree1Var var_BC = ""
  loc_AFF0EA: BranchF loc_AFF15E
  loc_AFF0ED: LitStr "   <br>Partida: <span class=""Normal"">Comenzando con '"
  loc_AFF0F0: FLdPr Me
  loc_AFF0F3: VCallAd Control_ID_CodiPartMsk
  loc_AFF0F6: FStAdFunc var_C0
  loc_AFF0F9: FLdPr var_C0
  loc_AFF0FC: LateIdLdVar var_BC DispID_0 0
  loc_AFF103: CStrVarTmp
  loc_AFF104: FStStrNoPop var_A8
  loc_AFF107: ConcatStr
  loc_AFF108: FStStrNoPop var_AC
  loc_AFF10B: LitStr "'  -  "
  loc_AFF10E: ConcatStr
  loc_AFF10F: FStStrNoPop var_120
  loc_AFF112: FLdRfVar var_11C
  loc_AFF115: FLdPr Me
  loc_AFF118: VCallAd Control_ID_CodiPartLbl
  loc_AFF11B: FStAdFunc var_118
  loc_AFF11E: FLdPr var_118
  loc_AFF121:  = Me.Caption
  loc_AFF126: ILdRf var_11C
  loc_AFF129: ConcatStr
  loc_AFF12A: FStStrNoPop var_124
  loc_AFF12D: LitStr "</span>"
  loc_AFF130: ConcatStr
  loc_AFF131: CVarStr var_D4
  loc_AFF134: PopAdLdVar
  loc_AFF135: FLdPr Me
  loc_AFF138: MemLdRfVar from_stack_1.htmFile
  loc_AFF13B: LdPrVar
  loc_AFF13D: LateMemCall
  loc_AFF143: FFreeStr var_A8 = "": var_AC = "": var_120 = "": var_11C = ""
  loc_AFF150: FFreeAd var_C0 = ""
  loc_AFF157: FFreeVar var_BC = ""
  loc_AFF15E: FLdPr Me
  loc_AFF161: VCallAd Control_ID_CodiOrgaMsk
  loc_AFF164: FStAdFunc var_C0
  loc_AFF167: FLdPr var_C0
  loc_AFF16A: LateIdLdVar var_BC DispID_0 0
  loc_AFF171: CStrVarTmp
  loc_AFF172: FStStrNoPop var_A8
  loc_AFF175: LitStr vbNullString
  loc_AFF178: NeStr
  loc_AFF17A: FFree1Str var_A8
  loc_AFF17D: FFree1Ad var_C0
  loc_AFF180: FFree1Var var_BC = ""
  loc_AFF183: BranchF loc_AFF1F7
  loc_AFF186: LitStr "   <br>Organigrama: <span class=""Normal"">Comenzando con '"
  loc_AFF189: FLdPr Me
  loc_AFF18C: VCallAd Control_ID_CodiOrgaMsk
  loc_AFF18F: FStAdFunc var_C0
  loc_AFF192: FLdPr var_C0
  loc_AFF195: LateIdLdVar var_BC DispID_0 0
  loc_AFF19C: CStrVarTmp
  loc_AFF19D: FStStrNoPop var_A8
  loc_AFF1A0: ConcatStr
  loc_AFF1A1: FStStrNoPop var_AC
  loc_AFF1A4: LitStr "'  -  "
  loc_AFF1A7: ConcatStr
  loc_AFF1A8: FStStrNoPop var_120
  loc_AFF1AB: FLdRfVar var_11C
  loc_AFF1AE: FLdPr Me
  loc_AFF1B1: VCallAd Control_ID_CodiOrgaLbl
  loc_AFF1B4: FStAdFunc var_118
  loc_AFF1B7: FLdPr var_118
  loc_AFF1BA:  = Me.Caption
  loc_AFF1BF: ILdRf var_11C
  loc_AFF1C2: ConcatStr
  loc_AFF1C3: FStStrNoPop var_124
  loc_AFF1C6: LitStr "</span>"
  loc_AFF1C9: ConcatStr
  loc_AFF1CA: CVarStr var_D4
  loc_AFF1CD: PopAdLdVar
  loc_AFF1CE: FLdPr Me
  loc_AFF1D1: MemLdRfVar from_stack_1.htmFile
  loc_AFF1D4: LdPrVar
  loc_AFF1D6: LateMemCall
  loc_AFF1DC: FFreeStr var_A8 = "": var_AC = "": var_120 = "": var_11C = ""
  loc_AFF1E9: FFreeAd var_C0 = ""
  loc_AFF1F0: FFreeVar var_BC = ""
  loc_AFF1F7: FLdPr Me
  loc_AFF1FA: VCallAd Control_ID_CodiUngaMsk
  loc_AFF1FD: FStAdFunc var_C0
  loc_AFF200: FLdPr var_C0
  loc_AFF203: LateIdLdVar var_BC DispID_0 0
  loc_AFF20A: CStrVarTmp
  loc_AFF20B: FStStrNoPop var_A8
  loc_AFF20E: LitStr vbNullString
  loc_AFF211: NeStr
  loc_AFF213: FFree1Str var_A8
  loc_AFF216: FFree1Ad var_C0
  loc_AFF219: FFree1Var var_BC = ""
  loc_AFF21C: BranchF loc_AFF290
  loc_AFF21F: LitStr "   <br>Unidad de Gasto: <span class=""Normal"">"
  loc_AFF222: FLdPr Me
  loc_AFF225: VCallAd Control_ID_CodiUngaMsk
  loc_AFF228: FStAdFunc var_C0
  loc_AFF22B: FLdPr var_C0
  loc_AFF22E: LateIdLdVar var_BC DispID_22 0
  loc_AFF235: CStrVarTmp
  loc_AFF236: FStStrNoPop var_A8
  loc_AFF239: ConcatStr
  loc_AFF23A: FStStrNoPop var_AC
  loc_AFF23D: LitStr " - "
  loc_AFF240: ConcatStr
  loc_AFF241: FStStrNoPop var_120
  loc_AFF244: FLdRfVar var_11C
  loc_AFF247: FLdPr Me
  loc_AFF24A: VCallAd Control_ID_DetaUngaLbl
  loc_AFF24D: FStAdFunc var_118
  loc_AFF250: FLdPr var_118
  loc_AFF253:  = Me.Caption
  loc_AFF258: ILdRf var_11C
  loc_AFF25B: ConcatStr
  loc_AFF25C: FStStrNoPop var_124
  loc_AFF25F: LitStr "</span>"
  loc_AFF262: ConcatStr
  loc_AFF263: CVarStr var_D4
  loc_AFF266: PopAdLdVar
  loc_AFF267: FLdPr Me
  loc_AFF26A: MemLdRfVar from_stack_1.htmFile
  loc_AFF26D: LdPrVar
  loc_AFF26F: LateMemCall
  loc_AFF275: FFreeStr var_A8 = "": var_AC = "": var_120 = "": var_11C = ""
  loc_AFF282: FFreeAd var_C0 = ""
  loc_AFF289: FFreeVar var_BC = ""
  loc_AFF290: FLdPr Me
  loc_AFF293: VCallAd Control_ID_CodiFifuMsk
  loc_AFF296: FStAdFunc var_C0
  loc_AFF299: FLdPr var_C0
  loc_AFF29C: LateIdLdVar var_BC DispID_0 0
  loc_AFF2A3: CStrVarTmp
  loc_AFF2A4: FStStrNoPop var_A8
  loc_AFF2A7: LitStr vbNullString
  loc_AFF2AA: NeStr
  loc_AFF2AC: FFree1Str var_A8
  loc_AFF2AF: FFree1Ad var_C0
  loc_AFF2B2: FFree1Var var_BC = ""
  loc_AFF2B5: BranchF loc_AFF329
  loc_AFF2B8: LitStr "   <br>Finalidad y Funci&oacute;n: <span class=""Normal"">Comenzando con '"
  loc_AFF2BB: FLdPr Me
  loc_AFF2BE: VCallAd Control_ID_CodiFifuMsk
  loc_AFF2C1: FStAdFunc var_C0
  loc_AFF2C4: FLdPr var_C0
  loc_AFF2C7: LateIdLdVar var_BC DispID_0 0
  loc_AFF2CE: CStrVarTmp
  loc_AFF2CF: FStStrNoPop var_A8
  loc_AFF2D2: ConcatStr
  loc_AFF2D3: FStStrNoPop var_AC
  loc_AFF2D6: LitStr "'  -  "
  loc_AFF2D9: ConcatStr
  loc_AFF2DA: FStStrNoPop var_120
  loc_AFF2DD: FLdRfVar var_11C
  loc_AFF2E0: FLdPr Me
  loc_AFF2E3: VCallAd Control_ID_CodiFifuLbl
  loc_AFF2E6: FStAdFunc var_118
  loc_AFF2E9: FLdPr var_118
  loc_AFF2EC:  = Me.Caption
  loc_AFF2F1: ILdRf var_11C
  loc_AFF2F4: ConcatStr
  loc_AFF2F5: FStStrNoPop var_124
  loc_AFF2F8: LitStr "</span>"
  loc_AFF2FB: ConcatStr
  loc_AFF2FC: CVarStr var_D4
  loc_AFF2FF: PopAdLdVar
  loc_AFF300: FLdPr Me
  loc_AFF303: MemLdRfVar from_stack_1.htmFile
  loc_AFF306: LdPrVar
  loc_AFF308: LateMemCall
  loc_AFF30E: FFreeStr var_A8 = "": var_AC = "": var_120 = "": var_11C = ""
  loc_AFF31B: FFreeAd var_C0 = ""
  loc_AFF322: FFreeVar var_BC = ""
  loc_AFF329: LitVarStr var_94, "   </th>"
  loc_AFF32E: PopAdLdVar
  loc_AFF32F: FLdPr Me
  loc_AFF332: MemLdRfVar from_stack_1.htmFile
  loc_AFF335: LdPrVar
  loc_AFF337: LateMemCall
  loc_AFF33D: LitVarStr var_94, "  </tr>"
  loc_AFF342: PopAdLdVar
  loc_AFF343: FLdPr Me
  loc_AFF346: MemLdRfVar from_stack_1.htmFile
  loc_AFF349: LdPrVar
  loc_AFF34B: LateMemCall
  loc_AFF351: LitVarStr var_94, "</table>"
  loc_AFF356: PopAdLdVar
  loc_AFF357: FLdPr Me
  loc_AFF35A: MemLdRfVar from_stack_1.htmFile
  loc_AFF35D: LdPrVar
  loc_AFF35F: LateMemCall
  loc_AFF365: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_AFF36A: PopAdLdVar
  loc_AFF36B: FLdPr Me
  loc_AFF36E: MemLdRfVar from_stack_1.htmFile
  loc_AFF371: LdPrVar
  loc_AFF373: LateMemCall
  loc_AFF379: LitVarStr var_94, "  <THEAD>"
  loc_AFF37E: PopAdLdVar
  loc_AFF37F: FLdPr Me
  loc_AFF382: MemLdRfVar from_stack_1.htmFile
  loc_AFF385: LdPrVar
  loc_AFF387: LateMemCall
  loc_AFF38D: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_AFF392: PopAdLdVar
  loc_AFF393: FLdPr Me
  loc_AFF396: MemLdRfVar from_stack_1.htmFile
  loc_AFF399: LdPrVar
  loc_AFF39B: LateMemCall
  loc_AFF3A1: LitVarStr var_94, "    <th rowspan=""2"">Insumo</th>"
  loc_AFF3A6: PopAdLdVar
  loc_AFF3A7: FLdPr Me
  loc_AFF3AA: MemLdRfVar from_stack_1.htmFile
  loc_AFF3AD: LdPrVar
  loc_AFF3AF: LateMemCall
  loc_AFF3B5: LitVarStr var_94, "    <th rowspan=""2"">Partida</th>"
  loc_AFF3BA: PopAdLdVar
  loc_AFF3BB: FLdPr Me
  loc_AFF3BE: MemLdRfVar from_stack_1.htmFile
  loc_AFF3C1: LdPrVar
  loc_AFF3C3: LateMemCall
  loc_AFF3C9: LitVarStr var_94, "    <th rowspan=""2"">Organigrama</th>"
  loc_AFF3CE: PopAdLdVar
  loc_AFF3CF: FLdPr Me
  loc_AFF3D2: MemLdRfVar from_stack_1.htmFile
  loc_AFF3D5: LdPrVar
  loc_AFF3D7: LateMemCall
  loc_AFF3DD: LitVarStr var_94, "    <th rowspan=""2"">Finalidad<br>"
  loc_AFF3E2: PopAdLdVar
  loc_AFF3E3: FLdPr Me
  loc_AFF3E6: MemLdRfVar from_stack_1.htmFile
  loc_AFF3E9: LdPrVar
  loc_AFF3EB: LateMemCall
  loc_AFF3F1: LitVarStr var_94, "    y funci&oacute;n</th>"
  loc_AFF3F6: PopAdLdVar
  loc_AFF3F7: FLdPr Me
  loc_AFF3FA: MemLdRfVar from_stack_1.htmFile
  loc_AFF3FD: LdPrVar
  loc_AFF3FF: LateMemCall
  loc_AFF405: LitVarStr var_94, "    <th colspan=""2"">Expediente</th>"
  loc_AFF40A: PopAdLdVar
  loc_AFF40B: FLdPr Me
  loc_AFF40E: MemLdRfVar from_stack_1.htmFile
  loc_AFF411: LdPrVar
  loc_AFF413: LateMemCall
  loc_AFF419: LitVarStr var_94, "    <th rowspan=""2"">Proveedor</th>"
  loc_AFF41E: PopAdLdVar
  loc_AFF41F: FLdPr Me
  loc_AFF422: MemLdRfVar from_stack_1.htmFile
  loc_AFF425: LdPrVar
  loc_AFF427: LateMemCall
  loc_AFF42D: LitVarStr var_94, "    <th rowspan=""2"">Cant.</th>"
  loc_AFF432: PopAdLdVar
  loc_AFF433: FLdPr Me
  loc_AFF436: MemLdRfVar from_stack_1.htmFile
  loc_AFF439: LdPrVar
  loc_AFF43B: LateMemCall
  loc_AFF441: LitVarStr var_94, "    <th rowspan=""2"">Imp. Un.</th>"
  loc_AFF446: PopAdLdVar
  loc_AFF447: FLdPr Me
  loc_AFF44A: MemLdRfVar from_stack_1.htmFile
  loc_AFF44D: LdPrVar
  loc_AFF44F: LateMemCall
  loc_AFF455: LitVarStr var_94, "    <th rowspan=""2"">Preventiva</th>"
  loc_AFF45A: PopAdLdVar
  loc_AFF45B: FLdPr Me
  loc_AFF45E: MemLdRfVar from_stack_1.htmFile
  loc_AFF461: LdPrVar
  loc_AFF463: LateMemCall
  loc_AFF469: LitVarStr var_94, "    <th rowspan=""2"">Definitiva</th>"
  loc_AFF46E: PopAdLdVar
  loc_AFF46F: FLdPr Me
  loc_AFF472: MemLdRfVar from_stack_1.htmFile
  loc_AFF475: LdPrVar
  loc_AFF477: LateMemCall
  loc_AFF47D: LitVarStr var_94, "    <th rowspan=""2"">Devengado</th>"
  loc_AFF482: PopAdLdVar
  loc_AFF483: FLdPr Me
  loc_AFF486: MemLdRfVar from_stack_1.htmFile
  loc_AFF489: LdPrVar
  loc_AFF48B: LateMemCall
  loc_AFF491: LitVarStr var_94, "    <th rowspan=""2"">Mandado<br>"
  loc_AFF496: PopAdLdVar
  loc_AFF497: FLdPr Me
  loc_AFF49A: MemLdRfVar from_stack_1.htmFile
  loc_AFF49D: LdPrVar
  loc_AFF49F: LateMemCall
  loc_AFF4A5: LitVarStr var_94, "    a pagar </th>"
  loc_AFF4AA: PopAdLdVar
  loc_AFF4AB: FLdPr Me
  loc_AFF4AE: MemLdRfVar from_stack_1.htmFile
  loc_AFF4B1: LdPrVar
  loc_AFF4B3: LateMemCall
  loc_AFF4B9: LitVarStr var_94, "    <th rowspan=""2"">Pagado</th>"
  loc_AFF4BE: PopAdLdVar
  loc_AFF4BF: FLdPr Me
  loc_AFF4C2: MemLdRfVar from_stack_1.htmFile
  loc_AFF4C5: LdPrVar
  loc_AFF4C7: LateMemCall
  loc_AFF4CD: LitVarStr var_94, "  </tr>"
  loc_AFF4D2: PopAdLdVar
  loc_AFF4D3: FLdPr Me
  loc_AFF4D6: MemLdRfVar from_stack_1.htmFile
  loc_AFF4D9: LdPrVar
  loc_AFF4DB: LateMemCall
  loc_AFF4E1: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_AFF4E6: PopAdLdVar
  loc_AFF4E7: FLdPr Me
  loc_AFF4EA: MemLdRfVar from_stack_1.htmFile
  loc_AFF4ED: LdPrVar
  loc_AFF4EF: LateMemCall
  loc_AFF4F5: LitVarStr var_94, "    <th>Original</th>"
  loc_AFF4FA: PopAdLdVar
  loc_AFF4FB: FLdPr Me
  loc_AFF4FE: MemLdRfVar from_stack_1.htmFile
  loc_AFF501: LdPrVar
  loc_AFF503: LateMemCall
  loc_AFF509: LitVarStr var_94, "    <th>de Pago</th>"
  loc_AFF50E: PopAdLdVar
  loc_AFF50F: FLdPr Me
  loc_AFF512: MemLdRfVar from_stack_1.htmFile
  loc_AFF515: LdPrVar
  loc_AFF517: LateMemCall
  loc_AFF51D: LitVarStr var_94, "  </tr>"
  loc_AFF522: PopAdLdVar
  loc_AFF523: FLdPr Me
  loc_AFF526: MemLdRfVar from_stack_1.htmFile
  loc_AFF529: LdPrVar
  loc_AFF52B: LateMemCall
  loc_AFF531: LitVarStr var_94, "  </THEAD>"
  loc_AFF536: PopAdLdVar
  loc_AFF537: FLdPr Me
  loc_AFF53A: MemLdRfVar from_stack_1.htmFile
  loc_AFF53D: LdPrVar
  loc_AFF53F: LateMemCall
  loc_AFF545: ExitProcHresult
  loc_AFF546: FLdFPR4 var_1C00
End Function

Private Function Proc_186_45_982B60() '982B60
  'Data Table: 4DCA5C
  loc_982B20: LitVarStr var_94, "</table>"
  loc_982B25: PopAdLdVar
  loc_982B26: FLdPr Me
  loc_982B29: MemLdRfVar from_stack_1.htmFile
  loc_982B2C: LdPrVar
  loc_982B2E: LateMemCall
  loc_982B34: LitVarStr var_94, "</body>"
  loc_982B39: PopAdLdVar
  loc_982B3A: FLdPr Me
  loc_982B3D: MemLdRfVar from_stack_1.htmFile
  loc_982B40: LdPrVar
  loc_982B42: LateMemCall
  loc_982B48: LitVarStr var_94, "</html>"
  loc_982B4D: PopAdLdVar
  loc_982B4E: FLdPr Me
  loc_982B51: MemLdRfVar from_stack_1.htmFile
  loc_982B54: LdPrVar
  loc_982B56: LateMemCall
  loc_982B5C: ExitProcHresult
End Function
