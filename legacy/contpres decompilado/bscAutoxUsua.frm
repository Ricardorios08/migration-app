VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Begin VB.Form bscAutoxUsua
  Caption = "Buscar Autorizado por Usuario hasta el "
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "bscAutoxUsua.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 14175
  ClientHeight = 5895
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
      OleObjectBlob = "bscAutoxUsua.frx":08CA
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
    Width = 13935
    Height = 3735
    Tag = "1"
    TabIndex = 3
    OleObjectBlob = "bscAutoxUsua.frx":092A
  End
End

Attribute VB_Name = "bscAutoxUsua"

Public iPeriInfo As Integer
Public sCodiOrga As String
Public sFecha As String
Public BuscarCLS As New Class
Public sFiltro As String


Private Sub FiltroCbo_Click() '9EBD90
  'Data Table: 41F5A8
  loc_9EBC58: LitVarStr var_94, vbNullString
  loc_9EBC5D: PopAdLdVar
  loc_9EBC5E: FLdPr Me
  loc_9EBC61: VCallAd Control_ID_FiltroMsk
  loc_9EBC64: FStAdFunc var_A8
  loc_9EBC67: FLdPr var_A8
  loc_9EBC6A: LateIdSt
  loc_9EBC6F: FFree1Ad var_A8
  loc_9EBC72: FLdRfVar var_AA
  loc_9EBC75: FLdPr Me
  loc_9EBC78: VCallAd Control_ID_FiltroCbo
  loc_9EBC7B: FStAdFunc var_A8
  loc_9EBC7E: FLdPr var_A8
  loc_9EBC81:  = Me.ListIndex
  loc_9EBC86: FLdI2 var_AA
  loc_9EBC89: FStI2 var_AC
  loc_9EBC8C: FFree1Ad var_A8
  loc_9EBC8F: FLdI2 var_AC
  loc_9EBC92: LitI2_Byte 0
  loc_9EBC94: EqI2
  loc_9EBC95: BranchF loc_9EBCCF
  loc_9EBC98: LitVarStr var_94, "#.#.#.#.##.##"
  loc_9EBC9D: PopAdLdVar
  loc_9EBC9E: FLdPr Me
  loc_9EBCA1: VCallAd Control_ID_FiltroMsk
  loc_9EBCA4: FStAdFunc var_A8
  loc_9EBCA7: FLdPr var_A8
  loc_9EBCAA: LateIdSt
  loc_9EBCAF: FFree1Ad var_A8
  loc_9EBCB2: LitStr "CodiOrga"
  loc_9EBCB5: FStStrCopy var_B0
  loc_9EBCB8: FLdRfVar var_B0
  loc_9EBCBB: FLdPr Me
  loc_9EBCBE: MemLdRfVar from_stack_1.BuscarCLS
  loc_9EBCC1: NewIfNullPr clsbase
  loc_9EBCC4: Call clsbase.Sort(from_stack_1v)
  loc_9EBCC9: FFree1Str var_B0
  loc_9EBCCC: Branch loc_9EBD8C
  loc_9EBCCF: FLdI2 var_AC
  loc_9EBCD2: LitI2_Byte 1
  loc_9EBCD4: EqI2
  loc_9EBCD5: BranchF loc_9EBD0F
  loc_9EBCD8: LitVarStr var_94, vbNullString
  loc_9EBCDD: PopAdLdVar
  loc_9EBCDE: FLdPr Me
  loc_9EBCE1: VCallAd Control_ID_FiltroMsk
  loc_9EBCE4: FStAdFunc var_A8
  loc_9EBCE7: FLdPr var_A8
  loc_9EBCEA: LateIdSt
  loc_9EBCEF: FFree1Ad var_A8
  loc_9EBCF2: LitStr "DetaOrga"
  loc_9EBCF5: FStStrCopy var_B0
  loc_9EBCF8: FLdRfVar var_B0
  loc_9EBCFB: FLdPr Me
  loc_9EBCFE: MemLdRfVar from_stack_1.BuscarCLS
  loc_9EBD01: NewIfNullPr clsbase
  loc_9EBD04: Call clsbase.Sort(from_stack_1v)
  loc_9EBD09: FFree1Str var_B0
  loc_9EBD0C: Branch loc_9EBD8C
  loc_9EBD0F: FLdI2 var_AC
  loc_9EBD12: LitI2_Byte 2
  loc_9EBD14: EqI2
  loc_9EBD15: BranchF loc_9EBD4F
  loc_9EBD18: LitVarStr var_94, "#.#.##.##.##.##"
  loc_9EBD1D: PopAdLdVar
  loc_9EBD1E: FLdPr Me
  loc_9EBD21: VCallAd Control_ID_FiltroMsk
  loc_9EBD24: FStAdFunc var_A8
  loc_9EBD27: FLdPr var_A8
  loc_9EBD2A: LateIdSt
  loc_9EBD2F: FFree1Ad var_A8
  loc_9EBD32: LitStr "CodiPart"
  loc_9EBD35: FStStrCopy var_B0
  loc_9EBD38: FLdRfVar var_B0
  loc_9EBD3B: FLdPr Me
  loc_9EBD3E: MemLdRfVar from_stack_1.BuscarCLS
  loc_9EBD41: NewIfNullPr clsbase
  loc_9EBD44: Call clsbase.Sort(from_stack_1v)
  loc_9EBD49: FFree1Str var_B0
  loc_9EBD4C: Branch loc_9EBD8C
  loc_9EBD4F: FLdI2 var_AC
  loc_9EBD52: LitI2_Byte 3
  loc_9EBD54: EqI2
  loc_9EBD55: BranchF loc_9EBD8C
  loc_9EBD58: LitVarStr var_94, vbNullString
  loc_9EBD5D: PopAdLdVar
  loc_9EBD5E: FLdPr Me
  loc_9EBD61: VCallAd Control_ID_FiltroMsk
  loc_9EBD64: FStAdFunc var_A8
  loc_9EBD67: FLdPr var_A8
  loc_9EBD6A: LateIdSt
  loc_9EBD6F: FFree1Ad var_A8
  loc_9EBD72: LitStr "DetaPart"
  loc_9EBD75: FStStrCopy var_B0
  loc_9EBD78: FLdRfVar var_B0
  loc_9EBD7B: FLdPr Me
  loc_9EBD7E: MemLdRfVar from_stack_1.BuscarCLS
  loc_9EBD81: NewIfNullPr clsbase
  loc_9EBD84: Call clsbase.Sort(from_stack_1v)
  loc_9EBD89: FFree1Str var_B0
  loc_9EBD8C: ExitProcHresult
  loc_9EBD8D: LdFixedStr
