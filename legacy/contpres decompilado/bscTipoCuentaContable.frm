VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Begin VB.Form bscTipoCuentaContable
  Caption = "Buscar Tipo de Cuenta Contable por ..."
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "bscTipoCuentaContable.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 10950
  ClientHeight = 5940
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
      OleObjectBlob = "bscTipoCuentaContable.frx":08CA
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
    OleObjectBlob = "bscTipoCuentaContable.frx":092A
  End
End

Attribute VB_Name = "bscTipoCuentaContable"

Public BuscarCLS As New Class
Public sFiltro As String


Private Sub FiltroCbo_Click() '9CF854
  'Data Table: 418D40
  loc_9CF768: LitVarStr var_94, vbNullString
  loc_9CF76D: PopAdLdVar
  loc_9CF76E: FLdPr Me
  loc_9CF771: VCallAd Control_ID_FiltroMsk
  loc_9CF774: FStAdFunc var_A8
  loc_9CF777: FLdPr var_A8
  loc_9CF77A: LateIdSt
  loc_9CF77F: FFree1Ad var_A8
  loc_9CF782: FLdRfVar var_AA
  loc_9CF785: FLdPr Me
  loc_9CF788: VCallAd Control_ID_FiltroCbo
  loc_9CF78B: FStAdFunc var_A8
  loc_9CF78E: FLdPr var_A8
  loc_9CF791:  = Me.ListIndex
  loc_9CF796: FLdI2 var_AA
  loc_9CF799: FStI2 var_AC
  loc_9CF79C: FFree1Ad var_A8
  loc_9CF79F: FLdI2 var_AC
  loc_9CF7A2: LitI2_Byte 0
  loc_9CF7A4: EqI2
  loc_9CF7A5: BranchF loc_9CF7DF
  loc_9CF7A8: LitVarStr var_94, "####"
  loc_9CF7AD: PopAdLdVar
  loc_9CF7AE: FLdPr Me
  loc_9CF7B1: VCallAd Control_ID_FiltroMsk
  loc_9CF7B4: FStAdFunc var_A8
  loc_9CF7B7: FLdPr var_A8
  loc_9CF7BA: LateIdSt
  loc_9CF7BF: FFree1Ad var_A8
  loc_9CF7C2: LitStr "CodiTicu"
  loc_9CF7C5: FStStrCopy var_B0
  loc_9CF7C8: FLdRfVar var_B0
  loc_9CF7CB: FLdPr Me
  loc_9CF7CE: MemLdRfVar from_stack_1.BuscarCLS
  loc_9CF7D1: NewIfNullPr clsbase
  loc_9CF7D4: Call clsbase.Sort(from_stack_1v)
  loc_9CF7D9: FFree1Str var_B0
  loc_9CF7DC: Branch loc_9CF853
  loc_9CF7DF: FLdI2 var_AC
  loc_9CF7E2: LitI2_Byte 1
  loc_9CF7E4: EqI2
  loc_9CF7E5: BranchF loc_9CF81F
  loc_9CF7E8: LitVarStr var_94, vbNullString
  loc_9CF7ED: PopAdLdVar
  loc_9CF7EE: FLdPr Me
  loc_9CF7F1: VCallAd Control_ID_FiltroMsk
  loc_9CF7F4: FStAdFunc var_A8
  loc_9CF7F7: FLdPr var_A8
  loc_9CF7FA: LateIdSt
  loc_9CF7FF: FFree1Ad var_A8
  loc_9CF802: LitStr "DetaTicu"
  loc_9CF805: FStStrCopy var_B0
  loc_9CF808: FLdRfVar var_B0
  loc_9CF80B: FLdPr Me
  loc_9CF80E: MemLdRfVar from_stack_1.BuscarCLS
  loc_9CF811: NewIfNullPr clsbase
  loc_9CF814: Call clsbase.Sort(from_stack_1v)
  loc_9CF819: FFree1Str var_B0
  loc_9CF81C: Branch loc_9CF853
  loc_9CF81F: LitVarStr var_94, "####"
  loc_9CF824: PopAdLdVar
  loc_9CF825: FLdPr Me
  loc_9CF828: VCallAd Control_ID_FiltroMsk
  loc_9CF82B: FStAdFunc var_A8
  loc_9CF82E: FLdPr var_A8
  loc_9CF831: LateIdSt
  loc_9CF836: FFree1Ad var_A8
  loc_9CF839: LitStr "CodiTicu"
  loc_9CF83C: FStStrCopy var_B0
  loc_9CF83F: FLdRfVar var_B0
  loc_9CF842: FLdPr Me
  loc_9CF845: MemLdRfVar from_stack_1.BuscarCLS
  loc_9CF848: NewIfNullPr clsbase
  loc_9CF84B: Call clsbase.Sort(from_stack_1v)
  loc_9CF850: FFree1Str var_B0
  loc_9CF853: ExitProcHresult
