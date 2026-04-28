VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptReapropiacionporProveedor
  Caption = "Listado de Reapropiación por Proveedor"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptReapropiacionporProveedor.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 8205
  ClientHeight = 4200
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 3945
    Width = 8205
    Height = 255
    TabIndex = 23
    OleObjectBlob = "rptReapropiacionporProveedor.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 6120
    Top = 3000
    Width = 735
    Height = 615
    TabIndex = 21
    Cancel = -1  'True
    Picture = "rptReapropiacionporProveedor.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptReapropiacionporProveedor.frx":0B9C
    Left = 5160
    Top = 240
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 2760
    Width = 1815
    Height = 1095
    TabIndex = 19
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 20
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 2760
    Width = 3015
    Height = 1095
    TabIndex = 16
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
    Width = 7935
    Height = 2655
    TabIndex = 0
    Begin VB.CheckBox chkExcluirTransferidos
      Left = 1680
      Top = 2280
      Width = 255
      Height = 255
      TabIndex = 15
    End
    Begin VB.CommandButton CucuPersCmd
      Left = 2370
      Top = 1770
      Width = 375
      Height = 375
      TabIndex = 12
      Picture = "rptReapropiacionporProveedor.frx":0C00
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CommandButton DesdeCmd
      Left = 2280
      Top = 810
      Width = 375
      Height = 375
      TabIndex = 6
      Picture = "rptReapropiacionporProveedor.frx":0CFA
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CommandButton HastaCmd
      Left = 2280
      Top = 1290
      Width = 375
      Height = 375
      TabIndex = 9
      Picture = "rptReapropiacionporProveedor.frx":123C
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.ComboBox cboPeriodo
      Style = 2
      ForeColor = &HFF0000&
      Left = 1080
      Top = 360
      Width = 975
      Height = 315
      TabIndex = 2
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 6075
      Top = 240
      Width = 1335
      Height = 495
      TabIndex = 3
    End
    Begin MSMask.MaskEdBox DesdeMsk
      Left = 1080
      Top = 840
      Width = 1095
      Height = 315
      TabIndex = 5
      OleObjectBlob = "rptReapropiacionporProveedor.frx":177E
    End
    Begin MSMask.MaskEdBox HastaMsk
      Left = 1080
      Top = 1320
      Width = 1095
      Height = 315
      TabIndex = 8
      OleObjectBlob = "rptReapropiacionporProveedor.frx":1806
    End
    Begin MSMask.MaskEdBox CucuPersMsk
      Left = 1080
      Top = 1800
      Width = 1215
      Height = 315
      TabIndex = 11
      OleObjectBlob = "rptReapropiacionporProveedor.frx":188E
    End
    Begin VB.Label Label
      Caption = "Excluir transferidos:"
      Left = 240
      Top = 2280
      Width = 1455
      Height = 255
      TabIndex = 14
    End
    Begin VB.Label DetaProvLbl
      Left = 2850
      Top = 1770
      Width = 4935
      Height = 375
      TabIndex = 13
      BorderStyle = 1 'Fixed Single
    End
    Begin VB.Label Label2
      Caption = "Proveedor:"
      Left = 240
      Top = 1800
      Width = 780
      Height = 195
      TabIndex = 10
    End
    Begin VB.Label Label4
      Caption = "Desde:"
      Left = 510
      Top = 840
      Width = 510
      Height = 195
      TabIndex = 4
      AutoSize = -1  'True
    End
    Begin VB.Label Label3
      Caption = "Hasta:"
      Left = 555
      Top = 1320
      Width = 465
      Height = 195
      TabIndex = 7
      AutoSize = -1  'True
    End
    Begin VB.Label Label1
      Caption = "Periodo:"
      Left = 435
      Top = 360
      Width = 585
      Height = 195
      TabIndex = 1
      AutoSize = -1  'True
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 6240
    Top = 3000
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 22
    OleObjectBlob = "rptReapropiacionporProveedor.frx":1918
  End
End

Attribute VB_Name = "rptReapropiacionporProveedor"

Public bGenerado As Boolean

Private Type UDT_1_0059A1E0
  bStruc(20) As Byte ' String fields: 5
End Type

Private Type UDT_2_005FECD4
  bStruc(20) As Byte ' String fields: 5
End Type


Private Sub cmdPdf_Click() '9653E4
  'Data Table: 4942D0
  loc_9653CC: LitI2_Byte 0
  loc_9653CE: ILdRf Me
  loc_9653D1: CastAd
  loc_9653D4: FStAdFunc var_88
  loc_9653D7: FLdRfVar var_88
  loc_9653DA: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_9653DF: FFree1Ad var_88
  loc_9653E2: ExitProcHresult
End Sub

Private Sub DesdeCmd_Click(arg_24) '983B8C
  'Data Table: 4942D0
  loc_983B50: LitVar_Missing var_A4
  loc_983B53: PopAdLdVar
  loc_983B54: LitVarI4
  loc_983B5C: PopAdLdVar
  loc_983B5D: ImpAdLdRf MemVar_C3D9A8
  loc_983B60: NewIfNullPr frmCalendario
  loc_983B63: frmCalendario.Show from_stack_1, from_stack_2
  loc_983B68: ImpAdLdRf MemVar_C3D038
  loc_983B6B: CDargRef
  loc_983B6F: FLdPr Me
  loc_983B72: VCallAd Control_ID_DesdeMsk
  loc_983B75: FStAdFunc var_A8
  loc_983B78: FLdPr var_A8
  loc_983B7B: LateIdSt
  loc_983B80: FFree1Ad var_A8
  loc_983B83: ImpAdCallFPR4 Proc_261_52_966EEC()
  loc_983B88: ExitProcHresult
  loc_983B89: FLdR8 arg_24
End Sub

Private Sub cmdSalir_Click() '978F70
  'Data Table: 4942D0
  loc_978F40: LitVarStr var_94, "Cerrando..."
  loc_978F45: PopAdLdVar
  loc_978F46: FLdPr Me
  loc_978F49: VCallAd Control_ID_statusBar
  loc_978F4C: FStAdFunc var_A8
  loc_978F4F: FLdPr var_A8
  loc_978F52: LateIdSt
  loc_978F57: FFree1Ad var_A8
  loc_978F5A: ILdRf Me
  loc_978F5D: FStAdNoPop
  loc_978F61: ImpAdLdRf MemVar_C44F9C
  loc_978F64: NewIfNullPr Me
  loc_978F67: Me.Global.Unload from_stack_1
  loc_978F6C: FFree1Ad var_A8
  loc_978F6F: ExitProcHresult
End Sub

Private Sub CucuPersCmd_Click() 'A03450
  'Data Table: 4942D0
  loc_A03304: ImpAdLdRf MemVar_C3D74C
  loc_A03307: NewIfNullAd
  loc_A0330A: FStAd var_88 
  loc_A0330E: LitI2_Byte 0
  loc_A03310: FLdPr var_88
  loc_A03313: Call bscProveedor.MuestroAnuladosPut(from_stack_1v)
  loc_A03318: LitNothing
  loc_A0331A: CastAd
  loc_A0331D: FStAdFuncNoPop
  loc_A03320: FLdRfVar var_8C
  loc_A03323: ImpAdLdRf MemVar_C3D74C
  loc_A03326: NewIfNullPr bscProveedor
  loc_A03329: from_stack_1v = bscProveedor.global_4315292Get()
  loc_A0332E: FLdPr var_8C
  loc_A03331: Call clsbase.RsFrmSet(from_stack_1v)
  loc_A03336: FFreeAd var_90 = ""
  loc_A0333D: LitVar_Missing var_B0
  loc_A03340: PopAdLdVar
  loc_A03341: LitVarI4
  loc_A03349: PopAdLdVar
  loc_A0334A: FLdPr var_88
  loc_A0334D: Me.Show from_stack_1, from_stack_2
  loc_A03352: FLdRfVar var_B4
  loc_A03355: FLdRfVar var_8C
  loc_A03358: FLdPr var_88
  loc_A0335B: from_stack_1v = bscProveedor.global_4315292Get()
  loc_A03360: FLdPr var_8C
  loc_A03363: from_stack_1 = clsbase.RecordCount
  loc_A03368: ILdRf var_B4
  loc_A0336B: LitI4 0
  loc_A03370: GtI4
  loc_A03371: FFree1Ad var_8C
  loc_A03374: BranchF loc_A03449
  loc_A03377: FLdRfVar var_CC
  loc_A0337A: FLdRfVar var_BC
  loc_A0337D: LitVarStr var_A0, "CucuPers"
  loc_A03382: PopAdLdVar
  loc_A03383: FLdRfVar var_B8
  loc_A03386: FLdRfVar var_90
  loc_A03389: FLdRfVar var_8C
  loc_A0338C: FLdPr var_88
  loc_A0338F: from_stack_1v = bscProveedor.global_4315292Get()
  loc_A03394: FLdPr var_8C
  loc_A03397: from_stack_1v = clsbase.RsFrmGet()
  loc_A0339C: FLdPr var_90
  loc_A0339F:  = Me.Fields
  loc_A033A4: FLdPr var_B8
  loc_A033A7: from_stack_2 = Me.Item(from_stack_1)
  loc_A033AC: FLdPr var_BC
  loc_A033AF:  = Me.Value
  loc_A033B4: FLdRfVar var_CC
  loc_A033B7: CStrVarTmp
  loc_A033B8: CVarStr var_DC
  loc_A033BB: PopAdLdVar
  loc_A033BC: FLdPr Me
  loc_A033BF: VCallAd Control_ID_CucuPersMsk
  loc_A033C2: FStAdFunc var_E0
  loc_A033C5: FLdPr var_E0
  loc_A033C8: LateIdSt
  loc_A033CD: FFreeAd var_8C = "": var_90 = "": var_B8 = "": var_BC = ""
  loc_A033DA: FFreeVar var_CC = ""
  loc_A033E1: FLdRfVar var_CC
  loc_A033E4: FLdRfVar var_BC
  loc_A033E7: LitVarStr var_A0, "DetaProv"
  loc_A033EC: PopAdLdVar
  loc_A033ED: FLdRfVar var_B8
  loc_A033F0: FLdRfVar var_90
  loc_A033F3: FLdRfVar var_8C
  loc_A033F6: FLdPr var_88
  loc_A033F9: from_stack_1v = bscProveedor.global_4315292Get()
  loc_A033FE: FLdPr var_8C
  loc_A03401: from_stack_1v = clsbase.RsFrmGet()
  loc_A03406: FLdPr var_90
  loc_A03409:  = Me.Fields
  loc_A0340E: FLdPr var_B8
  loc_A03411: from_stack_2 = Me.Item(from_stack_1)
  loc_A03416: FLdPr var_BC
  loc_A03419:  = Me.Value
  loc_A0341E: FLdRfVar var_CC
  loc_A03421: CStrVarTmp
  loc_A03422: FStStrNoPop var_E4
  loc_A03425: FLdPr Me
  loc_A03428: VCallAd Control_ID_DetaProvLbl
  loc_A0342B: FStAdFunc var_E0
  loc_A0342E: FLdPr var_E0
  loc_A03431: Me.Caption = from_stack_1
  loc_A03436: FFree1Str var_E4
  loc_A03439: FFreeAd var_8C = "": var_90 = "": var_B8 = "": var_BC = ""
  loc_A03446: FFree1Var var_CC = ""
  loc_A03449: LitNothing
  loc_A0344B: FStAd var_88 
  loc_A0344F: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() '9A9410
  'Data Table: 4942D0
  loc_9A937C: LitI2_Byte 0
  loc_9A937E: FLdPr Me
  loc_9A9381: MemStI2 bGenerado
  loc_9A9384: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_9A9389: ImpAdLdI2 MemVar_C3D064
  loc_9A938C: CStrUI1
  loc_9A938E: FStStrNoPop var_88
  loc_9A9391: FLdPr Me
  loc_9A9394: VCallAd Control_ID_cboPeriodo
  loc_9A9397: FStAdFunc var_8C
  loc_9A939A: FLdPr var_8C
  loc_9A939D: Me.Text = from_stack_1
  loc_9A93A2: FFree1Str var_88
  loc_9A93A5: FFree1Ad var_8C
  loc_9A93A8: LitVarStr var_9C, vbNullString
  loc_9A93AD: PopAdLdVar
  loc_9A93AE: FLdPr Me
  loc_9A93B1: VCallAd Control_ID_CucuPersMsk
  loc_9A93B4: FStAdFunc var_8C
  loc_9A93B7: FLdPr var_8C
  loc_9A93BA: LateIdSt
  loc_9A93BF: FFree1Ad var_8C
  loc_9A93C2: LitStr vbNullString
  loc_9A93C5: FLdPr Me
  loc_9A93C8: VCallAd Control_ID_DetaProvLbl
  loc_9A93CB: FStAdFunc var_8C
  loc_9A93CE: FLdPr var_8C
  loc_9A93D1: Me.Caption = from_stack_1
  loc_9A93D6: FFree1Ad var_8C
  loc_9A93D9: LitI4 0
  loc_9A93DE: CI2I4
  loc_9A93DF: FLdPr Me
  loc_9A93E2: VCallAd Control_ID_chkExcluirTransferidos
  loc_9A93E5: FStAdFunc var_8C
  loc_9A93E8: FLdPr var_8C
  loc_9A93EB: Me.Value = from_stack_1
  loc_9A93F0: FFree1Ad var_8C
  loc_9A93F3: Call HabilitarCriterio()
  loc_9A93F8: ILdRf Me
  loc_9A93FB: CastAd
  loc_9A93FE: FStAdFunc var_8C
  loc_9A9401: FLdRfVar var_8C
  loc_9A9404: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_9A9409: FFree1Ad var_8C
  loc_9A940C: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '9654C8
  'Data Table: 4942D0
  loc_9654B0: ILdRf Me
  loc_9654B3: CastAd
  loc_9654B6: FStAdFunc var_88
  loc_9654B9: FLdRfVar var_88
  loc_9654BC: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_9654C1: FFree1Ad var_88
  loc_9654C4: ExitProcHresult
