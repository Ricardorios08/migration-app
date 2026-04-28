VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Begin VB.Form bscUsuario
  Caption = "Buscar Usuario por ..."
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "bscUsuario.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 10950
  ClientHeight = 5910
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
      OleObjectBlob = "bscUsuario.frx":08CA
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
    OleObjectBlob = "bscUsuario.frx":092A
  End
End

Attribute VB_Name = "bscUsuario"

Public MuestroAnulados As Boolean
Public BuscarCLS As New Class
Public sFiltro As String


Private Sub FiltroCbo_Click(arg_34) '9B5E64
  'Data Table: 41B5AC
  loc_9B5DAC: LitVarStr var_94, vbNullString
  loc_9B5DB1: PopAdLdVar
  loc_9B5DB2: FLdPr Me
  loc_9B5DB5: VCallAd Control_ID_FiltroMsk
  loc_9B5DB8: FStAdFunc var_A8
  loc_9B5DBB: FLdPr var_A8
  loc_9B5DBE: LateIdSt
  loc_9B5DC3: FFree1Ad var_A8
  loc_9B5DC6: FLdRfVar var_AA
  loc_9B5DC9: FLdPr Me
  loc_9B5DCC: VCallAd Control_ID_FiltroCbo
  loc_9B5DCF: FStAdFunc var_A8
  loc_9B5DD2: FLdPr var_A8
  loc_9B5DD5:  = Me.ListIndex
  loc_9B5DDA: FLdI2 var_AA
  loc_9B5DDD: FStI2 var_AC
  loc_9B5DE0: FFree1Ad var_A8
  loc_9B5DE3: FLdI2 var_AC
  loc_9B5DE6: LitI2_Byte 0
  loc_9B5DE8: EqI2
  loc_9B5DE9: BranchF loc_9B5E23
  loc_9B5DEC: LitVarStr var_94, vbNullString
  loc_9B5DF1: PopAdLdVar
  loc_9B5DF2: FLdPr Me
  loc_9B5DF5: VCallAd Control_ID_FiltroMsk
  loc_9B5DF8: FStAdFunc var_A8
  loc_9B5DFB: FLdPr var_A8
  loc_9B5DFE: LateIdSt
  loc_9B5E03: FFree1Ad var_A8
  loc_9B5E06: LitStr "CodiUsua"
  loc_9B5E09: FStStrCopy var_B0
  loc_9B5E0C: FLdRfVar var_B0
  loc_9B5E0F: FLdPr Me
  loc_9B5E12: MemLdRfVar from_stack_1.BuscarCLS
  loc_9B5E15: NewIfNullPr clsbase
  loc_9B5E18: Call clsbase.Sort(from_stack_1v)
  loc_9B5E1D: FFree1Str var_B0
  loc_9B5E20: Branch loc_9B5E60
  loc_9B5E23: FLdI2 var_AC
  loc_9B5E26: LitI2_Byte 1
  loc_9B5E28: EqI2
  loc_9B5E29: BranchF loc_9B5E60
  loc_9B5E2C: LitVarStr var_94, vbNullString
  loc_9B5E31: PopAdLdVar
  loc_9B5E32: FLdPr Me
  loc_9B5E35: VCallAd Control_ID_FiltroMsk
  loc_9B5E38: FStAdFunc var_A8
  loc_9B5E3B: FLdPr var_A8
  loc_9B5E3E: LateIdSt
  loc_9B5E43: FFree1Ad var_A8
  loc_9B5E46: LitStr "DetaPers"
  loc_9B5E49: FStStrCopy var_B0
  loc_9B5E4C: FLdRfVar var_B0
  loc_9B5E4F: FLdPr Me
  loc_9B5E52: MemLdRfVar from_stack_1.BuscarCLS
  loc_9B5E55: NewIfNullPr clsbase
  loc_9B5E58: Call clsbase.Sort(from_stack_1v)
  loc_9B5E5D: FFree1Str var_B0
  loc_9B5E60: ExitProcHresult
  loc_9B5E61: FnAbsI2
  loc_9B5E62: FStStrNoPop arg_3400