End Sub

Private Sub FiltroMsk_UnknownEvent_0 '952278
  'Data Table: 41F5A8
  loc_952264: FLdPr Me
  loc_952267: VCallAd Control_ID_FiltroMsk
  loc_95226A: CVarAd
  loc_95226E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_952273: FFree1Var var_94 = ""
  loc_952276: ExitProcHresult
End Sub

Private Sub FiltroMsk_Change() 'A7B194
  'Data Table: 41F5A8
  loc_A7ADB4: ILdRf Me
  loc_A7ADB7: CastAd
  loc_A7ADBA: FStAdFunc var_88
  loc_A7ADBD: FLdRfVar var_88
  loc_A7ADC0: ImpAdCallFPR4 Proc_261_10_99CABC()
  loc_A7ADC5: FFree1Ad var_88
  loc_A7ADC8: FLdPr Me
  loc_A7ADCB: VCallAd Control_ID_FiltroMsk
  loc_A7ADCE: FStAdFunc var_88
  loc_A7ADD1: FLdPr var_88
  loc_A7ADD4: LateIdLdVar var_98 DispID_22 0
  loc_A7ADDB: CStrVarTmp
  loc_A7ADDC: FStStrNoPop var_9C
  loc_A7ADDF: ImpAdCallI2 Trim$()
  loc_A7ADE4: FStStrNoPop var_A0
  loc_A7ADE7: LitStr vbNullString
  loc_A7ADEA: NeStr
  loc_A7ADEC: FFreeStr var_9C = ""
  loc_A7ADF3: FFree1Ad var_88
  loc_A7ADF6: FFree1Var var_98 = ""
  loc_A7ADF9: BranchF loc_A7B06E
  loc_A7ADFC: FLdRfVar var_A2
  loc_A7ADFF: FLdPr Me
  loc_A7AE02: VCallAd Control_ID_FiltroCbo
  loc_A7AE05: FStAdFunc var_88
  loc_A7AE08: FLdPr var_88
  loc_A7AE0B:  = Me.ListIndex
  loc_A7AE10: FLdI2 var_A2
  loc_A7AE13: LitI2_Byte 0
  loc_A7AE15: EqI2
  loc_A7AE16: FFree1Ad var_88
  loc_A7AE19: BranchF loc_A7AE94
  loc_A7AE1C: LitStr "CodiOrga LIKE '"
  loc_A7AE1F: FLdPr Me
  loc_A7AE22: VCallAd Control_ID_FiltroMsk
  loc_A7AE25: FStAdFunc var_88
  loc_A7AE28: FLdPr var_88
  loc_A7AE2B: LateIdLdVar var_98 DispID_22 0
  loc_A7AE32: CStrVarTmp
  loc_A7AE33: FStStrNoPop var_9C
  loc_A7AE36: ConcatStr
  loc_A7AE37: FStStrNoPop var_A0
  loc_A7AE3A: LitStr Chr(37) & "'"
  loc_A7AE3D: ConcatStr
  loc_A7AE3E: PopTmpLdAdStr
  loc_A7AE42: FLdPr Me
  loc_A7AE45: MemLdRfVar from_stack_1.BuscarCLS
  loc_A7AE48: NewIfNullPr clsbase
  loc_A7AE4B: Call clsbase.Filter(from_stack_1v)
  loc_A7AE50: FFreeStr var_9C = "": var_A0 = ""
  loc_A7AE59: FFree1Ad var_88
  loc_A7AE5C: FFree1Var var_98 = ""
  loc_A7AE5F: LitStr "código comience con: "
  loc_A7AE62: FLdPr Me
  loc_A7AE65: VCallAd Control_ID_FiltroMsk
  loc_A7AE68: FStAdFunc var_88
  loc_A7AE6B: FLdPr var_88
  loc_A7AE6E: LateIdLdVar var_98 DispID_22 0
  loc_A7AE75: CStrVarTmp
  loc_A7AE76: FStStrNoPop var_9C
  loc_A7AE79: ConcatStr
  loc_A7AE7A: FStStrNoPop var_A0
  loc_A7AE7D: FLdPr Me
  loc_A7AE80: MemStStrCopy
  loc_A7AE84: FFreeStr var_9C = ""
  loc_A7AE8B: FFree1Ad var_88
  loc_A7AE8E: FFree1Var var_98 = ""
  loc_A7AE91: Branch loc_A7B06B
  loc_A7AE94: FLdRfVar var_A2
  loc_A7AE97: FLdPr Me
  loc_A7AE9A: VCallAd Control_ID_FiltroCbo
  loc_A7AE9D: FStAdFunc var_88
  loc_A7AEA0: FLdPr var_88
  loc_A7AEA3:  = Me.ListIndex
  loc_A7AEA8: FLdI2 var_A2
  loc_A7AEAB: LitI2_Byte 1
  loc_A7AEAD: EqI2
  loc_A7AEAE: FFree1Ad var_88
  loc_A7AEB1: BranchF loc_A7AF35
  loc_A7AEB4: LitStr "DetaOrga LIKE '" & Chr(37)
  loc_A7AEB7: FLdPr Me
  loc_A7AEBA: VCallAd Control_ID_FiltroMsk
  loc_A7AEBD: FStAdFunc var_88
  loc_A7AEC0: FLdPr var_88
  loc_A7AEC3: LateIdLdVar var_98 DispID_22 0
  loc_A7AECA: CStrVarTmp
  loc_A7AECB: FStStrNoPop var_9C
  loc_A7AECE: ConcatStr
  loc_A7AECF: FStStrNoPop var_A0
  loc_A7AED2: LitStr Chr(37) & "'"
  loc_A7AED5: ConcatStr
  loc_A7AED6: PopTmpLdAdStr
  loc_A7AEDA: FLdPr Me
  loc_A7AEDD: MemLdRfVar from_stack_1.BuscarCLS
  loc_A7AEE0: NewIfNullPr clsbase
  loc_A7AEE3: Call clsbase.Filter(from_stack_1v)
  loc_A7AEE8: FFreeStr var_9C = "": var_A0 = ""
  loc_A7AEF1: FFree1Ad var_88
  loc_A7AEF4: FFree1Var var_98 = ""
  loc_A7AEF7: LitStr "detalle contiene: "
  loc_A7AEFA: FLdPr Me
  loc_A7AEFD: VCallAd Control_ID_FiltroMsk
  loc_A7AF00: FStAdFunc var_88
  loc_A7AF03: FLdPr var_88
  loc_A7AF06: LateIdLdVar var_98 DispID_22 0
  loc_A7AF0D: CStrVarTmp
  loc_A7AF0E: FStStrNoPop var_9C
  loc_A7AF11: ConcatStr
  loc_A7AF12: FStStrNoPop var_A0
  loc_A7AF15: LitStr vbNullString
  loc_A7AF18: ConcatStr
  loc_A7AF19: FStStrNoPop var_A8
  loc_A7AF1C: FLdPr Me
  loc_A7AF1F: MemStStrCopy
  loc_A7AF23: FFreeStr var_9C = "": var_A0 = ""
  loc_A7AF2C: FFree1Ad var_88
  loc_A7AF2F: FFree1Var var_98 = ""
  loc_A7AF32: Branch loc_A7B06B
  loc_A7AF35: FLdRfVar var_A2
  loc_A7AF38: FLdPr Me
  loc_A7AF3B: VCallAd Control_ID_FiltroCbo
  loc_A7AF3E: FStAdFunc var_88
  loc_A7AF41: FLdPr var_88
  loc_A7AF44:  = Me.ListIndex
  loc_A7AF49: FLdI2 var_A2
  loc_A7AF4C: LitI2_Byte 2
  loc_A7AF4E: EqI2
  loc_A7AF4F: FFree1Ad var_88
  loc_A7AF52: BranchF loc_A7AFCD
  loc_A7AF55: LitStr "CodiPart LIKE '"
  loc_A7AF58: FLdPr Me
  loc_A7AF5B: VCallAd Control_ID_FiltroMsk
  loc_A7AF5E: FStAdFunc var_88
  loc_A7AF61: FLdPr var_88
  loc_A7AF64: LateIdLdVar var_98 DispID_22 0
  loc_A7AF6B: CStrVarTmp
  loc_A7AF6C: FStStrNoPop var_9C
  loc_A7AF6F: ConcatStr
  loc_A7AF70: FStStrNoPop var_A0
  loc_A7AF73: LitStr Chr(37) & "'"
  loc_A7AF76: ConcatStr
  loc_A7AF77: PopTmpLdAdStr
  loc_A7AF7B: FLdPr Me
  loc_A7AF7E: MemLdRfVar from_stack_1.BuscarCLS
  loc_A7AF81: NewIfNullPr clsbase
  loc_A7AF84: Call clsbase.Filter(from_stack_1v)
  loc_A7AF89: FFreeStr var_9C = "": var_A0 = ""
  loc_A7AF92: FFree1Ad var_88
  loc_A7AF95: FFree1Var var_98 = ""
  loc_A7AF98: LitStr "código comience con: "
  loc_A7AF9B: FLdPr Me
  loc_A7AF9E: VCallAd Control_ID_FiltroMsk
  loc_A7AFA1: FStAdFunc var_88
  loc_A7AFA4: FLdPr var_88
  loc_A7AFA7: LateIdLdVar var_98 DispID_22 0
  loc_A7AFAE: CStrVarTmp
  loc_A7AFAF: FStStrNoPop var_9C
  loc_A7AFB2: ConcatStr
  loc_A7AFB3: FStStrNoPop var_A0
  loc_A7AFB6: FLdPr Me
  loc_A7AFB9: MemStStrCopy
  loc_A7AFBD: FFreeStr var_9C = ""
  loc_A7AFC4: FFree1Ad var_88
  loc_A7AFC7: FFree1Var var_98 = ""
  loc_A7AFCA: Branch loc_A7B06B
  loc_A7AFCD: FLdRfVar var_A2
  loc_A7AFD0: FLdPr Me
  loc_A7AFD3: VCallAd Control_ID_FiltroCbo
  loc_A7AFD6: FStAdFunc var_88
  loc_A7AFD9: FLdPr var_88
  loc_A7AFDC:  = Me.ListIndex
  loc_A7AFE1: FLdI2 var_A2
  loc_A7AFE4: LitI2_Byte 3
  loc_A7AFE6: EqI2
  loc_A7AFE7: FFree1Ad var_88
  loc_A7AFEA: BranchF loc_A7B06B
  loc_A7AFED: LitStr "DetaPart LIKE '" & Chr(37)
  loc_A7AFF0: FLdPr Me
  loc_A7AFF3: VCallAd Control_ID_FiltroMsk
  loc_A7AFF6: FStAdFunc var_88
  loc_A7AFF9: FLdPr var_88
  loc_A7AFFC: LateIdLdVar var_98 DispID_22 0
  loc_A7B003: CStrVarTmp
  loc_A7B004: FStStrNoPop var_9C
  loc_A7B007: ConcatStr
  loc_A7B008: FStStrNoPop var_A0
  loc_A7B00B: LitStr Chr(37) & "'"
  loc_A7B00E: ConcatStr
  loc_A7B00F: PopTmpLdAdStr
  loc_A7B013: FLdPr Me
  loc_A7B016: MemLdRfVar from_stack_1.BuscarCLS
  loc_A7B019: NewIfNullPr clsbase
  loc_A7B01C: Call clsbase.Filter(from_stack_1v)
  loc_A7B021: FFreeStr var_9C = "": var_A0 = ""
  loc_A7B02A: FFree1Ad var_88
  loc_A7B02D: FFree1Var var_98 = ""
  loc_A7B030: LitStr "detalle contiene: "
  loc_A7B033: FLdPr Me
  loc_A7B036: VCallAd Control_ID_FiltroMsk
  loc_A7B039: FStAdFunc var_88
  loc_A7B03C: FLdPr var_88
  loc_A7B03F: LateIdLdVar var_98 DispID_22 0
  loc_A7B046: CStrVarTmp
  loc_A7B047: FStStrNoPop var_9C
  loc_A7B04A: ConcatStr
  loc_A7B04B: FStStrNoPop var_A0
  loc_A7B04E: LitStr vbNullString
  loc_A7B051: ConcatStr
  loc_A7B052: FStStrNoPop var_A8
  loc_A7B055: FLdPr Me
  loc_A7B058: MemStStrCopy
  loc_A7B05C: FFreeStr var_9C = "": var_A0 = ""
  loc_A7B065: FFree1Ad var_88
  loc_A7B068: FFree1Var var_98 = ""
  loc_A7B06B: Branch loc_A7B092
  loc_A7B06E: LitStr vbNullString
  loc_A7B071: FStStrCopy var_9C
  loc_A7B074: FLdRfVar var_9C
  loc_A7B077: FLdPr Me
  loc_A7B07A: MemLdRfVar from_stack_1.BuscarCLS
  loc_A7B07D: NewIfNullPr clsbase
  loc_A7B080: Call clsbase.Filter(from_stack_1v)
  loc_A7B085: FFree1Str var_9C
  loc_A7B088: LitStr vbNullString
  loc_A7B08B: FLdPr Me
  loc_A7B08E: MemStStrCopy
  loc_A7B092: FLdRfVar var_AC
  loc_A7B095: FLdPr Me
  loc_A7B098: MemLdRfVar from_stack_1.BuscarCLS
  loc_A7B09B: NewIfNullPr clsbase
  loc_A7B09E: from_stack_1 = clsbase.RecordCount
  loc_A7B0A3: ILdRf var_AC
  loc_A7B0A6: LitI4 0
  loc_A7B0AB: GtI4
  loc_A7B0AC: BranchF loc_A7B14A
  loc_A7B0AF: FLdPr Me
  loc_A7B0B2: MemLdRfVar from_stack_1.BuscarCLS
  loc_A7B0B5: NewIfNullAd
  loc_A7B0B8: FStAd var_B0 
  loc_A7B0BC: FLdRfVar var_B0
  loc_A7B0BF: CVarRef
  loc_A7B0C4: ILdRf Me
  loc_A7B0C7: CastAd
  loc_A7B0CA: FStAdFunc var_88
  loc_A7B0CD: FLdRfVar var_88
  loc_A7B0D0: ImpAdCallFPR4 Proc_261_8_9C2398(, )
  loc_A7B0D5: ILdRf var_B0
  loc_A7B0D8: CastAd
  loc_A7B0DB: FLdPr Me
  loc_A7B0DE: MemStAdFunc
  loc_A7B0E2: FFreeAd var_88 = ""
  loc_A7B0E9: LitI4 0
  loc_A7B0EE: LitI4 1
  loc_A7B0F3: FLdRfVar var_C4
  loc_A7B0F6: Redim
  loc_A7B100: FLdPr Me
  loc_A7B103: MemLdRfVar from_stack_1.BuscarCLS
  loc_A7B106: NewIfNullAd
  loc_A7B109: FStAd var_88 
  loc_A7B10D: FLdRfVar var_88
  loc_A7B110: CVarRef
  loc_A7B115: ParmAry1St
  loc_A7B11B: FLdPr Me
  loc_A7B11E: VCallAd Control_ID_dgdABMS
  loc_A7B121: CVarAd
  loc_A7B125: ParmAry1St
  loc_A7B12B: FLdRfVar var_C4
  loc_A7B12E: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_A7B133: ILdRf var_88
  loc_A7B136: CastAd
  loc_A7B139: FLdPr Me
  loc_A7B13C: MemStAdFunc
  loc_A7B140: FLdRfVar var_C4
  loc_A7B143: Erase
  loc_A7B144: FFree1Ad var_88
  loc_A7B147: Branch loc_A7B15E
  loc_A7B14A: ILdRf Me
  loc_A7B14D: CastAd
  loc_A7B150: FStAdFunc var_88
  loc_A7B153: FLdRfVar var_88
  loc_A7B156: ImpAdCallFPR4 Proc_261_15_A16E38()
  loc_A7B15B: FFree1Ad var_88
  loc_A7B15E: FLdPr Me
  loc_A7B161: VCallAd Control_ID_dgdABMS
  loc_A7B164: FStAdFunc var_B0
  loc_A7B167: LitI4 0
  loc_A7B16C: FStStrCopy var_9C
  loc_A7B16F: FLdRfVar var_9C
  loc_A7B172: FLdPr Me
  loc_A7B175: MemLdStr sFiltro
  loc_A7B178: FLdZeroAd var_B0
  loc_A7B17B: FStAdFunc var_88
  loc_A7B17E: FLdRfVar var_88
  loc_A7B181: ImpAdCallFPR4 Proc_261_62_9D9F1C(, , )
  loc_A7B186: FFree1Str var_9C
  loc_A7B189: FFreeAd var_88 = ""
  loc_A7B190: ExitProcHresult
  loc_A7B191: ILdRf var_90
