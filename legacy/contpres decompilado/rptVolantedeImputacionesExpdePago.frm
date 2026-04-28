VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptVolantedeImputacionesExpdePago
  Caption = "Volante de Imputaciones  (Expediente de Pago)"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptVolantedeImputacionesExpdePago.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 10545
  ClientHeight = 5880
  StartUpPosition = 2 'CenterScreen
  Begin VB.CommandButton cmdSalir
    Left = 8760
    Top = 4680
    Width = 735
    Height = 615
    TabIndex = 37
    Cancel = -1  'True
    Picture = "rptVolantedeImputacionesExpdePago.frx":08CA
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 5625
    Width = 10545
    Height = 255
    TabIndex = 39
    OleObjectBlob = "rptVolantedeImputacionesExpdePago.frx":0B1C
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptVolantedeImputacionesExpdePago.frx":0B9C
    Left = 9960
    Top = 0
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 4440
    Width = 1815
    Height = 1095
    TabIndex = 35
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 36
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 4440
    Width = 3015
    Height = 1095
    TabIndex = 32
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 34
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 33
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 10335
    Height = 4335
    TabIndex = 0
    Begin VB.ComboBox cboExorImpu
      Left = 1800
      Top = 1320
      Width = 2055
      Height = 315
      TabIndex = 6
    End
    Begin VB.Frame FrameEtapas
      Caption = "Etapas"
      Left = 4680
      Top = 120
      Width = 3495
      Height = 1575
      TabIndex = 24
      Begin VB.CheckBox chkEtapa
        Caption = "Pagado"
        Index = 5
        Left = 120
        Top = 960
        Width = 1575
        Height = 495
        TabIndex = 27
        Value = 1
      End
      Begin VB.CheckBox chkEtapa
        Caption = "Mandado a pagar"
        Index = 4
        Left = 120
        Top = 600
        Width = 1575
        Height = 495
        TabIndex = 26
        Value = 1
      End
      Begin VB.CheckBox chkEtapa
        Caption = "Devengado"
        Index = 3
        Left = 120
        Top = 240
        Width = 1215
        Height = 495
        TabIndex = 25
        Value = 1
      End
    End
    Begin VB.CommandButton cmdCalDesde
      Left = 2940
      Top = 1800
      Width = 375
      Height = 375
      TabIndex = 9
      Picture = "rptVolantedeImputacionesExpdePago.frx":0C00
      Style = 1
    End
    Begin VB.CommandButton cmdCalHasta
      Left = 2940
      Top = 2280
      Width = 375
      Height = 375
      TabIndex = 12
      Picture = "rptVolantedeImputacionesExpdePago.frx":1142
      Style = 1
    End
    Begin VB.CommandButton cmdCodiPart
      Left = 3120
      Top = 2760
      Width = 375
      Height = 375
      TabIndex = 15
      Picture = "rptVolantedeImputacionesExpdePago.frx":1684
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CommandButton cmdCodiOrga
      Left = 2880
      Top = 3240
      Width = 375
      Height = 375
      TabIndex = 19
      Picture = "rptVolantedeImputacionesExpdePago.frx":177E
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.ComboBox cboCodiUsua
      Style = 2
      Left = 1800
      Top = 3720
      Width = 1455
      Height = 315
      TabIndex = 22
    End
    Begin VB.CheckBox SinteticoChk
      Caption = "Sintético"
      Left = 9000
      Top = 3360
      Width = 975
      Height = 375
      Visible = 0   'False
      TabIndex = 23
    End
    Begin VB.Frame BuscaExpeFra
      Caption = "Búsqueda de expediente"
      Left = 4680
      Top = 1800
      Width = 3495
      Height = 855
      TabIndex = 28
      Begin MSMask.MaskEdBox CodiOrcoMsk
        Left = 2160
        Top = 360
        Width = 975
        Height = 315
        TabIndex = 31
        OleObjectBlob = "rptVolantedeImputacionesExpdePago.frx":1878
      End
      Begin VB.Label Label6
        Caption = "Orden de Compra Nº:"
        Left = 600
        Top = 360
        Width = 1515
        Height = 195
        TabIndex = 29
        AutoSize = -1  'True
      End
    End
    Begin VB.ComboBox cboExpeImpu
      Left = 1800
      Top = 840
      Width = 2055
      Height = 315
      TabIndex = 4
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 8760
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 30
    End
    Begin VB.ComboBox cboPeriodo
      Style = 2
      ForeColor = &HFF0000&
      Left = 1800
      Top = 360
      Width = 975
      Height = 315
      TabIndex = 2
    End
    Begin MSMask.MaskEdBox mskDesde
      Left = 1800
      Top = 1800
      Width = 1095
      Height = 315
      TabIndex = 8
      OleObjectBlob = "rptVolantedeImputacionesExpdePago.frx":18E8
      Appearance = 0 'Flat
    End
    Begin MSMask.MaskEdBox mskHasta
      Left = 1800
      Top = 2280
      Width = 1095
      Height = 315
      TabIndex = 11
      OleObjectBlob = "rptVolantedeImputacionesExpdePago.frx":1970
      Appearance = 0 'Flat
    End
    Begin MSMask.MaskEdBox CodiPartMsk
      Left = 1800
      Top = 2760
      Width = 1215
      Height = 315
      TabIndex = 14
      OleObjectBlob = "rptVolantedeImputacionesExpdePago.frx":19F8
    End
    Begin MSMask.MaskEdBox CodiOrgaMsk
      Left = 1800
      Top = 3240
      Width = 975
      Height = 315
      TabIndex = 18
      OleObjectBlob = "rptVolantedeImputacionesExpdePago.frx":1A58
    End
    Begin VB.Label Label3
      Caption = "Expediente Original:"
      Left = 240
      Top = 1320
      Width = 1410
      Height = 195
      TabIndex = 5
    End
    Begin VB.Label Label9
      Caption = "Usuario:"
      Left = 1095
      Top = 3720
      Width = 585
      Height = 195
      TabIndex = 21
      AutoSize = -1  'True
    End
    Begin VB.Label CodiOrgaLbl
      Left = 3360
      Top = 3240
      Width = 4815
      Height = 375
      TabIndex = 20
      BorderStyle = 1 'Fixed Single
    End
    Begin VB.Label Label8
      Caption = "Organigrama:"
      Left = 705
      Top = 3240
      Width = 975
      Height = 315
      TabIndex = 17
    End
    Begin VB.Label LabelPartida
      Caption = "Partida:"
      Left = 1065
      Top = 2760
      Width = 615
      Height = 315
      TabIndex = 13
    End
    Begin VB.Label CodiPartLbl
      Left = 3600
      Top = 2760
      Width = 4575
      Height = 375
      TabIndex = 16
      BorderStyle = 1 'Fixed Single
    End
    Begin VB.Label Label5
      Caption = "Hasta:"
      Left = 1215
      Top = 2280
      Width = 465
      Height = 195
      TabIndex = 10
      AutoSize = -1  'True
    End
    Begin VB.Label Label4
      Caption = "Desde:"
      Left = 1170
      Top = 1800
      Width = 510
      Height = 195
      TabIndex = 7
      AutoSize = -1  'True
    End
    Begin VB.Label Label2
      Caption = "Expediente de Pago:"
      Left = 240
      Top = 840
      Width = 1485
      Height = 195
      TabIndex = 3
      AutoSize = -1  'True
    End
    Begin VB.Label Label1
      Caption = "Periodo:"
      Left = 1080
      Top = 360
      Width = 585
      Height = 195
      TabIndex = 1
      AutoSize = -1  'True
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 8880
    Top = 4800
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 38
    OleObjectBlob = "rptVolantedeImputacionesExpdePago.frx":1AB8
  End
End

Attribute VB_Name = "rptVolantedeImputacionesExpdePago"

Public htmFile As Variant
Public bGenerado As Boolean

Private Type UDT_1_00585FDC
  bStruc(88) As Byte ' String fields: 22
End Type

Private Type UDT_2_00586040
  bStruc(8) As Byte ' String fields: 2
End Type


Private Sub cmdCodiPart_Click() '9F4D48
  'Data Table: 4D8D94
  loc_9F4C18: LitNothing
  loc_9F4C1A: CastAd
  loc_9F4C1D: FStAdFuncNoPop
  loc_9F4C20: ImpAdLdRf MemVar_C3D724
  loc_9F4C23: NewIfNullPr bscPartida
  loc_9F4C26: Call bscPartida.global_4332396Set(from_stack_1v)
  loc_9F4C2B: FFree1Ad var_88
  loc_9F4C2E: LitVar_Missing var_A8
  loc_9F4C31: PopAdLdVar
  loc_9F4C32: LitVarI4
  loc_9F4C3A: PopAdLdVar
  loc_9F4C3B: ImpAdLdRf MemVar_C3D724
  loc_9F4C3E: NewIfNullPr bscPartida
  loc_9F4C41: bscPartida.Show from_stack_1, from_stack_2
  loc_9F4C46: FLdRfVar var_AC
  loc_9F4C49: FLdRfVar var_88
  loc_9F4C4C: ImpAdLdRf MemVar_C3D724
  loc_9F4C4F: NewIfNullPr bscPartida
  loc_9F4C52: from_stack_1v = bscPartida.global_4332396Get()
  loc_9F4C57: FLdPr var_88
  loc_9F4C5A: from_stack_1 = clsbase.RecordCount
  loc_9F4C5F: ILdRf var_AC
  loc_9F4C62: LitI4 0
  loc_9F4C67: GtI4
  loc_9F4C68: FFree1Ad var_88
  loc_9F4C6B: BranchF loc_9F4D46
  loc_9F4C6E: FLdRfVar var_C8
  loc_9F4C71: FLdRfVar var_B8
  loc_9F4C74: LitVarStr var_98, "CodiPart"
  loc_9F4C79: PopAdLdVar
  loc_9F4C7A: FLdRfVar var_B4
  loc_9F4C7D: FLdRfVar var_B0
  loc_9F4C80: FLdRfVar var_88
  loc_9F4C83: ImpAdLdRf MemVar_C3D724
  loc_9F4C86: NewIfNullPr bscPartida
  loc_9F4C89: from_stack_1v = bscPartida.global_4332396Get()
  loc_9F4C8E: FLdPr var_88
  loc_9F4C91: from_stack_1v = clsbase.RsFrmGet()
  loc_9F4C96: FLdPr var_B0
  loc_9F4C99:  = Me.Fields
  loc_9F4C9E: FLdPr var_B4
  loc_9F4CA1: from_stack_2 = Me.Item(from_stack_1)
  loc_9F4CA6: FLdPr var_B8
  loc_9F4CA9:  = Me.Value
  loc_9F4CAE: FLdRfVar var_C8
  loc_9F4CB1: CStrVarTmp
  loc_9F4CB2: CVarStr var_D8
  loc_9F4CB5: PopAdLdVar
  loc_9F4CB6: FLdPr Me
  loc_9F4CB9: VCallAd Control_ID_CodiPartMsk
  loc_9F4CBC: FStAdFunc var_DC
  loc_9F4CBF: FLdPr var_DC
  loc_9F4CC2: LateIdSt
  loc_9F4CC7: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9F4CD4: FFreeVar var_C8 = ""
  loc_9F4CDB: FLdRfVar var_C8
  loc_9F4CDE: FLdRfVar var_B8
  loc_9F4CE1: LitVarStr var_98, "DetaPart"
  loc_9F4CE6: PopAdLdVar
  loc_9F4CE7: FLdRfVar var_B4
  loc_9F4CEA: FLdRfVar var_B0
  loc_9F4CED: FLdRfVar var_88
  loc_9F4CF0: ImpAdLdRf MemVar_C3D724
  loc_9F4CF3: NewIfNullPr bscPartida
  loc_9F4CF6: from_stack_1v = bscPartida.global_4332396Get()
  loc_9F4CFB: FLdPr var_88
  loc_9F4CFE: from_stack_1v = clsbase.RsFrmGet()
  loc_9F4D03: FLdPr var_B0
  loc_9F4D06:  = Me.Fields
  loc_9F4D0B: FLdPr var_B4
  loc_9F4D0E: from_stack_2 = Me.Item(from_stack_1)
  loc_9F4D13: FLdPr var_B8
  loc_9F4D16:  = Me.Value
  loc_9F4D1B: FLdRfVar var_C8
  loc_9F4D1E: CStrVarTmp
  loc_9F4D1F: FStStrNoPop var_E0
  loc_9F4D22: FLdPr Me
  loc_9F4D25: VCallAd Control_ID_CodiPartLbl
  loc_9F4D28: FStAdFunc var_DC
  loc_9F4D2B: FLdPr var_DC
  loc_9F4D2E: Me.Caption = from_stack_1
  loc_9F4D33: FFree1Str var_E0
  loc_9F4D36: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9F4D43: FFree1Var var_C8 = ""
  loc_9F4D46: ExitProcHresult
End Sub

Private Sub cmdCalDesde_Click() '97DC20
  'Data Table: 4D8D94
  loc_97DBEC: LitVar_Missing var_A4
  loc_97DBEF: PopAdLdVar
  loc_97DBF0: LitVarI4
  loc_97DBF8: PopAdLdVar
  loc_97DBF9: ImpAdLdRf MemVar_C3D9A8
  loc_97DBFC: NewIfNullPr frmCalendario
  loc_97DBFF: frmCalendario.Show from_stack_1, from_stack_2
  loc_97DC04: ImpAdLdRf MemVar_C3D038
  loc_97DC07: CDargRef
  loc_97DC0B: FLdPr Me
  loc_97DC0E: VCallAd Control_ID_mskDesde
  loc_97DC11: FStAdFunc var_A8
  loc_97DC14: FLdPr var_A8
  loc_97DC17: LateIdSt
  loc_97DC1C: FFree1Ad var_A8
  loc_97DC1F: ExitProcHresult
End Sub

Private Sub cmdCalHasta_Click() '97DCF0
  'Data Table: 4D8D94
  loc_97DCBC: LitVar_Missing var_A4
  loc_97DCBF: PopAdLdVar
  loc_97DCC0: LitVarI4
  loc_97DCC8: PopAdLdVar
  loc_97DCC9: ImpAdLdRf MemVar_C3D9A8
  loc_97DCCC: NewIfNullPr frmCalendario
  loc_97DCCF: frmCalendario.Show from_stack_1, from_stack_2
  loc_97DCD4: ImpAdLdRf MemVar_C3D038
  loc_97DCD7: CDargRef
  loc_97DCDB: FLdPr Me
  loc_97DCDE: VCallAd Control_ID_mskHasta
  loc_97DCE1: FStAdFunc var_A8
  loc_97DCE4: FLdPr var_A8
  loc_97DCE7: LateIdSt
  loc_97DCEC: FFree1Ad var_A8
  loc_97DCEF: ExitProcHresult
End Sub

Private Sub Form_Load() 'A3509C
  'Data Table: 4D8D94
  loc_A34E98: LitVarStr var_94, "######"
  loc_A34E9D: PopAdLdVar
  loc_A34E9E: FLdPr Me
  loc_A34EA1: VCallAd Control_ID_CodiOrgaMsk
  loc_A34EA4: FStAdFunc var_A8
  loc_A34EA7: FLdPr var_A8
  loc_A34EAA: LateIdSt
  loc_A34EAF: FFree1Ad var_A8
  loc_A34EB2: LitVarStr var_94, "#.#.#.#.##.##"
  loc_A34EB7: PopAdLdVar
  loc_A34EB8: FLdPr Me
  loc_A34EBB: VCallAd Control_ID_CodiPartMsk
  loc_A34EBE: FStAdFunc var_A8
  loc_A34EC1: FLdPr var_A8
  loc_A34EC4: LateIdSt
  loc_A34EC9: FFree1Ad var_A8
  loc_A34ECC: LitI2_Byte &HFF
  loc_A34ECE: ImpAdStI2 MemVar_C3D840
  loc_A34ED1: LitStr "Municipalidad de Guaymallén"
  loc_A34ED4: LitStr "Municipalidad de Lavalle"
  loc_A34ED7: EqStr
  loc_A34ED9: BranchF loc_A34EE1
  loc_A34EDC: LitI2_Byte &HFF
  loc_A34EDE: ImpAdStI2 MemVar_C3D844
  loc_A34EE1: ILdRf Me
  loc_A34EE4: CastAd
  loc_A34EE7: FStAdFunc var_A8
  loc_A34EEA: FLdRfVar var_A8
  loc_A34EED: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_A34EF2: FFree1Ad var_A8
  loc_A34EF5: LitStr "SELECT * FROM infogov.periodo ORDER BY PeriInfo"
  loc_A34EF8: FLdRfVar var_B0
  loc_A34EFB: NewIfNullPr clsperiodo
  loc_A34EFE: Call clsperiodo.RedefineRS(from_stack_1v)
  loc_A34F03: FLdRfVar var_B4
  loc_A34F06: FLdRfVar var_B0
  loc_A34F09: NewIfNullPr clsperiodo
  loc_A34F0C: from_stack_1 = clsperiodo.RecordCount
  loc_A34F11: ILdRf var_B4
  loc_A34F14: LitI4 0
  loc_A34F19: GtI4
  loc_A34F1A: BranchF loc_A34FAD
  loc_A34F1D: FLdRfVar var_B0
  loc_A34F20: NewIfNullPr clsperiodo
  loc_A34F23: Call clsperiodo.MoveFirst()
  loc_A34F28: FLdRfVar var_B6
  loc_A34F2B: FLdRfVar var_B0
  loc_A34F2E: NewIfNullPr clsperiodo
  loc_A34F31: from_stack_1 = clsperiodo.EOF
  loc_A34F36: FLdI2 var_B6
  loc_A34F39: NotI4
  loc_A34F3A: BranchF loc_A34FAD
  loc_A34F3D: LitVar_Missing var_A4
  loc_A34F40: PopAdLdVar
  loc_A34F41: FLdRfVar var_D0
  loc_A34F44: FLdRfVar var_C0
  loc_A34F47: LitVarStr var_94, "PeriInfo"
  loc_A34F4C: PopAdLdVar
  loc_A34F4D: FLdRfVar var_BC
  loc_A34F50: FLdRfVar var_A8
  loc_A34F53: FLdRfVar var_B0
  loc_A34F56: NewIfNullPr clsperiodo
  loc_A34F59: from_stack_1v = clsperiodo.RsFrmGet()
  loc_A34F5E: FLdPr var_A8
  loc_A34F61:  = Me.Fields
  loc_A34F66: FLdPr var_BC
  loc_A34F69: from_stack_2 = Me.Item(from_stack_1)
  loc_A34F6E: FLdPr var_C0
  loc_A34F71:  = Me.Value
  loc_A34F76: FLdRfVar var_D0
  loc_A34F79: CStrVarTmp
  loc_A34F7A: FStStrNoPop var_D4
  loc_A34F7D: FLdPr Me
  loc_A34F80: VCallAd Control_ID_cboPeriodo
  loc_A34F83: FStAdFunc var_D8
  loc_A34F86: FLdPr var_D8
  loc_A34F89: Me.AddItem from_stack_1, from_stack_2
  loc_A34F8E: FFree1Str var_D4
  loc_A34F91: FFreeAd var_A8 = "": var_BC = "": var_C0 = ""
  loc_A34F9C: FFree1Var var_D0 = ""
  loc_A34F9F: FLdRfVar var_B0
  loc_A34FA2: NewIfNullPr clsperiodo
  loc_A34FA5: Call clsperiodo.MoveSiguiente()
  loc_A34FAA: Branch loc_A34F28
  loc_A34FAD: LitStr "SELECT CodiUsua FROM infogov.usuario ORDER BY CodiUsua"
  loc_A34FB0: FLdRfVar var_AC
  loc_A34FB3: NewIfNullPr clsusuario
  loc_A34FB6: Call clsusuario.RedefineRS(from_stack_1v)
  loc_A34FBB: FLdRfVar var_B4
  loc_A34FBE: FLdRfVar var_AC
  loc_A34FC1: NewIfNullPr clsusuario
  loc_A34FC4: from_stack_1 = clsusuario.RecordCount
  loc_A34FC9: ILdRf var_B4
  loc_A34FCC: LitI4 0
  loc_A34FD1: GtI4
  loc_A34FD2: BranchF loc_A35094
  loc_A34FD5: FLdRfVar var_AC
  loc_A34FD8: NewIfNullPr clsusuario
  loc_A34FDB: Call clsusuario.MoveFirst()
  loc_A34FE0: FLdPr Me
  loc_A34FE3: VCallAd Control_ID_cboCodiUsua
  loc_A34FE6: FStAdFunc var_A8
  loc_A34FE9: FLdPr var_A8
  loc_A34FEC: Me.Clear
  loc_A34FF1: FFree1Ad var_A8
  loc_A34FF4: LitVar_Missing var_94
  loc_A34FF7: PopAdLdVar
  loc_A34FF8: LitStr "TODOS"
  loc_A34FFB: FLdPr Me
  loc_A34FFE: VCallAd Control_ID_cboCodiUsua
  loc_A35001: FStAdFunc var_A8
  loc_A35004: FLdPr var_A8
  loc_A35007: Me.AddItem from_stack_1, from_stack_2
  loc_A3500C: FFree1Ad var_A8
  loc_A3500F: FLdRfVar var_B6
  loc_A35012: FLdRfVar var_AC
  loc_A35015: NewIfNullPr clsusuario
  loc_A35018: from_stack_1 = clsusuario.EOF
  loc_A3501D: FLdI2 var_B6
  loc_A35020: NotI4
  loc_A35021: BranchF loc_A35094
  loc_A35024: LitVar_Missing var_A4
  loc_A35027: PopAdLdVar
  loc_A35028: FLdRfVar var_D0
  loc_A3502B: FLdRfVar var_C0
  loc_A3502E: LitVarStr var_94, "CodiUsua"
  loc_A35033: PopAdLdVar
  loc_A35034: FLdRfVar var_BC
  loc_A35037: FLdRfVar var_A8
  loc_A3503A: FLdRfVar var_AC
  loc_A3503D: NewIfNullPr clsusuario
  loc_A35040: from_stack_1v = clsusuario.RsFrmGet()
  loc_A35045: FLdPr var_A8
  loc_A35048:  = Me.Fields
  loc_A3504D: FLdPr var_BC
  loc_A35050: from_stack_2 = Me.Item(from_stack_1)
  loc_A35055: FLdPr var_C0
  loc_A35058:  = Me.Value
  loc_A3505D: FLdRfVar var_D0
  loc_A35060: CStrVarTmp
  loc_A35061: FStStrNoPop var_D4
  loc_A35064: FLdPr Me
  loc_A35067: VCallAd Control_ID_cboCodiUsua
  loc_A3506A: FStAdFunc var_D8
  loc_A3506D: FLdPr var_D8
  loc_A35070: Me.AddItem from_stack_1, from_stack_2
  loc_A35075: FFree1Str var_D4
  loc_A35078: FFreeAd var_A8 = "": var_BC = "": var_C0 = ""
  loc_A35083: FFree1Var var_D0 = ""
  loc_A35086: FLdRfVar var_AC
  loc_A35089: NewIfNullPr clsusuario
  loc_A3508C: Call clsusuario.MoveSiguiente()
  loc_A35091: Branch loc_A3500F
  loc_A35094: Call cmdNueva_Click()
  loc_A35099: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '95E574
  'Data Table: 4D8D94
  loc_95E55C: FLdPr Me
  loc_95E55F: VCallAd Control_ID_wbbReporte
  loc_95E562: FStAdFunc var_88
  loc_95E565: FLdRfVar var_88
  loc_95E568: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_95E56D: FFree1Ad var_88
  loc_95E570: ExitProcHresult
  loc_95E571: SetLastSystemError
End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer) '976178
  'Data Table: 4D8D94
  loc_97614C: FLdRfVar var_8A
  loc_97614F: FLdPr Me
  loc_976152: VCallAd Control_ID_cmdPredeterminada
  loc_976155: FStAdFunc var_88
  loc_976158: FLdPr var_88
  loc_97615B:  = Me.Enabled
  loc_976160: FLdI2 var_8A
  loc_976163: FFree1Ad var_88
  loc_976166: BranchF loc_976171
  loc_976169: LitI2_Byte 0
  loc_97616B: IStI2 Cancel
  loc_97616E: Branch loc_976176
  loc_976171: LitI2_Byte 1
  loc_976173: IStI2 Cancel
  loc_976176: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '956A8C
  'Data Table: 4D8D94
  loc_956A74: LitI2_Byte 0
  loc_956A76: ILdRf Me
  loc_956A79: CastAd
  loc_956A7C: FStAdFunc var_88
  loc_956A7F: FLdRfVar var_88
  loc_956A82: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_956A87: FFree1Ad var_88
  loc_956A8A: ExitProcHresult
  loc_956A8B: Ary1LdCy
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '987EBC
  'Data Table: 4D8D94
  loc_987E84: FLdPr Me
  loc_987E87: VCallAd Control_ID_statusBar
  loc_987E8A: FStAdFunc var_88
  loc_987E8D: FLdPr var_88
  loc_987E90: LateIdLdVar var_98 DispID_1 0
  loc_987E97: CStrVarTmp
  loc_987E98: CVarStr var_A8
  loc_987E9B: PopAdLdVar
  loc_987E9C: FLdPr Me
  loc_987E9F: VCallAd Control_ID_statusBar
  loc_987EA2: FStAdFunc var_BC
  loc_987EA5: FLdPr var_BC
  loc_987EA8: LateIdSt
  loc_987EAD: FFreeAd var_88 = ""
  loc_987EB4: FFreeVar var_98 = ""
  loc_987EBB: ExitProcHresult
End Sub

Private Sub CodiOrcoMsk_UnknownEvent_0 '94F068
  'Data Table: 4D8D94
  loc_94F054: FLdPr Me
  loc_94F057: VCallAd Control_ID_CodiOrcoMsk
  loc_94F05A: CVarAd
  loc_94F05E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94F063: FFree1Var var_94 = ""
  loc_94F066: ExitProcHresult
End Sub

Private Sub CodiOrcoMsk_Change() 'A1E6DC
  'Data Table: 4D8D94
  loc_A1E564: FLdPr Me
  loc_A1E567: VCallAd Control_ID_CodiOrcoMsk
  loc_A1E56A: FStAdFunc var_88
  loc_A1E56D: FLdPr var_88
  loc_A1E570: LateIdLdVar var_98 DispID_22 0
  loc_A1E577: CStrVarTmp
  loc_A1E578: FStStrNoPop var_9C
  loc_A1E57B: LitStr vbNullString
  loc_A1E57E: NeStr
  loc_A1E580: FFree1Str var_9C
  loc_A1E583: FFree1Ad var_88
  loc_A1E586: FFree1Var var_98 = ""
  loc_A1E589: BranchF loc_A1E6C1
  loc_A1E58C: LitStr "SELECT imputacion.ExpeImpu"
  loc_A1E58F: LitStr " FROM imputacion"
  loc_A1E592: ConcatStr
  loc_A1E593: FStStrNoPop var_9C
  loc_A1E596: LitStr " INNER JOIN definitiva ON imputacion.PeriInfo = definitiva.PeriInfo"
  loc_A1E599: ConcatStr
  loc_A1E59A: FStStrNoPop var_A4
  loc_A1E59D: LitStr " AND imputacion.CodiPart = definitiva.CodiPart"
  loc_A1E5A0: ConcatStr
  loc_A1E5A1: FStStrNoPop var_A8
  loc_A1E5A4: LitStr " AND imputacion.CodiOrga = definitiva.CodiOrga"
  loc_A1E5A7: ConcatStr
  loc_A1E5A8: FStStrNoPop var_AC
  loc_A1E5AB: LitStr " AND imputacion.NumeImpu = definitiva.NumeImpu"
  loc_A1E5AE: ConcatStr
  loc_A1E5AF: FStStrNoPop var_B0
  loc_A1E5B2: LitStr " WHERE imputacion.PeriInfo = "
  loc_A1E5B5: ConcatStr
  loc_A1E5B6: FStStrNoPop var_B8
  loc_A1E5B9: FLdRfVar var_B4
  loc_A1E5BC: FLdPr Me
  loc_A1E5BF: VCallAd Control_ID_cboPeriodo
  loc_A1E5C2: FStAdFunc var_88
  loc_A1E5C5: FLdPr var_88
  loc_A1E5C8:  = Me.Text
  loc_A1E5CD: ILdRf var_B4
  loc_A1E5D0: ConcatStr
  loc_A1E5D1: FStStrNoPop var_BC
  loc_A1E5D4: LitStr " AND definitiva.CodiOrco = "
  loc_A1E5D7: ConcatStr
  loc_A1E5D8: FStStrNoPop var_C4
  loc_A1E5DB: FLdPr Me
  loc_A1E5DE: VCallAd Control_ID_CodiOrcoMsk
  loc_A1E5E1: FStAdFunc var_C0
  loc_A1E5E4: FLdPr var_C0
  loc_A1E5E7: LateIdLdVar var_98 DispID_22 0
  loc_A1E5EE: CStrVarTmp
  loc_A1E5EF: FStStrNoPop var_C8
  loc_A1E5F2: ConcatStr
  loc_A1E5F3: FStStrNoPop var_CC
  loc_A1E5F6: FLdRfVar var_A0
  loc_A1E5F9: NewIfNullPr clsimputacion
  loc_A1E5FC: Call clsimputacion.RedefineRS(from_stack_1v)
  loc_A1E601: FFreeStr var_9C = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B8 = "": var_B4 = "": var_BC = "": var_C4 = "": var_C8 = ""
  loc_A1E61A: FFreeAd var_88 = ""
  loc_A1E621: FFree1Var var_98 = ""
  loc_A1E624: FLdRfVar var_D0
  loc_A1E627: FLdRfVar var_A0
  loc_A1E62A: NewIfNullPr clsimputacion
  loc_A1E62D: from_stack_1 = clsimputacion.RecordCount
  loc_A1E632: ILdRf var_D0
  loc_A1E635: LitI4 0
  loc_A1E63A: GtI4
  loc_A1E63B: BranchF loc_A1E69F
  loc_A1E63E: FLdRfVar var_98
  loc_A1E641: FLdRfVar var_E4
  loc_A1E644: LitVarStr var_E0, "ExpeImpu"
  loc_A1E649: PopAdLdVar
  loc_A1E64A: FLdRfVar var_C0
  loc_A1E64D: FLdRfVar var_88
  loc_A1E650: FLdRfVar var_A0
  loc_A1E653: NewIfNullPr clsimputacion
  loc_A1E656: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A1E65B: FLdPr var_88
  loc_A1E65E:  = Me.Fields
  loc_A1E663: FLdPr var_C0
  loc_A1E666: from_stack_2 = Me.Item(from_stack_1)
  loc_A1E66B: FLdPr var_E4
  loc_A1E66E:  = Me.Value
  loc_A1E673: FLdRfVar var_98
  loc_A1E676: CStrVarTmp
  loc_A1E677: FStStrNoPop var_9C
  loc_A1E67A: FLdPr Me
  loc_A1E67D: VCallAd Control_ID_cboExpeImpu
  loc_A1E680: FStAdFunc var_E8
  loc_A1E683: FLdPr var_E8
  loc_A1E686: Me.Text = from_stack_1
  loc_A1E68B: FFree1Str var_9C
  loc_A1E68E: FFreeAd var_88 = "": var_C0 = "": var_E4 = ""
  loc_A1E699: FFree1Var var_98 = ""
  loc_A1E69C: Branch loc_A1E6B6
  loc_A1E69F: LitStr vbNullString
  loc_A1E6A2: FLdPr Me
  loc_A1E6A5: VCallAd Control_ID_cboExpeImpu
  loc_A1E6A8: FStAdFunc var_88
  loc_A1E6AB: FLdPr var_88
  loc_A1E6AE: Me.Text = from_stack_1
  loc_A1E6B3: FFree1Ad var_88
  loc_A1E6B6: LitNothing
  loc_A1E6B8: CastAd
  loc_A1E6BB: FStAdFunc var_A0
  loc_A1E6BE: Branch loc_A1E6D8
  loc_A1E6C1: LitStr vbNullString
  loc_A1E6C4: FLdPr Me
  loc_A1E6C7: VCallAd Control_ID_cboExpeImpu
  loc_A1E6CA: FStAdFunc var_88
  loc_A1E6CD: FLdPr var_88
  loc_A1E6D0: Me.Text = from_stack_1
  loc_A1E6D5: FFree1Ad var_88
  loc_A1E6D8: ExitProcHresult
