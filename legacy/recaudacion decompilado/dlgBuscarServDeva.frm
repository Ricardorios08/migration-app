VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Begin VB.Form dlgBuscarServDeva
  Caption = "Buscar Servicios por ..."
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "dlgBuscarServDeva.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 9420
  ClientHeight = 5424
  StartUpPosition = 2 'CenterScreen
  Begin VB.TextBox Campo2Txt
    ForeColor = &HFF0000&
    Left = 1680
    Top = 720
    Width = 7215
    Height = 360
    TabIndex = 1
    Tag = "0"
    MaxLength = 40
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.TextBox Campo1Txt
    ForeColor = &HFF0000&
    Left = 1680
    Top = 240
    Width = 1575
    Height = 360
    TabIndex = 0
    Tag = "0"
    MaxLength = 6
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.CommandButton OKButton
    Caption = "Aceptar"
    Left = 120
    Top = 4680
    Width = 1335
    Height = 495
    TabIndex = 3
    Tag = "2"
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin MSDataGridLib.DataGrid dgdABMS
    Left = 120
    Top = 1320
    Width = 8775
    Height = 3135
    Tag = "1"
    TabIndex = 2
    OleObjectBlob = "dlgBuscarServDeva.frx":08CA
  End
  Begin VB.Label Label3
    Caption = "Detalle:"
    Left = 840
    Top = 720
    Width = 810
    Height = 300
    TabIndex = 5
    AutoSize = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label2
    Caption = "Codigo:"
    Left = 840
    Top = 240
    Width = 810
    Height = 300
    TabIndex = 4
    AutoSize = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "dlgBuscarServDeva"

Public BuscarCLS As New Class
Public byCtctSede As Byte
Public byCodiOfic As Byte


Private Sub dgdABMS_DblClick() '9D1380
  'Data Table: 41A79C
  loc_9D1368: ILdRf Me
  loc_9D136B: FStAdNoPop
  loc_9D136F: ImpAdLdRf MemVar_D9C5D8
  loc_9D1372: NewIfNullPr Global
  loc_9D1375: Global.Unload from_stack_1
  loc_9D137A: FFree1Ad var_88
  loc_9D137D: ExitProcHresult
End Sub

Private Sub dgdABMS_KeyDown(KeyCode As Integer, Shift As Integer) '9ED460
  'Data Table: 41A79C
  loc_9ED43C: ILdI2 KeyCode
  loc_9ED43F: CI4UI1
  loc_9ED440: LitI4 &HD
  loc_9ED445: EqI4
  loc_9ED446: BranchF loc_9ED45E
  loc_9ED449: ILdRf Me
  loc_9ED44C: FStAdNoPop
  loc_9ED450: ImpAdLdRf MemVar_D9C5D8
  loc_9ED453: NewIfNullPr Global
  loc_9ED456: Global.Unload from_stack_1
  loc_9ED45B: FFree1Ad var_88
  loc_9ED45E: ExitProcHresult
End Sub