End Sub

Private Sub FiltroMsk_KeyPress(KeyAscii As Integer) '996904
  'Data Table: 41F5A8
  loc_9968A0: ILdI2 KeyAscii
  loc_9968A3: LitI2_Byte &H27
  loc_9968A5: EqI2
  loc_9968A6: BranchF loc_9968AE
  loc_9968A9: LitI2_Byte 0
  loc_9968AB: IStI2 KeyAscii
  loc_9968AE: FLdRfVar var_88
  loc_9968B1: FLdPr Me
  loc_9968B4: MemLdRfVar from_stack_1.BuscarCLS
  loc_9968B7: NewIfNullPr clsbase
  loc_9968BA: from_stack_1 = clsbase.RecordCount
  loc_9968BF: ILdRf var_88
  loc_9968C2: LitI4 0
  loc_9968C7: EqI4
  loc_9968C8: ILdI2 KeyAscii
  loc_9968CB: CI4UI1
  loc_9968CC: LitI4 8
  loc_9968D1: NeI4
  loc_9968D2: AndI4
  loc_9968D3: FLdPr Me
  loc_9968D6: VCallAd Control_ID_FiltroMsk
  loc_9968D9: FStAdFunc var_8C
  loc_9968DC: FLdPr var_8C
  loc_9968DF: LateIdLdVar var_9C DispID_16 0
  loc_9968E6: CStrVarTmp
  loc_9968E7: FStStrNoPop var_A0
  loc_9968EA: LitStr vbNullString
  loc_9968ED: EqStr
  loc_9968EF: AndI4
  loc_9968F0: FFree1Str var_A0
  loc_9968F3: FFree1Ad var_8C
  loc_9968F6: FFree1Var var_9C = ""
  loc_9968F9: BranchF loc_996901
  loc_9968FC: LitI2_Byte 0
  loc_9968FE: IStI2 KeyAscii
  loc_996901: ExitProcHresult