End Sub

Private Sub HastaCmd_Click() '98BEFC
  'Data Table: 4942D0
  loc_98BEBC: LitVar_Missing var_A4
  loc_98BEBF: PopAdLdVar
  loc_98BEC0: LitVarI4
  loc_98BEC8: PopAdLdVar
  loc_98BEC9: ImpAdLdRf MemVar_C3D9A8
  loc_98BECC: NewIfNullPr frmCalendario
  loc_98BECF: frmCalendario.Show from_stack_1, from_stack_2
  loc_98BED4: ImpAdLdFPR8 MemVar_C3D04C
  loc_98BED7: CStrDate
  loc_98BED9: CVarStr var_B4
  loc_98BEDC: PopAdLdVar
  loc_98BEDD: FLdPr Me
  loc_98BEE0: VCallAd Control_ID_HastaMsk
  loc_98BEE3: FStAdFunc var_B8
  loc_98BEE6: FLdPr var_B8
  loc_98BEE9: LateIdSt
  loc_98BEEE: FFree1Ad var_B8
  loc_98BEF1: FFree1Var var_B4 = ""
  loc_98BEF4: ImpAdCallFPR4 Proc_261_52_966EEC()
  loc_98BEF9: ExitProcHresult
  loc_98BEFA: NewIfNullAd
End Sub

Private Sub Form_Load() '9CC97C
  'Data Table: 4942D0
  loc_9CC8A4: LitI2_Byte &HFF
  loc_9CC8A6: ImpAdStI2 MemVar_C3D840
  loc_9CC8A9: ILdRf Me
  loc_9CC8AC: CastAd
  loc_9CC8AF: FStAdFunc var_8C
  loc_9CC8B2: FLdRfVar var_8C
  loc_9CC8B5: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_9CC8BA: FFree1Ad var_8C
  loc_9CC8BD: LitStr "SELECT * FROM infogov.periodo ORDER BY PeriInfo"
  loc_9CC8C0: FLdRfVar var_88
  loc_9CC8C3: NewIfNullPr clsperiodo
  loc_9CC8C6: Call clsperiodo.RedefineRS(from_stack_1v)
  loc_9CC8CB: FLdRfVar var_90
  loc_9CC8CE: FLdRfVar var_88
  loc_9CC8D1: NewIfNullPr clsperiodo
  loc_9CC8D4: from_stack_1 = clsperiodo.RecordCount
  loc_9CC8D9: ILdRf var_90
  loc_9CC8DC: LitI4 0
  loc_9CC8E1: GtI4
  loc_9CC8E2: BranchF loc_9CC975
  loc_9CC8E5: FLdRfVar var_88
  loc_9CC8E8: NewIfNullPr clsperiodo
  loc_9CC8EB: Call clsperiodo.MoveFirst()
  loc_9CC8F0: FLdRfVar var_92
  loc_9CC8F3: FLdRfVar var_88
  loc_9CC8F6: NewIfNullPr clsperiodo
  loc_9CC8F9: from_stack_1 = clsperiodo.EOF
  loc_9CC8FE: FLdI2 var_92
  loc_9CC901: NotI4
  loc_9CC902: BranchF loc_9CC975
  loc_9CC905: LitVar_Missing var_D0
  loc_9CC908: PopAdLdVar
  loc_9CC909: FLdRfVar var_BC
  loc_9CC90C: FLdRfVar var_AC
  loc_9CC90F: LitVarStr var_A8, "PeriInfo"
  loc_9CC914: PopAdLdVar
  loc_9CC915: FLdRfVar var_98
  loc_9CC918: FLdRfVar var_8C
  loc_9CC91B: FLdRfVar var_88
  loc_9CC91E: NewIfNullPr clsperiodo
  loc_9CC921: from_stack_1v = clsperiodo.RsFrmGet()
  loc_9CC926: FLdPr var_8C
  loc_9CC929:  = Me.Fields
  loc_9CC92E: FLdPr var_98
  loc_9CC931: from_stack_2 = Me.Item(from_stack_1)
  loc_9CC936: FLdPr var_AC
  loc_9CC939:  = Me.Value
  loc_9CC93E: FLdRfVar var_BC
  loc_9CC941: CStrVarTmp
  loc_9CC942: FStStrNoPop var_C0
  loc_9CC945: FLdPr Me
  loc_9CC948: VCallAd Control_ID_cboPeriodo
  loc_9CC94B: FStAdFunc var_D4
  loc_9CC94E: FLdPr var_D4
  loc_9CC951: Me.AddItem from_stack_1, from_stack_2
  loc_9CC956: FFree1Str var_C0
  loc_9CC959: FFreeAd var_8C = "": var_98 = "": var_AC = ""
  loc_9CC964: FFree1Var var_BC = ""
  loc_9CC967: FLdRfVar var_88
  loc_9CC96A: NewIfNullPr clsperiodo
  loc_9CC96D: Call clsperiodo.MoveSiguiente()
  loc_9CC972: Branch loc_9CC8F0
  loc_9CC975: Call cmdNueva_Click()
  loc_9CC97A: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '964F24
  'Data Table: 4942D0
  loc_964F0C: FLdPr Me
  loc_964F0F: VCallAd Control_ID_wbbReporte
  loc_964F12: FStAdFunc var_88
  loc_964F15: FLdRfVar var_88
  loc_964F18: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_964F1D: FFree1Ad var_88
  loc_964F20: ExitProcHresult
End Sub

Private Sub cboPeriodo_Click() '9A31F0
  'Data Table: 4942D0
  loc_9A3180: FLdRfVar var_8C
  loc_9A3183: FLdPr Me
  loc_9A3186: VCallAd Control_ID_cboPeriodo
  loc_9A3189: FStAdFunc var_88
  loc_9A318C: FLdPr var_88
  loc_9A318F:  = Me.Text
  loc_9A3194: LitI2_Byte 1
  loc_9A3196: LitI2_Byte 1
  loc_9A3198: ILdRf var_8C
  loc_9A319B: CI2Str
  loc_9A319D: FLdRfVar var_9C
  loc_9A31A0: ImpAdCallFPR4  = DateSerial(, , )
  loc_9A31A5: FLdRfVar var_9C
  loc_9A31A8: CStrVarTmp
  loc_9A31A9: CVarStr var_AC
  loc_9A31AC: PopAdLdVar
  loc_9A31AD: FLdPr Me
  loc_9A31B0: VCallAd Control_ID_DesdeMsk
  loc_9A31B3: FStAdFunc var_C0
  loc_9A31B6: FLdPr var_C0
  loc_9A31B9: LateIdSt
  loc_9A31BE: FFree1Str var_8C
  loc_9A31C1: FFreeAd var_88 = ""
  loc_9A31C8: FFreeVar var_9C = ""
  loc_9A31CF: ImpAdLdFPR8 MemVar_C3D04C
  loc_9A31D2: CStrDate
  loc_9A31D4: CVarStr var_9C
  loc_9A31D7: PopAdLdVar
  loc_9A31D8: FLdPr Me
  loc_9A31DB: VCallAd Control_ID_HastaMsk
  loc_9A31DE: FStAdFunc var_88
  loc_9A31E1: FLdPr var_88
  loc_9A31E4: LateIdSt
  loc_9A31E9: FFree1Ad var_88
  loc_9A31EC: FFree1Var var_9C = ""
  loc_9A31EF: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '96547C
  'Data Table: 4942D0
  loc_965464: ILdRf Me
  loc_965467: CastAd
  loc_96546A: FStAdFunc var_88
  loc_96546D: FLdRfVar var_88
  loc_965470: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_965475: FFree1Ad var_88
  loc_965478: ExitProcHresult
End Sub

Private Sub CucuPersMsk_UnknownEvent_0 '950C88
  'Data Table: 4942D0
  loc_950C74: FLdPr Me
  loc_950C77: VCallAd Control_ID_CucuPersMsk
  loc_950C7A: CVarAd
  loc_950C7E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_950C83: FFree1Var var_94 = ""
  loc_950C86: ExitProcHresult
End Sub

Private Function CucuPersMsk_UnknownEvent_8(arg_C) '9DD464
  'Data Table: 4942D0
  loc_9DD36C: FLdPr Me
  loc_9DD36F: VCallAd Control_ID_CucuPersMsk
  loc_9DD372: FStAdFunc var_88
  loc_9DD375: FLdPr var_88
  loc_9DD378: LateIdLdVar var_98 DispID_13 -32767
  loc_9DD37F: CBoolVar
  loc_9DD381: FLdPr Me
  loc_9DD384: VCallAd Control_ID_CucuPersMsk
  loc_9DD387: FStAdFunc var_9C
  loc_9DD38A: FLdPr var_9C
  loc_9DD38D: LateIdLdVar var_AC DispID_22 0
  loc_9DD394: CStrVarTmp
  loc_9DD395: FStStrNoPop var_B0
  loc_9DD398: LitStr vbNullString
  loc_9DD39B: NeStr
  loc_9DD39D: AndI4
  loc_9DD39E: FFree1Str var_B0
  loc_9DD3A1: FFreeAd var_88 = ""
  loc_9DD3A8: FFreeVar var_98 = ""
  loc_9DD3AF: BranchF loc_9DD463
  loc_9DD3B2: FLdPr Me
  loc_9DD3B5: VCallAd Control_ID_CucuPersMsk
  loc_9DD3B8: FStAdFunc var_88
  loc_9DD3BB: FLdPr var_88
  loc_9DD3BE: LateIdLdVar var_98 DispID_22 0
  loc_9DD3C5: PopAd
  loc_9DD3C7: FLdPr Me
  loc_9DD3CA: MemLdRfVar from_stack_1.global_56
  loc_9DD3CD: NewIfNullRf
  loc_9DD3D1: FLdRfVar var_98
  loc_9DD3D4: CStrVarTmp
  loc_9DD3D5: FStStrNoPop var_B0
  loc_9DD3D8: ImpAdCallI2 Proc_266_17_9A241C(, )
  loc_9DD3DD: FStStrNoPop var_B4
  loc_9DD3E0: FLdPr Me
  loc_9DD3E3: MemStStrCopy
  loc_9DD3E7: FFreeStr var_B0 = ""
  loc_9DD3EE: FFree1Ad var_88
  loc_9DD3F1: FFree1Var var_98 = ""
  loc_9DD3F4: FLdPr Me
  loc_9DD3F7: VCallAd Control_ID_CucuPersMsk
  loc_9DD3FA: FStAdFunc var_BC
  loc_9DD3FD: FLdPr Me
  loc_9DD400: VCallAd Control_ID_DetaProvLbl
  loc_9DD403: FStAdFunc var_B8
  loc_9DD406: FLdRfVar var_B8
  loc_9DD409: FLdZeroAd var_BC
  loc_9DD40C: FStAdFuncNoPop
  loc_9DD40F: CastAd
  loc_9DD412: FStAdFunc var_9C
  loc_9DD415: FLdRfVar var_9C
  loc_9DD418: FLdPr Me
  loc_9DD41B: MemLdRfVar from_stack_1.global_100
  loc_9DD41E: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9DD423: IStI2 arg_C
  loc_9DD426: FFreeAd var_88 = "": var_9C = "": var_B8 = ""
  loc_9DD431: ILdI2 arg_C
  loc_9DD434: NotI4
  loc_9DD435: BranchF loc_9DD463
  loc_9DD438: FLdRfVar var_B0
  loc_9DD43B: FLdPr Me
  loc_9DD43E: MemLdRfVar from_stack_1.global_56
  loc_9DD441: NewIfNullPr tblproveedor
  loc_9DD444: from_stack_1v = tblproveedor.DetaProvGet()
  loc_9DD449: ILdRf var_B0
  loc_9DD44C: FLdPr Me
  loc_9DD44F: VCallAd Control_ID_DetaProvLbl
  loc_9DD452: FStAdFunc var_88
  loc_9DD455: FLdPr var_88
  loc_9DD458: Me.Caption = from_stack_1
  loc_9DD45D: FFree1Str var_B0
  loc_9DD460: FFree1Ad var_88
  loc_9DD463: ExitProcHresult
End Function

Private Sub HastaMsk_UnknownEvent_0 '94D718
  'Data Table: 4942D0
  loc_94D704: FLdPr Me
  loc_94D707: VCallAd Control_ID_HastaMsk
  loc_94D70A: CVarAd
  loc_94D70E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94D713: FFree1Var var_94 = ""
  loc_94D716: ExitProcHresult
End Sub

