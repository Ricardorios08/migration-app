VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptResumenporProveedorConReap
  Caption = "Resumen por Proveedor con reapropiación"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptResumenporProveedorConReap.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 8325
  ClientHeight = 4335
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 4080
    Width = 8325
    Height = 255
    TabIndex = 22
    OleObjectBlob = "rptResumenporProveedorConReap.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 6840
    Top = 3120
    Width = 735
    Height = 615
    TabIndex = 20
    Cancel = -1  'True
    Picture = "rptResumenporProveedorConReap.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptResumenporProveedorConReap.frx":0B9C
    Left = 6480
    Top = 120
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 2880
    Width = 3255
    Height = 1095
    TabIndex = 17
    Begin VB.CommandButton cmdXLS
      Caption = "&XLS"
      Left = 1680
      Top = 360
      Width = 1335
      Height = 495
      Enabled = 0   'False
      TabIndex = 19
    End
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 18
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 2880
    Width = 3015
    Height = 1095
    TabIndex = 14
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 16
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 15
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 8055
    Height = 2775
    TabIndex = 0
    Begin VB.TextBox CucuPersTxt
      Left = 1515
      Top = 1800
      Width = 1575
      Height = 375
      TabIndex = 11
      MaxLength = 70
    End
    Begin VB.CheckBox chkOcultarReapropiacion
      Caption = "Ocultar Reapropiacion"
      Left = 1560
      Top = 2280
      Width = 1935
      Height = 375
      TabIndex = 13
      Value = 1
    End
    Begin VB.CommandButton cmdCalHasta
      Left = 2715
      Top = 1320
      Width = 375
      Height = 375
      TabIndex = 9
      Picture = "rptResumenporProveedorConReap.frx":0C00
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CommandButton cmdCalDesde
      Left = 2715
      Top = 840
      Width = 375
      Height = 375
      Enabled = 0   'False
      TabIndex = 6
      Picture = "rptResumenporProveedorConReap.frx":1142
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.ComboBox cboPeriodo
      Style = 2
      ForeColor = &HFF0000&
      Left = 1560
      Top = 360
      Width = 975
      Height = 315
      TabIndex = 2
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 6480
      Top = 240
      Width = 1335
      Height = 495
      TabIndex = 3
    End
    Begin MSMask.MaskEdBox mskDesde
      Left = 1515
      Top = 840
      Width = 1095
      Height = 315
      TabIndex = 5
      OleObjectBlob = "rptResumenporProveedorConReap.frx":1684
    End
    Begin MSMask.MaskEdBox mskHasta
      Left = 1515
      Top = 1320
      Width = 1095
      Height = 315
      TabIndex = 8
      OleObjectBlob = "rptResumenporProveedorConReap.frx":170C
    End
    Begin VB.Label Label5
      Caption = "Proveedor:"
      Left = 600
      Top = 1800
      Width = 780
      Height = 195
      TabIndex = 10
    End
    Begin VB.Label DetaProvLbl
      Left = 3150
      Top = 1800
      Width = 4575
      Height = 375
      TabIndex = 12
      BorderStyle = 1 'Fixed Single
    End
    Begin VB.Label Label3
      Caption = "Hasta:"
      Left = 915
      Top = 1320
      Width = 465
      Height = 195
      TabIndex = 7
      AutoSize = -1  'True
    End
    Begin VB.Label Label1
      Caption = "Desde:"
      Left = 870
      Top = 840
      Width = 510
      Height = 195
      TabIndex = 4
      AutoSize = -1  'True
    End
    Begin VB.Label Label4
      Caption = "Periodo:"
      Left = 840
      Top = 360
      Width = 585
      Height = 195
      TabIndex = 1
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 6960
    Top = 3240
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 21
    OleObjectBlob = "rptResumenporProveedorConReap.frx":1794
  End
End

Attribute VB_Name = "rptResumenporProveedorConReap"

Public htmFile As Variant
Public bLogos As Boolean
Public bGenerado As Boolean

Private Type UDT_1_0059BFC4
  bStruc(72) As Byte ' String fields: 18
End Type


Private Sub Form_Load() '9CF4D4
  'Data Table: 4A0CFC
  loc_9CF3FC: LitI2_Byte &HFF
  loc_9CF3FE: ImpAdStI2 MemVar_C3D840
  loc_9CF401: ILdRf Me
  loc_9CF404: CastAd
  loc_9CF407: FStAdFunc var_8C
  loc_9CF40A: FLdRfVar var_8C
  loc_9CF40D: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_9CF412: FFree1Ad var_8C
  loc_9CF415: LitStr "SELECT * FROM infogov.periodo ORDER BY PeriInfo"
  loc_9CF418: FLdRfVar var_88
  loc_9CF41B: NewIfNullPr clsperiodo
  loc_9CF41E: Call clsperiodo.RedefineRS(from_stack_1v)
  loc_9CF423: FLdRfVar var_90
  loc_9CF426: FLdRfVar var_88
  loc_9CF429: NewIfNullPr clsperiodo
  loc_9CF42C: from_stack_1 = clsperiodo.RecordCount
  loc_9CF431: ILdRf var_90
  loc_9CF434: LitI4 0
  loc_9CF439: GtI4
  loc_9CF43A: BranchF loc_9CF4CD
  loc_9CF43D: FLdRfVar var_88
  loc_9CF440: NewIfNullPr clsperiodo
  loc_9CF443: Call clsperiodo.MoveFirst()
  loc_9CF448: FLdRfVar var_92
  loc_9CF44B: FLdRfVar var_88
  loc_9CF44E: NewIfNullPr clsperiodo
  loc_9CF451: from_stack_1 = clsperiodo.EOF
  loc_9CF456: FLdI2 var_92
  loc_9CF459: NotI4
  loc_9CF45A: BranchF loc_9CF4CD
  loc_9CF45D: LitVar_Missing var_D0
  loc_9CF460: PopAdLdVar
  loc_9CF461: FLdRfVar var_BC
  loc_9CF464: FLdRfVar var_AC
  loc_9CF467: LitVarStr var_A8, "PeriInfo"
  loc_9CF46C: PopAdLdVar
  loc_9CF46D: FLdRfVar var_98
  loc_9CF470: FLdRfVar var_8C
  loc_9CF473: FLdRfVar var_88
  loc_9CF476: NewIfNullPr clsperiodo
  loc_9CF479: from_stack_1v = clsperiodo.RsFrmGet()
  loc_9CF47E: FLdPr var_8C
  loc_9CF481:  = Me.Fields
  loc_9CF486: FLdPr var_98
  loc_9CF489: from_stack_2 = Me.Item(from_stack_1)
  loc_9CF48E: FLdPr var_AC
  loc_9CF491:  = Me.Value
  loc_9CF496: FLdRfVar var_BC
  loc_9CF499: CStrVarTmp
  loc_9CF49A: FStStrNoPop var_C0
  loc_9CF49D: FLdPr Me
  loc_9CF4A0: VCallAd Control_ID_cboPeriodo
  loc_9CF4A3: FStAdFunc var_D4
  loc_9CF4A6: FLdPr var_D4
  loc_9CF4A9: Me.AddItem from_stack_1, from_stack_2
  loc_9CF4AE: FFree1Str var_C0
  loc_9CF4B1: FFreeAd var_8C = "": var_98 = "": var_AC = ""
  loc_9CF4BC: FFree1Var var_BC = ""
  loc_9CF4BF: FLdRfVar var_88
  loc_9CF4C2: NewIfNullPr clsperiodo
  loc_9CF4C5: Call clsperiodo.MoveSiguiente()
  loc_9CF4CA: Branch loc_9CF448
  loc_9CF4CD: Call cmdNueva_Click()
  loc_9CF4D2: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '95E068
  'Data Table: 4A0CFC
  loc_95E050: FLdPr Me
  loc_95E053: VCallAd Control_ID_wbbReporte
  loc_95E056: FStAdFunc var_88
  loc_95E059: FLdRfVar var_88
  loc_95E05C: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_95E061: FFree1Ad var_88
  loc_95E064: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) '948C54
  'Data Table: 4A0CFC
  loc_948C40: ILdI2 KeyAscii
  loc_948C43: CI4UI1
  loc_948C44: LitI4 &HD
  loc_948C49: EqI4
  loc_948C4A: BranchF loc_948C52
  loc_948C4D: ImpAdCallFPR4 Proc_261_52_966EEC()
  loc_948C52: ExitProcHresult
End Sub

Private Sub mskDesde_UnknownEvent_0 '94F458
  'Data Table: 4A0CFC
  loc_94F444: FLdPr Me
  loc_94F447: VCallAd Control_ID_mskDesde
  loc_94F44A: CVarAd
  loc_94F44E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94F453: FFree1Var var_94 = ""
  loc_94F456: ExitProcHresult
End Sub

Private Sub mskDesde_UnknownEvent_8 '9B12AC
  'Data Table: 4A0CFC
  loc_9B1210: FLdPr Me
  loc_9B1213: VCallAd Control_ID_mskDesde
  loc_9B1216: FStAdFunc var_88
  loc_9B1219: FLdPr var_88
  loc_9B121C: LateIdLdVar var_98 DispID_15 0
  loc_9B1223: PopAd
  loc_9B1225: FLdPr Me
  loc_9B1228: VCallAd Control_ID_mskDesde
  loc_9B122B: FStAdFunc var_AC
  loc_9B122E: LitI2_Byte 0
  loc_9B1230: PopTmpLdAd2 var_A2
  loc_9B1233: FLdZeroAd var_AC
  loc_9B1236: FStAdFunc var_A0
  loc_9B1239: FLdRfVar var_A0
  loc_9B123C: LitStr vbNullString
  loc_9B123F: LitI2_Byte 0
  loc_9B1241: LitI2_Byte 0
  loc_9B1243: FLdRfVar var_98
  loc_9B1246: CStrVarTmp
  loc_9B1247: FStStrNoPop var_9C
  loc_9B124A: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9B124F: FStStrNoPop var_A8
  loc_9B1252: FLdPr Me
  loc_9B1255: MemStStrCopy
  loc_9B1259: FFreeStr var_9C = ""
  loc_9B1260: FFreeAd var_88 = "": var_A0 = ""
  loc_9B1269: FFree1Var var_98 = ""
  loc_9B126C: FLdPr Me
  loc_9B126F: VCallAd Control_ID_mskDesde
  loc_9B1272: FStAdFunc var_B0
  loc_9B1275: LitNothing
  loc_9B1277: CastAd
  loc_9B127A: FStAdFunc var_AC
  loc_9B127D: FLdRfVar var_AC
  loc_9B1280: FLdZeroAd var_B0
  loc_9B1283: FStAdFuncNoPop
  loc_9B1286: CastAd
  loc_9B1289: FStAdFunc var_A0
  loc_9B128C: FLdRfVar var_A0
  loc_9B128F: FLdPr Me
  loc_9B1292: MemLdRfVar from_stack_1.global_160
  loc_9B1295: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9B129A: IStI2 KeyAscii
  loc_9B129D: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9B12A8: ExitProcHresult
  loc_9B12A9: FFree1Ad mskDesde_UnknownEvent_8C3
End Sub

Private Sub cboPeriodo_Click() '9D4F74
  'Data Table: 4A0CFC
  loc_9D4E94: FLdRfVar var_8C
  loc_9D4E97: FLdPr Me
  loc_9D4E9A: VCallAd Control_ID_cboPeriodo
  loc_9D4E9D: FStAdFunc var_88
  loc_9D4EA0: FLdPr var_88
  loc_9D4EA3:  = Me.Text
  loc_9D4EA8: LitI2_Byte 1
  loc_9D4EAA: LitI2_Byte 1
  loc_9D4EAC: ILdRf var_8C
  loc_9D4EAF: CI2Str
  loc_9D4EB1: FLdRfVar var_9C
  loc_9D4EB4: ImpAdCallFPR4  = DateSerial(, , )
  loc_9D4EB9: FLdRfVar var_9C
  loc_9D4EBC: CStrVarTmp
  loc_9D4EBD: CVarStr var_AC
  loc_9D4EC0: PopAdLdVar
  loc_9D4EC1: FLdPr Me
  loc_9D4EC4: VCallAd Control_ID_mskDesde
  loc_9D4EC7: FStAdFunc var_C0
  loc_9D4ECA: FLdPr var_C0
  loc_9D4ECD: LateIdSt
  loc_9D4ED2: FFree1Str var_8C
  loc_9D4ED5: FFreeAd var_88 = ""
  loc_9D4EDC: FFreeVar var_9C = ""
  loc_9D4EE3: FLdRfVar var_8C
  loc_9D4EE6: FLdPr Me
  loc_9D4EE9: VCallAd Control_ID_cboPeriodo
  loc_9D4EEC: FStAdFunc var_88
  loc_9D4EEF: FLdPr var_88
  loc_9D4EF2:  = Me.Text
  loc_9D4EF7: FLdRfVar var_C4
  loc_9D4EFA: FLdPr Me
  loc_9D4EFD: VCallAd Control_ID_cboPeriodo
  loc_9D4F00: FStAdFunc var_C0
  loc_9D4F03: FLdPr var_C0
  loc_9D4F06:  = Me.Text
  loc_9D4F0B: LitI2_Byte &H1F
  loc_9D4F0D: LitI2_Byte &HC
  loc_9D4F0F: ILdRf var_C4
  loc_9D4F12: CI2Str
  loc_9D4F14: FLdRfVar var_9C
  loc_9D4F17: ImpAdCallFPR4  = DateSerial(, , )
  loc_9D4F1C: ImpAdLdRf MemVar_C3D04C
  loc_9D4F1F: CVarRef
  loc_9D4F24: FLdRfVar var_9C
  loc_9D4F27: ILdRf var_8C
  loc_9D4F2A: CI2Str
  loc_9D4F2C: ImpAdLdI2 MemVar_C3D064
  loc_9D4F2F: NeI2
  loc_9D4F30: CVarBoolI2 var_BC
  loc_9D4F34: FLdRfVar var_AC
  loc_9D4F37: ImpAdCallFPR4  = IIf(, , )
  loc_9D4F3C: FLdRfVar var_AC
  loc_9D4F3F: CStrVarTmp
  loc_9D4F40: CVarStr var_E4
  loc_9D4F43: PopAdLdVar
  loc_9D4F44: FLdPr Me
  loc_9D4F47: VCallAd Control_ID_mskHasta
  loc_9D4F4A: FStAdFunc var_F8
  loc_9D4F4D: FLdPr var_F8
  loc_9D4F50: LateIdSt
  loc_9D4F55: FFreeStr var_8C = ""
  loc_9D4F5C: FFreeAd var_88 = "": var_C0 = ""
  loc_9D4F65: FFreeVar var_BC = "": var_9C = "": var_AC = ""
  loc_9D4F70: ExitProcHresult
End Sub

Private Sub cmdXLS_Click() '96B67C
  'Data Table: 4A0CFC
  loc_96B660: LitI2_Byte &HFF
  loc_96B662: LitI2_Byte 0
  loc_96B664: ILdRf Me
  loc_96B667: CastAd
  loc_96B66A: FStAdFunc var_88
  loc_96B66D: FLdRfVar var_88
  loc_96B670: ImpAdCallFPR4 Proc_263_4_A28DF0(, , )
  loc_96B675: FFree1Ad var_88
  loc_96B678: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '95E528
  'Data Table: 4A0CFC
  loc_95E510: LitI2_Byte 0
  loc_95E512: ILdRf Me
  loc_95E515: CastAd
  loc_95E518: FStAdFunc var_88
  loc_95E51B: FLdRfVar var_88
  loc_95E51E: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_95E523: FFree1Ad var_88
  loc_95E526: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() '97A7A8
  'Data Table: 4A0CFC
  loc_97A778: LitVarStr var_94, "Cerrando..."
  loc_97A77D: PopAdLdVar
  loc_97A77E: FLdPr Me
  loc_97A781: VCallAd Control_ID_statusBar
  loc_97A784: FStAdFunc var_A8
  loc_97A787: FLdPr var_A8
  loc_97A78A: LateIdSt
  loc_97A78F: FFree1Ad var_A8
  loc_97A792: ILdRf Me
  loc_97A795: FStAdNoPop
  loc_97A799: ImpAdLdRf MemVar_C44F9C
  loc_97A79C: NewIfNullPr Me
  loc_97A79F: Me.Global.Unload from_stack_1
  loc_97A7A4: FFree1Ad var_A8
  loc_97A7A7: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '95E3F8
  'Data Table: 4A0CFC
  loc_95E3E0: ILdRf Me
  loc_95E3E3: CastAd
  loc_95E3E6: FStAdFunc var_88
  loc_95E3E9: FLdRfVar var_88
  loc_95E3EC: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_95E3F1: FFree1Ad var_88
  loc_95E3F4: ExitProcHresult
  loc_95E3F5: LitStr "  <tr align=""left"">"
End Sub

Private Sub CucuPersTxt_GotFocus() '94F380
  'Data Table: 4A0CFC
  loc_94F36C: FLdPr Me
  loc_94F36F: VCallAd Control_ID_CucuPersTxt
  loc_94F372: CVarAd
  loc_94F376: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94F37B: FFree1Var var_94 = ""
  loc_94F37E: ExitProcHresult
End Sub

Private Sub CucuPersTxt_KeyUp(KeyCode As Integer, Shift As Integer) 'A0C4A0
  'Data Table: 4A0CFC
  loc_A0C33C: ILdI2 Shift
  loc_A0C33F: CI4UI1
  loc_A0C340: LitI4 2
  loc_A0C345: EqI4
  loc_A0C346: ILdI2 KeyCode
  loc_A0C349: CI4UI1
  loc_A0C34A: LitI4 &H42
  loc_A0C34F: EqI4
  loc_A0C350: AndI4
  loc_A0C351: BranchF loc_A0C49C
  loc_A0C354: LitI2_Byte &HFF
  loc_A0C356: ImpAdLdRf MemVar_C3D74C
  loc_A0C359: NewIfNullPr bscProveedor
  loc_A0C35C: Call bscProveedor.MuestroAnuladosPut(from_stack_1v)
  loc_A0C361: LitNothing
  loc_A0C363: CastAd
  loc_A0C366: FStAdFuncNoPop
  loc_A0C369: FLdRfVar var_88
  loc_A0C36C: ImpAdLdRf MemVar_C3D74C
  loc_A0C36F: NewIfNullPr bscProveedor
  loc_A0C372: from_stack_1v = bscProveedor.global_4315292Get()
  loc_A0C377: FLdPr var_88
  loc_A0C37A: Call clsbase.RsFrmSet(from_stack_1v)
  loc_A0C37F: FFreeAd var_8C = ""
  loc_A0C386: LitVar_Missing var_AC
  loc_A0C389: PopAdLdVar
  loc_A0C38A: LitVarI4
  loc_A0C392: PopAdLdVar
  loc_A0C393: ImpAdLdRf MemVar_C3D74C
  loc_A0C396: NewIfNullPr bscProveedor
  loc_A0C399: bscProveedor.Show from_stack_1, from_stack_2
  loc_A0C39E: FLdRfVar var_B0
  loc_A0C3A1: FLdRfVar var_88
  loc_A0C3A4: ImpAdLdRf MemVar_C3D74C
  loc_A0C3A7: NewIfNullPr bscProveedor
  loc_A0C3AA: from_stack_1v = bscProveedor.global_4315292Get()
  loc_A0C3AF: FLdPr var_88
  loc_A0C3B2: from_stack_1 = clsbase.RecordCount
  loc_A0C3B7: ILdRf var_B0
  loc_A0C3BA: LitI4 0
  loc_A0C3BF: GtI4
  loc_A0C3C0: FFree1Ad var_88
  loc_A0C3C3: BranchF loc_A0C49C
  loc_A0C3C6: FLdRfVar var_C8
  loc_A0C3C9: FLdRfVar var_B8
  loc_A0C3CC: LitVarStr var_9C, "CucuPers"
  loc_A0C3D1: PopAdLdVar
  loc_A0C3D2: FLdRfVar var_B4
  loc_A0C3D5: FLdRfVar var_8C
  loc_A0C3D8: FLdRfVar var_88
  loc_A0C3DB: ImpAdLdRf MemVar_C3D74C
  loc_A0C3DE: NewIfNullPr bscProveedor
  loc_A0C3E1: from_stack_1v = bscProveedor.global_4315292Get()
  loc_A0C3E6: FLdPr var_88
  loc_A0C3E9: from_stack_1v = clsbase.RsFrmGet()
  loc_A0C3EE: FLdPr var_8C
  loc_A0C3F1:  = Me.Fields
  loc_A0C3F6: FLdPr var_B4
  loc_A0C3F9: from_stack_2 = Me.Item(from_stack_1)
  loc_A0C3FE: FLdPr var_B8
  loc_A0C401:  = Me.Value
  loc_A0C406: FLdRfVar var_C8
  loc_A0C409: CStrVarTmp
  loc_A0C40A: FStStrNoPop var_CC
  loc_A0C40D: FLdPr Me
  loc_A0C410: VCallAd Control_ID_CucuPersTxt
  loc_A0C413: FStAdFunc var_D0
  loc_A0C416: FLdPr var_D0
  loc_A0C419: Me.Text = from_stack_1
  loc_A0C41E: FFree1Str var_CC
  loc_A0C421: FFreeAd var_88 = "": var_8C = "": var_B4 = "": var_B8 = ""
  loc_A0C42E: FFree1Var var_C8 = ""
  loc_A0C431: FLdRfVar var_C8
  loc_A0C434: FLdRfVar var_B8
  loc_A0C437: LitVarStr var_9C, "DetaProv"
  loc_A0C43C: PopAdLdVar
  loc_A0C43D: FLdRfVar var_B4
  loc_A0C440: FLdRfVar var_8C
  loc_A0C443: FLdRfVar var_88
  loc_A0C446: ImpAdLdRf MemVar_C3D74C
  loc_A0C449: NewIfNullPr bscProveedor
  loc_A0C44C: from_stack_1v = bscProveedor.global_4315292Get()
  loc_A0C451: FLdPr var_88
  loc_A0C454: from_stack_1v = clsbase.RsFrmGet()
  loc_A0C459: FLdPr var_8C
  loc_A0C45C:  = Me.Fields
  loc_A0C461: FLdPr var_B4
  loc_A0C464: from_stack_2 = Me.Item(from_stack_1)
  loc_A0C469: FLdPr var_B8
  loc_A0C46C:  = Me.Value
  loc_A0C471: FLdRfVar var_C8
  loc_A0C474: CStrVarTmp
  loc_A0C475: FStStrNoPop var_CC
  loc_A0C478: FLdPr Me
  loc_A0C47B: VCallAd Control_ID_DetaProvLbl
  loc_A0C47E: FStAdFunc var_D0
  loc_A0C481: FLdPr var_D0
  loc_A0C484: Me.Caption = from_stack_1
  loc_A0C489: FFree1Str var_CC
  loc_A0C48C: FFreeAd var_88 = "": var_8C = "": var_B4 = "": var_B8 = ""
  loc_A0C499: FFree1Var var_C8 = ""
  loc_A0C49C: ExitProcHresult
End Sub