End Sub

Private Sub dgdABMS_UnknownEvent_0 '956910
  'Data Table: 41F5A8
  loc_9568F8: FLdPr Me
  loc_9568FB: VCallAd Control_ID_dgdABMS
  loc_9568FE: FStAdFunc var_88
  loc_956901: FLdRfVar var_88
  loc_956904: ImpAdCallFPR4 Proc_264_0_9758D8()
  loc_956909: FFree1Ad var_88
  loc_95690C: ExitProcHresult
End Sub

Private Sub dgdABMS_UnknownEvent_1 '9568C4
  'Data Table: 41F5A8
  loc_9568AC: FLdPr Me
  loc_9568AF: VCallAd Control_ID_dgdABMS
  loc_9568B2: FStAdFunc var_88
  loc_9568B5: FLdRfVar var_88
  loc_9568B8: ImpAdCallFPR4 Proc_264_1_96D788()
  loc_9568BD: FFree1Ad var_88
  loc_9568C0: ExitProcHresult
End Sub

Private Sub dgdABMS_DblClick(arg_30) '95E360
  'Data Table: 41F5A8
  loc_95E348: ILdRf Me
  loc_95E34B: FStAdNoPop
  loc_95E34F: ImpAdLdRf MemVar_C44F9C
  loc_95E352: NewIfNullPr Me
  loc_95E355: Me.Global.Unload from_stack_1
  loc_95E35A: FFree1Ad var_88
  loc_95E35D: ExitProcHresult
  loc_95E35E: FLdPr arg_3000