Private Function HastaMsk_UnknownEvent_8(arg_C) '9ADA9C
  'Data Table: 4942D0
  loc_9ADA0C: FLdPr Me
  loc_9ADA0F: VCallAd Control_ID_HastaMsk
  loc_9ADA12: FStAdFunc var_88
  loc_9ADA15: FLdPr var_88
  loc_9ADA18: LateIdLdVar var_98 DispID_15 0
  loc_9ADA1F: PopAd
  loc_9ADA21: LitI2_Byte &HFF
  loc_9ADA23: PopTmpLdAd2 var_A2
  loc_9ADA26: LitNothing
  loc_9ADA28: CastAd
  loc_9ADA2B: FStAdFunc var_A0
  loc_9ADA2E: FLdRfVar var_A0
  loc_9ADA31: LitStr "01/01/2018"
  loc_9ADA34: LitI2_Byte 0
  loc_9ADA36: LitI2_Byte 0
  loc_9ADA38: FLdRfVar var_98
  loc_9ADA3B: CStrVarTmp
  loc_9ADA3C: FStStrNoPop var_9C
  loc_9ADA3F: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9ADA44: FStStrNoPop var_A8
  loc_9ADA47: FLdPr Me
  loc_9ADA4A: MemStStrCopy
  loc_9ADA4E: FFreeStr var_9C = ""
  loc_9ADA55: FFreeAd var_88 = ""
  loc_9ADA5C: FFree1Var var_98 = ""
  loc_9ADA5F: FLdPr Me
  loc_9ADA62: VCallAd Control_ID_HastaMsk
  loc_9ADA65: FStAdFunc var_B0
  loc_9ADA68: LitNothing
  loc_9ADA6A: CastAd
  loc_9ADA6D: FStAdFunc var_AC
  loc_9ADA70: FLdRfVar var_AC
  loc_9ADA73: FLdZeroAd var_B0
  loc_9ADA76: FStAdFuncNoPop
  loc_9ADA79: CastAd
  loc_9ADA7C: FStAdFunc var_A0
  loc_9ADA7F: FLdRfVar var_A0
  loc_9ADA82: FLdPr Me
  loc_9ADA85: MemLdRfVar from_stack_1.global_100
  loc_9ADA88: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9ADA8D: IStI2 arg_C
  loc_9ADA90: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9ADA9B: ExitProcHresult
End Function

Private Sub DesdeMsk_UnknownEvent_0 '94D8C8
  'Data Table: 4942D0
  loc_94D8B4: FLdPr Me
  loc_94D8B7: VCallAd Control_ID_DesdeMsk
  loc_94D8BA: CVarAd
  loc_94D8BE: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94D8C3: FFree1Var var_94 = ""
  loc_94D8C6: ExitProcHresult
End Sub

Private Function DesdeMsk_UnknownEvent_8(arg_C) '9AC28C
  'Data Table: 4942D0
  loc_9AC1FC: FLdPr Me
  loc_9AC1FF: VCallAd Control_ID_DesdeMsk
  loc_9AC202: FStAdFunc var_88
  loc_9AC205: FLdPr var_88
  loc_9AC208: LateIdLdVar var_98 DispID_15 0
  loc_9AC20F: PopAd
  loc_9AC211: LitI2_Byte &HFF
  loc_9AC213: PopTmpLdAd2 var_A2
  loc_9AC216: LitNothing
  loc_9AC218: CastAd
  loc_9AC21B: FStAdFunc var_A0
  loc_9AC21E: FLdRfVar var_A0
  loc_9AC221: LitStr "01/01/2018"
  loc_9AC224: LitI2_Byte 0
  loc_9AC226: LitI2_Byte 0
  loc_9AC228: FLdRfVar var_98
  loc_9AC22B: CStrVarTmp
  loc_9AC22C: FStStrNoPop var_9C
  loc_9AC22F: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9AC234: FStStrNoPop var_A8
  loc_9AC237: FLdPr Me
  loc_9AC23A: MemStStrCopy
  loc_9AC23E: FFreeStr var_9C = ""
  loc_9AC245: FFreeAd var_88 = ""
  loc_9AC24C: FFree1Var var_98 = ""
  loc_9AC24F: FLdPr Me
  loc_9AC252: VCallAd Control_ID_DesdeMsk
  loc_9AC255: FStAdFunc var_B0
  loc_9AC258: LitNothing
  loc_9AC25A: CastAd
  loc_9AC25D: FStAdFunc var_AC
  loc_9AC260: FLdRfVar var_AC
  loc_9AC263: FLdZeroAd var_B0
  loc_9AC266: FStAdFuncNoPop
  loc_9AC269: CastAd
  loc_9AC26C: FStAdFunc var_A0
  loc_9AC26F: FLdRfVar var_A0
  loc_9AC272: FLdPr Me
  loc_9AC275: MemLdRfVar from_stack_1.global_100
  loc_9AC278: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9AC27D: IStI2 arg_C
  loc_9AC280: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9AC28B: ExitProcHresult
End Function

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '98BE7C
  'Data Table: 4942D0
  loc_98BE44: FLdPr Me
  loc_98BE47: VCallAd Control_ID_statusBar
  loc_98BE4A: FStAdFunc var_88
  loc_98BE4D: FLdPr var_88
  loc_98BE50: LateIdLdVar var_98 DispID_1 0
  loc_98BE57: CStrVarTmp
  loc_98BE58: CVarStr var_A8
  loc_98BE5B: PopAdLdVar
  loc_98BE5C: FLdPr Me
  loc_98BE5F: VCallAd Control_ID_statusBar
  loc_98BE62: FStAdFunc var_BC
  loc_98BE65: FLdPr var_BC
  loc_98BE68: LateIdSt
  loc_98BE6D: FFreeAd var_88 = ""
  loc_98BE74: FFreeVar var_98 = ""
  loc_98BE7B: ExitProcHresult
End Sub

