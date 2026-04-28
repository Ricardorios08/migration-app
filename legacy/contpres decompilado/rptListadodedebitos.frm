VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptListadodedebitos
  Caption = "Listado de Débitos"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptListadodedebitos.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 8805
  ClientHeight = 5280
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 5025
    Width = 8805
    Height = 255
    TabIndex = 33
    OleObjectBlob = "rptListadodedebitos.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 7200
    Top = 4080
    Width = 735
    Height = 615
    TabIndex = 31
    Cancel = -1  'True
    Picture = "rptListadodedebitos.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptListadodedebitos.frx":0B9C
    Left = 4560
    Top = 0
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 3840
    Width = 3375
    Height = 1095
    TabIndex = 28
    Begin VB.CommandButton cmdXLS
      Caption = "&XLS"
      Left = 1800
      Top = 360
      Width = 1335
      Height = 495
      Enabled = 0   'False
      TabIndex = 30
    End
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 29
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 3840
    Width = 3015
    Height = 1095
    TabIndex = 25
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 27
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 26
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 8535
    Height = 3735
    TabIndex = 0
    Begin VB.CheckBox chkOrdenarCuenta
      Caption = "Ordenar por Cuenta Contable"
      Left = 1395
      Top = 3360
      Width = 3015
      Height = 255
      TabIndex = 34
    End
    Begin VB.ComboBox CboExorImpu
      Left = 1395
      Top = 1800
      Width = 2055
      Height = 315
      TabIndex = 12
      Sorted = -1  'True
    End
    Begin VB.ComboBox cboExpeImpu
      Left = 5355
      Top = 1800
      Width = 2055
      Height = 315
      TabIndex = 14
      Sorted = -1  'True
    End
    Begin VB.CommandButton cmdCalDesde
      Left = 2565
      Top = 2835
      Width = 375
      Height = 375
      TabIndex = 21
      Picture = "rptListadodedebitos.frx":0C00
      Style = 1
    End
    Begin VB.CommandButton cmdCalHasta
      Left = 4965
      Top = 2880
      Width = 375
      Height = 375
      TabIndex = 24
      Picture = "rptListadodedebitos.frx":1142
      Style = 1
    End
    Begin VB.ComboBox cboPeriodo
      Style = 2
      ForeColor = &HFF0000&
      Left = 1395
      Top = 360
      Width = 1095
      Height = 315
      TabIndex = 2
    End
    Begin VB.CheckBox chkAnulados
      Caption = "Incluye anulados"
      Left = 3120
      Top = 840
      Width = 1575
      Height = 255
      TabIndex = 6
    End
    Begin VB.CommandButton CucuPersCmd
      Left = 2790
      Top = 2280
      Width = 375
      Height = 375
      TabIndex = 17
      Picture = "rptListadodedebitos.frx":1684
      Style = 1
    End
    Begin VB.CommandButton CodiCucoCmd
      Left = 3045
      Top = 1320
      Width = 375
      Height = 375
      TabIndex = 9
      Picture = "rptListadodedebitos.frx":177E
      Style = 1
    End
    Begin VB.TextBox txtNumeDebi
      Left = 1395
      Top = 840
      Width = 1530
      Height = 285
      TabIndex = 5
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 6960
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 3
    End
    Begin MSMask.MaskEdBox CodiCucoMsk
      Left = 1395
      Top = 1320
      Width = 1575
      Height = 285
      TabIndex = 8
      OleObjectBlob = "rptListadodedebitos.frx":1878
    End
    Begin VB.TextBox CucuPersTxt
      Left = 1395
      Top = 2280
      Width = 1335
      Height = 285
      TabIndex = 16
      MaxLength = 11
    End
    Begin MSMask.MaskEdBox mskDesde
      Left = 1395
      Top = 2880
      Width = 1095
      Height = 285
      TabIndex = 20
      OleObjectBlob = "rptListadodedebitos.frx":18D8
    End
    Begin MSMask.MaskEdBox mskHasta
      Left = 3795
      Top = 2880
      Width = 1095
      Height = 285
      TabIndex = 23
      OleObjectBlob = "rptListadodedebitos.frx":1960
    End
    Begin VB.Label Label8
      Caption = "Exp. Original:"
      Left = 390
      Top = 1800
      Width = 930
      Height = 195
      TabIndex = 11
      AutoSize = -1  'True
    End
    Begin VB.Label Label7
      Caption = "Desde:"
      Left = 810
      Top = 2925
      Width = 510
      Height = 195
      TabIndex = 19
      AutoSize = -1  'True
    End
    Begin VB.Label Label6
      Caption = "Hasta:"
      Left = 3255
      Top = 2925
      Width = 465
      Height = 195
      TabIndex = 22
      AutoSize = -1  'True
    End
    Begin VB.Label Label4
      Caption = "Periodo:"
      Left = 735
      Top = 360
      Width = 585
      Height = 195
      TabIndex = 1
      AutoSize = -1  'True
    End
    Begin VB.Label Label3
      Caption = "Proveedor:"
      Left = 540
      Top = 2280
      Width = 780
      Height = 195
      TabIndex = 15
    End
    Begin VB.Label Label1
      Caption = "Exp. de Pago:"
      Left = 4275
      Top = 1800
      Width = 1005
      Height = 195
      TabIndex = 13
      AutoSize = -1  'True
    End
    Begin VB.Label Label5
      Caption = "Cuenta Contable:"
      Left = 90
      Top = 1320
      Width = 1230
      Height = 195
      TabIndex = 7
    End
    Begin VB.Label Label2
      Caption = "Débito:"
      Left = 810
      Top = 840
      Width = 510
      Height = 195
      TabIndex = 4
      AutoSize = -1  'True
    End
    Begin VB.Label DetaProvLbl
      Left = 3270
      Top = 2280
      Width = 4935
      Height = 375
      TabIndex = 18
      BorderStyle = 1 'Fixed Single
    End
    Begin VB.Label DetaCucoLbl
      Left = 3525
      Top = 1320
      Width = 4695
      Height = 375
      TabIndex = 10
      BorderStyle = 1 'Fixed Single
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 7200
    Top = 4320
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 32
    OleObjectBlob = "rptListadodedebitos.frx":19E8
  End
End

Attribute VB_Name = "rptListadodedebitos"

Public htmFile As Variant
Public bGenerado As Boolean
Public bLogos As Boolean

Private Type UDT_1_005E4F00
  bStruc(64) As Byte ' String fields: 15
End Type


Private Sub cmdSalir_Click() '979614
  'Data Table: 4D360C
  loc_9795E4: LitVarStr var_94, "Cerrando..."
  loc_9795E9: PopAdLdVar
  loc_9795EA: FLdPr Me
  loc_9795ED: VCallAd Control_ID_statusBar
  loc_9795F0: FStAdFunc var_A8
  loc_9795F3: FLdPr var_A8
  loc_9795F6: LateIdSt
  loc_9795FB: FFree1Ad var_A8
  loc_9795FE: ILdRf Me
  loc_979601: FStAdNoPop
  loc_979605: ImpAdLdRf MemVar_C44F9C
  loc_979608: NewIfNullPr Me
  loc_97960B: Me.Global.Unload from_stack_1
  loc_979610: FFree1Ad var_A8
  loc_979613: ExitProcHresult
End Sub

Private Sub CucuPersTxt_GotFocus() '9514F8
  'Data Table: 4D360C
  loc_9514E4: FLdPr Me
  loc_9514E7: VCallAd Control_ID_CucuPersTxt
  loc_9514EA: CVarAd
  loc_9514EE: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_9514F3: FFree1Var var_94 = ""
  loc_9514F6: ExitProcHresult
End Sub

Private Sub CucuPersTxt_Validate(Cancel As Boolean) '9D5448
  'Data Table: 4D360C
  loc_9D535C: FLdRfVar var_8C
  loc_9D535F: FLdPr Me
  loc_9D5362: VCallAd Control_ID_CucuPersTxt
  loc_9D5365: FStAdFunc var_88
  loc_9D5368: FLdPr var_88
  loc_9D536B:  = Me.Text
  loc_9D5370: ILdRf var_8C
  loc_9D5373: LitStr vbNullString
  loc_9D5376: NeStr
  loc_9D5378: FFree1Str var_8C
  loc_9D537B: FFree1Ad var_88
  loc_9D537E: BranchF loc_9D542D
  loc_9D5381: FLdRfVar var_8C
  loc_9D5384: FLdPr Me
  loc_9D5387: VCallAd Control_ID_CucuPersTxt
  loc_9D538A: FStAdFunc var_88
  loc_9D538D: FLdPr var_88
  loc_9D5390:  = Me.Text
  loc_9D5395: FLdPr Me
  loc_9D5398: MemLdRfVar from_stack_1.global_72
  loc_9D539B: NewIfNullRf
  loc_9D539F: ILdRf var_8C
  loc_9D53A2: ImpAdCallI2 Proc_266_17_9A241C(, )
  loc_9D53A7: FStStrNoPop var_90
  loc_9D53AA: FLdPr Me
  loc_9D53AD: MemStStrCopy
  loc_9D53B1: FFreeStr var_8C = ""
  loc_9D53B8: FFree1Ad var_88
  loc_9D53BB: FLdPr Me
  loc_9D53BE: VCallAd Control_ID_CucuPersTxt
  loc_9D53C1: FStAdFunc var_9C
  loc_9D53C4: FLdPr Me
  loc_9D53C7: VCallAd Control_ID_DetaProvLbl
  loc_9D53CA: FStAdFunc var_98
  loc_9D53CD: FLdRfVar var_98
  loc_9D53D0: FLdZeroAd var_9C
  loc_9D53D3: FStAdFuncNoPop
  loc_9D53D6: CastAd
  loc_9D53D9: FStAdFunc var_94
  loc_9D53DC: FLdRfVar var_94
  loc_9D53DF: FLdPr Me
  loc_9D53E2: MemLdRfVar from_stack_1.global_104
  loc_9D53E5: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9D53EA: IStI2 Cancel
  loc_9D53ED: FFreeAd var_88 = "": var_94 = "": var_98 = ""
  loc_9D53F8: ILdI2 Cancel
  loc_9D53FB: NotI4
  loc_9D53FC: BranchF loc_9D542A
  loc_9D53FF: FLdRfVar var_8C
  loc_9D5402: FLdPr Me
  loc_9D5405: MemLdRfVar from_stack_1.global_72
  loc_9D5408: NewIfNullPr tblproveedor
  loc_9D540B: from_stack_1v = tblproveedor.DetaProvGet()
  loc_9D5410: ILdRf var_8C
  loc_9D5413: FLdPr Me
  loc_9D5416: VCallAd Control_ID_DetaProvLbl
  loc_9D5419: FStAdFunc var_88
  loc_9D541C: FLdPr var_88
  loc_9D541F: Me.Caption = from_stack_1
  loc_9D5424: FFree1Str var_8C
  loc_9D5427: FFree1Ad var_88
  loc_9D542A: Branch loc_9D5444
  loc_9D542D: LitStr "Todos"
  loc_9D5430: FLdPr Me
  loc_9D5433: VCallAd Control_ID_DetaProvLbl
  loc_9D5436: FStAdFunc var_88
  loc_9D5439: FLdPr var_88
  loc_9D543C: Me.Caption = from_stack_1
  loc_9D5441: FFree1Ad var_88
  loc_9D5444: ExitProcHresult
  loc_9D5445: FnAbsR4
  loc_9D5446: CRec2Uni var_6C00
End Sub

Private Sub txtNumeDebi_GotFocus() '94E960
  'Data Table: 4D360C
  loc_94E94C: FLdPr Me
  loc_94E94F: VCallAd Control_ID_txtNumeDebi
  loc_94E952: CVarAd
  loc_94E956: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94E95B: FFree1Var var_94 = ""
  loc_94E95E: ExitProcHresult
End Sub

Private Sub txtNumeDebi_KeyPress(KeyAscii As Integer) '9619B4
  'Data Table: 4D360C
  loc_96199C: LitStr "1234567890"
  loc_96199F: FStStrCopy var_88
  loc_9619A2: FLdRfVar var_88
  loc_9619A5: ILdRf KeyAscii
  loc_9619A8: ImpAdCallI2 Proc_261_6_9AA2A8(, )
  loc_9619AD: IStI2 KeyAscii
  loc_9619B0: FFree1Str var_88
  loc_9619B3: ExitProcHresult
End Sub

Private Sub Form_Load() '9DB0B0
  'Data Table: 4D360C
  loc_9DAFC0: LitVarStr var_94, "#.#.##.##.##.##"
  loc_9DAFC5: PopAdLdVar
  loc_9DAFC6: FLdPr Me
  loc_9DAFC9: VCallAd Control_ID_CodiCucoMsk
  loc_9DAFCC: FStAdFunc var_A8
  loc_9DAFCF: FLdPr var_A8
  loc_9DAFD2: LateIdSt
  loc_9DAFD7: FFree1Ad var_A8
  loc_9DAFDA: LitI2_Byte &HFF
  loc_9DAFDC: ImpAdStI2 MemVar_C3D840
  loc_9DAFDF: ILdRf Me
  loc_9DAFE2: CastAd
  loc_9DAFE5: FStAdFunc var_A8
  loc_9DAFE8: FLdRfVar var_A8
  loc_9DAFEB: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_9DAFF0: FFree1Ad var_A8
  loc_9DAFF3: FLdRfVar var_AC
  loc_9DAFF6: NewIfNullAd
  loc_9DAFF9: FStAd var_B0 
  loc_9DAFFD: LitStr "SELECT * FROM infogov.periodo ORDER BY PeriInfo"
  loc_9DB000: FLdPr var_B0
  loc_9DB003: Call clsperiodo.RedefineRS(from_stack_1v)
  loc_9DB008: FLdRfVar var_B4
  loc_9DB00B: FLdPr var_B0
  loc_9DB00E: from_stack_1 = clsperiodo.RecordCount
  loc_9DB013: ILdRf var_B4
  loc_9DB016: LitI4 0
  loc_9DB01B: GtI4
  loc_9DB01C: BranchF loc_9DB0A3
  loc_9DB01F: FLdPr var_B0
  loc_9DB022: Call clsperiodo.MoveFirst()
  loc_9DB027: FLdRfVar var_B6
  loc_9DB02A: FLdPr var_B0
  loc_9DB02D: from_stack_1 = clsperiodo.EOF
  loc_9DB032: FLdI2 var_B6
  loc_9DB035: NotI4
  loc_9DB036: BranchF loc_9DB0A3
  loc_9DB039: LitVar_Missing var_A4
  loc_9DB03C: PopAdLdVar
  loc_9DB03D: FLdRfVar var_D0
  loc_9DB040: FLdRfVar var_C0
  loc_9DB043: LitVarStr var_94, "PeriInfo"
  loc_9DB048: PopAdLdVar
  loc_9DB049: FLdRfVar var_BC
  loc_9DB04C: FLdRfVar var_A8
  loc_9DB04F: FLdPr var_B0
  loc_9DB052: from_stack_1v = clsperiodo.RsFrmGet()
  loc_9DB057: FLdPr var_A8
  loc_9DB05A:  = Me.Fields
  loc_9DB05F: FLdPr var_BC
  loc_9DB062: from_stack_2 = Me.Item(from_stack_1)
  loc_9DB067: FLdPr var_C0
  loc_9DB06A:  = Me.Value
  loc_9DB06F: FLdRfVar var_D0
  loc_9DB072: CStrVarTmp
  loc_9DB073: FStStrNoPop var_D4
  loc_9DB076: FLdPr Me
  loc_9DB079: VCallAd Control_ID_cboPeriodo
  loc_9DB07C: FStAdFunc var_D8
  loc_9DB07F: FLdPr var_D8
  loc_9DB082: Me.AddItem from_stack_1, from_stack_2
  loc_9DB087: FFree1Str var_D4
  loc_9DB08A: FFreeAd var_A8 = "": var_BC = "": var_C0 = ""
  loc_9DB095: FFree1Var var_D0 = ""
  loc_9DB098: FLdPr var_B0
  loc_9DB09B: Call clsperiodo.MoveSiguiente()
  loc_9DB0A0: Branch loc_9DB027
  loc_9DB0A3: LitNothing
  loc_9DB0A5: FStAd var_B0 
  loc_9DB0A9: Call cmdNueva_Click()
  loc_9DB0AE: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '961884
  'Data Table: 4D360C
  loc_96186C: FLdPr Me
  loc_96186F: VCallAd Control_ID_wbbReporte
  loc_961872: FStAdFunc var_88
  loc_961875: FLdRfVar var_88
  loc_961878: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_96187D: FFree1Ad var_88
  loc_961880: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() 'A29EB0
  'Data Table: 4D360C
  loc_A29CE4: LitI2_Byte 0
  loc_A29CE6: FLdPr Me
  loc_A29CE9: MemStI2 bGenerado
  loc_A29CEC: LitI2_Byte &HFF
  loc_A29CEE: FLdPr Me
  loc_A29CF1: MemStI2 bLogos
  loc_A29CF4: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_A29CF9: LitI4 0
  loc_A29CFE: LitI4 1
  loc_A29D03: FLdRfVar var_88
  loc_A29D06: Redim
  loc_A29D10: FLdPr Me
  loc_A29D13: VCallAd Control_ID_DetaCucoLbl
  loc_A29D16: CVarAd
  loc_A29D1A: ParmAry1St
  loc_A29D20: FLdPr Me
  loc_A29D23: VCallAd Control_ID_DetaProvLbl
  loc_A29D26: CVarAd
  loc_A29D2A: ParmAry1St
  loc_A29D30: FLdRfVar var_88
  loc_A29D33: ImpAdCallFPR4 Proc_261_4_9A47F0()
  loc_A29D38: FLdRfVar var_88
  loc_A29D3B: Erase
  loc_A29D3C: ImpAdLdI2 MemVar_C3D064
  loc_A29D3F: CStrUI1
  loc_A29D41: FStStrNoPop var_AC
  loc_A29D44: FLdPr Me
  loc_A29D47: VCallAd Control_ID_cboPeriodo
  loc_A29D4A: FStAdFunc var_B0
  loc_A29D4D: FLdPr var_B0
  loc_A29D50: Me.Text = from_stack_1
  loc_A29D55: FFree1Str var_AC
  loc_A29D58: FFree1Ad var_B0
  loc_A29D5B: LitStr vbNullString
  loc_A29D5E: FLdPr Me
  loc_A29D61: VCallAd Control_ID_txtNumeDebi
  loc_A29D64: FStAdFunc var_B0
  loc_A29D67: FLdPr var_B0
  loc_A29D6A: Me.Text = from_stack_1
  loc_A29D6F: FFree1Ad var_B0
  loc_A29D72: LitVarStr var_C0, vbNullString
  loc_A29D77: PopAdLdVar
  loc_A29D78: FLdPr Me
  loc_A29D7B: VCallAd Control_ID_CodiCucoMsk
  loc_A29D7E: FStAdFunc var_B0
  loc_A29D81: FLdPr var_B0
  loc_A29D84: LateIdSt
  loc_A29D89: FFree1Ad var_B0
  loc_A29D8C: FLdRfVar var_D2
  loc_A29D8F: FLdPr Me
  loc_A29D92: VCallAd Control_ID_cboExpeImpu
  loc_A29D95: FStAdFunc var_B0
  loc_A29D98: FLdPr var_B0
  loc_A29D9B:  = Me.ListCount
  loc_A29DA0: FLdI2 var_D2
  loc_A29DA3: LitI2_Byte 0
  loc_A29DA5: GtI2
  loc_A29DA6: FFree1Ad var_B0
  loc_A29DA9: BranchF loc_A29DC2
  loc_A29DAC: LitI2_Byte 0
  loc_A29DAE: FLdPr Me
  loc_A29DB1: VCallAd Control_ID_cboExpeImpu
  loc_A29DB4: FStAdFunc var_B0
  loc_A29DB7: FLdPr var_B0
  loc_A29DBA: Me.ListIndex = from_stack_1
  loc_A29DBF: FFree1Ad var_B0
  loc_A29DC2: FLdRfVar var_D2
  loc_A29DC5: FLdPr Me
  loc_A29DC8: VCallAd Control_ID_CboExorImpu
  loc_A29DCB: FStAdFunc var_B0
  loc_A29DCE: FLdPr var_B0
  loc_A29DD1:  = Me.ListCount
  loc_A29DD6: FLdI2 var_D2
  loc_A29DD9: LitI2_Byte 0
  loc_A29DDB: GtI2
  loc_A29DDC: FFree1Ad var_B0
  loc_A29DDF: BranchF loc_A29DF8
  loc_A29DE2: LitI2_Byte 0
  loc_A29DE4: FLdPr Me
  loc_A29DE7: VCallAd Control_ID_CboExorImpu
  loc_A29DEA: FStAdFunc var_B0
  loc_A29DED: FLdPr var_B0
  loc_A29DF0: Me.ListIndex = from_stack_1
  loc_A29DF5: FFree1Ad var_B0
  loc_A29DF8: LitStr vbNullString
  loc_A29DFB: FLdPr Me
  loc_A29DFE: VCallAd Control_ID_CucuPersTxt
  loc_A29E01: FStAdFunc var_B0
  loc_A29E04: FLdPr var_B0
  loc_A29E07: Me.Text = from_stack_1
  loc_A29E0C: FFree1Ad var_B0
  loc_A29E0F: LitI2_Byte 1
  loc_A29E11: LitI2_Byte 1
  loc_A29E13: ImpAdLdI2 MemVar_C3D064
  loc_A29E16: FLdRfVar var_98
  loc_A29E19: ImpAdCallFPR4  = DateSerial(, , )
  loc_A29E1E: FLdRfVar var_98
  loc_A29E21: CStrVarTmp
  loc_A29E22: CVarStr var_A8
  loc_A29E25: PopAdLdVar
  loc_A29E26: FLdPr Me
  loc_A29E29: VCallAd Control_ID_mskDesde
  loc_A29E2C: FStAdFunc var_B0
  loc_A29E2F: FLdPr var_B0
  loc_A29E32: LateIdSt
  loc_A29E37: FFree1Ad var_B0
  loc_A29E3A: FFreeVar var_98 = ""
  loc_A29E41: ImpAdLdFPR8 MemVar_C3D04C
  loc_A29E44: CStrDate
  loc_A29E46: CVarStr var_98
  loc_A29E49: PopAdLdVar
  loc_A29E4A: FLdPr Me
  loc_A29E4D: VCallAd Control_ID_mskHasta
  loc_A29E50: FStAdFunc var_B0
  loc_A29E53: FLdPr var_B0
  loc_A29E56: LateIdSt
  loc_A29E5B: FFree1Ad var_B0
  loc_A29E5E: FFree1Var var_98 = ""
  loc_A29E61: LitI4 0
  loc_A29E66: CI2I4
  loc_A29E67: FLdPr Me
  loc_A29E6A: VCallAd Control_ID_chkAnulados
  loc_A29E6D: FStAdFunc var_B0
  loc_A29E70: FLdPr var_B0
  loc_A29E73: Me.Value = from_stack_1
  loc_A29E78: FFree1Ad var_B0
  loc_A29E7B: LitI4 0
  loc_A29E80: CI2I4
  loc_A29E81: FLdPr Me
  loc_A29E84: VCallAd Control_ID_chkOrdenarCuenta
  loc_A29E87: FStAdFunc var_B0
  loc_A29E8A: FLdPr var_B0
  loc_A29E8D: Me.Value = from_stack_1
  loc_A29E92: FFree1Ad var_B0
  loc_A29E95: Call HabilitarCriterio()
  loc_A29E9A: ILdRf Me
  loc_A29E9D: CastAd
  loc_A29EA0: FStAdFunc var_B0
  loc_A29EA3: FLdRfVar var_B0
  loc_A29EA6: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_A29EAB: FFree1Ad var_B0
  loc_A29EAE: ExitProcHresult
End Sub