End Sub

Private Sub CodiPartMsk_UnknownEvent_0 '94F0B0
  'Data Table: 4D8D94
  loc_94F09C: FLdPr Me
  loc_94F09F: VCallAd Control_ID_CodiPartMsk
  loc_94F0A2: CVarAd
  loc_94F0A6: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94F0AB: FFree1Var var_94 = ""
  loc_94F0AE: ExitProcHresult
End Sub

Private Sub CodiPartMsk_UnknownEvent_8 'A0A650
  'Data Table: 4D8D94
  loc_A0A504: LitStr "SELECT DetaPart FROM partida WHERE PeriInfo = "
  loc_A0A507: FLdRfVar var_90
  loc_A0A50A: FLdPr Me
  loc_A0A50D: VCallAd Control_ID_cboPeriodo
  loc_A0A510: FStAdFunc var_8C
  loc_A0A513: FLdPr var_8C
  loc_A0A516:  = Me.Text
  loc_A0A51B: ILdRf var_90
  loc_A0A51E: ConcatStr
  loc_A0A51F: FStStrNoPop var_94
  loc_A0A522: LitStr " AND CodiPart LIKE '"
  loc_A0A525: ConcatStr
  loc_A0A526: FStStrNoPop var_AC
  loc_A0A529: FLdPr Me
  loc_A0A52C: VCallAd Control_ID_CodiPartMsk
  loc_A0A52F: FStAdFunc var_98
  loc_A0A532: FLdPr var_98
  loc_A0A535: LateIdLdVar var_A8 DispID_22 0
  loc_A0A53C: CStrVarTmp
  loc_A0A53D: FStStrNoPop var_B0
  loc_A0A540: ConcatStr
  loc_A0A541: FStStrNoPop var_B4
  loc_A0A544: LitStr Chr(37) & "'"
  loc_A0A547: ConcatStr
  loc_A0A548: FStStrNoPop var_B8
  loc_A0A54B: FLdRfVar var_88
  loc_A0A54E: NewIfNullPr clspartida
  loc_A0A551: Call clspartida.RedefineRS(from_stack_1v)
  loc_A0A556: FFreeStr var_90 = "": var_94 = "": var_AC = "": var_B0 = "": var_B4 = ""
  loc_A0A565: FFreeAd var_8C = ""
  loc_A0A56C: FFree1Var var_A8 = ""
  loc_A0A56F: FLdRfVar var_BC
  loc_A0A572: FLdRfVar var_88
  loc_A0A575: NewIfNullPr clspartida
  loc_A0A578: from_stack_1 = clspartida.RecordCount
  loc_A0A57D: ILdRf var_BC
  loc_A0A580: FStR4 var_C0
  loc_A0A583: ILdRf var_C0
  loc_A0A586: LitI4 0
  loc_A0A58B: EqI4
  loc_A0A58C: BranchF loc_A0A5A9
  loc_A0A58F: LitStr "0 registros encontrados"
  loc_A0A592: FLdPr Me
  loc_A0A595: VCallAd Control_ID_CodiPartLbl
  loc_A0A598: FStAdFunc var_8C
  loc_A0A59B: FLdPr var_8C
  loc_A0A59E: Me.Caption = from_stack_1
  loc_A0A5A3: FFree1Ad var_8C
  loc_A0A5A6: Branch loc_A0A64E
  loc_A0A5A9: ILdRf var_C0
  loc_A0A5AC: LitI4 1
  loc_A0A5B1: EqI4
  loc_A0A5B2: BranchF loc_A0A616
  loc_A0A5B5: FLdRfVar var_A8
  loc_A0A5B8: FLdRfVar var_D4
  loc_A0A5BB: LitVarStr var_D0, "DetaPart"
  loc_A0A5C0: PopAdLdVar
  loc_A0A5C1: FLdRfVar var_98
  loc_A0A5C4: FLdRfVar var_8C
  loc_A0A5C7: FLdRfVar var_88
  loc_A0A5CA: NewIfNullPr clspartida
  loc_A0A5CD: from_stack_1v = clspartida.RsFrmGet()
  loc_A0A5D2: FLdPr var_8C
  loc_A0A5D5:  = Me.Fields
  loc_A0A5DA: FLdPr var_98
  loc_A0A5DD: from_stack_2 = Me.Item(from_stack_1)
  loc_A0A5E2: FLdPr var_D4
  loc_A0A5E5:  = Me.Value
  loc_A0A5EA: FLdRfVar var_A8
  loc_A0A5ED: CStrVarTmp
  loc_A0A5EE: FStStrNoPop var_90
  loc_A0A5F1: FLdPr Me
  loc_A0A5F4: VCallAd Control_ID_CodiPartLbl
  loc_A0A5F7: FStAdFunc var_D8
  loc_A0A5FA: FLdPr var_D8
  loc_A0A5FD: Me.Caption = from_stack_1
  loc_A0A602: FFree1Str var_90
  loc_A0A605: FFreeAd var_8C = "": var_98 = "": var_D4 = ""
  loc_A0A610: FFree1Var var_A8 = ""
  loc_A0A613: Branch loc_A0A64E
  loc_A0A616: FLdRfVar var_BC
  loc_A0A619: FLdRfVar var_88
  loc_A0A61C: NewIfNullPr clspartida
  loc_A0A61F: from_stack_1 = clspartida.RecordCount
  loc_A0A624: ILdRf var_BC
  loc_A0A627: CStrI4
  loc_A0A629: FStStrNoPop var_90
  loc_A0A62C: LitStr " partidas encontradas"
  loc_A0A62F: ConcatStr
  loc_A0A630: FStStrNoPop var_94
  loc_A0A633: FLdPr Me
  loc_A0A636: VCallAd Control_ID_CodiPartLbl
  loc_A0A639: FStAdFunc var_8C
  loc_A0A63C: FLdPr var_8C
  loc_A0A63F: Me.Caption = from_stack_1
  loc_A0A644: FFreeStr var_90 = ""
  loc_A0A64B: FFree1Ad var_8C
  loc_A0A64E: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '95695C
  'Data Table: 4D8D94
  loc_956944: ILdRf Me
  loc_956947: CastAd
  loc_95694A: FStAdFunc var_88
  loc_95694D: FLdRfVar var_88
  loc_956950: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_956955: FFree1Ad var_88
  loc_956958: ExitProcHresult
End Sub

Private Sub CodiOrgaMsk_UnknownEvent_0 '94F020
  'Data Table: 4D8D94
  loc_94F00C: FLdPr Me
  loc_94F00F: VCallAd Control_ID_CodiOrgaMsk
  loc_94F012: CVarAd
  loc_94F016: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94F01B: FFree1Var var_94 = ""
  loc_94F01E: ExitProcHresult
End Sub

Private Sub CodiOrgaMsk_UnknownEvent_8 'A0A2F8
  'Data Table: 4D8D94
  loc_A0A1AC: LitStr "SELECT DetaOrga FROM infogov.organigrama WHERE PeriInfo = "
  loc_A0A1AF: FLdRfVar var_90
  loc_A0A1B2: FLdPr Me
  loc_A0A1B5: VCallAd Control_ID_cboPeriodo
  loc_A0A1B8: FStAdFunc var_8C
  loc_A0A1BB: FLdPr var_8C
  loc_A0A1BE:  = Me.Text
  loc_A0A1C3: ILdRf var_90
  loc_A0A1C6: ConcatStr
  loc_A0A1C7: FStStrNoPop var_94
  loc_A0A1CA: LitStr " AND CodiOrga LIKE '"
  loc_A0A1CD: ConcatStr
  loc_A0A1CE: FStStrNoPop var_AC
  loc_A0A1D1: FLdPr Me
  loc_A0A1D4: VCallAd Control_ID_CodiOrgaMsk
  loc_A0A1D7: FStAdFunc var_98
  loc_A0A1DA: FLdPr var_98
  loc_A0A1DD: LateIdLdVar var_A8 DispID_22 0
  loc_A0A1E4: CStrVarTmp
  loc_A0A1E5: FStStrNoPop var_B0
  loc_A0A1E8: ConcatStr
  loc_A0A1E9: FStStrNoPop var_B4
  loc_A0A1EC: LitStr Chr(37) & "'"
  loc_A0A1EF: ConcatStr
  loc_A0A1F0: FStStrNoPop var_B8
  loc_A0A1F3: FLdRfVar var_88
  loc_A0A1F6: NewIfNullPr clsorganigrama
  loc_A0A1F9: Call clsorganigrama.RedefineRS(from_stack_1v)
  loc_A0A1FE: FFreeStr var_90 = "": var_94 = "": var_AC = "": var_B0 = "": var_B4 = ""
  loc_A0A20D: FFreeAd var_8C = ""
  loc_A0A214: FFree1Var var_A8 = ""
  loc_A0A217: FLdRfVar var_BC
  loc_A0A21A: FLdRfVar var_88
  loc_A0A21D: NewIfNullPr clsorganigrama
  loc_A0A220: from_stack_1 = clsorganigrama.RecordCount
  loc_A0A225: ILdRf var_BC
  loc_A0A228: FStR4 var_C0
  loc_A0A22B: ILdRf var_C0
  loc_A0A22E: LitI4 0
  loc_A0A233: EqI4
  loc_A0A234: BranchF loc_A0A251
  loc_A0A237: LitStr "0 registros encontrados"
  loc_A0A23A: FLdPr Me
  loc_A0A23D: VCallAd Control_ID_CodiOrgaLbl
  loc_A0A240: FStAdFunc var_8C
  loc_A0A243: FLdPr var_8C
  loc_A0A246: Me.Caption = from_stack_1
  loc_A0A24B: FFree1Ad var_8C
  loc_A0A24E: Branch loc_A0A2F6
  loc_A0A251: ILdRf var_C0
  loc_A0A254: LitI4 1
  loc_A0A259: EqI4
  loc_A0A25A: BranchF loc_A0A2BE
  loc_A0A25D: FLdRfVar var_A8
  loc_A0A260: FLdRfVar var_D4
  loc_A0A263: LitVarStr var_D0, "DetaOrga"
  loc_A0A268: PopAdLdVar
  loc_A0A269: FLdRfVar var_98
  loc_A0A26C: FLdRfVar var_8C
  loc_A0A26F: FLdRfVar var_88
  loc_A0A272: NewIfNullPr clsorganigrama
  loc_A0A275: from_stack_1v = clsorganigrama.RsFrmGet()
  loc_A0A27A: FLdPr var_8C
  loc_A0A27D:  = Me.Fields
  loc_A0A282: FLdPr var_98
  loc_A0A285: from_stack_2 = Me.Item(from_stack_1)
  loc_A0A28A: FLdPr var_D4
  loc_A0A28D:  = Me.Value
  loc_A0A292: FLdRfVar var_A8
  loc_A0A295: CStrVarTmp
  loc_A0A296: FStStrNoPop var_90
  loc_A0A299: FLdPr Me
  loc_A0A29C: VCallAd Control_ID_CodiOrgaLbl
  loc_A0A29F: FStAdFunc var_D8
  loc_A0A2A2: FLdPr var_D8
  loc_A0A2A5: Me.Caption = from_stack_1
  loc_A0A2AA: FFree1Str var_90
  loc_A0A2AD: FFreeAd var_8C = "": var_98 = "": var_D4 = ""
  loc_A0A2B8: FFree1Var var_A8 = ""
  loc_A0A2BB: Branch loc_A0A2F6
  loc_A0A2BE: FLdRfVar var_BC
  loc_A0A2C1: FLdRfVar var_88
  loc_A0A2C4: NewIfNullPr clsorganigrama
  loc_A0A2C7: from_stack_1 = clsorganigrama.RecordCount
  loc_A0A2CC: ILdRf var_BC
  loc_A0A2CF: CStrI4
  loc_A0A2D1: FStStrNoPop var_90
  loc_A0A2D4: LitStr " organigramas encontrados"
  loc_A0A2D7: ConcatStr
  loc_A0A2D8: FStStrNoPop var_94
  loc_A0A2DB: FLdPr Me
  loc_A0A2DE: VCallAd Control_ID_CodiOrgaLbl
  loc_A0A2E1: FStAdFunc var_8C
  loc_A0A2E4: FLdPr var_8C
  loc_A0A2E7: Me.Caption = from_stack_1
  loc_A0A2EC: FFreeStr var_90 = ""
  loc_A0A2F3: FFree1Ad var_8C
  loc_A0A2F6: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() '9FFBE0
  'Data Table: 4D8D94
  loc_9FFA88: LitI2_Byte 0
  loc_9FFA8A: FLdPr Me
  loc_9FFA8D: MemStI2 bGenerado
  loc_9FFA90: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_9FFA95: LitStr vbNullString
  loc_9FFA98: FLdPr Me
  loc_9FFA9B: VCallAd Control_ID_cboExpeImpu
  loc_9FFA9E: FStAdFunc var_88
  loc_9FFAA1: FLdPr var_88
  loc_9FFAA4: Me.Text = from_stack_1
  loc_9FFAA9: FFree1Ad var_88
  loc_9FFAAC: LitStr vbNullString
  loc_9FFAAF: FLdPr Me
  loc_9FFAB2: VCallAd Control_ID_cboExorImpu
  loc_9FFAB5: FStAdFunc var_88
  loc_9FFAB8: FLdPr var_88
  loc_9FFABB: Me.Text = from_stack_1
  loc_9FFAC0: FFree1Ad var_88
  loc_9FFAC3: ImpAdLdI2 MemVar_C3D064
  loc_9FFAC6: CStrUI1
  loc_9FFAC8: FStStrNoPop var_8C
  loc_9FFACB: FLdPr Me
  loc_9FFACE: VCallAd Control_ID_cboPeriodo
  loc_9FFAD1: FStAdFunc var_88
  loc_9FFAD4: FLdPr var_88
  loc_9FFAD7: Me.Text = from_stack_1
  loc_9FFADC: FFree1Str var_8C
  loc_9FFADF: FFree1Ad var_88
  loc_9FFAE2: LitI2_Byte 1
  loc_9FFAE4: LitI2_Byte 1
  loc_9FFAE6: ImpAdLdI2 MemVar_C3D064
  loc_9FFAE9: FLdRfVar var_9C
  loc_9FFAEC: ImpAdCallFPR4  = DateSerial(, , )
  loc_9FFAF1: FLdRfVar var_9C
  loc_9FFAF4: CStrVarTmp
  loc_9FFAF5: CVarStr var_AC
  loc_9FFAF8: PopAdLdVar
  loc_9FFAF9: FLdPr Me
  loc_9FFAFC: VCallAd Control_ID_mskDesde
  loc_9FFAFF: FStAdFunc var_88
  loc_9FFB02: FLdPr var_88
  loc_9FFB05: LateIdSt
  loc_9FFB0A: FFree1Ad var_88
  loc_9FFB0D: FFreeVar var_9C = ""
  loc_9FFB14: ImpAdLdFPR8 MemVar_C3D04C
  loc_9FFB17: CStrDate
  loc_9FFB19: CVarStr var_9C
  loc_9FFB1C: PopAdLdVar
  loc_9FFB1D: FLdPr Me
  loc_9FFB20: VCallAd Control_ID_mskHasta
  loc_9FFB23: FStAdFunc var_88
  loc_9FFB26: FLdPr var_88
  loc_9FFB29: LateIdSt
  loc_9FFB2E: FFree1Ad var_88
  loc_9FFB31: FFree1Var var_9C = ""
  loc_9FFB34: LitVarStr var_BC, vbNullString
  loc_9FFB39: PopAdLdVar
  loc_9FFB3A: FLdPr Me
  loc_9FFB3D: VCallAd Control_ID_CodiOrcoMsk
  loc_9FFB40: FStAdFunc var_88
  loc_9FFB43: FLdPr var_88
  loc_9FFB46: LateIdSt
  loc_9FFB4B: FFree1Ad var_88
  loc_9FFB4E: LitVarStr var_BC, vbNullString
  loc_9FFB53: PopAdLdVar
  loc_9FFB54: FLdPr Me
  loc_9FFB57: VCallAd Control_ID_CodiPartMsk
  loc_9FFB5A: FStAdFunc var_88
  loc_9FFB5D: FLdPr var_88
  loc_9FFB60: LateIdSt
  loc_9FFB65: FFree1Ad var_88
  loc_9FFB68: LitStr vbNullString
  loc_9FFB6B: FLdPr Me
  loc_9FFB6E: VCallAd Control_ID_CodiPartLbl
  loc_9FFB71: FStAdFunc var_88
  loc_9FFB74: FLdPr var_88
  loc_9FFB77: Me.Caption = from_stack_1
  loc_9FFB7C: FFree1Ad var_88
  loc_9FFB7F: LitVarStr var_BC, vbNullString
  loc_9FFB84: PopAdLdVar
  loc_9FFB85: FLdPr Me
  loc_9FFB88: VCallAd Control_ID_CodiOrgaMsk
  loc_9FFB8B: FStAdFunc var_88
  loc_9FFB8E: FLdPr var_88
  loc_9FFB91: LateIdSt
  loc_9FFB96: FFree1Ad var_88
  loc_9FFB99: LitStr vbNullString
  loc_9FFB9C: FLdPr Me
  loc_9FFB9F: VCallAd Control_ID_CodiOrgaLbl
  loc_9FFBA2: FStAdFunc var_88
  loc_9FFBA5: FLdPr var_88
  loc_9FFBA8: Me.Caption = from_stack_1
  loc_9FFBAD: FFree1Ad var_88
  loc_9FFBB0: LitI2_Byte 0
  loc_9FFBB2: FLdPr Me
  loc_9FFBB5: VCallAd Control_ID_cboCodiUsua
  loc_9FFBB8: FStAdFunc var_88
  loc_9FFBBB: FLdPr var_88
  loc_9FFBBE: Me.ListIndex = from_stack_1
  loc_9FFBC3: FFree1Ad var_88
  loc_9FFBC6: Call HabilitarCriterio()
  loc_9FFBCB: ILdRf Me
  loc_9FFBCE: CastAd
  loc_9FFBD1: FStAdFunc var_88
  loc_9FFBD4: FLdRfVar var_88
  loc_9FFBD7: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_9FFBDC: FFree1Ad var_88
  loc_9FFBDF: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() '978D7C
  'Data Table: 4D8D94
  loc_978D4C: LitVarStr var_94, "Cerrando..."
  loc_978D51: PopAdLdVar
  loc_978D52: FLdPr Me
  loc_978D55: VCallAd Control_ID_statusBar
  loc_978D58: FStAdFunc var_A8
  loc_978D5B: FLdPr var_A8
  loc_978D5E: LateIdSt
  loc_978D63: FFree1Ad var_A8
  loc_978D66: ILdRf Me
  loc_978D69: FStAdNoPop
  loc_978D6D: ImpAdLdRf MemVar_C44F9C
  loc_978D70: NewIfNullPr Me
  loc_978D73: Me.Global.Unload from_stack_1
  loc_978D78: FFree1Ad var_A8
  loc_978D7B: ExitProcHresult
End Sub

Private Sub cboExpeImpu_Change() '974F88
  'Data Table: 4D8D94
  loc_974F64: FLdRfVar var_8C
  loc_974F67: FLdPr Me
  loc_974F6A: VCallAd Control_ID_cboExpeImpu
  loc_974F6D: FStAdFunc var_88
  loc_974F70: FLdPr var_88
  loc_974F73:  = Me.Text
  loc_974F78: ILdRf var_8C
  loc_974F7B: Call Proc_253_43_A2348C()
  loc_974F80: FFree1Str var_8C
  loc_974F83: FFree1Ad var_88
  loc_974F86: ExitProcHresult
End Sub

Private Sub cboExpeImpu_Click() '98EF30
  'Data Table: 4D8D94
  loc_98EEE8: FLdRfVar var_8C
  loc_98EEEB: FLdPrThis
  loc_98EEEC: VCallAd Control_ID_cboExpeImpu
  loc_98EEEF: FStAdFunc var_88
  loc_98EEF2: FLdPr var_88
  loc_98EEF5:  = Me.Text
  loc_98EEFA: ILdRf var_8C
  loc_98EEFD: LitStr vbNullString
  loc_98EF00: NeStr
  loc_98EF02: FFree1Str var_8C
  loc_98EF05: FFree1Ad var_88
  loc_98EF08: BranchF loc_98EF2D
  loc_98EF0B: FLdRfVar var_8C
  loc_98EF0E: FLdPr Me
  loc_98EF11: VCallAd Control_ID_cboExpeImpu
  loc_98EF14: FStAdFunc var_88
  loc_98EF17: FLdPr var_88
  loc_98EF1A:  = Me.Text
  loc_98EF1F: ILdRf var_8C
  loc_98EF22: Call Proc_253_43_A2348C()
  loc_98EF27: FFree1Str var_8C
  loc_98EF2A: FFree1Ad var_88
  loc_98EF2D: ExitProcHresult
End Sub

Private Sub cboExpeImpu_KeyPress(KeyAscii As Integer) '975AB4
  'Data Table: 4D8D94
  loc_975A8C: FLdPr Me
  loc_975A8F: VCallAd Control_ID_cboExpeImpu
  loc_975A92: FStAdFunc var_8C
  loc_975A95: ILdI2 KeyAscii
  loc_975A98: FLdZeroAd var_8C
  loc_975A9B: FStAdFunc var_88
  loc_975A9E: FLdRfVar var_88
  loc_975AA1: ImpAdCallI2 Proc_265_8_A56F7C(, )
  loc_975AA6: IStI2 KeyAscii
  loc_975AA9: FFreeAd var_88 = ""
  loc_975AB0: ExitProcHresult
End Sub

Private Sub cboExpeImpu_LostFocus() '974C4C
  'Data Table: 4D8D94
  loc_974C28: FLdRfVar var_8C
  loc_974C2B: FLdPr Me
  loc_974C2E: VCallAd Control_ID_cboExpeImpu
  loc_974C31: FStAdFunc var_88
  loc_974C34: FLdPr var_88
  loc_974C37:  = Me.Text
  loc_974C3C: ILdRf var_8C
  loc_974C3F: Call Proc_253_43_A2348C()
  loc_974C44: FFree1Str var_8C
  loc_974C47: FFree1Ad var_88
  loc_974C4A: ExitProcHresult
End Sub

Private Sub cboExpeImpu_Scroll() '974E18
  'Data Table: 4D8D94
  loc_974DF4: FLdRfVar var_8C
  loc_974DF7: FLdPr Me
  loc_974DFA: VCallAd Control_ID_cboExpeImpu
  loc_974DFD: FStAdFunc var_88
  loc_974E00: FLdPr var_88
  loc_974E03:  = Me.Text
  loc_974E08: ILdRf var_8C
  loc_974E0B: Call Proc_253_43_A2348C()
  loc_974E10: FFree1Str var_8C
  loc_974E13: FFree1Ad var_88
  loc_974E16: ExitProcHresult
End Sub

Private Sub cboExpeImpu_Validate(Cancel As Boolean) '9BD284
  'Data Table: 4D8D94
  loc_9BD1D0: FLdRfVar var_8C
  loc_9BD1D3: FLdPr Me
  loc_9BD1D6: VCallAd Control_ID_cboExpeImpu
  loc_9BD1D9: FStAdFunc var_88
  loc_9BD1DC: FLdPr var_88
  loc_9BD1DF:  = Me.Text
  loc_9BD1E4: ILdRf var_8C
  loc_9BD1E7: LitStr vbNullString
  loc_9BD1EA: NeStr
  loc_9BD1EC: FFree1Str var_8C
  loc_9BD1EF: FFree1Ad var_88
  loc_9BD1F2: BranchF loc_9BD23A
  loc_9BD1F5: FLdRfVar var_8C
  loc_9BD1F8: FLdPr Me
  loc_9BD1FB: VCallAd Control_ID_cboExpeImpu
  loc_9BD1FE: FStAdFunc var_88
  loc_9BD201: FLdPr var_88
  loc_9BD204:  = Me.Text
  loc_9BD209: LitI2_Byte 0
  loc_9BD20B: PopTmpLdAd2 var_92
  loc_9BD20E: LitI2_Byte 0
  loc_9BD210: PopTmpLdAd2 var_90
  loc_9BD213: LitI2_Byte 0
  loc_9BD215: PopTmpLdAd2 var_8E
  loc_9BD218: ILdRf var_8C
  loc_9BD21B: LitStr "Expediente de Pago"
  loc_9BD21E: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_9BD223: FStStrNoPop var_98
  loc_9BD226: FLdPr Me
  loc_9BD229: MemStStrCopy
  loc_9BD22D: FFreeStr var_8C = ""
  loc_9BD234: FFree1Ad var_88
  loc_9BD237: Branch loc_9BD244
  loc_9BD23A: LitStr "Debe ingresar un número de expediente. Verifique..."
  loc_9BD23D: FLdPr Me
  loc_9BD240: MemStStrCopy
  loc_9BD244: FLdPr Me
  loc_9BD247: VCallAd Control_ID_cboExpeImpu
  loc_9BD24A: FStAdFunc var_A4
  loc_9BD24D: LitNothing
  loc_9BD24F: CastAd
  loc_9BD252: FStAdFunc var_A0
  loc_9BD255: FLdRfVar var_A0
  loc_9BD258: FLdZeroAd var_A4
  loc_9BD25B: FStAdFuncNoPop
  loc_9BD25E: CastAd
  loc_9BD261: FStAdFunc var_9C
  loc_9BD264: FLdRfVar var_9C
  loc_9BD267: FLdPr Me
  loc_9BD26A: MemLdRfVar from_stack_1.global_132
  loc_9BD26D: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9BD272: IStI2 Cancel
  loc_9BD275: FFreeAd var_88 = "": var_9C = "": var_A0 = ""
  loc_9BD280: ExitProcHresult
  loc_9BD281: FFreeAd var_FFFFFFE4 = ""
End Sub

Private Sub cmdCodiOrga_Click() '9FAD44
  'Data Table: 4D8D94
  loc_9FAC08: LitI2_Byte &HFF
  loc_9FAC0A: ImpAdLdRf MemVar_C3D710
  loc_9FAC0D: NewIfNullPr bscOrganigrama
  loc_9FAC10: Call bscOrganigrama.MuestroAnuladosPut(from_stack_1v)
  loc_9FAC15: LitNothing
  loc_9FAC17: CastAd
  loc_9FAC1A: FStAdFuncNoPop
  loc_9FAC1D: ImpAdLdRf MemVar_C3D710
  loc_9FAC20: NewIfNullPr bscOrganigrama
  loc_9FAC23: Call bscOrganigrama.global_4318932Set(from_stack_1v)
  loc_9FAC28: FFree1Ad var_88
  loc_9FAC2B: LitVar_Missing var_A8
  loc_9FAC2E: PopAdLdVar
  loc_9FAC2F: LitVarI4
  loc_9FAC37: PopAdLdVar
  loc_9FAC38: ImpAdLdRf MemVar_C3D710
  loc_9FAC3B: NewIfNullPr bscOrganigrama
  loc_9FAC3E: bscOrganigrama.Show from_stack_1, from_stack_2
  loc_9FAC43: FLdRfVar var_AC
  loc_9FAC46: FLdRfVar var_88
  loc_9FAC49: ImpAdLdRf MemVar_C3D710
  loc_9FAC4C: NewIfNullPr bscOrganigrama
  loc_9FAC4F: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_9FAC54: FLdPr var_88
  loc_9FAC57: from_stack_1 = clsbase.RecordCount
  loc_9FAC5C: ILdRf var_AC
  loc_9FAC5F: LitI4 0
  loc_9FAC64: GtI4
  loc_9FAC65: FFree1Ad var_88
  loc_9FAC68: BranchF loc_9FAD43
  loc_9FAC6B: FLdRfVar var_C8
  loc_9FAC6E: FLdRfVar var_B8
  loc_9FAC71: LitVarStr var_98, "CodiOrga"
  loc_9FAC76: PopAdLdVar
  loc_9FAC77: FLdRfVar var_B4
  loc_9FAC7A: FLdRfVar var_B0
  loc_9FAC7D: FLdRfVar var_88
  loc_9FAC80: ImpAdLdRf MemVar_C3D710
  loc_9FAC83: NewIfNullPr bscOrganigrama
  loc_9FAC86: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_9FAC8B: FLdPr var_88
  loc_9FAC8E: from_stack_1v = clsbase.RsFrmGet()
  loc_9FAC93: FLdPr var_B0
  loc_9FAC96:  = Me.Fields
  loc_9FAC9B: FLdPr var_B4
  loc_9FAC9E: from_stack_2 = Me.Item(from_stack_1)
  loc_9FACA3: FLdPr var_B8
  loc_9FACA6:  = Me.Value
  loc_9FACAB: FLdRfVar var_C8
  loc_9FACAE: CStrVarTmp
  loc_9FACAF: CVarStr var_D8
  loc_9FACB2: PopAdLdVar
  loc_9FACB3: FLdPr Me
  loc_9FACB6: VCallAd Control_ID_CodiOrgaMsk
  loc_9FACB9: FStAdFunc var_DC
  loc_9FACBC: FLdPr var_DC
  loc_9FACBF: LateIdSt
  loc_9FACC4: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9FACD1: FFreeVar var_C8 = ""
  loc_9FACD8: FLdRfVar var_C8
  loc_9FACDB: FLdRfVar var_B8
  loc_9FACDE: LitVarStr var_98, "DetaOrga"
  loc_9FACE3: PopAdLdVar
  loc_9FACE4: FLdRfVar var_B4
  loc_9FACE7: FLdRfVar var_B0
  loc_9FACEA: FLdRfVar var_88
  loc_9FACED: ImpAdLdRf MemVar_C3D710
  loc_9FACF0: NewIfNullPr bscOrganigrama
  loc_9FACF3: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_9FACF8: FLdPr var_88
  loc_9FACFB: from_stack_1v = clsbase.RsFrmGet()
  loc_9FAD00: FLdPr var_B0
  loc_9FAD03:  = Me.Fields
  loc_9FAD08: FLdPr var_B4
  loc_9FAD0B: from_stack_2 = Me.Item(from_stack_1)
  loc_9FAD10: FLdPr var_B8
  loc_9FAD13:  = Me.Value
  loc_9FAD18: FLdRfVar var_C8
  loc_9FAD1B: CStrVarTmp
  loc_9FAD1C: FStStrNoPop var_E0
  loc_9FAD1F: FLdPr Me
  loc_9FAD22: VCallAd Control_ID_CodiOrgaLbl
  loc_9FAD25: FStAdFunc var_DC
  loc_9FAD28: FLdPr var_DC
  loc_9FAD2B: Me.Caption = from_stack_1
  loc_9FAD30: FFree1Str var_E0
  loc_9FAD33: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9FAD40: FFree1Var var_C8 = ""
  loc_9FAD43: ExitProcHresult
End Sub

Private Sub cboExorImpu_KeyPress(KeyAscii As Integer) '975B14
  'Data Table: 4D8D94
  loc_975AEC: FLdPr Me
  loc_975AEF: VCallAd Control_ID_cboExorImpu
  loc_975AF2: FStAdFunc var_8C
  loc_975AF5: ILdI2 KeyAscii
  loc_975AF8: FLdZeroAd var_8C
  loc_975AFB: FStAdFunc var_88
  loc_975AFE: FLdRfVar var_88
  loc_975B01: ImpAdCallI2 Proc_265_8_A56F7C(, )
  loc_975B06: IStI2 KeyAscii
  loc_975B09: FFreeAd var_88 = ""
  loc_975B10: ExitProcHresult
End Sub

