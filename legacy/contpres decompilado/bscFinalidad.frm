VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Begin VB.Form bscFinalidad
  Caption = "Buscar Finalidad por..."
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "bscFinalidad.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 10965
  ClientHeight = 5970
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 12
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  StartUpPosition = 2 'CenterScreen
  Begin VB.Frame FiltroFra
    Left = 120
    Top = 120
    Width = 10695
    Height = 855
    TabIndex = 0
    Begin VB.ComboBox FiltroCbo
      Style = 2
      Left = 120
      Top = 360
      Width = 4575
      Height = 420
      TabIndex = 1
    End
    Begin MSMask.MaskEdBox FiltroMsk
      Left = 4800
      Top = 360
      Width = 5775
      Height = 420
      TabIndex = 2
      OleObjectBlob = "bscFinalidad.frx":08CA
    End
  End
  Begin VB.CommandButton OKButton
    Caption = "&Aceptar"
    Left = 4320
    Top = 5160
    Width = 1335
    Height = 495
    TabIndex = 4
    Tag = "2"
  End
  Begin MSDataGridLib.DataGrid dgdABMS
    Left = 120
    Top = 1200
    Width = 10695
    Height = 3735
    Tag = "1"
    TabIndex = 3
    OleObjectBlob = "bscFinalidad.frx":092A
  End
End

Attribute VB_Name = "bscFinalidad"

Public sCodiPart As String
Public sCodiOrga As String
Public iPeriInfo As Integer
Public BuscarCLS As New Class
Public sFiltro As String


Private Sub FiltroCbo_Click() '9DA808
  'Data Table: 41EE38
  loc_9DA700: LitVarStr var_94, vbNullString
  loc_9DA705: PopAdLdVar
  loc_9DA706: FLdPr Me
  loc_9DA709: VCallAd Control_ID_FiltroMsk
  loc_9DA70C: FStAdFunc var_A8
  loc_9DA70F: FLdPr var_A8
  loc_9DA712: LateIdSt
  loc_9DA717: FFree1Ad var_A8
  loc_9DA71A: FLdRfVar var_AA
  loc_9DA71D: FLdPr Me
  loc_9DA720: VCallAd Control_ID_FiltroCbo
  loc_9DA723: FStAdFunc var_A8
  loc_9DA726: FLdPr var_A8
  loc_9DA729:  = Me.ListIndex
  loc_9DA72E: FLdI2 var_AA
  loc_9DA731: FStI2 var_AC
  loc_9DA734: FFree1Ad var_A8
  loc_9DA737: FLdI2 var_AC
  loc_9DA73A: LitI2_Byte 0
  loc_9DA73C: EqI2
  loc_9DA73D: BranchF loc_9DA777
  loc_9DA740: LitVarStr var_94, "##.##.##"
  loc_9DA745: PopAdLdVar
  loc_9DA746: FLdPr Me
  loc_9DA749: VCallAd Control_ID_FiltroMsk
  loc_9DA74C: FStAdFunc var_A8
  loc_9DA74F: FLdPr var_A8
  loc_9DA752: LateIdSt
  loc_9DA757: FFree1Ad var_A8
  loc_9DA75A: LitStr "CodiFifu"
  loc_9DA75D: FStStrCopy var_B0
  loc_9DA760: FLdRfVar var_B0
  loc_9DA763: FLdPr Me
  loc_9DA766: MemLdRfVar from_stack_1.BuscarCLS
  loc_9DA769: NewIfNullPr clsbase
  loc_9DA76C: Call clsbase.Sort(from_stack_1v)
  loc_9DA771: FFree1Str var_B0
  loc_9DA774: Branch loc_9DA805
  loc_9DA777: FLdI2 var_AC
  loc_9DA77A: LitI2_Byte 1
  loc_9DA77C: EqI2
  loc_9DA77D: BranchF loc_9DA7D1
  loc_9DA780: LitVarStr var_94, "&"
  loc_9DA785: PopAdLdVar
  loc_9DA786: FLdPr Me
  loc_9DA789: VCallAd Control_ID_FiltroMsk
  loc_9DA78C: FStAdFunc var_A8
  loc_9DA78F: FLdPr var_A8
  loc_9DA792: LateIdSt
  loc_9DA797: FFree1Ad var_A8
  loc_9DA79A: LitVarStr var_94, vbNullString
  loc_9DA79F: PopAdLdVar
  loc_9DA7A0: FLdPr Me
  loc_9DA7A3: VCallAd Control_ID_FiltroMsk
  loc_9DA7A6: FStAdFunc var_A8
  loc_9DA7A9: FLdPr var_A8
  loc_9DA7AC: LateIdSt
  loc_9DA7B1: FFree1Ad var_A8
  loc_9DA7B4: LitStr "DetaFifu"
  loc_9DA7B7: FStStrCopy var_B0
  loc_9DA7BA: FLdRfVar var_B0
  loc_9DA7BD: FLdPr Me
  loc_9DA7C0: MemLdRfVar from_stack_1.BuscarCLS
  loc_9DA7C3: NewIfNullPr clsbase
  loc_9DA7C6: Call clsbase.Sort(from_stack_1v)
  loc_9DA7CB: FFree1Str var_B0
  loc_9DA7CE: Branch loc_9DA805
  loc_9DA7D1: LitVarStr var_94, "##.##.##"
  loc_9DA7D6: PopAdLdVar
  loc_9DA7D7: FLdPr Me
  loc_9DA7DA: VCallAd Control_ID_FiltroMsk
  loc_9DA7DD: FStAdFunc var_A8
  loc_9DA7E0: FLdPr var_A8
  loc_9DA7E3: LateIdSt
  loc_9DA7E8: FFree1Ad var_A8
  loc_9DA7EB: LitStr "CodiFifu"
  loc_9DA7EE: FStStrCopy var_B0
  loc_9DA7F1: FLdRfVar var_B0
  loc_9DA7F4: FLdPr Me
  loc_9DA7F7: MemLdRfVar from_stack_1.BuscarCLS
  loc_9DA7FA: NewIfNullPr clsbase
  loc_9DA7FD: Call clsbase.Sort(from_stack_1v)
  loc_9DA802: FFree1Str var_B0
  loc_9DA805: ExitProcHresult
End Sub

Private Sub FiltroMsk_UnknownEvent_0 '94FD58
  'Data Table: 41EE38
  loc_94FD44: FLdPr Me
  loc_94FD47: VCallAd Control_ID_FiltroMsk
  loc_94FD4A: CVarAd
  loc_94FD4E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94FD53: FFree1Var var_94 = ""
  loc_94FD56: ExitProcHresult
End Sub