Private Sub CucuPersTxt_Validate(Cancel As Boolean) 'B4B2C0
  'Data Table: 4A0CFC
  loc_B4A818: FLdRfVar var_8C
  loc_B4A81B: FLdPr Me
  loc_B4A81E: VCallAd Control_ID_CucuPersTxt
  loc_B4A821: FStAdFunc var_88
  loc_B4A824: FLdPr var_88
  loc_B4A827:  = Me.Text
  loc_B4A82C: ILdRf var_8C
  loc_B4A82F: ImpAdCallI2 Trim$()
  loc_B4A834: FStStrNoPop var_90
  loc_B4A837: LitStr vbNullString
  loc_B4A83A: NeStr
  loc_B4A83C: FFreeStr var_8C = ""
  loc_B4A843: FFree1Ad var_88
  loc_B4A846: BranchF loc_B4B10D
  loc_B4A849: FLdPr Me
  loc_B4A84C: VCallAd Control_ID_CucuPersTxt
  loc_B4A84F: FStAdFunc var_88
  loc_B4A852: FLdRfVar var_88
  loc_B4A855: ImpAdCallI2 Proc_266_39_9F3844()
  loc_B4A85A: FFree1Ad var_88
  loc_B4A85D: BranchF loc_B4ACA7
  loc_B4A860: LitI2_Byte &HFF
  loc_B4A862: ImpAdLdRf MemVar_C3D74C
  loc_B4A865: NewIfNullPr bscProveedor
  loc_B4A868: Call bscProveedor.MuestroAnuladosPut(from_stack_1v)
  loc_B4A86D: LitStr "AND proveedor.CucuPers LIKE '" & Chr(37)
  loc_B4A870: FLdRfVar var_8C
  loc_B4A873: FLdPr Me
  loc_B4A876: VCallAd Control_ID_
  loc_B4A879: FStAdFunc var_88
  loc_B4A87C: FLdPr var_88
  loc_B4A87F:  = bscProveedor.TextBox.Text
  loc_B4A884: ILdRf var_8C
  loc_B4A887: ConcatStr
  loc_B4A888: FStStrNoPop var_90
  loc_B4A88B: LitStr Chr(37) & "' ORDER BY DetaProv"
  loc_B4A88E: ConcatStr
  loc_B4A88F: FStStrNoPop var_94
  loc_B4A892: ImpAdLdRf MemVar_C3D74C
  loc_B4A895: NewIfNullPr bscProveedor
  loc_B4A898: Call bscProveedor.Constructor(from_stack_1v)
  loc_B4A89D: FFreeStr var_8C = "": var_90 = ""
  loc_B4A8A6: FFree1Ad var_88
  loc_B4A8A9: FLdRfVar var_9C
  loc_B4A8AC: FLdRfVar var_98
  loc_B4A8AF: FLdRfVar var_88
  loc_B4A8B2: ImpAdLdRf MemVar_C3D74C
  loc_B4A8B5: NewIfNullPr bscProveedor
  loc_B4A8B8: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B4A8BD: FLdPr var_88
  loc_B4A8C0: from_stack_1v = clsbase.RsFrmGet()
  loc_B4A8C5: FLdPr var_98
  loc_B4A8C8:  = Me.RecordCount
  loc_B4A8CD: ILdRf var_9C
  loc_B4A8D0: LitI4 1
  loc_B4A8D5: EqI4
  loc_B4A8D6: FFreeAd var_88 = ""
  loc_B4A8DD: BranchF loc_B4AA00
  loc_B4A8E0: FLdRfVar var_C4
  loc_B4A8E3: FLdRfVar var_B4
  loc_B4A8E6: LitVarStr var_B0, "CucuPers"
  loc_B4A8EB: PopAdLdVar
  loc_B4A8EC: FLdRfVar var_A0
  loc_B4A8EF: FLdRfVar var_98
  loc_B4A8F2: FLdRfVar var_88
  loc_B4A8F5: ImpAdLdRf MemVar_C3D74C
  loc_B4A8F8: NewIfNullPr bscProveedor
  loc_B4A8FB: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B4A900: FLdPr var_88
  loc_B4A903: from_stack_1v = clsbase.RsFrmGet()
  loc_B4A908: FLdPr var_98
  loc_B4A90B:  = Me.Fields
  loc_B4A910: FLdPr var_A0
  loc_B4A913: from_stack_2 = Me.Item(from_stack_1)
  loc_B4A918: FLdPr var_B4
  loc_B4A91B:  = Me.Value
  loc_B4A920: FLdRfVar var_C4
  loc_B4A923: CStrVarTmp
  loc_B4A924: FStStrNoPop var_8C
  loc_B4A927: FLdPr Me
  loc_B4A92A: VCallAd Control_ID_CucuPersTxt
  loc_B4A92D: FStAdFunc var_C8
  loc_B4A930: FLdPr var_C8
  loc_B4A933: Me.Text = from_stack_1
  loc_B4A938: FFree1Str var_8C
  loc_B4A93B: FFreeAd var_88 = "": var_98 = "": var_A0 = "": var_B4 = ""
  loc_B4A948: FFree1Var var_C4 = ""
  loc_B4A94B: FLdRfVar var_C4
  loc_B4A94E: FLdRfVar var_B4
  loc_B4A951: LitVarStr var_B0, "DetaProv"
  loc_B4A956: PopAdLdVar
  loc_B4A957: FLdRfVar var_A0
  loc_B4A95A: FLdRfVar var_98
  loc_B4A95D: FLdRfVar var_88
  loc_B4A960: ImpAdLdRf MemVar_C3D74C
  loc_B4A963: NewIfNullPr bscProveedor
  loc_B4A966: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B4A96B: FLdPr var_88
  loc_B4A96E: from_stack_1v = clsbase.RsFrmGet()
  loc_B4A973: FLdPr var_98
  loc_B4A976:  = Me.Fields
  loc_B4A97B: FLdPr var_A0
  loc_B4A97E: from_stack_2 = Me.Item(from_stack_1)
  loc_B4A983: FLdPr var_B4
  loc_B4A986:  = Me.Value
  loc_B4A98B: FLdRfVar var_C4
  loc_B4A98E: CStrVarTmp
  loc_B4A98F: FStStrNoPop var_8C
  loc_B4A992: FLdPr Me
  loc_B4A995: VCallAd Control_ID_DetaProvLbl
  loc_B4A998: FStAdFunc var_C8
  loc_B4A99B: FLdPr var_C8
  loc_B4A99E: Me.Caption = from_stack_1
  loc_B4A9A3: FFree1Str var_8C
  loc_B4A9A6: FFreeAd var_88 = "": var_98 = "": var_A0 = "": var_B4 = ""
  loc_B4A9B3: FFree1Var var_C4 = ""
  loc_B4A9B6: LitStr vbNullString
  loc_B4A9B9: FLdPr Me
  loc_B4A9BC: MemStStrCopy
  loc_B4A9C0: FLdPr Me
  loc_B4A9C3: VCallAd Control_ID_CucuPersTxt
  loc_B4A9C6: FStAdFunc var_B4
  loc_B4A9C9: FLdPr Me
  loc_B4A9CC: VCallAd Control_ID_DetaProvLbl
  loc_B4A9CF: FStAdFunc var_A0
  loc_B4A9D2: FLdRfVar var_A0
  loc_B4A9D5: FLdZeroAd var_B4
  loc_B4A9D8: FStAdFuncNoPop
  loc_B4A9DB: CastAd
  loc_B4A9DE: FStAdFunc var_98
  loc_B4A9E1: FLdRfVar var_98
  loc_B4A9E4: FLdPr Me
  loc_B4A9E7: MemLdRfVar from_stack_1.global_160
  loc_B4A9EA: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B4A9EF: IStI2 Cancel
  loc_B4A9F2: FFreeAd var_88 = "": var_98 = "": var_A0 = ""
  loc_B4A9FD: Branch loc_B4ACA4
  loc_B4AA00: FLdRfVar var_9C
  loc_B4AA03: FLdRfVar var_98
  loc_B4AA06: FLdRfVar var_88
  loc_B4AA09: ImpAdLdRf MemVar_C3D74C
  loc_B4AA0C: NewIfNullPr bscProveedor
  loc_B4AA0F: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B4AA14: FLdPr var_88
  loc_B4AA17: from_stack_1v = clsbase.RsFrmGet()
  loc_B4AA1C: FLdPr var_98
  loc_B4AA1F:  = Me.RecordCount
  loc_B4AA24: ILdRf var_9C
  loc_B4AA27: LitI4 1
  loc_B4AA2C: GtI4
  loc_B4AA2D: FFreeAd var_88 = ""
  loc_B4AA34: BranchF loc_B4AC0F
  loc_B4AA37: LitVar_Missing var_D8
  loc_B4AA3A: PopAdLdVar
  loc_B4AA3B: LitVarI4
  loc_B4AA43: PopAdLdVar
  loc_B4AA44: ImpAdLdRf MemVar_C3D74C
  loc_B4AA47: NewIfNullPr bscProveedor
  loc_B4AA4A: bscProveedor.Show from_stack_1, from_stack_2
  loc_B4AA4F: FLdRfVar var_9C
  loc_B4AA52: FLdRfVar var_88
  loc_B4AA55: ImpAdLdRf MemVar_C3D74C
  loc_B4AA58: NewIfNullPr bscProveedor
  loc_B4AA5B: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B4AA60: FLdPr var_88
  loc_B4AA63: from_stack_1 = clsbase.RecordCount
  loc_B4AA68: ILdRf var_9C
  loc_B4AA6B: LitI4 0
  loc_B4AA70: GtI4
  loc_B4AA71: FFree1Ad var_88
  loc_B4AA74: BranchF loc_B4AB97
  loc_B4AA77: FLdRfVar var_C4
  loc_B4AA7A: FLdRfVar var_B4
  loc_B4AA7D: LitVarStr var_B0, "CucuPers"
  loc_B4AA82: PopAdLdVar
  loc_B4AA83: FLdRfVar var_A0
  loc_B4AA86: FLdRfVar var_98
  loc_B4AA89: FLdRfVar var_88
  loc_B4AA8C: ImpAdLdRf MemVar_C3D74C
  loc_B4AA8F: NewIfNullPr bscProveedor
  loc_B4AA92: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B4AA97: FLdPr var_88
  loc_B4AA9A: from_stack_1v = clsbase.RsFrmGet()
  loc_B4AA9F: FLdPr var_98
  loc_B4AAA2:  = Me.Fields
  loc_B4AAA7: FLdPr var_A0
  loc_B4AAAA: from_stack_2 = Me.Item(from_stack_1)
  loc_B4AAAF: FLdPr var_B4
  loc_B4AAB2:  = Me.Value
  loc_B4AAB7: FLdRfVar var_C4
  loc_B4AABA: CStrVarTmp
  loc_B4AABB: FStStrNoPop var_8C
  loc_B4AABE: FLdPr Me
  loc_B4AAC1: VCallAd Control_ID_CucuPersTxt
  loc_B4AAC4: FStAdFunc var_C8
  loc_B4AAC7: FLdPr var_C8
  loc_B4AACA: Me.Text = from_stack_1
  loc_B4AACF: FFree1Str var_8C
  loc_B4AAD2: FFreeAd var_88 = "": var_98 = "": var_A0 = "": var_B4 = ""
  loc_B4AADF: FFree1Var var_C4 = ""
  loc_B4AAE2: FLdRfVar var_C4
  loc_B4AAE5: FLdRfVar var_B4
  loc_B4AAE8: LitVarStr var_B0, "DetaProv"
  loc_B4AAED: PopAdLdVar
  loc_B4AAEE: FLdRfVar var_A0
  loc_B4AAF1: FLdRfVar var_98
  loc_B4AAF4: FLdRfVar var_88
  loc_B4AAF7: ImpAdLdRf MemVar_C3D74C
  loc_B4AAFA: NewIfNullPr bscProveedor
  loc_B4AAFD: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B4AB02: FLdPr var_88
  loc_B4AB05: from_stack_1v = clsbase.RsFrmGet()
  loc_B4AB0A: FLdPr var_98
  loc_B4AB0D:  = Me.Fields
  loc_B4AB12: FLdPr var_A0
  loc_B4AB15: from_stack_2 = Me.Item(from_stack_1)
  loc_B4AB1A: FLdPr var_B4
  loc_B4AB1D:  = Me.Value
  loc_B4AB22: FLdRfVar var_C4
  loc_B4AB25: CStrVarTmp
  loc_B4AB26: FStStrNoPop var_8C
  loc_B4AB29: FLdPr Me
  loc_B4AB2C: VCallAd Control_ID_DetaProvLbl
  loc_B4AB2F: FStAdFunc var_C8
  loc_B4AB32: FLdPr var_C8
  loc_B4AB35: Me.Caption = from_stack_1
  loc_B4AB3A: FFree1Str var_8C
  loc_B4AB3D: FFreeAd var_88 = "": var_98 = "": var_A0 = "": var_B4 = ""
  loc_B4AB4A: FFree1Var var_C4 = ""
  loc_B4AB4D: LitStr vbNullString
  loc_B4AB50: FLdPr Me
  loc_B4AB53: MemStStrCopy
  loc_B4AB57: FLdPr Me
  loc_B4AB5A: VCallAd Control_ID_CucuPersTxt
  loc_B4AB5D: FStAdFunc var_B4
  loc_B4AB60: FLdPr Me
  loc_B4AB63: VCallAd Control_ID_DetaProvLbl
  loc_B4AB66: FStAdFunc var_A0
  loc_B4AB69: FLdRfVar var_A0
  loc_B4AB6C: FLdZeroAd var_B4
  loc_B4AB6F: FStAdFuncNoPop
  loc_B4AB72: CastAd
  loc_B4AB75: FStAdFunc var_98
  loc_B4AB78: FLdRfVar var_98
  loc_B4AB7B: FLdPr Me
  loc_B4AB7E: MemLdRfVar from_stack_1.global_160
  loc_B4AB81: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B4AB86: IStI2 Cancel
  loc_B4AB89: FFreeAd var_88 = "": var_98 = "": var_A0 = ""
  loc_B4AB94: Branch loc_B4AC0C
  loc_B4AB97: LitStr vbNullString
  loc_B4AB9A: FLdPr Me
  loc_B4AB9D: VCallAd Control_ID_CucuPersTxt
  loc_B4ABA0: FStAdFunc var_88
  loc_B4ABA3: FLdPr var_88
  loc_B4ABA6: Me.Text = from_stack_1
  loc_B4ABAB: FFree1Ad var_88
  loc_B4ABAE: LitStr vbNullString
  loc_B4ABB1: FLdPr Me
  loc_B4ABB4: VCallAd Control_ID_DetaProvLbl
  loc_B4ABB7: FStAdFunc var_88
  loc_B4ABBA: FLdPr var_88
  loc_B4ABBD: Me.Caption = from_stack_1
  loc_B4ABC2: FFree1Ad var_88
  loc_B4ABC5: LitStr "El Proveedor NO EXISTE. Verifique..."
  loc_B4ABC8: FLdPr Me
  loc_B4ABCB: MemStStrCopy
  loc_B4ABCF: FLdPr Me
  loc_B4ABD2: VCallAd Control_ID_CucuPersTxt
  loc_B4ABD5: FStAdFunc var_B4
  loc_B4ABD8: FLdPr Me
  loc_B4ABDB: VCallAd Control_ID_DetaProvLbl
  loc_B4ABDE: FStAdFunc var_A0
  loc_B4ABE1: FLdRfVar var_A0
  loc_B4ABE4: FLdZeroAd var_B4
  loc_B4ABE7: FStAdFuncNoPop
  loc_B4ABEA: CastAd
  loc_B4ABED: FStAdFunc var_98
  loc_B4ABF0: FLdRfVar var_98
  loc_B4ABF3: FLdPr Me
  loc_B4ABF6: MemLdRfVar from_stack_1.global_160
  loc_B4ABF9: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B4ABFE: IStI2 Cancel
  loc_B4AC01: FFreeAd var_88 = "": var_98 = "": var_A0 = ""
  loc_B4AC0C: Branch loc_B4ACA4
  loc_B4AC0F: FLdRfVar var_9C
  loc_B4AC12: FLdRfVar var_98
  loc_B4AC15: FLdRfVar var_88
  loc_B4AC18: ImpAdLdRf MemVar_C3D74C
  loc_B4AC1B: NewIfNullPr bscProveedor
  loc_B4AC1E: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B4AC23: FLdPr var_88
  loc_B4AC26: from_stack_1v = clsbase.RsFrmGet()
  loc_B4AC2B: FLdPr var_98
  loc_B4AC2E:  = Me.RecordCount
  loc_B4AC33: ILdRf var_9C
  loc_B4AC36: LitI4 1
  loc_B4AC3B: LtI4
  loc_B4AC3C: FFreeAd var_88 = ""
  loc_B4AC43: BranchF loc_B4ACA4
  loc_B4AC46: LitStr vbNullString
  loc_B4AC49: FLdPr Me
  loc_B4AC4C: VCallAd Control_ID_DetaProvLbl
  loc_B4AC4F: FStAdFunc var_88
  loc_B4AC52: FLdPr var_88
  loc_B4AC55: Me.Caption = from_stack_1
  loc_B4AC5A: FFree1Ad var_88
  loc_B4AC5D: LitStr "El Proveedor NO EXISTE. Verifique..."
  loc_B4AC60: FLdPr Me
  loc_B4AC63: MemStStrCopy
  loc_B4AC67: FLdPr Me
  loc_B4AC6A: VCallAd Control_ID_CucuPersTxt
  loc_B4AC6D: FStAdFunc var_B4
  loc_B4AC70: FLdPr Me
  loc_B4AC73: VCallAd Control_ID_DetaProvLbl
  loc_B4AC76: FStAdFunc var_A0
  loc_B4AC79: FLdRfVar var_A0
  loc_B4AC7C: FLdZeroAd var_B4
  loc_B4AC7F: FStAdFuncNoPop
  loc_B4AC82: CastAd
  loc_B4AC85: FStAdFunc var_98
  loc_B4AC88: FLdRfVar var_98
  loc_B4AC8B: FLdPr Me
  loc_B4AC8E: MemLdRfVar from_stack_1.global_160
  loc_B4AC91: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B4AC96: IStI2 Cancel
  loc_B4AC99: FFreeAd var_88 = "": var_98 = "": var_A0 = ""
  loc_B4ACA4: Branch loc_B4B10A
  loc_B4ACA7: LitI2_Byte &HFF
  loc_B4ACA9: ImpAdLdRf MemVar_C3D74C
  loc_B4ACAC: NewIfNullPr bscProveedor
  loc_B4ACAF: Call bscProveedor.MuestroAnuladosPut(from_stack_1v)
  loc_B4ACB4: FLdRfVar var_8C
  loc_B4ACB7: FLdPr Me
  loc_B4ACBA: VCallAd Control_ID_
  loc_B4ACBD: FStAdFunc var_88
  loc_B4ACC0: FLdPr var_88
  loc_B4ACC3:  = bscProveedor.TextBox.Text
  loc_B4ACC8: LitStr " AND DetaProv LIKE '" & Chr(37)
  loc_B4ACCB: LitI4 0
  loc_B4ACD0: LitI4 -1
  loc_B4ACD5: LitI4 1
  loc_B4ACDA: LitStr Chr(37)
  loc_B4ACDD: LitStr " "
  loc_B4ACE0: ILdRf var_8C
  loc_B4ACE3: ImpAdCallI2 Replace(, , , , , )
  loc_B4ACE8: FStStrNoPop var_90
  loc_B4ACEB: ConcatStr
  loc_B4ACEC: FStStrNoPop var_94
  loc_B4ACEF: LitStr Chr(37) & "' ORDER BY DetaProv"
  loc_B4ACF2: ConcatStr
  loc_B4ACF3: FStStrNoPop var_DC
  loc_B4ACF6: ImpAdLdRf MemVar_C3D74C
  loc_B4ACF9: NewIfNullPr bscProveedor
  loc_B4ACFC: Call bscProveedor.Constructor(from_stack_1v)
  loc_B4AD01: FFreeStr var_8C = "": var_90 = "": var_94 = ""
  loc_B4AD0C: FFree1Ad var_88
  loc_B4AD0F: FLdRfVar var_9C
  loc_B4AD12: FLdRfVar var_98
  loc_B4AD15: FLdRfVar var_88
  loc_B4AD18: ImpAdLdRf MemVar_C3D74C
  loc_B4AD1B: NewIfNullPr bscProveedor
  loc_B4AD1E: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B4AD23: FLdPr var_88
  loc_B4AD26: from_stack_1v = clsbase.RsFrmGet()
  loc_B4AD2B: FLdPr var_98
  loc_B4AD2E:  = Me.RecordCount
  loc_B4AD33: ILdRf var_9C
  loc_B4AD36: LitI4 1
  loc_B4AD3B: EqI4
  loc_B4AD3C: FFreeAd var_88 = ""
  loc_B4AD43: BranchF loc_B4AE66
  loc_B4AD46: FLdRfVar var_C4
  loc_B4AD49: FLdRfVar var_B4
  loc_B4AD4C: LitVarStr var_B0, "CucuPers"
  loc_B4AD51: PopAdLdVar
  loc_B4AD52: FLdRfVar var_A0
  loc_B4AD55: FLdRfVar var_98
  loc_B4AD58: FLdRfVar var_88
  loc_B4AD5B: ImpAdLdRf MemVar_C3D74C
  loc_B4AD5E: NewIfNullPr bscProveedor
  loc_B4AD61: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B4AD66: FLdPr var_88
  loc_B4AD69: from_stack_1v = clsbase.RsFrmGet()
  loc_B4AD6E: FLdPr var_98
  loc_B4AD71:  = Me.Fields
  loc_B4AD76: FLdPr var_A0
  loc_B4AD79: from_stack_2 = Me.Item(from_stack_1)
  loc_B4AD7E: FLdPr var_B4
  loc_B4AD81:  = Me.Value
  loc_B4AD86: FLdRfVar var_C4
  loc_B4AD89: CStrVarTmp
  loc_B4AD8A: FStStrNoPop var_8C
  loc_B4AD8D: FLdPr Me
  loc_B4AD90: VCallAd Control_ID_CucuPersTxt
  loc_B4AD93: FStAdFunc var_C8
  loc_B4AD96: FLdPr var_C8
  loc_B4AD99: Me.Text = from_stack_1
  loc_B4AD9E: FFree1Str var_8C
  loc_B4ADA1: FFreeAd var_88 = "": var_98 = "": var_A0 = "": var_B4 = ""
  loc_B4ADAE: FFree1Var var_C4 = ""
  loc_B4ADB1: FLdRfVar var_C4
  loc_B4ADB4: FLdRfVar var_B4
  loc_B4ADB7: LitVarStr var_B0, "DetaProv"
  loc_B4ADBC: PopAdLdVar
  loc_B4ADBD: FLdRfVar var_A0
  loc_B4ADC0: FLdRfVar var_98
  loc_B4ADC3: FLdRfVar var_88
  loc_B4ADC6: ImpAdLdRf MemVar_C3D74C
  loc_B4ADC9: NewIfNullPr bscProveedor
  loc_B4ADCC: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B4ADD1: FLdPr var_88
  loc_B4ADD4: from_stack_1v = clsbase.RsFrmGet()
  loc_B4ADD9: FLdPr var_98
  loc_B4ADDC:  = Me.Fields
  loc_B4ADE1: FLdPr var_A0
  loc_B4ADE4: from_stack_2 = Me.Item(from_stack_1)
  loc_B4ADE9: FLdPr var_B4
  loc_B4ADEC:  = Me.Value
  loc_B4ADF1: FLdRfVar var_C4
  loc_B4ADF4: CStrVarTmp
  loc_B4ADF5: FStStrNoPop var_8C
  loc_B4ADF8: FLdPr Me
  loc_B4ADFB: VCallAd Control_ID_DetaProvLbl
  loc_B4ADFE: FStAdFunc var_C8
  loc_B4AE01: FLdPr var_C8
  loc_B4AE04: Me.Caption = from_stack_1
  loc_B4AE09: FFree1Str var_8C
  loc_B4AE0C: FFreeAd var_88 = "": var_98 = "": var_A0 = "": var_B4 = ""
  loc_B4AE19: FFree1Var var_C4 = ""
  loc_B4AE1C: LitStr vbNullString
  loc_B4AE1F: FLdPr Me
  loc_B4AE22: MemStStrCopy
  loc_B4AE26: FLdPr Me
  loc_B4AE29: VCallAd Control_ID_CucuPersTxt
  loc_B4AE2C: FStAdFunc var_B4
  loc_B4AE2F: FLdPr Me
  loc_B4AE32: VCallAd Control_ID_DetaProvLbl
  loc_B4AE35: FStAdFunc var_A0
  loc_B4AE38: FLdRfVar var_A0
  loc_B4AE3B: FLdZeroAd var_B4
  loc_B4AE3E: FStAdFuncNoPop
  loc_B4AE41: CastAd
  loc_B4AE44: FStAdFunc var_98
  loc_B4AE47: FLdRfVar var_98
  loc_B4AE4A: FLdPr Me
  loc_B4AE4D: MemLdRfVar from_stack_1.global_160
  loc_B4AE50: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B4AE55: IStI2 Cancel
  loc_B4AE58: FFreeAd var_88 = "": var_98 = "": var_A0 = ""
  loc_B4AE63: Branch loc_B4B10A
  loc_B4AE66: FLdRfVar var_9C
  loc_B4AE69: FLdRfVar var_98
  loc_B4AE6C: FLdRfVar var_88
  loc_B4AE6F: ImpAdLdRf MemVar_C3D74C
  loc_B4AE72: NewIfNullPr bscProveedor
  loc_B4AE75: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B4AE7A: FLdPr var_88
  loc_B4AE7D: from_stack_1v = clsbase.RsFrmGet()
  loc_B4AE82: FLdPr var_98
  loc_B4AE85:  = Me.RecordCount
  loc_B4AE8A: ILdRf var_9C
  loc_B4AE8D: LitI4 1
  loc_B4AE92: GtI4
  loc_B4AE93: FFreeAd var_88 = ""
  loc_B4AE9A: BranchF loc_B4B075
  loc_B4AE9D: LitVar_Missing var_D8
  loc_B4AEA0: PopAdLdVar
  loc_B4AEA1: LitVarI4
  loc_B4AEA9: PopAdLdVar
  loc_B4AEAA: ImpAdLdRf MemVar_C3D74C
  loc_B4AEAD: NewIfNullPr bscProveedor
  loc_B4AEB0: bscProveedor.Show from_stack_1, from_stack_2
  loc_B4AEB5: FLdRfVar var_9C
  loc_B4AEB8: FLdRfVar var_88
  loc_B4AEBB: ImpAdLdRf MemVar_C3D74C
  loc_B4AEBE: NewIfNullPr bscProveedor
  loc_B4AEC1: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B4AEC6: FLdPr var_88
  loc_B4AEC9: from_stack_1 = clsbase.RecordCount
  loc_B4AECE: ILdRf var_9C
  loc_B4AED1: LitI4 0
  loc_B4AED6: GtI4
  loc_B4AED7: FFree1Ad var_88
  loc_B4AEDA: BranchF loc_B4AFFD
  loc_B4AEDD: FLdRfVar var_C4
  loc_B4AEE0: FLdRfVar var_B4
  loc_B4AEE3: LitVarStr var_B0, "CucuPers"
  loc_B4AEE8: PopAdLdVar
  loc_B4AEE9: FLdRfVar var_A0
  loc_B4AEEC: FLdRfVar var_98
  loc_B4AEEF: FLdRfVar var_88
  loc_B4AEF2: ImpAdLdRf MemVar_C3D74C
  loc_B4AEF5: NewIfNullPr bscProveedor
  loc_B4AEF8: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B4AEFD: FLdPr var_88
  loc_B4AF00: from_stack_1v = clsbase.RsFrmGet()
  loc_B4AF05: FLdPr var_98
  loc_B4AF08:  = Me.Fields
  loc_B4AF0D: FLdPr var_A0
  loc_B4AF10: from_stack_2 = Me.Item(from_stack_1)
  loc_B4AF15: FLdPr var_B4
  loc_B4AF18:  = Me.Value
  loc_B4AF1D: FLdRfVar var_C4
  loc_B4AF20: CStrVarTmp
  loc_B4AF21: FStStrNoPop var_8C
  loc_B4AF24: FLdPr Me
  loc_B4AF27: VCallAd Control_ID_CucuPersTxt
  loc_B4AF2A: FStAdFunc var_C8
  loc_B4AF2D: FLdPr var_C8
  loc_B4AF30: Me.Text = from_stack_1
  loc_B4AF35: FFree1Str var_8C
  loc_B4AF38: FFreeAd var_88 = "": var_98 = "": var_A0 = "": var_B4 = ""
  loc_B4AF45: FFree1Var var_C4 = ""
  loc_B4AF48: FLdRfVar var_C4
  loc_B4AF4B: FLdRfVar var_B4
  loc_B4AF4E: LitVarStr var_B0, "DetaProv"
  loc_B4AF53: PopAdLdVar
  loc_B4AF54: FLdRfVar var_A0
  loc_B4AF57: FLdRfVar var_98
  loc_B4AF5A: FLdRfVar var_88
  loc_B4AF5D: ImpAdLdRf MemVar_C3D74C
  loc_B4AF60: NewIfNullPr bscProveedor
  loc_B4AF63: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B4AF68: FLdPr var_88
  loc_B4AF6B: from_stack_1v = clsbase.RsFrmGet()
  loc_B4AF70: FLdPr var_98
  loc_B4AF73:  = Me.Fields
  loc_B4AF78: FLdPr var_A0
  loc_B4AF7B: from_stack_2 = Me.Item(from_stack_1)
  loc_B4AF80: FLdPr var_B4
  loc_B4AF83:  = Me.Value
  loc_B4AF88: FLdRfVar var_C4
  loc_B4AF8B: CStrVarTmp
  loc_B4AF8C: FStStrNoPop var_8C
  loc_B4AF8F: FLdPr Me
  loc_B4AF92: VCallAd Control_ID_DetaProvLbl
  loc_B4AF95: FStAdFunc var_C8
  loc_B4AF98: FLdPr var_C8
  loc_B4AF9B: Me.Caption = from_stack_1
  loc_B4AFA0: FFree1Str var_8C
  loc_B4AFA3: FFreeAd var_88 = "": var_98 = "": var_A0 = "": var_B4 = ""
  loc_B4AFB0: FFree1Var var_C4 = ""
  loc_B4AFB3: LitStr vbNullString
  loc_B4AFB6: FLdPr Me
  loc_B4AFB9: MemStStrCopy
  loc_B4AFBD: FLdPr Me
  loc_B4AFC0: VCallAd Control_ID_CucuPersTxt
  loc_B4AFC3: FStAdFunc var_B4
  loc_B4AFC6: FLdPr Me
  loc_B4AFC9: VCallAd Control_ID_DetaProvLbl
  loc_B4AFCC: FStAdFunc var_A0
  loc_B4AFCF: FLdRfVar var_A0
  loc_B4AFD2: FLdZeroAd var_B4
  loc_B4AFD5: FStAdFuncNoPop
  loc_B4AFD8: CastAd
  loc_B4AFDB: FStAdFunc var_98
  loc_B4AFDE: FLdRfVar var_98
  loc_B4AFE1: FLdPr Me
  loc_B4AFE4: MemLdRfVar from_stack_1.global_160
  loc_B4AFE7: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B4AFEC: IStI2 Cancel
  loc_B4AFEF: FFreeAd var_88 = "": var_98 = "": var_A0 = ""
  loc_B4AFFA: Branch loc_B4B072
  loc_B4AFFD: LitStr vbNullString
  loc_B4B000: FLdPr Me
  loc_B4B003: VCallAd Control_ID_CucuPersTxt
  loc_B4B006: FStAdFunc var_88
  loc_B4B009: FLdPr var_88
  loc_B4B00C: Me.Text = from_stack_1
  loc_B4B011: FFree1Ad var_88
  loc_B4B014: LitStr vbNullString
  loc_B4B017: FLdPr Me
  loc_B4B01A: VCallAd Control_ID_DetaProvLbl
  loc_B4B01D: FStAdFunc var_88
  loc_B4B020: FLdPr var_88
  loc_B4B023: Me.Caption = from_stack_1
  loc_B4B028: FFree1Ad var_88
  loc_B4B02B: LitStr "El Proveedor NO EXISTE. Verique..."
  loc_B4B02E: FLdPr Me
  loc_B4B031: MemStStrCopy
  loc_B4B035: FLdPr Me
  loc_B4B038: VCallAd Control_ID_CucuPersTxt
  loc_B4B03B: FStAdFunc var_B4
  loc_B4B03E: FLdPr Me
  loc_B4B041: VCallAd Control_ID_DetaProvLbl
  loc_B4B044: FStAdFunc var_A0
  loc_B4B047: FLdRfVar var_A0
  loc_B4B04A: FLdZeroAd var_B4
  loc_B4B04D: FStAdFuncNoPop
  loc_B4B050: CastAd
  loc_B4B053: FStAdFunc var_98
  loc_B4B056: FLdRfVar var_98
  loc_B4B059: FLdPr Me
  loc_B4B05C: MemLdRfVar from_stack_1.global_160
  loc_B4B05F: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B4B064: IStI2 Cancel
  loc_B4B067: FFreeAd var_88 = "": var_98 = "": var_A0 = ""
  loc_B4B072: Branch loc_B4B10A
  loc_B4B075: FLdRfVar var_9C
  loc_B4B078: FLdRfVar var_98
  loc_B4B07B: FLdRfVar var_88
  loc_B4B07E: ImpAdLdRf MemVar_C3D74C
  loc_B4B081: NewIfNullPr bscProveedor
  loc_B4B084: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B4B089: FLdPr var_88
  loc_B4B08C: from_stack_1v = clsbase.RsFrmGet()
  loc_B4B091: FLdPr var_98
  loc_B4B094:  = Me.RecordCount
  loc_B4B099: ILdRf var_9C
  loc_B4B09C: LitI4 1
  loc_B4B0A1: LtI4
  loc_B4B0A2: FFreeAd var_88 = ""
  loc_B4B0A9: BranchF loc_B4B10A
  loc_B4B0AC: LitStr vbNullString
  loc_B4B0AF: FLdPr Me
  loc_B4B0B2: VCallAd Control_ID_DetaProvLbl
  loc_B4B0B5: FStAdFunc var_88
  loc_B4B0B8: FLdPr var_88
  loc_B4B0BB: Me.Caption = from_stack_1
  loc_B4B0C0: FFree1Ad var_88
  loc_B4B0C3: LitStr "El Proveedor NO EXISTE. Verique..."
  loc_B4B0C6: FLdPr Me
  loc_B4B0C9: MemStStrCopy
  loc_B4B0CD: FLdPr Me
  loc_B4B0D0: VCallAd Control_ID_CucuPersTxt
  loc_B4B0D3: FStAdFunc var_B4
  loc_B4B0D6: FLdPr Me
  loc_B4B0D9: VCallAd Control_ID_DetaProvLbl
  loc_B4B0DC: FStAdFunc var_A0
  loc_B4B0DF: FLdRfVar var_A0
  loc_B4B0E2: FLdZeroAd var_B4
  loc_B4B0E5: FStAdFuncNoPop
  loc_B4B0E8: CastAd
  loc_B4B0EB: FStAdFunc var_98
  loc_B4B0EE: FLdRfVar var_98
  loc_B4B0F1: FLdPr Me
  loc_B4B0F4: MemLdRfVar from_stack_1.global_160
  loc_B4B0F7: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B4B0FC: IStI2 Cancel
  loc_B4B0FF: FFreeAd var_88 = "": var_98 = "": var_A0 = ""
  loc_B4B10A: Branch loc_B4B2BE
  loc_B4B10D: LitI2_Byte &HFF
  loc_B4B10F: ImpAdLdRf MemVar_C3D74C
  loc_B4B112: NewIfNullPr bscProveedor
  loc_B4B115: Call bscProveedor.MuestroAnuladosPut(from_stack_1v)
  loc_B4B11A: LitNothing
  loc_B4B11C: CastAd
  loc_B4B11F: FStAdFuncNoPop
  loc_B4B122: ImpAdLdRf MemVar_C3D74C
  loc_B4B125: NewIfNullPr bscProveedor
  loc_B4B128: Call bscProveedor.global_4315292Set(from_stack_1v)
  loc_B4B12D: FFree1Ad var_88
  loc_B4B130: LitVar_Missing var_D8
  loc_B4B133: PopAdLdVar
  loc_B4B134: LitVarI4
  loc_B4B13C: PopAdLdVar
  loc_B4B13D: ImpAdLdRf MemVar_C3D74C
  loc_B4B140: NewIfNullPr bscProveedor
  loc_B4B143: bscProveedor.Show from_stack_1, from_stack_2
  loc_B4B148: FLdRfVar var_9C
  loc_B4B14B: FLdRfVar var_88
  loc_B4B14E: ImpAdLdRf MemVar_C3D74C
  loc_B4B151: NewIfNullPr bscProveedor
  loc_B4B154: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B4B159: FLdPr var_88
  loc_B4B15C: from_stack_1 = clsbase.RecordCount
  loc_B4B161: ILdRf var_9C
  loc_B4B164: LitI4 0
  loc_B4B169: GtI4
  loc_B4B16A: FFree1Ad var_88
  loc_B4B16D: BranchF loc_B4B249
  loc_B4B170: FLdRfVar var_C4
  loc_B4B173: FLdRfVar var_B4
  loc_B4B176: LitVarStr var_B0, "CucuPers"
  loc_B4B17B: PopAdLdVar
  loc_B4B17C: FLdRfVar var_A0
  loc_B4B17F: FLdRfVar var_98
  loc_B4B182: FLdRfVar var_88
  loc_B4B185: ImpAdLdRf MemVar_C3D74C
  loc_B4B188: NewIfNullPr bscProveedor
  loc_B4B18B: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B4B190: FLdPr var_88
  loc_B4B193: from_stack_1v = clsbase.RsFrmGet()
  loc_B4B198: FLdPr var_98
  loc_B4B19B:  = Me.Fields
  loc_B4B1A0: FLdPr var_A0
  loc_B4B1A3: from_stack_2 = Me.Item(from_stack_1)
  loc_B4B1A8: FLdPr var_B4
  loc_B4B1AB:  = Me.Value
  loc_B4B1B0: FLdRfVar var_C4
  loc_B4B1B3: CStrVarTmp
  loc_B4B1B4: FStStrNoPop var_8C
  loc_B4B1B7: FLdPr Me
  loc_B4B1BA: VCallAd Control_ID_CucuPersTxt
  loc_B4B1BD: FStAdFunc var_C8
  loc_B4B1C0: FLdPr var_C8
  loc_B4B1C3: Me.Text = from_stack_1
  loc_B4B1C8: FFree1Str var_8C
  loc_B4B1CB: FFreeAd var_88 = "": var_98 = "": var_A0 = "": var_B4 = ""
  loc_B4B1D8: FFree1Var var_C4 = ""
  loc_B4B1DB: FLdRfVar var_C4
  loc_B4B1DE: FLdRfVar var_B4
  loc_B4B1E1: LitVarStr var_B0, "DetaProv"
  loc_B4B1E6: PopAdLdVar
  loc_B4B1E7: FLdRfVar var_A0
  loc_B4B1EA: FLdRfVar var_98
  loc_B4B1ED: FLdRfVar var_88
  loc_B4B1F0: ImpAdLdRf MemVar_C3D74C
  loc_B4B1F3: NewIfNullPr bscProveedor
  loc_B4B1F6: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B4B1FB: FLdPr var_88
  loc_B4B1FE: from_stack_1v = clsbase.RsFrmGet()
  loc_B4B203: FLdPr var_98
  loc_B4B206:  = Me.Fields
  loc_B4B20B: FLdPr var_A0
  loc_B4B20E: from_stack_2 = Me.Item(from_stack_1)
  loc_B4B213: FLdPr var_B4
  loc_B4B216:  = Me.Value
  loc_B4B21B: FLdRfVar var_C4
  loc_B4B21E: CStrVarTmp
  loc_B4B21F: FStStrNoPop var_8C
  loc_B4B222: FLdPr Me
  loc_B4B225: VCallAd Control_ID_DetaProvLbl
  loc_B4B228: FStAdFunc var_C8
  loc_B4B22B: FLdPr var_C8
  loc_B4B22E: Me.Caption = from_stack_1
  loc_B4B233: FFree1Str var_8C
  loc_B4B236: FFreeAd var_88 = "": var_98 = "": var_A0 = "": var_B4 = ""
  loc_B4B243: FFree1Var var_C4 = ""
  loc_B4B246: Branch loc_B4B2BE
  loc_B4B249: LitStr vbNullString
  loc_B4B24C: FLdPr Me
  loc_B4B24F: VCallAd Control_ID_CucuPersTxt
  loc_B4B252: FStAdFunc var_88
  loc_B4B255: FLdPr var_88
  loc_B4B258: Me.Text = from_stack_1
  loc_B4B25D: FFree1Ad var_88
  loc_B4B260: LitStr vbNullString
  loc_B4B263: FLdPr Me
  loc_B4B266: VCallAd Control_ID_DetaProvLbl
  loc_B4B269: FStAdFunc var_88
  loc_B4B26C: FLdPr var_88
  loc_B4B26F: Me.Caption = from_stack_1
  loc_B4B274: FFree1Ad var_88
  loc_B4B277: LitStr "El Proveedor NO EXISTE. Verifique..."
  loc_B4B27A: FLdPr Me
  loc_B4B27D: MemStStrCopy
  loc_B4B281: FLdPr Me
  loc_B4B284: VCallAd Control_ID_CucuPersTxt
  loc_B4B287: FStAdFunc var_B4
  loc_B4B28A: FLdPr Me
  loc_B4B28D: VCallAd Control_ID_DetaProvLbl
  loc_B4B290: FStAdFunc var_A0
  loc_B4B293: FLdRfVar var_A0
  loc_B4B296: FLdZeroAd var_B4
  loc_B4B299: FStAdFuncNoPop
  loc_B4B29C: CastAd
  loc_B4B29F: FStAdFunc var_98
  loc_B4B2A2: FLdRfVar var_98
  loc_B4B2A5: FLdPr Me
  loc_B4B2A8: MemLdRfVar from_stack_1.global_160
  loc_B4B2AB: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B4B2B0: IStI2 Cancel
  loc_B4B2B3: FFreeAd var_88 = "": var_98 = "": var_A0 = ""
  loc_B4B2BE: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '98AA54
  'Data Table: 4A0CFC
  loc_98AA1C: FLdPr Me
  loc_98AA1F: VCallAd Control_ID_statusBar
  loc_98AA22: FStAdFunc var_88
  loc_98AA25: FLdPr var_88
  loc_98AA28: LateIdLdVar var_98 DispID_1 0
  loc_98AA2F: CStrVarTmp
  loc_98AA30: CVarStr var_A8
  loc_98AA33: PopAdLdVar
  loc_98AA34: FLdPr Me
  loc_98AA37: VCallAd Control_ID_statusBar
  loc_98AA3A: FStAdFunc var_BC
  loc_98AA3D: FLdPr var_BC
  loc_98AA40: LateIdSt
  loc_98AA45: FFreeAd var_88 = ""
  loc_98AA4C: FFreeVar var_98 = ""
  loc_98AA53: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() '9CFA94
  'Data Table: 4A0CFC
  loc_9CF9B0: LitI2_Byte &HFF
  loc_9CF9B2: FLdPr Me
  loc_9CF9B5: MemStI2 bLogos
  loc_9CF9B8: LitI2_Byte 0
  loc_9CF9BA: FLdPr Me
  loc_9CF9BD: MemStI2 bGenerado
  loc_9CF9C0: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_9CF9C5: ImpAdLdI2 MemVar_C3D064
  loc_9CF9C8: CStrUI1
  loc_9CF9CA: FStStrNoPop var_88
  loc_9CF9CD: FLdPr Me
  loc_9CF9D0: VCallAd Control_ID_cboPeriodo
  loc_9CF9D3: FStAdFunc var_8C
  loc_9CF9D6: FLdPr var_8C
  loc_9CF9D9: Me.Text = from_stack_1
  loc_9CF9DE: FFree1Str var_88
  loc_9CF9E1: FFree1Ad var_8C
  loc_9CF9E4: LitI2_Byte 1
  loc_9CF9E6: LitI2_Byte 1
  loc_9CF9E8: ImpAdLdI2 MemVar_C3D064
  loc_9CF9EB: FLdRfVar var_9C
  loc_9CF9EE: ImpAdCallFPR4  = DateSerial(, , )
  loc_9CF9F3: FLdRfVar var_9C
  loc_9CF9F6: CStrVarTmp
  loc_9CF9F7: CVarStr var_AC
  loc_9CF9FA: PopAdLdVar
  loc_9CF9FB: FLdPr Me
  loc_9CF9FE: VCallAd Control_ID_mskDesde
  loc_9CFA01: FStAdFunc var_8C
  loc_9CFA04: FLdPr var_8C
  loc_9CFA07: LateIdSt
  loc_9CFA0C: FFree1Ad var_8C
  loc_9CFA0F: FFreeVar var_9C = ""
  loc_9CFA16: ImpAdLdFPR8 MemVar_C3D04C
  loc_9CFA19: CStrDate
  loc_9CFA1B: CVarStr var_9C
  loc_9CFA1E: PopAdLdVar
  loc_9CFA1F: FLdPr Me
  loc_9CFA22: VCallAd Control_ID_mskHasta
  loc_9CFA25: FStAdFunc var_8C
  loc_9CFA28: FLdPr var_8C
  loc_9CFA2B: LateIdSt
  loc_9CFA30: FFree1Ad var_8C
  loc_9CFA33: FFree1Var var_9C = ""
  loc_9CFA36: LitStr vbNullString
  loc_9CFA39: FLdPr Me
  loc_9CFA3C: VCallAd Control_ID_CucuPersTxt
  loc_9CFA3F: FStAdFunc var_8C
  loc_9CFA42: FLdPr var_8C
  loc_9CFA45: Me.Text = from_stack_1
  loc_9CFA4A: FFree1Ad var_8C
  loc_9CFA4D: LitStr vbNullString
  loc_9CFA50: FLdPr Me
  loc_9CFA53: VCallAd Control_ID_DetaProvLbl
  loc_9CFA56: FStAdFunc var_8C
  loc_9CFA59: FLdPr var_8C
  loc_9CFA5C: Me.Caption = from_stack_1
  loc_9CFA61: FFree1Ad var_8C
  loc_9CFA64: LitI2_Byte 0
  loc_9CFA66: FLdPr Me
  loc_9CFA69: VCallAd Control_ID_chkOcultarReapropiacion
  loc_9CFA6C: FStAdFunc var_8C
  loc_9CFA6F: FLdPr var_8C
  loc_9CFA72: Me.Value = from_stack_1
  loc_9CFA77: FFree1Ad var_8C
  loc_9CFA7A: Call HabilitarCriterio()
  loc_9CFA7F: ILdRf Me
  loc_9CFA82: CastAd
  loc_9CFA85: FStAdFunc var_8C
  loc_9CFA88: FLdRfVar var_8C
  loc_9CFA8B: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_9CFA90: FFree1Ad var_8C
  loc_9CFA93: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '95E490
  'Data Table: 4A0CFC
  loc_95E478: ILdRf Me
  loc_95E47B: CastAd
  loc_95E47E: FStAdFunc var_88
  loc_95E481: FLdRfVar var_88
  loc_95E484: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_95E489: FFree1Ad var_88
  loc_95E48C: ExitProcHresult