Private Sub cboExorImpu_Validate(Cancel As Boolean) '9B4CC4
  'Data Table: 4D8D94
  loc_9B4C20: FLdRfVar var_8C
  loc_9B4C23: FLdPr Me
  loc_9B4C26: VCallAd Control_ID_cboExorImpu
  loc_9B4C29: FStAdFunc var_88
  loc_9B4C2C: FLdPr var_88
  loc_9B4C2F:  = Me.Text
  loc_9B4C34: ILdRf var_8C
  loc_9B4C37: LitStr vbNullString
  loc_9B4C3A: NeStr
  loc_9B4C3C: FFree1Str var_8C
  loc_9B4C3F: FFree1Ad var_88
  loc_9B4C42: BranchF loc_9B4C87
  loc_9B4C45: FLdRfVar var_8C
  loc_9B4C48: FLdPr Me
  loc_9B4C4B: VCallAd Control_ID_cboExorImpu
  loc_9B4C4E: FStAdFunc var_88
  loc_9B4C51: FLdPr var_88
  loc_9B4C54:  = Me.Text
  loc_9B4C59: LitI2_Byte 0
  loc_9B4C5B: PopTmpLdAd2 var_92
  loc_9B4C5E: LitI2_Byte 0
  loc_9B4C60: PopTmpLdAd2 var_90
  loc_9B4C63: LitI2_Byte 0
  loc_9B4C65: PopTmpLdAd2 var_8E
  loc_9B4C68: ILdRf var_8C
  loc_9B4C6B: LitStr "Expediente Original"
  loc_9B4C6E: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_9B4C73: FStStrNoPop var_98
  loc_9B4C76: FLdPr Me
  loc_9B4C79: MemStStrCopy
  loc_9B4C7D: FFreeStr var_8C = ""
  loc_9B4C84: FFree1Ad var_88
  loc_9B4C87: FLdPr Me
  loc_9B4C8A: VCallAd Control_ID_cboExorImpu
  loc_9B4C8D: FStAdFunc var_A4
  loc_9B4C90: LitNothing
  loc_9B4C92: CastAd
  loc_9B4C95: FStAdFunc var_A0
  loc_9B4C98: FLdRfVar var_A0
  loc_9B4C9B: FLdZeroAd var_A4
  loc_9B4C9E: FStAdFuncNoPop
  loc_9B4CA1: CastAd
  loc_9B4CA4: FStAdFunc var_9C
  loc_9B4CA7: FLdRfVar var_9C
  loc_9B4CAA: FLdPr Me
  loc_9B4CAD: MemLdRfVar from_stack_1.global_132
  loc_9B4CB0: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9B4CB5: IStI2 Cancel
  loc_9B4CB8: FFreeAd var_88 = "": var_9C = "": var_A0 = ""
  loc_9B4CC3: ExitProcHresult
End Sub

Private Sub BuscaExpeFra_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single) '98F848
  'Data Table: 4D8D94
  loc_98F7FC: ILdI2 Button
  loc_98F7FF: CI4UI1
  loc_98F800: LitI4 1
  loc_98F805: EqI4
  loc_98F806: ILdI2 Shift
  loc_98F809: CI4UI1
  loc_98F80A: LitI4 2
  loc_98F80F: EqI4
  loc_98F810: AndI4
  loc_98F811: BranchF loc_98F844
  loc_98F814: FLdRfVar var_8A
  loc_98F817: FLdPr Me
  loc_98F81A: VCallAd Control_ID_SinteticoChk
  loc_98F81D: FStAdFunc var_88
  loc_98F820: FLdPr var_88
  loc_98F823:  = Me.Visible
  loc_98F828: FLdI2 var_8A
  loc_98F82B: NotI4
  loc_98F82C: FLdPr Me
  loc_98F82F: VCallAd Control_ID_SinteticoChk
  loc_98F832: FStAdFunc var_90
  loc_98F835: FLdPr var_90
  loc_98F838: Me.Visible = from_stack_1b
  loc_98F83D: FFreeAd var_88 = ""
  loc_98F844: ExitProcHresult
End Sub

Private Sub cboPeriodo_Change() '983874
  'Data Table: 4D8D94
  loc_983840: LitI4 0
  loc_983845: LitStr "change"
  loc_983848: FLdRfVar var_8C
  loc_98384B: FLdPr Me
  loc_98384E: VCallAd Control_ID_cboPeriodo
  loc_983851: FStAdFunc var_88
  loc_983854: FLdPr var_88
  loc_983857:  = Me.Text
  loc_98385C: ILdRf var_8C
  loc_98385F: ConcatStr
  loc_983860: FStStrNoPop var_90
  loc_983863: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_983868: FFreeStr var_8C = ""
  loc_98386F: FFree1Ad var_88
  loc_983872: ExitProcHresult
End Sub

Private Sub cboPeriodo_Click() 'A6502C
  'Data Table: 4D8D94
  loc_A64CF0: FLdRfVar var_8C
  loc_A64CF3: FLdPr Me
  loc_A64CF6: VCallAd Control_ID_cboPeriodo
  loc_A64CF9: FStAdFunc var_88
  loc_A64CFC: FLdPr var_88
  loc_A64CFF:  = Me.Tag
  loc_A64D04: ILdRf var_8C
  loc_A64D07: FLdRfVar var_94
  loc_A64D0A: FLdPr Me
  loc_A64D0D: VCallAd Control_ID_cboPeriodo
  loc_A64D10: FStAdFunc var_90
  loc_A64D13: FLdPr var_90
  loc_A64D16:  = Me.Text
  loc_A64D1B: ILdRf var_94
  loc_A64D1E: NeStr
  loc_A64D20: FFreeStr var_8C = ""
  loc_A64D27: FFreeAd var_88 = ""
  loc_A64D2E: BranchF loc_A65029
  loc_A64D31: FLdRfVar var_8C
  loc_A64D34: FLdPr Me
  loc_A64D37: VCallAd Control_ID_cboPeriodo
  loc_A64D3A: FStAdFunc var_88
  loc_A64D3D: FLdPr var_88
  loc_A64D40:  = Me.Text
  loc_A64D45: LitI2_Byte 1
  loc_A64D47: LitI2_Byte 1
  loc_A64D49: ILdRf var_8C
  loc_A64D4C: CI2Str
  loc_A64D4E: FLdRfVar var_A4
  loc_A64D51: ImpAdCallFPR4  = DateSerial(, , )
  loc_A64D56: FLdRfVar var_A4
  loc_A64D59: CStrVarTmp
  loc_A64D5A: CVarStr var_B4
  loc_A64D5D: PopAdLdVar
  loc_A64D5E: FLdPr Me
  loc_A64D61: VCallAd Control_ID_mskDesde
  loc_A64D64: FStAdFunc var_90
  loc_A64D67: FLdPr var_90
  loc_A64D6A: LateIdSt
  loc_A64D6F: FFree1Str var_8C
  loc_A64D72: FFreeAd var_88 = ""
  loc_A64D79: FFreeVar var_A4 = ""
  loc_A64D80: ImpAdLdFPR8 MemVar_C3D04C
  loc_A64D83: CStrDate
  loc_A64D85: CVarStr var_A4
  loc_A64D88: PopAdLdVar
  loc_A64D89: FLdPr Me
  loc_A64D8C: VCallAd Control_ID_mskHasta
  loc_A64D8F: FStAdFunc var_88
  loc_A64D92: FLdPr var_88
  loc_A64D95: LateIdSt
  loc_A64D9A: FFree1Ad var_88
  loc_A64D9D: FFree1Var var_A4 = ""
  loc_A64DA0: LitStr "SELECT DISTINCT ExpeImpu"
  loc_A64DA3: LitStr " FROM imputacion"
  loc_A64DA6: ConcatStr
  loc_A64DA7: FStStrNoPop var_8C
  loc_A64DAA: LitStr " WHERE PeriInfo = "
  loc_A64DAD: ConcatStr
  loc_A64DAE: FStStrNoPop var_C8
  loc_A64DB1: FLdRfVar var_94
  loc_A64DB4: FLdPr Me
  loc_A64DB7: VCallAd Control_ID_cboPeriodo
  loc_A64DBA: FStAdFunc var_88
  loc_A64DBD: FLdPr var_88
  loc_A64DC0:  = Me.Text
  loc_A64DC5: ILdRf var_94
  loc_A64DC8: ConcatStr
  loc_A64DC9: FStStrNoPop var_CC
  loc_A64DCC: LitStr " ORDER BY ExpeImpu;"
  loc_A64DCF: ConcatStr
  loc_A64DD0: FStStrNoPop var_D0
  loc_A64DD3: FLdPr Me
  loc_A64DD6: MemLdRfVar from_stack_1.global_112
  loc_A64DD9: NewIfNullPr clsimputacion
  loc_A64DDC: Call clsimputacion.RedefineRS(from_stack_1v)
  loc_A64DE1: FFreeStr var_8C = "": var_C8 = "": var_94 = "": var_CC = ""
  loc_A64DEE: FFree1Ad var_88
  loc_A64DF1: FLdPr Me
  loc_A64DF4: VCallAd Control_ID_cboExpeImpu
  loc_A64DF7: FStAdFunc var_88
  loc_A64DFA: FLdPr var_88
  loc_A64DFD: Me.Clear
  loc_A64E02: FFree1Ad var_88
  loc_A64E05: FLdRfVar var_D4
  loc_A64E08: FLdPr Me
  loc_A64E0B: MemLdRfVar from_stack_1.global_112
  loc_A64E0E: NewIfNullPr clsimputacion
  loc_A64E11: from_stack_1 = clsimputacion.RecordCount
  loc_A64E16: ILdRf var_D4
  loc_A64E19: LitI4 0
  loc_A64E1E: GtI4
  loc_A64E1F: BranchF loc_A64EBE
  loc_A64E22: FLdPr Me
  loc_A64E25: MemLdRfVar from_stack_1.global_112
  loc_A64E28: NewIfNullPr clsimputacion
  loc_A64E2B: Call clsimputacion.MoveFirst()
  loc_A64E30: FLdRfVar var_D6
  loc_A64E33: FLdPr Me
  loc_A64E36: MemLdRfVar from_stack_1.global_112
  loc_A64E39: NewIfNullPr clsimputacion
  loc_A64E3C: from_stack_1 = clsimputacion.EOF
  loc_A64E41: FLdI2 var_D6
  loc_A64E44: NotI4
  loc_A64E45: BranchF loc_A64EBE
  loc_A64E48: LitVar_Missing var_EC
  loc_A64E4B: PopAdLdVar
  loc_A64E4C: FLdRfVar var_A4
  loc_A64E4F: FLdRfVar var_DC
  loc_A64E52: LitVarStr var_C4, "ExpeImpu"
  loc_A64E57: PopAdLdVar
  loc_A64E58: FLdRfVar var_90
  loc_A64E5B: FLdRfVar var_88
  loc_A64E5E: FLdPr Me
  loc_A64E61: MemLdRfVar from_stack_1.global_112
  loc_A64E64: NewIfNullPr clsimputacion
  loc_A64E67: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A64E6C: FLdPr var_88
  loc_A64E6F:  = Me.Fields
  loc_A64E74: FLdPr var_90
  loc_A64E77: from_stack_2 = Me.Item(from_stack_1)
  loc_A64E7C: FLdPr var_DC
  loc_A64E7F:  = Me.Value
  loc_A64E84: FLdRfVar var_A4
  loc_A64E87: CStrVarTmp
  loc_A64E88: FStStrNoPop var_8C
  loc_A64E8B: FLdPr Me
  loc_A64E8E: VCallAd Control_ID_cboExpeImpu
  loc_A64E91: FStAdFunc var_F0
  loc_A64E94: FLdPr var_F0
  loc_A64E97: Me.AddItem from_stack_1, from_stack_2
  loc_A64E9C: FFree1Str var_8C
  loc_A64E9F: FFreeAd var_88 = "": var_90 = "": var_DC = ""
  loc_A64EAA: FFree1Var var_A4 = ""
  loc_A64EAD: FLdPr Me
  loc_A64EB0: MemLdRfVar from_stack_1.global_112
  loc_A64EB3: NewIfNullPr clsimputacion
  loc_A64EB6: Call clsimputacion.MoveSiguiente()
  loc_A64EBB: Branch loc_A64E30
  loc_A64EBE: LitStr "SELECT DISTINCT ExorImpu"
  loc_A64EC1: LitStr " FROM imputacion"
  loc_A64EC4: ConcatStr
  loc_A64EC5: FStStrNoPop var_8C
  loc_A64EC8: LitStr " WHERE PeriInfo = "
  loc_A64ECB: ConcatStr
  loc_A64ECC: FStStrNoPop var_C8
  loc_A64ECF: FLdRfVar var_94
  loc_A64ED2: FLdPr Me
  loc_A64ED5: VCallAd Control_ID_cboPeriodo
  loc_A64ED8: FStAdFunc var_88
  loc_A64EDB: FLdPr var_88
  loc_A64EDE:  = Me.Text
  loc_A64EE3: ILdRf var_94
  loc_A64EE6: ConcatStr
  loc_A64EE7: FStStrNoPop var_CC
  loc_A64EEA: LitStr " ORDER BY ExorImpu;"
  loc_A64EED: ConcatStr
  loc_A64EEE: FStStrNoPop var_D0
  loc_A64EF1: FLdPr Me
  loc_A64EF4: MemLdRfVar from_stack_1.global_112
  loc_A64EF7: NewIfNullPr clsimputacion
  loc_A64EFA: Call clsimputacion.RedefineRS(from_stack_1v)
  loc_A64EFF: FFreeStr var_8C = "": var_C8 = "": var_94 = "": var_CC = ""
  loc_A64F0C: FFree1Ad var_88
  loc_A64F0F: FLdPr Me
  loc_A64F12: VCallAd Control_ID_cboExorImpu
  loc_A64F15: FStAdFunc var_88
  loc_A64F18: FLdPr var_88
  loc_A64F1B: Me.Clear
  loc_A64F20: FFree1Ad var_88
  loc_A64F23: LitVar_Missing var_C4
  loc_A64F26: PopAdLdVar
  loc_A64F27: LitStr "Todos"
  loc_A64F2A: FLdPr Me
  loc_A64F2D: VCallAd Control_ID_cboExorImpu
  loc_A64F30: FStAdFunc var_88
  loc_A64F33: FLdPr var_88
  loc_A64F36: Me.AddItem from_stack_1, from_stack_2
  loc_A64F3B: FFree1Ad var_88
  loc_A64F3E: FLdRfVar var_D4
  loc_A64F41: FLdPr Me
  loc_A64F44: MemLdRfVar from_stack_1.global_112
  loc_A64F47: NewIfNullPr clsimputacion
  loc_A64F4A: from_stack_1 = clsimputacion.RecordCount
  loc_A64F4F: ILdRf var_D4
  loc_A64F52: LitI4 0
  loc_A64F57: GtI4
  loc_A64F58: BranchF loc_A64FF7
  loc_A64F5B: FLdPr Me
  loc_A64F5E: MemLdRfVar from_stack_1.global_112
  loc_A64F61: NewIfNullPr clsimputacion
  loc_A64F64: Call clsimputacion.MoveFirst()
  loc_A64F69: FLdRfVar var_D6
  loc_A64F6C: FLdPr Me
  loc_A64F6F: MemLdRfVar from_stack_1.global_112
  loc_A64F72: NewIfNullPr clsimputacion
  loc_A64F75: from_stack_1 = clsimputacion.EOF
  loc_A64F7A: FLdI2 var_D6
  loc_A64F7D: NotI4
  loc_A64F7E: BranchF loc_A64FF7
  loc_A64F81: LitVar_Missing var_EC
  loc_A64F84: PopAdLdVar
  loc_A64F85: FLdRfVar var_A4
  loc_A64F88: FLdRfVar var_DC
  loc_A64F8B: LitVarStr var_C4, "ExorImpu"
  loc_A64F90: PopAdLdVar
  loc_A64F91: FLdRfVar var_90
  loc_A64F94: FLdRfVar var_88
  loc_A64F97: FLdPr Me
  loc_A64F9A: MemLdRfVar from_stack_1.global_112
  loc_A64F9D: NewIfNullPr clsimputacion
  loc_A64FA0: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A64FA5: FLdPr var_88
  loc_A64FA8:  = Me.Fields
  loc_A64FAD: FLdPr var_90
  loc_A64FB0: from_stack_2 = Me.Item(from_stack_1)
  loc_A64FB5: FLdPr var_DC
  loc_A64FB8:  = Me.Value
  loc_A64FBD: FLdRfVar var_A4
  loc_A64FC0: CStrVarTmp
  loc_A64FC1: FStStrNoPop var_8C
  loc_A64FC4: FLdPr Me
  loc_A64FC7: VCallAd Control_ID_cboExorImpu
  loc_A64FCA: FStAdFunc var_F0
  loc_A64FCD: FLdPr var_F0
  loc_A64FD0: Me.AddItem from_stack_1, from_stack_2
  loc_A64FD5: FFree1Str var_8C
  loc_A64FD8: FFreeAd var_88 = "": var_90 = "": var_DC = ""
  loc_A64FE3: FFree1Var var_A4 = ""
  loc_A64FE6: FLdPr Me
  loc_A64FE9: MemLdRfVar from_stack_1.global_112
  loc_A64FEC: NewIfNullPr clsimputacion
  loc_A64FEF: Call clsimputacion.MoveSiguiente()
  loc_A64FF4: Branch loc_A64F69
  loc_A64FF7: FLdRfVar var_8C
  loc_A64FFA: FLdPr Me
  loc_A64FFD: VCallAd Control_ID_cboPeriodo
  loc_A65000: FStAdFunc var_88
  loc_A65003: FLdPr var_88
  loc_A65006:  = Me.Text
  loc_A6500B: ILdRf var_8C
  loc_A6500E: FLdPr Me
  loc_A65011: VCallAd Control_ID_cboPeriodo
  loc_A65014: FStAdFunc var_90
  loc_A65017: FLdPr var_90
  loc_A6501A: Me.Tag = from_stack_1
  loc_A6501F: FFree1Str var_8C
  loc_A65022: FFreeAd var_88 = ""
  loc_A65029: ExitProcHresult
End Sub

Private Sub cboPeriodo_Scroll() '983564
  'Data Table: 4D8D94
  loc_983530: LitI4 0
  loc_983535: LitStr "scroll"
  loc_983538: FLdRfVar var_8C
  loc_98353B: FLdPr Me
  loc_98353E: VCallAd Control_ID_cboPeriodo
  loc_983541: FStAdFunc var_88
  loc_983544: FLdPr var_88
  loc_983547:  = Me.Text
  loc_98354C: ILdRf var_8C
  loc_98354F: ConcatStr
  loc_983550: FStStrNoPop var_90
  loc_983553: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_983558: FFreeStr var_8C = ""
  loc_98355F: FFree1Ad var_88
  loc_983562: ExitProcHresult
End Sub

Private Sub mskDesde_UnknownEvent_0 '94F1D0
  'Data Table: 4D8D94
  loc_94F1BC: FLdPr Me
  loc_94F1BF: VCallAd Control_ID_mskDesde
  loc_94F1C2: CVarAd
  loc_94F1C6: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94F1CB: FFree1Var var_94 = ""
  loc_94F1CE: ExitProcHresult
  loc_94F1CF: EqI2
End Sub

Private Function mskDesde_UnknownEvent_8(arg_C) '9D83D0
  'Data Table: 4D8D94
  loc_9D82E4: FLdPr Me
  loc_9D82E7: VCallAd Control_ID_mskDesde
  loc_9D82EA: FStAdFunc var_88
  loc_9D82ED: FLdPr var_88
  loc_9D82F0: LateIdLdVar var_98 DispID_22 0
  loc_9D82F7: CStrVarTmp
  loc_9D82F8: FStStrNoPop var_9C
  loc_9D82FB: LitStr vbNullString
  loc_9D82FE: NeStr
  loc_9D8300: FLdPr Me
  loc_9D8303: VCallAd Control_ID_mskHasta
  loc_9D8306: FStAdFunc var_A0
  loc_9D8309: FLdPr var_A0
  loc_9D830C: LateIdLdVar var_B0 DispID_22 0
  loc_9D8313: CStrVarTmp
  loc_9D8314: FStStrNoPop var_B4
  loc_9D8317: LitStr vbNullString
  loc_9D831A: NeStr
  loc_9D831C: AndI4
  loc_9D831D: FFreeStr var_9C = ""
  loc_9D8324: FFreeAd var_88 = ""
  loc_9D832B: FFreeVar var_98 = ""
  loc_9D8332: BranchF loc_9D83CD
  loc_9D8335: FLdPr Me
  loc_9D8338: VCallAd Control_ID_mskDesde
  loc_9D833B: FStAdFunc var_88
  loc_9D833E: FLdPr var_88
  loc_9D8341: LateIdLdVar var_98 DispID_15 0
  loc_9D8348: PopAd
  loc_9D834A: FLdPr Me
  loc_9D834D: VCallAd Control_ID_mskDesde
  loc_9D8350: FStAdFunc var_BC
  loc_9D8353: LitI2_Byte 0
  loc_9D8355: PopTmpLdAd2 var_B6
  loc_9D8358: FLdZeroAd var_BC
  loc_9D835B: FStAdFunc var_A0
  loc_9D835E: FLdRfVar var_A0
  loc_9D8361: LitStr vbNullString
  loc_9D8364: LitI2_Byte 0
  loc_9D8366: LitI2_Byte 0
  loc_9D8368: FLdRfVar var_98
  loc_9D836B: CStrVarTmp
  loc_9D836C: FStStrNoPop var_9C
  loc_9D836F: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9D8374: FStStrNoPop var_B4
  loc_9D8377: FLdPr Me
  loc_9D837A: MemStStrCopy
  loc_9D837E: FFreeStr var_9C = ""
  loc_9D8385: FFreeAd var_88 = "": var_A0 = ""
  loc_9D838E: FFree1Var var_98 = ""
  loc_9D8391: FLdPr Me
  loc_9D8394: VCallAd Control_ID_mskDesde
  loc_9D8397: FStAdFunc var_C0
  loc_9D839A: LitNothing
  loc_9D839C: CastAd
  loc_9D839F: FStAdFunc var_BC
  loc_9D83A2: FLdRfVar var_BC
  loc_9D83A5: FLdZeroAd var_C0
  loc_9D83A8: FStAdFuncNoPop
  loc_9D83AB: CastAd
  loc_9D83AE: FStAdFunc var_A0
  loc_9D83B1: FLdRfVar var_A0
  loc_9D83B4: FLdPr Me
  loc_9D83B7: MemLdRfVar from_stack_1.global_132
  loc_9D83BA: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9D83BF: IStI2 arg_C
  loc_9D83C2: FFreeAd var_88 = "": var_A0 = "": var_BC = ""
  loc_9D83CD: ExitProcHresult
End Function

Private Sub mskHasta_UnknownEvent_0 '94F0F8
  'Data Table: 4D8D94
  loc_94F0E4: FLdPr Me
  loc_94F0E7: VCallAd Control_ID_mskHasta
  loc_94F0EA: CVarAd
  loc_94F0EE: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94F0F3: FFree1Var var_94 = ""
  loc_94F0F6: ExitProcHresult
End Sub

Private Function mskHasta_UnknownEvent_8(arg_C) '9B164C
  'Data Table: 4D8D94
  loc_9B15B0: FLdPr Me
  loc_9B15B3: VCallAd Control_ID_mskHasta
  loc_9B15B6: FStAdFunc var_88
  loc_9B15B9: FLdPr var_88
  loc_9B15BC: LateIdLdVar var_98 DispID_15 0
  loc_9B15C3: PopAd
  loc_9B15C5: FLdPr Me
  loc_9B15C8: VCallAd Control_ID_mskHasta
  loc_9B15CB: FStAdFunc var_AC
  loc_9B15CE: LitI2_Byte 0
  loc_9B15D0: PopTmpLdAd2 var_A2
  loc_9B15D3: FLdZeroAd var_AC
  loc_9B15D6: FStAdFunc var_A0
  loc_9B15D9: FLdRfVar var_A0
  loc_9B15DC: LitStr vbNullString
  loc_9B15DF: LitI2_Byte 0
  loc_9B15E1: LitI2_Byte 0
  loc_9B15E3: FLdRfVar var_98
  loc_9B15E6: CStrVarTmp
  loc_9B15E7: FStStrNoPop var_9C
  loc_9B15EA: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9B15EF: FStStrNoPop var_A8
  loc_9B15F2: FLdPr Me
  loc_9B15F5: MemStStrCopy
  loc_9B15F9: FFreeStr var_9C = ""
  loc_9B1600: FFreeAd var_88 = "": var_A0 = ""
  loc_9B1609: FFree1Var var_98 = ""
  loc_9B160C: FLdPr Me
  loc_9B160F: VCallAd Control_ID_mskHasta
  loc_9B1612: FStAdFunc var_B0
  loc_9B1615: LitNothing
  loc_9B1617: CastAd
  loc_9B161A: FStAdFunc var_AC
  loc_9B161D: FLdRfVar var_AC
  loc_9B1620: FLdZeroAd var_B0
  loc_9B1623: FStAdFuncNoPop
  loc_9B1626: CastAd
  loc_9B1629: FStAdFunc var_A0
  loc_9B162C: FLdRfVar var_A0
  loc_9B162F: FLdPr Me
  loc_9B1632: MemLdRfVar from_stack_1.global_132
  loc_9B1635: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9B163A: IStI2 arg_C
  loc_9B163D: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9B1648: ExitProcHresult
  loc_9B1649: LitStr "</body>"
End Function

Private Sub cmdPredeterminada_Click() '9810C8
  'Data Table: 4D8D94
  loc_981090: ILdRf Me
  loc_981093: CastAd
  loc_981096: FStAdFunc var_88
  loc_981099: FLdRfVar var_88
  loc_98109C: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_9810A1: FFree1Ad var_88
  loc_9810A4: LitStr "Municipalidad de Guaymallén"
  loc_9810A7: LitStr "Municipalidad de Rivadavia"
  loc_9810AA: EqStr
  loc_9810AC: BranchF loc_9810C4
  loc_9810AF: ILdRf Me
  loc_9810B2: FStAdNoPop
  loc_9810B6: ImpAdLdRf MemVar_C44F9C
  loc_9810B9: NewIfNullPr Me
  loc_9810BC: Me.Global.Unload from_stack_1
  loc_9810C1: FFree1Ad var_88
  loc_9810C4: ExitProcHresult
  loc_9810C5: LitVar_TRUE var_8C
End Sub

Public Function htmFileGet() '4DA7D4
  htmFileGet = htmFile
End Function

Public Sub htmFilePut(Value) '4DA7E3
  htmFile = Value
End Sub

Public Sub htmFileSet(Value) '4DA7F2
  htmFile = Value
End Sub

Public Function bGeneradoGet() '4DA801
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '4DA810
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() 'A24240
  'Data Table: 4D8D94
  loc_A240D8: LitI4 0
  loc_A240DD: LitI4 &HF
  loc_A240E2: FLdRfVar var_A0
  loc_A240E5: Redim
  loc_A240EF: FLdPr Me
  loc_A240F2: VCallAd Control_ID_cboPeriodo
  loc_A240F5: CVarAd
  loc_A240F9: ParmAry1St
  loc_A240FF: FLdPr Me
  loc_A24102: VCallAd Control_ID_cboExpeImpu
  loc_A24105: CVarAd
  loc_A24109: ParmAry1St
  loc_A2410F: FLdPr Me
  loc_A24112: VCallAd Control_ID_cboExorImpu
  loc_A24115: CVarAd
  loc_A24119: ParmAry1St
  loc_A2411F: FLdPr Me
  loc_A24122: VCallAd Control_ID_mskDesde
  loc_A24125: CVarAd
  loc_A24129: ParmAry1St
  loc_A2412F: FLdPr Me
  loc_A24132: VCallAd Control_ID_cmdCalDesde
  loc_A24135: CVarAd
  loc_A24139: ParmAry1St
  loc_A2413F: FLdPr Me
  loc_A24142: VCallAd Control_ID_mskHasta
  loc_A24145: CVarAd
  loc_A24149: ParmAry1St
  loc_A2414F: FLdPr Me
  loc_A24152: VCallAd Control_ID_cmdCalHasta
  loc_A24155: CVarAd
  loc_A24159: ParmAry1St
  loc_A2415F: FLdRfVar var_8C
  loc_A24162: LitI2_Byte 3
  loc_A24164: FLdPr Me
  loc_A24167: VCallAd Control_ID_chkEtapa
  loc_A2416A: FStAdFunc var_88
  loc_A2416D: FLdPr var_88
  loc_A24170: Set from_stack_2 = Me(from_stack_1)
  loc_A24175: FLdZeroAd var_8C
  loc_A24178: CVarAd
  loc_A2417C: ParmAry1St
  loc_A24182: FLdRfVar var_94
  loc_A24185: LitI2_Byte 4
  loc_A24187: FLdPr Me
  loc_A2418A: VCallAd Control_ID_chkEtapa
  loc_A2418D: FStAdFunc var_90
  loc_A24190: FLdPr var_90
  loc_A24193: Set from_stack_2 = Me(from_stack_1)
  loc_A24198: FLdZeroAd var_94
  loc_A2419B: CVarAd
  loc_A2419F: ParmAry1St
  loc_A241A5: FLdRfVar var_9C
  loc_A241A8: LitI2_Byte 5
  loc_A241AA: FLdPr Me
  loc_A241AD: VCallAd Control_ID_chkEtapa
  loc_A241B0: FStAdFunc var_98
  loc_A241B3: FLdPr var_98
  loc_A241B6: Set from_stack_2 = Me(from_stack_1)
  loc_A241BB: FLdZeroAd var_9C
  loc_A241BE: CVarAd
  loc_A241C2: ParmAry1St
  loc_A241C8: FLdPr Me
  loc_A241CB: VCallAd Control_ID_CodiOrcoMsk
  loc_A241CE: CVarAd
  loc_A241D2: ParmAry1St
  loc_A241D8: FLdPr Me
  loc_A241DB: VCallAd Control_ID_CodiPartMsk
  loc_A241DE: CVarAd
  loc_A241E2: ParmAry1St
  loc_A241E8: FLdPr Me
  loc_A241EB: VCallAd Control_ID_cmdCodiPart
  loc_A241EE: CVarAd
  loc_A241F2: ParmAry1St
  loc_A241F8: FLdPr Me
  loc_A241FB: VCallAd Control_ID_CodiOrgaMsk
  loc_A241FE: CVarAd
  loc_A24202: ParmAry1St
  loc_A24208: FLdPr Me
  loc_A2420B: VCallAd Control_ID_cmdCodiOrga
  loc_A2420E: CVarAd
  loc_A24212: ParmAry1St
  loc_A24218: FLdPr Me
  loc_A2421B: VCallAd Control_ID_cboCodiUsua
  loc_A2421E: CVarAd
  loc_A24222: ParmAry1St
  loc_A24228: FLdRfVar var_A0
  loc_A2422B: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_A24230: FLdRfVar var_A0
  loc_A24233: Erase
  loc_A24234: FFreeAd var_88 = "": var_90 = ""
  loc_A2423D: ExitProcHresult
  loc_A2423E: ModI2
End Sub