Private Sub CucuPersCmd_Click() '9F8398
  'Data Table: 4D360C
  loc_9F825C: LitI2_Byte &HFF
  loc_9F825E: ImpAdLdRf MemVar_C3D74C
  loc_9F8261: NewIfNullPr bscProveedor
  loc_9F8264: Call bscProveedor.MuestroAnuladosPut(from_stack_1v)
  loc_9F8269: LitNothing
  loc_9F826B: CastAd
  loc_9F826E: FStAdFuncNoPop
  loc_9F8271: ImpAdLdRf MemVar_C3D74C
  loc_9F8274: NewIfNullPr bscProveedor
  loc_9F8277: Call bscProveedor.global_4315292Set(from_stack_1v)
  loc_9F827C: FFree1Ad var_88
  loc_9F827F: LitVar_Missing var_A8
  loc_9F8282: PopAdLdVar
  loc_9F8283: LitVarI4
  loc_9F828B: PopAdLdVar
  loc_9F828C: ImpAdLdRf MemVar_C3D74C
  loc_9F828F: NewIfNullPr bscProveedor
  loc_9F8292: bscProveedor.Show from_stack_1, from_stack_2
  loc_9F8297: FLdRfVar var_AC
  loc_9F829A: FLdRfVar var_88
  loc_9F829D: ImpAdLdRf MemVar_C3D74C
  loc_9F82A0: NewIfNullPr bscProveedor
  loc_9F82A3: from_stack_1v = bscProveedor.global_4315292Get()
  loc_9F82A8: FLdPr var_88
  loc_9F82AB: from_stack_1 = clsbase.RecordCount
  loc_9F82B0: ILdRf var_AC
  loc_9F82B3: LitI4 0
  loc_9F82B8: GtI4
  loc_9F82B9: FFree1Ad var_88
  loc_9F82BC: BranchF loc_9F8395
  loc_9F82BF: FLdRfVar var_C8
  loc_9F82C2: FLdRfVar var_B8
  loc_9F82C5: LitVarStr var_98, "CucuPers"
  loc_9F82CA: PopAdLdVar
  loc_9F82CB: FLdRfVar var_B4
  loc_9F82CE: FLdRfVar var_B0
  loc_9F82D1: FLdRfVar var_88
  loc_9F82D4: ImpAdLdRf MemVar_C3D74C
  loc_9F82D7: NewIfNullPr bscProveedor
  loc_9F82DA: from_stack_1v = bscProveedor.global_4315292Get()
  loc_9F82DF: FLdPr var_88
  loc_9F82E2: from_stack_1v = clsbase.RsFrmGet()
  loc_9F82E7: FLdPr var_B0
  loc_9F82EA:  = Me.Fields
  loc_9F82EF: FLdPr var_B4
  loc_9F82F2: from_stack_2 = Me.Item(from_stack_1)
  loc_9F82F7: FLdPr var_B8
  loc_9F82FA:  = Me.Value
  loc_9F82FF: FLdRfVar var_C8
  loc_9F8302: CStrVarTmp
  loc_9F8303: FStStrNoPop var_CC
  loc_9F8306: FLdPr Me
  loc_9F8309: VCallAd Control_ID_CucuPersTxt
  loc_9F830C: FStAdFunc var_D0
  loc_9F830F: FLdPr var_D0
  loc_9F8312: Me.Text = from_stack_1
  loc_9F8317: FFree1Str var_CC
  loc_9F831A: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9F8327: FFree1Var var_C8 = ""
  loc_9F832A: FLdRfVar var_C8
  loc_9F832D: FLdRfVar var_B8
  loc_9F8330: LitVarStr var_98, "DetaProv"
  loc_9F8335: PopAdLdVar
  loc_9F8336: FLdRfVar var_B4
  loc_9F8339: FLdRfVar var_B0
  loc_9F833C: FLdRfVar var_88
  loc_9F833F: ImpAdLdRf MemVar_C3D74C
  loc_9F8342: NewIfNullPr bscProveedor
  loc_9F8345: from_stack_1v = bscProveedor.global_4315292Get()
  loc_9F834A: FLdPr var_88
  loc_9F834D: from_stack_1v = clsbase.RsFrmGet()
  loc_9F8352: FLdPr var_B0
  loc_9F8355:  = Me.Fields
  loc_9F835A: FLdPr var_B4
  loc_9F835D: from_stack_2 = Me.Item(from_stack_1)
  loc_9F8362: FLdPr var_B8
  loc_9F8365:  = Me.Value
  loc_9F836A: FLdRfVar var_C8
  loc_9F836D: CStrVarTmp
  loc_9F836E: FStStrNoPop var_CC
  loc_9F8371: FLdPr Me
  loc_9F8374: VCallAd Control_ID_DetaProvLbl
  loc_9F8377: FStAdFunc var_D0
  loc_9F837A: FLdPr var_D0
  loc_9F837D: Me.Caption = from_stack_1
  loc_9F8382: FFree1Str var_CC
  loc_9F8385: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9F8392: FFree1Var var_C8 = ""
  loc_9F8395: ExitProcHresult
  loc_9F8396: BranchF loc_A0165C
End Sub

Private Sub mskDesde_UnknownEvent_0 '9514B0
  'Data Table: 4D360C
  loc_95149C: FLdPr Me
  loc_95149F: VCallAd Control_ID_mskDesde
  loc_9514A2: CVarAd
  loc_9514A6: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_9514AB: FFree1Var var_94 = ""
  loc_9514AE: ExitProcHresult
End Sub

Private Function mskDesde_UnknownEvent_8(arg_C) '9B3E2C
  'Data Table: 4D360C
  loc_9B3D90: FLdPr Me
  loc_9B3D93: VCallAd Control_ID_mskDesde
  loc_9B3D96: FStAdFunc var_88
  loc_9B3D99: FLdPr var_88
  loc_9B3D9C: LateIdLdVar var_98 DispID_15 0
  loc_9B3DA3: PopAd
  loc_9B3DA5: FLdPr Me
  loc_9B3DA8: VCallAd Control_ID_mskDesde
  loc_9B3DAB: FStAdFunc var_AC
  loc_9B3DAE: LitI2_Byte 0
  loc_9B3DB0: PopTmpLdAd2 var_A2
  loc_9B3DB3: FLdZeroAd var_AC
  loc_9B3DB6: FStAdFunc var_A0
  loc_9B3DB9: FLdRfVar var_A0
  loc_9B3DBC: LitStr vbNullString
  loc_9B3DBF: LitI2_Byte 0
  loc_9B3DC1: LitI2_Byte 0
  loc_9B3DC3: FLdRfVar var_98
  loc_9B3DC6: CStrVarTmp
  loc_9B3DC7: FStStrNoPop var_9C
  loc_9B3DCA: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9B3DCF: FStStrNoPop var_A8
  loc_9B3DD2: FLdPr Me
  loc_9B3DD5: MemStStrCopy
  loc_9B3DD9: FFreeStr var_9C = ""
  loc_9B3DE0: FFreeAd var_88 = "": var_A0 = ""
  loc_9B3DE9: FFree1Var var_98 = ""
  loc_9B3DEC: FLdPr Me
  loc_9B3DEF: VCallAd Control_ID_mskDesde
  loc_9B3DF2: FStAdFunc var_B0
  loc_9B3DF5: LitNothing
  loc_9B3DF7: CastAd
  loc_9B3DFA: FStAdFunc var_AC
  loc_9B3DFD: FLdRfVar var_AC
  loc_9B3E00: FLdZeroAd var_B0
  loc_9B3E03: FStAdFuncNoPop
  loc_9B3E06: CastAd
  loc_9B3E09: FStAdFunc var_A0
  loc_9B3E0C: FLdRfVar var_A0
  loc_9B3E0F: FLdPr Me
  loc_9B3E12: MemLdRfVar from_stack_1.global_104
  loc_9B3E15: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9B3E1A: IStI2 arg_C
  loc_9B3E1D: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9B3E28: ExitProcHresult
  loc_9B3E29: CVarI2 arg_1F
End Function

Private Sub cboPeriodo_Click() 'A0CD18
  'Data Table: 4D360C
  loc_A0CBAC: Call Proc_191_40_A2406C()
  loc_A0CBB1: Call Proc_191_41_A24464()
  loc_A0CBB6: FLdRfVar var_8C
  loc_A0CBB9: FLdPr Me
  loc_A0CBBC: VCallAd Control_ID_cboPeriodo
  loc_A0CBBF: FStAdFunc var_88
  loc_A0CBC2: FLdPr var_88
  loc_A0CBC5:  = Me.Text
  loc_A0CBCA: LitI2_Byte 1
  loc_A0CBCC: LitI2_Byte 1
  loc_A0CBCE: ILdRf var_8C
  loc_A0CBD1: CI2Str
  loc_A0CBD3: FLdRfVar var_9C
  loc_A0CBD6: ImpAdCallFPR4  = DateSerial(, , )
  loc_A0CBDB: FLdRfVar var_9C
  loc_A0CBDE: CStrVarTmp
  loc_A0CBDF: CVarStr var_AC
  loc_A0CBE2: PopAdLdVar
  loc_A0CBE3: FLdPr Me
  loc_A0CBE6: VCallAd Control_ID_mskDesde
  loc_A0CBE9: FStAdFunc var_C0
  loc_A0CBEC: FLdPr var_C0
  loc_A0CBEF: LateIdSt
  loc_A0CBF4: FFree1Str var_8C
  loc_A0CBF7: FFreeAd var_88 = ""
  loc_A0CBFE: FFreeVar var_9C = ""
  loc_A0CC05: FLdRfVar var_8C
  loc_A0CC08: FLdPr Me
  loc_A0CC0B: VCallAd Control_ID_cboPeriodo
  loc_A0CC0E: FStAdFunc var_88
  loc_A0CC11: FLdPr var_88
  loc_A0CC14:  = Me.Text
  loc_A0CC19: ILdRf var_8C
  loc_A0CC1C: CI2Str
  loc_A0CC1E: ImpAdLdI2 MemVar_C3D064
  loc_A0CC21: LtI2
  loc_A0CC22: FFree1Str var_8C
  loc_A0CC25: FFree1Ad var_88
  loc_A0CC28: BranchF loc_A0CC7D
  loc_A0CC2B: FLdRfVar var_8C
  loc_A0CC2E: FLdPr Me
  loc_A0CC31: VCallAd Control_ID_cboPeriodo
  loc_A0CC34: FStAdFunc var_88
  loc_A0CC37: FLdPr var_88
  loc_A0CC3A:  = Me.Text
  loc_A0CC3F: LitI2_Byte &H1F
  loc_A0CC41: LitI2_Byte &HC
  loc_A0CC43: ILdRf var_8C
  loc_A0CC46: CI2Str
  loc_A0CC48: FLdRfVar var_9C
  loc_A0CC4B: ImpAdCallFPR4  = DateSerial(, , )
  loc_A0CC50: FLdRfVar var_9C
  loc_A0CC53: CStrVarTmp
  loc_A0CC54: CVarStr var_AC
  loc_A0CC57: PopAdLdVar
  loc_A0CC58: FLdPr Me
  loc_A0CC5B: VCallAd Control_ID_mskHasta
  loc_A0CC5E: FStAdFunc var_C0
  loc_A0CC61: FLdPr var_C0
  loc_A0CC64: LateIdSt
  loc_A0CC69: FFree1Str var_8C
  loc_A0CC6C: FFreeAd var_88 = ""
  loc_A0CC73: FFreeVar var_9C = ""
  loc_A0CC7A: Branch loc_A0CD15
  loc_A0CC7D: FLdRfVar var_8C
  loc_A0CC80: FLdPr Me
  loc_A0CC83: VCallAd Control_ID_cboPeriodo
  loc_A0CC86: FStAdFunc var_88
  loc_A0CC89: FLdPr var_88
  loc_A0CC8C:  = Me.Text
  loc_A0CC91: ILdRf var_8C
  loc_A0CC94: CI2Str
  loc_A0CC96: ImpAdLdI2 MemVar_C3D064
  loc_A0CC99: GtI2
  loc_A0CC9A: FFree1Str var_8C
  loc_A0CC9D: FFree1Ad var_88
  loc_A0CCA0: BranchF loc_A0CCF5
  loc_A0CCA3: FLdRfVar var_8C
  loc_A0CCA6: FLdPr Me
  loc_A0CCA9: VCallAd Control_ID_cboPeriodo
  loc_A0CCAC: FStAdFunc var_88
  loc_A0CCAF: FLdPr var_88
  loc_A0CCB2:  = Me.Text
  loc_A0CCB7: LitI2_Byte &H1F
  loc_A0CCB9: LitI2_Byte &HC
  loc_A0CCBB: ILdRf var_8C
  loc_A0CCBE: CI2Str
  loc_A0CCC0: FLdRfVar var_9C
  loc_A0CCC3: ImpAdCallFPR4  = DateSerial(, , )
  loc_A0CCC8: FLdRfVar var_9C
  loc_A0CCCB: CStrVarTmp
  loc_A0CCCC: CVarStr var_AC
  loc_A0CCCF: PopAdLdVar
  loc_A0CCD0: FLdPr Me
  loc_A0CCD3: VCallAd Control_ID_mskHasta
  loc_A0CCD6: FStAdFunc var_C0
  loc_A0CCD9: FLdPr var_C0
  loc_A0CCDC: LateIdSt
  loc_A0CCE1: FFree1Str var_8C
  loc_A0CCE4: FFreeAd var_88 = ""
  loc_A0CCEB: FFreeVar var_9C = ""
  loc_A0CCF2: Branch loc_A0CD15
  loc_A0CCF5: ImpAdLdFPR8 MemVar_C3D04C
  loc_A0CCF8: CStrDate
  loc_A0CCFA: CVarStr var_9C
  loc_A0CCFD: PopAdLdVar
  loc_A0CCFE: FLdPr Me
  loc_A0CD01: VCallAd Control_ID_mskHasta
  loc_A0CD04: FStAdFunc var_88
  loc_A0CD07: FLdPr var_88
  loc_A0CD0A: LateIdSt
  loc_A0CD0F: FFree1Ad var_88
  loc_A0CD12: FFree1Var var_9C = ""
  loc_A0CD15: ExitProcHresult
  loc_A0CD16: NewIfNullPr Me
End Sub

Private Sub CodiCucoCmd_Click() '9FDDAC
  'Data Table: 4D360C
  loc_9FDC68: FLdRfVar var_8C
  loc_9FDC6B: FLdPr Me
  loc_9FDC6E: VCallAd Control_ID_cboPeriodo
  loc_9FDC71: FStAdFunc var_88
  loc_9FDC74: FLdPr var_88
  loc_9FDC77:  = Me.Text
  loc_9FDC7C: ILdRf var_8C
  loc_9FDC7F: CI2Str
  loc_9FDC81: ImpAdLdRf MemVar_C3D6C0
  loc_9FDC84: NewIfNullPr bscCuentaContable
  loc_9FDC87: Call bscCuentaContable.iPeriInfoPut(from_stack_1v)
  loc_9FDC8C: FFree1Str var_8C
  loc_9FDC8F: FFree1Ad var_88
  loc_9FDC92: LitVar_Missing var_AC
  loc_9FDC95: PopAdLdVar
  loc_9FDC96: LitVarI4
  loc_9FDC9E: PopAdLdVar
  loc_9FDC9F: ImpAdLdRf MemVar_C3D6C0
  loc_9FDCA2: NewIfNullPr bscCuentaContable
  loc_9FDCA5: bscCuentaContable.Show from_stack_1, from_stack_2
  loc_9FDCAA: FLdRfVar var_B0
  loc_9FDCAD: FLdRfVar var_88
  loc_9FDCB0: ImpAdLdRf MemVar_C3D6C0
  loc_9FDCB3: NewIfNullPr bscCuentaContable
  loc_9FDCB6: from_stack_1v = bscCuentaContable.global_4334344Get()
  loc_9FDCBB: FLdPr var_88
  loc_9FDCBE: from_stack_1 = clsbase.RecordCount
  loc_9FDCC3: ILdRf var_B0
  loc_9FDCC6: LitI4 0
  loc_9FDCCB: GtI4
  loc_9FDCCC: FFree1Ad var_88
  loc_9FDCCF: BranchF loc_9FDDAA
  loc_9FDCD2: FLdRfVar var_CC
  loc_9FDCD5: FLdRfVar var_BC
  loc_9FDCD8: LitVarStr var_9C, "CodiCuco"
  loc_9FDCDD: PopAdLdVar
  loc_9FDCDE: FLdRfVar var_B8
  loc_9FDCE1: FLdRfVar var_B4
  loc_9FDCE4: FLdRfVar var_88
  loc_9FDCE7: ImpAdLdRf MemVar_C3D6C0
  loc_9FDCEA: NewIfNullPr bscCuentaContable
  loc_9FDCED: from_stack_1v = bscCuentaContable.global_4334344Get()
  loc_9FDCF2: FLdPr var_88
  loc_9FDCF5: from_stack_1v = clsbase.RsFrmGet()
  loc_9FDCFA: FLdPr var_B4
  loc_9FDCFD:  = Me.Fields
  loc_9FDD02: FLdPr var_B8
  loc_9FDD05: from_stack_2 = Me.Item(from_stack_1)
  loc_9FDD0A: FLdPr var_BC
  loc_9FDD0D:  = Me.Value
  loc_9FDD12: FLdRfVar var_CC
  loc_9FDD15: CStrVarTmp
  loc_9FDD16: CVarStr var_DC
  loc_9FDD19: PopAdLdVar
  loc_9FDD1A: FLdPr Me
  loc_9FDD1D: VCallAd Control_ID_CodiCucoMsk
  loc_9FDD20: FStAdFunc var_E0
  loc_9FDD23: FLdPr var_E0
  loc_9FDD26: LateIdSt
  loc_9FDD2B: FFreeAd var_88 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_9FDD38: FFreeVar var_CC = ""
  loc_9FDD3F: FLdRfVar var_CC
  loc_9FDD42: FLdRfVar var_BC
  loc_9FDD45: LitVarStr var_9C, "DetaCuco"
  loc_9FDD4A: PopAdLdVar
  loc_9FDD4B: FLdRfVar var_B8
  loc_9FDD4E: FLdRfVar var_B4
  loc_9FDD51: FLdRfVar var_88
  loc_9FDD54: ImpAdLdRf MemVar_C3D6C0
  loc_9FDD57: NewIfNullPr bscCuentaContable
  loc_9FDD5A: from_stack_1v = bscCuentaContable.global_4334344Get()
  loc_9FDD5F: FLdPr var_88
  loc_9FDD62: from_stack_1v = clsbase.RsFrmGet()
  loc_9FDD67: FLdPr var_B4
  loc_9FDD6A:  = Me.Fields
  loc_9FDD6F: FLdPr var_B8
  loc_9FDD72: from_stack_2 = Me.Item(from_stack_1)
  loc_9FDD77: FLdPr var_BC
  loc_9FDD7A:  = Me.Value
  loc_9FDD7F: FLdRfVar var_CC
  loc_9FDD82: CStrVarTmp
  loc_9FDD83: FStStrNoPop var_8C
  loc_9FDD86: FLdPr Me
  loc_9FDD89: VCallAd Control_ID_DetaCucoLbl
  loc_9FDD8C: FStAdFunc var_E0
  loc_9FDD8F: FLdPr var_E0
  loc_9FDD92: Me.Caption = from_stack_1
  loc_9FDD97: FFree1Str var_8C
  loc_9FDD9A: FFreeAd var_88 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_9FDDA7: FFree1Var var_CC = ""
  loc_9FDDAA: ExitProcHresult
End Sub

Private Sub cboExorImpu_KeyPress(KeyAscii As Integer) '975A54
  'Data Table: 4D360C
  loc_975A2C: FLdPr Me
  loc_975A2F: VCallAd Control_ID_CboExorImpu
  loc_975A32: FStAdFunc var_8C
  loc_975A35: ILdI2 KeyAscii
  loc_975A38: FLdZeroAd var_8C
  loc_975A3B: FStAdFunc var_88
  loc_975A3E: FLdRfVar var_88
  loc_975A41: ImpAdCallI2 Proc_265_8_A56F7C(, )
  loc_975A46: IStI2 KeyAscii
  loc_975A49: FFreeAd var_88 = ""
  loc_975A50: ExitProcHresult
End Sub

Private Sub cboExorImpu_Validate(Cancel As Boolean) '9CC2A0
  'Data Table: 4D360C
  loc_9CC1CC: FLdPr Me
  loc_9CC1CF: VCallAd Control_ID_CboExorImpu
  loc_9CC1D2: FStAdFunc var_8C
  loc_9CC1D5: LitStr "El exp. original ingresado '"
  loc_9CC1D8: FLdRfVar var_90
  loc_9CC1DB: FLdPr var_8C
  loc_9CC1DE:  = Me.Text
  loc_9CC1E3: ILdRf var_90
  loc_9CC1E6: ConcatStr
  loc_9CC1E7: FStStrNoPop var_94
  loc_9CC1EA: LitStr "' no está listado. Debe elegir uno existente."
  loc_9CC1ED: ConcatStr
  loc_9CC1EE: FStStrNoPop var_98
  loc_9CC1F1: FLdPr Me
  loc_9CC1F4: MemStStrCopy
  loc_9CC1F8: FFreeStr var_90 = "": var_94 = ""
  loc_9CC201: LitI2_Byte 0
  loc_9CC203: FLdRfVar var_86
  loc_9CC206: FLdRfVar var_9A
  loc_9CC209: FLdPr var_8C
  loc_9CC20C:  = Me.ListCount
  loc_9CC211: FLdI2 var_9A
  loc_9CC214: LitI2_Byte 1
  loc_9CC216: SubI2
  loc_9CC217: ForI2 var_9E
  loc_9CC21D: FLdRfVar var_90
  loc_9CC220: FLdPr var_8C
  loc_9CC223:  = Me.Text
  loc_9CC228: ILdRf var_90
  loc_9CC22B: FLdRfVar var_94
  loc_9CC22E: FLdI2 var_86
  loc_9CC231: FLdPr var_8C
  loc_9CC234: from_stack_2 = Me.List(from_stack_1)
  loc_9CC239: ILdRf var_94
  loc_9CC23C: EqStr
  loc_9CC23E: FFreeStr var_90 = ""
  loc_9CC245: BranchF loc_9CC252
  loc_9CC248: LitStr vbNullString
  loc_9CC24B: FLdPr Me
  loc_9CC24E: MemStStrCopy
  loc_9CC252: FLdRfVar var_86
  loc_9CC255: NextI2 var_9E, loc_9CC21D
  loc_9CC25A: LitNothing
  loc_9CC25C: FStAd var_8C 
  loc_9CC260: FLdPr Me
  loc_9CC263: VCallAd Control_ID_CboExorImpu
  loc_9CC266: FStAdFunc var_B0
  loc_9CC269: LitNothing
  loc_9CC26B: CastAd
  loc_9CC26E: FStAdFunc var_AC
  loc_9CC271: FLdRfVar var_AC
  loc_9CC274: FLdZeroAd var_B0
  loc_9CC277: FStAdFuncNoPop
  loc_9CC27A: CastAd
  loc_9CC27D: FStAdFunc var_A8
  loc_9CC280: FLdRfVar var_A8
  loc_9CC283: FLdPr Me
  loc_9CC286: MemLdRfVar from_stack_1.global_104
  loc_9CC289: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9CC28E: IStI2 Cancel
  loc_9CC291: FFreeAd var_A4 = "": var_A8 = "": var_AC = ""
  loc_9CC29C: ExitProcHresult
  loc_9CC29D: NeCyR8
  loc_9CC29E: CRec2Ansi var_6C00
End Sub

Private Sub cmdPrevia_Click() '96158C
  'Data Table: 4D360C
  loc_961574: ILdRf Me
  loc_961577: CastAd
  loc_96157A: FStAdFunc var_88
  loc_96157D: FLdRfVar var_88
  loc_961580: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_961585: FFree1Ad var_88
  loc_961588: ExitProcHresult
End Sub

Private Sub cmdXLS_Click() '96B3AC
  'Data Table: 4D360C
  loc_96B390: LitI2_Byte &HFF
  loc_96B392: LitI2_Byte 0
  loc_96B394: ILdRf Me
  loc_96B397: CastAd
  loc_96B39A: FStAdFunc var_88
  loc_96B39D: FLdRfVar var_88
  loc_96B3A0: ImpAdCallFPR4 Proc_263_4_A28DF0(, , )
  loc_96B3A5: FFree1Ad var_88
  loc_96B3A8: ExitProcHresult
End Sub

Private Sub mskHasta_UnknownEvent_0 '9513D8
  'Data Table: 4D360C
  loc_9513C4: FLdPr Me
  loc_9513C7: VCallAd Control_ID_mskHasta
  loc_9513CA: CVarAd
  loc_9513CE: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_9513D3: FFree1Var var_94 = ""
  loc_9513D6: ExitProcHresult
End Sub

Private Function mskHasta_UnknownEvent_8(arg_C) '9B3F14
  'Data Table: 4D360C
  loc_9B3E78: FLdPr Me
  loc_9B3E7B: VCallAd Control_ID_mskHasta
  loc_9B3E7E: FStAdFunc var_88
  loc_9B3E81: FLdPr var_88
  loc_9B3E84: LateIdLdVar var_98 DispID_15 0
  loc_9B3E8B: PopAd
  loc_9B3E8D: FLdPr Me
  loc_9B3E90: VCallAd Control_ID_mskHasta
  loc_9B3E93: FStAdFunc var_AC
  loc_9B3E96: LitI2_Byte 0
  loc_9B3E98: PopTmpLdAd2 var_A2
  loc_9B3E9B: FLdZeroAd var_AC
  loc_9B3E9E: FStAdFunc var_A0
  loc_9B3EA1: FLdRfVar var_A0
  loc_9B3EA4: LitStr vbNullString
  loc_9B3EA7: LitI2_Byte 0
  loc_9B3EA9: LitI2_Byte 0
  loc_9B3EAB: FLdRfVar var_98
  loc_9B3EAE: CStrVarTmp
  loc_9B3EAF: FStStrNoPop var_9C
  loc_9B3EB2: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9B3EB7: FStStrNoPop var_A8
  loc_9B3EBA: FLdPr Me
  loc_9B3EBD: MemStStrCopy
  loc_9B3EC1: FFreeStr var_9C = ""
  loc_9B3EC8: FFreeAd var_88 = "": var_A0 = ""
  loc_9B3ED1: FFree1Var var_98 = ""
  loc_9B3ED4: FLdPr Me
  loc_9B3ED7: VCallAd Control_ID_mskHasta
  loc_9B3EDA: FStAdFunc var_B0
  loc_9B3EDD: LitNothing
  loc_9B3EDF: CastAd
  loc_9B3EE2: FStAdFunc var_AC
  loc_9B3EE5: FLdRfVar var_AC
  loc_9B3EE8: FLdZeroAd var_B0
  loc_9B3EEB: FStAdFuncNoPop
  loc_9B3EEE: CastAd
  loc_9B3EF1: FStAdFunc var_A0
  loc_9B3EF4: FLdRfVar var_A0
  loc_9B3EF7: FLdPr Me
  loc_9B3EFA: MemLdRfVar from_stack_1.global_104
  loc_9B3EFD: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9B3F02: IStI2 arg_C
  loc_9B3F05: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9B3F10: ExitProcHresult
  loc_9B3F11: UMiR8
  loc_9B3F12: ImpAdLdPr unk_4CCA0D