End Sub

Private Sub dgdABMS_HeadClick(ColIndex As Integer) '99A374
  'Data Table: 41F5A8
  loc_99A318: FLdRfVar var_B4
  loc_99A31B: FLdRfVar var_B0
  loc_99A31E: FLdI2 ColIndex
  loc_99A321: CVarI2 var_A8
  loc_99A324: PopAdLdVar
  loc_99A325: FLdPr Me
  loc_99A328: VCallAd Control_ID_dgdABMS
  loc_99A32B: FStAdFunc var_88
  loc_99A32E: FLdPr var_88
  loc_99A331: LateIdLdVar var_98 DispID_105 0
  loc_99A338: CastAdVar Me
  loc_99A33C: FStAdFunc var_AC
  loc_99A33F: FLdPr var_AC
  loc_99A342: from_stack_2 = Me.Columns.Item(from_stack_1)
  loc_99A347: FLdPr var_B0
  loc_99A34A:  = Me.DataField
  loc_99A34F: FLdZeroAd var_B4
  loc_99A352: PopTmpLdAdStr
  loc_99A356: FLdPr Me
  loc_99A359: MemLdRfVar from_stack_1.BuscarCLS
  loc_99A35C: NewIfNullPr clsbase
  loc_99A35F: Call clsbase.Sort(from_stack_1v)
  loc_99A364: FFree1Str var_B8
  loc_99A367: FFreeAd var_88 = "": var_AC = ""
  loc_99A370: FFree1Var var_98 = ""
  loc_99A373: ExitProcHresult
