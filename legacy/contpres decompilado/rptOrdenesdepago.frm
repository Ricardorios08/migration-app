VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptOrdenesdepago
  Caption = "Órdenes de pago por fecha"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptOrdenesdepago.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 9135
  ClientHeight = 6600
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 6345
    Width = 9135
    Height = 255
    TabIndex = 33
    OleObjectBlob = "rptOrdenesdepago.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 7320
    Top = 5400
    Width = 735
    Height = 615
    TabIndex = 31
    Cancel = -1  'True
    Picture = "rptOrdenesdepago.frx":094A
    Style = 1
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptOrdenesdepago.frx":0B9C
    Left = 5520
    Top = 0
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 5160
    Width = 3255
    Height = 1095
    TabIndex = 29
    Begin VB.CommandButton cmdXLS
      Caption = "&XLS"
      Left = 1680
      Top = 360
      Width = 1335
      Height = 495
      Enabled = 0   'False
      TabIndex = 34
    End
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 30
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 5160
    Width = 3015
    Height = 1095
    TabIndex = 26
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 28
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 27
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 8895
    Height = 5055
    TabIndex = 0
    Begin VB.Frame Frame4
      Caption = "Orden de Pago Nº"
      Left = 240
      Top = 3960
      Width = 4935
      Height = 735
      TabIndex = 21
      Begin MSMask.MaskEdBox NumeOrpaDesdeMsk
        Left = 1920
        Top = 360
        Width = 735
        Height = 315
        TabIndex = 23
        OleObjectBlob = "rptOrdenesdepago.frx":0C00
      End
      Begin MSMask.MaskEdBox NumeOrpaHastaMsk
        Left = 3600
        Top = 360
        Width = 735
        Height = 315
        TabIndex = 25
        OleObjectBlob = "rptOrdenesdepago.frx":0C6A
      End
      Begin VB.Label Label7
        Caption = "Desde:"
        Left = 1320
        Top = 360
        Width = 510
        Height = 195
        TabIndex = 22
        Alignment = 1 'Right Justify
        AutoSize = -1  'True
      End
      Begin VB.Label Label6
        Caption = "Hasta:"
        Left = 3045
        Top = 360
        Width = 465
        Height = 195
        TabIndex = 24
        Alignment = 1 'Right Justify
        AutoSize = -1  'True
      End
    End
    Begin VB.Frame Frame5
      Caption = " Expediente "
      Left = 240
      Top = 3120
      Width = 4695
      Height = 735
      TabIndex = 19
      Begin VB.ComboBox cboExpeImpu
        Left = 1560
        Top = 240
        Width = 2415
        Height = 315
        TabIndex = 20
      End
    End
    Begin VB.Frame Frametipo
      Caption = " Tipo "
      Left = 240
      Top = 2280
      Width = 3975
      Height = 735
      TabIndex = 15
      Begin VB.OptionButton optTodas
        Caption = "Todas"
        Left = 120
        Top = 360
        Width = 855
        Height = 195
        TabIndex = 16
        Value = 255
      End
      Begin VB.OptionButton optDevengado
        Caption = "Devengado"
        Left = 1080
        Top = 360
        Width = 1215
        Height = 195
        TabIndex = 17
      End
      Begin VB.OptionButton optDebito
        Caption = "Débito"
        Left = 2400
        Top = 360
        Width = 855
        Height = 195
        TabIndex = 18
      End
    End
    Begin VB.Frame FrameFecha
      Caption = " Fecha de: "
      Left = 240
      Top = 1440
      Width = 4935
      Height = 735
      TabIndex = 10
      Begin VB.OptionButton optAnulacion
        Caption = "Anulación"
        Left = 3600
        Top = 360
        Width = 1095
        Height = 195
        TabIndex = 14
      End
      Begin VB.OptionButton optArchivo
        Caption = "Archivo"
        Left = 2520
        Top = 360
        Width = 855
        Height = 195
        TabIndex = 13
      End
      Begin VB.OptionButton optRemision
        Caption = "Remisión"
        Left = 1320
        Top = 360
        Width = 975
        Height = 195
        TabIndex = 12
      End
      Begin VB.OptionButton optEmision
        Caption = "Emisión"
        Left = 240
        Top = 360
        Width = 855
        Height = 195
        TabIndex = 11
        Value = 255
      End
    End
    Begin VB.CommandButton cmdHasta
      Left = 4440
      Top = 795
      Width = 375
      Height = 375
      TabIndex = 8
      Picture = "rptOrdenesdepago.frx":0CD4
      Style = 1
    End
    Begin VB.ComboBox cboPeriodo
      Style = 2
      ForeColor = &HFF0000&
      Left = 840
      Top = 360
      Width = 1095
      Height = 315
      TabIndex = 2
    End
    Begin VB.CommandButton cmdDesde
      Left = 2040
      Top = 795
      Width = 375
      Height = 375
      TabIndex = 5
      Picture = "rptOrdenesdepago.frx":1216
      Style = 1
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 6480
      Top = 720
      Width = 1335
      Height = 495
      TabIndex = 9
    End
    Begin MSMask.MaskEdBox mskDesde
      Left = 840
      Top = 840
      Width = 1095
      Height = 285
      TabIndex = 4
      OleObjectBlob = "rptOrdenesdepago.frx":1758
      Appearance = 0 'Flat
    End
    Begin MSMask.MaskEdBox mskHasta
      Left = 3240
      Top = 840
      Width = 1095
      Height = 285
      TabIndex = 7
      OleObjectBlob = "rptOrdenesdepago.frx":17E0
      Appearance = 0 'Flat
    End
    Begin VB.Label Label1
      Caption = "Hasta:"
      Left = 2640
      Top = 885
      Width = 465
      Height = 195
      TabIndex = 6
      AutoSize = -1  'True
    End
    Begin VB.Label Label3
      Caption = "Periodo:"
      Left = 120
      Top = 360
      Width = 585
      Height = 195
      TabIndex = 1
      AutoSize = -1  'True
    End
    Begin VB.Label Label2
      Caption = "Desde:"
      Left = 195
      Top = 840
      Width = 510
      Height = 195
      TabIndex = 3
      AutoSize = -1  'True
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 7440
    Top = 5640
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 32
    OleObjectBlob = "rptOrdenesdepago.frx":1868
  End
End

Attribute VB_Name = "rptOrdenesdepago"

Public htmFile As Variant
Public bLogos As Boolean
Public bGenerado As Boolean


Private Sub cmdSalir_Click() '97AF14
  'Data Table: 4CE380
  loc_97AEE4: LitVarStr var_94, "Cerrando..."
  loc_97AEE9: PopAdLdVar
  loc_97AEEA: FLdPr Me
  loc_97AEED: VCallAd Control_ID_statusBar
  loc_97AEF0: FStAdFunc var_A8
  loc_97AEF3: FLdPr var_A8
  loc_97AEF6: LateIdSt
  loc_97AEFB: FFree1Ad var_A8
  loc_97AEFE: ILdRf Me
  loc_97AF01: FStAdNoPop
  loc_97AF05: ImpAdLdRf MemVar_C44F9C
  loc_97AF08: NewIfNullPr Me
  loc_97AF0B: Me.Global.Unload from_stack_1
  loc_97AF10: FFree1Ad var_A8
  loc_97AF13: ExitProcHresult
End Sub

Private Sub NumeOrpaHastaMsk_UnknownEvent_0 '94D880
  'Data Table: 4CE380
  loc_94D86C: FLdPr Me
  loc_94D86F: VCallAd Control_ID_NumeOrpaHastaMsk
  loc_94D872: CVarAd
  loc_94D876: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94D87B: FFree1Var var_94 = ""
  loc_94D87E: ExitProcHresult
End Sub

Private Function NumeOrpaHastaMsk_UnknownEvent_8(arg_C) '9A6FE0
  'Data Table: 4CE380
  loc_9A6F64: FLdPr Me
  loc_9A6F67: VCallAd Control_ID_NumeOrpaHastaMsk
  loc_9A6F6A: FStAdFunc var_88
  loc_9A6F6D: FLdPr var_88
  loc_9A6F70: LateIdLdVar var_98 DispID_22 0
  loc_9A6F77: PopAd
  loc_9A6F79: LitI2_Byte 0
  loc_9A6F7B: LitI2_Byte 0
  loc_9A6F7D: FLdRfVar var_98
  loc_9A6F80: CStrVarTmp
  loc_9A6F81: FStStrNoPop var_9C
  loc_9A6F84: LitStr "Número de orden de pago"
  loc_9A6F87: ImpAdCallI2 Proc_266_27_9A5218(, , , )
  loc_9A6F8C: FStStrNoPop var_A0
  loc_9A6F8F: FLdPr Me
  loc_9A6F92: MemStStrCopy
  loc_9A6F96: FFreeStr var_9C = ""
  loc_9A6F9D: FFree1Ad var_88
  loc_9A6FA0: FFree1Var var_98 = ""
  loc_9A6FA3: FLdPr Me
  loc_9A6FA6: VCallAd Control_ID_NumeOrpaHastaMsk
  loc_9A6FA9: FStAdFunc var_AC
  loc_9A6FAC: LitNothing
  loc_9A6FAE: CastAd
  loc_9A6FB1: FStAdFunc var_A8
  loc_9A6FB4: FLdRfVar var_A8
  loc_9A6FB7: FLdZeroAd var_AC
  loc_9A6FBA: FStAdFuncNoPop
  loc_9A6FBD: CastAd
  loc_9A6FC0: FStAdFunc var_A4
  loc_9A6FC3: FLdRfVar var_A4
  loc_9A6FC6: FLdPr Me
  loc_9A6FC9: MemLdRfVar from_stack_1.global_80
  loc_9A6FCC: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9A6FD1: IStI2 arg_C
  loc_9A6FD4: FFreeAd var_88 = "": var_A4 = "": var_A8 = ""
  loc_9A6FDF: ExitProcHresult
End Function

Private Sub cmdNueva_Click() '9D9A3C
  'Data Table: 4CE380
  loc_9D9940: LitI2_Byte 0
  loc_9D9942: FLdPr Me
  loc_9D9945: MemStI2 bGenerado
  loc_9D9948: LitI2_Byte &HFF
  loc_9D994A: FLdPr Me
  loc_9D994D: MemStI2 bLogos
  loc_9D9950: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_9D9955: ImpAdLdI2 MemVar_C3D064
  loc_9D9958: CStrUI1
  loc_9D995A: FStStrNoPop var_88
  loc_9D995D: FLdPr Me
  loc_9D9960: VCallAd Control_ID_cboPeriodo
  loc_9D9963: FStAdFunc var_8C
  loc_9D9966: FLdPr var_8C
  loc_9D9969: Me.Text = from_stack_1
  loc_9D996E: FFree1Str var_88
  loc_9D9971: FFree1Ad var_8C
  loc_9D9974: LitStr "01/01/"
  loc_9D9977: FLdRfVar var_88
  loc_9D997A: FLdPr Me
  loc_9D997D: VCallAd Control_ID_cboPeriodo
  loc_9D9980: FStAdFunc var_8C
  loc_9D9983: FLdPr var_8C
  loc_9D9986:  = Me.Text
  loc_9D998B: ILdRf var_88
  loc_9D998E: ConcatStr
  loc_9D998F: FStStrNoPop var_90
  loc_9D9992: CDateStr
  loc_9D9994: CStrDate
  loc_9D9996: CVarStr var_A0
  loc_9D9999: PopAdLdVar
  loc_9D999A: FLdPr Me
  loc_9D999D: VCallAd Control_ID_mskDesde
  loc_9D99A0: FStAdFunc var_B4
  loc_9D99A3: FLdPr var_B4
  loc_9D99A6: LateIdSt
  loc_9D99AB: FFreeStr var_88 = ""
  loc_9D99B2: FFreeAd var_8C = ""
  loc_9D99B9: FFree1Var var_A0 = ""
  loc_9D99BC: ImpAdLdFPR8 MemVar_C3D04C
  loc_9D99BF: CStrDate
  loc_9D99C1: CVarStr var_A0
  loc_9D99C4: PopAdLdVar
  loc_9D99C5: FLdPr Me
  loc_9D99C8: VCallAd Control_ID_mskHasta
  loc_9D99CB: FStAdFunc var_8C
  loc_9D99CE: FLdPr var_8C
  loc_9D99D1: LateIdSt
  loc_9D99D6: FFree1Ad var_8C
  loc_9D99D9: FFree1Var var_A0 = ""
  loc_9D99DC: LitI2_Byte &HFF
  loc_9D99DE: FLdPr Me
  loc_9D99E1: VCallAd Control_ID_optTodas
  loc_9D99E4: FStAdFunc var_8C
  loc_9D99E7: FLdPr var_8C
  loc_9D99EA: Me.Value = from_stack_1b
  loc_9D99EF: FFree1Ad var_8C
  loc_9D99F2: LitI2_Byte &HFF
  loc_9D99F4: FLdPr Me
  loc_9D99F7: VCallAd Control_ID_optEmision
  loc_9D99FA: FStAdFunc var_8C
  loc_9D99FD: FLdPr var_8C
  loc_9D9A00: Me.Value = from_stack_1b
  loc_9D9A05: FFree1Ad var_8C
  loc_9D9A08: LitStr vbNullString
  loc_9D9A0B: FLdPr Me
  loc_9D9A0E: VCallAd Control_ID_cboExpeImpu
  loc_9D9A11: FStAdFunc var_8C
  loc_9D9A14: FLdPr var_8C
  loc_9D9A17: Me.Text = from_stack_1
  loc_9D9A1C: FFree1Ad var_8C
  loc_9D9A1F: Call HabilitarCriterio()
  loc_9D9A24: ILdRf Me
  loc_9D9A27: CastAd
  loc_9D9A2A: FStAdFunc var_8C
  loc_9D9A2D: FLdRfVar var_8C
  loc_9D9A30: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_9D9A35: FFree1Ad var_8C
  loc_9D9A38: ExitProcHresult
End Sub

Private Sub mskDesde_UnknownEvent_0 '952F68
  'Data Table: 4CE380
  loc_952F54: FLdPr Me
  loc_952F57: VCallAd Control_ID_mskDesde
  loc_952F5A: CVarAd
  loc_952F5E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_952F63: FFree1Var var_94 = ""
  loc_952F66: ExitProcHresult
End Sub

Private Function mskDesde_UnknownEvent_8(arg_C) '9B42B4
  'Data Table: 4CE380
  loc_9B4218: FLdPr Me
  loc_9B421B: VCallAd Control_ID_mskDesde
  loc_9B421E: FStAdFunc var_88
  loc_9B4221: FLdPr var_88
  loc_9B4224: LateIdLdVar var_98 DispID_15 0
  loc_9B422B: PopAd
  loc_9B422D: FLdPr Me
  loc_9B4230: VCallAd Control_ID_mskDesde
  loc_9B4233: FStAdFunc var_AC
  loc_9B4236: LitI2_Byte 0
  loc_9B4238: PopTmpLdAd2 var_A2
  loc_9B423B: FLdZeroAd var_AC
  loc_9B423E: FStAdFunc var_A0
  loc_9B4241: FLdRfVar var_A0
  loc_9B4244: LitStr vbNullString
  loc_9B4247: LitI2_Byte 0
  loc_9B4249: LitI2_Byte 0
  loc_9B424B: FLdRfVar var_98
  loc_9B424E: CStrVarTmp
  loc_9B424F: FStStrNoPop var_9C
  loc_9B4252: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9B4257: FStStrNoPop var_A8
  loc_9B425A: FLdPr Me
  loc_9B425D: MemStStrCopy
  loc_9B4261: FFreeStr var_9C = ""
  loc_9B4268: FFreeAd var_88 = "": var_A0 = ""
  loc_9B4271: FFree1Var var_98 = ""
  loc_9B4274: FLdPr Me
  loc_9B4277: VCallAd Control_ID_mskDesde
  loc_9B427A: FStAdFunc var_B0
  loc_9B427D: LitNothing
  loc_9B427F: CastAd
  loc_9B4282: FStAdFunc var_AC
  loc_9B4285: FLdRfVar var_AC
  loc_9B4288: FLdZeroAd var_B0
  loc_9B428B: FStAdFuncNoPop
  loc_9B428E: CastAd
  loc_9B4291: FStAdFunc var_A0
  loc_9B4294: FLdRfVar var_A0
  loc_9B4297: FLdPr Me
  loc_9B429A: MemLdRfVar from_stack_1.global_80
  loc_9B429D: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9B42A2: IStI2 arg_C
  loc_9B42A5: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9B42B0: ExitProcHresult
End Function

Private Sub cmdDesde_Click() '97D9B0
  'Data Table: 4CE380
  loc_97D97C: LitVar_Missing var_A4
  loc_97D97F: PopAdLdVar
  loc_97D980: LitVarI4
  loc_97D988: PopAdLdVar
  loc_97D989: ImpAdLdRf MemVar_C3D9A8
  loc_97D98C: NewIfNullPr frmCalendario
  loc_97D98F: frmCalendario.Show from_stack_1, from_stack_2
  loc_97D994: ImpAdLdRf MemVar_C3D038
  loc_97D997: CDargRef
  loc_97D99B: FLdPr Me
  loc_97D99E: VCallAd Control_ID_mskDesde
  loc_97D9A1: FStAdFunc var_A8
  loc_97D9A4: FLdPr var_A8
  loc_97D9A7: LateIdSt
  loc_97D9AC: FFree1Ad var_A8
  loc_97D9AF: ExitProcHresult
End Sub

Private Sub cmdHasta_Click() '97D948
  'Data Table: 4CE380
  loc_97D914: LitVar_Missing var_A4
  loc_97D917: PopAdLdVar
  loc_97D918: LitVarI4
  loc_97D920: PopAdLdVar
  loc_97D921: ImpAdLdRf MemVar_C3D9A8
  loc_97D924: NewIfNullPr frmCalendario
  loc_97D927: frmCalendario.Show from_stack_1, from_stack_2
  loc_97D92C: ImpAdLdRf MemVar_C3D038
  loc_97D92F: CDargRef
  loc_97D933: FLdPr Me
  loc_97D936: VCallAd Control_ID_mskHasta
  loc_97D939: FStAdFunc var_A8
  loc_97D93C: FLdPr var_A8
  loc_97D93F: LateIdSt
  loc_97D944: FFree1Ad var_A8
  loc_97D947: ExitProcHresult
End Sub