Private Sub FiltroMsk_Change() 'A4EF58
  'Data Table: 41EE38
  loc_A4ECB4: ILdRf Me
  loc_A4ECB7: CastAd
  loc_A4ECBA: FStAdFunc var_88
  loc_A4ECBD: FLdRfVar var_88
  loc_A4ECC0: ImpAdCallFPR4 Proc_261_10_99CABC()
  loc_A4ECC5: FFree1Ad var_88
  loc_A4ECC8: FLdPr Me
  loc_A4ECCB: VCallAd Control_ID_FiltroMsk
  loc_A4ECCE: FStAdFunc var_88
  loc_A4ECD1: FLdPr var_88
  loc_A4ECD4: LateIdLdVar var_98 DispID_22 0
  loc_A4ECDB: CStrVarTmp
  loc_A4ECDC: FStStrNoPop var_9C
  loc_A4ECDF: ImpAdCallI2 Trim$()
  loc_A4ECE4: FStStrNoPop var_A0
  loc_A4ECE7: LitStr vbNullString
  loc_A4ECEA: NeStr
  loc_A4ECEC: FFreeStr var_9C = ""
  loc_A4ECF3: FFree1Ad var_88
  loc_A4ECF6: FFree1Var var_98 = ""
  loc_A4ECF9: BranchF loc_A4EE35
  loc_A4ECFC: FLdRfVar var_A2
  loc_A4ECFF: FLdPr Me
  loc_A4ED02: VCallAd Control_ID_FiltroCbo
  loc_A4ED05: FStAdFunc var_88
  loc_A4ED08: FLdPr var_88
  loc_A4ED0B:  = Me.ListIndex
  loc_A4ED10: FLdI2 var_A2
  loc_A4ED13: LitI2_Byte 0
  loc_A4ED15: EqI2
  loc_A4ED16: FFree1Ad var_88
  loc_A4ED19: BranchF loc_A4ED94
  loc_A4ED1C: LitStr "CodiFifu LIKE '"
  loc_A4ED1F: FLdPr Me
  loc_A4ED22: VCallAd Control_ID_FiltroMsk
  loc_A4ED25: FStAdFunc var_88
  loc_A4ED28: FLdPr var_88
  loc_A4ED2B: LateIdLdVar var_98 DispID_22 0
  loc_A4ED32: CStrVarTmp
  loc_A4ED33: FStStrNoPop var_9C
  loc_A4ED36: ConcatStr
  loc_A4ED37: FStStrNoPop var_A0
  loc_A4ED3A: LitStr Chr(37) & "'"
  loc_A4ED3D: ConcatStr
  loc_A4ED3E: PopTmpLdAdStr
  loc_A4ED42: FLdPr Me
  loc_A4ED45: MemLdRfVar from_stack_1.BuscarCLS
  loc_A4ED48: NewIfNullPr clsbase
  loc_A4ED4B: Call clsbase.Filter(from_stack_1v)
  loc_A4ED50: FFreeStr var_9C = "": var_A0 = ""
  loc_A4ED59: FFree1Ad var_88
  loc_A4ED5C: FFree1Var var_98 = ""
  loc_A4ED5F: LitStr "código que comience con "
  loc_A4ED62: FLdPr Me
  loc_A4ED65: VCallAd Control_ID_FiltroMsk
  loc_A4ED68: FStAdFunc var_88
  loc_A4ED6B: FLdPr var_88
  loc_A4ED6E: LateIdLdVar var_98 DispID_22 0
  loc_A4ED75: CStrVarTmp
  loc_A4ED76: FStStrNoPop var_9C
  loc_A4ED79: ConcatStr
  loc_A4ED7A: FStStrNoPop var_A0
  loc_A4ED7D: FLdPr Me
  loc_A4ED80: MemStStrCopy
  loc_A4ED84: FFreeStr var_9C = ""
  loc_A4ED8B: FFree1Ad var_88
  loc_A4ED8E: FFree1Var var_98 = ""
  loc_A4ED91: Branch loc_A4EE32
  loc_A4ED94: FLdRfVar var_A2
  loc_A4ED97: FLdPr Me
  loc_A4ED9A: VCallAd Control_ID_FiltroCbo
  loc_A4ED9D: FStAdFunc var_88
  loc_A4EDA0: FLdPr var_88
  loc_A4EDA3:  = Me.ListIndex
  loc_A4EDA8: FLdI2 var_A2
  loc_A4EDAB: LitI2_Byte 1
  loc_A4EDAD: EqI2
  loc_A4EDAE: FFree1Ad var_88
  loc_A4EDB1: BranchF loc_A4EE32
  loc_A4EDB4: LitStr "DetaFifu LIKE '" & Chr(37)
  loc_A4EDB7: FLdPr Me
  loc_A4EDBA: VCallAd Control_ID_FiltroMsk
  loc_A4EDBD: FStAdFunc var_88
  loc_A4EDC0: FLdPr var_88
  loc_A4EDC3: LateIdLdVar var_98 DispID_22 0
  loc_A4EDCA: CStrVarTmp
  loc_A4EDCB: FStStrNoPop var_9C
  loc_A4EDCE: ConcatStr
  loc_A4EDCF: FStStrNoPop var_A0
  loc_A4EDD2: LitStr Chr(37) & "'"
  loc_A4EDD5: ConcatStr
  loc_A4EDD6: PopTmpLdAdStr
  loc_A4EDDA: FLdPr Me
  loc_A4EDDD: MemLdRfVar from_stack_1.BuscarCLS
  loc_A4EDE0: NewIfNullPr clsbase
  loc_A4EDE3: Call clsbase.Filter(from_stack_1v)
  loc_A4EDE8: FFreeStr var_9C = "": var_A0 = ""
  loc_A4EDF1: FFree1Ad var_88
  loc_A4EDF4: FFree1Var var_98 = ""
  loc_A4EDF7: LitStr "detalle que contiene "
  loc_A4EDFA: FLdPr Me
  loc_A4EDFD: VCallAd Control_ID_FiltroMsk
  loc_A4EE00: FStAdFunc var_88
  loc_A4EE03: FLdPr var_88
  loc_A4EE06: LateIdLdVar var_98 DispID_22 0
  loc_A4EE0D: CStrVarTmp
  loc_A4EE0E: FStStrNoPop var_9C
  loc_A4EE11: ConcatStr
  loc_A4EE12: FStStrNoPop var_A0
  loc_A4EE15: LitStr vbNullString
  loc_A4EE18: ConcatStr
  loc_A4EE19: FStStrNoPop var_A8
  loc_A4EE1C: FLdPr Me
  loc_A4EE1F: MemStStrCopy
  loc_A4EE23: FFreeStr var_9C = "": var_A0 = ""
  loc_A4EE2C: FFree1Ad var_88
  loc_A4EE2F: FFree1Var var_98 = ""
  loc_A4EE32: Branch loc_A4EE59
  loc_A4EE35: LitStr vbNullString
  loc_A4EE38: FStStrCopy var_9C
  loc_A4EE3B: FLdRfVar var_9C
  loc_A4EE3E: FLdPr Me
  loc_A4EE41: MemLdRfVar from_stack_1.BuscarCLS
  loc_A4EE44: NewIfNullPr clsbase
  loc_A4EE47: Call clsbase.Filter(from_stack_1v)
  loc_A4EE4C: FFree1Str var_9C
  loc_A4EE4F: LitStr vbNullString
  loc_A4EE52: FLdPr Me
  loc_A4EE55: MemStStrCopy
  loc_A4EE59: FLdRfVar var_AC
  loc_A4EE5C: FLdPr Me
  loc_A4EE5F: MemLdRfVar from_stack_1.BuscarCLS
  loc_A4EE62: NewIfNullPr clsbase
  loc_A4EE65: from_stack_1 = clsbase.RecordCount
  loc_A4EE6A: ILdRf var_AC
  loc_A4EE6D: LitI4 0
  loc_A4EE72: GtI4
  loc_A4EE73: BranchF loc_A4EF11
  loc_A4EE76: FLdPr Me
  loc_A4EE79: MemLdRfVar from_stack_1.BuscarCLS
  loc_A4EE7C: NewIfNullAd
  loc_A4EE7F: FStAd var_B0 
  loc_A4EE83: FLdRfVar var_B0
  loc_A4EE86: CVarRef
  loc_A4EE8B: ILdRf Me
  loc_A4EE8E: CastAd
  loc_A4EE91: FStAdFunc var_88
  loc_A4EE94: FLdRfVar var_88
  loc_A4EE97: ImpAdCallFPR4 Proc_261_8_9C2398(, )
  loc_A4EE9C: ILdRf var_B0
  loc_A4EE9F: CastAd
  loc_A4EEA2: FLdPr Me
  loc_A4EEA5: MemStAdFunc
  loc_A4EEA9: FFreeAd var_88 = ""
  loc_A4EEB0: LitI4 0
  loc_A4EEB5: LitI4 1
  loc_A4EEBA: FLdRfVar var_C4
  loc_A4EEBD: Redim
  loc_A4EEC7: FLdPr Me
  loc_A4EECA: MemLdRfVar from_stack_1.BuscarCLS
  loc_A4EECD: NewIfNullAd
  loc_A4EED0: FStAd var_88 
  loc_A4EED4: FLdRfVar var_88
  loc_A4EED7: CVarRef
  loc_A4EEDC: ParmAry1St
  loc_A4EEE2: FLdPr Me
  loc_A4EEE5: VCallAd Control_ID_dgdABMS
  loc_A4EEE8: CVarAd
  loc_A4EEEC: ParmAry1St
  loc_A4EEF2: FLdRfVar var_C4
  loc_A4EEF5: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_A4EEFA: ILdRf var_88
  loc_A4EEFD: CastAd
  loc_A4EF00: FLdPr Me
  loc_A4EF03: MemStAdFunc
  loc_A4EF07: FLdRfVar var_C4
  loc_A4EF0A: Erase
  loc_A4EF0B: FFree1Ad var_88
  loc_A4EF0E: Branch loc_A4EF25
  loc_A4EF11: ILdRf Me
  loc_A4EF14: CastAd
  loc_A4EF17: FStAdFunc var_88
  loc_A4EF1A: FLdRfVar var_88
  loc_A4EF1D: ImpAdCallFPR4 Proc_261_15_A16E38()
  loc_A4EF22: FFree1Ad var_88
  loc_A4EF25: FLdPr Me
  loc_A4EF28: VCallAd Control_ID_dgdABMS
  loc_A4EF2B: FStAdFunc var_B0
  loc_A4EF2E: LitI4 0
  loc_A4EF33: FStStrCopy var_9C
  loc_A4EF36: FLdRfVar var_9C
  loc_A4EF39: FLdPr Me
  loc_A4EF3C: MemLdStr sFiltro
  loc_A4EF3F: FLdZeroAd var_B0
  loc_A4EF42: FStAdFunc var_88
  loc_A4EF45: FLdRfVar var_88
  loc_A4EF48: ImpAdCallFPR4 Proc_261_62_9D9F1C(, , )
  loc_A4EF4D: FFree1Str var_9C
  loc_A4EF50: FFreeAd var_88 = ""
  loc_A4EF57: ExitProcHresult