End Sub

Private Sub FiltroMsk_UnknownEvent_0 '952110
  'Data Table: 418D40
  loc_9520FC: FLdPr Me
  loc_9520FF: VCallAd Control_ID_FiltroMsk
  loc_952102: CVarAd
  loc_952106: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_95210B: FFree1Var var_94 = ""
  loc_95210E: ExitProcHresult
End Sub

Private Sub FiltroMsk_Change() 'A4F250
  'Data Table: 418D40
  loc_A4EFAC: ILdRf Me
  loc_A4EFAF: CastAd
  loc_A4EFB2: FStAdFunc var_88
  loc_A4EFB5: FLdRfVar var_88
  loc_A4EFB8: ImpAdCallFPR4 Proc_261_10_99CABC()
  loc_A4EFBD: FFree1Ad var_88
  loc_A4EFC0: FLdPr Me
  loc_A4EFC3: VCallAd Control_ID_FiltroMsk
  loc_A4EFC6: FStAdFunc var_88
  loc_A4EFC9: FLdPr var_88
  loc_A4EFCC: LateIdLdVar var_98 DispID_22 0
  loc_A4EFD3: CStrVarTmp
  loc_A4EFD4: FStStrNoPop var_9C
  loc_A4EFD7: ImpAdCallI2 Trim$()
  loc_A4EFDC: FStStrNoPop var_A0
  loc_A4EFDF: LitStr vbNullString
  loc_A4EFE2: NeStr
  loc_A4EFE4: FFreeStr var_9C = ""
  loc_A4EFEB: FFree1Ad var_88
  loc_A4EFEE: FFree1Var var_98 = ""
  loc_A4EFF1: BranchF loc_A4F12D
  loc_A4EFF4: FLdRfVar var_A2
  loc_A4EFF7: FLdPr Me
  loc_A4EFFA: VCallAd Control_ID_FiltroCbo
  loc_A4EFFD: FStAdFunc var_88
  loc_A4F000: FLdPr var_88
  loc_A4F003:  = Me.ListIndex
  loc_A4F008: FLdI2 var_A2
  loc_A4F00B: LitI2_Byte 0
  loc_A4F00D: EqI2
  loc_A4F00E: FFree1Ad var_88
  loc_A4F011: BranchF loc_A4F08C
  loc_A4F014: LitStr "CodiTicu like '"
  loc_A4F017: FLdPr Me
  loc_A4F01A: VCallAd Control_ID_FiltroMsk
  loc_A4F01D: FStAdFunc var_88
  loc_A4F020: FLdPr var_88
  loc_A4F023: LateIdLdVar var_98 DispID_22 0
  loc_A4F02A: CStrVarTmp
  loc_A4F02B: FStStrNoPop var_9C
  loc_A4F02E: ConcatStr
  loc_A4F02F: FStStrNoPop var_A0
  loc_A4F032: LitStr Chr(37) & "'"
  loc_A4F035: ConcatStr
  loc_A4F036: PopTmpLdAdStr
  loc_A4F03A: FLdPr Me
  loc_A4F03D: MemLdRfVar from_stack_1.BuscarCLS
  loc_A4F040: NewIfNullPr clsbase
  loc_A4F043: Call clsbase.Filter(from_stack_1v)
  loc_A4F048: FFreeStr var_9C = "": var_A0 = ""
  loc_A4F051: FFree1Ad var_88
  loc_A4F054: FFree1Var var_98 = ""
  loc_A4F057: LitStr "código comience con "
  loc_A4F05A: FLdPr Me
  loc_A4F05D: VCallAd Control_ID_FiltroMsk
  loc_A4F060: FStAdFunc var_88
  loc_A4F063: FLdPr var_88
  loc_A4F066: LateIdLdVar var_98 DispID_22 0
  loc_A4F06D: CStrVarTmp
  loc_A4F06E: FStStrNoPop var_9C
  loc_A4F071: ConcatStr
  loc_A4F072: FStStrNoPop var_A0
  loc_A4F075: FLdPr Me
  loc_A4F078: MemStStrCopy
  loc_A4F07C: FFreeStr var_9C = ""
  loc_A4F083: FFree1Ad var_88
  loc_A4F086: FFree1Var var_98 = ""
  loc_A4F089: Branch loc_A4F12A
  loc_A4F08C: FLdRfVar var_A2
  loc_A4F08F: FLdPr Me
  loc_A4F092: VCallAd Control_ID_FiltroCbo
  loc_A4F095: FStAdFunc var_88
  loc_A4F098: FLdPr var_88
  loc_A4F09B:  = Me.ListIndex
  loc_A4F0A0: FLdI2 var_A2
  loc_A4F0A3: LitI2_Byte 1
  loc_A4F0A5: EqI2
  loc_A4F0A6: FFree1Ad var_88
  loc_A4F0A9: BranchF loc_A4F12A
  loc_A4F0AC: LitStr "DetaTicu LIKE '" & Chr(37)
  loc_A4F0AF: FLdPr Me
  loc_A4F0B2: VCallAd Control_ID_FiltroMsk
  loc_A4F0B5: FStAdFunc var_88
  loc_A4F0B8: FLdPr var_88
  loc_A4F0BB: LateIdLdVar var_98 DispID_22 0
  loc_A4F0C2: CStrVarTmp
  loc_A4F0C3: FStStrNoPop var_9C
  loc_A4F0C6: ConcatStr
  loc_A4F0C7: FStStrNoPop var_A0
  loc_A4F0CA: LitStr Chr(37) & "'"
  loc_A4F0CD: ConcatStr
  loc_A4F0CE: PopTmpLdAdStr
  loc_A4F0D2: FLdPr Me
  loc_A4F0D5: MemLdRfVar from_stack_1.BuscarCLS
  loc_A4F0D8: NewIfNullPr clsbase
  loc_A4F0DB: Call clsbase.Filter(from_stack_1v)
  loc_A4F0E0: FFreeStr var_9C = "": var_A0 = ""
  loc_A4F0E9: FFree1Ad var_88
  loc_A4F0EC: FFree1Var var_98 = ""
  loc_A4F0EF: LitStr "detalle que contiene "
  loc_A4F0F2: FLdPr Me
  loc_A4F0F5: VCallAd Control_ID_FiltroMsk
  loc_A4F0F8: FStAdFunc var_88
  loc_A4F0FB: FLdPr var_88
  loc_A4F0FE: LateIdLdVar var_98 DispID_22 0
  loc_A4F105: CStrVarTmp
  loc_A4F106: FStStrNoPop var_9C
  loc_A4F109: ConcatStr
  loc_A4F10A: FStStrNoPop var_A0
  loc_A4F10D: LitStr vbNullString
  loc_A4F110: ConcatStr
  loc_A4F111: FStStrNoPop var_A8
  loc_A4F114: FLdPr Me
  loc_A4F117: MemStStrCopy
  loc_A4F11B: FFreeStr var_9C = "": var_A0 = ""
  loc_A4F124: FFree1Ad var_88
  loc_A4F127: FFree1Var var_98 = ""
  loc_A4F12A: Branch loc_A4F151
  loc_A4F12D: LitStr vbNullString
  loc_A4F130: FStStrCopy var_9C
  loc_A4F133: FLdRfVar var_9C
  loc_A4F136: FLdPr Me
  loc_A4F139: MemLdRfVar from_stack_1.BuscarCLS
  loc_A4F13C: NewIfNullPr clsbase
  loc_A4F13F: Call clsbase.Filter(from_stack_1v)
  loc_A4F144: FFree1Str var_9C
  loc_A4F147: LitStr vbNullString
  loc_A4F14A: FLdPr Me
  loc_A4F14D: MemStStrCopy
  loc_A4F151: FLdRfVar var_AC
  loc_A4F154: FLdPr Me
  loc_A4F157: MemLdRfVar from_stack_1.BuscarCLS
  loc_A4F15A: NewIfNullPr clsbase
  loc_A4F15D: from_stack_1 = clsbase.RecordCount
  loc_A4F162: ILdRf var_AC
  loc_A4F165: LitI4 0
  loc_A4F16A: GtI4
  loc_A4F16B: BranchF loc_A4F209
  loc_A4F16E: FLdPr Me
  loc_A4F171: MemLdRfVar from_stack_1.BuscarCLS
  loc_A4F174: NewIfNullAd
  loc_A4F177: FStAd var_B0 
  loc_A4F17B: FLdRfVar var_B0
  loc_A4F17E: CVarRef
  loc_A4F183: ILdRf Me
  loc_A4F186: CastAd
  loc_A4F189: FStAdFunc var_88
  loc_A4F18C: FLdRfVar var_88
  loc_A4F18F: ImpAdCallFPR4 Proc_261_8_9C2398(, )
  loc_A4F194: ILdRf var_B0
  loc_A4F197: CastAd
  loc_A4F19A: FLdPr Me
  loc_A4F19D: MemStAdFunc
  loc_A4F1A1: FFreeAd var_88 = ""
  loc_A4F1A8: LitI4 0
  loc_A4F1AD: LitI4 1
  loc_A4F1B2: FLdRfVar var_C4
  loc_A4F1B5: Redim
  loc_A4F1BF: FLdPr Me
  loc_A4F1C2: MemLdRfVar from_stack_1.BuscarCLS
  loc_A4F1C5: NewIfNullAd
  loc_A4F1C8: FStAd var_88 
  loc_A4F1CC: FLdRfVar var_88
  loc_A4F1CF: CVarRef
  loc_A4F1D4: ParmAry1St
  loc_A4F1DA: FLdPr Me
  loc_A4F1DD: VCallAd Control_ID_dgdABMS
  loc_A4F1E0: CVarAd
  loc_A4F1E4: ParmAry1St
  loc_A4F1EA: FLdRfVar var_C4
  loc_A4F1ED: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_A4F1F2: ILdRf var_88
  loc_A4F1F5: CastAd
  loc_A4F1F8: FLdPr Me
  loc_A4F1FB: MemStAdFunc
  loc_A4F1FF: FLdRfVar var_C4
  loc_A4F202: Erase
  loc_A4F203: FFree1Ad var_88
  loc_A4F206: Branch loc_A4F21D
  loc_A4F209: ILdRf Me
  loc_A4F20C: CastAd
  loc_A4F20F: FStAdFunc var_88
  loc_A4F212: FLdRfVar var_88
  loc_A4F215: ImpAdCallFPR4 Proc_261_15_A16E38()
  loc_A4F21A: FFree1Ad var_88
  loc_A4F21D: FLdPr Me
  loc_A4F220: VCallAd Control_ID_dgdABMS
  loc_A4F223: FStAdFunc var_B0
  loc_A4F226: LitI4 0
  loc_A4F22B: FStStrCopy var_9C
  loc_A4F22E: FLdRfVar var_9C
  loc_A4F231: FLdPr Me
  loc_A4F234: MemLdStr sFiltro
  loc_A4F237: FLdZeroAd var_B0
  loc_A4F23A: FStAdFunc var_88
  loc_A4F23D: FLdRfVar var_88
  loc_A4F240: ImpAdCallFPR4 Proc_261_62_9D9F1C(, , )
  loc_A4F245: FFree1Str var_9C
  loc_A4F248: FFreeAd var_88 = ""
  loc_A4F24F: ExitProcHresult