Private Sub cboPeriodo_Click() 'A6CA74
  'Data Table: 4CE380
  loc_A6C6F0: LitStr "SELECT IFNULL(Max(NumeOrpa),0) AS NumeOrpa FROM ordenpago WHERE PeriInfo = "
  loc_A6C6F3: FLdRfVar var_8C
  loc_A6C6F6: FLdPr Me
  loc_A6C6F9: VCallAd Control_ID_cboPeriodo
  loc_A6C6FC: FStAdFunc var_88
  loc_A6C6FF: FLdPr var_88
  loc_A6C702:  = Me.Text
  loc_A6C707: ILdRf var_8C
  loc_A6C70A: ConcatStr
  loc_A6C70B: FStStrNoPop var_90
  loc_A6C70E: ImpAdCallFPR4 Proc_266_18_98AE98()
  loc_A6C713: FFreeStr var_8C = ""
  loc_A6C71A: FFree1Ad var_88
  loc_A6C71D: FLdRfVar var_94
  loc_A6C720: ImpAdLdPr unk_4CE38B
  loc_A6C723: MemLdPr global_0
  loc_A6C726:  = Me.RecordCount
  loc_A6C72B: ILdRf var_94
  loc_A6C72E: LitI4 0
  loc_A6C733: GtI4
  loc_A6C734: BranchF loc_A6C7AC
  loc_A6C737: LitI2_Byte 1
  loc_A6C739: CStrUI1
  loc_A6C73B: CVarStr var_A4
  loc_A6C73E: PopAdLdVar
  loc_A6C73F: FLdPr Me
  loc_A6C742: VCallAd Control_ID_NumeOrpaDesdeMsk
  loc_A6C745: FStAdFunc var_88
  loc_A6C748: FLdPr var_88
  loc_A6C74B: LateIdSt
  loc_A6C750: FFree1Ad var_88
  loc_A6C753: FFree1Var var_A4 = ""
  loc_A6C756: FLdRfVar var_A4
  loc_A6C759: FLdRfVar var_B8
  loc_A6C75C: LitVarStr var_B4, "NumeOrpa"
  loc_A6C761: PopAdLdVar
  loc_A6C762: FLdRfVar var_88
  loc_A6C765: ImpAdLdPr unk_4CE38B
  loc_A6C768: MemLdPr global_0
  loc_A6C76B:  = Me.Fields
  loc_A6C770: FLdPr var_88
  loc_A6C773: from_stack_2 = Me.Item(from_stack_1)
  loc_A6C778: FLdPr var_B8
  loc_A6C77B:  = Me.Value
  loc_A6C780: FLdRfVar var_A4
  loc_A6C783: CStrVarTmp
  loc_A6C784: CVarStr var_C8
  loc_A6C787: PopAdLdVar
  loc_A6C788: FLdPr Me
  loc_A6C78B: VCallAd Control_ID_NumeOrpaHastaMsk
  loc_A6C78E: FStAdFunc var_DC
  loc_A6C791: FLdPr var_DC
  loc_A6C794: LateIdSt
  loc_A6C799: FFreeAd var_88 = "": var_B8 = ""
  loc_A6C7A2: FFreeVar var_A4 = ""
  loc_A6C7A9: Branch loc_A6C7EA
  loc_A6C7AC: LitI2_Byte 0
  loc_A6C7AE: CStrUI1
  loc_A6C7B0: CVarStr var_A4
  loc_A6C7B3: PopAdLdVar
  loc_A6C7B4: FLdPr Me
  loc_A6C7B7: VCallAd Control_ID_NumeOrpaDesdeMsk
  loc_A6C7BA: FStAdFunc var_88
  loc_A6C7BD: FLdPr var_88
  loc_A6C7C0: LateIdSt
  loc_A6C7C5: FFree1Ad var_88
  loc_A6C7C8: FFree1Var var_A4 = ""
  loc_A6C7CB: LitI2_Byte 0
  loc_A6C7CD: CStrUI1
  loc_A6C7CF: CVarStr var_A4
  loc_A6C7D2: PopAdLdVar
  loc_A6C7D3: FLdPr Me
  loc_A6C7D6: VCallAd Control_ID_NumeOrpaHastaMsk
  loc_A6C7D9: FStAdFunc var_88
  loc_A6C7DC: FLdPr var_88
  loc_A6C7DF: LateIdSt
  loc_A6C7E4: FFree1Ad var_88
  loc_A6C7E7: FFree1Var var_A4 = ""
  loc_A6C7EA: LitI4 &HB
  loc_A6C7EF: CI2I4
  loc_A6C7F0: FLdRfVar var_88
  loc_A6C7F3: ImpAdLdRf MemVar_C44F9C
  loc_A6C7F6: NewIfNullPr Me
  loc_A6C7F9:  = Me.Global.Screen
  loc_A6C7FE: FLdPr var_88
  loc_A6C801: Screen.MousePointer = from_stack_1
  loc_A6C806: FFree1Ad var_88
  loc_A6C809: FLdPr Me
  loc_A6C80C: VCallAd Control_ID_cboExpeImpu
  loc_A6C80F: FStAdFunc var_88
  loc_A6C812: FLdPr var_88
  loc_A6C815: Me.Clear
  loc_A6C81A: FFree1Ad var_88
  loc_A6C81D: LitStr "SELECT DISTINCT ExpeImpu"
  loc_A6C820: LitStr " FROM ordenpago"
  loc_A6C823: ConcatStr
  loc_A6C824: FStStrNoPop var_8C
  loc_A6C827: LitStr " WHERE PeriInfo = "
  loc_A6C82A: ConcatStr
  loc_A6C82B: FStStrNoPop var_E0
  loc_A6C82E: FLdRfVar var_90
  loc_A6C831: FLdPr Me
  loc_A6C834: VCallAd Control_ID_cboPeriodo
  loc_A6C837: FStAdFunc var_88
  loc_A6C83A: FLdPr var_88
  loc_A6C83D:  = Me.Text
  loc_A6C842: ILdRf var_90
  loc_A6C845: ConcatStr
  loc_A6C846: FStStrNoPop var_E4
  loc_A6C849: LitStr " ORDER BY ExpeImpu;"
  loc_A6C84C: ConcatStr
  loc_A6C84D: FStStrNoPop var_E8
  loc_A6C850: ImpAdCallFPR4 Proc_266_18_98AE98()
  loc_A6C855: FFreeStr var_8C = "": var_E0 = "": var_90 = "": var_E4 = ""
  loc_A6C862: FFree1Ad var_88
  loc_A6C865: FLdRfVar var_94
  loc_A6C868: ImpAdLdPr unk_4CE38B
  loc_A6C86B: MemLdPr global_0
  loc_A6C86E:  = Me.RecordCount
  loc_A6C873: ILdRf var_94
  loc_A6C876: LitI4 0
  loc_A6C87B: GtI4
  loc_A6C87C: BranchF loc_A6C8FC
  loc_A6C87F: ImpAdLdPr unk_4CE38B
  loc_A6C882: MemLdPr global_0
  loc_A6C885: Me.MoveFirst
  loc_A6C88A: FLdRfVar var_EA
  loc_A6C88D: ImpAdLdPr unk_4CE38B
  loc_A6C890: MemLdPr global_0
  loc_A6C893:  = Me.EOF
  loc_A6C898: FLdI2 var_EA
  loc_A6C89B: NotI4
  loc_A6C89C: BranchF loc_A6C8FC
  loc_A6C89F: LitVar_Missing var_D8
  loc_A6C8A2: PopAdLdVar
  loc_A6C8A3: FLdRfVar var_A4
  loc_A6C8A6: FLdRfVar var_B8
  loc_A6C8A9: LitVarStr var_B4, "ExpeImpu"
  loc_A6C8AE: PopAdLdVar
  loc_A6C8AF: FLdRfVar var_88
  loc_A6C8B2: ImpAdLdPr unk_4CE38B
  loc_A6C8B5: MemLdPr global_0
  loc_A6C8B8:  = Me.Fields
  loc_A6C8BD: FLdPr var_88
  loc_A6C8C0: from_stack_2 = Me.Item(from_stack_1)
  loc_A6C8C5: FLdPr var_B8
  loc_A6C8C8:  = Me.Value
  loc_A6C8CD: FLdRfVar var_A4
  loc_A6C8D0: CStrVarTmp
  loc_A6C8D1: FStStrNoPop var_8C
  loc_A6C8D4: FLdPr Me
  loc_A6C8D7: VCallAd Control_ID_cboExpeImpu
  loc_A6C8DA: FStAdFunc var_DC
  loc_A6C8DD: FLdPr var_DC
  loc_A6C8E0: Me.AddItem from_stack_1, from_stack_2
  loc_A6C8E5: FFree1Str var_8C
  loc_A6C8E8: FFreeAd var_88 = "": var_B8 = ""
  loc_A6C8F1: FFree1Var var_A4 = ""
  loc_A6C8F4: ImpAdCallFPR4 Proc_266_19_9414E0()
  loc_A6C8F9: Branch loc_A6C88A
  loc_A6C8FC: FLdRfVar var_8C
  loc_A6C8FF: FLdPr Me
  loc_A6C902: VCallAd Control_ID_cboPeriodo
  loc_A6C905: FStAdFunc var_88
  loc_A6C908: FLdPr var_88
  loc_A6C90B:  = Me.Text
  loc_A6C910: LitI2_Byte 1
  loc_A6C912: LitI2_Byte 1
  loc_A6C914: ILdRf var_8C
  loc_A6C917: CI2Str
  loc_A6C919: FLdRfVar var_A4
  loc_A6C91C: ImpAdCallFPR4  = DateSerial(, , )
  loc_A6C921: FLdRfVar var_A4
  loc_A6C924: CStrVarTmp
  loc_A6C925: CVarStr var_C8
  loc_A6C928: PopAdLdVar
  loc_A6C929: FLdPr Me
  loc_A6C92C: VCallAd Control_ID_mskDesde
  loc_A6C92F: FStAdFunc var_B8
  loc_A6C932: FLdPr var_B8
  loc_A6C935: LateIdSt
  loc_A6C93A: FFree1Str var_8C
  loc_A6C93D: FFreeAd var_88 = ""
  loc_A6C944: FFreeVar var_A4 = ""
  loc_A6C94B: FLdRfVar var_8C
  loc_A6C94E: FLdPr Me
  loc_A6C951: VCallAd Control_ID_cboPeriodo
  loc_A6C954: FStAdFunc var_88
  loc_A6C957: FLdPr var_88
  loc_A6C95A:  = Me.Text
  loc_A6C95F: ILdRf var_8C
  loc_A6C962: CI2Str
  loc_A6C964: ImpAdLdI2 MemVar_C3D064
  loc_A6C967: LtI2
  loc_A6C968: FFree1Str var_8C
  loc_A6C96B: FFree1Ad var_88
  loc_A6C96E: BranchF loc_A6C9C3
  loc_A6C971: FLdRfVar var_8C
  loc_A6C974: FLdPr Me
  loc_A6C977: VCallAd Control_ID_cboPeriodo
  loc_A6C97A: FStAdFunc var_88
  loc_A6C97D: FLdPr var_88
  loc_A6C980:  = Me.Text
  loc_A6C985: LitI2_Byte &H1F
  loc_A6C987: LitI2_Byte &HC
  loc_A6C989: ILdRf var_8C
  loc_A6C98C: CI2Str
  loc_A6C98E: FLdRfVar var_A4
  loc_A6C991: ImpAdCallFPR4  = DateSerial(, , )
  loc_A6C996: FLdRfVar var_A4
  loc_A6C999: CStrVarTmp
  loc_A6C99A: CVarStr var_C8
  loc_A6C99D: PopAdLdVar
  loc_A6C99E: FLdPr Me
  loc_A6C9A1: VCallAd Control_ID_mskHasta
  loc_A6C9A4: FStAdFunc var_B8
  loc_A6C9A7: FLdPr var_B8
  loc_A6C9AA: LateIdSt
  loc_A6C9AF: FFree1Str var_8C
  loc_A6C9B2: FFreeAd var_88 = ""
  loc_A6C9B9: FFreeVar var_A4 = ""
  loc_A6C9C0: Branch loc_A6CA51
  loc_A6C9C3: FLdRfVar var_8C
  loc_A6C9C6: FLdPr Me
  loc_A6C9C9: VCallAd Control_ID_cboPeriodo
  loc_A6C9CC: FStAdFunc var_88
  loc_A6C9CF: FLdPr var_88
  loc_A6C9D2:  = Me.Text
  loc_A6C9D7: ILdRf var_8C
  loc_A6C9DA: CI2Str
  loc_A6C9DC: ImpAdLdI2 MemVar_C3D064
  loc_A6C9DF: GtI2
  loc_A6C9E0: FFree1Str var_8C
  loc_A6C9E3: FFree1Ad var_88
  loc_A6C9E6: BranchF loc_A6CA31
  loc_A6C9E9: FLdRfVar var_8C
  loc_A6C9EC: FLdPr Me
  loc_A6C9EF: VCallAd Control_ID_cboPeriodo
  loc_A6C9F2: FStAdFunc var_88
  loc_A6C9F5: FLdPr var_88
  loc_A6C9F8:  = Me.Text
  loc_A6C9FD: ILdRf var_8C
  loc_A6CA00: CI2Str
  loc_A6CA02: PopTmpLdAd2 var_EA
  loc_A6CA05: ImpAdCallFPR4 Proc_261_32_A53D7C()
  loc_A6CA0A: CStrDate
  loc_A6CA0C: CVarStr var_A4
  loc_A6CA0F: PopAdLdVar
  loc_A6CA10: FLdPr Me
  loc_A6CA13: VCallAd Control_ID_mskHasta
  loc_A6CA16: FStAdFunc var_B8
  loc_A6CA19: FLdPr var_B8
  loc_A6CA1C: LateIdSt
  loc_A6CA21: FFree1Str var_8C
  loc_A6CA24: FFreeAd var_88 = ""
  loc_A6CA2B: FFree1Var var_A4 = ""
  loc_A6CA2E: Branch loc_A6CA51
  loc_A6CA31: ImpAdLdFPR8 MemVar_C3D04C
  loc_A6CA34: CStrDate
  loc_A6CA36: CVarStr var_A4
  loc_A6CA39: PopAdLdVar
  loc_A6CA3A: FLdPr Me
  loc_A6CA3D: VCallAd Control_ID_mskHasta
  loc_A6CA40: FStAdFunc var_88
  loc_A6CA43: FLdPr var_88
  loc_A6CA46: LateIdSt
  loc_A6CA4B: FFree1Ad var_88
  loc_A6CA4E: FFree1Var var_A4 = ""
  loc_A6CA51: LitI4 0
  loc_A6CA56: CI2I4
  loc_A6CA57: FLdRfVar var_88
  loc_A6CA5A: ImpAdLdRf MemVar_C44F9C
  loc_A6CA5D: NewIfNullPr Me
  loc_A6CA60:  = Me.Global.Screen
  loc_A6CA65: FLdPr var_88
  loc_A6CA68: Screen.MousePointer = from_stack_1
  loc_A6CA6D: FFree1Ad var_88
  loc_A6CA70: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '964FBC
  'Data Table: 4CE380
  loc_964FA4: ILdRf Me
  loc_964FA7: CastAd
  loc_964FAA: FStAdFunc var_88
  loc_964FAD: FLdRfVar var_88
  loc_964FB0: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_964FB5: FFree1Ad var_88
  loc_964FB8: ExitProcHresult
End Sub

Private Sub cmdXLS_Click() '967EDC
  'Data Table: 4CE380
  loc_967EC0: LitI2_Byte &HFF
  loc_967EC2: LitI2_Byte 0
  loc_967EC4: ILdRf Me
  loc_967EC7: CastAd
  loc_967ECA: FStAdFunc var_88
  loc_967ECD: FLdRfVar var_88
  loc_967ED0: ImpAdCallFPR4 Proc_263_4_A28DF0(, , )
  loc_967ED5: FFree1Ad var_88
  loc_967ED8: ExitProcHresult
End Sub

Private Sub mskHasta_UnknownEvent_0 '94D958
  'Data Table: 4CE380
  loc_94D944: FLdPr Me
  loc_94D947: VCallAd Control_ID_mskHasta
  loc_94D94A: CVarAd
  loc_94D94E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94D953: FFree1Var var_94 = ""
  loc_94D956: ExitProcHresult
End Sub

Private Function mskHasta_UnknownEvent_8(arg_C) '9B4484
  'Data Table: 4CE380
  loc_9B43E8: FLdPr Me
  loc_9B43EB: VCallAd Control_ID_mskHasta
  loc_9B43EE: FStAdFunc var_88
  loc_9B43F1: FLdPr var_88
  loc_9B43F4: LateIdLdVar var_98 DispID_15 0
  loc_9B43FB: PopAd
  loc_9B43FD: FLdPr Me
  loc_9B4400: VCallAd Control_ID_mskHasta
  loc_9B4403: FStAdFunc var_AC
  loc_9B4406: LitI2_Byte 0
  loc_9B4408: PopTmpLdAd2 var_A2
  loc_9B440B: FLdZeroAd var_AC
  loc_9B440E: FStAdFunc var_A0
  loc_9B4411: FLdRfVar var_A0
  loc_9B4414: LitStr vbNullString
  loc_9B4417: LitI2_Byte 0
  loc_9B4419: LitI2_Byte 0
  loc_9B441B: FLdRfVar var_98
  loc_9B441E: CStrVarTmp
  loc_9B441F: FStStrNoPop var_9C
  loc_9B4422: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9B4427: FStStrNoPop var_A8
  loc_9B442A: FLdPr Me
  loc_9B442D: MemStStrCopy
  loc_9B4431: FFreeStr var_9C = ""
  loc_9B4438: FFreeAd var_88 = "": var_A0 = ""
  loc_9B4441: FFree1Var var_98 = ""
  loc_9B4444: FLdPr Me
  loc_9B4447: VCallAd Control_ID_mskHasta
  loc_9B444A: FStAdFunc var_B0
  loc_9B444D: LitNothing
  loc_9B444F: CastAd
  loc_9B4452: FStAdFunc var_AC
  loc_9B4455: FLdRfVar var_AC
  loc_9B4458: FLdZeroAd var_B0
  loc_9B445B: FStAdFuncNoPop
  loc_9B445E: CastAd
  loc_9B4461: FStAdFunc var_A0
  loc_9B4464: FLdRfVar var_A0
  loc_9B4467: FLdPr Me
  loc_9B446A: MemLdRfVar from_stack_1.global_80
  loc_9B446D: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9B4472: IStI2 arg_C
  loc_9B4475: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9B4480: ExitProcHresult
End Function

Private Sub NumeOrpaDesdeMsk_UnknownEvent_0 '94D760
  'Data Table: 4CE380
  loc_94D74C: FLdPr Me
  loc_94D74F: VCallAd Control_ID_NumeOrpaDesdeMsk
  loc_94D752: CVarAd
  loc_94D756: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94D75B: FFree1Var var_94 = ""
  loc_94D75E: ExitProcHresult
End Sub

Private Function NumeOrpaDesdeMsk_UnknownEvent_8(arg_C) '9A7620
  'Data Table: 4CE380
  loc_9A75A4: FLdPr Me
  loc_9A75A7: VCallAd Control_ID_NumeOrpaDesdeMsk
  loc_9A75AA: FStAdFunc var_88
  loc_9A75AD: FLdPr var_88
  loc_9A75B0: LateIdLdVar var_98 DispID_22 0
  loc_9A75B7: PopAd
  loc_9A75B9: LitI2_Byte 0
  loc_9A75BB: LitI2_Byte 0
  loc_9A75BD: FLdRfVar var_98
  loc_9A75C0: CStrVarTmp
  loc_9A75C1: FStStrNoPop var_9C
  loc_9A75C4: LitStr "Número de orden de pago"
  loc_9A75C7: ImpAdCallI2 Proc_266_27_9A5218(, , , )
  loc_9A75CC: FStStrNoPop var_A0
  loc_9A75CF: FLdPr Me
  loc_9A75D2: MemStStrCopy
  loc_9A75D6: FFreeStr var_9C = ""
  loc_9A75DD: FFree1Ad var_88
  loc_9A75E0: FFree1Var var_98 = ""
  loc_9A75E3: FLdPr Me
  loc_9A75E6: VCallAd Control_ID_NumeOrpaDesdeMsk
  loc_9A75E9: FStAdFunc var_AC
  loc_9A75EC: LitNothing
  loc_9A75EE: CastAd
  loc_9A75F1: FStAdFunc var_A8
  loc_9A75F4: FLdRfVar var_A8
  loc_9A75F7: FLdZeroAd var_AC
  loc_9A75FA: FStAdFuncNoPop
  loc_9A75FD: CastAd
  loc_9A7600: FStAdFunc var_A4
  loc_9A7603: FLdRfVar var_A4
  loc_9A7606: FLdPr Me
  loc_9A7609: MemLdRfVar from_stack_1.global_80
  loc_9A760C: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9A7611: IStI2 arg_C
  loc_9A7614: FFreeAd var_88 = "": var_A4 = "": var_A8 = ""
  loc_9A761F: ExitProcHresult
End Function

Private Sub Form_Load() '9D5B80
  'Data Table: 4CE380
  loc_9D5A94: LitI2_Byte &HFF
  loc_9D5A96: ImpAdStI2 MemVar_C3D840
  loc_9D5A99: ILdRf Me
  loc_9D5A9C: CastAd
  loc_9D5A9F: FStAdFunc var_88
  loc_9D5AA2: FLdRfVar var_88
  loc_9D5AA5: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_9D5AAA: FFree1Ad var_88
  loc_9D5AAD: LitStr "SELECT * FROM infogov.periodo ORDER BY PeriInfo"
  loc_9D5AB0: FLdPr Me
  loc_9D5AB3: MemLdRfVar from_stack_1.global_72
  loc_9D5AB6: NewIfNullPr clsbase
  loc_9D5AB9: Call clsbase.RedefineRS(from_stack_1v)
  loc_9D5ABE: FLdRfVar var_8C
  loc_9D5AC1: FLdPr Me
  loc_9D5AC4: MemLdRfVar from_stack_1.global_72
  loc_9D5AC7: NewIfNullPr clsbase
  loc_9D5ACA: from_stack_1 = clsbase.RecordCount
  loc_9D5ACF: ILdRf var_8C
  loc_9D5AD2: LitI4 0
  loc_9D5AD7: GtI4
  loc_9D5AD8: BranchF loc_9D5B77
  loc_9D5ADB: FLdPr Me
  loc_9D5ADE: MemLdRfVar from_stack_1.global_72
  loc_9D5AE1: NewIfNullPr clsbase
  loc_9D5AE4: Call clsbase.MoveFirst()
  loc_9D5AE9: FLdRfVar var_8E
  loc_9D5AEC: FLdPr Me
  loc_9D5AEF: MemLdRfVar from_stack_1.global_72
  loc_9D5AF2: NewIfNullPr clsbase
  loc_9D5AF5: from_stack_1 = clsbase.EOF
  loc_9D5AFA: FLdI2 var_8E
  loc_9D5AFD: NotI4
  loc_9D5AFE: BranchF loc_9D5B77
  loc_9D5B01: LitVar_Missing var_CC
  loc_9D5B04: PopAdLdVar
  loc_9D5B05: FLdRfVar var_B8
  loc_9D5B08: FLdRfVar var_A8
  loc_9D5B0B: LitVarStr var_A4, "PeriInfo"
  loc_9D5B10: PopAdLdVar
  loc_9D5B11: FLdRfVar var_94
  loc_9D5B14: FLdRfVar var_88
  loc_9D5B17: FLdPr Me
  loc_9D5B1A: MemLdRfVar from_stack_1.global_72
  loc_9D5B1D: NewIfNullPr clsbase
  loc_9D5B20: from_stack_1v = clsbase.RsFrmGet()
  loc_9D5B25: FLdPr var_88
  loc_9D5B28:  = Me.Fields
  loc_9D5B2D: FLdPr var_94
  loc_9D5B30: from_stack_2 = Me.Item(from_stack_1)
  loc_9D5B35: FLdPr var_A8
  loc_9D5B38:  = Me.Value
  loc_9D5B3D: FLdRfVar var_B8
  loc_9D5B40: CStrVarTmp
  loc_9D5B41: FStStrNoPop var_BC
  loc_9D5B44: FLdPr Me
  loc_9D5B47: VCallAd Control_ID_cboPeriodo
  loc_9D5B4A: FStAdFunc var_D0
  loc_9D5B4D: FLdPr var_D0
  loc_9D5B50: Me.AddItem from_stack_1, from_stack_2
  loc_9D5B55: FFree1Str var_BC
  loc_9D5B58: FFreeAd var_88 = "": var_94 = "": var_A8 = ""
  loc_9D5B63: FFree1Var var_B8 = ""
  loc_9D5B66: FLdPr Me
  loc_9D5B69: MemLdRfVar from_stack_1.global_72
  loc_9D5B6C: NewIfNullPr clsbase
  loc_9D5B6F: Call clsbase.MoveSiguiente()
  loc_9D5B74: Branch loc_9D5AE9
  loc_9D5B77: Call cmdNueva_Click()
  loc_9D5B7C: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '965054
  'Data Table: 4CE380
  loc_96503C: FLdPr Me
  loc_96503F: VCallAd Control_ID_wbbReporte
  loc_965042: FStAdFunc var_88
  loc_965045: FLdRfVar var_88
  loc_965048: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_96504D: FFree1Ad var_88
  loc_965050: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '98BB34
  'Data Table: 4CE380
  loc_98BAFC: FLdPr Me
  loc_98BAFF: VCallAd Control_ID_statusBar
  loc_98BB02: FStAdFunc var_88
  loc_98BB05: FLdPr var_88
  loc_98BB08: LateIdLdVar var_98 DispID_1 0
  loc_98BB0F: CStrVarTmp
  loc_98BB10: CVarStr var_A8
  loc_98BB13: PopAdLdVar
  loc_98BB14: FLdPr Me
  loc_98BB17: VCallAd Control_ID_statusBar
  loc_98BB1A: FStAdFunc var_BC
  loc_98BB1D: FLdPr var_BC
  loc_98BB20: LateIdSt
  loc_98BB25: FFreeAd var_88 = ""
  loc_98BB2C: FFreeVar var_98 = ""
  loc_98BB33: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '964E8C
  'Data Table: 4CE380
  loc_964E74: ILdRf Me
  loc_964E77: CastAd
  loc_964E7A: FStAdFunc var_88
  loc_964E7D: FLdRfVar var_88
  loc_964E80: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_964E85: FFree1Ad var_88
  loc_964E88: ExitProcHresult
  loc_964E89: ThisVCallAd