End Sub

Private Sub cmdCalDesde_Click() '98188C
  'Data Table: 4A0CFC
  loc_981850: LitVar_Missing var_A4
  loc_981853: PopAdLdVar
  loc_981854: LitVarI4
  loc_98185C: PopAdLdVar
  loc_98185D: ImpAdLdRf MemVar_C3D9A8
  loc_981860: NewIfNullPr frmCalendario
  loc_981863: frmCalendario.Show from_stack_1, from_stack_2
  loc_981868: ImpAdLdRf MemVar_C3D038
  loc_98186B: CDargRef
  loc_98186F: FLdPr Me
  loc_981872: VCallAd Control_ID_mskDesde
  loc_981875: FStAdFunc var_A8
  loc_981878: FLdPr var_A8
  loc_98187B: LateIdSt
  loc_981880: FFree1Ad var_A8
  loc_981883: ImpAdCallFPR4 Proc_261_52_966EEC()
  loc_981888: ExitProcHresult
End Sub

Private Sub cmdCalHasta_Click() '981C7C
  'Data Table: 4A0CFC
  loc_981C40: LitVar_Missing var_A4
  loc_981C43: PopAdLdVar
  loc_981C44: LitVarI4
  loc_981C4C: PopAdLdVar
  loc_981C4D: ImpAdLdRf MemVar_C3D9A8
  loc_981C50: NewIfNullPr frmCalendario
  loc_981C53: frmCalendario.Show from_stack_1, from_stack_2
  loc_981C58: ImpAdLdRf MemVar_C3D038
  loc_981C5B: CDargRef
  loc_981C5F: FLdPr Me
  loc_981C62: VCallAd Control_ID_mskHasta
  loc_981C65: FStAdFunc var_A8
  loc_981C68: FLdPr var_A8
  loc_981C6B: LateIdSt
  loc_981C70: FFree1Ad var_A8
  loc_981C73: ImpAdCallFPR4 Proc_261_52_966EEC()
  loc_981C78: ExitProcHresult
End Sub

Private Sub mskHasta_UnknownEvent_0 '9532C8
  'Data Table: 4A0CFC
  loc_9532B4: FLdPr Me
  loc_9532B7: VCallAd Control_ID_mskHasta
  loc_9532BA: CVarAd
  loc_9532BE: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_9532C3: FFree1Var var_94 = ""
  loc_9532C6: ExitProcHresult
End Sub

Private Function mskHasta_UnknownEvent_8(arg_C) '9B3A8C
  'Data Table: 4A0CFC
  loc_9B39F0: FLdPr Me
  loc_9B39F3: VCallAd Control_ID_mskHasta
  loc_9B39F6: FStAdFunc var_88
  loc_9B39F9: FLdPr var_88
  loc_9B39FC: LateIdLdVar var_98 DispID_15 0
  loc_9B3A03: PopAd
  loc_9B3A05: FLdPr Me
  loc_9B3A08: VCallAd Control_ID_mskHasta
  loc_9B3A0B: FStAdFunc var_AC
  loc_9B3A0E: LitI2_Byte 0
  loc_9B3A10: PopTmpLdAd2 var_A2
  loc_9B3A13: FLdZeroAd var_AC
  loc_9B3A16: FStAdFunc var_A0
  loc_9B3A19: FLdRfVar var_A0
  loc_9B3A1C: LitStr vbNullString
  loc_9B3A1F: LitI2_Byte 0
  loc_9B3A21: LitI2_Byte 0
  loc_9B3A23: FLdRfVar var_98
  loc_9B3A26: CStrVarTmp
  loc_9B3A27: FStStrNoPop var_9C
  loc_9B3A2A: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9B3A2F: FStStrNoPop var_A8
  loc_9B3A32: FLdPr Me
  loc_9B3A35: MemStStrCopy
  loc_9B3A39: FFreeStr var_9C = ""
  loc_9B3A40: FFreeAd var_88 = "": var_A0 = ""
  loc_9B3A49: FFree1Var var_98 = ""
  loc_9B3A4C: FLdPr Me
  loc_9B3A4F: VCallAd Control_ID_mskHasta
  loc_9B3A52: FStAdFunc var_B0
  loc_9B3A55: LitNothing
  loc_9B3A57: CastAd
  loc_9B3A5A: FStAdFunc var_AC
  loc_9B3A5D: FLdRfVar var_AC
  loc_9B3A60: FLdZeroAd var_B0
  loc_9B3A63: FStAdFuncNoPop
  loc_9B3A66: CastAd
  loc_9B3A69: FStAdFunc var_A0
  loc_9B3A6C: FLdRfVar var_A0
  loc_9B3A6F: FLdPr Me
  loc_9B3A72: MemLdRfVar from_stack_1.global_160
  loc_9B3A75: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9B3A7A: IStI2 arg_C
  loc_9B3A7D: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9B3A88: ExitProcHresult
End Function

Public Function htmFileGet() '4A1F30
  htmFileGet = htmFile
End Function

Public Sub htmFilePut(Value) '4A1F3F
  htmFile = Value
End Sub

Public Sub htmFileSet(Value) '4A1F4E
  htmFile = Value
End Sub

Public Function bLogosGet() '4A1F5D
  bLogosGet = bLogos
End Function

Public Sub bLogosPut(Value) '4A1F6C
  bLogos = Value
End Sub

Public Function bGeneradoGet() '4A1F7B
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '4A1F8A
  bGenerado = Value
End Sub

