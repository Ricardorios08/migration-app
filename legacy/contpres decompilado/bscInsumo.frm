VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Begin VB.Form bscInsumo
  Caption = "Buscar Insumo por ..."
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "bscInsumo.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 10950
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
      OleObjectBlob = "bscInsumo.frx":08CA
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
    OleObjectBlob = "bscInsumo.frx":092A
  End
End

Attribute VB_Name = "bscInsumo"

Public MuestroAnulados As Boolean
Public BuscarCLS As New Class
Public sFiltro As String


Private Sub FiltroCbo_Click() '9D0604
  'Data Table: 41AEC0
  loc_9D0518: LitVarStr var_94, vbNullString
  loc_9D051D: PopAdLdVar
  loc_9D051E: FLdPr Me
  loc_9D0521: VCallAd Control_ID_FiltroMsk
  loc_9D0524: FStAdFunc var_A8
  loc_9D0527: FLdPr var_A8
  loc_9D052A: LateIdSt
  loc_9D052F: FFree1Ad var_A8
  loc_9D0532: FLdRfVar var_AA
  loc_9D0535: FLdPr Me
  loc_9D0538: VCallAd Control_ID_FiltroCbo
  loc_9D053B: FStAdFunc var_A8
  loc_9D053E: FLdPr var_A8
  loc_9D0541:  = Me.ListIndex
  loc_9D0546: FLdI2 var_AA
  loc_9D0549: FStI2 var_AC
  loc_9D054C: FFree1Ad var_A8
  loc_9D054F: FLdI2 var_AC
  loc_9D0552: LitI2_Byte 0
  loc_9D0554: EqI2
  loc_9D0555: BranchF loc_9D058F
  loc_9D0558: LitVarStr var_94, "########"
  loc_9D055D: PopAdLdVar
  loc_9D055E: FLdPr Me
  loc_9D0561: VCallAd Control_ID_FiltroMsk
  loc_9D0564: FStAdFunc var_A8
  loc_9D0567: FLdPr var_A8
  loc_9D056A: LateIdSt
  loc_9D056F: FFree1Ad var_A8
  loc_9D0572: LitStr "CodiInsu"
  loc_9D0575: FStStrCopy var_B0
  loc_9D0578: FLdRfVar var_B0
  loc_9D057B: FLdPr Me
  loc_9D057E: MemLdRfVar from_stack_1.BuscarCLS
  loc_9D0581: NewIfNullPr clsbase
  loc_9D0584: Call clsbase.Sort(from_stack_1v)
  loc_9D0589: FFree1Str var_B0
  loc_9D058C: Branch loc_9D0603
  loc_9D058F: FLdI2 var_AC
  loc_9D0592: LitI2_Byte 1
  loc_9D0594: EqI2
  loc_9D0595: BranchF loc_9D05CF
  loc_9D0598: LitVarStr var_94, vbNullString
  loc_9D059D: PopAdLdVar
  loc_9D059E: FLdPr Me
  loc_9D05A1: VCallAd Control_ID_FiltroMsk
  loc_9D05A4: FStAdFunc var_A8
  loc_9D05A7: FLdPr var_A8
  loc_9D05AA: LateIdSt
  loc_9D05AF: FFree1Ad var_A8
  loc_9D05B2: LitStr "DetaInsu"
  loc_9D05B5: FStStrCopy var_B0
  loc_9D05B8: FLdRfVar var_B0
  loc_9D05BB: FLdPr Me
  loc_9D05BE: MemLdRfVar from_stack_1.BuscarCLS
  loc_9D05C1: NewIfNullPr clsbase
  loc_9D05C4: Call clsbase.Sort(from_stack_1v)
  loc_9D05C9: FFree1Str var_B0
  loc_9D05CC: Branch loc_9D0603
  loc_9D05CF: LitVarStr var_94, vbNullString
  loc_9D05D4: PopAdLdVar
  loc_9D05D5: FLdPr Me
  loc_9D05D8: VCallAd Control_ID_FiltroMsk
  loc_9D05DB: FStAdFunc var_A8
  loc_9D05DE: FLdPr var_A8
  loc_9D05E1: LateIdSt
  loc_9D05E6: FFree1Ad var_A8
  loc_9D05E9: LitStr "CodiInsu"
  loc_9D05EC: FStStrCopy var_B0
  loc_9D05EF: FLdRfVar var_B0
  loc_9D05F2: FLdPr Me
  loc_9D05F5: MemLdRfVar from_stack_1.BuscarCLS
  loc_9D05F8: NewIfNullPr clsbase
  loc_9D05FB: Call clsbase.Sort(from_stack_1v)
  loc_9D0600: FFree1Str var_B0
  loc_9D0603: ExitProcHresult