Public Function bGeneradoGet() '4953E0
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '4953EF
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() '9C8C9C
  'Data Table: 4942D0
  loc_9C8BD4: LitI4 0
  loc_9C8BD9: LitI4 1
  loc_9C8BDE: FLdRfVar var_88
  loc_9C8BE1: Redim
  loc_9C8BEB: FLdPr Me
  loc_9C8BEE: VCallAd Control_ID_DesdeMsk
  loc_9C8BF1: CVarAd
  loc_9C8BF5: ParmAry1St
  loc_9C8BFB: FLdPr Me
  loc_9C8BFE: VCallAd Control_ID_DesdeCmd
  loc_9C8C01: CVarAd
  loc_9C8C05: ParmAry1St
  loc_9C8C0B: FLdRfVar var_88
  loc_9C8C0E: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_9C8C13: FLdRfVar var_88
  loc_9C8C16: Erase
  loc_9C8C17: LitI4 0
  loc_9C8C1C: LitI4 5
  loc_9C8C21: FLdRfVar var_88
  loc_9C8C24: Redim
  loc_9C8C2E: FLdPr Me
  loc_9C8C31: VCallAd Control_ID_cboPeriodo
  loc_9C8C34: CVarAd
  loc_9C8C38: ParmAry1St
  loc_9C8C3E: FLdPr Me
  loc_9C8C41: VCallAd Control_ID_CucuPersMsk
  loc_9C8C44: CVarAd
  loc_9C8C48: ParmAry1St
  loc_9C8C4E: FLdPr Me
  loc_9C8C51: VCallAd Control_ID_CucuPersCmd
  loc_9C8C54: CVarAd
  loc_9C8C58: ParmAry1St
  loc_9C8C5E: FLdPr Me
  loc_9C8C61: VCallAd Control_ID_chkExcluirTransferidos
  loc_9C8C64: CVarAd
  loc_9C8C68: ParmAry1St
  loc_9C8C6E: FLdPr Me
  loc_9C8C71: VCallAd Control_ID_HastaMsk
  loc_9C8C74: CVarAd
  loc_9C8C78: ParmAry1St
  loc_9C8C7E: FLdPr Me
  loc_9C8C81: VCallAd Control_ID_HastaCmd
  loc_9C8C84: CVarAd
  loc_9C8C88: ParmAry1St
  loc_9C8C8E: FLdRfVar var_88
  loc_9C8C91: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9C8C96: FLdRfVar var_88
  loc_9C8C99: Erase
  loc_9C8C9A: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'A71508
  'Data Table: 4942D0
  loc_A71190: LitStr vbNullString
  loc_A71193: FLdPr Me
  loc_A71196: MemStStrCopy
  loc_A7119A: LitI2_Byte 0
  loc_A7119C: PopTmpLdAd2 var_92
  loc_A7119F: from_stack_2v = DesdeMsk_UnknownEvent_8(from_stack_1v)
  loc_A711A4: FLdPr Me
  loc_A711A7: MemLdStr global_100
  loc_A711AA: LitStr vbNullString
  loc_A711AD: NeStr
  loc_A711AF: BranchF loc_A711B3
  loc_A711B2: ExitProcHresult
  loc_A711B3: LitI2_Byte 0
  loc_A711B5: PopTmpLdAd2 var_92
  loc_A711B8: from_stack_2v = HastaMsk_UnknownEvent_8(from_stack_1v)
  loc_A711BD: FLdPr Me
  loc_A711C0: MemLdStr global_100
  loc_A711C3: LitStr vbNullString
  loc_A711C6: NeStr
  loc_A711C8: BranchF loc_A711CC
  loc_A711CB: ExitProcHresult
  loc_A711CC: FLdPr Me
  loc_A711CF: MemLdI2 bGenerado
  loc_A711D2: BranchF loc_A711D6
  loc_A711D5: ExitProcHresult
  loc_A711D6: LitVarStr var_A4, "Generando reporte..."
  loc_A711DB: PopAdLdVar
  loc_A711DC: FLdPr Me
  loc_A711DF: VCallAd Control_ID_statusBar
  loc_A711E2: FStAdFunc var_B8
  loc_A711E5: FLdPr var_B8
  loc_A711E8: LateIdSt
  loc_A711ED: FFree1Ad var_B8
  loc_A711F0: LitI4 &HB
  loc_A711F5: CI2I4
  loc_A711F6: FLdPr Me
  loc_A711F9: Me.MousePointer = from_stack_1
  loc_A711FE: FLdPr Me
  loc_A71201: VCallAd Control_ID_CucuPersMsk
  loc_A71204: FStAdFunc var_B8
  loc_A71207: FLdPr var_B8
  loc_A7120A: LateIdLdVar var_C8 DispID_22 0
  loc_A71211: PopAd
  loc_A71213: FLdPr Me
  loc_A71216: VCallAd Control_ID_CucuPersMsk
  loc_A71219: FStAdFunc var_D0
  loc_A7121C: FLdPr var_D0
  loc_A7121F: LateIdLdVar var_E0 DispID_22 0
  loc_A71226: PopAd
  loc_A71228: LitVarStr var_B4, vbNullString
  loc_A7122D: FStVarCopyObj var_104
  loc_A71230: FLdRfVar var_104
  loc_A71233: LitStr " AND imputacion.CucuPers = "
  loc_A71236: FLdRfVar var_E0
  loc_A71239: CStrVarTmp
  loc_A7123A: FStStrNoPop var_E4
  loc_A7123D: ConcatStr
  loc_A7123E: CVarStr var_F4
  loc_A71241: FLdRfVar var_C8
  loc_A71244: CStrVarTmp
  loc_A71245: FStStrNoPop var_CC
  loc_A71248: LitStr vbNullString
  loc_A7124B: NeStr
  loc_A7124D: CVarBoolI2 var_A4
  loc_A71251: FLdRfVar var_114
  loc_A71254: ImpAdCallFPR4  = IIf(, , )
  loc_A71259: FLdRfVar var_114
  loc_A7125C: CStrVarTmp
  loc_A7125D: FStStr var_8C
  loc_A71260: FFreeStr var_CC = ""
  loc_A71267: FFreeAd var_B8 = ""
  loc_A7126E: FFreeVar var_C8 = "": var_E0 = "": var_A4 = "": var_F4 = "": var_104 = ""
  loc_A7127D: FLdRfVar var_92
  loc_A71280: FLdPr Me
  loc_A71283: VCallAd Control_ID_chkExcluirTransferidos
  loc_A71286: FStAdFunc var_B8
  loc_A71289: FLdPr var_B8
  loc_A7128C:  = Me.Value
  loc_A71291: LitVarStr var_124, " AND ReapDefi = 'No'"
  loc_A71296: FStVarCopyObj var_E0
  loc_A71299: FLdRfVar var_E0
  loc_A7129C: LitVarStr var_B4, vbNullString
  loc_A712A1: FStVarCopyObj var_C8
  loc_A712A4: FLdRfVar var_C8
  loc_A712A7: FLdI2 var_92
  loc_A712AA: CI4UI1
  loc_A712AB: LitI4 0
  loc_A712B0: EqI4
  loc_A712B1: CVarBoolI2 var_A4
  loc_A712B5: FLdRfVar var_F4
  loc_A712B8: ImpAdCallFPR4  = IIf(, , )
  loc_A712BD: FLdRfVar var_F4
  loc_A712C0: CStrVarTmp
  loc_A712C1: FStStr var_90
  loc_A712C4: FFree1Ad var_B8
  loc_A712C7: FFreeVar var_A4 = "": var_C8 = "": var_E0 = ""
  loc_A712D2: FLdPr Me
  loc_A712D5: MemLdRfVar from_stack_1.global_60
  loc_A712D8: NewIfNullAd
  loc_A712DB: FStAd var_128 
  loc_A712DF: LitStr "SELECT DetaProv, imputacion.CucuPers, ExorImpu, Sum(DefiImpu) DefiImpu, Sum(DeveImpu) DeveImpu"
  loc_A712E2: LitStr ", IF(Sum(ReapDefi)=0,'No','Si') ReapDefi"
  loc_A712E5: ConcatStr
  loc_A712E6: FStStrNoPop var_CC
  loc_A712E9: LitStr ", Sum(DefiImpu)-Sum(DeveImpu) ReapImpu"
  loc_A712EC: ConcatStr
  loc_A712ED: FStStrNoPop var_E4
  loc_A712F0: LitStr " FROM imputacion"
  loc_A712F3: ConcatStr
  loc_A712F4: FStStrNoPop var_12C
  loc_A712F7: LitStr " INNER JOIN proveedor ON proveedor.CucuPers = imputacion.CucuPers"
  loc_A712FA: ConcatStr
  loc_A712FB: FStStrNoPop var_130
  loc_A712FE: LitStr " WHERE imputacion.PeriInfo = "
  loc_A71301: ConcatStr
  loc_A71302: FStStrNoPop var_138
  loc_A71305: FLdRfVar var_134
  loc_A71308: FLdPr Me
  loc_A7130B: VCallAd Control_ID_cboPeriodo
  loc_A7130E: FStAdFunc var_B8
  loc_A71311: FLdPr var_B8
  loc_A71314:  = Me.Text
  loc_A71319: ILdRf var_134
  loc_A7131C: ConcatStr
  loc_A7131D: FStStrNoPop var_13C
  loc_A71320: ILdRf var_8C
  loc_A71323: ConcatStr
  loc_A71324: FStStrNoPop var_140
  loc_A71327: LitStr " GROUP BY CucuPers, ExorImpu"
  loc_A7132A: ConcatStr
  loc_A7132B: FStStrNoPop var_144
  loc_A7132E: LitStr " HAVING ReapImpu <> 0"
  loc_A71331: ConcatStr
  loc_A71332: FStStrNoPop var_148
  loc_A71335: ILdRf var_90
  loc_A71338: ConcatStr
  loc_A71339: FStStrNoPop var_14C
  loc_A7133C: LitStr " ORDER BY DetaProv, ExorImpu"
  loc_A7133F: ConcatStr
  loc_A71340: FStStrNoPop var_150
  loc_A71343: FLdPr var_128
  loc_A71346: Call clsimputacion.RedefineRS(from_stack_1v)
  loc_A7134B: FFreeStr var_CC = "": var_E4 = "": var_12C = "": var_130 = "": var_138 = "": var_134 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = ""
  loc_A71366: FFree1Ad var_B8
  loc_A71369: FLdRfVar var_154
  loc_A7136C: FLdPr var_128
  loc_A7136F: from_stack_1 = clsimputacion.RecordCount
  loc_A71374: ILdRf var_154
  loc_A71377: LitI4 0
  loc_A7137C: EqI4
  loc_A7137D: BranchF loc_A71390
  loc_A71380: LitI4 0
  loc_A71385: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_A71388: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A7138D: Branch loc_A714DD
  loc_A71390: LitI4 0
  loc_A71395: FLdRfVar var_154
  loc_A71398: FLdPr var_128
  loc_A7139B: from_stack_1 = clsimputacion.RecordCount
  loc_A713A0: ILdRf var_154
  loc_A713A3: FLdPr Me
  loc_A713A6: MemLdRfVar from_stack_1.global_84
  loc_A713A9: Redim
  loc_A713B3: LitI2_Byte 0
  loc_A713B5: LitVar_Missing var_C8
  loc_A713B8: LitI2_Byte &HFF
  loc_A713BA: LitVarI2 var_A4, 0
  loc_A713BF: PopAdLdVar
  loc_A713C0: FLdPr Me
  loc_A713C3: MemLdRfVar from_stack_1.global_96
  loc_A713C6: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A713CB: FFree1Var var_C8 = ""
  loc_A713CE: LitI2_Byte 0
  loc_A713D0: FLdPr Me
  loc_A713D3: MemStI2 global_88
  loc_A713D6: Call Proc_220_23_9E0D94()
  loc_A713DB: FLdRfVar var_92
  loc_A713DE: FLdPr var_128
  loc_A713E1: from_stack_1 = clsimputacion.EOF
  loc_A713E6: FLdI2 var_92
  loc_A713E9: NotI4
  loc_A713EA: BranchF loc_A71458
  loc_A713ED: FLdRfVar var_C8
  loc_A713F0: FLdRfVar var_158
  loc_A713F3: LitVarStr var_A4, "CucuPers"
  loc_A713F8: PopAdLdVar
  loc_A713F9: FLdRfVar var_D0
  loc_A713FC: FLdRfVar var_B8
  loc_A713FF: FLdPr var_128
  loc_A71402: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A71407: FLdPr var_B8
  loc_A7140A:  = Me.Fields
  loc_A7140F: FLdPr var_D0
  loc_A71412: from_stack_2 = Me.Item(from_stack_1)
  loc_A71417: FLdPr var_158
  loc_A7141A:  = Me.Value
  loc_A7141F: FLdRfVar var_C8
  loc_A71422: FLdPr Me
  loc_A71425: MemLdI2 global_88
  loc_A71428: CI4UI1
  loc_A71429: FLdPr Me
  loc_A7142C: MemLdStr global_84
  loc_A7142F: Ary1LdPr
  loc_A71430: MemLdStr global_0
  loc_A71433: CVarStr var_B4
  loc_A71436: HardType
  loc_A71437: NeVarBool
  loc_A71439: FFreeAd var_B8 = "": var_D0 = ""
  loc_A71442: FFree1Var var_C8 = ""
  loc_A71445: BranchF loc_A71450
  loc_A71448: Call Proc_220_23_9E0D94()
  loc_A7144D: Branch loc_A71455
  loc_A71450: Call Proc_220_24_A52204()
  loc_A71455: Branch loc_A713DB
  loc_A71458: LitNothing
  loc_A7145A: FStAd var_128 
  loc_A7145E: LitI2_Byte 1
  loc_A71460: FLdPr Me
  loc_A71463: MemLdRfVar from_stack_1.global_88
  loc_A71466: FLdPr Me
  loc_A71469: MemLdStr global_84
  loc_A7146C: LitI2_Byte 1
  loc_A7146E: FnUBound
  loc_A71470: CI2I4
  loc_A71471: ForI2 var_15C
  loc_A71477: LitI2_Byte 0
  loc_A71479: FLdPr Me
  loc_A7147C: MemLdRfVar from_stack_1.global_96
  loc_A7147F: CVarRef
  loc_A71484: LitI2_Byte &HFF
  loc_A71486: FLdPr Me
  loc_A71489: MemLdI2 global_88
  loc_A7148C: CI4UI1
  loc_A7148D: FLdPr Me
  loc_A71490: MemLdStr global_84
  loc_A71493: Ary1LdPr
  loc_A71494: MemLdStr global_16
  loc_A71497: CVarStr var_A4
  loc_A7149A: PopAdLdVar
  loc_A7149B: FLdRfVar var_88
  loc_A7149E: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A714A3: FLdPr Me
  loc_A714A6: MemLdI2 global_88
  loc_A714A9: CI4UI1
  loc_A714AA: FLdPr Me
  loc_A714AD: MemLdStr global_84
  loc_A714B0: Ary1LdPr
  loc_A714B1: MemLdStr global_8
  loc_A714B4: LitI2_Byte 1
  loc_A714B6: FnUBound
  loc_A714B8: CI2I4
  loc_A714B9: FLdPr Me
  loc_A714BC: MemLdI2 global_88
  loc_A714BF: CI4UI1
  loc_A714C0: FLdPr Me
  loc_A714C3: MemLdStr global_84
  loc_A714C6: Ary1LdPr
  loc_A714C7: MemStI2 global_12
  loc_A714CA: FLdPr Me
  loc_A714CD: MemLdRfVar from_stack_1.global_88
  loc_A714D0: NextI2 var_15C, loc_A71477
  loc_A714D5: LitI2_Byte &HFF
  loc_A714D7: FLdPr Me
  loc_A714DA: MemStI2 bGenerado
  loc_A714DD: LitI4 0
  loc_A714E2: CI2I4
  loc_A714E3: FLdPr Me
  loc_A714E6: Me.MousePointer = from_stack_1
  loc_A714EB: LitVarStr var_A4, vbNullString
  loc_A714F0: PopAdLdVar
  loc_A714F1: FLdPr Me
  loc_A714F4: VCallAd Control_ID_statusBar
  loc_A714F7: FStAdFunc var_B8
  loc_A714FA: FLdPr var_B8
  loc_A714FD: LateIdSt
  loc_A71502: FFree1Ad var_B8
  loc_A71505: ExitProcHresult
  loc_A71506: AryLdPr
End Sub