Private Sub Campo1Txt_Change() 'B099D4
  'Data Table: 41A79C
  loc_B097D8: LitStr vbNullString
  loc_B097DB: FLdPr Me
  loc_B097DE: VCallAd Control_ID_Campo2Txt
  loc_B097E1: FStAdFunc var_88
  loc_B097E4: FLdPr var_88
  loc_B097E7: Me.Text = from_stack_1
  loc_B097EC: FFree1Ad var_88
  loc_B097EF: FLdPr Me
  loc_B097F2: MemLdUI1 byCodiOfic
  loc_B097F6: CI2UI1
  loc_B097F8: LitI2_Byte 1
  loc_B097FA: EqI2
  loc_B097FB: BranchF loc_B09881
  loc_B097FE: LitStr "SELECT CodiSeca as CodiSede, DetaSeca as DetaSede, ImpoSeca as ImpoSede, concepto.PeriInfo, servcata.CodiConc, 1 as VariSede, concepto.TiafConc FROM servcata "
  loc_B09801: LitStr " INNER JOIN concepto ON concepto.PeriInfo = "
  loc_B09804: ConcatStr
  loc_B09805: FStStrNoPop var_8C
  loc_B09808: ImpAdLdI2 MemVar_D93034
  loc_B0980B: CStrUI1
  loc_B0980D: FStStrNoPop var_90
  loc_B09810: ConcatStr
  loc_B09811: FStStrNoPop var_94
  loc_B09814: LitStr " AND concepto.CodiConc = servcata.CodiConc"
  loc_B09817: ConcatStr
  loc_B09818: FStStrNoPop var_98
  loc_B0981B: LitStr " WHERE servcata.PeriOrde = "
  loc_B0981E: ConcatStr
  loc_B0981F: FStStrNoPop var_9C
  loc_B09822: ImpAdLdI2 MemVar_D93036
  loc_B09825: CStrUI1
  loc_B09827: FStStrNoPop var_A0
  loc_B0982A: ConcatStr
  loc_B0982B: FStStrNoPop var_A4
  loc_B0982E: LitStr " AND CodiSeca like '"
  loc_B09831: ConcatStr
  loc_B09832: FStStrNoPop var_AC
  loc_B09835: FLdRfVar var_A8
  loc_B09838: FLdPr Me
  loc_B0983B: VCallAd Control_ID_Campo1Txt
  loc_B0983E: FStAdFunc var_88
  loc_B09841: FLdPr var_88
  loc_B09844:  = Me.Text
  loc_B09849: ILdRf var_A8
  loc_B0984C: ConcatStr
  loc_B0984D: FStStrNoPop var_B0
  loc_B09850: LitStr Chr(37) & "'  ORDER BY CodiSeca"
  loc_B09853: ConcatStr
  loc_B09854: FStStrNoPop var_B4
  loc_B09857: FLdPr Me
  loc_B0985A: MemLdRfVar from_stack_1.BuscarCLS
  loc_B0985D: NewIfNullPr clsbase
  loc_B09860: Call clsbase.RedefineRS(from_stack_1v)
  loc_B09865: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_AC = "": var_A8 = "": var_B0 = ""
  loc_B0987E: FFree1Ad var_88
  loc_B09881: FLdPr Me
  loc_B09884: MemLdUI1 byCodiOfic
  loc_B09888: CI2UI1
  loc_B0988A: LitI2_Byte 3
  loc_B0988C: EqI2
  loc_B0988D: BranchF loc_B09929
  loc_B09890: LitStr "SELECT CodiSede, DetaSede, ImpoSede * UntrPage as ImpoSede, servdeva.PeriInfo, servdeva.CodiConc, VariSede, concepto.TiafConc FROM servdeva "
  loc_B09893: LitStr " LEFT JOIN paragene ON paragene.CodiPage = 1"
  loc_B09896: ConcatStr
  loc_B09897: FStStrNoPop var_8C
  loc_B0989A: LitStr " INNER JOIN concepto ON concepto.PeriInfo = servdeva.PeriInfo"
  loc_B0989D: ConcatStr
  loc_B0989E: FStStrNoPop var_90
  loc_B098A1: LitStr " AND concepto.CodiConc = servdeva.CodiConc"
  loc_B098A4: ConcatStr
  loc_B098A5: FStStrNoPop var_94
  loc_B098A8: LitStr " WHERE servdeva.PeriOrde = "
  loc_B098AB: ConcatStr
  loc_B098AC: FStStrNoPop var_98
  loc_B098AF: ImpAdLdI2 MemVar_D93036
  loc_B098B2: CStrUI1
  loc_B098B4: FStStrNoPop var_9C
  loc_B098B7: ConcatStr
  loc_B098B8: FStStrNoPop var_A0
  loc_B098BB: LitStr " AND CtctSede = '"
  loc_B098BE: ConcatStr
  loc_B098BF: FStStrNoPop var_A4
  loc_B098C2: FLdPr Me
  loc_B098C5: MemLdUI1 byCtctSede
  loc_B098C9: CStrI2
  loc_B098CB: FStStrNoPop var_A8
  loc_B098CE: ConcatStr
  loc_B098CF: FStStrNoPop var_AC
  loc_B098D2: LitStr "' AND CodiSede like '"
  loc_B098D5: ConcatStr
  loc_B098D6: FStStrNoPop var_B4
  loc_B098D9: FLdRfVar var_B0
  loc_B098DC: FLdPr Me
  loc_B098DF: VCallAd Control_ID_Campo1Txt
  loc_B098E2: FStAdFunc var_88
  loc_B098E5: FLdPr var_88
  loc_B098E8:  = Me.Text
  loc_B098ED: ILdRf var_B0
  loc_B098F0: ConcatStr
  loc_B098F1: FStStrNoPop var_B8
  loc_B098F4: LitStr Chr(37) & "' AND servdeva.BajaFeho IS NULL ORDER BY CodiSede"
  loc_B098F7: ConcatStr
  loc_B098F8: FStStrNoPop var_BC
  loc_B098FB: FLdPr Me
  loc_B098FE: MemLdRfVar from_stack_1.BuscarCLS
  loc_B09901: NewIfNullPr clsbase
  loc_B09904: Call clsbase.RedefineRS(from_stack_1v)
  loc_B09909: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B4 = "": var_B0 = "": var_B8 = ""
  loc_B09926: FFree1Ad var_88
  loc_B09929: FLdPr Me
  loc_B0992C: MemLdUI1 byCodiOfic
  loc_B09930: CI2UI1
  loc_B09932: LitI2_Byte 5
  loc_B09934: EqI2
  loc_B09935: BranchF loc_B099D1
  loc_B09938: LitStr "SELECT CodiSede, DetaSede, ImpoSede * UntrPage as ImpoSede, servdeva.PeriInfo, servdeva.CodiConc, VariSede, concepto.TiafConc FROM servdeva "
  loc_B0993B: LitStr " LEFT JOIN paragene ON paragene.CodiPage = 1"
  loc_B0993E: ConcatStr
  loc_B0993F: FStStrNoPop var_8C
  loc_B09942: LitStr " INNER JOIN concepto ON concepto.PeriInfo = servdeva.PeriInfo"
  loc_B09945: ConcatStr
  loc_B09946: FStStrNoPop var_90
  loc_B09949: LitStr " AND concepto.CodiConc = servdeva.CodiConc"
  loc_B0994C: ConcatStr
  loc_B0994D: FStStrNoPop var_94
  loc_B09950: LitStr " WHERE servdeva.PeriOrde = "
  loc_B09953: ConcatStr
  loc_B09954: FStStrNoPop var_98
  loc_B09957: ImpAdLdI2 MemVar_D93036
  loc_B0995A: CStrUI1
  loc_B0995C: FStStrNoPop var_9C
  loc_B0995F: ConcatStr
  loc_B09960: FStStrNoPop var_A0
  loc_B09963: LitStr " AND CtctSede = '"
  loc_B09966: ConcatStr
  loc_B09967: FStStrNoPop var_A4
  loc_B0996A: FLdPr Me
  loc_B0996D: MemLdUI1 byCtctSede
  loc_B09971: CStrI2
  loc_B09973: FStStrNoPop var_A8
  loc_B09976: ConcatStr
  loc_B09977: FStStrNoPop var_AC
  loc_B0997A: LitStr "' AND CodiSede like '"
  loc_B0997D: ConcatStr
  loc_B0997E: FStStrNoPop var_B4
  loc_B09981: FLdRfVar var_B0
  loc_B09984: FLdPr Me
  loc_B09987: VCallAd Control_ID_Campo1Txt
  loc_B0998A: FStAdFunc var_88
  loc_B0998D: FLdPr var_88
  loc_B09990:  = Me.Text
  loc_B09995: ILdRf var_B0
  loc_B09998: ConcatStr
  loc_B09999: FStStrNoPop var_B8
  loc_B0999C: LitStr Chr(37) & "' AND TranSede = '1' ORDER BY CodiSede"
  loc_B0999F: ConcatStr
  loc_B099A0: FStStrNoPop var_BC
  loc_B099A3: FLdPr Me
  loc_B099A6: MemLdRfVar from_stack_1.BuscarCLS
  loc_B099A9: NewIfNullPr clsbase
  loc_B099AC: Call clsbase.RedefineRS(from_stack_1v)
  loc_B099B1: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B4 = "": var_B0 = "": var_B8 = ""
  loc_B099CE: FFree1Ad var_88
  loc_B099D1: ExitProcHresult