End Sub

Private Sub FiltroMsk_KeyPress(KeyAscii As Integer) '998A24
  'Data Table: 418D40
  loc_9989C0: ILdI2 KeyAscii
  loc_9989C3: LitI2_Byte &H27
  loc_9989C5: EqI2
  loc_9989C6: BranchF loc_9989CE
  loc_9989C9: LitI2_Byte 0
  loc_9989CB: IStI2 KeyAscii
  loc_9989CE: FLdRfVar var_88
  loc_9989D1: FLdPr Me
  loc_9989D4: MemLdRfVar from_stack_1.BuscarCLS
  loc_9989D7: NewIfNullPr clsbase
  loc_9989DA: from_stack_1 = clsbase.RecordCount
  loc_9989DF: ILdRf var_88
  loc_9989E2: LitI4 0
  loc_9989E7: EqI4
  loc_9989E8: ILdI2 KeyAscii
  loc_9989EB: CI4UI1
  loc_9989EC: LitI4 8
  loc_9989F1: NeI4
  loc_9989F2: AndI4
  loc_9989F3: FLdPr Me
  loc_9989F6: VCallAd Control_ID_FiltroMsk
  loc_9989F9: FStAdFunc var_8C
  loc_9989FC: FLdPr var_8C
  loc_9989FF: LateIdLdVar var_9C DispID_16 0
  loc_998A06: CStrVarTmp
  loc_998A07: FStStrNoPop var_A0
  loc_998A0A: LitStr vbNullString
  loc_998A0D: EqStr
  loc_998A0F: AndI4
  loc_998A10: FFree1Str var_A0
  loc_998A13: FFree1Ad var_8C
  loc_998A16: FFree1Var var_9C = ""
  loc_998A19: BranchF loc_998A21
  loc_998A1C: LitI2_Byte 0
  loc_998A1E: IStI2 KeyAscii
  loc_998A21: ExitProcHresult
  loc_998A22: LitStr "?@($"