End Sub

Private Sub FiltroMsk_UnknownEvent_0 '94FFE0
  'Data Table: 41AEC0
  loc_94FFCC: FLdPr Me
  loc_94FFCF: VCallAd Control_ID_FiltroMsk
  loc_94FFD2: CVarAd
  loc_94FFD6: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94FFDB: FFree1Var var_94 = ""
  loc_94FFDE: ExitProcHresult
End Sub

Private Sub FiltroMsk_Change() 'A4DDA8
  'Data Table: 41AEC0
  loc_A4DB0C: ILdRf Me
  loc_A4DB0F: CastAd
  loc_A4DB12: FStAdFunc var_88
  loc_A4DB15: FLdRfVar var_88
  loc_A4DB18: ImpAdCallFPR4 Proc_261_10_99CABC()
  loc_A4DB1D: FFree1Ad var_88
  loc_A4DB20: FLdPr Me
  loc_A4DB23: VCallAd Control_ID_FiltroMsk
  loc_A4DB26: FStAdFunc var_88
  loc_A4DB29: FLdPr var_88
  loc_A4DB2C: LateIdLdVar var_98 DispID_22 0
  loc_A4DB33: CStrVarTmp
  loc_A4DB34: FStStrNoPop var_9C
  loc_A4DB37: ImpAdCallI2 Trim$()
  loc_A4DB3C: FStStrNoPop var_A0
  loc_A4DB3F: LitStr vbNullString
  loc_A4DB42: NeStr
  loc_A4DB44: FFreeStr var_9C = ""
  loc_A4DB4B: FFree1Ad var_88
  loc_A4DB4E: FFree1Var var_98 = ""
  loc_A4DB51: BranchF loc_A4DC84
  loc_A4DB54: FLdRfVar var_A2
  loc_A4DB57: FLdPr Me
  loc_A4DB5A: VCallAd Control_ID_FiltroCbo
  loc_A4DB5D: FStAdFunc var_88
  loc_A4DB60: FLdPr var_88
  loc_A4DB63:  = Me.ListIndex
  loc_A4DB68: FLdI2 var_A2
  loc_A4DB6B: LitI2_Byte 0
  loc_A4DB6D: EqI2
  loc_A4DB6E: FFree1Ad var_88
  loc_A4DB71: BranchF loc_A4DBE3
  loc_A4DB74: LitStr "CodiInsu = "
  loc_A4DB77: FLdPr Me
  loc_A4DB7A: VCallAd Control_ID_FiltroMsk
  loc_A4DB7D: FStAdFunc var_88
  loc_A4DB80: FLdPr var_88
  loc_A4DB83: LateIdLdVar var_98 DispID_22 0
  loc_A4DB8A: CStrVarTmp
  loc_A4DB8B: FStStrNoPop var_9C
  loc_A4DB8E: ConcatStr
  loc_A4DB8F: PopTmpLdAdStr
  loc_A4DB93: FLdPr Me
  loc_A4DB96: MemLdRfVar from_stack_1.BuscarCLS
  loc_A4DB99: NewIfNullPr clsbase
  loc_A4DB9C: Call clsbase.Filter(from_stack_1v)
  loc_A4DBA1: FFreeStr var_9C = ""
  loc_A4DBA8: FFree1Ad var_88
  loc_A4DBAB: FFree1Var var_98 = ""
  loc_A4DBAE: LitStr "código sea igual a "
  loc_A4DBB1: FLdPr Me
  loc_A4DBB4: VCallAd Control_ID_FiltroMsk
  loc_A4DBB7: FStAdFunc var_88
  loc_A4DBBA: FLdPr var_88
  loc_A4DBBD: LateIdLdVar var_98 DispID_22 0
  loc_A4DBC4: CStrVarTmp
  loc_A4DBC5: FStStrNoPop var_9C
  loc_A4DBC8: ConcatStr
  loc_A4DBC9: FStStrNoPop var_A0
  loc_A4DBCC: FLdPr Me
  loc_A4DBCF: MemStStrCopy
  loc_A4DBD3: FFreeStr var_9C = ""
  loc_A4DBDA: FFree1Ad var_88
  loc_A4DBDD: FFree1Var var_98 = ""
  loc_A4DBE0: Branch loc_A4DC81
  loc_A4DBE3: FLdRfVar var_A2
  loc_A4DBE6: FLdPr Me
  loc_A4DBE9: VCallAd Control_ID_FiltroCbo
  loc_A4DBEC: FStAdFunc var_88
  loc_A4DBEF: FLdPr var_88
  loc_A4DBF2:  = Me.ListIndex
  loc_A4DBF7: FLdI2 var_A2
  loc_A4DBFA: LitI2_Byte 1
  loc_A4DBFC: EqI2
  loc_A4DBFD: FFree1Ad var_88
  loc_A4DC00: BranchF loc_A4DC81
  loc_A4DC03: LitStr "DetaInsu LIKE '" & Chr(37)
  loc_A4DC06: FLdPr Me
  loc_A4DC09: VCallAd Control_ID_FiltroMsk
  loc_A4DC0C: FStAdFunc var_88
  loc_A4DC0F: FLdPr var_88
  loc_A4DC12: LateIdLdVar var_98 DispID_22 0
  loc_A4DC19: CStrVarTmp
  loc_A4DC1A: FStStrNoPop var_9C
  loc_A4DC1D: ConcatStr
  loc_A4DC1E: FStStrNoPop var_A0
  loc_A4DC21: LitStr Chr(37) & "'"
  loc_A4DC24: ConcatStr
  loc_A4DC25: PopTmpLdAdStr
  loc_A4DC29: FLdPr Me
  loc_A4DC2C: MemLdRfVar from_stack_1.BuscarCLS
  loc_A4DC2F: NewIfNullPr clsbase
  loc_A4DC32: Call clsbase.Filter(from_stack_1v)
  loc_A4DC37: FFreeStr var_9C = "": var_A0 = ""
  loc_A4DC40: FFree1Ad var_88
  loc_A4DC43: FFree1Var var_98 = ""
  loc_A4DC46: LitStr "detalle que contiene "
  loc_A4DC49: FLdPr Me
  loc_A4DC4C: VCallAd Control_ID_FiltroMsk
  loc_A4DC4F: FStAdFunc var_88
  loc_A4DC52: FLdPr var_88
  loc_A4DC55: LateIdLdVar var_98 DispID_22 0
  loc_A4DC5C: CStrVarTmp
  loc_A4DC5D: FStStrNoPop var_9C
  loc_A4DC60: ConcatStr
  loc_A4DC61: FStStrNoPop var_A0
  loc_A4DC64: LitStr vbNullString
  loc_A4DC67: ConcatStr
  loc_A4DC68: FStStrNoPop var_A8
  loc_A4DC6B: FLdPr Me
  loc_A4DC6E: MemStStrCopy
  loc_A4DC72: FFreeStr var_9C = "": var_A0 = ""
  loc_A4DC7B: FFree1Ad var_88
  loc_A4DC7E: FFree1Var var_98 = ""
  loc_A4DC81: Branch loc_A4DCA8
  loc_A4DC84: LitStr vbNullString
  loc_A4DC87: FStStrCopy var_9C
  loc_A4DC8A: FLdRfVar var_9C
  loc_A4DC8D: FLdPr Me
  loc_A4DC90: MemLdRfVar from_stack_1.BuscarCLS
  loc_A4DC93: NewIfNullPr clsbase
  loc_A4DC96: Call clsbase.Filter(from_stack_1v)
  loc_A4DC9B: FFree1Str var_9C
  loc_A4DC9E: LitStr vbNullString
  loc_A4DCA1: FLdPr Me
  loc_A4DCA4: MemStStrCopy
  loc_A4DCA8: FLdRfVar var_AC
  loc_A4DCAB: FLdPr Me
  loc_A4DCAE: MemLdRfVar from_stack_1.BuscarCLS
  loc_A4DCB1: NewIfNullPr clsbase
  loc_A4DCB4: from_stack_1 = clsbase.RecordCount
  loc_A4DCB9: ILdRf var_AC
  loc_A4DCBC: LitI4 0
  loc_A4DCC1: GtI4
  loc_A4DCC2: BranchF loc_A4DD60
  loc_A4DCC5: FLdPr Me
  loc_A4DCC8: MemLdRfVar from_stack_1.BuscarCLS
  loc_A4DCCB: NewIfNullAd
  loc_A4DCCE: FStAd var_B0 
  loc_A4DCD2: FLdRfVar var_B0
  loc_A4DCD5: CVarRef
  loc_A4DCDA: ILdRf Me
  loc_A4DCDD: CastAd
  loc_A4DCE0: FStAdFunc var_88
  loc_A4DCE3: FLdRfVar var_88
  loc_A4DCE6: ImpAdCallFPR4 Proc_261_8_9C2398(, )
  loc_A4DCEB: ILdRf var_B0
  loc_A4DCEE: CastAd
  loc_A4DCF1: FLdPr Me
  loc_A4DCF4: MemStAdFunc
  loc_A4DCF8: FFreeAd var_88 = ""
  loc_A4DCFF: LitI4 0
  loc_A4DD04: LitI4 1
  loc_A4DD09: FLdRfVar var_C4
  loc_A4DD0C: Redim
  loc_A4DD16: FLdPr Me
  loc_A4DD19: MemLdRfVar from_stack_1.BuscarCLS
  loc_A4DD1C: NewIfNullAd
  loc_A4DD1F: FStAd var_88 
  loc_A4DD23: FLdRfVar var_88
  loc_A4DD26: CVarRef
  loc_A4DD2B: ParmAry1St
  loc_A4DD31: FLdPr Me
  loc_A4DD34: VCallAd Control_ID_dgdABMS
  loc_A4DD37: CVarAd
  loc_A4DD3B: ParmAry1St
  loc_A4DD41: FLdRfVar var_C4
  loc_A4DD44: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_A4DD49: ILdRf var_88
  loc_A4DD4C: CastAd
  loc_A4DD4F: FLdPr Me
  loc_A4DD52: MemStAdFunc
  loc_A4DD56: FLdRfVar var_C4
  loc_A4DD59: Erase
  loc_A4DD5A: FFree1Ad var_88
  loc_A4DD5D: Branch loc_A4DD74
  loc_A4DD60: ILdRf Me
  loc_A4DD63: CastAd
  loc_A4DD66: FStAdFunc var_88
  loc_A4DD69: FLdRfVar var_88
  loc_A4DD6C: ImpAdCallFPR4 Proc_261_15_A16E38()
  loc_A4DD71: FFree1Ad var_88
  loc_A4DD74: FLdPr Me
  loc_A4DD77: VCallAd Control_ID_dgdABMS
  loc_A4DD7A: FStAdFunc var_B0
  loc_A4DD7D: LitI4 0
  loc_A4DD82: FStStrCopy var_9C
  loc_A4DD85: FLdRfVar var_9C
  loc_A4DD88: FLdPr Me
  loc_A4DD8B: MemLdStr sFiltro
  loc_A4DD8E: FLdZeroAd var_B0
  loc_A4DD91: FStAdFunc var_88
  loc_A4DD94: FLdRfVar var_88
  loc_A4DD97: ImpAdCallFPR4 Proc_261_62_9D9F1C(, , )
  loc_A4DD9C: FFree1Str var_9C
  loc_A4DD9F: FFreeAd var_88 = ""
  loc_A4DDA6: ExitProcHresult