End Sub

Private Sub Campo1Txt_KeyPress(KeyAscii As Integer) '9D1464
  'Data Table: 41A79C
  loc_9D144C: LitStr "0123456789"
  loc_9D144F: FStStrCopy var_88
  loc_9D1452: FLdRfVar var_88
  loc_9D1455: ILdRf KeyAscii
  loc_9D1458: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9D145D: IStI2 KeyAscii
  loc_9D1460: FFree1Str var_88
  loc_9D1463: ExitProcHresult
End Sub

Private Sub Form_Load() 'B05144
  'Data Table: 41A79C
  loc_B04F64: FLdPr Me
  loc_B04F67: MemLdUI1 byCodiOfic
  loc_B04F6B: CI2UI1
  loc_B04F6D: LitI2_Byte 1
  loc_B04F6F: EqI2
  loc_B04F70: BranchF loc_B04FCD
  loc_B04F73: FLdRfVar var_94
  loc_B04F76: LitVarStr var_A4, vbNullString
  loc_B04F7B: HardType
  loc_B04F7C: EqVarBool
  loc_B04F7E: BranchF loc_B04FCD
  loc_B04F81: LitStr "SELECT CodiSeca as CodiSede, DetaSeca as DetaSede, ImpoSeca as ImpoSede, concepto.PeriInfo, servcata.CodiConc, 1 as VariSede, concepto.TiafConc FROM servcata "
  loc_B04F84: LitStr " INNER JOIN concepto ON concepto.PeriInfo = "
  loc_B04F87: ConcatStr
  loc_B04F88: FStStrNoPop var_B8
  loc_B04F8B: ImpAdLdI2 MemVar_D93034
  loc_B04F8E: CStrUI1
  loc_B04F90: FStStrNoPop var_BC
  loc_B04F93: ConcatStr
  loc_B04F94: FStStrNoPop var_C0
  loc_B04F97: LitStr " AND concepto.CodiConc = servcata.CodiConc"
  loc_B04F9A: ConcatStr
  loc_B04F9B: FStStrNoPop var_C4
  loc_B04F9E: LitStr " WHERE servcata.PeriOrde = "
  loc_B04FA1: ConcatStr
  loc_B04FA2: FStStrNoPop var_C8
  loc_B04FA5: ImpAdLdI2 MemVar_D93036
  loc_B04FA8: CStrUI1
  loc_B04FAA: FStStrNoPop var_CC
  loc_B04FAD: ConcatStr
  loc_B04FAE: FStStrNoPop var_D0
  loc_B04FB1: LitStr " ORDER BY DetaSeca"
  loc_B04FB4: ConcatStr
  loc_B04FB5: CVarStr var_B4
  loc_B04FB8: FStVar var_94
  loc_B04FBC: FFreeStr var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = ""
  loc_B04FCD: FLdPr Me
  loc_B04FD0: MemLdUI1 byCodiOfic
  loc_B04FD4: CI2UI1
  loc_B04FD6: LitI2_Byte 3
  loc_B04FD8: EqI2
  loc_B04FD9: BranchF loc_B0504C
  loc_B04FDC: FLdRfVar var_94
  loc_B04FDF: LitVarStr var_A4, vbNullString
  loc_B04FE4: HardType
  loc_B04FE5: EqVarBool
  loc_B04FE7: BranchF loc_B0504C
  loc_B04FEA: LitStr "SELECT CodiSede, DetaSede, ImpoSede * UntrPage as ImpoSede, servdeva.PeriInfo, servdeva.CodiConc, VariSede, concepto.TiafConc FROM servdeva "
  loc_B04FED: LitStr " LEFT JOIN paragene ON paragene.CodiPage = 1"
  loc_B04FF0: ConcatStr
  loc_B04FF1: FStStrNoPop var_B8
  loc_B04FF4: LitStr " INNER JOIN concepto ON concepto.PeriInfo = servdeva.PeriInfo"
  loc_B04FF7: ConcatStr
  loc_B04FF8: FStStrNoPop var_BC
  loc_B04FFB: LitStr " AND concepto.CodiConc = servdeva.CodiConc"
  loc_B04FFE: ConcatStr
  loc_B04FFF: FStStrNoPop var_C0
  loc_B05002: LitStr " WHERE servdeva.PeriOrde = "
  loc_B05005: ConcatStr
  loc_B05006: FStStrNoPop var_C4
  loc_B05009: ImpAdLdI2 MemVar_D93036
  loc_B0500C: CStrUI1
  loc_B0500E: FStStrNoPop var_C8
  loc_B05011: ConcatStr
  loc_B05012: FStStrNoPop var_CC
  loc_B05015: LitStr " AND CtctSede = '"
  loc_B05018: ConcatStr
  loc_B05019: FStStrNoPop var_D0
  loc_B0501C: FLdPr Me
  loc_B0501F: MemLdUI1 byCtctSede
  loc_B05023: CStrI2
  loc_B05025: FStStrNoPop var_D4
  loc_B05028: ConcatStr
  loc_B05029: FStStrNoPop var_D8
  loc_B0502C: LitStr "' AND servdeva.BajaFeho IS NULL ORDER BY DetaSede"
  loc_B0502F: ConcatStr
  loc_B05030: CVarStr var_B4
  loc_B05033: FStVar var_94
  loc_B05037: FFreeStr var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = ""
  loc_B0504C: FLdPr Me
  loc_B0504F: MemLdUI1 byCodiOfic
  loc_B05053: CI2UI1
  loc_B05055: LitI2_Byte 5
  loc_B05057: EqI2
  loc_B05058: BranchF loc_B050CB
  loc_B0505B: FLdRfVar var_94
  loc_B0505E: LitVarStr var_A4, vbNullString
  loc_B05063: HardType
  loc_B05064: EqVarBool
  loc_B05066: BranchF loc_B050CB
  loc_B05069: LitStr "SELECT CodiSede, DetaSede, ImpoSede * UntrPage as ImpoSede, servdeva.PeriInfo, servdeva.CodiConc, VariSede, concepto.TiafConc FROM servdeva "
  loc_B0506C: LitStr " LEFT JOIN paragene ON paragene.CodiPage = 1"
  loc_B0506F: ConcatStr
  loc_B05070: FStStrNoPop var_B8
  loc_B05073: LitStr " INNER JOIN concepto ON concepto.PeriInfo = servdeva.PeriInfo"
  loc_B05076: ConcatStr
  loc_B05077: FStStrNoPop var_BC
  loc_B0507A: LitStr " AND concepto.CodiConc = servdeva.CodiConc"
  loc_B0507D: ConcatStr
  loc_B0507E: FStStrNoPop var_C0
  loc_B05081: LitStr " WHERE servdeva.PeriOrde = "
  loc_B05084: ConcatStr
  loc_B05085: FStStrNoPop var_C4
  loc_B05088: ImpAdLdI2 MemVar_D93036
  loc_B0508B: CStrUI1
  loc_B0508D: FStStrNoPop var_C8
  loc_B05090: ConcatStr
  loc_B05091: FStStrNoPop var_CC
  loc_B05094: LitStr " AND CtctSede = '"
  loc_B05097: ConcatStr
  loc_B05098: FStStrNoPop var_D0
  loc_B0509B: FLdPr Me
  loc_B0509E: MemLdUI1 byCtctSede
  loc_B050A2: CStrI2
  loc_B050A4: FStStrNoPop var_D4
  loc_B050A7: ConcatStr
  loc_B050A8: FStStrNoPop var_D8
  loc_B050AB: LitStr "' AND TranSede = '1' ORDER BY DetaSede"
  loc_B050AE: ConcatStr
  loc_B050AF: CVarStr var_B4
  loc_B050B2: FStVar var_94
  loc_B050B6: FFreeStr var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = ""
  loc_B050CB: FLdRfVar var_94
  loc_B050CE: CStrVarVal var_B8
  loc_B050D2: FLdPr Me
  loc_B050D5: MemLdRfVar from_stack_1.BuscarCLS
  loc_B050D8: NewIfNullPr clsbase
  loc_B050DB: Call clsbase.RedefineRS(from_stack_1v)
  loc_B050E0: FFree1Str var_B8
  loc_B050E3: LitI4 0
  loc_B050E8: LitI4 1
  loc_B050ED: FLdRfVar var_DC
  loc_B050F0: Redim
  loc_B050FA: FLdPr Me
  loc_B050FD: MemLdRfVar from_stack_1.BuscarCLS
  loc_B05100: NewIfNullAd
  loc_B05103: FStAd var_E0 
  loc_B05107: FLdRfVar var_E0
  loc_B0510A: CVarRef
  loc_B0510F: ParmAry1St
  loc_B05115: FLdPr Me
  loc_B05118: VCallAd Control_ID_dgdABMS
  loc_B0511B: CVarAd
  loc_B0511F: ParmAry1St
  loc_B05125: FLdRfVar var_DC
  loc_B05128: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_B0512D: ILdRf var_E0
  loc_B05130: CastAd
  loc_B05133: FLdPr Me
  loc_B05136: MemStAdFunc
  loc_B0513A: FLdRfVar var_DC
  loc_B0513D: Erase
  loc_B0513E: FFree1Ad var_E0
  loc_B05141: ExitProcHresult
  loc_B05142: ExitProcR4