Public Sub GeneraReporte() 'BD62AC
  'Data Table: 4D8D94
  loc_BD4CE0: FLdPr Me
  loc_BD4CE3: MemLdI2 bGenerado
  loc_BD4CE6: BranchF loc_BD4CEA
  loc_BD4CE9: ExitProcHresult
  loc_BD4CEA: LitVarStr var_98, "Generando reporte..."
  loc_BD4CEF: PopAdLdVar
  loc_BD4CF0: FLdPr Me
  loc_BD4CF3: VCallAd Control_ID_statusBar
  loc_BD4CF6: FStAdFunc var_AC
  loc_BD4CF9: FLdPr var_AC
  loc_BD4CFC: LateIdSt
  loc_BD4D01: FFree1Ad var_AC
  loc_BD4D04: LitI4 &HB
  loc_BD4D09: CI2I4
  loc_BD4D0A: FLdPr Me
  loc_BD4D0D: Me.MousePointer = from_stack_1
  loc_BD4D12: LitI2_Byte 0
  loc_BD4D14: PopTmpLdAd2 var_C6
  loc_BD4D17: Call cboExpeImpu_Validate(from_stack_1v)
  loc_BD4D1C: FLdPr Me
  loc_BD4D1F: MemLdStr global_132
  loc_BD4D22: LitStr vbNullString
  loc_BD4D25: NeStr
  loc_BD4D27: BranchF loc_BD4D2D
  loc_BD4D2A: Branch loc_BD6280
  loc_BD4D2D: LitI2_Byte 0
  loc_BD4D2F: PopTmpLdAd2 var_C6
  loc_BD4D32: from_stack_2v = mskDesde_UnknownEvent_8(from_stack_1v)
  loc_BD4D37: FLdPr Me
  loc_BD4D3A: MemLdStr global_132
  loc_BD4D3D: LitStr vbNullString
  loc_BD4D40: NeStr
  loc_BD4D42: BranchF loc_BD4D48
  loc_BD4D45: Branch loc_BD6280
  loc_BD4D48: LitI2_Byte 0
  loc_BD4D4A: PopTmpLdAd2 var_C6
  loc_BD4D4D: from_stack_2v = mskHasta_UnknownEvent_8(from_stack_1v)
  loc_BD4D52: FLdPr Me
  loc_BD4D55: MemLdStr global_132
  loc_BD4D58: LitStr vbNullString
  loc_BD4D5B: NeStr
  loc_BD4D5D: BranchF loc_BD4D63
  loc_BD4D60: Branch loc_BD6280
  loc_BD4D63: FLdPr Me
  loc_BD4D66: VCallAd Control_ID_mskDesde
  loc_BD4D69: FStAdFunc var_AC
  loc_BD4D6C: FLdPr var_AC
  loc_BD4D6F: LateIdLdVar var_D8 DispID_22 0
  loc_BD4D76: CStrVarTmp
  loc_BD4D77: FStStrNoPop var_DC
  loc_BD4D7A: LitStr vbNullString
  loc_BD4D7D: NeStr
  loc_BD4D7F: FFree1Str var_DC
  loc_BD4D82: FFree1Ad var_AC
  loc_BD4D85: FFree1Var var_D8 = ""
  loc_BD4D88: BranchF loc_BD4DDA
  loc_BD4D8B: FLdPr Me
  loc_BD4D8E: VCallAd Control_ID_mskDesde
  loc_BD4D91: FStAdFunc var_AC
  loc_BD4D94: FLdPr var_AC
  loc_BD4D97: LateIdLdVar var_D8 DispID_15 0
  loc_BD4D9E: PopAd
  loc_BD4DA0: LitStr "  AND FechImpu >= "
  loc_BD4DA3: LitI4 1
  loc_BD4DA8: LitI4 1
  loc_BD4DAD: LitVarStr var_98, "'yyyy-mm-dd'"
  loc_BD4DB2: FStVarCopyObj var_FC
  loc_BD4DB5: FLdRfVar var_FC
  loc_BD4DB8: FLdRfVar var_D8
  loc_BD4DBB: CStrVarTmp
  loc_BD4DBC: CVarStr var_EC
  loc_BD4DBF: ImpAdCallI2 Format$(, )
  loc_BD4DC4: FStStrNoPop var_DC
  loc_BD4DC7: ConcatStr
  loc_BD4DC8: FStStr var_B0
  loc_BD4DCB: FFree1Str var_DC
  loc_BD4DCE: FFree1Ad var_AC
  loc_BD4DD1: FFreeVar var_D8 = "": var_EC = ""
  loc_BD4DDA: FLdPr Me
  loc_BD4DDD: VCallAd Control_ID_mskHasta
  loc_BD4DE0: FStAdFunc var_AC
  loc_BD4DE3: FLdPr var_AC
  loc_BD4DE6: LateIdLdVar var_D8 DispID_22 0
  loc_BD4DED: CStrVarTmp
  loc_BD4DEE: FStStrNoPop var_DC
  loc_BD4DF1: LitStr vbNullString
  loc_BD4DF4: NeStr
  loc_BD4DF6: FFree1Str var_DC
  loc_BD4DF9: FFree1Ad var_AC
  loc_BD4DFC: FFree1Var var_D8 = ""
  loc_BD4DFF: BranchF loc_BD4E51
  loc_BD4E02: FLdPr Me
  loc_BD4E05: VCallAd Control_ID_mskHasta
  loc_BD4E08: FStAdFunc var_AC
  loc_BD4E0B: FLdPr var_AC
  loc_BD4E0E: LateIdLdVar var_D8 DispID_15 0
  loc_BD4E15: PopAd
  loc_BD4E17: LitStr " AND FechImpu <= "
  loc_BD4E1A: LitI4 1
  loc_BD4E1F: LitI4 1
  loc_BD4E24: LitVarStr var_98, "'yyyy-mm-dd'"
  loc_BD4E29: FStVarCopyObj var_FC
  loc_BD4E2C: FLdRfVar var_FC
  loc_BD4E2F: FLdRfVar var_D8
  loc_BD4E32: CStrVarTmp
  loc_BD4E33: CVarStr var_EC
  loc_BD4E36: ImpAdCallI2 Format$(, )
  loc_BD4E3B: FStStrNoPop var_DC
  loc_BD4E3E: ConcatStr
  loc_BD4E3F: FStStr var_B4
  loc_BD4E42: FFree1Str var_DC
  loc_BD4E45: FFree1Ad var_AC
  loc_BD4E48: FFreeVar var_D8 = "": var_EC = ""
  loc_BD4E51: FLdPr Me
  loc_BD4E54: VCallAd Control_ID_CodiPartMsk
  loc_BD4E57: FStAdFunc var_AC
  loc_BD4E5A: FLdPr var_AC
  loc_BD4E5D: LateIdLdVar var_D8 DispID_22 0
  loc_BD4E64: PopAd
  loc_BD4E66: FLdPr Me
  loc_BD4E69: VCallAd Control_ID_CodiPartMsk
  loc_BD4E6C: FStAdFunc var_100
  loc_BD4E6F: FLdPr var_100
  loc_BD4E72: LateIdLdVar var_EC DispID_22 0
  loc_BD4E79: PopAd
  loc_BD4E7B: LitVarStr var_A8, vbNullString
  loc_BD4E80: FStVarCopyObj var_118
  loc_BD4E83: FLdRfVar var_118
  loc_BD4E86: LitStr " AND i.CodiPart LIKE '"
  loc_BD4E89: FLdRfVar var_EC
  loc_BD4E8C: CStrVarTmp
  loc_BD4E8D: FStStrNoPop var_104
  loc_BD4E90: ConcatStr
  loc_BD4E91: FStStrNoPop var_108
  loc_BD4E94: LitStr Chr(37) & "'"
  loc_BD4E97: ConcatStr
  loc_BD4E98: CVarStr var_FC
  loc_BD4E9B: FLdRfVar var_D8
  loc_BD4E9E: CStrVarTmp
  loc_BD4E9F: FStStrNoPop var_DC
  loc_BD4EA2: LitStr vbNullString
  loc_BD4EA5: NeStr
  loc_BD4EA7: CVarBoolI2 var_98
  loc_BD4EAB: FLdRfVar var_128
  loc_BD4EAE: ImpAdCallFPR4  = IIf(, , )
  loc_BD4EB3: FLdRfVar var_128
  loc_BD4EB6: CStrVarTmp
  loc_BD4EB7: FStStr var_B8
  loc_BD4EBA: FFreeStr var_DC = "": var_104 = ""
  loc_BD4EC3: FFreeAd var_AC = ""
  loc_BD4ECA: FFreeVar var_D8 = "": var_EC = "": var_98 = "": var_FC = "": var_118 = ""
  loc_BD4ED9: FLdPr Me
  loc_BD4EDC: VCallAd Control_ID_CodiOrgaMsk
  loc_BD4EDF: FStAdFunc var_AC
  loc_BD4EE2: FLdPr var_AC
  loc_BD4EE5: LateIdLdVar var_D8 DispID_22 0
  loc_BD4EEC: PopAd
  loc_BD4EEE: FLdPr Me
  loc_BD4EF1: VCallAd Control_ID_CodiOrgaMsk
  loc_BD4EF4: FStAdFunc var_100
  loc_BD4EF7: FLdPr var_100
  loc_BD4EFA: LateIdLdVar var_EC DispID_22 0
  loc_BD4F01: PopAd
  loc_BD4F03: LitVarStr var_A8, vbNullString
  loc_BD4F08: FStVarCopyObj var_118
  loc_BD4F0B: FLdRfVar var_118
  loc_BD4F0E: LitStr " AND i.CodiOrga LIKE '"
  loc_BD4F11: FLdRfVar var_EC
  loc_BD4F14: CStrVarTmp
  loc_BD4F15: FStStrNoPop var_104
  loc_BD4F18: ConcatStr
  loc_BD4F19: FStStrNoPop var_108
  loc_BD4F1C: LitStr Chr(37) & "'"
  loc_BD4F1F: ConcatStr
  loc_BD4F20: CVarStr var_FC
  loc_BD4F23: FLdRfVar var_D8
  loc_BD4F26: CStrVarTmp
  loc_BD4F27: FStStrNoPop var_DC
  loc_BD4F2A: LitStr vbNullString
  loc_BD4F2D: NeStr
  loc_BD4F2F: CVarBoolI2 var_98
  loc_BD4F33: FLdRfVar var_128
  loc_BD4F36: ImpAdCallFPR4  = IIf(, , )
  loc_BD4F3B: FLdRfVar var_128
  loc_BD4F3E: CStrVarTmp
  loc_BD4F3F: FStStr var_BC
  loc_BD4F42: FFreeStr var_DC = "": var_104 = ""
  loc_BD4F4B: FFreeAd var_AC = ""
  loc_BD4F52: FFreeVar var_D8 = "": var_EC = "": var_98 = "": var_FC = "": var_118 = ""
  loc_BD4F61: FLdRfVar var_C6
  loc_BD4F64: FLdPr Me
  loc_BD4F67: VCallAd Control_ID_cboCodiUsua
  loc_BD4F6A: FStAdFunc var_AC
  loc_BD4F6D: FLdPr var_AC
  loc_BD4F70:  = Me.ListIndex
  loc_BD4F75: FLdRfVar var_DC
  loc_BD4F78: FLdPr Me
  loc_BD4F7B: VCallAd Control_ID_cboCodiUsua
  loc_BD4F7E: FStAdFunc var_100
  loc_BD4F81: FLdPr var_100
  loc_BD4F84:  = Me.Text
  loc_BD4F89: LitVarStr var_A8, vbNullString
  loc_BD4F8E: FStVarCopyObj var_EC
  loc_BD4F91: FLdRfVar var_EC
  loc_BD4F94: LitStr " AND i.AltaUsua = '"
  loc_BD4F97: ILdRf var_DC
  loc_BD4F9A: ConcatStr
  loc_BD4F9B: FStStrNoPop var_104
  loc_BD4F9E: LitStr "'"
  loc_BD4FA1: ConcatStr
  loc_BD4FA2: CVarStr var_D8
  loc_BD4FA5: FLdI2 var_C6
  loc_BD4FA8: LitI2_Byte 0
  loc_BD4FAA: GtI2
  loc_BD4FAB: CVarBoolI2 var_98
  loc_BD4FAF: FLdRfVar var_FC
  loc_BD4FB2: ImpAdCallFPR4  = IIf(, , )
  loc_BD4FB7: FLdRfVar var_FC
  loc_BD4FBA: CStrVarTmp
  loc_BD4FBB: FStStr var_C0
  loc_BD4FBE: FFreeStr var_DC = ""
  loc_BD4FC5: FFreeAd var_AC = ""
  loc_BD4FCC: FFreeVar var_98 = "": var_D8 = "": var_EC = ""
  loc_BD4FD7: FLdRfVar var_DC
  loc_BD4FDA: FLdPr Me
  loc_BD4FDD: VCallAd Control_ID_cboExorImpu
  loc_BD4FE0: FStAdFunc var_AC
  loc_BD4FE3: FLdPr var_AC
  loc_BD4FE6:  = Me.Text
  loc_BD4FEB: FLdRfVar var_104
  loc_BD4FEE: FLdPr Me
  loc_BD4FF1: VCallAd Control_ID_cboExorImpu
  loc_BD4FF4: FStAdFunc var_100
  loc_BD4FF7: FLdPr var_100
  loc_BD4FFA:  = Me.Text
  loc_BD4FFF: LitStr " AND i.ExorImpu = '"
  loc_BD5002: FLdRfVar var_108
  loc_BD5005: FLdPr Me
  loc_BD5008: VCallAd Control_ID_cboExorImpu
  loc_BD500B: FStAdFunc var_12C
  loc_BD500E: FLdPr var_12C
  loc_BD5011:  = Me.Text
  loc_BD5016: ILdRf var_108
  loc_BD5019: ConcatStr
  loc_BD501A: FStStrNoPop var_130
  loc_BD501D: LitStr "'"
  loc_BD5020: ConcatStr
  loc_BD5021: CVarStr var_EC
  loc_BD5024: LitVarStr var_A8, vbNullString
  loc_BD5029: FStVarCopyObj var_D8
  loc_BD502C: FLdRfVar var_D8
  loc_BD502F: ILdRf var_DC
  loc_BD5032: LitStr "Todos"
  loc_BD5035: EqStr
  loc_BD5037: ILdRf var_104
  loc_BD503A: LitStr vbNullString
  loc_BD503D: EqStr
  loc_BD503F: OrI4
  loc_BD5040: CVarBoolI2 var_98
  loc_BD5044: FLdRfVar var_FC
  loc_BD5047: ImpAdCallFPR4  = IIf(, , )
  loc_BD504C: FLdRfVar var_FC
  loc_BD504F: CStrVarTmp
  loc_BD5050: FStStr var_C4
  loc_BD5053: FFreeStr var_DC = "": var_104 = "": var_108 = ""
  loc_BD505E: FFreeAd var_AC = "": var_100 = ""
  loc_BD5067: FFreeVar var_98 = "": var_D8 = "": var_EC = ""
  loc_BD5072: LitI4 0
  loc_BD5077: FStR4 var_88
  loc_BD507A: LitI4 0
  loc_BD507F: LitI4 5
  loc_BD5084: FLdPr Me
  loc_BD5087: MemLdRfVar from_stack_1.global_120
  loc_BD508A: Redim
  loc_BD5094: LitI2_Byte 1
  loc_BD5096: FLdPr Me
  loc_BD5099: MemLdRfVar from_stack_1.global_124
  loc_BD509C: LitI2_Byte 5
  loc_BD509E: ForI2 var_134
  loc_BD50A4: LitI4 0
  loc_BD50A9: LitI4 0
  loc_BD50AE: FLdPr Me
  loc_BD50B1: MemLdI2 global_124
  loc_BD50B4: CI4UI1
  loc_BD50B5: FLdPr Me
  loc_BD50B8: MemLdStr global_120
  loc_BD50BB: Ary1LdPr
  loc_BD50BC: MemLdRfVar from_stack_1.global_0
  loc_BD50BF: Redim
  loc_BD50C9: FLdPr Me
  loc_BD50CC: MemLdRfVar from_stack_1.global_124
  loc_BD50CF: NextI2 var_134, loc_BD50A4
  loc_BD50D4: FLdRfVar var_C6
  loc_BD50D7: FLdRfVar var_100
  loc_BD50DA: LitI2_Byte 3
  loc_BD50DC: FLdPrThis
  loc_BD50DD: VCallAd Control_ID_chkEtapa
  loc_BD50E0: FStAdFunc var_AC
  loc_BD50E3: FLdPr var_AC
  loc_BD50E6: Set from_stack_2 = Me(from_stack_1)
  loc_BD50EB: FLdPr var_100
  loc_BD50EE:  = Me.Value
  loc_BD50F3: FLdI2 var_C6
  loc_BD50F6: CI4UI1
  loc_BD50F7: LitI4 1
  loc_BD50FC: EqI4
  loc_BD50FD: FFreeAd var_AC = ""
  loc_BD5104: BranchF loc_BD522E
  loc_BD5107: LitStr "SELECT i.*, DetaPart, DetaOrga, DetaFifu, DetaProv, FantProv"
  loc_BD510A: LitStr " FROM imputacion i"
  loc_BD510D: ConcatStr
  loc_BD510E: FStStrNoPop var_DC
  loc_BD5111: LitStr " INNER JOIN partida p ON p.PeriInfo = i.PeriInfo AND p.CodiPart = i.CodiPart"
  loc_BD5114: ConcatStr
  loc_BD5115: FStStrNoPop var_104
  loc_BD5118: LitStr " INNER JOIN infogov.organigrama o ON o.PeriInfo = i.PeriInfo AND o.CodiOrga = i.CodiOrga"
  loc_BD511B: ConcatStr
  loc_BD511C: FStStrNoPop var_108
  loc_BD511F: LitStr " INNER JOIN finalidad f ON f.PeriInfo = i.PeriInfo AND f.CodiFifu = i.CodiFifu"
  loc_BD5122: ConcatStr
  loc_BD5123: FStStrNoPop var_130
  loc_BD5126: LitStr " INNER JOIN proveedor pp ON pp.CucuPers = i.CucuPers"
  loc_BD5129: ConcatStr
  loc_BD512A: FStStrNoPop var_138
  loc_BD512D: LitStr " WHERE i.PeriInfo = "
  loc_BD5130: ConcatStr
  loc_BD5131: FStStrNoPop var_140
  loc_BD5134: FLdRfVar var_13C
  loc_BD5137: FLdPr Me
  loc_BD513A: VCallAd Control_ID_cboPeriodo
  loc_BD513D: FStAdFunc var_AC
  loc_BD5140: FLdPr var_AC
  loc_BD5143:  = Me.Text
  loc_BD5148: ILdRf var_13C
  loc_BD514B: ConcatStr
  loc_BD514C: FStStrNoPop var_144
  loc_BD514F: LitStr " AND i.ExpeImpu = '"
  loc_BD5152: ConcatStr
  loc_BD5153: FStStrNoPop var_14C
  loc_BD5156: FLdRfVar var_148
  loc_BD5159: FLdPr Me
  loc_BD515C: VCallAd Control_ID_cboExpeImpu
  loc_BD515F: FStAdFunc var_100
  loc_BD5162: FLdPr var_100
  loc_BD5165:  = Me.Text
  loc_BD516A: ILdRf var_148
  loc_BD516D: ConcatStr
  loc_BD516E: FStStrNoPop var_150
  loc_BD5171: LitStr "'"
  loc_BD5174: ConcatStr
  loc_BD5175: FStStrNoPop var_154
  loc_BD5178: ILdRf var_C4
  loc_BD517B: ConcatStr
  loc_BD517C: FStStrNoPop var_158
  loc_BD517F: ILdRf var_B0
  loc_BD5182: ConcatStr
  loc_BD5183: FStStrNoPop var_15C
  loc_BD5186: ILdRf var_B4
  loc_BD5189: ConcatStr
  loc_BD518A: FStStrNoPop var_160
  loc_BD518D: ILdRf var_B8
  loc_BD5190: ConcatStr
  loc_BD5191: FStStrNoPop var_164
  loc_BD5194: ILdRf var_BC
  loc_BD5197: ConcatStr
  loc_BD5198: FStStrNoPop var_168
  loc_BD519B: ILdRf var_C0
  loc_BD519E: ConcatStr
  loc_BD519F: FStStrNoPop var_16C
  loc_BD51A2: LitStr " AND DeveImpu != 0"
  loc_BD51A5: ConcatStr
  loc_BD51A6: FStStrNoPop var_170
  loc_BD51A9: LitStr " ORDER BY CodiOrco, CodiRece, Item, Altern, i.CodiPart, i.CodiOrga;"
  loc_BD51AC: ConcatStr
  loc_BD51AD: FStStrNoPop var_174
  loc_BD51B0: LitI4 3
  loc_BD51B5: FLdPr Me
  loc_BD51B8: MemLdRfVar from_stack_1.global_88
  loc_BD51BB: Ary1LdRf
  loc_BD51BC: NewIfNullPr clsimputacion
  loc_BD51BF: Call clsimputacion.RedefineRS(from_stack_1v)
  loc_BD51C4: FFreeStr var_DC = "": var_104 = "": var_108 = "": var_130 = "": var_138 = "": var_140 = "": var_13C = "": var_144 = "": var_14C = "": var_148 = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = ""
  loc_BD51EF: FFreeAd var_AC = ""
  loc_BD51F6: FLdRfVar var_178
  loc_BD51F9: LitI4 3
  loc_BD51FE: FLdPr Me
  loc_BD5201: MemLdRfVar from_stack_1.global_88
  loc_BD5204: Ary1LdRf
  loc_BD5205: NewIfNullPr clsimputacion
  loc_BD5208: from_stack_1 = clsimputacion.RecordCount
  loc_BD520D: LitI4 0
  loc_BD5212: ILdRf var_178
  loc_BD5215: LitI4 3
  loc_BD521A: FLdPr Me
  loc_BD521D: MemLdStr global_120
  loc_BD5220: Ary1LdPr
  loc_BD5221: MemLdRfVar from_stack_1.global_0
  loc_BD5224: Redim
  loc_BD522E: FLdRfVar var_C6
  loc_BD5231: FLdRfVar var_100
  loc_BD5234: LitI2_Byte 4
  loc_BD5236: FLdPrThis
  loc_BD5237: VCallAd Control_ID_chkEtapa
  loc_BD523A: FStAdFunc var_AC
  loc_BD523D: FLdPr var_AC
  loc_BD5240: Set from_stack_2 = Me(from_stack_1)
  loc_BD5245: FLdPr var_100
  loc_BD5248:  = Me.Value
  loc_BD524D: FLdI2 var_C6
  loc_BD5250: CI4UI1
  loc_BD5251: LitI4 1
  loc_BD5256: EqI4
  loc_BD5257: FFreeAd var_AC = ""
  loc_BD525E: BranchF loc_BD5391
  loc_BD5261: LitStr "SELECT i.*, DetaPart, DetaOrga, DetaFifu, DetaProv, FantProv, FereOrpa"
  loc_BD5264: LitStr " FROM imputacion i"
  loc_BD5267: ConcatStr
  loc_BD5268: FStStrNoPop var_DC
  loc_BD526B: LitStr " LEFT JOIN ordenpago o ON o.PeriInfo = i.PeriInfo AND o.NumeOrpa = i.NumeOrpa"
  loc_BD526E: ConcatStr
  loc_BD526F: FStStrNoPop var_104
  loc_BD5272: LitStr " INNER JOIN partida p ON p.PeriInfo = i.PeriInfo AND p.CodiPart = i.CodiPart"
  loc_BD5275: ConcatStr
  loc_BD5276: FStStrNoPop var_108
  loc_BD5279: LitStr " INNER JOIN infogov.organigrama oo ON oo.PeriInfo = i.PeriInfo AND oo.CodiOrga = i.CodiOrga"
  loc_BD527C: ConcatStr
  loc_BD527D: FStStrNoPop var_130
  loc_BD5280: LitStr " INNER JOIN finalidad f ON f.PeriInfo = i.PeriInfo AND f.CodiFifu = i.CodiFifu"
  loc_BD5283: ConcatStr
  loc_BD5284: FStStrNoPop var_138
  loc_BD5287: LitStr " INNER JOIN proveedor pp ON pp.CucuPers = i.CucuPers"
  loc_BD528A: ConcatStr
  loc_BD528B: FStStrNoPop var_13C
  loc_BD528E: LitStr " WHERE i.PeriInfo = "
  loc_BD5291: ConcatStr
  loc_BD5292: FStStrNoPop var_144
  loc_BD5295: FLdRfVar var_140
  loc_BD5298: FLdPr Me
  loc_BD529B: VCallAd Control_ID_cboPeriodo
  loc_BD529E: FStAdFunc var_AC
  loc_BD52A1: FLdPr var_AC
  loc_BD52A4:  = Me.Text
  loc_BD52A9: ILdRf var_140
  loc_BD52AC: ConcatStr
  loc_BD52AD: FStStrNoPop var_148
  loc_BD52B0: LitStr " AND i.ExpeImpu = '"
  loc_BD52B3: ConcatStr
  loc_BD52B4: FStStrNoPop var_150
  loc_BD52B7: FLdRfVar var_14C
  loc_BD52BA: FLdPr Me
  loc_BD52BD: VCallAd Control_ID_cboExpeImpu
  loc_BD52C0: FStAdFunc var_100
  loc_BD52C3: FLdPr var_100
  loc_BD52C6:  = Me.Text
  loc_BD52CB: ILdRf var_14C
  loc_BD52CE: ConcatStr
  loc_BD52CF: FStStrNoPop var_154
  loc_BD52D2: LitStr "'"
  loc_BD52D5: ConcatStr
  loc_BD52D6: FStStrNoPop var_158
  loc_BD52D9: ILdRf var_C4
  loc_BD52DC: ConcatStr
  loc_BD52DD: FStStrNoPop var_15C
  loc_BD52E0: ILdRf var_B0
  loc_BD52E3: ConcatStr
  loc_BD52E4: FStStrNoPop var_160
  loc_BD52E7: ILdRf var_B4
  loc_BD52EA: ConcatStr
  loc_BD52EB: FStStrNoPop var_164
  loc_BD52EE: ILdRf var_B8
  loc_BD52F1: ConcatStr
  loc_BD52F2: FStStrNoPop var_168
  loc_BD52F5: ILdRf var_BC
  loc_BD52F8: ConcatStr
  loc_BD52F9: FStStrNoPop var_16C
  loc_BD52FC: ILdRf var_C0
  loc_BD52FF: ConcatStr
  loc_BD5300: FStStrNoPop var_170
  loc_BD5303: LitStr " AND MapaImpu != 0"
  loc_BD5306: ConcatStr
  loc_BD5307: FStStrNoPop var_174
  loc_BD530A: LitStr " ORDER BY CodiOrco, CodiRece, Item, Altern, i.CodiPart, i.CodiOrga;"
  loc_BD530D: ConcatStr
  loc_BD530E: FStStrNoPop var_17C
  loc_BD5311: LitI4 4
  loc_BD5316: FLdPr Me
  loc_BD5319: MemLdRfVar from_stack_1.global_88
  loc_BD531C: Ary1LdRf
  loc_BD531D: NewIfNullPr clsimputacion
  loc_BD5320: Call clsimputacion.RedefineRS(from_stack_1v)
  loc_BD5325: FFreeStr var_DC = "": var_104 = "": var_108 = "": var_130 = "": var_138 = "": var_13C = "": var_144 = "": var_140 = "": var_148 = "": var_150 = "": var_14C = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = ""
  loc_BD5352: FFreeAd var_AC = ""
  loc_BD5359: FLdRfVar var_178
  loc_BD535C: LitI4 4
  loc_BD5361: FLdPr Me
  loc_BD5364: MemLdRfVar from_stack_1.global_88
  loc_BD5367: Ary1LdRf
  loc_BD5368: NewIfNullPr clsimputacion
  loc_BD536B: from_stack_1 = clsimputacion.RecordCount
  loc_BD5370: LitI4 0
  loc_BD5375: ILdRf var_178
  loc_BD5378: LitI4 4
  loc_BD537D: FLdPr Me
  loc_BD5380: MemLdStr global_120
  loc_BD5383: Ary1LdPr
  loc_BD5384: MemLdRfVar from_stack_1.global_0
  loc_BD5387: Redim
  loc_BD5391: FLdRfVar var_C6
  loc_BD5394: FLdRfVar var_100
  loc_BD5397: LitI2_Byte 5
  loc_BD5399: FLdPrThis
  loc_BD539A: VCallAd Control_ID_chkEtapa
  loc_BD539D: FStAdFunc var_AC
  loc_BD53A0: FLdPr var_AC
  loc_BD53A3: Set from_stack_2 = Me(from_stack_1)
  loc_BD53A8: FLdPr var_100
  loc_BD53AB:  = Me.Value
  loc_BD53B0: FLdI2 var_C6
  loc_BD53B3: CI4UI1
  loc_BD53B4: LitI4 1
  loc_BD53B9: EqI4
  loc_BD53BA: FFreeAd var_AC = ""
  loc_BD53C1: BranchF loc_BD54F4
  loc_BD53C4: LitStr "SELECT i.*, DetaPart, DetaOrga, DetaFifu, DetaProv, FantProv, ArchOrpa"
  loc_BD53C7: LitStr " FROM imputacion i"
  loc_BD53CA: ConcatStr
  loc_BD53CB: FStStrNoPop var_DC
  loc_BD53CE: LitStr " LEFT JOIN ordenpago o ON o.PeriInfo = i.PeriInfo AND o.NumeOrpa = i.NumeOrpa"
  loc_BD53D1: ConcatStr
  loc_BD53D2: FStStrNoPop var_104
  loc_BD53D5: LitStr " INNER JOIN partida p ON p.PeriInfo = i.PeriInfo AND p.CodiPart = i.CodiPart"
  loc_BD53D8: ConcatStr
  loc_BD53D9: FStStrNoPop var_108
  loc_BD53DC: LitStr " INNER JOIN infogov.organigrama oo ON oo.PeriInfo = i.PeriInfo AND oo.CodiOrga = i.CodiOrga"
  loc_BD53DF: ConcatStr
  loc_BD53E0: FStStrNoPop var_130
  loc_BD53E3: LitStr " INNER JOIN finalidad f ON f.PeriInfo = i.PeriInfo AND f.CodiFifu = i.CodiFifu"
  loc_BD53E6: ConcatStr
  loc_BD53E7: FStStrNoPop var_138
  loc_BD53EA: LitStr " INNER JOIN proveedor pp ON pp.CucuPers = i.CucuPers"
  loc_BD53ED: ConcatStr
  loc_BD53EE: FStStrNoPop var_13C
  loc_BD53F1: LitStr " WHERE i.PeriInfo = "
  loc_BD53F4: ConcatStr
  loc_BD53F5: FStStrNoPop var_144
  loc_BD53F8: FLdRfVar var_140
  loc_BD53FB: FLdPr Me
  loc_BD53FE: VCallAd Control_ID_cboPeriodo
  loc_BD5401: FStAdFunc var_AC
  loc_BD5404: FLdPr var_AC
  loc_BD5407:  = Me.Text
  loc_BD540C: ILdRf var_140
  loc_BD540F: ConcatStr
  loc_BD5410: FStStrNoPop var_148
  loc_BD5413: LitStr " AND i.ExpeImpu = '"
  loc_BD5416: ConcatStr
  loc_BD5417: FStStrNoPop var_150
  loc_BD541A: FLdRfVar var_14C
  loc_BD541D: FLdPr Me
  loc_BD5420: VCallAd Control_ID_cboExpeImpu
  loc_BD5423: FStAdFunc var_100
  loc_BD5426: FLdPr var_100
  loc_BD5429:  = Me.Text
  loc_BD542E: ILdRf var_14C
  loc_BD5431: ConcatStr
  loc_BD5432: FStStrNoPop var_154
  loc_BD5435: LitStr "'"
  loc_BD5438: ConcatStr
  loc_BD5439: FStStrNoPop var_158
  loc_BD543C: ILdRf var_C4
  loc_BD543F: ConcatStr
  loc_BD5440: FStStrNoPop var_15C
  loc_BD5443: ILdRf var_B0
  loc_BD5446: ConcatStr
  loc_BD5447: FStStrNoPop var_160
  loc_BD544A: ILdRf var_B4
  loc_BD544D: ConcatStr
  loc_BD544E: FStStrNoPop var_164
  loc_BD5451: ILdRf var_B8
  loc_BD5454: ConcatStr
  loc_BD5455: FStStrNoPop var_168
  loc_BD5458: ILdRf var_BC
  loc_BD545B: ConcatStr
  loc_BD545C: FStStrNoPop var_16C
  loc_BD545F: ILdRf var_C0
  loc_BD5462: ConcatStr
  loc_BD5463: FStStrNoPop var_170
  loc_BD5466: LitStr " AND PagaImpu != 0"
  loc_BD5469: ConcatStr
  loc_BD546A: FStStrNoPop var_174
  loc_BD546D: LitStr " ORDER BY CodiOrco, CodiRece, Item, Altern, i.CodiPart, i.CodiOrga;"
  loc_BD5470: ConcatStr
  loc_BD5471: FStStrNoPop var_17C
  loc_BD5474: LitI4 5
  loc_BD5479: FLdPr Me
  loc_BD547C: MemLdRfVar from_stack_1.global_88
  loc_BD547F: Ary1LdRf
  loc_BD5480: NewIfNullPr clsimputacion
  loc_BD5483: Call clsimputacion.RedefineRS(from_stack_1v)
  loc_BD5488: FFreeStr var_DC = "": var_104 = "": var_108 = "": var_130 = "": var_138 = "": var_13C = "": var_144 = "": var_140 = "": var_148 = "": var_150 = "": var_14C = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = ""
  loc_BD54B5: FFreeAd var_AC = ""
  loc_BD54BC: FLdRfVar var_178
  loc_BD54BF: LitI4 5
  loc_BD54C4: FLdPr Me
  loc_BD54C7: MemLdRfVar from_stack_1.global_88
  loc_BD54CA: Ary1LdRf
  loc_BD54CB: NewIfNullPr clsimputacion
  loc_BD54CE: from_stack_1 = clsimputacion.RecordCount
  loc_BD54D3: LitI4 0
  loc_BD54D8: ILdRf var_178
  loc_BD54DB: LitI4 5
  loc_BD54E0: FLdPr Me
  loc_BD54E3: MemLdStr global_120
  loc_BD54E6: Ary1LdPr
  loc_BD54E7: MemLdRfVar from_stack_1.global_0
  loc_BD54EA: Redim
  loc_BD54F4: LitI4 1
  loc_BD54F9: FLdPr Me
  loc_BD54FC: MemLdStr global_120
  loc_BD54FF: Ary1LdPr
  loc_BD5500: MemLdStr global_0
  loc_BD5503: LitI2_Byte 1
  loc_BD5505: FnUBound
  loc_BD5507: FStR4 var_88
  loc_BD550A: LitI2_Byte 3
  loc_BD550C: FLdPr Me
  loc_BD550F: MemLdRfVar from_stack_1.global_124
  loc_BD5512: LitI2_Byte 5
  loc_BD5514: ForI2 var_180
  loc_BD551A: FLdPr Me
  loc_BD551D: MemLdI2 global_124
  loc_BD5520: CI4UI1
  loc_BD5521: FLdPr Me
  loc_BD5524: MemLdStr global_120
  loc_BD5527: Ary1LdPr
  loc_BD5528: MemLdStr global_0
  loc_BD552B: LitI2_Byte 1
  loc_BD552D: FnUBound
  loc_BD552F: ILdRf var_88
  loc_BD5532: GtI4
  loc_BD5533: BranchF loc_BD554E
  loc_BD5536: FLdPr Me
  loc_BD5539: MemLdI2 global_124
  loc_BD553C: CI4UI1
  loc_BD553D: FLdPr Me
  loc_BD5540: MemLdStr global_120
  loc_BD5543: Ary1LdPr
  loc_BD5544: MemLdStr global_0
  loc_BD5547: LitI2_Byte 1
  loc_BD5549: FnUBound
  loc_BD554B: FStR4 var_88
  loc_BD554E: FLdPr Me
  loc_BD5551: MemLdRfVar from_stack_1.global_124
  loc_BD5554: NextI2 var_180, loc_BD551A
  loc_BD5559: ILdRf var_88
  loc_BD555C: LitI4 0
  loc_BD5561: EqI4
  loc_BD5562: BranchF loc_BD559D
  loc_BD5565: LitI4 0
  loc_BD556A: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_BD556D: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BD5572: LitI4 0
  loc_BD5577: CI2I4
  loc_BD5578: FLdPr Me
  loc_BD557B: Me.MousePointer = from_stack_1
  loc_BD5580: LitVarStr var_98, vbNullString
  loc_BD5585: PopAdLdVar
  loc_BD5586: FLdPr Me
  loc_BD5589: VCallAd Control_ID_statusBar
  loc_BD558C: FStAdFunc var_AC
  loc_BD558F: FLdPr var_AC
  loc_BD5592: LateIdSt
  loc_BD5597: FFree1Ad var_AC
  loc_BD559A: Branch loc_BD6280
  loc_BD559D: LitI2_Byte 3
  loc_BD559F: FLdPr Me
  loc_BD55A2: MemLdRfVar from_stack_1.global_124
  loc_BD55A5: LitI2_Byte 5
  loc_BD55A7: ForI2 var_184
  loc_BD55AD: FLdPr Me
  loc_BD55B0: MemLdI2 global_124
  loc_BD55B3: CI4UI1
  loc_BD55B4: FLdPr Me
  loc_BD55B7: MemLdStr global_120
  loc_BD55BA: Ary1LdPr
  loc_BD55BB: MemLdStr global_0
  loc_BD55BE: LitI2_Byte 1
  loc_BD55C0: FnUBound
  loc_BD55C2: LitI4 0
  loc_BD55C7: GtI4
  loc_BD55C8: BranchF loc_BD626D
  loc_BD55CB: FLdPr Me
  loc_BD55CE: MemLdI2 global_124
  loc_BD55D1: CI4UI1
  loc_BD55D2: FLdPr Me
  loc_BD55D5: MemLdRfVar from_stack_1.global_88
  loc_BD55D8: Ary1LdRf
  loc_BD55D9: NewIfNullPr clsimputacion
  loc_BD55DC: Call clsimputacion.MoveFirst()
  loc_BD55E1: LitI4 1
  loc_BD55E6: FLdPr Me
  loc_BD55E9: MemLdRfVar from_stack_1.global_128
  loc_BD55EC: FLdPr Me
  loc_BD55EF: MemLdI2 global_124
  loc_BD55F2: CI4UI1
  loc_BD55F3: FLdPr Me
  loc_BD55F6: MemLdStr global_120
  loc_BD55F9: Ary1LdPr
  loc_BD55FA: MemLdStr global_0
  loc_BD55FD: LitI2_Byte 1
  loc_BD55FF: FnUBound
  loc_BD5601: ForI4 var_18C
  loc_BD5607: FLdRfVar var_AC
  loc_BD560A: FLdPr Me
  loc_BD560D: MemLdI2 global_124
  loc_BD5610: CI4UI1
  loc_BD5611: FLdPr Me
  loc_BD5614: MemLdRfVar from_stack_1.global_88
  loc_BD5617: Ary1LdRf
  loc_BD5618: NewIfNullPr clsimputacion
  loc_BD561B: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BD5620: FLdZeroAd var_AC
  loc_BD5623: FStAdFunc var_190
  loc_BD5626: FLdRfVar var_100
  loc_BD5629: LitVarStr var_98, "CodiPart"
  loc_BD562E: PopAdLdVar
  loc_BD562F: FLdRfVar var_AC
  loc_BD5632: FLdPr var_190
  loc_BD5635:  = Me.Fields
  loc_BD563A: FLdPr var_AC
  loc_BD563D: from_stack_2 = Me.Item(from_stack_1)
  loc_BD5642: LitI2_Byte 0
  loc_BD5644: LitVar_Missing var_EC
  loc_BD5647: LitI2_Byte 0
  loc_BD5649: FLdZeroAd var_100
  loc_BD564C: CVarAd
  loc_BD5650: PopAdLdVar
  loc_BD5651: FLdPr Me
  loc_BD5654: MemLdStr global_128
  loc_BD5657: FLdPr Me
  loc_BD565A: MemLdI2 global_124
  loc_BD565D: CI4UI1
  loc_BD565E: FLdPr Me
  loc_BD5661: MemLdStr global_120
  loc_BD5664: AryLock
  loc_BD5667: Ary1LdPr
  loc_BD5668: MemLdStr global_0
  loc_BD566B: AryLock
  loc_BD566E: Ary1LdPr
  loc_BD566F: MemLdRfVar from_stack_1.global_0
  loc_BD5672: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BD5677: AryUnlock
  loc_BD567A: AryUnlock
  loc_BD567D: FFree1Ad var_AC
  loc_BD5680: FFreeVar var_D8 = ""
  loc_BD5687: FLdRfVar var_100
  loc_BD568A: LitVarStr var_98, "DetaPart"
  loc_BD568F: PopAdLdVar
  loc_BD5690: FLdRfVar var_AC
  loc_BD5693: FLdPr var_190
  loc_BD5696:  = Me.Fields
  loc_BD569B: FLdPr var_AC
  loc_BD569E: from_stack_2 = Me.Item(from_stack_1)
  loc_BD56A3: LitI2_Byte 0
  loc_BD56A5: LitVar_Missing var_EC
  loc_BD56A8: LitI2_Byte 0
  loc_BD56AA: FLdZeroAd var_100
  loc_BD56AD: CVarAd
  loc_BD56B1: PopAdLdVar
  loc_BD56B2: FLdPr Me
  loc_BD56B5: MemLdStr global_128
  loc_BD56B8: FLdPr Me
  loc_BD56BB: MemLdI2 global_124
  loc_BD56BE: CI4UI1
  loc_BD56BF: FLdPr Me
  loc_BD56C2: MemLdStr global_120
  loc_BD56C5: AryLock
  loc_BD56C8: Ary1LdPr
  loc_BD56C9: MemLdStr global_0
  loc_BD56CC: AryLock
  loc_BD56CF: Ary1LdPr
  loc_BD56D0: MemLdRfVar from_stack_1.global_4
  loc_BD56D3: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BD56D8: AryUnlock
  loc_BD56DB: AryUnlock
  loc_BD56DE: FFree1Ad var_AC
  loc_BD56E1: FFreeVar var_D8 = ""
  loc_BD56E8: FLdRfVar var_100
  loc_BD56EB: LitVarStr var_98, "CodiOrga"
  loc_BD56F0: PopAdLdVar
  loc_BD56F1: FLdRfVar var_AC
  loc_BD56F4: FLdPr var_190
  loc_BD56F7:  = Me.Fields
  loc_BD56FC: FLdPr var_AC
  loc_BD56FF: from_stack_2 = Me.Item(from_stack_1)
  loc_BD5704: LitI2_Byte 0
  loc_BD5706: LitVar_Missing var_EC
  loc_BD5709: LitI2_Byte 0
  loc_BD570B: FLdZeroAd var_100
  loc_BD570E: CVarAd
  loc_BD5712: PopAdLdVar
  loc_BD5713: FLdPr Me
  loc_BD5716: MemLdStr global_128
  loc_BD5719: FLdPr Me
  loc_BD571C: MemLdI2 global_124
  loc_BD571F: CI4UI1
  loc_BD5720: FLdPr Me
  loc_BD5723: MemLdStr global_120
  loc_BD5726: AryLock
  loc_BD5729: Ary1LdPr
  loc_BD572A: MemLdStr global_0
  loc_BD572D: AryLock
  loc_BD5730: Ary1LdPr
  loc_BD5731: MemLdRfVar from_stack_1.global_8
  loc_BD5734: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BD5739: AryUnlock
  loc_BD573C: AryUnlock
  loc_BD573F: FFree1Ad var_AC
  loc_BD5742: FFreeVar var_D8 = ""
  loc_BD5749: FLdRfVar var_100
  loc_BD574C: LitVarStr var_98, "DetaOrga"
  loc_BD5751: PopAdLdVar
  loc_BD5752: FLdRfVar var_AC
  loc_BD5755: FLdPr var_190
  loc_BD5758:  = Me.Fields
  loc_BD575D: FLdPr var_AC
  loc_BD5760: from_stack_2 = Me.Item(from_stack_1)
  loc_BD5765: LitI2_Byte 0
  loc_BD5767: LitVar_Missing var_EC
  loc_BD576A: LitI2_Byte 0
  loc_BD576C: FLdZeroAd var_100
  loc_BD576F: CVarAd
  loc_BD5773: PopAdLdVar
  loc_BD5774: FLdPr Me
  loc_BD5777: MemLdStr global_128
  loc_BD577A: FLdPr Me
  loc_BD577D: MemLdI2 global_124
  loc_BD5780: CI4UI1
  loc_BD5781: FLdPr Me
  loc_BD5784: MemLdStr global_120
  loc_BD5787: AryLock
  loc_BD578A: Ary1LdPr
  loc_BD578B: MemLdStr global_0
  loc_BD578E: AryLock
  loc_BD5791: Ary1LdPr
  loc_BD5792: MemLdRfVar from_stack_1.global_12
  loc_BD5795: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BD579A: AryUnlock
  loc_BD579D: AryUnlock
  loc_BD57A0: FFree1Ad var_AC
  loc_BD57A3: FFreeVar var_D8 = ""
  loc_BD57AA: FLdRfVar var_100
  loc_BD57AD: LitVarStr var_98, "CodiFifu"
  loc_BD57B2: PopAdLdVar
  loc_BD57B3: FLdRfVar var_AC
  loc_BD57B6: FLdPr var_190
  loc_BD57B9:  = Me.Fields
  loc_BD57BE: FLdPr var_AC
  loc_BD57C1: from_stack_2 = Me.Item(from_stack_1)
  loc_BD57C6: LitI2_Byte 0
  loc_BD57C8: LitVar_Missing var_EC
  loc_BD57CB: LitI2_Byte 0
  loc_BD57CD: FLdZeroAd var_100
  loc_BD57D0: CVarAd
  loc_BD57D4: PopAdLdVar
  loc_BD57D5: FLdPr Me
  loc_BD57D8: MemLdStr global_128
  loc_BD57DB: FLdPr Me
  loc_BD57DE: MemLdI2 global_124
  loc_BD57E1: CI4UI1
  loc_BD57E2: FLdPr Me
  loc_BD57E5: MemLdStr global_120
  loc_BD57E8: AryLock
  loc_BD57EB: Ary1LdPr
  loc_BD57EC: MemLdStr global_0
  loc_BD57EF: AryLock
  loc_BD57F2: Ary1LdPr
  loc_BD57F3: MemLdRfVar from_stack_1.global_16
  loc_BD57F6: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BD57FB: AryUnlock
  loc_BD57FE: AryUnlock
  loc_BD5801: FFree1Ad var_AC
  loc_BD5804: FFreeVar var_D8 = ""
  loc_BD580B: FLdRfVar var_100
  loc_BD580E: LitVarStr var_98, "DetaFifu"
  loc_BD5813: PopAdLdVar
  loc_BD5814: FLdRfVar var_AC
  loc_BD5817: FLdPr var_190
  loc_BD581A:  = Me.Fields
  loc_BD581F: FLdPr var_AC
  loc_BD5822: from_stack_2 = Me.Item(from_stack_1)
  loc_BD5827: LitI2_Byte 0
  loc_BD5829: LitVar_Missing var_EC
  loc_BD582C: LitI2_Byte 0
  loc_BD582E: FLdZeroAd var_100
  loc_BD5831: CVarAd
  loc_BD5835: PopAdLdVar
  loc_BD5836: FLdPr Me
  loc_BD5839: MemLdStr global_128
  loc_BD583C: FLdPr Me
  loc_BD583F: MemLdI2 global_124
  loc_BD5842: CI4UI1
  loc_BD5843: FLdPr Me
  loc_BD5846: MemLdStr global_120
  loc_BD5849: AryLock
  loc_BD584C: Ary1LdPr
  loc_BD584D: MemLdStr global_0
  loc_BD5850: AryLock
  loc_BD5853: Ary1LdPr
  loc_BD5854: MemLdRfVar from_stack_1.global_20
  loc_BD5857: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BD585C: AryUnlock
  loc_BD585F: AryUnlock
  loc_BD5862: FFree1Ad var_AC
  loc_BD5865: FFreeVar var_D8 = ""
  loc_BD586C: FLdRfVar var_100
  loc_BD586F: LitVarStr var_98, "DetaImpu"
  loc_BD5874: PopAdLdVar
  loc_BD5875: FLdRfVar var_AC
  loc_BD5878: FLdPr var_190
  loc_BD587B:  = Me.Fields
  loc_BD5880: FLdPr var_AC
  loc_BD5883: from_stack_2 = Me.Item(from_stack_1)
  loc_BD5888: LitI2_Byte 0
  loc_BD588A: LitVar_Missing var_EC
  loc_BD588D: LitI2_Byte 0
  loc_BD588F: FLdZeroAd var_100
  loc_BD5892: CVarAd
  loc_BD5896: PopAdLdVar
  loc_BD5897: FLdPr Me
  loc_BD589A: MemLdStr global_128
  loc_BD589D: FLdPr Me
  loc_BD58A0: MemLdI2 global_124
  loc_BD58A3: CI4UI1
  loc_BD58A4: FLdPr Me
  loc_BD58A7: MemLdStr global_120
  loc_BD58AA: AryLock
  loc_BD58AD: Ary1LdPr
  loc_BD58AE: MemLdStr global_0
  loc_BD58B1: AryLock
  loc_BD58B4: Ary1LdPr
  loc_BD58B5: MemLdRfVar from_stack_1.global_24
  loc_BD58B8: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BD58BD: AryUnlock
  loc_BD58C0: AryUnlock
  loc_BD58C3: FFree1Ad var_AC
  loc_BD58C6: FFreeVar var_D8 = ""
  loc_BD58CD: FLdRfVar var_100
  loc_BD58D0: LitVarStr var_98, "ExorImpu"
  loc_BD58D5: PopAdLdVar
  loc_BD58D6: FLdRfVar var_AC
  loc_BD58D9: FLdPr var_190
  loc_BD58DC:  = Me.Fields
  loc_BD58E1: FLdPr var_AC
  loc_BD58E4: from_stack_2 = Me.Item(from_stack_1)
  loc_BD58E9: LitI2_Byte 0
  loc_BD58EB: LitVar_Missing var_EC
  loc_BD58EE: LitI2_Byte 0
  loc_BD58F0: FLdZeroAd var_100
  loc_BD58F3: CVarAd
  loc_BD58F7: PopAdLdVar
  loc_BD58F8: FLdPr Me
  loc_BD58FB: MemLdStr global_128
  loc_BD58FE: FLdPr Me
  loc_BD5901: MemLdI2 global_124
  loc_BD5904: CI4UI1
  loc_BD5905: FLdPr Me
  loc_BD5908: MemLdStr global_120
  loc_BD590B: AryLock
  loc_BD590E: Ary1LdPr
  loc_BD590F: MemLdStr global_0
  loc_BD5912: AryLock
  loc_BD5915: Ary1LdPr
  loc_BD5916: MemLdRfVar from_stack_1.global_28
  loc_BD5919: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BD591E: AryUnlock
  loc_BD5921: AryUnlock
  loc_BD5924: FFree1Ad var_AC
  loc_BD5927: FFreeVar var_D8 = ""
  loc_BD592E: FLdRfVar var_100
  loc_BD5931: LitVarStr var_98, "CucuPers"
  loc_BD5936: PopAdLdVar
  loc_BD5937: FLdRfVar var_AC
  loc_BD593A: FLdPr var_190
  loc_BD593D:  = Me.Fields
  loc_BD5942: FLdPr var_AC
  loc_BD5945: from_stack_2 = Me.Item(from_stack_1)
  loc_BD594A: LitI2_Byte 0
  loc_BD594C: LitVar_Missing var_EC
  loc_BD594F: LitI2_Byte 0
  loc_BD5951: FLdZeroAd var_100
  loc_BD5954: CVarAd
  loc_BD5958: PopAdLdVar
  loc_BD5959: FLdPr Me
  loc_BD595C: MemLdStr global_128
  loc_BD595F: FLdPr Me
  loc_BD5962: MemLdI2 global_124
  loc_BD5965: CI4UI1
  loc_BD5966: FLdPr Me
  loc_BD5969: MemLdStr global_120
  loc_BD596C: AryLock
  loc_BD596F: Ary1LdPr
  loc_BD5970: MemLdStr global_0
  loc_BD5973: AryLock
  loc_BD5976: Ary1LdPr
  loc_BD5977: MemLdRfVar from_stack_1.global_32
  loc_BD597A: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BD597F: AryUnlock
  loc_BD5982: AryUnlock
  loc_BD5985: FFree1Ad var_AC
  loc_BD5988: FFreeVar var_D8 = ""
  loc_BD598F: FLdRfVar var_EC
  loc_BD5992: FLdRfVar var_100
  loc_BD5995: LitVarStr var_98, "FantProv"
  loc_BD599A: PopAdLdVar
  loc_BD599B: FLdRfVar var_AC
  loc_BD599E: FLdPr var_190
  loc_BD59A1:  = Me.Fields
  loc_BD59A6: FLdPr var_AC
  loc_BD59A9: from_stack_2 = Me.Item(from_stack_1)
  loc_BD59AE: FLdPr var_100
  loc_BD59B1:  = Me.Value
  loc_BD59B6: FLdRfVar var_D8
  loc_BD59B9: FLdRfVar var_19C
  loc_BD59BC: LitVarStr var_A8, "DetaProv"
  loc_BD59C1: PopAdLdVar
  loc_BD59C2: FLdRfVar var_12C
  loc_BD59C5: FLdPr var_190
  loc_BD59C8:  = Me.Fields
  loc_BD59CD: FLdPr var_12C
  loc_BD59D0: from_stack_2 = Me.Item(from_stack_1)
  loc_BD59D5: FLdPr var_19C
  loc_BD59D8:  = Me.Value
  loc_BD59DD: FLdRfVar var_1B4
  loc_BD59E0: LitVarStr var_1B0, "FantProv"
  loc_BD59E5: PopAdLdVar
  loc_BD59E6: FLdRfVar var_1A0
  loc_BD59E9: FLdPr var_190
  loc_BD59EC:  = Me.Fields
  loc_BD59F1: FLdPr var_1A0
  loc_BD59F4: from_stack_2 = Me.Item(from_stack_1)
  loc_BD59F9: FLdRfVar var_118
  loc_BD59FC: FLdRfVar var_1CC
  loc_BD59FF: LitVarStr var_1C8, "DetaProv"
  loc_BD5A04: PopAdLdVar
  loc_BD5A05: FLdRfVar var_1B8
  loc_BD5A08: FLdPr var_190
  loc_BD5A0B:  = Me.Fields
  loc_BD5A10: FLdPr var_1B8
  loc_BD5A13: from_stack_2 = Me.Item(from_stack_1)
  loc_BD5A18: FLdPr var_1CC
  loc_BD5A1B:  = Me.Value
  loc_BD5A20: FLdRfVar var_118
  loc_BD5A23: LitVarStr var_1DC, " - "
  loc_BD5A28: ConcatVar var_128
  loc_BD5A2C: FLdRfVar var_204
  loc_BD5A2F: FLdRfVar var_1F4
  loc_BD5A32: LitVarStr var_1F0, "FantProv"
  loc_BD5A37: PopAdLdVar
  loc_BD5A38: FLdRfVar var_1E0
  loc_BD5A3B: FLdPr var_190
  loc_BD5A3E:  = Me.Fields
  loc_BD5A43: FLdPr var_1E0
  loc_BD5A46: from_stack_2 = Me.Item(from_stack_1)
  loc_BD5A4B: FLdPr var_1F4
  loc_BD5A4E:  = Me.Value
  loc_BD5A53: FLdRfVar var_204
  loc_BD5A56: ConcatVar var_214
  loc_BD5A5A: FLdZeroAd var_1B4
  loc_BD5A5D: CVarAd
  loc_BD5A61: FLdRfVar var_EC
  loc_BD5A64: FLdRfVar var_D8
  loc_BD5A67: EqVar var_FC
  loc_BD5A6B: FStVar var_224
  loc_BD5A6F: FLdRfVar var_224
  loc_BD5A72: FLdRfVar var_244
  loc_BD5A75: ImpAdCallFPR4  = IIf(, , )
  loc_BD5A7A: LitI2_Byte 0
  loc_BD5A7C: LitVar_Missing var_264
  loc_BD5A7F: LitI2_Byte 0
  loc_BD5A81: FLdVar var_244
  loc_BD5A85: FLdPr Me
  loc_BD5A88: MemLdStr global_128
  loc_BD5A8B: FLdPr Me
  loc_BD5A8E: MemLdI2 global_124
  loc_BD5A91: CI4UI1
  loc_BD5A92: FLdPr Me
  loc_BD5A95: MemLdStr global_120
  loc_BD5A98: AryLock
  loc_BD5A9B: Ary1LdPr
  loc_BD5A9C: MemLdStr global_0
  loc_BD5A9F: AryLock
  loc_BD5AA2: Ary1LdPr
  loc_BD5AA3: MemLdRfVar from_stack_1.global_36
  loc_BD5AA6: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BD5AAB: AryUnlock
  loc_BD5AAE: AryUnlock
  loc_BD5AB1: FFreeAd var_AC = "": var_12C = "": var_19C = "": var_100 = "": var_1A0 = "": var_1B8 = "": var_1CC = "": var_1E0 = ""
  loc_BD5AC6: FFreeVar var_EC = "": var_D8 = "": var_118 = "": var_128 = "": var_204 = "": var_224 = "": var_234 = "": var_214 = "": var_244 = ""
  loc_BD5ADD: FLdRfVar var_100
  loc_BD5AE0: LitVarStr var_98, "FechImpu"
  loc_BD5AE5: PopAdLdVar
  loc_BD5AE6: FLdRfVar var_AC
  loc_BD5AE9: FLdPr var_190
  loc_BD5AEC:  = Me.Fields
  loc_BD5AF1: FLdPr var_AC
  loc_BD5AF4: from_stack_2 = Me.Item(from_stack_1)
  loc_BD5AF9: LitI2_Byte 0
  loc_BD5AFB: LitVar_Missing var_EC
  loc_BD5AFE: LitI2_Byte 0
  loc_BD5B00: FLdZeroAd var_100
  loc_BD5B03: CVarAd
  loc_BD5B07: PopAdLdVar
  loc_BD5B08: FLdPr Me
  loc_BD5B0B: MemLdStr global_128
  loc_BD5B0E: FLdPr Me
  loc_BD5B11: MemLdI2 global_124
  loc_BD5B14: CI4UI1
  loc_BD5B15: FLdPr Me
  loc_BD5B18: MemLdStr global_120
  loc_BD5B1B: AryLock
  loc_BD5B1E: Ary1LdPr
  loc_BD5B1F: MemLdStr global_0
  loc_BD5B22: AryLock
  loc_BD5B25: Ary1LdPr
  loc_BD5B26: MemLdRfVar from_stack_1.global_44
  loc_BD5B29: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BD5B2E: AryUnlock
  loc_BD5B31: AryUnlock
  loc_BD5B34: FFree1Ad var_AC
  loc_BD5B37: FFreeVar var_D8 = ""
  loc_BD5B3E: FLdRfVar var_100
  loc_BD5B41: LitVarStr var_98, "AltaUsua"
  loc_BD5B46: PopAdLdVar
  loc_BD5B47: FLdRfVar var_AC
  loc_BD5B4A: FLdPr var_190
  loc_BD5B4D:  = Me.Fields
  loc_BD5B52: FLdPr var_AC
  loc_BD5B55: from_stack_2 = Me.Item(from_stack_1)
  loc_BD5B5A: LitI2_Byte 0
  loc_BD5B5C: LitVar_Missing var_EC
  loc_BD5B5F: LitI2_Byte 0
  loc_BD5B61: FLdZeroAd var_100
  loc_BD5B64: CVarAd
  loc_BD5B68: PopAdLdVar
  loc_BD5B69: FLdPr Me
  loc_BD5B6C: MemLdStr global_128
  loc_BD5B6F: FLdPr Me
  loc_BD5B72: MemLdI2 global_124
  loc_BD5B75: CI4UI1
  loc_BD5B76: FLdPr Me
  loc_BD5B79: MemLdStr global_120
  loc_BD5B7C: AryLock
  loc_BD5B7F: Ary1LdPr
  loc_BD5B80: MemLdStr global_0
  loc_BD5B83: AryLock
  loc_BD5B86: Ary1LdPr
  loc_BD5B87: MemLdRfVar from_stack_1.global_48
  loc_BD5B8A: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BD5B8F: AryUnlock
  loc_BD5B92: AryUnlock
  loc_BD5B95: FFree1Ad var_AC
  loc_BD5B98: FFreeVar var_D8 = ""
  loc_BD5B9F: FLdRfVar var_100
  loc_BD5BA2: LitVarStr var_98, "CodiOrco"
  loc_BD5BA7: PopAdLdVar
  loc_BD5BA8: FLdRfVar var_AC
  loc_BD5BAB: FLdPr var_190
  loc_BD5BAE:  = Me.Fields
  loc_BD5BB3: FLdPr var_AC
  loc_BD5BB6: from_stack_2 = Me.Item(from_stack_1)
  loc_BD5BBB: LitI2_Byte 0
  loc_BD5BBD: LitVar_Missing var_EC
  loc_BD5BC0: LitI2_Byte 0
  loc_BD5BC2: FLdZeroAd var_100
  loc_BD5BC5: CVarAd
  loc_BD5BC9: PopAdLdVar
  loc_BD5BCA: FLdPr Me
  loc_BD5BCD: MemLdStr global_128
  loc_BD5BD0: FLdPr Me
  loc_BD5BD3: MemLdI2 global_124
  loc_BD5BD6: CI4UI1
  loc_BD5BD7: FLdPr Me
  loc_BD5BDA: MemLdStr global_120
  loc_BD5BDD: AryLock
  loc_BD5BE0: Ary1LdPr
  loc_BD5BE1: MemLdStr global_0
  loc_BD5BE4: AryLock
  loc_BD5BE7: Ary1LdPr
  loc_BD5BE8: MemLdRfVar from_stack_1.global_60
  loc_BD5BEB: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BD5BF0: AryUnlock
  loc_BD5BF3: AryUnlock
  loc_BD5BF6: FFree1Ad var_AC
  loc_BD5BF9: FFreeVar var_D8 = ""
  loc_BD5C00: FLdRfVar var_100
  loc_BD5C03: LitVarStr var_98, "Item"
  loc_BD5C08: PopAdLdVar
  loc_BD5C09: FLdRfVar var_AC
  loc_BD5C0C: FLdPr var_190
  loc_BD5C0F:  = Me.Fields
  loc_BD5C14: FLdPr var_AC
  loc_BD5C17: from_stack_2 = Me.Item(from_stack_1)
  loc_BD5C1C: LitI2_Byte 0
  loc_BD5C1E: LitVar_Missing var_EC
  loc_BD5C21: LitI2_Byte 0
  loc_BD5C23: FLdZeroAd var_100
  loc_BD5C26: CVarAd
  loc_BD5C2A: PopAdLdVar
  loc_BD5C2B: FLdPr Me
  loc_BD5C2E: MemLdStr global_128
  loc_BD5C31: FLdPr Me
  loc_BD5C34: MemLdI2 global_124
  loc_BD5C37: CI4UI1
  loc_BD5C38: FLdPr Me
  loc_BD5C3B: MemLdStr global_120
  loc_BD5C3E: AryLock
  loc_BD5C41: Ary1LdPr
  loc_BD5C42: MemLdStr global_0
  loc_BD5C45: AryLock
  loc_BD5C48: Ary1LdPr
  loc_BD5C49: MemLdRfVar from_stack_1.global_56
  loc_BD5C4C: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BD5C51: AryUnlock
  loc_BD5C54: AryUnlock
  loc_BD5C57: FFree1Ad var_AC
  loc_BD5C5A: FFreeVar var_D8 = ""
  loc_BD5C61: FLdRfVar var_100
  loc_BD5C64: LitVarStr var_98, "Altern"
  loc_BD5C69: PopAdLdVar
  loc_BD5C6A: FLdRfVar var_AC
  loc_BD5C6D: FLdPr var_190
  loc_BD5C70:  = Me.Fields
  loc_BD5C75: FLdPr var_AC
  loc_BD5C78: from_stack_2 = Me.Item(from_stack_1)
  loc_BD5C7D: LitI2_Byte 0
  loc_BD5C7F: LitVar_Missing var_EC
  loc_BD5C82: LitI2_Byte 0
  loc_BD5C84: FLdZeroAd var_100
  loc_BD5C87: CVarAd
  loc_BD5C8B: PopAdLdVar
  loc_BD5C8C: FLdPr Me
  loc_BD5C8F: MemLdStr global_128
  loc_BD5C92: FLdPr Me
  loc_BD5C95: MemLdI2 global_124
  loc_BD5C98: CI4UI1
  loc_BD5C99: FLdPr Me
  loc_BD5C9C: MemLdStr global_120
  loc_BD5C9F: AryLock
  loc_BD5CA2: Ary1LdPr
  loc_BD5CA3: MemLdStr global_0
  loc_BD5CA6: AryLock
  loc_BD5CA9: Ary1LdPr
  loc_BD5CAA: MemLdRfVar from_stack_1.global_64
  loc_BD5CAD: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BD5CB2: AryUnlock
  loc_BD5CB5: AryUnlock
  loc_BD5CB8: FFree1Ad var_AC
  loc_BD5CBB: FFreeVar var_D8 = ""
  loc_BD5CC2: FLdRfVar var_100
  loc_BD5CC5: LitVarStr var_98, "CodiRece"
  loc_BD5CCA: PopAdLdVar
  loc_BD5CCB: FLdRfVar var_AC
  loc_BD5CCE: FLdPr var_190
  loc_BD5CD1:  = Me.Fields
  loc_BD5CD6: FLdPr var_AC
  loc_BD5CD9: from_stack_2 = Me.Item(from_stack_1)
  loc_BD5CDE: LitI2_Byte 0
  loc_BD5CE0: LitVar_Missing var_EC
  loc_BD5CE3: LitI2_Byte 0
  loc_BD5CE5: FLdZeroAd var_100
  loc_BD5CE8: CVarAd
  loc_BD5CEC: PopAdLdVar
  loc_BD5CED: FLdPr Me
  loc_BD5CF0: MemLdStr global_128
  loc_BD5CF3: FLdPr Me
  loc_BD5CF6: MemLdI2 global_124
  loc_BD5CF9: CI4UI1
  loc_BD5CFA: FLdPr Me
  loc_BD5CFD: MemLdStr global_120
  loc_BD5D00: AryLock
  loc_BD5D03: Ary1LdPr
  loc_BD5D04: MemLdStr global_0
  loc_BD5D07: AryLock
  loc_BD5D0A: Ary1LdPr
  loc_BD5D0B: MemLdRfVar from_stack_1.bGenerado
  loc_BD5D0E: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BD5D13: AryUnlock
  loc_BD5D16: AryUnlock
  loc_BD5D19: FFree1Ad var_AC
  loc_BD5D1C: FFreeVar var_D8 = ""
  loc_BD5D23: FLdRfVar var_100
  loc_BD5D26: LitVarStr var_98, "NumeFact"
  loc_BD5D2B: PopAdLdVar
  loc_BD5D2C: FLdRfVar var_AC
  loc_BD5D2F: FLdPr var_190
  loc_BD5D32:  = Me.Fields
  loc_BD5D37: FLdPr var_AC
  loc_BD5D3A: from_stack_2 = Me.Item(from_stack_1)
  loc_BD5D3F: LitI2_Byte 0
  loc_BD5D41: LitVar_Missing var_EC
  loc_BD5D44: LitI2_Byte 0
  loc_BD5D46: FLdZeroAd var_100
  loc_BD5D49: CVarAd
  loc_BD5D4D: PopAdLdVar
  loc_BD5D4E: FLdPr Me
  loc_BD5D51: MemLdStr global_128
  loc_BD5D54: FLdPr Me
  loc_BD5D57: MemLdI2 global_124
  loc_BD5D5A: CI4UI1
  loc_BD5D5B: FLdPr Me
  loc_BD5D5E: MemLdStr global_120
  loc_BD5D61: AryLock
  loc_BD5D64: Ary1LdPr
  loc_BD5D65: MemLdStr global_0
  loc_BD5D68: AryLock
  loc_BD5D6B: Ary1LdPr
  loc_BD5D6C: MemLdRfVar from_stack_1.global_72
  loc_BD5D6F: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BD5D74: AryUnlock
  loc_BD5D77: AryUnlock
  loc_BD5D7A: FFree1Ad var_AC
  loc_BD5D7D: FFreeVar var_D8 = ""
  loc_BD5D84: LitStr "Municipalidad de Guaymallén"
  loc_BD5D87: LitStr "Municipalidad de Maipú"
  loc_BD5D8A: EqStr
  loc_BD5D8C: BranchF loc_BD5EFA
  loc_BD5D8F: FLdRfVar var_100
  loc_BD5D92: LitVarStr var_98, "FefaDeve"
  loc_BD5D97: PopAdLdVar
  loc_BD5D98: FLdRfVar var_AC
  loc_BD5D9B: FLdPr var_190
  loc_BD5D9E:  = Me.Fields
  loc_BD5DA3: FLdPr var_AC
  loc_BD5DA6: from_stack_2 = Me.Item(from_stack_1)
  loc_BD5DAB: FLdZeroAd var_100
  loc_BD5DAE: CVarAd
  loc_BD5DB2: ImpAdCallI2 IsDate()
  loc_BD5DB7: FFree1Ad var_AC
  loc_BD5DBA: FFree1Var var_D8 = ""
  loc_BD5DBD: BranchF loc_BD5E96
  loc_BD5DC0: FLdRfVar var_D8
  loc_BD5DC3: FLdRfVar var_100
  loc_BD5DC6: LitVarStr var_98, "FefaDeve"
  loc_BD5DCB: PopAdLdVar
  loc_BD5DCC: FLdRfVar var_AC
  loc_BD5DCF: FLdPr var_190
  loc_BD5DD2:  = Me.Fields
  loc_BD5DD7: FLdPr var_AC
  loc_BD5DDA: from_stack_2 = Me.Item(from_stack_1)
  loc_BD5DDF: FLdPr var_100
  loc_BD5DE2:  = Me.Value
  loc_BD5DE7: FLdRfVar var_19C
  loc_BD5DEA: LitVarStr var_A8, "FefaDeve"
  loc_BD5DEF: PopAdLdVar
  loc_BD5DF0: FLdRfVar var_12C
  loc_BD5DF3: FLdPr var_190
  loc_BD5DF6:  = Me.Fields
  loc_BD5DFB: FLdPr var_12C
  loc_BD5DFE: from_stack_2 = Me.Item(from_stack_1)
  loc_BD5E03: LitVarStr var_1C8, vbNullString
  loc_BD5E08: FStVarCopyObj var_FC
  loc_BD5E0B: FLdRfVar var_FC
  loc_BD5E0E: FLdZeroAd var_19C
  loc_BD5E11: CVarAd
  loc_BD5E15: FLdRfVar var_D8
  loc_BD5E18: FnCDateVar
  loc_BD5E1A: FLdPr Me
  loc_BD5E1D: MemLdStr global_128
  loc_BD5E20: FLdPr Me
  loc_BD5E23: MemLdI2 global_124
  loc_BD5E26: CI4UI1
  loc_BD5E27: FLdPr Me
  loc_BD5E2A: MemLdStr global_120
  loc_BD5E2D: Ary1LdPr
  loc_BD5E2E: MemLdStr global_0
  loc_BD5E31: Ary1LdPr
  loc_BD5E32: MemLdStr global_44
  loc_BD5E35: CDateStr
  loc_BD5E37: LeR8
  loc_BD5E38: CVarBoolI2 var_1B0
  loc_BD5E3C: FLdRfVar var_118
  loc_BD5E3F: ImpAdCallFPR4  = IIf(, , )
  loc_BD5E44: LitI2_Byte 0
  loc_BD5E46: LitVar_Missing var_128
  loc_BD5E49: LitI2_Byte 0
  loc_BD5E4B: FLdVar var_118
  loc_BD5E4F: FLdPr Me
  loc_BD5E52: MemLdStr global_128
  loc_BD5E55: FLdPr Me
  loc_BD5E58: MemLdI2 global_124
  loc_BD5E5B: CI4UI1
  loc_BD5E5C: FLdPr Me
  loc_BD5E5F: MemLdStr global_120
  loc_BD5E62: AryLock
  loc_BD5E65: Ary1LdPr
  loc_BD5E66: MemLdStr global_0
  loc_BD5E69: AryLock
  loc_BD5E6C: Ary1LdPr
  loc_BD5E6D: MemLdRfVar from_stack_1.global_76
  loc_BD5E70: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BD5E75: AryUnlock
  loc_BD5E78: AryUnlock
  loc_BD5E7B: FFreeAd var_AC = "": var_100 = ""
  loc_BD5E84: FFreeVar var_D8 = "": var_1B0 = "": var_EC = "": var_FC = "": var_118 = ""
  loc_BD5E93: Branch loc_BD5EF7
  loc_BD5E96: FLdRfVar var_100
  loc_BD5E99: LitVarStr var_98, "FefaDeve"
  loc_BD5E9E: PopAdLdVar
  loc_BD5E9F: FLdRfVar var_AC
  loc_BD5EA2: FLdPr var_190
  loc_BD5EA5:  = Me.Fields
  loc_BD5EAA: FLdPr var_AC
  loc_BD5EAD: from_stack_2 = Me.Item(from_stack_1)
  loc_BD5EB2: LitI2_Byte 0
  loc_BD5EB4: LitVar_Missing var_EC
  loc_BD5EB7: LitI2_Byte 0
  loc_BD5EB9: FLdZeroAd var_100
  loc_BD5EBC: CVarAd
  loc_BD5EC0: PopAdLdVar
  loc_BD5EC1: FLdPr Me
  loc_BD5EC4: MemLdStr global_128
  loc_BD5EC7: FLdPr Me
  loc_BD5ECA: MemLdI2 global_124
  loc_BD5ECD: CI4UI1
  loc_BD5ECE: FLdPr Me
  loc_BD5ED1: MemLdStr global_120
  loc_BD5ED4: AryLock
  loc_BD5ED7: Ary1LdPr
  loc_BD5ED8: MemLdStr global_0
  loc_BD5EDB: AryLock
  loc_BD5EDE: Ary1LdPr
  loc_BD5EDF: MemLdRfVar from_stack_1.global_76
  loc_BD5EE2: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BD5EE7: AryUnlock
  loc_BD5EEA: AryUnlock
  loc_BD5EED: FFree1Ad var_AC
  loc_BD5EF0: FFreeVar var_D8 = ""
  loc_BD5EF7: Branch loc_BD5F5B
  loc_BD5EFA: FLdRfVar var_100
  loc_BD5EFD: LitVarStr var_98, "FefaDeve"
  loc_BD5F02: PopAdLdVar
  loc_BD5F03: FLdRfVar var_AC
  loc_BD5F06: FLdPr var_190
  loc_BD5F09:  = Me.Fields
  loc_BD5F0E: FLdPr var_AC
  loc_BD5F11: from_stack_2 = Me.Item(from_stack_1)
  loc_BD5F16: LitI2_Byte 0
  loc_BD5F18: LitVar_Missing var_EC
  loc_BD5F1B: LitI2_Byte 0
  loc_BD5F1D: FLdZeroAd var_100
  loc_BD5F20: CVarAd
  loc_BD5F24: PopAdLdVar
  loc_BD5F25: FLdPr Me
  loc_BD5F28: MemLdStr global_128
  loc_BD5F2B: FLdPr Me
  loc_BD5F2E: MemLdI2 global_124
  loc_BD5F31: CI4UI1
  loc_BD5F32: FLdPr Me
  loc_BD5F35: MemLdStr global_120
  loc_BD5F38: AryLock
  loc_BD5F3B: Ary1LdPr
  loc_BD5F3C: MemLdStr global_0
  loc_BD5F3F: AryLock
  loc_BD5F42: Ary1LdPr
  loc_BD5F43: MemLdRfVar from_stack_1.global_76
  loc_BD5F46: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BD5F4B: AryUnlock
  loc_BD5F4E: AryUnlock
  loc_BD5F51: FFree1Ad var_AC
  loc_BD5F54: FFreeVar var_D8 = ""
  loc_BD5F5B: FLdPr Me
  loc_BD5F5E: MemLdI2 global_124
  loc_BD5F61: FStI2 var_266
  loc_BD5F64: FLdI2 var_266
  loc_BD5F67: LitI2_Byte 3
  loc_BD5F69: EqI2
  loc_BD5F6A: BranchF loc_BD5FE6
  loc_BD5F6D: FLdRfVar var_100
  loc_BD5F70: LitVarStr var_98, "DeveImpu"
  loc_BD5F75: PopAdLdVar
  loc_BD5F76: FLdRfVar var_AC
  loc_BD5F79: FLdPr var_190
  loc_BD5F7C:  = Me.Fields
  loc_BD5F81: FLdPr var_AC
  loc_BD5F84: from_stack_2 = Me.Item(from_stack_1)
  loc_BD5F89: LitI2_Byte 0
  loc_BD5F8B: FLdPr Me
  loc_BD5F8E: MemLdI2 global_124
  loc_BD5F91: CI4UI1
  loc_BD5F92: FLdPr Me
  loc_BD5F95: MemLdStr global_120
  loc_BD5F98: AryLock
  loc_BD5F9B: Ary1LdPr
  loc_BD5F9C: MemLdRfVar from_stack_1.global_4
  loc_BD5F9F: CVarRef
  loc_BD5FA4: LitI2_Byte &HFF
  loc_BD5FA6: FLdZeroAd var_100
  loc_BD5FA9: CVarAd
  loc_BD5FAD: PopAdLdVar
  loc_BD5FAE: FLdPr Me
  loc_BD5FB1: MemLdStr global_128
  loc_BD5FB4: FLdPr Me
  loc_BD5FB7: MemLdI2 global_124
  loc_BD5FBA: CI4UI1
  loc_BD5FBB: FLdPr Me
  loc_BD5FBE: MemLdStr global_120
  loc_BD5FC1: AryLock
  loc_BD5FC4: Ary1LdPr
  loc_BD5FC5: MemLdStr global_0
  loc_BD5FC8: AryLock
  loc_BD5FCB: Ary1LdPr
  loc_BD5FCC: MemLdRfVar from_stack_1.global_40
  loc_BD5FCF: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BD5FD4: AryUnlock
  loc_BD5FD7: AryUnlock
  loc_BD5FDA: AryUnlock
  loc_BD5FDD: FFree1Ad var_AC
  loc_BD5FE0: FFree1Var var_D8 = ""
  loc_BD5FE3: Branch loc_BD623E
  loc_BD5FE6: FLdI2 var_266
  loc_BD5FE9: LitI2_Byte 4
  loc_BD5FEB: EqI2
  loc_BD5FEC: BranchF loc_BD615E
  loc_BD5FEF: FLdRfVar var_100
  loc_BD5FF2: LitVarStr var_98, "MapaImpu"
  loc_BD5FF7: PopAdLdVar
  loc_BD5FF8: FLdRfVar var_AC
  loc_BD5FFB: FLdPr var_190
  loc_BD5FFE:  = Me.Fields
  loc_BD6003: FLdPr var_AC
  loc_BD6006: from_stack_2 = Me.Item(from_stack_1)
  loc_BD600B: LitI2_Byte 0
  loc_BD600D: FLdPr Me
  loc_BD6010: MemLdI2 global_124
  loc_BD6013: CI4UI1
  loc_BD6014: FLdPr Me
  loc_BD6017: MemLdStr global_120
  loc_BD601A: AryLock
  loc_BD601D: Ary1LdPr
  loc_BD601E: MemLdRfVar from_stack_1.global_4
  loc_BD6021: CVarRef
  loc_BD6026: LitI2_Byte &HFF
  loc_BD6028: FLdZeroAd var_100
  loc_BD602B: CVarAd
  loc_BD602F: PopAdLdVar
  loc_BD6030: FLdPr Me
  loc_BD6033: MemLdStr global_128
  loc_BD6036: FLdPr Me
  loc_BD6039: MemLdI2 global_124
  loc_BD603C: CI4UI1
  loc_BD603D: FLdPr Me
  loc_BD6040: MemLdStr global_120
  loc_BD6043: AryLock
  loc_BD6046: Ary1LdPr
  loc_BD6047: MemLdStr global_0
  loc_BD604A: AryLock
  loc_BD604D: Ary1LdPr
  loc_BD604E: MemLdRfVar from_stack_1.global_40
  loc_BD6051: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BD6056: AryUnlock
  loc_BD6059: AryUnlock
  loc_BD605C: AryUnlock
  loc_BD605F: FFree1Ad var_AC
  loc_BD6062: FFree1Var var_D8 = ""
  loc_BD6065: FLdRfVar var_D8
  loc_BD6068: FLdRfVar var_100
  loc_BD606B: LitVarStr var_98, "NumeOrpa"
  loc_BD6070: PopAdLdVar
  loc_BD6071: FLdRfVar var_AC
  loc_BD6074: FLdPr var_190
  loc_BD6077:  = Me.Fields
  loc_BD607C: FLdPr var_AC
  loc_BD607F: from_stack_2 = Me.Item(from_stack_1)
  loc_BD6084: FLdPr var_100
  loc_BD6087:  = Me.Value
  loc_BD608C: FLdRfVar var_19C
  loc_BD608F: LitVarStr var_1B0, "FereOrpa"
  loc_BD6094: PopAdLdVar
  loc_BD6095: FLdRfVar var_12C
  loc_BD6098: FLdPr var_190
  loc_BD609B:  = Me.Fields
  loc_BD60A0: FLdPr var_12C
  loc_BD60A3: from_stack_2 = Me.Item(from_stack_1)
  loc_BD60A8: FLdZeroAd var_19C
  loc_BD60AB: CVarAd
  loc_BD60AF: ImpAdCallI2 IsDate()
  loc_BD60B4: FStI2 var_C6
  loc_BD60B7: FLdRfVar var_1B4
  loc_BD60BA: LitVarStr var_1C8, "FereOrpa"
  loc_BD60BF: PopAdLdVar
  loc_BD60C0: FLdRfVar var_1A0
  loc_BD60C3: FLdPr var_190
  loc_BD60C6:  = Me.Fields
  loc_BD60CB: FLdPr var_1A0
  loc_BD60CE: from_stack_2 = Me.Item(from_stack_1)
  loc_BD60D3: LitVarStr var_1F0, vbNullString
  loc_BD60D8: FStVarCopyObj var_128
  loc_BD60DB: FLdRfVar var_128
  loc_BD60DE: FLdZeroAd var_1B4
  loc_BD60E1: CVarAd
  loc_BD60E5: FLdI2 var_C6
  loc_BD60E8: CVarBoolI2 var_1DC
  loc_BD60EC: FLdRfVar var_204
  loc_BD60EF: ImpAdCallFPR4  = IIf(, , )
  loc_BD60F4: LitI2_Byte 0
  loc_BD60F6: LitVar_Missing var_224
  loc_BD60F9: LitI2_Byte 0
  loc_BD60FB: FLdRfVar var_D8
  loc_BD60FE: LitVarStr var_A8, "<br>"
  loc_BD6103: ConcatVar var_EC
  loc_BD6107: FLdRfVar var_204
  loc_BD610A: ConcatVar var_214
  loc_BD610E: PopAdLdVar
  loc_BD610F: FLdPr Me
  loc_BD6112: MemLdStr global_128
  loc_BD6115: FLdPr Me
  loc_BD6118: MemLdI2 global_124
  loc_BD611B: CI4UI1
  loc_BD611C: FLdPr Me
  loc_BD611F: MemLdStr global_120
  loc_BD6122: AryLock
  loc_BD6125: Ary1LdPr
  loc_BD6126: MemLdStr global_0
  loc_BD6129: AryLock
  loc_BD612C: Ary1LdPr
  loc_BD612D: MemLdRfVar from_stack_1.global_80
  loc_BD6130: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BD6135: AryUnlock
  loc_BD6138: AryUnlock
  loc_BD613B: FFreeAd var_AC = "": var_100 = "": var_12C = ""
  loc_BD6146: FFreeVar var_D8 = "": var_FC = "": var_1DC = "": var_118 = "": var_128 = "": var_EC = "": var_204 = "": var_214 = ""
  loc_BD615B: Branch loc_BD623E
  loc_BD615E: FLdI2 var_266
  loc_BD6161: LitI2_Byte 5
  loc_BD6163: EqI2
  loc_BD6164: BranchF loc_BD623E
  loc_BD6167: FLdRfVar var_100
  loc_BD616A: LitVarStr var_98, "PagaImpu"
  loc_BD616F: PopAdLdVar
  loc_BD6170: FLdRfVar var_AC
  loc_BD6173: FLdPr var_190
  loc_BD6176:  = Me.Fields
  loc_BD617B: FLdPr var_AC
  loc_BD617E: from_stack_2 = Me.Item(from_stack_1)
  loc_BD6183: LitI2_Byte 0
  loc_BD6185: FLdPr Me
  loc_BD6188: MemLdI2 global_124
  loc_BD618B: CI4UI1
  loc_BD618C: FLdPr Me
  loc_BD618F: MemLdStr global_120
  loc_BD6192: AryLock
  loc_BD6195: Ary1LdPr
  loc_BD6196: MemLdRfVar from_stack_1.global_4
  loc_BD6199: CVarRef
  loc_BD619E: LitI2_Byte &HFF
  loc_BD61A0: FLdZeroAd var_100
  loc_BD61A3: CVarAd
  loc_BD61A7: PopAdLdVar
  loc_BD61A8: FLdPr Me
  loc_BD61AB: MemLdStr global_128
  loc_BD61AE: FLdPr Me
  loc_BD61B1: MemLdI2 global_124
  loc_BD61B4: CI4UI1
  loc_BD61B5: FLdPr Me
  loc_BD61B8: MemLdStr global_120
  loc_BD61BB: AryLock
  loc_BD61BE: Ary1LdPr
  loc_BD61BF: MemLdStr global_0
  loc_BD61C2: AryLock
  loc_BD61C5: Ary1LdPr
  loc_BD61C6: MemLdRfVar from_stack_1.global_40
  loc_BD61C9: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BD61CE: AryUnlock
  loc_BD61D1: AryUnlock
  loc_BD61D4: AryUnlock
  loc_BD61D7: FFree1Ad var_AC
  loc_BD61DA: FFree1Var var_D8 = ""
  loc_BD61DD: FLdRfVar var_100
  loc_BD61E0: LitVarStr var_98, "ArchOrpa"
  loc_BD61E5: PopAdLdVar
  loc_BD61E6: FLdRfVar var_AC
  loc_BD61E9: FLdPr var_190
  loc_BD61EC:  = Me.Fields
  loc_BD61F1: FLdPr var_AC
  loc_BD61F4: from_stack_2 = Me.Item(from_stack_1)
  loc_BD61F9: LitI2_Byte 0
  loc_BD61FB: LitVar_Missing var_EC
  loc_BD61FE: LitI2_Byte 0
  loc_BD6200: FLdZeroAd var_100
  loc_BD6203: CVarAd
  loc_BD6207: PopAdLdVar
  loc_BD6208: FLdPr Me
  loc_BD620B: MemLdStr global_128
  loc_BD620E: FLdPr Me
  loc_BD6211: MemLdI2 global_124
  loc_BD6214: CI4UI1
  loc_BD6215: FLdPr Me
  loc_BD6218: MemLdStr global_120
  loc_BD621B: AryLock
  loc_BD621E: Ary1LdPr
  loc_BD621F: MemLdStr global_0
  loc_BD6222: AryLock
  loc_BD6225: Ary1LdPr
  loc_BD6226: MemLdRfVar from_stack_1.global_84
  loc_BD6229: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BD622E: AryUnlock
  loc_BD6231: AryUnlock
  loc_BD6234: FFree1Ad var_AC
  loc_BD6237: FFreeVar var_D8 = ""
  loc_BD623E: LitI4 1
  loc_BD6243: PopTmpLdAdStr var_178
  loc_BD6246: FLdPr Me
  loc_BD6249: MemLdI2 global_124
  loc_BD624C: CI4UI1
  loc_BD624D: FLdPr Me
  loc_BD6250: MemLdRfVar from_stack_1.global_88
  loc_BD6253: Ary1LdRf
  loc_BD6254: NewIfNullPr clsimputacion
  loc_BD6257: Call clsimputacion.Mover(from_stack_1v)
  loc_BD625C: LitNothing
  loc_BD625E: FStAd var_190 
  loc_BD6262: FLdPr Me
  loc_BD6265: MemLdRfVar from_stack_1.global_128
  loc_BD6268: NextI4 var_18C, loc_BD5607
  loc_BD626D: FLdPr Me
  loc_BD6270: MemLdRfVar from_stack_1.global_124
  loc_BD6273: NextI2 var_184, loc_BD55AD
  loc_BD6278: LitI2_Byte &HFF
  loc_BD627A: FLdPr Me
  loc_BD627D: MemStI2 bGenerado
  loc_BD6280: LitI4 0
  loc_BD6285: CI2I4
  loc_BD6286: FLdPr Me
  loc_BD6289: Me.MousePointer = from_stack_1
  loc_BD628E: LitVarStr var_98, vbNullString
  loc_BD6293: PopAdLdVar
  loc_BD6294: FLdPr Me
  loc_BD6297: VCallAd Control_ID_statusBar
  loc_BD629A: FStAdFunc var_AC
  loc_BD629D: FLdPr var_AC
  loc_BD62A0: LateIdSt
  loc_BD62A5: FFree1Ad var_AC
  loc_BD62A8: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'AFFD2C
  'Data Table: 4D8D94
  loc_AFF5A4: FLdRfVar var_88
  loc_AFF5A7: LitI2_Byte 0
  loc_AFF5A9: LitI2_Byte &HFF
  loc_AFF5AB: ImpAdLdI4 MemVar_C3D83C
  loc_AFF5AE: FLdPr Me
  loc_AFF5B1: MemLdRfVar from_stack_1.global_116
  loc_AFF5B4: NewIfNullPr IFileSystem3
  loc_AFF5B7: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_AFF5BC: ILdRf var_88
  loc_AFF5BF: FLdPr Me
  loc_AFF5C2: MemStVarAd
  loc_AFF5C6: FFree1Ad var_88
  loc_AFF5C9: Call Proc_253_44_B06E14()
  loc_AFF5CE: LitI2_Byte 1
  loc_AFF5D0: FLdPr Me
  loc_AFF5D3: MemLdRfVar from_stack_1.global_124
  loc_AFF5D6: LitI2_Byte 5
  loc_AFF5D8: ForI2 var_8C
  loc_AFF5DE: FLdPr Me
  loc_AFF5E1: MemLdI2 global_124
  loc_AFF5E4: CI4UI1
  loc_AFF5E5: FLdPr Me
  loc_AFF5E8: MemLdStr global_120
  loc_AFF5EB: Ary1LdPr
  loc_AFF5EC: MemLdStr global_0
  loc_AFF5EF: LitI2_Byte 1
  loc_AFF5F1: FnUBound
  loc_AFF5F3: LitI4 0
  loc_AFF5F8: GtI4
  loc_AFF5F9: BranchF loc_AFFD07
  loc_AFF5FC: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_AFF601: PopAdLdVar
  loc_AFF602: FLdPr Me
  loc_AFF605: MemLdRfVar from_stack_1.htmFile
  loc_AFF608: LdPrVar
  loc_AFF60A: LateMemCall
  loc_AFF610: FLdPr Me
  loc_AFF613: MemLdI2 global_124
  loc_AFF616: FStI2 var_AE
  loc_AFF619: FLdI2 var_AE
  loc_AFF61C: LitI2_Byte 3
  loc_AFF61E: EqI2
  loc_AFF61F: BranchF loc_AFF673
  loc_AFF622: LitStr "   <td colspan=""1"" align=""left"" class=""Encabezado"">Etapa:&nbsp;"
  loc_AFF625: LitStr "Devengado"
  loc_AFF628: ConcatStr
  loc_AFF629: FStStrNoPop var_B4
  loc_AFF62C: LitStr "</td>"
  loc_AFF62F: ConcatStr
  loc_AFF630: CVarStr var_C4
  loc_AFF633: PopAdLdVar
  loc_AFF634: FLdPr Me
  loc_AFF637: MemLdRfVar from_stack_1.htmFile
  loc_AFF63A: LdPrVar
  loc_AFF63C: LateMemCall
  loc_AFF642: FFree1Str var_B4
  loc_AFF645: FFree1Var var_C4 = ""
  loc_AFF648: LitVarStr var_9C, "   <td colspan=""3"">&nbsp;</td>"
  loc_AFF64D: PopAdLdVar
  loc_AFF64E: FLdPr Me
  loc_AFF651: MemLdRfVar from_stack_1.htmFile
  loc_AFF654: LdPrVar
  loc_AFF656: LateMemCall
  loc_AFF65C: LitVarStr var_9C, "   <td class=""Encabezado"" colspan=""1"" align=""center"">O.C./It./Al./Rec.<br>Factura</td>"
  loc_AFF661: PopAdLdVar
  loc_AFF662: FLdPr Me
  loc_AFF665: MemLdRfVar from_stack_1.htmFile
  loc_AFF668: LdPrVar
  loc_AFF66A: LateMemCall
  loc_AFF670: Branch loc_AFF724
  loc_AFF673: FLdI2 var_AE
  loc_AFF676: LitI2_Byte 4
  loc_AFF678: EqI2
  loc_AFF679: BranchF loc_AFF6CD
  loc_AFF67C: LitStr "   <td colspan=""1"" align=""left"" class=""Encabezado"">Etapa:&nbsp;"
  loc_AFF67F: LitStr "Mandado a Pagar"
  loc_AFF682: ConcatStr
  loc_AFF683: FStStrNoPop var_B4
  loc_AFF686: LitStr "</td>"
  loc_AFF689: ConcatStr
  loc_AFF68A: CVarStr var_C4
  loc_AFF68D: PopAdLdVar
  loc_AFF68E: FLdPr Me
  loc_AFF691: MemLdRfVar from_stack_1.htmFile
  loc_AFF694: LdPrVar
  loc_AFF696: LateMemCall
  loc_AFF69C: FFree1Str var_B4
  loc_AFF69F: FFree1Var var_C4 = ""
  loc_AFF6A2: LitVarStr var_9C, "   <td colspan=""3"">&nbsp;</td>"
  loc_AFF6A7: PopAdLdVar
  loc_AFF6A8: FLdPr Me
  loc_AFF6AB: MemLdRfVar from_stack_1.htmFile
  loc_AFF6AE: LdPrVar
  loc_AFF6B0: LateMemCall
  loc_AFF6B6: LitVarStr var_9C, "   <td class=""Encabezado"" colspan=""1"" align=""center"">O.P.<br>Fecha Remisión</td>"
  loc_AFF6BB: PopAdLdVar
  loc_AFF6BC: FLdPr Me
  loc_AFF6BF: MemLdRfVar from_stack_1.htmFile
  loc_AFF6C2: LdPrVar
  loc_AFF6C4: LateMemCall
  loc_AFF6CA: Branch loc_AFF724
  loc_AFF6CD: FLdI2 var_AE
  loc_AFF6D0: LitI2_Byte 5
  loc_AFF6D2: EqI2
  loc_AFF6D3: BranchF loc_AFF724
  loc_AFF6D6: LitStr "   <td colspan=""1"" align=""left"" class=""Encabezado"">Etapa:&nbsp;"
  loc_AFF6D9: LitStr "Pagado"
  loc_AFF6DC: ConcatStr
  loc_AFF6DD: FStStrNoPop var_B4
  loc_AFF6E0: LitStr "</td>"
  loc_AFF6E3: ConcatStr
  loc_AFF6E4: CVarStr var_C4
  loc_AFF6E7: PopAdLdVar
  loc_AFF6E8: FLdPr Me
  loc_AFF6EB: MemLdRfVar from_stack_1.htmFile
  loc_AFF6EE: LdPrVar
  loc_AFF6F0: LateMemCall
  loc_AFF6F6: FFree1Str var_B4
  loc_AFF6F9: FFree1Var var_C4 = ""
  loc_AFF6FC: LitVarStr var_9C, "   <td colspan=""3"">&nbsp;</td>"
  loc_AFF701: PopAdLdVar
  loc_AFF702: FLdPr Me
  loc_AFF705: MemLdRfVar from_stack_1.htmFile
  loc_AFF708: LdPrVar
  loc_AFF70A: LateMemCall
  loc_AFF710: LitVarStr var_9C, "   <td class=""Encabezado"" colspan=""1"" align=""center"">Arch.</td>"
  loc_AFF715: PopAdLdVar
  loc_AFF716: FLdPr Me
  loc_AFF719: MemLdRfVar from_stack_1.htmFile
  loc_AFF71C: LdPrVar
  loc_AFF71E: LateMemCall
  loc_AFF724: LitVarStr var_9C, "   <td colspan=""6"">&nbsp;</td>"
  loc_AFF729: PopAdLdVar
  loc_AFF72A: FLdPr Me
  loc_AFF72D: MemLdRfVar from_stack_1.htmFile
  loc_AFF730: LdPrVar
  loc_AFF732: LateMemCall
  loc_AFF738: LitVarStr var_9C, " </tr>"
  loc_AFF73D: PopAdLdVar
  loc_AFF73E: FLdPr Me
  loc_AFF741: MemLdRfVar from_stack_1.htmFile
  loc_AFF744: LdPrVar
  loc_AFF746: LateMemCall
  loc_AFF74C: FLdRfVar var_C6
  loc_AFF74F: FLdPr Me
  loc_AFF752: VCallAd Control_ID_SinteticoChk
  loc_AFF755: FStAdFunc var_88
  loc_AFF758: FLdPr var_88
  loc_AFF75B:  = Me.Value
  loc_AFF760: FLdI2 var_C6
  loc_AFF763: CI4UI1
  loc_AFF764: LitI4 0
  loc_AFF769: EqI4
  loc_AFF76A: FFree1Ad var_88
  loc_AFF76D: BranchF loc_AFFBB5
  loc_AFF770: LitI4 1
  loc_AFF775: FLdPr Me
  loc_AFF778: MemLdRfVar from_stack_1.global_128
  loc_AFF77B: FLdPr Me
  loc_AFF77E: MemLdI2 global_124
  loc_AFF781: CI4UI1
  loc_AFF782: FLdPr Me
  loc_AFF785: MemLdStr global_120
  loc_AFF788: Ary1LdPr
  loc_AFF789: MemLdStr global_0
  loc_AFF78C: LitI2_Byte 1
  loc_AFF78E: FnUBound
  loc_AFF790: ForI4 var_D0
  loc_AFF796: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_AFF79B: PopAdLdVar
  loc_AFF79C: FLdPr Me
  loc_AFF79F: MemLdRfVar from_stack_1.htmFile
  loc_AFF7A2: LdPrVar
  loc_AFF7A4: LateMemCall
  loc_AFF7AA: FLdPr Me
  loc_AFF7AD: MemLdStr global_128
  loc_AFF7B0: FLdPr Me
  loc_AFF7B3: MemLdI2 global_124
  loc_AFF7B6: CI4UI1
  loc_AFF7B7: FLdPr Me
  loc_AFF7BA: MemLdStr global_120
  loc_AFF7BD: AryLock
  loc_AFF7C0: Ary1LdPr
  loc_AFF7C1: MemLdStr global_0
  loc_AFF7C4: AryLock
  loc_AFF7C7: Ary1LdRf
  loc_AFF7C8: FStR4 var_DC
  loc_AFF7CB: LitI4 0
  loc_AFF7D0: LitI4 0
  loc_AFF7D5: LitI2_Byte 0
  loc_AFF7D7: LitStr "left"
  loc_AFF7DA: FMemLdR4 var_DC(0)
  loc_AFF7DF: LitStr "<br>"
  loc_AFF7E2: ConcatStr
  loc_AFF7E3: FStStrNoPop var_B4
  loc_AFF7E6: FMemLdR4 var_DC(4)
  loc_AFF7EB: ConcatStr
  loc_AFF7EC: FStStrNoPop var_E0
  loc_AFF7EF: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AFF7F4: CVarStr var_C4
  loc_AFF7F7: PopAdLdVar
  loc_AFF7F8: FLdPr Me
  loc_AFF7FB: MemLdRfVar from_stack_1.htmFile
  loc_AFF7FE: LdPrVar
  loc_AFF800: LateMemCall
  loc_AFF806: FFreeStr var_B4 = ""
  loc_AFF80D: FFree1Var var_C4 = ""
  loc_AFF810: LitI4 0
  loc_AFF815: LitI4 0
  loc_AFF81A: LitI2_Byte 0
  loc_AFF81C: LitStr "left"
  loc_AFF81F: FMemLdR4 var_DC(8)
  loc_AFF824: LitStr "<br>"
  loc_AFF827: ConcatStr
  loc_AFF828: FStStrNoPop var_B4
  loc_AFF82B: FMemLdR4 var_DC(12)
  loc_AFF830: ConcatStr
  loc_AFF831: FStStrNoPop var_E0
  loc_AFF834: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AFF839: CVarStr var_C4
  loc_AFF83C: PopAdLdVar
  loc_AFF83D: FLdPr Me
  loc_AFF840: MemLdRfVar from_stack_1.htmFile
  loc_AFF843: LdPrVar
  loc_AFF845: LateMemCall
  loc_AFF84B: FFreeStr var_B4 = ""
  loc_AFF852: FFree1Var var_C4 = ""
  loc_AFF855: LitI4 0
  loc_AFF85A: LitI4 0
  loc_AFF85F: LitI2_Byte 0
  loc_AFF861: LitStr "left"
  loc_AFF864: FMemLdR4 var_DC(16)
  loc_AFF869: LitStr "<br>"
  loc_AFF86C: ConcatStr
  loc_AFF86D: FStStrNoPop var_B4
  loc_AFF870: FMemLdR4 var_DC(20)
  loc_AFF875: ConcatStr
  loc_AFF876: FStStrNoPop var_E0
  loc_AFF879: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AFF87E: CVarStr var_C4
  loc_AFF881: PopAdLdVar
  loc_AFF882: FLdPr Me
  loc_AFF885: MemLdRfVar from_stack_1.htmFile
  loc_AFF888: LdPrVar
  loc_AFF88A: LateMemCall
  loc_AFF890: FFreeStr var_B4 = ""
  loc_AFF897: FFree1Var var_C4 = ""
  loc_AFF89A: LitI4 0
  loc_AFF89F: LitI4 0
  loc_AFF8A4: LitI2_Byte 0
  loc_AFF8A6: LitStr "left"
  loc_AFF8A9: FMemLdR4 var_DC(24)
  loc_AFF8AE: LitStr "<br>"
  loc_AFF8B1: ConcatStr
  loc_AFF8B2: FStStrNoPop var_B4
  loc_AFF8B5: LitStr "Exp.Orig.:"
  loc_AFF8B8: ConcatStr
  loc_AFF8B9: FStStrNoPop var_E0
  loc_AFF8BC: FMemLdR4 var_DC(28)
  loc_AFF8C1: ConcatStr
  loc_AFF8C2: FStStrNoPop var_E4
  loc_AFF8C5: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AFF8CA: CVarStr var_C4
  loc_AFF8CD: PopAdLdVar
  loc_AFF8CE: FLdPr Me
  loc_AFF8D1: MemLdRfVar from_stack_1.htmFile
  loc_AFF8D4: LdPrVar
  loc_AFF8D6: LateMemCall
  loc_AFF8DC: FFreeStr var_B4 = "": var_E0 = ""
  loc_AFF8E5: FFree1Var var_C4 = ""
  loc_AFF8E8: FLdPr Me
  loc_AFF8EB: MemLdI2 global_124
  loc_AFF8EE: FStI2 var_E6
  loc_AFF8F1: FLdI2 var_E6
  loc_AFF8F4: LitI2_Byte 1
  loc_AFF8F6: EqI2
  loc_AFF8F7: BranchF loc_AFF942
  loc_AFF8FA: LitI4 0
  loc_AFF8FF: LitI4 0
  loc_AFF904: LitI2_Byte 0
  loc_AFF906: LitStr "center"
  loc_AFF909: FMemLdR4 var_DC(52)
  loc_AFF90E: LitStr "/"
  loc_AFF911: ConcatStr
  loc_AFF912: FStStrNoPop var_B4
  loc_AFF915: FMemLdR4 var_DC(56)
  loc_AFF91A: ConcatStr
  loc_AFF91B: FStStrNoPop var_E0
  loc_AFF91E: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AFF923: CVarStr var_C4
  loc_AFF926: PopAdLdVar
  loc_AFF927: FLdPr Me
  loc_AFF92A: MemLdRfVar from_stack_1.htmFile
  loc_AFF92D: LdPrVar
  loc_AFF92F: LateMemCall
  loc_AFF935: FFreeStr var_B4 = ""
  loc_AFF93C: FFree1Var var_C4 = ""
  loc_AFF93F: Branch loc_AFFAB9
  loc_AFF942: FLdI2 var_E6
  loc_AFF945: LitI2_Byte 2
  loc_AFF947: EqI2
  loc_AFF948: BranchF loc_AFF9A7
  loc_AFF94B: LitI4 0
  loc_AFF950: LitI4 0
  loc_AFF955: LitI2_Byte 0
  loc_AFF957: LitStr "center"
  loc_AFF95A: FMemLdR4 var_DC(60)
  loc_AFF95F: LitStr "/"
  loc_AFF962: ConcatStr
  loc_AFF963: FStStrNoPop var_B4
  loc_AFF966: FMemLdR4 var_DC(56)
  loc_AFF96B: ConcatStr
  loc_AFF96C: FStStrNoPop var_E0
  loc_AFF96F: LitStr "/"
  loc_AFF972: ConcatStr
  loc_AFF973: FStStrNoPop var_E4
  loc_AFF976: FMemLdR4 var_DC(64)
  loc_AFF97B: ConcatStr
  loc_AFF97C: FStStrNoPop var_EC
  loc_AFF97F: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AFF984: CVarStr var_C4
  loc_AFF987: PopAdLdVar
  loc_AFF988: FLdPr Me
  loc_AFF98B: MemLdRfVar from_stack_1.htmFile
  loc_AFF98E: LdPrVar
  loc_AFF990: LateMemCall
  loc_AFF996: FFreeStr var_B4 = "": var_E0 = "": var_E4 = ""
  loc_AFF9A1: FFree1Var var_C4 = ""
  loc_AFF9A4: Branch loc_AFFAB9
  loc_AFF9A7: FLdI2 var_E6
  loc_AFF9AA: LitI2_Byte 3
  loc_AFF9AC: EqI2
  loc_AFF9AD: BranchF loc_AFFA48
  loc_AFF9B0: LitI4 0
  loc_AFF9B5: LitI4 0
  loc_AFF9BA: LitI2_Byte 0
  loc_AFF9BC: LitStr "center"
  loc_AFF9BF: FMemLdR4 var_DC(60)
  loc_AFF9C4: LitStr "/"
  loc_AFF9C7: ConcatStr
  loc_AFF9C8: FStStrNoPop var_B4
  loc_AFF9CB: FMemLdR4 var_DC(56)
  loc_AFF9D0: ConcatStr
  loc_AFF9D1: FStStrNoPop var_E0
  loc_AFF9D4: LitStr "/"
  loc_AFF9D7: ConcatStr
  loc_AFF9D8: FStStrNoPop var_E4
  loc_AFF9DB: FMemLdR4 var_DC(64)
  loc_AFF9E0: ConcatStr
  loc_AFF9E1: FStStrNoPop var_EC
  loc_AFF9E4: LitStr "/"
  loc_AFF9E7: ConcatStr
  loc_AFF9E8: FStStrNoPop var_F0
  loc_AFF9EB: FMemLdR4 var_DC(68)
  loc_AFF9F0: ConcatStr
  loc_AFF9F1: FStStrNoPop var_F4
  loc_AFF9F4: LitStr "<br>"
  loc_AFF9F7: ConcatStr
  loc_AFF9F8: FStStrNoPop var_F8
  loc_AFF9FB: FMemLdR4 var_DC(72)
  loc_AFFA00: ConcatStr
  loc_AFFA01: FStStrNoPop var_FC
  loc_AFFA04: LitStr "<br>"
  loc_AFFA07: ConcatStr
  loc_AFFA08: FStStrNoPop var_100
  loc_AFFA0B: FMemLdR4 var_DC(76)
  loc_AFFA10: ConcatStr
  loc_AFFA11: FStStrNoPop var_104
  loc_AFFA14: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AFFA19: CVarStr var_C4
  loc_AFFA1C: PopAdLdVar
  loc_AFFA1D: FLdPr Me
  loc_AFFA20: MemLdRfVar from_stack_1.htmFile
  loc_AFFA23: LdPrVar
  loc_AFFA25: LateMemCall
  loc_AFFA2B: FFreeStr var_B4 = "": var_E0 = "": var_E4 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = ""
  loc_AFFA42: FFree1Var var_C4 = ""
  loc_AFFA45: Branch loc_AFFAB9
  loc_AFFA48: FLdI2 var_E6
  loc_AFFA4B: LitI2_Byte 4
  loc_AFFA4D: EqI2
  loc_AFFA4E: BranchF loc_AFFA82
  loc_AFFA51: LitI4 0
  loc_AFFA56: LitI4 0
  loc_AFFA5B: LitI2_Byte 0
  loc_AFFA5D: LitStr "center"
  loc_AFFA60: FMemLdR4 var_DC(80)
  loc_AFFA65: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AFFA6A: CVarStr var_C4
  loc_AFFA6D: PopAdLdVar
  loc_AFFA6E: FLdPr Me
  loc_AFFA71: MemLdRfVar from_stack_1.htmFile
  loc_AFFA74: LdPrVar
  loc_AFFA76: LateMemCall
  loc_AFFA7C: FFree1Var var_C4 = ""
  loc_AFFA7F: Branch loc_AFFAB9
  loc_AFFA82: FLdI2 var_E6
  loc_AFFA85: LitI2_Byte 5
  loc_AFFA87: EqI2
  loc_AFFA88: BranchF loc_AFFAB9
  loc_AFFA8B: LitI4 0
  loc_AFFA90: LitI4 0
  loc_AFFA95: LitI2_Byte 0
  loc_AFFA97: LitStr "center"
  loc_AFFA9A: FMemLdR4 var_DC(84)
  loc_AFFA9F: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AFFAA4: CVarStr var_C4
  loc_AFFAA7: PopAdLdVar
  loc_AFFAA8: FLdPr Me
  loc_AFFAAB: MemLdRfVar from_stack_1.htmFile
  loc_AFFAAE: LdPrVar
  loc_AFFAB0: LateMemCall
  loc_AFFAB6: FFree1Var var_C4 = ""
  loc_AFFAB9: LitI4 0
  loc_AFFABE: LitI4 0
  loc_AFFAC3: LitI2_Byte 0
  loc_AFFAC5: LitStr "left"
  loc_AFFAC8: FMemLdR4 var_DC(32)
  loc_AFFACD: LitStr "<br>"
  loc_AFFAD0: ConcatStr
  loc_AFFAD1: FStStrNoPop var_B4
  loc_AFFAD4: FMemLdR4 var_DC(36)
  loc_AFFAD9: ConcatStr
  loc_AFFADA: FStStrNoPop var_E0
  loc_AFFADD: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AFFAE2: CVarStr var_C4
  loc_AFFAE5: PopAdLdVar
  loc_AFFAE6: FLdPr Me
  loc_AFFAE9: MemLdRfVar from_stack_1.htmFile
  loc_AFFAEC: LdPrVar
  loc_AFFAEE: LateMemCall
  loc_AFFAF4: FFreeStr var_B4 = ""
  loc_AFFAFB: FFree1Var var_C4 = ""
  loc_AFFAFE: LitI4 0
  loc_AFFB03: LitI4 0
  loc_AFFB08: LitI2_Byte 0
  loc_AFFB0A: LitStr "right"
  loc_AFFB0D: FMemLdR4 var_DC(40)
  loc_AFFB12: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AFFB17: CVarStr var_C4
  loc_AFFB1A: PopAdLdVar
  loc_AFFB1B: FLdPr Me
  loc_AFFB1E: MemLdRfVar from_stack_1.htmFile
  loc_AFFB21: LdPrVar
  loc_AFFB23: LateMemCall
  loc_AFFB29: FFree1Var var_C4 = ""
  loc_AFFB2C: LitI4 0
  loc_AFFB31: LitI4 0
  loc_AFFB36: LitI2_Byte 0
  loc_AFFB38: LitStr "center"
  loc_AFFB3B: FMemLdR4 var_DC(44)
  loc_AFFB40: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AFFB45: CVarStr var_C4
  loc_AFFB48: PopAdLdVar
  loc_AFFB49: FLdPr Me
  loc_AFFB4C: MemLdRfVar from_stack_1.htmFile
  loc_AFFB4F: LdPrVar
  loc_AFFB51: LateMemCall
  loc_AFFB57: FFree1Var var_C4 = ""
  loc_AFFB5A: LitI4 0
  loc_AFFB5F: LitI4 0
  loc_AFFB64: LitI2_Byte 0
  loc_AFFB66: LitStr "left"
  loc_AFFB69: FMemLdR4 var_DC(48)
  loc_AFFB6E: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AFFB73: CVarStr var_C4
  loc_AFFB76: PopAdLdVar
  loc_AFFB77: FLdPr Me
  loc_AFFB7A: MemLdRfVar from_stack_1.htmFile
  loc_AFFB7D: LdPrVar
  loc_AFFB7F: LateMemCall
  loc_AFFB85: FFree1Var var_C4 = ""
  loc_AFFB88: LitI4 0
  loc_AFFB8D: FStR4 var_DC
  loc_AFFB90: AryUnlock
  loc_AFFB93: AryUnlock
  loc_AFFB96: LitVarStr var_9C, "     </tr>"
  loc_AFFB9B: PopAdLdVar
  loc_AFFB9C: FLdPr Me
  loc_AFFB9F: MemLdRfVar from_stack_1.htmFile
  loc_AFFBA2: LdPrVar
  loc_AFFBA4: LateMemCall
  loc_AFFBAA: FLdPr Me
  loc_AFFBAD: MemLdRfVar from_stack_1.global_128
  loc_AFFBB0: NextI4 var_D0, loc_AFF796
  loc_AFFBB5: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_AFFBBA: PopAdLdVar
  loc_AFFBBB: FLdPr Me
  loc_AFFBBE: MemLdRfVar from_stack_1.htmFile
  loc_AFFBC1: LdPrVar
  loc_AFFBC3: LateMemCall
  loc_AFFBC9: LitVarStr var_9C, "     <th colspan=""5"" align=""left"">&nbsp;</th>"
  loc_AFFBCE: PopAdLdVar
  loc_AFFBCF: FLdPr Me
  loc_AFFBD2: MemLdRfVar from_stack_1.htmFile
  loc_AFFBD5: LdPrVar
  loc_AFFBD7: LateMemCall
  loc_AFFBDD: FLdPr Me
  loc_AFFBE0: MemLdI2 global_124
  loc_AFFBE3: FStI2 var_106
  loc_AFFBE6: FLdI2 var_106
  loc_AFFBE9: LitI2_Byte 3
  loc_AFFBEB: EqI2
  loc_AFFBEC: BranchF loc_AFFC3A
  loc_AFFBEF: LitVarStr var_9C, "     <td class=""Totales"">Total Devengado:</td>"
  loc_AFFBF4: PopAdLdVar
  loc_AFFBF5: FLdPr Me
  loc_AFFBF8: MemLdRfVar from_stack_1.htmFile
  loc_AFFBFB: LdPrVar
  loc_AFFBFD: LateMemCall
  loc_AFFC03: LitStr "        <td align=""right"" class=""Totales"">"
  loc_AFFC06: FLdPr Me
  loc_AFFC09: MemLdI2 global_124
  loc_AFFC0C: CI4UI1
  loc_AFFC0D: FLdPr Me
  loc_AFFC10: MemLdStr global_120
  loc_AFFC13: Ary1LdPr
  loc_AFFC14: MemLdStr global_4
  loc_AFFC17: ConcatStr
  loc_AFFC18: FStStrNoPop var_B4
  loc_AFFC1B: LitStr "</td>"
  loc_AFFC1E: ConcatStr
  loc_AFFC1F: CVarStr var_C4
  loc_AFFC22: PopAdLdVar
  loc_AFFC23: FLdPr Me
  loc_AFFC26: MemLdRfVar from_stack_1.htmFile
  loc_AFFC29: LdPrVar
  loc_AFFC2B: LateMemCall
  loc_AFFC31: FFree1Str var_B4
  loc_AFFC34: FFree1Var var_C4 = ""
  loc_AFFC37: Branch loc_AFFCDF
  loc_AFFC3A: FLdI2 var_106
  loc_AFFC3D: LitI2_Byte 4
  loc_AFFC3F: EqI2
  loc_AFFC40: BranchF loc_AFFC8E
  loc_AFFC43: LitVarStr var_9C, "     <td class=""Totales"">Total Mandado a Pagar:</td>"
  loc_AFFC48: PopAdLdVar
  loc_AFFC49: FLdPr Me
  loc_AFFC4C: MemLdRfVar from_stack_1.htmFile
  loc_AFFC4F: LdPrVar
  loc_AFFC51: LateMemCall
  loc_AFFC57: LitStr "        <td align=""right"" class=""Totales"">"
  loc_AFFC5A: FLdPr Me
  loc_AFFC5D: MemLdI2 global_124
  loc_AFFC60: CI4UI1
  loc_AFFC61: FLdPr Me
  loc_AFFC64: MemLdStr global_120
  loc_AFFC67: Ary1LdPr
  loc_AFFC68: MemLdStr global_4
  loc_AFFC6B: ConcatStr
  loc_AFFC6C: FStStrNoPop var_B4
  loc_AFFC6F: LitStr "</td>"
  loc_AFFC72: ConcatStr
  loc_AFFC73: CVarStr var_C4
  loc_AFFC76: PopAdLdVar
  loc_AFFC77: FLdPr Me
  loc_AFFC7A: MemLdRfVar from_stack_1.htmFile
  loc_AFFC7D: LdPrVar
  loc_AFFC7F: LateMemCall
  loc_AFFC85: FFree1Str var_B4
  loc_AFFC88: FFree1Var var_C4 = ""
  loc_AFFC8B: Branch loc_AFFCDF
  loc_AFFC8E: FLdI2 var_106
  loc_AFFC91: LitI2_Byte 5
  loc_AFFC93: EqI2
  loc_AFFC94: BranchF loc_AFFCDF
  loc_AFFC97: LitVarStr var_9C, "     <td class=""Totales"">Total Pagado:</td>"
  loc_AFFC9C: PopAdLdVar
  loc_AFFC9D: FLdPr Me
  loc_AFFCA0: MemLdRfVar from_stack_1.htmFile
  loc_AFFCA3: LdPrVar
  loc_AFFCA5: LateMemCall
  loc_AFFCAB: LitStr "        <td align=""right"" class=""Totales"">"
  loc_AFFCAE: FLdPr Me
  loc_AFFCB1: MemLdI2 global_124
  loc_AFFCB4: CI4UI1
  loc_AFFCB5: FLdPr Me
  loc_AFFCB8: MemLdStr global_120
  loc_AFFCBB: Ary1LdPr
  loc_AFFCBC: MemLdStr global_4
  loc_AFFCBF: ConcatStr
  loc_AFFCC0: FStStrNoPop var_B4
  loc_AFFCC3: LitStr "</td>"
  loc_AFFCC6: ConcatStr
  loc_AFFCC7: CVarStr var_C4
  loc_AFFCCA: PopAdLdVar
  loc_AFFCCB: FLdPr Me
  loc_AFFCCE: MemLdRfVar from_stack_1.htmFile
  loc_AFFCD1: LdPrVar
  loc_AFFCD3: LateMemCall
  loc_AFFCD9: FFree1Str var_B4
  loc_AFFCDC: FFree1Var var_C4 = ""
  loc_AFFCDF: LitVarStr var_9C, "        <th colspan=""2"">&nbsp;</th>"
  loc_AFFCE4: PopAdLdVar
  loc_AFFCE5: FLdPr Me
  loc_AFFCE8: MemLdRfVar from_stack_1.htmFile
  loc_AFFCEB: LdPrVar
  loc_AFFCED: LateMemCall
  loc_AFFCF3: LitVarStr var_9C, "     </tr>"
  loc_AFFCF8: PopAdLdVar
  loc_AFFCF9: FLdPr Me
  loc_AFFCFC: MemLdRfVar from_stack_1.htmFile
  loc_AFFCFF: LdPrVar
  loc_AFFD01: LateMemCall
  loc_AFFD07: FLdPr Me
  loc_AFFD0A: MemLdRfVar from_stack_1.global_124
  loc_AFFD0D: NextI2 var_8C, loc_AFF5DE
  loc_AFFD12: Call Proc_253_45_9C8BA0()
  loc_AFFD17: FLdPr Me
  loc_AFFD1A: MemLdRfVar from_stack_1.htmFile
  loc_AFFD1D: LdPrVar
  loc_AFFD1F: LateMemCall
  loc_AFFD25: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_AFFD2A: ExitProcHresult