End Sub

Private Sub FiltroMsk_UnknownEvent_0 '94D250
  'Data Table: 41B5AC
  loc_94D23C: FLdPr Me
  loc_94D23F: VCallAd Control_ID_FiltroMsk
  loc_94D242: CVarAd
  loc_94D246: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94D24B: FFree1Var var_94 = ""
  loc_94D24E: ExitProcHresult
End Sub

Private Sub FiltroMsk_Change() 'A4FE30
  'Data Table: 41B5AC
  loc_A4FB8C: ILdRf Me
  loc_A4FB8F: CastAd
  loc_A4FB92: FStAdFunc var_88
  loc_A4FB95: FLdRfVar var_88
  loc_A4FB98: ImpAdCallFPR4  = Proc_261_10_99CABC()
  loc_A4FB9D: FFree1Ad var_88
  loc_A4FBA0: FLdPr Me
  loc_A4FBA3: VCallAd Control_ID_FiltroMsk
  loc_A4FBA6: FStAdFunc var_88
  loc_A4FBA9: FLdPr var_88
  loc_A4FBAC: LateIdLdVar var_98 DispID_22 0
  loc_A4FBB3: CStrVarTmp
  loc_A4FBB4: FStStrNoPop var_9C
  loc_A4FBB7: ImpAdCallI2 Trim$()
  loc_A4FBBC: FStStrNoPop var_A0
  loc_A4FBBF: LitStr vbNullString
  loc_A4FBC2: NeStr
  loc_A4FBC4: FFreeStr var_9C = ""
  loc_A4FBCB: FFree1Ad var_88
  loc_A4FBCE: FFree1Var var_98 = ""
  loc_A4FBD1: BranchF loc_A4FD0D
  loc_A4FBD4: FLdRfVar var_A2
  loc_A4FBD7: FLdPr Me
  loc_A4FBDA: VCallAd Control_ID_FiltroCbo
  loc_A4FBDD: FStAdFunc var_88
  loc_A4FBE0: FLdPr var_88
  loc_A4FBE3:  = Me.ListIndex
  loc_A4FBE8: FLdI2 var_A2
  loc_A4FBEB: LitI2_Byte 0
  loc_A4FBED: EqI2
  loc_A4FBEE: FFree1Ad var_88
  loc_A4FBF1: BranchF loc_A4FC6C
  loc_A4FBF4: LitStr "CodiUsua LIKE '"
  loc_A4FBF7: FLdPr Me
  loc_A4FBFA: VCallAd Control_ID_FiltroMsk
  loc_A4FBFD: FStAdFunc var_88
  loc_A4FC00: FLdPr var_88
  loc_A4FC03: LateIdLdVar var_98 DispID_22 0
  loc_A4FC0A: CStrVarTmp
  loc_A4FC0B: FStStrNoPop var_9C
  loc_A4FC0E: ConcatStr
  loc_A4FC0F: FStStrNoPop var_A0
  loc_A4FC12: LitStr Chr(37) & "'"
  loc_A4FC15: ConcatStr
  loc_A4FC16: PopTmpLdAdStr
  loc_A4FC1A: FLdPr Me
  loc_A4FC1D: MemLdRfVar from_stack_1.BuscarCLS
  loc_A4FC20: NewIfNullPr clsbase
  loc_A4FC23: Call clsbase.Filter(from_stack_1v)
  loc_A4FC28: FFreeStr var_9C = "": var_A0 = ""
  loc_A4FC31: FFree1Ad var_88
  loc_A4FC34: FFree1Var var_98 = ""
  loc_A4FC37: LitStr "código sea igual a "
  loc_A4FC3A: FLdPr Me
  loc_A4FC3D: VCallAd Control_ID_FiltroMsk
  loc_A4FC40: FStAdFunc var_88
  loc_A4FC43: FLdPr var_88
  loc_A4FC46: LateIdLdVar var_98 DispID_22 0
  loc_A4FC4D: CStrVarTmp
  loc_A4FC4E: FStStrNoPop var_9C
  loc_A4FC51: ConcatStr
  loc_A4FC52: FStStrNoPop var_A0
  loc_A4FC55: FLdPr Me
  loc_A4FC58: MemStStrCopy
  loc_A4FC5C: FFreeStr var_9C = ""
  loc_A4FC63: FFree1Ad var_88
  loc_A4FC66: FFree1Var var_98 = ""
  loc_A4FC69: Branch loc_A4FD0A
  loc_A4FC6C: FLdRfVar var_A2
  loc_A4FC6F: FLdPr Me
  loc_A4FC72: VCallAd Control_ID_FiltroCbo
  loc_A4FC75: FStAdFunc var_88
  loc_A4FC78: FLdPr var_88
  loc_A4FC7B:  = Me.ListIndex
  loc_A4FC80: FLdI2 var_A2
  loc_A4FC83: LitI2_Byte 1
  loc_A4FC85: EqI2
  loc_A4FC86: FFree1Ad var_88
  loc_A4FC89: BranchF loc_A4FD0A
  loc_A4FC8C: LitStr "DetaPers LIKE '" & Chr(37)
  loc_A4FC8F: FLdPr Me
  loc_A4FC92: VCallAd Control_ID_FiltroMsk
  loc_A4FC95: FStAdFunc var_88
  loc_A4FC98: FLdPr var_88
  loc_A4FC9B: LateIdLdVar var_98 DispID_22 0
  loc_A4FCA2: CStrVarTmp
  loc_A4FCA3: FStStrNoPop var_9C
  loc_A4FCA6: ConcatStr
  loc_A4FCA7: FStStrNoPop var_A0
  loc_A4FCAA: LitStr Chr(37) & "'"
  loc_A4FCAD: ConcatStr
  loc_A4FCAE: PopTmpLdAdStr
  loc_A4FCB2: FLdPr Me
  loc_A4FCB5: MemLdRfVar from_stack_1.BuscarCLS
  loc_A4FCB8: NewIfNullPr clsbase
  loc_A4FCBB: Call clsbase.Filter(from_stack_1v)
  loc_A4FCC0: FFreeStr var_9C = "": var_A0 = ""
  loc_A4FCC9: FFree1Ad var_88
  loc_A4FCCC: FFree1Var var_98 = ""
  loc_A4FCCF: LitStr "detalle que contiene "
  loc_A4FCD2: FLdPr Me
  loc_A4FCD5: VCallAd Control_ID_FiltroMsk
  loc_A4FCD8: FStAdFunc var_88
  loc_A4FCDB: FLdPr var_88
  loc_A4FCDE: LateIdLdVar var_98 DispID_22 0
  loc_A4FCE5: CStrVarTmp
  loc_A4FCE6: FStStrNoPop var_9C
  loc_A4FCE9: ConcatStr
  loc_A4FCEA: FStStrNoPop var_A0
  loc_A4FCED: LitStr vbNullString
  loc_A4FCF0: ConcatStr
  loc_A4FCF1: FStStrNoPop var_A8
  loc_A4FCF4: FLdPr Me
  loc_A4FCF7: MemStStrCopy
  loc_A4FCFB: FFreeStr var_9C = "": var_A0 = ""
  loc_A4FD04: FFree1Ad var_88
  loc_A4FD07: FFree1Var var_98 = ""
  loc_A4FD0A: Branch loc_A4FD31
  loc_A4FD0D: LitStr vbNullString
  loc_A4FD10: FStStrCopy var_9C
  loc_A4FD13: FLdRfVar var_9C
  loc_A4FD16: FLdPr Me
  loc_A4FD19: MemLdRfVar from_stack_1.BuscarCLS
  loc_A4FD1C: NewIfNullPr clsbase
  loc_A4FD1F: Call clsbase.Filter(from_stack_1v)
  loc_A4FD24: FFree1Str var_9C
  loc_A4FD27: LitStr vbNullString
  loc_A4FD2A: FLdPr Me
  loc_A4FD2D: MemStStrCopy
  loc_A4FD31: FLdRfVar var_AC
  loc_A4FD34: FLdPr Me
  loc_A4FD37: MemLdRfVar from_stack_1.BuscarCLS
  loc_A4FD3A: NewIfNullPr clsbase
  loc_A4FD3D: from_stack_1 = clsbase.RecordCount
  loc_A4FD42: ILdRf var_AC
  loc_A4FD45: LitI4 0
  loc_A4FD4A: GtI4
  loc_A4FD4B: BranchF loc_A4FDE9
  loc_A4FD4E: FLdPr Me
  loc_A4FD51: MemLdRfVar from_stack_1.BuscarCLS
  loc_A4FD54: NewIfNullAd
  loc_A4FD57: FStAd var_B0 
  loc_A4FD5B: FLdRfVar var_B0
  loc_A4FD5E: CVarRef
  loc_A4FD63: ILdRf Me
  loc_A4FD66: CastAd
  loc_A4FD69: FStAdFunc var_88
  loc_A4FD6C: FLdRfVar var_88
  loc_A4FD6F: ImpAdCallFPR4  = Proc_261_8_9C2398()
  loc_A4FD74: ILdRf var_B0
  loc_A4FD77: CastAd
  loc_A4FD7A: FLdPr Me
  loc_A4FD7D: MemStAdFunc
  loc_A4FD81: FFreeAd var_88 = ""
  loc_A4FD88: LitI4 0
  loc_A4FD8D: LitI4 1
  loc_A4FD92: FLdRfVar var_C4
  loc_A4FD95: Redim
  loc_A4FD9F: FLdPr Me
  loc_A4FDA2: MemLdRfVar from_stack_1.BuscarCLS
  loc_A4FDA5: NewIfNullAd
  loc_A4FDA8: FStAd var_88 
  loc_A4FDAC: FLdRfVar var_88
  loc_A4FDAF: CVarRef
  loc_A4FDB4: ParmAry1St
  loc_A4FDBA: FLdPr Me
  loc_A4FDBD: VCallAd Control_ID_dgdABMS
  loc_A4FDC0: CVarAd
  loc_A4FDC4: ParmAry1St
  loc_A4FDCA: FLdRfVar var_C4
  loc_A4FDCD: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_A4FDD2: ILdRf var_88
  loc_A4FDD5: CastAd
  loc_A4FDD8: FLdPr Me
  loc_A4FDDB: MemStAdFunc
  loc_A4FDDF: FLdRfVar var_C4
  loc_A4FDE2: Erase
  loc_A4FDE3: FFree1Ad var_88
  loc_A4FDE6: Branch loc_A4FDFD
  loc_A4FDE9: ILdRf Me
  loc_A4FDEC: CastAd
  loc_A4FDEF: FStAdFunc var_88
  loc_A4FDF2: FLdRfVar var_88
  loc_A4FDF5: ImpAdCallFPR4  = Proc_261_15_A16E38()
  loc_A4FDFA: FFree1Ad var_88
  loc_A4FDFD: FLdPr Me
  loc_A4FE00: VCallAd Control_ID_dgdABMS
  loc_A4FE03: FStAdFunc var_B0
  loc_A4FE06: LitI4 0
  loc_A4FE0B: FStStrCopy var_9C
  loc_A4FE0E: FLdRfVar var_9C
  loc_A4FE11: FLdPr Me
  loc_A4FE14: MemLdStr sFiltro
  loc_A4FE17: FLdZeroAd var_B0
  loc_A4FE1A: FStAdFunc var_88
  loc_A4FE1D: FLdRfVar var_88
  loc_A4FE20: ImpAdCallFPR4  = Proc_261_62_9D9F1C(, )
  loc_A4FE25: FFree1Str var_9C
  loc_A4FE28: FFreeAd var_88 = ""
  loc_A4FE2F: ExitProcHresult