End Function

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '98A25C
  'Data Table: 4D360C
  loc_98A224: FLdPr Me
  loc_98A227: VCallAd Control_ID_statusBar
  loc_98A22A: FStAdFunc var_88
  loc_98A22D: FLdPr var_88
  loc_98A230: LateIdLdVar var_98 DispID_1 0
  loc_98A237: CStrVarTmp
  loc_98A238: CVarStr var_A8
  loc_98A23B: PopAdLdVar
  loc_98A23C: FLdPr Me
  loc_98A23F: VCallAd Control_ID_statusBar
  loc_98A242: FStAdFunc var_BC
  loc_98A245: FLdPr var_BC
  loc_98A248: LateIdSt
  loc_98A24D: FFreeAd var_88 = ""
  loc_98A254: FFreeVar var_98 = ""
  loc_98A25B: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '961378
  'Data Table: 4D360C
  loc_961360: ILdRf Me
  loc_961363: CastAd
  loc_961366: FStAdFunc var_88
  loc_961369: FLdRfVar var_88
  loc_96136C: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_961371: FFree1Ad var_88
  loc_961374: ExitProcHresult
End Sub

Private Sub cboExpeImpu_KeyPress(KeyAscii As Integer) '976234
  'Data Table: 4D360C
  loc_97620C: FLdPr Me
  loc_97620F: VCallAd Control_ID_cboExpeImpu
  loc_976212: FStAdFunc var_8C
  loc_976215: ILdI2 KeyAscii
  loc_976218: FLdZeroAd var_8C
  loc_97621B: FStAdFunc var_88
  loc_97621E: FLdRfVar var_88
  loc_976221: ImpAdCallI2 Proc_265_8_A56F7C(, )
  loc_976226: IStI2 KeyAscii
  loc_976229: FFreeAd var_88 = ""
  loc_976230: ExitProcHresult
End Sub

Private Sub cboExpeImpu_Validate(Cancel As Boolean) '9CC17C
  'Data Table: 4D360C
  loc_9CC0A8: FLdPr Me
  loc_9CC0AB: VCallAd Control_ID_cboExpeImpu
  loc_9CC0AE: FStAdFunc var_8C
  loc_9CC0B1: LitStr "El exp. de pago ingresado '"
  loc_9CC0B4: FLdRfVar var_90
  loc_9CC0B7: FLdPr var_8C
  loc_9CC0BA:  = Me.Text
  loc_9CC0BF: ILdRf var_90
  loc_9CC0C2: ConcatStr
  loc_9CC0C3: FStStrNoPop var_94
  loc_9CC0C6: LitStr "' no está listado. Debe elegir uno existente."
  loc_9CC0C9: ConcatStr
  loc_9CC0CA: FStStrNoPop var_98
  loc_9CC0CD: FLdPr Me
  loc_9CC0D0: MemStStrCopy
  loc_9CC0D4: FFreeStr var_90 = "": var_94 = ""
  loc_9CC0DD: LitI2_Byte 0
  loc_9CC0DF: FLdRfVar var_86
  loc_9CC0E2: FLdRfVar var_9A
  loc_9CC0E5: FLdPr var_8C
  loc_9CC0E8:  = Me.ListCount
  loc_9CC0ED: FLdI2 var_9A
  loc_9CC0F0: LitI2_Byte 1
  loc_9CC0F2: SubI2
  loc_9CC0F3: ForI2 var_9E
  loc_9CC0F9: FLdRfVar var_90
  loc_9CC0FC: FLdPr var_8C
  loc_9CC0FF:  = Me.Text
  loc_9CC104: ILdRf var_90
  loc_9CC107: FLdRfVar var_94
  loc_9CC10A: FLdI2 var_86
  loc_9CC10D: FLdPr var_8C
  loc_9CC110: from_stack_2 = Me.List(from_stack_1)
  loc_9CC115: ILdRf var_94
  loc_9CC118: EqStr
  loc_9CC11A: FFreeStr var_90 = ""
  loc_9CC121: BranchF loc_9CC12E
  loc_9CC124: LitStr vbNullString
  loc_9CC127: FLdPr Me
  loc_9CC12A: MemStStrCopy
  loc_9CC12E: FLdRfVar var_86
  loc_9CC131: NextI2 var_9E, loc_9CC0F9
  loc_9CC136: LitNothing
  loc_9CC138: FStAd var_8C 
  loc_9CC13C: FLdPr Me
  loc_9CC13F: VCallAd Control_ID_cboExpeImpu
  loc_9CC142: FStAdFunc var_B0
  loc_9CC145: LitNothing
  loc_9CC147: CastAd
  loc_9CC14A: FStAdFunc var_AC
  loc_9CC14D: FLdRfVar var_AC
  loc_9CC150: FLdZeroAd var_B0
  loc_9CC153: FStAdFuncNoPop
  loc_9CC156: CastAd
  loc_9CC159: FStAdFunc var_A8
  loc_9CC15C: FLdRfVar var_A8
  loc_9CC15F: FLdPr Me
  loc_9CC162: MemLdRfVar from_stack_1.global_104
  loc_9CC165: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9CC16A: IStI2 Cancel
  loc_9CC16D: FFreeAd var_A4 = "": var_A8 = "": var_AC = ""
  loc_9CC178: ExitProcHresult
End Sub

Private Sub CodiCucoMsk_UnknownEvent_0 '951660
  'Data Table: 4D360C
  loc_95164C: FLdPr Me
  loc_95164F: VCallAd Control_ID_CodiCucoMsk
  loc_951652: CVarAd
  loc_951656: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_95165B: FFree1Var var_94 = ""
  loc_95165E: ExitProcHresult
End Sub

Private Sub CodiCucoMsk_UnknownEvent_8 'A035E8
  'Data Table: 4D360C
  loc_A034A4: LitStr "SELECT DetaCuco FROM infogov.cuentacontable WHERE PeriInfo = "
  loc_A034A7: ImpAdLdI2 MemVar_C3D064
  loc_A034AA: CStrUI1
  loc_A034AC: FStStrNoPop var_88
  loc_A034AF: ConcatStr
  loc_A034B0: FStStrNoPop var_8C
  loc_A034B3: LitStr " AND CodiCuco LIKE '"
  loc_A034B6: ConcatStr
  loc_A034B7: FStStrNoPop var_A4
  loc_A034BA: FLdPr Me
  loc_A034BD: VCallAd Control_ID_CodiCucoMsk
  loc_A034C0: FStAdFunc var_90
  loc_A034C3: FLdPr var_90
  loc_A034C6: LateIdLdVar var_A0 DispID_20 0
  loc_A034CD: CStrVarTmp
  loc_A034CE: FStStrNoPop var_A8
  loc_A034D1: ConcatStr
  loc_A034D2: FStStrNoPop var_AC
  loc_A034D5: LitStr Chr(37) & "'"
  loc_A034D8: ConcatStr
  loc_A034D9: FStStrNoPop var_B0
  loc_A034DC: FLdPr Me
  loc_A034DF: MemLdRfVar from_stack_1.global_76
  loc_A034E2: NewIfNullPr clsbase
  loc_A034E5: Call clsbase.RedefineRS(from_stack_1v)
  loc_A034EA: FFreeStr var_88 = "": var_8C = "": var_A4 = "": var_A8 = "": var_AC = ""
  loc_A034F9: FFree1Ad var_90
  loc_A034FC: FFree1Var var_A0 = ""
  loc_A034FF: FLdRfVar var_B4
  loc_A03502: FLdPr Me
  loc_A03505: MemLdRfVar from_stack_1.global_76
  loc_A03508: NewIfNullPr clsbase
  loc_A0350B: from_stack_1 = clsbase.RecordCount
  loc_A03510: ILdRf var_B4
  loc_A03513: FStR4 var_B8
  loc_A03516: ILdRf var_B8
  loc_A03519: LitI4 0
  loc_A0351E: EqI4
  loc_A0351F: BranchF loc_A0353C
  loc_A03522: LitStr vbNullString
  loc_A03525: FLdPr Me
  loc_A03528: VCallAd Control_ID_DetaCucoLbl
  loc_A0352B: FStAdFunc var_90
  loc_A0352E: FLdPr var_90
  loc_A03531: Me.Caption = from_stack_1
  loc_A03536: FFree1Ad var_90
  loc_A03539: Branch loc_A035E7
  loc_A0353C: ILdRf var_B8
  loc_A0353F: LitI4 1
  loc_A03544: EqI4
  loc_A03545: BranchF loc_A035AC
  loc_A03548: FLdRfVar var_A0
  loc_A0354B: FLdRfVar var_D0
  loc_A0354E: LitVarStr var_CC, "DetaCuco"
  loc_A03553: PopAdLdVar
  loc_A03554: FLdRfVar var_BC
  loc_A03557: FLdRfVar var_90
  loc_A0355A: FLdPr Me
  loc_A0355D: MemLdRfVar from_stack_1.global_76
  loc_A03560: NewIfNullPr clsbase
  loc_A03563: from_stack_1v = clsbase.RsFrmGet()
  loc_A03568: FLdPr var_90
  loc_A0356B:  = Me.Fields
  loc_A03570: FLdPr var_BC
  loc_A03573: from_stack_2 = Me.Item(from_stack_1)
  loc_A03578: FLdPr var_D0
  loc_A0357B:  = Me.Value
  loc_A03580: FLdRfVar var_A0
  loc_A03583: CStrVarTmp
  loc_A03584: FStStrNoPop var_88
  loc_A03587: FLdPr Me
  loc_A0358A: VCallAd Control_ID_DetaCucoLbl
  loc_A0358D: FStAdFunc var_D4
  loc_A03590: FLdPr var_D4
  loc_A03593: Me.Caption = from_stack_1
  loc_A03598: FFree1Str var_88
  loc_A0359B: FFreeAd var_90 = "": var_BC = "": var_D0 = ""
  loc_A035A6: FFree1Var var_A0 = ""
  loc_A035A9: Branch loc_A035E7
  loc_A035AC: FLdRfVar var_B4
  loc_A035AF: FLdPr Me
  loc_A035B2: MemLdRfVar from_stack_1.global_76
  loc_A035B5: NewIfNullPr clsbase
  loc_A035B8: from_stack_1 = clsbase.RecordCount
  loc_A035BD: ILdRf var_B4
  loc_A035C0: CStrI4
  loc_A035C2: FStStrNoPop var_88
  loc_A035C5: LitStr " cuentas encontradas"
  loc_A035C8: ConcatStr
  loc_A035C9: FStStrNoPop var_8C
  loc_A035CC: FLdPr Me
  loc_A035CF: VCallAd Control_ID_DetaCucoLbl
  loc_A035D2: FStAdFunc var_90
  loc_A035D5: FLdPr var_90
  loc_A035D8: Me.Caption = from_stack_1
  loc_A035DD: FFreeStr var_88 = ""
  loc_A035E4: FFree1Ad var_90
  loc_A035E7: ExitProcHresult
End Sub

Private Sub cmdCalDesde_Click() '98310C
  'Data Table: 4D360C
  loc_9830D0: LitVar_Missing var_A4
  loc_9830D3: PopAdLdVar
  loc_9830D4: LitVarI4
  loc_9830DC: PopAdLdVar
  loc_9830DD: ImpAdLdRf MemVar_C3D9A8
  loc_9830E0: NewIfNullPr frmCalendario
  loc_9830E3: frmCalendario.Show from_stack_1, from_stack_2
  loc_9830E8: ImpAdLdRf MemVar_C3D038
  loc_9830EB: CDargRef
  loc_9830EF: FLdPr Me
  loc_9830F2: VCallAd Control_ID_mskDesde
  loc_9830F5: FStAdFunc var_A8
  loc_9830F8: FLdPr var_A8
  loc_9830FB: LateIdSt
  loc_983100: FFree1Ad var_A8
  loc_983103: ImpAdCallFPR4 Proc_261_52_966EEC()
  loc_983108: ExitProcHresult
  loc_983109: MemLdStr global_857
End Sub

Private Sub cmdCalHasta_Click() '98317C
  'Data Table: 4D360C
  loc_983140: LitVar_Missing var_A4
  loc_983143: PopAdLdVar
  loc_983144: LitVarI4
  loc_98314C: PopAdLdVar
  loc_98314D: ImpAdLdRf MemVar_C3D9A8
  loc_983150: NewIfNullPr frmCalendario
  loc_983153: frmCalendario.Show from_stack_1, from_stack_2
  loc_983158: ImpAdLdRf MemVar_C3D038
  loc_98315B: CDargRef
  loc_98315F: FLdPr Me
  loc_983162: VCallAd Control_ID_mskHasta
  loc_983165: FStAdFunc var_A8
  loc_983168: FLdPr var_A8
  loc_98316B: LateIdSt
  loc_983170: FFree1Ad var_A8
  loc_983173: ImpAdCallFPR4 Proc_261_52_966EEC()
  loc_983178: ExitProcHresult
  loc_983179: IDvI2
  loc_98317A: PopTmpLdAdStr var_6BFD
End Sub

Private Sub chkAnulados_Click() '994908
  'Data Table: 4D360C
  loc_9948B0: FLdRfVar var_8C
  loc_9948B3: FLdPr Me
  loc_9948B6: VCallAd Control_ID_cboExpeImpu
  loc_9948B9: FStAdFunc var_88
  loc_9948BC: FLdPr var_88
  loc_9948BF:  = Me.Text
  loc_9948C4: ILdRf var_8C
  loc_9948C7: LitStr vbNullString
  loc_9948CA: EqStr
  loc_9948CC: FFree1Str var_8C
  loc_9948CF: FFree1Ad var_88
  loc_9948D2: BranchF loc_9948DA
  loc_9948D5: Call Proc_191_40_A2406C()
  loc_9948DA: FLdRfVar var_8C
  loc_9948DD: FLdPr Me
  loc_9948E0: VCallAd Control_ID_CboExorImpu
  loc_9948E3: FStAdFunc var_88
  loc_9948E6: FLdPr var_88
  loc_9948E9:  = Me.Text
  loc_9948EE: ILdRf var_8C
  loc_9948F1: LitStr vbNullString
  loc_9948F4: EqStr
  loc_9948F6: FFree1Str var_8C
  loc_9948F9: FFree1Ad var_88
  loc_9948FC: BranchF loc_994904
  loc_9948FF: Call Proc_191_41_A24464()
  loc_994904: ExitProcHresult
  loc_994905: CVarCy arg_357
End Sub

Private Sub cmdPdf_Click() '96132C
  'Data Table: 4D360C
  loc_961314: LitI2_Byte 0
  loc_961316: ILdRf Me
  loc_961319: CastAd
  loc_96131C: FStAdFunc var_88
  loc_96131F: FLdRfVar var_88
  loc_961322: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_961327: FFree1Ad var_88
  loc_96132A: ExitProcHresult
End Sub

Public Function htmFileGet() '4D4E3C
  htmFileGet = htmFile
End Function

Public Sub htmFilePut(Value) '4D4E4B
  htmFile = Value
End Sub

Public Sub htmFileSet(Value) '4D4E5A
  htmFile = Value
End Sub

Public Function bGeneradoGet() '4D4E69
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '4D4E78
  bGenerado = Value
End Sub

Public Function bLogosGet() '4D4E87
  bLogosGet = bLogos
End Function

Public Sub bLogosPut(Value) '4D4E96
  bLogos = Value
End Sub