End Sub

Private Sub FiltroMsk_KeyPress(KeyAscii As Integer) '997124
  'Data Table: 41AEC0
  loc_9970C0: ILdI2 KeyAscii
  loc_9970C3: LitI2_Byte &H27
  loc_9970C5: EqI2
  loc_9970C6: BranchF loc_9970CE
  loc_9970C9: LitI2_Byte 0
  loc_9970CB: IStI2 KeyAscii
  loc_9970CE: FLdRfVar var_88
  loc_9970D1: FLdPr Me
  loc_9970D4: MemLdRfVar from_stack_1.BuscarCLS
  loc_9970D7: NewIfNullPr clsbase
  loc_9970DA: from_stack_1 = clsbase.RecordCount
  loc_9970DF: ILdRf var_88
  loc_9970E2: LitI4 0
  loc_9970E7: EqI4
  loc_9970E8: ILdI2 KeyAscii
  loc_9970EB: CI4UI1
  loc_9970EC: LitI4 8
  loc_9970F1: NeI4
  loc_9970F2: AndI4
  loc_9970F3: FLdPr Me
  loc_9970F6: VCallAd Control_ID_FiltroMsk
  loc_9970F9: FStAdFunc var_8C
  loc_9970FC: FLdPr var_8C
  loc_9970FF: LateIdLdVar var_9C DispID_16 0
  loc_997106: CStrVarTmp
  loc_997107: FStStrNoPop var_A0
  loc_99710A: LitStr vbNullString
  loc_99710D: EqStr
  loc_99710F: AndI4
  loc_997110: FFree1Str var_A0
  loc_997113: FFree1Ad var_8C
  loc_997116: FFree1Var var_9C = ""
  loc_997119: BranchF loc_997121
  loc_99711C: LitI2_Byte 0
  loc_99711E: IStI2 KeyAscii
  loc_997121: ExitProcHresult
  loc_997122: FStAdFunc FiltroMsk_KeyPress878