End Sub

Private Sub FiltroMsk_KeyPress(KeyAscii As Integer) '996C24
  'Data Table: 41EE38
  loc_996BC0: ILdI2 KeyAscii
  loc_996BC3: LitI2_Byte &H27
  loc_996BC5: EqI2
  loc_996BC6: BranchF loc_996BCE
  loc_996BC9: LitI2_Byte 0
  loc_996BCB: IStI2 KeyAscii
  loc_996BCE: FLdRfVar var_88
  loc_996BD1: FLdPr Me
  loc_996BD4: MemLdRfVar from_stack_1.BuscarCLS
  loc_996BD7: NewIfNullPr clsbase
  loc_996BDA: from_stack_1 = clsbase.RecordCount
  loc_996BDF: ILdRf var_88
  loc_996BE2: LitI4 0
  loc_996BE7: EqI4
  loc_996BE8: ILdI2 KeyAscii
  loc_996BEB: CI4UI1
  loc_996BEC: LitI4 8
  loc_996BF1: NeI4
  loc_996BF2: AndI4
  loc_996BF3: FLdPr Me
  loc_996BF6: VCallAd Control_ID_FiltroMsk
  loc_996BF9: FStAdFunc var_8C
  loc_996BFC: FLdPr var_8C
  loc_996BFF: LateIdLdVar var_9C DispID_16 0
  loc_996C06: CStrVarTmp
  loc_996C07: FStStrNoPop var_A0
  loc_996C0A: LitStr vbNullString
  loc_996C0D: EqStr
  loc_996C0F: AndI4
  loc_996C10: FFree1Str var_A0
  loc_996C13: FFree1Ad var_8C
  loc_996C16: FFree1Var var_9C = ""
  loc_996C19: BranchF loc_996C21
  loc_996C1C: LitI2_Byte 0
  loc_996C1E: IStI2 KeyAscii
  loc_996C21: ExitProcHresult
End Sub