End Sub

Private Sub FiltroMsk_KeyPress(KeyAscii As Integer) '998D44
  'Data Table: 41B5AC
  loc_998CE0: ILdI2 KeyAscii
  loc_998CE3: LitI2_Byte &H27
  loc_998CE5: EqI2
  loc_998CE6: BranchF loc_998CEE
  loc_998CE9: LitI2_Byte 0
  loc_998CEB: IStI2 KeyAscii
  loc_998CEE: FLdRfVar var_88
  loc_998CF1: FLdPr Me
  loc_998CF4: MemLdRfVar from_stack_1.BuscarCLS
  loc_998CF7: NewIfNullPr clsbase
  loc_998CFA: from_stack_1 = clsbase.RecordCount
  loc_998CFF: ILdRf var_88
  loc_998D02: LitI4 0
  loc_998D07: EqI4
  loc_998D08: ILdI2 KeyAscii
  loc_998D0B: CI4UI1
  loc_998D0C: LitI4 8
  loc_998D11: NeI4
  loc_998D12: AndI4
  loc_998D13: FLdPr Me
  loc_998D16: VCallAd Control_ID_FiltroMsk
  loc_998D19: FStAdFunc var_8C
  loc_998D1C: FLdPr var_8C
  loc_998D1F: LateIdLdVar var_9C DispID_16 0
  loc_998D26: CStrVarTmp
  loc_998D27: FStStrNoPop var_A0
  loc_998D2A: LitStr vbNullString
  loc_998D2D: EqStr
  loc_998D2F: AndI4
  loc_998D30: FFree1Str var_A0
  loc_998D33: FFree1Ad var_8C
  loc_998D36: FFree1Var var_9C = ""
  loc_998D39: BranchF loc_998D41
  loc_998D3C: LitI2_Byte 0
  loc_998D3E: IStI2 KeyAscii
  loc_998D41: ExitProcHresult
