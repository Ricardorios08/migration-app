VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptDeudaExigible
  Caption = "Listado de Deuda Exigible"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptDeudaExigible.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 8085
  ClientHeight = 4320
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 4065
    Width = 8085
    Height = 255
    TabIndex = 26
    OleObjectBlob = "rptDeudaExigible.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 7080
    Top = 3120
    Width = 735
    Height = 615
    TabIndex = 24
    Cancel = -1  'True
    Picture = "rptDeudaExigible.frx":094A
    Style = 1
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptDeudaExigible.frx":0B9C
    Left = 4560
    Top = 0
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 2880
    Width = 3615
    Height = 1095
    TabIndex = 21
    Begin VB.CommandButton cmdXLS
      Caption = "&XLS"
      Left = 1800
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 23
    End
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 22
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 2880
    Width = 3015
    Height = 1095
    TabIndex = 18
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
    Width = 7815
    Height = 2775
    TabIndex = 0
    Begin VB.CommandButton cmdCodiPart
      Left = 3120
      Top = 1680
      Width = 375
      Height = 375
      TabIndex = 12
      Picture = "rptDeudaExigible.frx":0C00
      Style = 1
    End
    Begin VB.CommandButton cmdCodiOrga
      Left = 3120
      Top = 2160
      Width = 375
      Height = 375
      TabIndex = 16
      Picture = "rptDeudaExigible.frx":0CFA
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
      Picture = "rptDeudaExigible.frx":0DF4
      Style = 1
    End
    Begin VB.CommandButton cmdCalDesde
      Left = 2880
      Top = 720
      Width = 375
      Height = 375
      TabIndex = 6
      Picture = "rptDeudaExigible.frx":1336
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
      OleObjectBlob = "rptDeudaExigible.frx":1878
    End
    Begin MSMask.MaskEdBox mskHasta
      Left = 1680
      Top = 1200
      Width = 1095
      Height = 285
      TabIndex = 8
      OleObjectBlob = "rptDeudaExigible.frx":1900
    End
    Begin MSMask.MaskEdBox CodiOrgaMsk
      Left = 1680
      Top = 2160
      Width = 1335
      Height = 315
      TabIndex = 15
      OleObjectBlob = "rptDeudaExigible.frx":1988
    End
    Begin MSMask.MaskEdBox CodiPartMsk
      Left = 1680
      Top = 1680
      Width = 1335
      Height = 285
      TabIndex = 11
      OleObjectBlob = "rptDeudaExigible.frx":19E8
    End
    Begin VB.Label Label5
      Caption = "Partida:"
      Left = 960
      Top = 1680
      Width = 615
      Height = 315
      TabIndex = 10
    End
    Begin VB.Label Label4
      Caption = "Organigrama:"
      Left = 600
      Top = 2160
      Width = 975
      Height = 315
      TabIndex = 14
    End
    Begin VB.Label CodiPartLbl
      Left = 3600
      Top = 1680
      Width = 4095
      Height = 375
      TabIndex = 13
      BorderStyle = 1 'Fixed Single
    End
    Begin VB.Label CodiOrgaLbl
      Left = 3600
      Top = 2160
      Width = 4095
      Height = 375
      TabIndex = 17
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
    Left = 7200
    Top = 3240
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 25
    OleObjectBlob = "rptDeudaExigible.frx":1A48
  End
End

Attribute VB_Name = "rptDeudaExigible"

Public htmFile As Variant
Public bGenerado As Boolean
Public bLogos As Boolean

Private Type UDT_1_005785A4
  bStruc(8) As Byte ' String fields: 2
End Type

Private Type UDT_2_005DA428
  bStruc(16) As Byte ' String fields: 4
End Type

Private Type UDT_3_005DA464
  bStruc(16) As Byte ' String fields: 4
End Type

Private Type UDT_4_005DA4A0
  bStruc(24) As Byte ' String fields: 6
End Type


Private Sub cmdCodiPart_Click() '9F5DC8
  'Data Table: 4AB9C0
  loc_9F5C98: LitNothing
  loc_9F5C9A: CastAd
  loc_9F5C9D: FStAdFuncNoPop
  loc_9F5CA0: ImpAdLdRf MemVar_C3D724
  loc_9F5CA3: NewIfNullPr bscPartida
  loc_9F5CA6: Call bscPartida.global_4332396Set(from_stack_1v)
  loc_9F5CAB: FFree1Ad var_88
  loc_9F5CAE: LitVar_Missing var_A8
  loc_9F5CB1: PopAdLdVar
  loc_9F5CB2: LitVarI4
  loc_9F5CBA: PopAdLdVar
  loc_9F5CBB: ImpAdLdRf MemVar_C3D724
  loc_9F5CBE: NewIfNullPr bscPartida
  loc_9F5CC1: bscPartida.Show from_stack_1, from_stack_2
  loc_9F5CC6: FLdRfVar var_AC
  loc_9F5CC9: FLdRfVar var_88
  loc_9F5CCC: ImpAdLdRf MemVar_C3D724
  loc_9F5CCF: NewIfNullPr bscPartida
  loc_9F5CD2: from_stack_1v = bscPartida.global_4332396Get()
  loc_9F5CD7: FLdPr var_88
  loc_9F5CDA: from_stack_1 = clsbase.RecordCount
  loc_9F5CDF: ILdRf var_AC
  loc_9F5CE2: LitI4 0
  loc_9F5CE7: GtI4
  loc_9F5CE8: FFree1Ad var_88
  loc_9F5CEB: BranchF loc_9F5DC6
  loc_9F5CEE: FLdRfVar var_C8
  loc_9F5CF1: FLdRfVar var_B8
  loc_9F5CF4: LitVarStr var_98, "CodiPart"
  loc_9F5CF9: PopAdLdVar
  loc_9F5CFA: FLdRfVar var_B4
  loc_9F5CFD: FLdRfVar var_B0
  loc_9F5D00: FLdRfVar var_88
  loc_9F5D03: ImpAdLdRf MemVar_C3D724
  loc_9F5D06: NewIfNullPr bscPartida
  loc_9F5D09: from_stack_1v = bscPartida.global_4332396Get()
  loc_9F5D0E: FLdPr var_88
  loc_9F5D11: from_stack_1v = clsbase.RsFrmGet()
  loc_9F5D16: FLdPr var_B0
  loc_9F5D19:  = Me.Fields
  loc_9F5D1E: FLdPr var_B4
  loc_9F5D21: from_stack_2 = Me.Item(from_stack_1)
  loc_9F5D26: FLdPr var_B8
  loc_9F5D29:  = Me.Value
  loc_9F5D2E: FLdRfVar var_C8
  loc_9F5D31: CStrVarTmp
  loc_9F5D32: CVarStr var_D8
  loc_9F5D35: PopAdLdVar
  loc_9F5D36: FLdPr Me
  loc_9F5D39: VCallAd Control_ID_CodiPartMsk
  loc_9F5D3C: FStAdFunc var_DC
  loc_9F5D3F: FLdPr var_DC
  loc_9F5D42: LateIdSt
  loc_9F5D47: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9F5D54: FFreeVar var_C8 = ""
  loc_9F5D5B: FLdRfVar var_C8
  loc_9F5D5E: FLdRfVar var_B8
  loc_9F5D61: LitVarStr var_98, "DetaPart"
  loc_9F5D66: PopAdLdVar
  loc_9F5D67: FLdRfVar var_B4
  loc_9F5D6A: FLdRfVar var_B0
  loc_9F5D6D: FLdRfVar var_88
  loc_9F5D70: ImpAdLdRf MemVar_C3D724
  loc_9F5D73: NewIfNullPr bscPartida
  loc_9F5D76: from_stack_1v = bscPartida.global_4332396Get()
  loc_9F5D7B: FLdPr var_88
  loc_9F5D7E: from_stack_1v = clsbase.RsFrmGet()
  loc_9F5D83: FLdPr var_B0
  loc_9F5D86:  = Me.Fields
  loc_9F5D8B: FLdPr var_B4
  loc_9F5D8E: from_stack_2 = Me.Item(from_stack_1)
  loc_9F5D93: FLdPr var_B8
  loc_9F5D96:  = Me.Value
  loc_9F5D9B: FLdRfVar var_C8
  loc_9F5D9E: CStrVarTmp
  loc_9F5D9F: FStStrNoPop var_E0
  loc_9F5DA2: FLdPr Me
  loc_9F5DA5: VCallAd Control_ID_CodiPartLbl
  loc_9F5DA8: FStAdFunc var_DC
  loc_9F5DAB: FLdPr var_DC
  loc_9F5DAE: Me.Caption = from_stack_1
  loc_9F5DB3: FFree1Str var_E0
  loc_9F5DB6: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9F5DC3: FFree1Var var_C8 = ""
  loc_9F5DC6: ExitProcHresult
  loc_9F5DC7: CStr2Ansi
End Sub

Private Sub cmdSalir_Click() '976FCC
  'Data Table: 4AB9C0
  loc_976F9C: LitVarStr var_94, "Cerrando..."
  loc_976FA1: PopAdLdVar
  loc_976FA2: FLdPr Me
  loc_976FA5: VCallAd Control_ID_statusBar
  loc_976FA8: FStAdFunc var_A8
  loc_976FAB: FLdPr var_A8
  loc_976FAE: LateIdSt
  loc_976FB3: FFree1Ad var_A8
  loc_976FB6: ILdRf Me
  loc_976FB9: FStAdNoPop
  loc_976FBD: ImpAdLdRf MemVar_C44F9C
  loc_976FC0: NewIfNullPr Me
  loc_976FC3: Me.Global.Unload from_stack_1
  loc_976FC8: FFree1Ad var_A8
  loc_976FCB: ExitProcHresult
End Sub

Private Sub Form_Load() '9E3D48
  'Data Table: 4AB9C0
  loc_9E3C3C: LitVarStr var_94, "######"
  loc_9E3C41: PopAdLdVar
  loc_9E3C42: FLdPr Me
  loc_9E3C45: VCallAd Control_ID_CodiOrgaMsk
  loc_9E3C48: FStAdFunc var_A8
  loc_9E3C4B: FLdPr var_A8
  loc_9E3C4E: LateIdSt
  loc_9E3C53: FFree1Ad var_A8
  loc_9E3C56: LitVarStr var_94, "#.#.#.#.##.##"
  loc_9E3C5B: PopAdLdVar
  loc_9E3C5C: FLdPr Me
  loc_9E3C5F: VCallAd Control_ID_CodiPartMsk
  loc_9E3C62: FStAdFunc var_A8
  loc_9E3C65: FLdPr var_A8
  loc_9E3C68: LateIdSt
  loc_9E3C6D: FFree1Ad var_A8
  loc_9E3C70: LitI2_Byte &HFF
  loc_9E3C72: ImpAdStI2 MemVar_C3D840
  loc_9E3C75: ILdRf Me
  loc_9E3C78: CastAd
  loc_9E3C7B: FStAdFunc var_A8
  loc_9E3C7E: FLdRfVar var_A8
  loc_9E3C81: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_9E3C86: FFree1Ad var_A8
  loc_9E3C89: LitStr "SELECT * FROM infogov.periodo ORDER BY PeriInfo"
  loc_9E3C8C: FLdRfVar var_AC
  loc_9E3C8F: NewIfNullPr clsperiodo
  loc_9E3C92: Call clsperiodo.RedefineRS(from_stack_1v)
  loc_9E3C97: FLdRfVar var_B0
  loc_9E3C9A: FLdRfVar var_AC
  loc_9E3C9D: NewIfNullPr clsperiodo
  loc_9E3CA0: from_stack_1 = clsperiodo.RecordCount
  loc_9E3CA5: ILdRf var_B0
  loc_9E3CA8: LitI4 0
  loc_9E3CAD: GtI4
  loc_9E3CAE: BranchF loc_9E3D41
  loc_9E3CB1: FLdRfVar var_AC
  loc_9E3CB4: NewIfNullPr clsperiodo
  loc_9E3CB7: Call clsperiodo.MoveFirst()
  loc_9E3CBC: FLdRfVar var_B2
  loc_9E3CBF: FLdRfVar var_AC
  loc_9E3CC2: NewIfNullPr clsperiodo
  loc_9E3CC5: from_stack_1 = clsperiodo.EOF
  loc_9E3CCA: FLdI2 var_B2
  loc_9E3CCD: NotI4
  loc_9E3CCE: BranchF loc_9E3D41
  loc_9E3CD1: LitVar_Missing var_A4
  loc_9E3CD4: PopAdLdVar
  loc_9E3CD5: FLdRfVar var_CC
  loc_9E3CD8: FLdRfVar var_BC
  loc_9E3CDB: LitVarStr var_94, "PeriInfo"
  loc_9E3CE0: PopAdLdVar
  loc_9E3CE1: FLdRfVar var_B8
  loc_9E3CE4: FLdRfVar var_A8
  loc_9E3CE7: FLdRfVar var_AC
  loc_9E3CEA: NewIfNullPr clsperiodo
  loc_9E3CED: from_stack_1v = clsperiodo.RsFrmGet()
  loc_9E3CF2: FLdPr var_A8
  loc_9E3CF5:  = Me.Fields
  loc_9E3CFA: FLdPr var_B8
  loc_9E3CFD: from_stack_2 = Me.Item(from_stack_1)
  loc_9E3D02: FLdPr var_BC
  loc_9E3D05:  = Me.Value
  loc_9E3D0A: FLdRfVar var_CC
  loc_9E3D0D: CStrVarTmp
  loc_9E3D0E: FStStrNoPop var_D0
  loc_9E3D11: FLdPr Me
  loc_9E3D14: VCallAd Control_ID_cboPeriodo
  loc_9E3D17: FStAdFunc var_D4
  loc_9E3D1A: FLdPr var_D4
  loc_9E3D1D: Me.AddItem from_stack_1, from_stack_2
  loc_9E3D22: FFree1Str var_D0
  loc_9E3D25: FFreeAd var_A8 = "": var_B8 = "": var_BC = ""
  loc_9E3D30: FFree1Var var_CC = ""
  loc_9E3D33: FLdRfVar var_AC
  loc_9E3D36: NewIfNullPr clsperiodo
  loc_9E3D39: Call clsperiodo.MoveSiguiente()
  loc_9E3D3E: Branch loc_9E3CBC
  loc_9E3D41: Call cmdNueva_Click()
  loc_9E3D46: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '95D1DC
  'Data Table: 4AB9C0
  loc_95D1C4: FLdPr Me
  loc_95D1C7: VCallAd Control_ID_wbbReporte
  loc_95D1CA: FStAdFunc var_88
  loc_95D1CD: FLdRfVar var_88
  loc_95D1D0: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_95D1D5: FFree1Ad var_88
  loc_95D1D8: ExitProcHresult
End Sub

Private Sub CodiPartMsk_UnknownEvent_0 '94FAD0
  'Data Table: 4AB9C0
  loc_94FABC: FLdPr Me
  loc_94FABF: VCallAd Control_ID_CodiPartMsk
  loc_94FAC2: CVarAd
  loc_94FAC6: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94FACB: FFree1Var var_94 = ""
  loc_94FACE: ExitProcHresult
End Sub

Private Sub CodiPartMsk_UnknownEvent_8 'A084E0
  'Data Table: 4AB9C0
  loc_A08394: LitStr "SELECT DetaPart FROM partida WHERE PeriInfo = "
  loc_A08397: FLdRfVar var_90
  loc_A0839A: FLdPr Me
  loc_A0839D: VCallAd Control_ID_cboPeriodo
  loc_A083A0: FStAdFunc var_8C
  loc_A083A3: FLdPr var_8C
  loc_A083A6:  = Me.Text
  loc_A083AB: ILdRf var_90
  loc_A083AE: ConcatStr
  loc_A083AF: FStStrNoPop var_94
  loc_A083B2: LitStr " AND CodiPart LIKE '"
  loc_A083B5: ConcatStr
  loc_A083B6: FStStrNoPop var_AC
  loc_A083B9: FLdPr Me
  loc_A083BC: VCallAd Control_ID_CodiPartMsk
  loc_A083BF: FStAdFunc var_98
  loc_A083C2: FLdPr var_98
  loc_A083C5: LateIdLdVar var_A8 DispID_22 0
  loc_A083CC: CStrVarTmp
  loc_A083CD: FStStrNoPop var_B0
  loc_A083D0: ConcatStr
  loc_A083D1: FStStrNoPop var_B4
  loc_A083D4: LitStr Chr(37) & "'"
  loc_A083D7: ConcatStr
  loc_A083D8: FStStrNoPop var_B8
  loc_A083DB: FLdRfVar var_88
  loc_A083DE: NewIfNullPr clspartida
  loc_A083E1: Call clspartida.RedefineRS(from_stack_1v)
  loc_A083E6: FFreeStr var_90 = "": var_94 = "": var_AC = "": var_B0 = "": var_B4 = ""
  loc_A083F5: FFreeAd var_8C = ""
  loc_A083FC: FFree1Var var_A8 = ""
  loc_A083FF: FLdRfVar var_BC
  loc_A08402: FLdRfVar var_88
  loc_A08405: NewIfNullPr clspartida
  loc_A08408: from_stack_1 = clspartida.RecordCount
  loc_A0840D: ILdRf var_BC
  loc_A08410: FStR4 var_C0
  loc_A08413: ILdRf var_C0
  loc_A08416: LitI4 0
  loc_A0841B: EqI4
  loc_A0841C: BranchF loc_A08439
  loc_A0841F: LitStr "0 registros encontrados"
  loc_A08422: FLdPr Me
  loc_A08425: VCallAd Control_ID_CodiPartLbl
  loc_A08428: FStAdFunc var_8C
  loc_A0842B: FLdPr var_8C
  loc_A0842E: Me.Caption = from_stack_1
  loc_A08433: FFree1Ad var_8C
  loc_A08436: Branch loc_A084DE
  loc_A08439: ILdRf var_C0
  loc_A0843C: LitI4 1
  loc_A08441: EqI4
  loc_A08442: BranchF loc_A084A6
  loc_A08445: FLdRfVar var_A8
  loc_A08448: FLdRfVar var_D4
  loc_A0844B: LitVarStr var_D0, "DetaPart"
  loc_A08450: PopAdLdVar
  loc_A08451: FLdRfVar var_98
  loc_A08454: FLdRfVar var_8C
  loc_A08457: FLdRfVar var_88
  loc_A0845A: NewIfNullPr clspartida
  loc_A0845D: from_stack_1v = clspartida.RsFrmGet()
  loc_A08462: FLdPr var_8C
  loc_A08465:  = Me.Fields
  loc_A0846A: FLdPr var_98
  loc_A0846D: from_stack_2 = Me.Item(from_stack_1)
  loc_A08472: FLdPr var_D4
  loc_A08475:  = Me.Value
  loc_A0847A: FLdRfVar var_A8
  loc_A0847D: CStrVarTmp
  loc_A0847E: FStStrNoPop var_90
  loc_A08481: FLdPr Me
  loc_A08484: VCallAd Control_ID_CodiPartLbl
  loc_A08487: FStAdFunc var_D8
  loc_A0848A: FLdPr var_D8
  loc_A0848D: Me.Caption = from_stack_1
  loc_A08492: FFree1Str var_90
  loc_A08495: FFreeAd var_8C = "": var_98 = "": var_D4 = ""
  loc_A084A0: FFree1Var var_A8 = ""
  loc_A084A3: Branch loc_A084DE
  loc_A084A6: FLdRfVar var_BC
  loc_A084A9: FLdRfVar var_88
  loc_A084AC: NewIfNullPr clspartida
  loc_A084AF: from_stack_1 = clspartida.RecordCount
  loc_A084B4: ILdRf var_BC
  loc_A084B7: CStrI4
  loc_A084B9: FStStrNoPop var_90
  loc_A084BC: LitStr " partidas encontradas"
  loc_A084BF: ConcatStr
  loc_A084C0: FStStrNoPop var_94
  loc_A084C3: FLdPr Me
  loc_A084C6: VCallAd Control_ID_CodiPartLbl
  loc_A084C9: FStAdFunc var_8C
  loc_A084CC: FLdPr var_8C
  loc_A084CF: Me.Caption = from_stack_1
  loc_A084D4: FFreeStr var_90 = ""
  loc_A084DB: FFree1Ad var_8C
  loc_A084DE: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '95CFC8
  'Data Table: 4AB9C0
  loc_95CFB0: ILdRf Me
  loc_95CFB3: CastAd
  loc_95CFB6: FStAdFunc var_88
  loc_95CFB9: FLdRfVar var_88
  loc_95CFBC: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_95CFC1: FFree1Ad var_88
  loc_95CFC4: ExitProcHresult
  loc_95CFC5: MemLdI2 global_36