End Sub

Private Function Proc_253_43_A2348C(arg_C) 'A2348C
  'Data Table: 4D8D94
  loc_A23300: ILdRf arg_C
  loc_A23303: FStStrCopy var_88
  loc_A23306: ILdRf var_88
  loc_A23309: LitStr vbNullString
  loc_A2330C: NeStr
  loc_A2330E: BranchF loc_A23489
  loc_A23311: LitStr "SELECT IFNULL(Max(FechImpu),'') FechImpu"
  loc_A23314: LitStr " FROM imputacion"
  loc_A23317: ConcatStr
  loc_A23318: FStStrNoPop var_8C
  loc_A2331B: LitStr " WHERE PeriInfo = "
  loc_A2331E: ConcatStr
  loc_A2331F: FStStrNoPop var_98
  loc_A23322: FLdRfVar var_94
  loc_A23325: FLdPr Me
  loc_A23328: VCallAd Control_ID_cboPeriodo
  loc_A2332B: FStAdFunc var_90
  loc_A2332E: FLdPr var_90
  loc_A23331:  = Me.Text
  loc_A23336: ILdRf var_94
  loc_A23339: ConcatStr
  loc_A2333A: FStStrNoPop var_9C
  loc_A2333D: LitStr " AND ExpeImpu = '"
  loc_A23340: ConcatStr
  loc_A23341: FStStrNoPop var_A0
  loc_A23344: ILdRf var_88
  loc_A23347: ConcatStr
  loc_A23348: FStStrNoPop var_A4
  loc_A2334B: LitStr "' LIMIT 1;"
  loc_A2334E: ConcatStr
  loc_A2334F: FStStrNoPop var_A8
  loc_A23352: FLdPr Me
  loc_A23355: MemLdRfVar from_stack_1.global_112
  loc_A23358: NewIfNullPr clsimputacion
  loc_A2335B: Call clsimputacion.RedefineRS(from_stack_1v)
  loc_A23360: FFreeStr var_8C = "": var_98 = "": var_94 = "": var_9C = "": var_A0 = "": var_A4 = ""
  loc_A23371: FFree1Ad var_90
  loc_A23374: FLdRfVar var_AC
  loc_A23377: FLdPr Me
  loc_A2337A: MemLdRfVar from_stack_1.global_112
  loc_A2337D: NewIfNullPr clsimputacion
  loc_A23380: from_stack_1 = clsimputacion.RecordCount
  loc_A23385: ILdRf var_AC
  loc_A23388: LitI4 0
  loc_A2338D: GtI4
  loc_A2338E: BranchF loc_A23489
  loc_A23391: FLdPr Me
  loc_A23394: MemLdRfVar from_stack_1.global_112
  loc_A23397: NewIfNullPr clsimputacion
  loc_A2339A: Call clsimputacion.MoveFirst()
  loc_A2339F: FLdRfVar var_D4
  loc_A233A2: FLdRfVar var_C4
  loc_A233A5: LitVarStr var_C0, "FechImpu"
  loc_A233AA: PopAdLdVar
  loc_A233AB: FLdRfVar var_B0
  loc_A233AE: FLdRfVar var_90
  loc_A233B1: FLdPr Me
  loc_A233B4: MemLdRfVar from_stack_1.global_112
  loc_A233B7: NewIfNullPr clsimputacion
  loc_A233BA: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A233BF: FLdPr var_90
  loc_A233C2:  = Me.Fields
  loc_A233C7: FLdPr var_B0
  loc_A233CA: from_stack_2 = Me.Item(from_stack_1)
  loc_A233CF: FLdPr var_C4
  loc_A233D2:  = Me.Value
  loc_A233D7: FLdRfVar var_D4
  loc_A233DA: LitVarStr var_E4, vbNullString
  loc_A233DF: HardType
  loc_A233E0: EqVarBool
  loc_A233E2: FFreeAd var_90 = "": var_B0 = ""
  loc_A233EB: FFree1Var var_D4 = ""
  loc_A233EE: BranchF loc_A23414
  loc_A233F1: ImpAdLdFPR8 MemVar_C3D04C
  loc_A233F4: CStrDate
  loc_A233F6: CVarStr var_D4
  loc_A233F9: PopAdLdVar
  loc_A233FA: FLdPr Me
  loc_A233FD: VCallAd Control_ID_mskHasta
  loc_A23400: FStAdFunc var_90
  loc_A23403: FLdPr var_90
  loc_A23406: LateIdSt
  loc_A2340B: FFree1Ad var_90
  loc_A2340E: FFree1Var var_D4 = ""
  loc_A23411: Branch loc_A23489
  loc_A23414: FLdRfVar var_C4
  loc_A23417: LitVarStr var_C0, "FechImpu"
  loc_A2341C: PopAdLdVar
  loc_A2341D: FLdRfVar var_B0
  loc_A23420: FLdRfVar var_90
  loc_A23423: FLdPr Me
  loc_A23426: MemLdRfVar from_stack_1.global_112
  loc_A23429: NewIfNullPr clsimputacion
  loc_A2342C: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A23431: FLdPr var_90
  loc_A23434:  = Me.Fields
  loc_A23439: FLdPr var_B0
  loc_A2343C: from_stack_2 = Me.Item(from_stack_1)
  loc_A23441: LitI4 1
  loc_A23446: LitI4 1
  loc_A2344B: LitVarStr var_E4, "dd-mm-yyyy"
  loc_A23450: FStVarCopyObj var_F4
  loc_A23453: FLdRfVar var_F4
  loc_A23456: FLdZeroAd var_C4
  loc_A23459: CVarAd
  loc_A2345D: ImpAdCallI2 Format$(, )
  loc_A23462: CVarStr var_104
  loc_A23465: PopAdLdVar
  loc_A23466: FLdPr Me
  loc_A23469: VCallAd Control_ID_mskHasta
  loc_A2346C: FStAdFunc var_118
  loc_A2346F: FLdPr var_118
  loc_A23472: LateIdSt
  loc_A23477: FFreeAd var_90 = "": var_B0 = ""
  loc_A23480: FFreeVar var_D4 = "": var_F4 = ""
  loc_A23489: ExitProcHresult