End Sub

Private Sub dgdABMS_UnknownEvent_0 '966990
  'Data Table: 41B5AC
  loc_966978: FLdPr Me
  loc_96697B: VCallAd Control_ID_dgdABMS
  loc_96697E: FStAdFunc var_88
  loc_966981: FLdRfVar var_88
  loc_966984: ImpAdCallFPR4  = Proc_264_0_9758D8()
  loc_966989: FFree1Ad var_88
  loc_96698C: ExitProcHresult
  loc_96698D: ThisVCall unk_41B5CB
End Sub

Private Sub dgdABMS_UnknownEvent_1 '966860
  'Data Table: 41B5AC
  loc_966848: FLdPr Me
  loc_96684B: VCallAd Control_ID_dgdABMS
  loc_96684E: FStAdFunc var_88
  loc_966851: FLdRfVar var_88
  loc_966854: ImpAdCallFPR4  = Proc_264_1_96D788()
  loc_966859: FFree1Ad var_88
  loc_96685C: ExitProcHresult
  loc_96685D: LeR8
  loc_96685E: CRec2Uni arg_3400
End Sub

Private Sub dgdABMS_DblClick() '966A28
  'Data Table: 41B5AC
  loc_966A10: ILdRf Me
  loc_966A13: FStAdNoPop
  loc_966A17: ImpAdLdRf MemVar_C44F9C
  loc_966A1A: NewIfNullPr Me
  loc_966A1D: Me.Global.Unload from_stack_1
  loc_966A22: FFree1Ad var_88
  loc_966A25: ExitProcHresult