End Sub

Private Sub cmdCalHasta_Click() '97FE40
  'Data Table: 4AB9C0
  loc_97FE0C: LitVar_Missing var_A4
  loc_97FE0F: PopAdLdVar
  loc_97FE10: LitVarI4
  loc_97FE18: PopAdLdVar
  loc_97FE19: ImpAdLdRf MemVar_C3D9A8
  loc_97FE1C: NewIfNullPr frmCalendario
  loc_97FE1F: frmCalendario.Show from_stack_1, from_stack_2
  loc_97FE24: ImpAdLdRf MemVar_C3D038
  loc_97FE27: CDargRef
  loc_97FE2B: FLdPr Me
  loc_97FE2E: VCallAd Control_ID_mskHasta
  loc_97FE31: FStAdFunc var_A8
  loc_97FE34: FLdPr var_A8
  loc_97FE37: LateIdSt
  loc_97FE3C: FFree1Ad var_A8
  loc_97FE3F: ExitProcHresult
End Sub

Private Sub cmdCalDesde_Click() '97FF78
  'Data Table: 4AB9C0
  loc_97FF44: LitVar_Missing var_A4
  loc_97FF47: PopAdLdVar
  loc_97FF48: LitVarI4
  loc_97FF50: PopAdLdVar
  loc_97FF51: ImpAdLdRf MemVar_C3D9A8
  loc_97FF54: NewIfNullPr frmCalendario
  loc_97FF57: frmCalendario.Show from_stack_1, from_stack_2
  loc_97FF5C: ImpAdLdRf MemVar_C3D038
  loc_97FF5F: CDargRef
  loc_97FF63: FLdPr Me
  loc_97FF66: VCallAd Control_ID_mskDesde
  loc_97FF69: FStAdFunc var_A8
  loc_97FF6C: FLdPr var_A8
  loc_97FF6F: LateIdSt
  loc_97FF74: FFree1Ad var_A8
  loc_97FF77: ExitProcHresult
End Sub

Private Sub cboPeriodo_Click() '9D30E0
  'Data Table: 4AB9C0
  loc_9D2FF8: FLdRfVar var_8C
  loc_9D2FFB: FLdPr Me
  loc_9D2FFE: VCallAd Control_ID_cboPeriodo
  loc_9D3001: FStAdFunc var_88
  loc_9D3004: FLdPr var_88
  loc_9D3007:  = Me.Text
  loc_9D300C: LitI2_Byte 1
  loc_9D300E: LitI2_Byte 1
  loc_9D3010: ILdRf var_8C
  loc_9D3013: CI2Str
  loc_9D3015: FLdRfVar var_9C
  loc_9D3018: ImpAdCallFPR4  = DateSerial(, , )
  loc_9D301D: FLdRfVar var_9C
  loc_9D3020: CStrVarTmp
  loc_9D3021: CVarStr var_AC
  loc_9D3024: PopAdLdVar
  loc_9D3025: FLdPr Me
  loc_9D3028: VCallAd Control_ID_mskDesde
  loc_9D302B: FStAdFunc var_C0
  loc_9D302E: FLdPr var_C0
  loc_9D3031: LateIdSt
  loc_9D3036: FFree1Str var_8C
  loc_9D3039: FFreeAd var_88 = ""
  loc_9D3040: FFreeVar var_9C = ""
  loc_9D3047: FLdRfVar var_8C
  loc_9D304A: FLdPr Me
  loc_9D304D: VCallAd Control_ID_cboPeriodo
  loc_9D3050: FStAdFunc var_88
  loc_9D3053: FLdPr var_88
  loc_9D3056:  = Me.Text
  loc_9D305B: ILdRf var_8C
  loc_9D305E: CI2Str
  loc_9D3060: ImpAdLdI2 MemVar_C3D064
  loc_9D3063: LtI2
  loc_9D3064: FFree1Str var_8C
  loc_9D3067: FFree1Ad var_88
  loc_9D306A: BranchF loc_9D30BF
  loc_9D306D: FLdRfVar var_8C
  loc_9D3070: FLdPr Me
  loc_9D3073: VCallAd Control_ID_cboPeriodo
  loc_9D3076: FStAdFunc var_88
  loc_9D3079: FLdPr var_88
  loc_9D307C:  = Me.Text
  loc_9D3081: LitI2_Byte &H1F
  loc_9D3083: LitI2_Byte &HC
  loc_9D3085: ILdRf var_8C
  loc_9D3088: CI2Str
  loc_9D308A: FLdRfVar var_9C
  loc_9D308D: ImpAdCallFPR4  = DateSerial(, , )
  loc_9D3092: FLdRfVar var_9C
  loc_9D3095: CStrVarTmp
  loc_9D3096: CVarStr var_AC
  loc_9D3099: PopAdLdVar
  loc_9D309A: FLdPr Me
  loc_9D309D: VCallAd Control_ID_mskHasta
  loc_9D30A0: FStAdFunc var_C0
  loc_9D30A3: FLdPr var_C0
  loc_9D30A6: LateIdSt
  loc_9D30AB: FFree1Str var_8C
  loc_9D30AE: FFreeAd var_88 = ""
  loc_9D30B5: FFreeVar var_9C = ""
  loc_9D30BC: Branch loc_9D30DF
  loc_9D30BF: ImpAdLdFPR8 MemVar_C3D04C
  loc_9D30C2: CStrDate
  loc_9D30C4: CVarStr var_9C
  loc_9D30C7: PopAdLdVar
  loc_9D30C8: FLdPr Me
  loc_9D30CB: VCallAd Control_ID_mskHasta
  loc_9D30CE: FStAdFunc var_88
  loc_9D30D1: FLdPr var_88
  loc_9D30D4: LateIdSt
  loc_9D30D9: FFree1Ad var_88
  loc_9D30DC: FFree1Var var_9C = ""
  loc_9D30DF: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '9855F4
  'Data Table: 4AB9C0
  loc_9855BC: FLdPr Me
  loc_9855BF: VCallAd Control_ID_statusBar
  loc_9855C2: FStAdFunc var_88
  loc_9855C5: FLdPr var_88
  loc_9855C8: LateIdLdVar var_98 DispID_1 0
  loc_9855CF: CStrVarTmp
  loc_9855D0: CVarStr var_A8
  loc_9855D3: PopAdLdVar
  loc_9855D4: FLdPr Me
  loc_9855D7: VCallAd Control_ID_statusBar
  loc_9855DA: FStAdFunc var_BC
  loc_9855DD: FLdPr var_BC
  loc_9855E0: LateIdSt
  loc_9855E5: FFreeAd var_88 = ""
  loc_9855EC: FFreeVar var_98 = ""
  loc_9855F3: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() '9B1E88
  'Data Table: 4AB9C0
  loc_9B1DD8: LitI2_Byte 0
  loc_9B1DDA: FLdPr Me
  loc_9B1DDD: MemStI2 bGenerado
  loc_9B1DE0: LitI2_Byte &HFF
  loc_9B1DE2: FLdPr Me
  loc_9B1DE5: MemStI2 bLogos
  loc_9B1DE8: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_9B1DED: ImpAdLdI2 MemVar_C3D064
  loc_9B1DF0: CStrUI1
  loc_9B1DF2: FStStrNoPop var_88
  loc_9B1DF5: FLdPr Me
  loc_9B1DF8: VCallAd Control_ID_cboPeriodo
  loc_9B1DFB: FStAdFunc var_8C
  loc_9B1DFE: FLdPr var_8C
  loc_9B1E01: Me.Text = from_stack_1
  loc_9B1E06: FFree1Str var_88
  loc_9B1E09: FFree1Ad var_8C
  loc_9B1E0C: LitVarStr var_9C, vbNullString
  loc_9B1E11: PopAdLdVar
  loc_9B1E12: FLdPr Me
  loc_9B1E15: VCallAd Control_ID_CodiPartMsk
  loc_9B1E18: FStAdFunc var_8C
  loc_9B1E1B: FLdPr var_8C
  loc_9B1E1E: LateIdSt
  loc_9B1E23: FFree1Ad var_8C
  loc_9B1E26: LitVarStr var_9C, vbNullString
  loc_9B1E2B: PopAdLdVar
  loc_9B1E2C: FLdPr Me
  loc_9B1E2F: VCallAd Control_ID_CodiOrgaMsk
  loc_9B1E32: FStAdFunc var_8C
  loc_9B1E35: FLdPr var_8C
  loc_9B1E38: LateIdSt
  loc_9B1E3D: FFree1Ad var_8C
  loc_9B1E40: LitStr vbNullString
  loc_9B1E43: FLdPr Me
  loc_9B1E46: VCallAd Control_ID_CodiPartLbl
  loc_9B1E49: FStAdFunc var_8C
  loc_9B1E4C: FLdPr var_8C
  loc_9B1E4F: Me.Caption = from_stack_1
  loc_9B1E54: FFree1Ad var_8C
  loc_9B1E57: LitStr vbNullString
  loc_9B1E5A: FLdPr Me
  loc_9B1E5D: VCallAd Control_ID_CodiOrgaLbl
  loc_9B1E60: FStAdFunc var_8C
  loc_9B1E63: FLdPr var_8C
  loc_9B1E66: Me.Caption = from_stack_1
  loc_9B1E6B: FFree1Ad var_8C
  loc_9B1E6E: Call HabilitarCriterio()
  loc_9B1E73: ILdRf Me
  loc_9B1E76: CastAd
  loc_9B1E79: FStAdFunc var_8C
  loc_9B1E7C: FLdRfVar var_8C
  loc_9B1E7F: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_9B1E84: FFree1Ad var_8C
  loc_9B1E87: ExitProcHresult
End Sub

Private Sub CodiOrgaMsk_UnknownEvent_0 '94F920
  'Data Table: 4AB9C0
  loc_94F90C: FLdPr Me
  loc_94F90F: VCallAd Control_ID_CodiOrgaMsk
  loc_94F912: CVarAd
  loc_94F916: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94F91B: FFree1Var var_94 = ""
  loc_94F91E: ExitProcHresult
End Sub

Private Sub CodiOrgaMsk_UnknownEvent_8 'A0B55C
  'Data Table: 4AB9C0
  loc_A0B410: LitStr "SELECT DetaOrga FROM infogov.organigrama WHERE PeriInfo = "
  loc_A0B413: FLdRfVar var_90
  loc_A0B416: FLdPr Me
  loc_A0B419: VCallAd Control_ID_cboPeriodo
  loc_A0B41C: FStAdFunc var_8C
  loc_A0B41F: FLdPr var_8C
  loc_A0B422:  = Me.Text
  loc_A0B427: ILdRf var_90
  loc_A0B42A: ConcatStr
  loc_A0B42B: FStStrNoPop var_94
  loc_A0B42E: LitStr " AND CodiOrga LIKE '"
  loc_A0B431: ConcatStr
  loc_A0B432: FStStrNoPop var_AC
  loc_A0B435: FLdPr Me
  loc_A0B438: VCallAd Control_ID_CodiOrgaMsk
  loc_A0B43B: FStAdFunc var_98
  loc_A0B43E: FLdPr var_98
  loc_A0B441: LateIdLdVar var_A8 DispID_22 0
  loc_A0B448: CStrVarTmp
  loc_A0B449: FStStrNoPop var_B0
  loc_A0B44C: ConcatStr
  loc_A0B44D: FStStrNoPop var_B4
  loc_A0B450: LitStr Chr(37) & "'"
  loc_A0B453: ConcatStr
  loc_A0B454: FStStrNoPop var_B8
  loc_A0B457: FLdRfVar var_88
  loc_A0B45A: NewIfNullPr clsorganigrama
  loc_A0B45D: Call clsorganigrama.RedefineRS(from_stack_1v)
  loc_A0B462: FFreeStr var_90 = "": var_94 = "": var_AC = "": var_B0 = "": var_B4 = ""
  loc_A0B471: FFreeAd var_8C = ""
  loc_A0B478: FFree1Var var_A8 = ""
  loc_A0B47B: FLdRfVar var_BC
  loc_A0B47E: FLdRfVar var_88
  loc_A0B481: NewIfNullPr clsorganigrama
  loc_A0B484: from_stack_1 = clsorganigrama.RecordCount
  loc_A0B489: ILdRf var_BC
  loc_A0B48C: FStR4 var_C0
  loc_A0B48F: ILdRf var_C0
  loc_A0B492: LitI4 0
  loc_A0B497: EqI4
  loc_A0B498: BranchF loc_A0B4B5
  loc_A0B49B: LitStr "0 registros encontrados"
  loc_A0B49E: FLdPr Me
  loc_A0B4A1: VCallAd Control_ID_CodiOrgaLbl
  loc_A0B4A4: FStAdFunc var_8C
  loc_A0B4A7: FLdPr var_8C
  loc_A0B4AA: Me.Caption = from_stack_1
  loc_A0B4AF: FFree1Ad var_8C
  loc_A0B4B2: Branch loc_A0B55A
  loc_A0B4B5: ILdRf var_C0
  loc_A0B4B8: LitI4 1
  loc_A0B4BD: EqI4
  loc_A0B4BE: BranchF loc_A0B522
  loc_A0B4C1: FLdRfVar var_A8
  loc_A0B4C4: FLdRfVar var_D4
  loc_A0B4C7: LitVarStr var_D0, "DetaOrga"
  loc_A0B4CC: PopAdLdVar
  loc_A0B4CD: FLdRfVar var_98
  loc_A0B4D0: FLdRfVar var_8C
  loc_A0B4D3: FLdRfVar var_88
  loc_A0B4D6: NewIfNullPr clsorganigrama
  loc_A0B4D9: from_stack_1v = clsorganigrama.RsFrmGet()
  loc_A0B4DE: FLdPr var_8C
  loc_A0B4E1:  = Me.Fields
  loc_A0B4E6: FLdPr var_98
  loc_A0B4E9: from_stack_2 = Me.Item(from_stack_1)
  loc_A0B4EE: FLdPr var_D4
  loc_A0B4F1:  = Me.Value
  loc_A0B4F6: FLdRfVar var_A8
  loc_A0B4F9: CStrVarTmp
  loc_A0B4FA: FStStrNoPop var_90
  loc_A0B4FD: FLdPr Me
  loc_A0B500: VCallAd Control_ID_CodiOrgaLbl
  loc_A0B503: FStAdFunc var_D8
  loc_A0B506: FLdPr var_D8
  loc_A0B509: Me.Caption = from_stack_1
  loc_A0B50E: FFree1Str var_90
  loc_A0B511: FFreeAd var_8C = "": var_98 = "": var_D4 = ""
  loc_A0B51C: FFree1Var var_A8 = ""
  loc_A0B51F: Branch loc_A0B55A
  loc_A0B522: FLdRfVar var_BC
  loc_A0B525: FLdRfVar var_88
  loc_A0B528: NewIfNullPr clsorganigrama
  loc_A0B52B: from_stack_1 = clsorganigrama.RecordCount
  loc_A0B530: ILdRf var_BC
  loc_A0B533: CStrI4
  loc_A0B535: FStStrNoPop var_90
  loc_A0B538: LitStr " organigramas encontrados"
  loc_A0B53B: ConcatStr
  loc_A0B53C: FStStrNoPop var_94
  loc_A0B53F: FLdPr Me
  loc_A0B542: VCallAd Control_ID_CodiOrgaLbl
  loc_A0B545: FStAdFunc var_8C
  loc_A0B548: FLdPr var_8C
  loc_A0B54B: Me.Caption = from_stack_1
  loc_A0B550: FFreeStr var_90 = ""
  loc_A0B557: FFree1Ad var_8C
  loc_A0B55A: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '95D060
  'Data Table: 4AB9C0
  loc_95D048: LitI2_Byte 0
  loc_95D04A: ILdRf Me
  loc_95D04D: CastAd
  loc_95D050: FStAdFunc var_88
  loc_95D053: FLdRfVar var_88
  loc_95D056: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_95D05B: FFree1Ad var_88
  loc_95D05E: ExitProcHresult
End Sub

Private Sub mskDesde_UnknownEvent_0 '94FA40
  'Data Table: 4AB9C0
  loc_94FA2C: FLdPr Me
  loc_94FA2F: VCallAd Control_ID_mskDesde
  loc_94FA32: CVarAd
  loc_94FA36: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94FA3B: FFree1Var var_94 = ""
  loc_94FA3E: ExitProcHresult
End Sub