End Function

Private Function Proc_253_44_B06E14() 'B06E14
  'Data Table: 4D8D94
  loc_B0664C: LitVarStr var_94, "<html>"
  loc_B06651: PopAdLdVar
  loc_B06652: FLdPr Me
  loc_B06655: MemLdRfVar from_stack_1.htmFile
  loc_B06658: LdPrVar
  loc_B0665A: LateMemCall
  loc_B06660: LitVarStr var_94, "<head>"
  loc_B06665: PopAdLdVar
  loc_B06666: FLdPr Me
  loc_B06669: MemLdRfVar from_stack_1.htmFile
  loc_B0666C: LdPrVar
  loc_B0666E: LateMemCall
  loc_B06674: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_B06679: PopAdLdVar
  loc_B0667A: FLdPr Me
  loc_B0667D: MemLdRfVar from_stack_1.htmFile
  loc_B06680: LdPrVar
  loc_B06682: LateMemCall
  loc_B06688: LitStr "<title>"
  loc_B0668B: FLdRfVar var_A8
  loc_B0668E: FLdPr Me
  loc_B06691:  = Me.Caption
  loc_B06696: ILdRf var_A8
  loc_B06699: ConcatStr
  loc_B0669A: FStStrNoPop var_AC
  loc_B0669D: LitStr "</title>"
  loc_B066A0: ConcatStr
  loc_B066A1: CVarStr var_BC
  loc_B066A4: PopAdLdVar
  loc_B066A5: FLdPr Me
  loc_B066A8: MemLdRfVar from_stack_1.htmFile
  loc_B066AB: LdPrVar
  loc_B066AD: LateMemCall
  loc_B066B3: FFreeStr var_A8 = ""
  loc_B066BA: FFree1Var var_BC = ""
  loc_B066BD: LitStr vbNullString
  loc_B066C0: ILdRf Me
  loc_B066C3: CastAd
  loc_B066C6: FStAdFunc var_C0
  loc_B066C9: FLdRfVar var_C0
  loc_B066CC: ImpAdCallFPR4 Proc_263_23_B3DAB8(, )
  loc_B066D1: FFree1Ad var_C0
  loc_B066D4: LitI4 0
  loc_B066D9: FStStrCopy var_AC
  loc_B066DC: FLdRfVar var_AC
  loc_B066DF: LitI4 0
  loc_B066E4: FStStrCopy var_A8
  loc_B066E7: FLdRfVar var_A8
  loc_B066EA: LitI2_Byte &HFF
  loc_B066EC: PopTmpLdAd2 var_C2
  loc_B066EF: FLdPr Me
  loc_B066F2: MemLdRfVar from_stack_1.htmFile
  loc_B066F5: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_B066FA: FFreeStr var_A8 = ""
  loc_B06701: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_B06706: PopAdLdVar
  loc_B06707: FLdPr Me
  loc_B0670A: MemLdRfVar from_stack_1.htmFile
  loc_B0670D: LdPrVar
  loc_B0670F: LateMemCall
  loc_B06715: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_B0671A: PopAdLdVar
  loc_B0671B: FLdPr Me
  loc_B0671E: MemLdRfVar from_stack_1.htmFile
  loc_B06721: LdPrVar
  loc_B06723: LateMemCall
  loc_B06729: LitVarStr var_94, "    <th colspan=""2"" align=""center"" valign=""middle""><p align=""center"" class=""Titulo1""><img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>"
  loc_B0672E: PopAdLdVar
  loc_B0672F: FLdPr Me
  loc_B06732: MemLdRfVar from_stack_1.htmFile
  loc_B06735: LdPrVar
  loc_B06737: LateMemCall
  loc_B0673D: LitVarStr var_A4, "        "
  loc_B06742: LitVarStr var_94, "Municipalidad de Guaymallén"
  loc_B06747: FStVarCopyObj var_BC
  loc_B0674A: FLdRfVar var_BC
  loc_B0674D: FLdRfVar var_D4
  loc_B06750: ImpAdCallFPR4  = Ucase()
  loc_B06755: FLdRfVar var_D4
  loc_B06758: ConcatVar var_E4
  loc_B0675C: LitVarStr var_F4, " </p>"
  loc_B06761: ConcatVar var_104
  loc_B06765: PopAdLdVar
  loc_B06766: FLdPr Me
  loc_B06769: MemLdRfVar from_stack_1.htmFile
  loc_B0676C: LdPrVar
  loc_B0676E: LateMemCall
  loc_B06774: FFreeVar var_BC = "": var_D4 = "": var_E4 = ""
  loc_B0677F: FLdRfVar var_C2
  loc_B06782: FLdPr Me
  loc_B06785: VCallAd Control_ID_SinteticoChk
  loc_B06788: FStAdFunc var_C0
  loc_B0678B: FLdPr var_C0
  loc_B0678E:  = Me.Value
  loc_B06793: LitStr "        <p align=""center"">"
  loc_B06796: FLdRfVar var_A8
  loc_B06799: FLdPr Me
  loc_B0679C:  = Me.Caption
  loc_B067A1: ILdRf var_A8
  loc_B067A4: ConcatStr
  loc_B067A5: CVarStr var_104
  loc_B067A8: LitVarStr var_F4, vbNullString
  loc_B067AD: FStVarCopyObj var_D4
  loc_B067B0: FLdRfVar var_D4
  loc_B067B3: LitVarStr var_A4, " Sintético"
  loc_B067B8: FStVarCopyObj var_BC
  loc_B067BB: FLdRfVar var_BC
  loc_B067BE: FLdI2 var_C2
  loc_B067C1: CI4UI1
  loc_B067C2: LitI4 1
  loc_B067C7: EqI4
  loc_B067C8: CVarBoolI2 var_94
  loc_B067CC: FLdRfVar var_E4
  loc_B067CF: ImpAdCallFPR4  = IIf(, , )
  loc_B067D4: FLdRfVar var_E4
  loc_B067D7: ConcatVar var_124
  loc_B067DB: LitVarStr var_114, "</p></th>"
  loc_B067E0: ConcatVar var_134
  loc_B067E4: PopAdLdVar
  loc_B067E5: FLdPr Me
  loc_B067E8: MemLdRfVar from_stack_1.htmFile
  loc_B067EB: LdPrVar
  loc_B067ED: LateMemCall
  loc_B067F3: FFree1Str var_A8
  loc_B067F6: FFree1Ad var_C0
  loc_B067F9: FFreeVar var_94 = "": var_BC = "": var_D4 = "": var_104 = "": var_E4 = "": var_124 = ""
  loc_B0680A: LitVarStr var_94, "  </tr>"
  loc_B0680F: PopAdLdVar
  loc_B06810: FLdPr Me
  loc_B06813: MemLdRfVar from_stack_1.htmFile
  loc_B06816: LdPrVar
  loc_B06818: LateMemCall
  loc_B0681E: LitVarStr var_94, "  <tr><th colspan=""2""><hr></th></tr>"
  loc_B06823: PopAdLdVar
  loc_B06824: FLdPr Me
  loc_B06827: MemLdRfVar from_stack_1.htmFile
  loc_B0682A: LdPrVar
  loc_B0682C: LateMemCall
  loc_B06832: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_B06837: PopAdLdVar
  loc_B06838: FLdPr Me
  loc_B0683B: MemLdRfVar from_stack_1.htmFile
  loc_B0683E: LdPrVar
  loc_B06840: LateMemCall
  loc_B06846: LitStr "    <th align=""right"" valign=""bottom"">Periodo: "
  loc_B06849: FLdRfVar var_A8
  loc_B0684C: FLdPr Me
  loc_B0684F: VCallAd Control_ID_cboPeriodo
  loc_B06852: FStAdFunc var_C0
  loc_B06855: FLdPr var_C0
  loc_B06858:  = Me.Text
  loc_B0685D: ILdRf var_A8
  loc_B06860: ConcatStr
  loc_B06861: FStStrNoPop var_AC
  loc_B06864: LitStr "</th>"
  loc_B06867: ConcatStr
  loc_B06868: CVarStr var_BC
  loc_B0686B: PopAdLdVar
  loc_B0686C: FLdPr Me
  loc_B0686F: MemLdRfVar from_stack_1.htmFile
  loc_B06872: LdPrVar
  loc_B06874: LateMemCall
  loc_B0687A: FFreeStr var_A8 = ""
  loc_B06881: FFree1Ad var_C0
  loc_B06884: FFree1Var var_BC = ""
  loc_B06887: LitVarStr var_94, "  </tr>"
  loc_B0688C: PopAdLdVar
  loc_B0688D: FLdPr Me
  loc_B06890: MemLdRfVar from_stack_1.htmFile
  loc_B06893: LdPrVar
  loc_B06895: LateMemCall
  loc_B0689B: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_B068A0: PopAdLdVar
  loc_B068A1: FLdPr Me
  loc_B068A4: MemLdRfVar from_stack_1.htmFile
  loc_B068A7: LdPrVar
  loc_B068A9: LateMemCall
  loc_B068AF: LitStr "    <th align=""left"" valign=""bottom"">Expediente de Pago: "
  loc_B068B2: FLdRfVar var_A8
  loc_B068B5: FLdPr Me
  loc_B068B8: VCallAd Control_ID_cboExpeImpu
  loc_B068BB: FStAdFunc var_C0
  loc_B068BE: FLdPr var_C0
  loc_B068C1:  = Me.Text
  loc_B068C6: ILdRf var_A8
  loc_B068C9: ConcatStr
  loc_B068CA: FStStrNoPop var_AC
  loc_B068CD: LitStr "</th>"
  loc_B068D0: ConcatStr
  loc_B068D1: CVarStr var_BC
  loc_B068D4: PopAdLdVar
  loc_B068D5: FLdPr Me
  loc_B068D8: MemLdRfVar from_stack_1.htmFile
  loc_B068DB: LdPrVar
  loc_B068DD: LateMemCall
  loc_B068E3: FFreeStr var_A8 = ""
  loc_B068EA: FFree1Ad var_C0
  loc_B068ED: FFree1Var var_BC = ""
  loc_B068F0: LitVarStr var_94, "  </tr>"
  loc_B068F5: PopAdLdVar
  loc_B068F6: FLdPr Me
  loc_B068F9: MemLdRfVar from_stack_1.htmFile
  loc_B068FC: LdPrVar
  loc_B068FE: LateMemCall
  loc_B06904: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_B06909: PopAdLdVar
  loc_B0690A: FLdPr Me
  loc_B0690D: MemLdRfVar from_stack_1.htmFile
  loc_B06910: LdPrVar
  loc_B06912: LateMemCall
  loc_B06918: LitStr "    <th align=""left"" valign=""bottom"">Expediente Original: "
  loc_B0691B: FLdRfVar var_A8
  loc_B0691E: FLdPr Me
  loc_B06921: VCallAd Control_ID_cboExorImpu
  loc_B06924: FStAdFunc var_C0
  loc_B06927: FLdPr var_C0
  loc_B0692A:  = Me.Text
  loc_B0692F: ILdRf var_A8
  loc_B06932: ConcatStr
  loc_B06933: FStStrNoPop var_AC
  loc_B06936: LitStr "</th>"
  loc_B06939: ConcatStr
  loc_B0693A: CVarStr var_BC
  loc_B0693D: PopAdLdVar
  loc_B0693E: FLdPr Me
  loc_B06941: MemLdRfVar from_stack_1.htmFile
  loc_B06944: LdPrVar
  loc_B06946: LateMemCall
  loc_B0694C: FFreeStr var_A8 = ""
  loc_B06953: FFree1Ad var_C0
  loc_B06956: FFree1Var var_BC = ""
  loc_B06959: LitVarStr var_94, "  </tr>"
  loc_B0695E: PopAdLdVar
  loc_B0695F: FLdPr Me
  loc_B06962: MemLdRfVar from_stack_1.htmFile
  loc_B06965: LdPrVar
  loc_B06967: LateMemCall
  loc_B0696D: FLdPr Me
  loc_B06970: VCallAd Control_ID_CodiPartMsk
  loc_B06973: FStAdFunc var_C0
  loc_B06976: FLdPr var_C0
  loc_B06979: LateIdLdVar var_BC DispID_22 0
  loc_B06980: CStrVarTmp
  loc_B06981: FStStrNoPop var_A8
  loc_B06984: LitStr vbNullString
  loc_B06987: NeStr
  loc_B06989: FFree1Str var_A8
  loc_B0698C: FFree1Ad var_C0
  loc_B0698F: FFree1Var var_BC = ""
  loc_B06992: BranchF loc_B06A4F
  loc_B06995: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_B0699A: PopAdLdVar
  loc_B0699B: FLdPr Me
  loc_B0699E: MemLdRfVar from_stack_1.htmFile
  loc_B069A1: LdPrVar
  loc_B069A3: LateMemCall
  loc_B069A9: FLdPr Me
  loc_B069AC: VCallAd Control_ID_CodiPartMsk
  loc_B069AF: FStAdFunc var_148
  loc_B069B2: FLdPr var_148
  loc_B069B5: LateIdLdVar var_D4 DispID_22 0
  loc_B069BC: PopAd
  loc_B069BE: LitStr "    <th align=""left"" valign=""bottom"">Partida: "
  loc_B069C1: FLdPr Me
  loc_B069C4: VCallAd Control_ID_CodiPartMsk
  loc_B069C7: FStAdFunc var_C0
  loc_B069CA: FLdPr var_C0
  loc_B069CD: LateIdLdVar var_BC DispID_22 0
  loc_B069D4: CStrVarTmp
  loc_B069D5: FStStrNoPop var_A8
  loc_B069D8: ConcatStr
  loc_B069D9: CVarStr var_124
  loc_B069DC: LitVarStr var_94, "."
  loc_B069E1: FStVarCopyObj var_E4
  loc_B069E4: FLdRfVar var_E4
  loc_B069E7: LitI4 8
  loc_B069EC: FLdRfVar var_D4
  loc_B069EF: CStrVarTmp
  loc_B069F0: FStStrNoPop var_AC
  loc_B069F3: FnLenStr
  loc_B069F4: SubI4
  loc_B069F5: FLdRfVar var_104
  loc_B069F8: ImpAdCallFPR4  = String(, )
  loc_B069FD: FLdRfVar var_104
  loc_B06A00: ConcatVar var_134
  loc_B06A04: LitVarStr var_A4, "</th>"
  loc_B06A09: ConcatVar var_158
  loc_B06A0D: PopAdLdVar
  loc_B06A0E: FLdPr Me
  loc_B06A11: MemLdRfVar from_stack_1.htmFile
  loc_B06A14: LdPrVar
  loc_B06A16: LateMemCall
  loc_B06A1C: FFreeStr var_A8 = ""
  loc_B06A23: FFreeAd var_C0 = ""
  loc_B06A2A: FFreeVar var_BC = "": var_D4 = "": var_E4 = "": var_124 = "": var_104 = "": var_134 = ""
  loc_B06A3B: LitVarStr var_94, "  </tr>"
  loc_B06A40: PopAdLdVar
  loc_B06A41: FLdPr Me
  loc_B06A44: MemLdRfVar from_stack_1.htmFile
  loc_B06A47: LdPrVar
  loc_B06A49: LateMemCall
  loc_B06A4F: FLdPr Me
  loc_B06A52: VCallAd Control_ID_CodiOrgaMsk
  loc_B06A55: FStAdFunc var_C0
  loc_B06A58: FLdPr var_C0
  loc_B06A5B: LateIdLdVar var_BC DispID_22 0
  loc_B06A62: CStrVarTmp
  loc_B06A63: FStStrNoPop var_A8
  loc_B06A66: LitStr vbNullString
  loc_B06A69: NeStr
  loc_B06A6B: FFree1Str var_A8
  loc_B06A6E: FFree1Ad var_C0
  loc_B06A71: FFree1Var var_BC = ""
  loc_B06A74: BranchF loc_B06B31
  loc_B06A77: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_B06A7C: PopAdLdVar
  loc_B06A7D: FLdPr Me
  loc_B06A80: MemLdRfVar from_stack_1.htmFile
  loc_B06A83: LdPrVar
  loc_B06A85: LateMemCall
  loc_B06A8B: FLdPr Me
  loc_B06A8E: VCallAd Control_ID_CodiOrgaMsk
  loc_B06A91: FStAdFunc var_148
  loc_B06A94: FLdPr var_148
  loc_B06A97: LateIdLdVar var_D4 DispID_22 0
  loc_B06A9E: PopAd
  loc_B06AA0: LitStr "    <th align=""left"" valign=""bottom"">Organigrama: "
  loc_B06AA3: FLdPr Me
  loc_B06AA6: VCallAd Control_ID_CodiOrgaMsk
  loc_B06AA9: FStAdFunc var_C0
  loc_B06AAC: FLdPr var_C0
  loc_B06AAF: LateIdLdVar var_BC DispID_22 0
  loc_B06AB6: CStrVarTmp
  loc_B06AB7: FStStrNoPop var_A8
  loc_B06ABA: ConcatStr
  loc_B06ABB: CVarStr var_124
  loc_B06ABE: LitVarStr var_94, "."
  loc_B06AC3: FStVarCopyObj var_E4
  loc_B06AC6: FLdRfVar var_E4
  loc_B06AC9: LitI4 6
  loc_B06ACE: FLdRfVar var_D4
  loc_B06AD1: CStrVarTmp
  loc_B06AD2: FStStrNoPop var_AC
  loc_B06AD5: FnLenStr
  loc_B06AD6: SubI4
  loc_B06AD7: FLdRfVar var_104
  loc_B06ADA: ImpAdCallFPR4  = String(, )
  loc_B06ADF: FLdRfVar var_104
  loc_B06AE2: ConcatVar var_134
  loc_B06AE6: LitVarStr var_A4, "</th>"
  loc_B06AEB: ConcatVar var_158
  loc_B06AEF: PopAdLdVar
  loc_B06AF0: FLdPr Me
  loc_B06AF3: MemLdRfVar from_stack_1.htmFile
  loc_B06AF6: LdPrVar
  loc_B06AF8: LateMemCall
  loc_B06AFE: FFreeStr var_A8 = ""
  loc_B06B05: FFreeAd var_C0 = ""
  loc_B06B0C: FFreeVar var_BC = "": var_D4 = "": var_E4 = "": var_124 = "": var_104 = "": var_134 = ""
  loc_B06B1D: LitVarStr var_94, "  </tr>"
  loc_B06B22: PopAdLdVar
  loc_B06B23: FLdPr Me
  loc_B06B26: MemLdRfVar from_stack_1.htmFile
  loc_B06B29: LdPrVar
  loc_B06B2B: LateMemCall
  loc_B06B31: FLdPr Me
  loc_B06B34: VCallAd Control_ID_mskDesde
  loc_B06B37: FStAdFunc var_C0
  loc_B06B3A: FLdPr var_C0
  loc_B06B3D: LateIdLdVar var_BC DispID_22 0
  loc_B06B44: CStrVarTmp
  loc_B06B45: FStStrNoPop var_A8
  loc_B06B48: LitStr vbNullString
  loc_B06B4B: NeStr
  loc_B06B4D: FFree1Str var_A8
  loc_B06B50: FFree1Ad var_C0
  loc_B06B53: FFree1Var var_BC = ""
  loc_B06B56: BranchF loc_B06BC6
  loc_B06B59: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_B06B5E: PopAdLdVar
  loc_B06B5F: FLdPr Me
  loc_B06B62: MemLdRfVar from_stack_1.htmFile
  loc_B06B65: LdPrVar
  loc_B06B67: LateMemCall
  loc_B06B6D: LitStr "    <th align=""left"" valign=""bottom"">Desde: "
  loc_B06B70: FLdPr Me
  loc_B06B73: VCallAd Control_ID_mskDesde
  loc_B06B76: FStAdFunc var_C0
  loc_B06B79: FLdPr var_C0
  loc_B06B7C: LateIdLdVar var_BC DispID_15 0
  loc_B06B83: CStrVarTmp
  loc_B06B84: FStStrNoPop var_A8
  loc_B06B87: ConcatStr
  loc_B06B88: FStStrNoPop var_AC
  loc_B06B8B: LitStr "</th>"
  loc_B06B8E: ConcatStr
  loc_B06B8F: CVarStr var_D4
  loc_B06B92: PopAdLdVar
  loc_B06B93: FLdPr Me
  loc_B06B96: MemLdRfVar from_stack_1.htmFile
  loc_B06B99: LdPrVar
  loc_B06B9B: LateMemCall
  loc_B06BA1: FFreeStr var_A8 = ""
  loc_B06BA8: FFree1Ad var_C0
  loc_B06BAB: FFreeVar var_BC = ""
  loc_B06BB2: LitVarStr var_94, "  </tr>"
  loc_B06BB7: PopAdLdVar
  loc_B06BB8: FLdPr Me
  loc_B06BBB: MemLdRfVar from_stack_1.htmFile
  loc_B06BBE: LdPrVar
  loc_B06BC0: LateMemCall
  loc_B06BC6: FLdPr Me
  loc_B06BC9: VCallAd Control_ID_mskHasta
  loc_B06BCC: FStAdFunc var_C0
  loc_B06BCF: FLdPr var_C0
  loc_B06BD2: LateIdLdVar var_BC DispID_22 0
  loc_B06BD9: CStrVarTmp
  loc_B06BDA: FStStrNoPop var_A8
  loc_B06BDD: LitStr vbNullString
  loc_B06BE0: NeStr
  loc_B06BE2: FFree1Str var_A8
  loc_B06BE5: FFree1Ad var_C0
  loc_B06BE8: FFree1Var var_BC = ""
  loc_B06BEB: BranchF loc_B06C5B
  loc_B06BEE: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_B06BF3: PopAdLdVar
  loc_B06BF4: FLdPr Me
  loc_B06BF7: MemLdRfVar from_stack_1.htmFile
  loc_B06BFA: LdPrVar
  loc_B06BFC: LateMemCall
  loc_B06C02: LitStr "    <th align=""left"" valign=""bottom"">Hasta: "
  loc_B06C05: FLdPr Me
  loc_B06C08: VCallAd Control_ID_mskHasta
  loc_B06C0B: FStAdFunc var_C0
  loc_B06C0E: FLdPr var_C0
  loc_B06C11: LateIdLdVar var_BC DispID_15 0
  loc_B06C18: CStrVarTmp
  loc_B06C19: FStStrNoPop var_A8
  loc_B06C1C: ConcatStr
  loc_B06C1D: FStStrNoPop var_AC
  loc_B06C20: LitStr "</th>"
  loc_B06C23: ConcatStr
  loc_B06C24: CVarStr var_D4
  loc_B06C27: PopAdLdVar
  loc_B06C28: FLdPr Me
  loc_B06C2B: MemLdRfVar from_stack_1.htmFile
  loc_B06C2E: LdPrVar
  loc_B06C30: LateMemCall
  loc_B06C36: FFreeStr var_A8 = ""
  loc_B06C3D: FFree1Ad var_C0
  loc_B06C40: FFreeVar var_BC = ""
  loc_B06C47: LitVarStr var_94, "  </tr>"
  loc_B06C4C: PopAdLdVar
  loc_B06C4D: FLdPr Me
  loc_B06C50: MemLdRfVar from_stack_1.htmFile
  loc_B06C53: LdPrVar
  loc_B06C55: LateMemCall
  loc_B06C5B: FLdRfVar var_C2
  loc_B06C5E: FLdPr Me
  loc_B06C61: VCallAd Control_ID_cboCodiUsua
  loc_B06C64: FStAdFunc var_C0
  loc_B06C67: FLdPr var_C0
  loc_B06C6A:  = Me.ListIndex
  loc_B06C6F: FLdI2 var_C2
  loc_B06C72: LitI2_Byte 0
  loc_B06C74: GtI2
  loc_B06C75: FFree1Ad var_C0
  loc_B06C78: BranchF loc_B06CE4
  loc_B06C7B: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_B06C80: PopAdLdVar
  loc_B06C81: FLdPr Me
  loc_B06C84: MemLdRfVar from_stack_1.htmFile
  loc_B06C87: LdPrVar
  loc_B06C89: LateMemCall
  loc_B06C8F: LitStr "    <th align=""left"" valign=""bottom"">Usuario: "
  loc_B06C92: FLdRfVar var_A8
  loc_B06C95: FLdPr Me
  loc_B06C98: VCallAd Control_ID_cboCodiUsua
  loc_B06C9B: FStAdFunc var_C0
  loc_B06C9E: FLdPr var_C0
  loc_B06CA1:  = Me.Text
  loc_B06CA6: ILdRf var_A8
  loc_B06CA9: ConcatStr
  loc_B06CAA: FStStrNoPop var_AC
  loc_B06CAD: LitStr "</th>"
  loc_B06CB0: ConcatStr
  loc_B06CB1: CVarStr var_BC
  loc_B06CB4: PopAdLdVar
  loc_B06CB5: FLdPr Me
  loc_B06CB8: MemLdRfVar from_stack_1.htmFile
  loc_B06CBB: LdPrVar
  loc_B06CBD: LateMemCall
  loc_B06CC3: FFreeStr var_A8 = ""
  loc_B06CCA: FFree1Ad var_C0
  loc_B06CCD: FFree1Var var_BC = ""
  loc_B06CD0: LitVarStr var_94, "  </tr>"
  loc_B06CD5: PopAdLdVar
  loc_B06CD6: FLdPr Me
  loc_B06CD9: MemLdRfVar from_stack_1.htmFile
  loc_B06CDC: LdPrVar
  loc_B06CDE: LateMemCall
  loc_B06CE4: LitVarStr var_94, "</table>"
  loc_B06CE9: PopAdLdVar
  loc_B06CEA: FLdPr Me
  loc_B06CED: MemLdRfVar from_stack_1.htmFile
  loc_B06CF0: LdPrVar
  loc_B06CF2: LateMemCall
  loc_B06CF8: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_B06CFD: PopAdLdVar
  loc_B06CFE: FLdPr Me
  loc_B06D01: MemLdRfVar from_stack_1.htmFile
  loc_B06D04: LdPrVar
  loc_B06D06: LateMemCall
  loc_B06D0C: LitVarStr var_94, "  <THEAD>"
  loc_B06D11: PopAdLdVar
  loc_B06D12: FLdPr Me
  loc_B06D15: MemLdRfVar from_stack_1.htmFile
  loc_B06D18: LdPrVar
  loc_B06D1A: LateMemCall
  loc_B06D20: LitVarStr var_94, " <tr align=""center"" class=""Encabezado"">"
  loc_B06D25: PopAdLdVar
  loc_B06D26: FLdPr Me
  loc_B06D29: MemLdRfVar from_stack_1.htmFile
  loc_B06D2C: LdPrVar
  loc_B06D2E: LateMemCall
  loc_B06D34: LitVarStr var_94, "     <th>Partida</th>"
  loc_B06D39: PopAdLdVar
  loc_B06D3A: FLdPr Me
  loc_B06D3D: MemLdRfVar from_stack_1.htmFile
  loc_B06D40: LdPrVar
  loc_B06D42: LateMemCall
  loc_B06D48: LitVarStr var_94, "     <th>Organigrama</th>"
  loc_B06D4D: PopAdLdVar
  loc_B06D4E: FLdPr Me
  loc_B06D51: MemLdRfVar from_stack_1.htmFile
  loc_B06D54: LdPrVar
  loc_B06D56: LateMemCall
  loc_B06D5C: LitVarStr var_94, "     <th>Finalidad</th>"
  loc_B06D61: PopAdLdVar
  loc_B06D62: FLdPr Me
  loc_B06D65: MemLdRfVar from_stack_1.htmFile
  loc_B06D68: LdPrVar
  loc_B06D6A: LateMemCall
  loc_B06D70: LitVarStr var_94, "     <th>Detalle</th>"
  loc_B06D75: PopAdLdVar
  loc_B06D76: FLdPr Me
  loc_B06D79: MemLdRfVar from_stack_1.htmFile
  loc_B06D7C: LdPrVar
  loc_B06D7E: LateMemCall
  loc_B06D84: LitVarStr var_94, "     <th colspan=""1"">&nbsp;</th>"
  loc_B06D89: PopAdLdVar
  loc_B06D8A: FLdPr Me
  loc_B06D8D: MemLdRfVar from_stack_1.htmFile
  loc_B06D90: LdPrVar
  loc_B06D92: LateMemCall
  loc_B06D98: LitVarStr var_94, "     <th>Proveedor</th>"
  loc_B06D9D: PopAdLdVar
  loc_B06D9E: FLdPr Me
  loc_B06DA1: MemLdRfVar from_stack_1.htmFile
  loc_B06DA4: LdPrVar
  loc_B06DA6: LateMemCall
  loc_B06DAC: LitVarStr var_94, "     <th>Importe</th>"
  loc_B06DB1: PopAdLdVar
  loc_B06DB2: FLdPr Me
  loc_B06DB5: MemLdRfVar from_stack_1.htmFile
  loc_B06DB8: LdPrVar
  loc_B06DBA: LateMemCall
  loc_B06DC0: LitVarStr var_94, "     <th>Fecha</th>"
  loc_B06DC5: PopAdLdVar
  loc_B06DC6: FLdPr Me
  loc_B06DC9: MemLdRfVar from_stack_1.htmFile
  loc_B06DCC: LdPrVar
  loc_B06DCE: LateMemCall
  loc_B06DD4: LitVarStr var_94, "     <th>Usuario</th>"
  loc_B06DD9: PopAdLdVar
  loc_B06DDA: FLdPr Me
  loc_B06DDD: MemLdRfVar from_stack_1.htmFile
  loc_B06DE0: LdPrVar
  loc_B06DE2: LateMemCall
  loc_B06DE8: LitVarStr var_94, "  </tr>"
  loc_B06DED: PopAdLdVar
  loc_B06DEE: FLdPr Me
  loc_B06DF1: MemLdRfVar from_stack_1.htmFile
  loc_B06DF4: LdPrVar
  loc_B06DF6: LateMemCall
  loc_B06DFC: LitVarStr var_94, "  </THEAD>"
  loc_B06E01: PopAdLdVar
  loc_B06E02: FLdPr Me
  loc_B06E05: MemLdRfVar from_stack_1.htmFile
  loc_B06E08: LdPrVar
  loc_B06E0A: LateMemCall
  loc_B06E10: ExitProcHresult