Public Sub GeneraHTML() 'AF687C
  'Data Table: 4D360C
  loc_AF6108: FLdRfVar var_88
  loc_AF610B: LitI2_Byte 0
  loc_AF610D: LitI2_Byte &HFF
  loc_AF610F: ImpAdLdI4 MemVar_C3D83C
  loc_AF6112: FLdPr Me
  loc_AF6115: MemLdRfVar from_stack_1.global_80
  loc_AF6118: NewIfNullPr IFileSystem3
  loc_AF611B: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_AF6120: ILdRf var_88
  loc_AF6123: FLdPr Me
  loc_AF6126: MemStVarAd
  loc_AF612A: FFree1Ad var_88
  loc_AF612D: Call Proc_191_42_B18B78()
  loc_AF6132: LitI2_Byte 1
  loc_AF6134: FLdPr Me
  loc_AF6137: MemLdRfVar from_stack_1.global_100
  loc_AF613A: FLdPr Me
  loc_AF613D: MemLdStr global_84
  loc_AF6140: LitI2_Byte 1
  loc_AF6142: FnUBound
  loc_AF6144: CI2I4
  loc_AF6145: ForI2 var_8C
  loc_AF614B: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_AF6150: PopAdLdVar
  loc_AF6151: FLdPr Me
  loc_AF6154: MemLdRfVar from_stack_1.htmFile
  loc_AF6157: LdPrVar
  loc_AF6159: LateMemCall
  loc_AF615F: FLdPr Me
  loc_AF6162: MemLdI2 global_100
  loc_AF6165: CI4UI1
  loc_AF6166: FLdPr Me
  loc_AF6169: MemLdStr global_84
  loc_AF616C: Ary1LdPr
  loc_AF616D: MemLdI2 global_56
  loc_AF6170: BranchF loc_AF61BA
  loc_AF6173: LitI4 0
  loc_AF6178: LitI4 0
  loc_AF617D: LitI2_Byte 0
  loc_AF617F: LitStr "right"
  loc_AF6182: LitStr " (Anul.) "
  loc_AF6185: FLdPr Me
  loc_AF6188: MemLdI2 global_100
  loc_AF618B: CI4UI1
  loc_AF618C: FLdPr Me
  loc_AF618F: MemLdStr global_84
  loc_AF6192: Ary1LdPr
  loc_AF6193: MemLdStr global_0
  loc_AF6196: ConcatStr
  loc_AF6197: FStStrNoPop var_B0
  loc_AF619A: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AF619F: CVarStr var_C0
  loc_AF61A2: PopAdLdVar
  loc_AF61A3: FLdPr Me
  loc_AF61A6: MemLdRfVar from_stack_1.htmFile
  loc_AF61A9: LdPrVar
  loc_AF61AB: LateMemCall
  loc_AF61B1: FFree1Str var_B0
  loc_AF61B4: FFree1Var var_C0 = ""
  loc_AF61B7: Branch loc_AF61F4
  loc_AF61BA: LitI4 0
  loc_AF61BF: LitI4 0
  loc_AF61C4: LitI2_Byte 0
  loc_AF61C6: LitStr "right"
  loc_AF61C9: FLdPr Me
  loc_AF61CC: MemLdI2 global_100
  loc_AF61CF: CI4UI1
  loc_AF61D0: FLdPr Me
  loc_AF61D3: MemLdStr global_84
  loc_AF61D6: Ary1LdPr
  loc_AF61D7: MemLdStr global_0
  loc_AF61DA: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AF61DF: CVarStr var_C0
  loc_AF61E2: PopAdLdVar
  loc_AF61E3: FLdPr Me
  loc_AF61E6: MemLdRfVar from_stack_1.htmFile
  loc_AF61E9: LdPrVar
  loc_AF61EB: LateMemCall
  loc_AF61F1: FFree1Var var_C0 = ""
  loc_AF61F4: FLdPr Me
  loc_AF61F7: MemLdI2 global_108
  loc_AF61FA: BranchF loc_AF6274
  loc_AF61FD: LitI4 0
  loc_AF6202: LitI4 0
  loc_AF6207: LitI2_Byte 0
  loc_AF6209: LitStr "left"
  loc_AF620C: FLdPr Me
  loc_AF620F: MemLdI2 global_100
  loc_AF6212: CI4UI1
  loc_AF6213: FLdPr Me
  loc_AF6216: MemLdStr global_84
  loc_AF6219: Ary1LdPr
  loc_AF621A: MemLdStr global_4
  loc_AF621D: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AF6222: CVarStr var_C0
  loc_AF6225: PopAdLdVar
  loc_AF6226: FLdPr Me
  loc_AF6229: MemLdRfVar from_stack_1.htmFile
  loc_AF622C: LdPrVar
  loc_AF622E: LateMemCall
  loc_AF6234: FFree1Var var_C0 = ""
  loc_AF6237: LitI4 0
  loc_AF623C: LitI4 0
  loc_AF6241: LitI2_Byte 0
  loc_AF6243: LitStr "left"
  loc_AF6246: FLdPr Me
  loc_AF6249: MemLdI2 global_100
  loc_AF624C: CI4UI1
  loc_AF624D: FLdPr Me
  loc_AF6250: MemLdStr global_84
  loc_AF6253: Ary1LdPr
  loc_AF6254: MemLdStr global_8
  loc_AF6257: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AF625C: CVarStr var_C0
  loc_AF625F: PopAdLdVar
  loc_AF6260: FLdPr Me
  loc_AF6263: MemLdRfVar from_stack_1.htmFile
  loc_AF6266: LdPrVar
  loc_AF6268: LateMemCall
  loc_AF626E: FFree1Var var_C0 = ""
  loc_AF6271: Branch loc_AF62D1
  loc_AF6274: LitI4 0
  loc_AF6279: LitI4 0
  loc_AF627E: LitI2_Byte 0
  loc_AF6280: LitStr "left"
  loc_AF6283: FLdPr Me
  loc_AF6286: MemLdI2 global_100
  loc_AF6289: CI4UI1
  loc_AF628A: FLdPr Me
  loc_AF628D: MemLdStr global_84
  loc_AF6290: Ary1LdPr
  loc_AF6291: MemLdStr global_4
  loc_AF6294: LitStr " - "
  loc_AF6297: ConcatStr
  loc_AF6298: FStStrNoPop var_B0
  loc_AF629B: FLdPr Me
  loc_AF629E: MemLdI2 global_100
  loc_AF62A1: CI4UI1
  loc_AF62A2: FLdPr Me
  loc_AF62A5: MemLdStr global_84
  loc_AF62A8: Ary1LdPr
  loc_AF62A9: MemLdStr global_8
  loc_AF62AC: ConcatStr
  loc_AF62AD: FStStrNoPop var_C4
  loc_AF62B0: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AF62B5: CVarStr var_C0
  loc_AF62B8: PopAdLdVar
  loc_AF62B9: FLdPr Me
  loc_AF62BC: MemLdRfVar from_stack_1.htmFile
  loc_AF62BF: LdPrVar
  loc_AF62C1: LateMemCall
  loc_AF62C7: FFreeStr var_B0 = ""
  loc_AF62CE: FFree1Var var_C0 = ""
  loc_AF62D1: LitI4 0
  loc_AF62D6: LitI4 0
  loc_AF62DB: LitI2_Byte 0
  loc_AF62DD: LitStr "left"
  loc_AF62E0: FLdPr Me
  loc_AF62E3: MemLdI2 global_100
  loc_AF62E6: CI4UI1
  loc_AF62E7: FLdPr Me
  loc_AF62EA: MemLdStr global_84
  loc_AF62ED: Ary1LdPr
  loc_AF62EE: MemLdStr global_12
  loc_AF62F1: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AF62F6: CVarStr var_C0
  loc_AF62F9: PopAdLdVar
  loc_AF62FA: FLdPr Me
  loc_AF62FD: MemLdRfVar from_stack_1.htmFile
  loc_AF6300: LdPrVar
  loc_AF6302: LateMemCall
  loc_AF6308: FFree1Var var_C0 = ""
  loc_AF630B: LitI4 0
  loc_AF6310: LitI4 0
  loc_AF6315: LitI2_Byte 0
  loc_AF6317: LitStr "left"
  loc_AF631A: FLdPr Me
  loc_AF631D: MemLdI2 global_100
  loc_AF6320: CI4UI1
  loc_AF6321: FLdPr Me
  loc_AF6324: MemLdStr global_84
  loc_AF6327: Ary1LdPr
  loc_AF6328: MemLdStr global_16
  loc_AF632B: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AF6330: CVarStr var_C0
  loc_AF6333: PopAdLdVar
  loc_AF6334: FLdPr Me
  loc_AF6337: MemLdRfVar from_stack_1.htmFile
  loc_AF633A: LdPrVar
  loc_AF633C: LateMemCall
  loc_AF6342: FFree1Var var_C0 = ""
  loc_AF6345: LitI4 0
  loc_AF634A: LitI4 0
  loc_AF634F: LitI2_Byte 0
  loc_AF6351: LitStr "right"
  loc_AF6354: FLdPr Me
  loc_AF6357: MemLdI2 global_100
  loc_AF635A: CI4UI1
  loc_AF635B: FLdPr Me
  loc_AF635E: MemLdStr global_84
  loc_AF6361: Ary1LdPr
  loc_AF6362: MemLdStr global_20
  loc_AF6365: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AF636A: CVarStr var_C0
  loc_AF636D: PopAdLdVar
  loc_AF636E: FLdPr Me
  loc_AF6371: MemLdRfVar from_stack_1.htmFile
  loc_AF6374: LdPrVar
  loc_AF6376: LateMemCall
  loc_AF637C: FFree1Var var_C0 = ""
  loc_AF637F: LitI4 0
  loc_AF6384: LitI4 0
  loc_AF6389: LitI2_Byte 0
  loc_AF638B: LitStr "center"
  loc_AF638E: FLdPr Me
  loc_AF6391: MemLdI2 global_100
  loc_AF6394: CI4UI1
  loc_AF6395: FLdPr Me
  loc_AF6398: MemLdStr global_84
  loc_AF639B: Ary1LdPr
  loc_AF639C: MemLdStr global_24
  loc_AF639F: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AF63A4: CVarStr var_C0
  loc_AF63A7: PopAdLdVar
  loc_AF63A8: FLdPr Me
  loc_AF63AB: MemLdRfVar from_stack_1.htmFile
  loc_AF63AE: LdPrVar
  loc_AF63B0: LateMemCall
  loc_AF63B6: FFree1Var var_C0 = ""
  loc_AF63B9: FLdPr Me
  loc_AF63BC: MemLdI2 global_108
  loc_AF63BF: BranchF loc_AF6439
  loc_AF63C2: LitI4 0
  loc_AF63C7: LitI4 0
  loc_AF63CC: LitI2_Byte 0
  loc_AF63CE: LitStr "left"
  loc_AF63D1: FLdPr Me
  loc_AF63D4: MemLdI2 global_100
  loc_AF63D7: CI4UI1
  loc_AF63D8: FLdPr Me
  loc_AF63DB: MemLdStr global_84
  loc_AF63DE: Ary1LdPr
  loc_AF63DF: MemLdStr global_28
  loc_AF63E2: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AF63E7: CVarStr var_C0
  loc_AF63EA: PopAdLdVar
  loc_AF63EB: FLdPr Me
  loc_AF63EE: MemLdRfVar from_stack_1.htmFile
  loc_AF63F1: LdPrVar
  loc_AF63F3: LateMemCall
  loc_AF63F9: FFree1Var var_C0 = ""
  loc_AF63FC: LitI4 0
  loc_AF6401: LitI4 0
  loc_AF6406: LitI2_Byte 0
  loc_AF6408: LitStr "left"
  loc_AF640B: FLdPr Me
  loc_AF640E: MemLdI2 global_100
  loc_AF6411: CI4UI1
  loc_AF6412: FLdPr Me
  loc_AF6415: MemLdStr global_84
  loc_AF6418: Ary1LdPr
  loc_AF6419: MemLdStr global_32
  loc_AF641C: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AF6421: CVarStr var_C0
  loc_AF6424: PopAdLdVar
  loc_AF6425: FLdPr Me
  loc_AF6428: MemLdRfVar from_stack_1.htmFile
  loc_AF642B: LdPrVar
  loc_AF642D: LateMemCall
  loc_AF6433: FFree1Var var_C0 = ""
  loc_AF6436: Branch loc_AF6496
  loc_AF6439: LitI4 0
  loc_AF643E: LitI4 0
  loc_AF6443: LitI2_Byte 0
  loc_AF6445: LitStr "left"
  loc_AF6448: FLdPr Me
  loc_AF644B: MemLdI2 global_100
  loc_AF644E: CI4UI1
  loc_AF644F: FLdPr Me
  loc_AF6452: MemLdStr global_84
  loc_AF6455: Ary1LdPr
  loc_AF6456: MemLdStr global_28
  loc_AF6459: LitStr " - "
  loc_AF645C: ConcatStr
  loc_AF645D: FStStrNoPop var_B0
  loc_AF6460: FLdPr Me
  loc_AF6463: MemLdI2 global_100
  loc_AF6466: CI4UI1
  loc_AF6467: FLdPr Me
  loc_AF646A: MemLdStr global_84
  loc_AF646D: Ary1LdPr
  loc_AF646E: MemLdStr global_32
  loc_AF6471: ConcatStr
  loc_AF6472: FStStrNoPop var_C4
  loc_AF6475: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AF647A: CVarStr var_C0
  loc_AF647D: PopAdLdVar
  loc_AF647E: FLdPr Me
  loc_AF6481: MemLdRfVar from_stack_1.htmFile
  loc_AF6484: LdPrVar
  loc_AF6486: LateMemCall
  loc_AF648C: FFreeStr var_B0 = ""
  loc_AF6493: FFree1Var var_C0 = ""
  loc_AF6496: LitI4 0
  loc_AF649B: LitI4 0
  loc_AF64A0: LitI2_Byte 0
  loc_AF64A2: LitStr "justify"
  loc_AF64A5: FLdPr Me
  loc_AF64A8: MemLdI2 global_100
  loc_AF64AB: CI4UI1
  loc_AF64AC: FLdPr Me
  loc_AF64AF: MemLdStr global_84
  loc_AF64B2: Ary1LdPr
  loc_AF64B3: MemLdStr global_36
  loc_AF64B6: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AF64BB: CVarStr var_C0
  loc_AF64BE: PopAdLdVar
  loc_AF64BF: FLdPr Me
  loc_AF64C2: MemLdRfVar from_stack_1.htmFile
  loc_AF64C5: LdPrVar
  loc_AF64C7: LateMemCall
  loc_AF64CD: FFree1Var var_C0 = ""
  loc_AF64D0: LitI4 0
  loc_AF64D5: LitI4 0
  loc_AF64DA: LitI2_Byte 0
  loc_AF64DC: LitStr "left"
  loc_AF64DF: FLdPr Me
  loc_AF64E2: MemLdI2 global_100
  loc_AF64E5: CI4UI1
  loc_AF64E6: FLdPr Me
  loc_AF64E9: MemLdStr global_84
  loc_AF64EC: Ary1LdPr
  loc_AF64ED: MemLdStr global_40
  loc_AF64F0: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AF64F5: CVarStr var_C0
  loc_AF64F8: PopAdLdVar
  loc_AF64F9: FLdPr Me
  loc_AF64FC: MemLdRfVar from_stack_1.htmFile
  loc_AF64FF: LdPrVar
  loc_AF6501: LateMemCall
  loc_AF6507: FFree1Var var_C0 = ""
  loc_AF650A: LitI4 0
  loc_AF650F: LitI4 0
  loc_AF6514: LitI2_Byte 0
  loc_AF6516: LitStr "right"
  loc_AF6519: FLdPr Me
  loc_AF651C: MemLdI2 global_100
  loc_AF651F: CI4UI1
  loc_AF6520: FLdPr Me
  loc_AF6523: MemLdStr global_84
  loc_AF6526: Ary1LdPr
  loc_AF6527: MemLdStr global_44
  loc_AF652A: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AF652F: CVarStr var_C0
  loc_AF6532: PopAdLdVar
  loc_AF6533: FLdPr Me
  loc_AF6536: MemLdRfVar from_stack_1.htmFile
  loc_AF6539: LdPrVar
  loc_AF653B: LateMemCall
  loc_AF6541: FFree1Var var_C0 = ""
  loc_AF6544: LitI4 0
  loc_AF6549: LitI4 0
  loc_AF654E: LitI2_Byte 0
  loc_AF6550: LitStr "center"
  loc_AF6553: FLdPr Me
  loc_AF6556: MemLdI2 global_100
  loc_AF6559: CI4UI1
  loc_AF655A: FLdPr Me
  loc_AF655D: MemLdStr global_84
  loc_AF6560: Ary1LdPr
  loc_AF6561: MemLdStr global_48
  loc_AF6564: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AF6569: CVarStr var_C0
  loc_AF656C: PopAdLdVar
  loc_AF656D: FLdPr Me
  loc_AF6570: MemLdRfVar from_stack_1.htmFile
  loc_AF6573: LdPrVar
  loc_AF6575: LateMemCall
  loc_AF657B: FFree1Var var_C0 = ""
  loc_AF657E: FLdRfVar var_C6
  loc_AF6581: FLdPr Me
  loc_AF6584: VCallAd Control_ID_chkAnulados
  loc_AF6587: FStAdFunc var_88
  loc_AF658A: FLdPr var_88
  loc_AF658D:  = Me.Value
  loc_AF6592: FLdI2 var_C6
  loc_AF6595: CI4UI1
  loc_AF6596: LitI4 1
  loc_AF659B: EqI4
  loc_AF659C: FFree1Ad var_88
  loc_AF659F: BranchF loc_AF65DC
  loc_AF65A2: LitI4 0
  loc_AF65A7: LitI4 0
  loc_AF65AC: LitI2_Byte 0
  loc_AF65AE: LitStr "center"
  loc_AF65B1: FLdPr Me
  loc_AF65B4: MemLdI2 global_100
  loc_AF65B7: CI4UI1
  loc_AF65B8: FLdPr Me
  loc_AF65BB: MemLdStr global_84
  loc_AF65BE: Ary1LdPr
  loc_AF65BF: MemLdStr htmFile
  loc_AF65C2: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AF65C7: CVarStr var_C0
  loc_AF65CA: PopAdLdVar
  loc_AF65CB: FLdPr Me
  loc_AF65CE: MemLdRfVar from_stack_1.htmFile
  loc_AF65D1: LdPrVar
  loc_AF65D3: LateMemCall
  loc_AF65D9: FFree1Var var_C0 = ""
  loc_AF65DC: LitI4 0
  loc_AF65E1: LitI4 0
  loc_AF65E6: LitI2_Byte 0
  loc_AF65E8: LitStr "right"
  loc_AF65EB: FLdPr Me
  loc_AF65EE: MemLdI2 global_100
  loc_AF65F1: CI4UI1
  loc_AF65F2: FLdPr Me
  loc_AF65F5: MemLdStr global_84
  loc_AF65F8: Ary1LdPr
  loc_AF65F9: MemLdStr global_60
  loc_AF65FC: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AF6601: CVarStr var_C0
  loc_AF6604: PopAdLdVar
  loc_AF6605: FLdPr Me
  loc_AF6608: MemLdRfVar from_stack_1.htmFile
  loc_AF660B: LdPrVar
  loc_AF660D: LateMemCall
  loc_AF6613: FFree1Var var_C0 = ""
  loc_AF6616: LitVarStr var_9C, "     </tr>"
  loc_AF661B: PopAdLdVar
  loc_AF661C: FLdPr Me
  loc_AF661F: MemLdRfVar from_stack_1.htmFile
  loc_AF6622: LdPrVar
  loc_AF6624: LateMemCall
  loc_AF662A: FLdPr Me
  loc_AF662D: MemLdRfVar from_stack_1.global_100
  loc_AF6630: NextI2 var_8C, loc_AF614B
  loc_AF6635: FLdRfVar var_C6
  loc_AF6638: FLdPr Me
  loc_AF663B: VCallAd Control_ID_chkAnulados
  loc_AF663E: FStAdFunc var_88
  loc_AF6641: FLdPr var_88
  loc_AF6644:  = Me.Value
  loc_AF6649: LitVarI2 var_E8, 7
  loc_AF664E: LitVarI2 var_C0, 8
  loc_AF6653: FLdI2 var_C6
  loc_AF6656: CI4UI1
  loc_AF6657: LitI4 1
  loc_AF665C: EqI4
  loc_AF665D: CVarBoolI2 var_9C
  loc_AF6661: FLdRfVar var_F8
  loc_AF6664: ImpAdCallFPR4  = IIf(, , )
  loc_AF6669: FLdRfVar var_F8
  loc_AF666C: CUI1Var
  loc_AF666E: FStUI1 var_C8
  loc_AF6672: FFree1Ad var_88
  loc_AF6675: FFreeVar var_9C = "": var_C0 = "": var_E8 = ""
  loc_AF6680: LitVarStr var_9C, "  <tr>"
  loc_AF6685: PopAdLdVar
  loc_AF6686: FLdPr Me
  loc_AF6689: MemLdRfVar from_stack_1.htmFile
  loc_AF668C: LdPrVar
  loc_AF668E: LateMemCall
  loc_AF6694: LitVarStr var_9C, "    <th colspan=""4"" align=""right"" class=""Normal"">Total débitos no anulados:</th>"
  loc_AF6699: PopAdLdVar
  loc_AF669A: FLdPr Me
  loc_AF669D: MemLdRfVar from_stack_1.htmFile
  loc_AF66A0: LdPrVar
  loc_AF66A2: LateMemCall
  loc_AF66A8: LitStr "    <th align=""right"" class=""Totales"">"
  loc_AF66AB: FLdPr Me
  loc_AF66AE: MemLdStr global_88
  loc_AF66B1: ConcatStr
  loc_AF66B2: FStStrNoPop var_B0
  loc_AF66B5: LitStr "</th>"
  loc_AF66B8: ConcatStr
  loc_AF66B9: CVarStr var_C0
  loc_AF66BC: PopAdLdVar
  loc_AF66BD: FLdPr Me
  loc_AF66C0: MemLdRfVar from_stack_1.htmFile
  loc_AF66C3: LdPrVar
  loc_AF66C5: LateMemCall
  loc_AF66CB: FFree1Str var_B0
  loc_AF66CE: FFree1Var var_C0 = ""
  loc_AF66D1: LitStr "    <th colspan="""
  loc_AF66D4: FLdUI1
  loc_AF66D8: CStrI2
  loc_AF66DA: FStStrNoPop var_B0
  loc_AF66DD: ConcatStr
  loc_AF66DE: FStStrNoPop var_C4
  loc_AF66E1: LitStr """>&nbsp;</th>"
  loc_AF66E4: ConcatStr
  loc_AF66E5: CVarStr var_C0
  loc_AF66E8: PopAdLdVar
  loc_AF66E9: FLdPr Me
  loc_AF66EC: MemLdRfVar from_stack_1.htmFile
  loc_AF66EF: LdPrVar
  loc_AF66F1: LateMemCall
  loc_AF66F7: FFreeStr var_B0 = ""
  loc_AF66FE: FFree1Var var_C0 = ""
  loc_AF6701: LitVarStr var_9C, "  </tr>"
  loc_AF6706: PopAdLdVar
  loc_AF6707: FLdPr Me
  loc_AF670A: MemLdRfVar from_stack_1.htmFile
  loc_AF670D: LdPrVar
  loc_AF670F: LateMemCall
  loc_AF6715: FLdRfVar var_C6
  loc_AF6718: FLdPr Me
  loc_AF671B: VCallAd Control_ID_chkAnulados
  loc_AF671E: FStAdFunc var_88
  loc_AF6721: FLdPr var_88
  loc_AF6724:  = Me.Value
  loc_AF6729: FLdI2 var_C6
  loc_AF672C: CI4UI1
  loc_AF672D: LitI4 1
  loc_AF6732: EqI4
  loc_AF6733: FFree1Ad var_88
  loc_AF6736: BranchF loc_AF6863
  loc_AF6739: LitVarStr var_9C, "  <tr>"
  loc_AF673E: PopAdLdVar
  loc_AF673F: FLdPr Me
  loc_AF6742: MemLdRfVar from_stack_1.htmFile
  loc_AF6745: LdPrVar
  loc_AF6747: LateMemCall
  loc_AF674D: LitVarStr var_9C, "    <th colspan=""4"" align=""right"" class=""Normal"">Total débitos anulados:</th>"
  loc_AF6752: PopAdLdVar
  loc_AF6753: FLdPr Me
  loc_AF6756: MemLdRfVar from_stack_1.htmFile
  loc_AF6759: LdPrVar
  loc_AF675B: LateMemCall
  loc_AF6761: LitStr "    <th align=""right"" class=""Totales"">"
  loc_AF6764: FLdPr Me
  loc_AF6767: MemLdStr global_92
  loc_AF676A: ConcatStr
  loc_AF676B: FStStrNoPop var_B0
  loc_AF676E: LitStr "</th>"
  loc_AF6771: ConcatStr
  loc_AF6772: CVarStr var_C0
  loc_AF6775: PopAdLdVar
  loc_AF6776: FLdPr Me
  loc_AF6779: MemLdRfVar from_stack_1.htmFile
  loc_AF677C: LdPrVar
  loc_AF677E: LateMemCall
  loc_AF6784: FFree1Str var_B0
  loc_AF6787: FFree1Var var_C0 = ""
  loc_AF678A: LitStr "    <th colspan="""
  loc_AF678D: FLdUI1
  loc_AF6791: CStrI2
  loc_AF6793: FStStrNoPop var_B0
  loc_AF6796: ConcatStr
  loc_AF6797: FStStrNoPop var_C4
  loc_AF679A: LitStr """>&nbsp;</th>"
  loc_AF679D: ConcatStr
  loc_AF679E: CVarStr var_C0
  loc_AF67A1: PopAdLdVar
  loc_AF67A2: FLdPr Me
  loc_AF67A5: MemLdRfVar from_stack_1.htmFile
  loc_AF67A8: LdPrVar
  loc_AF67AA: LateMemCall
  loc_AF67B0: FFreeStr var_B0 = ""
  loc_AF67B7: FFree1Var var_C0 = ""
  loc_AF67BA: LitVarStr var_9C, "  </tr>"
  loc_AF67BF: PopAdLdVar
  loc_AF67C0: FLdPr Me
  loc_AF67C3: MemLdRfVar from_stack_1.htmFile
  loc_AF67C6: LdPrVar
  loc_AF67C8: LateMemCall
  loc_AF67CE: LitVarStr var_9C, "  <tr>"
  loc_AF67D3: PopAdLdVar
  loc_AF67D4: FLdPr Me
  loc_AF67D7: MemLdRfVar from_stack_1.htmFile
  loc_AF67DA: LdPrVar
  loc_AF67DC: LateMemCall
  loc_AF67E2: LitVarStr var_9C, "    <th colspan=""4"" align=""right"" class=""Normal"">TOTAL:</th>"
  loc_AF67E7: PopAdLdVar
  loc_AF67E8: FLdPr Me
  loc_AF67EB: MemLdRfVar from_stack_1.htmFile
  loc_AF67EE: LdPrVar
  loc_AF67F0: LateMemCall
  loc_AF67F6: LitStr "    <th align=""right"" class=""Totales"">"
  loc_AF67F9: FLdPr Me
  loc_AF67FC: MemLdStr global_96
  loc_AF67FF: ConcatStr
  loc_AF6800: FStStrNoPop var_B0
  loc_AF6803: LitStr "</th>"
  loc_AF6806: ConcatStr
  loc_AF6807: CVarStr var_C0
  loc_AF680A: PopAdLdVar
  loc_AF680B: FLdPr Me
  loc_AF680E: MemLdRfVar from_stack_1.htmFile
  loc_AF6811: LdPrVar
  loc_AF6813: LateMemCall
  loc_AF6819: FFree1Str var_B0
  loc_AF681C: FFree1Var var_C0 = ""
  loc_AF681F: LitStr "    <th colspan="""
  loc_AF6822: FLdUI1
  loc_AF6826: CStrI2
  loc_AF6828: FStStrNoPop var_B0
  loc_AF682B: ConcatStr
  loc_AF682C: FStStrNoPop var_C4
  loc_AF682F: LitStr """>&nbsp;</th>"
  loc_AF6832: ConcatStr
  loc_AF6833: CVarStr var_C0
  loc_AF6836: PopAdLdVar
  loc_AF6837: FLdPr Me
  loc_AF683A: MemLdRfVar from_stack_1.htmFile
  loc_AF683D: LdPrVar
  loc_AF683F: LateMemCall
  loc_AF6845: FFreeStr var_B0 = ""
  loc_AF684C: FFree1Var var_C0 = ""
  loc_AF684F: LitVarStr var_9C, "  </tr>"
  loc_AF6854: PopAdLdVar
  loc_AF6855: FLdPr Me
  loc_AF6858: MemLdRfVar from_stack_1.htmFile
  loc_AF685B: LdPrVar
  loc_AF685D: LateMemCall
  loc_AF6863: Call Proc_191_43_9831F0()
  loc_AF6868: FLdPr Me
  loc_AF686B: MemLdRfVar from_stack_1.htmFile
  loc_AF686E: LdPrVar
  loc_AF6870: LateMemCall
  loc_AF6876: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_AF687B: ExitProcHresult
End Sub

Public Sub GeneraXLS() '96E6AC
  'Data Table: 4D360C
  loc_96E684: LitI2_Byte &HFF
  loc_96E686: FLdPr Me
  loc_96E689: MemStI2 global_108
  loc_96E68C: LitI2_Byte 0
  loc_96E68E: FLdPr Me
  loc_96E691: MemStI2 bLogos
  loc_96E694: Call GeneraHTML()
  loc_96E699: LitI2_Byte &HFF
  loc_96E69B: FLdPr Me
  loc_96E69E: MemStI2 bLogos
  loc_96E6A1: LitI2_Byte 0
  loc_96E6A3: FLdPr Me
  loc_96E6A6: MemStI2 global_108
  loc_96E6A9: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'B7EA9C
  'Data Table: 4D360C
  loc_B7DDBC: LitStr vbNullString
  loc_B7DDBF: FLdPr Me
  loc_B7DDC2: MemStStrCopy
  loc_B7DDC6: LitI2_Byte 0
  loc_B7DDC8: PopTmpLdAd2 var_AA
  loc_B7DDCB: from_stack_2v = mskDesde_UnknownEvent_8(from_stack_1v)
  loc_B7DDD0: FLdPr Me
  loc_B7DDD3: MemLdStr global_104
  loc_B7DDD6: LitStr vbNullString
  loc_B7DDD9: NeStr
  loc_B7DDDB: BranchF loc_B7DDE1
  loc_B7DDDE: Branch loc_B7EA0F
  loc_B7DDE1: LitI2_Byte 0
  loc_B7DDE3: PopTmpLdAd2 var_AA
  loc_B7DDE6: from_stack_2v = mskHasta_UnknownEvent_8(from_stack_1v)
  loc_B7DDEB: FLdPr Me
  loc_B7DDEE: MemLdStr global_104
  loc_B7DDF1: LitStr vbNullString
  loc_B7DDF4: NeStr
  loc_B7DDF6: BranchF loc_B7DDFC
  loc_B7DDF9: Branch loc_B7EA0F
  loc_B7DDFC: OnErrorGoto loc_B7EA38
  loc_B7DDFF: FLdPr Me
  loc_B7DE02: MemLdI2 bGenerado
  loc_B7DE05: BranchF loc_B7DE09
  loc_B7DE08: ExitProcHresult
  loc_B7DE09: LitVarStr var_BC, "Generando reporte..."
  loc_B7DE0E: PopAdLdVar
  loc_B7DE0F: FLdPr Me
  loc_B7DE12: VCallAd Control_ID_statusBar
  loc_B7DE15: FStAdFunc var_D0
  loc_B7DE18: FLdPr var_D0
  loc_B7DE1B: LateIdSt
  loc_B7DE20: FFree1Ad var_D0
  loc_B7DE23: LitI4 &HB
  loc_B7DE28: CI2I4
  loc_B7DE29: FLdPr Me
  loc_B7DE2C: Me.MousePointer = from_stack_1
  loc_B7DE31: FLdRfVar var_D4
  loc_B7DE34: FLdPr Me
  loc_B7DE37: VCallAd Control_ID_txtNumeDebi
  loc_B7DE3A: FStAdFunc var_D0
  loc_B7DE3D: FLdPr var_D0
  loc_B7DE40:  = Me.Text
  loc_B7DE45: ILdRf var_D4
  loc_B7DE48: LitStr vbNullString
  loc_B7DE4B: NeStr
  loc_B7DE4D: FFree1Str var_D4
  loc_B7DE50: FFree1Ad var_D0
  loc_B7DE53: BranchF loc_B7DE88
  loc_B7DE56: LitStr " AND NumeDebi = '"
  loc_B7DE59: FLdRfVar var_D4
  loc_B7DE5C: FLdPr Me
  loc_B7DE5F: VCallAd Control_ID_txtNumeDebi
  loc_B7DE62: FStAdFunc var_D0
  loc_B7DE65: FLdPr var_D0
  loc_B7DE68:  = Me.Text
  loc_B7DE6D: ILdRf var_D4
  loc_B7DE70: ConcatStr
  loc_B7DE71: FStStrNoPop var_D8
  loc_B7DE74: LitStr "'"
  loc_B7DE77: ConcatStr
  loc_B7DE78: FStStr var_88
  loc_B7DE7B: FFreeStr var_D4 = ""
  loc_B7DE82: FFree1Ad var_D0
  loc_B7DE85: Branch loc_B7DE8E
  loc_B7DE88: LitStr vbNullString
  loc_B7DE8B: FStStrCopy var_88
  loc_B7DE8E: FLdPr Me
  loc_B7DE91: VCallAd Control_ID_CodiCucoMsk
  loc_B7DE94: FStAdFunc var_D0
  loc_B7DE97: FLdPr var_D0
  loc_B7DE9A: LateIdLdVar var_E8 DispID_20 0
  loc_B7DEA1: CStrVarTmp
  loc_B7DEA2: FStStrNoPop var_D4
  loc_B7DEA5: LitStr vbNullString
  loc_B7DEA8: NeStr
  loc_B7DEAA: FFree1Str var_D4
  loc_B7DEAD: FFree1Ad var_D0
  loc_B7DEB0: FFree1Var var_E8 = ""
  loc_B7DEB3: BranchF loc_B7DEEB
  loc_B7DEB6: LitStr " AND debito.CodiCuco LIKE '"
  loc_B7DEB9: FLdPr Me
  loc_B7DEBC: VCallAd Control_ID_CodiCucoMsk
  loc_B7DEBF: FStAdFunc var_D0
  loc_B7DEC2: FLdPr var_D0
  loc_B7DEC5: LateIdLdVar var_E8 DispID_20 0
  loc_B7DECC: CStrVarTmp
  loc_B7DECD: FStStrNoPop var_D4
  loc_B7DED0: ConcatStr
  loc_B7DED1: FStStrNoPop var_D8
  loc_B7DED4: LitStr Chr(37) & "'"
  loc_B7DED7: ConcatStr
  loc_B7DED8: FStStr var_8C
  loc_B7DEDB: FFreeStr var_D4 = ""
  loc_B7DEE2: FFree1Ad var_D0
  loc_B7DEE5: FFree1Var var_E8 = ""
  loc_B7DEE8: Branch loc_B7DEF1
  loc_B7DEEB: LitStr vbNullString
  loc_B7DEEE: FStStrCopy var_8C
  loc_B7DEF1: FLdRfVar var_D4
  loc_B7DEF4: FLdPr Me
  loc_B7DEF7: VCallAd Control_ID_CboExorImpu
  loc_B7DEFA: FStAdFunc var_D0
  loc_B7DEFD: FLdPr var_D0
  loc_B7DF00:  = Me.Text
  loc_B7DF05: ILdRf var_D4
  loc_B7DF08: LitStr vbNullString
  loc_B7DF0B: NeStr
  loc_B7DF0D: FFree1Str var_D4
  loc_B7DF10: FFree1Ad var_D0
  loc_B7DF13: BranchF loc_B7DF48
  loc_B7DF16: LitStr " AND debito.ExorImpu LIKE '"
  loc_B7DF19: FLdRfVar var_D4
  loc_B7DF1C: FLdPr Me
  loc_B7DF1F: VCallAd Control_ID_CboExorImpu
  loc_B7DF22: FStAdFunc var_D0
  loc_B7DF25: FLdPr var_D0
  loc_B7DF28:  = Me.Text
  loc_B7DF2D: ILdRf var_D4
  loc_B7DF30: ConcatStr
  loc_B7DF31: FStStrNoPop var_D8
  loc_B7DF34: LitStr Chr(37) & "'"
  loc_B7DF37: ConcatStr
  loc_B7DF38: FStStr var_90
  loc_B7DF3B: FFreeStr var_D4 = ""
  loc_B7DF42: FFree1Ad var_D0
  loc_B7DF45: Branch loc_B7DF4E
  loc_B7DF48: LitStr vbNullString
  loc_B7DF4B: FStStrCopy var_90
  loc_B7DF4E: FLdRfVar var_D4
  loc_B7DF51: FLdPr Me
  loc_B7DF54: VCallAd Control_ID_cboExpeImpu
  loc_B7DF57: FStAdFunc var_D0
  loc_B7DF5A: FLdPr var_D0
  loc_B7DF5D:  = Me.Text
  loc_B7DF62: ILdRf var_D4
  loc_B7DF65: LitStr vbNullString
  loc_B7DF68: NeStr
  loc_B7DF6A: FFree1Str var_D4
  loc_B7DF6D: FFree1Ad var_D0
  loc_B7DF70: BranchF loc_B7DFA5
  loc_B7DF73: LitStr " AND debito.ExpeImpu LIKE '"
  loc_B7DF76: FLdRfVar var_D4
  loc_B7DF79: FLdPr Me
  loc_B7DF7C: VCallAd Control_ID_cboExpeImpu
  loc_B7DF7F: FStAdFunc var_D0
  loc_B7DF82: FLdPr var_D0
  loc_B7DF85:  = Me.Text
  loc_B7DF8A: ILdRf var_D4
  loc_B7DF8D: ConcatStr
  loc_B7DF8E: FStStrNoPop var_D8
  loc_B7DF91: LitStr Chr(37) & "'"
  loc_B7DF94: ConcatStr
  loc_B7DF95: FStStr var_94
  loc_B7DF98: FFreeStr var_D4 = ""
  loc_B7DF9F: FFree1Ad var_D0
  loc_B7DFA2: Branch loc_B7DFAB
  loc_B7DFA5: LitStr vbNullString
  loc_B7DFA8: FStStrCopy var_94
  loc_B7DFAB: FLdRfVar var_D4
  loc_B7DFAE: FLdPr Me
  loc_B7DFB1: VCallAd Control_ID_CucuPersTxt
  loc_B7DFB4: FStAdFunc var_D0
  loc_B7DFB7: FLdPr var_D0
  loc_B7DFBA:  = Me.Text
  loc_B7DFBF: ILdRf var_D4
  loc_B7DFC2: LitStr vbNullString
  loc_B7DFC5: NeStr
  loc_B7DFC7: FFree1Str var_D4
  loc_B7DFCA: FFree1Ad var_D0
  loc_B7DFCD: BranchF loc_B7E002
  loc_B7DFD0: LitStr " AND debito.CucuPers = '"
  loc_B7DFD3: FLdRfVar var_D4
  loc_B7DFD6: FLdPr Me
  loc_B7DFD9: VCallAd Control_ID_CucuPersTxt
  loc_B7DFDC: FStAdFunc var_D0
  loc_B7DFDF: FLdPr var_D0
  loc_B7DFE2:  = Me.Text
  loc_B7DFE7: ILdRf var_D4
  loc_B7DFEA: ConcatStr
  loc_B7DFEB: FStStrNoPop var_D8
  loc_B7DFEE: LitStr "'"
  loc_B7DFF1: ConcatStr
  loc_B7DFF2: FStStr var_98
  loc_B7DFF5: FFreeStr var_D4 = ""
  loc_B7DFFC: FFree1Ad var_D0
  loc_B7DFFF: Branch loc_B7E008
  loc_B7E002: LitStr vbNullString
  loc_B7E005: FStStrCopy var_98
  loc_B7E008: FLdRfVar var_AA
  loc_B7E00B: FLdPr Me
  loc_B7E00E: VCallAd Control_ID_chkAnulados
  loc_B7E011: FStAdFunc var_D0
  loc_B7E014: FLdPr var_D0
  loc_B7E017:  = Me.Value
  loc_B7E01C: FLdI2 var_AA
  loc_B7E01F: CI4UI1
  loc_B7E020: LitI4 1
  loc_B7E025: NeI4
  loc_B7E026: FFree1Ad var_D0
  loc_B7E029: BranchF loc_B7E035
  loc_B7E02C: LitStr " AND FeanDebi IS NULL"
  loc_B7E02F: FStStrCopy var_9C
  loc_B7E032: Branch loc_B7E03B
  loc_B7E035: LitStr vbNullString
  loc_B7E038: FStStrCopy var_9C
  loc_B7E03B: FLdPr Me
  loc_B7E03E: VCallAd Control_ID_mskDesde
  loc_B7E041: FStAdFunc var_D0
  loc_B7E044: FLdPr var_D0
  loc_B7E047: LateIdLdVar var_E8 DispID_20 0
  loc_B7E04E: CStrVarTmp
  loc_B7E04F: FStStrNoPop var_D4
  loc_B7E052: LitStr vbNullString
  loc_B7E055: NeStr
  loc_B7E057: FFree1Str var_D4
  loc_B7E05A: FFree1Ad var_D0
  loc_B7E05D: FFree1Var var_E8 = ""
  loc_B7E060: BranchF loc_B7E0B2
  loc_B7E063: FLdPr Me
  loc_B7E066: VCallAd Control_ID_mskDesde
  loc_B7E069: FStAdFunc var_D0
  loc_B7E06C: FLdPr var_D0
  loc_B7E06F: LateIdLdVar var_E8 DispID_15 0
  loc_B7E076: PopAd
  loc_B7E078: LitStr " AND FechDebi >= "
  loc_B7E07B: LitI4 1
  loc_B7E080: LitI4 1
  loc_B7E085: LitVarStr var_BC, "'yyyy-mm-dd'"
  loc_B7E08A: FStVarCopyObj var_108
  loc_B7E08D: FLdRfVar var_108
  loc_B7E090: FLdRfVar var_E8
  loc_B7E093: CStrVarTmp
  loc_B7E094: CVarStr var_F8
  loc_B7E097: ImpAdCallI2 Format$(, )
  loc_B7E09C: FStStrNoPop var_D4
  loc_B7E09F: ConcatStr
  loc_B7E0A0: FStStr var_A0
  loc_B7E0A3: FFree1Str var_D4
  loc_B7E0A6: FFree1Ad var_D0
  loc_B7E0A9: FFreeVar var_E8 = "": var_F8 = ""
  loc_B7E0B2: FLdPr Me
  loc_B7E0B5: VCallAd Control_ID_mskHasta
  loc_B7E0B8: FStAdFunc var_D0
  loc_B7E0BB: FLdPr var_D0
  loc_B7E0BE: LateIdLdVar var_E8 DispID_20 0
  loc_B7E0C5: CStrVarTmp
  loc_B7E0C6: FStStrNoPop var_D4
  loc_B7E0C9: LitStr vbNullString
  loc_B7E0CC: NeStr
  loc_B7E0CE: FFree1Str var_D4
  loc_B7E0D1: FFree1Ad var_D0
  loc_B7E0D4: FFree1Var var_E8 = ""
  loc_B7E0D7: BranchF loc_B7E129
  loc_B7E0DA: FLdPr Me
  loc_B7E0DD: VCallAd Control_ID_mskHasta
  loc_B7E0E0: FStAdFunc var_D0
  loc_B7E0E3: FLdPr var_D0
  loc_B7E0E6: LateIdLdVar var_E8 DispID_15 0
  loc_B7E0ED: PopAd
  loc_B7E0EF: LitStr " AND FechDebi <= "
  loc_B7E0F2: LitI4 1
  loc_B7E0F7: LitI4 1
  loc_B7E0FC: LitVarStr var_BC, "'yyyy-mm-dd'"
  loc_B7E101: FStVarCopyObj var_108
  loc_B7E104: FLdRfVar var_108
  loc_B7E107: FLdRfVar var_E8
  loc_B7E10A: CStrVarTmp
  loc_B7E10B: CVarStr var_F8
  loc_B7E10E: ImpAdCallI2 Format$(, )
  loc_B7E113: FStStrNoPop var_D4
  loc_B7E116: ConcatStr
  loc_B7E117: FStStr var_A4
  loc_B7E11A: FFree1Str var_D4
  loc_B7E11D: FFree1Ad var_D0
  loc_B7E120: FFreeVar var_E8 = "": var_F8 = ""
  loc_B7E129: FLdRfVar var_AA
  loc_B7E12C: FLdPr Me
  loc_B7E12F: VCallAd Control_ID_chkOrdenarCuenta
  loc_B7E132: FStAdFunc var_D0
  loc_B7E135: FLdPr var_D0
  loc_B7E138:  = Me.Value
  loc_B7E13D: LitVarStr var_118, " ORDER BY debito.CodiCuco"
  loc_B7E142: FStVarCopyObj var_F8
  loc_B7E145: FLdRfVar var_F8
  loc_B7E148: LitVarStr var_CC, " ORDER BY debito.NumeDebi"
  loc_B7E14D: FStVarCopyObj var_E8
  loc_B7E150: FLdRfVar var_E8
  loc_B7E153: FLdI2 var_AA
  loc_B7E156: CI4UI1
  loc_B7E157: LitI4 0
  loc_B7E15C: EqI4
  loc_B7E15D: CVarBoolI2 var_BC
  loc_B7E161: FLdRfVar var_108
  loc_B7E164: ImpAdCallFPR4  = IIf(, , )
  loc_B7E169: FLdRfVar var_108
  loc_B7E16C: CStrVarTmp
  loc_B7E16D: FStStr var_A8
  loc_B7E170: FFree1Ad var_D0
  loc_B7E173: FFreeVar var_BC = "": var_E8 = "": var_F8 = ""
  loc_B7E17E: LitStr "SELECT debito.*, DetaCuco, DetaProv,"
  loc_B7E181: LitStr " (SELECT Convert(IFNULL(Group_concat(Distinct op.NumeOrpa),'0'),char) FROM liquidadeta lqd INNER JOIN ordenpago op ON op.PeriInfo = lqd.PeriInfo AND op.ExpeImpu = lqd.ExpeImpu AND op.NumeLiqu = lqd.NumeLiqu WHERE lqd.PeriInfo = debito.PeriInfo AND lqd.NumeDebi = debito.NumeDebi ORDER BY NumeOrpa) opNumeOrpa,"
  loc_B7E184: ConcatStr
  loc_B7E185: FStStrNoPop var_D4
  loc_B7E188: LitStr " (SELECT IFNULL(Group_concat(Distinct Date_format(FearOrpa,'" & Chr(37) & "d/" & Chr(37) & "m" & Chr(37) & "/" & Chr(37) & "Y')),'') FROM liquidadeta lqd INNER JOIN ordenpago op ON op.PeriInfo = lqd.PeriInfo AND op.ExpeImpu = lqd.ExpeImpu AND op.NumeLiqu = lqd.NumeLiqu WHERE lqd.PeriInfo = debito.PeriInfo AND lqd.NumeDebi = debito.NumeDebi ORDER BY NumeOrpa) FearOrpa"
  loc_B7E18B: ConcatStr
  loc_B7E18C: FStStrNoPop var_D8
  loc_B7E18F: LitStr " FROM debito"
  loc_B7E192: ConcatStr
  loc_B7E193: FStStrNoPop var_11C
  loc_B7E196: LitStr " INNER JOIN proveedor ON proveedor.CucuPers = debito.CucuPers"
  loc_B7E199: ConcatStr
  loc_B7E19A: FStStrNoPop var_120
  loc_B7E19D: LitStr " INNER JOIN infogov.cuentacontable cc ON cc.PeriInfo = debito.PeriInfo AND cc.CodiCuco = debito.CodiCuco"
  loc_B7E1A0: ConcatStr
  loc_B7E1A1: FStStrNoPop var_124
  loc_B7E1A4: LitStr " WHERE debito.PeriInfo = "
  loc_B7E1A7: ConcatStr
  loc_B7E1A8: FStStrNoPop var_12C
  loc_B7E1AB: FLdRfVar var_128
  loc_B7E1AE: FLdPr Me
  loc_B7E1B1: VCallAd Control_ID_cboPeriodo
  loc_B7E1B4: FStAdFunc var_D0
  loc_B7E1B7: FLdPr var_D0
  loc_B7E1BA:  = Me.Text
  loc_B7E1BF: ILdRf var_128
  loc_B7E1C2: ConcatStr
  loc_B7E1C3: FStStrNoPop var_130
  loc_B7E1C6: ILdRf var_88
  loc_B7E1C9: ConcatStr
  loc_B7E1CA: FStStrNoPop var_134
  loc_B7E1CD: ILdRf var_8C
  loc_B7E1D0: ConcatStr
  loc_B7E1D1: FStStrNoPop var_138
  loc_B7E1D4: ILdRf var_90
  loc_B7E1D7: ConcatStr
  loc_B7E1D8: FStStrNoPop var_13C
  loc_B7E1DB: ILdRf var_94
  loc_B7E1DE: ConcatStr
  loc_B7E1DF: FStStrNoPop var_140
  loc_B7E1E2: ILdRf var_98
  loc_B7E1E5: ConcatStr
  loc_B7E1E6: FStStrNoPop var_144
  loc_B7E1E9: ILdRf var_9C
  loc_B7E1EC: ConcatStr
  loc_B7E1ED: FStStrNoPop var_148
  loc_B7E1F0: ILdRf var_A0
  loc_B7E1F3: ConcatStr
  loc_B7E1F4: FStStrNoPop var_14C
  loc_B7E1F7: ILdRf var_A4
  loc_B7E1FA: ConcatStr
  loc_B7E1FB: FStStrNoPop var_150
  loc_B7E1FE: ILdRf var_A8
  loc_B7E201: ConcatStr
  loc_B7E202: FStStrNoPop var_154
  loc_B7E205: FLdPr Me
  loc_B7E208: MemLdRfVar from_stack_1.global_76
  loc_B7E20B: NewIfNullPr clsbase
  loc_B7E20E: Call clsbase.RedefineRS(from_stack_1v)
  loc_B7E213: FFreeStr var_D4 = "": var_D8 = "": var_11C = "": var_120 = "": var_124 = "": var_12C = "": var_128 = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = ""
  loc_B7E238: FFree1Ad var_D0
  loc_B7E23B: FLdRfVar var_158
  loc_B7E23E: FLdPr Me
  loc_B7E241: MemLdRfVar from_stack_1.global_76
  loc_B7E244: NewIfNullPr clsbase
  loc_B7E247: from_stack_1 = clsbase.RecordCount
  loc_B7E24C: ILdRf var_158
  loc_B7E24F: LitI4 0
  loc_B7E254: EqI4
  loc_B7E255: BranchF loc_B7E268
  loc_B7E258: LitI4 0
  loc_B7E25D: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_B7E260: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B7E265: Branch loc_B7EA0F
  loc_B7E268: FLdPr Me
  loc_B7E26B: MemLdRfVar from_stack_1.global_76
  loc_B7E26E: NewIfNullAd
  loc_B7E271: FStAd var_15C 
  loc_B7E275: LitI4 0
  loc_B7E27A: FLdRfVar var_158
  loc_B7E27D: FLdPr var_15C
  loc_B7E280: from_stack_1 = clsbase.RecordCount
  loc_B7E285: ILdRf var_158
  loc_B7E288: FLdPr Me
  loc_B7E28B: MemLdRfVar from_stack_1.global_84
  loc_B7E28E: Redim
  loc_B7E298: LitStr "0,00"
  loc_B7E29B: FLdPr Me
  loc_B7E29E: MemStStrCopy
  loc_B7E2A2: LitStr "0,00"
  loc_B7E2A5: FLdPr Me
  loc_B7E2A8: MemStStrCopy
  loc_B7E2AC: FLdPr var_15C
  loc_B7E2AF: Call clsbase.MoveFirst()
  loc_B7E2B4: LitI2_Byte 1
  loc_B7E2B6: FLdPr Me
  loc_B7E2B9: MemLdRfVar from_stack_1.global_100
  loc_B7E2BC: FLdPr Me
  loc_B7E2BF: MemLdStr global_84
  loc_B7E2C2: LitI2_Byte 1
  loc_B7E2C4: FnUBound
  loc_B7E2C6: CI2I4
  loc_B7E2C7: ForI2 var_160
  loc_B7E2CD: FLdRfVar var_168
  loc_B7E2D0: LitVarStr var_BC, "FeanDebi"
  loc_B7E2D5: PopAdLdVar
  loc_B7E2D6: FLdRfVar var_164
  loc_B7E2D9: FLdRfVar var_D0
  loc_B7E2DC: FLdPr var_15C
  loc_B7E2DF: from_stack_1v = clsbase.RsFrmGet()
  loc_B7E2E4: FLdPr var_D0
  loc_B7E2E7:  = Me.Fields
  loc_B7E2EC: FLdPr var_164
  loc_B7E2EF: from_stack_2 = Me.Item(from_stack_1)
  loc_B7E2F4: FLdZeroAd var_168
  loc_B7E2F7: CVarAd
  loc_B7E2FB: ImpAdCallI2 IsNull()
  loc_B7E300: NotI4
  loc_B7E301: FLdPr Me
  loc_B7E304: MemLdI2 global_100
  loc_B7E307: CI4UI1
  loc_B7E308: FLdPr Me
  loc_B7E30B: MemLdStr global_84
  loc_B7E30E: Ary1LdPr
  loc_B7E30F: MemStI2 global_56
  loc_B7E312: FFreeAd var_D0 = ""
  loc_B7E319: FFree1Var var_E8 = ""
  loc_B7E31C: FLdRfVar var_168
  loc_B7E31F: LitVarStr var_BC, "FeanDebi"
  loc_B7E324: PopAdLdVar
  loc_B7E325: FLdRfVar var_164
  loc_B7E328: FLdRfVar var_D0
  loc_B7E32B: FLdPr var_15C
  loc_B7E32E: from_stack_1v = clsbase.RsFrmGet()
  loc_B7E333: FLdPr var_D0
  loc_B7E336:  = Me.Fields
  loc_B7E33B: FLdPr var_164
  loc_B7E33E: from_stack_2 = Me.Item(from_stack_1)
  loc_B7E343: LitI2_Byte 0
  loc_B7E345: LitVar_Missing var_F8
  loc_B7E348: LitI2_Byte 0
  loc_B7E34A: FLdZeroAd var_168
  loc_B7E34D: CVarAd
  loc_B7E351: PopAdLdVar
  loc_B7E352: FLdPr Me
  loc_B7E355: MemLdI2 global_100
  loc_B7E358: CI4UI1
  loc_B7E359: FLdPr Me
  loc_B7E35C: MemLdStr global_84
  loc_B7E35F: AryLock
  loc_B7E362: Ary1LdPr
  loc_B7E363: MemLdRfVar from_stack_1.htmFile
  loc_B7E366: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B7E36B: AryUnlock
  loc_B7E36E: FFreeAd var_D0 = ""
  loc_B7E375: FFreeVar var_E8 = ""
  loc_B7E37C: FLdRfVar var_168
  loc_B7E37F: LitVarStr var_BC, "NumeDebi"
  loc_B7E384: PopAdLdVar
  loc_B7E385: FLdRfVar var_164
  loc_B7E388: FLdRfVar var_D0
  loc_B7E38B: FLdPr var_15C
  loc_B7E38E: from_stack_1v = clsbase.RsFrmGet()
  loc_B7E393: FLdPr var_D0
  loc_B7E396:  = Me.Fields
  loc_B7E39B: FLdPr var_164
  loc_B7E39E: from_stack_2 = Me.Item(from_stack_1)
  loc_B7E3A3: LitI2_Byte 0
  loc_B7E3A5: LitVar_Missing var_F8
  loc_B7E3A8: LitI2_Byte 0
  loc_B7E3AA: FLdZeroAd var_168
  loc_B7E3AD: CVarAd
  loc_B7E3B1: PopAdLdVar
  loc_B7E3B2: FLdPr Me
  loc_B7E3B5: MemLdI2 global_100
  loc_B7E3B8: CI4UI1
  loc_B7E3B9: FLdPr Me
  loc_B7E3BC: MemLdStr global_84
  loc_B7E3BF: AryLock
  loc_B7E3C2: Ary1LdPr
  loc_B7E3C3: MemLdRfVar from_stack_1.global_0
  loc_B7E3C6: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B7E3CB: AryUnlock
  loc_B7E3CE: FFreeAd var_D0 = ""
  loc_B7E3D5: FFreeVar var_E8 = ""
  loc_B7E3DC: FLdRfVar var_168
  loc_B7E3DF: LitVarStr var_BC, "CodiCuco"
  loc_B7E3E4: PopAdLdVar
  loc_B7E3E5: FLdRfVar var_164
  loc_B7E3E8: FLdRfVar var_D0
  loc_B7E3EB: FLdPr var_15C
  loc_B7E3EE: from_stack_1v = clsbase.RsFrmGet()
  loc_B7E3F3: FLdPr var_D0
  loc_B7E3F6:  = Me.Fields
  loc_B7E3FB: FLdPr var_164
  loc_B7E3FE: from_stack_2 = Me.Item(from_stack_1)
  loc_B7E403: LitI2_Byte 0
  loc_B7E405: LitVar_Missing var_F8
  loc_B7E408: LitI2_Byte 0
  loc_B7E40A: FLdZeroAd var_168
  loc_B7E40D: CVarAd
  loc_B7E411: PopAdLdVar
  loc_B7E412: FLdPr Me
  loc_B7E415: MemLdI2 global_100
  loc_B7E418: CI4UI1
  loc_B7E419: FLdPr Me
  loc_B7E41C: MemLdStr global_84
  loc_B7E41F: AryLock
  loc_B7E422: Ary1LdPr
  loc_B7E423: MemLdRfVar from_stack_1.global_4
  loc_B7E426: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B7E42B: AryUnlock
  loc_B7E42E: FFreeAd var_D0 = ""
  loc_B7E435: FFreeVar var_E8 = ""
  loc_B7E43C: FLdRfVar var_168
  loc_B7E43F: LitVarStr var_BC, "DetaCuco"
  loc_B7E444: PopAdLdVar
  loc_B7E445: FLdRfVar var_164
  loc_B7E448: FLdRfVar var_D0
  loc_B7E44B: FLdPr var_15C
  loc_B7E44E: from_stack_1v = clsbase.RsFrmGet()
  loc_B7E453: FLdPr var_D0
  loc_B7E456:  = Me.Fields
  loc_B7E45B: FLdPr var_164
  loc_B7E45E: from_stack_2 = Me.Item(from_stack_1)
  loc_B7E463: LitI2_Byte 0
  loc_B7E465: LitVar_Missing var_F8
  loc_B7E468: LitI2_Byte 0
  loc_B7E46A: FLdZeroAd var_168
  loc_B7E46D: CVarAd
  loc_B7E471: PopAdLdVar
  loc_B7E472: FLdPr Me
  loc_B7E475: MemLdI2 global_100
  loc_B7E478: CI4UI1
  loc_B7E479: FLdPr Me
  loc_B7E47C: MemLdStr global_84
  loc_B7E47F: AryLock
  loc_B7E482: Ary1LdPr
  loc_B7E483: MemLdRfVar from_stack_1.global_8
  loc_B7E486: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B7E48B: AryUnlock
  loc_B7E48E: FFreeAd var_D0 = ""
  loc_B7E495: FFreeVar var_E8 = ""
  loc_B7E49C: FLdRfVar var_168
  loc_B7E49F: LitVarStr var_BC, "ExorImpu"
  loc_B7E4A4: PopAdLdVar
  loc_B7E4A5: FLdRfVar var_164
  loc_B7E4A8: FLdRfVar var_D0
  loc_B7E4AB: FLdPr var_15C
  loc_B7E4AE: from_stack_1v = clsbase.RsFrmGet()
  loc_B7E4B3: FLdPr var_D0
  loc_B7E4B6:  = Me.Fields
  loc_B7E4BB: FLdPr var_164
  loc_B7E4BE: from_stack_2 = Me.Item(from_stack_1)
  loc_B7E4C3: LitI2_Byte 0
  loc_B7E4C5: LitVar_Missing var_F8
  loc_B7E4C8: LitI2_Byte 0
  loc_B7E4CA: FLdZeroAd var_168
  loc_B7E4CD: CVarAd
  loc_B7E4D1: PopAdLdVar
  loc_B7E4D2: FLdPr Me
  loc_B7E4D5: MemLdI2 global_100
  loc_B7E4D8: CI4UI1
  loc_B7E4D9: FLdPr Me
  loc_B7E4DC: MemLdStr global_84
  loc_B7E4DF: AryLock
  loc_B7E4E2: Ary1LdPr
  loc_B7E4E3: MemLdRfVar from_stack_1.global_12
  loc_B7E4E6: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B7E4EB: AryUnlock
  loc_B7E4EE: FFreeAd var_D0 = ""
  loc_B7E4F5: FFreeVar var_E8 = ""
  loc_B7E4FC: FLdRfVar var_168
  loc_B7E4FF: LitVarStr var_BC, "ExpeImpu"
  loc_B7E504: PopAdLdVar
  loc_B7E505: FLdRfVar var_164
  loc_B7E508: FLdRfVar var_D0
  loc_B7E50B: FLdPr var_15C
  loc_B7E50E: from_stack_1v = clsbase.RsFrmGet()
  loc_B7E513: FLdPr var_D0
  loc_B7E516:  = Me.Fields
  loc_B7E51B: FLdPr var_164
  loc_B7E51E: from_stack_2 = Me.Item(from_stack_1)
  loc_B7E523: LitI2_Byte 0
  loc_B7E525: LitVar_Missing var_F8
  loc_B7E528: LitI2_Byte 0
  loc_B7E52A: FLdZeroAd var_168
  loc_B7E52D: CVarAd
  loc_B7E531: PopAdLdVar
  loc_B7E532: FLdPr Me
  loc_B7E535: MemLdI2 global_100
  loc_B7E538: CI4UI1
  loc_B7E539: FLdPr Me
  loc_B7E53C: MemLdStr global_84
  loc_B7E53F: AryLock
  loc_B7E542: Ary1LdPr
  loc_B7E543: MemLdRfVar from_stack_1.global_16
  loc_B7E546: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B7E54B: AryUnlock
  loc_B7E54E: FFreeAd var_D0 = ""
  loc_B7E555: FFreeVar var_E8 = ""
  loc_B7E55C: FLdPr Me
  loc_B7E55F: MemLdI2 global_100
  loc_B7E562: CI4UI1
  loc_B7E563: FLdPr Me
  loc_B7E566: MemLdStr global_84
  loc_B7E569: Ary1LdPr
  loc_B7E56A: MemLdI2 global_56
  loc_B7E56D: BranchF loc_B7E5D7
  loc_B7E570: FLdRfVar var_168
  loc_B7E573: LitVarStr var_BC, "ImpoDebi"
  loc_B7E578: PopAdLdVar
  loc_B7E579: FLdRfVar var_164
  loc_B7E57C: FLdRfVar var_D0
  loc_B7E57F: FLdPr var_15C
  loc_B7E582: from_stack_1v = clsbase.RsFrmGet()
  loc_B7E587: FLdPr var_D0
  loc_B7E58A:  = Me.Fields
  loc_B7E58F: FLdPr var_164
  loc_B7E592: from_stack_2 = Me.Item(from_stack_1)
  loc_B7E597: LitI2_Byte 0
  loc_B7E599: FLdPr Me
  loc_B7E59C: MemLdRfVar from_stack_1.global_92
  loc_B7E59F: CVarRef
  loc_B7E5A4: LitI2_Byte &HFF
  loc_B7E5A6: FLdZeroAd var_168
  loc_B7E5A9: CVarAd
  loc_B7E5AD: PopAdLdVar
  loc_B7E5AE: FLdPr Me
  loc_B7E5B1: MemLdI2 global_100
  loc_B7E5B4: CI4UI1
  loc_B7E5B5: FLdPr Me
  loc_B7E5B8: MemLdStr global_84
  loc_B7E5BB: AryLock
  loc_B7E5BE: Ary1LdPr
  loc_B7E5BF: MemLdRfVar from_stack_1.global_20
  loc_B7E5C2: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B7E5C7: AryUnlock
  loc_B7E5CA: FFreeAd var_D0 = ""
  loc_B7E5D1: FFree1Var var_E8 = ""
  loc_B7E5D4: Branch loc_B7E63B
  loc_B7E5D7: FLdRfVar var_168
  loc_B7E5DA: LitVarStr var_BC, "ImpoDebi"
  loc_B7E5DF: PopAdLdVar
  loc_B7E5E0: FLdRfVar var_164
  loc_B7E5E3: FLdRfVar var_D0
  loc_B7E5E6: FLdPr var_15C
  loc_B7E5E9: from_stack_1v = clsbase.RsFrmGet()
  loc_B7E5EE: FLdPr var_D0
  loc_B7E5F1:  = Me.Fields
  loc_B7E5F6: FLdPr var_164
  loc_B7E5F9: from_stack_2 = Me.Item(from_stack_1)
  loc_B7E5FE: LitI2_Byte 0
  loc_B7E600: FLdPr Me
  loc_B7E603: MemLdRfVar from_stack_1.global_88
  loc_B7E606: CVarRef
  loc_B7E60B: LitI2_Byte &HFF
  loc_B7E60D: FLdZeroAd var_168
  loc_B7E610: CVarAd
  loc_B7E614: PopAdLdVar
  loc_B7E615: FLdPr Me
  loc_B7E618: MemLdI2 global_100
  loc_B7E61B: CI4UI1
  loc_B7E61C: FLdPr Me
  loc_B7E61F: MemLdStr global_84
  loc_B7E622: AryLock
  loc_B7E625: Ary1LdPr
  loc_B7E626: MemLdRfVar from_stack_1.global_20
  loc_B7E629: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B7E62E: AryUnlock
  loc_B7E631: FFreeAd var_D0 = ""
  loc_B7E638: FFree1Var var_E8 = ""
  loc_B7E63B: FLdRfVar var_168
  loc_B7E63E: LitVarStr var_BC, "FechDebi"
  loc_B7E643: PopAdLdVar
  loc_B7E644: FLdRfVar var_164
  loc_B7E647: FLdRfVar var_D0
  loc_B7E64A: FLdPr var_15C
  loc_B7E64D: from_stack_1v = clsbase.RsFrmGet()
  loc_B7E652: FLdPr var_D0
  loc_B7E655:  = Me.Fields
  loc_B7E65A: FLdPr var_164
  loc_B7E65D: from_stack_2 = Me.Item(from_stack_1)
  loc_B7E662: LitI2_Byte 0
  loc_B7E664: LitVar_Missing var_F8
  loc_B7E667: LitI2_Byte 0
  loc_B7E669: FLdZeroAd var_168
  loc_B7E66C: CVarAd
  loc_B7E670: PopAdLdVar
  loc_B7E671: FLdPr Me
  loc_B7E674: MemLdI2 global_100
  loc_B7E677: CI4UI1
  loc_B7E678: FLdPr Me
  loc_B7E67B: MemLdStr global_84
  loc_B7E67E: AryLock
  loc_B7E681: Ary1LdPr
  loc_B7E682: MemLdRfVar from_stack_1.global_24
  loc_B7E685: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B7E68A: AryUnlock
  loc_B7E68D: FFreeAd var_D0 = ""
  loc_B7E694: FFreeVar var_E8 = ""
  loc_B7E69B: FLdRfVar var_168
  loc_B7E69E: LitVarStr var_BC, "CucuPers"
  loc_B7E6A3: PopAdLdVar
  loc_B7E6A4: FLdRfVar var_164
  loc_B7E6A7: FLdRfVar var_D0
  loc_B7E6AA: FLdPr var_15C
  loc_B7E6AD: from_stack_1v = clsbase.RsFrmGet()
  loc_B7E6B2: FLdPr var_D0
  loc_B7E6B5:  = Me.Fields
  loc_B7E6BA: FLdPr var_164
  loc_B7E6BD: from_stack_2 = Me.Item(from_stack_1)
  loc_B7E6C2: LitI2_Byte 0
  loc_B7E6C4: LitVar_Missing var_F8
  loc_B7E6C7: LitI2_Byte 0
  loc_B7E6C9: FLdZeroAd var_168
  loc_B7E6CC: CVarAd
  loc_B7E6D0: PopAdLdVar
  loc_B7E6D1: FLdPr Me
  loc_B7E6D4: MemLdI2 global_100
  loc_B7E6D7: CI4UI1
  loc_B7E6D8: FLdPr Me
  loc_B7E6DB: MemLdStr global_84
  loc_B7E6DE: AryLock
  loc_B7E6E1: Ary1LdPr
  loc_B7E6E2: MemLdRfVar from_stack_1.global_28
  loc_B7E6E5: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B7E6EA: AryUnlock
  loc_B7E6ED: FFreeAd var_D0 = ""
  loc_B7E6F4: FFreeVar var_E8 = ""
  loc_B7E6FB: FLdRfVar var_168
  loc_B7E6FE: LitVarStr var_BC, "DetaProv"
  loc_B7E703: PopAdLdVar
  loc_B7E704: FLdRfVar var_164
  loc_B7E707: FLdRfVar var_D0
  loc_B7E70A: FLdPr var_15C
  loc_B7E70D: from_stack_1v = clsbase.RsFrmGet()
  loc_B7E712: FLdPr var_D0
  loc_B7E715:  = Me.Fields
  loc_B7E71A: FLdPr var_164
  loc_B7E71D: from_stack_2 = Me.Item(from_stack_1)
  loc_B7E722: LitI2_Byte 0
  loc_B7E724: LitVar_Missing var_F8
  loc_B7E727: LitI2_Byte 0
  loc_B7E729: FLdZeroAd var_168
  loc_B7E72C: CVarAd
  loc_B7E730: PopAdLdVar
  loc_B7E731: FLdPr Me
  loc_B7E734: MemLdI2 global_100
  loc_B7E737: CI4UI1
  loc_B7E738: FLdPr Me
  loc_B7E73B: MemLdStr global_84
  loc_B7E73E: AryLock
  loc_B7E741: Ary1LdPr
  loc_B7E742: MemLdRfVar from_stack_1.global_32
  loc_B7E745: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B7E74A: AryUnlock
  loc_B7E74D: FFreeAd var_D0 = ""
  loc_B7E754: FFreeVar var_E8 = ""
  loc_B7E75B: FLdRfVar var_168
  loc_B7E75E: LitVarStr var_BC, "DetaDebi"
  loc_B7E763: PopAdLdVar
  loc_B7E764: FLdRfVar var_164
  loc_B7E767: FLdRfVar var_D0
  loc_B7E76A: FLdPr var_15C
  loc_B7E76D: from_stack_1v = clsbase.RsFrmGet()
  loc_B7E772: FLdPr var_D0
  loc_B7E775:  = Me.Fields
  loc_B7E77A: FLdPr var_164
  loc_B7E77D: from_stack_2 = Me.Item(from_stack_1)
  loc_B7E782: LitI2_Byte 0
  loc_B7E784: LitVar_Missing var_F8
  loc_B7E787: LitI2_Byte 0
  loc_B7E789: FLdZeroAd var_168
  loc_B7E78C: CVarAd
  loc_B7E790: PopAdLdVar
  loc_B7E791: FLdPr Me
  loc_B7E794: MemLdI2 global_100
  loc_B7E797: CI4UI1
  loc_B7E798: FLdPr Me
  loc_B7E79B: MemLdStr global_84
  loc_B7E79E: AryLock
  loc_B7E7A1: Ary1LdPr
  loc_B7E7A2: MemLdRfVar from_stack_1.global_36
  loc_B7E7A5: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B7E7AA: AryUnlock
  loc_B7E7AD: FFreeAd var_D0 = ""
  loc_B7E7B4: FFreeVar var_E8 = ""
  loc_B7E7BB: FLdRfVar var_168
  loc_B7E7BE: LitVarStr var_BC, "NumeFact"
  loc_B7E7C3: PopAdLdVar
  loc_B7E7C4: FLdRfVar var_164
  loc_B7E7C7: FLdRfVar var_D0
  loc_B7E7CA: FLdPr var_15C
  loc_B7E7CD: from_stack_1v = clsbase.RsFrmGet()
  loc_B7E7D2: FLdPr var_D0
  loc_B7E7D5:  = Me.Fields
  loc_B7E7DA: FLdPr var_164
  loc_B7E7DD: from_stack_2 = Me.Item(from_stack_1)
  loc_B7E7E2: LitI2_Byte 0
  loc_B7E7E4: LitVar_Missing var_F8
  loc_B7E7E7: LitI2_Byte 0
  loc_B7E7E9: FLdZeroAd var_168
  loc_B7E7EC: CVarAd
  loc_B7E7F0: PopAdLdVar
  loc_B7E7F1: FLdPr Me
  loc_B7E7F4: MemLdI2 global_100
  loc_B7E7F7: CI4UI1
  loc_B7E7F8: FLdPr Me
  loc_B7E7FB: MemLdStr global_84
  loc_B7E7FE: AryLock
  loc_B7E801: Ary1LdPr
  loc_B7E802: MemLdRfVar from_stack_1.global_40
  loc_B7E805: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B7E80A: AryUnlock
  loc_B7E80D: FFreeAd var_D0 = ""
  loc_B7E814: FFreeVar var_E8 = ""
  loc_B7E81B: FLdRfVar var_E8
  loc_B7E81E: FLdRfVar var_168
  loc_B7E821: LitVarStr var_BC, "opNumeOrpa"
  loc_B7E826: PopAdLdVar
  loc_B7E827: FLdRfVar var_164
  loc_B7E82A: FLdRfVar var_D0
  loc_B7E82D: FLdPr var_15C
  loc_B7E830: from_stack_1v = clsbase.RsFrmGet()
  loc_B7E835: FLdPr var_D0
  loc_B7E838:  = Me.Fields
  loc_B7E83D: FLdPr var_164
  loc_B7E840: from_stack_2 = Me.Item(from_stack_1)
  loc_B7E845: FLdPr var_168
  loc_B7E848:  = Me.Value
  loc_B7E84D: LitI4 0
  loc_B7E852: LitI4 -1
  loc_B7E857: LitI4 1
  loc_B7E85C: LitStr "<br>"
  loc_B7E85F: LitStr ","
  loc_B7E862: FLdRfVar var_E8
  loc_B7E865: CStrVarTmp
  loc_B7E866: FStStrNoPop var_D4
  loc_B7E869: ImpAdCallI2 Replace(, , , , , )
  loc_B7E86E: FStStr var_D8
  loc_B7E871: LitI2_Byte 0
  loc_B7E873: LitVar_Missing var_108
  loc_B7E876: LitI2_Byte 0
  loc_B7E878: FLdZeroAd var_D8
  loc_B7E87B: CVarStr var_F8
  loc_B7E87E: PopAdLdVar
  loc_B7E87F: FLdPr Me
  loc_B7E882: MemLdI2 global_100
  loc_B7E885: CI4UI1
  loc_B7E886: FLdPr Me
  loc_B7E889: MemLdStr global_84
  loc_B7E88C: AryLock
  loc_B7E88F: Ary1LdPr
  loc_B7E890: MemLdRfVar from_stack_1.global_44
  loc_B7E893: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B7E898: AryUnlock
  loc_B7E89B: FFreeStr var_D4 = ""
  loc_B7E8A2: FFreeAd var_D0 = "": var_164 = ""
  loc_B7E8AB: FFreeVar var_E8 = "": var_F8 = ""
  loc_B7E8B4: FLdRfVar var_E8
  loc_B7E8B7: FLdRfVar var_168
  loc_B7E8BA: LitVarStr var_BC, "FearOrpa"
  loc_B7E8BF: PopAdLdVar
  loc_B7E8C0: FLdRfVar var_164
  loc_B7E8C3: FLdRfVar var_D0
  loc_B7E8C6: FLdPr var_15C
  loc_B7E8C9: from_stack_1v = clsbase.RsFrmGet()
  loc_B7E8CE: FLdPr var_D0
  loc_B7E8D1:  = Me.Fields
  loc_B7E8D6: FLdPr var_164
  loc_B7E8D9: from_stack_2 = Me.Item(from_stack_1)
  loc_B7E8DE: FLdPr var_168
  loc_B7E8E1:  = Me.Value
  loc_B7E8E6: LitI4 0
  loc_B7E8EB: LitI4 -1
  loc_B7E8F0: LitI4 1
  loc_B7E8F5: LitStr "<br>"
  loc_B7E8F8: LitStr ","
  loc_B7E8FB: FLdRfVar var_E8
  loc_B7E8FE: CStrVarTmp
  loc_B7E8FF: FStStrNoPop var_D4
  loc_B7E902: ImpAdCallI2 Replace(, , , , , )
  loc_B7E907: FStStr var_D8
  loc_B7E90A: LitI2_Byte 0
  loc_B7E90C: LitVar_Missing var_108
  loc_B7E90F: LitI2_Byte 0
  loc_B7E911: FLdZeroAd var_D8
  loc_B7E914: CVarStr var_F8
  loc_B7E917: PopAdLdVar
  loc_B7E918: FLdPr Me
  loc_B7E91B: MemLdI2 global_100
  loc_B7E91E: CI4UI1
  loc_B7E91F: FLdPr Me
  loc_B7E922: MemLdStr global_84
  loc_B7E925: AryLock
  loc_B7E928: Ary1LdPr
  loc_B7E929: MemLdRfVar from_stack_1.global_48
  loc_B7E92C: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B7E931: AryUnlock
  loc_B7E934: FFreeStr var_D4 = ""
  loc_B7E93B: FFreeAd var_D0 = "": var_164 = ""
  loc_B7E944: FFreeVar var_E8 = "": var_F8 = ""
  loc_B7E94D: FLdRfVar var_168
  loc_B7E950: LitVarStr var_BC, "NumeOrpa"
  loc_B7E955: PopAdLdVar
  loc_B7E956: FLdRfVar var_164
  loc_B7E959: FLdRfVar var_D0
  loc_B7E95C: FLdPr var_15C
  loc_B7E95F: from_stack_1v = clsbase.RsFrmGet()
  loc_B7E964: FLdPr var_D0
  loc_B7E967:  = Me.Fields
  loc_B7E96C: FLdPr var_164
  loc_B7E96F: from_stack_2 = Me.Item(from_stack_1)
  loc_B7E974: LitI2_Byte 0
  loc_B7E976: LitVar_Missing var_F8
  loc_B7E979: LitI2_Byte 0
  loc_B7E97B: FLdZeroAd var_168
  loc_B7E97E: CVarAd
  loc_B7E982: PopAdLdVar
  loc_B7E983: FLdPr Me
  loc_B7E986: MemLdI2 global_100
  loc_B7E989: CI4UI1
  loc_B7E98A: FLdPr Me
  loc_B7E98D: MemLdStr global_84
  loc_B7E990: AryLock
  loc_B7E993: Ary1LdPr
  loc_B7E994: MemLdRfVar from_stack_1.global_60
  loc_B7E997: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B7E99C: AryUnlock
  loc_B7E99F: FFreeAd var_D0 = ""
  loc_B7E9A6: FFreeVar var_E8 = ""
  loc_B7E9AD: FLdPr var_15C
  loc_B7E9B0: Call clsbase.MoveSiguiente()
  loc_B7E9B5: FLdPr Me
  loc_B7E9B8: MemLdRfVar from_stack_1.global_100
  loc_B7E9BB: NextI2 var_160, loc_B7E2CD
  loc_B7E9C0: LitNothing
  loc_B7E9C2: FStAd var_15C 
  loc_B7E9C6: LitI4 2
  loc_B7E9CB: FLdPr Me
  loc_B7E9CE: MemLdStr global_88
  loc_B7E9D1: CR8Str
  loc_B7E9D3: FLdPr Me
  loc_B7E9D6: MemLdStr global_92
  loc_B7E9D9: CR8Str
  loc_B7E9DB: AddR8
  loc_B7E9DC: CVarR8
  loc_B7E9E0: FLdRfVar var_F8
  loc_B7E9E3: ImpAdCallFPR4  = Round(, )
  loc_B7E9E8: LitI2_Byte 0
  loc_B7E9EA: LitVar_Missing var_108
  loc_B7E9ED: LitI2_Byte &HFF
  loc_B7E9EF: FLdVar var_F8
  loc_B7E9F3: FLdPr Me
  loc_B7E9F6: MemLdRfVar from_stack_1.global_96
  loc_B7E9F9: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B7E9FE: FFreeVar var_E8 = "": var_F8 = ""
  loc_B7EA07: LitI2_Byte &HFF
  loc_B7EA09: FLdPr Me
  loc_B7EA0C: MemStI2 bGenerado
  loc_B7EA0F: LitI4 0
  loc_B7EA14: CI2I4
  loc_B7EA15: FLdPr Me
  loc_B7EA18: Me.MousePointer = from_stack_1
  loc_B7EA1D: LitVarStr var_BC, vbNullString
  loc_B7EA22: PopAdLdVar
  loc_B7EA23: FLdPr Me
  loc_B7EA26: VCallAd Control_ID_statusBar
  loc_B7EA29: FStAdFunc var_D0
  loc_B7EA2C: FLdPr var_D0
  loc_B7EA2F: LateIdSt
  loc_B7EA34: FFree1Ad var_D0
  loc_B7EA37: ExitProcHresult
  loc_B7EA38: LitI4 0
  loc_B7EA3D: LitStr "Error "
  loc_B7EA40: FLdRfVar var_158
  loc_B7EA43: ImpAdCallI2 Err 'rtcErrObj
  loc_B7EA48: FStAdFunc var_D0
  loc_B7EA4B: FLdPr var_D0
  loc_B7EA4E:  = Err.Number
  loc_B7EA53: ILdRf var_158
  loc_B7EA56: CStrI4
  loc_B7EA58: FStStrNoPop var_D4
  loc_B7EA5B: ConcatStr
  loc_B7EA5C: FStStrNoPop var_D8
  loc_B7EA5F: LitStr ": "
  loc_B7EA62: ConcatStr
  loc_B7EA63: FStStrNoPop var_120
  loc_B7EA66: FLdRfVar var_11C
  loc_B7EA69: ImpAdCallI2 Err 'rtcErrObj
  loc_B7EA6E: FStAdFunc var_164
  loc_B7EA71: FLdPr var_164
  loc_B7EA74:  = Err.Description
  loc_B7EA79: ILdRf var_11C
  loc_B7EA7C: ConcatStr
  loc_B7EA7D: FStStrNoPop var_124
  loc_B7EA80: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B7EA85: FFreeStr var_D4 = "": var_D8 = "": var_120 = "": var_11C = ""
  loc_B7EA92: FFreeAd var_D0 = ""
  loc_B7EA99: ExitProcHresult
  loc_B7EA9A: ExitProcHresult
End Sub

Public Sub HabilitarCriterio() '9F0EE8
  'Data Table: 4D360C
  loc_9F0DE4: LitI4 0
  loc_9F0DE9: LitI4 &HD
  loc_9F0DEE: FLdRfVar var_88
  loc_9F0DF1: Redim
  loc_9F0DFB: FLdPr Me
  loc_9F0DFE: VCallAd Control_ID_cboPeriodo
  loc_9F0E01: CVarAd
  loc_9F0E05: ParmAry1St
  loc_9F0E0B: FLdPr Me
  loc_9F0E0E: VCallAd Control_ID_txtNumeDebi
  loc_9F0E11: CVarAd
  loc_9F0E15: ParmAry1St
  loc_9F0E1B: FLdPr Me
  loc_9F0E1E: VCallAd Control_ID_CodiCucoMsk
  loc_9F0E21: CVarAd
  loc_9F0E25: ParmAry1St
  loc_9F0E2B: FLdPr Me
  loc_9F0E2E: VCallAd Control_ID_CodiCucoCmd
  loc_9F0E31: CVarAd
  loc_9F0E35: ParmAry1St
  loc_9F0E3B: FLdPr Me
  loc_9F0E3E: VCallAd Control_ID_CboExorImpu
  loc_9F0E41: CVarAd
  loc_9F0E45: ParmAry1St
  loc_9F0E4B: FLdPr Me
  loc_9F0E4E: VCallAd Control_ID_cboExpeImpu
  loc_9F0E51: CVarAd
  loc_9F0E55: ParmAry1St
  loc_9F0E5B: FLdPr Me
  loc_9F0E5E: VCallAd Control_ID_CucuPersTxt
  loc_9F0E61: CVarAd
  loc_9F0E65: ParmAry1St
  loc_9F0E6B: FLdPr Me
  loc_9F0E6E: VCallAd Control_ID_CucuPersCmd
  loc_9F0E71: CVarAd
  loc_9F0E75: ParmAry1St
  loc_9F0E7B: FLdPr Me
  loc_9F0E7E: VCallAd Control_ID_chkAnulados
  loc_9F0E81: CVarAd
  loc_9F0E85: ParmAry1St
  loc_9F0E8B: FLdPr Me
  loc_9F0E8E: VCallAd Control_ID_mskDesde
  loc_9F0E91: CVarAd
  loc_9F0E95: ParmAry1St
  loc_9F0E9B: FLdPr Me
  loc_9F0E9E: VCallAd Control_ID_cmdCalDesde
  loc_9F0EA1: CVarAd
  loc_9F0EA5: ParmAry1St
  loc_9F0EAB: FLdPr Me
  loc_9F0EAE: VCallAd Control_ID_mskHasta
  loc_9F0EB1: CVarAd
  loc_9F0EB5: ParmAry1St
  loc_9F0EBB: FLdPr Me
  loc_9F0EBE: VCallAd Control_ID_cmdCalHasta
  loc_9F0EC1: CVarAd
  loc_9F0EC5: ParmAry1St
  loc_9F0ECB: FLdPr Me
  loc_9F0ECE: VCallAd Control_ID_chkOrdenarCuenta
  loc_9F0ED1: CVarAd
  loc_9F0ED5: ParmAry1St
  loc_9F0EDB: FLdRfVar var_88
  loc_9F0EDE: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9F0EE3: FLdRfVar var_88
  loc_9F0EE6: Erase
  loc_9F0EE7: ExitProcHresult
End Sub

Private Function Proc_191_40_A2406C() 'A2406C
  'Data Table: 4D360C
  loc_A23EDC: FLdPr Me
  loc_A23EDF: MemLdRfVar from_stack_1.global_76
  loc_A23EE2: NewIfNullAd
  loc_A23EE5: FStAd var_88 
  loc_A23EE9: FLdRfVar var_9E
  loc_A23EEC: FLdPr Me
  loc_A23EEF: VCallAd Control_ID_chkAnulados
  loc_A23EF2: FStAdFunc var_9C
  loc_A23EF5: FLdPr var_9C
  loc_A23EF8:  = Me.Value
  loc_A23EFD: LitStr "SELECT DISTINCT ExpeImpu"
  loc_A23F00: LitStr " FROM debito"
  loc_A23F03: ConcatStr
  loc_A23F04: FStStrNoPop var_8C
  loc_A23F07: LitStr " WHERE PeriInfo = "
  loc_A23F0A: ConcatStr
  loc_A23F0B: FStStrNoPop var_98
  loc_A23F0E: FLdRfVar var_94
  loc_A23F11: FLdPr Me
  loc_A23F14: VCallAd Control_ID_cboPeriodo
  loc_A23F17: FStAdFunc var_90
  loc_A23F1A: FLdPr var_90
  loc_A23F1D:  = Me.Text
  loc_A23F22: ILdRf var_94
  loc_A23F25: ConcatStr
  loc_A23F26: CVarStr var_110
  loc_A23F29: LitVarStr var_E0, vbNullString
  loc_A23F2E: FStVarCopyObj var_F0
  loc_A23F31: FLdRfVar var_F0
  loc_A23F34: LitVarStr var_C0, " AND FeanDebi IS NULL"
  loc_A23F39: FStVarCopyObj var_D0
  loc_A23F3C: FLdRfVar var_D0
  loc_A23F3F: FLdI2 var_9E
  loc_A23F42: CI4UI1
  loc_A23F43: LitI4 1
  loc_A23F48: EqI4
  loc_A23F49: CVarBoolI2 var_B0
  loc_A23F4D: FLdRfVar var_100
  loc_A23F50: ImpAdCallFPR4  = IIf(, , )
  loc_A23F55: FLdRfVar var_100
  loc_A23F58: ConcatVar var_120
  loc_A23F5C: LitVarStr var_130, " ORDER BY ExpeImpu"
  loc_A23F61: ConcatVar var_140
  loc_A23F65: CStrVarVal var_144
  loc_A23F69: FLdPr var_88
  loc_A23F6C: Call clsbase.RedefineRS(from_stack_1v)
  loc_A23F71: FFreeStr var_8C = "": var_98 = "": var_94 = ""
  loc_A23F7C: FFreeAd var_90 = ""
  loc_A23F83: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_100 = "": var_120 = ""
  loc_A23F94: FLdPr Me
  loc_A23F97: VCallAd Control_ID_cboExpeImpu
  loc_A23F9A: FStAdFunc var_90
  loc_A23F9D: FLdPr var_90
  loc_A23FA0: Me.Clear
  loc_A23FA5: FFree1Ad var_90
  loc_A23FA8: FLdRfVar var_148
  loc_A23FAB: FLdPr var_88
  loc_A23FAE: from_stack_1 = clsbase.RecordCount
  loc_A23FB3: ILdRf var_148
  loc_A23FB6: LitI4 0
  loc_A23FBB: GtI4
  loc_A23FBC: BranchF loc_A24063
  loc_A23FBF: FLdPr var_88
  loc_A23FC2: Call clsbase.MoveFirst()
  loc_A23FC7: LitVar_Missing var_B0
  loc_A23FCA: PopAdLdVar
  loc_A23FCB: LitStr vbNullString
  loc_A23FCE: FLdPr Me
  loc_A23FD1: VCallAd Control_ID_cboExpeImpu
  loc_A23FD4: FStAdFunc var_90
  loc_A23FD7: FLdPr var_90
  loc_A23FDA: Me.AddItem from_stack_1, from_stack_2
  loc_A23FDF: FFree1Ad var_90
  loc_A23FE2: FLdRfVar var_9E
  loc_A23FE5: FLdPr var_88
  loc_A23FE8: from_stack_1 = clsbase.EOF
  loc_A23FED: FLdI2 var_9E
  loc_A23FF0: NotI4
  loc_A23FF1: BranchF loc_A24063
  loc_A23FF4: LitVar_Missing var_C0
  loc_A23FF7: PopAdLdVar
  loc_A23FF8: FLdRfVar var_D0
  loc_A23FFB: FLdRfVar var_14C
  loc_A23FFE: LitVarStr var_B0, "ExpeImpu"
  loc_A24003: PopAdLdVar
  loc_A24004: FLdRfVar var_9C
  loc_A24007: FLdRfVar var_90
  loc_A2400A: FLdPr var_88
  loc_A2400D: from_stack_1v = clsbase.RsFrmGet()
  loc_A24012: FLdPr var_90
  loc_A24015:  = Me.Fields
  loc_A2401A: FLdPr var_9C
  loc_A2401D: from_stack_2 = Me.Item(from_stack_1)
  loc_A24022: FLdPr var_14C
  loc_A24025:  = Me.Value
  loc_A2402A: FLdRfVar var_D0
  loc_A2402D: CStrVarTmp
  loc_A2402E: FStStrNoPop var_8C
  loc_A24031: FLdPr Me
  loc_A24034: VCallAd Control_ID_cboExpeImpu
  loc_A24037: FStAdFunc var_150
  loc_A2403A: FLdPr var_150
  loc_A2403D: Me.AddItem from_stack_1, from_stack_2
  loc_A24042: FFree1Str var_8C
  loc_A24045: FFreeAd var_90 = "": var_9C = "": var_14C = ""
  loc_A24050: FFree1Var var_D0 = ""
  loc_A24053: LitI2_Byte 1
  loc_A24055: PopTmpLdAd2 var_9E
  loc_A24058: FLdPr var_88
  loc_A2405B: Call clsbase.Move(from_stack_1v)
  loc_A24060: Branch loc_A23FE2
  loc_A24063: LitNothing
  loc_A24065: FStAd var_88 
  loc_A24069: ExitProcHresult
End Function

Private Function Proc_191_41_A24464() 'A24464
  'Data Table: 4D360C
  loc_A242D4: FLdPr Me
  loc_A242D7: MemLdRfVar from_stack_1.global_76
  loc_A242DA: NewIfNullAd
  loc_A242DD: FStAd var_88 
  loc_A242E1: FLdRfVar var_9E
  loc_A242E4: FLdPr Me
  loc_A242E7: VCallAd Control_ID_chkAnulados
  loc_A242EA: FStAdFunc var_9C
  loc_A242ED: FLdPr var_9C
  loc_A242F0:  = Me.Value
  loc_A242F5: LitStr "SELECT DISTINCT ExorImpu"
  loc_A242F8: LitStr " FROM debito"
  loc_A242FB: ConcatStr
  loc_A242FC: FStStrNoPop var_8C
  loc_A242FF: LitStr " WHERE PeriInfo = "
  loc_A24302: ConcatStr
  loc_A24303: FStStrNoPop var_98
  loc_A24306: FLdRfVar var_94
  loc_A24309: FLdPr Me
  loc_A2430C: VCallAd Control_ID_cboPeriodo
  loc_A2430F: FStAdFunc var_90
  loc_A24312: FLdPr var_90
  loc_A24315:  = Me.Text
  loc_A2431A: ILdRf var_94
  loc_A2431D: ConcatStr
  loc_A2431E: CVarStr var_110
  loc_A24321: LitVarStr var_E0, vbNullString
  loc_A24326: FStVarCopyObj var_F0
  loc_A24329: FLdRfVar var_F0
  loc_A2432C: LitVarStr var_C0, " AND FeanDebi IS NULL"
  loc_A24331: FStVarCopyObj var_D0
  loc_A24334: FLdRfVar var_D0
  loc_A24337: FLdI2 var_9E
  loc_A2433A: CI4UI1
  loc_A2433B: LitI4 1
  loc_A24340: EqI4
  loc_A24341: CVarBoolI2 var_B0
  loc_A24345: FLdRfVar var_100
  loc_A24348: ImpAdCallFPR4  = IIf(, , )
  loc_A2434D: FLdRfVar var_100
  loc_A24350: ConcatVar var_120
  loc_A24354: LitVarStr var_130, " ORDER BY ExorImpu"
  loc_A24359: ConcatVar var_140
  loc_A2435D: CStrVarVal var_144
  loc_A24361: FLdPr var_88
  loc_A24364: Call clsbase.RedefineRS(from_stack_1v)
  loc_A24369: FFreeStr var_8C = "": var_98 = "": var_94 = ""
  loc_A24374: FFreeAd var_90 = ""
  loc_A2437B: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_100 = "": var_120 = ""
  loc_A2438C: FLdPr Me
  loc_A2438F: VCallAd Control_ID_CboExorImpu
  loc_A24392: FStAdFunc var_90
  loc_A24395: FLdPr var_90
  loc_A24398: Me.Clear
  loc_A2439D: FFree1Ad var_90
  loc_A243A0: FLdRfVar var_148
  loc_A243A3: FLdPr var_88
  loc_A243A6: from_stack_1 = clsbase.RecordCount
  loc_A243AB: ILdRf var_148
  loc_A243AE: LitI4 0
  loc_A243B3: GtI4
  loc_A243B4: BranchF loc_A2445B
  loc_A243B7: FLdPr var_88
  loc_A243BA: Call clsbase.MoveFirst()
  loc_A243BF: LitVar_Missing var_B0
  loc_A243C2: PopAdLdVar
  loc_A243C3: LitStr vbNullString
  loc_A243C6: FLdPr Me
  loc_A243C9: VCallAd Control_ID_CboExorImpu
  loc_A243CC: FStAdFunc var_90
  loc_A243CF: FLdPr var_90
  loc_A243D2: Me.AddItem from_stack_1, from_stack_2
  loc_A243D7: FFree1Ad var_90
  loc_A243DA: FLdRfVar var_9E
  loc_A243DD: FLdPr var_88
  loc_A243E0: from_stack_1 = clsbase.EOF
  loc_A243E5: FLdI2 var_9E
  loc_A243E8: NotI4
  loc_A243E9: BranchF loc_A2445B
  loc_A243EC: LitVar_Missing var_C0
  loc_A243EF: PopAdLdVar
  loc_A243F0: FLdRfVar var_D0
  loc_A243F3: FLdRfVar var_14C
  loc_A243F6: LitVarStr var_B0, "ExorImpu"
  loc_A243FB: PopAdLdVar
  loc_A243FC: FLdRfVar var_9C
  loc_A243FF: FLdRfVar var_90
  loc_A24402: FLdPr var_88
  loc_A24405: from_stack_1v = clsbase.RsFrmGet()
  loc_A2440A: FLdPr var_90
  loc_A2440D:  = Me.Fields
  loc_A24412: FLdPr var_9C
  loc_A24415: from_stack_2 = Me.Item(from_stack_1)
  loc_A2441A: FLdPr var_14C
  loc_A2441D:  = Me.Value
  loc_A24422: FLdRfVar var_D0
  loc_A24425: CStrVarTmp
  loc_A24426: FStStrNoPop var_8C
  loc_A24429: FLdPr Me
  loc_A2442C: VCallAd Control_ID_CboExorImpu
  loc_A2442F: FStAdFunc var_150
  loc_A24432: FLdPr var_150
  loc_A24435: Me.AddItem from_stack_1, from_stack_2
  loc_A2443A: FFree1Str var_8C
  loc_A2443D: FFreeAd var_90 = "": var_9C = "": var_14C = ""
  loc_A24448: FFree1Var var_D0 = ""
  loc_A2444B: LitI2_Byte 1
  loc_A2444D: PopTmpLdAd2 var_9E
  loc_A24450: FLdPr var_88
  loc_A24453: Call clsbase.Move(from_stack_1v)
  loc_A24458: Branch loc_A243DA
  loc_A2445B: LitNothing
  loc_A2445D: FStAd var_88 
  loc_A24461: ExitProcHresult
End Function

Private Function Proc_191_42_B18B78() 'B18B78
  'Data Table: 4D360C
  loc_B182DC: LitVarStr var_94, "<html>"
  loc_B182E1: PopAdLdVar
  loc_B182E2: FLdPr Me
  loc_B182E5: MemLdRfVar from_stack_1.htmFile
  loc_B182E8: LdPrVar
  loc_B182EA: LateMemCall
  loc_B182F0: LitVarStr var_94, "<head>"
  loc_B182F5: PopAdLdVar
  loc_B182F6: FLdPr Me
  loc_B182F9: MemLdRfVar from_stack_1.htmFile
  loc_B182FC: LdPrVar
  loc_B182FE: LateMemCall
  loc_B18304: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_B18309: PopAdLdVar
  loc_B1830A: FLdPr Me
  loc_B1830D: MemLdRfVar from_stack_1.htmFile
  loc_B18310: LdPrVar
  loc_B18312: LateMemCall
  loc_B18318: LitStr "<title>"
  loc_B1831B: FLdRfVar var_A8
  loc_B1831E: FLdPr Me
  loc_B18321:  = Me.Caption
  loc_B18326: ILdRf var_A8
  loc_B18329: ConcatStr
  loc_B1832A: FStStrNoPop var_AC
  loc_B1832D: LitStr "</title>"
  loc_B18330: ConcatStr
  loc_B18331: CVarStr var_BC
  loc_B18334: PopAdLdVar
  loc_B18335: FLdPr Me
  loc_B18338: MemLdRfVar from_stack_1.htmFile
  loc_B1833B: LdPrVar
  loc_B1833D: LateMemCall
  loc_B18343: FFreeStr var_A8 = ""
  loc_B1834A: FFree1Var var_BC = ""
  loc_B1834D: LitStr vbNullString
  loc_B18350: ILdRf Me
  loc_B18353: CastAd
  loc_B18356: FStAdFunc var_C0
  loc_B18359: FLdRfVar var_C0
  loc_B1835C: ImpAdCallFPR4 Proc_263_23_B3DAB8(, )
  loc_B18361: FFree1Ad var_C0
  loc_B18364: LitI4 0
  loc_B18369: FStStrCopy var_AC
  loc_B1836C: FLdRfVar var_AC
  loc_B1836F: LitI4 0
  loc_B18374: FStStrCopy var_A8
  loc_B18377: FLdRfVar var_A8
  loc_B1837A: LitI2_Byte &HFF
  loc_B1837C: PopTmpLdAd2 var_C2
  loc_B1837F: FLdPr Me
  loc_B18382: MemLdRfVar from_stack_1.htmFile
  loc_B18385: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_B1838A: FFreeStr var_A8 = ""
  loc_B18391: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_B18396: PopAdLdVar
  loc_B18397: FLdPr Me
  loc_B1839A: MemLdRfVar from_stack_1.htmFile
  loc_B1839D: LdPrVar
  loc_B1839F: LateMemCall
  loc_B183A5: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_B183AA: PopAdLdVar
  loc_B183AB: FLdPr Me
  loc_B183AE: MemLdRfVar from_stack_1.htmFile
  loc_B183B1: LdPrVar
  loc_B183B3: LateMemCall
  loc_B183B9: LitVarStr var_94, "    <th colspan=""3"" width=""100" & Chr(37) & """ align=""center"" valign=""bottom""><p>"
  loc_B183BE: PopAdLdVar
  loc_B183BF: FLdPr Me
  loc_B183C2: MemLdRfVar from_stack_1.htmFile
  loc_B183C5: LdPrVar
  loc_B183C7: LateMemCall
  loc_B183CD: FLdPr Me
  loc_B183D0: MemLdI2 bLogos
  loc_B183D3: BranchF loc_B183EA
  loc_B183D6: LitVarStr var_94, "    <img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right"">"
  loc_B183DB: PopAdLdVar
  loc_B183DC: FLdPr Me
  loc_B183DF: MemLdRfVar from_stack_1.htmFile
  loc_B183E2: LdPrVar
  loc_B183E4: LateMemCall
  loc_B183EA: LitVarStr var_A4, "    <br><br>"
  loc_B183EF: LitVarStr var_94, "Municipalidad de Guaymallén"
  loc_B183F4: FStVarCopyObj var_BC
  loc_B183F7: FLdRfVar var_BC
  loc_B183FA: FLdRfVar var_D4
  loc_B183FD: ImpAdCallFPR4  = Ucase()
  loc_B18402: FLdRfVar var_D4
  loc_B18405: ConcatVar var_E4
  loc_B18409: LitVarStr var_F4, "</p>"
  loc_B1840E: ConcatVar var_104
  loc_B18412: PopAdLdVar
  loc_B18413: FLdPr Me
  loc_B18416: MemLdRfVar from_stack_1.htmFile
  loc_B18419: LdPrVar
  loc_B1841B: LateMemCall
  loc_B18421: FFreeVar var_BC = "": var_D4 = "": var_E4 = ""
  loc_B1842C: LitStr "    <p>"
  loc_B1842F: FLdRfVar var_A8
  loc_B18432: FLdPr Me
  loc_B18435:  = Me.Caption
  loc_B1843A: ILdRf var_A8
  loc_B1843D: ConcatStr
  loc_B1843E: FStStrNoPop var_AC
  loc_B18441: LitStr "</p></th>"
  loc_B18444: ConcatStr
  loc_B18445: CVarStr var_BC
  loc_B18448: PopAdLdVar
  loc_B18449: FLdPr Me
  loc_B1844C: MemLdRfVar from_stack_1.htmFile
  loc_B1844F: LdPrVar
  loc_B18451: LateMemCall
  loc_B18457: FFreeStr var_A8 = ""
  loc_B1845E: FFree1Var var_BC = ""
  loc_B18461: LitVarStr var_94, "  </tr>"
  loc_B18466: PopAdLdVar
  loc_B18467: FLdPr Me
  loc_B1846A: MemLdRfVar from_stack_1.htmFile
  loc_B1846D: LdPrVar
  loc_B1846F: LateMemCall
  loc_B18475: LitVarStr var_94, "  <tr><th><hr></th></tr>"
  loc_B1847A: PopAdLdVar
  loc_B1847B: FLdPr Me
  loc_B1847E: MemLdRfVar from_stack_1.htmFile
  loc_B18481: LdPrVar
  loc_B18483: LateMemCall
  loc_B18489: LitVarStr var_94, "  <tr valign=""top"">"
  loc_B1848E: PopAdLdVar
  loc_B1848F: FLdPr Me
  loc_B18492: MemLdRfVar from_stack_1.htmFile
  loc_B18495: LdPrVar
  loc_B18497: LateMemCall
  loc_B1849D: LitVarStr var_94, "    <th align=""left""<p>"
  loc_B184A2: PopAdLdVar
  loc_B184A3: FLdPr Me
  loc_B184A6: MemLdRfVar from_stack_1.htmFile
  loc_B184A9: LdPrVar
  loc_B184AB: LateMemCall
  loc_B184B1: FLdRfVar var_A8
  loc_B184B4: FLdPr Me
  loc_B184B7: VCallAd Control_ID_txtNumeDebi
  loc_B184BA: FStAdFunc var_C0
  loc_B184BD: FLdPr var_C0
  loc_B184C0:  = Me.Text
  loc_B184C5: ILdRf var_A8
  loc_B184C8: LitStr vbNullString
  loc_B184CB: NeStr
  loc_B184CD: FFree1Str var_A8
  loc_B184D0: FFree1Ad var_C0
  loc_B184D3: BranchF loc_B18517
  loc_B184D6: LitStr "     D&eacute;bito: <span class=""Normal"">"
  loc_B184D9: FLdRfVar var_A8
  loc_B184DC: FLdPr Me
  loc_B184DF: VCallAd Control_ID_txtNumeDebi
  loc_B184E2: FStAdFunc var_C0
  loc_B184E5: FLdPr var_C0
  loc_B184E8:  = Me.Text
  loc_B184ED: ILdRf var_A8
  loc_B184F0: ConcatStr
  loc_B184F1: FStStrNoPop var_AC
  loc_B184F4: LitStr "</span><br>"
  loc_B184F7: ConcatStr
  loc_B184F8: CVarStr var_BC
  loc_B184FB: PopAdLdVar
  loc_B184FC: FLdPr Me
  loc_B184FF: MemLdRfVar from_stack_1.htmFile
  loc_B18502: LdPrVar
  loc_B18504: LateMemCall
  loc_B1850A: FFreeStr var_A8 = ""
  loc_B18511: FFree1Ad var_C0
  loc_B18514: FFree1Var var_BC = ""
  loc_B18517: FLdPr Me
  loc_B1851A: VCallAd Control_ID_CodiCucoMsk
  loc_B1851D: FStAdFunc var_C0
  loc_B18520: FLdPr var_C0
  loc_B18523: LateIdLdVar var_BC DispID_20 0
  loc_B1852A: CStrVarTmp
  loc_B1852B: FStStrNoPop var_A8
  loc_B1852E: LitStr vbNullString
  loc_B18531: NeStr
  loc_B18533: FFree1Str var_A8
  loc_B18536: FFree1Ad var_C0
  loc_B18539: FFree1Var var_BC = ""
  loc_B1853C: BranchF loc_B18622
  loc_B1853F: FLdPr Me
  loc_B18542: VCallAd Control_ID_CodiCucoMsk
  loc_B18545: FStAdFunc var_C0
  loc_B18548: FLdPr var_C0
  loc_B1854B: LateIdLdVar var_BC DispID_20 0
  loc_B18552: CStrVarTmp
  loc_B18553: FStStrNoPop var_A8
  loc_B18556: FnLenStr
  loc_B18557: LitI4 &HA
  loc_B1855C: LtI4
  loc_B1855D: FFree1Str var_A8
  loc_B18560: FFree1Ad var_C0
  loc_B18563: FFree1Var var_BC = ""
  loc_B18566: BranchF loc_B185B1
  loc_B18569: LitStr "     Cuenta Contable: <span class=""Normal"">"
  loc_B1856C: FLdPr Me
  loc_B1856F: VCallAd Control_ID_CodiCucoMsk
  loc_B18572: FStAdFunc var_C0
  loc_B18575: FLdPr var_C0
  loc_B18578: LateIdLdVar var_BC DispID_22 0
  loc_B1857F: CStrVarTmp
  loc_B18580: FStStrNoPop var_A8
  loc_B18583: ConcatStr
  loc_B18584: FStStrNoPop var_AC
  loc_B18587: LitStr "...</span><br>"
  loc_B1858A: ConcatStr
  loc_B1858B: CVarStr var_D4
  loc_B1858E: PopAdLdVar
  loc_B1858F: FLdPr Me
  loc_B18592: MemLdRfVar from_stack_1.htmFile
  loc_B18595: LdPrVar
  loc_B18597: LateMemCall
  loc_B1859D: FFreeStr var_A8 = ""
  loc_B185A4: FFree1Ad var_C0
  loc_B185A7: FFreeVar var_BC = ""
  loc_B185AE: Branch loc_B18622
  loc_B185B1: LitStr "     Cuenta Contable: <span class=""Normal"">"
  loc_B185B4: FLdPr Me
  loc_B185B7: VCallAd Control_ID_CodiCucoMsk
  loc_B185BA: FStAdFunc var_C0
  loc_B185BD: FLdPr var_C0
  loc_B185C0: LateIdLdVar var_BC DispID_22 0
  loc_B185C7: CStrVarTmp
  loc_B185C8: FStStrNoPop var_A8
  loc_B185CB: ConcatStr
  loc_B185CC: FStStrNoPop var_AC
  loc_B185CF: LitStr " - "
  loc_B185D2: ConcatStr
  loc_B185D3: FStStrNoPop var_120
  loc_B185D6: FLdRfVar var_11C
  loc_B185D9: FLdPr Me
  loc_B185DC: VCallAd Control_ID_DetaCucoLbl
  loc_B185DF: FStAdFunc var_118
  loc_B185E2: FLdPr var_118
  loc_B185E5:  = Me.Caption
  loc_B185EA: ILdRf var_11C
  loc_B185ED: ConcatStr
  loc_B185EE: FStStrNoPop var_124
  loc_B185F1: LitStr "</span><br>"
  loc_B185F4: ConcatStr
  loc_B185F5: CVarStr var_D4
  loc_B185F8: PopAdLdVar
  loc_B185F9: FLdPr Me
  loc_B185FC: MemLdRfVar from_stack_1.htmFile
  loc_B185FF: LdPrVar
  loc_B18601: LateMemCall
  loc_B18607: FFreeStr var_A8 = "": var_AC = "": var_120 = "": var_11C = ""
  loc_B18614: FFreeAd var_C0 = ""
  loc_B1861B: FFreeVar var_BC = ""
  loc_B18622: FLdRfVar var_A8
  loc_B18625: FLdPr Me
  loc_B18628: VCallAd Control_ID_cboExpeImpu
  loc_B1862B: FStAdFunc var_C0
  loc_B1862E: FLdPr var_C0
  loc_B18631:  = Me.Text
  loc_B18636: ILdRf var_A8
  loc_B18639: LitStr vbNullString
  loc_B1863C: NeStr
  loc_B1863E: FFree1Str var_A8
  loc_B18641: FFree1Ad var_C0
  loc_B18644: BranchF loc_B18688
  loc_B18647: LitStr "     Exp. Pago: <span class=""Normal"">"
  loc_B1864A: FLdRfVar var_A8
  loc_B1864D: FLdPr Me
  loc_B18650: VCallAd Control_ID_cboExpeImpu
  loc_B18653: FStAdFunc var_C0
  loc_B18656: FLdPr var_C0
  loc_B18659:  = Me.Text
  loc_B1865E: ILdRf var_A8
  loc_B18661: ConcatStr
  loc_B18662: FStStrNoPop var_AC
  loc_B18665: LitStr "</span><br>"
  loc_B18668: ConcatStr
  loc_B18669: CVarStr var_BC
  loc_B1866C: PopAdLdVar
  loc_B1866D: FLdPr Me
  loc_B18670: MemLdRfVar from_stack_1.htmFile
  loc_B18673: LdPrVar
  loc_B18675: LateMemCall
  loc_B1867B: FFreeStr var_A8 = ""
  loc_B18682: FFree1Ad var_C0
  loc_B18685: FFree1Var var_BC = ""
  loc_B18688: FLdRfVar var_A8
  loc_B1868B: FLdPr Me
  loc_B1868E: VCallAd Control_ID_CboExorImpu
  loc_B18691: FStAdFunc var_C0
  loc_B18694: FLdPr var_C0
  loc_B18697:  = Me.Text
  loc_B1869C: ILdRf var_A8
  loc_B1869F: LitStr vbNullString
  loc_B186A2: NeStr
  loc_B186A4: FFree1Str var_A8
  loc_B186A7: FFree1Ad var_C0
  loc_B186AA: BranchF loc_B186EE
  loc_B186AD: LitStr "     Exp. orig.: <span class=""Normal"">"
  loc_B186B0: FLdRfVar var_A8
  loc_B186B3: FLdPr Me
  loc_B186B6: VCallAd Control_ID_CboExorImpu
  loc_B186B9: FStAdFunc var_C0
  loc_B186BC: FLdPr var_C0
  loc_B186BF:  = Me.Text
  loc_B186C4: ILdRf var_A8
  loc_B186C7: ConcatStr
  loc_B186C8: FStStrNoPop var_AC
  loc_B186CB: LitStr "</span><br>"
  loc_B186CE: ConcatStr
  loc_B186CF: CVarStr var_BC
  loc_B186D2: PopAdLdVar
  loc_B186D3: FLdPr Me
  loc_B186D6: MemLdRfVar from_stack_1.htmFile
  loc_B186D9: LdPrVar
  loc_B186DB: LateMemCall
  loc_B186E1: FFreeStr var_A8 = ""
  loc_B186E8: FFree1Ad var_C0
  loc_B186EB: FFree1Var var_BC = ""
  loc_B186EE: FLdRfVar var_A8
  loc_B186F1: FLdPr Me
  loc_B186F4: VCallAd Control_ID_CucuPersTxt
  loc_B186F7: FStAdFunc var_C0
  loc_B186FA: FLdPr var_C0
  loc_B186FD:  = Me.Text
  loc_B18702: ILdRf var_A8
  loc_B18705: LitStr vbNullString
  loc_B18708: NeStr
  loc_B1870A: FFree1Str var_A8
  loc_B1870D: FFree1Ad var_C0
  loc_B18710: BranchF loc_B18780
  loc_B18713: LitStr "     Proveedor: <span class=""Normal"">"
  loc_B18716: FLdRfVar var_A8
  loc_B18719: FLdPr Me
  loc_B1871C: VCallAd Control_ID_CucuPersTxt
  loc_B1871F: FStAdFunc var_C0
  loc_B18722: FLdPr var_C0
  loc_B18725:  = Me.Text
  loc_B1872A: ILdRf var_A8
  loc_B1872D: ConcatStr
  loc_B1872E: FStStrNoPop var_AC
  loc_B18731: LitStr " - "
  loc_B18734: ConcatStr
  loc_B18735: FStStrNoPop var_120
  loc_B18738: FLdRfVar var_11C
  loc_B1873B: FLdPr Me
  loc_B1873E: VCallAd Control_ID_DetaProvLbl
  loc_B18741: FStAdFunc var_118
  loc_B18744: FLdPr var_118
  loc_B18747:  = Me.Caption
  loc_B1874C: ILdRf var_11C
  loc_B1874F: ConcatStr
  loc_B18750: FStStrNoPop var_124
  loc_B18753: LitStr "</span><br>"
  loc_B18756: ConcatStr
  loc_B18757: CVarStr var_BC
  loc_B1875A: PopAdLdVar
  loc_B1875B: FLdPr Me
  loc_B1875E: MemLdRfVar from_stack_1.htmFile
  loc_B18761: LdPrVar
  loc_B18763: LateMemCall
  loc_B18769: FFreeStr var_A8 = "": var_AC = "": var_120 = "": var_11C = ""
  loc_B18776: FFreeAd var_C0 = ""
  loc_B1877D: FFree1Var var_BC = ""
  loc_B18780: FLdPr Me
  loc_B18783: VCallAd Control_ID_mskDesde
  loc_B18786: FStAdFunc var_C0
  loc_B18789: FLdPr var_C0
  loc_B1878C: LateIdLdVar var_BC DispID_20 0
  loc_B18793: CStrVarTmp
  loc_B18794: FStStrNoPop var_A8
  loc_B18797: LitStr vbNullString
  loc_B1879A: NeStr
  loc_B1879C: FFree1Str var_A8
  loc_B1879F: FFree1Ad var_C0
  loc_B187A2: FFree1Var var_BC = ""
  loc_B187A5: BranchF loc_B187ED
  loc_B187A8: LitStr "     Desde: <span class=""Normal"">"
  loc_B187AB: FLdPr Me
  loc_B187AE: VCallAd Control_ID_mskDesde
  loc_B187B1: FStAdFunc var_C0
  loc_B187B4: FLdPr var_C0
  loc_B187B7: LateIdLdVar var_BC DispID_15 0
  loc_B187BE: CStrVarTmp
  loc_B187BF: FStStrNoPop var_A8
  loc_B187C2: ConcatStr
  loc_B187C3: FStStrNoPop var_AC
  loc_B187C6: LitStr "</span><br>"
  loc_B187C9: ConcatStr
  loc_B187CA: CVarStr var_D4
  loc_B187CD: PopAdLdVar
  loc_B187CE: FLdPr Me
  loc_B187D1: MemLdRfVar from_stack_1.htmFile
  loc_B187D4: LdPrVar
  loc_B187D6: LateMemCall
  loc_B187DC: FFreeStr var_A8 = ""
  loc_B187E3: FFree1Ad var_C0
  loc_B187E6: FFreeVar var_BC = ""
  loc_B187ED: FLdPr Me
  loc_B187F0: VCallAd Control_ID_mskHasta
  loc_B187F3: FStAdFunc var_C0
  loc_B187F6: FLdPr var_C0
  loc_B187F9: LateIdLdVar var_BC DispID_20 0
  loc_B18800: CStrVarTmp
  loc_B18801: FStStrNoPop var_A8
  loc_B18804: LitStr vbNullString
  loc_B18807: NeStr
  loc_B18809: FFree1Str var_A8
  loc_B1880C: FFree1Ad var_C0
  loc_B1880F: FFree1Var var_BC = ""
  loc_B18812: BranchF loc_B1885A
  loc_B18815: LitStr "     Hasta: <span class=""Normal"">"
  loc_B18818: FLdPr Me
  loc_B1881B: VCallAd Control_ID_mskHasta
  loc_B1881E: FStAdFunc var_C0
  loc_B18821: FLdPr var_C0
  loc_B18824: LateIdLdVar var_BC DispID_15 0
  loc_B1882B: CStrVarTmp
  loc_B1882C: FStStrNoPop var_A8
  loc_B1882F: ConcatStr
  loc_B18830: FStStrNoPop var_AC
  loc_B18833: LitStr "</span><br>"
  loc_B18836: ConcatStr
  loc_B18837: CVarStr var_D4
  loc_B1883A: PopAdLdVar
  loc_B1883B: FLdPr Me
  loc_B1883E: MemLdRfVar from_stack_1.htmFile
  loc_B18841: LdPrVar
  loc_B18843: LateMemCall
  loc_B18849: FFreeStr var_A8 = ""
  loc_B18850: FFree1Ad var_C0
  loc_B18853: FFreeVar var_BC = ""
  loc_B1885A: FLdRfVar var_C2
  loc_B1885D: FLdPr Me
  loc_B18860: VCallAd Control_ID_chkAnulados
  loc_B18863: FStAdFunc var_C0
  loc_B18866: FLdPr var_C0
  loc_B18869:  = Me.Value
  loc_B1886E: LitVarStr var_114, "     <span class=""Normal"">"
  loc_B18873: LitVarStr var_F4, "No incluye anulados"
  loc_B18878: FStVarCopyObj var_D4
  loc_B1887B: FLdRfVar var_D4
  loc_B1887E: LitVarStr var_A4, "Incluye anulados"
  loc_B18883: FStVarCopyObj var_BC
  loc_B18886: FLdRfVar var_BC
  loc_B18889: FLdI2 var_C2
  loc_B1888C: CI4UI1
  loc_B1888D: LitI4 1
  loc_B18892: EqI4
  loc_B18893: CVarBoolI2 var_94
  loc_B18897: FLdRfVar var_E4
  loc_B1889A: ImpAdCallFPR4  = IIf(, , )
  loc_B1889F: FLdRfVar var_E4
  loc_B188A2: ConcatVar var_104
  loc_B188A6: LitVarStr var_134, "</span><br>"
  loc_B188AB: ConcatVar var_144
  loc_B188AF: PopAdLdVar
  loc_B188B0: FLdPr Me
  loc_B188B3: MemLdRfVar from_stack_1.htmFile
  loc_B188B6: LdPrVar
  loc_B188B8: LateMemCall
  loc_B188BE: FFree1Ad var_C0
  loc_B188C1: FFreeVar var_94 = "": var_BC = "": var_D4 = "": var_E4 = "": var_104 = ""
  loc_B188D0: FLdRfVar var_C2
  loc_B188D3: FLdPr Me
  loc_B188D6: VCallAd Control_ID_chkOrdenarCuenta
  loc_B188D9: FStAdFunc var_C0
  loc_B188DC: FLdPr var_C0
  loc_B188DF:  = Me.Value
  loc_B188E4: LitVarStr var_114, "     <span class=""Normal"">"
  loc_B188E9: LitVarStr var_F4, "Ordenados por Nro débito"
  loc_B188EE: FStVarCopyObj var_D4
  loc_B188F1: FLdRfVar var_D4
  loc_B188F4: LitVarStr var_A4, "Ordenados por Cuenta Contable"
  loc_B188F9: FStVarCopyObj var_BC
  loc_B188FC: FLdRfVar var_BC
  loc_B188FF: FLdI2 var_C2
  loc_B18902: CI4UI1
  loc_B18903: LitI4 1
  loc_B18908: EqI4
  loc_B18909: CVarBoolI2 var_94
  loc_B1890D: FLdRfVar var_E4
  loc_B18910: ImpAdCallFPR4  = IIf(, , )
  loc_B18915: FLdRfVar var_E4
  loc_B18918: ConcatVar var_104
  loc_B1891C: LitVarStr var_134, "</span><br>"
  loc_B18921: ConcatVar var_144
  loc_B18925: PopAdLdVar
  loc_B18926: FLdPr Me
  loc_B18929: MemLdRfVar from_stack_1.htmFile
  loc_B1892C: LdPrVar
  loc_B1892E: LateMemCall
  loc_B18934: FFree1Ad var_C0
  loc_B18937: FFreeVar var_94 = "": var_BC = "": var_D4 = "": var_E4 = "": var_104 = ""
  loc_B18946: LitVarStr var_94, "         </p></th>"
  loc_B1894B: PopAdLdVar
  loc_B1894C: FLdPr Me
  loc_B1894F: MemLdRfVar from_stack_1.htmFile
  loc_B18952: LdPrVar
  loc_B18954: LateMemCall
  loc_B1895A: LitVarStr var_94, "  </tr>"
  loc_B1895F: PopAdLdVar
  loc_B18960: FLdPr Me
  loc_B18963: MemLdRfVar from_stack_1.htmFile
  loc_B18966: LdPrVar
  loc_B18968: LateMemCall
  loc_B1896E: LitVarStr var_94, "</table>"
  loc_B18973: PopAdLdVar
  loc_B18974: FLdPr Me
  loc_B18977: MemLdRfVar from_stack_1.htmFile
  loc_B1897A: LdPrVar
  loc_B1897C: LateMemCall
  loc_B18982: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_B18987: PopAdLdVar
  loc_B18988: FLdPr Me
  loc_B1898B: MemLdRfVar from_stack_1.htmFile
  loc_B1898E: LdPrVar
  loc_B18990: LateMemCall
  loc_B18996: LitVarStr var_94, "  <THEAD>"
  loc_B1899B: PopAdLdVar
  loc_B1899C: FLdPr Me
  loc_B1899F: MemLdRfVar from_stack_1.htmFile
  loc_B189A2: LdPrVar
  loc_B189A4: LateMemCall
  loc_B189AA: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_B189AF: PopAdLdVar
  loc_B189B0: FLdPr Me
  loc_B189B3: MemLdRfVar from_stack_1.htmFile
  loc_B189B6: LdPrVar
  loc_B189B8: LateMemCall
  loc_B189BE: LitVarStr var_94, "    <th>Débito</th>"
  loc_B189C3: PopAdLdVar
  loc_B189C4: FLdPr Me
  loc_B189C7: MemLdRfVar from_stack_1.htmFile
  loc_B189CA: LdPrVar
  loc_B189CC: LateMemCall
  loc_B189D2: FLdPr Me
  loc_B189D5: MemLdI2 global_108
  loc_B189D8: BranchF loc_B18A06
  loc_B189DB: LitVarStr var_94, "    <th>Cuenta Contable</th>"
  loc_B189E0: PopAdLdVar
  loc_B189E1: FLdPr Me
  loc_B189E4: MemLdRfVar from_stack_1.htmFile
  loc_B189E7: LdPrVar
  loc_B189E9: LateMemCall
  loc_B189EF: LitVarStr var_94, "    <th>Cuenta Contable (Detalle)</th>"
  loc_B189F4: PopAdLdVar
  loc_B189F5: FLdPr Me
  loc_B189F8: MemLdRfVar from_stack_1.htmFile
  loc_B189FB: LdPrVar
  loc_B189FD: LateMemCall
  loc_B18A03: Branch loc_B18A1A
  loc_B18A06: LitVarStr var_94, "    <th>Cuenta Contable</th>"
  loc_B18A0B: PopAdLdVar
  loc_B18A0C: FLdPr Me
  loc_B18A0F: MemLdRfVar from_stack_1.htmFile
  loc_B18A12: LdPrVar
  loc_B18A14: LateMemCall
  loc_B18A1A: LitVarStr var_94, "    <th>Exp.Original</th>"
  loc_B18A1F: PopAdLdVar
  loc_B18A20: FLdPr Me
  loc_B18A23: MemLdRfVar from_stack_1.htmFile
  loc_B18A26: LdPrVar
  loc_B18A28: LateMemCall
  loc_B18A2E: LitVarStr var_94, "    <th>Exp. Pago</th>"
  loc_B18A33: PopAdLdVar
  loc_B18A34: FLdPr Me
  loc_B18A37: MemLdRfVar from_stack_1.htmFile
  loc_B18A3A: LdPrVar
  loc_B18A3C: LateMemCall
  loc_B18A42: LitVarStr var_94, "    <th>Importe</th>"
  loc_B18A47: PopAdLdVar
  loc_B18A48: FLdPr Me
  loc_B18A4B: MemLdRfVar from_stack_1.htmFile
  loc_B18A4E: LdPrVar
  loc_B18A50: LateMemCall
  loc_B18A56: LitVarStr var_94, "    <th>Fecha</th>"
  loc_B18A5B: PopAdLdVar
  loc_B18A5C: FLdPr Me
  loc_B18A5F: MemLdRfVar from_stack_1.htmFile
  loc_B18A62: LdPrVar
  loc_B18A64: LateMemCall
  loc_B18A6A: FLdPr Me
  loc_B18A6D: MemLdI2 global_108
  loc_B18A70: BranchF loc_B18A9E
  loc_B18A73: LitVarStr var_94, "    <th>CUIT</th>"
  loc_B18A78: PopAdLdVar
  loc_B18A79: FLdPr Me
  loc_B18A7C: MemLdRfVar from_stack_1.htmFile
  loc_B18A7F: LdPrVar
  loc_B18A81: LateMemCall
  loc_B18A87: LitVarStr var_94, "    <th>Proveedor</th>"
  loc_B18A8C: PopAdLdVar
  loc_B18A8D: FLdPr Me
  loc_B18A90: MemLdRfVar from_stack_1.htmFile
  loc_B18A93: LdPrVar
  loc_B18A95: LateMemCall
  loc_B18A9B: Branch loc_B18AB2
  loc_B18A9E: LitVarStr var_94, "    <th>Proveedor</th>"
  loc_B18AA3: PopAdLdVar
  loc_B18AA4: FLdPr Me
  loc_B18AA7: MemLdRfVar from_stack_1.htmFile
  loc_B18AAA: LdPrVar
  loc_B18AAC: LateMemCall
  loc_B18AB2: LitVarStr var_94, "    <th>Detalle</th>"
  loc_B18AB7: PopAdLdVar
  loc_B18AB8: FLdPr Me
  loc_B18ABB: MemLdRfVar from_stack_1.htmFile
  loc_B18ABE: LdPrVar
  loc_B18AC0: LateMemCall
  loc_B18AC6: LitVarStr var_94, "    <th>Factura</th>"
  loc_B18ACB: PopAdLdVar
  loc_B18ACC: FLdPr Me
  loc_B18ACF: MemLdRfVar from_stack_1.htmFile
  loc_B18AD2: LdPrVar
  loc_B18AD4: LateMemCall
  loc_B18ADA: LitVarStr var_94, "    <th>Orden de Pago</th>"
  loc_B18ADF: PopAdLdVar
  loc_B18AE0: FLdPr Me
  loc_B18AE3: MemLdRfVar from_stack_1.htmFile
  loc_B18AE6: LdPrVar
  loc_B18AE8: LateMemCall
  loc_B18AEE: LitVarStr var_94, "    <th>Fecha Archivo</th>"
  loc_B18AF3: PopAdLdVar
  loc_B18AF4: FLdPr Me
  loc_B18AF7: MemLdRfVar from_stack_1.htmFile
  loc_B18AFA: LdPrVar
  loc_B18AFC: LateMemCall
  loc_B18B02: FLdRfVar var_C2
  loc_B18B05: FLdPr Me
  loc_B18B08: VCallAd Control_ID_chkAnulados
  loc_B18B0B: FStAdFunc var_C0
  loc_B18B0E: FLdPr var_C0
  loc_B18B11:  = Me.Value
  loc_B18B16: FLdI2 var_C2
  loc_B18B19: CI4UI1
  loc_B18B1A: LitI4 1
  loc_B18B1F: EqI4
  loc_B18B20: FFree1Ad var_C0
  loc_B18B23: BranchF loc_B18B3A
  loc_B18B26: LitVarStr var_94, "    <th>Fecha de<br>anulación</th>"
  loc_B18B2B: PopAdLdVar
  loc_B18B2C: FLdPr Me
  loc_B18B2F: MemLdRfVar from_stack_1.htmFile
  loc_B18B32: LdPrVar
  loc_B18B34: LateMemCall
  loc_B18B3A: LitVarStr var_94, "    <th>OP<br>devolución</th>"
  loc_B18B3F: PopAdLdVar
  loc_B18B40: FLdPr Me
  loc_B18B43: MemLdRfVar from_stack_1.htmFile
  loc_B18B46: LdPrVar
  loc_B18B48: LateMemCall
  loc_B18B4E: LitVarStr var_94, "  </tr>"
  loc_B18B53: PopAdLdVar
  loc_B18B54: FLdPr Me
  loc_B18B57: MemLdRfVar from_stack_1.htmFile
  loc_B18B5A: LdPrVar
  loc_B18B5C: LateMemCall
  loc_B18B62: LitVarStr var_94, "  </THEAD>"
  loc_B18B67: PopAdLdVar
  loc_B18B68: FLdPr Me
  loc_B18B6B: MemLdRfVar from_stack_1.htmFile
  loc_B18B6E: LdPrVar
  loc_B18B70: LateMemCall
  loc_B18B76: ExitProcHresult
End Function

Private Function Proc_191_43_9831F0() '9831F0
  'Data Table: 4D360C
  loc_9831B0: LitVarStr var_94, "</table>"
  loc_9831B5: PopAdLdVar
  loc_9831B6: FLdPr Me
  loc_9831B9: MemLdRfVar from_stack_1.htmFile
  loc_9831BC: LdPrVar
  loc_9831BE: LateMemCall
  loc_9831C4: LitVarStr var_94, "</body>"
  loc_9831C9: PopAdLdVar
  loc_9831CA: FLdPr Me
  loc_9831CD: MemLdRfVar from_stack_1.htmFile
  loc_9831D0: LdPrVar
  loc_9831D2: LateMemCall
  loc_9831D8: LitVarStr var_94, "</html>"
  loc_9831DD: PopAdLdVar
  loc_9831DE: FLdPr Me
  loc_9831E1: MemLdRfVar from_stack_1.htmFile
  loc_9831E4: LdPrVar
  loc_9831E6: LateMemCall
  loc_9831EC: ExitProcHresult
End Function