Private Function mskDesde_UnknownEvent_8(arg_C) '9BBCD8
  'Data Table: 4AB9C0
  loc_9BBC28: FLdPr Me
  loc_9BBC2B: VCallAd Control_ID_mskDesde
  loc_9BBC2E: FStAdFunc var_88
  loc_9BBC31: FLdPr var_88
  loc_9BBC34: LateIdLdVar var_98 DispID_13 -32767
  loc_9BBC3B: CBoolVar
  loc_9BBC3D: FFree1Ad var_88
  loc_9BBC40: FFree1Var var_98 = ""
  loc_9BBC43: BranchF loc_9BBCD5
  loc_9BBC46: FLdPr Me
  loc_9BBC49: VCallAd Control_ID_mskDesde
  loc_9BBC4C: FStAdFunc var_88
  loc_9BBC4F: FLdPr var_88
  loc_9BBC52: LateIdLdVar var_98 DispID_15 0
  loc_9BBC59: PopAd
  loc_9BBC5B: LitI2_Byte &HFF
  loc_9BBC5D: PopTmpLdAd2 var_A2
  loc_9BBC60: LitNothing
  loc_9BBC62: CastAd
  loc_9BBC65: FStAdFunc var_A0
  loc_9BBC68: FLdRfVar var_A0
  loc_9BBC6B: LitStr "01/01/2018"
  loc_9BBC6E: LitI2_Byte 0
  loc_9BBC70: LitI2_Byte 0
  loc_9BBC72: FLdRfVar var_98
  loc_9BBC75: CStrVarTmp
  loc_9BBC76: FStStrNoPop var_9C
  loc_9BBC79: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9BBC7E: FStStrNoPop var_A8
  loc_9BBC81: FLdPr Me
  loc_9BBC84: MemStStrCopy
  loc_9BBC88: FFreeStr var_9C = ""
  loc_9BBC8F: FFreeAd var_88 = ""
  loc_9BBC96: FFree1Var var_98 = ""
  loc_9BBC99: FLdPr Me
  loc_9BBC9C: VCallAd Control_ID_mskDesde
  loc_9BBC9F: FStAdFunc var_B0
  loc_9BBCA2: LitNothing
  loc_9BBCA4: CastAd
  loc_9BBCA7: FStAdFunc var_AC
  loc_9BBCAA: FLdRfVar var_AC
  loc_9BBCAD: FLdZeroAd var_B0
  loc_9BBCB0: FStAdFuncNoPop
  loc_9BBCB3: CastAd
  loc_9BBCB6: FStAdFunc var_A0
  loc_9BBCB9: FLdRfVar var_A0
  loc_9BBCBC: FLdPr Me
  loc_9BBCBF: MemLdRfVar from_stack_1.global_100
  loc_9BBCC2: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9BBCC7: IStI2 arg_C
  loc_9BBCCA: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9BBCD5: ExitProcHresult
End Function

Private Sub cmdXLS_Click() '96B4EC
  'Data Table: 4AB9C0
  loc_96B4D0: LitI2_Byte &HFF
  loc_96B4D2: LitI2_Byte 0
  loc_96B4D4: ILdRf Me
  loc_96B4D7: CastAd
  loc_96B4DA: FStAdFunc var_88
  loc_96B4DD: FLdRfVar var_88
  loc_96B4E0: ImpAdCallFPR4 Proc_263_4_A28DF0(, , )
  loc_96B4E5: FFree1Ad var_88
  loc_96B4E8: ExitProcHresult
End Sub

Private Sub cmdCodiOrga_Click() '9FAED0
  'Data Table: 4AB9C0
  loc_9FAD94: LitI2_Byte &HFF
  loc_9FAD96: ImpAdLdRf MemVar_C3D710
  loc_9FAD99: NewIfNullPr bscOrganigrama
  loc_9FAD9C: Call bscOrganigrama.MuestroAnuladosPut(from_stack_1v)
  loc_9FADA1: LitNothing
  loc_9FADA3: CastAd
  loc_9FADA6: FStAdFuncNoPop
  loc_9FADA9: ImpAdLdRf MemVar_C3D710
  loc_9FADAC: NewIfNullPr bscOrganigrama
  loc_9FADAF: Call bscOrganigrama.global_4318932Set(from_stack_1v)
  loc_9FADB4: FFree1Ad var_88
  loc_9FADB7: LitVar_Missing var_A8
  loc_9FADBA: PopAdLdVar
  loc_9FADBB: LitVarI4
  loc_9FADC3: PopAdLdVar
  loc_9FADC4: ImpAdLdRf MemVar_C3D710
  loc_9FADC7: NewIfNullPr bscOrganigrama
  loc_9FADCA: bscOrganigrama.Show from_stack_1, from_stack_2
  loc_9FADCF: FLdRfVar var_AC
  loc_9FADD2: FLdRfVar var_88
  loc_9FADD5: ImpAdLdRf MemVar_C3D710
  loc_9FADD8: NewIfNullPr bscOrganigrama
  loc_9FADDB: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_9FADE0: FLdPr var_88
  loc_9FADE3: from_stack_1 = clsbase.RecordCount
  loc_9FADE8: ILdRf var_AC
  loc_9FADEB: LitI4 0
  loc_9FADF0: GtI4
  loc_9FADF1: FFree1Ad var_88
  loc_9FADF4: BranchF loc_9FAECF
  loc_9FADF7: FLdRfVar var_C8
  loc_9FADFA: FLdRfVar var_B8
  loc_9FADFD: LitVarStr var_98, "CodiOrga"
  loc_9FAE02: PopAdLdVar
  loc_9FAE03: FLdRfVar var_B4
  loc_9FAE06: FLdRfVar var_B0
  loc_9FAE09: FLdRfVar var_88
  loc_9FAE0C: ImpAdLdRf MemVar_C3D710
  loc_9FAE0F: NewIfNullPr bscOrganigrama
  loc_9FAE12: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_9FAE17: FLdPr var_88
  loc_9FAE1A: from_stack_1v = clsbase.RsFrmGet()
  loc_9FAE1F: FLdPr var_B0
  loc_9FAE22:  = Me.Fields
  loc_9FAE27: FLdPr var_B4
  loc_9FAE2A: from_stack_2 = Me.Item(from_stack_1)
  loc_9FAE2F: FLdPr var_B8
  loc_9FAE32:  = Me.Value
  loc_9FAE37: FLdRfVar var_C8
  loc_9FAE3A: CStrVarTmp
  loc_9FAE3B: CVarStr var_D8
  loc_9FAE3E: PopAdLdVar
  loc_9FAE3F: FLdPr Me
  loc_9FAE42: VCallAd Control_ID_CodiOrgaMsk
  loc_9FAE45: FStAdFunc var_DC
  loc_9FAE48: FLdPr var_DC
  loc_9FAE4B: LateIdSt
  loc_9FAE50: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9FAE5D: FFreeVar var_C8 = ""
  loc_9FAE64: FLdRfVar var_C8
  loc_9FAE67: FLdRfVar var_B8
  loc_9FAE6A: LitVarStr var_98, "DetaOrga"
  loc_9FAE6F: PopAdLdVar
  loc_9FAE70: FLdRfVar var_B4
  loc_9FAE73: FLdRfVar var_B0
  loc_9FAE76: FLdRfVar var_88
  loc_9FAE79: ImpAdLdRf MemVar_C3D710
  loc_9FAE7C: NewIfNullPr bscOrganigrama
  loc_9FAE7F: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_9FAE84: FLdPr var_88
  loc_9FAE87: from_stack_1v = clsbase.RsFrmGet()
  loc_9FAE8C: FLdPr var_B0
  loc_9FAE8F:  = Me.Fields
  loc_9FAE94: FLdPr var_B4
  loc_9FAE97: from_stack_2 = Me.Item(from_stack_1)
  loc_9FAE9C: FLdPr var_B8
  loc_9FAE9F:  = Me.Value
  loc_9FAEA4: FLdRfVar var_C8
  loc_9FAEA7: CStrVarTmp
  loc_9FAEA8: FStStrNoPop var_E0
  loc_9FAEAB: FLdPr Me
  loc_9FAEAE: VCallAd Control_ID_CodiOrgaLbl
  loc_9FAEB1: FStAdFunc var_DC
  loc_9FAEB4: FLdPr var_DC
  loc_9FAEB7: Me.Caption = from_stack_1
  loc_9FAEBC: FFree1Str var_E0
  loc_9FAEBF: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9FAECC: FFree1Var var_C8 = ""
  loc_9FAECF: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '95CF30
  'Data Table: 4AB9C0
  loc_95CF18: ILdRf Me
  loc_95CF1B: CastAd
  loc_95CF1E: FStAdFunc var_88
  loc_95CF21: FLdRfVar var_88
  loc_95CF24: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_95CF29: FFree1Ad var_88
  loc_95CF2C: ExitProcHresult
  loc_95CF2D: FnAbsI2
  loc_95CF2E: FStStrNoPop cmdPrevia_Click800
End Sub

Private Sub mskHasta_UnknownEvent_0 '9525D8
  'Data Table: 4AB9C0
  loc_9525C4: FLdPr Me
  loc_9525C7: VCallAd Control_ID_mskHasta
  loc_9525CA: CVarAd
  loc_9525CE: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_9525D3: FFree1Var var_94 = ""
  loc_9525D6: ExitProcHresult
End Sub

Private Function mskHasta_UnknownEvent_8(arg_C) '9BB9E4
  'Data Table: 4AB9C0
  loc_9BB934: FLdPr Me
  loc_9BB937: VCallAd Control_ID_mskHasta
  loc_9BB93A: FStAdFunc var_88
  loc_9BB93D: FLdPr var_88
  loc_9BB940: LateIdLdVar var_98 DispID_13 -32767
  loc_9BB947: CBoolVar
  loc_9BB949: FFree1Ad var_88
  loc_9BB94C: FFree1Var var_98 = ""
  loc_9BB94F: BranchF loc_9BB9E1
  loc_9BB952: FLdPr Me
  loc_9BB955: VCallAd Control_ID_mskHasta
  loc_9BB958: FStAdFunc var_88
  loc_9BB95B: FLdPr var_88
  loc_9BB95E: LateIdLdVar var_98 DispID_15 0
  loc_9BB965: PopAd
  loc_9BB967: LitI2_Byte &HFF
  loc_9BB969: PopTmpLdAd2 var_A2
  loc_9BB96C: LitNothing
  loc_9BB96E: CastAd
  loc_9BB971: FStAdFunc var_A0
  loc_9BB974: FLdRfVar var_A0
  loc_9BB977: LitStr "01/01/2018"
  loc_9BB97A: LitI2_Byte 0
  loc_9BB97C: LitI2_Byte 0
  loc_9BB97E: FLdRfVar var_98
  loc_9BB981: CStrVarTmp
  loc_9BB982: FStStrNoPop var_9C
  loc_9BB985: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9BB98A: FStStrNoPop var_A8
  loc_9BB98D: FLdPr Me
  loc_9BB990: MemStStrCopy
  loc_9BB994: FFreeStr var_9C = ""
  loc_9BB99B: FFreeAd var_88 = ""
  loc_9BB9A2: FFree1Var var_98 = ""
  loc_9BB9A5: FLdPr Me
  loc_9BB9A8: VCallAd Control_ID_mskHasta
  loc_9BB9AB: FStAdFunc var_B0
  loc_9BB9AE: LitNothing
  loc_9BB9B0: CastAd
  loc_9BB9B3: FStAdFunc var_AC
  loc_9BB9B6: FLdRfVar var_AC
  loc_9BB9B9: FLdZeroAd var_B0
  loc_9BB9BC: FStAdFuncNoPop
  loc_9BB9BF: CastAd
  loc_9BB9C2: FStAdFunc var_A0
  loc_9BB9C5: FLdRfVar var_A0
  loc_9BB9C8: FLdPr Me
  loc_9BB9CB: MemLdRfVar from_stack_1.global_100
  loc_9BB9CE: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9BB9D3: IStI2 arg_C
  loc_9BB9D6: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9BB9E1: ExitProcHresult
  loc_9BB9E2: ConcatStr
End Function

Public Function htmFileGet() '4ACCBC
  htmFileGet = htmFile
End Function

Public Sub htmFilePut(Value) '4ACCCB
  htmFile = Value
End Sub

Public Sub htmFileSet(Value) '4ACCDA
  htmFile = Value
End Sub

Public Function bGeneradoGet() '4ACCE9
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '4ACCF8
  bGenerado = Value
End Sub

Public Function bLogosGet() '4ACD07
  bLogosGet = bLogos
End Function

Public Sub bLogosPut(Value) '4ACD16
  bLogos = Value
End Sub