Public Sub GeneraHTML() 'B01534
  'Data Table: 4A0CFC
  loc_B00D84: FLdRfVar var_8C
  loc_B00D87: LitI2_Byte 0
  loc_B00D89: LitI2_Byte &HFF
  loc_B00D8B: ImpAdLdI4 MemVar_C3D83C
  loc_B00D8E: FLdPr Me
  loc_B00D91: MemLdRfVar from_stack_1.global_76
  loc_B00D94: NewIfNullPr IFileSystem3
  loc_B00D97: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_B00D9C: ILdRf var_8C
  loc_B00D9F: FLdPr Me
  loc_B00DA2: MemStVarAd
  loc_B00DA6: FFree1Ad var_8C
  loc_B00DA9: Call Proc_235_31_A91924()
  loc_B00DAE: LitStr "0"
  loc_B00DB1: FStStrCopy var_88
  loc_B00DB4: LitI2_Byte 1
  loc_B00DB6: FLdPr Me
  loc_B00DB9: MemLdRfVar from_stack_1.global_156
  loc_B00DBC: FLdPr Me
  loc_B00DBF: MemLdStr global_80
  loc_B00DC2: LitI2_Byte 1
  loc_B00DC4: FnUBound
  loc_B00DC6: CI2I4
  loc_B00DC7: ForI2 var_90
  loc_B00DCD: LitVarStr var_A0, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B00DD2: PopAdLdVar
  loc_B00DD3: FLdPr Me
  loc_B00DD6: MemLdRfVar from_stack_1.htmFile
  loc_B00DD9: LdPrVar
  loc_B00DDB: LateMemCall
  loc_B00DE1: FLdPr Me
  loc_B00DE4: MemLdI2 global_156
  loc_B00DE7: CI4UI1
  loc_B00DE8: FLdPr Me
  loc_B00DEB: MemLdStr global_80
  loc_B00DEE: AryLock
  loc_B00DF1: Ary1LdRf
  loc_B00DF2: FStR4 var_B8
  loc_B00DF5: LitI4 0
  loc_B00DFA: LitI4 0
  loc_B00DFF: LitI2_Byte 0
  loc_B00E01: LitStr "left"
  loc_B00E04: FMemLdR4 var_B8(0)
  loc_B00E09: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B00E0E: CVarStr var_C8
  loc_B00E11: PopAdLdVar
  loc_B00E12: FLdPr Me
  loc_B00E15: MemLdRfVar from_stack_1.htmFile
  loc_B00E18: LdPrVar
  loc_B00E1A: LateMemCall
  loc_B00E20: FFree1Var var_C8 = ""
  loc_B00E23: LitI4 0
  loc_B00E28: LitI4 0
  loc_B00E2D: LitI2_Byte 0
  loc_B00E2F: LitStr "left"
  loc_B00E32: FMemLdR4 var_B8(4)
  loc_B00E37: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B00E3C: CVarStr var_C8
  loc_B00E3F: PopAdLdVar
  loc_B00E40: FLdPr Me
  loc_B00E43: MemLdRfVar from_stack_1.htmFile
  loc_B00E46: LdPrVar
  loc_B00E48: LateMemCall
  loc_B00E4E: FFree1Var var_C8 = ""
  loc_B00E51: LitI4 0
  loc_B00E56: LitI4 0
  loc_B00E5B: LitI2_Byte 0
  loc_B00E5D: LitStr "left"
  loc_B00E60: FMemLdR4 var_B8(8)
  loc_B00E65: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B00E6A: CVarStr var_C8
  loc_B00E6D: PopAdLdVar
  loc_B00E6E: FLdPr Me
  loc_B00E71: MemLdRfVar from_stack_1.htmFile
  loc_B00E74: LdPrVar
  loc_B00E76: LateMemCall
  loc_B00E7C: FFree1Var var_C8 = ""
  loc_B00E7F: FLdRfVar var_CA
  loc_B00E82: FLdPr Me
  loc_B00E85: VCallAd Control_ID_chkOcultarReapropiacion
  loc_B00E88: FStAdFunc var_8C
  loc_B00E8B: FLdPr var_8C
  loc_B00E8E:  = Me.Value
  loc_B00E93: FLdI2 var_CA
  loc_B00E96: NotI4
  loc_B00E97: FFree1Ad var_8C
  loc_B00E9A: BranchF loc_B00F03
  loc_B00E9D: LitVarStr var_DC, "&nbsp;"
  loc_B00EA2: FStVarCopyObj var_C8
  loc_B00EA5: FLdRfVar var_C8
  loc_B00EA8: FMemLdRf unk_4A0C45
  loc_B00EAD: CVarRef
  loc_B00EB2: FMemLdR4 var_B8(12)
  loc_B00EB7: LitStr "0,00"
  loc_B00EBA: NeStr
  loc_B00EBC: CVarBoolI2 var_A0
  loc_B00EC0: FLdRfVar var_EC
  loc_B00EC3: ImpAdCallFPR4  = IIf(, , )
  loc_B00EC8: LitI4 0
  loc_B00ECD: LitI4 0
  loc_B00ED2: LitI2_Byte 0
  loc_B00ED4: LitStr "right"
  loc_B00ED7: FLdRfVar var_EC
  loc_B00EDA: CStrVarVal var_F0
  loc_B00EDE: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B00EE3: CVarStr var_100
  loc_B00EE6: PopAdLdVar
  loc_B00EE7: FLdPr Me
  loc_B00EEA: MemLdRfVar from_stack_1.htmFile
  loc_B00EED: LdPrVar
  loc_B00EEF: LateMemCall
  loc_B00EF5: FFree1Str var_F0
  loc_B00EF8: FFreeVar var_A0 = "": var_C8 = "": var_EC = ""
  loc_B00F03: LitVarStr var_DC, "&nbsp;"
  loc_B00F08: FStVarCopyObj var_C8
  loc_B00F0B: FLdRfVar var_C8
  loc_B00F0E: FMemLdRf unk_4A0C45
  loc_B00F13: CVarRef
  loc_B00F18: FMemLdR4 var_B8(16)
  loc_B00F1D: LitStr "0,00"
  loc_B00F20: NeStr
  loc_B00F22: CVarBoolI2 var_A0
  loc_B00F26: FLdRfVar var_EC
  loc_B00F29: ImpAdCallFPR4  = IIf(, , )
  loc_B00F2E: LitI4 0
  loc_B00F33: LitI4 0
  loc_B00F38: LitI2_Byte 0
  loc_B00F3A: LitStr "right"
  loc_B00F3D: FLdRfVar var_EC
  loc_B00F40: CStrVarVal var_F0
  loc_B00F44: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B00F49: CVarStr var_100
  loc_B00F4C: PopAdLdVar
  loc_B00F4D: FLdPr Me
  loc_B00F50: MemLdRfVar from_stack_1.htmFile
  loc_B00F53: LdPrVar
  loc_B00F55: LateMemCall
  loc_B00F5B: FFree1Str var_F0
  loc_B00F5E: FFreeVar var_A0 = "": var_C8 = "": var_EC = ""
  loc_B00F69: LitVarStr var_DC, "&nbsp;"
  loc_B00F6E: FStVarCopyObj var_C8
  loc_B00F71: FLdRfVar var_C8
  loc_B00F74: FMemLdRf unk_4A0C45
  loc_B00F79: CVarRef
  loc_B00F7E: FMemLdR4 var_B8(20)
  loc_B00F83: LitStr "0,00"
  loc_B00F86: NeStr
  loc_B00F88: CVarBoolI2 var_A0
  loc_B00F8C: FLdRfVar var_EC
  loc_B00F8F: ImpAdCallFPR4  = IIf(, , )
  loc_B00F94: LitI4 0
  loc_B00F99: LitI4 0
  loc_B00F9E: LitI2_Byte 0
  loc_B00FA0: LitStr "right"
  loc_B00FA3: FLdRfVar var_EC
  loc_B00FA6: CStrVarVal var_F0
  loc_B00FAA: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B00FAF: CVarStr var_100
  loc_B00FB2: PopAdLdVar
  loc_B00FB3: FLdPr Me
  loc_B00FB6: MemLdRfVar from_stack_1.htmFile
  loc_B00FB9: LdPrVar
  loc_B00FBB: LateMemCall
  loc_B00FC1: FFree1Str var_F0
  loc_B00FC4: FFreeVar var_A0 = "": var_C8 = "": var_EC = ""
  loc_B00FCF: LitVarStr var_DC, "&nbsp;"
  loc_B00FD4: FStVarCopyObj var_C8
  loc_B00FD7: FLdRfVar var_C8
  loc_B00FDA: FMemLdRf unk_4A0C45
  loc_B00FDF: CVarRef
  loc_B00FE4: FMemLdR4 var_B8(24)
  loc_B00FE9: LitStr "0,00"
  loc_B00FEC: NeStr
  loc_B00FEE: CVarBoolI2 var_A0
  loc_B00FF2: FLdRfVar var_EC
  loc_B00FF5: ImpAdCallFPR4  = IIf(, , )
  loc_B00FFA: LitI4 0
  loc_B00FFF: LitI4 0
  loc_B01004: LitI2_Byte 0
  loc_B01006: LitStr "right"
  loc_B01009: FLdRfVar var_EC
  loc_B0100C: CStrVarVal var_F0
  loc_B01010: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B01015: CVarStr var_100
  loc_B01018: PopAdLdVar
  loc_B01019: FLdPr Me
  loc_B0101C: MemLdRfVar from_stack_1.htmFile
  loc_B0101F: LdPrVar
  loc_B01021: LateMemCall
  loc_B01027: FFree1Str var_F0
  loc_B0102A: FFreeVar var_A0 = "": var_C8 = "": var_EC = ""
  loc_B01035: LitI4 0
  loc_B0103A: LitI4 0
  loc_B0103F: LitI2_Byte 0
  loc_B01041: LitStr "left"
  loc_B01044: FMemLdR4 var_B8(36)
  loc_B01049: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B0104E: CVarStr var_C8
  loc_B01051: PopAdLdVar
  loc_B01052: FLdPr Me
  loc_B01055: MemLdRfVar from_stack_1.htmFile
  loc_B01058: LdPrVar
  loc_B0105A: LateMemCall
  loc_B01060: FFree1Var var_C8 = ""
  loc_B01063: LitI4 0
  loc_B01068: LitI4 0
  loc_B0106D: LitI2_Byte 0
  loc_B0106F: LitStr "left"
  loc_B01072: FMemLdR4 var_B8(40)
  loc_B01077: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B0107C: CVarStr var_C8
  loc_B0107F: PopAdLdVar
  loc_B01080: FLdPr Me
  loc_B01083: MemLdRfVar from_stack_1.htmFile
  loc_B01086: LdPrVar
  loc_B01088: LateMemCall
  loc_B0108E: FFree1Var var_C8 = ""
  loc_B01091: LitI4 0
  loc_B01096: LitI4 0
  loc_B0109B: LitI2_Byte 0
  loc_B0109D: LitStr "left"
  loc_B010A0: FMemLdR4 var_B8(44)
  loc_B010A5: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B010AA: CVarStr var_C8
  loc_B010AD: PopAdLdVar
  loc_B010AE: FLdPr Me
  loc_B010B1: MemLdRfVar from_stack_1.htmFile
  loc_B010B4: LdPrVar
  loc_B010B6: LateMemCall
  loc_B010BC: FFree1Var var_C8 = ""
  loc_B010BF: LitI4 0
  loc_B010C4: LitI4 0
  loc_B010C9: LitI2_Byte 0
  loc_B010CB: LitStr "left"
  loc_B010CE: FMemLdR4 var_B8(48)
  loc_B010D3: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B010D8: CVarStr var_C8
  loc_B010DB: PopAdLdVar
  loc_B010DC: FLdPr Me
  loc_B010DF: MemLdRfVar from_stack_1.htmFile
  loc_B010E2: LdPrVar
  loc_B010E4: LateMemCall
  loc_B010EA: FFree1Var var_C8 = ""
  loc_B010ED: LitI4 0
  loc_B010F2: LitI4 0
  loc_B010F7: LitI2_Byte 0
  loc_B010F9: LitStr "left"
  loc_B010FC: FMemLdR4 var_B8(52)
  loc_B01101: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B01106: CVarStr var_C8
  loc_B01109: PopAdLdVar
  loc_B0110A: FLdPr Me
  loc_B0110D: MemLdRfVar from_stack_1.htmFile
  loc_B01110: LdPrVar
  loc_B01112: LateMemCall
  loc_B01118: FFree1Var var_C8 = ""
  loc_B0111B: LitI4 0
  loc_B01120: LitI4 0
  loc_B01125: LitI2_Byte 0
  loc_B01127: LitStr "left"
  loc_B0112A: FMemLdR4 var_B8(56)
  loc_B0112F: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B01134: CVarStr var_C8
  loc_B01137: PopAdLdVar
  loc_B01138: FLdPr Me
  loc_B0113B: MemLdRfVar from_stack_1.htmFile
  loc_B0113E: LdPrVar
  loc_B01140: LateMemCall
  loc_B01146: FFree1Var var_C8 = ""
  loc_B01149: LitI4 0
  loc_B0114E: LitI4 0
  loc_B01153: LitI2_Byte 0
  loc_B01155: LitStr "left"
  loc_B01158: FMemLdR4 var_B8(60)
  loc_B0115D: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B01162: CVarStr var_C8
  loc_B01165: PopAdLdVar
  loc_B01166: FLdPr Me
  loc_B01169: MemLdRfVar from_stack_1.htmFile
  loc_B0116C: LdPrVar
  loc_B0116E: LateMemCall
  loc_B01174: FFree1Var var_C8 = ""
  loc_B01177: ILdRf var_88
  loc_B0117A: FMemLdR4 var_B8(52)
  loc_B0117F: NeStr
  loc_B01181: BranchF loc_B0124C
  loc_B01184: LitVarStr var_DC, "&nbsp;"
  loc_B01189: FStVarCopyObj var_C8
  loc_B0118C: FLdRfVar var_C8
  loc_B0118F: FMemLdRf unk_4A0C45
  loc_B01194: CVarRef
  loc_B01199: FMemLdR4 var_B8(28)
  loc_B0119E: LitStr "0,00"
  loc_B011A1: NeStr
  loc_B011A3: CVarBoolI2 var_A0
  loc_B011A7: FLdRfVar var_EC
  loc_B011AA: ImpAdCallFPR4  = IIf(, , )
  loc_B011AF: FMemLdR4 var_B8(68)
  loc_B011B4: LitStr vbNullString
  loc_B011B7: LitI2_Byte 0
  loc_B011B9: LitStr "right"
  loc_B011BC: FLdRfVar var_EC
  loc_B011BF: CStrVarVal var_F0
  loc_B011C3: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B011C8: CVarStr var_100
  loc_B011CB: PopAdLdVar
  loc_B011CC: FLdPr Me
  loc_B011CF: MemLdRfVar from_stack_1.htmFile
  loc_B011D2: LdPrVar
  loc_B011D4: LateMemCall
  loc_B011DA: FFree1Str var_F0
  loc_B011DD: FFreeVar var_A0 = "": var_C8 = "": var_EC = ""
  loc_B011E8: LitVarStr var_DC, "&nbsp;"
  loc_B011ED: FStVarCopyObj var_C8
  loc_B011F0: FLdRfVar var_C8
  loc_B011F3: FMemLdRf unk_4A0C45
  loc_B011F8: CVarRef
  loc_B011FD: FMemLdR4 var_B8(32)
  loc_B01202: LitStr "0,00"
  loc_B01205: NeStr
  loc_B01207: CVarBoolI2 var_A0
  loc_B0120B: FLdRfVar var_EC
  loc_B0120E: ImpAdCallFPR4  = IIf(, , )
  loc_B01213: FMemLdR4 var_B8(68)
  loc_B01218: LitStr vbNullString
  loc_B0121B: LitI2_Byte 0
  loc_B0121D: LitStr "right"
  loc_B01220: FLdRfVar var_EC
  loc_B01223: CStrVarVal var_F0
  loc_B01227: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B0122C: CVarStr var_100
  loc_B0122F: PopAdLdVar
  loc_B01230: FLdPr Me
  loc_B01233: MemLdRfVar from_stack_1.htmFile
  loc_B01236: LdPrVar
  loc_B01238: LateMemCall
  loc_B0123E: FFree1Str var_F0
  loc_B01241: FFreeVar var_A0 = "": var_C8 = "": var_EC = ""
  loc_B0124C: FMemLdR4 var_B8(52)
  loc_B01251: FStStrCopy var_88
  loc_B01254: LitI4 0
  loc_B01259: FStR4 var_B8
  loc_B0125C: AryUnlock
  loc_B0125F: LitVarStr var_A0, "     </tr>"
  loc_B01264: PopAdLdVar
  loc_B01265: FLdPr Me
  loc_B01268: MemLdRfVar from_stack_1.htmFile
  loc_B0126B: LdPrVar
  loc_B0126D: LateMemCall
  loc_B01273: FLdPr Me
  loc_B01276: MemLdRfVar from_stack_1.global_156
  loc_B01279: NextI2 var_90, loc_B00DCD
  loc_B0127E: FLdPr Me
  loc_B01281: MemLdRfVar from_stack_1.global_84
  loc_B01284: FStR4 var_114
  loc_B01287: LitVarStr var_A0, "    <tr valign=""top"" class=""Totales"" nowrap>"
  loc_B0128C: PopAdLdVar
  loc_B0128D: FLdPr Me
  loc_B01290: MemLdRfVar from_stack_1.htmFile
  loc_B01293: LdPrVar
  loc_B01295: LateMemCall
  loc_B0129B: LitVarStr var_A0, "    <th colspan=""3"" align=""right"" class=""Totales"">TOTAL GENERAL</th>"
  loc_B012A0: PopAdLdVar
  loc_B012A1: FLdPr Me
  loc_B012A4: MemLdRfVar from_stack_1.htmFile
  loc_B012A7: LdPrVar
  loc_B012A9: LateMemCall
  loc_B012AF: FLdRfVar var_CA
  loc_B012B2: FLdPr Me
  loc_B012B5: VCallAd Control_ID_chkOcultarReapropiacion
  loc_B012B8: FStAdFunc var_8C
  loc_B012BB: FLdPr var_8C
  loc_B012BE:  = Me.Value
  loc_B012C3: FLdI2 var_CA
  loc_B012C6: NotI4
  loc_B012C7: FFree1Ad var_8C
  loc_B012CA: BranchF loc_B012FB
  loc_B012CD: LitI4 0
  loc_B012D2: LitI4 0
  loc_B012D7: LitI2_Byte 0
  loc_B012D9: LitStr "right"
  loc_B012DC: FMemLdR4 var_114(12)
  loc_B012E1: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B012E6: CVarStr var_C8
  loc_B012E9: PopAdLdVar
  loc_B012EA: FLdPr Me
  loc_B012ED: MemLdRfVar from_stack_1.htmFile
  loc_B012F0: LdPrVar
  loc_B012F2: LateMemCall
  loc_B012F8: FFree1Var var_C8 = ""
  loc_B012FB: LitI4 0
  loc_B01300: LitI4 0
  loc_B01305: LitI2_Byte 0
  loc_B01307: LitStr "right"
  loc_B0130A: FMemLdR4 var_114(16)
  loc_B0130F: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B01314: CVarStr var_C8
  loc_B01317: PopAdLdVar
  loc_B01318: FLdPr Me
  loc_B0131B: MemLdRfVar from_stack_1.htmFile
  loc_B0131E: LdPrVar
  loc_B01320: LateMemCall
  loc_B01326: FFree1Var var_C8 = ""
  loc_B01329: LitI4 0
  loc_B0132E: LitI4 0
  loc_B01333: LitI2_Byte 0
  loc_B01335: LitStr "right"
  loc_B01338: FMemLdR4 var_114(20)
  loc_B0133D: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B01342: CVarStr var_C8
  loc_B01345: PopAdLdVar
  loc_B01346: FLdPr Me
  loc_B01349: MemLdRfVar from_stack_1.htmFile
  loc_B0134C: LdPrVar
  loc_B0134E: LateMemCall
  loc_B01354: FFree1Var var_C8 = ""
  loc_B01357: LitI4 0
  loc_B0135C: LitI4 0
  loc_B01361: LitI2_Byte 0
  loc_B01363: LitStr "right"
  loc_B01366: FMemLdR4 var_114(24)
  loc_B0136B: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B01370: CVarStr var_C8
  loc_B01373: PopAdLdVar
  loc_B01374: FLdPr Me
  loc_B01377: MemLdRfVar from_stack_1.htmFile
  loc_B0137A: LdPrVar
  loc_B0137C: LateMemCall
  loc_B01382: FFree1Var var_C8 = ""
  loc_B01385: LitI4 0
  loc_B0138A: LitI4 0
  loc_B0138F: LitI2_Byte 0
  loc_B01391: LitStr "left"
  loc_B01394: LitStr "&nbsp;"
  loc_B01397: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B0139C: CVarStr var_C8
  loc_B0139F: PopAdLdVar
  loc_B013A0: FLdPr Me
  loc_B013A3: MemLdRfVar from_stack_1.htmFile
  loc_B013A6: LdPrVar
  loc_B013A8: LateMemCall
  loc_B013AE: FFree1Var var_C8 = ""
  loc_B013B1: LitI4 0
  loc_B013B6: LitI4 0
  loc_B013BB: LitI2_Byte 0
  loc_B013BD: LitStr "left"
  loc_B013C0: LitStr "&nbsp;"
  loc_B013C3: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B013C8: CVarStr var_C8
  loc_B013CB: PopAdLdVar
  loc_B013CC: FLdPr Me
  loc_B013CF: MemLdRfVar from_stack_1.htmFile
  loc_B013D2: LdPrVar
  loc_B013D4: LateMemCall
  loc_B013DA: FFree1Var var_C8 = ""
  loc_B013DD: LitI4 0
  loc_B013E2: LitI4 0
  loc_B013E7: LitI2_Byte 0
  loc_B013E9: LitStr "left"
  loc_B013EC: LitStr "&nbsp;"
  loc_B013EF: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B013F4: CVarStr var_C8
  loc_B013F7: PopAdLdVar
  loc_B013F8: FLdPr Me
  loc_B013FB: MemLdRfVar from_stack_1.htmFile
  loc_B013FE: LdPrVar
  loc_B01400: LateMemCall
  loc_B01406: FFree1Var var_C8 = ""
  loc_B01409: LitI4 0
  loc_B0140E: LitI4 0
  loc_B01413: LitI2_Byte 0
  loc_B01415: LitStr "left"
  loc_B01418: LitStr "&nbsp;"
  loc_B0141B: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B01420: CVarStr var_C8
  loc_B01423: PopAdLdVar
  loc_B01424: FLdPr Me
  loc_B01427: MemLdRfVar from_stack_1.htmFile
  loc_B0142A: LdPrVar
  loc_B0142C: LateMemCall
  loc_B01432: FFree1Var var_C8 = ""
  loc_B01435: LitI4 0
  loc_B0143A: LitI4 0
  loc_B0143F: LitI2_Byte 0
  loc_B01441: LitStr "left"
  loc_B01444: LitStr "&nbsp;"
  loc_B01447: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B0144C: CVarStr var_C8
  loc_B0144F: PopAdLdVar
  loc_B01450: FLdPr Me
  loc_B01453: MemLdRfVar from_stack_1.htmFile
  loc_B01456: LdPrVar
  loc_B01458: LateMemCall
  loc_B0145E: FFree1Var var_C8 = ""
  loc_B01461: LitI4 0
  loc_B01466: LitI4 0
  loc_B0146B: LitI2_Byte 0
  loc_B0146D: LitStr "left"
  loc_B01470: LitStr "&nbsp;"
  loc_B01473: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B01478: CVarStr var_C8
  loc_B0147B: PopAdLdVar
  loc_B0147C: FLdPr Me
  loc_B0147F: MemLdRfVar from_stack_1.htmFile
  loc_B01482: LdPrVar
  loc_B01484: LateMemCall
  loc_B0148A: FFree1Var var_C8 = ""
  loc_B0148D: LitI4 0
  loc_B01492: LitI4 0
  loc_B01497: LitI2_Byte 0
  loc_B01499: LitStr "left"
  loc_B0149C: LitStr "&nbsp;"
  loc_B0149F: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B014A4: CVarStr var_C8
  loc_B014A7: PopAdLdVar
  loc_B014A8: FLdPr Me
  loc_B014AB: MemLdRfVar from_stack_1.htmFile
  loc_B014AE: LdPrVar
  loc_B014B0: LateMemCall
  loc_B014B6: FFree1Var var_C8 = ""
  loc_B014B9: LitI4 0
  loc_B014BE: LitI4 0
  loc_B014C3: LitI2_Byte 0
  loc_B014C5: LitStr "left"
  loc_B014C8: LitStr "&nbsp;"
  loc_B014CB: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B014D0: CVarStr var_C8
  loc_B014D3: PopAdLdVar
  loc_B014D4: FLdPr Me
  loc_B014D7: MemLdRfVar from_stack_1.htmFile
  loc_B014DA: LdPrVar
  loc_B014DC: LateMemCall
  loc_B014E2: FFree1Var var_C8 = ""
  loc_B014E5: LitI4 0
  loc_B014EA: LitI4 0
  loc_B014EF: LitI2_Byte 0
  loc_B014F1: LitStr "left"
  loc_B014F4: LitStr "&nbsp;"
  loc_B014F7: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B014FC: CVarStr var_C8
  loc_B014FF: PopAdLdVar
  loc_B01500: FLdPr Me
  loc_B01503: MemLdRfVar from_stack_1.htmFile
  loc_B01506: LdPrVar
  loc_B01508: LateMemCall
  loc_B0150E: FFree1Var var_C8 = ""
  loc_B01511: LitI4 0
  loc_B01516: FStR4 var_114
  loc_B01519: Call Proc_235_32_981F90()
  loc_B0151E: FLdPr Me
  loc_B01521: MemLdRfVar from_stack_1.htmFile
  loc_B01524: LdPrVar
  loc_B01526: LateMemCall
  loc_B0152C: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_B01531: ExitProcHresult
  loc_B01532: CR8I2
End Sub

Public Sub GeneraXLS() '952234
  'Data Table: 4A0CFC
  loc_95221C: LitI2_Byte 0
  loc_95221E: FLdPr Me
  loc_952221: MemStI2 bLogos
  loc_952224: Call GeneraHTML()
  loc_952229: LitI2_Byte &HFF
  loc_95222B: FLdPr Me
  loc_95222E: MemStI2 bLogos
  loc_952231: ExitProcHresult
  loc_952232: Branch loc_95A61C
End Sub