End Sub

Private Sub dgdABMS_HeadClick(ColIndex As Integer) '99B378
  'Data Table: 41B5AC
  loc_99B31C: FLdRfVar var_B4
  loc_99B31F: FLdRfVar var_B0
  loc_99B322: FLdI2 ColIndex
  loc_99B325: CVarI2 var_A8
  loc_99B328: PopAdLdVar
  loc_99B329: FLdPr Me
  loc_99B32C: VCallAd Control_ID_dgdABMS
  loc_99B32F: FStAdFunc var_88
  loc_99B332: FLdPr var_88
  loc_99B335: LateIdLdVar var_98 DispID_105 0
  loc_99B33C: CastAdVar Me
  loc_99B340: FStAdFunc var_AC
  loc_99B343: FLdPr var_AC
  loc_99B346: from_stack_2 = Me.Columns.Item(from_stack_1)
  loc_99B34B: FLdPr var_B0
  loc_99B34E:  = Me.DataField
  loc_99B353: FLdZeroAd var_B4
  loc_99B356: PopTmpLdAdStr
  loc_99B35A: FLdPr Me
  loc_99B35D: MemLdRfVar from_stack_1.BuscarCLS
  loc_99B360: NewIfNullPr clsbase
  loc_99B363: Call clsbase.Sort(from_stack_1v)
  loc_99B368: FFree1Str var_B8
  loc_99B36B: FFreeAd var_88 = "": var_AC = ""
  loc_99B374: FFree1Var var_98 = ""
  loc_99B377: ExitProcHresult