End Sub

Private Sub Form_Activate() '9D1120
  'Data Table: 41A79C
  loc_9D1108: FLdPr Me
  loc_9D110B: VCallAd Control_ID_Campo2Txt
  loc_9D110E: FStAdFunc var_88
  loc_9D1111: FLdPr var_88
  loc_9D1114: Me.SetFocus
  loc_9D1119: FFree1Ad var_88
  loc_9D111C: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) 'A11578
  'Data Table: 41A79C
  loc_A1153C: ILdI2 KeyAscii
  loc_A1153F: LitI2_Byte &HD
  loc_A11541: EqI2
  loc_A11542: BranchF loc_A11553
  loc_A11545: LitVar_TRUE var_A4
  loc_A11548: LitStr "{Tab}"
  loc_A1154B: ImpAdCallFPR4 SendKeys , 
  loc_A11550: FFree1Var var_A4 = ""
  loc_A11553: ILdI2 KeyAscii
  loc_A11556: LitI2_Byte &H1B
  loc_A11558: EqI2
  loc_A11559: BranchF loc_A11576
  loc_A1155C: ILdRf Me
  loc_A1155F: FStAdNoPop
  loc_A11563: ImpAdLdRf MemVar_D9C5D8
  loc_A11566: NewIfNullPr Global
  loc_A11569: Global.Unload from_stack_1
  loc_A1156E: FFree1Ad var_A8
  loc_A11571: LitI2_Byte 0
  loc_A11573: IStI2 KeyAscii
  loc_A11576: ExitProcHresult