End Sub

Private Sub dgdABMS_UnknownEvent_0 '956F00
  'Data Table: 418D40
  loc_956EE8: FLdPr Me
  loc_956EEB: VCallAd Control_ID_dgdABMS
  loc_956EEE: FStAdFunc var_88
  loc_956EF1: FLdRfVar var_88
  loc_956EF4: ImpAdCallFPR4 Proc_264_0_9758D8()
  loc_956EF9: FFree1Ad var_88
  loc_956EFC: ExitProcHresult
End Sub

Private Sub dgdABMS_UnknownEvent_1 '956EB4
  'Data Table: 418D40
  loc_956E9C: FLdPr Me
  loc_956E9F: VCallAd Control_ID_dgdABMS
  loc_956EA2: FStAdFunc var_88
  loc_956EA5: FLdRfVar var_88
  loc_956EA8: ImpAdCallFPR4 Proc_264_1_96D788()
  loc_956EAD: FFree1Ad var_88
  loc_956EB0: ExitProcHresult
End Sub

Private Sub dgdABMS_DblClick() '956F4C
  'Data Table: 418D40
  loc_956F34: ILdRf Me
  loc_956F37: FStAdNoPop
  loc_956F3B: ImpAdLdRf MemVar_C44F9C
  loc_956F3E: NewIfNullPr Me
  loc_956F41: Me.Global.Unload from_stack_1
  loc_956F46: FFree1Ad var_88
  loc_956F49: ExitProcHresult