End Sub

Private Sub cboExpeImpu_KeyPress(KeyAscii As Integer) '976354
  'Data Table: 4CE380
  loc_97632C: FLdPr Me
  loc_97632F: VCallAd Control_ID_cboExpeImpu
  loc_976332: FStAdFunc var_8C
  loc_976335: ILdI2 KeyAscii
  loc_976338: FLdZeroAd var_8C
  loc_97633B: FStAdFunc var_88
  loc_97633E: FLdRfVar var_88
  loc_976341: ImpAdCallI2 Proc_265_8_A56F7C(, )
  loc_976346: IStI2 KeyAscii
  loc_976349: FFreeAd var_88 = ""
  loc_976350: ExitProcHresult
End Sub

Private Sub cboExpeImpu_Validate(Cancel As Boolean) '9C758C
  'Data Table: 4CE380
  loc_9C74C0: FLdRfVar var_8C
  loc_9C74C3: FLdPr Me
  loc_9C74C6: VCallAd Control_ID_cboExpeImpu
  loc_9C74C9: FStAdFunc var_88
  loc_9C74CC: FLdPr var_88
  loc_9C74CF:  = Me.Text
  loc_9C74D4: ILdRf var_8C
  loc_9C74D7: LitStr vbNullString
  loc_9C74DA: NeStr
  loc_9C74DC: FFree1Str var_8C
  loc_9C74DF: FFree1Ad var_88
  loc_9C74E2: BranchF loc_9C7589
  loc_9C74E5: FLdRfVar var_8C
  loc_9C74E8: FLdPr Me
  loc_9C74EB: VCallAd Control_ID_cboExpeImpu
  loc_9C74EE: FStAdFunc var_88
  loc_9C74F1: FLdPr var_88
  loc_9C74F4:  = Me.Text
  loc_9C74F9: LitI2_Byte 0
  loc_9C74FB: PopTmpLdAd2 var_92
  loc_9C74FE: LitI2_Byte 0
  loc_9C7500: PopTmpLdAd2 var_90
  loc_9C7503: LitI2_Byte 0
  loc_9C7505: PopTmpLdAd2 var_8E
  loc_9C7508: ILdRf var_8C
  loc_9C750B: LitStr "Expediente"
  loc_9C750E: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_9C7513: FStStrNoPop var_98
  loc_9C7516: FLdPr Me
  loc_9C7519: MemStStrCopy
  loc_9C751D: FFreeStr var_8C = ""
  loc_9C7524: FFree1Ad var_88
  loc_9C7527: FLdPr Me
  loc_9C752A: VCallAd Control_ID_cboExpeImpu
  loc_9C752D: FStAdFunc var_A4
  loc_9C7530: LitNothing
  loc_9C7532: CastAd
  loc_9C7535: FStAdFunc var_A0
  loc_9C7538: FLdRfVar var_A0
  loc_9C753B: FLdZeroAd var_A4
  loc_9C753E: FStAdFuncNoPop
  loc_9C7541: CastAd
  loc_9C7544: FStAdFunc var_9C
  loc_9C7547: FLdRfVar var_9C
  loc_9C754A: FLdPr Me
  loc_9C754D: MemLdRfVar from_stack_1.global_80
  loc_9C7550: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9C7555: IStI2 Cancel
  loc_9C7558: FFreeAd var_88 = "": var_9C = "": var_A0 = ""
  loc_9C7563: ILdI2 Cancel
  loc_9C7566: NotI4
  loc_9C7567: BranchF loc_9C7589
  loc_9C756A: LitI2_Byte 1
  loc_9C756C: CStrUI1
  loc_9C756E: CVarStr var_B4
  loc_9C7571: PopAdLdVar
  loc_9C7572: FLdPr Me
  loc_9C7575: VCallAd Control_ID_NumeOrpaDesdeMsk
  loc_9C7578: FStAdFunc var_88
  loc_9C757B: FLdPr var_88
  loc_9C757E: LateIdSt
  loc_9C7583: FFree1Ad var_88
  loc_9C7586: FFree1Var var_B4 = ""
  loc_9C7589: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '964DF4
  'Data Table: 4CE380
  loc_964DDC: LitI2_Byte 0
  loc_964DDE: ILdRf Me
  loc_964DE1: CastAd
  loc_964DE4: FStAdFunc var_88
  loc_964DE7: FLdRfVar var_88
  loc_964DEA: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_964DEF: FFree1Ad var_88
  loc_964DF2: ExitProcHresult
End Sub

Public Function htmFileGet() '4CFB6C
  htmFileGet = htmFile
End Function

Public Sub htmFilePut(Value) '4CFB7B
  htmFile = Value
End Sub

Public Sub htmFileSet(Value) '4CFB8A
  htmFile = Value
End Sub

Public Function bLogosGet() '4CFB99
  bLogosGet = bLogos
End Function

Public Sub bLogosPut(Value) '4CFBA8
  bLogos = Value
End Sub

Public Function bGeneradoGet() '4CFBB7
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '4CFBC6
  bGenerado = Value
End Sub