End Sub

Private Sub OKButton_Click() '965BE8
  'Data Table: 41B5AC
  loc_965BD0: ILdRf Me
  loc_965BD3: FStAdNoPop
  loc_965BD7: ImpAdLdRf MemVar_C44F9C
  loc_965BDA: NewIfNullPr Me
  loc_965BDD: Me.Global.Unload from_stack_1
  loc_965BE2: FFree1Ad var_88
  loc_965BE5: ExitProcHresult
  loc_965BE6: SubI2
End Sub

Private Sub Form_Load() 'A098EC
  'Data Table: 41B5AC
  loc_A097A4: FLdRfVar var_88
  loc_A097A7: FLdPr Me
  loc_A097AA: MemLdRfVar from_stack_1.BuscarCLS
  loc_A097AD: NewIfNullPr clsbase
  loc_A097B0: from_stack_1v = clsbase.RsFrmGet()
  loc_A097B5: ILdRf var_88
  loc_A097B8: LitNothing
  loc_A097BA: Is
  loc_A097BC: FFree1Ad var_88
  loc_A097BF: BranchF loc_A0983D
  loc_A097C2: LitStr "SELECT u.*, IFNULL(DetaPers,'') DetaPers, IF(u.ModiUsua!='',u.ModiUsua,u.AltaUsua) Usuario"
  loc_A097C5: LitStr " FROM infogov.usuario u"
  loc_A097C8: ConcatStr
  loc_A097C9: FStStrNoPop var_8C
  loc_A097CC: LitStr " LEFT JOIN infogov.persona p ON p.CucuPers = u.CucuPers"
  loc_A097CF: ConcatStr
  loc_A097D0: FStStrNoPop var_90
  loc_A097D3: LitStr " WHERE TRUE"
  loc_A097D6: ConcatStr
  loc_A097D7: CVarStr var_100
  loc_A097DA: LitVarStr var_D0, " AND u.BajaUsua = '' "
  loc_A097DF: FStVarCopyObj var_E0
  loc_A097E2: FLdRfVar var_E0
  loc_A097E5: LitVarStr var_B0, vbNullString
  loc_A097EA: FStVarCopyObj var_C0
  loc_A097ED: FLdRfVar var_C0
  loc_A097F0: FLdPr Me
  loc_A097F3: MemLdRfVar from_stack_1.MuestroAnulados
  loc_A097F6: CVarRef
  loc_A097FB: FLdRfVar var_F0
  loc_A097FE: ImpAdCallFPR4  = IIf(, , )
  loc_A09803: FLdRfVar var_F0
  loc_A09806: ConcatVar var_110
  loc_A0980A: LitVarStr var_120, " ORDER BY CodiUsua"
  loc_A0980F: ConcatVar var_130
  loc_A09813: CStrVarVal var_134
  loc_A09817: FLdPr Me
  loc_A0981A: MemLdRfVar from_stack_1.BuscarCLS
  loc_A0981D: NewIfNullPr clsbase
  loc_A09820: Call clsbase.RedefineRS(from_stack_1v)
  loc_A09825: FFreeStr var_8C = "": var_90 = ""
  loc_A0982E: FFreeVar var_C0 = "": var_E0 = "": var_100 = "": var_F0 = "": var_110 = ""
  loc_A0983D: LitVarI2 var_A0, 0
  loc_A09842: PopAdLdVar
  loc_A09843: LitStr "Usuario"
  loc_A09846: FLdPr Me
  loc_A09849: VCallAd Control_ID_FiltroCbo
  loc_A0984C: FStAdFunc var_88
  loc_A0984F: FLdPr var_88
  loc_A09852: Me.AddItem from_stack_1, from_stack_2
  loc_A09857: FFree1Ad var_88
  loc_A0985A: LitVarI2 var_A0, 1
  loc_A0985F: PopAdLdVar
  loc_A09860: LitStr "Persona"
  loc_A09863: FLdPr Me
  loc_A09866: VCallAd Control_ID_FiltroCbo
  loc_A09869: FStAdFunc var_88
  loc_A0986C: FLdPr var_88
  loc_A0986F: Me.AddItem from_stack_1, from_stack_2
  loc_A09874: FFree1Ad var_88
  loc_A09877: LitI2_Byte 0
  loc_A09879: FLdPr Me
  loc_A0987C: VCallAd Control_ID_FiltroCbo
  loc_A0987F: FStAdFunc var_88
  loc_A09882: FLdPr var_88
  loc_A09885: Me.ListIndex = from_stack_1
  loc_A0988A: FFree1Ad var_88
  loc_A0988D: LitI4 0
  loc_A09892: LitI4 1
  loc_A09897: FLdRfVar var_138
  loc_A0989A: Redim
  loc_A098A4: FLdPr Me
  loc_A098A7: MemLdRfVar from_stack_1.BuscarCLS
  loc_A098AA: NewIfNullAd
  loc_A098AD: FStAd var_88 
  loc_A098B1: FLdRfVar var_88
  loc_A098B4: CVarRef
  loc_A098B9: ParmAry1St
  loc_A098BF: FLdPr Me
  loc_A098C2: VCallAd Control_ID_dgdABMS
  loc_A098C5: CVarAd
  loc_A098C9: ParmAry1St
  loc_A098CF: FLdRfVar var_138
  loc_A098D2: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_A098D7: ILdRf var_88
  loc_A098DA: CastAd
  loc_A098DD: FLdPr Me
  loc_A098E0: MemStAdFunc
  loc_A098E4: FLdRfVar var_138
  loc_A098E7: Erase
  loc_A098E8: FFree1Ad var_88
  loc_A098EB: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '965EE0
  'Data Table: 41B5AC
  loc_965EC8: ILdRf Me
  loc_965ECB: FStAdNoPop
  loc_965ECF: ImpAdLdRf MemVar_C44F9C
  loc_965ED2: NewIfNullPr Me
  loc_965ED5: Me.Global.Unload from_stack_1
  loc_965EDA: FFree1Ad var_88
  loc_965EDD: ExitProcHresult
  loc_965EDE: AddI2