Public Sub GeneraHTML() 'A64568
  'Data Table: 4942D0
  loc_A64228: FLdRfVar var_88
  loc_A6422B: LitI2_Byte 0
  loc_A6422D: LitI2_Byte &HFF
  loc_A6422F: ImpAdLdI4 MemVar_C3D83C
  loc_A64232: FLdPr Me
  loc_A64235: MemLdRfVar from_stack_1.global_64
  loc_A64238: NewIfNullPr IFileSystem3
  loc_A6423B: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_A64240: ILdRf var_88
  loc_A64243: FLdPr Me
  loc_A64246: MemStVarAd
  loc_A6424A: FFree1Ad var_88
  loc_A6424D: Call Proc_220_25_B00D38()
  loc_A64252: LitI2_Byte 1
  loc_A64254: FLdPr Me
  loc_A64257: MemLdRfVar from_stack_1.global_88
  loc_A6425A: FLdPr Me
  loc_A6425D: MemLdStr global_84
  loc_A64260: LitI2_Byte 1
  loc_A64262: FnUBound
  loc_A64264: CI2I4
  loc_A64265: ForI2 var_8C
  loc_A6426B: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_A64270: PopAdLdVar
  loc_A64271: FLdPr Me
  loc_A64274: MemLdRfVar from_stack_1.global_68
  loc_A64277: LdPrVar
  loc_A64279: LateMemCall
  loc_A6427F: LitStr "  <td rowspan="""
  loc_A64282: FLdPr Me
  loc_A64285: MemLdI2 global_88
  loc_A64288: CI4UI1
  loc_A64289: FLdPr Me
  loc_A6428C: MemLdStr global_84
  loc_A6428F: Ary1LdPr
  loc_A64290: MemLdI2 global_12
  loc_A64293: CStrUI1
  loc_A64295: FStStrNoPop var_B0
  loc_A64298: ConcatStr
  loc_A64299: FStStrNoPop var_B4
  loc_A6429C: LitStr """ align=""left"">"
  loc_A6429F: ConcatStr
  loc_A642A0: FStStrNoPop var_B8
  loc_A642A3: FLdPr Me
  loc_A642A6: MemLdI2 global_88
  loc_A642A9: CI4UI1
  loc_A642AA: FLdPr Me
  loc_A642AD: MemLdStr global_84
  loc_A642B0: Ary1LdPr
  loc_A642B1: MemLdStr global_0
  loc_A642B4: ConcatStr
  loc_A642B5: FStStrNoPop var_BC
  loc_A642B8: LitStr "<br>"
  loc_A642BB: ConcatStr
  loc_A642BC: FStStrNoPop var_C0
  loc_A642BF: FLdPr Me
  loc_A642C2: MemLdI2 global_88
  loc_A642C5: CI4UI1
  loc_A642C6: FLdPr Me
  loc_A642C9: MemLdStr global_84
  loc_A642CC: Ary1LdPr
  loc_A642CD: MemLdStr global_4
  loc_A642D0: ConcatStr
  loc_A642D1: FStStrNoPop var_C4
  loc_A642D4: LitStr "</td>"
  loc_A642D7: ConcatStr
  loc_A642D8: CVarStr var_D4
  loc_A642DB: PopAdLdVar
  loc_A642DC: FLdPr Me
  loc_A642DF: MemLdRfVar from_stack_1.global_68
  loc_A642E2: LdPrVar
  loc_A642E4: LateMemCall
  loc_A642EA: FFreeStr var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = ""
  loc_A642F9: FFree1Var var_D4 = ""
  loc_A642FC: LitI2_Byte 1
  loc_A642FE: FLdPr Me
  loc_A64301: MemLdRfVar from_stack_1.global_92
  loc_A64304: FLdPr Me
  loc_A64307: MemLdI2 global_88
  loc_A6430A: CI4UI1
  loc_A6430B: FLdPr Me
  loc_A6430E: MemLdStr global_84
  loc_A64311: Ary1LdPr
  loc_A64312: MemLdStr global_8
  loc_A64315: LitI2_Byte 1
  loc_A64317: FnUBound
  loc_A64319: CI2I4
  loc_A6431A: ForI2 var_D8
  loc_A64320: FLdPr Me
  loc_A64323: MemLdI2 global_92
  loc_A64326: LitI2_Byte 1
  loc_A64328: GtI2
  loc_A64329: BranchF loc_A64340
  loc_A6432C: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_A64331: PopAdLdVar
  loc_A64332: FLdPr Me
  loc_A64335: MemLdRfVar from_stack_1.global_68
  loc_A64338: LdPrVar
  loc_A6433A: LateMemCall
  loc_A64340: FLdPr Me
  loc_A64343: MemLdI2 global_92
  loc_A64346: CI4UI1
  loc_A64347: FLdPr Me
  loc_A6434A: MemLdI2 global_88
  loc_A6434D: CI4UI1
  loc_A6434E: FLdPr Me
  loc_A64351: MemLdStr global_84
  loc_A64354: AryLock
  loc_A64357: Ary1LdPr
  loc_A64358: MemLdStr global_8
  loc_A6435B: AryLock
  loc_A6435E: Ary1LdRf
  loc_A6435F: FStR4 var_E4
  loc_A64362: LitI4 0
  loc_A64367: LitI4 0
  loc_A6436C: LitI2_Byte 0
  loc_A6436E: LitStr "left"
  loc_A64371: FMemLdR4 var_E4(0)
  loc_A64376: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A6437B: CVarStr var_D4
  loc_A6437E: PopAdLdVar
  loc_A6437F: FLdPr Me
  loc_A64382: MemLdRfVar from_stack_1.global_68
  loc_A64385: LdPrVar
  loc_A64387: LateMemCall
  loc_A6438D: FFree1Var var_D4 = ""
  loc_A64390: LitI4 0
  loc_A64395: LitI4 0
  loc_A6439A: LitI2_Byte 0
  loc_A6439C: LitStr "right"
  loc_A6439F: FMemLdR4 var_E4(4)
  loc_A643A4: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A643A9: CVarStr var_D4
  loc_A643AC: PopAdLdVar
  loc_A643AD: FLdPr Me
  loc_A643B0: MemLdRfVar from_stack_1.global_68
  loc_A643B3: LdPrVar
  loc_A643B5: LateMemCall
  loc_A643BB: FFree1Var var_D4 = ""
  loc_A643BE: LitI4 0
  loc_A643C3: LitI4 0
  loc_A643C8: LitI2_Byte 0
  loc_A643CA: LitStr "right"
  loc_A643CD: FMemLdR4 var_E4(8)
  loc_A643D2: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A643D7: CVarStr var_D4
  loc_A643DA: PopAdLdVar
  loc_A643DB: FLdPr Me
  loc_A643DE: MemLdRfVar from_stack_1.global_68
  loc_A643E1: LdPrVar
  loc_A643E3: LateMemCall
  loc_A643E9: FFree1Var var_D4 = ""
  loc_A643EC: LitI4 0
  loc_A643F1: LitI4 0
  loc_A643F6: LitI2_Byte 0
  loc_A643F8: LitStr "right"
  loc_A643FB: FMemLdR4 var_E4(16)
  loc_A64400: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A64405: CVarStr var_D4
  loc_A64408: PopAdLdVar
  loc_A64409: FLdPr Me
  loc_A6440C: MemLdRfVar from_stack_1.global_68
  loc_A6440F: LdPrVar
  loc_A64411: LateMemCall
  loc_A64417: FFree1Var var_D4 = ""
  loc_A6441A: LitI4 0
  loc_A6441F: LitI4 0
  loc_A64424: LitI2_Byte 0
  loc_A64426: LitStr "left"
  loc_A64429: FMemLdR4 var_E4(12)
  loc_A6442E: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A64433: CVarStr var_D4
  loc_A64436: PopAdLdVar
  loc_A64437: FLdPr Me
  loc_A6443A: MemLdRfVar from_stack_1.global_68
  loc_A6443D: LdPrVar
  loc_A6443F: LateMemCall
  loc_A64445: FFree1Var var_D4 = ""
  loc_A64448: LitI4 0
  loc_A6444D: FStR4 var_E4
  loc_A64450: AryUnlock
  loc_A64453: AryUnlock
  loc_A64456: FLdPr Me
  loc_A64459: MemLdI2 global_92
  loc_A6445C: LitI2_Byte 1
  loc_A6445E: EqI2
  loc_A6445F: BranchF loc_A644BF
  loc_A64462: LitStr "  <td rowspan="""
  loc_A64465: FLdPr Me
  loc_A64468: MemLdI2 global_88
  loc_A6446B: CI4UI1
  loc_A6446C: FLdPr Me
  loc_A6446F: MemLdStr global_84
  loc_A64472: Ary1LdPr
  loc_A64473: MemLdI2 global_12
  loc_A64476: CStrUI1
  loc_A64478: FStStrNoPop var_B0
  loc_A6447B: ConcatStr
  loc_A6447C: FStStrNoPop var_B4
  loc_A6447F: LitStr """ align=""right"" class=""Totales"">"
  loc_A64482: ConcatStr
  loc_A64483: FStStrNoPop var_B8
  loc_A64486: FLdPr Me
  loc_A64489: MemLdI2 global_88
  loc_A6448C: CI4UI1
  loc_A6448D: FLdPr Me
  loc_A64490: MemLdStr global_84
  loc_A64493: Ary1LdPr
  loc_A64494: MemLdStr global_16
  loc_A64497: ConcatStr
  loc_A64498: FStStrNoPop var_BC
  loc_A6449B: LitStr "</td>"
  loc_A6449E: ConcatStr
  loc_A6449F: CVarStr var_D4
  loc_A644A2: PopAdLdVar
  loc_A644A3: FLdPr Me
  loc_A644A6: MemLdRfVar from_stack_1.global_68
  loc_A644A9: LdPrVar
  loc_A644AB: LateMemCall
  loc_A644B1: FFreeStr var_B0 = "": var_B4 = "": var_B8 = ""
  loc_A644BC: FFree1Var var_D4 = ""
  loc_A644BF: LitVarStr var_9C, "     </tr>"
  loc_A644C4: PopAdLdVar
  loc_A644C5: FLdPr Me
  loc_A644C8: MemLdRfVar from_stack_1.global_68
  loc_A644CB: LdPrVar
  loc_A644CD: LateMemCall
  loc_A644D3: FLdPr Me
  loc_A644D6: MemLdRfVar from_stack_1.global_92
  loc_A644D9: NextI2 var_D8, loc_A64320
  loc_A644DE: FLdPr Me
  loc_A644E1: MemLdRfVar from_stack_1.global_88
  loc_A644E4: NextI2 var_8C, loc_A6426B
  loc_A644E9: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_A644EE: PopAdLdVar
  loc_A644EF: FLdPr Me
  loc_A644F2: MemLdRfVar from_stack_1.global_68
  loc_A644F5: LdPrVar
  loc_A644F7: LateMemCall
  loc_A644FD: LitVarStr var_9C, "    <td colspan=""6"" align=""right"" class=""Normal"">TOTAL REAPROPIACIÓN</td>"
  loc_A64502: PopAdLdVar
  loc_A64503: FLdPr Me
  loc_A64506: MemLdRfVar from_stack_1.global_68
  loc_A64509: LdPrVar
  loc_A6450B: LateMemCall
  loc_A64511: LitStr "    <td align=""right"" class=""Totales"">"
  loc_A64514: FLdPr Me
  loc_A64517: MemLdStr global_96
  loc_A6451A: ConcatStr
  loc_A6451B: FStStrNoPop var_B0
  loc_A6451E: LitStr "</th>"
  loc_A64521: ConcatStr
  loc_A64522: CVarStr var_D4
  loc_A64525: PopAdLdVar
  loc_A64526: FLdPr Me
  loc_A64529: MemLdRfVar from_stack_1.global_68
  loc_A6452C: LdPrVar
  loc_A6452E: LateMemCall
  loc_A64534: FFree1Str var_B0
  loc_A64537: FFree1Var var_D4 = ""
  loc_A6453A: LitVarStr var_9C, "     </tr>"
  loc_A6453F: PopAdLdVar
  loc_A64540: FLdPr Me
  loc_A64543: MemLdRfVar from_stack_1.global_68
  loc_A64546: LdPrVar
  loc_A64548: LateMemCall
  loc_A6454E: Call Proc_220_26_982AF0()
  loc_A64553: FLdPr Me
  loc_A64556: MemLdRfVar from_stack_1.global_68
  loc_A64559: LdPrVar
  loc_A6455B: LateMemCall
  loc_A64561: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_A64566: ExitProcHresult
End Sub

Private Function Proc_220_23_9E0D94() '9E0D94
  'Data Table: 4942D0
  loc_9E0C8C: FLdPr Me
  loc_9E0C8F: MemLdI2 global_88
  loc_9E0C92: LitI2_Byte 1
  loc_9E0C94: AddI2
  loc_9E0C95: FLdPr Me
  loc_9E0C98: MemStI2 global_88
  loc_9E0C9B: LitI2_Byte 0
  loc_9E0C9D: FLdPr Me
  loc_9E0CA0: MemStI2 global_92
  loc_9E0CA3: LitI4 0
  loc_9E0CA8: FLdPr Me
  loc_9E0CAB: MemLdI2 global_88
  loc_9E0CAE: CI4UI1
  loc_9E0CAF: FLdPr Me
  loc_9E0CB2: MemLdRfVar from_stack_1.global_84
  loc_9E0CB5: RedimPreserve
  loc_9E0CBF: FLdRfVar var_A0
  loc_9E0CC2: LitVarStr var_9C, "CucuPers"
  loc_9E0CC7: PopAdLdVar
  loc_9E0CC8: FLdRfVar var_8C
  loc_9E0CCB: FLdRfVar var_88
  loc_9E0CCE: FLdPr Me
  loc_9E0CD1: MemLdRfVar from_stack_1.global_60
  loc_9E0CD4: NewIfNullPr clsimputacion
  loc_9E0CD7: from_stack_1v = clsimputacion.RsFrmGet()
  loc_9E0CDC: FLdPr var_88
  loc_9E0CDF:  = Me.Fields
  loc_9E0CE4: FLdPr var_8C
  loc_9E0CE7: from_stack_2 = Me.Item(from_stack_1)
  loc_9E0CEC: LitI2_Byte 0
  loc_9E0CEE: LitVar_Missing var_D4
  loc_9E0CF1: LitI2_Byte 0
  loc_9E0CF3: FLdZeroAd var_A0
  loc_9E0CF6: CVarAd
  loc_9E0CFA: PopAdLdVar
  loc_9E0CFB: FLdPr Me
  loc_9E0CFE: MemLdI2 global_88
  loc_9E0D01: CI4UI1
  loc_9E0D02: FLdPr Me
  loc_9E0D05: MemLdStr global_84
  loc_9E0D08: AryLock
  loc_9E0D0B: Ary1LdPr
  loc_9E0D0C: MemLdRfVar from_stack_1.global_0
  loc_9E0D0F: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_9E0D14: AryUnlock
  loc_9E0D17: FFreeAd var_88 = ""
  loc_9E0D1E: FFreeVar var_B4 = ""
  loc_9E0D25: FLdRfVar var_A0
  loc_9E0D28: LitVarStr var_9C, "DetaProv"
  loc_9E0D2D: PopAdLdVar
  loc_9E0D2E: FLdRfVar var_8C
  loc_9E0D31: FLdRfVar var_88
  loc_9E0D34: FLdPr Me
  loc_9E0D37: MemLdRfVar from_stack_1.global_60
  loc_9E0D3A: NewIfNullPr clsimputacion
  loc_9E0D3D: from_stack_1v = clsimputacion.RsFrmGet()
  loc_9E0D42: FLdPr var_88
  loc_9E0D45:  = Me.Fields
  loc_9E0D4A: FLdPr var_8C
  loc_9E0D4D: from_stack_2 = Me.Item(from_stack_1)
  loc_9E0D52: LitI2_Byte 0
  loc_9E0D54: LitVar_Missing var_D4
  loc_9E0D57: LitI2_Byte 0
  loc_9E0D59: FLdZeroAd var_A0
  loc_9E0D5C: CVarAd
  loc_9E0D60: PopAdLdVar
  loc_9E0D61: FLdPr Me
  loc_9E0D64: MemLdI2 global_88
  loc_9E0D67: CI4UI1
  loc_9E0D68: FLdPr Me
  loc_9E0D6B: MemLdStr global_84
  loc_9E0D6E: AryLock
  loc_9E0D71: Ary1LdPr
  loc_9E0D72: MemLdRfVar from_stack_1.global_4
  loc_9E0D75: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_9E0D7A: AryUnlock
  loc_9E0D7D: FFreeAd var_88 = ""
  loc_9E0D84: FFreeVar var_B4 = ""
  loc_9E0D8B: Call Proc_220_24_A52204()
  loc_9E0D90: ExitProcHresult
End Function

Private Function Proc_220_24_A52204() 'A52204
  'Data Table: 4942D0
  loc_A51F4C: FLdPr Me
  loc_A51F4F: MemLdI2 global_92
  loc_A51F52: LitI2_Byte 1
  loc_A51F54: AddI2
  loc_A51F55: FLdPr Me
  loc_A51F58: MemStI2 global_92
  loc_A51F5B: LitI4 0
  loc_A51F60: FLdPr Me
  loc_A51F63: MemLdI2 global_92
  loc_A51F66: CI4UI1
  loc_A51F67: FLdPr Me
  loc_A51F6A: MemLdI2 global_88
  loc_A51F6D: CI4UI1
  loc_A51F6E: FLdPr Me
  loc_A51F71: MemLdStr global_84
  loc_A51F74: Ary1LdPr
  loc_A51F75: MemLdRfVar from_stack_1.global_8
  loc_A51F78: RedimPreserve
  loc_A51F82: FLdRfVar var_A0
  loc_A51F85: LitVarStr var_9C, "ExorImpu"
  loc_A51F8A: PopAdLdVar
  loc_A51F8B: FLdRfVar var_8C
  loc_A51F8E: FLdRfVar var_88
  loc_A51F91: FLdPr Me
  loc_A51F94: MemLdRfVar from_stack_1.global_60
  loc_A51F97: NewIfNullPr clsimputacion
  loc_A51F9A: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A51F9F: FLdPr var_88
  loc_A51FA2:  = Me.Fields
  loc_A51FA7: FLdPr var_8C
  loc_A51FAA: from_stack_2 = Me.Item(from_stack_1)
  loc_A51FAF: LitI2_Byte 0
  loc_A51FB1: LitVar_Missing var_D8
  loc_A51FB4: LitI2_Byte 0
  loc_A51FB6: FLdZeroAd var_A0
  loc_A51FB9: CVarAd
  loc_A51FBD: PopAdLdVar
  loc_A51FBE: FLdPr Me
  loc_A51FC1: MemLdI2 global_92
  loc_A51FC4: CI4UI1
  loc_A51FC5: FLdPr Me
  loc_A51FC8: MemLdI2 global_88
  loc_A51FCB: CI4UI1
  loc_A51FCC: FLdPr Me
  loc_A51FCF: MemLdStr global_84
  loc_A51FD2: AryLock
  loc_A51FD5: Ary1LdPr
  loc_A51FD6: MemLdStr global_8
  loc_A51FD9: AryLock
  loc_A51FDC: Ary1LdPr
  loc_A51FDD: MemLdRfVar from_stack_1.global_0
  loc_A51FE0: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A51FE5: AryUnlock
  loc_A51FE8: AryUnlock
  loc_A51FEB: FFreeAd var_88 = ""
  loc_A51FF2: FFreeVar var_B8 = ""
  loc_A51FF9: FLdRfVar var_A0
  loc_A51FFC: LitVarStr var_9C, "DefiImpu"
  loc_A52001: PopAdLdVar
  loc_A52002: FLdRfVar var_8C
  loc_A52005: FLdRfVar var_88
  loc_A52008: FLdPr Me
  loc_A5200B: MemLdRfVar from_stack_1.global_60
  loc_A5200E: NewIfNullPr clsimputacion
  loc_A52011: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A52016: FLdPr var_88
  loc_A52019:  = Me.Fields
  loc_A5201E: FLdPr var_8C
  loc_A52021: from_stack_2 = Me.Item(from_stack_1)
  loc_A52026: LitI2_Byte 0
  loc_A52028: LitVar_Missing var_D8
  loc_A5202B: LitI2_Byte &HFF
  loc_A5202D: FLdZeroAd var_A0
  loc_A52030: CVarAd
  loc_A52034: PopAdLdVar
  loc_A52035: FLdPr Me
  loc_A52038: MemLdI2 global_92
  loc_A5203B: CI4UI1
  loc_A5203C: FLdPr Me
  loc_A5203F: MemLdI2 global_88
  loc_A52042: CI4UI1
  loc_A52043: FLdPr Me
  loc_A52046: MemLdStr global_84
  loc_A52049: AryLock
  loc_A5204C: Ary1LdPr
  loc_A5204D: MemLdStr global_8
  loc_A52050: AryLock
  loc_A52053: Ary1LdPr
  loc_A52054: MemLdRfVar from_stack_1.global_4
  loc_A52057: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A5205C: AryUnlock
  loc_A5205F: AryUnlock
  loc_A52062: FFreeAd var_88 = ""
  loc_A52069: FFreeVar var_B8 = ""
  loc_A52070: FLdRfVar var_A0
  loc_A52073: LitVarStr var_9C, "DeveImpu"
  loc_A52078: PopAdLdVar
  loc_A52079: FLdRfVar var_8C
  loc_A5207C: FLdRfVar var_88
  loc_A5207F: FLdPr Me
  loc_A52082: MemLdRfVar from_stack_1.global_60
  loc_A52085: NewIfNullPr clsimputacion
  loc_A52088: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A5208D: FLdPr var_88
  loc_A52090:  = Me.Fields
  loc_A52095: FLdPr var_8C
  loc_A52098: from_stack_2 = Me.Item(from_stack_1)
  loc_A5209D: LitI2_Byte 0
  loc_A5209F: LitVar_Missing var_D8
  loc_A520A2: LitI2_Byte &HFF
  loc_A520A4: FLdZeroAd var_A0
  loc_A520A7: CVarAd
  loc_A520AB: PopAdLdVar
  loc_A520AC: FLdPr Me
  loc_A520AF: MemLdI2 global_92
  loc_A520B2: CI4UI1
  loc_A520B3: FLdPr Me
  loc_A520B6: MemLdI2 global_88
  loc_A520B9: CI4UI1
  loc_A520BA: FLdPr Me
  loc_A520BD: MemLdStr global_84
  loc_A520C0: AryLock
  loc_A520C3: Ary1LdPr
  loc_A520C4: MemLdStr global_8
  loc_A520C7: AryLock
  loc_A520CA: Ary1LdPr
  loc_A520CB: MemLdRfVar from_stack_1.global_8
  loc_A520CE: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A520D3: AryUnlock
  loc_A520D6: AryUnlock
  loc_A520D9: FFreeAd var_88 = ""
  loc_A520E0: FFreeVar var_B8 = ""
  loc_A520E7: FLdRfVar var_A0
  loc_A520EA: LitVarStr var_9C, "ReapDefi"
  loc_A520EF: PopAdLdVar
  loc_A520F0: FLdRfVar var_8C
  loc_A520F3: FLdRfVar var_88
  loc_A520F6: FLdPr Me
  loc_A520F9: MemLdRfVar from_stack_1.global_60
  loc_A520FC: NewIfNullPr clsimputacion
  loc_A520FF: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A52104: FLdPr var_88
  loc_A52107:  = Me.Fields
  loc_A5210C: FLdPr var_8C
  loc_A5210F: from_stack_2 = Me.Item(from_stack_1)
  loc_A52114: LitI2_Byte 0
  loc_A52116: LitVar_Missing var_D8
  loc_A52119: LitI2_Byte 0
  loc_A5211B: FLdZeroAd var_A0
  loc_A5211E: CVarAd
  loc_A52122: PopAdLdVar
  loc_A52123: FLdPr Me
  loc_A52126: MemLdI2 global_92
  loc_A52129: CI4UI1
  loc_A5212A: FLdPr Me
  loc_A5212D: MemLdI2 global_88
  loc_A52130: CI4UI1
  loc_A52131: FLdPr Me
  loc_A52134: MemLdStr global_84
  loc_A52137: AryLock
  loc_A5213A: Ary1LdPr
  loc_A5213B: MemLdStr global_8
  loc_A5213E: AryLock
  loc_A52141: Ary1LdPr
  loc_A52142: MemLdRfVar from_stack_1.global_12
  loc_A52145: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A5214A: AryUnlock
  loc_A5214D: AryUnlock
  loc_A52150: FFreeAd var_88 = ""
  loc_A52157: FFreeVar var_B8 = ""
  loc_A5215E: FLdRfVar var_A0
  loc_A52161: LitVarStr var_9C, "ReapImpu"
  loc_A52166: PopAdLdVar
  loc_A52167: FLdRfVar var_8C
  loc_A5216A: FLdRfVar var_88
  loc_A5216D: FLdPr Me
  loc_A52170: MemLdRfVar from_stack_1.global_60
  loc_A52173: NewIfNullPr clsimputacion
  loc_A52176: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A5217B: FLdPr var_88
  loc_A5217E:  = Me.Fields
  loc_A52183: FLdPr var_8C
  loc_A52186: from_stack_2 = Me.Item(from_stack_1)
  loc_A5218B: LitI2_Byte 0
  loc_A5218D: FLdPr Me
  loc_A52190: MemLdI2 global_88
  loc_A52193: CI4UI1
  loc_A52194: FLdPr Me
  loc_A52197: MemLdStr global_84
  loc_A5219A: AryLock
  loc_A5219D: Ary1LdPr
  loc_A5219E: MemLdRfVar from_stack_1.global_16
  loc_A521A1: CVarRef
  loc_A521A6: LitI2_Byte &HFF
  loc_A521A8: FLdZeroAd var_A0
  loc_A521AB: CVarAd
  loc_A521AF: PopAdLdVar
  loc_A521B0: FLdPr Me
  loc_A521B3: MemLdI2 global_92
  loc_A521B6: CI4UI1
  loc_A521B7: FLdPr Me
  loc_A521BA: MemLdI2 global_88
  loc_A521BD: CI4UI1
  loc_A521BE: FLdPr Me
  loc_A521C1: MemLdStr global_84
  loc_A521C4: AryLock
  loc_A521C7: Ary1LdPr
  loc_A521C8: MemLdStr global_8
  loc_A521CB: AryLock
  loc_A521CE: Ary1LdPr
  loc_A521CF: MemLdRfVar from_stack_1.global_16
  loc_A521D2: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A521D7: AryUnlock
  loc_A521DA: AryUnlock
  loc_A521DD: AryUnlock
  loc_A521E0: FFreeAd var_88 = ""
  loc_A521E7: FFree1Var var_B8 = ""
  loc_A521EA: LitI4 1
  loc_A521EF: PopTmpLdAdStr var_E0
  loc_A521F2: FLdPr Me
  loc_A521F5: MemLdRfVar from_stack_1.global_60
  loc_A521F8: NewIfNullPr clsimputacion
  loc_A521FB: Call clsimputacion.Mover(from_stack_1v)
  loc_A52200: ExitProcHresult
  loc_A52201: CRec2Ansi arg_5EF
End Function

Private Function Proc_220_25_B00D38() 'B00D38
  'Data Table: 4942D0
  loc_B00588: LitVarStr var_94, "<html>"
  loc_B0058D: PopAdLdVar
  loc_B0058E: FLdPr Me
  loc_B00591: MemLdRfVar from_stack_1.global_68
  loc_B00594: LdPrVar
  loc_B00596: LateMemCall
  loc_B0059C: LitVarStr var_94, "<head>"
  loc_B005A1: PopAdLdVar
  loc_B005A2: FLdPr Me
  loc_B005A5: MemLdRfVar from_stack_1.global_68
  loc_B005A8: LdPrVar
  loc_B005AA: LateMemCall
  loc_B005B0: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_B005B5: PopAdLdVar
  loc_B005B6: FLdPr Me
  loc_B005B9: MemLdRfVar from_stack_1.global_68
  loc_B005BC: LdPrVar
  loc_B005BE: LateMemCall
  loc_B005C4: LitStr "<title>"
  loc_B005C7: FLdRfVar var_A8
  loc_B005CA: FLdPr Me
  loc_B005CD:  = Me.Caption
  loc_B005D2: ILdRf var_A8
  loc_B005D5: ConcatStr
  loc_B005D6: FStStrNoPop var_AC
  loc_B005D9: LitStr "</title>"
  loc_B005DC: ConcatStr
  loc_B005DD: CVarStr var_BC
  loc_B005E0: PopAdLdVar
  loc_B005E1: FLdPr Me
  loc_B005E4: MemLdRfVar from_stack_1.global_68
  loc_B005E7: LdPrVar
  loc_B005E9: LateMemCall
  loc_B005EF: FFreeStr var_A8 = ""
  loc_B005F6: FFree1Var var_BC = ""
  loc_B005F9: LitVarStr var_94, "<style type=""text/css"">"
  loc_B005FE: PopAdLdVar
  loc_B005FF: FLdPr Me
  loc_B00602: MemLdRfVar from_stack_1.global_68
  loc_B00605: LdPrVar
  loc_B00607: LateMemCall
  loc_B0060D: LitVarStr var_94, ".Titulo1 {"
  loc_B00612: PopAdLdVar
  loc_B00613: FLdPr Me
  loc_B00616: MemLdRfVar from_stack_1.global_68
  loc_B00619: LdPrVar
  loc_B0061B: LateMemCall
  loc_B00621: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_B00626: PopAdLdVar
  loc_B00627: FLdPr Me
  loc_B0062A: MemLdRfVar from_stack_1.global_68
  loc_B0062D: LdPrVar
  loc_B0062F: LateMemCall
  loc_B00635: LitVarStr var_94, " font-size: 18px;"
  loc_B0063A: PopAdLdVar
  loc_B0063B: FLdPr Me
  loc_B0063E: MemLdRfVar from_stack_1.global_68
  loc_B00641: LdPrVar
  loc_B00643: LateMemCall
  loc_B00649: LitVarStr var_94, " font-weight: bold;"
  loc_B0064E: PopAdLdVar
  loc_B0064F: FLdPr Me
  loc_B00652: MemLdRfVar from_stack_1.global_68
  loc_B00655: LdPrVar
  loc_B00657: LateMemCall
  loc_B0065D: LitVarStr var_94, "}"
  loc_B00662: PopAdLdVar
  loc_B00663: FLdPr Me
  loc_B00666: MemLdRfVar from_stack_1.global_68
  loc_B00669: LdPrVar
  loc_B0066B: LateMemCall
  loc_B00671: LitVarStr var_94, ".Titulo2 {"
  loc_B00676: PopAdLdVar
  loc_B00677: FLdPr Me
  loc_B0067A: MemLdRfVar from_stack_1.global_68
  loc_B0067D: LdPrVar
  loc_B0067F: LateMemCall
  loc_B00685: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_B0068A: PopAdLdVar
  loc_B0068B: FLdPr Me
  loc_B0068E: MemLdRfVar from_stack_1.global_68
  loc_B00691: LdPrVar
  loc_B00693: LateMemCall
  loc_B00699: LitVarStr var_94, " font-size: 14px;"
  loc_B0069E: PopAdLdVar
  loc_B0069F: FLdPr Me
  loc_B006A2: MemLdRfVar from_stack_1.global_68
  loc_B006A5: LdPrVar
  loc_B006A7: LateMemCall
  loc_B006AD: LitVarStr var_94, " font-weight: bold;"
  loc_B006B2: PopAdLdVar
  loc_B006B3: FLdPr Me
  loc_B006B6: MemLdRfVar from_stack_1.global_68
  loc_B006B9: LdPrVar
  loc_B006BB: LateMemCall
  loc_B006C1: LitVarStr var_94, "}"
  loc_B006C6: PopAdLdVar
  loc_B006C7: FLdPr Me
  loc_B006CA: MemLdRfVar from_stack_1.global_68
  loc_B006CD: LdPrVar
  loc_B006CF: LateMemCall
  loc_B006D5: LitVarStr var_94, ".Normal {"
  loc_B006DA: PopAdLdVar
  loc_B006DB: FLdPr Me
  loc_B006DE: MemLdRfVar from_stack_1.global_68
  loc_B006E1: LdPrVar
  loc_B006E3: LateMemCall
  loc_B006E9: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_B006EE: PopAdLdVar
  loc_B006EF: FLdPr Me
  loc_B006F2: MemLdRfVar from_stack_1.global_68
  loc_B006F5: LdPrVar
  loc_B006F7: LateMemCall
  loc_B006FD: LitVarStr var_94, " font-size: 14px;"
  loc_B00702: PopAdLdVar
  loc_B00703: FLdPr Me
  loc_B00706: MemLdRfVar from_stack_1.global_68
  loc_B00709: LdPrVar
  loc_B0070B: LateMemCall
  loc_B00711: LitVarStr var_94, " font-style: normal;"
  loc_B00716: PopAdLdVar
  loc_B00717: FLdPr Me
  loc_B0071A: MemLdRfVar from_stack_1.global_68
  loc_B0071D: LdPrVar
  loc_B0071F: LateMemCall
  loc_B00725: LitVarStr var_94, " font-weight: normal;"
  loc_B0072A: PopAdLdVar
  loc_B0072B: FLdPr Me
  loc_B0072E: MemLdRfVar from_stack_1.global_68
  loc_B00731: LdPrVar
  loc_B00733: LateMemCall
  loc_B00739: LitVarStr var_94, " font-variant: normal;"
  loc_B0073E: PopAdLdVar
  loc_B0073F: FLdPr Me
  loc_B00742: MemLdRfVar from_stack_1.global_68
  loc_B00745: LdPrVar
  loc_B00747: LateMemCall
  loc_B0074D: LitVarStr var_94, "}"
  loc_B00752: PopAdLdVar
  loc_B00753: FLdPr Me
  loc_B00756: MemLdRfVar from_stack_1.global_68
  loc_B00759: LdPrVar
  loc_B0075B: LateMemCall
  loc_B00761: LitVarStr var_94, ".Encabezado {"
  loc_B00766: PopAdLdVar
  loc_B00767: FLdPr Me
  loc_B0076A: MemLdRfVar from_stack_1.global_68
  loc_B0076D: LdPrVar
  loc_B0076F: LateMemCall
  loc_B00775: LitVarStr var_94, " font-family: ""Times New Roman"", Times, serif;"
  loc_B0077A: PopAdLdVar
  loc_B0077B: FLdPr Me
  loc_B0077E: MemLdRfVar from_stack_1.global_68
  loc_B00781: LdPrVar
  loc_B00783: LateMemCall
  loc_B00789: LitVarStr var_94, " font-size: 13px;"
  loc_B0078E: PopAdLdVar
  loc_B0078F: FLdPr Me
  loc_B00792: MemLdRfVar from_stack_1.global_68
  loc_B00795: LdPrVar
  loc_B00797: LateMemCall
  loc_B0079D: LitVarStr var_94, " font-weight: bold;"
  loc_B007A2: PopAdLdVar
  loc_B007A3: FLdPr Me
  loc_B007A6: MemLdRfVar from_stack_1.global_68
  loc_B007A9: LdPrVar
  loc_B007AB: LateMemCall
  loc_B007B1: LitVarStr var_94, " background-color: #D3D3D3;"
  loc_B007B6: PopAdLdVar
  loc_B007B7: FLdPr Me
  loc_B007BA: MemLdRfVar from_stack_1.global_68
  loc_B007BD: LdPrVar
  loc_B007BF: LateMemCall
  loc_B007C5: LitVarStr var_94, "}"
  loc_B007CA: PopAdLdVar
  loc_B007CB: FLdPr Me
  loc_B007CE: MemLdRfVar from_stack_1.global_68
  loc_B007D1: LdPrVar
  loc_B007D3: LateMemCall
  loc_B007D9: LitVarStr var_94, ".LineaDato {"
  loc_B007DE: PopAdLdVar
  loc_B007DF: FLdPr Me
  loc_B007E2: MemLdRfVar from_stack_1.global_68
  loc_B007E5: LdPrVar
  loc_B007E7: LateMemCall
  loc_B007ED: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_B007F2: PopAdLdVar
  loc_B007F3: FLdPr Me
  loc_B007F6: MemLdRfVar from_stack_1.global_68
  loc_B007F9: LdPrVar
  loc_B007FB: LateMemCall
  loc_B00801: LitVarStr var_94, " font-size: 10px;"
  loc_B00806: PopAdLdVar
  loc_B00807: FLdPr Me
  loc_B0080A: MemLdRfVar from_stack_1.global_68
  loc_B0080D: LdPrVar
  loc_B0080F: LateMemCall
  loc_B00815: LitVarStr var_94, "}"
  loc_B0081A: PopAdLdVar
  loc_B0081B: FLdPr Me
  loc_B0081E: MemLdRfVar from_stack_1.global_68
  loc_B00821: LdPrVar
  loc_B00823: LateMemCall
  loc_B00829: LitVarStr var_94, ".Totales {"
  loc_B0082E: PopAdLdVar
  loc_B0082F: FLdPr Me
  loc_B00832: MemLdRfVar from_stack_1.global_68
  loc_B00835: LdPrVar
  loc_B00837: LateMemCall
  loc_B0083D: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_B00842: PopAdLdVar
  loc_B00843: FLdPr Me
  loc_B00846: MemLdRfVar from_stack_1.global_68
  loc_B00849: LdPrVar
  loc_B0084B: LateMemCall
  loc_B00851: LitVarStr var_94, " font-size: 14px;"
  loc_B00856: PopAdLdVar
  loc_B00857: FLdPr Me
  loc_B0085A: MemLdRfVar from_stack_1.global_68
  loc_B0085D: LdPrVar
  loc_B0085F: LateMemCall
  loc_B00865: LitVarStr var_94, " font-weight: bold;"
  loc_B0086A: PopAdLdVar
  loc_B0086B: FLdPr Me
  loc_B0086E: MemLdRfVar from_stack_1.global_68
  loc_B00871: LdPrVar
  loc_B00873: LateMemCall
  loc_B00879: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_B0087E: PopAdLdVar
  loc_B0087F: FLdPr Me
  loc_B00882: MemLdRfVar from_stack_1.global_68
  loc_B00885: LdPrVar
  loc_B00887: LateMemCall
  loc_B0088D: LitVarStr var_94, "}"
  loc_B00892: PopAdLdVar
  loc_B00893: FLdPr Me
  loc_B00896: MemLdRfVar from_stack_1.global_68
  loc_B00899: LdPrVar
  loc_B0089B: LateMemCall
  loc_B008A1: LitVarStr var_94, ".SubTotales {"
  loc_B008A6: PopAdLdVar
  loc_B008A7: FLdPr Me
  loc_B008AA: MemLdRfVar from_stack_1.global_68
  loc_B008AD: LdPrVar
  loc_B008AF: LateMemCall
  loc_B008B5: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_B008BA: PopAdLdVar
  loc_B008BB: FLdPr Me
  loc_B008BE: MemLdRfVar from_stack_1.global_68
  loc_B008C1: LdPrVar
  loc_B008C3: LateMemCall
  loc_B008C9: LitVarStr var_94, " font-size: 10px;"
  loc_B008CE: PopAdLdVar
  loc_B008CF: FLdPr Me
  loc_B008D2: MemLdRfVar from_stack_1.global_68
  loc_B008D5: LdPrVar
  loc_B008D7: LateMemCall
  loc_B008DD: LitVarStr var_94, " font-weight: bold;"
  loc_B008E2: PopAdLdVar
  loc_B008E3: FLdPr Me
  loc_B008E6: MemLdRfVar from_stack_1.global_68
  loc_B008E9: LdPrVar
  loc_B008EB: LateMemCall
  loc_B008F1: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_B008F6: PopAdLdVar
  loc_B008F7: FLdPr Me
  loc_B008FA: MemLdRfVar from_stack_1.global_68
  loc_B008FD: LdPrVar
  loc_B008FF: LateMemCall
  loc_B00905: LitVarStr var_94, "}"
  loc_B0090A: PopAdLdVar
  loc_B0090B: FLdPr Me
  loc_B0090E: MemLdRfVar from_stack_1.global_68
  loc_B00911: LdPrVar
  loc_B00913: LateMemCall
  loc_B00919: LitVarStr var_94, "THEAD { display: table-header-group; }"
  loc_B0091E: PopAdLdVar
  loc_B0091F: FLdPr Me
  loc_B00922: MemLdRfVar from_stack_1.global_68
  loc_B00925: LdPrVar
  loc_B00927: LateMemCall
  loc_B0092D: LitVarStr var_94, "</style>"
  loc_B00932: PopAdLdVar
  loc_B00933: FLdPr Me
  loc_B00936: MemLdRfVar from_stack_1.global_68
  loc_B00939: LdPrVar
  loc_B0093B: LateMemCall
  loc_B00941: LitI4 0
  loc_B00946: FStStrCopy var_AC
  loc_B00949: FLdRfVar var_AC
  loc_B0094C: LitI4 0
  loc_B00951: FStStrCopy var_A8
  loc_B00954: FLdRfVar var_A8
  loc_B00957: LitI2_Byte 0
  loc_B00959: PopTmpLdAd2 var_BE
  loc_B0095C: FLdPr Me
  loc_B0095F: MemLdRfVar from_stack_1.global_68
  loc_B00962: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_B00967: FFreeStr var_A8 = ""
  loc_B0096E: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_B00973: PopAdLdVar
  loc_B00974: FLdPr Me
  loc_B00977: MemLdRfVar from_stack_1.global_68
  loc_B0097A: LdPrVar
  loc_B0097C: LateMemCall
  loc_B00982: LitVarStr var_94, "  <tr valign=""middle"">"
  loc_B00987: PopAdLdVar
  loc_B00988: FLdPr Me
  loc_B0098B: MemLdRfVar from_stack_1.global_68
  loc_B0098E: LdPrVar
  loc_B00990: LateMemCall
  loc_B00996: LitVarStr var_A4, "    <th colspan=""2"" width=""100" & Chr(37) & """ align=""center"" valign=""bottom""><p><img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>"
  loc_B0099B: LitVarStr var_94, "Municipalidad de Guaymallén"
  loc_B009A0: FStVarCopyObj var_BC
  loc_B009A3: FLdRfVar var_BC
  loc_B009A6: FLdRfVar var_D0
  loc_B009A9: ImpAdCallFPR4  = Ucase()
  loc_B009AE: FLdRfVar var_D0
  loc_B009B1: ConcatVar var_E0
  loc_B009B5: LitVarStr var_F0, "</p>"
  loc_B009BA: ConcatVar var_100
  loc_B009BE: PopAdLdVar
  loc_B009BF: FLdPr Me
  loc_B009C2: MemLdRfVar from_stack_1.global_68
  loc_B009C5: LdPrVar
  loc_B009C7: LateMemCall
  loc_B009CD: FFreeVar var_BC = "": var_D0 = "": var_E0 = ""
  loc_B009D8: LitStr "    <p>"
  loc_B009DB: FLdRfVar var_A8
  loc_B009DE: FLdPr Me
  loc_B009E1:  = Me.Caption
  loc_B009E6: ILdRf var_A8
  loc_B009E9: ConcatStr
  loc_B009EA: FStStrNoPop var_AC
  loc_B009ED: LitStr "</p></th>"
  loc_B009F0: ConcatStr
  loc_B009F1: CVarStr var_BC
  loc_B009F4: PopAdLdVar
  loc_B009F5: FLdPr Me
  loc_B009F8: MemLdRfVar from_stack_1.global_68
  loc_B009FB: LdPrVar
  loc_B009FD: LateMemCall
  loc_B00A03: FFreeStr var_A8 = ""
  loc_B00A0A: FFree1Var var_BC = ""
  loc_B00A0D: LitVarStr var_94, "  </tr>"
  loc_B00A12: PopAdLdVar
  loc_B00A13: FLdPr Me
  loc_B00A16: MemLdRfVar from_stack_1.global_68
  loc_B00A19: LdPrVar
  loc_B00A1B: LateMemCall
  loc_B00A21: LitVarStr var_94, "  <tr><th colspan=""2""><hr></th></tr>"
  loc_B00A26: PopAdLdVar
  loc_B00A27: FLdPr Me
  loc_B00A2A: MemLdRfVar from_stack_1.global_68
  loc_B00A2D: LdPrVar
  loc_B00A2F: LateMemCall
  loc_B00A35: LitVarStr var_94, "  <tr valign=""top"">"
  loc_B00A3A: PopAdLdVar
  loc_B00A3B: FLdPr Me
  loc_B00A3E: MemLdRfVar from_stack_1.global_68
  loc_B00A41: LdPrVar
  loc_B00A43: LateMemCall
  loc_B00A49: LitVarStr var_94, "    <th align=""left"">"
  loc_B00A4E: PopAdLdVar
  loc_B00A4F: FLdPr Me
  loc_B00A52: MemLdRfVar from_stack_1.global_68
  loc_B00A55: LdPrVar
  loc_B00A57: LateMemCall
  loc_B00A5D: LitStr "     Periodo: <span class=""Normal"">"
  loc_B00A60: FLdRfVar var_A8
  loc_B00A63: FLdPr Me
  loc_B00A66: VCallAd Control_ID_cboPeriodo
  loc_B00A69: FStAdFunc var_114
  loc_B00A6C: FLdPr var_114
  loc_B00A6F:  = Me.Text
  loc_B00A74: ILdRf var_A8
  loc_B00A77: ConcatStr
  loc_B00A78: FStStrNoPop var_AC
  loc_B00A7B: LitStr "</span><br>"
  loc_B00A7E: ConcatStr
  loc_B00A7F: CVarStr var_BC
  loc_B00A82: PopAdLdVar
  loc_B00A83: FLdPr Me
  loc_B00A86: MemLdRfVar from_stack_1.global_68
  loc_B00A89: LdPrVar
  loc_B00A8B: LateMemCall
  loc_B00A91: FFreeStr var_A8 = ""
  loc_B00A98: FFree1Ad var_114
  loc_B00A9B: FFree1Var var_BC = ""
  loc_B00A9E: FLdPr Me
  loc_B00AA1: VCallAd Control_ID_CucuPersMsk
  loc_B00AA4: FStAdFunc var_114
  loc_B00AA7: FLdPr var_114
  loc_B00AAA: LateIdLdVar var_BC DispID_22 0
  loc_B00AB1: CStrVarTmp
  loc_B00AB2: FStStrNoPop var_A8
  loc_B00AB5: LitStr vbNullString
  loc_B00AB8: NeStr
  loc_B00ABA: FFree1Str var_A8
  loc_B00ABD: FFree1Ad var_114
  loc_B00AC0: FFree1Var var_BC = ""
  loc_B00AC3: BranchF loc_B00B0A
  loc_B00AC6: LitStr "     Nombre de Proveedor: <span class=""Normal"">"
  loc_B00AC9: FLdRfVar var_A8
  loc_B00ACC: FLdPr Me
  loc_B00ACF: VCallAd Control_ID_DetaProvLbl
  loc_B00AD2: FStAdFunc var_114
  loc_B00AD5: FLdPr var_114
  loc_B00AD8:  = Me.Caption
  loc_B00ADD: ILdRf var_A8
  loc_B00AE0: ConcatStr
  loc_B00AE1: FStStrNoPop var_AC
  loc_B00AE4: LitStr "</span>"
  loc_B00AE7: ConcatStr
  loc_B00AE8: CVarStr var_BC
  loc_B00AEB: PopAdLdVar
  loc_B00AEC: FLdPr Me
  loc_B00AEF: MemLdRfVar from_stack_1.global_68
  loc_B00AF2: LdPrVar
  loc_B00AF4: LateMemCall
  loc_B00AFA: FFreeStr var_A8 = ""
  loc_B00B01: FFree1Ad var_114
  loc_B00B04: FFree1Var var_BC = ""
  loc_B00B07: Branch loc_B00B1E
  loc_B00B0A: LitVarStr var_94, "     Nombre de Proveedor: <span class=""Normal"">TODOS</span>"
  loc_B00B0F: PopAdLdVar
  loc_B00B10: FLdPr Me
  loc_B00B13: MemLdRfVar from_stack_1.global_68
  loc_B00B16: LdPrVar
  loc_B00B18: LateMemCall
  loc_B00B1E: FLdRfVar var_BE
  loc_B00B21: FLdPr Me
  loc_B00B24: VCallAd Control_ID_chkExcluirTransferidos
  loc_B00B27: FStAdFunc var_114
  loc_B00B2A: FLdPr var_114
  loc_B00B2D:  = Me.Value
  loc_B00B32: FLdI2 var_BE
  loc_B00B35: CI4UI1
  loc_B00B36: LitI4 1
  loc_B00B3B: EqI4
  loc_B00B3C: FFree1Ad var_114
  loc_B00B3F: BranchF loc_B00B56
  loc_B00B42: LitVarStr var_94, "      <br>Los expedientes transferidos NO se muestran"
  loc_B00B47: PopAdLdVar
  loc_B00B48: FLdPr Me
  loc_B00B4B: MemLdRfVar from_stack_1.global_68
  loc_B00B4E: LdPrVar
  loc_B00B50: LateMemCall
  loc_B00B56: LitVarStr var_94, "    </th>"
  loc_B00B5B: PopAdLdVar
  loc_B00B5C: FLdPr Me
  loc_B00B5F: MemLdRfVar from_stack_1.global_68
  loc_B00B62: LdPrVar
  loc_B00B64: LateMemCall
  loc_B00B6A: LitVarStr var_94, "    <th align=""right"">"
  loc_B00B6F: PopAdLdVar
  loc_B00B70: FLdPr Me
  loc_B00B73: MemLdRfVar from_stack_1.global_68
  loc_B00B76: LdPrVar
  loc_B00B78: LateMemCall
  loc_B00B7E: LitStr "     Desde: <span class=""Normal"">"
  loc_B00B81: FLdPr Me
  loc_B00B84: VCallAd Control_ID_DesdeMsk
  loc_B00B87: FStAdFunc var_114
  loc_B00B8A: FLdPr var_114
  loc_B00B8D: LateIdLdVar var_BC DispID_15 0
  loc_B00B94: CStrVarTmp
  loc_B00B95: FStStrNoPop var_A8
  loc_B00B98: ConcatStr
  loc_B00B99: FStStrNoPop var_AC
  loc_B00B9C: LitStr "</span><br>"
  loc_B00B9F: ConcatStr
  loc_B00BA0: CVarStr var_D0
  loc_B00BA3: PopAdLdVar
  loc_B00BA4: FLdPr Me
  loc_B00BA7: MemLdRfVar from_stack_1.global_68
  loc_B00BAA: LdPrVar
  loc_B00BAC: LateMemCall
  loc_B00BB2: FFreeStr var_A8 = ""
  loc_B00BB9: FFree1Ad var_114
  loc_B00BBC: FFreeVar var_BC = ""
  loc_B00BC3: LitStr "     Hasta: <span class=""Normal"">"
  loc_B00BC6: FLdPr Me
  loc_B00BC9: VCallAd Control_ID_HastaMsk
  loc_B00BCC: FStAdFunc var_114
  loc_B00BCF: FLdPr var_114
  loc_B00BD2: LateIdLdVar var_BC DispID_15 0
  loc_B00BD9: CStrVarTmp
  loc_B00BDA: FStStrNoPop var_A8
  loc_B00BDD: ConcatStr
  loc_B00BDE: FStStrNoPop var_AC
  loc_B00BE1: LitStr "</span>"
  loc_B00BE4: ConcatStr
  loc_B00BE5: CVarStr var_D0
  loc_B00BE8: PopAdLdVar
  loc_B00BE9: FLdPr Me
  loc_B00BEC: MemLdRfVar from_stack_1.global_68
  loc_B00BEF: LdPrVar
  loc_B00BF1: LateMemCall
  loc_B00BF7: FFreeStr var_A8 = ""
  loc_B00BFE: FFree1Ad var_114
  loc_B00C01: FFreeVar var_BC = ""
  loc_B00C08: LitVarStr var_94, "    </th>"
  loc_B00C0D: PopAdLdVar
  loc_B00C0E: FLdPr Me
  loc_B00C11: MemLdRfVar from_stack_1.global_68
  loc_B00C14: LdPrVar
  loc_B00C16: LateMemCall
  loc_B00C1C: LitVarStr var_94, "  </tr>"
  loc_B00C21: PopAdLdVar
  loc_B00C22: FLdPr Me
  loc_B00C25: MemLdRfVar from_stack_1.global_68
  loc_B00C28: LdPrVar
  loc_B00C2A: LateMemCall
  loc_B00C30: LitVarStr var_94, "</table>"
  loc_B00C35: PopAdLdVar
  loc_B00C36: FLdPr Me
  loc_B00C39: MemLdRfVar from_stack_1.global_68
  loc_B00C3C: LdPrVar
  loc_B00C3E: LateMemCall
  loc_B00C44: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_B00C49: PopAdLdVar
  loc_B00C4A: FLdPr Me
  loc_B00C4D: MemLdRfVar from_stack_1.global_68
  loc_B00C50: LdPrVar
  loc_B00C52: LateMemCall
  loc_B00C58: LitVarStr var_94, "  <THEAD>"
  loc_B00C5D: PopAdLdVar
  loc_B00C5E: FLdPr Me
  loc_B00C61: MemLdRfVar from_stack_1.global_68
  loc_B00C64: LdPrVar
  loc_B00C66: LateMemCall
  loc_B00C6C: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_B00C71: PopAdLdVar
  loc_B00C72: FLdPr Me
  loc_B00C75: MemLdRfVar from_stack_1.global_68
  loc_B00C78: LdPrVar
  loc_B00C7A: LateMemCall
  loc_B00C80: LitVarStr var_94, "    <th>Proveedor</th>"
  loc_B00C85: PopAdLdVar
  loc_B00C86: FLdPr Me
  loc_B00C89: MemLdRfVar from_stack_1.global_68
  loc_B00C8C: LdPrVar
  loc_B00C8E: LateMemCall
  loc_B00C94: LitVarStr var_94, "    <th>Expediente<br>Original</th>"
  loc_B00C99: PopAdLdVar
  loc_B00C9A: FLdPr Me
  loc_B00C9D: MemLdRfVar from_stack_1.global_68
  loc_B00CA0: LdPrVar
  loc_B00CA2: LateMemCall
  loc_B00CA8: LitVarStr var_94, "    <th>Total Definitiva</th>"
  loc_B00CAD: PopAdLdVar
  loc_B00CAE: FLdPr Me
  loc_B00CB1: MemLdRfVar from_stack_1.global_68
  loc_B00CB4: LdPrVar
  loc_B00CB6: LateMemCall
  loc_B00CBC: LitVarStr var_94, "    <th>Total Devengado</th>"
  loc_B00CC1: PopAdLdVar
  loc_B00CC2: FLdPr Me
  loc_B00CC5: MemLdRfVar from_stack_1.global_68
  loc_B00CC8: LdPrVar
  loc_B00CCA: LateMemCall
  loc_B00CD0: LitVarStr var_94, "    <th>Reapropiación por Proveedor</th>"
  loc_B00CD5: PopAdLdVar
  loc_B00CD6: FLdPr Me
  loc_B00CD9: MemLdRfVar from_stack_1.global_68
  loc_B00CDC: LdPrVar
  loc_B00CDE: LateMemCall
  loc_B00CE4: LitVarStr var_94, "    <th>Transferido</th>"
  loc_B00CE9: PopAdLdVar
  loc_B00CEA: FLdPr Me
  loc_B00CED: MemLdRfVar from_stack_1.global_68
  loc_B00CF0: LdPrVar
  loc_B00CF2: LateMemCall
  loc_B00CF8: LitVarStr var_94, "    <th>Total Reapropiación <br>por Proveedor</th>"
  loc_B00CFD: PopAdLdVar
  loc_B00CFE: FLdPr Me
  loc_B00D01: MemLdRfVar from_stack_1.global_68
  loc_B00D04: LdPrVar
  loc_B00D06: LateMemCall
  loc_B00D0C: LitVarStr var_94, "  </tr>"
  loc_B00D11: PopAdLdVar
  loc_B00D12: FLdPr Me
  loc_B00D15: MemLdRfVar from_stack_1.global_68
  loc_B00D18: LdPrVar
  loc_B00D1A: LateMemCall
  loc_B00D20: LitVarStr var_94, "  </THEAD>"
  loc_B00D25: PopAdLdVar
  loc_B00D26: FLdPr Me
  loc_B00D29: MemLdRfVar from_stack_1.global_68
  loc_B00D2C: LdPrVar
  loc_B00D2E: LateMemCall
  loc_B00D34: ExitProcHresult
End Function

Private Function Proc_220_26_982AF0() '982AF0
  'Data Table: 4942D0
  loc_982AB0: LitVarStr var_94, "</table>"
  loc_982AB5: PopAdLdVar
  loc_982AB6: FLdPr Me
  loc_982AB9: MemLdRfVar from_stack_1.global_68
  loc_982ABC: LdPrVar
  loc_982ABE: LateMemCall
  loc_982AC4: LitVarStr var_94, "</body>"
  loc_982AC9: PopAdLdVar
  loc_982ACA: FLdPr Me
  loc_982ACD: MemLdRfVar from_stack_1.global_68
  loc_982AD0: LdPrVar
  loc_982AD2: LateMemCall
  loc_982AD8: LitVarStr var_94, "</html>"
  loc_982ADD: PopAdLdVar
  loc_982ADE: FLdPr Me
  loc_982AE1: MemLdRfVar from_stack_1.global_68
  loc_982AE4: LdPrVar
  loc_982AE6: LateMemCall
  loc_982AEC: ExitProcHresult
End Function