Private Sub dgdABMS_UnknownEvent_0 '955E14
  'Data Table: 41EE38
  loc_955DFC: FLdPr Me
  loc_955DFF: VCallAd Control_ID_dgdABMS
  loc_955E02: FStAdFunc var_88
  loc_955E05: FLdRfVar var_88
  loc_955E08: ImpAdCallFPR4 Proc_264_0_9758D8()
  loc_955E0D: FFree1Ad var_88
  loc_955E10: ExitProcHresult
End Sub

Private Sub dgdABMS_UnknownEvent_1 '95C0F0
  'Data Table: 41EE38
  loc_95C0D8: FLdPr Me
  loc_95C0DB: VCallAd Control_ID_dgdABMS
  loc_95C0DE: FStAdFunc var_88
  loc_95C0E1: FLdRfVar var_88
  loc_95C0E4: ImpAdCallFPR4 Proc_264_1_96D788()
  loc_95C0E9: FFree1Ad var_88
  loc_95C0EC: ExitProcHresult
End Sub

Private Sub dgdABMS_DblClick() '955E60
  'Data Table: 41EE38
  loc_955E48: ILdRf Me
  loc_955E4B: FStAdNoPop
  loc_955E4F: ImpAdLdRf MemVar_C44F9C
  loc_955E52: NewIfNullPr Me
  loc_955E55: Me.Global.Unload from_stack_1
  loc_955E5A: FFree1Ad var_88
  loc_955E5D: ExitProcHresult
End Sub

Private Sub dgdABMS_HeadClick(ColIndex As Integer) '999EF8
  'Data Table: 41EE38
  loc_999E9C: FLdRfVar var_B4
  loc_999E9F: FLdRfVar var_B0
  loc_999EA2: FLdI2 ColIndex
  loc_999EA5: CVarI2 var_A8
  loc_999EA8: PopAdLdVar
  loc_999EA9: FLdPr Me
  loc_999EAC: VCallAd Control_ID_dgdABMS
  loc_999EAF: FStAdFunc var_88
  loc_999EB2: FLdPr var_88
  loc_999EB5: LateIdLdVar var_98 DispID_105 0
  loc_999EBC: CastAdVar Me
  loc_999EC0: FStAdFunc var_AC
  loc_999EC3: FLdPr var_AC
  loc_999EC6: from_stack_2 = Me.Columns.Item(from_stack_1)
  loc_999ECB: FLdPr var_B0
  loc_999ECE:  = Me.DataField
  loc_999ED3: FLdZeroAd var_B4
  loc_999ED6: PopTmpLdAdStr
  loc_999EDA: FLdPr Me
  loc_999EDD: MemLdRfVar from_stack_1.BuscarCLS
  loc_999EE0: NewIfNullPr clsbase
  loc_999EE3: Call clsbase.Sort(from_stack_1v)
  loc_999EE8: FFree1Str var_B8
  loc_999EEB: FFreeAd var_88 = "": var_AC = ""
  loc_999EF4: FFree1Var var_98 = ""
  loc_999EF7: ExitProcHresult
End Sub

Private Sub OKButton_Click() '955CE4
  'Data Table: 41EE38
  loc_955CCC: ILdRf Me
  loc_955CCF: FStAdNoPop
  loc_955CD3: ImpAdLdRf MemVar_C44F9C
  loc_955CD6: NewIfNullPr Me
  loc_955CD9: Me.Global.Unload from_stack_1
  loc_955CDE: FFree1Ad var_88
  loc_955CE1: ExitProcHresult
End Sub