End Sub

Private Sub dgdABMS_HeadClick(ColIndex As Integer) '99A0E4
  'Data Table: 418D40
  loc_99A088: FLdRfVar var_B4
  loc_99A08B: FLdRfVar var_B0
  loc_99A08E: FLdI2 ColIndex
  loc_99A091: CVarI2 var_A8
  loc_99A094: PopAdLdVar
  loc_99A095: FLdPr Me
  loc_99A098: VCallAd Control_ID_dgdABMS
  loc_99A09B: FStAdFunc var_88
  loc_99A09E: FLdPr var_88
  loc_99A0A1: LateIdLdVar var_98 DispID_105 0
  loc_99A0A8: CastAdVar Me
  loc_99A0AC: FStAdFunc var_AC
  loc_99A0AF: FLdPr var_AC
  loc_99A0B2: from_stack_2 = Me.Columns.Item(from_stack_1)
  loc_99A0B7: FLdPr var_B0
  loc_99A0BA:  = Me.DataField
  loc_99A0BF: FLdZeroAd var_B4
  loc_99A0C2: PopTmpLdAdStr
  loc_99A0C6: FLdPr Me
  loc_99A0C9: MemLdRfVar from_stack_1.BuscarCLS
  loc_99A0CC: NewIfNullPr clsbase
  loc_99A0CF: Call clsbase.Sort(from_stack_1v)
  loc_99A0D4: FFree1Str var_B8
  loc_99A0D7: FFreeAd var_88 = "": var_AC = ""
  loc_99A0E0: FFree1Var var_98 = ""
  loc_99A0E3: ExitProcHresult
End Sub

Private Sub OKButton_Click() '956580
  'Data Table: 418D40
  loc_956568: ILdRf Me
  loc_95656B: FStAdNoPop
  loc_95656F: ImpAdLdRf MemVar_C44F9C
  loc_956572: NewIfNullPr Me
  loc_956575: Me.Global.Unload from_stack_1
  loc_95657A: FFree1Ad var_88
  loc_95657D: ExitProcHresult
End Sub