Public Sub GeneraReporte() 'BC0B30
  'Data Table: 4A0CFC
  loc_BBF970: FLdPr Me
  loc_BBF973: MemLdI2 bGenerado
  loc_BBF976: BranchF loc_BBF97A
  loc_BBF979: ExitProcHresult
  loc_BBF97A: LitVarStr var_9C, "Generando reporte..."
  loc_BBF97F: PopAdLdVar
  loc_BBF980: FLdPr Me
  loc_BBF983: VCallAd Control_ID_statusBar
  loc_BBF986: FStAdFunc var_B0
  loc_BBF989: FLdPr var_B0
  loc_BBF98C: LateIdSt
  loc_BBF991: FFree1Ad var_B0
  loc_BBF994: LitI4 &HB
  loc_BBF999: CI2I4
  loc_BBF99A: FLdPr Me
  loc_BBF99D: Me.MousePointer = from_stack_1
  loc_BBF9A2: LitI2_Byte 0
  loc_BBF9A4: PopTmpLdAd2 var_B2
  loc_BBF9A7: Call mskDesde_UnknownEvent_8()
  loc_BBF9AC: FLdPr Me
  loc_BBF9AF: MemLdStr global_160
  loc_BBF9B2: LitStr vbNullString
  loc_BBF9B5: NeStr
  loc_BBF9B7: BranchF loc_BBF9BD
  loc_BBF9BA: Branch loc_BC0B06
  loc_BBF9BD: LitI2_Byte 0
  loc_BBF9BF: PopTmpLdAd2 var_B2
  loc_BBF9C2: from_stack_2v = mskHasta_UnknownEvent_8(from_stack_1v)
  loc_BBF9C7: FLdPr Me
  loc_BBF9CA: MemLdStr global_160
  loc_BBF9CD: LitStr vbNullString
  loc_BBF9D0: NeStr
  loc_BBF9D2: BranchF loc_BBF9D8
  loc_BBF9D5: Branch loc_BC0B06
  loc_BBF9D8: LitI2_Byte 0
  loc_BBF9DA: PopTmpLdAd2 var_B2
  loc_BBF9DD: Call CucuPersTxt_Validate(from_stack_1v)
  loc_BBF9E2: FLdPr Me
  loc_BBF9E5: MemLdStr global_160
  loc_BBF9E8: LitStr vbNullString
  loc_BBF9EB: NeStr
  loc_BBF9ED: BranchF loc_BBF9F3
  loc_BBF9F0: Branch loc_BC0B06
  loc_BBF9F3: FLdPr Me
  loc_BBF9F6: VCallAd Control_ID_mskDesde
  loc_BBF9F9: FStAdFunc var_B0
  loc_BBF9FC: FLdPr var_B0
  loc_BBF9FF: LateIdLdVar var_C4 DispID_15 0
  loc_BBFA06: PopAd
  loc_BBFA08: FLdPr Me
  loc_BBFA0B: VCallAd Control_ID_mskHasta
  loc_BBFA0E: FStAdFunc var_F0
  loc_BBFA11: FLdPr var_F0
  loc_BBFA14: LateIdLdVar var_100 DispID_15 0
  loc_BBFA1B: PopAd
  loc_BBFA1D: LitStr " AND FechImpu BETWEEN "
  loc_BBFA20: LitI4 1
  loc_BBFA25: LitI4 1
  loc_BBFA2A: LitVarStr var_9C, "'yyyy-mm-dd'"
  loc_BBFA2F: FStVarCopyObj var_E4
  loc_BBFA32: FLdRfVar var_E4
  loc_BBFA35: FLdRfVar var_C4
  loc_BBFA38: CStrVarTmp
  loc_BBFA39: CVarStr var_D4
  loc_BBFA3C: ImpAdCallI2 Format$(, )
  loc_BBFA41: FStStrNoPop var_E8
  loc_BBFA44: ConcatStr
  loc_BBFA45: FStStrNoPop var_EC
  loc_BBFA48: LitStr " AND "
  loc_BBFA4B: ConcatStr
  loc_BBFA4C: FStStrNoPop var_124
  loc_BBFA4F: LitI4 1
  loc_BBFA54: LitI4 1
  loc_BBFA59: LitVarStr var_AC, "'yyyy-mm-dd'"
  loc_BBFA5E: FStVarCopyObj var_120
  loc_BBFA61: FLdRfVar var_120
  loc_BBFA64: FLdRfVar var_100
  loc_BBFA67: CStrVarTmp
  loc_BBFA68: CVarStr var_110
  loc_BBFA6B: ImpAdCallI2 Format$(, )
  loc_BBFA70: FStStrNoPop var_128
  loc_BBFA73: ConcatStr
  loc_BBFA74: FStStr var_88
  loc_BBFA77: FFreeStr var_E8 = "": var_EC = "": var_124 = ""
  loc_BBFA82: FFreeAd var_B0 = ""
  loc_BBFA89: FFreeVar var_C4 = "": var_D4 = "": var_E4 = "": var_100 = "": var_110 = ""
  loc_BBFA98: FLdPr Me
  loc_BBFA9B: VCallAd Control_ID_mskDesde
  loc_BBFA9E: FStAdFunc var_B0
  loc_BBFAA1: FLdPr var_B0
  loc_BBFAA4: LateIdLdVar var_C4 DispID_15 0
  loc_BBFAAB: PopAd
  loc_BBFAAD: FLdPr Me
  loc_BBFAB0: VCallAd Control_ID_mskHasta
  loc_BBFAB3: FStAdFunc var_F0
  loc_BBFAB6: FLdPr var_F0
  loc_BBFAB9: LateIdLdVar var_100 DispID_15 0
  loc_BBFAC0: PopAd
  loc_BBFAC2: LitStr " AND FechDebi BETWEEN "
  loc_BBFAC5: LitI4 1
  loc_BBFACA: LitI4 1
  loc_BBFACF: LitVarStr var_9C, "'yyyy-mm-dd'"
  loc_BBFAD4: FStVarCopyObj var_E4
  loc_BBFAD7: FLdRfVar var_E4
  loc_BBFADA: FLdRfVar var_C4
  loc_BBFADD: CStrVarTmp
  loc_BBFADE: CVarStr var_D4
  loc_BBFAE1: ImpAdCallI2 Format$(, )
  loc_BBFAE6: FStStrNoPop var_E8
  loc_BBFAE9: ConcatStr
  loc_BBFAEA: FStStrNoPop var_EC
  loc_BBFAED: LitStr " AND "
  loc_BBFAF0: ConcatStr
  loc_BBFAF1: FStStrNoPop var_124
  loc_BBFAF4: LitI4 1
  loc_BBFAF9: LitI4 1
  loc_BBFAFE: LitVarStr var_AC, "'yyyy-mm-dd'"
  loc_BBFB03: FStVarCopyObj var_120
  loc_BBFB06: FLdRfVar var_120
  loc_BBFB09: FLdRfVar var_100
  loc_BBFB0C: CStrVarTmp
  loc_BBFB0D: CVarStr var_110
  loc_BBFB10: ImpAdCallI2 Format$(, )
  loc_BBFB15: FStStrNoPop var_128
  loc_BBFB18: ConcatStr
  loc_BBFB19: FStStr var_8C
  loc_BBFB1C: FFreeStr var_E8 = "": var_EC = "": var_124 = ""
  loc_BBFB27: FFreeAd var_B0 = ""
  loc_BBFB2E: FFreeVar var_C4 = "": var_D4 = "": var_E4 = "": var_100 = "": var_110 = ""
  loc_BBFB3D: FLdPr Me
  loc_BBFB40: MemLdRfVar from_stack_1.global_72
  loc_BBFB43: NewIfNullAd
  loc_BBFB46: FStAd var_12C 
  loc_BBFB4A: LitStr "DROP TEMPORARY TABLE IF EXISTS tmovi;"
  loc_BBFB4D: LitStr " CREATE TEMPORARY TABLE tmovi ("
  loc_BBFB50: ConcatStr
  loc_BBFB51: FStStrNoPop var_E8
  loc_BBFB54: LitStr " PeriInfo year(4) NOT NULL DEFAULT '0000',"
  loc_BBFB57: ConcatStr
  loc_BBFB58: FStStrNoPop var_EC
  loc_BBFB5B: LitStr " CucuPers char(11) NOT NULL DEFAULT '',"
  loc_BBFB5E: ConcatStr
  loc_BBFB5F: FStStrNoPop var_124
  loc_BBFB62: LitStr " ExorImpu varchar(250) NOT NULL DEFAULT '',"
  loc_BBFB65: ConcatStr
  loc_BBFB66: FStStrNoPop var_128
  loc_BBFB69: LitStr " ExpeImpu varchar(250) NOT NULL DEFAULT '',"
  loc_BBFB6C: ConcatStr
  loc_BBFB6D: FStStrNoPop var_130
  loc_BBFB70: LitStr " Tipo varchar(25) NOT NULL DEFAULT '',"
  loc_BBFB73: ConcatStr
  loc_BBFB74: FStStrNoPop var_134
  loc_BBFB77: LitStr " ReapImpu decimal(14,2) NOT NULL DEFAULT '0.00',"
  loc_BBFB7A: ConcatStr
  loc_BBFB7B: FStStrNoPop var_138
  loc_BBFB7E: LitStr " ResiImpu decimal(14,2) NOT NULL DEFAULT '0.00',"
  loc_BBFB81: ConcatStr
  loc_BBFB82: FStStrNoPop var_13C
  loc_BBFB85: LitStr " DeexImpu decimal(14,2) NOT NULL DEFAULT '0.00',"
  loc_BBFB88: ConcatStr
  loc_BBFB89: FStStrNoPop var_140
  loc_BBFB8C: LitStr " PagaImpu decimal(14,2) NOT NULL DEFAULT '0.00',"
  loc_BBFB8F: ConcatStr
  loc_BBFB90: FStStrNoPop var_144
  loc_BBFB93: LitStr " FechImpu date DEFAULT NULL,"
  loc_BBFB96: ConcatStr
  loc_BBFB97: FStStrNoPop var_148
  loc_BBFB9A: LitStr " NumeFact char(15) NOT NULL DEFAULT '',"
  loc_BBFB9D: ConcatStr
  loc_BBFB9E: FStStrNoPop var_14C
  loc_BBFBA1: LitStr " FefaDeve date DEFAULT NULL,"
  loc_BBFBA4: ConcatStr
  loc_BBFBA5: FStStrNoPop var_150
  loc_BBFBA8: LitStr " NumeOrpa int(8) NOT NULL DEFAULT '0',"
  loc_BBFBAB: ConcatStr
  loc_BBFBAC: FStStrNoPop var_154
  loc_BBFBAF: LitStr " FereOrpa date DEFAULT NULL,"
  loc_BBFBB2: ConcatStr
  loc_BBFBB3: FStStrNoPop var_158
  loc_BBFBB6: LitStr " FearOrpa date DEFAULT NULL,"
  loc_BBFBB9: ConcatStr
  loc_BBFBBA: FStStrNoPop var_15C
  loc_BBFBBD: LitStr " Orden int(8) NOT NULL DEFAULT '0',"
  loc_BBFBC0: ConcatStr
  loc_BBFBC1: FStStrNoPop var_160
  loc_BBFBC4: LitStr " Suborden int(8) NOT NULL AUTO_INCREMENT,"
  loc_BBFBC7: ConcatStr
  loc_BBFBC8: FStStrNoPop var_164
  loc_BBFBCB: LitStr " primary key (Suborden), Key idxtmp(CucuPers)"
  loc_BBFBCE: ConcatStr
  loc_BBFBCF: FStStrNoPop var_168
  loc_BBFBD2: LitStr " ) ;"
  loc_BBFBD5: ConcatStr
  loc_BBFBD6: FStStrNoPop var_16C
  loc_BBFBD9: FLdPr var_12C
  loc_BBFBDC: Call clsbase.RedefineRS(from_stack_1v)
  loc_BBFBE1: FFreeStr var_E8 = "": var_EC = "": var_124 = "": var_128 = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = ""
  loc_BBFC0C: LitStr "INSERT INTO tmovi (PeriInfo,CucuPers,ExorImpu,ExpeImpu,Tipo,ReapImpu,ResiImpu,DeexImpu,PagaImpu,FechImpu,NumeFact,FefaDeve,NumeOrpa,FereOrpa,FearOrpa,Orden)"
  loc_BBFC0F: LitStr " SELECT PeriInfo, CucuPers, ExorImpu, '' ExpeImpu, 'Imputac.', Sum(DefiImpu)-Sum(DeveImpu) ReapImpu, 0, 0, 0, Max(FechImpu) FechImpu, '', NULL, 0, NULL, NULL"
  loc_BBFC12: ConcatStr
  loc_BBFC13: FStStrNoPop var_E8
  loc_BBFC16: LitStr " , 1"
  loc_BBFC19: ConcatStr
  loc_BBFC1A: FStStrNoPop var_EC
  loc_BBFC1D: LitStr " FROM imputacion"
  loc_BBFC20: ConcatStr
  loc_BBFC21: FStStrNoPop var_124
  loc_BBFC24: LitStr " WHERE PeriInfo = "
  loc_BBFC27: ConcatStr
  loc_BBFC28: FStStrNoPop var_130
  loc_BBFC2B: FLdRfVar var_128
  loc_BBFC2E: FLdPr Me
  loc_BBFC31: VCallAd Control_ID_cboPeriodo
  loc_BBFC34: FStAdFunc var_B0
  loc_BBFC37: FLdPr var_B0
  loc_BBFC3A:  = Me.Text
  loc_BBFC3F: ILdRf var_128
  loc_BBFC42: ConcatStr
  loc_BBFC43: FStStrNoPop var_134
  loc_BBFC46: LitStr " AND imputacion.CucuPers = "
  loc_BBFC49: ConcatStr
  loc_BBFC4A: FStStrNoPop var_13C
  loc_BBFC4D: FLdRfVar var_138
  loc_BBFC50: FLdPr Me
  loc_BBFC53: VCallAd Control_ID_CucuPersTxt
  loc_BBFC56: FStAdFunc var_F0
  loc_BBFC59: FLdPr var_F0
  loc_BBFC5C:  = Me.Text
  loc_BBFC61: ILdRf var_138
  loc_BBFC64: ConcatStr
  loc_BBFC65: FStStrNoPop var_140
  loc_BBFC68: ILdRf var_88
  loc_BBFC6B: ConcatStr
  loc_BBFC6C: FStStrNoPop var_144
  loc_BBFC6F: LitStr " GROUP BY ExorImpu"
  loc_BBFC72: ConcatStr
  loc_BBFC73: FStStrNoPop var_148
  loc_BBFC76: LitStr " HAVING ReapImpu <> 0"
  loc_BBFC79: ConcatStr
  loc_BBFC7A: FStStrNoPop var_14C
  loc_BBFC7D: LitStr " ORDER BY FechImpu;"
  loc_BBFC80: ConcatStr
  loc_BBFC81: FStStrNoPop var_150
  loc_BBFC84: FLdPr var_12C
  loc_BBFC87: Call clsbase.RedefineRS(from_stack_1v)
  loc_BBFC8C: FFreeStr var_E8 = "": var_EC = "": var_124 = "": var_130 = "": var_128 = "": var_134 = "": var_13C = "": var_138 = "": var_140 = "": var_144 = "": var_148 = "": var_14C = ""
  loc_BBFCA9: FFreeAd var_B0 = ""
  loc_BBFCB0: LitStr "INSERT INTO tmovi (PeriInfo,CucuPers,ExorImpu,ExpeImpu,Tipo,ReapImpu,ResiImpu,DeexImpu,PagaImpu,FechImpu,NumeFact,FefaDeve,NumeOrpa,FereOrpa,FearOrpa,Orden)"
  loc_BBFCB3: LitStr " SELECT imputacion.PeriInfo, imputacion.CucuPers, Group_concat(Distinct ExorImpu) ExorImpu, imputacion.ExpeImpu, 'Imputac.', 0, Sum(DeveImpu)-Sum(MapaImpu) ResiImpu, 0, 0"
  loc_BBFCB6: ConcatStr
  loc_BBFCB7: FStStrNoPop var_E8
  loc_BBFCBA: LitStr " , Max(FechImpu)"
  loc_BBFCBD: ConcatStr
  loc_BBFCBE: FStStrNoPop var_EC
  loc_BBFCC1: LitStr " , NumeFact factura"
  loc_BBFCC4: ConcatStr
  loc_BBFCC5: FStStrNoPop var_124
  loc_BBFCC8: LitStr ", Max(FefaDeve) FefaDeve, 0, NULL, NULL"
  loc_BBFCCB: ConcatStr
  loc_BBFCCC: FStStrNoPop var_128
  loc_BBFCCF: LitStr " , 2"
  loc_BBFCD2: ConcatStr
  loc_BBFCD3: FStStrNoPop var_130
  loc_BBFCD6: LitStr " FROM imputacion"
  loc_BBFCD9: ConcatStr
  loc_BBFCDA: FStStrNoPop var_134
  loc_BBFCDD: LitStr " WHERE imputacion.PeriInfo = "
  loc_BBFCE0: ConcatStr
  loc_BBFCE1: FStStrNoPop var_13C
  loc_BBFCE4: FLdRfVar var_138
  loc_BBFCE7: FLdPr Me
  loc_BBFCEA: VCallAd Control_ID_cboPeriodo
  loc_BBFCED: FStAdFunc var_B0
  loc_BBFCF0: FLdPr var_B0
  loc_BBFCF3:  = Me.Text
  loc_BBFCF8: ILdRf var_138
  loc_BBFCFB: ConcatStr
  loc_BBFCFC: FStStrNoPop var_140
  loc_BBFCFF: LitStr " AND imputacion.CucuPers = "
  loc_BBFD02: ConcatStr
  loc_BBFD03: FStStrNoPop var_148
  loc_BBFD06: FLdRfVar var_144
  loc_BBFD09: FLdPr Me
  loc_BBFD0C: VCallAd Control_ID_CucuPersTxt
  loc_BBFD0F: FStAdFunc var_F0
  loc_BBFD12: FLdPr var_F0
  loc_BBFD15:  = Me.Text
  loc_BBFD1A: ILdRf var_144
  loc_BBFD1D: ConcatStr
  loc_BBFD1E: FStStrNoPop var_14C
  loc_BBFD21: ILdRf var_88
  loc_BBFD24: ConcatStr
  loc_BBFD25: FStStrNoPop var_150
  loc_BBFD28: LitStr " GROUP BY ExpeImpu, factura"
  loc_BBFD2B: ConcatStr
  loc_BBFD2C: FStStrNoPop var_154
  loc_BBFD2F: LitStr " HAVING ResiImpu <> 0"
  loc_BBFD32: ConcatStr
  loc_BBFD33: FStStrNoPop var_158
  loc_BBFD36: LitStr " ORDER BY FefaDeve;"
  loc_BBFD39: ConcatStr
  loc_BBFD3A: FStStrNoPop var_15C
  loc_BBFD3D: FLdPr var_12C
  loc_BBFD40: Call clsbase.RedefineRS(from_stack_1v)
  loc_BBFD45: FFreeStr var_E8 = "": var_EC = "": var_124 = "": var_128 = "": var_130 = "": var_134 = "": var_13C = "": var_138 = "": var_140 = "": var_148 = "": var_144 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = ""
  loc_BBFD68: FFreeAd var_B0 = ""
  loc_BBFD6F: LitStr "INSERT INTO tmovi (PeriInfo,CucuPers,ExorImpu,ExpeImpu,Tipo,ReapImpu,ResiImpu,DeexImpu,PagaImpu,FechImpu,NumeFact,FefaDeve,NumeOrpa,FereOrpa,FearOrpa,Orden)"
  loc_BBFD72: LitStr " SELECT d.PeriInfo, d.CucuPers, Group_concat(Distinct d.ExorImpu) ExorImpu, d.ExpeImpu, 'Déb.Extr.', 0"
  loc_BBFD75: ConcatStr
  loc_BBFD76: FStStrNoPop var_E8
  loc_BBFD79: LitStr ", ImpoDebi-Sum(IF(ImpoImpu IS NULL || l.NumeOrpa = 0,0,ImpoImpu)) ResiImpu, 0, 0"
  loc_BBFD7C: ConcatStr
  loc_BBFD7D: FStStrNoPop var_EC
  loc_BBFD80: LitStr " , Max(FechDebi)"
  loc_BBFD83: ConcatStr
  loc_BBFD84: FStStrNoPop var_124
  loc_BBFD87: LitStr " , d.NumeFact factura"
  loc_BBFD8A: ConcatStr
  loc_BBFD8B: FStStrNoPop var_128
  loc_BBFD8E: LitStr ", Max(FechDebi) FefaDeve, 0, NULL, NULL"
  loc_BBFD91: ConcatStr
  loc_BBFD92: FStStrNoPop var_130
  loc_BBFD95: LitStr " , 2"
  loc_BBFD98: ConcatStr
  loc_BBFD99: FStStrNoPop var_134
  loc_BBFD9C: LitStr " FROM debito d USE INDEX (idxdebi02)"
  loc_BBFD9F: ConcatStr
  loc_BBFDA0: FStStrNoPop var_138
  loc_BBFDA3: LitStr " INNER JOIN proveedor ON proveedor.CucuPers = d.CucuPers"
  loc_BBFDA6: ConcatStr
  loc_BBFDA7: FStStrNoPop var_13C
  loc_BBFDAA: LitStr " LEFT JOIN liquidadeta ld USE INDEX (idxlide02) ON ld.PeriInfo = d.PeriInfo AND ld.NumeDebi = d.NumeDebi AND (SELECT FeanLiqu FROM liquidacion l WHERE l.PeriInfo = ld.PeriInfo AND l.ExpeImpu = ld.ExpeImpu AND l.NumeLiqu = ld.NumeLiqu) IS NULL"
  loc_BBFDAD: ConcatStr
  loc_BBFDAE: FStStrNoPop var_140
  loc_BBFDB1: LitStr " LEFT JOIN liquidacion l ON l.PeriInfo = ld.PeriInfo AND l.ExpeImpu = ld.ExpeImpu AND l.NumeLiqu = ld.NumeLiqu"
  loc_BBFDB4: ConcatStr
  loc_BBFDB5: FStStrNoPop var_144
  loc_BBFDB8: LitStr " WHERE d.PeriInfo = "
  loc_BBFDBB: ConcatStr
  loc_BBFDBC: FStStrNoPop var_14C
  loc_BBFDBF: FLdRfVar var_148
  loc_BBFDC2: FLdPr Me
  loc_BBFDC5: VCallAd Control_ID_cboPeriodo
  loc_BBFDC8: FStAdFunc var_B0
  loc_BBFDCB: FLdPr var_B0
  loc_BBFDCE:  = Me.Text
  loc_BBFDD3: ILdRf var_148
  loc_BBFDD6: ConcatStr
  loc_BBFDD7: FStStrNoPop var_150
  loc_BBFDDA: LitStr " AND d.FeanDebi IS NULL"
  loc_BBFDDD: ConcatStr
  loc_BBFDDE: FStStrNoPop var_154
  loc_BBFDE1: ILdRf var_8C
  loc_BBFDE4: ConcatStr
  loc_BBFDE5: FStStrNoPop var_158
  loc_BBFDE8: LitStr " AND d.CucuPers = "
  loc_BBFDEB: ConcatStr
  loc_BBFDEC: FStStrNoPop var_160
  loc_BBFDEF: FLdRfVar var_15C
  loc_BBFDF2: FLdPr Me
  loc_BBFDF5: VCallAd Control_ID_CucuPersTxt
  loc_BBFDF8: FStAdFunc var_F0
  loc_BBFDFB: FLdPr var_F0
  loc_BBFDFE:  = Me.Text
  loc_BBFE03: ILdRf var_15C
  loc_BBFE06: ConcatStr
  loc_BBFE07: FStStrNoPop var_164
  loc_BBFE0A: LitStr " GROUP BY d.NumeDebi /* ExpeImpu, ExorImpu, CucuPers */"
  loc_BBFE0D: ConcatStr
  loc_BBFE0E: FStStrNoPop var_168
  loc_BBFE11: LitStr " HAVING ResiImpu > 0;"
  loc_BBFE14: ConcatStr
  loc_BBFE15: FStStrNoPop var_16C
  loc_BBFE18: FLdPr var_12C
  loc_BBFE1B: Call clsbase.RedefineRS(from_stack_1v)
  loc_BBFE20: FFreeStr var_E8 = "": var_EC = "": var_124 = "": var_128 = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_14C = "": var_148 = "": var_150 = "": var_154 = "": var_158 = "": var_160 = "": var_15C = "": var_164 = "": var_168 = ""
  loc_BBFE4B: FFreeAd var_B0 = ""
  loc_BBFE52: LitStr "Municipalidad de Guaymallén"
  loc_BBFE55: LitStr "Municipalidad de Guaymallén"
  loc_BBFE58: EqStr
  loc_BBFE5A: ImpAdLdI2 MemVar_C3D064
  loc_BBFE5D: LitI2 2018
  loc_BBFE60: EqI2
  loc_BBFE61: AndI4
  loc_BBFE62: BranchF loc_BBFF39
  loc_BBFE65: LitStr "INSERT INTO tmovi (PeriInfo,CucuPers,ExorImpu,ExpeImpu,Tipo,ReapImpu,ResiImpu,DeexImpu,PagaImpu,FechImpu,NumeFact,FefaDeve,NumeOrpa,FereOrpa,FearOrpa,Orden)"
  loc_BBFE68: LitStr " SELECT imputacion.PeriInfo, imputacion.CucuPers, Group_concat(Distinct ExorImpu) ExorImpu, imputacion.ExpeImpu, 'Imputac.', 0, 0, Sum(MapaImpu)-Sum(PagaImpu) DeexImpu, 0"
  loc_BBFE6B: ConcatStr
  loc_BBFE6C: FStStrNoPop var_E8
  loc_BBFE6F: LitStr " , Max(FechImpu) FechImpu"
  loc_BBFE72: ConcatStr
  loc_BBFE73: FStStrNoPop var_EC
  loc_BBFE76: LitStr " , NumeFact factura"
  loc_BBFE79: ConcatStr
  loc_BBFE7A: FStStrNoPop var_124
  loc_BBFE7D: LitStr " , Max(FefaDeve) FefaDeve, imputacion.NumeOrpa, FereOrpa, NULL"
  loc_BBFE80: ConcatStr
  loc_BBFE81: FStStrNoPop var_128
  loc_BBFE84: LitStr " , 3"
  loc_BBFE87: ConcatStr
  loc_BBFE88: FStStrNoPop var_130
  loc_BBFE8B: LitStr " FROM imputacion"
  loc_BBFE8E: ConcatStr
  loc_BBFE8F: FStStrNoPop var_134
  loc_BBFE92: LitStr " INNER JOIN ordenpago ON ordenpago.PeriInfo = imputacion.PeriInfo AND ordenpago.NumeOrpa = imputacion.NumeOrpa"
  loc_BBFE95: ConcatStr
  loc_BBFE96: FStStrNoPop var_138
  loc_BBFE99: LitStr " WHERE imputacion.PeriInfo = "
  loc_BBFE9C: ConcatStr
  loc_BBFE9D: FStStrNoPop var_140
  loc_BBFEA0: FLdRfVar var_13C
  loc_BBFEA3: FLdPr Me
  loc_BBFEA6: VCallAd Control_ID_cboPeriodo
  loc_BBFEA9: FStAdFunc var_B0
  loc_BBFEAC: FLdPr var_B0
  loc_BBFEAF:  = Me.Text
  loc_BBFEB4: ILdRf var_13C
  loc_BBFEB7: ConcatStr
  loc_BBFEB8: FStStrNoPop var_144
  loc_BBFEBB: LitStr " AND imputacion.CucuPers = "
  loc_BBFEBE: ConcatStr
  loc_BBFEBF: FStStrNoPop var_14C
  loc_BBFEC2: FLdRfVar var_148
  loc_BBFEC5: FLdPr Me
  loc_BBFEC8: VCallAd Control_ID_CucuPersTxt
  loc_BBFECB: FStAdFunc var_F0
  loc_BBFECE: FLdPr var_F0
  loc_BBFED1:  = Me.Text
  loc_BBFED6: ILdRf var_148
  loc_BBFED9: ConcatStr
  loc_BBFEDA: FStStrNoPop var_150
  loc_BBFEDD: ILdRf var_88
  loc_BBFEE0: ConcatStr
  loc_BBFEE1: FStStrNoPop var_154
  loc_BBFEE4: LitStr " AND (MapaImpu<>0 OR PagaImpu<>0)"
  loc_BBFEE7: ConcatStr
  loc_BBFEE8: FStStrNoPop var_158
  loc_BBFEEB: LitStr " GROUP BY imputacion.ExpeImpu, NumeOrpa"
  loc_BBFEEE: ConcatStr
  loc_BBFEEF: FStStrNoPop var_15C
  loc_BBFEF2: LitStr " HAVING DeexImpu <> 0"
  loc_BBFEF5: ConcatStr
  loc_BBFEF6: FStStrNoPop var_160
  loc_BBFEF9: LitStr " ORDER BY FechImpu;"
  loc_BBFEFC: ConcatStr
  loc_BBFEFD: FStStrNoPop var_164
  loc_BBFF00: FLdPr var_12C
  loc_BBFF03: Call clsbase.RedefineRS(from_stack_1v)
  loc_BBFF08: FFreeStr var_E8 = "": var_EC = "": var_124 = "": var_128 = "": var_130 = "": var_134 = "": var_138 = "": var_140 = "": var_13C = "": var_144 = "": var_14C = "": var_148 = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = ""
  loc_BBFF2F: FFreeAd var_B0 = ""
  loc_BBFF36: Branch loc_BC000A
  loc_BBFF39: LitStr "INSERT INTO tmovi (PeriInfo,CucuPers,ExorImpu,ExpeImpu,Tipo,ReapImpu,ResiImpu,DeexImpu,PagaImpu,FechImpu,NumeFact,FefaDeve,NumeOrpa,FereOrpa,FearOrpa,Orden)"
  loc_BBFF3C: LitStr " SELECT imputacion.PeriInfo, imputacion.CucuPers, Group_concat(Distinct ExorImpu) ExorImpu, imputacion.ExpeImpu, 'Imputac.', 0, 0, Sum(MapaImpu)-Sum(PagaImpu) DeexImpu, 0"
  loc_BBFF3F: ConcatStr
  loc_BBFF40: FStStrNoPop var_E8
  loc_BBFF43: LitStr " , Max(FechImpu) FechImpu"
  loc_BBFF46: ConcatStr
  loc_BBFF47: FStStrNoPop var_EC
  loc_BBFF4A: LitStr " , NumeFact factura"
  loc_BBFF4D: ConcatStr
  loc_BBFF4E: FStStrNoPop var_124
  loc_BBFF51: LitStr " , Max(FefaDeve) FefaDeve, imputacion.NumeOrpa, FereOrpa, NULL"
  loc_BBFF54: ConcatStr
  loc_BBFF55: FStStrNoPop var_128
  loc_BBFF58: LitStr " , 3"
  loc_BBFF5B: ConcatStr
  loc_BBFF5C: FStStrNoPop var_130
  loc_BBFF5F: LitStr " FROM imputacion"
  loc_BBFF62: ConcatStr
  loc_BBFF63: FStStrNoPop var_134
  loc_BBFF66: LitStr " INNER JOIN ordenpago ON ordenpago.PeriInfo = imputacion.PeriInfo AND ordenpago.NumeOrpa = imputacion.NumeOrpa"
  loc_BBFF69: ConcatStr
  loc_BBFF6A: FStStrNoPop var_138
  loc_BBFF6D: LitStr " WHERE imputacion.PeriInfo = "
  loc_BBFF70: ConcatStr
  loc_BBFF71: FStStrNoPop var_140
  loc_BBFF74: FLdRfVar var_13C
  loc_BBFF77: FLdPr Me
  loc_BBFF7A: VCallAd Control_ID_cboPeriodo
  loc_BBFF7D: FStAdFunc var_B0
  loc_BBFF80: FLdPr var_B0
  loc_BBFF83:  = Me.Text
  loc_BBFF88: ILdRf var_13C
  loc_BBFF8B: ConcatStr
  loc_BBFF8C: FStStrNoPop var_144
  loc_BBFF8F: LitStr " AND imputacion.CucuPers = "
  loc_BBFF92: ConcatStr
  loc_BBFF93: FStStrNoPop var_14C
  loc_BBFF96: FLdRfVar var_148
  loc_BBFF99: FLdPr Me
  loc_BBFF9C: VCallAd Control_ID_CucuPersTxt
  loc_BBFF9F: FStAdFunc var_F0
  loc_BBFFA2: FLdPr var_F0
  loc_BBFFA5:  = Me.Text
  loc_BBFFAA: ILdRf var_148
  loc_BBFFAD: ConcatStr
  loc_BBFFAE: FStStrNoPop var_150
  loc_BBFFB1: ILdRf var_88
  loc_BBFFB4: ConcatStr
  loc_BBFFB5: FStStrNoPop var_154
  loc_BBFFB8: LitStr " AND (MapaImpu<>0 OR PagaImpu<>0)"
  loc_BBFFBB: ConcatStr
  loc_BBFFBC: FStStrNoPop var_158
  loc_BBFFBF: LitStr " GROUP BY imputacion.ExpeImpu, NumeOrpa, factura"
  loc_BBFFC2: ConcatStr
  loc_BBFFC3: FStStrNoPop var_15C
  loc_BBFFC6: LitStr " HAVING DeexImpu <> 0"
  loc_BBFFC9: ConcatStr
  loc_BBFFCA: FStStrNoPop var_160
  loc_BBFFCD: LitStr " ORDER BY FechImpu;"
  loc_BBFFD0: ConcatStr
  loc_BBFFD1: FStStrNoPop var_164
  loc_BBFFD4: FLdPr var_12C
  loc_BBFFD7: Call clsbase.RedefineRS(from_stack_1v)
  loc_BBFFDC: FFreeStr var_E8 = "": var_EC = "": var_124 = "": var_128 = "": var_130 = "": var_134 = "": var_138 = "": var_140 = "": var_13C = "": var_144 = "": var_14C = "": var_148 = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = ""
  loc_BC0003: FFreeAd var_B0 = ""
  loc_BC000A: LitStr "INSERT INTO tmovi (PeriInfo,CucuPers,ExorImpu,ExpeImpu,Tipo,ReapImpu,ResiImpu,DeexImpu,PagaImpu,FechImpu,NumeFact,FefaDeve,NumeOrpa,FereOrpa,FearOrpa,Orden)"
  loc_BC000D: LitStr " SELECT o.PeriInfo, ld.CucuPers, Group_concat(Distinct d.ExorImpu) ExorImpu, o.ExpeImpu, 'Déb.Extr.', 0, 0, Sum(ImpoImpu) DeexImpu, 0"
  loc_BC0010: ConcatStr
  loc_BC0011: FStStrNoPop var_E8
  loc_BC0014: LitStr ", FechOrpa"
  loc_BC0017: ConcatStr
  loc_BC0018: FStStrNoPop var_EC
  loc_BC001B: LitStr ", ld.NumeFact factura"
  loc_BC001E: ConcatStr
  loc_BC001F: FStStrNoPop var_124
  loc_BC0022: LitStr ", FechOrpa FefaDeve, o.NumeOrpa, FereOrpa"
  loc_BC0025: ConcatStr
  loc_BC0026: FStStrNoPop var_128
  loc_BC0029: LitStr ", (SELECT Max(FechCaja) FROM liquidaneto ln WHERE ln.PeriInfo = o.PeriInfo AND ln.ExpeImpu = o.ExpeImpu AND ln.NumeLiqu = o.NumeLiqu AND ln.CucuPers = ld.CucuPers) FechCaja"
  loc_BC002C: ConcatStr
  loc_BC002D: FStStrNoPop var_130
  loc_BC0030: LitStr ", 3"
  loc_BC0033: ConcatStr
  loc_BC0034: FStStrNoPop var_134
  loc_BC0037: LitStr " FROM ordenpago o"
  loc_BC003A: ConcatStr
  loc_BC003B: FStStrNoPop var_138
  loc_BC003E: LitStr " INNER JOIN liquidadeta ld ON ld.PeriInfo = o.PeriInfo AND ld.ExpeImpu = o.ExpeImpu AND ld.NumeLiqu = o.NumeLiqu"
  loc_BC0041: ConcatStr
  loc_BC0042: FStStrNoPop var_13C
  loc_BC0045: LitStr " AND ld.CucuPers = "
  loc_BC0048: ConcatStr
  loc_BC0049: FStStrNoPop var_144
  loc_BC004C: FLdRfVar var_140
  loc_BC004F: FLdPr Me
  loc_BC0052: VCallAd Control_ID_CucuPersTxt
  loc_BC0055: FStAdFunc var_B0
  loc_BC0058: FLdPr var_B0
  loc_BC005B:  = Me.Text
  loc_BC0060: ILdRf var_140
  loc_BC0063: ConcatStr
  loc_BC0064: FStStrNoPop var_148
  loc_BC0067: LitStr " INNER JOIN debito d ON d.PeriInfo = ld.PeriInfo AND d.NumeDebi = ld.NumeDebi"
  loc_BC006A: ConcatStr
  loc_BC006B: FStStrNoPop var_14C
  loc_BC006E: LitStr " WHERE o.PeriInfo = "
  loc_BC0071: ConcatStr
  loc_BC0072: FStStrNoPop var_154
  loc_BC0075: FLdRfVar var_150
  loc_BC0078: FLdPr Me
  loc_BC007B: VCallAd Control_ID_cboPeriodo
  loc_BC007E: FStAdFunc var_F0
  loc_BC0081: FLdPr var_F0
  loc_BC0084:  = Me.Text
  loc_BC0089: ILdRf var_150
  loc_BC008C: ConcatStr
  loc_BC008D: FStStrNoPop var_158
  loc_BC0090: LitStr " AND TipoOrpa = 'Debito' AND FeanOrpa IS NULL"
  loc_BC0093: ConcatStr
  loc_BC0094: FStStrNoPop var_15C
  loc_BC0097: LitStr " GROUP BY o.ExpeImpu, NumeOrpa, factura"
  loc_BC009A: ConcatStr
  loc_BC009B: FStStrNoPop var_160
  loc_BC009E: LitStr " HAVING DeexImpu <> 0 AND FechCaja IS NULL"
  loc_BC00A1: ConcatStr
  loc_BC00A2: FStStrNoPop var_164
  loc_BC00A5: LitStr " ORDER BY FefaDeve;"
  loc_BC00A8: ConcatStr
  loc_BC00A9: FStStrNoPop var_168
  loc_BC00AC: FLdPr var_12C
  loc_BC00AF: Call clsbase.RedefineRS(from_stack_1v)
  loc_BC00B4: FFreeStr var_E8 = "": var_EC = "": var_124 = "": var_128 = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_144 = "": var_140 = "": var_148 = "": var_14C = "": var_154 = "": var_150 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = ""
  loc_BC00DD: FFreeAd var_B0 = ""
  loc_BC00E4: LitStr "INSERT INTO tmovi (PeriInfo,CucuPers,ExorImpu,ExpeImpu,Tipo,ReapImpu,ResiImpu,DeexImpu,PagaImpu,FechImpu,NumeFact,FefaDeve,NumeOrpa,FereOrpa,FearOrpa,Orden)"
  loc_BC00E7: LitStr " SELECT i.PeriInfo, i.CucuPers, Group_concat(Distinct ExorImpu) ExorImpu, i.ExpeImpu, 'Imputac.', 0, 0, 0, Sum(PagaImpu) PagaImpu"
  loc_BC00EA: ConcatStr
  loc_BC00EB: FStStrNoPop var_E8
  loc_BC00EE: LitStr " , Max(FechImpu) FechImpu, NumeFact factura, Max(FefaDeve) FefaDeve, i.NumeOrpa, FereOrpa"
  loc_BC00F1: ConcatStr
  loc_BC00F2: FStStrNoPop var_EC
  loc_BC00F5: LitStr ", (SELECT Max(FechCaja) FROM liquidaneto ln WHERE ln.PeriInfo = i.PeriInfo AND ln.ExpeImpu = i.ExpeImpu AND ln.NumeLiqu = i.NumeLiqu AND ln.CucuPers = i.CucuPers) FechCaja"
  loc_BC00F8: ConcatStr
  loc_BC00F9: FStStrNoPop var_124
  loc_BC00FC: LitStr " , 4"
  loc_BC00FF: ConcatStr
  loc_BC0100: FStStrNoPop var_128
  loc_BC0103: LitStr " FROM imputacion i"
  loc_BC0106: ConcatStr
  loc_BC0107: FStStrNoPop var_130
  loc_BC010A: LitStr " INNER JOIN ordenpago ON ordenpago.PeriInfo = i.PeriInfo AND ordenpago.NumeOrpa = i.NumeOrpa"
  loc_BC010D: ConcatStr
  loc_BC010E: FStStrNoPop var_134
  loc_BC0111: LitStr " WHERE i.PeriInfo = "
  loc_BC0114: ConcatStr
  loc_BC0115: FStStrNoPop var_13C
  loc_BC0118: FLdRfVar var_138
  loc_BC011B: FLdPr Me
  loc_BC011E: VCallAd Control_ID_cboPeriodo
  loc_BC0121: FStAdFunc var_B0
  loc_BC0124: FLdPr var_B0
  loc_BC0127:  = Me.Text
  loc_BC012C: ILdRf var_138
  loc_BC012F: ConcatStr
  loc_BC0130: FStStrNoPop var_140
  loc_BC0133: LitStr " AND i.CucuPers = "
  loc_BC0136: ConcatStr
  loc_BC0137: FStStrNoPop var_148
  loc_BC013A: FLdRfVar var_144
  loc_BC013D: FLdPr Me
  loc_BC0140: VCallAd Control_ID_CucuPersTxt
  loc_BC0143: FStAdFunc var_F0
  loc_BC0146: FLdPr var_F0
  loc_BC0149:  = Me.Text
  loc_BC014E: ILdRf var_144
  loc_BC0151: ConcatStr
  loc_BC0152: FStStrNoPop var_14C
  loc_BC0155: ILdRf var_88
  loc_BC0158: ConcatStr
  loc_BC0159: FStStrNoPop var_150
  loc_BC015C: LitStr " GROUP BY ExpeImpu, NumeOrpa, factura"
  loc_BC015F: ConcatStr
  loc_BC0160: FStStrNoPop var_154
  loc_BC0163: LitStr " HAVING PagaImpu <> 0"
  loc_BC0166: ConcatStr
  loc_BC0167: FStStrNoPop var_158
  loc_BC016A: LitStr " ORDER BY FechImpu;"
  loc_BC016D: ConcatStr
  loc_BC016E: FStStrNoPop var_15C
  loc_BC0171: FLdPr var_12C
  loc_BC0174: Call clsbase.RedefineRS(from_stack_1v)
  loc_BC0179: FFreeStr var_E8 = "": var_EC = "": var_124 = "": var_128 = "": var_130 = "": var_134 = "": var_13C = "": var_138 = "": var_140 = "": var_148 = "": var_144 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = ""
  loc_BC019C: FFreeAd var_B0 = ""
  loc_BC01A3: LitStr "INSERT INTO tmovi (PeriInfo,CucuPers,ExorImpu,ExpeImpu,Tipo,ReapImpu,ResiImpu,DeexImpu,PagaImpu,FechImpu,NumeFact,FefaDeve,NumeOrpa,FereOrpa,FearOrpa,Orden)"
  loc_BC01A6: LitStr " SELECT o.PeriInfo, ld.CucuPers, Group_concat(Distinct d.ExorImpu) ExorImpu, o.ExpeImpu, 'Déb.Extr.', 0, 0, 0, Sum(ImpoImpu) PagaImpu"
  loc_BC01A9: ConcatStr
  loc_BC01AA: FStStrNoPop var_E8
  loc_BC01AD: LitStr ", FechOrpa"
  loc_BC01B0: ConcatStr
  loc_BC01B1: FStStrNoPop var_EC
  loc_BC01B4: LitStr ", ld.NumeFact factura"
  loc_BC01B7: ConcatStr
  loc_BC01B8: FStStrNoPop var_124
  loc_BC01BB: LitStr ", FechOrpa FefaDeve, o.NumeOrpa, FereOrpa"
  loc_BC01BE: ConcatStr
  loc_BC01BF: FStStrNoPop var_128
  loc_BC01C2: LitStr ", (SELECT Max(FechCaja) FROM liquidaneto ln WHERE ln.PeriInfo = o.PeriInfo AND ln.ExpeImpu = o.ExpeImpu AND ln.NumeLiqu = o.NumeLiqu AND ln.CucuPers = ld.CucuPers) FechCaja"
  loc_BC01C5: ConcatStr
  loc_BC01C6: FStStrNoPop var_130
  loc_BC01C9: LitStr ", 4"
  loc_BC01CC: ConcatStr
  loc_BC01CD: FStStrNoPop var_134
  loc_BC01D0: LitStr " FROM ordenpago o"
  loc_BC01D3: ConcatStr
  loc_BC01D4: FStStrNoPop var_138
  loc_BC01D7: LitStr " INNER JOIN liquidadeta ld ON ld.PeriInfo = o.PeriInfo AND ld.ExpeImpu = o.ExpeImpu AND ld.NumeLiqu = o.NumeLiqu"
  loc_BC01DA: ConcatStr
  loc_BC01DB: FStStrNoPop var_13C
  loc_BC01DE: LitStr " AND ld.CucuPers = "
  loc_BC01E1: ConcatStr
  loc_BC01E2: FStStrNoPop var_144
  loc_BC01E5: FLdRfVar var_140
  loc_BC01E8: FLdPr Me
  loc_BC01EB: VCallAd Control_ID_CucuPersTxt
  loc_BC01EE: FStAdFunc var_B0
  loc_BC01F1: FLdPr var_B0
  loc_BC01F4:  = Me.Text
  loc_BC01F9: ILdRf var_140
  loc_BC01FC: ConcatStr
  loc_BC01FD: FStStrNoPop var_148
  loc_BC0200: LitStr " INNER JOIN debito d ON d.PeriInfo = ld.PeriInfo AND d.NumeDebi = ld.NumeDebi"
  loc_BC0203: ConcatStr
  loc_BC0204: FStStrNoPop var_14C
  loc_BC0207: LitStr " WHERE o.PeriInfo = "
  loc_BC020A: ConcatStr
  loc_BC020B: FStStrNoPop var_154
  loc_BC020E: FLdRfVar var_150
  loc_BC0211: FLdPr Me
  loc_BC0214: VCallAd Control_ID_cboPeriodo
  loc_BC0217: FStAdFunc var_F0
  loc_BC021A: FLdPr var_F0
  loc_BC021D:  = Me.Text
  loc_BC0222: ILdRf var_150
  loc_BC0225: ConcatStr
  loc_BC0226: FStStrNoPop var_158
  loc_BC0229: LitStr " AND TipoOrpa = 'Debito' AND FeanOrpa IS NULL"
  loc_BC022C: ConcatStr
  loc_BC022D: FStStrNoPop var_15C
  loc_BC0230: LitStr " GROUP BY o.ExpeImpu, o.NumeOrpa, factura"
  loc_BC0233: ConcatStr
  loc_BC0234: FStStrNoPop var_160
  loc_BC0237: LitStr " HAVING PagaImpu <> 0 AND FechCaja IS NOT NULL"
  loc_BC023A: ConcatStr
  loc_BC023B: FStStrNoPop var_164
  loc_BC023E: LitStr " ORDER BY FefaDeve;"
  loc_BC0241: ConcatStr
  loc_BC0242: FStStrNoPop var_168
  loc_BC0245: FLdPr var_12C
  loc_BC0248: Call clsbase.RedefineRS(from_stack_1v)
  loc_BC024D: FFreeStr var_E8 = "": var_EC = "": var_124 = "": var_128 = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_144 = "": var_140 = "": var_148 = "": var_14C = "": var_154 = "": var_150 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = ""
  loc_BC0276: FFreeAd var_B0 = ""
  loc_BC027D: LitStr "DROP TEMPORARY TABLE IF EXISTS tmp;"
  loc_BC0280: LitStr " CREATE TEMPORARY TABLE tmp"
  loc_BC0283: ConcatStr
  loc_BC0284: FStStrNoPop var_E8
  loc_BC0287: LitStr " SELECT * FROM tmovi;"
  loc_BC028A: ConcatStr
  loc_BC028B: FStStrNoPop var_EC
  loc_BC028E: FLdPr var_12C
  loc_BC0291: Call clsbase.RedefineRS(from_stack_1v)
  loc_BC0296: FFreeStr var_E8 = ""
  loc_BC029D: LitStr "SET @@SESSION.collation_connection = 'latin1_swedish_ci';"
  loc_BC02A0: FLdPr var_12C
  loc_BC02A3: Call clsbase.RedefineRS(from_stack_1v)
  loc_BC02A8: LitStr "Municipalidad de Guaymallén"
  loc_BC02AB: LitStr "Municipalidad de General Alvear"
  loc_BC02AE: EqStr
  loc_BC02B0: BranchF loc_BC031E
  loc_BC02B3: LitStr "SELECT PeriInfo, tmovi.CucuPers, DetaProv, IFNULL(e.ExpeGDE,tmovi.ExorImpu) ExorImpu, IFNULL(e2.ExpeGDE,tmovi.ExpeImpu) ExpeImpu, Tipo, Sum(ReapImpu) ReapImpu, Sum(ResiImpu) ResiImpu, Sum(DeexImpu) DeexImpu, Sum(PagaImpu) PagaImpu, FechImpu, NumeFact, FefaDeve, NumeOrpa, FereOrpa, FearOrpa"
  loc_BC02B6: LitStr ", (SELECT Count(PeriInfo) FROM tmp WHERE tmp.PeriInfo = tmovi.PeriInfo AND tmp.NumeOrpa = tmovi.NumeOrpa AND tmp.NumeOrpa > 0) RowSpan"
  loc_BC02B9: ConcatStr
  loc_BC02BA: FStStrNoPop var_E8
  loc_BC02BD: LitStr ", IF(DeexImpu <> 0 OR PagaImpu <> 0 ,(SELECT Sum(ImpoCheq) FROM cheque WHERE cheque.PeriInfo = tmovi.PeriInfo AND cheque.NumeOrpa = tmovi.NumeOrpa AND cheque.CucuPers = tmovi.CucuPers AND NumeMoba > 0 AND FeanCheq IS NULL), 0) ImpoCheq"
  loc_BC02C0: ConcatStr
  loc_BC02C1: FStStrNoPop var_EC
  loc_BC02C4: LitStr ", IF(DeexImpu <> 0 OR PagaImpu <> 0 ,(SELECT Sum(ImpoLine) FROM liquidacion l INNER JOIN liquidaneto ln ON ln.PeriInfo = l.PeriInfo AND ln.ExpeImpu = l.ExpeImpu AND ln.NumeLiqu = l.NumeLiqu AND CodiRete > 0 WHERE l.PeriInfo = tmovi.PeriInfo AND l.NumeOrpa = tmovi.NumeOrpa AND ln.CucuPers = tmovi.CucuPers), 0) TotaRete"
  loc_BC02C7: ConcatStr
  loc_BC02C8: FStStrNoPop var_124
  loc_BC02CB: LitStr ", IF(DeexImpu <> 0 OR PagaImpu <> 0 ,CONVERT((SELECT Group_Concat(Distinct CodiBanc) FROM cheque WHERE cheque.PeriInfo = tmovi.PeriInfo AND cheque.NumeOrpa = tmovi.NumeOrpa AND NumeMoba > 0 AND FeanCheq IS NULL),CHAR), '') DistBanc"
  loc_BC02CE: ConcatStr
  loc_BC02CF: FStStrNoPop var_128
  loc_BC02D2: LitStr " FROM tmovi"
  loc_BC02D5: ConcatStr
  loc_BC02D6: FStStrNoPop var_130
  loc_BC02D9: LitStr " LEFT JOIN expediente e ON e.ExpeInfo = tmovi.ExorImpu"
  loc_BC02DC: ConcatStr
  loc_BC02DD: FStStrNoPop var_134
  loc_BC02E0: LitStr " LEFT JOIN expediente e2 ON e2.ExpeInfo = tmovi.ExpeImpu"
  loc_BC02E3: ConcatStr
  loc_BC02E4: FStStrNoPop var_138
  loc_BC02E7: LitStr " INNER JOIN proveedor ON proveedor.CucuPers = tmovi.CucuPers"
  loc_BC02EA: ConcatStr
  loc_BC02EB: FStStrNoPop var_13C
  loc_BC02EE: LitStr " GROUP BY Orden, Suborden, ExorImpu, ExpeImpu, NumeOrpa, NumeFact"
  loc_BC02F1: ConcatStr
  loc_BC02F2: FStStrNoPop var_140
  loc_BC02F5: LitStr " ORDER BY Orden, Suborden, ExorImpu, ExpeImpu, NumeOrpa, NumeFact;"
  loc_BC02F8: ConcatStr
  loc_BC02F9: FStStrNoPop var_144
  loc_BC02FC: FLdPr var_12C
  loc_BC02FF: Call clsbase.RedefineRS(from_stack_1v)
  loc_BC0304: FFreeStr var_E8 = "": var_EC = "": var_124 = "": var_128 = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = ""
  loc_BC031B: Branch loc_BC0374
  loc_BC031E: LitStr "SELECT PeriInfo, tmovi.CucuPers, DetaProv, ExorImpu, ExpeImpu, Tipo, Sum(ReapImpu) ReapImpu, Sum(ResiImpu) ResiImpu, Sum(DeexImpu) DeexImpu, Sum(PagaImpu) PagaImpu, FechImpu, NumeFact, FefaDeve, NumeOrpa, FereOrpa, FearOrpa"
  loc_BC0321: LitStr ", (SELECT Count(PeriInfo) FROM tmp WHERE tmp.PeriInfo = tmovi.PeriInfo AND tmp.NumeOrpa = tmovi.NumeOrpa AND tmp.NumeOrpa > 0) RowSpan"
  loc_BC0324: ConcatStr
  loc_BC0325: FStStrNoPop var_E8
  loc_BC0328: LitStr ", IF(DeexImpu <> 0 OR PagaImpu <> 0 ,(SELECT Sum(ImpoCheq) FROM cheque WHERE cheque.PeriInfo = tmovi.PeriInfo AND cheque.NumeOrpa = tmovi.NumeOrpa AND cheque.CucuPers = tmovi.CucuPers AND NumeMoba > 0 AND FeanCheq IS NULL), 0) ImpoCheq"
  loc_BC032B: ConcatStr
  loc_BC032C: FStStrNoPop var_EC
  loc_BC032F: LitStr ", IF(DeexImpu <> 0 OR PagaImpu <> 0 ,(SELECT Sum(ImpoLine) FROM liquidacion l INNER JOIN liquidaneto ln ON ln.PeriInfo = l.PeriInfo AND ln.ExpeImpu = l.ExpeImpu AND ln.NumeLiqu = l.NumeLiqu AND CodiRete > 0 WHERE l.PeriInfo = tmovi.PeriInfo AND l.NumeOrpa = tmovi.NumeOrpa AND ln.CucuPers = tmovi.CucuPers), 0) TotaRete"
  loc_BC0332: ConcatStr
  loc_BC0333: FStStrNoPop var_124
  loc_BC0336: LitStr ", IF(DeexImpu <> 0 OR PagaImpu <> 0 ,CONVERT((SELECT Group_Concat(Distinct CodiBanc) FROM cheque WHERE cheque.PeriInfo = tmovi.PeriInfo AND cheque.NumeOrpa = tmovi.NumeOrpa AND NumeMoba > 0 AND FeanCheq IS NULL),CHAR), '') DistBanc"
  loc_BC0339: ConcatStr
  loc_BC033A: FStStrNoPop var_128
  loc_BC033D: LitStr " FROM tmovi"
  loc_BC0340: ConcatStr
  loc_BC0341: FStStrNoPop var_130
  loc_BC0344: LitStr " INNER JOIN proveedor ON proveedor.CucuPers = tmovi.CucuPers"
  loc_BC0347: ConcatStr
  loc_BC0348: FStStrNoPop var_134
  loc_BC034B: LitStr " GROUP BY Orden, Suborden, ExorImpu, ExpeImpu, NumeOrpa, NumeFact"
  loc_BC034E: ConcatStr
  loc_BC034F: FStStrNoPop var_138
  loc_BC0352: LitStr " ORDER BY Orden, Suborden, ExorImpu, ExpeImpu, NumeOrpa, NumeFact;"
  loc_BC0355: ConcatStr
  loc_BC0356: FStStrNoPop var_13C
  loc_BC0359: FLdPr var_12C
  loc_BC035C: Call clsbase.RedefineRS(from_stack_1v)
  loc_BC0361: FFreeStr var_E8 = "": var_EC = "": var_124 = "": var_128 = "": var_130 = "": var_134 = "": var_138 = ""
  loc_BC0374: FLdRfVar var_170
  loc_BC0377: FLdPr var_12C
  loc_BC037A: from_stack_1 = clsbase.RecordCount
  loc_BC037F: ILdRf var_170
  loc_BC0382: LitI4 0
  loc_BC0387: EqI4
  loc_BC0388: BranchF loc_BC039B
  loc_BC038B: LitI4 0
  loc_BC0390: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_BC0393: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BC0398: Branch loc_BC0B06
  loc_BC039B: LitStr vbNullString
  loc_BC039E: FLdPr Me
  loc_BC03A1: MemStStrCopy
  loc_BC03A5: LitStr vbNullString
  loc_BC03A8: FLdPr Me
  loc_BC03AB: MemStStrCopy
  loc_BC03AF: LitStr vbNullString
  loc_BC03B2: FLdPr Me
  loc_BC03B5: MemStStrCopy
  loc_BC03B9: LitStr vbNullString
  loc_BC03BC: FLdPr Me
  loc_BC03BF: MemStStrCopy
  loc_BC03C3: LitI4 0
  loc_BC03C8: FLdRfVar var_170
  loc_BC03CB: FLdPr var_12C
  loc_BC03CE: from_stack_1 = clsbase.RecordCount
  loc_BC03D3: ILdRf var_170
  loc_BC03D6: FLdPr Me
  loc_BC03D9: MemLdRfVar from_stack_1.global_80
  loc_BC03DC: Redim
  loc_BC03E6: FLdPr var_12C
  loc_BC03E9: Call clsbase.MoveFirst()
  loc_BC03EE: LitI2_Byte 1
  loc_BC03F0: FLdPr Me
  loc_BC03F3: MemLdRfVar from_stack_1.global_156
  loc_BC03F6: FLdPr Me
  loc_BC03F9: MemLdStr global_80
  loc_BC03FC: LitI2_Byte 1
  loc_BC03FE: FnUBound
  loc_BC0400: CI2I4
  loc_BC0401: ForI2 var_174
  loc_BC0407: FLdRfVar var_178
  loc_BC040A: LitVarStr var_9C, "ExorImpu"
  loc_BC040F: PopAdLdVar
  loc_BC0410: FLdRfVar var_F0
  loc_BC0413: FLdRfVar var_B0
  loc_BC0416: FLdPr Me
  loc_BC0419: MemLdRfVar from_stack_1.global_72
  loc_BC041C: NewIfNullPr clsbase
  loc_BC041F: from_stack_1v = clsbase.RsFrmGet()
  loc_BC0424: FLdPr var_B0
  loc_BC0427:  = Me.Fields
  loc_BC042C: FLdPr var_F0
  loc_BC042F: from_stack_2 = Me.Item(from_stack_1)
  loc_BC0434: LitI2_Byte 0
  loc_BC0436: LitVar_Missing var_D4
  loc_BC0439: LitI2_Byte 0
  loc_BC043B: FLdZeroAd var_178
  loc_BC043E: CVarAd
  loc_BC0442: PopAdLdVar
  loc_BC0443: FLdPr Me
  loc_BC0446: MemLdI2 global_156
  loc_BC0449: CI4UI1
  loc_BC044A: FLdPr Me
  loc_BC044D: MemLdStr global_80
  loc_BC0450: AryLock
  loc_BC0453: Ary1LdPr
  loc_BC0454: MemLdRfVar from_stack_1.global_0
  loc_BC0457: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC045C: AryUnlock
  loc_BC045F: FFreeAd var_B0 = ""
  loc_BC0466: FFreeVar var_C4 = ""
  loc_BC046D: FLdRfVar var_178
  loc_BC0470: LitVarStr var_9C, "ExpeImpu"
  loc_BC0475: PopAdLdVar
  loc_BC0476: FLdRfVar var_F0
  loc_BC0479: FLdRfVar var_B0
  loc_BC047C: FLdPr Me
  loc_BC047F: MemLdRfVar from_stack_1.global_72
  loc_BC0482: NewIfNullPr clsbase
  loc_BC0485: from_stack_1v = clsbase.RsFrmGet()
  loc_BC048A: FLdPr var_B0
  loc_BC048D:  = Me.Fields
  loc_BC0492: FLdPr var_F0
  loc_BC0495: from_stack_2 = Me.Item(from_stack_1)
  loc_BC049A: LitI2_Byte 0
  loc_BC049C: LitVar_Missing var_D4
  loc_BC049F: LitI2_Byte 0
  loc_BC04A1: FLdZeroAd var_178
  loc_BC04A4: CVarAd
  loc_BC04A8: PopAdLdVar
  loc_BC04A9: FLdPr Me
  loc_BC04AC: MemLdI2 global_156
  loc_BC04AF: CI4UI1
  loc_BC04B0: FLdPr Me
  loc_BC04B3: MemLdStr global_80
  loc_BC04B6: AryLock
  loc_BC04B9: Ary1LdPr
  loc_BC04BA: MemLdRfVar from_stack_1.global_4
  loc_BC04BD: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC04C2: AryUnlock
  loc_BC04C5: FFreeAd var_B0 = ""
  loc_BC04CC: FFreeVar var_C4 = ""
  loc_BC04D3: FLdRfVar var_178
  loc_BC04D6: LitVarStr var_9C, "Tipo"
  loc_BC04DB: PopAdLdVar
  loc_BC04DC: FLdRfVar var_F0
  loc_BC04DF: FLdRfVar var_B0
  loc_BC04E2: FLdPr Me
  loc_BC04E5: MemLdRfVar from_stack_1.global_72
  loc_BC04E8: NewIfNullPr clsbase
  loc_BC04EB: from_stack_1v = clsbase.RsFrmGet()
  loc_BC04F0: FLdPr var_B0
  loc_BC04F3:  = Me.Fields
  loc_BC04F8: FLdPr var_F0
  loc_BC04FB: from_stack_2 = Me.Item(from_stack_1)
  loc_BC0500: LitI2_Byte 0
  loc_BC0502: LitVar_Missing var_D4
  loc_BC0505: LitI2_Byte 0
  loc_BC0507: FLdZeroAd var_178
  loc_BC050A: CVarAd
  loc_BC050E: PopAdLdVar
  loc_BC050F: FLdPr Me
  loc_BC0512: MemLdI2 global_156
  loc_BC0515: CI4UI1
  loc_BC0516: FLdPr Me
  loc_BC0519: MemLdStr global_80
  loc_BC051C: AryLock
  loc_BC051F: Ary1LdPr
  loc_BC0520: MemLdRfVar from_stack_1.global_8
  loc_BC0523: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC0528: AryUnlock
  loc_BC052B: FFreeAd var_B0 = ""
  loc_BC0532: FFreeVar var_C4 = ""
  loc_BC0539: FLdRfVar var_178
  loc_BC053C: LitVarStr var_9C, "ReapImpu"
  loc_BC0541: PopAdLdVar
  loc_BC0542: FLdRfVar var_F0
  loc_BC0545: FLdRfVar var_B0
  loc_BC0548: FLdPr Me
  loc_BC054B: MemLdRfVar from_stack_1.global_72
  loc_BC054E: NewIfNullPr clsbase
  loc_BC0551: from_stack_1v = clsbase.RsFrmGet()
  loc_BC0556: FLdPr var_B0
  loc_BC0559:  = Me.Fields
  loc_BC055E: FLdPr var_F0
  loc_BC0561: from_stack_2 = Me.Item(from_stack_1)
  loc_BC0566: LitI2_Byte 0
  loc_BC0568: FLdPr Me
  loc_BC056B: MemLdRfVar from_stack_1.global_96
  loc_BC056E: CVarRef
  loc_BC0573: LitI2_Byte &HFF
  loc_BC0575: FLdZeroAd var_178
  loc_BC0578: CVarAd
  loc_BC057C: PopAdLdVar
  loc_BC057D: FLdPr Me
  loc_BC0580: MemLdI2 global_156
  loc_BC0583: CI4UI1
  loc_BC0584: FLdPr Me
  loc_BC0587: MemLdStr global_80
  loc_BC058A: AryLock
  loc_BC058D: Ary1LdPr
  loc_BC058E: MemLdRfVar from_stack_1.global_12
  loc_BC0591: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC0596: AryUnlock
  loc_BC0599: FFreeAd var_B0 = ""
  loc_BC05A0: FFree1Var var_C4 = ""
  loc_BC05A3: FLdRfVar var_178
  loc_BC05A6: LitVarStr var_9C, "ResiImpu"
  loc_BC05AB: PopAdLdVar
  loc_BC05AC: FLdRfVar var_F0
  loc_BC05AF: FLdRfVar var_B0
  loc_BC05B2: FLdPr Me
  loc_BC05B5: MemLdRfVar from_stack_1.global_72
  loc_BC05B8: NewIfNullPr clsbase
  loc_BC05BB: from_stack_1v = clsbase.RsFrmGet()
  loc_BC05C0: FLdPr var_B0
  loc_BC05C3:  = Me.Fields
  loc_BC05C8: FLdPr var_F0
  loc_BC05CB: from_stack_2 = Me.Item(from_stack_1)
  loc_BC05D0: LitI2_Byte 0
  loc_BC05D2: FLdPr Me
  loc_BC05D5: MemLdRfVar from_stack_1.global_100
  loc_BC05D8: CVarRef
  loc_BC05DD: LitI2_Byte &HFF
  loc_BC05DF: FLdZeroAd var_178
  loc_BC05E2: CVarAd
  loc_BC05E6: PopAdLdVar
  loc_BC05E7: FLdPr Me
  loc_BC05EA: MemLdI2 global_156
  loc_BC05ED: CI4UI1
  loc_BC05EE: FLdPr Me
  loc_BC05F1: MemLdStr global_80
  loc_BC05F4: AryLock
  loc_BC05F7: Ary1LdPr
  loc_BC05F8: MemLdRfVar from_stack_1.global_16
  loc_BC05FB: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC0600: AryUnlock
  loc_BC0603: FFreeAd var_B0 = ""
  loc_BC060A: FFree1Var var_C4 = ""
  loc_BC060D: FLdRfVar var_178
  loc_BC0610: LitVarStr var_9C, "DeexImpu"
  loc_BC0615: PopAdLdVar
  loc_BC0616: FLdRfVar var_F0
  loc_BC0619: FLdRfVar var_B0
  loc_BC061C: FLdPr Me
  loc_BC061F: MemLdRfVar from_stack_1.global_72
  loc_BC0622: NewIfNullPr clsbase
  loc_BC0625: from_stack_1v = clsbase.RsFrmGet()
  loc_BC062A: FLdPr var_B0
  loc_BC062D:  = Me.Fields
  loc_BC0632: FLdPr var_F0
  loc_BC0635: from_stack_2 = Me.Item(from_stack_1)
  loc_BC063A: LitI2_Byte 0
  loc_BC063C: FLdPr Me
  loc_BC063F: MemLdRfVar from_stack_1.global_104
  loc_BC0642: CVarRef
  loc_BC0647: LitI2_Byte &HFF
  loc_BC0649: FLdZeroAd var_178
  loc_BC064C: CVarAd
  loc_BC0650: PopAdLdVar
  loc_BC0651: FLdPr Me
  loc_BC0654: MemLdI2 global_156
  loc_BC0657: CI4UI1
  loc_BC0658: FLdPr Me
  loc_BC065B: MemLdStr global_80
  loc_BC065E: AryLock
  loc_BC0661: Ary1LdPr
  loc_BC0662: MemLdRfVar from_stack_1.global_20
  loc_BC0665: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC066A: AryUnlock
  loc_BC066D: FFreeAd var_B0 = ""
  loc_BC0674: FFree1Var var_C4 = ""
  loc_BC0677: FLdRfVar var_178
  loc_BC067A: LitVarStr var_9C, "PagaImpu"
  loc_BC067F: PopAdLdVar
  loc_BC0680: FLdRfVar var_F0
  loc_BC0683: FLdRfVar var_B0
  loc_BC0686: FLdPr Me
  loc_BC0689: MemLdRfVar from_stack_1.global_72
  loc_BC068C: NewIfNullPr clsbase
  loc_BC068F: from_stack_1v = clsbase.RsFrmGet()
  loc_BC0694: FLdPr var_B0
  loc_BC0697:  = Me.Fields
  loc_BC069C: FLdPr var_F0
  loc_BC069F: from_stack_2 = Me.Item(from_stack_1)
  loc_BC06A4: LitI2_Byte 0
  loc_BC06A6: FLdPr Me
  loc_BC06A9: MemLdRfVar from_stack_1.global_108
  loc_BC06AC: CVarRef
  loc_BC06B1: LitI2_Byte &HFF
  loc_BC06B3: FLdZeroAd var_178
  loc_BC06B6: CVarAd
  loc_BC06BA: PopAdLdVar
  loc_BC06BB: FLdPr Me
  loc_BC06BE: MemLdI2 global_156
  loc_BC06C1: CI4UI1
  loc_BC06C2: FLdPr Me
  loc_BC06C5: MemLdStr global_80
  loc_BC06C8: AryLock
  loc_BC06CB: Ary1LdPr
  loc_BC06CC: MemLdRfVar from_stack_1.global_24
  loc_BC06CF: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC06D4: AryUnlock
  loc_BC06D7: FFreeAd var_B0 = ""
  loc_BC06DE: FFree1Var var_C4 = ""
  loc_BC06E1: FLdRfVar var_178
  loc_BC06E4: LitVarStr var_9C, "ImpoCheq"
  loc_BC06E9: PopAdLdVar
  loc_BC06EA: FLdRfVar var_F0
  loc_BC06ED: FLdRfVar var_B0
  loc_BC06F0: FLdPr Me
  loc_BC06F3: MemLdRfVar from_stack_1.global_72
  loc_BC06F6: NewIfNullPr clsbase
  loc_BC06F9: from_stack_1v = clsbase.RsFrmGet()
  loc_BC06FE: FLdPr var_B0
  loc_BC0701:  = Me.Fields
  loc_BC0706: FLdPr var_F0
  loc_BC0709: from_stack_2 = Me.Item(from_stack_1)
  loc_BC070E: LitI2_Byte 0
  loc_BC0710: FLdPr Me
  loc_BC0713: MemLdRfVar from_stack_1.global_112
  loc_BC0716: CVarRef
  loc_BC071B: LitI2_Byte &HFF
  loc_BC071D: FLdZeroAd var_178
  loc_BC0720: CVarAd
  loc_BC0724: PopAdLdVar
  loc_BC0725: FLdPr Me
  loc_BC0728: MemLdI2 global_156
  loc_BC072B: CI4UI1
  loc_BC072C: FLdPr Me
  loc_BC072F: MemLdStr global_80
  loc_BC0732: AryLock
  loc_BC0735: Ary1LdPr
  loc_BC0736: MemLdRfVar from_stack_1.global_28
  loc_BC0739: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC073E: AryUnlock
  loc_BC0741: FFreeAd var_B0 = ""
  loc_BC0748: FFree1Var var_C4 = ""
  loc_BC074B: FLdRfVar var_178
  loc_BC074E: LitVarStr var_9C, "TotaRete"
  loc_BC0753: PopAdLdVar
  loc_BC0754: FLdRfVar var_F0
  loc_BC0757: FLdRfVar var_B0
  loc_BC075A: FLdPr Me
  loc_BC075D: MemLdRfVar from_stack_1.global_72
  loc_BC0760: NewIfNullPr clsbase
  loc_BC0763: from_stack_1v = clsbase.RsFrmGet()
  loc_BC0768: FLdPr var_B0
  loc_BC076B:  = Me.Fields
  loc_BC0770: FLdPr var_F0
  loc_BC0773: from_stack_2 = Me.Item(from_stack_1)
  loc_BC0778: LitI2_Byte 0
  loc_BC077A: FLdPr Me
  loc_BC077D: MemLdRfVar from_stack_1.global_116
  loc_BC0780: CVarRef
  loc_BC0785: LitI2_Byte &HFF
  loc_BC0787: FLdZeroAd var_178
  loc_BC078A: CVarAd
  loc_BC078E: PopAdLdVar
  loc_BC078F: FLdPr Me
  loc_BC0792: MemLdI2 global_156
  loc_BC0795: CI4UI1
  loc_BC0796: FLdPr Me
  loc_BC0799: MemLdStr global_80
  loc_BC079C: AryLock
  loc_BC079F: Ary1LdPr
  loc_BC07A0: MemLdRfVar from_stack_1.global_32
  loc_BC07A3: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC07A8: AryUnlock
  loc_BC07AB: FFreeAd var_B0 = ""
  loc_BC07B2: FFree1Var var_C4 = ""
  loc_BC07B5: FLdRfVar var_178
  loc_BC07B8: LitVarStr var_9C, "DistBanc"
  loc_BC07BD: PopAdLdVar
  loc_BC07BE: FLdRfVar var_F0
  loc_BC07C1: FLdRfVar var_B0
  loc_BC07C4: FLdPr Me
  loc_BC07C7: MemLdRfVar from_stack_1.global_72
  loc_BC07CA: NewIfNullPr clsbase
  loc_BC07CD: from_stack_1v = clsbase.RsFrmGet()
  loc_BC07D2: FLdPr var_B0
  loc_BC07D5:  = Me.Fields
  loc_BC07DA: FLdPr var_F0
  loc_BC07DD: from_stack_2 = Me.Item(from_stack_1)
  loc_BC07E2: LitI2_Byte 0
  loc_BC07E4: LitVar_Missing var_D4
  loc_BC07E7: LitI2_Byte 0
  loc_BC07E9: FLdZeroAd var_178
  loc_BC07EC: CVarAd
  loc_BC07F0: PopAdLdVar
  loc_BC07F1: FLdPr Me
  loc_BC07F4: MemLdI2 global_156
  loc_BC07F7: CI4UI1
  loc_BC07F8: FLdPr Me
  loc_BC07FB: MemLdStr global_80
  loc_BC07FE: AryLock
  loc_BC0801: Ary1LdPr
  loc_BC0802: MemLdRfVar from_stack_1.global_36
  loc_BC0805: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC080A: AryUnlock
  loc_BC080D: FFreeAd var_B0 = ""
  loc_BC0814: FFreeVar var_C4 = ""
  loc_BC081B: FLdRfVar var_178
  loc_BC081E: LitVarStr var_9C, "FechImpu"
  loc_BC0823: PopAdLdVar
  loc_BC0824: FLdRfVar var_F0
  loc_BC0827: FLdRfVar var_B0
  loc_BC082A: FLdPr Me
  loc_BC082D: MemLdRfVar from_stack_1.global_72
  loc_BC0830: NewIfNullPr clsbase
  loc_BC0833: from_stack_1v = clsbase.RsFrmGet()
  loc_BC0838: FLdPr var_B0
  loc_BC083B:  = Me.Fields
  loc_BC0840: FLdPr var_F0
  loc_BC0843: from_stack_2 = Me.Item(from_stack_1)
  loc_BC0848: LitI2_Byte 0
  loc_BC084A: LitVar_Missing var_D4
  loc_BC084D: LitI2_Byte 0
  loc_BC084F: FLdZeroAd var_178
  loc_BC0852: CVarAd
  loc_BC0856: PopAdLdVar
  loc_BC0857: FLdPr Me
  loc_BC085A: MemLdI2 global_156
  loc_BC085D: CI4UI1
  loc_BC085E: FLdPr Me
  loc_BC0861: MemLdStr global_80
  loc_BC0864: AryLock
  loc_BC0867: Ary1LdPr
  loc_BC0868: MemLdRfVar from_stack_1.global_40
  loc_BC086B: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC0870: AryUnlock
  loc_BC0873: FFreeAd var_B0 = ""
  loc_BC087A: FFreeVar var_C4 = ""
  loc_BC0881: FLdRfVar var_178
  loc_BC0884: LitVarStr var_9C, "NumeFact"
  loc_BC0889: PopAdLdVar
  loc_BC088A: FLdRfVar var_F0
  loc_BC088D: FLdRfVar var_B0
  loc_BC0890: FLdPr Me
  loc_BC0893: MemLdRfVar from_stack_1.global_72
  loc_BC0896: NewIfNullPr clsbase
  loc_BC0899: from_stack_1v = clsbase.RsFrmGet()
  loc_BC089E: FLdPr var_B0
  loc_BC08A1:  = Me.Fields
  loc_BC08A6: FLdPr var_F0
  loc_BC08A9: from_stack_2 = Me.Item(from_stack_1)
  loc_BC08AE: LitI2_Byte 0
  loc_BC08B0: LitVar_Missing var_D4
  loc_BC08B3: LitI2_Byte 0
  loc_BC08B5: FLdZeroAd var_178
  loc_BC08B8: CVarAd
  loc_BC08BC: PopAdLdVar
  loc_BC08BD: FLdPr Me
  loc_BC08C0: MemLdI2 global_156
  loc_BC08C3: CI4UI1
  loc_BC08C4: FLdPr Me
  loc_BC08C7: MemLdStr global_80
  loc_BC08CA: AryLock
  loc_BC08CD: Ary1LdPr
  loc_BC08CE: MemLdRfVar from_stack_1.global_44
  loc_BC08D1: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC08D6: AryUnlock
  loc_BC08D9: FFreeAd var_B0 = ""
  loc_BC08E0: FFreeVar var_C4 = ""
  loc_BC08E7: FLdRfVar var_178
  loc_BC08EA: LitVarStr var_9C, "FefaDeve"
  loc_BC08EF: PopAdLdVar
  loc_BC08F0: FLdRfVar var_F0
  loc_BC08F3: FLdRfVar var_B0
  loc_BC08F6: FLdPr Me
  loc_BC08F9: MemLdRfVar from_stack_1.global_72
  loc_BC08FC: NewIfNullPr clsbase
  loc_BC08FF: from_stack_1v = clsbase.RsFrmGet()
  loc_BC0904: FLdPr var_B0
  loc_BC0907:  = Me.Fields
  loc_BC090C: FLdPr var_F0
  loc_BC090F: from_stack_2 = Me.Item(from_stack_1)
  loc_BC0914: LitI2_Byte 0
  loc_BC0916: LitVar_Missing var_D4
  loc_BC0919: LitI2_Byte 0
  loc_BC091B: FLdZeroAd var_178
  loc_BC091E: CVarAd
  loc_BC0922: PopAdLdVar
  loc_BC0923: FLdPr Me
  loc_BC0926: MemLdI2 global_156
  loc_BC0929: CI4UI1
  loc_BC092A: FLdPr Me
  loc_BC092D: MemLdStr global_80
  loc_BC0930: AryLock
  loc_BC0933: Ary1LdPr
  loc_BC0934: MemLdRfVar from_stack_1.global_48
  loc_BC0937: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC093C: AryUnlock
  loc_BC093F: FFreeAd var_B0 = ""
  loc_BC0946: FFreeVar var_C4 = ""
  loc_BC094D: FLdRfVar var_178
  loc_BC0950: LitVarStr var_9C, "NumeOrpa"
  loc_BC0955: PopAdLdVar
  loc_BC0956: FLdRfVar var_F0
  loc_BC0959: FLdRfVar var_B0
  loc_BC095C: FLdPr Me
  loc_BC095F: MemLdRfVar from_stack_1.global_72
  loc_BC0962: NewIfNullPr clsbase
  loc_BC0965: from_stack_1v = clsbase.RsFrmGet()
  loc_BC096A: FLdPr var_B0
  loc_BC096D:  = Me.Fields
  loc_BC0972: FLdPr var_F0
  loc_BC0975: from_stack_2 = Me.Item(from_stack_1)
  loc_BC097A: LitI2_Byte 0
  loc_BC097C: LitVar_Missing var_D4
  loc_BC097F: LitI2_Byte 0
  loc_BC0981: FLdZeroAd var_178
  loc_BC0984: CVarAd
  loc_BC0988: PopAdLdVar
  loc_BC0989: FLdPr Me
  loc_BC098C: MemLdI2 global_156
  loc_BC098F: CI4UI1
  loc_BC0990: FLdPr Me
  loc_BC0993: MemLdStr global_80
  loc_BC0996: AryLock
  loc_BC0999: Ary1LdPr
  loc_BC099A: MemLdRfVar from_stack_1.htmFile
  loc_BC099D: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC09A2: AryUnlock
  loc_BC09A5: FFreeAd var_B0 = ""
  loc_BC09AC: FFreeVar var_C4 = ""
  loc_BC09B3: FLdRfVar var_178
  loc_BC09B6: LitVarStr var_9C, "FereOrpa"
  loc_BC09BB: PopAdLdVar
  loc_BC09BC: FLdRfVar var_F0
  loc_BC09BF: FLdRfVar var_B0
  loc_BC09C2: FLdPr Me
  loc_BC09C5: MemLdRfVar from_stack_1.global_72
  loc_BC09C8: NewIfNullPr clsbase
  loc_BC09CB: from_stack_1v = clsbase.RsFrmGet()
  loc_BC09D0: FLdPr var_B0
  loc_BC09D3:  = Me.Fields
  loc_BC09D8: FLdPr var_F0
  loc_BC09DB: from_stack_2 = Me.Item(from_stack_1)
  loc_BC09E0: LitI2_Byte 0
  loc_BC09E2: LitVar_Missing var_D4
  loc_BC09E5: LitI2_Byte 0
  loc_BC09E7: FLdZeroAd var_178
  loc_BC09EA: CVarAd
  loc_BC09EE: PopAdLdVar
  loc_BC09EF: FLdPr Me
  loc_BC09F2: MemLdI2 global_156
  loc_BC09F5: CI4UI1
  loc_BC09F6: FLdPr Me
  loc_BC09F9: MemLdStr global_80
  loc_BC09FC: AryLock
  loc_BC09FF: Ary1LdPr
  loc_BC0A00: MemLdRfVar from_stack_1.global_56
  loc_BC0A03: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC0A08: AryUnlock
  loc_BC0A0B: FFreeAd var_B0 = ""
  loc_BC0A12: FFreeVar var_C4 = ""
  loc_BC0A19: FLdRfVar var_178
  loc_BC0A1C: LitVarStr var_9C, "FearOrpa"
  loc_BC0A21: PopAdLdVar
  loc_BC0A22: FLdRfVar var_F0
  loc_BC0A25: FLdRfVar var_B0
  loc_BC0A28: FLdPr Me
  loc_BC0A2B: MemLdRfVar from_stack_1.global_72
  loc_BC0A2E: NewIfNullPr clsbase
  loc_BC0A31: from_stack_1v = clsbase.RsFrmGet()
  loc_BC0A36: FLdPr var_B0
  loc_BC0A39:  = Me.Fields
  loc_BC0A3E: FLdPr var_F0
  loc_BC0A41: from_stack_2 = Me.Item(from_stack_1)
  loc_BC0A46: LitI2_Byte 0
  loc_BC0A48: LitVar_Missing var_D4
  loc_BC0A4B: LitI2_Byte 0
  loc_BC0A4D: FLdZeroAd var_178
  loc_BC0A50: CVarAd
  loc_BC0A54: PopAdLdVar
  loc_BC0A55: FLdPr Me
  loc_BC0A58: MemLdI2 global_156
  loc_BC0A5B: CI4UI1
  loc_BC0A5C: FLdPr Me
  loc_BC0A5F: MemLdStr global_80
  loc_BC0A62: AryLock
  loc_BC0A65: Ary1LdPr
  loc_BC0A66: MemLdRfVar from_stack_1.global_60
  loc_BC0A69: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC0A6E: AryUnlock
  loc_BC0A71: FFreeAd var_B0 = ""
  loc_BC0A78: FFreeVar var_C4 = ""
  loc_BC0A7F: FLdRfVar var_178
  loc_BC0A82: LitVarStr var_9C, "RowSpan"
  loc_BC0A87: PopAdLdVar
  loc_BC0A88: FLdRfVar var_F0
  loc_BC0A8B: FLdRfVar var_B0
  loc_BC0A8E: FLdPr Me
  loc_BC0A91: MemLdRfVar from_stack_1.global_72
  loc_BC0A94: NewIfNullPr clsbase
  loc_BC0A97: from_stack_1v = clsbase.RsFrmGet()
  loc_BC0A9C: FLdPr var_B0
  loc_BC0A9F:  = Me.Fields
  loc_BC0AA4: FLdPr var_F0
  loc_BC0AA7: from_stack_2 = Me.Item(from_stack_1)
  loc_BC0AAC: LitI2_Byte 0
  loc_BC0AAE: LitVar_Missing var_D4
  loc_BC0AB1: LitI2_Byte 0
  loc_BC0AB3: FLdZeroAd var_178
  loc_BC0AB6: CVarAd
  loc_BC0ABA: PopAdLdVar
  loc_BC0ABB: FLdPr Me
  loc_BC0ABE: MemLdI2 global_156
  loc_BC0AC1: CI4UI1
  loc_BC0AC2: FLdPr Me
  loc_BC0AC5: MemLdStr global_80
  loc_BC0AC8: AryLock
  loc_BC0ACB: Ary1LdPr
  loc_BC0ACC: MemLdRfVar from_stack_1.bLogos
  loc_BC0ACF: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC0AD4: AryUnlock
  loc_BC0AD7: FFreeAd var_B0 = ""
  loc_BC0ADE: FFreeVar var_C4 = ""
  loc_BC0AE5: FLdPr var_12C
  loc_BC0AE8: Call clsbase.MoveSiguiente()
  loc_BC0AED: FLdPr Me
  loc_BC0AF0: MemLdRfVar from_stack_1.global_156
  loc_BC0AF3: NextI2 var_174, loc_BC0407
  loc_BC0AF8: LitNothing
  loc_BC0AFA: FStAd var_12C 
  loc_BC0AFE: LitI2_Byte &HFF
  loc_BC0B00: FLdPr Me
  loc_BC0B03: MemStI2 bGenerado
  loc_BC0B06: LitI4 0
  loc_BC0B0B: CI2I4
  loc_BC0B0C: FLdPr Me
  loc_BC0B0F: Me.MousePointer = from_stack_1
  loc_BC0B14: LitVarStr var_9C, vbNullString
  loc_BC0B19: PopAdLdVar
  loc_BC0B1A: FLdPr Me
  loc_BC0B1D: VCallAd Control_ID_statusBar
  loc_BC0B20: FStAdFunc var_B0
  loc_BC0B23: FLdPr var_B0
  loc_BC0B26: LateIdSt
  loc_BC0B2B: FFree1Ad var_B0
  loc_BC0B2E: ExitProcHresult