End Sub

Private Sub dgdABMS_UnknownEvent_0 '955C00
  'Data Table: 41AEC0
  loc_955BE8: FLdPr Me
  loc_955BEB: VCallAd Control_ID_dgdABMS
  loc_955BEE: FStAdFunc var_88
  loc_955BF1: FLdRfVar var_88
  loc_955BF4: ImpAdCallFPR4 Proc_264_0_9758D8()
  loc_955BF9: FFree1Ad var_88
  loc_955BFC: ExitProcHresult
  loc_955BFD: NeI4
  loc_955BFE: NeR8
End Sub

Private Sub dgdABMS_UnknownEvent_1 '955BB4
  'Data Table: 41AEC0
  loc_955B9C: FLdPr Me
  loc_955B9F: VCallAd Control_ID_dgdABMS
  loc_955BA2: FStAdFunc var_88
  loc_955BA5: FLdRfVar var_88
  loc_955BA8: ImpAdCallFPR4 Proc_264_1_96D788()
  loc_955BAD: FFree1Ad var_88
  loc_955BB0: ExitProcHresult
End Sub

Private Sub dgdABMS_DblClick() '955C4C
  'Data Table: 41AEC0
  loc_955C34: ILdRf Me
  loc_955C37: FStAdNoPop
  loc_955C3B: ImpAdLdRf MemVar_C44F9C
  loc_955C3E: NewIfNullPr Me
  loc_955C41: Me.Global.Unload from_stack_1
  loc_955C46: FFree1Ad var_88
  loc_955C49: ExitProcHresult