Private Sub Form_Load() 'A7111C
  'Data Table: 41EE38
  loc_A70D8C: FLdPr Me
  loc_A70D8F: MemLdI2 iPeriInfo
  loc_A70D92: LitI2_Byte 0
  loc_A70D94: EqI2
  loc_A70D95: BranchF loc_A70DA1
  loc_A70D98: ImpAdLdI2 MemVar_C3D064
  loc_A70D9B: FLdPr Me
  loc_A70D9E: MemStI2 iPeriInfo
  loc_A70DA1: FLdPr Me
  loc_A70DA4: MemLdI2 iPeriInfo
  loc_A70DA7: ImpAdLdI2 MemVar_C3D064
  loc_A70DAA: NeI2
  loc_A70DAB: BranchF loc_A70DE5
  loc_A70DAE: FLdRfVar var_88
  loc_A70DB1: FLdPr Me
  loc_A70DB4:  = Me.Caption
  loc_A70DB9: ILdRf var_88
  loc_A70DBC: LitStr " - Periodo: "
  loc_A70DBF: ConcatStr
  loc_A70DC0: FStStrNoPop var_8C
  loc_A70DC3: FLdPr Me
  loc_A70DC6: MemLdI2 iPeriInfo
  loc_A70DC9: CStrUI1
  loc_A70DCB: FStStrNoPop var_90
  loc_A70DCE: ConcatStr
  loc_A70DCF: FStStrNoPop var_94
  loc_A70DD2: FLdPr Me
  loc_A70DD5: Me.Caption = from_stack_1
  loc_A70DDA: FFreeStr var_88 = "": var_8C = "": var_90 = ""
  loc_A70DE5: FLdRfVar var_98
  loc_A70DE8: FLdPr Me
  loc_A70DEB: MemLdRfVar from_stack_1.BuscarCLS
  loc_A70DEE: NewIfNullPr clsbase
  loc_A70DF1: from_stack_1v = clsbase.RsFrmGet()
  loc_A70DF6: ILdRf var_98
  loc_A70DF9: LitNothing
  loc_A70DFB: Is
  loc_A70DFD: FFree1Ad var_98
  loc_A70E00: BranchF loc_A7106B
  loc_A70E03: LitI2_Byte 0
  loc_A70E05: BranchF loc_A71029
  loc_A70E08: FLdPr Me
  loc_A70E0B: MemLdStr sCodiPart
  loc_A70E0E: LitStr vbNullString
  loc_A70E11: EqStr
  loc_A70E13: FLdPr Me
  loc_A70E16: MemLdStr sCodiOrga
  loc_A70E19: LitStr vbNullString
  loc_A70E1C: EqStr
  loc_A70E1E: AndI4
  loc_A70E1F: BranchF loc_A70E67
  loc_A70E22: LitStr "SELECT *"
  loc_A70E25: LitStr " FROM finalidad"
  loc_A70E28: ConcatStr
  loc_A70E29: FStStrNoPop var_88
  loc_A70E2C: LitStr " WHERE finalidad.PeriInfo = "
  loc_A70E2F: ConcatStr
  loc_A70E30: FStStrNoPop var_8C
  loc_A70E33: FLdPr Me
  loc_A70E36: MemLdI2 iPeriInfo
  loc_A70E39: CStrUI1
  loc_A70E3B: FStStrNoPop var_90
  loc_A70E3E: ConcatStr
  loc_A70E3F: FStStrNoPop var_94
  loc_A70E42: LitStr " ORDER BY finalidad.PeriInfo"
  loc_A70E45: ConcatStr
  loc_A70E46: FStStrNoPop var_9C
  loc_A70E49: FLdPr Me
  loc_A70E4C: MemLdRfVar from_stack_1.BuscarCLS
  loc_A70E4F: NewIfNullPr clsbase
  loc_A70E52: Call clsbase.RedefineRS(from_stack_1v)
  loc_A70E57: FFreeStr var_88 = "": var_8C = "": var_90 = "": var_94 = ""
  loc_A70E64: Branch loc_A71026
  loc_A70E67: FLdPr Me
  loc_A70E6A: MemLdStr sCodiPart
  loc_A70E6D: LitStr vbNullString
  loc_A70E70: NeStr
  loc_A70E72: FLdPr Me
  loc_A70E75: MemLdStr sCodiOrga
  loc_A70E78: LitStr vbNullString
  loc_A70E7B: EqStr
  loc_A70E7D: AndI4
  loc_A70E7E: BranchF loc_A70EF6
  loc_A70E81: LitStr "SELECT finalidad.*"
  loc_A70E84: LitStr " FROM fifupartorga"
  loc_A70E87: ConcatStr
  loc_A70E88: FStStrNoPop var_88
  loc_A70E8B: LitStr " INNER JOIN finalidad ON fifupartorga.PeriInfo = finalidad.PeriInfo AND fifupartorga.CodiFifu = finalidad.CodiFifu"
  loc_A70E8E: ConcatStr
  loc_A70E8F: FStStrNoPop var_8C
  loc_A70E92: LitStr " WHERE fifupartorga.PeriInfo = "
  loc_A70E95: ConcatStr
  loc_A70E96: FStStrNoPop var_90
  loc_A70E99: FLdPr Me
  loc_A70E9C: MemLdI2 iPeriInfo
  loc_A70E9F: CStrUI1
  loc_A70EA1: FStStrNoPop var_94
  loc_A70EA4: ConcatStr
  loc_A70EA5: FStStrNoPop var_9C
  loc_A70EA8: LitStr " AND fifupartorga.CodiPart = '"
  loc_A70EAB: ConcatStr
  loc_A70EAC: FStStrNoPop var_A0
  loc_A70EAF: FLdPr Me
  loc_A70EB2: MemLdStr sCodiPart
  loc_A70EB5: ConcatStr
  loc_A70EB6: FStStrNoPop var_A4
  loc_A70EB9: LitStr "'"
  loc_A70EBC: ConcatStr
  loc_A70EBD: FStStrNoPop var_A8
  loc_A70EC0: LitStr " GROUP BY PeriInfo, CodiFifu, CodiPart, CodiOrga"
  loc_A70EC3: ConcatStr
  loc_A70EC4: FStStrNoPop var_AC
  loc_A70EC7: LitStr " ORDER BY CodiFifu"
  loc_A70ECA: ConcatStr
  loc_A70ECB: FStStrNoPop var_B0
  loc_A70ECE: FLdPr Me
  loc_A70ED1: MemLdRfVar from_stack_1.BuscarCLS
  loc_A70ED4: NewIfNullPr clsbase
  loc_A70ED7: Call clsbase.RedefineRS(from_stack_1v)
  loc_A70EDC: FFreeStr var_88 = "": var_8C = "": var_90 = "": var_94 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = ""
  loc_A70EF3: Branch loc_A71026
  loc_A70EF6: FLdPr Me
  loc_A70EF9: MemLdStr sCodiOrga
  loc_A70EFC: LitStr vbNullString
  loc_A70EFF: NeStr
  loc_A70F01: FLdPr Me
  loc_A70F04: MemLdStr sCodiPart
  loc_A70F07: LitStr vbNullString
  loc_A70F0A: EqStr
  loc_A70F0C: AndI4
  loc_A70F0D: BranchF loc_A70F85
  loc_A70F10: LitStr "SELECT finalidad.*"
  loc_A70F13: LitStr " FROM fifupartorga"
  loc_A70F16: ConcatStr
  loc_A70F17: FStStrNoPop var_88
  loc_A70F1A: LitStr " INNER JOIN finalidad ON fifupartorga.PeriInfo = finalidad.PeriInfo AND fifupartorga.CodiFifu = finalidad.CodiFifu"
  loc_A70F1D: ConcatStr
  loc_A70F1E: FStStrNoPop var_8C
  loc_A70F21: LitStr " WHERE fifupartorga.PeriInfo = "
  loc_A70F24: ConcatStr
  loc_A70F25: FStStrNoPop var_90
  loc_A70F28: FLdPr Me
  loc_A70F2B: MemLdI2 iPeriInfo
  loc_A70F2E: CStrUI1
  loc_A70F30: FStStrNoPop var_94
  loc_A70F33: ConcatStr
  loc_A70F34: FStStrNoPop var_9C
  loc_A70F37: LitStr " AND fifupartorga.CodiOrga = '"
  loc_A70F3A: ConcatStr
  loc_A70F3B: FStStrNoPop var_A0
  loc_A70F3E: FLdPr Me
  loc_A70F41: MemLdStr sCodiOrga
  loc_A70F44: ConcatStr
  loc_A70F45: FStStrNoPop var_A4
  loc_A70F48: LitStr "'"
  loc_A70F4B: ConcatStr
  loc_A70F4C: FStStrNoPop var_A8
  loc_A70F4F: LitStr " GROUP BY PeriInfo, CodiFifu, CodiPart, CodiOrga"
  loc_A70F52: ConcatStr
  loc_A70F53: FStStrNoPop var_AC
  loc_A70F56: LitStr " ORDER BY CodiFifu"
  loc_A70F59: ConcatStr
  loc_A70F5A: FStStrNoPop var_B0
  loc_A70F5D: FLdPr Me
  loc_A70F60: MemLdRfVar from_stack_1.BuscarCLS
  loc_A70F63: NewIfNullPr clsbase
  loc_A70F66: Call clsbase.RedefineRS(from_stack_1v)
  loc_A70F6B: FFreeStr var_88 = "": var_8C = "": var_90 = "": var_94 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = ""
  loc_A70F82: Branch loc_A71026
  loc_A70F85: FLdPr Me
  loc_A70F88: MemLdStr sCodiPart
  loc_A70F8B: LitStr vbNullString
  loc_A70F8E: NeStr
  loc_A70F90: FLdPr Me
  loc_A70F93: MemLdStr sCodiOrga
  loc_A70F96: LitStr vbNullString
  loc_A70F99: NeStr
  loc_A70F9B: AndI4
  loc_A70F9C: BranchF loc_A71026
  loc_A70F9F: LitStr "SELECT finalidad.*"
  loc_A70FA2: LitStr " FROM fifupartorga"
  loc_A70FA5: ConcatStr
  loc_A70FA6: FStStrNoPop var_88
  loc_A70FA9: LitStr " INNER JOIN finalidad ON fifupartorga.PeriInfo = finalidad.PeriInfo AND fifupartorga.CodiFifu = finalidad.CodiFifu"
  loc_A70FAC: ConcatStr
  loc_A70FAD: FStStrNoPop var_8C
  loc_A70FB0: LitStr " WHERE fifupartorga.PeriInfo = "
  loc_A70FB3: ConcatStr
  loc_A70FB4: FStStrNoPop var_90
  loc_A70FB7: FLdPr Me
  loc_A70FBA: MemLdI2 iPeriInfo
  loc_A70FBD: CStrUI1
  loc_A70FBF: FStStrNoPop var_94
  loc_A70FC2: ConcatStr
  loc_A70FC3: FStStrNoPop var_9C
  loc_A70FC6: LitStr " AND fifupartorga.Codipart = '"
  loc_A70FC9: ConcatStr
  loc_A70FCA: FStStrNoPop var_A0
  loc_A70FCD: FLdPr Me
  loc_A70FD0: MemLdStr sCodiPart
  loc_A70FD3: ConcatStr
  loc_A70FD4: FStStrNoPop var_A4
  loc_A70FD7: LitStr "' AND fifupartorga.CodiOrga = '"
  loc_A70FDA: ConcatStr
  loc_A70FDB: FStStrNoPop var_A8
  loc_A70FDE: FLdPr Me
  loc_A70FE1: MemLdStr sCodiOrga
  loc_A70FE4: ConcatStr
  loc_A70FE5: FStStrNoPop var_AC
  loc_A70FE8: LitStr "'"
  loc_A70FEB: ConcatStr
  loc_A70FEC: FStStrNoPop var_B0
  loc_A70FEF: LitStr " GROUP BY PeriInfo, CodiFifu, CodiPart, CodiOrga"
  loc_A70FF2: ConcatStr
  loc_A70FF3: FStStrNoPop var_B4
  loc_A70FF6: LitStr " ORDER BY CodiFifu"
  loc_A70FF9: ConcatStr
  loc_A70FFA: FStStrNoPop var_B8
  loc_A70FFD: FLdPr Me
  loc_A71000: MemLdRfVar from_stack_1.BuscarCLS
  loc_A71003: NewIfNullPr clsbase
  loc_A71006: Call clsbase.RedefineRS(from_stack_1v)
  loc_A7100B: FFreeStr var_88 = "": var_8C = "": var_90 = "": var_94 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = ""
  loc_A71026: Branch loc_A7106B
  loc_A71029: LitStr "SELECT *"
  loc_A7102C: LitStr " FROM finalidad"
  loc_A7102F: ConcatStr
  loc_A71030: FStStrNoPop var_88
  loc_A71033: LitStr " WHERE finalidad.PeriInfo = "
  loc_A71036: ConcatStr
  loc_A71037: FStStrNoPop var_8C
  loc_A7103A: FLdPr Me
  loc_A7103D: MemLdI2 iPeriInfo
  loc_A71040: CStrUI1
  loc_A71042: FStStrNoPop var_90
  loc_A71045: ConcatStr
  loc_A71046: FStStrNoPop var_94
  loc_A71049: LitStr " ORDER BY finalidad.PeriInfo"
  loc_A7104C: ConcatStr
  loc_A7104D: FStStrNoPop var_9C
  loc_A71050: FLdPr Me
  loc_A71053: MemLdRfVar from_stack_1.BuscarCLS
  loc_A71056: NewIfNullPr clsbase
  loc_A71059: Call clsbase.RedefineRS(from_stack_1v)
  loc_A7105E: FFreeStr var_88 = "": var_8C = "": var_90 = "": var_94 = ""
  loc_A7106B: LitVarI2 var_C8, 0
  loc_A71070: PopAdLdVar
  loc_A71071: LitStr "Finalidad (Código)"
  loc_A71074: FLdPr Me
  loc_A71077: VCallAd Control_ID_FiltroCbo
  loc_A7107A: FStAdFunc var_98
  loc_A7107D: FLdPr var_98
  loc_A71080: Me.AddItem from_stack_1, from_stack_2
  loc_A71085: FFree1Ad var_98
  loc_A71088: LitVarI2 var_C8, 1
  loc_A7108D: PopAdLdVar
  loc_A7108E: LitStr "Finalidad (Detalle)"
  loc_A71091: FLdPr Me
  loc_A71094: VCallAd Control_ID_FiltroCbo
  loc_A71097: FStAdFunc var_98
  loc_A7109A: FLdPr var_98
  loc_A7109D: Me.AddItem from_stack_1, from_stack_2
  loc_A710A2: FFree1Ad var_98
  loc_A710A5: LitI2_Byte 1
  loc_A710A7: FLdPr Me
  loc_A710AA: VCallAd Control_ID_FiltroCbo
  loc_A710AD: FStAdFunc var_98
  loc_A710B0: FLdPr var_98
  loc_A710B3: Me.ListIndex = from_stack_1
  loc_A710B8: FFree1Ad var_98
  loc_A710BB: LitI4 0
  loc_A710C0: LitI4 1
  loc_A710C5: FLdRfVar var_CC
  loc_A710C8: Redim
  loc_A710D2: FLdPr Me
  loc_A710D5: MemLdRfVar from_stack_1.BuscarCLS
  loc_A710D8: NewIfNullAd
  loc_A710DB: FStAd var_98 
  loc_A710DF: FLdRfVar var_98
  loc_A710E2: CVarRef
  loc_A710E7: ParmAry1St
  loc_A710ED: FLdPr Me
  loc_A710F0: VCallAd Control_ID_dgdABMS
  loc_A710F3: CVarAd
  loc_A710F7: ParmAry1St
  loc_A710FD: FLdRfVar var_CC
  loc_A71100: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_A71105: ILdRf var_98
  loc_A71108: CastAd
  loc_A7110B: FLdPr Me
  loc_A7110E: MemStAdFunc
  loc_A71112: FLdRfVar var_CC
  loc_A71115: Erase
  loc_A71116: FFree1Ad var_98
  loc_A71119: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '97C4F8
  'Data Table: 41EE38
  loc_97C4C4: LitStr vbNullString
  loc_97C4C7: FLdPr Me
  loc_97C4CA: MemStStrCopy
  loc_97C4CE: LitStr vbNullString
  loc_97C4D1: FLdPr Me
  loc_97C4D4: MemStStrCopy
  loc_97C4D8: LitI2_Byte 0
  loc_97C4DA: FLdPr Me
  loc_97C4DD: MemStI2 iPeriInfo
  loc_97C4E0: ILdRf Me
  loc_97C4E3: FStAdNoPop
  loc_97C4E7: ImpAdLdRf MemVar_C44F9C
  loc_97C4EA: NewIfNullPr Me
  loc_97C4ED: Me.Global.Unload from_stack_1
  loc_97C4F2: FFree1Ad var_88
  loc_97C4F5: ExitProcHresult
  loc_97C4F6: IDvI4