End Sub

Private Sub OKButton_Click() '95DE54
  'Data Table: 41F5A8
  loc_95DE3C: ILdRf Me
  loc_95DE3F: FStAdNoPop
  loc_95DE43: ImpAdLdRf MemVar_C44F9C
  loc_95DE46: NewIfNullPr Me
  loc_95DE49: Me.Global.Unload from_stack_1
  loc_95DE4E: FFree1Ad var_88
  loc_95DE51: ExitProcHresult
  loc_95DE52: LitI2_Byte
End Sub

Private Sub Form_Load() 'A57280
  'Data Table: 41F5A8
  loc_A56FCC: FLdRfVar var_88
  loc_A56FCF: FLdPr Me
  loc_A56FD2:  = Me.Caption
  loc_A56FD7: ILdRf var_88
  loc_A56FDA: FLdPr Me
  loc_A56FDD: MemLdStr sFecha
  loc_A56FE0: ConcatStr
  loc_A56FE1: FStStrNoPop var_8C
  loc_A56FE4: FLdPr Me
  loc_A56FE7: Me.Caption = from_stack_1
  loc_A56FEC: FFreeStr var_88 = ""
  loc_A56FF3: FLdPr Me
  loc_A56FF6: MemLdI2 iPeriInfo
  loc_A56FF9: LitI2_Byte 0
  loc_A56FFB: EqI2
  loc_A56FFC: BranchF loc_A57008
  loc_A56FFF: ImpAdLdI2 MemVar_C3D064
  loc_A57002: FLdPr Me
  loc_A57005: MemStI2 iPeriInfo
  loc_A57008: FLdPr Me
  loc_A5700B: MemLdI2 iPeriInfo
  loc_A5700E: ImpAdLdI2 MemVar_C3D064
  loc_A57011: NeI2
  loc_A57012: BranchF loc_A5704C
  loc_A57015: FLdRfVar var_88
  loc_A57018: FLdPr Me
  loc_A5701B:  = Me.Caption
  loc_A57020: ILdRf var_88
  loc_A57023: LitStr " - Periodo: "
  loc_A57026: ConcatStr
  loc_A57027: FStStrNoPop var_8C
  loc_A5702A: FLdPr Me
  loc_A5702D: MemLdI2 iPeriInfo
  loc_A57030: CStrUI1
  loc_A57032: FStStrNoPop var_90
  loc_A57035: ConcatStr
  loc_A57036: FStStrNoPop var_94
  loc_A57039: FLdPr Me
  loc_A5703C: Me.Caption = from_stack_1
  loc_A57041: FFreeStr var_88 = "": var_8C = "": var_90 = ""
  loc_A5704C: FLdPr Me
  loc_A5704F: MemLdStr sFecha
  loc_A57052: LitStr vbNullString
  loc_A57055: EqStr
  loc_A57057: BranchF loc_A57073
  loc_A5705A: LitI2_Byte 0
  loc_A5705C: PopTmpLdAd2 var_96
  loc_A5705F: ImpAdCallFPR4 Proc_261_32_A53D7C()
  loc_A57064: CStrDate
  loc_A57066: FStStrNoPop var_88
  loc_A57069: FLdPr Me
  loc_A5706C: MemStStrCopy
  loc_A57070: FFree1Str var_88
  loc_A57073: LitStr "DROP TEMPORARY TABLE IF EXISTS tmovi;"
  loc_A57076: LitStr " CREATE TEMPORARY TABLE tmovi"
  loc_A57079: ConcatStr
  loc_A5707A: FStStrNoPop var_88
  loc_A5707D: LitStr " SELECT oxu.PeriInfo, oxu.CodiOrga, autorizado.CodiPart, Sum(AutoAuto)+Sum(AumeAuto)-Sum(DismAuto) Credito"
  loc_A57080: ConcatStr
  loc_A57081: FStStrNoPop var_8C
  loc_A57084: LitStr " FROM orgaxusua oxu"
  loc_A57087: ConcatStr
  loc_A57088: FStStrNoPop var_90
  loc_A5708B: LitStr " INNER JOIN autorizado ON autorizado.PeriInfo = oxu.PeriInfo AND autorizado.CodiOrga = oxu.CodiOrga AND FechAuto <= "
  loc_A5708E: ConcatStr
  loc_A5708F: FStStrNoPop var_94
  loc_A57092: LitI4 1
  loc_A57097: LitI4 1
  loc_A5709C: LitVarStr var_B8, "'yyyy-mm-dd'"
  loc_A570A1: FStVarCopyObj var_C8
  loc_A570A4: FLdRfVar var_C8
  loc_A570A7: FLdPr Me
  loc_A570AA: MemLdRfVar from_stack_1.sFecha
  loc_A570AD: CVarRef
  loc_A570B2: ImpAdCallI2 Format$(, )
  loc_A570B7: FStStrNoPop var_CC
  loc_A570BA: ConcatStr
  loc_A570BB: FStStrNoPop var_D0
  loc_A570BE: LitStr " WHERE oxu.PeriInfo = "
  loc_A570C1: ConcatStr
  loc_A570C2: FStStrNoPop var_D4
  loc_A570C5: FLdPr Me
  loc_A570C8: MemLdI2 iPeriInfo
  loc_A570CB: CStrUI1
  loc_A570CD: FStStrNoPop var_D8
  loc_A570D0: ConcatStr
  loc_A570D1: FStStrNoPop var_DC
  loc_A570D4: LitStr " AND oxu.CodiOrga = '"
  loc_A570D7: ConcatStr
  loc_A570D8: FStStrNoPop var_E0
  loc_A570DB: FLdPr Me
  loc_A570DE: MemLdStr sCodiOrga
  loc_A570E1: ConcatStr
  loc_A570E2: FStStrNoPop var_E4
  loc_A570E5: LitStr "' AND oxu.CodiUsua = @sUsuario"
  loc_A570E8: ConcatStr
  loc_A570E9: FStStrNoPop var_E8
  loc_A570EC: LitStr " GROUP BY PeriInfo, CodiOrga, CodiPart;"
  loc_A570EF: ConcatStr
  loc_A570F0: FStStrNoPop var_EC
  loc_A570F3: FLdPr Me
  loc_A570F6: MemLdRfVar from_stack_1.BuscarCLS
  loc_A570F9: NewIfNullPr clsbase
  loc_A570FC: Call clsbase.RedefineRS(from_stack_1v)
  loc_A57101: FFreeStr var_88 = "": var_8C = "": var_90 = "": var_94 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = ""
  loc_A5711E: FFree1Var var_C8 = ""
  loc_A57121: LitStr " SELECT tmovi.*, DetaOrga, DetaPart, IFNULL(Sum(PrevImpu),0) Preventiva, tmovi.Credito-IFNULL(Sum(PrevImpu),0) Saldo"
  loc_A57124: LitStr " FROM tmovi"
  loc_A57127: ConcatStr
  loc_A57128: FStStrNoPop var_88
  loc_A5712B: LitStr " LEFT JOIN imputacion i ON i.PeriInfo = tmovi.PeriInfo AND i.CodiPart = tmovi.CodiPart AND i.CodiOrga = tmovi.codiOrga AND FechImpu <= "
  loc_A5712E: ConcatStr
  loc_A5712F: FStStrNoPop var_8C
  loc_A57132: LitI4 1
  loc_A57137: LitI4 1
  loc_A5713C: LitVarStr var_B8, "'yyyy-mm-dd'"
  loc_A57141: FStVarCopyObj var_C8
  loc_A57144: FLdRfVar var_C8
  loc_A57147: FLdPr Me
  loc_A5714A: MemLdRfVar from_stack_1.sFecha
  loc_A5714D: CVarRef
  loc_A57152: ImpAdCallI2 Format$(, )
  loc_A57157: FStStrNoPop var_90
  loc_A5715A: ConcatStr
  loc_A5715B: FStStrNoPop var_94
  loc_A5715E: LitStr " INNER JOIN infogov.organigrama orga ON orga.PeriInfo = tmovi.PeriInfo AND orga.CodiOrga = tmovi.CodiOrga"
  loc_A57161: ConcatStr
  loc_A57162: FStStrNoPop var_CC
  loc_A57165: LitStr " INNER JOIN partida ON partida.PeriInfo = tmovi.PeriInfo AND partida.CodiPart = tmovi.CodiPart"
  loc_A57168: ConcatStr
  loc_A57169: FStStrNoPop var_D0
  loc_A5716C: LitStr " GROUP BY PeriInfo, CodiOrga, CodiPart;"
  loc_A5716F: ConcatStr
  loc_A57170: FStStrNoPop var_D4
  loc_A57173: FLdPr Me
  loc_A57176: MemLdRfVar from_stack_1.BuscarCLS
  loc_A57179: NewIfNullPr clsbase
  loc_A5717C: Call clsbase.RedefineRS(from_stack_1v)
  loc_A57181: FFreeStr var_88 = "": var_8C = "": var_90 = "": var_94 = "": var_CC = "": var_D0 = ""
  loc_A57192: FFree1Var var_C8 = ""
  loc_A57195: LitVarI2 var_A8, 0
  loc_A5719A: PopAdLdVar
  loc_A5719B: LitStr "Centro de Costo (Código)"
  loc_A5719E: FLdPr Me
  loc_A571A1: VCallAd Control_ID_FiltroCbo
  loc_A571A4: FStAdFunc var_F0
  loc_A571A7: FLdPr var_F0
  loc_A571AA: Me.AddItem from_stack_1, from_stack_2
  loc_A571AF: FFree1Ad var_F0
  loc_A571B2: LitVarI2 var_A8, 1
  loc_A571B7: PopAdLdVar
  loc_A571B8: LitStr "Centro de Costo (Detalle)"
  loc_A571BB: FLdPr Me
  loc_A571BE: VCallAd Control_ID_FiltroCbo
  loc_A571C1: FStAdFunc var_F0
  loc_A571C4: FLdPr var_F0
  loc_A571C7: Me.AddItem from_stack_1, from_stack_2
  loc_A571CC: FFree1Ad var_F0
  loc_A571CF: LitVarI2 var_A8, 2
  loc_A571D4: PopAdLdVar
  loc_A571D5: LitStr "Partida (Código)"
  loc_A571D8: FLdPr Me
  loc_A571DB: VCallAd Control_ID_FiltroCbo
  loc_A571DE: FStAdFunc var_F0
  loc_A571E1: FLdPr var_F0
  loc_A571E4: Me.AddItem from_stack_1, from_stack_2
  loc_A571E9: FFree1Ad var_F0
  loc_A571EC: LitVarI2 var_A8, 3
  loc_A571F1: PopAdLdVar
  loc_A571F2: LitStr "Partida (Detalle)"
  loc_A571F5: FLdPr Me
  loc_A571F8: VCallAd Control_ID_FiltroCbo
  loc_A571FB: FStAdFunc var_F0
  loc_A571FE: FLdPr var_F0
  loc_A57201: Me.AddItem from_stack_1, from_stack_2
  loc_A57206: FFree1Ad var_F0
  loc_A57209: LitI2_Byte 3
  loc_A5720B: FLdPr Me
  loc_A5720E: VCallAd Control_ID_FiltroCbo
  loc_A57211: FStAdFunc var_F0
  loc_A57214: FLdPr var_F0
  loc_A57217: Me.ListIndex = from_stack_1
  loc_A5721C: FFree1Ad var_F0
  loc_A5721F: LitI4 0
  loc_A57224: LitI4 1
  loc_A57229: FLdRfVar var_F4
  loc_A5722C: Redim
  loc_A57236: FLdPr Me
  loc_A57239: MemLdRfVar from_stack_1.BuscarCLS
  loc_A5723C: NewIfNullAd
  loc_A5723F: FStAd var_F0 
  loc_A57243: FLdRfVar var_F0
  loc_A57246: CVarRef
  loc_A5724B: ParmAry1St
  loc_A57251: FLdPr Me
  loc_A57254: VCallAd Control_ID_dgdABMS
  loc_A57257: CVarAd
  loc_A5725B: ParmAry1St
  loc_A57261: FLdRfVar var_F4
  loc_A57264: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_A57269: ILdRf var_F0
  loc_A5726C: CastAd
  loc_A5726F: FLdPr Me
  loc_A57272: MemStAdFunc
  loc_A57276: FLdRfVar var_F4
  loc_A57279: Erase
  loc_A5727A: FFree1Ad var_F0
  loc_A5727D: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '975874
  'Data Table: 41F5A8
  loc_97584C: LitI2_Byte 0
  loc_97584E: FLdPr Me
  loc_975851: MemStI2 iPeriInfo
  loc_975854: LitVarI2 var_A4, 0
  loc_975859: FStVar var_94
  loc_97585D: ILdRf Me
  loc_975860: FStAdNoPop
  loc_975864: ImpAdLdRf MemVar_C44F9C
  loc_975867: NewIfNullPr Me
  loc_97586A: Me.Global.Unload from_stack_1
  loc_97586F: FFree1Ad var_A8
  loc_975872: ExitProcHresult