End Sub

Private Sub dgdABMS_HeadClick(ColIndex As Integer) '99B750
  'Data Table: 41AEC0
  loc_99B6F4: FLdRfVar var_B4
  loc_99B6F7: FLdRfVar var_B0
  loc_99B6FA: FLdI2 ColIndex
  loc_99B6FD: CVarI2 var_A8
  loc_99B700: PopAdLdVar
  loc_99B701: FLdPr Me
  loc_99B704: VCallAd Control_ID_dgdABMS
  loc_99B707: FStAdFunc var_88
  loc_99B70A: FLdPr var_88
  loc_99B70D: LateIdLdVar var_98 DispID_105 0
  loc_99B714: CastAdVar Me
  loc_99B718: FStAdFunc var_AC
  loc_99B71B: FLdPr var_AC
  loc_99B71E: from_stack_2 = Me.Columns.Item(from_stack_1)
  loc_99B723: FLdPr var_B0
  loc_99B726:  = Me.DataField
  loc_99B72B: FLdZeroAd var_B4
  loc_99B72E: PopTmpLdAdStr
  loc_99B732: FLdPr Me
  loc_99B735: MemLdRfVar from_stack_1.BuscarCLS
  loc_99B738: NewIfNullPr clsbase
  loc_99B73B: Call clsbase.Sort(from_stack_1v)
  loc_99B740: FFree1Str var_B8
  loc_99B743: FFreeAd var_88 = "": var_AC = ""
  loc_99B74C: FFree1Var var_98 = ""
  loc_99B74F: ExitProcHresult