Public Sub HabilitarCriterio() '9C6DE0
  'Data Table: 4AB9C0
  loc_9C6D2C: LitI4 0
  loc_9C6D31: LitI4 8
  loc_9C6D36: FLdRfVar var_88
  loc_9C6D39: Redim
  loc_9C6D43: FLdPr Me
  loc_9C6D46: VCallAd Control_ID_cboPeriodo
  loc_9C6D49: CVarAd
  loc_9C6D4D: ParmAry1St
  loc_9C6D53: FLdPr Me
  loc_9C6D56: VCallAd Control_ID_mskDesde
  loc_9C6D59: CVarAd
  loc_9C6D5D: ParmAry1St
  loc_9C6D63: FLdPr Me
  loc_9C6D66: VCallAd Control_ID_cmdCalDesde
  loc_9C6D69: CVarAd
  loc_9C6D6D: ParmAry1St
  loc_9C6D73: FLdPr Me
  loc_9C6D76: VCallAd Control_ID_mskHasta
  loc_9C6D79: CVarAd
  loc_9C6D7D: ParmAry1St
  loc_9C6D83: FLdPr Me
  loc_9C6D86: VCallAd Control_ID_cmdCalHasta
  loc_9C6D89: CVarAd
  loc_9C6D8D: ParmAry1St
  loc_9C6D93: FLdPr Me
  loc_9C6D96: VCallAd Control_ID_CodiPartMsk
  loc_9C6D99: CVarAd
  loc_9C6D9D: ParmAry1St
  loc_9C6DA3: FLdPr Me
  loc_9C6DA6: VCallAd Control_ID_cmdCodiPart
  loc_9C6DA9: CVarAd
  loc_9C6DAD: ParmAry1St
  loc_9C6DB3: FLdPr Me
  loc_9C6DB6: VCallAd Control_ID_CodiOrgaMsk
  loc_9C6DB9: CVarAd
  loc_9C6DBD: ParmAry1St
  loc_9C6DC3: FLdPr Me
  loc_9C6DC6: VCallAd Control_ID_cmdCodiOrga
  loc_9C6DC9: CVarAd
  loc_9C6DCD: ParmAry1St
  loc_9C6DD3: FLdRfVar var_88
  loc_9C6DD6: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9C6DDB: FLdRfVar var_88
  loc_9C6DDE: Erase
  loc_9C6DDF: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'AF6054
  'Data Table: 4AB9C0
  loc_AF5950: OnErrorGoto loc_AF5FEE
  loc_AF5953: FLdPr Me
  loc_AF5956: MemLdI2 bGenerado
  loc_AF5959: BranchF loc_AF595D
  loc_AF595C: ExitProcHresult
  loc_AF595D: LitVarStr var_A4, "Generando reporte..."
  loc_AF5962: PopAdLdVar
  loc_AF5963: FLdPr Me
  loc_AF5966: VCallAd Control_ID_statusBar
  loc_AF5969: FStAdFunc var_B8
  loc_AF596C: FLdPr var_B8
  loc_AF596F: LateIdSt
  loc_AF5974: FFree1Ad var_B8
  loc_AF5977: LitI4 &HB
  loc_AF597C: CI2I4
  loc_AF597D: FLdPr Me
  loc_AF5980: Me.MousePointer = from_stack_1
  loc_AF5985: LitI2_Byte 0
  loc_AF5987: PopTmpLdAd2 var_BA
  loc_AF598A: from_stack_2v = mskDesde_UnknownEvent_8(from_stack_1v)
  loc_AF598F: LitI2_Byte 0
  loc_AF5991: PopTmpLdAd2 var_BA
  loc_AF5994: from_stack_2v = mskHasta_UnknownEvent_8(from_stack_1v)
  loc_AF5999: LitI2_Byte 0
  loc_AF599B: PopTmpLdAd2 var_BA
  loc_AF599E: Call CodiPartMsk_UnknownEvent_8()
  loc_AF59A3: LitI2_Byte 0
  loc_AF59A5: PopTmpLdAd2 var_BA
  loc_AF59A8: Call CodiPartMsk_UnknownEvent_8()
  loc_AF59AD: FLdPr Me
  loc_AF59B0: VCallAd Control_ID_mskDesde
  loc_AF59B3: FStAdFunc var_B8
  loc_AF59B6: FLdPr var_B8
  loc_AF59B9: LateIdLdVar var_CC DispID_15 0
  loc_AF59C0: PopAd
  loc_AF59C2: FLdPr Me
  loc_AF59C5: VCallAd Control_ID_mskHasta
  loc_AF59C8: FStAdFunc var_130
  loc_AF59CB: FLdPr var_130
  loc_AF59CE: LateIdLdVar var_140 DispID_15 0
  loc_AF59D5: PopAd
  loc_AF59D7: LitVarStr var_B4, " AND FechImpu BETWEEN '"
  loc_AF59DC: LitI4 1
  loc_AF59E1: LitI4 1
  loc_AF59E6: LitVarStr var_A4, "yyyy-mm-dd"
  loc_AF59EB: FStVarCopyObj var_EC
  loc_AF59EE: FLdRfVar var_EC
  loc_AF59F1: FLdRfVar var_CC
  loc_AF59F4: CStrVarTmp
  loc_AF59F5: CVarStr var_DC
  loc_AF59F8: FLdRfVar var_FC
  loc_AF59FB: ImpAdCallFPR4  = Format(, )
  loc_AF5A00: FLdRfVar var_FC
  loc_AF5A03: ConcatVar var_10C
  loc_AF5A07: LitVarStr var_11C, "' AND '"
  loc_AF5A0C: ConcatVar var_12C
  loc_AF5A10: LitI4 1
  loc_AF5A15: LitI4 1
  loc_AF5A1A: LitVarStr var_160, "yyyy-mm-dd"
  loc_AF5A1F: FStVarCopyObj var_170
  loc_AF5A22: FLdRfVar var_170
  loc_AF5A25: FLdRfVar var_140
  loc_AF5A28: CStrVarTmp
  loc_AF5A29: CVarStr var_150
  loc_AF5A2C: FLdRfVar var_180
  loc_AF5A2F: ImpAdCallFPR4  = Format(, )
  loc_AF5A34: FLdRfVar var_180
  loc_AF5A37: ConcatVar var_190
  loc_AF5A3B: LitVarStr var_1A0, "'"
  loc_AF5A40: ConcatVar var_1B0
  loc_AF5A44: CStrVarTmp
  loc_AF5A45: FStStr var_88
  loc_AF5A48: FFreeAd var_B8 = ""
  loc_AF5A4F: FFreeVar var_CC = "": var_DC = "": var_EC = "": var_FC = "": var_10C = "": var_140 = "": var_150 = "": var_170 = "": var_12C = "": var_180 = "": var_190 = ""
  loc_AF5A6A: FLdPr Me
  loc_AF5A6D: VCallAd Control_ID_CodiPartMsk
  loc_AF5A70: FStAdFunc var_B8
  loc_AF5A73: FLdPr var_B8
  loc_AF5A76: LateIdLdVar var_CC DispID_22 0
  loc_AF5A7D: PopAd
  loc_AF5A7F: FLdPr Me
  loc_AF5A82: VCallAd Control_ID_CodiPartMsk
  loc_AF5A85: FStAdFunc var_130
  loc_AF5A88: FLdPr var_130
  loc_AF5A8B: LateIdLdVar var_DC DispID_22 0
  loc_AF5A92: PopAd
  loc_AF5A94: LitVarStr var_B4, vbNullString
  loc_AF5A99: FStVarCopyObj var_FC
  loc_AF5A9C: FLdRfVar var_FC
  loc_AF5A9F: LitStr " AND imputacion.CodiPart LIKE '"
  loc_AF5AA2: FLdRfVar var_DC
  loc_AF5AA5: CStrVarTmp
  loc_AF5AA6: FStStrNoPop var_1B8
  loc_AF5AA9: ConcatStr
  loc_AF5AAA: FStStrNoPop var_1BC
  loc_AF5AAD: LitStr Chr(37) & "'"
  loc_AF5AB0: ConcatStr
  loc_AF5AB1: CVarStr var_EC
  loc_AF5AB4: FLdRfVar var_CC
  loc_AF5AB7: CStrVarTmp
  loc_AF5AB8: FStStrNoPop var_1B4
  loc_AF5ABB: LitStr vbNullString
  loc_AF5ABE: NeStr
  loc_AF5AC0: CVarBoolI2 var_A4
  loc_AF5AC4: FLdRfVar var_10C
  loc_AF5AC7: ImpAdCallFPR4  = IIf(, , )
  loc_AF5ACC: FLdRfVar var_10C
  loc_AF5ACF: CStrVarTmp
  loc_AF5AD0: FStStr var_8C
  loc_AF5AD3: FFreeStr var_1B4 = "": var_1B8 = ""
  loc_AF5ADC: FFreeAd var_B8 = ""
  loc_AF5AE3: FFreeVar var_CC = "": var_DC = "": var_A4 = "": var_EC = "": var_FC = ""
  loc_AF5AF2: FLdPr Me
  loc_AF5AF5: VCallAd Control_ID_CodiOrgaMsk
  loc_AF5AF8: FStAdFunc var_B8
  loc_AF5AFB: FLdPr var_B8
  loc_AF5AFE: LateIdLdVar var_CC DispID_22 0
  loc_AF5B05: PopAd
  loc_AF5B07: FLdPr Me
  loc_AF5B0A: VCallAd Control_ID_CodiOrgaMsk
  loc_AF5B0D: FStAdFunc var_130
  loc_AF5B10: FLdPr var_130
  loc_AF5B13: LateIdLdVar var_DC DispID_22 0
  loc_AF5B1A: PopAd
  loc_AF5B1C: LitVarStr var_B4, vbNullString
  loc_AF5B21: FStVarCopyObj var_FC
  loc_AF5B24: FLdRfVar var_FC
  loc_AF5B27: LitStr " AND imputacion.CodiOrga LIKE '"
  loc_AF5B2A: FLdRfVar var_DC
  loc_AF5B2D: CStrVarTmp
  loc_AF5B2E: FStStrNoPop var_1B8
  loc_AF5B31: ConcatStr
  loc_AF5B32: FStStrNoPop var_1BC
  loc_AF5B35: LitStr Chr(37) & "'"
  loc_AF5B38: ConcatStr
  loc_AF5B39: CVarStr var_EC
  loc_AF5B3C: FLdRfVar var_CC
  loc_AF5B3F: CStrVarTmp
  loc_AF5B40: FStStrNoPop var_1B4
  loc_AF5B43: LitStr vbNullString
  loc_AF5B46: NeStr
  loc_AF5B48: CVarBoolI2 var_A4
  loc_AF5B4C: FLdRfVar var_10C
  loc_AF5B4F: ImpAdCallFPR4  = IIf(, , )
  loc_AF5B54: FLdRfVar var_10C
  loc_AF5B57: CStrVarTmp
  loc_AF5B58: FStStr var_90
  loc_AF5B5B: FFreeStr var_1B4 = "": var_1B8 = ""
  loc_AF5B64: FFreeAd var_B8 = ""
  loc_AF5B6B: FFreeVar var_CC = "": var_DC = "": var_A4 = "": var_EC = "": var_FC = ""
  loc_AF5B7A: FLdPr Me
  loc_AF5B7D: MemLdRfVar from_stack_1.global_72
  loc_AF5B80: NewIfNullAd
  loc_AF5B83: FStAd var_1C0 
  loc_AF5B87: LitStr "SELECT imputacion.CodiPart, DetaPart, imputacion.CodiOrga, DetaOrga, imputacion.CodiFifu, DetaFifu,"
  loc_AF5B8A: LitStr " ExpeImpu, Sum(MapaImpu)-Sum(PagaImpu) AS SaldImpu FROM imputacion"
  loc_AF5B8D: ConcatStr
  loc_AF5B8E: FStStrNoPop var_1B4
  loc_AF5B91: LitStr " LEFT JOIN partida ON partida.PeriInfo = imputacion.PeriInfo AND partida.CodiPart = imputacion.CodiPart"
  loc_AF5B94: ConcatStr
  loc_AF5B95: FStStrNoPop var_1B8
  loc_AF5B98: LitStr " LEFT JOIN infogov.organigrama ON organigrama.PeriInfo = imputacion.PeriInfo AND organigrama.CodiOrga = imputacion.CodiOrga"
  loc_AF5B9B: ConcatStr
  loc_AF5B9C: FStStrNoPop var_1BC
  loc_AF5B9F: LitStr " LEFT JOIN finalidad ON finalidad.PeriInfo = imputacion.PeriInfo AND finalidad.CodiFifu = imputacion.CodiFifu"
  loc_AF5BA2: ConcatStr
  loc_AF5BA3: FStStrNoPop var_1C4
  loc_AF5BA6: LitStr " WHERE imputacion.PeriInfo = "
  loc_AF5BA9: ConcatStr
  loc_AF5BAA: FStStrNoPop var_1CC
  loc_AF5BAD: FLdRfVar var_1C8
  loc_AF5BB0: FLdPr Me
  loc_AF5BB3: VCallAd Control_ID_cboPeriodo
  loc_AF5BB6: FStAdFunc var_B8
  loc_AF5BB9: FLdPr var_B8
  loc_AF5BBC:  = Me.Text
  loc_AF5BC1: ILdRf var_1C8
  loc_AF5BC4: ConcatStr
  loc_AF5BC5: FStStrNoPop var_1D0
  loc_AF5BC8: LitStr " AND (MapaImpu<>0 OR PagaImpu<>0)"
  loc_AF5BCB: ConcatStr
  loc_AF5BCC: FStStrNoPop var_1D4
  loc_AF5BCF: ILdRf var_88
  loc_AF5BD2: ConcatStr
  loc_AF5BD3: FStStrNoPop var_1D8
  loc_AF5BD6: ILdRf var_8C
  loc_AF5BD9: ConcatStr
  loc_AF5BDA: FStStrNoPop var_1DC
  loc_AF5BDD: ILdRf var_90
  loc_AF5BE0: ConcatStr
  loc_AF5BE1: FStStrNoPop var_1E0
  loc_AF5BE4: LitStr " GROUP BY CodiPart, CodiOrga, CodiFifu, ExpeImpu HAVING SaldImpu <> 0"
  loc_AF5BE7: ConcatStr
  loc_AF5BE8: FStStrNoPop var_1E4
  loc_AF5BEB: LitStr " ORDER BY CodiPart, CodiOrga, CodiFifu, ExpeImpu"
  loc_AF5BEE: ConcatStr
  loc_AF5BEF: FStStrNoPop var_1E8
  loc_AF5BF2: FLdPr var_1C0
  loc_AF5BF5: Call clsimputacion.RedefineRS(from_stack_1v)
  loc_AF5BFA: FFreeStr var_1B4 = "": var_1B8 = "": var_1BC = "": var_1C4 = "": var_1CC = "": var_1C8 = "": var_1D0 = "": var_1D4 = "": var_1D8 = "": var_1DC = "": var_1E0 = "": var_1E4 = ""
  loc_AF5C17: FFree1Ad var_B8
  loc_AF5C1A: FLdRfVar var_1EC
  loc_AF5C1D: FLdPr var_1C0
  loc_AF5C20: from_stack_1 = clsimputacion.RecordCount
  loc_AF5C25: ILdRf var_1EC
  loc_AF5C28: LitI4 0
  loc_AF5C2D: EqI4
  loc_AF5C2E: BranchF loc_AF5C41
  loc_AF5C31: LitI4 0
  loc_AF5C36: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_AF5C39: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_AF5C3E: Branch loc_AF5FC5
  loc_AF5C41: LitI4 0
  loc_AF5C46: LitI4 1
  loc_AF5C4B: FLdPr Me
  loc_AF5C4E: MemLdRfVar from_stack_1.global_80
  loc_AF5C51: Redim
  loc_AF5C5B: LitI2_Byte 0
  loc_AF5C5D: CStrUI1
  loc_AF5C5F: FStStrNoPop var_1B4
  loc_AF5C62: FLdPr Me
  loc_AF5C65: MemStStrCopy
  loc_AF5C69: FFree1Str var_1B4
  loc_AF5C6C: LitI2_Byte 0
  loc_AF5C6E: FLdPr Me
  loc_AF5C71: MemStI2 global_84
  loc_AF5C74: FLdPr var_1C0
  loc_AF5C77: Call clsimputacion.MoveFirst()
  loc_AF5C7C: Call Proc_180_33_9E0854()
  loc_AF5C81: FLdRfVar var_BA
  loc_AF5C84: FLdPr var_1C0
  loc_AF5C87: from_stack_1 = clsimputacion.EOF
  loc_AF5C8C: FLdI2 var_BA
  loc_AF5C8F: NotI4
  loc_AF5C90: BranchF loc_AF5DE5
  loc_AF5C93: FLdRfVar var_CC
  loc_AF5C96: FLdRfVar var_1F0
  loc_AF5C99: LitVarStr var_A4, "CodiPart"
  loc_AF5C9E: PopAdLdVar
  loc_AF5C9F: FLdRfVar var_130
  loc_AF5CA2: FLdRfVar var_B8
  loc_AF5CA5: FLdPr var_1C0
  loc_AF5CA8: from_stack_1v = clsimputacion.RsFrmGet()
  loc_AF5CAD: FLdPr var_B8
  loc_AF5CB0:  = Me.Fields
  loc_AF5CB5: FLdPr var_130
  loc_AF5CB8: from_stack_2 = Me.Item(from_stack_1)
  loc_AF5CBD: FLdPr var_1F0
  loc_AF5CC0:  = Me.Value
  loc_AF5CC5: FLdRfVar var_CC
  loc_AF5CC8: FLdPr Me
  loc_AF5CCB: MemLdI2 global_84
  loc_AF5CCE: CI4UI1
  loc_AF5CCF: FLdPr Me
  loc_AF5CD2: MemLdStr global_80
  loc_AF5CD5: Ary1LdPr
  loc_AF5CD6: MemLdStr global_0
  loc_AF5CD9: CVarStr var_B4
  loc_AF5CDC: HardType
  loc_AF5CDD: NeVarBool
  loc_AF5CDF: FFreeAd var_B8 = "": var_130 = ""
  loc_AF5CE8: FFree1Var var_CC = ""
  loc_AF5CEB: BranchF loc_AF5CF6
  loc_AF5CEE: Call Proc_180_33_9E0854()
  loc_AF5CF3: Branch loc_AF5DE2
  loc_AF5CF6: FLdRfVar var_CC
  loc_AF5CF9: FLdRfVar var_1F0
  loc_AF5CFC: LitVarStr var_A4, "CodiOrga"
  loc_AF5D01: PopAdLdVar
  loc_AF5D02: FLdRfVar var_130
  loc_AF5D05: FLdRfVar var_B8
  loc_AF5D08: FLdPr var_1C0
  loc_AF5D0B: from_stack_1v = clsimputacion.RsFrmGet()
  loc_AF5D10: FLdPr var_B8
  loc_AF5D13:  = Me.Fields
  loc_AF5D18: FLdPr var_130
  loc_AF5D1B: from_stack_2 = Me.Item(from_stack_1)
  loc_AF5D20: FLdPr var_1F0
  loc_AF5D23:  = Me.Value
  loc_AF5D28: FLdRfVar var_CC
  loc_AF5D2B: FLdPr Me
  loc_AF5D2E: MemLdI2 global_86
  loc_AF5D31: CI4UI1
  loc_AF5D32: FLdPr Me
  loc_AF5D35: MemLdI2 global_84
  loc_AF5D38: CI4UI1
  loc_AF5D39: FLdPr Me
  loc_AF5D3C: MemLdStr global_80
  loc_AF5D3F: Ary1LdPr
  loc_AF5D40: MemLdStr global_8
  loc_AF5D43: Ary1LdPr
  loc_AF5D44: MemLdStr global_0
  loc_AF5D47: CVarStr var_B4
  loc_AF5D4A: HardType
  loc_AF5D4B: NeVarBool
  loc_AF5D4D: FFreeAd var_B8 = "": var_130 = ""
  loc_AF5D56: FFree1Var var_CC = ""
  loc_AF5D59: BranchF loc_AF5D64
  loc_AF5D5C: Call Proc_180_34_9F654C()
  loc_AF5D61: Branch loc_AF5DE2
  loc_AF5D64: FLdRfVar var_CC
  loc_AF5D67: FLdRfVar var_1F0
  loc_AF5D6A: LitVarStr var_A4, "CodiFifu"
  loc_AF5D6F: PopAdLdVar
  loc_AF5D70: FLdRfVar var_130
  loc_AF5D73: FLdRfVar var_B8
  loc_AF5D76: FLdPr var_1C0
  loc_AF5D79: from_stack_1v = clsimputacion.RsFrmGet()
  loc_AF5D7E: FLdPr var_B8
  loc_AF5D81:  = Me.Fields
  loc_AF5D86: FLdPr var_130
  loc_AF5D89: from_stack_2 = Me.Item(from_stack_1)
  loc_AF5D8E: FLdPr var_1F0
  loc_AF5D91:  = Me.Value
  loc_AF5D96: FLdRfVar var_CC
  loc_AF5D99: FLdPr Me
  loc_AF5D9C: MemLdI2 global_88
  loc_AF5D9F: CI4UI1
  loc_AF5DA0: FLdPr Me
  loc_AF5DA3: MemLdI2 global_86
  loc_AF5DA6: CI4UI1
  loc_AF5DA7: FLdPr Me
  loc_AF5DAA: MemLdI2 global_84
  loc_AF5DAD: CI4UI1
  loc_AF5DAE: FLdPr Me
  loc_AF5DB1: MemLdStr global_80
  loc_AF5DB4: Ary1LdPr
  loc_AF5DB5: MemLdStr global_8
  loc_AF5DB8: Ary1LdPr
  loc_AF5DB9: MemLdStr global_8
  loc_AF5DBC: Ary1LdPr
  loc_AF5DBD: MemLdStr global_0
  loc_AF5DC0: CVarStr var_B4
  loc_AF5DC3: HardType
  loc_AF5DC4: NeVarBool
  loc_AF5DC6: FFreeAd var_B8 = "": var_130 = ""
  loc_AF5DCF: FFree1Var var_CC = ""
  loc_AF5DD2: BranchF loc_AF5DDD
  loc_AF5DD5: Call Proc_180_35_A106D4()
  loc_AF5DDA: Branch loc_AF5DE2
  loc_AF5DDD: Call Proc_180_36_A23E84()
  loc_AF5DE2: Branch loc_AF5C81
  loc_AF5DE5: LitNothing
  loc_AF5DE7: FStAd var_1C0 
  loc_AF5DEB: LitI2_Byte 1
  loc_AF5DED: FLdPr Me
  loc_AF5DF0: MemLdRfVar from_stack_1.global_84
  loc_AF5DF3: FLdPr Me
  loc_AF5DF6: MemLdStr global_80
  loc_AF5DF9: LitI2_Byte 1
  loc_AF5DFB: FnUBound
  loc_AF5DFD: CI2I4
  loc_AF5DFE: ForI2 var_1F4
  loc_AF5E04: LitI2_Byte 0
  loc_AF5E06: FLdPr Me
  loc_AF5E09: MemLdRfVar from_stack_1.global_96
  loc_AF5E0C: CVarRef
  loc_AF5E11: LitI2_Byte &HFF
  loc_AF5E13: FLdPr Me
  loc_AF5E16: MemLdI2 global_84
  loc_AF5E19: CI4UI1
  loc_AF5E1A: FLdPr Me
  loc_AF5E1D: MemLdStr global_80
  loc_AF5E20: Ary1LdPr
  loc_AF5E21: MemLdStr global_20
  loc_AF5E24: CVarStr var_A4
  loc_AF5E27: PopAdLdVar
  loc_AF5E28: FLdRfVar var_94
  loc_AF5E2B: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AF5E30: LitI2_Byte 1
  loc_AF5E32: FLdPr Me
  loc_AF5E35: MemLdRfVar from_stack_1.global_86
  loc_AF5E38: FLdPr Me
  loc_AF5E3B: MemLdI2 global_84
  loc_AF5E3E: CI4UI1
  loc_AF5E3F: FLdPr Me
  loc_AF5E42: MemLdStr global_80
  loc_AF5E45: Ary1LdPr
  loc_AF5E46: MemLdStr global_8
  loc_AF5E49: LitI2_Byte 1
  loc_AF5E4B: FnUBound
  loc_AF5E4D: CI2I4
  loc_AF5E4E: ForI2 var_1F8
  loc_AF5E54: LitI2_Byte 1
  loc_AF5E56: FLdPr Me
  loc_AF5E59: MemLdRfVar from_stack_1.global_88
  loc_AF5E5C: FLdPr Me
  loc_AF5E5F: MemLdI2 global_86
  loc_AF5E62: CI4UI1
  loc_AF5E63: FLdPr Me
  loc_AF5E66: MemLdI2 global_84
  loc_AF5E69: CI4UI1
  loc_AF5E6A: FLdPr Me
  loc_AF5E6D: MemLdStr global_80
  loc_AF5E70: Ary1LdPr
  loc_AF5E71: MemLdStr global_8
  loc_AF5E74: Ary1LdPr
  loc_AF5E75: MemLdStr global_8
  loc_AF5E78: LitI2_Byte 1
  loc_AF5E7A: FnUBound
  loc_AF5E7C: CI2I4
  loc_AF5E7D: ForI2 var_1FC
  loc_AF5E83: FLdPr Me
  loc_AF5E86: MemLdI2 global_88
  loc_AF5E89: CI4UI1
  loc_AF5E8A: FLdPr Me
  loc_AF5E8D: MemLdI2 global_86
  loc_AF5E90: CI4UI1
  loc_AF5E91: FLdPr Me
  loc_AF5E94: MemLdI2 global_84
  loc_AF5E97: CI4UI1
  loc_AF5E98: FLdPr Me
  loc_AF5E9B: MemLdStr global_80
  loc_AF5E9E: Ary1LdPr
  loc_AF5E9F: MemLdStr global_8
  loc_AF5EA2: Ary1LdPr
  loc_AF5EA3: MemLdStr global_8
  loc_AF5EA6: Ary1LdPr
  loc_AF5EA7: MemLdStr global_8
  loc_AF5EAA: LitI2_Byte 1
  loc_AF5EAC: FnUBound
  loc_AF5EAE: FLdPr Me
  loc_AF5EB1: MemLdI2 global_88
  loc_AF5EB4: CI4UI1
  loc_AF5EB5: FLdPr Me
  loc_AF5EB8: MemLdI2 global_86
  loc_AF5EBB: CI4UI1
  loc_AF5EBC: FLdPr Me
  loc_AF5EBF: MemLdI2 global_84
  loc_AF5EC2: CI4UI1
  loc_AF5EC3: FLdPr Me
  loc_AF5EC6: MemLdStr global_80
  loc_AF5EC9: Ary1LdPr
  loc_AF5ECA: MemLdStr global_8
  loc_AF5ECD: Ary1LdPr
  loc_AF5ECE: MemLdStr global_8
  loc_AF5ED1: Ary1LdPr
  loc_AF5ED2: MemStI4 global_12
  loc_AF5ED5: FLdPr Me
  loc_AF5ED8: MemLdI2 global_86
  loc_AF5EDB: CI4UI1
  loc_AF5EDC: FLdPr Me
  loc_AF5EDF: MemLdI2 global_84
  loc_AF5EE2: CI4UI1
  loc_AF5EE3: FLdPr Me
  loc_AF5EE6: MemLdStr global_80
  loc_AF5EE9: Ary1LdPr
  loc_AF5EEA: MemLdStr global_8
  loc_AF5EED: Ary1LdPr
  loc_AF5EEE: MemLdStr global_12
  loc_AF5EF1: FLdPr Me
  loc_AF5EF4: MemLdI2 global_88
  loc_AF5EF7: CI4UI1
  loc_AF5EF8: FLdPr Me
  loc_AF5EFB: MemLdI2 global_86
  loc_AF5EFE: CI4UI1
  loc_AF5EFF: FLdPr Me
  loc_AF5F02: MemLdI2 global_84
  loc_AF5F05: CI4UI1
  loc_AF5F06: FLdPr Me
  loc_AF5F09: MemLdStr global_80
  loc_AF5F0C: Ary1LdPr
  loc_AF5F0D: MemLdStr global_8
  loc_AF5F10: Ary1LdPr
  loc_AF5F11: MemLdStr global_8
  loc_AF5F14: Ary1LdPr
  loc_AF5F15: MemLdStr global_12
  loc_AF5F18: AddI4
  loc_AF5F19: FLdPr Me
  loc_AF5F1C: MemLdI2 global_86
  loc_AF5F1F: CI4UI1
  loc_AF5F20: FLdPr Me
  loc_AF5F23: MemLdI2 global_84
  loc_AF5F26: CI4UI1
  loc_AF5F27: FLdPr Me
  loc_AF5F2A: MemLdStr global_80
  loc_AF5F2D: Ary1LdPr
  loc_AF5F2E: MemLdStr global_8
  loc_AF5F31: Ary1LdPr
  loc_AF5F32: MemStI4 global_12
  loc_AF5F35: FLdPr Me
  loc_AF5F38: MemLdRfVar from_stack_1.global_88
  loc_AF5F3B: NextI2 var_1FC, loc_AF5E83
  loc_AF5F40: FLdPr Me
  loc_AF5F43: MemLdI2 global_84
  loc_AF5F46: CI4UI1
  loc_AF5F47: FLdPr Me
  loc_AF5F4A: MemLdStr global_80
  loc_AF5F4D: Ary1LdPr
  loc_AF5F4E: MemLdStr global_12
  loc_AF5F51: FLdPr Me
  loc_AF5F54: MemLdI2 global_86
  loc_AF5F57: CI4UI1
  loc_AF5F58: FLdPr Me
  loc_AF5F5B: MemLdI2 global_84
  loc_AF5F5E: CI4UI1
  loc_AF5F5F: FLdPr Me
  loc_AF5F62: MemLdStr global_80
  loc_AF5F65: Ary1LdPr
  loc_AF5F66: MemLdStr global_8
  loc_AF5F69: Ary1LdPr
  loc_AF5F6A: MemLdStr global_12
  loc_AF5F6D: AddI4
  loc_AF5F6E: FLdPr Me
  loc_AF5F71: MemLdI2 global_84
  loc_AF5F74: CI4UI1
  loc_AF5F75: FLdPr Me
  loc_AF5F78: MemLdStr global_80
  loc_AF5F7B: Ary1LdPr
  loc_AF5F7C: MemStI4 global_12
  loc_AF5F7F: FLdPr Me
  loc_AF5F82: MemLdRfVar from_stack_1.global_86
  loc_AF5F85: NextI2 var_1F8, loc_AF5E54
  loc_AF5F8A: FLdPr Me
  loc_AF5F8D: MemLdI2 global_84
  loc_AF5F90: CI4UI1
  loc_AF5F91: FLdPr Me
  loc_AF5F94: MemLdStr global_80
  loc_AF5F97: Ary1LdPr
  loc_AF5F98: MemLdStr global_12
  loc_AF5F9B: LitI4 1
  loc_AF5FA0: AddI4
  loc_AF5FA1: FLdPr Me
  loc_AF5FA4: MemLdI2 global_84
  loc_AF5FA7: CI4UI1
  loc_AF5FA8: FLdPr Me
  loc_AF5FAB: MemLdStr global_80
  loc_AF5FAE: Ary1LdPr
  loc_AF5FAF: MemStI4 global_12
  loc_AF5FB2: FLdPr Me
  loc_AF5FB5: MemLdRfVar from_stack_1.global_84
  loc_AF5FB8: NextI2 var_1F4, loc_AF5E04
  loc_AF5FBD: LitI2_Byte &HFF
  loc_AF5FBF: FLdPr Me
  loc_AF5FC2: MemStI2 bGenerado
  loc_AF5FC5: LitI4 0
  loc_AF5FCA: CI2I4
  loc_AF5FCB: FLdPr Me
  loc_AF5FCE: Me.MousePointer = from_stack_1
  loc_AF5FD3: LitVarStr var_A4, vbNullString
  loc_AF5FD8: PopAdLdVar
  loc_AF5FD9: FLdPr Me
  loc_AF5FDC: VCallAd Control_ID_statusBar
  loc_AF5FDF: FStAdFunc var_B8
  loc_AF5FE2: FLdPr var_B8
  loc_AF5FE5: LateIdSt
  loc_AF5FEA: FFree1Ad var_B8
  loc_AF5FED: ExitProcHresult
  loc_AF5FEE: LitI4 0
  loc_AF5FF3: LitStr "Error "
  loc_AF5FF6: FLdRfVar var_1EC
  loc_AF5FF9: ImpAdCallI2 Err 'rtcErrObj
  loc_AF5FFE: FStAdFunc var_B8
  loc_AF6001: FLdPr var_B8
  loc_AF6004:  = Err.Number
  loc_AF6009: ILdRf var_1EC
  loc_AF600C: CStrI4
  loc_AF600E: FStStrNoPop var_1B4
  loc_AF6011: ConcatStr
  loc_AF6012: FStStrNoPop var_1B8
  loc_AF6015: LitStr ": "
  loc_AF6018: ConcatStr
  loc_AF6019: FStStrNoPop var_1C4
  loc_AF601C: FLdRfVar var_1BC
  loc_AF601F: ImpAdCallI2 Err 'rtcErrObj
  loc_AF6024: FStAdFunc var_130
  loc_AF6027: FLdPr var_130
  loc_AF602A:  = Err.Description
  loc_AF602F: ILdRf var_1BC
  loc_AF6032: ConcatStr
  loc_AF6033: FStStrNoPop var_1C8
  loc_AF6036: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_AF603B: FFreeStr var_1B4 = "": var_1B8 = "": var_1C4 = "": var_1BC = ""
  loc_AF6048: FFreeAd var_B8 = ""
  loc_AF604F: ExitProcHresult
  loc_AF6050: ExitProcHresult
  loc_AF6051: AddI2