End Sub

Private Sub OKButton_Click() '9D0F58
  'Data Table: 41A79C
  loc_9D0F40: ILdRf Me
  loc_9D0F43: FStAdNoPop
  loc_9D0F47: ImpAdLdRf MemVar_D9C5D8
  loc_9D0F4A: NewIfNullPr Global
  loc_9D0F4D: Global.Unload from_stack_1
  loc_9D0F52: FFree1Ad var_88
  loc_9D0F55: ExitProcHresult
End Sub

Private Sub Campo2Txt_Change() 'B09770
  'Data Table: 41A79C
  loc_B09574: LitStr vbNullString
  loc_B09577: FLdPr Me
  loc_B0957A: VCallAd Control_ID_Campo1Txt
  loc_B0957D: FStAdFunc var_88
  loc_B09580: FLdPr var_88
  loc_B09583: Me.Text = from_stack_1
  loc_B09588: FFree1Ad var_88
  loc_B0958B: FLdPr Me
  loc_B0958E: MemLdUI1 byCodiOfic
  loc_B09592: CI2UI1
  loc_B09594: LitI2_Byte 1
  loc_B09596: EqI2
  loc_B09597: BranchF loc_B0961D
  loc_B0959A: LitStr "SELECT CodiSeca as CodiSede, DetaSeca as DetaSede, ImpoSeca as ImpoSede, concepto.PeriInfo, servcata.CodiConc, 1 as VariSede, concepto.TiafConc FROM servcata "
  loc_B0959D: LitStr " INNER JOIN concepto ON concepto.PeriInfo = "
  loc_B095A0: ConcatStr
  loc_B095A1: FStStrNoPop var_8C
  loc_B095A4: ImpAdLdI2 MemVar_D93034
  loc_B095A7: CStrUI1
  loc_B095A9: FStStrNoPop var_90
  loc_B095AC: ConcatStr
  loc_B095AD: FStStrNoPop var_94
  loc_B095B0: LitStr " AND concepto.CodiConc = servcata.CodiConc"
  loc_B095B3: ConcatStr
  loc_B095B4: FStStrNoPop var_98
  loc_B095B7: LitStr " WHERE servcata.PeriOrde = "
  loc_B095BA: ConcatStr
  loc_B095BB: FStStrNoPop var_9C
  loc_B095BE: ImpAdLdI2 MemVar_D93036
  loc_B095C1: CStrUI1
  loc_B095C3: FStStrNoPop var_A0
  loc_B095C6: ConcatStr
  loc_B095C7: FStStrNoPop var_A4
  loc_B095CA: LitStr " AND DetaSeca like '" & Chr(37)
  loc_B095CD: ConcatStr
  loc_B095CE: FStStrNoPop var_AC
  loc_B095D1: FLdRfVar var_A8
  loc_B095D4: FLdPr Me
  loc_B095D7: VCallAd Control_ID_Campo2Txt
  loc_B095DA: FStAdFunc var_88
  loc_B095DD: FLdPr var_88
  loc_B095E0:  = Me.Text
  loc_B095E5: ILdRf var_A8
  loc_B095E8: ConcatStr
  loc_B095E9: FStStrNoPop var_B0
  loc_B095EC: LitStr Chr(37) & "'  ORDER BY DetaSeca"
  loc_B095EF: ConcatStr
  loc_B095F0: FStStrNoPop var_B4
  loc_B095F3: FLdPr Me
  loc_B095F6: MemLdRfVar from_stack_1.BuscarCLS
  loc_B095F9: NewIfNullPr clsbase
  loc_B095FC: Call clsbase.RedefineRS(from_stack_1v)
  loc_B09601: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_AC = "": var_A8 = "": var_B0 = ""
  loc_B0961A: FFree1Ad var_88
  loc_B0961D: FLdPr Me
  loc_B09620: MemLdUI1 byCodiOfic
  loc_B09624: CI2UI1
  loc_B09626: LitI2_Byte 3
  loc_B09628: EqI2
  loc_B09629: BranchF loc_B096C5
  loc_B0962C: LitStr "SELECT CodiSede, DetaSede, ImpoSede * UntrPage as ImpoSede, servdeva.PeriInfo, servdeva.CodiConc, VariSede, concepto.TiafConc FROM servdeva "
  loc_B0962F: LitStr " LEFT JOIN paragene ON paragene.CodiPage = 1"
  loc_B09632: ConcatStr
  loc_B09633: FStStrNoPop var_8C
  loc_B09636: LitStr " INNER JOIN concepto ON concepto.PeriInfo = servdeva.PeriInfo"
  loc_B09639: ConcatStr
  loc_B0963A: FStStrNoPop var_90
  loc_B0963D: LitStr " AND concepto.CodiConc = servdeva.CodiConc"
  loc_B09640: ConcatStr
  loc_B09641: FStStrNoPop var_94
  loc_B09644: LitStr " WHERE servdeva.PeriOrde = "
  loc_B09647: ConcatStr
  loc_B09648: FStStrNoPop var_98
  loc_B0964B: ImpAdLdI2 MemVar_D93036
  loc_B0964E: CStrUI1
  loc_B09650: FStStrNoPop var_9C
  loc_B09653: ConcatStr
  loc_B09654: FStStrNoPop var_A0
  loc_B09657: LitStr " AND CtctSede = '"
  loc_B0965A: ConcatStr
  loc_B0965B: FStStrNoPop var_A4
  loc_B0965E: FLdPr Me
  loc_B09661: MemLdUI1 byCtctSede
  loc_B09665: CStrI2
  loc_B09667: FStStrNoPop var_A8
  loc_B0966A: ConcatStr
  loc_B0966B: FStStrNoPop var_AC
  loc_B0966E: LitStr "' AND DetaSede like '" & Chr(37)
  loc_B09671: ConcatStr
  loc_B09672: FStStrNoPop var_B4
  loc_B09675: FLdRfVar var_B0
  loc_B09678: FLdPr Me
  loc_B0967B: VCallAd Control_ID_Campo2Txt
  loc_B0967E: FStAdFunc var_88
  loc_B09681: FLdPr var_88
  loc_B09684:  = Me.Text
  loc_B09689: ILdRf var_B0
  loc_B0968C: ConcatStr
  loc_B0968D: FStStrNoPop var_B8
  loc_B09690: LitStr Chr(37) & "' AND servdeva.BajaFeho IS NULL ORDER BY DetaSede"
  loc_B09693: ConcatStr
  loc_B09694: FStStrNoPop var_BC
  loc_B09697: FLdPr Me
  loc_B0969A: MemLdRfVar from_stack_1.BuscarCLS
  loc_B0969D: NewIfNullPr clsbase
  loc_B096A0: Call clsbase.RedefineRS(from_stack_1v)
  loc_B096A5: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B4 = "": var_B0 = "": var_B8 = ""
  loc_B096C2: FFree1Ad var_88
  loc_B096C5: FLdPr Me
  loc_B096C8: MemLdUI1 byCodiOfic
  loc_B096CC: CI2UI1
  loc_B096CE: LitI2_Byte 5
  loc_B096D0: EqI2
  loc_B096D1: BranchF loc_B0976D
  loc_B096D4: LitStr "SELECT CodiSede, DetaSede, ImpoSede * UntrPage as ImpoSede, servdeva.PeriInfo, servdeva.CodiConc, VariSede, concepto.TiafConc FROM servdeva "
  loc_B096D7: LitStr " LEFT JOIN paragene ON paragene.CodiPage = 1"
  loc_B096DA: ConcatStr
  loc_B096DB: FStStrNoPop var_8C
  loc_B096DE: LitStr " INNER JOIN concepto ON concepto.PeriInfo = servdeva.PeriInfo"
  loc_B096E1: ConcatStr
  loc_B096E2: FStStrNoPop var_90
  loc_B096E5: LitStr " AND concepto.CodiConc = servdeva.CodiConc"
  loc_B096E8: ConcatStr
  loc_B096E9: FStStrNoPop var_94
  loc_B096EC: LitStr " WHERE servdeva.PeriOrde = "
  loc_B096EF: ConcatStr
  loc_B096F0: FStStrNoPop var_98
  loc_B096F3: ImpAdLdI2 MemVar_D93036
  loc_B096F6: CStrUI1
  loc_B096F8: FStStrNoPop var_9C
  loc_B096FB: ConcatStr
  loc_B096FC: FStStrNoPop var_A0
  loc_B096FF: LitStr " AND CtctSede = '"
  loc_B09702: ConcatStr
  loc_B09703: FStStrNoPop var_A4
  loc_B09706: FLdPr Me
  loc_B09709: MemLdUI1 byCtctSede
  loc_B0970D: CStrI2
  loc_B0970F: FStStrNoPop var_A8
  loc_B09712: ConcatStr
  loc_B09713: FStStrNoPop var_AC
  loc_B09716: LitStr "' AND DetaSede like '" & Chr(37)
  loc_B09719: ConcatStr
  loc_B0971A: FStStrNoPop var_B4
  loc_B0971D: FLdRfVar var_B0
  loc_B09720: FLdPr Me
  loc_B09723: VCallAd Control_ID_Campo2Txt
  loc_B09726: FStAdFunc var_88
  loc_B09729: FLdPr var_88
  loc_B0972C:  = Me.Text
  loc_B09731: ILdRf var_B0
  loc_B09734: ConcatStr
  loc_B09735: FStStrNoPop var_B8
  loc_B09738: LitStr Chr(37) & "' AND TranSede = '1' ORDER BY DetaSede"
  loc_B0973B: ConcatStr
  loc_B0973C: FStStrNoPop var_BC
  loc_B0973F: FLdPr Me
  loc_B09742: MemLdRfVar from_stack_1.BuscarCLS
  loc_B09745: NewIfNullPr clsbase
  loc_B09748: Call clsbase.RedefineRS(from_stack_1v)
  loc_B0974D: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B4 = "": var_B0 = "": var_B8 = ""
  loc_B0976A: FFree1Ad var_88
  loc_B0976D: ExitProcHresult
End Sub

Public Function global_4302748Get() '41AD08
  global_4302748Get = global_4302748
End Function

Public Sub global_4302748Put(Value) '41AD22
  global_4302748 = Value
End Sub

Public Sub global_4302748Set(Value) '41AD3C
  global_4302748 = Value
End Sub

Public Function byCtctSedeGet() '41AD56
  byCtctSedeGet = byCtctSede
End Function

Public Sub byCtctSedePut(Value) '41AD65
  byCtctSede = Value
End Sub

Public Function byCodiOficGet() '41AD74
  byCodiOficGet = byCodiOfic
End Function

Public Sub byCodiOficPut(Value) '41AD83
  byCodiOfic = Value
End Sub