End Sub

Private Sub OKButton_Click() '955A84
  'Data Table: 41AEC0
  loc_955A6C: ILdRf Me
  loc_955A6F: FStAdNoPop
  loc_955A73: ImpAdLdRf MemVar_C44F9C
  loc_955A76: NewIfNullPr Me
  loc_955A79: Me.Global.Unload from_stack_1
  loc_955A7E: FFree1Ad var_88
  loc_955A81: ExitProcHresult
End Sub

Private Sub Form_Load() '9F63C8
  'Data Table: 41AEC0
  loc_9F6298: FLdRfVar var_88
  loc_9F629B: FLdPr Me
  loc_9F629E: MemLdRfVar from_stack_1.BuscarCLS
  loc_9F62A1: NewIfNullPr clsbase
  loc_9F62A4: from_stack_1v = clsbase.RsFrmGet()
  loc_9F62A9: ILdRf var_88
  loc_9F62AC: LitNothing
  loc_9F62AE: Is
  loc_9F62B0: FFree1Ad var_88
  loc_9F62B3: BranchF loc_9F6317
  loc_9F62B6: FLdPr Me
  loc_9F62B9: MemLdI2 MuestroAnulados
  loc_9F62BC: BranchF loc_9F62E8
  loc_9F62BF: LitStr "SELECT *"
  loc_9F62C2: LitStr " FROM infogov.insumo"
  loc_9F62C5: ConcatStr
  loc_9F62C6: FStStrNoPop var_8C
  loc_9F62C9: LitStr " ORDER BY CodiInsu"
  loc_9F62CC: ConcatStr
  loc_9F62CD: FStStrNoPop var_90
  loc_9F62D0: FLdPr Me
  loc_9F62D3: MemLdRfVar from_stack_1.BuscarCLS
  loc_9F62D6: NewIfNullPr clsbase
  loc_9F62D9: Call clsbase.RedefineRS(from_stack_1v)
  loc_9F62DE: FFreeStr var_8C = ""
  loc_9F62E5: Branch loc_9F6317
  loc_9F62E8: LitStr "SELECT *"
  loc_9F62EB: LitStr " FROM infogov.insumo"
  loc_9F62EE: ConcatStr
  loc_9F62EF: FStStrNoPop var_8C
  loc_9F62F2: LitStr " WHERE BajaFeho IS NULL"
  loc_9F62F5: ConcatStr
  loc_9F62F6: FStStrNoPop var_90
  loc_9F62F9: LitStr " ORDER BY CodiInsu"
  loc_9F62FC: ConcatStr
  loc_9F62FD: FStStrNoPop var_94
  loc_9F6300: FLdPr Me
  loc_9F6303: MemLdRfVar from_stack_1.BuscarCLS
  loc_9F6306: NewIfNullPr clsbase
  loc_9F6309: Call clsbase.RedefineRS(from_stack_1v)
  loc_9F630E: FFreeStr var_8C = "": var_90 = ""
  loc_9F6317: LitVarI2 var_A4, 0
  loc_9F631C: PopAdLdVar
  loc_9F631D: LitStr "Insumo (Código)"
  loc_9F6320: FLdPr Me
  loc_9F6323: VCallAd Control_ID_FiltroCbo
  loc_9F6326: FStAdFunc var_88
  loc_9F6329: FLdPr var_88
  loc_9F632C: Me.AddItem from_stack_1, from_stack_2
  loc_9F6331: FFree1Ad var_88
  loc_9F6334: LitVarI2 var_A4, 1
  loc_9F6339: PopAdLdVar
  loc_9F633A: LitStr "Insumo (Detalle)"
  loc_9F633D: FLdPr Me
  loc_9F6340: VCallAd Control_ID_FiltroCbo
  loc_9F6343: FStAdFunc var_88
  loc_9F6346: FLdPr var_88
  loc_9F6349: Me.AddItem from_stack_1, from_stack_2
  loc_9F634E: FFree1Ad var_88
  loc_9F6351: LitI2_Byte 1
  loc_9F6353: FLdPr Me
  loc_9F6356: VCallAd Control_ID_FiltroCbo
  loc_9F6359: FStAdFunc var_88
  loc_9F635C: FLdPr var_88
  loc_9F635F: Me.ListIndex = from_stack_1
  loc_9F6364: FFree1Ad var_88
  loc_9F6367: LitI4 0
  loc_9F636C: LitI4 1
  loc_9F6371: FLdRfVar var_A8
  loc_9F6374: Redim
  loc_9F637E: FLdPr Me
  loc_9F6381: MemLdRfVar from_stack_1.BuscarCLS
  loc_9F6384: NewIfNullAd
  loc_9F6387: FStAd var_88 
  loc_9F638B: FLdRfVar var_88
  loc_9F638E: CVarRef
  loc_9F6393: ParmAry1St
  loc_9F6399: FLdPr Me
  loc_9F639C: VCallAd Control_ID_dgdABMS
  loc_9F639F: CVarAd
  loc_9F63A3: ParmAry1St
  loc_9F63A9: FLdRfVar var_A8
  loc_9F63AC: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_9F63B1: ILdRf var_88
  loc_9F63B4: CastAd
  loc_9F63B7: FLdPr Me
  loc_9F63BA: MemStAdFunc
  loc_9F63BE: FLdRfVar var_A8
  loc_9F63C1: Erase
  loc_9F63C2: FFree1Ad var_88
  loc_9F63C5: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '96C8B0
  'Data Table: 41AEC0
  loc_96C890: LitI2_Byte 0
  loc_96C892: FLdPr Me
  loc_96C895: MemStI2 MuestroAnulados
  loc_96C898: ILdRf Me
  loc_96C89B: FStAdNoPop
  loc_96C89F: ImpAdLdRf MemVar_C44F9C
  loc_96C8A2: NewIfNullPr Me
  loc_96C8A5: Me.Global.Unload from_stack_1
  loc_96C8AA: FFree1Ad var_88
  loc_96C8AD: ExitProcHresult