End Sub

Private Sub Form_Activate() '94FDE8
  'Data Table: 41EE38
  loc_94FDD4: FLdPr Me
  loc_94FDD7: VCallAd Control_ID_FiltroMsk
  loc_94FDDA: CVarAd
  loc_94FDDE: ImpAdCallFPR4 Proc_261_5_9BDB84()
  loc_94FDE3: FFree1Var var_94 = ""
  loc_94FDE6: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) '96A410
  'Data Table: 41EE38
  loc_96A3F4: On Error Resume Next
  loc_96A3F9: ILdI2 KeyAscii
  loc_96A3FC: CI4UI1
  loc_96A3FD: LitI4 &HD
  loc_96A402: EqI4
  loc_96A403: BranchF loc_96A40D
  loc_96A408: ImpAdCallFPR4 Proc_261_52_966EEC()
  loc_96A40F: ExitProcHresult
End Sub

Public Function sCodiPartGet() '41F350
  sCodiPartGet = sCodiPart
End Function

Public Sub sCodiPartPut(Value) '41F35F
  sCodiPart = Value
End Sub

Public Function sCodiOrgaGet() '41F36E
  sCodiOrgaGet = sCodiOrga
End Function

Public Sub sCodiOrgaPut(Value) '41F37D
  sCodiOrga = Value