End Sub

Public Sub HabilitarCriterio() '9A5C94
  'Data Table: 4A0CFC
  loc_9A5C20: LitI4 0
  loc_9A5C25: LitI4 4
  loc_9A5C2A: FLdRfVar var_88
  loc_9A5C2D: Redim
  loc_9A5C37: FLdPr Me
  loc_9A5C3A: VCallAd Control_ID_cboPeriodo
  loc_9A5C3D: CVarAd
  loc_9A5C41: ParmAry1St
  loc_9A5C47: FLdPr Me
  loc_9A5C4A: VCallAd Control_ID_mskHasta
  loc_9A5C4D: CVarAd
  loc_9A5C51: ParmAry1St
  loc_9A5C57: FLdPr Me
  loc_9A5C5A: VCallAd Control_ID_cmdCalHasta
  loc_9A5C5D: CVarAd
  loc_9A5C61: ParmAry1St
  loc_9A5C67: FLdPr Me
  loc_9A5C6A: VCallAd Control_ID_CucuPersTxt
  loc_9A5C6D: CVarAd
  loc_9A5C71: ParmAry1St
  loc_9A5C77: FLdPr Me
  loc_9A5C7A: VCallAd Control_ID_chkOcultarReapropiacion
  loc_9A5C7D: CVarAd
  loc_9A5C81: ParmAry1St
  loc_9A5C87: FLdRfVar var_88
  loc_9A5C8A: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9A5C8F: FLdRfVar var_88
  loc_9A5C92: Erase
  loc_9A5C93: ExitProcHresult