End Sub

Private Sub Form_Activate() '94FF50
  'Data Table: 41AEC0
  loc_94FF3C: FLdPr Me
  loc_94FF3F: VCallAd Control_ID_FiltroMsk
  loc_94FF42: CVarAd
  loc_94FF46: ImpAdCallFPR4 Proc_261_5_9BDB84()
  loc_94FF4B: FFree1Var var_94 = ""
  loc_94FF4E: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) '949F30
  'Data Table: 41AEC0
  loc_949F1C: ILdI2 KeyAscii
  loc_949F1F: CI4UI1
  loc_949F20: LitI4 &HD
  loc_949F25: EqI4
  loc_949F26: BranchF loc_949F2E
  loc_949F29: ImpAdCallFPR4 Proc_261_52_966EEC()
  loc_949F2E: ExitProcHresult
End Sub

Public Function MuestroAnuladosGet() '41B390
  MuestroAnuladosGet = MuestroAnulados
End Function

Public Sub MuestroAnuladosPut(Value) '41B39F
  MuestroAnulados = Value
End Sub

Public Function global_4304576Get() '41B3AE
  global_4304576Get = global_4304576
End Function

Public Sub global_4304576Put(Value) '41B3C8
  global_4304576 = Value
End Sub

Public Sub global_4304576Set(Value) '41B3E2
  global_4304576 = Value