End Sub

Public Function iPeriInfoGet() '41F38C
  iPeriInfoGet = iPeriInfo
End Function

Public Sub iPeriInfoPut(Value) '41F39B
  iPeriInfo = Value
End Sub

Public Function global_4320824Get() '41F3AA
  global_4320824Get = global_4320824
End Function

Public Sub global_4320824Put(Value) '41F3C4
  global_4320824 = Value
End Sub

Public Sub global_4320824Set(Value) '41F3DE
  global_4320824 = Value
End Sub

Public Function sFiltroGet() '41F3F8
  sFiltroGet = sFiltro
End Function

Public Sub sFiltroPut(Value) '41F407
  sFiltro = Value
End Sub

Public Sub Constructor(wPeriInfo, wCodiPart, wCodiOrga, sWhere) 'A45318
  'Data Table: 41EE38
  loc_A450C8: ILdRf wCodiPart
  loc_A450CB: FStStrCopy var_88
  loc_A450CE: ILdRf wCodiOrga
  loc_A450D1: FStStrCopy var_8C
  loc_A450D4: ILdRf sWhere
  loc_A450D7: FStStrCopy var_90
  loc_A450DA: LitI2_Byte 0
  loc_A450DC: BranchF loc_A452D6
  loc_A450DF: FLdPr Me
  loc_A450E2: MemLdStr sCodiPart
  loc_A450E5: LitStr vbNullString
  loc_A450E8: EqStr
  loc_A450EA: FLdPr Me
  loc_A450ED: MemLdStr sCodiOrga
  loc_A450F0: LitStr vbNullString
  loc_A450F3: EqStr
  loc_A450F5: AndI4
  loc_A450F6: BranchF loc_A4513B
  loc_A450F9: LitStr "SELECT *"
  loc_A450FC: LitStr " FROM finalidad"
  loc_A450FF: ConcatStr
  loc_A45100: FStStrNoPop var_94
  loc_A45103: LitStr " WHERE finalidad.PeriInfo = "
  loc_A45106: ConcatStr
  loc_A45107: FStStrNoPop var_98
  loc_A4510A: FLdI2 wPeriInfo
  loc_A4510D: CStrUI1
  loc_A4510F: FStStrNoPop var_9C
  loc_A45112: ConcatStr
  loc_A45113: FStStrNoPop var_A0
  loc_A45116: ILdRf var_90
  loc_A45119: ConcatStr
  loc_A4511A: FStStrNoPop var_A4
  loc_A4511D: FLdPr Me
  loc_A45120: MemLdRfVar from_stack_1.BuscarCLS
  loc_A45123: NewIfNullPr clsbase
  loc_A45126: Call clsbase.RedefineRS(from_stack_1v)
  loc_A4512B: FFreeStr var_94 = "": var_98 = "": var_9C = "": var_A0 = ""
  loc_A45138: Branch loc_A452D3
  loc_A4513B: ILdRf var_88
  loc_A4513E: LitStr vbNullString
  loc_A45141: NeStr
  loc_A45143: ILdRf var_8C
  loc_A45146: LitStr vbNullString
  loc_A45149: EqStr
  loc_A4514B: AndI4
  loc_A4514C: BranchF loc_A451BE
  loc_A4514F: LitStr "SELECT finalidad.*"
  loc_A45152: LitStr " FROM fifupartorga"
  loc_A45155: ConcatStr
  loc_A45156: FStStrNoPop var_94
  loc_A45159: LitStr " INNER JOIN finalidad ON fifupartorga.PeriInfo = finalidad.PeriInfo AND fifupartorga.CodiFifu = finalidad.CodiFifu"
  loc_A4515C: ConcatStr
  loc_A4515D: FStStrNoPop var_98
  loc_A45160: LitStr " WHERE fifupartorga.PeriInfo = "
  loc_A45163: ConcatStr
  loc_A45164: FStStrNoPop var_9C
  loc_A45167: FLdI2 wPeriInfo
  loc_A4516A: CStrUI1
  loc_A4516C: FStStrNoPop var_A0
  loc_A4516F: ConcatStr
  loc_A45170: FStStrNoPop var_A4
  loc_A45173: LitStr " AND fifupartorga.CodiPart = '"
  loc_A45176: ConcatStr
  loc_A45177: FStStrNoPop var_A8
  loc_A4517A: ILdRf var_88
  loc_A4517D: ConcatStr
  loc_A4517E: FStStrNoPop var_AC
  loc_A45181: LitStr "'"
  loc_A45184: ConcatStr
  loc_A45185: FStStrNoPop var_B0
  loc_A45188: LitStr " GROUP BY PeriInfo, CodiFifu, CodiPart, CodiOrga"
  loc_A4518B: ConcatStr
  loc_A4518C: FStStrNoPop var_B4
  loc_A4518F: ILdRf var_90
  loc_A45192: ConcatStr
  loc_A45193: FStStrNoPop var_B8
  loc_A45196: FLdPr Me
  loc_A45199: MemLdRfVar from_stack_1.BuscarCLS
  loc_A4519C: NewIfNullPr clsbase
  loc_A4519F: Call clsbase.RedefineRS(from_stack_1v)
  loc_A451A4: FFreeStr var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = ""
  loc_A451BB: Branch loc_A452D3
  loc_A451BE: ILdRf var_8C
  loc_A451C1: LitStr vbNullString
  loc_A451C4: NeStr
  loc_A451C6: ILdRf var_88
  loc_A451C9: LitStr vbNullString
  loc_A451CC: EqStr
  loc_A451CE: AndI4
  loc_A451CF: BranchF loc_A45241
  loc_A451D2: LitStr "SELECT finalidad.*"
  loc_A451D5: LitStr " FROM fifupartorga"
  loc_A451D8: ConcatStr
  loc_A451D9: FStStrNoPop var_94
  loc_A451DC: LitStr " INNER JOIN finalidad ON fifupartorga.PeriInfo = finalidad.PeriInfo AND fifupartorga.CodiFifu = finalidad.CodiFifu"
  loc_A451DF: ConcatStr
  loc_A451E0: FStStrNoPop var_98
  loc_A451E3: LitStr " WHERE fifupartorga.PeriInfo = "
  loc_A451E6: ConcatStr
  loc_A451E7: FStStrNoPop var_9C
  loc_A451EA: FLdI2 wPeriInfo
  loc_A451ED: CStrUI1
  loc_A451EF: FStStrNoPop var_A0
  loc_A451F2: ConcatStr
  loc_A451F3: FStStrNoPop var_A4
  loc_A451F6: LitStr " AND fifupartorga.CodiOrga = '"
  loc_A451F9: ConcatStr
  loc_A451FA: FStStrNoPop var_A8
  loc_A451FD: ILdRf var_8C
  loc_A45200: ConcatStr
  loc_A45201: FStStrNoPop var_AC
  loc_A45204: LitStr "'"
  loc_A45207: ConcatStr
  loc_A45208: FStStrNoPop var_B0
  loc_A4520B: LitStr " GROUP BY PeriInfo, CodiFifu, CodiPart, CodiOrga"
  loc_A4520E: ConcatStr
  loc_A4520F: FStStrNoPop var_B4
  loc_A45212: ILdRf var_90
  loc_A45215: ConcatStr
  loc_A45216: FStStrNoPop var_B8
  loc_A45219: FLdPr Me
  loc_A4521C: MemLdRfVar from_stack_1.BuscarCLS
  loc_A4521F: NewIfNullPr clsbase
  loc_A45222: Call clsbase.RedefineRS(from_stack_1v)
  loc_A45227: FFreeStr var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = ""
  loc_A4523E: Branch loc_A452D3
  loc_A45241: ILdRf var_88
  loc_A45244: LitStr vbNullString
  loc_A45247: NeStr
  loc_A45249: ILdRf var_8C
  loc_A4524C: LitStr vbNullString
  loc_A4524F: NeStr
  loc_A45251: AndI4
  loc_A45252: BranchF loc_A452D3
  loc_A45255: LitStr "SELECT finalidad.*"
  loc_A45258: LitStr " FROM fifupartorga"
  loc_A4525B: ConcatStr
  loc_A4525C: FStStrNoPop var_94
  loc_A4525F: LitStr " INNER JOIN finalidad ON fifupartorga.PeriInfo = finalidad.PeriInfo AND fifupartorga.CodiFifu = finalidad.CodiFifu"
  loc_A45262: ConcatStr
  loc_A45263: FStStrNoPop var_98
  loc_A45266: LitStr " WHERE fifupartorga.PeriInfo = "
  loc_A45269: ConcatStr
  loc_A4526A: FStStrNoPop var_9C
  loc_A4526D: FLdI2 wPeriInfo
  loc_A45270: CStrUI1
  loc_A45272: FStStrNoPop var_A0
  loc_A45275: ConcatStr
  loc_A45276: FStStrNoPop var_A4
  loc_A45279: LitStr " AND fifupartorga.Codipart = '"
  loc_A4527C: ConcatStr
  loc_A4527D: FStStrNoPop var_A8
  loc_A45280: ILdRf var_88
  loc_A45283: ConcatStr
  loc_A45284: FStStrNoPop var_AC
  loc_A45287: LitStr "' AND fifupartorga.CodiOrga = '"
  loc_A4528A: ConcatStr
  loc_A4528B: FStStrNoPop var_B0
  loc_A4528E: ILdRf var_8C
  loc_A45291: ConcatStr
  loc_A45292: FStStrNoPop var_B4
  loc_A45295: LitStr "'"
  loc_A45298: ConcatStr
  loc_A45299: FStStrNoPop var_B8
  loc_A4529C: LitStr " GROUP BY PeriInfo, CodiFifu, CodiPart, CodiOrga"
  loc_A4529F: ConcatStr
  loc_A452A0: FStStrNoPop var_BC
  loc_A452A3: ILdRf var_90
  loc_A452A6: ConcatStr
  loc_A452A7: FStStrNoPop var_C0
  loc_A452AA: FLdPr Me
  loc_A452AD: MemLdRfVar from_stack_1.BuscarCLS
  loc_A452B0: NewIfNullPr clsbase
  loc_A452B3: Call clsbase.RedefineRS(from_stack_1v)
  loc_A452B8: FFreeStr var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_A452D3: Branch loc_A45315
  loc_A452D6: LitStr "SELECT *"
  loc_A452D9: LitStr " FROM finalidad"
  loc_A452DC: ConcatStr
  loc_A452DD: FStStrNoPop var_94
  loc_A452E0: LitStr " WHERE finalidad.PeriInfo = "
  loc_A452E3: ConcatStr
  loc_A452E4: FStStrNoPop var_98
  loc_A452E7: FLdI2 wPeriInfo
  loc_A452EA: CStrUI1
  loc_A452EC: FStStrNoPop var_9C
  loc_A452EF: ConcatStr
  loc_A452F0: FStStrNoPop var_A0
  loc_A452F3: ILdRf var_90
  loc_A452F6: ConcatStr
  loc_A452F7: FStStrNoPop var_A4
  loc_A452FA: FLdPr Me
  loc_A452FD: MemLdRfVar from_stack_1.BuscarCLS
  loc_A45300: NewIfNullPr clsbase
  loc_A45303: Call clsbase.RedefineRS(from_stack_1v)
  loc_A45308: FFreeStr var_94 = "": var_98 = "": var_9C = "": var_A0 = ""
  loc_A45315: ExitProcHresult
  loc_A45316: NeR8
End Sub