End Sub

Private Sub Form_Activate() '94D0E8
  'Data Table: 41B5AC
  loc_94D0D4: FLdPr Me
  loc_94D0D7: VCallAd Control_ID_FiltroMsk
  loc_94D0DA: CVarAd
  loc_94D0DE: ImpAdCallFPR4 Proc_261_5_9BDB84()
  loc_94D0E3: FFree1Var var_94 = ""
  loc_94D0E6: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) '9689D0
  'Data Table: 41B5AC
  loc_9689B4: On Error Resume Next
  loc_9689B9: ILdI2 KeyAscii
  loc_9689BC: CI4UI1
  loc_9689BD: LitI4 &HD
  loc_9689C2: EqI4
  loc_9689C3: BranchF loc_9689CD
  loc_9689C8: ImpAdCallFPR4 Proc_261_52_966EEC()
  loc_9689CF: ExitProcHresult
End Sub

Public Function MuestroAnuladosGet() '41BA84
  MuestroAnuladosGet = MuestroAnulados
End Function

Public Sub MuestroAnuladosPut(Value) '41BA93
  MuestroAnulados = Value
End Sub

Public Function global_4306348Get() '41BAA2
  global_4306348Get = global_4306348
End Function

Public Sub global_4306348Put(Value) '41BABC
  global_4306348 = Value