End Sub

Public Function sFiltroGet() '41B3FC
  sFiltroGet = sFiltro
End Function

Public Sub sFiltroPut(Value) '41B40B
  sFiltro = Value
End Sub

Public Sub Constructor(sWhere) '9A308C
  'Data Table: 41AEC0
  loc_9A3018: ILdRf sWhere
  loc_9A301B: FStStrCopy var_88
  loc_9A301E: FLdPr Me
  loc_9A3021: MemLdI2 MuestroAnulados
  loc_9A3024: BranchF loc_9A3059
  loc_9A3027: LitStr "SELECT *"
  loc_9A302A: LitStr " FROM infogov.insumo"
  loc_9A302D: ConcatStr
  loc_9A302E: FStStrNoPop var_8C
  loc_9A3031: LitStr " WHERE TRUE"
  loc_9A3034: ConcatStr
  loc_9A3035: FStStrNoPop var_90
  loc_9A3038: ILdRf var_88
  loc_9A303B: ConcatStr
  loc_9A303C: FStStrNoPop var_94
  loc_9A303F: FLdPr Me
  loc_9A3042: MemLdRfVar from_stack_1.BuscarCLS
  loc_9A3045: NewIfNullPr clsbase
  loc_9A3048: Call clsbase.RedefineRS(from_stack_1v)
  loc_9A304D: FFreeStr var_8C = "": var_90 = ""
  loc_9A3056: Branch loc_9A3088
  loc_9A3059: LitStr "SELECT *"
  loc_9A305C: LitStr " FROM infogov.insumo"
  loc_9A305F: ConcatStr
  loc_9A3060: FStStrNoPop var_8C
  loc_9A3063: LitStr " WHERE BajaFeho IS NULL"
  loc_9A3066: ConcatStr
  loc_9A3067: FStStrNoPop var_90
  loc_9A306A: ILdRf var_88
  loc_9A306D: ConcatStr
  loc_9A306E: FStStrNoPop var_94
  loc_9A3071: FLdPr Me
  loc_9A3074: MemLdRfVar from_stack_1.BuscarCLS
  loc_9A3077: NewIfNullPr clsbase
  loc_9A307A: Call clsbase.RedefineRS(from_stack_1v)
  loc_9A307F: FFreeStr var_8C = "": var_90 = ""
  loc_9A3088: ExitProcHresult
End Sub