Private Sub Form_Load() '9C6F0C
  'Data Table: 418D40
  loc_9C6E40: LitStr "SELECT CodiTicu, DetaTicu, IF(ImpuTicu=0,'No','Si') ImpuTicu"
  loc_9C6E43: LitStr " FROM tipocuco"
  loc_9C6E46: ConcatStr
  loc_9C6E47: FStStrNoPop var_88
  loc_9C6E4A: FLdPr Me
  loc_9C6E4D: MemLdRfVar from_stack_1.BuscarCLS
  loc_9C6E50: NewIfNullPr clsbase
  loc_9C6E53: Call clsbase.RedefineRS(from_stack_1v)
  loc_9C6E58: FFree1Str var_88
  loc_9C6E5B: LitVarI2 var_98, 0
  loc_9C6E60: PopAdLdVar
  loc_9C6E61: LitStr "Tipo de Cuenta Contable (Código)"
  loc_9C6E64: FLdPr Me
  loc_9C6E67: VCallAd Control_ID_FiltroCbo
  loc_9C6E6A: FStAdFunc var_9C
  loc_9C6E6D: FLdPr var_9C
  loc_9C6E70: Me.AddItem from_stack_1, from_stack_2
  loc_9C6E75: FFree1Ad var_9C
  loc_9C6E78: LitVarI2 var_98, 1
  loc_9C6E7D: PopAdLdVar
  loc_9C6E7E: LitStr "Tipo de Cuenta Contable (Detalle)"
  loc_9C6E81: FLdPr Me
  loc_9C6E84: VCallAd Control_ID_FiltroCbo
  loc_9C6E87: FStAdFunc var_9C
  loc_9C6E8A: FLdPr var_9C
  loc_9C6E8D: Me.AddItem from_stack_1, from_stack_2
  loc_9C6E92: FFree1Ad var_9C
  loc_9C6E95: LitI2_Byte 0
  loc_9C6E97: FLdPr Me
  loc_9C6E9A: VCallAd Control_ID_FiltroCbo
  loc_9C6E9D: FStAdFunc var_9C
  loc_9C6EA0: FLdPr var_9C
  loc_9C6EA3: Me.ListIndex = from_stack_1
  loc_9C6EA8: FFree1Ad var_9C
  loc_9C6EAB: LitI4 0
  loc_9C6EB0: LitI4 1
  loc_9C6EB5: FLdRfVar var_A0
  loc_9C6EB8: Redim
  loc_9C6EC2: FLdPr Me
  loc_9C6EC5: MemLdRfVar from_stack_1.BuscarCLS
  loc_9C6EC8: NewIfNullAd
  loc_9C6ECB: FStAd var_9C 
  loc_9C6ECF: FLdRfVar var_9C
  loc_9C6ED2: CVarRef
  loc_9C6ED7: ParmAry1St
  loc_9C6EDD: FLdPr Me
  loc_9C6EE0: VCallAd Control_ID_dgdABMS
  loc_9C6EE3: CVarAd
  loc_9C6EE7: ParmAry1St
  loc_9C6EED: FLdRfVar var_A0
  loc_9C6EF0: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_9C6EF5: ILdRf var_9C
  loc_9C6EF8: CastAd
  loc_9C6EFB: FLdPr Me
  loc_9C6EFE: MemStAdFunc
  loc_9C6F02: FLdRfVar var_A0
  loc_9C6F05: Erase
  loc_9C6F06: FFree1Ad var_9C
  loc_9C6F09: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9567E0
  'Data Table: 418D40
  loc_9567C8: ILdRf Me
  loc_9567CB: FStAdNoPop
  loc_9567CF: ImpAdLdRf MemVar_C44F9C
  loc_9567D2: NewIfNullPr Me
  loc_9567D5: Me.Global.Unload from_stack_1
  loc_9567DA: FFree1Ad var_88
  loc_9567DD: ExitProcHresult
End Sub

Private Sub Form_Activate() '953280
  'Data Table: 418D40
  loc_95326C: FLdPr Me
  loc_95326F: VCallAd Control_ID_FiltroMsk
  loc_953272: CVarAd
  loc_953276: ImpAdCallFPR4 Proc_261_5_9BDB84()
  loc_95327B: FFree1Var var_94 = ""
  loc_95327E: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) '9495E4
  'Data Table: 418D40
  loc_9495D0: ILdI2 KeyAscii
  loc_9495D3: CI4UI1
  loc_9495D4: LitI4 &HD
  loc_9495D9: EqI4
  loc_9495DA: BranchF loc_9495E2
  loc_9495DD: ImpAdCallFPR4 Proc_261_52_966EEC()
  loc_9495E2: ExitProcHresult
End Sub

Public Function global_4296000Get() '4191F4
  global_4296000Get = global_4296000
End Function

Public Sub global_4296000Put(Value) '41920E
  global_4296000 = Value
End Sub

Public Sub global_4296000Set(Value) '419228
  global_4296000 = Value
End Sub

Public Function sFiltroGet() '419242
  sFiltroGet = sFiltro
End Function

Public Sub sFiltroPut(Value) '419251
  sFiltro = Value
End Sub