End Sub

Private Function Proc_235_31_A91924() 'A91924
  'Data Table: 4A0CFC
  loc_A914AC: LitVarStr var_94, "<html>"
  loc_A914B1: PopAdLdVar
  loc_A914B2: FLdPr Me
  loc_A914B5: MemLdRfVar from_stack_1.htmFile
  loc_A914B8: LdPrVar
  loc_A914BA: LateMemCall
  loc_A914C0: LitVarStr var_94, "<head>"
  loc_A914C5: PopAdLdVar
  loc_A914C6: FLdPr Me
  loc_A914C9: MemLdRfVar from_stack_1.htmFile
  loc_A914CC: LdPrVar
  loc_A914CE: LateMemCall
  loc_A914D4: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_A914D9: PopAdLdVar
  loc_A914DA: FLdPr Me
  loc_A914DD: MemLdRfVar from_stack_1.htmFile
  loc_A914E0: LdPrVar
  loc_A914E2: LateMemCall
  loc_A914E8: LitStr "<title>"
  loc_A914EB: FLdRfVar var_A8
  loc_A914EE: FLdPr Me
  loc_A914F1:  = Me.Caption
  loc_A914F6: ILdRf var_A8
  loc_A914F9: ConcatStr
  loc_A914FA: FStStrNoPop var_AC
  loc_A914FD: LitStr "</title>"
  loc_A91500: ConcatStr
  loc_A91501: CVarStr var_BC
  loc_A91504: PopAdLdVar
  loc_A91505: FLdPr Me
  loc_A91508: MemLdRfVar from_stack_1.htmFile
  loc_A9150B: LdPrVar
  loc_A9150D: LateMemCall
  loc_A91513: FFreeStr var_A8 = ""
  loc_A9151A: FFree1Var var_BC = ""
  loc_A9151D: LitI2_Byte &HFF
  loc_A9151F: ImpAdStI2 MemVar_C3D844
  loc_A91522: LitStr vbNullString
  loc_A91525: ILdRf Me
  loc_A91528: CastAd
  loc_A9152B: FStAdFunc var_C0
  loc_A9152E: FLdRfVar var_C0
  loc_A91531: ImpAdCallFPR4 Proc_263_23_B3DAB8(, )
  loc_A91536: FFree1Ad var_C0
  loc_A91539: LitI4 0
  loc_A9153E: FStStrCopy var_AC
  loc_A91541: FLdRfVar var_AC
  loc_A91544: LitI4 0
  loc_A91549: FStStrCopy var_A8
  loc_A9154C: FLdRfVar var_A8
  loc_A9154F: LitI2_Byte &HFF
  loc_A91551: PopTmpLdAd2 var_C2
  loc_A91554: FLdPr Me
  loc_A91557: MemLdRfVar from_stack_1.htmFile
  loc_A9155A: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_A9155F: FFreeStr var_A8 = ""
  loc_A91566: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_A9156B: PopAdLdVar
  loc_A9156C: FLdPr Me
  loc_A9156F: MemLdRfVar from_stack_1.htmFile
  loc_A91572: LdPrVar
  loc_A91574: LateMemCall
  loc_A9157A: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_A9157F: PopAdLdVar
  loc_A91580: FLdPr Me
  loc_A91583: MemLdRfVar from_stack_1.htmFile
  loc_A91586: LdPrVar
  loc_A91588: LateMemCall
  loc_A9158E: LitVarStr var_94, "    <th colspan=""3"" width=""100" & Chr(37) & """ align=""center"" valign=""bottom""><p>"
  loc_A91593: PopAdLdVar
  loc_A91594: FLdPr Me
  loc_A91597: MemLdRfVar from_stack_1.htmFile
  loc_A9159A: LdPrVar
  loc_A9159C: LateMemCall
  loc_A915A2: FLdPr Me
  loc_A915A5: MemLdI2 bLogos
  loc_A915A8: BranchF loc_A915BF
  loc_A915AB: LitVarStr var_94, "    <img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right"">"
  loc_A915B0: PopAdLdVar
  loc_A915B1: FLdPr Me
  loc_A915B4: MemLdRfVar from_stack_1.htmFile
  loc_A915B7: LdPrVar
  loc_A915B9: LateMemCall
  loc_A915BF: LitVarStr var_A4, "    <br><br>"
  loc_A915C4: LitVarStr var_94, "Municipalidad de Guaymallén"
  loc_A915C9: FStVarCopyObj var_BC
  loc_A915CC: FLdRfVar var_BC
  loc_A915CF: FLdRfVar var_D4
  loc_A915D2: ImpAdCallFPR4  = Ucase()
  loc_A915D7: FLdRfVar var_D4
  loc_A915DA: ConcatVar var_E4
  loc_A915DE: LitVarStr var_F4, "</p>"
  loc_A915E3: ConcatVar var_104
  loc_A915E7: PopAdLdVar
  loc_A915E8: FLdPr Me
  loc_A915EB: MemLdRfVar from_stack_1.htmFile
  loc_A915EE: LdPrVar
  loc_A915F0: LateMemCall
  loc_A915F6: FFreeVar var_BC = "": var_D4 = "": var_E4 = ""
  loc_A91601: LitStr "    <p>"
  loc_A91604: FLdRfVar var_A8
  loc_A91607: FLdPr Me
  loc_A9160A:  = Me.Caption
  loc_A9160F: ILdRf var_A8
  loc_A91612: ConcatStr
  loc_A91613: FStStrNoPop var_AC
  loc_A91616: LitStr "</p></th>"
  loc_A91619: ConcatStr
  loc_A9161A: CVarStr var_BC
  loc_A9161D: PopAdLdVar
  loc_A9161E: FLdPr Me
  loc_A91621: MemLdRfVar from_stack_1.htmFile
  loc_A91624: LdPrVar
  loc_A91626: LateMemCall
  loc_A9162C: FFreeStr var_A8 = ""
  loc_A91633: FFree1Var var_BC = ""
  loc_A91636: LitVarStr var_94, "  </tr>"
  loc_A9163B: PopAdLdVar
  loc_A9163C: FLdPr Me
  loc_A9163F: MemLdRfVar from_stack_1.htmFile
  loc_A91642: LdPrVar
  loc_A91644: LateMemCall
  loc_A9164A: LitVarStr var_94, "  <tr><th colspan=""3""><hr></th></tr>"
  loc_A9164F: PopAdLdVar
  loc_A91650: FLdPr Me
  loc_A91653: MemLdRfVar from_stack_1.htmFile
  loc_A91656: LdPrVar
  loc_A91658: LateMemCall
  loc_A9165E: LitVarStr var_94, "  <tr align=""left"">"
  loc_A91663: PopAdLdVar
  loc_A91664: FLdPr Me
  loc_A91667: MemLdRfVar from_stack_1.htmFile
  loc_A9166A: LdPrVar
  loc_A9166C: LateMemCall
  loc_A91672: LitVarStr var_94, "    <th colspan=""3"">"
  loc_A91677: PopAdLdVar
  loc_A91678: FLdPr Me
  loc_A9167B: MemLdRfVar from_stack_1.htmFile
  loc_A9167E: LdPrVar
  loc_A91680: LateMemCall
  loc_A91686: LitStr "    Ejercicio: "
  loc_A91689: FLdRfVar var_A8
  loc_A9168C: FLdPr Me
  loc_A9168F: VCallAd Control_ID_cboPeriodo
  loc_A91692: FStAdFunc var_C0
  loc_A91695: FLdPr var_C0
  loc_A91698:  = Me.Text
  loc_A9169D: ILdRf var_A8
  loc_A916A0: ConcatStr
  loc_A916A1: CVarStr var_BC
  loc_A916A4: PopAdLdVar
  loc_A916A5: FLdPr Me
  loc_A916A8: MemLdRfVar from_stack_1.htmFile
  loc_A916AB: LdPrVar
  loc_A916AD: LateMemCall
  loc_A916B3: FFree1Str var_A8
  loc_A916B6: FFree1Ad var_C0
  loc_A916B9: FFree1Var var_BC = ""
  loc_A916BC: LitStr "      <br><strong>Proveedor:</strong> "
  loc_A916BF: FLdRfVar var_A8
  loc_A916C2: FLdPr Me
  loc_A916C5: VCallAd Control_ID_CucuPersTxt
  loc_A916C8: FStAdFunc var_C0
  loc_A916CB: FLdPr var_C0
  loc_A916CE:  = Me.Text
  loc_A916D3: ILdRf var_A8
  loc_A916D6: ConcatStr
  loc_A916D7: FStStrNoPop var_AC
  loc_A916DA: LitStr " - "
  loc_A916DD: ConcatStr
  loc_A916DE: FStStrNoPop var_120
  loc_A916E1: FLdRfVar var_11C
  loc_A916E4: FLdPr Me
  loc_A916E7: VCallAd Control_ID_DetaProvLbl
  loc_A916EA: FStAdFunc var_118
  loc_A916ED: FLdPr var_118
  loc_A916F0:  = Me.Caption
  loc_A916F5: ILdRf var_11C
  loc_A916F8: ConcatStr
  loc_A916F9: CVarStr var_BC
  loc_A916FC: PopAdLdVar
  loc_A916FD: FLdPr Me
  loc_A91700: MemLdRfVar from_stack_1.htmFile
  loc_A91703: LdPrVar
  loc_A91705: LateMemCall
  loc_A9170B: FFreeStr var_A8 = "": var_AC = "": var_120 = ""
  loc_A91716: FFreeAd var_C0 = ""
  loc_A9171D: FFree1Var var_BC = ""
  loc_A91720: LitVarStr var_94, "    </th>"
  loc_A91725: PopAdLdVar
  loc_A91726: FLdPr Me
  loc_A91729: MemLdRfVar from_stack_1.htmFile
  loc_A9172C: LdPrVar
  loc_A9172E: LateMemCall
  loc_A91734: LitVarStr var_94, "  </tr>"
  loc_A91739: PopAdLdVar
  loc_A9173A: FLdPr Me
  loc_A9173D: MemLdRfVar from_stack_1.htmFile
  loc_A91740: LdPrVar
  loc_A91742: LateMemCall
  loc_A91748: LitVarStr var_94, "</table>"
  loc_A9174D: PopAdLdVar
  loc_A9174E: FLdPr Me
  loc_A91751: MemLdRfVar from_stack_1.htmFile
  loc_A91754: LdPrVar
  loc_A91756: LateMemCall
  loc_A9175C: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_A91761: PopAdLdVar
  loc_A91762: FLdPr Me
  loc_A91765: MemLdRfVar from_stack_1.htmFile
  loc_A91768: LdPrVar
  loc_A9176A: LateMemCall
  loc_A91770: LitVarStr var_94, "  <THEAD>"
  loc_A91775: PopAdLdVar
  loc_A91776: FLdPr Me
  loc_A91779: MemLdRfVar from_stack_1.htmFile
  loc_A9177C: LdPrVar
  loc_A9177E: LateMemCall
  loc_A91784: LitVarStr var_94, " <tr align=""center"" valign=""top"" class=""Encabezado"">"
  loc_A91789: PopAdLdVar
  loc_A9178A: FLdPr Me
  loc_A9178D: MemLdRfVar from_stack_1.htmFile
  loc_A91790: LdPrVar
  loc_A91792: LateMemCall
  loc_A91798: LitVarStr var_94, "   <th>Exp.Orig.</th>"
  loc_A9179D: PopAdLdVar
  loc_A9179E: FLdPr Me
  loc_A917A1: MemLdRfVar from_stack_1.htmFile
  loc_A917A4: LdPrVar
  loc_A917A6: LateMemCall
  loc_A917AC: LitVarStr var_94, "   <th>Exp.Pago</th>"
  loc_A917B1: PopAdLdVar
  loc_A917B2: FLdPr Me
  loc_A917B5: MemLdRfVar from_stack_1.htmFile
  loc_A917B8: LdPrVar
  loc_A917BA: LateMemCall
  loc_A917C0: LitVarStr var_94, "   <th>Tipo Exp.</th>"
  loc_A917C5: PopAdLdVar
  loc_A917C6: FLdPr Me
  loc_A917C9: MemLdRfVar from_stack_1.htmFile
  loc_A917CC: LdPrVar
  loc_A917CE: LateMemCall
  loc_A917D4: FLdRfVar var_C2
  loc_A917D7: FLdPr Me
  loc_A917DA: VCallAd Control_ID_chkOcultarReapropiacion
  loc_A917DD: FStAdFunc var_C0
  loc_A917E0: FLdPr var_C0
  loc_A917E3:  = Me.Value
  loc_A917E8: FLdI2 var_C2
  loc_A917EB: LitI2_Byte 1
  loc_A917ED: EqI2
  loc_A917EE: NotI4
  loc_A917EF: FFree1Ad var_C0
  loc_A917F2: BranchF loc_A91809
  loc_A917F5: LitVarStr var_94, "   <th>Reapropiación<br>Def-Dev</th>"
  loc_A917FA: PopAdLdVar
  loc_A917FB: FLdPr Me
  loc_A917FE: MemLdRfVar from_stack_1.htmFile
  loc_A91801: LdPrVar
  loc_A91803: LateMemCall
  loc_A91809: LitVarStr var_94, "   <th>Res.Pas.<br>Dev-Mand</th>"
  loc_A9180E: PopAdLdVar
  loc_A9180F: FLdPr Me
  loc_A91812: MemLdRfVar from_stack_1.htmFile
  loc_A91815: LdPrVar
  loc_A91817: LateMemCall
  loc_A9181D: LitVarStr var_94, "   <th>Deuda Ex.<br>Mand-Pag</th>"
  loc_A91822: PopAdLdVar
  loc_A91823: FLdPr Me
  loc_A91826: MemLdRfVar from_stack_1.htmFile
  loc_A91829: LdPrVar
  loc_A9182B: LateMemCall
  loc_A91831: LitVarStr var_94, "   <th>Pagado</th>"
  loc_A91836: PopAdLdVar
  loc_A91837: FLdPr Me
  loc_A9183A: MemLdRfVar from_stack_1.htmFile
  loc_A9183D: LdPrVar
  loc_A9183F: LateMemCall
  loc_A91845: LitVarStr var_94, "   <th>Bancos</th>"
  loc_A9184A: PopAdLdVar
  loc_A9184B: FLdPr Me
  loc_A9184E: MemLdRfVar from_stack_1.htmFile
  loc_A91851: LdPrVar
  loc_A91853: LateMemCall
  loc_A91859: LitVarStr var_94, "   <th>Ult.Imp.</th>"
  loc_A9185E: PopAdLdVar
  loc_A9185F: FLdPr Me
  loc_A91862: MemLdRfVar from_stack_1.htmFile
  loc_A91865: LdPrVar
  loc_A91867: LateMemCall
  loc_A9186D: LitVarStr var_94, "   <th>Factura</th>"
  loc_A91872: PopAdLdVar
  loc_A91873: FLdPr Me
  loc_A91876: MemLdRfVar from_stack_1.htmFile
  loc_A91879: LdPrVar
  loc_A9187B: LateMemCall
  loc_A91881: LitVarStr var_94, "   <th>Fecha fact.</th>"
  loc_A91886: PopAdLdVar
  loc_A91887: FLdPr Me
  loc_A9188A: MemLdRfVar from_stack_1.htmFile
  loc_A9188D: LdPrVar
  loc_A9188F: LateMemCall
  loc_A91895: LitVarStr var_94, "   <th>O.P.</th>"
  loc_A9189A: PopAdLdVar
  loc_A9189B: FLdPr Me
  loc_A9189E: MemLdRfVar from_stack_1.htmFile
  loc_A918A1: LdPrVar
  loc_A918A3: LateMemCall
  loc_A918A9: LitVarStr var_94, "   <th>Remisión</th>"
  loc_A918AE: PopAdLdVar
  loc_A918AF: FLdPr Me
  loc_A918B2: MemLdRfVar from_stack_1.htmFile
  loc_A918B5: LdPrVar
  loc_A918B7: LateMemCall
  loc_A918BD: LitVarStr var_94, "   <th>Pagado</th>"
  loc_A918C2: PopAdLdVar
  loc_A918C3: FLdPr Me
  loc_A918C6: MemLdRfVar from_stack_1.htmFile
  loc_A918C9: LdPrVar
  loc_A918CB: LateMemCall
  loc_A918D1: LitVarStr var_94, "   <th>Total Chq</th>"
  loc_A918D6: PopAdLdVar
  loc_A918D7: FLdPr Me
  loc_A918DA: MemLdRfVar from_stack_1.htmFile
  loc_A918DD: LdPrVar
  loc_A918DF: LateMemCall
  loc_A918E5: LitVarStr var_94, "   <th>Total Ret.</th>"
  loc_A918EA: PopAdLdVar
  loc_A918EB: FLdPr Me
  loc_A918EE: MemLdRfVar from_stack_1.htmFile
  loc_A918F1: LdPrVar
  loc_A918F3: LateMemCall
  loc_A918F9: LitVarStr var_94, "  </tr>"
  loc_A918FE: PopAdLdVar
  loc_A918FF: FLdPr Me
  loc_A91902: MemLdRfVar from_stack_1.htmFile
  loc_A91905: LdPrVar
  loc_A91907: LateMemCall
  loc_A9190D: LitVarStr var_94, "  </THEAD>"
  loc_A91912: PopAdLdVar
  loc_A91913: FLdPr Me
  loc_A91916: MemLdRfVar from_stack_1.htmFile
  loc_A91919: LdPrVar
  loc_A9191B: LateMemCall
  loc_A91921: ExitProcHresult
  loc_A91922: BranchFVar
End Function

Private Function Proc_235_32_981F90() '981F90
  'Data Table: 4A0CFC
  loc_981F50: LitVarStr var_94, "</table>"
  loc_981F55: PopAdLdVar
  loc_981F56: FLdPr Me
  loc_981F59: MemLdRfVar from_stack_1.htmFile
  loc_981F5C: LdPrVar
  loc_981F5E: LateMemCall
  loc_981F64: LitVarStr var_94, "</body>"
  loc_981F69: PopAdLdVar
  loc_981F6A: FLdPr Me
  loc_981F6D: MemLdRfVar from_stack_1.htmFile
  loc_981F70: LdPrVar
  loc_981F72: LateMemCall
  loc_981F78: LitVarStr var_94, "</html>"
  loc_981F7D: PopAdLdVar
  loc_981F7E: FLdPr Me
  loc_981F81: MemLdRfVar from_stack_1.htmFile
  loc_981F84: LdPrVar
  loc_981F86: LateMemCall
  loc_981F8C: ExitProcHresult
End Function