End Function

Private Function Proc_253_45_9C8BA0() '9C8BA0
  'Data Table: 4D8D94
  loc_9C8AB8: LitVarStr var_94, "</table>"
  loc_9C8ABD: PopAdLdVar
  loc_9C8ABE: FLdPr Me
  loc_9C8AC1: MemLdRfVar from_stack_1.htmFile
  loc_9C8AC4: LdPrVar
  loc_9C8AC6: LateMemCall
  loc_9C8ACC: LitStr "Municipalidad de Guaymallén"
  loc_9C8ACF: LitStr "Municipalidad de Lavalle"
  loc_9C8AD2: EqStr
  loc_9C8AD4: BranchF loc_9C8B76
  loc_9C8AD7: LitStr "Pase a COMPRAS - OBRAS PUBLICAS - ............... a sus efectos.- "
  loc_9C8ADA: ImpAdLdI4 MemVar_C3D03C
  loc_9C8ADD: ConcatStr
  loc_9C8ADE: CVarStr var_B4
  loc_9C8AE1: PopAdLdVar
  loc_9C8AE2: FLdPr Me
  loc_9C8AE5: MemLdRfVar from_stack_1.htmFile
  loc_9C8AE8: LdPrVar
  loc_9C8AEA: LateMemCall
  loc_9C8AF0: FFree1Var var_B4 = ""
  loc_9C8AF3: ImpAdLdI4 MemVar_C3D03C
  loc_9C8AF6: LitStr "LILIANA"
  loc_9C8AF9: EqStr
  loc_9C8AFB: BranchF loc_9C8B76
  loc_9C8AFE: LitVarStr var_94, "<br><br><br><br><br>"
  loc_9C8B03: PopAdLdVar
  loc_9C8B04: FLdPr Me
  loc_9C8B07: MemLdRfVar from_stack_1.htmFile
  loc_9C8B0A: LdPrVar
  loc_9C8B0C: LateMemCall
  loc_9C8B12: LitVarStr var_94, "<table border=""0"" align=""left"" cellspacing=""20"" class=""Normal"">"
  loc_9C8B17: PopAdLdVar
  loc_9C8B18: FLdPr Me
  loc_9C8B1B: MemLdRfVar from_stack_1.htmFile
  loc_9C8B1E: LdPrVar
  loc_9C8B20: LateMemCall
  loc_9C8B26: LitVarStr var_94, "  <tr align=""center"" valign=""top"">"
  loc_9C8B2B: PopAdLdVar
  loc_9C8B2C: FLdPr Me
  loc_9C8B2F: MemLdRfVar from_stack_1.htmFile
  loc_9C8B32: LdPrVar
  loc_9C8B34: LateMemCall
  loc_9C8B3A: LitVarStr var_94, "    <td ><hr>IRMA LILIANA CABRERA<br>Jefa de Sección Imputaciones<br>MUNICIPALIDAD DE LAVALLE</td>"
  loc_9C8B3F: PopAdLdVar
  loc_9C8B40: FLdPr Me
  loc_9C8B43: MemLdRfVar from_stack_1.htmFile
  loc_9C8B46: LdPrVar
  loc_9C8B48: LateMemCall
  loc_9C8B4E: LitVarStr var_94, "  </tr>"
  loc_9C8B53: PopAdLdVar
  loc_9C8B54: FLdPr Me
  loc_9C8B57: MemLdRfVar from_stack_1.htmFile
  loc_9C8B5A: LdPrVar
  loc_9C8B5C: LateMemCall
  loc_9C8B62: LitVarStr var_94, "</table>"
  loc_9C8B67: PopAdLdVar
  loc_9C8B68: FLdPr Me
  loc_9C8B6B: MemLdRfVar from_stack_1.htmFile
  loc_9C8B6E: LdPrVar
  loc_9C8B70: LateMemCall
  loc_9C8B76: LitVarStr var_94, "</body>"
  loc_9C8B7B: PopAdLdVar
  loc_9C8B7C: FLdPr Me
  loc_9C8B7F: MemLdRfVar from_stack_1.htmFile
  loc_9C8B82: LdPrVar
  loc_9C8B84: LateMemCall
  loc_9C8B8A: LitVarStr var_94, "</html>"
  loc_9C8B8F: PopAdLdVar
  loc_9C8B90: FLdPr Me
  loc_9C8B93: MemLdRfVar from_stack_1.htmFile
  loc_9C8B96: LdPrVar
  loc_9C8B98: LateMemCall
  loc_9C8B9E: ExitProcHresult
  loc_9C8B9F: CStr2Ansi
End Function