End Sub

Private Sub Form_Activate() '9521E8
  'Data Table: 41F5A8
  loc_9521D4: FLdPr Me
  loc_9521D7: VCallAd Control_ID_FiltroMsk
  loc_9521DA: CVarAd
  loc_9521DE: ImpAdCallFPR4 Proc_261_5_9BDB84()
  loc_9521E3: FFree1Var var_94 = ""
  loc_9521E6: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) '949EA8
  'Data Table: 41F5A8
  loc_949E94: ILdI2 KeyAscii
  loc_949E97: CI4UI1
  loc_949E98: LitI4 &HD
  loc_949E9D: EqI4
  loc_949E9E: BranchF loc_949EA6
  loc_949EA1: ImpAdCallFPR4 Proc_261_52_966EEC()
  loc_949EA6: ExitProcHresult
End Sub

Public Function iPeriInfoGet() '41FAD8
  iPeriInfoGet = iPeriInfo
End Function

Public Sub iPeriInfoPut(Value) '41FAE7
  iPeriInfo = Value
End Sub

Public Function sCodiOrgaGet() '41FAF6
  sCodiOrgaGet = sCodiOrga
End Function

Public Sub sCodiOrgaPut(Value) '41FB05
  sCodiOrga = Value
End Sub

Public Function sFechaGet() '41FB14
  sFechaGet = sFecha
End Function

Public Sub sFechaPut(Value) '41FB23
  sFecha = Value
End Sub

Public Function global_4322728Get() '41FB32
  global_4322728Get = global_4322728
End Function

Public Sub global_4322728Put(Value) '41FB4C
  global_4322728 = Value
End Sub

Public Sub global_4322728Set(Value) '41FB66
  global_4322728 = Value
End Sub

Public Function sFiltroGet() '41FB80
  sFiltroGet = sFiltro
End Function

Public Sub sFiltroPut(Value) '41FB8F
  sFiltro = Value
End Sub