End Sub

Public Sub global_4306348Set(Value) '41BAD6
  global_4306348 = Value
End Sub

Public Function sFiltroGet() '41BAF0
  sFiltroGet = sFiltro
End Function

Public Sub sFiltroPut(Value) '41BAFF
  sFiltro = Value
End Sub

Public Sub Constructor(sWhere) '9AC7A8
  'Data Table: 41B5AC
  loc_9AC724: ILdRf sWhere
  loc_9AC727: FStStrCopy var_88
  loc_9AC72A: LitStr "SELECT u.*, IFNULL(DetaPers,'') DetaPers"
  loc_9AC72D: LitStr " FROM infogov.usuario u"
  loc_9AC730: ConcatStr
  loc_9AC731: FStStrNoPop var_8C
  loc_9AC734: LitStr " LEFT JOIN infogov.persona p ON p.CucuPers = u.CucuPers"
  loc_9AC737: ConcatStr
  loc_9AC738: FStStrNoPop var_90
  loc_9AC73B: LitStr " WHERE TRUE"
  loc_9AC73E: ConcatStr
  loc_9AC73F: CVarStr var_100
  loc_9AC742: LitVarStr var_D0, " AND u.BajaUsua = '' "
  loc_9AC747: FStVarCopyObj var_E0
  loc_9AC74A: FLdRfVar var_E0
  loc_9AC74D: LitVarStr var_B0, vbNullString
  loc_9AC752: FStVarCopyObj var_C0
  loc_9AC755: FLdRfVar var_C0
  loc_9AC758: FLdPr Me
  loc_9AC75B: MemLdRfVar from_stack_1.MuestroAnulados
  loc_9AC75E: CVarRef
  loc_9AC763: FLdRfVar var_F0
  loc_9AC766: ImpAdCallFPR4  = IIf(, , )
  loc_9AC76B: FLdRfVar var_F0
  loc_9AC76E: ConcatVar var_110
  loc_9AC772: ILdRf var_88
  loc_9AC775: CVarStr var_120
  loc_9AC778: ConcatVar var_130
  loc_9AC77C: CStrVarVal var_134
  loc_9AC780: FLdPr Me
  loc_9AC783: MemLdRfVar from_stack_1.BuscarCLS
  loc_9AC786: NewIfNullPr clsbase
  loc_9AC789: Call clsbase.RedefineRS(from_stack_1v)
  loc_9AC78E: FFreeStr var_8C = "": var_90 = ""
  loc_9AC797: FFreeVar var_C0 = "": var_E0 = "": var_100 = "": var_F0 = "": var_110 = ""
  loc_9AC7A6: ExitProcHresult
End Sub