Public Sub GeneraHTML() 'BAB84C
  'Data Table: 4CE380
  loc_BAA8B0: FLdRfVar var_98
  loc_BAA8B3: LitI2_Byte 0
  loc_BAA8B5: LitI2_Byte &HFF
  loc_BAA8B7: ImpAdLdI4 MemVar_C3D83C
  loc_BAA8BA: FLdPr Me
  loc_BAA8BD: MemLdRfVar from_stack_1.global_76
  loc_BAA8C0: NewIfNullPr IFileSystem3
  loc_BAA8C3: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_BAA8C8: ILdRf var_98
  loc_BAA8CB: FLdPr Me
  loc_BAA8CE: MemStVarAd
  loc_BAA8D2: FFree1Ad var_98
  loc_BAA8D5: LitVarStr var_A8, "<html>"
  loc_BAA8DA: PopAdLdVar
  loc_BAA8DB: FLdPr Me
  loc_BAA8DE: MemLdRfVar from_stack_1.htmFile
  loc_BAA8E1: LdPrVar
  loc_BAA8E3: LateMemCall
  loc_BAA8E9: LitVarStr var_A8, "<head>"
  loc_BAA8EE: PopAdLdVar
  loc_BAA8EF: FLdPr Me
  loc_BAA8F2: MemLdRfVar from_stack_1.htmFile
  loc_BAA8F5: LdPrVar
  loc_BAA8F7: LateMemCall
  loc_BAA8FD: LitVarStr var_A8, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_BAA902: PopAdLdVar
  loc_BAA903: FLdPr Me
  loc_BAA906: MemLdRfVar from_stack_1.htmFile
  loc_BAA909: LdPrVar
  loc_BAA90B: LateMemCall
  loc_BAA911: LitStr "<title>"
  loc_BAA914: FLdRfVar var_BC
  loc_BAA917: FLdPr Me
  loc_BAA91A:  = Me.Caption
  loc_BAA91F: ILdRf var_BC
  loc_BAA922: ConcatStr
  loc_BAA923: FStStrNoPop var_C0
  loc_BAA926: LitStr "</title>"
  loc_BAA929: ConcatStr
  loc_BAA92A: CVarStr var_D0
  loc_BAA92D: PopAdLdVar
  loc_BAA92E: FLdPr Me
  loc_BAA931: MemLdRfVar from_stack_1.htmFile
  loc_BAA934: LdPrVar
  loc_BAA936: LateMemCall
  loc_BAA93C: FFreeStr var_BC = ""
  loc_BAA943: FFree1Var var_D0 = ""
  loc_BAA946: LitStr vbNullString
  loc_BAA949: ILdRf Me
  loc_BAA94C: CastAd
  loc_BAA94F: FStAdFunc var_98
  loc_BAA952: FLdRfVar var_98
  loc_BAA955: ImpAdCallFPR4 Proc_263_23_B3DAB8(, )
  loc_BAA95A: FFree1Ad var_98
  loc_BAA95D: LitI4 0
  loc_BAA962: FStStrCopy var_C0
  loc_BAA965: FLdRfVar var_C0
  loc_BAA968: LitI4 0
  loc_BAA96D: FStStrCopy var_BC
  loc_BAA970: FLdRfVar var_BC
  loc_BAA973: LitI2_Byte 0
  loc_BAA975: PopTmpLdAd2 var_D2
  loc_BAA978: FLdPr Me
  loc_BAA97B: MemLdRfVar from_stack_1.htmFile
  loc_BAA97E: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_BAA983: FFreeStr var_BC = ""
  loc_BAA98A: LitVarStr var_A8, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_BAA98F: PopAdLdVar
  loc_BAA990: FLdPr Me
  loc_BAA993: MemLdRfVar from_stack_1.htmFile
  loc_BAA996: LdPrVar
  loc_BAA998: LateMemCall
  loc_BAA99E: LitVarStr var_A8, "  <tr valign=""baseline"">"
  loc_BAA9A3: PopAdLdVar
  loc_BAA9A4: FLdPr Me
  loc_BAA9A7: MemLdRfVar from_stack_1.htmFile
  loc_BAA9AA: LdPrVar
  loc_BAA9AC: LateMemCall
  loc_BAA9B2: LitVarStr var_A8, "    <th width=""100" & Chr(37) & """ colspan=""3"" align=""center"" valign=""bottom"">"
  loc_BAA9B7: PopAdLdVar
  loc_BAA9B8: FLdPr Me
  loc_BAA9BB: MemLdRfVar from_stack_1.htmFile
  loc_BAA9BE: LdPrVar
  loc_BAA9C0: LateMemCall
  loc_BAA9C6: FLdPr Me
  loc_BAA9C9: MemLdI2 bLogos
  loc_BAA9CC: BranchF loc_BAA9E3
  loc_BAA9CF: LitVarStr var_A8, "    <img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>"
  loc_BAA9D4: PopAdLdVar
  loc_BAA9D5: FLdPr Me
  loc_BAA9D8: MemLdRfVar from_stack_1.htmFile
  loc_BAA9DB: LdPrVar
  loc_BAA9DD: LateMemCall
  loc_BAA9E3: LitVarStr var_A8, "<img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>"
  loc_BAA9E8: PopAdLdVar
  loc_BAA9E9: FLdPr Me
  loc_BAA9EC: MemLdRfVar from_stack_1.htmFile
  loc_BAA9EF: LdPrVar
  loc_BAA9F1: LateMemCall
  loc_BAA9F7: LitVarStr var_B8, "<br>"
  loc_BAA9FC: LitVarStr var_A8, "Municipalidad de Guaymallén"
  loc_BAAA01: FStVarCopyObj var_D0
  loc_BAAA04: FLdRfVar var_D0
  loc_BAAA07: FLdRfVar var_E4
  loc_BAAA0A: ImpAdCallFPR4  = Ucase()
  loc_BAAA0F: FLdRfVar var_E4
  loc_BAAA12: ConcatVar var_F4
  loc_BAAA16: LitVarStr var_104, "</th>"
  loc_BAAA1B: ConcatVar var_114
  loc_BAAA1F: PopAdLdVar
  loc_BAAA20: FLdPr Me
  loc_BAAA23: MemLdRfVar from_stack_1.htmFile
  loc_BAAA26: LdPrVar
  loc_BAAA28: LateMemCall
  loc_BAAA2E: FFreeVar var_D0 = "": var_E4 = "": var_F4 = ""
  loc_BAAA39: LitVarStr var_A8, "  </tr>"
  loc_BAAA3E: PopAdLdVar
  loc_BAAA3F: FLdPr Me
  loc_BAAA42: MemLdRfVar from_stack_1.htmFile
  loc_BAAA45: LdPrVar
  loc_BAAA47: LateMemCall
  loc_BAAA4D: LitVarStr var_A8, "  <tr valign=""baseline"">"
  loc_BAAA52: PopAdLdVar
  loc_BAAA53: FLdPr Me
  loc_BAAA56: MemLdRfVar from_stack_1.htmFile
  loc_BAAA59: LdPrVar
  loc_BAAA5B: LateMemCall
  loc_BAAA61: LitVarStr var_A8, "    <th colspan=""3""><hr></th>"
  loc_BAAA66: PopAdLdVar
  loc_BAAA67: FLdPr Me
  loc_BAAA6A: MemLdRfVar from_stack_1.htmFile
  loc_BAAA6D: LdPrVar
  loc_BAAA6F: LateMemCall
  loc_BAAA75: LitVarStr var_A8, "  </tr>"
  loc_BAAA7A: PopAdLdVar
  loc_BAAA7B: FLdPr Me
  loc_BAAA7E: MemLdRfVar from_stack_1.htmFile
  loc_BAAA81: LdPrVar
  loc_BAAA83: LateMemCall
  loc_BAAA89: LitVarStr var_A8, "  <tr valign=""baseline"">"
  loc_BAAA8E: PopAdLdVar
  loc_BAAA8F: FLdPr Me
  loc_BAAA92: MemLdRfVar from_stack_1.htmFile
  loc_BAAA95: LdPrVar
  loc_BAAA97: LateMemCall
  loc_BAAA9D: LitStr "    <th width=""33" & Chr(37) & """ align=""left"" valign=""bottom"">"
  loc_BAAAA0: FLdRfVar var_BC
  loc_BAAAA3: FLdPr Me
  loc_BAAAA6:  = Me.Caption
  loc_BAAAAB: ILdRf var_BC
  loc_BAAAAE: ConcatStr
  loc_BAAAAF: FStStrNoPop var_C0
  loc_BAAAB2: LitStr "</th>"
  loc_BAAAB5: ConcatStr
  loc_BAAAB6: CVarStr var_D0
  loc_BAAAB9: PopAdLdVar
  loc_BAAABA: FLdPr Me
  loc_BAAABD: MemLdRfVar from_stack_1.htmFile
  loc_BAAAC0: LdPrVar
  loc_BAAAC2: LateMemCall
  loc_BAAAC8: FFreeStr var_BC = ""
  loc_BAAACF: FFree1Var var_D0 = ""
  loc_BAAAD2: LitVarStr var_A8, "    <th width=""33" & Chr(37) & """ valign=""bottom"">&nbsp;</th>"
  loc_BAAAD7: PopAdLdVar
  loc_BAAAD8: FLdPr Me
  loc_BAAADB: MemLdRfVar from_stack_1.htmFile
  loc_BAAADE: LdPrVar
  loc_BAAAE0: LateMemCall
  loc_BAAAE6: LitStr "    <th width=""33" & Chr(37) & """ align=""right"">Periodo: <span class=""Normal"">"
  loc_BAAAE9: FLdRfVar var_BC
  loc_BAAAEC: FLdPr Me
  loc_BAAAEF: VCallAd Control_ID_cboPeriodo
  loc_BAAAF2: FStAdFunc var_98
  loc_BAAAF5: FLdPr var_98
  loc_BAAAF8:  = Me.Text
  loc_BAAAFD: ILdRf var_BC
  loc_BAAB00: ConcatStr
  loc_BAAB01: FStStrNoPop var_C0
  loc_BAAB04: LitStr "</span></th>"
  loc_BAAB07: ConcatStr
  loc_BAAB08: CVarStr var_D0
  loc_BAAB0B: PopAdLdVar
  loc_BAAB0C: FLdPr Me
  loc_BAAB0F: MemLdRfVar from_stack_1.htmFile
  loc_BAAB12: LdPrVar
  loc_BAAB14: LateMemCall
  loc_BAAB1A: FFreeStr var_BC = ""
  loc_BAAB21: FFree1Ad var_98
  loc_BAAB24: FFree1Var var_D0 = ""
  loc_BAAB27: LitVarStr var_A8, "  </tr>"
  loc_BAAB2C: PopAdLdVar
  loc_BAAB2D: FLdPr Me
  loc_BAAB30: MemLdRfVar from_stack_1.htmFile
  loc_BAAB33: LdPrVar
  loc_BAAB35: LateMemCall
  loc_BAAB3B: FLdPr Me
  loc_BAAB3E: VCallAd Control_ID_mskDesde
  loc_BAAB41: FStAdFunc var_98
  loc_BAAB44: FLdPr var_98
  loc_BAAB47: LateIdLdVar var_D0 DispID_22 0
  loc_BAAB4E: CStrVarTmp
  loc_BAAB4F: FStStrNoPop var_BC
  loc_BAAB52: LitStr vbNullString
  loc_BAAB55: NeStr
  loc_BAAB57: FLdPr Me
  loc_BAAB5A: VCallAd Control_ID_mskHasta
  loc_BAAB5D: FStAdFunc var_128
  loc_BAAB60: FLdPr var_128
  loc_BAAB63: LateIdLdVar var_E4 DispID_22 0
  loc_BAAB6A: CStrVarTmp
  loc_BAAB6B: FStStrNoPop var_C0
  loc_BAAB6E: LitStr vbNullString
  loc_BAAB71: NeStr
  loc_BAAB73: OrI4
  loc_BAAB74: FFreeStr var_BC = ""
  loc_BAAB7B: FFreeAd var_98 = ""
  loc_BAAB82: FFreeVar var_D0 = ""
  loc_BAAB89: BranchF loc_BAAD71
  loc_BAAB8C: LitVarStr var_A8, "  <tr valign=""baseline"">"
  loc_BAAB91: PopAdLdVar
  loc_BAAB92: FLdPr Me
  loc_BAAB95: MemLdRfVar from_stack_1.htmFile
  loc_BAAB98: LdPrVar
  loc_BAAB9A: LateMemCall
  loc_BAABA0: FLdRfVar var_D2
  loc_BAABA3: FLdPr Me
  loc_BAABA6: VCallAd Control_ID_optEmision
  loc_BAABA9: FStAdFunc var_98
  loc_BAABAC: FLdPr var_98
  loc_BAABAF:  = Me.Value
  loc_BAABB4: FLdI2 var_D2
  loc_BAABB7: FFree1Ad var_98
  loc_BAABBA: BranchF loc_BAABC6
  loc_BAABBD: LitStr " Emisión "
  loc_BAABC0: FStStrCopy var_94
  loc_BAABC3: Branch loc_BAAC35
  loc_BAABC6: FLdRfVar var_D2
  loc_BAABC9: FLdPr Me
  loc_BAABCC: VCallAd Control_ID_optRemision
  loc_BAABCF: FStAdFunc var_98
  loc_BAABD2: FLdPr var_98
  loc_BAABD5:  = Me.Value
  loc_BAABDA: FLdI2 var_D2
  loc_BAABDD: FFree1Ad var_98
  loc_BAABE0: BranchF loc_BAABEC
  loc_BAABE3: LitStr " Remisión "
  loc_BAABE6: FStStrCopy var_94
  loc_BAABE9: Branch loc_BAAC35
  loc_BAABEC: FLdRfVar var_D2
  loc_BAABEF: FLdPr Me
  loc_BAABF2: VCallAd Control_ID_optArchivo
  loc_BAABF5: FStAdFunc var_98
  loc_BAABF8: FLdPr var_98
  loc_BAABFB:  = Me.Value
  loc_BAAC00: FLdI2 var_D2
  loc_BAAC03: FFree1Ad var_98
  loc_BAAC06: BranchF loc_BAAC12
  loc_BAAC09: LitStr " Archivo "
  loc_BAAC0C: FStStrCopy var_94
  loc_BAAC0F: Branch loc_BAAC35
  loc_BAAC12: FLdRfVar var_D2
  loc_BAAC15: FLdPr Me
  loc_BAAC18: VCallAd Control_ID_optAnulacion
  loc_BAAC1B: FStAdFunc var_98
  loc_BAAC1E: FLdPr var_98
  loc_BAAC21:  = Me.Value
  loc_BAAC26: FLdI2 var_D2
  loc_BAAC29: FFree1Ad var_98
  loc_BAAC2C: BranchF loc_BAAC35
  loc_BAAC2F: LitStr " Anulación "
  loc_BAAC32: FStStrCopy var_94
  loc_BAAC35: LitStr "    <th colspan=""3"" align=""left"" valign=""bottom""><p>Fecha de "
  loc_BAAC38: ILdRf var_94
  loc_BAAC3B: ConcatStr
  loc_BAAC3C: FStStrNoPop var_BC
  loc_BAAC3F: LitStr "<br>"
  loc_BAAC42: ConcatStr
  loc_BAAC43: CVarStr var_D0
  loc_BAAC46: PopAdLdVar
  loc_BAAC47: FLdPr Me
  loc_BAAC4A: MemLdRfVar from_stack_1.htmFile
  loc_BAAC4D: LdPrVar
  loc_BAAC4F: LateMemCall
  loc_BAAC55: FFree1Str var_BC
  loc_BAAC58: FFree1Var var_D0 = ""
  loc_BAAC5B: FLdPr Me
  loc_BAAC5E: VCallAd Control_ID_mskDesde
  loc_BAAC61: FStAdFunc var_98
  loc_BAAC64: FLdPr var_98
  loc_BAAC67: LateIdLdVar var_D0 DispID_22 0
  loc_BAAC6E: CStrVarTmp
  loc_BAAC6F: FStStrNoPop var_BC
  loc_BAAC72: LitStr vbNullString
  loc_BAAC75: NeStr
  loc_BAAC77: FFree1Str var_BC
  loc_BAAC7A: FFree1Ad var_98
  loc_BAAC7D: FFree1Var var_D0 = ""
  loc_BAAC80: BranchF loc_BAACC8
  loc_BAAC83: LitStr "      Desde: <span class=""Normal"">"
  loc_BAAC86: FLdPr Me
  loc_BAAC89: VCallAd Control_ID_mskDesde
  loc_BAAC8C: FStAdFunc var_98
  loc_BAAC8F: FLdPr var_98
  loc_BAAC92: LateIdLdVar var_D0 DispID_15 0
  loc_BAAC99: CStrVarTmp
  loc_BAAC9A: FStStrNoPop var_BC
  loc_BAAC9D: ConcatStr
  loc_BAAC9E: FStStrNoPop var_C0
  loc_BAACA1: LitStr "</span><br>"
  loc_BAACA4: ConcatStr
  loc_BAACA5: CVarStr var_E4
  loc_BAACA8: PopAdLdVar
  loc_BAACA9: FLdPr Me
  loc_BAACAC: MemLdRfVar from_stack_1.htmFile
  loc_BAACAF: LdPrVar
  loc_BAACB1: LateMemCall
  loc_BAACB7: FFreeStr var_BC = ""
  loc_BAACBE: FFree1Ad var_98
  loc_BAACC1: FFreeVar var_D0 = ""
  loc_BAACC8: FLdPr Me
  loc_BAACCB: VCallAd Control_ID_mskHasta
  loc_BAACCE: FStAdFunc var_98
  loc_BAACD1: FLdPr var_98
  loc_BAACD4: LateIdLdVar var_D0 DispID_22 0
  loc_BAACDB: CStrVarTmp
  loc_BAACDC: FStStrNoPop var_BC
  loc_BAACDF: LitStr vbNullString
  loc_BAACE2: NeStr
  loc_BAACE4: FFree1Str var_BC
  loc_BAACE7: FFree1Ad var_98
  loc_BAACEA: FFree1Var var_D0 = ""
  loc_BAACED: BranchF loc_BAAD35
  loc_BAACF0: LitStr "      Hasta: <span class=""Normal"">"
  loc_BAACF3: FLdPr Me
  loc_BAACF6: VCallAd Control_ID_mskHasta
  loc_BAACF9: FStAdFunc var_98
  loc_BAACFC: FLdPr var_98
  loc_BAACFF: LateIdLdVar var_D0 DispID_15 0
  loc_BAAD06: CStrVarTmp
  loc_BAAD07: FStStrNoPop var_BC
  loc_BAAD0A: ConcatStr
  loc_BAAD0B: FStStrNoPop var_C0
  loc_BAAD0E: LitStr "</span><br>"
  loc_BAAD11: ConcatStr
  loc_BAAD12: CVarStr var_E4
  loc_BAAD15: PopAdLdVar
  loc_BAAD16: FLdPr Me
  loc_BAAD19: MemLdRfVar from_stack_1.htmFile
  loc_BAAD1C: LdPrVar
  loc_BAAD1E: LateMemCall
  loc_BAAD24: FFreeStr var_BC = ""
  loc_BAAD2B: FFree1Ad var_98
  loc_BAAD2E: FFreeVar var_D0 = ""
  loc_BAAD35: LitVarStr var_A8, "      </p>"
  loc_BAAD3A: PopAdLdVar
  loc_BAAD3B: FLdPr Me
  loc_BAAD3E: MemLdRfVar from_stack_1.htmFile
  loc_BAAD41: LdPrVar
  loc_BAAD43: LateMemCall
  loc_BAAD49: LitVarStr var_A8, "    </th>"
  loc_BAAD4E: PopAdLdVar
  loc_BAAD4F: FLdPr Me
  loc_BAAD52: MemLdRfVar from_stack_1.htmFile
  loc_BAAD55: LdPrVar
  loc_BAAD57: LateMemCall
  loc_BAAD5D: LitVarStr var_A8, "  </tr>"
  loc_BAAD62: PopAdLdVar
  loc_BAAD63: FLdPr Me
  loc_BAAD66: MemLdRfVar from_stack_1.htmFile
  loc_BAAD69: LdPrVar
  loc_BAAD6B: LateMemCall
  loc_BAAD71: LitVarStr var_A8, "</table>"
  loc_BAAD76: PopAdLdVar
  loc_BAAD77: FLdPr Me
  loc_BAAD7A: MemLdRfVar from_stack_1.htmFile
  loc_BAAD7D: LdPrVar
  loc_BAAD7F: LateMemCall
  loc_BAAD85: FLdPr Me
  loc_BAAD88: MemLdRfVar from_stack_1.global_72
  loc_BAAD8B: NewIfNullPr clsbase
  loc_BAAD8E: Call clsbase.MoveFirst()
  loc_BAAD93: FLdRfVar var_D2
  loc_BAAD96: FLdPr Me
  loc_BAAD99: MemLdRfVar from_stack_1.global_72
  loc_BAAD9C: NewIfNullPr clsbase
  loc_BAAD9F: from_stack_1 = clsbase.EOF
  loc_BAADA4: FLdI2 var_D2
  loc_BAADA7: NotI4
  loc_BAADA8: BranchF loc_BAB81C
  loc_BAADAB: FLdRfVar var_98
  loc_BAADAE: FLdPr Me
  loc_BAADB1: MemLdRfVar from_stack_1.global_72
  loc_BAADB4: NewIfNullPr clsbase
  loc_BAADB7: from_stack_1v = clsbase.RsFrmGet()
  loc_BAADBC: FLdZeroAd var_98
  loc_BAADBF: FStAdFunc var_12C
  loc_BAADC2: ILdRf var_88
  loc_BAADC5: FLdRfVar var_D0
  loc_BAADC8: FLdRfVar var_128
  loc_BAADCB: LitVarStr var_A8, "NumeOrpa"
  loc_BAADD0: PopAdLdVar
  loc_BAADD1: FLdRfVar var_98
  loc_BAADD4: FLdPr var_12C
  loc_BAADD7:  = Me.Fields
  loc_BAADDC: FLdPr var_98
  loc_BAADDF: from_stack_2 = Me.Item(from_stack_1)
  loc_BAADE4: FLdPr var_128
  loc_BAADE7:  = Me.Value
  loc_BAADEC: FLdRfVar var_D0
  loc_BAADEF: FnCStrVar
  loc_BAADF1: FStStrNoPop var_BC
  loc_BAADF4: NeStr
  loc_BAADF6: FFree1Str var_BC
  loc_BAADF9: FFreeAd var_98 = ""
  loc_BAAE00: FFree1Var var_D0 = ""
  loc_BAAE03: BranchF loc_BAB3BC
  loc_BAAE06: LitVarStr var_A8, "  <table width=""100" & Chr(37) & """ border=""1"" cellspacing=""0"" cellpadding=""1"">"
  loc_BAAE0B: PopAdLdVar
  loc_BAAE0C: FLdPr Me
  loc_BAAE0F: MemLdRfVar from_stack_1.htmFile
  loc_BAAE12: LdPrVar
  loc_BAAE14: LateMemCall
  loc_BAAE1A: LitVarStr var_A8, "      <tr class=""LineaDato"">"
  loc_BAAE1F: PopAdLdVar
  loc_BAAE20: FLdPr Me
  loc_BAAE23: MemLdRfVar from_stack_1.htmFile
  loc_BAAE26: LdPrVar
  loc_BAAE28: LateMemCall
  loc_BAAE2E: LitVarStr var_B8, "        <td rowspan=""2"" class=""Encabezado"">Orden de pago N&ordm;&nbsp;"
  loc_BAAE33: FLdRfVar var_D0
  loc_BAAE36: FLdRfVar var_128
  loc_BAAE39: LitVarStr var_A8, "NumeOrpa"
  loc_BAAE3E: PopAdLdVar
  loc_BAAE3F: FLdRfVar var_98
  loc_BAAE42: FLdPr var_12C
  loc_BAAE45:  = Me.Fields
  loc_BAAE4A: FLdPr var_98
  loc_BAAE4D: from_stack_2 = Me.Item(from_stack_1)
  loc_BAAE52: FLdPr var_128
  loc_BAAE55:  = Me.Value
  loc_BAAE5A: FLdRfVar var_D0
  loc_BAAE5D: ConcatVar var_E4
  loc_BAAE61: PopAdLdVar
  loc_BAAE62: FLdPr Me
  loc_BAAE65: MemLdRfVar from_stack_1.htmFile
  loc_BAAE68: LdPrVar
  loc_BAAE6A: LateMemCall
  loc_BAAE70: FFreeAd var_98 = ""
  loc_BAAE77: FFreeVar var_D0 = ""
  loc_BAAE7E: FLdRfVar var_D0
  loc_BAAE81: FLdRfVar var_128
  loc_BAAE84: LitVarStr var_A8, "TipoOrpa"
  loc_BAAE89: PopAdLdVar
  loc_BAAE8A: FLdRfVar var_98
  loc_BAAE8D: FLdPr var_12C
  loc_BAAE90:  = Me.Fields
  loc_BAAE95: FLdPr var_98
  loc_BAAE98: from_stack_2 = Me.Item(from_stack_1)
  loc_BAAE9D: FLdPr var_128
  loc_BAAEA0:  = Me.Value
  loc_BAAEA5: FLdRfVar var_D0
  loc_BAAEA8: LitVarStr var_B8, "Debito"
  loc_BAAEAD: HardType
  loc_BAAEAE: EqVarBool
  loc_BAAEB0: FFreeAd var_98 = ""
  loc_BAAEB7: FFree1Var var_D0 = ""
  loc_BAAEBA: BranchF loc_BAAED1
  loc_BAAEBD: LitVarStr var_A8, "          <br>(Débito)"
  loc_BAAEC2: PopAdLdVar
  loc_BAAEC3: FLdPr Me
  loc_BAAEC6: MemLdRfVar from_stack_1.htmFile
  loc_BAAEC9: LdPrVar
  loc_BAAECB: LateMemCall
  loc_BAAED1: FLdRfVar var_D0
  loc_BAAED4: FLdRfVar var_128
  loc_BAAED7: LitVarStr var_A8, "TipoOrpa"
  loc_BAAEDC: PopAdLdVar
  loc_BAAEDD: FLdRfVar var_98
  loc_BAAEE0: FLdPr var_12C
  loc_BAAEE3:  = Me.Fields
  loc_BAAEE8: FLdPr var_98
  loc_BAAEEB: from_stack_2 = Me.Item(from_stack_1)
  loc_BAAEF0: FLdPr var_128
  loc_BAAEF3:  = Me.Value
  loc_BAAEF8: FLdRfVar var_D0
  loc_BAAEFB: LitVarStr var_B8, "Reservada"
  loc_BAAF00: HardType
  loc_BAAF01: EqVarBool
  loc_BAAF03: FFreeAd var_98 = ""
  loc_BAAF0A: FFree1Var var_D0 = ""
  loc_BAAF0D: BranchF loc_BAAF24
  loc_BAAF10: LitVarStr var_A8, "          <br>(RESERVADA)"
  loc_BAAF15: PopAdLdVar
  loc_BAAF16: FLdPr Me
  loc_BAAF19: MemLdRfVar from_stack_1.htmFile
  loc_BAAF1C: LdPrVar
  loc_BAAF1E: LateMemCall
  loc_BAAF24: LitVarStr var_A8, "          </td>"
  loc_BAAF29: PopAdLdVar
  loc_BAAF2A: FLdPr Me
  loc_BAAF2D: MemLdRfVar from_stack_1.htmFile
  loc_BAAF30: LdPrVar
  loc_BAAF32: LateMemCall
  loc_BAAF38: LitVarStr var_A8, "        <td colspan=""4"" align=""center"">Fecha de</td>"
  loc_BAAF3D: PopAdLdVar
  loc_BAAF3E: FLdPr Me
  loc_BAAF41: MemLdRfVar from_stack_1.htmFile
  loc_BAAF44: LdPrVar
  loc_BAAF46: LateMemCall
  loc_BAAF4C: LitVarStr var_B8, "        <td rowspan=""2"">Expediente(Liq.):<br>"
  loc_BAAF51: FLdRfVar var_D0
  loc_BAAF54: FLdRfVar var_128
  loc_BAAF57: LitVarStr var_A8, "ExpeImpu"
  loc_BAAF5C: PopAdLdVar
  loc_BAAF5D: FLdRfVar var_98
  loc_BAAF60: FLdPr var_12C
  loc_BAAF63:  = Me.Fields
  loc_BAAF68: FLdPr var_98
  loc_BAAF6B: from_stack_2 = Me.Item(from_stack_1)
  loc_BAAF70: FLdPr var_128
  loc_BAAF73:  = Me.Value
  loc_BAAF78: FLdRfVar var_D0
  loc_BAAF7B: ConcatVar var_E4
  loc_BAAF7F: LitVarStr var_104, "("
  loc_BAAF84: ConcatVar var_F4
  loc_BAAF88: FLdRfVar var_114
  loc_BAAF8B: FLdRfVar var_134
  loc_BAAF8E: LitVarStr var_124, "NumeLiqu"
  loc_BAAF93: PopAdLdVar
  loc_BAAF94: FLdRfVar var_130
  loc_BAAF97: FLdPr var_12C
  loc_BAAF9A:  = Me.Fields
  loc_BAAF9F: FLdPr var_130
  loc_BAAFA2: from_stack_2 = Me.Item(from_stack_1)
  loc_BAAFA7: FLdPr var_134
  loc_BAAFAA:  = Me.Value
  loc_BAAFAF: FLdRfVar var_114
  loc_BAAFB2: ConcatVar var_144
  loc_BAAFB6: LitVarStr var_154, ")"
  loc_BAAFBB: ConcatVar var_164
  loc_BAAFBF: LitVarStr var_174, "</td>"
  loc_BAAFC4: ConcatVar var_184
  loc_BAAFC8: PopAdLdVar
  loc_BAAFC9: FLdPr Me
  loc_BAAFCC: MemLdRfVar from_stack_1.htmFile
  loc_BAAFCF: LdPrVar
  loc_BAAFD1: LateMemCall
  loc_BAAFD7: FFreeAd var_98 = "": var_128 = "": var_130 = ""
  loc_BAAFE2: FFreeVar var_D0 = "": var_E4 = "": var_F4 = "": var_114 = "": var_144 = "": var_164 = ""
  loc_BAAFF3: LitVarStr var_B8, "        <td rowspan=""2"">Fojas:<br>"
  loc_BAAFF8: FLdRfVar var_D0
  loc_BAAFFB: FLdRfVar var_128
  loc_BAAFFE: LitVarStr var_A8, "FojaOrpa"
  loc_BAB003: PopAdLdVar
  loc_BAB004: FLdRfVar var_98
  loc_BAB007: FLdPr var_12C
  loc_BAB00A:  = Me.Fields
  loc_BAB00F: FLdPr var_98
  loc_BAB012: from_stack_2 = Me.Item(from_stack_1)
  loc_BAB017: FLdPr var_128
  loc_BAB01A:  = Me.Value
  loc_BAB01F: FLdRfVar var_D0
  loc_BAB022: ConcatVar var_E4
  loc_BAB026: LitVarStr var_104, "</td>"
  loc_BAB02B: ConcatVar var_F4
  loc_BAB02F: PopAdLdVar
  loc_BAB030: FLdPr Me
  loc_BAB033: MemLdRfVar from_stack_1.htmFile
  loc_BAB036: LdPrVar
  loc_BAB038: LateMemCall
  loc_BAB03E: FFreeAd var_98 = ""
  loc_BAB045: FFreeVar var_D0 = "": var_E4 = ""
  loc_BAB04E: LitVarStr var_B8, "        <td rowspan=""2"">Archivo Nº<br>"
  loc_BAB053: FLdRfVar var_D0
  loc_BAB056: FLdRfVar var_128
  loc_BAB059: LitVarStr var_A8, "ArchOrpa"
  loc_BAB05E: PopAdLdVar
  loc_BAB05F: FLdRfVar var_98
  loc_BAB062: FLdPr var_12C
  loc_BAB065:  = Me.Fields
  loc_BAB06A: FLdPr var_98
  loc_BAB06D: from_stack_2 = Me.Item(from_stack_1)
  loc_BAB072: FLdPr var_128
  loc_BAB075:  = Me.Value
  loc_BAB07A: FLdRfVar var_D0
  loc_BAB07D: ConcatVar var_E4
  loc_BAB081: LitVarStr var_104, "</td>"
  loc_BAB086: ConcatVar var_F4
  loc_BAB08A: PopAdLdVar
  loc_BAB08B: FLdPr Me
  loc_BAB08E: MemLdRfVar from_stack_1.htmFile
  loc_BAB091: LdPrVar
  loc_BAB093: LateMemCall
  loc_BAB099: FFreeAd var_98 = ""
  loc_BAB0A0: FFreeVar var_D0 = "": var_E4 = ""
  loc_BAB0A9: LitVarStr var_A8, "      </tr>"
  loc_BAB0AE: PopAdLdVar
  loc_BAB0AF: FLdPr Me
  loc_BAB0B2: MemLdRfVar from_stack_1.htmFile
  loc_BAB0B5: LdPrVar
  loc_BAB0B7: LateMemCall
  loc_BAB0BD: LitVarStr var_A8, "      <tr class=""LineaDato"">"
  loc_BAB0C2: PopAdLdVar
  loc_BAB0C3: FLdPr Me
  loc_BAB0C6: MemLdRfVar from_stack_1.htmFile
  loc_BAB0C9: LdPrVar
  loc_BAB0CB: LateMemCall
  loc_BAB0D1: LitVarStr var_B8, "        <td>Emisión:<br><div align=""center""> "
  loc_BAB0D6: FLdRfVar var_D0
  loc_BAB0D9: FLdRfVar var_128
  loc_BAB0DC: LitVarStr var_A8, "FechOrpa"
  loc_BAB0E1: PopAdLdVar
  loc_BAB0E2: FLdRfVar var_98
  loc_BAB0E5: FLdPr var_12C
  loc_BAB0E8:  = Me.Fields
  loc_BAB0ED: FLdPr var_98
  loc_BAB0F0: from_stack_2 = Me.Item(from_stack_1)
  loc_BAB0F5: FLdPr var_128
  loc_BAB0F8:  = Me.Value
  loc_BAB0FD: FLdRfVar var_D0
  loc_BAB100: ConcatVar var_E4
  loc_BAB104: LitVarStr var_104, "</div></td>"
  loc_BAB109: ConcatVar var_F4
  loc_BAB10D: PopAdLdVar
  loc_BAB10E: FLdPr Me
  loc_BAB111: MemLdRfVar from_stack_1.htmFile
  loc_BAB114: LdPrVar
  loc_BAB116: LateMemCall
  loc_BAB11C: FFreeAd var_98 = ""
  loc_BAB123: FFreeVar var_D0 = "": var_E4 = ""
  loc_BAB12C: LitVarStr var_B8, "        <td>Remisión:<br><div align=""center""> "
  loc_BAB131: FLdRfVar var_D0
  loc_BAB134: FLdRfVar var_128
  loc_BAB137: LitVarStr var_A8, "FereOrpa"
  loc_BAB13C: PopAdLdVar
  loc_BAB13D: FLdRfVar var_98
  loc_BAB140: FLdPr var_12C
  loc_BAB143:  = Me.Fields
  loc_BAB148: FLdPr var_98
  loc_BAB14B: from_stack_2 = Me.Item(from_stack_1)
  loc_BAB150: FLdPr var_128
  loc_BAB153:  = Me.Value
  loc_BAB158: FLdRfVar var_D0
  loc_BAB15B: ConcatVar var_E4
  loc_BAB15F: LitVarStr var_104, "</div></td>"
  loc_BAB164: ConcatVar var_F4
  loc_BAB168: PopAdLdVar
  loc_BAB169: FLdPr Me
  loc_BAB16C: MemLdRfVar from_stack_1.htmFile
  loc_BAB16F: LdPrVar
  loc_BAB171: LateMemCall
  loc_BAB177: FFreeAd var_98 = ""
  loc_BAB17E: FFreeVar var_D0 = "": var_E4 = ""
  loc_BAB187: LitVarStr var_B8, "        <td>Archivo:<br><div align=""center""> "
  loc_BAB18C: FLdRfVar var_D0
  loc_BAB18F: FLdRfVar var_128
  loc_BAB192: LitVarStr var_A8, "FearOrpa"
  loc_BAB197: PopAdLdVar
  loc_BAB198: FLdRfVar var_98
  loc_BAB19B: FLdPr var_12C
  loc_BAB19E:  = Me.Fields
  loc_BAB1A3: FLdPr var_98
  loc_BAB1A6: from_stack_2 = Me.Item(from_stack_1)
  loc_BAB1AB: FLdPr var_128
  loc_BAB1AE:  = Me.Value
  loc_BAB1B3: FLdRfVar var_D0
  loc_BAB1B6: ConcatVar var_E4
  loc_BAB1BA: LitVarStr var_104, "</div></td>"
  loc_BAB1BF: ConcatVar var_F4
  loc_BAB1C3: PopAdLdVar
  loc_BAB1C4: FLdPr Me
  loc_BAB1C7: MemLdRfVar from_stack_1.htmFile
  loc_BAB1CA: LdPrVar
  loc_BAB1CC: LateMemCall
  loc_BAB1D2: FFreeAd var_98 = ""
  loc_BAB1D9: FFreeVar var_D0 = "": var_E4 = ""
  loc_BAB1E2: LitVarStr var_B8, "        <td>Anulación:<br><div align= ""center""> "
  loc_BAB1E7: FLdRfVar var_D0
  loc_BAB1EA: FLdRfVar var_128
  loc_BAB1ED: LitVarStr var_A8, "FeanOrpa"
  loc_BAB1F2: PopAdLdVar
  loc_BAB1F3: FLdRfVar var_98
  loc_BAB1F6: FLdPr var_12C
  loc_BAB1F9:  = Me.Fields
  loc_BAB1FE: FLdPr var_98
  loc_BAB201: from_stack_2 = Me.Item(from_stack_1)
  loc_BAB206: FLdPr var_128
  loc_BAB209:  = Me.Value
  loc_BAB20E: FLdRfVar var_D0
  loc_BAB211: ConcatVar var_E4
  loc_BAB215: LitVarStr var_104, "</div></td>"
  loc_BAB21A: ConcatVar var_F4
  loc_BAB21E: PopAdLdVar
  loc_BAB21F: FLdPr Me
  loc_BAB222: MemLdRfVar from_stack_1.htmFile
  loc_BAB225: LdPrVar
  loc_BAB227: LateMemCall
  loc_BAB22D: FFreeAd var_98 = ""
  loc_BAB234: FFreeVar var_D0 = "": var_E4 = ""
  loc_BAB23D: LitVarStr var_A8, "      </tr>"
  loc_BAB242: PopAdLdVar
  loc_BAB243: FLdPr Me
  loc_BAB246: MemLdRfVar from_stack_1.htmFile
  loc_BAB249: LdPrVar
  loc_BAB24B: LateMemCall
  loc_BAB251: LitVarStr var_A8, "      <tr class=""LineaDato"">"
  loc_BAB256: PopAdLdVar
  loc_BAB257: FLdPr Me
  loc_BAB25A: MemLdRfVar from_stack_1.htmFile
  loc_BAB25D: LdPrVar
  loc_BAB25F: LateMemCall
  loc_BAB265: LitVarStr var_B8, "        <td colspan=""7"">Detalle: "
  loc_BAB26A: FLdRfVar var_D0
  loc_BAB26D: FLdRfVar var_128
  loc_BAB270: LitVarStr var_A8, "DetaOrpa"
  loc_BAB275: PopAdLdVar
  loc_BAB276: FLdRfVar var_98
  loc_BAB279: FLdPr var_12C
  loc_BAB27C:  = Me.Fields
  loc_BAB281: FLdPr var_98
  loc_BAB284: from_stack_2 = Me.Item(from_stack_1)
  loc_BAB289: FLdPr var_128
  loc_BAB28C:  = Me.Value
  loc_BAB291: FLdRfVar var_D0
  loc_BAB294: ConcatVar var_E4
  loc_BAB298: LitVarStr var_104, "</td>"
  loc_BAB29D: ConcatVar var_F4
  loc_BAB2A1: PopAdLdVar
  loc_BAB2A2: FLdPr Me
  loc_BAB2A5: MemLdRfVar from_stack_1.htmFile
  loc_BAB2A8: LdPrVar
  loc_BAB2AA: LateMemCall
  loc_BAB2B0: FFreeAd var_98 = ""
  loc_BAB2B7: FFreeVar var_D0 = "": var_E4 = ""
  loc_BAB2C0: FLdRfVar var_128
  loc_BAB2C3: LitVarStr var_A8, "TotalOP"
  loc_BAB2C8: PopAdLdVar
  loc_BAB2C9: FLdRfVar var_98
  loc_BAB2CC: FLdPr var_12C
  loc_BAB2CF:  = Me.Fields
  loc_BAB2D4: FLdPr var_98
  loc_BAB2D7: from_stack_2 = Me.Item(from_stack_1)
  loc_BAB2DC: LitStr "        <td>Total:<br><div align=""right""> "
  loc_BAB2DF: LitI4 1
  loc_BAB2E4: LitI4 1
  loc_BAB2E9: LitVarStr var_B8, "###,###,##0.00"
  loc_BAB2EE: FStVarCopyObj var_E4
  loc_BAB2F1: FLdRfVar var_E4
  loc_BAB2F4: FLdZeroAd var_128
  loc_BAB2F7: CVarAd
  loc_BAB2FB: ImpAdCallI2 Format$(, )
  loc_BAB300: FStStrNoPop var_BC
  loc_BAB303: ConcatStr
  loc_BAB304: FStStrNoPop var_C0
  loc_BAB307: LitStr "</div></td>"
  loc_BAB30A: ConcatStr
  loc_BAB30B: CVarStr var_F4
  loc_BAB30E: PopAdLdVar
  loc_BAB30F: FLdPr Me
  loc_BAB312: MemLdRfVar from_stack_1.htmFile
  loc_BAB315: LdPrVar
  loc_BAB317: LateMemCall
  loc_BAB31D: FFreeStr var_BC = ""
  loc_BAB324: FFree1Ad var_98
  loc_BAB327: FFreeVar var_D0 = "": var_E4 = ""
  loc_BAB330: LitVarStr var_A8, "      </tr>"
  loc_BAB335: PopAdLdVar
  loc_BAB336: FLdPr Me
  loc_BAB339: MemLdRfVar from_stack_1.htmFile
  loc_BAB33C: LdPrVar
  loc_BAB33E: LateMemCall
  loc_BAB344: LitVarStr var_A8, "  <tr class=""Encabezado"">"
  loc_BAB349: PopAdLdVar
  loc_BAB34A: FLdPr Me
  loc_BAB34D: MemLdRfVar from_stack_1.htmFile
  loc_BAB350: LdPrVar
  loc_BAB352: LateMemCall
  loc_BAB358: LitVarStr var_A8, "    <th colspan=""4"">Proveedor</th>"
  loc_BAB35D: PopAdLdVar
  loc_BAB35E: FLdPr Me
  loc_BAB361: MemLdRfVar from_stack_1.htmFile
  loc_BAB364: LdPrVar
  loc_BAB366: LateMemCall
  loc_BAB36C: LitVarStr var_A8, "    <th colspan=""2"">Forma de pago (cheque/retención)</th>"
  loc_BAB371: PopAdLdVar
  loc_BAB372: FLdPr Me
  loc_BAB375: MemLdRfVar from_stack_1.htmFile
  loc_BAB378: LdPrVar
  loc_BAB37A: LateMemCall
  loc_BAB380: LitVarStr var_A8, "    <th>Comprobante"
  loc_BAB385: PopAdLdVar
  loc_BAB386: FLdPr Me
  loc_BAB389: MemLdRfVar from_stack_1.htmFile
  loc_BAB38C: LdPrVar
  loc_BAB38E: LateMemCall
  loc_BAB394: LitVarStr var_A8, "    <th>Importe</th>"
  loc_BAB399: PopAdLdVar
  loc_BAB39A: FLdPr Me
  loc_BAB39D: MemLdRfVar from_stack_1.htmFile
  loc_BAB3A0: LdPrVar
  loc_BAB3A2: LateMemCall
  loc_BAB3A8: LitVarStr var_A8, "  </tr>"
  loc_BAB3AD: PopAdLdVar
  loc_BAB3AE: FLdPr Me
  loc_BAB3B1: MemLdRfVar from_stack_1.htmFile
  loc_BAB3B4: LdPrVar
  loc_BAB3B6: LateMemCall
  loc_BAB3BC: ILdRf var_88
  loc_BAB3BF: FLdRfVar var_D0
  loc_BAB3C2: FLdRfVar var_128
  loc_BAB3C5: LitVarStr var_A8, "NumeOrpa"
  loc_BAB3CA: PopAdLdVar
  loc_BAB3CB: FLdRfVar var_98
  loc_BAB3CE: FLdPr var_12C
  loc_BAB3D1:  = Me.Fields
  loc_BAB3D6: FLdPr var_98
  loc_BAB3D9: from_stack_2 = Me.Item(from_stack_1)
  loc_BAB3DE: FLdPr var_128
  loc_BAB3E1:  = Me.Value
  loc_BAB3E6: FLdRfVar var_D0
  loc_BAB3E9: FnCStrVar
  loc_BAB3EB: FStStrNoPop var_BC
  loc_BAB3EE: NeStr
  loc_BAB3F0: ILdRf var_8C
  loc_BAB3F3: FLdRfVar var_E4
  loc_BAB3F6: FLdRfVar var_134
  loc_BAB3F9: LitVarStr var_B8, "CucuPers"
  loc_BAB3FE: PopAdLdVar
  loc_BAB3FF: FLdRfVar var_130
  loc_BAB402: FLdPr var_12C
  loc_BAB405:  = Me.Fields
  loc_BAB40A: FLdPr var_130
  loc_BAB40D: from_stack_2 = Me.Item(from_stack_1)
  loc_BAB412: FLdPr var_134
  loc_BAB415:  = Me.Value
  loc_BAB41A: FLdRfVar var_E4
  loc_BAB41D: FnCStrVar
  loc_BAB41F: FStStrNoPop var_C0
  loc_BAB422: NeStr
  loc_BAB424: OrI4
  loc_BAB425: FFreeStr var_BC = ""
  loc_BAB42C: FFreeAd var_98 = "": var_128 = "": var_130 = ""
  loc_BAB437: FFreeVar var_D0 = ""
  loc_BAB43E: BranchF loc_BAB52A
  loc_BAB441: LitVarStr var_A8, "<tr>"
  loc_BAB446: PopAdLdVar
  loc_BAB447: FLdPr Me
  loc_BAB44A: MemLdRfVar from_stack_1.htmFile
  loc_BAB44D: LdPrVar
  loc_BAB44F: LateMemCall
  loc_BAB455: FLdRfVar var_D0
  loc_BAB458: FLdRfVar var_128
  loc_BAB45B: LitVarStr var_A8, "CucuPers"
  loc_BAB460: PopAdLdVar
  loc_BAB461: FLdRfVar var_98
  loc_BAB464: FLdPr var_12C
  loc_BAB467:  = Me.Fields
  loc_BAB46C: FLdPr var_98
  loc_BAB46F: from_stack_2 = Me.Item(from_stack_1)
  loc_BAB474: FLdPr var_128
  loc_BAB477:  = Me.Value
  loc_BAB47C: FLdRfVar var_F4
  loc_BAB47F: FLdRfVar var_134
  loc_BAB482: LitVarStr var_104, "DetaProv"
  loc_BAB487: PopAdLdVar
  loc_BAB488: FLdRfVar var_130
  loc_BAB48B: FLdPr var_12C
  loc_BAB48E:  = Me.Fields
  loc_BAB493: FLdPr var_130
  loc_BAB496: from_stack_2 = Me.Item(from_stack_1)
  loc_BAB49B: FLdPr var_134
  loc_BAB49E:  = Me.Value
  loc_BAB4A3: FLdRfVar var_144
  loc_BAB4A6: FLdRfVar var_19C
  loc_BAB4A9: LitVarStr var_124, "RowSpan"
  loc_BAB4AE: PopAdLdVar
  loc_BAB4AF: FLdRfVar var_198
  loc_BAB4B2: FLdPr var_12C
  loc_BAB4B5:  = Me.Fields
  loc_BAB4BA: FLdPr var_198
  loc_BAB4BD: from_stack_2 = Me.Item(from_stack_1)
  loc_BAB4C2: FLdPr var_19C
  loc_BAB4C5:  = Me.Value
  loc_BAB4CA: LitStr "4"
  loc_BAB4CD: FLdRfVar var_144
  loc_BAB4D0: CStrVarTmp
  loc_BAB4D1: FStStrNoPop var_C0
  loc_BAB4D4: LitStr "LDIzq"
  loc_BAB4D7: FLdRfVar var_D0
  loc_BAB4DA: LitVarStr var_B8, " - "
  loc_BAB4DF: ConcatVar var_E4
  loc_BAB4E3: FLdRfVar var_F4
  loc_BAB4E6: ConcatVar var_114
  loc_BAB4EA: CStrVarVal var_BC
  loc_BAB4EE: ImpAdCallI2 Proc_261_22_9C4DBC(, , , )
  loc_BAB4F3: CVarStr var_164
  loc_BAB4F6: PopAdLdVar
  loc_BAB4F7: FLdPr Me
  loc_BAB4FA: MemLdRfVar from_stack_1.htmFile
  loc_BAB4FD: LdPrVar
  loc_BAB4FF: LateMemCall
  loc_BAB505: FFreeStr var_BC = ""
  loc_BAB50C: FFreeAd var_98 = "": var_128 = "": var_130 = "": var_134 = "": var_198 = ""
  loc_BAB51B: FFreeVar var_D0 = "": var_E4 = "": var_F4 = "": var_114 = "": var_144 = ""
  loc_BAB52A: ILdRf var_88
  loc_BAB52D: FLdRfVar var_D0
  loc_BAB530: FLdRfVar var_128
  loc_BAB533: LitVarStr var_A8, "NumeOrpa"
  loc_BAB538: PopAdLdVar
  loc_BAB539: FLdRfVar var_98
  loc_BAB53C: FLdPr var_12C
  loc_BAB53F:  = Me.Fields
  loc_BAB544: FLdPr var_98
  loc_BAB547: from_stack_2 = Me.Item(from_stack_1)
  loc_BAB54C: FLdPr var_128
  loc_BAB54F:  = Me.Value
  loc_BAB554: FLdRfVar var_D0
  loc_BAB557: FnCStrVar
  loc_BAB559: FStStrNoPop var_BC
  loc_BAB55C: EqStr
  loc_BAB55E: ILdRf var_8C
  loc_BAB561: FLdRfVar var_E4
  loc_BAB564: FLdRfVar var_134
  loc_BAB567: LitVarStr var_B8, "CucuPers"
  loc_BAB56C: PopAdLdVar
  loc_BAB56D: FLdRfVar var_130
  loc_BAB570: FLdPr var_12C
  loc_BAB573:  = Me.Fields
  loc_BAB578: FLdPr var_130
  loc_BAB57B: from_stack_2 = Me.Item(from_stack_1)
  loc_BAB580: FLdPr var_134
  loc_BAB583:  = Me.Value
  loc_BAB588: FLdRfVar var_E4
  loc_BAB58B: FnCStrVar
  loc_BAB58D: FStStrNoPop var_C0
  loc_BAB590: EqStr
  loc_BAB592: AndI4
  loc_BAB593: CVarBoolI2 var_154
  loc_BAB597: ILdRf var_90
  loc_BAB59A: CVarStr var_124
  loc_BAB59D: HardType
  loc_BAB59E: FLdRfVar var_F4
  loc_BAB5A1: FLdRfVar var_19C
  loc_BAB5A4: LitVarStr var_104, "DetalleFP"
  loc_BAB5A9: PopAdLdVar
  loc_BAB5AA: FLdRfVar var_198
  loc_BAB5AD: FLdPr var_12C
  loc_BAB5B0:  = Me.Fields
  loc_BAB5B5: FLdPr var_198
  loc_BAB5B8: from_stack_2 = Me.Item(from_stack_1)
  loc_BAB5BD: FLdPr var_19C
  loc_BAB5C0:  = Me.Value
  loc_BAB5C5: FLdRfVar var_F4
  loc_BAB5C8: NeVar var_114
  loc_BAB5CC: AndVar var_144
  loc_BAB5D0: CBoolVarNull
  loc_BAB5D2: FFreeStr var_BC = ""
  loc_BAB5D9: FFreeAd var_98 = "": var_128 = "": var_130 = "": var_134 = "": var_198 = ""
  loc_BAB5E8: FFreeVar var_D0 = "": var_E4 = "": var_F4 = ""
  loc_BAB5F3: BranchF loc_BAB60A
  loc_BAB5F6: LitVarStr var_A8, "<tr>"
  loc_BAB5FB: PopAdLdVar
  loc_BAB5FC: FLdPr Me
  loc_BAB5FF: MemLdRfVar from_stack_1.htmFile
  loc_BAB602: LdPrVar
  loc_BAB604: LateMemCall
  loc_BAB60A: FLdRfVar var_D0
  loc_BAB60D: FLdRfVar var_128
  loc_BAB610: LitVarStr var_A8, "DetalleFP"
  loc_BAB615: PopAdLdVar
  loc_BAB616: FLdRfVar var_98
  loc_BAB619: FLdPr var_12C
  loc_BAB61C:  = Me.Fields
  loc_BAB621: FLdPr var_98
  loc_BAB624: from_stack_2 = Me.Item(from_stack_1)
  loc_BAB629: FLdPr var_128
  loc_BAB62C:  = Me.Value
  loc_BAB631: LitStr "2"
  loc_BAB634: LitStr vbNullString
  loc_BAB637: LitStr "LDDer"
  loc_BAB63A: FLdRfVar var_D0
  loc_BAB63D: CStrVarTmp
  loc_BAB63E: FStStrNoPop var_BC
  loc_BAB641: ImpAdCallI2 Proc_261_22_9C4DBC(, , , )
  loc_BAB646: CVarStr var_E4
  loc_BAB649: PopAdLdVar
  loc_BAB64A: FLdPr Me
  loc_BAB64D: MemLdRfVar from_stack_1.htmFile
  loc_BAB650: LdPrVar
  loc_BAB652: LateMemCall
  loc_BAB658: FFree1Str var_BC
  loc_BAB65B: FFreeAd var_98 = ""
  loc_BAB662: FFreeVar var_D0 = ""
  loc_BAB669: FLdRfVar var_D0
  loc_BAB66C: FLdRfVar var_128
  loc_BAB66F: LitVarStr var_A8, "ComprobanteFP"
  loc_BAB674: PopAdLdVar
  loc_BAB675: FLdRfVar var_98
  loc_BAB678: FLdPr var_12C
  loc_BAB67B:  = Me.Fields
  loc_BAB680: FLdPr var_98
  loc_BAB683: from_stack_2 = Me.Item(from_stack_1)
  loc_BAB688: FLdPr var_128
  loc_BAB68B:  = Me.Value
  loc_BAB690: LitI4 0
  loc_BAB695: LitI4 0
  loc_BAB69A: LitStr "LDDer"
  loc_BAB69D: FLdRfVar var_D0
  loc_BAB6A0: CStrVarTmp
  loc_BAB6A1: FStStrNoPop var_BC
  loc_BAB6A4: ImpAdCallI2 Proc_261_22_9C4DBC(, , , )
  loc_BAB6A9: CVarStr var_E4
  loc_BAB6AC: PopAdLdVar
  loc_BAB6AD: FLdPr Me
  loc_BAB6B0: MemLdRfVar from_stack_1.htmFile
  loc_BAB6B3: LdPrVar
  loc_BAB6B5: LateMemCall
  loc_BAB6BB: FFree1Str var_BC
  loc_BAB6BE: FFreeAd var_98 = ""
  loc_BAB6C5: FFreeVar var_D0 = ""
  loc_BAB6CC: FLdRfVar var_128
  loc_BAB6CF: LitVarStr var_A8, "ImporteFP"
  loc_BAB6D4: PopAdLdVar
  loc_BAB6D5: FLdRfVar var_98
  loc_BAB6D8: FLdPr var_12C
  loc_BAB6DB:  = Me.Fields
  loc_BAB6E0: FLdPr var_98
  loc_BAB6E3: from_stack_2 = Me.Item(from_stack_1)
  loc_BAB6E8: LitI4 1
  loc_BAB6ED: LitI4 1
  loc_BAB6F2: LitVarStr var_B8, "###,###,##0.00"
  loc_BAB6F7: FStVarCopyObj var_E4
  loc_BAB6FA: FLdRfVar var_E4
  loc_BAB6FD: FLdZeroAd var_128
  loc_BAB700: CVarAd
  loc_BAB704: ImpAdCallI2 Format$(, )
  loc_BAB709: FStStr var_C0
  loc_BAB70C: LitI4 0
  loc_BAB711: LitI4 0
  loc_BAB716: LitStr "LDDer"
  loc_BAB719: FLdZeroAd var_C0
  loc_BAB71C: FStStrNoPop var_BC
  loc_BAB71F: ImpAdCallI2 Proc_261_22_9C4DBC(, , , )
  loc_BAB724: CVarStr var_F4
  loc_BAB727: PopAdLdVar
  loc_BAB728: FLdPr Me
  loc_BAB72B: MemLdRfVar from_stack_1.htmFile
  loc_BAB72E: LdPrVar
  loc_BAB730: LateMemCall
  loc_BAB736: FFreeStr var_BC = ""
  loc_BAB73D: FFree1Ad var_98
  loc_BAB740: FFreeVar var_D0 = "": var_E4 = ""
  loc_BAB749: LitVarStr var_A8, "     </tr>"
  loc_BAB74E: PopAdLdVar
  loc_BAB74F: FLdPr Me
  loc_BAB752: MemLdRfVar from_stack_1.htmFile
  loc_BAB755: LdPrVar
  loc_BAB757: LateMemCall
  loc_BAB75D: FLdRfVar var_D0
  loc_BAB760: FLdRfVar var_128
  loc_BAB763: LitVarStr var_A8, "NumeOrpa"
  loc_BAB768: PopAdLdVar
  loc_BAB769: FLdRfVar var_98
  loc_BAB76C: FLdPr var_12C
  loc_BAB76F:  = Me.Fields
  loc_BAB774: FLdPr var_98
  loc_BAB777: from_stack_2 = Me.Item(from_stack_1)
  loc_BAB77C: FLdPr var_128
  loc_BAB77F:  = Me.Value
  loc_BAB784: FLdRfVar var_D0
  loc_BAB787: CStrVarTmp
  loc_BAB788: FStStr var_88
  loc_BAB78B: FFreeAd var_98 = ""
  loc_BAB792: FFree1Var var_D0 = ""
  loc_BAB795: FLdRfVar var_D0
  loc_BAB798: FLdRfVar var_128
  loc_BAB79B: LitVarStr var_A8, "CucuPers"
  loc_BAB7A0: PopAdLdVar
  loc_BAB7A1: FLdRfVar var_98
  loc_BAB7A4: FLdPr var_12C
  loc_BAB7A7:  = Me.Fields
  loc_BAB7AC: FLdPr var_98
  loc_BAB7AF: from_stack_2 = Me.Item(from_stack_1)
  loc_BAB7B4: FLdPr var_128
  loc_BAB7B7:  = Me.Value
  loc_BAB7BC: FLdRfVar var_D0
  loc_BAB7BF: CStrVarTmp
  loc_BAB7C0: FStStr var_8C
  loc_BAB7C3: FFreeAd var_98 = ""
  loc_BAB7CA: FFree1Var var_D0 = ""
  loc_BAB7CD: FLdRfVar var_D0
  loc_BAB7D0: FLdRfVar var_128
  loc_BAB7D3: LitVarStr var_A8, "DetalleFP"
  loc_BAB7D8: PopAdLdVar
  loc_BAB7D9: FLdRfVar var_98
  loc_BAB7DC: FLdPr var_12C
  loc_BAB7DF:  = Me.Fields
  loc_BAB7E4: FLdPr var_98
  loc_BAB7E7: from_stack_2 = Me.Item(from_stack_1)
  loc_BAB7EC: FLdPr var_128
  loc_BAB7EF:  = Me.Value
  loc_BAB7F4: FLdRfVar var_D0
  loc_BAB7F7: CStrVarTmp
  loc_BAB7F8: FStStr var_90
  loc_BAB7FB: FFreeAd var_98 = ""
  loc_BAB802: FFree1Var var_D0 = ""
  loc_BAB805: LitNothing
  loc_BAB807: FStAd var_12C 
  loc_BAB80B: FLdPr Me
  loc_BAB80E: MemLdRfVar from_stack_1.global_72
  loc_BAB811: NewIfNullPr clsbase
  loc_BAB814: Call clsbase.MoveSiguiente()
  loc_BAB819: Branch loc_BAAD93
  loc_BAB81C: LitVarStr var_A8, "</table>"
  loc_BAB821: PopAdLdVar
  loc_BAB822: FLdPr Me
  loc_BAB825: MemLdRfVar from_stack_1.htmFile
  loc_BAB828: LdPrVar
  loc_BAB82A: LateMemCall
  loc_BAB830: Call Proc_209_34_983F10()
  loc_BAB835: FLdPr Me
  loc_BAB838: MemLdRfVar from_stack_1.htmFile
  loc_BAB83B: LdPrVar
  loc_BAB83D: LateMemCall
  loc_BAB843: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_BAB848: ExitProcHresult
End Sub

Public Sub GeneraXLS() '950CD4
  'Data Table: 4CE380
  loc_950CBC: LitI2_Byte 0
  loc_950CBE: FLdPr Me
  loc_950CC1: MemStI2 bLogos
  loc_950CC4: Call GeneraHTML()
  loc_950CC9: LitI2_Byte &HFF
  loc_950CCB: FLdPr Me
  loc_950CCE: MemStI2 bLogos
  loc_950CD1: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'B0E374
  'Data Table: 4CE380
  loc_B0DBA0: LitStr vbNullString
  loc_B0DBA3: FLdPr Me
  loc_B0DBA6: MemStStrCopy
  loc_B0DBAA: LitI2_Byte 0
  loc_B0DBAC: PopTmpLdAd2 var_92
  loc_B0DBAF: from_stack_2v = mskDesde_UnknownEvent_8(from_stack_1v)
  loc_B0DBB4: FLdPr Me
  loc_B0DBB7: MemLdStr global_80
  loc_B0DBBA: LitStr vbNullString
  loc_B0DBBD: NeStr
  loc_B0DBBF: BranchF loc_B0DBC3
  loc_B0DBC2: ExitProcHresult
  loc_B0DBC3: LitI2_Byte 0
  loc_B0DBC5: PopTmpLdAd2 var_92
  loc_B0DBC8: from_stack_2v = mskHasta_UnknownEvent_8(from_stack_1v)
  loc_B0DBCD: FLdPr Me
  loc_B0DBD0: MemLdStr global_80
  loc_B0DBD3: LitStr vbNullString
  loc_B0DBD6: NeStr
  loc_B0DBD8: BranchF loc_B0DBDC
  loc_B0DBDB: ExitProcHresult
  loc_B0DBDC: FLdPr Me
  loc_B0DBDF: MemLdI2 bGenerado
  loc_B0DBE2: BranchF loc_B0DBE6
  loc_B0DBE5: ExitProcHresult
  loc_B0DBE6: LitVarStr var_A4, "Generando reporte..."
  loc_B0DBEB: PopAdLdVar
  loc_B0DBEC: FLdPr Me
  loc_B0DBEF: VCallAd Control_ID_statusBar
  loc_B0DBF2: FStAdFunc var_B8
  loc_B0DBF5: FLdPr var_B8
  loc_B0DBF8: LateIdSt
  loc_B0DBFD: FFree1Ad var_B8
  loc_B0DC00: LitI4 &HB
  loc_B0DC05: CI2I4
  loc_B0DC06: FLdPr Me
  loc_B0DC09: Me.MousePointer = from_stack_1
  loc_B0DC0E: LitStr vbNullString
  loc_B0DC11: FLdPr Me
  loc_B0DC14: MemStStrCopy
  loc_B0DC18: LitI2_Byte 0
  loc_B0DC1A: PopTmpLdAd2 var_92
  loc_B0DC1D: Call cboExpeImpu_Validate(from_stack_1v)
  loc_B0DC22: FLdPr Me
  loc_B0DC25: MemLdStr global_80
  loc_B0DC28: LitStr vbNullString
  loc_B0DC2B: NeStr
  loc_B0DC2D: BranchF loc_B0DC33
  loc_B0DC30: Branch loc_B0E34B
  loc_B0DC33: LitI2_Byte 0
  loc_B0DC35: PopTmpLdAd2 var_92
  loc_B0DC38: from_stack_2v = NumeOrpaDesdeMsk_UnknownEvent_8(from_stack_1v)
  loc_B0DC3D: FLdPr Me
  loc_B0DC40: MemLdStr global_80
  loc_B0DC43: LitStr vbNullString
  loc_B0DC46: NeStr
  loc_B0DC48: BranchF loc_B0DC4E
  loc_B0DC4B: Branch loc_B0E34B
  loc_B0DC4E: LitI2_Byte 0
  loc_B0DC50: PopTmpLdAd2 var_92
  loc_B0DC53: from_stack_2v = NumeOrpaHastaMsk_UnknownEvent_8(from_stack_1v)
  loc_B0DC58: FLdPr Me
  loc_B0DC5B: MemLdStr global_80
  loc_B0DC5E: LitStr vbNullString
  loc_B0DC61: NeStr
  loc_B0DC63: BranchF loc_B0DC69
  loc_B0DC66: Branch loc_B0E34B
  loc_B0DC69: FLdRfVar var_BC
  loc_B0DC6C: FLdPr Me
  loc_B0DC6F: VCallAd Control_ID_cboExpeImpu
  loc_B0DC72: FStAdFunc var_B8
  loc_B0DC75: FLdPr var_B8
  loc_B0DC78:  = Me.Text
  loc_B0DC7D: FLdRfVar var_C4
  loc_B0DC80: FLdPr Me
  loc_B0DC83: VCallAd Control_ID_cboExpeImpu
  loc_B0DC86: FStAdFunc var_C0
  loc_B0DC89: FLdPr var_C0
  loc_B0DC8C:  = Me.Text
  loc_B0DC91: LitVarStr var_B4, vbNullString
  loc_B0DC96: FStVarCopyObj var_E8
  loc_B0DC99: FLdRfVar var_E8
  loc_B0DC9C: LitStr " AND op.ExpeImpu = '"
  loc_B0DC9F: ILdRf var_C4
  loc_B0DCA2: ConcatStr
  loc_B0DCA3: FStStrNoPop var_C8
  loc_B0DCA6: LitStr "'"
  loc_B0DCA9: ConcatStr
  loc_B0DCAA: CVarStr var_D8
  loc_B0DCAD: ILdRf var_BC
  loc_B0DCB0: LitStr vbNullString
  loc_B0DCB3: NeStr
  loc_B0DCB5: CVarBoolI2 var_A4
  loc_B0DCB9: FLdRfVar var_F8
  loc_B0DCBC: ImpAdCallFPR4  = IIf(, , )
  loc_B0DCC1: FLdRfVar var_F8
  loc_B0DCC4: CStrVarTmp
  loc_B0DCC5: FStStr var_90
  loc_B0DCC8: FFreeStr var_BC = "": var_C4 = ""
  loc_B0DCD1: FFreeAd var_B8 = ""
  loc_B0DCD8: FFreeVar var_A4 = "": var_D8 = "": var_E8 = ""
  loc_B0DCE3: FLdRfVar var_92
  loc_B0DCE6: FLdPr Me
  loc_B0DCE9: VCallAd Control_ID_optEmision
  loc_B0DCEC: FStAdFunc var_B8
  loc_B0DCEF: FLdPr var_B8
  loc_B0DCF2:  = Me.Value
  loc_B0DCF7: FLdI2 var_92
  loc_B0DCFA: FFree1Ad var_B8
  loc_B0DCFD: BranchF loc_B0DDA8
  loc_B0DD00: FLdPr Me
  loc_B0DD03: VCallAd Control_ID_mskDesde
  loc_B0DD06: FStAdFunc var_B8
  loc_B0DD09: FLdPr var_B8
  loc_B0DD0C: LateIdLdVar var_D8 DispID_15 0
  loc_B0DD13: PopAd
  loc_B0DD15: FLdPr Me
  loc_B0DD18: VCallAd Control_ID_mskHasta
  loc_B0DD1B: FStAdFunc var_C0
  loc_B0DD1E: FLdPr var_C0
  loc_B0DD21: LateIdLdVar var_108 DispID_15 0
  loc_B0DD28: PopAd
  loc_B0DD2A: LitStr " AND FechOrpa >= "
  loc_B0DD2D: LitI4 1
  loc_B0DD32: LitI4 1
  loc_B0DD37: LitVarStr var_A4, "'yyyy-mm-dd'"
  loc_B0DD3C: FStVarCopyObj var_F8
  loc_B0DD3F: FLdRfVar var_F8
  loc_B0DD42: FLdRfVar var_D8
  loc_B0DD45: CStrVarTmp
  loc_B0DD46: CVarStr var_E8
  loc_B0DD49: ImpAdCallI2 Format$(, )
  loc_B0DD4E: FStStrNoPop var_BC
  loc_B0DD51: ConcatStr
  loc_B0DD52: FStStrNoPop var_C4
  loc_B0DD55: LitStr " AND FechOrpa <= "
  loc_B0DD58: ConcatStr
  loc_B0DD59: FStStrNoPop var_C8
  loc_B0DD5C: LitI4 1
  loc_B0DD61: LitI4 1
  loc_B0DD66: LitVarStr var_B4, "'yyyy-mm-dd'"
  loc_B0DD6B: FStVarCopyObj var_128
  loc_B0DD6E: FLdRfVar var_128
  loc_B0DD71: FLdRfVar var_108
  loc_B0DD74: CStrVarTmp
  loc_B0DD75: CVarStr var_118
  loc_B0DD78: ImpAdCallI2 Format$(, )
  loc_B0DD7D: FStStrNoPop var_12C
  loc_B0DD80: ConcatStr
  loc_B0DD81: FStStr var_88
  loc_B0DD84: FFreeStr var_BC = "": var_C4 = "": var_C8 = ""
  loc_B0DD8F: FFreeAd var_B8 = ""
  loc_B0DD96: FFreeVar var_D8 = "": var_E8 = "": var_F8 = "": var_108 = "": var_118 = ""
  loc_B0DDA5: Branch loc_B0DFF4
  loc_B0DDA8: FLdRfVar var_92
  loc_B0DDAB: FLdPr Me
  loc_B0DDAE: VCallAd Control_ID_optRemision
  loc_B0DDB1: FStAdFunc var_B8
  loc_B0DDB4: FLdPr var_B8
  loc_B0DDB7:  = Me.Value
  loc_B0DDBC: FLdI2 var_92
  loc_B0DDBF: FFree1Ad var_B8
  loc_B0DDC2: BranchF loc_B0DE6D
  loc_B0DDC5: FLdPr Me
  loc_B0DDC8: VCallAd Control_ID_mskDesde
  loc_B0DDCB: FStAdFunc var_B8
  loc_B0DDCE: FLdPr var_B8
  loc_B0DDD1: LateIdLdVar var_D8 DispID_15 0
  loc_B0DDD8: PopAd
  loc_B0DDDA: FLdPr Me
  loc_B0DDDD: VCallAd Control_ID_mskHasta
  loc_B0DDE0: FStAdFunc var_C0
  loc_B0DDE3: FLdPr var_C0
  loc_B0DDE6: LateIdLdVar var_108 DispID_15 0
  loc_B0DDED: PopAd
  loc_B0DDEF: LitStr " AND FeanOrpa IS NULL AND FereOrpa >= "
  loc_B0DDF2: LitI4 1
  loc_B0DDF7: LitI4 1
  loc_B0DDFC: LitVarStr var_A4, "'yyyy-mm-dd'"
  loc_B0DE01: FStVarCopyObj var_F8
  loc_B0DE04: FLdRfVar var_F8
  loc_B0DE07: FLdRfVar var_D8
  loc_B0DE0A: CStrVarTmp
  loc_B0DE0B: CVarStr var_E8
  loc_B0DE0E: ImpAdCallI2 Format$(, )
  loc_B0DE13: FStStrNoPop var_BC
  loc_B0DE16: ConcatStr
  loc_B0DE17: FStStrNoPop var_C4
  loc_B0DE1A: LitStr " AND FereOrpa <= "
  loc_B0DE1D: ConcatStr
  loc_B0DE1E: FStStrNoPop var_C8
  loc_B0DE21: LitI4 1
  loc_B0DE26: LitI4 1
  loc_B0DE2B: LitVarStr var_B4, "'yyyy-mm-dd'"
  loc_B0DE30: FStVarCopyObj var_128
  loc_B0DE33: FLdRfVar var_128
  loc_B0DE36: FLdRfVar var_108
  loc_B0DE39: CStrVarTmp
  loc_B0DE3A: CVarStr var_118
  loc_B0DE3D: ImpAdCallI2 Format$(, )
  loc_B0DE42: FStStrNoPop var_12C
  loc_B0DE45: ConcatStr
  loc_B0DE46: FStStr var_88
  loc_B0DE49: FFreeStr var_BC = "": var_C4 = "": var_C8 = ""
  loc_B0DE54: FFreeAd var_B8 = ""
  loc_B0DE5B: FFreeVar var_D8 = "": var_E8 = "": var_F8 = "": var_108 = "": var_118 = ""
  loc_B0DE6A: Branch loc_B0DFF4
  loc_B0DE6D: FLdRfVar var_92
  loc_B0DE70: FLdPr Me
  loc_B0DE73: VCallAd Control_ID_optArchivo
  loc_B0DE76: FStAdFunc var_B8
  loc_B0DE79: FLdPr var_B8
  loc_B0DE7C:  = Me.Value
  loc_B0DE81: FLdI2 var_92
  loc_B0DE84: FFree1Ad var_B8
  loc_B0DE87: BranchF loc_B0DF32
  loc_B0DE8A: FLdPr Me
  loc_B0DE8D: VCallAd Control_ID_mskDesde
  loc_B0DE90: FStAdFunc var_B8
  loc_B0DE93: FLdPr var_B8
  loc_B0DE96: LateIdLdVar var_D8 DispID_15 0
  loc_B0DE9D: PopAd
  loc_B0DE9F: FLdPr Me
  loc_B0DEA2: VCallAd Control_ID_mskHasta
  loc_B0DEA5: FStAdFunc var_C0
  loc_B0DEA8: FLdPr var_C0
  loc_B0DEAB: LateIdLdVar var_108 DispID_15 0
  loc_B0DEB2: PopAd
  loc_B0DEB4: LitStr " AND FeanOrpa IS NULL AND FearOrpa >= "
  loc_B0DEB7: LitI4 1
  loc_B0DEBC: LitI4 1
  loc_B0DEC1: LitVarStr var_A4, "'yyyy-mm-dd'"
  loc_B0DEC6: FStVarCopyObj var_F8
  loc_B0DEC9: FLdRfVar var_F8
  loc_B0DECC: FLdRfVar var_D8
  loc_B0DECF: CStrVarTmp
  loc_B0DED0: CVarStr var_E8
  loc_B0DED3: ImpAdCallI2 Format$(, )
  loc_B0DED8: FStStrNoPop var_BC
  loc_B0DEDB: ConcatStr
  loc_B0DEDC: FStStrNoPop var_C4
  loc_B0DEDF: LitStr " AND FearOrpa <= "
  loc_B0DEE2: ConcatStr
  loc_B0DEE3: FStStrNoPop var_C8
  loc_B0DEE6: LitI4 1
  loc_B0DEEB: LitI4 1
  loc_B0DEF0: LitVarStr var_B4, "'yyyy-mm-dd'"
  loc_B0DEF5: FStVarCopyObj var_128
  loc_B0DEF8: FLdRfVar var_128
  loc_B0DEFB: FLdRfVar var_108
  loc_B0DEFE: CStrVarTmp
  loc_B0DEFF: CVarStr var_118
  loc_B0DF02: ImpAdCallI2 Format$(, )
  loc_B0DF07: FStStrNoPop var_12C
  loc_B0DF0A: ConcatStr
  loc_B0DF0B: FStStr var_88
  loc_B0DF0E: FFreeStr var_BC = "": var_C4 = "": var_C8 = ""
  loc_B0DF19: FFreeAd var_B8 = ""
  loc_B0DF20: FFreeVar var_D8 = "": var_E8 = "": var_F8 = "": var_108 = "": var_118 = ""
  loc_B0DF2F: Branch loc_B0DFF4
  loc_B0DF32: FLdRfVar var_92
  loc_B0DF35: FLdPr Me
  loc_B0DF38: VCallAd Control_ID_optAnulacion
  loc_B0DF3B: FStAdFunc var_B8
  loc_B0DF3E: FLdPr var_B8
  loc_B0DF41:  = Me.Value
  loc_B0DF46: FLdI2 var_92
  loc_B0DF49: FFree1Ad var_B8
  loc_B0DF4C: BranchF loc_B0DFF4
  loc_B0DF4F: FLdPr Me
  loc_B0DF52: VCallAd Control_ID_mskDesde
  loc_B0DF55: FStAdFunc var_B8
  loc_B0DF58: FLdPr var_B8
  loc_B0DF5B: LateIdLdVar var_D8 DispID_15 0
  loc_B0DF62: PopAd
  loc_B0DF64: FLdPr Me
  loc_B0DF67: VCallAd Control_ID_mskHasta
  loc_B0DF6A: FStAdFunc var_C0
  loc_B0DF6D: FLdPr var_C0
  loc_B0DF70: LateIdLdVar var_108 DispID_15 0
  loc_B0DF77: PopAd
  loc_B0DF79: LitStr " AND FeanOrpa >= "
  loc_B0DF7C: LitI4 1
  loc_B0DF81: LitI4 1
  loc_B0DF86: LitVarStr var_A4, "'yyyy-mm-dd'"
  loc_B0DF8B: FStVarCopyObj var_F8
  loc_B0DF8E: FLdRfVar var_F8
  loc_B0DF91: FLdRfVar var_D8
  loc_B0DF94: CStrVarTmp
  loc_B0DF95: CVarStr var_E8
  loc_B0DF98: ImpAdCallI2 Format$(, )
  loc_B0DF9D: FStStrNoPop var_BC
  loc_B0DFA0: ConcatStr
  loc_B0DFA1: FStStrNoPop var_C4
  loc_B0DFA4: LitStr " AND FeanOrpa <= "
  loc_B0DFA7: ConcatStr
  loc_B0DFA8: FStStrNoPop var_C8
  loc_B0DFAB: LitI4 1
  loc_B0DFB0: LitI4 1
  loc_B0DFB5: LitVarStr var_B4, "'yyyy-mm-dd'"
  loc_B0DFBA: FStVarCopyObj var_128
  loc_B0DFBD: FLdRfVar var_128
  loc_B0DFC0: FLdRfVar var_108
  loc_B0DFC3: CStrVarTmp
  loc_B0DFC4: CVarStr var_118
  loc_B0DFC7: ImpAdCallI2 Format$(, )
  loc_B0DFCC: FStStrNoPop var_12C
  loc_B0DFCF: ConcatStr
  loc_B0DFD0: FStStr var_88
  loc_B0DFD3: FFreeStr var_BC = "": var_C4 = "": var_C8 = ""
  loc_B0DFDE: FFreeAd var_B8 = ""
  loc_B0DFE5: FFreeVar var_D8 = "": var_E8 = "": var_F8 = "": var_108 = "": var_118 = ""
  loc_B0DFF4: FLdRfVar var_92
  loc_B0DFF7: FLdPr Me
  loc_B0DFFA: VCallAd Control_ID_optTodas
  loc_B0DFFD: FStAdFunc var_B8
  loc_B0E000: FLdPr var_B8
  loc_B0E003:  = Me.Value
  loc_B0E008: FLdI2 var_92
  loc_B0E00B: FFree1Ad var_B8
  loc_B0E00E: BranchF loc_B0E017
  loc_B0E011: LitStr vbNullString
  loc_B0E014: FStStrCopy var_8C
  loc_B0E017: FLdRfVar var_92
  loc_B0E01A: FLdPr Me
  loc_B0E01D: VCallAd Control_ID_optDevengado
  loc_B0E020: FStAdFunc var_B8
  loc_B0E023: FLdPr var_B8
  loc_B0E026:  = Me.Value
  loc_B0E02B: FLdI2 var_92
  loc_B0E02E: FFree1Ad var_B8
  loc_B0E031: BranchF loc_B0E03A
  loc_B0E034: LitStr " AND TipoOrpa = 'Devengado'"
  loc_B0E037: FStStrCopy var_8C
  loc_B0E03A: FLdRfVar var_92
  loc_B0E03D: FLdPr Me
  loc_B0E040: VCallAd Control_ID_optDebito
  loc_B0E043: FStAdFunc var_B8
  loc_B0E046: FLdPr var_B8
  loc_B0E049:  = Me.Value
  loc_B0E04E: FLdI2 var_92
  loc_B0E051: FFree1Ad var_B8
  loc_B0E054: BranchF loc_B0E05D
  loc_B0E057: LitStr " AND TipoOrpa = 'Debito'"
  loc_B0E05A: FStStrCopy var_8C
  loc_B0E05D: LitStr "DROP TEMPORARY TABLE IF EXISTS tmovi;"
  loc_B0E060: LitStr " CREATE TEMPORARY TABLE tmovi"
  loc_B0E063: ConcatStr
  loc_B0E064: FStStrNoPop var_BC
  loc_B0E067: LitStr " SELECT op.PeriInfo, op.NumeOrpa, op.ExpeImpu, op.NumeLiqu, op.FechOrpa, op.DetaOrpa, op.FereOrpa, op.FearOrpa, op.ArchOrpa"
  loc_B0E06A: ConcatStr
  loc_B0E06B: FStStrNoPop var_C4
  loc_B0E06E: LitStr ", op.FojaOrpa, op.FeanOrpa, op.BajaMoti, op.TipoOrpa, op.ChunOrpa, op.AltaUsua, op.AltaFeho"
  loc_B0E071: ConcatStr
  loc_B0E072: FStStrNoPop var_C8
  loc_B0E075: LitStr ", (Select Sum(ImpoLine) FROM liquidaneto ldn WHERE ldn.PeriInfo = op.PeriInfo AND ldn.ExpeImpu = op.ExpeImpu AND ldn.NumeLiqu = op.NumeLiqu) TotalOP"
  loc_B0E078: ConcatStr
  loc_B0E079: FStStrNoPop var_12C
  loc_B0E07C: LitStr " FROM ordenpago op"
  loc_B0E07F: ConcatStr
  loc_B0E080: FStStrNoPop var_130
  loc_B0E083: LitStr " WHERE op.PeriInfo = "
  loc_B0E086: ConcatStr
  loc_B0E087: FStStrNoPop var_138
  loc_B0E08A: FLdRfVar var_134
  loc_B0E08D: FLdPr Me
  loc_B0E090: VCallAd Control_ID_cboPeriodo
  loc_B0E093: FStAdFunc var_B8
  loc_B0E096: FLdPr var_B8
  loc_B0E099:  = Me.Text
  loc_B0E09E: ILdRf var_134
  loc_B0E0A1: ConcatStr
  loc_B0E0A2: FStStrNoPop var_13C
  loc_B0E0A5: LitStr " AND op.NumeOrpa BETWEEN "
  loc_B0E0A8: ConcatStr
  loc_B0E0A9: FStStrNoPop var_140
  loc_B0E0AC: FLdPr Me
  loc_B0E0AF: VCallAd Control_ID_NumeOrpaDesdeMsk
  loc_B0E0B2: FStAdFunc var_C0
  loc_B0E0B5: FLdPr var_C0
  loc_B0E0B8: LateIdLdVar var_D8 DispID_22 0
  loc_B0E0BF: CStrVarTmp
  loc_B0E0C0: FStStrNoPop var_144
  loc_B0E0C3: ConcatStr
  loc_B0E0C4: FStStrNoPop var_148
  loc_B0E0C7: LitStr " AND "
  loc_B0E0CA: ConcatStr
  loc_B0E0CB: FStStrNoPop var_150
  loc_B0E0CE: FLdPr Me
  loc_B0E0D1: VCallAd Control_ID_NumeOrpaHastaMsk
  loc_B0E0D4: FStAdFunc var_14C
  loc_B0E0D7: FLdPr var_14C
  loc_B0E0DA: LateIdLdVar var_E8 DispID_22 0
  loc_B0E0E1: CStrVarTmp
  loc_B0E0E2: FStStrNoPop var_154
  loc_B0E0E5: ConcatStr
  loc_B0E0E6: FStStrNoPop var_158
  loc_B0E0E9: ILdRf var_90
  loc_B0E0EC: ConcatStr
  loc_B0E0ED: FStStrNoPop var_15C
  loc_B0E0F0: ILdRf var_88
  loc_B0E0F3: ConcatStr
  loc_B0E0F4: FStStrNoPop var_160
  loc_B0E0F7: LitStr " AND op.TipoOrpa <> 'Reservada'"
  loc_B0E0FA: ConcatStr
  loc_B0E0FB: FStStrNoPop var_164
  loc_B0E0FE: LitStr " ORDER BY NumeOrpa;"
  loc_B0E101: ConcatStr
  loc_B0E102: FStStrNoPop var_168
  loc_B0E105: FLdPr Me
  loc_B0E108: MemLdRfVar from_stack_1.global_72
  loc_B0E10B: NewIfNullPr clsbase
  loc_B0E10E: Call clsbase.RedefineRS(from_stack_1v)
  loc_B0E113: FFreeStr var_BC = "": var_C4 = "": var_C8 = "": var_12C = "": var_130 = "": var_138 = "": var_134 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = ""
  loc_B0E13A: FFreeAd var_B8 = "": var_C0 = ""
  loc_B0E143: FFreeVar var_D8 = ""
  loc_B0E14A: LitStr "DROP TEMPORARY TABLE IF EXISTS tmovi2;"
  loc_B0E14D: LitStr " CREATE TEMPORARY TABLE movi2` ("
  loc_B0E150: ConcatStr
  loc_B0E151: FStStrNoPop var_BC
  loc_B0E154: LitStr "   eriInfo` year(4) NOT NULL DEFAULT '0000', `NumeOrpa` smallint(5) unsigned NOT NULL DEFAULT '0',"
  loc_B0E157: ConcatStr
  loc_B0E158: FStStrNoPop var_C4
  loc_B0E15B: LitStr "   xpeImpu` varchar(15) NOT NULL DEFAULT '',"
  loc_B0E15E: ConcatStr
  loc_B0E15F: FStStrNoPop var_C8
  loc_B0E162: LitStr "   umeLiqu` SMALLINT(4) unsigned NOT NULL DEFAULT '0',"
  loc_B0E165: ConcatStr
  loc_B0E166: FStStrNoPop var_12C
  loc_B0E169: LitStr "   echOrpa` date DEFAULT NULL,"
  loc_B0E16C: ConcatStr
  loc_B0E16D: FStStrNoPop var_130
  loc_B0E170: LitStr "   etaOrpa` varchar(500) NOT NULL DEFAULT '',"
  loc_B0E173: ConcatStr
  loc_B0E174: FStStrNoPop var_134
  loc_B0E177: LitStr "   ereOrpa` date DEFAULT NULL,"
  loc_B0E17A: ConcatStr
  loc_B0E17B: FStStrNoPop var_138
  loc_B0E17E: LitStr "   earOrpa` date DEFAULT NULL,"
  loc_B0E181: ConcatStr
  loc_B0E182: FStStrNoPop var_13C
  loc_B0E185: LitStr "   rchOrpa` varchar(8) NOT NULL DEFAULT '',"
  loc_B0E188: ConcatStr
  loc_B0E189: FStStrNoPop var_140
  loc_B0E18C: LitStr "   ojaOrpa` varchar(8) NOT NULL DEFAULT '',"
  loc_B0E18F: ConcatStr
  loc_B0E190: FStStrNoPop var_144
  loc_B0E193: LitStr "   eanOrpa` date DEFAULT NULL,"
  loc_B0E196: ConcatStr
  loc_B0E197: FStStrNoPop var_148
  loc_B0E19A: LitStr "   ajaMoti` varchar(100) NOT NULL DEFAULT '',"
  loc_B0E19D: ConcatStr
  loc_B0E19E: FStStrNoPop var_150
  loc_B0E1A1: LitStr "   ipoOrpa` enum('Devengado','Debito','Reservada') NOT NULL DEFAULT 'Devengado',"
  loc_B0E1A4: ConcatStr
  loc_B0E1A5: FStStrNoPop var_154
  loc_B0E1A8: LitStr "   hunOrpa` tinyint(1) unsigned NOT NULL DEFAULT '0',"
  loc_B0E1AB: ConcatStr
  loc_B0E1AC: FStStrNoPop var_158
  loc_B0E1AF: LitStr "   ltaUsua` varchar(8) NOT NULL DEFAULT '',"
  loc_B0E1B2: ConcatStr
  loc_B0E1B3: FStStrNoPop var_15C
  loc_B0E1B6: LitStr "   ltaFeho` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',"
  loc_B0E1B9: ConcatStr
  loc_B0E1BA: FStStrNoPop var_160
  loc_B0E1BD: LitStr "   otalOp` decimal(14,2) DEFAULT NULL,"
  loc_B0E1C0: ConcatStr
  loc_B0E1C1: FStStrNoPop var_164
  loc_B0E1C4: LitStr "   ucuPers` bigint(11) unsigned NOT NULL DEFAULT '0',"
  loc_B0E1C7: ConcatStr
  loc_B0E1C8: FStStrNoPop var_168
  loc_B0E1CB: LitStr "   etaProv` varchar(70) NOT NULL DEFAULT '',"
  loc_B0E1CE: ConcatStr
  loc_B0E1CF: FStStrNoPop var_16C
  loc_B0E1D2: LitStr "   odiRete` tinyint(2) unsigned NOT NULL DEFAULT '0',"
  loc_B0E1D5: ConcatStr
  loc_B0E1D6: FStStrNoPop var_170
  loc_B0E1D9: LitStr "   etalleFp` varchar(100) NOT NULL DEFAULT '',"
  loc_B0E1DC: ConcatStr
  loc_B0E1DD: FStStrNoPop var_174
  loc_B0E1E0: LitStr "   omprobanteFp` int(8) unsigned NOT NULL DEFAULT '0',"
  loc_B0E1E3: ConcatStr
  loc_B0E1E4: FStStrNoPop var_178
  loc_B0E1E7: LitStr "   mporteFp` decimal(12,2) NOT NULL DEFAULT '0.00'"
  loc_B0E1EA: ConcatStr
  loc_B0E1EB: FStStrNoPop var_17C
  loc_B0E1EE: LitStr " ) ENGINE=InnoDB ;"
  loc_B0E1F1: ConcatStr
  loc_B0E1F2: FStStrNoPop var_180
  loc_B0E1F5: FLdPr Me
  loc_B0E1F8: MemLdRfVar from_stack_1.global_72
  loc_B0E1FB: NewIfNullPr clsbase
  loc_B0E1FE: Call clsbase.RedefineRS(from_stack_1v)
  loc_B0E203: FFreeStr var_BC = "": var_C4 = "": var_C8 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = ""
  loc_B0E236: LitStr "INSERT INTO tmovi2"
  loc_B0E239: LitStr " SELECT tmovi.*, lqn.CucuPers, DetaProv, lqn.CodiRete, DetaRete, CertLine, ImpoLine"
  loc_B0E23C: ConcatStr
  loc_B0E23D: FStStrNoPop var_BC
  loc_B0E240: LitStr " FROM tmovi"
  loc_B0E243: ConcatStr
  loc_B0E244: FStStrNoPop var_C4
  loc_B0E247: LitStr " INNER JOIN liquidaneto lqn ON lqn.PeriInfo = tmovi.PeriInfo AND lqn.ExpeImpu = tmovi.ExpeImpu AND lqn.NumeLiqu = tmovi.NumeLiqu AND lqn.CodiRete > 0"
  loc_B0E24A: ConcatStr
  loc_B0E24B: FStStrNoPop var_C8
  loc_B0E24E: LitStr " INNER JOIN retenciones rete ON rete.PeriInfo = lqn.PeriInfo AND rete.CodiRete = lqn.CodiRete"
  loc_B0E251: ConcatStr
  loc_B0E252: FStStrNoPop var_12C
  loc_B0E255: LitStr " INNER JOIN proveedor ON proveedor.CucuPers = lqn.CucuPers;"
  loc_B0E258: ConcatStr
  loc_B0E259: FStStrNoPop var_130
  loc_B0E25C: FLdPr Me
  loc_B0E25F: MemLdRfVar from_stack_1.global_72
  loc_B0E262: NewIfNullPr clsbase
  loc_B0E265: Call clsbase.RedefineRS(from_stack_1v)
  loc_B0E26A: FFreeStr var_BC = "": var_C4 = "": var_C8 = "": var_12C = ""
  loc_B0E277: LitStr " INSERT INTO tmovi2"
  loc_B0E27A: LitStr " SELECT tmovi.*, cheque.CucuPers, DetaProv, 0, IFNULL(DetaBanc,'') DetaBanc, NumeMoba, ImpoCheq"
  loc_B0E27D: ConcatStr
  loc_B0E27E: FStStrNoPop var_BC
  loc_B0E281: LitStr " FROM tmovi"
  loc_B0E284: ConcatStr
  loc_B0E285: FStStrNoPop var_C4
  loc_B0E288: LitStr " INNER JOIN cheque ON cheque.PeriInfo = tmovi.PeriInfo AND cheque.NumeOrpa = tmovi.NumeOrpa /*AND FeanCheq IS NULL*/"
  loc_B0E28B: ConcatStr
  loc_B0E28C: FStStrNoPop var_C8
  loc_B0E28F: LitStr " LEFT JOIN banco ON banco.PeriInfo = cheque.PeriInfo AND banco.CodiBanc = cheque.CodiBanc"
  loc_B0E292: ConcatStr
  loc_B0E293: FStStrNoPop var_12C
  loc_B0E296: LitStr " INNER JOIN proveedor ON proveedor.CucuPers = cheque.CucuPers;"
  loc_B0E299: ConcatStr
  loc_B0E29A: FStStrNoPop var_130
  loc_B0E29D: FLdPr Me
  loc_B0E2A0: MemLdRfVar from_stack_1.global_72
  loc_B0E2A3: NewIfNullPr clsbase
  loc_B0E2A6: Call clsbase.RedefineRS(from_stack_1v)
  loc_B0E2AB: FFreeStr var_BC = "": var_C4 = "": var_C8 = "": var_12C = ""
  loc_B0E2B8: LitStr " DROP TEMPORARY TABLE IF EXISTS tmovi3;"
  loc_B0E2BB: LitStr " CREATE TEMPORARY TABLE tmovi3"
  loc_B0E2BE: ConcatStr
  loc_B0E2BF: FStStrNoPop var_BC
  loc_B0E2C2: LitStr " SELECT *"
  loc_B0E2C5: ConcatStr
  loc_B0E2C6: FStStrNoPop var_C4
  loc_B0E2C9: LitStr " FROM tmovi2;"
  loc_B0E2CC: ConcatStr
  loc_B0E2CD: FStStrNoPop var_C8
  loc_B0E2D0: FLdPr Me
  loc_B0E2D3: MemLdRfVar from_stack_1.global_72
  loc_B0E2D6: NewIfNullPr clsbase
  loc_B0E2D9: Call clsbase.RedefineRS(from_stack_1v)
  loc_B0E2DE: FFreeStr var_BC = "": var_C4 = ""
  loc_B0E2E7: LitStr "SELECT tmovi2.*"
  loc_B0E2EA: LitStr " , (Select Count(Distinct(tmovi3.ComprobanteFp)) FROM tmovi3 WHERE tmovi3.PeriInfo = tmovi2.PeriInfo AND tmovi3.NumeOrpa = tmovi2.NumeOrpa AND tmovi3.CucuPers = tmovi2.CucuPers) RowSpan"
  loc_B0E2ED: ConcatStr
  loc_B0E2EE: FStStrNoPop var_BC
  loc_B0E2F1: LitStr " FROM tmovi2"
  loc_B0E2F4: ConcatStr
  loc_B0E2F5: FStStrNoPop var_C4
  loc_B0E2F8: LitStr " ORDER BY tmovi2.NumeOrpa, tmovi2.DetaProv, tmovi2.CodiRete;"
  loc_B0E2FB: ConcatStr
  loc_B0E2FC: FStStrNoPop var_C8
  loc_B0E2FF: FLdPr Me
  loc_B0E302: MemLdRfVar from_stack_1.global_72
  loc_B0E305: NewIfNullPr clsbase
  loc_B0E308: Call clsbase.RedefineRS(from_stack_1v)
  loc_B0E30D: FFreeStr var_BC = "": var_C4 = ""
  loc_B0E316: FLdRfVar var_184
  loc_B0E319: FLdPr Me
  loc_B0E31C: MemLdRfVar from_stack_1.global_72
  loc_B0E31F: NewIfNullPr clsbase
  loc_B0E322: from_stack_1 = clsbase.RecordCount
  loc_B0E327: ILdRf var_184
  loc_B0E32A: LitI4 0
  loc_B0E32F: EqI4
  loc_B0E330: BranchF loc_B0E343
  loc_B0E333: LitI4 0
  loc_B0E338: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_B0E33B: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B0E340: Branch loc_B0E34B
  loc_B0E343: LitI2_Byte &HFF
  loc_B0E345: FLdPr Me
  loc_B0E348: MemStI2 bGenerado
  loc_B0E34B: LitI4 0
  loc_B0E350: CI2I4
  loc_B0E351: FLdPr Me
  loc_B0E354: Me.MousePointer = from_stack_1
  loc_B0E359: LitVarStr var_A4, vbNullString
  loc_B0E35E: PopAdLdVar
  loc_B0E35F: FLdPr Me
  loc_B0E362: VCallAd Control_ID_statusBar
  loc_B0E365: FStAdFunc var_B8
  loc_B0E368: FLdPr var_B8
  loc_B0E36B: LateIdSt
  loc_B0E370: FFree1Ad var_B8
  loc_B0E373: ExitProcHresult
End Sub

Public Sub HabilitarCriterio() '9FA878
  'Data Table: 4CE380
  loc_9FA764: LitI4 0
  loc_9FA769: LitI4 &HE
  loc_9FA76E: FLdRfVar var_88
  loc_9FA771: Redim
  loc_9FA77B: FLdPr Me
  loc_9FA77E: VCallAd Control_ID_cboPeriodo
  loc_9FA781: CVarAd
  loc_9FA785: ParmAry1St
  loc_9FA78B: FLdPr Me
  loc_9FA78E: VCallAd Control_ID_mskDesde
  loc_9FA791: CVarAd
  loc_9FA795: ParmAry1St
  loc_9FA79B: FLdPr Me
  loc_9FA79E: VCallAd Control_ID_cmdDesde
  loc_9FA7A1: CVarAd
  loc_9FA7A5: ParmAry1St
  loc_9FA7AB: FLdPr Me
  loc_9FA7AE: VCallAd Control_ID_mskHasta
  loc_9FA7B1: CVarAd
  loc_9FA7B5: ParmAry1St
  loc_9FA7BB: FLdPr Me
  loc_9FA7BE: VCallAd Control_ID_cmdHasta
  loc_9FA7C1: CVarAd
  loc_9FA7C5: ParmAry1St
  loc_9FA7CB: FLdPr Me
  loc_9FA7CE: VCallAd Control_ID_optTodas
  loc_9FA7D1: CVarAd
  loc_9FA7D5: ParmAry1St
  loc_9FA7DB: FLdPr Me
  loc_9FA7DE: VCallAd Control_ID_optDevengado
  loc_9FA7E1: CVarAd
  loc_9FA7E5: ParmAry1St
  loc_9FA7EB: FLdPr Me
  loc_9FA7EE: VCallAd Control_ID_optDebito
  loc_9FA7F1: CVarAd
  loc_9FA7F5: ParmAry1St
  loc_9FA7FB: FLdPr Me
  loc_9FA7FE: VCallAd Control_ID_optEmision
  loc_9FA801: CVarAd
  loc_9FA805: ParmAry1St
  loc_9FA80B: FLdPr Me
  loc_9FA80E: VCallAd Control_ID_optRemision
  loc_9FA811: CVarAd
  loc_9FA815: ParmAry1St
  loc_9FA81B: FLdPr Me
  loc_9FA81E: VCallAd Control_ID_optArchivo
  loc_9FA821: CVarAd
  loc_9FA825: ParmAry1St
  loc_9FA82B: FLdPr Me
  loc_9FA82E: VCallAd Control_ID_optAnulacion
  loc_9FA831: CVarAd
  loc_9FA835: ParmAry1St
  loc_9FA83B: FLdPr Me
  loc_9FA83E: VCallAd Control_ID_cboExpeImpu
  loc_9FA841: CVarAd
  loc_9FA845: ParmAry1St
  loc_9FA84B: FLdPr Me
  loc_9FA84E: VCallAd Control_ID_NumeOrpaDesdeMsk
  loc_9FA851: CVarAd
  loc_9FA855: ParmAry1St
  loc_9FA85B: FLdPr Me
  loc_9FA85E: VCallAd Control_ID_NumeOrpaHastaMsk
  loc_9FA861: CVarAd
  loc_9FA865: ParmAry1St
  loc_9FA86B: FLdRfVar var_88
  loc_9FA86E: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9FA873: FLdRfVar var_88
  loc_9FA876: Erase
  loc_9FA877: ExitProcHresult
End Sub

Private Function Proc_209_33_A7A0C8() 'A7A0C8
  'Data Table: 4CE380
  loc_A79CEC: LitVarStr var_94, "<html>"
  loc_A79CF1: PopAdLdVar
  loc_A79CF2: FLdPr Me
  loc_A79CF5: MemLdRfVar from_stack_1.htmFile
  loc_A79CF8: LdPrVar
  loc_A79CFA: LateMemCall
  loc_A79D00: LitVarStr var_94, "<head>"
  loc_A79D05: PopAdLdVar
  loc_A79D06: FLdPr Me
  loc_A79D09: MemLdRfVar from_stack_1.htmFile
  loc_A79D0C: LdPrVar
  loc_A79D0E: LateMemCall
  loc_A79D14: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_A79D19: PopAdLdVar
  loc_A79D1A: FLdPr Me
  loc_A79D1D: MemLdRfVar from_stack_1.htmFile
  loc_A79D20: LdPrVar
  loc_A79D22: LateMemCall
  loc_A79D28: LitStr "<title>"
  loc_A79D2B: FLdRfVar var_A8
  loc_A79D2E: FLdPr Me
  loc_A79D31:  = Me.Caption
  loc_A79D36: ILdRf var_A8
  loc_A79D39: ConcatStr
  loc_A79D3A: FStStrNoPop var_AC
  loc_A79D3D: LitStr "</title>"
  loc_A79D40: ConcatStr
  loc_A79D41: CVarStr var_BC
  loc_A79D44: PopAdLdVar
  loc_A79D45: FLdPr Me
  loc_A79D48: MemLdRfVar from_stack_1.htmFile
  loc_A79D4B: LdPrVar
  loc_A79D4D: LateMemCall
  loc_A79D53: FFreeStr var_A8 = ""
  loc_A79D5A: FFree1Var var_BC = ""
  loc_A79D5D: LitStr vbNullString
  loc_A79D60: ILdRf Me
  loc_A79D63: CastAd
  loc_A79D66: FStAdFunc var_C0
  loc_A79D69: FLdRfVar var_C0
  loc_A79D6C: ImpAdCallFPR4 Proc_263_23_B3DAB8(, )
  loc_A79D71: FFree1Ad var_C0
  loc_A79D74: LitI4 0
  loc_A79D79: FStStrCopy var_AC
  loc_A79D7C: FLdRfVar var_AC
  loc_A79D7F: LitI4 0
  loc_A79D84: FStStrCopy var_A8
  loc_A79D87: FLdRfVar var_A8
  loc_A79D8A: LitI2_Byte 0
  loc_A79D8C: PopTmpLdAd2 var_C2
  loc_A79D8F: FLdPr Me
  loc_A79D92: MemLdRfVar from_stack_1.htmFile
  loc_A79D95: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_A79D9A: FFreeStr var_A8 = ""
  loc_A79DA1: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_A79DA6: PopAdLdVar
  loc_A79DA7: FLdPr Me
  loc_A79DAA: MemLdRfVar from_stack_1.htmFile
  loc_A79DAD: LdPrVar
  loc_A79DAF: LateMemCall
  loc_A79DB5: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_A79DBA: PopAdLdVar
  loc_A79DBB: FLdPr Me
  loc_A79DBE: MemLdRfVar from_stack_1.htmFile
  loc_A79DC1: LdPrVar
  loc_A79DC3: LateMemCall
  loc_A79DC9: LitVarStr var_A4, "    <th width=""100" & Chr(37) & """ colspan=""3"" align=""center"" valign=""bottom""><img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br><br>"
  loc_A79DCE: LitVarStr var_94, "Municipalidad de Guaymallén"
  loc_A79DD3: FStVarCopyObj var_BC
  loc_A79DD6: FLdRfVar var_BC
  loc_A79DD9: FLdRfVar var_D4
  loc_A79DDC: ImpAdCallFPR4  = Ucase()
  loc_A79DE1: FLdRfVar var_D4
  loc_A79DE4: ConcatVar var_E4
  loc_A79DE8: LitVarStr var_F4, "</th>"
  loc_A79DED: ConcatVar var_104
  loc_A79DF1: PopAdLdVar
  loc_A79DF2: FLdPr Me
  loc_A79DF5: MemLdRfVar from_stack_1.htmFile
  loc_A79DF8: LdPrVar
  loc_A79DFA: LateMemCall
  loc_A79E00: FFreeVar var_BC = "": var_D4 = "": var_E4 = ""
  loc_A79E0B: LitVarStr var_94, "  </tr>"
  loc_A79E10: PopAdLdVar
  loc_A79E11: FLdPr Me
  loc_A79E14: MemLdRfVar from_stack_1.htmFile
  loc_A79E17: LdPrVar
  loc_A79E19: LateMemCall
  loc_A79E1F: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_A79E24: PopAdLdVar
  loc_A79E25: FLdPr Me
  loc_A79E28: MemLdRfVar from_stack_1.htmFile
  loc_A79E2B: LdPrVar
  loc_A79E2D: LateMemCall
  loc_A79E33: LitVarStr var_94, "    <th colspan=""3""><hr></th>"
  loc_A79E38: PopAdLdVar
  loc_A79E39: FLdPr Me
  loc_A79E3C: MemLdRfVar from_stack_1.htmFile
  loc_A79E3F: LdPrVar
  loc_A79E41: LateMemCall
  loc_A79E47: LitVarStr var_94, "  </tr>"
  loc_A79E4C: PopAdLdVar
  loc_A79E4D: FLdPr Me
  loc_A79E50: MemLdRfVar from_stack_1.htmFile
  loc_A79E53: LdPrVar
  loc_A79E55: LateMemCall
  loc_A79E5B: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_A79E60: PopAdLdVar
  loc_A79E61: FLdPr Me
  loc_A79E64: MemLdRfVar from_stack_1.htmFile
  loc_A79E67: LdPrVar
  loc_A79E69: LateMemCall
  loc_A79E6F: LitStr "    <th width=""33" & Chr(37) & """ align=""left"" valign=""bottom"">"
  loc_A79E72: FLdRfVar var_A8
  loc_A79E75: FLdPr Me
  loc_A79E78:  = Me.Caption
  loc_A79E7D: ILdRf var_A8
  loc_A79E80: ConcatStr
  loc_A79E81: FStStrNoPop var_AC
  loc_A79E84: LitStr "</th>"
  loc_A79E87: ConcatStr
  loc_A79E88: CVarStr var_BC
  loc_A79E8B: PopAdLdVar
  loc_A79E8C: FLdPr Me
  loc_A79E8F: MemLdRfVar from_stack_1.htmFile
  loc_A79E92: LdPrVar
  loc_A79E94: LateMemCall
  loc_A79E9A: FFreeStr var_A8 = ""
  loc_A79EA1: FFree1Var var_BC = ""
  loc_A79EA4: LitVarStr var_94, "    <th width=""33" & Chr(37) & """ valign=""bottom"">&nbsp;</th>"
  loc_A79EA9: PopAdLdVar
  loc_A79EAA: FLdPr Me
  loc_A79EAD: MemLdRfVar from_stack_1.htmFile
  loc_A79EB0: LdPrVar
  loc_A79EB2: LateMemCall
  loc_A79EB8: LitStr "    <th width=""33" & Chr(37) & """ align=""right"">Periodo: <span class=""Normal"">"
  loc_A79EBB: FLdRfVar var_A8
  loc_A79EBE: FLdPr Me
  loc_A79EC1: VCallAd Control_ID_cboPeriodo
  loc_A79EC4: FStAdFunc var_C0
  loc_A79EC7: FLdPr var_C0
  loc_A79ECA:  = Me.Text
  loc_A79ECF: ILdRf var_A8
  loc_A79ED2: ConcatStr
  loc_A79ED3: FStStrNoPop var_AC
  loc_A79ED6: LitStr "</span></th>"
  loc_A79ED9: ConcatStr
  loc_A79EDA: CVarStr var_BC
  loc_A79EDD: PopAdLdVar
  loc_A79EDE: FLdPr Me
  loc_A79EE1: MemLdRfVar from_stack_1.htmFile
  loc_A79EE4: LdPrVar
  loc_A79EE6: LateMemCall
  loc_A79EEC: FFreeStr var_A8 = ""
  loc_A79EF3: FFree1Ad var_C0
  loc_A79EF6: FFree1Var var_BC = ""
  loc_A79EF9: LitVarStr var_94, "  </tr>"
  loc_A79EFE: PopAdLdVar
  loc_A79EFF: FLdPr Me
  loc_A79F02: MemLdRfVar from_stack_1.htmFile
  loc_A79F05: LdPrVar
  loc_A79F07: LateMemCall
  loc_A79F0D: FLdPr Me
  loc_A79F10: VCallAd Control_ID_mskDesde
  loc_A79F13: FStAdFunc var_C0
  loc_A79F16: FLdPr var_C0
  loc_A79F19: LateIdLdVar var_BC DispID_22 0
  loc_A79F20: CStrVarTmp
  loc_A79F21: FStStrNoPop var_A8
  loc_A79F24: LitStr vbNullString
  loc_A79F27: NeStr
  loc_A79F29: FLdPr Me
  loc_A79F2C: VCallAd Control_ID_mskHasta
  loc_A79F2F: FStAdFunc var_118
  loc_A79F32: FLdPr var_118
  loc_A79F35: LateIdLdVar var_D4 DispID_22 0
  loc_A79F3C: CStrVarTmp
  loc_A79F3D: FStStrNoPop var_AC
  loc_A79F40: LitStr vbNullString
  loc_A79F43: NeStr
  loc_A79F45: OrI4
  loc_A79F46: FFreeStr var_A8 = ""
  loc_A79F4D: FFreeAd var_C0 = ""
  loc_A79F54: FFreeVar var_BC = ""
  loc_A79F5B: BranchF loc_A7A09C
  loc_A79F5E: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_A79F63: PopAdLdVar
  loc_A79F64: FLdPr Me
  loc_A79F67: MemLdRfVar from_stack_1.htmFile
  loc_A79F6A: LdPrVar
  loc_A79F6C: LateMemCall
  loc_A79F72: LitVarStr var_94, "    <th colspan=""3"" align=""left"" valign=""bottom""><p>Fecha de archivo<br>"
  loc_A79F77: PopAdLdVar
  loc_A79F78: FLdPr Me
  loc_A79F7B: MemLdRfVar from_stack_1.htmFile
  loc_A79F7E: LdPrVar
  loc_A79F80: LateMemCall
  loc_A79F86: FLdPr Me
  loc_A79F89: VCallAd Control_ID_mskDesde
  loc_A79F8C: FStAdFunc var_C0
  loc_A79F8F: FLdPr var_C0
  loc_A79F92: LateIdLdVar var_BC DispID_22 0
  loc_A79F99: CStrVarTmp
  loc_A79F9A: FStStrNoPop var_A8
  loc_A79F9D: LitStr vbNullString
  loc_A79FA0: NeStr
  loc_A79FA2: FFree1Str var_A8
  loc_A79FA5: FFree1Ad var_C0
  loc_A79FA8: FFree1Var var_BC = ""
  loc_A79FAB: BranchF loc_A79FF3
  loc_A79FAE: LitStr "      Desde: <span class=""Normal"">"
  loc_A79FB1: FLdPr Me
  loc_A79FB4: VCallAd Control_ID_mskDesde
  loc_A79FB7: FStAdFunc var_C0
  loc_A79FBA: FLdPr var_C0
  loc_A79FBD: LateIdLdVar var_BC DispID_15 0
  loc_A79FC4: CStrVarTmp
  loc_A79FC5: FStStrNoPop var_A8
  loc_A79FC8: ConcatStr
  loc_A79FC9: FStStrNoPop var_AC
  loc_A79FCC: LitStr "</span><br>"
  loc_A79FCF: ConcatStr
  loc_A79FD0: CVarStr var_D4
  loc_A79FD3: PopAdLdVar
  loc_A79FD4: FLdPr Me
  loc_A79FD7: MemLdRfVar from_stack_1.htmFile
  loc_A79FDA: LdPrVar
  loc_A79FDC: LateMemCall
  loc_A79FE2: FFreeStr var_A8 = ""
  loc_A79FE9: FFree1Ad var_C0
  loc_A79FEC: FFreeVar var_BC = ""
  loc_A79FF3: FLdPr Me
  loc_A79FF6: VCallAd Control_ID_mskHasta
  loc_A79FF9: FStAdFunc var_C0
  loc_A79FFC: FLdPr var_C0
  loc_A79FFF: LateIdLdVar var_BC DispID_22 0
  loc_A7A006: CStrVarTmp
  loc_A7A007: FStStrNoPop var_A8
  loc_A7A00A: LitStr vbNullString
  loc_A7A00D: NeStr
  loc_A7A00F: FFree1Str var_A8
  loc_A7A012: FFree1Ad var_C0
  loc_A7A015: FFree1Var var_BC = ""
  loc_A7A018: BranchF loc_A7A060
  loc_A7A01B: LitStr "      Hasta: <span class=""Normal"">"
  loc_A7A01E: FLdPr Me
  loc_A7A021: VCallAd Control_ID_mskHasta
  loc_A7A024: FStAdFunc var_C0
  loc_A7A027: FLdPr var_C0
  loc_A7A02A: LateIdLdVar var_BC DispID_15 0
  loc_A7A031: CStrVarTmp
  loc_A7A032: FStStrNoPop var_A8
  loc_A7A035: ConcatStr
  loc_A7A036: FStStrNoPop var_AC
  loc_A7A039: LitStr "</span><br>"
  loc_A7A03C: ConcatStr
  loc_A7A03D: CVarStr var_D4
  loc_A7A040: PopAdLdVar
  loc_A7A041: FLdPr Me
  loc_A7A044: MemLdRfVar from_stack_1.htmFile
  loc_A7A047: LdPrVar
  loc_A7A049: LateMemCall
  loc_A7A04F: FFreeStr var_A8 = ""
  loc_A7A056: FFree1Ad var_C0
  loc_A7A059: FFreeVar var_BC = ""
  loc_A7A060: LitVarStr var_94, "      </p>"
  loc_A7A065: PopAdLdVar
  loc_A7A066: FLdPr Me
  loc_A7A069: MemLdRfVar from_stack_1.htmFile
  loc_A7A06C: LdPrVar
  loc_A7A06E: LateMemCall
  loc_A7A074: LitVarStr var_94, "    </th>"
  loc_A7A079: PopAdLdVar
  loc_A7A07A: FLdPr Me
  loc_A7A07D: MemLdRfVar from_stack_1.htmFile
  loc_A7A080: LdPrVar
  loc_A7A082: LateMemCall
  loc_A7A088: LitVarStr var_94, "  </tr>"
  loc_A7A08D: PopAdLdVar
  loc_A7A08E: FLdPr Me
  loc_A7A091: MemLdRfVar from_stack_1.htmFile
  loc_A7A094: LdPrVar
  loc_A7A096: LateMemCall
  loc_A7A09C: LitVarStr var_94, "</table>"
  loc_A7A0A1: PopAdLdVar
  loc_A7A0A2: FLdPr Me
  loc_A7A0A5: MemLdRfVar from_stack_1.htmFile
  loc_A7A0A8: LdPrVar
  loc_A7A0AA: LateMemCall
  loc_A7A0B0: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_A7A0B5: PopAdLdVar
  loc_A7A0B6: FLdPr Me
  loc_A7A0B9: MemLdRfVar from_stack_1.htmFile
  loc_A7A0BC: LdPrVar
  loc_A7A0BE: LateMemCall
  loc_A7A0C4: ExitProcHresult
  loc_A7A0C5: LeI2
End Function

Private Function Proc_209_34_983F10() '983F10
  'Data Table: 4CE380
  loc_983ED0: LitVarStr var_94, "</table>"
  loc_983ED5: PopAdLdVar
  loc_983ED6: FLdPr Me
  loc_983ED9: MemLdRfVar from_stack_1.htmFile
  loc_983EDC: LdPrVar
  loc_983EDE: LateMemCall
  loc_983EE4: LitVarStr var_94, "</body>"
  loc_983EE9: PopAdLdVar
  loc_983EEA: FLdPr Me
  loc_983EED: MemLdRfVar from_stack_1.htmFile
  loc_983EF0: LdPrVar
  loc_983EF2: LateMemCall
  loc_983EF8: LitVarStr var_94, "</html>"
  loc_983EFD: PopAdLdVar
  loc_983EFE: FLdPr Me
  loc_983F01: MemLdRfVar from_stack_1.htmFile
  loc_983F04: LdPrVar
  loc_983F06: LateMemCall
  loc_983F0C: ExitProcHresult
End Function