End Sub

Public Sub GeneraHTML() 'AB1ED8
  'Data Table: 4AB9C0
  loc_AB197C: FLdRfVar var_88
  loc_AB197F: LitI2_Byte 0
  loc_AB1981: LitI2_Byte &HFF
  loc_AB1983: ImpAdLdI4 MemVar_C3D83C
  loc_AB1986: FLdPr Me
  loc_AB1989: MemLdRfVar from_stack_1.global_76
  loc_AB198C: NewIfNullPr IFileSystem3
  loc_AB198F: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_AB1994: ILdRf var_88
  loc_AB1997: FLdPr Me
  loc_AB199A: MemStVarAd
  loc_AB199E: FFree1Ad var_88
  loc_AB19A1: Call Proc_180_37_AA0950()
  loc_AB19A6: LitI2_Byte 1
  loc_AB19A8: FLdPr Me
  loc_AB19AB: MemLdRfVar from_stack_1.global_84
  loc_AB19AE: FLdPr Me
  loc_AB19B1: MemLdStr global_80
  loc_AB19B4: LitI2_Byte 1
  loc_AB19B6: FnUBound
  loc_AB19B8: CI2I4
  loc_AB19B9: ForI2 var_8C
  loc_AB19BF: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_AB19C4: PopAdLdVar
  loc_AB19C5: FLdPr Me
  loc_AB19C8: MemLdRfVar from_stack_1.htmFile
  loc_AB19CB: LdPrVar
  loc_AB19CD: LateMemCall
  loc_AB19D3: LitStr "<td rowspan="""
  loc_AB19D6: FLdPr Me
  loc_AB19D9: MemLdI2 global_84
  loc_AB19DC: CI4UI1
  loc_AB19DD: FLdPr Me
  loc_AB19E0: MemLdStr global_80
  loc_AB19E3: Ary1LdPr
  loc_AB19E4: MemLdStr global_12
  loc_AB19E7: CStrI4
  loc_AB19E9: FStStrNoPop var_B0
  loc_AB19EC: ConcatStr
  loc_AB19ED: FStStrNoPop var_B4
  loc_AB19F0: LitStr """ align=""left"" valign=""top"" class=""LineaDato"">"
  loc_AB19F3: ConcatStr
  loc_AB19F4: FStStrNoPop var_B8
  loc_AB19F7: FLdPr Me
  loc_AB19FA: MemLdI2 global_84
  loc_AB19FD: CI4UI1
  loc_AB19FE: FLdPr Me
  loc_AB1A01: MemLdStr global_80
  loc_AB1A04: Ary1LdPr
  loc_AB1A05: MemLdStr global_0
  loc_AB1A08: ConcatStr
  loc_AB1A09: FStStrNoPop var_BC
  loc_AB1A0C: LitStr "<br>"
  loc_AB1A0F: ConcatStr
  loc_AB1A10: FStStrNoPop var_C0
  loc_AB1A13: FLdPr Me
  loc_AB1A16: MemLdI2 global_84
  loc_AB1A19: CI4UI1
  loc_AB1A1A: FLdPr Me
  loc_AB1A1D: MemLdStr global_80
  loc_AB1A20: Ary1LdPr
  loc_AB1A21: MemLdStr global_4
  loc_AB1A24: ConcatStr
  loc_AB1A25: FStStrNoPop var_C4
  loc_AB1A28: LitStr "</td>"
  loc_AB1A2B: ConcatStr
  loc_AB1A2C: CVarStr var_D4
  loc_AB1A2F: PopAdLdVar
  loc_AB1A30: FLdPr Me
  loc_AB1A33: MemLdRfVar from_stack_1.htmFile
  loc_AB1A36: LdPrVar
  loc_AB1A38: LateMemCall
  loc_AB1A3E: FFreeStr var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = ""
  loc_AB1A4D: FFree1Var var_D4 = ""
  loc_AB1A50: LitI2_Byte 1
  loc_AB1A52: FLdPr Me
  loc_AB1A55: MemLdRfVar from_stack_1.global_86
  loc_AB1A58: FLdPr Me
  loc_AB1A5B: MemLdI2 global_84
  loc_AB1A5E: CI4UI1
  loc_AB1A5F: FLdPr Me
  loc_AB1A62: MemLdStr global_80
  loc_AB1A65: Ary1LdPr
  loc_AB1A66: MemLdStr global_8
  loc_AB1A69: LitI2_Byte 1
  loc_AB1A6B: FnUBound
  loc_AB1A6D: CI2I4
  loc_AB1A6E: ForI2 var_D8
  loc_AB1A74: FLdPr Me
  loc_AB1A77: MemLdI2 global_86
  loc_AB1A7A: LitI2_Byte 1
  loc_AB1A7C: GtI2
  loc_AB1A7D: BranchF loc_AB1A94
  loc_AB1A80: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_AB1A85: PopAdLdVar
  loc_AB1A86: FLdPr Me
  loc_AB1A89: MemLdRfVar from_stack_1.htmFile
  loc_AB1A8C: LdPrVar
  loc_AB1A8E: LateMemCall
  loc_AB1A94: LitStr "<td rowspan="""
  loc_AB1A97: FLdPr Me
  loc_AB1A9A: MemLdI2 global_86
  loc_AB1A9D: CI4UI1
  loc_AB1A9E: FLdPr Me
  loc_AB1AA1: MemLdI2 global_84
  loc_AB1AA4: CI4UI1
  loc_AB1AA5: FLdPr Me
  loc_AB1AA8: MemLdStr global_80
  loc_AB1AAB: Ary1LdPr
  loc_AB1AAC: MemLdStr global_8
  loc_AB1AAF: Ary1LdPr
  loc_AB1AB0: MemLdStr global_12
  loc_AB1AB3: CStrI4
  loc_AB1AB5: FStStrNoPop var_B0
  loc_AB1AB8: ConcatStr
  loc_AB1AB9: FStStrNoPop var_B4
  loc_AB1ABC: LitStr """ align=""left"" valign=""top"" class=""LineaDato"">"
  loc_AB1ABF: ConcatStr
  loc_AB1AC0: FStStrNoPop var_B8
  loc_AB1AC3: FLdPr Me
  loc_AB1AC6: MemLdI2 global_86
  loc_AB1AC9: CI4UI1
  loc_AB1ACA: FLdPr Me
  loc_AB1ACD: MemLdI2 global_84
  loc_AB1AD0: CI4UI1
  loc_AB1AD1: FLdPr Me
  loc_AB1AD4: MemLdStr global_80
  loc_AB1AD7: Ary1LdPr
  loc_AB1AD8: MemLdStr global_8
  loc_AB1ADB: Ary1LdPr
  loc_AB1ADC: MemLdStr global_0
  loc_AB1ADF: ConcatStr
  loc_AB1AE0: FStStrNoPop var_BC
  loc_AB1AE3: LitStr "<br>"
  loc_AB1AE6: ConcatStr
  loc_AB1AE7: FStStrNoPop var_C0
  loc_AB1AEA: FLdPr Me
  loc_AB1AED: MemLdI2 global_86
  loc_AB1AF0: CI4UI1
  loc_AB1AF1: FLdPr Me
  loc_AB1AF4: MemLdI2 global_84
  loc_AB1AF7: CI4UI1
  loc_AB1AF8: FLdPr Me
  loc_AB1AFB: MemLdStr global_80
  loc_AB1AFE: Ary1LdPr
  loc_AB1AFF: MemLdStr global_8
  loc_AB1B02: Ary1LdPr
  loc_AB1B03: MemLdStr global_4
  loc_AB1B06: ConcatStr
  loc_AB1B07: FStStrNoPop var_C4
  loc_AB1B0A: LitStr "</td>"
  loc_AB1B0D: ConcatStr
  loc_AB1B0E: CVarStr var_D4
  loc_AB1B11: PopAdLdVar
  loc_AB1B12: FLdPr Me
  loc_AB1B15: MemLdRfVar from_stack_1.htmFile
  loc_AB1B18: LdPrVar
  loc_AB1B1A: LateMemCall
  loc_AB1B20: FFreeStr var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = ""
  loc_AB1B2F: FFree1Var var_D4 = ""
  loc_AB1B32: LitI2_Byte 1
  loc_AB1B34: FLdPr Me
  loc_AB1B37: MemLdRfVar from_stack_1.global_88
  loc_AB1B3A: FLdPr Me
  loc_AB1B3D: MemLdI2 global_86
  loc_AB1B40: CI4UI1
  loc_AB1B41: FLdPr Me
  loc_AB1B44: MemLdI2 global_84
  loc_AB1B47: CI4UI1
  loc_AB1B48: FLdPr Me
  loc_AB1B4B: MemLdStr global_80
  loc_AB1B4E: Ary1LdPr
  loc_AB1B4F: MemLdStr global_8
  loc_AB1B52: Ary1LdPr
  loc_AB1B53: MemLdStr global_8
  loc_AB1B56: LitI2_Byte 1
  loc_AB1B58: FnUBound
  loc_AB1B5A: CI2I4
  loc_AB1B5B: ForI2 var_DC
  loc_AB1B61: FLdPr Me
  loc_AB1B64: MemLdI2 global_88
  loc_AB1B67: LitI2_Byte 1
  loc_AB1B69: GtI2
  loc_AB1B6A: BranchF loc_AB1B81
  loc_AB1B6D: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_AB1B72: PopAdLdVar
  loc_AB1B73: FLdPr Me
  loc_AB1B76: MemLdRfVar from_stack_1.htmFile
  loc_AB1B79: LdPrVar
  loc_AB1B7B: LateMemCall
  loc_AB1B81: LitStr "<td rowspan="""
  loc_AB1B84: FLdPr Me
  loc_AB1B87: MemLdI2 global_88
  loc_AB1B8A: CI4UI1
  loc_AB1B8B: FLdPr Me
  loc_AB1B8E: MemLdI2 global_86
  loc_AB1B91: CI4UI1
  loc_AB1B92: FLdPr Me
  loc_AB1B95: MemLdI2 global_84
  loc_AB1B98: CI4UI1
  loc_AB1B99: FLdPr Me
  loc_AB1B9C: MemLdStr global_80
  loc_AB1B9F: Ary1LdPr
  loc_AB1BA0: MemLdStr global_8
  loc_AB1BA3: Ary1LdPr
  loc_AB1BA4: MemLdStr global_8
  loc_AB1BA7: Ary1LdPr
  loc_AB1BA8: MemLdStr global_12
  loc_AB1BAB: CStrI4
  loc_AB1BAD: FStStrNoPop var_B0
  loc_AB1BB0: ConcatStr
  loc_AB1BB1: FStStrNoPop var_B4
  loc_AB1BB4: LitStr """ align=""left"" valign=""top"" class=""LineaDato"">"
  loc_AB1BB7: ConcatStr
  loc_AB1BB8: FStStrNoPop var_B8
  loc_AB1BBB: FLdPr Me
  loc_AB1BBE: MemLdI2 global_88
  loc_AB1BC1: CI4UI1
  loc_AB1BC2: FLdPr Me
  loc_AB1BC5: MemLdI2 global_86
  loc_AB1BC8: CI4UI1
  loc_AB1BC9: FLdPr Me
  loc_AB1BCC: MemLdI2 global_84
  loc_AB1BCF: CI4UI1
  loc_AB1BD0: FLdPr Me
  loc_AB1BD3: MemLdStr global_80
  loc_AB1BD6: Ary1LdPr
  loc_AB1BD7: MemLdStr global_8
  loc_AB1BDA: Ary1LdPr
  loc_AB1BDB: MemLdStr global_8
  loc_AB1BDE: Ary1LdPr
  loc_AB1BDF: MemLdStr global_0
  loc_AB1BE2: ConcatStr
  loc_AB1BE3: FStStrNoPop var_BC
  loc_AB1BE6: LitStr "<br>"
  loc_AB1BE9: ConcatStr
  loc_AB1BEA: FStStrNoPop var_C0
  loc_AB1BED: FLdPr Me
  loc_AB1BF0: MemLdI2 global_88
  loc_AB1BF3: CI4UI1
  loc_AB1BF4: FLdPr Me
  loc_AB1BF7: MemLdI2 global_86
  loc_AB1BFA: CI4UI1
  loc_AB1BFB: FLdPr Me
  loc_AB1BFE: MemLdI2 global_84
  loc_AB1C01: CI4UI1
  loc_AB1C02: FLdPr Me
  loc_AB1C05: MemLdStr global_80
  loc_AB1C08: Ary1LdPr
  loc_AB1C09: MemLdStr global_8
  loc_AB1C0C: Ary1LdPr
  loc_AB1C0D: MemLdStr global_8
  loc_AB1C10: Ary1LdPr
  loc_AB1C11: MemLdStr global_4
  loc_AB1C14: ConcatStr
  loc_AB1C15: FStStrNoPop var_C4
  loc_AB1C18: LitStr "</td>"
  loc_AB1C1B: ConcatStr
  loc_AB1C1C: CVarStr var_D4
  loc_AB1C1F: PopAdLdVar
  loc_AB1C20: FLdPr Me
  loc_AB1C23: MemLdRfVar from_stack_1.htmFile
  loc_AB1C26: LdPrVar
  loc_AB1C28: LateMemCall
  loc_AB1C2E: FFreeStr var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = ""
  loc_AB1C3D: FFree1Var var_D4 = ""
  loc_AB1C40: LitI4 1
  loc_AB1C45: FLdPr Me
  loc_AB1C48: MemLdRfVar from_stack_1.global_92
  loc_AB1C4B: FLdPr Me
  loc_AB1C4E: MemLdI2 global_88
  loc_AB1C51: CI4UI1
  loc_AB1C52: FLdPr Me
  loc_AB1C55: MemLdI2 global_86
  loc_AB1C58: CI4UI1
  loc_AB1C59: FLdPr Me
  loc_AB1C5C: MemLdI2 global_84
  loc_AB1C5F: CI4UI1
  loc_AB1C60: FLdPr Me
  loc_AB1C63: MemLdStr global_80
  loc_AB1C66: Ary1LdPr
  loc_AB1C67: MemLdStr global_8
  loc_AB1C6A: Ary1LdPr
  loc_AB1C6B: MemLdStr global_8
  loc_AB1C6E: Ary1LdPr
  loc_AB1C6F: MemLdStr global_8
  loc_AB1C72: LitI2_Byte 1
  loc_AB1C74: FnUBound
  loc_AB1C76: ForI4 var_E4
  loc_AB1C7C: FLdPr Me
  loc_AB1C7F: MemLdStr global_92
  loc_AB1C82: LitI4 1
  loc_AB1C87: GtI4
  loc_AB1C88: BranchF loc_AB1C9F
  loc_AB1C8B: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_AB1C90: PopAdLdVar
  loc_AB1C91: FLdPr Me
  loc_AB1C94: MemLdRfVar from_stack_1.htmFile
  loc_AB1C97: LdPrVar
  loc_AB1C99: LateMemCall
  loc_AB1C9F: FLdPr Me
  loc_AB1CA2: MemLdStr global_92
  loc_AB1CA5: FLdPr Me
  loc_AB1CA8: MemLdI2 global_88
  loc_AB1CAB: CI4UI1
  loc_AB1CAC: FLdPr Me
  loc_AB1CAF: MemLdI2 global_86
  loc_AB1CB2: CI4UI1
  loc_AB1CB3: FLdPr Me
  loc_AB1CB6: MemLdI2 global_84
  loc_AB1CB9: CI4UI1
  loc_AB1CBA: FLdPr Me
  loc_AB1CBD: MemLdStr global_80
  loc_AB1CC0: AryLock
  loc_AB1CC3: Ary1LdPr
  loc_AB1CC4: MemLdStr global_8
  loc_AB1CC7: AryLock
  loc_AB1CCA: Ary1LdPr
  loc_AB1CCB: MemLdStr global_8
  loc_AB1CCE: AryLock
  loc_AB1CD1: Ary1LdPr
  loc_AB1CD2: MemLdStr global_8
  loc_AB1CD5: AryLock
  loc_AB1CD8: Ary1LdRf
  loc_AB1CD9: FStR4 var_F8
  loc_AB1CDC: LitI4 0
  loc_AB1CE1: LitI4 0
  loc_AB1CE6: LitI2_Byte 0
  loc_AB1CE8: LitStr "left"
  loc_AB1CEB: FMemLdR4 var_F8(0)
  loc_AB1CF0: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AB1CF5: CVarStr var_D4
  loc_AB1CF8: PopAdLdVar
  loc_AB1CF9: FLdPr Me
  loc_AB1CFC: MemLdRfVar from_stack_1.htmFile
  loc_AB1CFF: LdPrVar
  loc_AB1D01: LateMemCall
  loc_AB1D07: FFree1Var var_D4 = ""
  loc_AB1D0A: LitI4 0
  loc_AB1D0F: LitI4 0
  loc_AB1D14: LitI2_Byte 0
  loc_AB1D16: LitStr "right"
  loc_AB1D19: FMemLdR4 var_F8(4)
  loc_AB1D1E: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AB1D23: CVarStr var_D4
  loc_AB1D26: PopAdLdVar
  loc_AB1D27: FLdPr Me
  loc_AB1D2A: MemLdRfVar from_stack_1.htmFile
  loc_AB1D2D: LdPrVar
  loc_AB1D2F: LateMemCall
  loc_AB1D35: FFree1Var var_D4 = ""
  loc_AB1D38: LitI4 0
  loc_AB1D3D: FStR4 var_F8
  loc_AB1D40: AryUnlock
  loc_AB1D43: AryUnlock
  loc_AB1D46: AryUnlock
  loc_AB1D49: AryUnlock
  loc_AB1D4C: LitVarStr var_9C, "     </tr>"
  loc_AB1D51: PopAdLdVar
  loc_AB1D52: FLdPr Me
  loc_AB1D55: MemLdRfVar from_stack_1.htmFile
  loc_AB1D58: LdPrVar
  loc_AB1D5A: LateMemCall
  loc_AB1D60: FLdPr Me
  loc_AB1D63: MemLdRfVar from_stack_1.global_92
  loc_AB1D66: NextI4 var_E4, loc_AB1C7C
  loc_AB1D6B: FLdPr Me
  loc_AB1D6E: MemLdRfVar from_stack_1.global_88
  loc_AB1D71: NextI2 var_DC, loc_AB1B61
  loc_AB1D76: FLdPr Me
  loc_AB1D79: MemLdRfVar from_stack_1.global_86
  loc_AB1D7C: NextI2 var_D8, loc_AB1A74
  loc_AB1D81: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_AB1D86: PopAdLdVar
  loc_AB1D87: FLdPr Me
  loc_AB1D8A: MemLdRfVar from_stack_1.htmFile
  loc_AB1D8D: LdPrVar
  loc_AB1D8F: LateMemCall
  loc_AB1D95: LitStr "    <th colspan=""3"" align=""right"" class=""LineaDato"">Subtotal ("
  loc_AB1D98: FLdPr Me
  loc_AB1D9B: MemLdI2 global_84
  loc_AB1D9E: CI4UI1
  loc_AB1D9F: FLdPr Me
  loc_AB1DA2: MemLdStr global_80
  loc_AB1DA5: Ary1LdPr
  loc_AB1DA6: MemLdStr global_0
  loc_AB1DA9: ConcatStr
  loc_AB1DAA: FStStrNoPop var_B0
  loc_AB1DAD: LitStr ")</th>"
  loc_AB1DB0: ConcatStr
  loc_AB1DB1: CVarStr var_D4
  loc_AB1DB4: PopAdLdVar
  loc_AB1DB5: FLdPr Me
  loc_AB1DB8: MemLdRfVar from_stack_1.htmFile
  loc_AB1DBB: LdPrVar
  loc_AB1DBD: LateMemCall
  loc_AB1DC3: FFree1Str var_B0
  loc_AB1DC6: FFree1Var var_D4 = ""
  loc_AB1DC9: LitStr "    <th align=""right"" class=""Totales"">"
  loc_AB1DCC: FLdPr Me
  loc_AB1DCF: MemLdI2 global_84
  loc_AB1DD2: CI4UI1
  loc_AB1DD3: FLdPr Me
  loc_AB1DD6: MemLdStr global_80
  loc_AB1DD9: Ary1LdPr
  loc_AB1DDA: MemLdStr global_20
  loc_AB1DDD: ConcatStr
  loc_AB1DDE: FStStrNoPop var_B0
  loc_AB1DE1: LitStr "</th>"
  loc_AB1DE4: ConcatStr
  loc_AB1DE5: CVarStr var_D4
  loc_AB1DE8: PopAdLdVar
  loc_AB1DE9: FLdPr Me
  loc_AB1DEC: MemLdRfVar from_stack_1.htmFile
  loc_AB1DEF: LdPrVar
  loc_AB1DF1: LateMemCall
  loc_AB1DF7: FFree1Str var_B0
  loc_AB1DFA: FFree1Var var_D4 = ""
  loc_AB1DFD: LitVarStr var_9C, "  </tr>"
  loc_AB1E02: PopAdLdVar
  loc_AB1E03: FLdPr Me
  loc_AB1E06: MemLdRfVar from_stack_1.htmFile
  loc_AB1E09: LdPrVar
  loc_AB1E0B: LateMemCall
  loc_AB1E11: FLdPr Me
  loc_AB1E14: MemLdRfVar from_stack_1.global_84
  loc_AB1E17: NextI2 var_8C, loc_AB19BF
  loc_AB1E1C: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_AB1E21: PopAdLdVar
  loc_AB1E22: FLdPr Me
  loc_AB1E25: MemLdRfVar from_stack_1.htmFile
  loc_AB1E28: LdPrVar
  loc_AB1E2A: LateMemCall
  loc_AB1E30: LitVarStr var_9C, "    <th colspan=""5"" class=""Encabezado"">&nbsp;</th>"
  loc_AB1E35: PopAdLdVar
  loc_AB1E36: FLdPr Me
  loc_AB1E39: MemLdRfVar from_stack_1.htmFile
  loc_AB1E3C: LdPrVar
  loc_AB1E3E: LateMemCall
  loc_AB1E44: LitVarStr var_9C, "  </tr>"
  loc_AB1E49: PopAdLdVar
  loc_AB1E4A: FLdPr Me
  loc_AB1E4D: MemLdRfVar from_stack_1.htmFile
  loc_AB1E50: LdPrVar
  loc_AB1E52: LateMemCall
  loc_AB1E58: LitVarStr var_9C, "  <tr class=""LineaDato"">"
  loc_AB1E5D: PopAdLdVar
  loc_AB1E5E: FLdPr Me
  loc_AB1E61: MemLdRfVar from_stack_1.htmFile
  loc_AB1E64: LdPrVar
  loc_AB1E66: LateMemCall
  loc_AB1E6C: LitVarStr var_9C, "    <th colspan=""4"" align=""right"" class=""LineaDato"">TOTAL:</th>"
  loc_AB1E71: PopAdLdVar
  loc_AB1E72: FLdPr Me
  loc_AB1E75: MemLdRfVar from_stack_1.htmFile
  loc_AB1E78: LdPrVar
  loc_AB1E7A: LateMemCall
  loc_AB1E80: LitStr "    <th align=""right"" class=""Totales"">"
  loc_AB1E83: FLdPr Me
  loc_AB1E86: MemLdStr global_96
  loc_AB1E89: ConcatStr
  loc_AB1E8A: FStStrNoPop var_B0
  loc_AB1E8D: LitStr "</th>"
  loc_AB1E90: ConcatStr
  loc_AB1E91: CVarStr var_D4
  loc_AB1E94: PopAdLdVar
  loc_AB1E95: FLdPr Me
  loc_AB1E98: MemLdRfVar from_stack_1.htmFile
  loc_AB1E9B: LdPrVar
  loc_AB1E9D: LateMemCall
  loc_AB1EA3: FFree1Str var_B0
  loc_AB1EA6: FFree1Var var_D4 = ""
  loc_AB1EA9: LitVarStr var_9C, "  </tr>"
  loc_AB1EAE: PopAdLdVar
  loc_AB1EAF: FLdPr Me
  loc_AB1EB2: MemLdRfVar from_stack_1.htmFile
  loc_AB1EB5: LdPrVar
  loc_AB1EB7: LateMemCall
  loc_AB1EBD: Call Proc_180_38_9821C0()
  loc_AB1EC2: FLdPr Me
  loc_AB1EC5: MemLdRfVar from_stack_1.htmFile
  loc_AB1EC8: LdPrVar
  loc_AB1ECA: LateMemCall
  loc_AB1ED0: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_AB1ED5: ExitProcHresult
  loc_AB1ED6: AryLock
End Sub

Public Sub GeneraXLS() '96F93C
  'Data Table: 4AB9C0
  loc_96F914: LitI2_Byte &HFF
  loc_96F916: FLdPr Me
  loc_96F919: MemStI2 global_104
  loc_96F91C: LitI2_Byte 0
  loc_96F91E: FLdPr Me
  loc_96F921: MemStI2 bLogos
  loc_96F924: Call GeneraHTML()
  loc_96F929: LitI2_Byte &HFF
  loc_96F92B: FLdPr Me
  loc_96F92E: MemStI2 bLogos
  loc_96F931: LitI2_Byte 0
  loc_96F933: FLdPr Me
  loc_96F936: MemStI2 global_104
  loc_96F939: ExitProcHresult
  loc_96F93A: ImpAdLdI4 MemVar_0
End Sub

Private Function Proc_180_33_9E0854() '9E0854
  'Data Table: 4AB9C0
  loc_9E074C: FLdPr Me
  loc_9E074F: MemLdI2 global_84
  loc_9E0752: LitI2_Byte 1
  loc_9E0754: AddI2
  loc_9E0755: FLdPr Me
  loc_9E0758: MemStI2 global_84
  loc_9E075B: LitI2_Byte 0
  loc_9E075D: FLdPr Me
  loc_9E0760: MemStI2 global_86
  loc_9E0763: LitI4 0
  loc_9E0768: FLdPr Me
  loc_9E076B: MemLdI2 global_84
  loc_9E076E: CI4UI1
  loc_9E076F: FLdPr Me
  loc_9E0772: MemLdRfVar from_stack_1.global_80
  loc_9E0775: RedimPreserve
  loc_9E077F: FLdRfVar var_A0
  loc_9E0782: LitVarStr var_9C, "CodiPart"
  loc_9E0787: PopAdLdVar
  loc_9E0788: FLdRfVar var_8C
  loc_9E078B: FLdRfVar var_88
  loc_9E078E: FLdPr Me
  loc_9E0791: MemLdRfVar from_stack_1.global_72
  loc_9E0794: NewIfNullPr clsimputacion
  loc_9E0797: from_stack_1v = clsimputacion.RsFrmGet()
  loc_9E079C: FLdPr var_88
  loc_9E079F:  = Me.Fields
  loc_9E07A4: FLdPr var_8C
  loc_9E07A7: from_stack_2 = Me.Item(from_stack_1)
  loc_9E07AC: LitI2_Byte 0
  loc_9E07AE: LitVar_Missing var_D4
  loc_9E07B1: LitI2_Byte 0
  loc_9E07B3: FLdZeroAd var_A0
  loc_9E07B6: CVarAd
  loc_9E07BA: PopAdLdVar
  loc_9E07BB: FLdPr Me
  loc_9E07BE: MemLdI2 global_84
  loc_9E07C1: CI4UI1
  loc_9E07C2: FLdPr Me
  loc_9E07C5: MemLdStr global_80
  loc_9E07C8: AryLock
  loc_9E07CB: Ary1LdPr
  loc_9E07CC: MemLdRfVar from_stack_1.global_0
  loc_9E07CF: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_9E07D4: AryUnlock
  loc_9E07D7: FFreeAd var_88 = ""
  loc_9E07DE: FFreeVar var_B4 = ""
  loc_9E07E5: FLdRfVar var_A0
  loc_9E07E8: LitVarStr var_9C, "DetaPart"
  loc_9E07ED: PopAdLdVar
  loc_9E07EE: FLdRfVar var_8C
  loc_9E07F1: FLdRfVar var_88
  loc_9E07F4: FLdPr Me
  loc_9E07F7: MemLdRfVar from_stack_1.global_72
  loc_9E07FA: NewIfNullPr clsimputacion
  loc_9E07FD: from_stack_1v = clsimputacion.RsFrmGet()
  loc_9E0802: FLdPr var_88
  loc_9E0805:  = Me.Fields
  loc_9E080A: FLdPr var_8C
  loc_9E080D: from_stack_2 = Me.Item(from_stack_1)
  loc_9E0812: LitI2_Byte 0
  loc_9E0814: LitVar_Missing var_D4
  loc_9E0817: LitI2_Byte 0
  loc_9E0819: FLdZeroAd var_A0
  loc_9E081C: CVarAd
  loc_9E0820: PopAdLdVar
  loc_9E0821: FLdPr Me
  loc_9E0824: MemLdI2 global_84
  loc_9E0827: CI4UI1
  loc_9E0828: FLdPr Me
  loc_9E082B: MemLdStr global_80
  loc_9E082E: AryLock
  loc_9E0831: Ary1LdPr
  loc_9E0832: MemLdRfVar from_stack_1.global_4
  loc_9E0835: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_9E083A: AryUnlock
  loc_9E083D: FFreeAd var_88 = ""
  loc_9E0844: FFreeVar var_B4 = ""
  loc_9E084B: Call Proc_180_34_9F654C()
  loc_9E0850: ExitProcHresult
  loc_9E0851: EqI4
  loc_9E0852: AddI2
End Function

Private Function Proc_180_34_9F654C() '9F654C
  'Data Table: 4AB9C0
  loc_9F6418: FLdPr Me
  loc_9F641B: MemLdI2 global_86
  loc_9F641E: LitI2_Byte 1
  loc_9F6420: AddI2
  loc_9F6421: FLdPr Me
  loc_9F6424: MemStI2 global_86
  loc_9F6427: LitI2_Byte 0
  loc_9F6429: FLdPr Me
  loc_9F642C: MemStI2 global_88
  loc_9F642F: LitI4 0
  loc_9F6434: FLdPr Me
  loc_9F6437: MemLdI2 global_86
  loc_9F643A: CI4UI1
  loc_9F643B: FLdPr Me
  loc_9F643E: MemLdI2 global_84
  loc_9F6441: CI4UI1
  loc_9F6442: FLdPr Me
  loc_9F6445: MemLdStr global_80
  loc_9F6448: Ary1LdPr
  loc_9F6449: MemLdRfVar from_stack_1.global_8
  loc_9F644C: RedimPreserve
  loc_9F6456: FLdRfVar var_A0
  loc_9F6459: LitVarStr var_9C, "CodiOrga"
  loc_9F645E: PopAdLdVar
  loc_9F645F: FLdRfVar var_8C
  loc_9F6462: FLdRfVar var_88
  loc_9F6465: FLdPr Me
  loc_9F6468: MemLdRfVar from_stack_1.global_72
  loc_9F646B: NewIfNullPr clsimputacion
  loc_9F646E: from_stack_1v = clsimputacion.RsFrmGet()
  loc_9F6473: FLdPr var_88
  loc_9F6476:  = Me.Fields
  loc_9F647B: FLdPr var_8C
  loc_9F647E: from_stack_2 = Me.Item(from_stack_1)
  loc_9F6483: LitI2_Byte 0
  loc_9F6485: LitVar_Missing var_D8
  loc_9F6488: LitI2_Byte 0
  loc_9F648A: FLdZeroAd var_A0
  loc_9F648D: CVarAd
  loc_9F6491: PopAdLdVar
  loc_9F6492: FLdPr Me
  loc_9F6495: MemLdI2 global_86
  loc_9F6498: CI4UI1
  loc_9F6499: FLdPr Me
  loc_9F649C: MemLdI2 global_84
  loc_9F649F: CI4UI1
  loc_9F64A0: FLdPr Me
  loc_9F64A3: MemLdStr global_80
  loc_9F64A6: AryLock
  loc_9F64A9: Ary1LdPr
  loc_9F64AA: MemLdStr global_8
  loc_9F64AD: AryLock
  loc_9F64B0: Ary1LdPr
  loc_9F64B1: MemLdRfVar from_stack_1.global_0
  loc_9F64B4: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_9F64B9: AryUnlock
  loc_9F64BC: AryUnlock
  loc_9F64BF: FFreeAd var_88 = ""
  loc_9F64C6: FFreeVar var_B8 = ""
  loc_9F64CD: FLdRfVar var_A0
  loc_9F64D0: LitVarStr var_9C, "DetaOrga"
  loc_9F64D5: PopAdLdVar
  loc_9F64D6: FLdRfVar var_8C
  loc_9F64D9: FLdRfVar var_88
  loc_9F64DC: FLdPr Me
  loc_9F64DF: MemLdRfVar from_stack_1.global_72
  loc_9F64E2: NewIfNullPr clsimputacion
  loc_9F64E5: from_stack_1v = clsimputacion.RsFrmGet()
  loc_9F64EA: FLdPr var_88
  loc_9F64ED:  = Me.Fields
  loc_9F64F2: FLdPr var_8C
  loc_9F64F5: from_stack_2 = Me.Item(from_stack_1)
  loc_9F64FA: LitI2_Byte 0
  loc_9F64FC: LitVar_Missing var_D8
  loc_9F64FF: LitI2_Byte 0
  loc_9F6501: FLdZeroAd var_A0
  loc_9F6504: CVarAd
  loc_9F6508: PopAdLdVar
  loc_9F6509: FLdPr Me
  loc_9F650C: MemLdI2 global_86
  loc_9F650F: CI4UI1
  loc_9F6510: FLdPr Me
  loc_9F6513: MemLdI2 global_84
  loc_9F6516: CI4UI1
  loc_9F6517: FLdPr Me
  loc_9F651A: MemLdStr global_80
  loc_9F651D: AryLock
  loc_9F6520: Ary1LdPr
  loc_9F6521: MemLdStr global_8
  loc_9F6524: AryLock
  loc_9F6527: Ary1LdPr
  loc_9F6528: MemLdRfVar from_stack_1.global_4
  loc_9F652B: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_9F6530: AryUnlock
  loc_9F6533: AryUnlock
  loc_9F6536: FFreeAd var_88 = ""
  loc_9F653D: FFreeVar var_B8 = ""
  loc_9F6544: Call Proc_180_35_A106D4()
  loc_9F6549: ExitProcHresult
  loc_9F654A: BranchT loc_9FAC18
End Function

Private Function Proc_180_35_A106D4() 'A106D4
  'Data Table: 4AB9C0
  loc_A10570: FLdPr Me
  loc_A10573: MemLdI2 global_88
  loc_A10576: LitI2_Byte 1
  loc_A10578: AddI2
  loc_A10579: FLdPr Me
  loc_A1057C: MemStI2 global_88
  loc_A1057F: LitI4 0
  loc_A10584: FLdPr Me
  loc_A10587: MemStI4 global_92
  loc_A1058A: LitI4 0
  loc_A1058F: FLdPr Me
  loc_A10592: MemLdI2 global_88
  loc_A10595: CI4UI1
  loc_A10596: FLdPr Me
  loc_A10599: MemLdI2 global_86
  loc_A1059C: CI4UI1
  loc_A1059D: FLdPr Me
  loc_A105A0: MemLdI2 global_84
  loc_A105A3: CI4UI1
  loc_A105A4: FLdPr Me
  loc_A105A7: MemLdStr global_80
  loc_A105AA: Ary1LdPr
  loc_A105AB: MemLdStr global_8
  loc_A105AE: Ary1LdPr
  loc_A105AF: MemLdRfVar from_stack_1.global_8
  loc_A105B2: RedimPreserve
  loc_A105BC: FLdRfVar var_A0
  loc_A105BF: LitVarStr var_9C, "CodiFifu"
  loc_A105C4: PopAdLdVar
  loc_A105C5: FLdRfVar var_8C
  loc_A105C8: FLdRfVar var_88
  loc_A105CB: FLdPr Me
  loc_A105CE: MemLdRfVar from_stack_1.global_72
  loc_A105D1: NewIfNullPr clsimputacion
  loc_A105D4: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A105D9: FLdPr var_88
  loc_A105DC:  = Me.Fields
  loc_A105E1: FLdPr var_8C
  loc_A105E4: from_stack_2 = Me.Item(from_stack_1)
  loc_A105E9: LitI2_Byte 0
  loc_A105EB: LitVar_Missing var_DC
  loc_A105EE: LitI2_Byte 0
  loc_A105F0: FLdZeroAd var_A0
  loc_A105F3: CVarAd
  loc_A105F7: PopAdLdVar
  loc_A105F8: FLdPr Me
  loc_A105FB: MemLdI2 global_88
  loc_A105FE: CI4UI1
  loc_A105FF: FLdPr Me
  loc_A10602: MemLdI2 global_86
  loc_A10605: CI4UI1
  loc_A10606: FLdPr Me
  loc_A10609: MemLdI2 global_84
  loc_A1060C: CI4UI1
  loc_A1060D: FLdPr Me
  loc_A10610: MemLdStr global_80
  loc_A10613: AryLock
  loc_A10616: Ary1LdPr
  loc_A10617: MemLdStr global_8
  loc_A1061A: AryLock
  loc_A1061D: Ary1LdPr
  loc_A1061E: MemLdStr global_8
  loc_A10621: AryLock
  loc_A10624: Ary1LdPr
  loc_A10625: MemLdRfVar from_stack_1.global_0
  loc_A10628: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A1062D: AryUnlock
  loc_A10630: AryUnlock
  loc_A10633: AryUnlock
  loc_A10636: FFreeAd var_88 = ""
  loc_A1063D: FFreeVar var_BC = ""
  loc_A10644: FLdRfVar var_A0
  loc_A10647: LitVarStr var_9C, "DetaFifu"
  loc_A1064C: PopAdLdVar
  loc_A1064D: FLdRfVar var_8C
  loc_A10650: FLdRfVar var_88
  loc_A10653: FLdPr Me
  loc_A10656: MemLdRfVar from_stack_1.global_72
  loc_A10659: NewIfNullPr clsimputacion
  loc_A1065C: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A10661: FLdPr var_88
  loc_A10664:  = Me.Fields
  loc_A10669: FLdPr var_8C
  loc_A1066C: from_stack_2 = Me.Item(from_stack_1)
  loc_A10671: LitI2_Byte 0
  loc_A10673: LitVar_Missing var_DC
  loc_A10676: LitI2_Byte 0
  loc_A10678: FLdZeroAd var_A0
  loc_A1067B: CVarAd
  loc_A1067F: PopAdLdVar
  loc_A10680: FLdPr Me
  loc_A10683: MemLdI2 global_88
  loc_A10686: CI4UI1
  loc_A10687: FLdPr Me
  loc_A1068A: MemLdI2 global_86
  loc_A1068D: CI4UI1
  loc_A1068E: FLdPr Me
  loc_A10691: MemLdI2 global_84
  loc_A10694: CI4UI1
  loc_A10695: FLdPr Me
  loc_A10698: MemLdStr global_80
  loc_A1069B: AryLock
  loc_A1069E: Ary1LdPr
  loc_A1069F: MemLdStr global_8
  loc_A106A2: AryLock
  loc_A106A5: Ary1LdPr
  loc_A106A6: MemLdStr global_8
  loc_A106A9: AryLock
  loc_A106AC: Ary1LdPr
  loc_A106AD: MemLdRfVar from_stack_1.global_4
  loc_A106B0: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A106B5: AryUnlock
  loc_A106B8: AryUnlock
  loc_A106BB: AryUnlock
  loc_A106BE: FFreeAd var_88 = ""
  loc_A106C5: FFreeVar var_BC = ""
  loc_A106CC: Call Proc_180_36_A23E84()
  loc_A106D1: ExitProcHresult
  loc_A106D2: ExitProcR8
End Function

Private Function Proc_180_36_A23E84() 'A23E84
  'Data Table: 4AB9C0
  loc_A23CE0: FLdPr Me
  loc_A23CE3: MemLdStr global_92
  loc_A23CE6: LitI4 1
  loc_A23CEB: AddI4
  loc_A23CEC: FLdPr Me
  loc_A23CEF: MemStI4 global_92
  loc_A23CF2: LitI4 0
  loc_A23CF7: FLdPr Me
  loc_A23CFA: MemLdStr global_92
  loc_A23CFD: FLdPr Me
  loc_A23D00: MemLdI2 global_88
  loc_A23D03: CI4UI1
  loc_A23D04: FLdPr Me
  loc_A23D07: MemLdI2 global_86
  loc_A23D0A: CI4UI1
  loc_A23D0B: FLdPr Me
  loc_A23D0E: MemLdI2 global_84
  loc_A23D11: CI4UI1
  loc_A23D12: FLdPr Me
  loc_A23D15: MemLdStr global_80
  loc_A23D18: Ary1LdPr
  loc_A23D19: MemLdStr global_8
  loc_A23D1C: Ary1LdPr
  loc_A23D1D: MemLdStr global_8
  loc_A23D20: Ary1LdPr
  loc_A23D21: MemLdRfVar from_stack_1.global_8
  loc_A23D24: RedimPreserve
  loc_A23D2E: FLdRfVar var_A0
  loc_A23D31: LitVarStr var_9C, "ExpeImpu"
  loc_A23D36: PopAdLdVar
  loc_A23D37: FLdRfVar var_8C
  loc_A23D3A: FLdRfVar var_88
  loc_A23D3D: FLdPr Me
  loc_A23D40: MemLdRfVar from_stack_1.global_72
  loc_A23D43: NewIfNullPr clsimputacion
  loc_A23D46: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A23D4B: FLdPr var_88
  loc_A23D4E:  = Me.Fields
  loc_A23D53: FLdPr var_8C
  loc_A23D56: from_stack_2 = Me.Item(from_stack_1)
  loc_A23D5B: LitI2_Byte 0
  loc_A23D5D: LitVar_Missing var_E0
  loc_A23D60: LitI2_Byte 0
  loc_A23D62: FLdZeroAd var_A0
  loc_A23D65: CVarAd
  loc_A23D69: PopAdLdVar
  loc_A23D6A: FLdPr Me
  loc_A23D6D: MemLdStr global_92
  loc_A23D70: FLdPr Me
  loc_A23D73: MemLdI2 global_88
  loc_A23D76: CI4UI1
  loc_A23D77: FLdPr Me
  loc_A23D7A: MemLdI2 global_86
  loc_A23D7D: CI4UI1
  loc_A23D7E: FLdPr Me
  loc_A23D81: MemLdI2 global_84
  loc_A23D84: CI4UI1
  loc_A23D85: FLdPr Me
  loc_A23D88: MemLdStr global_80
  loc_A23D8B: AryLock
  loc_A23D8E: Ary1LdPr
  loc_A23D8F: MemLdStr global_8
  loc_A23D92: AryLock
  loc_A23D95: Ary1LdPr
  loc_A23D96: MemLdStr global_8
  loc_A23D99: AryLock
  loc_A23D9C: Ary1LdPr
  loc_A23D9D: MemLdStr global_8
  loc_A23DA0: AryLock
  loc_A23DA3: Ary1LdPr
  loc_A23DA4: MemLdRfVar from_stack_1.global_0
  loc_A23DA7: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A23DAC: AryUnlock
  loc_A23DAF: AryUnlock
  loc_A23DB2: AryUnlock
  loc_A23DB5: AryUnlock
  loc_A23DB8: FFreeAd var_88 = ""
  loc_A23DBF: FFreeVar var_C0 = ""
  loc_A23DC6: FLdRfVar var_A0
  loc_A23DC9: LitVarStr var_9C, "SaldImpu"
  loc_A23DCE: PopAdLdVar
  loc_A23DCF: FLdRfVar var_8C
  loc_A23DD2: FLdRfVar var_88
  loc_A23DD5: FLdPr Me
  loc_A23DD8: MemLdRfVar from_stack_1.global_72
  loc_A23DDB: NewIfNullPr clsimputacion
  loc_A23DDE: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A23DE3: FLdPr var_88
  loc_A23DE6:  = Me.Fields
  loc_A23DEB: FLdPr var_8C
  loc_A23DEE: from_stack_2 = Me.Item(from_stack_1)
  loc_A23DF3: LitI2_Byte 0
  loc_A23DF5: FLdPr Me
  loc_A23DF8: MemLdI2 global_84
  loc_A23DFB: CI4UI1
  loc_A23DFC: FLdPr Me
  loc_A23DFF: MemLdStr global_80
  loc_A23E02: AryLock
  loc_A23E05: Ary1LdPr
  loc_A23E06: MemLdRfVar from_stack_1.global_20
  loc_A23E09: CVarRef
  loc_A23E0E: LitI2_Byte &HFF
  loc_A23E10: FLdZeroAd var_A0
  loc_A23E13: CVarAd
  loc_A23E17: PopAdLdVar
  loc_A23E18: FLdPr Me
  loc_A23E1B: MemLdStr global_92
  loc_A23E1E: FLdPr Me
  loc_A23E21: MemLdI2 global_88
  loc_A23E24: CI4UI1
  loc_A23E25: FLdPr Me
  loc_A23E28: MemLdI2 global_86
  loc_A23E2B: CI4UI1
  loc_A23E2C: FLdPr Me
  loc_A23E2F: MemLdI2 global_84
  loc_A23E32: CI4UI1
  loc_A23E33: FLdPr Me
  loc_A23E36: MemLdStr global_80
  loc_A23E39: AryLock
  loc_A23E3C: Ary1LdPr
  loc_A23E3D: MemLdStr global_8
  loc_A23E40: AryLock
  loc_A23E43: Ary1LdPr
  loc_A23E44: MemLdStr global_8
  loc_A23E47: AryLock
  loc_A23E4A: Ary1LdPr
  loc_A23E4B: MemLdStr global_8
  loc_A23E4E: AryLock
  loc_A23E51: Ary1LdPr
  loc_A23E52: MemLdRfVar from_stack_1.global_4
  loc_A23E55: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A23E5A: AryUnlock
  loc_A23E5D: AryUnlock
  loc_A23E60: AryUnlock
  loc_A23E63: AryUnlock
  loc_A23E66: AryUnlock
  loc_A23E69: FFreeAd var_88 = ""
  loc_A23E70: FFree1Var var_C0 = ""
  loc_A23E73: FLdPr Me
  loc_A23E76: MemLdRfVar from_stack_1.global_72
  loc_A23E79: NewIfNullPr clsimputacion
  loc_A23E7C: Call clsimputacion.MoveSiguiente()
  loc_A23E81: ExitProcHresult
  loc_A23E82: FnLBound
End Function

Private Function Proc_180_37_AA0950() 'AA0950
  'Data Table: 4AB9C0
  loc_AA0478: LitVarStr var_94, "<html>"
  loc_AA047D: PopAdLdVar
  loc_AA047E: FLdPr Me
  loc_AA0481: MemLdRfVar from_stack_1.htmFile
  loc_AA0484: LdPrVar
  loc_AA0486: LateMemCall
  loc_AA048C: LitVarStr var_94, "<head>"
  loc_AA0491: PopAdLdVar
  loc_AA0492: FLdPr Me
  loc_AA0495: MemLdRfVar from_stack_1.htmFile
  loc_AA0498: LdPrVar
  loc_AA049A: LateMemCall
  loc_AA04A0: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_AA04A5: PopAdLdVar
  loc_AA04A6: FLdPr Me
  loc_AA04A9: MemLdRfVar from_stack_1.htmFile
  loc_AA04AC: LdPrVar
  loc_AA04AE: LateMemCall
  loc_AA04B4: LitStr "<title>"
  loc_AA04B7: FLdRfVar var_A8
  loc_AA04BA: FLdPr Me
  loc_AA04BD:  = Me.Caption
  loc_AA04C2: ILdRf var_A8
  loc_AA04C5: ConcatStr
  loc_AA04C6: FStStrNoPop var_AC
  loc_AA04C9: LitStr "</title>"
  loc_AA04CC: ConcatStr
  loc_AA04CD: CVarStr var_BC
  loc_AA04D0: PopAdLdVar
  loc_AA04D1: FLdPr Me
  loc_AA04D4: MemLdRfVar from_stack_1.htmFile
  loc_AA04D7: LdPrVar
  loc_AA04D9: LateMemCall
  loc_AA04DF: FFreeStr var_A8 = ""
  loc_AA04E6: FFree1Var var_BC = ""
  loc_AA04E9: LitStr vbNullString
  loc_AA04EC: ILdRf Me
  loc_AA04EF: CastAd
  loc_AA04F2: FStAdFunc var_C0
  loc_AA04F5: FLdRfVar var_C0
  loc_AA04F8: ImpAdCallFPR4 Proc_263_23_B3DAB8(, )
  loc_AA04FD: FFree1Ad var_C0
  loc_AA0500: LitI4 0
  loc_AA0505: FStStrCopy var_AC
  loc_AA0508: FLdRfVar var_AC
  loc_AA050B: LitI4 0
  loc_AA0510: FStStrCopy var_A8
  loc_AA0513: FLdRfVar var_A8
  loc_AA0516: LitI2_Byte &HFF
  loc_AA0518: PopTmpLdAd2 var_C2
  loc_AA051B: FLdPr Me
  loc_AA051E: MemLdRfVar from_stack_1.htmFile
  loc_AA0521: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_AA0526: FFreeStr var_A8 = ""
  loc_AA052D: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_AA0532: PopAdLdVar
  loc_AA0533: FLdPr Me
  loc_AA0536: MemLdRfVar from_stack_1.htmFile
  loc_AA0539: LdPrVar
  loc_AA053B: LateMemCall
  loc_AA0541: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_AA0546: PopAdLdVar
  loc_AA0547: FLdPr Me
  loc_AA054A: MemLdRfVar from_stack_1.htmFile
  loc_AA054D: LdPrVar
  loc_AA054F: LateMemCall
  loc_AA0555: LitVarStr var_94, "    <th colspan=""3"" width=""100" & Chr(37) & """ align=""center"" valign=""bottom""><p>"
  loc_AA055A: PopAdLdVar
  loc_AA055B: FLdPr Me
  loc_AA055E: MemLdRfVar from_stack_1.htmFile
  loc_AA0561: LdPrVar
  loc_AA0563: LateMemCall
  loc_AA0569: FLdPr Me
  loc_AA056C: MemLdI2 bLogos
  loc_AA056F: BranchF loc_AA0586
  loc_AA0572: LitVarStr var_94, "    <img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right"">"
  loc_AA0577: PopAdLdVar
  loc_AA0578: FLdPr Me
  loc_AA057B: MemLdRfVar from_stack_1.htmFile
  loc_AA057E: LdPrVar
  loc_AA0580: LateMemCall
  loc_AA0586: LitVarStr var_A4, "    <br><br>"
  loc_AA058B: LitVarStr var_94, "Municipalidad de Guaymallén"
  loc_AA0590: FStVarCopyObj var_BC
  loc_AA0593: FLdRfVar var_BC
  loc_AA0596: FLdRfVar var_D4
  loc_AA0599: ImpAdCallFPR4  = Ucase()
  loc_AA059E: FLdRfVar var_D4
  loc_AA05A1: ConcatVar var_E4
  loc_AA05A5: LitVarStr var_F4, "</p>"
  loc_AA05AA: ConcatVar var_104
  loc_AA05AE: PopAdLdVar
  loc_AA05AF: FLdPr Me
  loc_AA05B2: MemLdRfVar from_stack_1.htmFile
  loc_AA05B5: LdPrVar
  loc_AA05B7: LateMemCall
  loc_AA05BD: FFreeVar var_BC = "": var_D4 = "": var_E4 = ""
  loc_AA05C8: LitStr "    <p>"
  loc_AA05CB: FLdRfVar var_A8
  loc_AA05CE: FLdPr Me
  loc_AA05D1:  = Me.Caption
  loc_AA05D6: ILdRf var_A8
  loc_AA05D9: ConcatStr
  loc_AA05DA: FStStrNoPop var_AC
  loc_AA05DD: LitStr "</p></th>"
  loc_AA05E0: ConcatStr
  loc_AA05E1: CVarStr var_BC
  loc_AA05E4: PopAdLdVar
  loc_AA05E5: FLdPr Me
  loc_AA05E8: MemLdRfVar from_stack_1.htmFile
  loc_AA05EB: LdPrVar
  loc_AA05ED: LateMemCall
  loc_AA05F3: FFreeStr var_A8 = ""
  loc_AA05FA: FFree1Var var_BC = ""
  loc_AA05FD: LitVarStr var_94, "  </tr>"
  loc_AA0602: PopAdLdVar
  loc_AA0603: FLdPr Me
  loc_AA0606: MemLdRfVar from_stack_1.htmFile
  loc_AA0609: LdPrVar
  loc_AA060B: LateMemCall
  loc_AA0611: LitVarStr var_94, "  <tr><th><hr></th></tr>"
  loc_AA0616: PopAdLdVar
  loc_AA0617: FLdPr Me
  loc_AA061A: MemLdRfVar from_stack_1.htmFile
  loc_AA061D: LdPrVar
  loc_AA061F: LateMemCall
  loc_AA0625: LitVarStr var_94, "  <tr align=""left"">"
  loc_AA062A: PopAdLdVar
  loc_AA062B: FLdPr Me
  loc_AA062E: MemLdRfVar from_stack_1.htmFile
  loc_AA0631: LdPrVar
  loc_AA0633: LateMemCall
  loc_AA0639: LitVarStr var_94, "   <th>"
  loc_AA063E: PopAdLdVar
  loc_AA063F: FLdPr Me
  loc_AA0642: MemLdRfVar from_stack_1.htmFile
  loc_AA0645: LdPrVar
  loc_AA0647: LateMemCall
  loc_AA064D: LitStr "    Periodo: <span class=""Normal"">"
  loc_AA0650: FLdRfVar var_A8
  loc_AA0653: FLdPr Me
  loc_AA0656: VCallAd Control_ID_cboPeriodo
  loc_AA0659: FStAdFunc var_C0
  loc_AA065C: FLdPr var_C0
  loc_AA065F:  = Me.Text
  loc_AA0664: ILdRf var_A8
  loc_AA0667: ConcatStr
  loc_AA0668: FStStrNoPop var_AC
  loc_AA066B: LitStr "</span>"
  loc_AA066E: ConcatStr
  loc_AA066F: CVarStr var_BC
  loc_AA0672: PopAdLdVar
  loc_AA0673: FLdPr Me
  loc_AA0676: MemLdRfVar from_stack_1.htmFile
  loc_AA0679: LdPrVar
  loc_AA067B: LateMemCall
  loc_AA0681: FFreeStr var_A8 = ""
  loc_AA0688: FFree1Ad var_C0
  loc_AA068B: FFree1Var var_BC = ""
  loc_AA068E: LitStr "   <br>Desde: <span class=""Normal"">"
  loc_AA0691: FLdPr Me
  loc_AA0694: VCallAd Control_ID_mskDesde
  loc_AA0697: FStAdFunc var_C0
  loc_AA069A: FLdPr var_C0
  loc_AA069D: LateIdLdVar var_BC DispID_15 0
  loc_AA06A4: CStrVarTmp
  loc_AA06A5: FStStrNoPop var_A8
  loc_AA06A8: ConcatStr
  loc_AA06A9: FStStrNoPop var_AC
  loc_AA06AC: LitStr "</span>"
  loc_AA06AF: ConcatStr
  loc_AA06B0: CVarStr var_D4
  loc_AA06B3: PopAdLdVar
  loc_AA06B4: FLdPr Me
  loc_AA06B7: MemLdRfVar from_stack_1.htmFile
  loc_AA06BA: LdPrVar
  loc_AA06BC: LateMemCall
  loc_AA06C2: FFreeStr var_A8 = ""
  loc_AA06C9: FFree1Ad var_C0
  loc_AA06CC: FFreeVar var_BC = ""
  loc_AA06D3: LitStr "   <br>Hasta: <span class=""Normal"">"
  loc_AA06D6: FLdPr Me
  loc_AA06D9: VCallAd Control_ID_mskHasta
  loc_AA06DC: FStAdFunc var_C0
  loc_AA06DF: FLdPr var_C0
  loc_AA06E2: LateIdLdVar var_BC DispID_15 0
  loc_AA06E9: CStrVarTmp
  loc_AA06EA: FStStrNoPop var_A8
  loc_AA06ED: ConcatStr
  loc_AA06EE: FStStrNoPop var_AC
  loc_AA06F1: LitStr "</span>"
  loc_AA06F4: ConcatStr
  loc_AA06F5: CVarStr var_D4
  loc_AA06F8: PopAdLdVar
  loc_AA06F9: FLdPr Me
  loc_AA06FC: MemLdRfVar from_stack_1.htmFile
  loc_AA06FF: LdPrVar
  loc_AA0701: LateMemCall
  loc_AA0707: FFreeStr var_A8 = ""
  loc_AA070E: FFree1Ad var_C0
  loc_AA0711: FFreeVar var_BC = ""
  loc_AA0718: FLdPr Me
  loc_AA071B: VCallAd Control_ID_CodiPartMsk
  loc_AA071E: FStAdFunc var_C0
  loc_AA0721: FLdPr var_C0
  loc_AA0724: LateIdLdVar var_BC DispID_0 0
  loc_AA072B: CStrVarTmp
  loc_AA072C: FStStrNoPop var_A8
  loc_AA072F: LitStr vbNullString
  loc_AA0732: NeStr
  loc_AA0734: FFree1Str var_A8
  loc_AA0737: FFree1Ad var_C0
  loc_AA073A: FFree1Var var_BC = ""
  loc_AA073D: BranchF loc_AA07B1
  loc_AA0740: LitStr "   <br>Partida: <span class=""Normal"">Comenzando con '"
  loc_AA0743: FLdPr Me
  loc_AA0746: VCallAd Control_ID_CodiPartMsk
  loc_AA0749: FStAdFunc var_C0
  loc_AA074C: FLdPr var_C0
  loc_AA074F: LateIdLdVar var_BC DispID_0 0
  loc_AA0756: CStrVarTmp
  loc_AA0757: FStStrNoPop var_A8
  loc_AA075A: ConcatStr
  loc_AA075B: FStStrNoPop var_AC
  loc_AA075E: LitStr "'  -  "
  loc_AA0761: ConcatStr
  loc_AA0762: FStStrNoPop var_120
  loc_AA0765: FLdRfVar var_11C
  loc_AA0768: FLdPr Me
  loc_AA076B: VCallAd Control_ID_CodiPartLbl
  loc_AA076E: FStAdFunc var_118
  loc_AA0771: FLdPr var_118
  loc_AA0774:  = Me.Caption
  loc_AA0779: ILdRf var_11C
  loc_AA077C: ConcatStr
  loc_AA077D: FStStrNoPop var_124
  loc_AA0780: LitStr "</span>"
  loc_AA0783: ConcatStr
  loc_AA0784: CVarStr var_D4
  loc_AA0787: PopAdLdVar
  loc_AA0788: FLdPr Me
  loc_AA078B: MemLdRfVar from_stack_1.htmFile
  loc_AA078E: LdPrVar
  loc_AA0790: LateMemCall
  loc_AA0796: FFreeStr var_A8 = "": var_AC = "": var_120 = "": var_11C = ""
  loc_AA07A3: FFreeAd var_C0 = ""
  loc_AA07AA: FFreeVar var_BC = ""
  loc_AA07B1: FLdPr Me
  loc_AA07B4: VCallAd Control_ID_CodiOrgaMsk
  loc_AA07B7: FStAdFunc var_C0
  loc_AA07BA: FLdPr var_C0
  loc_AA07BD: LateIdLdVar var_BC DispID_0 0
  loc_AA07C4: CStrVarTmp
  loc_AA07C5: FStStrNoPop var_A8
  loc_AA07C8: LitStr vbNullString
  loc_AA07CB: NeStr
  loc_AA07CD: FFree1Str var_A8
  loc_AA07D0: FFree1Ad var_C0
  loc_AA07D3: FFree1Var var_BC = ""
  loc_AA07D6: BranchF loc_AA084A
  loc_AA07D9: LitStr "   <br>Organigrama: <span class=""Normal"">Comenzando con '"
  loc_AA07DC: FLdPr Me
  loc_AA07DF: VCallAd Control_ID_CodiOrgaMsk
  loc_AA07E2: FStAdFunc var_C0
  loc_AA07E5: FLdPr var_C0
  loc_AA07E8: LateIdLdVar var_BC DispID_0 0
  loc_AA07EF: CStrVarTmp
  loc_AA07F0: FStStrNoPop var_A8
  loc_AA07F3: ConcatStr
  loc_AA07F4: FStStrNoPop var_AC
  loc_AA07F7: LitStr "'  -  "
  loc_AA07FA: ConcatStr
  loc_AA07FB: FStStrNoPop var_120
  loc_AA07FE: FLdRfVar var_11C
  loc_AA0801: FLdPr Me
  loc_AA0804: VCallAd Control_ID_CodiOrgaLbl
  loc_AA0807: FStAdFunc var_118
  loc_AA080A: FLdPr var_118
  loc_AA080D:  = Me.Caption
  loc_AA0812: ILdRf var_11C
  loc_AA0815: ConcatStr
  loc_AA0816: FStStrNoPop var_124
  loc_AA0819: LitStr "</span>"
  loc_AA081C: ConcatStr
  loc_AA081D: CVarStr var_D4
  loc_AA0820: PopAdLdVar
  loc_AA0821: FLdPr Me
  loc_AA0824: MemLdRfVar from_stack_1.htmFile
  loc_AA0827: LdPrVar
  loc_AA0829: LateMemCall
  loc_AA082F: FFreeStr var_A8 = "": var_AC = "": var_120 = "": var_11C = ""
  loc_AA083C: FFreeAd var_C0 = ""
  loc_AA0843: FFreeVar var_BC = ""
  loc_AA084A: LitVarStr var_94, "   </p></th>"
  loc_AA084F: PopAdLdVar
  loc_AA0850: FLdPr Me
  loc_AA0853: MemLdRfVar from_stack_1.htmFile
  loc_AA0856: LdPrVar
  loc_AA0858: LateMemCall
  loc_AA085E: LitVarStr var_94, "  </tr>"
  loc_AA0863: PopAdLdVar
  loc_AA0864: FLdPr Me
  loc_AA0867: MemLdRfVar from_stack_1.htmFile
  loc_AA086A: LdPrVar
  loc_AA086C: LateMemCall
  loc_AA0872: LitVarStr var_94, "</table>"
  loc_AA0877: PopAdLdVar
  loc_AA0878: FLdPr Me
  loc_AA087B: MemLdRfVar from_stack_1.htmFile
  loc_AA087E: LdPrVar
  loc_AA0880: LateMemCall
  loc_AA0886: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_AA088B: PopAdLdVar
  loc_AA088C: FLdPr Me
  loc_AA088F: MemLdRfVar from_stack_1.htmFile
  loc_AA0892: LdPrVar
  loc_AA0894: LateMemCall
  loc_AA089A: LitVarStr var_94, "  <THEAD>"
  loc_AA089F: PopAdLdVar
  loc_AA08A0: FLdPr Me
  loc_AA08A3: MemLdRfVar from_stack_1.htmFile
  loc_AA08A6: LdPrVar
  loc_AA08A8: LateMemCall
  loc_AA08AE: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_AA08B3: PopAdLdVar
  loc_AA08B4: FLdPr Me
  loc_AA08B7: MemLdRfVar from_stack_1.htmFile
  loc_AA08BA: LdPrVar
  loc_AA08BC: LateMemCall
  loc_AA08C2: LitVarStr var_94, "    <th>Partida</th>"
  loc_AA08C7: PopAdLdVar
  loc_AA08C8: FLdPr Me
  loc_AA08CB: MemLdRfVar from_stack_1.htmFile
  loc_AA08CE: LdPrVar
  loc_AA08D0: LateMemCall
  loc_AA08D6: LitVarStr var_94, "    <th>Organigrama</th>"
  loc_AA08DB: PopAdLdVar
  loc_AA08DC: FLdPr Me
  loc_AA08DF: MemLdRfVar from_stack_1.htmFile
  loc_AA08E2: LdPrVar
  loc_AA08E4: LateMemCall
  loc_AA08EA: LitVarStr var_94, "    <th>Finalidad</th>"
  loc_AA08EF: PopAdLdVar
  loc_AA08F0: FLdPr Me
  loc_AA08F3: MemLdRfVar from_stack_1.htmFile
  loc_AA08F6: LdPrVar
  loc_AA08F8: LateMemCall
  loc_AA08FE: LitVarStr var_94, "    <th>Expediente de Pago</th>"
  loc_AA0903: PopAdLdVar
  loc_AA0904: FLdPr Me
  loc_AA0907: MemLdRfVar from_stack_1.htmFile
  loc_AA090A: LdPrVar
  loc_AA090C: LateMemCall
  loc_AA0912: LitVarStr var_94, "    <th>Saldo</th>"
  loc_AA0917: PopAdLdVar
  loc_AA0918: FLdPr Me
  loc_AA091B: MemLdRfVar from_stack_1.htmFile
  loc_AA091E: LdPrVar
  loc_AA0920: LateMemCall
  loc_AA0926: LitVarStr var_94, "  </tr>"
  loc_AA092B: PopAdLdVar
  loc_AA092C: FLdPr Me
  loc_AA092F: MemLdRfVar from_stack_1.htmFile
  loc_AA0932: LdPrVar
  loc_AA0934: LateMemCall
  loc_AA093A: LitVarStr var_94, "  </THEAD>"
  loc_AA093F: PopAdLdVar
  loc_AA0940: FLdPr Me
  loc_AA0943: MemLdRfVar from_stack_1.htmFile
  loc_AA0946: LdPrVar
  loc_AA0948: LateMemCall
  loc_AA094E: ExitProcHresult
End Function

Private Function Proc_180_38_9821C0() '9821C0
  'Data Table: 4AB9C0
  loc_982180: LitVarStr var_94, "</table>"
  loc_982185: PopAdLdVar
  loc_982186: FLdPr Me
  loc_982189: MemLdRfVar from_stack_1.htmFile
  loc_98218C: LdPrVar
  loc_98218E: LateMemCall
  loc_982194: LitVarStr var_94, "</body>"
  loc_982199: PopAdLdVar
  loc_98219A: FLdPr Me
  loc_98219D: MemLdRfVar from_stack_1.htmFile
  loc_9821A0: LdPrVar
  loc_9821A2: LateMemCall
  loc_9821A8: LitVarStr var_94, "</html>"
  loc_9821AD: PopAdLdVar
  loc_9821AE: FLdPr Me
  loc_9821B1: MemLdRfVar from_stack_1.htmFile
  loc_9821B4: LdPrVar
  loc_9821B6: LateMemCall
  loc_9821BC: ExitProcHresult
End Function
