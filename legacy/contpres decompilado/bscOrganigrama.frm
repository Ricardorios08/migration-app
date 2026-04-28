VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Begin VB.Form bscOrganigrama
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "bscOrganigrama.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 12420
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
      OleObjectBlob = "bscOrganigrama.frx":08CA
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
    Width = 12135
    Height = 3735
    Tag = "1"
    TabIndex = 3
    OleObjectBlob = "bscOrganigrama.frx":092A
  End
End

Attribute VB_Name = "bscOrganigrama"

Public iPeriInfo As Integer
Public MuestroAnulados As Boolean
Public BuscarCLS As New Class
Public sFiltro As String


Private Sub FiltroCbo_Click() '9C22A0
  'Data Table: 41E6D4
  loc_9C21D0: LitVarStr var_94, vbNullString
  loc_9C21D5: PopAdLdVar
  loc_9C21D6: FLdPr Me
  loc_9C21D9: VCallAd Control_ID_FiltroMsk
  loc_9C21DC: FStAdFunc var_A8
  loc_9C21DF: FLdPr var_A8
  loc_9C21E2: LateIdSt
  loc_9C21E7: FFree1Ad var_A8
  loc_9C21EA: FLdRfVar var_AA
  loc_9C21ED: FLdPr Me
  loc_9C21F0: VCallAd Control_ID_FiltroCbo
  loc_9C21F3: FStAdFunc var_A8
  loc_9C21F6: FLdPr var_A8
  loc_9C21F9:  = Me.ListIndex
  loc_9C21FE: FLdI2 var_AA
  loc_9C2201: FStI2 var_AC
  loc_9C2204: FFree1Ad var_A8
  loc_9C2207: FLdI2 var_AC
  loc_9C220A: LitI2_Byte 0
  loc_9C220C: EqI2
  loc_9C220D: BranchF loc_9C2247
  loc_9C2210: LitVarStr var_94, "######"
  loc_9C2215: PopAdLdVar
  loc_9C2216: FLdPr Me
  loc_9C2219: VCallAd Control_ID_FiltroMsk
  loc_9C221C: FStAdFunc var_A8
  loc_9C221F: FLdPr var_A8
  loc_9C2222: LateIdSt
  loc_9C2227: FFree1Ad var_A8
  loc_9C222A: LitStr "CodiOrga"
  loc_9C222D: FStStrCopy var_B0
  loc_9C2230: FLdRfVar var_B0
  loc_9C2233: FLdPr Me
  loc_9C2236: MemLdRfVar from_stack_1.BuscarCLS
  loc_9C2239: NewIfNullPr clsbase
  loc_9C223C: Call clsbase.Sort(from_stack_1v)
  loc_9C2241: FFree1Str var_B0
  loc_9C2244: Branch loc_9C229E
  loc_9C2247: FLdI2 var_AC
  loc_9C224A: LitI2_Byte 1
  loc_9C224C: EqI2
  loc_9C224D: BranchF loc_9C229E
  loc_9C2250: LitVarStr var_94, "&"
  loc_9C2255: PopAdLdVar
  loc_9C2256: FLdPr Me
  loc_9C2259: VCallAd Control_ID_FiltroMsk
  loc_9C225C: FStAdFunc var_A8
  loc_9C225F: FLdPr var_A8
  loc_9C2262: LateIdSt
  loc_9C2267: FFree1Ad var_A8
  loc_9C226A: LitVarStr var_94, vbNullString
  loc_9C226F: PopAdLdVar
  loc_9C2270: FLdPr Me
  loc_9C2273: VCallAd Control_ID_FiltroMsk
  loc_9C2276: FStAdFunc var_A8
  loc_9C2279: FLdPr var_A8
  loc_9C227C: LateIdSt
  loc_9C2281: FFree1Ad var_A8
  loc_9C2284: LitStr "DetaOrga"
  loc_9C2287: FStStrCopy var_B0
  loc_9C228A: FLdRfVar var_B0
  loc_9C228D: FLdPr Me
  loc_9C2290: MemLdRfVar from_stack_1.BuscarCLS
  loc_9C2293: NewIfNullPr clsbase
  loc_9C2296: Call clsbase.Sort(from_stack_1v)
  loc_9C229B: FFree1Str var_B0
  loc_9C229E: ExitProcHresult
End Sub

Private Sub FiltroMsk_UnknownEvent_0 '952860
  'Data Table: 41E6D4
  loc_95284C: FLdPr Me
  loc_95284F: VCallAd Control_ID_FiltroMsk
  loc_952852: CVarAd
  loc_952856: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_95285B: FFree1Var var_94 = ""
  loc_95285E: ExitProcHresult
End Sub

Private Sub FiltroMsk_Change() 'A4F840
  'Data Table: 41E6D4
  loc_A4F59C: ILdRf Me
  loc_A4F59F: CastAd
  loc_A4F5A2: FStAdFunc var_88
  loc_A4F5A5: FLdRfVar var_88
  loc_A4F5A8: ImpAdCallFPR4 Proc_261_10_99CABC()
  loc_A4F5AD: FFree1Ad var_88
  loc_A4F5B0: FLdPr Me
  loc_A4F5B3: VCallAd Control_ID_FiltroMsk
  loc_A4F5B6: FStAdFunc var_88
  loc_A4F5B9: FLdPr var_88
  loc_A4F5BC: LateIdLdVar var_98 DispID_22 0
  loc_A4F5C3: CStrVarTmp
  loc_A4F5C4: FStStrNoPop var_9C
  loc_A4F5C7: ImpAdCallI2 Trim$()
  loc_A4F5CC: FStStrNoPop var_A0
  loc_A4F5CF: LitStr vbNullString
  loc_A4F5D2: NeStr
  loc_A4F5D4: FFreeStr var_9C = ""
  loc_A4F5DB: FFree1Ad var_88
  loc_A4F5DE: FFree1Var var_98 = ""
  loc_A4F5E1: BranchF loc_A4F71D
  loc_A4F5E4: FLdRfVar var_A2
  loc_A4F5E7: FLdPr Me
  loc_A4F5EA: VCallAd Control_ID_FiltroCbo
  loc_A4F5ED: FStAdFunc var_88
  loc_A4F5F0: FLdPr var_88
  loc_A4F5F3:  = Me.ListIndex
  loc_A4F5F8: FLdI2 var_A2
  loc_A4F5FB: LitI2_Byte 0
  loc_A4F5FD: EqI2
  loc_A4F5FE: FFree1Ad var_88
  loc_A4F601: BranchF loc_A4F67C
  loc_A4F604: LitStr "CodiOrga LIKE '"
  loc_A4F607: FLdPr Me
  loc_A4F60A: VCallAd Control_ID_FiltroMsk
  loc_A4F60D: FStAdFunc var_88
  loc_A4F610: FLdPr var_88
  loc_A4F613: LateIdLdVar var_98 DispID_22 0
  loc_A4F61A: CStrVarTmp
  loc_A4F61B: FStStrNoPop var_9C
  loc_A4F61E: ConcatStr
  loc_A4F61F: FStStrNoPop var_A0
  loc_A4F622: LitStr Chr(37) & "'"
  loc_A4F625: ConcatStr
  loc_A4F626: PopTmpLdAdStr
  loc_A4F62A: FLdPr Me
  loc_A4F62D: MemLdRfVar from_stack_1.BuscarCLS
  loc_A4F630: NewIfNullPr clsbase
  loc_A4F633: Call clsbase.Filter(from_stack_1v)
  loc_A4F638: FFreeStr var_9C = "": var_A0 = ""
  loc_A4F641: FFree1Ad var_88
  loc_A4F644: FFree1Var var_98 = ""
  loc_A4F647: LitStr "código que comience con "
  loc_A4F64A: FLdPr Me
  loc_A4F64D: VCallAd Control_ID_FiltroMsk
  loc_A4F650: FStAdFunc var_88
  loc_A4F653: FLdPr var_88
  loc_A4F656: LateIdLdVar var_98 DispID_22 0
  loc_A4F65D: CStrVarTmp
  loc_A4F65E: FStStrNoPop var_9C
  loc_A4F661: ConcatStr
  loc_A4F662: FStStrNoPop var_A0
  loc_A4F665: FLdPr Me
  loc_A4F668: MemStStrCopy
  loc_A4F66C: FFreeStr var_9C = ""
  loc_A4F673: FFree1Ad var_88
  loc_A4F676: FFree1Var var_98 = ""
  loc_A4F679: Branch loc_A4F71A
  loc_A4F67C: FLdRfVar var_A2
  loc_A4F67F: FLdPr Me
  loc_A4F682: VCallAd Control_ID_FiltroCbo
  loc_A4F685: FStAdFunc var_88
  loc_A4F688: FLdPr var_88
  loc_A4F68B:  = Me.ListIndex
  loc_A4F690: FLdI2 var_A2
  loc_A4F693: LitI2_Byte 1
  loc_A4F695: EqI2
  loc_A4F696: FFree1Ad var_88
  loc_A4F699: BranchF loc_A4F71A
  loc_A4F69C: LitStr "DetaOrga LIKE '" & Chr(37)
  loc_A4F69F: FLdPr Me
  loc_A4F6A2: VCallAd Control_ID_FiltroMsk
  loc_A4F6A5: FStAdFunc var_88
  loc_A4F6A8: FLdPr var_88
  loc_A4F6AB: LateIdLdVar var_98 DispID_22 0
  loc_A4F6B2: CStrVarTmp
  loc_A4F6B3: FStStrNoPop var_9C
  loc_A4F6B6: ConcatStr
  loc_A4F6B7: FStStrNoPop var_A0
  loc_A4F6BA: LitStr Chr(37) & "'"
  loc_A4F6BD: ConcatStr
  loc_A4F6BE: PopTmpLdAdStr
  loc_A4F6C2: FLdPr Me
  loc_A4F6C5: MemLdRfVar from_stack_1.BuscarCLS
  loc_A4F6C8: NewIfNullPr clsbase
  loc_A4F6CB: Call clsbase.Filter(from_stack_1v)
  loc_A4F6D0: FFreeStr var_9C = "": var_A0 = ""
  loc_A4F6D9: FFree1Ad var_88
  loc_A4F6DC: FFree1Var var_98 = ""
  loc_A4F6DF: LitStr "detalle que contiene "
  loc_A4F6E2: FLdPr Me
  loc_A4F6E5: VCallAd Control_ID_FiltroMsk
  loc_A4F6E8: FStAdFunc var_88
  loc_A4F6EB: FLdPr var_88
  loc_A4F6EE: LateIdLdVar var_98 DispID_22 0
  loc_A4F6F5: CStrVarTmp
  loc_A4F6F6: FStStrNoPop var_9C
  loc_A4F6F9: ConcatStr
  loc_A4F6FA: FStStrNoPop var_A0
  loc_A4F6FD: LitStr vbNullString
  loc_A4F700: ConcatStr
  loc_A4F701: FStStrNoPop var_A8
  loc_A4F704: FLdPr Me
  loc_A4F707: MemStStrCopy
  loc_A4F70B: FFreeStr var_9C = "": var_A0 = ""
  loc_A4F714: FFree1Ad var_88
  loc_A4F717: FFree1Var var_98 = ""
  loc_A4F71A: Branch loc_A4F741
  loc_A4F71D: LitStr vbNullString
  loc_A4F720: FStStrCopy var_9C
  loc_A4F723: FLdRfVar var_9C
  loc_A4F726: FLdPr Me
  loc_A4F729: MemLdRfVar from_stack_1.BuscarCLS
  loc_A4F72C: NewIfNullPr clsbase
  loc_A4F72F: Call clsbase.Filter(from_stack_1v)
  loc_A4F734: FFree1Str var_9C
  loc_A4F737: LitStr vbNullString
  loc_A4F73A: FLdPr Me
  loc_A4F73D: MemStStrCopy
  loc_A4F741: FLdRfVar var_AC
  loc_A4F744: FLdPr Me
  loc_A4F747: MemLdRfVar from_stack_1.BuscarCLS
  loc_A4F74A: NewIfNullPr clsbase
  loc_A4F74D: from_stack_1 = clsbase.RecordCount
  loc_A4F752: ILdRf var_AC
  loc_A4F755: LitI4 0
  loc_A4F75A: GtI4
  loc_A4F75B: BranchF loc_A4F7F9
  loc_A4F75E: FLdPr Me
  loc_A4F761: MemLdRfVar from_stack_1.BuscarCLS
  loc_A4F764: NewIfNullAd
  loc_A4F767: FStAd var_B0 
  loc_A4F76B: FLdRfVar var_B0
  loc_A4F76E: CVarRef
  loc_A4F773: ILdRf Me
  loc_A4F776: CastAd
  loc_A4F779: FStAdFunc var_88
  loc_A4F77C: FLdRfVar var_88
  loc_A4F77F: ImpAdCallFPR4 Proc_261_8_9C2398(, )
  loc_A4F784: ILdRf var_B0
  loc_A4F787: CastAd
  loc_A4F78A: FLdPr Me
  loc_A4F78D: MemStAdFunc
  loc_A4F791: FFreeAd var_88 = ""
  loc_A4F798: LitI4 0
  loc_A4F79D: LitI4 1
  loc_A4F7A2: FLdRfVar var_C4
  loc_A4F7A5: Redim
  loc_A4F7AF: FLdPr Me
  loc_A4F7B2: MemLdRfVar from_stack_1.BuscarCLS
  loc_A4F7B5: NewIfNullAd
  loc_A4F7B8: FStAd var_88 
  loc_A4F7BC: FLdRfVar var_88
  loc_A4F7BF: CVarRef
  loc_A4F7C4: ParmAry1St
  loc_A4F7CA: FLdPr Me
  loc_A4F7CD: VCallAd Control_ID_dgdABMS
  loc_A4F7D0: CVarAd
  loc_A4F7D4: ParmAry1St
  loc_A4F7DA: FLdRfVar var_C4
  loc_A4F7DD: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_A4F7E2: ILdRf var_88
  loc_A4F7E5: CastAd
  loc_A4F7E8: FLdPr Me
  loc_A4F7EB: MemStAdFunc
  loc_A4F7EF: FLdRfVar var_C4
  loc_A4F7F2: Erase
  loc_A4F7F3: FFree1Ad var_88
  loc_A4F7F6: Branch loc_A4F80D
  loc_A4F7F9: ILdRf Me
  loc_A4F7FC: CastAd
  loc_A4F7FF: FStAdFunc var_88
  loc_A4F802: FLdRfVar var_88
  loc_A4F805: ImpAdCallFPR4 Proc_261_15_A16E38()
  loc_A4F80A: FFree1Ad var_88
  loc_A4F80D: FLdPr Me
  loc_A4F810: VCallAd Control_ID_dgdABMS
  loc_A4F813: FStAdFunc var_B0
  loc_A4F816: LitI4 0
  loc_A4F81B: FStStrCopy var_9C
  loc_A4F81E: FLdRfVar var_9C
  loc_A4F821: FLdPr Me
  loc_A4F824: MemLdStr sFiltro
  loc_A4F827: FLdZeroAd var_B0
  loc_A4F82A: FStAdFunc var_88
  loc_A4F82D: FLdRfVar var_88
  loc_A4F830: ImpAdCallFPR4 Proc_261_62_9D9F1C(, , )
  loc_A4F835: FFree1Str var_9C
  loc_A4F838: FFreeAd var_88 = ""
  loc_A4F83F: ExitProcHresult
End Sub

Private Sub FiltroMsk_KeyPress(KeyAscii As Integer) '9978A4
  'Data Table: 41E6D4
  loc_997840: ILdI2 KeyAscii
  loc_997843: LitI2_Byte &H27
  loc_997845: EqI2
  loc_997846: BranchF loc_99784E
  loc_997849: LitI2_Byte 0
  loc_99784B: IStI2 KeyAscii
  loc_99784E: FLdRfVar var_88
  loc_997851: FLdPr Me
  loc_997854: MemLdRfVar from_stack_1.BuscarCLS
  loc_997857: NewIfNullPr clsbase
  loc_99785A: from_stack_1 = clsbase.RecordCount
  loc_99785F: ILdRf var_88
  loc_997862: LitI4 0
  loc_997867: EqI4
  loc_997868: ILdI2 KeyAscii
  loc_99786B: CI4UI1
  loc_99786C: LitI4 8
  loc_997871: NeI4
  loc_997872: AndI4
  loc_997873: FLdPr Me
  loc_997876: VCallAd Control_ID_FiltroMsk
  loc_997879: FStAdFunc var_8C
  loc_99787C: FLdPr var_8C
  loc_99787F: LateIdLdVar var_9C DispID_16 0
  loc_997886: CStrVarTmp
  loc_997887: FStStrNoPop var_A0
  loc_99788A: LitStr vbNullString
  loc_99788D: EqStr
  loc_99788F: AndI4
  loc_997890: FFree1Str var_A0
  loc_997893: FFree1Ad var_8C
  loc_997896: FFree1Var var_9C = ""
  loc_997899: BranchF loc_9978A1
  loc_99789C: LitI2_Byte 0
  loc_99789E: IStI2 KeyAscii
  loc_9978A1: ExitProcHresult
End Sub

Private Sub dgdABMS_UnknownEvent_0 '9559A0
  'Data Table: 41E6D4
  loc_955988: FLdPr Me
  loc_95598B: VCallAd Control_ID_dgdABMS
  loc_95598E: FStAdFunc var_88
  loc_955991: FLdRfVar var_88
  loc_955994: ImpAdCallFPR4 Proc_264_0_9758D8()
  loc_955999: FFree1Ad var_88
  loc_95599C: ExitProcHresult
End Sub

Private Sub dgdABMS_UnknownEvent_1 '955954
  'Data Table: 41E6D4
  loc_95593C: FLdPr Me
  loc_95593F: VCallAd Control_ID_dgdABMS
  loc_955942: FStAdFunc var_88
  loc_955945: FLdRfVar var_88
  loc_955948: ImpAdCallFPR4 Proc_264_1_96D788()
  loc_95594D: FFree1Ad var_88
  loc_955950: ExitProcHresult
End Sub

Private Sub dgdABMS_DblClick() '95B348
  'Data Table: 41E6D4
  loc_95B330: ILdRf Me
  loc_95B333: FStAdNoPop
  loc_95B337: ImpAdLdRf MemVar_C44F9C
  loc_95B33A: NewIfNullPr Me
  loc_95B33D: Me.Global.Unload from_stack_1
  loc_95B342: FFree1Ad var_88
  loc_95B345: ExitProcHresult
End Sub

Private Sub dgdABMS_HeadClick(ColIndex As Integer) '99BB28
  'Data Table: 41E6D4
  loc_99BACC: FLdRfVar var_B4
  loc_99BACF: FLdRfVar var_B0
  loc_99BAD2: FLdI2 ColIndex
  loc_99BAD5: CVarI2 var_A8
  loc_99BAD8: PopAdLdVar
  loc_99BAD9: FLdPr Me
  loc_99BADC: VCallAd Control_ID_dgdABMS
  loc_99BADF: FStAdFunc var_88
  loc_99BAE2: FLdPr var_88
  loc_99BAE5: LateIdLdVar var_98 DispID_105 0
  loc_99BAEC: CastAdVar Me
  loc_99BAF0: FStAdFunc var_AC
  loc_99BAF3: FLdPr var_AC
  loc_99BAF6: from_stack_2 = Me.Columns.Item(from_stack_1)
  loc_99BAFB: FLdPr var_B0
  loc_99BAFE:  = Me.DataField
  loc_99BB03: FLdZeroAd var_B4
  loc_99BB06: PopTmpLdAdStr
  loc_99BB0A: FLdPr Me
  loc_99BB0D: MemLdRfVar from_stack_1.BuscarCLS
  loc_99BB10: NewIfNullPr clsbase
  loc_99BB13: Call clsbase.Sort(from_stack_1v)
  loc_99BB18: FFree1Str var_B8
  loc_99BB1B: FFreeAd var_88 = "": var_AC = ""
  loc_99BB24: FFree1Var var_98 = ""
  loc_99BB27: ExitProcHresult
End Sub

Private Sub OKButton_Click() '95B050
  'Data Table: 41E6D4
  loc_95B038: ILdRf Me
  loc_95B03B: FStAdNoPop
  loc_95B03F: ImpAdLdRf MemVar_C44F9C
  loc_95B042: NewIfNullPr Me
  loc_95B045: Me.Global.Unload from_stack_1
  loc_95B04A: FFree1Ad var_88
  loc_95B04D: ExitProcHresult
End Sub

Private Sub Form_Load() 'A4D49C
  'Data Table: 41E6D4
  loc_A4D23C: LitStr "Buscar "
  loc_A4D23F: LitStr "U. Ejec."
  loc_A4D242: ConcatStr
  loc_A4D243: FStStrNoPop var_8C
  loc_A4D246: LitStr " por..."
  loc_A4D249: ConcatStr
  loc_A4D24A: FStStrNoPop var_90
  loc_A4D24D: FLdPr Me
  loc_A4D250: Me.Caption = from_stack_1
  loc_A4D255: FFreeStr var_8C = ""
  loc_A4D25C: FLdPr Me
  loc_A4D25F: MemLdI2 iPeriInfo
  loc_A4D262: LitI2_Byte 0
  loc_A4D264: EqI2
  loc_A4D265: BranchF loc_A4D271
  loc_A4D268: ImpAdLdI2 MemVar_C3D064
  loc_A4D26B: FLdPr Me
  loc_A4D26E: MemStI2 iPeriInfo
  loc_A4D271: FLdPr Me
  loc_A4D274: MemLdI2 iPeriInfo
  loc_A4D277: ImpAdLdI2 MemVar_C3D064
  loc_A4D27A: NeI2
  loc_A4D27B: BranchF loc_A4D2B5
  loc_A4D27E: FLdRfVar var_8C
  loc_A4D281: FLdPr Me
  loc_A4D284:  = Me.Caption
  loc_A4D289: ILdRf var_8C
  loc_A4D28C: LitStr " - Periodo: "
  loc_A4D28F: ConcatStr
  loc_A4D290: FStStrNoPop var_90
  loc_A4D293: FLdPr Me
  loc_A4D296: MemLdI2 iPeriInfo
  loc_A4D299: CStrUI1
  loc_A4D29B: FStStrNoPop var_94
  loc_A4D29E: ConcatStr
  loc_A4D29F: FStStrNoPop var_98
  loc_A4D2A2: FLdPr Me
  loc_A4D2A5: Me.Caption = from_stack_1
  loc_A4D2AA: FFreeStr var_8C = "": var_90 = "": var_94 = ""
  loc_A4D2B5: FLdRfVar var_9C
  loc_A4D2B8: FLdPr Me
  loc_A4D2BB: MemLdRfVar from_stack_1.BuscarCLS
  loc_A4D2BE: NewIfNullPr clsbase
  loc_A4D2C1: from_stack_1v = clsbase.RsFrmGet()
  loc_A4D2C6: ILdRf var_9C
  loc_A4D2C9: LitNothing
  loc_A4D2CB: Is
  loc_A4D2CD: FFree1Ad var_9C
  loc_A4D2D0: BranchF loc_A4D3D9
  loc_A4D2D3: LitStr "SELECT o.*, IFNULL(p.DetaPers, '') DetaPers, IFNULL(o2.DetaOrga, '') DetaSupOrga"
  loc_A4D2D6: LitStr ", (SELECT IFNULL(GROUP_CONCAT(DISTINCT CodiOrga), '') FROM infogov.organigrama WHERE PeriInfo = "
  loc_A4D2D9: ConcatStr
  loc_A4D2DA: FStStrNoPop var_8C
  loc_A4D2DD: FLdPr Me
  loc_A4D2E0: MemLdI2 iPeriInfo
  loc_A4D2E3: LitI2_Byte 1
  loc_A4D2E5: SubI2
  loc_A4D2E6: CStrUI1
  loc_A4D2E8: FStStrNoPop var_90
  loc_A4D2EB: ConcatStr
  loc_A4D2EC: FStStrNoPop var_94
  loc_A4D2EF: LitStr " AND CoesOrga = o.CodiOrga) CodiOrgaEjan"
  loc_A4D2F2: ConcatStr
  loc_A4D2F3: FStStrNoPop var_98
  loc_A4D2F6: LitStr ", infogov.fnArmarJeraOrga(o.PeriInfo,o.CodiOrga) JeraOrga"
  loc_A4D2F9: ConcatStr
  loc_A4D2FA: FStStrNoPop var_A0
  loc_A4D2FD: LitStr ", infogov.fnNiveOrga(o.PeriInfo,o.CodiOrga) NiveOrga"
  loc_A4D300: ConcatStr
  loc_A4D301: FStStrNoPop var_A4
  loc_A4D304: LitStr " FROM infogov.organigrama o"
  loc_A4D307: ConcatStr
  loc_A4D308: FStStrNoPop var_A8
  loc_A4D30B: LitStr " LEFT JOIN infogov.persona p ON p.CucuPers = o.CucuPers"
  loc_A4D30E: ConcatStr
  loc_A4D30F: FStStrNoPop var_AC
  loc_A4D312: LitStr " LEFT JOIN infogov.organigrama o2 ON o.PeriInfo = o2.PeriInfo AND o.CodSupOrga = o2.CodiOrga"
  loc_A4D315: ConcatStr
  loc_A4D316: FStStrNoPop var_B0
  loc_A4D319: LitStr " LEFT JOIN orgaxusua ON orgaxusua.PeriInfo = o.PeriInfo AND orgaxusua.CodiOrga = o.CodiOrga AND orgaxusua.CodiUsua = '"
  loc_A4D31C: ConcatStr
  loc_A4D31D: FStStrNoPop var_B4
  loc_A4D320: ImpAdLdI4 MemVar_C3D03C
  loc_A4D323: ConcatStr
  loc_A4D324: FStStrNoPop var_B8
  loc_A4D327: LitStr "'"
  loc_A4D32A: ConcatStr
  loc_A4D32B: FStStrNoPop var_BC
  loc_A4D32E: LitStr " WHERE o.PeriInfo = "
  loc_A4D331: ConcatStr
  loc_A4D332: FStStrNoPop var_C0
  loc_A4D335: FLdPr Me
  loc_A4D338: MemLdI2 iPeriInfo
  loc_A4D33B: CStrUI1
  loc_A4D33D: FStStrNoPop var_C4
  loc_A4D340: ConcatStr
  loc_A4D341: CVarStr var_134
  loc_A4D344: LitVarStr var_104, " AND o.BajaUsua = '' "
  loc_A4D349: FStVarCopyObj var_114
  loc_A4D34C: FLdRfVar var_114
  loc_A4D34F: LitVarStr var_E4, vbNullString
  loc_A4D354: FStVarCopyObj var_F4
  loc_A4D357: FLdRfVar var_F4
  loc_A4D35A: FLdPr Me
  loc_A4D35D: MemLdRfVar from_stack_1.MuestroAnulados
  loc_A4D360: CVarRef
  loc_A4D365: FLdRfVar var_124
  loc_A4D368: ImpAdCallFPR4  = IIf(, , )
  loc_A4D36D: FLdRfVar var_124
  loc_A4D370: ConcatVar var_144
  loc_A4D374: CStrVarTmp
  loc_A4D375: FStStr var_88
  loc_A4D378: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = ""
  loc_A4D397: FFreeVar var_F4 = "": var_114 = "": var_134 = "": var_124 = ""
  loc_A4D3A4: FLdPr Me
  loc_A4D3A7: MemLdI2 iPeriInfo
  loc_A4D3AA: LitI2 2024
  loc_A4D3AD: GeI2
  loc_A4D3AE: BranchF loc_A4D3BE
  loc_A4D3B1: ILdRf var_88
  loc_A4D3B4: LitStr " ORDER BY JeraOrga;"
  loc_A4D3B7: ConcatStr
  loc_A4D3B8: FStStr var_88
  loc_A4D3BB: Branch loc_A4D3C8
  loc_A4D3BE: ILdRf var_88
  loc_A4D3C1: LitStr " ORDER BY o.CodiOrga;"
  loc_A4D3C4: ConcatStr
  loc_A4D3C5: FStStr var_88
  loc_A4D3C8: ILdRf var_88
  loc_A4D3CB: FLdPr Me
  loc_A4D3CE: MemLdRfVar from_stack_1.BuscarCLS
  loc_A4D3D1: NewIfNullPr clsbase
  loc_A4D3D4: Call clsbase.RedefineRS(from_stack_1v)
  loc_A4D3D9: LitVarI2 var_D4, 0
  loc_A4D3DE: PopAdLdVar
  loc_A4D3DF: LitStr "U. Ejec."
  loc_A4D3E2: LitStr " (Código)"
  loc_A4D3E5: ConcatStr
  loc_A4D3E6: FStStrNoPop var_8C
  loc_A4D3E9: FLdPr Me
  loc_A4D3EC: VCallAd Control_ID_FiltroCbo
  loc_A4D3EF: FStAdFunc var_9C
  loc_A4D3F2: FLdPr var_9C
  loc_A4D3F5: Me.AddItem from_stack_1, from_stack_2
  loc_A4D3FA: FFree1Str var_8C
  loc_A4D3FD: FFree1Ad var_9C
  loc_A4D400: LitVarI2 var_D4, 1
  loc_A4D405: PopAdLdVar
  loc_A4D406: LitStr "U. Ejec."
  loc_A4D409: LitStr " (Detalle)"
  loc_A4D40C: ConcatStr
  loc_A4D40D: FStStrNoPop var_8C
  loc_A4D410: FLdPr Me
  loc_A4D413: VCallAd Control_ID_FiltroCbo
  loc_A4D416: FStAdFunc var_9C
  loc_A4D419: FLdPr var_9C
  loc_A4D41C: Me.AddItem from_stack_1, from_stack_2
  loc_A4D421: FFree1Str var_8C
  loc_A4D424: FFree1Ad var_9C
  loc_A4D427: LitI2_Byte 1
  loc_A4D429: FLdPr Me
  loc_A4D42C: VCallAd Control_ID_FiltroCbo
  loc_A4D42F: FStAdFunc var_9C
  loc_A4D432: FLdPr var_9C
  loc_A4D435: Me.ListIndex = from_stack_1
  loc_A4D43A: FFree1Ad var_9C
  loc_A4D43D: LitI4 0
  loc_A4D442: LitI4 1
  loc_A4D447: FLdRfVar var_148
  loc_A4D44A: Redim
  loc_A4D454: FLdPr Me
  loc_A4D457: MemLdRfVar from_stack_1.BuscarCLS
  loc_A4D45A: NewIfNullAd
  loc_A4D45D: FStAd var_9C 
  loc_A4D461: FLdRfVar var_9C
  loc_A4D464: CVarRef
  loc_A4D469: ParmAry1St
  loc_A4D46F: FLdPr Me
  loc_A4D472: VCallAd Control_ID_dgdABMS
  loc_A4D475: CVarAd
  loc_A4D479: ParmAry1St
  loc_A4D47F: FLdRfVar var_148
  loc_A4D482: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_A4D487: ILdRf var_9C
  loc_A4D48A: CastAd
  loc_A4D48D: FLdPr Me
  loc_A4D490: MemStAdFunc
  loc_A4D494: FLdRfVar var_148
  loc_A4D497: Erase
  loc_A4D498: FFree1Ad var_9C
  loc_A4D49B: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '974188
  'Data Table: 41E6D4
  loc_974160: LitI2_Byte 0
  loc_974162: FLdPr Me
  loc_974165: MemStI2 iPeriInfo
  loc_974168: LitI2_Byte 0
  loc_97416A: FLdPr Me
  loc_97416D: MemStI2 MuestroAnulados
  loc_974170: ILdRf Me
  loc_974173: FStAdNoPop
  loc_974177: ImpAdLdRf MemVar_C44F9C
  loc_97417A: NewIfNullPr Me
  loc_97417D: Me.Global.Unload from_stack_1
  loc_974182: FFree1Ad var_88
  loc_974185: ExitProcHresult
End Sub

Private Sub Form_Activate() '952938
  'Data Table: 41E6D4
  loc_952924: FLdPr Me
  loc_952927: VCallAd Control_ID_FiltroMsk
  loc_95292A: CVarAd
  loc_95292E: ImpAdCallFPR4 Proc_261_5_9BDB84()
  loc_952933: FFree1Var var_94 = ""
  loc_952936: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) '96A460
  'Data Table: 41E6D4
  loc_96A444: On Error Resume Next
  loc_96A449: ILdI2 KeyAscii
  loc_96A44C: CI4UI1
  loc_96A44D: LitI4 &HD
  loc_96A452: EqI4
  loc_96A453: BranchF loc_96A45D
  loc_96A458: ImpAdCallFPR4 Proc_261_52_966EEC()
  loc_96A45F: ExitProcHresult
End Sub

Public Function iPeriInfoGet() '41EC00
  iPeriInfoGet = iPeriInfo
End Function

Public Sub iPeriInfoPut(Value) '41EC0F
  iPeriInfo = Value
End Sub

Public Function MuestroAnuladosGet() '41EC1E
  MuestroAnuladosGet = MuestroAnulados
End Function

Public Sub MuestroAnuladosPut(Value) '41EC2D
  MuestroAnulados = Value
End Sub

Public Function global_4318932Get() '41EC3C
  global_4318932Get = global_4318932
End Function

Public Sub global_4318932Put(Value) '41EC56
  global_4318932 = Value
End Sub

Public Sub global_4318932Set(Value) '41EC70
  global_4318932 = Value
End Sub

Public Function sFiltroGet() '41EC8A
  sFiltroGet = sFiltro
End Function

Public Sub sFiltroPut(Value) '41EC99
  sFiltro = Value
End Sub

Public Sub Constructor(wPeriInfo, sWhere) 'A17548
  'Data Table: 41E6D4
  loc_A17404: ILdRf sWhere
  loc_A17407: FStStrCopy var_88
  loc_A1740A: LitI4 0
  loc_A1740F: LitI4 -1
  loc_A17414: LitI4 1
  loc_A17419: LitStr vbNullString
  loc_A1741C: LitStr "_"
  loc_A1741F: ILdRf var_88
  loc_A17422: ImpAdCallI2 Replace(, , , , , )
  loc_A17427: FStStr var_88
  loc_A1742A: ILdRf var_88
  loc_A1742D: LitStr " AND o.CodiOrga = ''"
  loc_A17430: EqStr
  loc_A17432: BranchF loc_A1743B
  loc_A17435: LitStr vbNullString
  loc_A17438: FStStrCopy var_88
  loc_A1743B: LitStr "SELECT o.*, IFNULL(p.DetaPers, '') DetaPers, IFNULL(o2.DetaOrga, '') DetaSupOrga"
  loc_A1743E: LitStr ", (SELECT IFNULL(GROUP_CONCAT(DISTINCT CodiOrga), '') FROM infogov.organigrama WHERE PeriInfo = "
  loc_A17441: ConcatStr
  loc_A17442: FStStrNoPop var_90
  loc_A17445: FLdI2 wPeriInfo
  loc_A17448: LitI2_Byte 1
  loc_A1744A: SubI2
  loc_A1744B: CStrUI1
  loc_A1744D: FStStrNoPop var_94
  loc_A17450: ConcatStr
  loc_A17451: FStStrNoPop var_98
  loc_A17454: LitStr " AND CoesOrga = o.CodiOrga) CodiOrgaEjan"
  loc_A17457: ConcatStr
  loc_A17458: FStStrNoPop var_9C
  loc_A1745B: LitStr ", infogov.fnArmarJeraOrga(o.PeriInfo,o.CodiOrga) JeraOrga"
  loc_A1745E: ConcatStr
  loc_A1745F: FStStrNoPop var_A0
  loc_A17462: LitStr ", infogov.fnNiveOrga(o.PeriInfo,o.CodiOrga) NiveOrga"
  loc_A17465: ConcatStr
  loc_A17466: FStStrNoPop var_A4
  loc_A17469: LitStr " FROM infogov.organigrama o"
  loc_A1746C: ConcatStr
  loc_A1746D: FStStrNoPop var_A8
  loc_A17470: LitStr " LEFT JOIN infogov.persona p ON p.CucuPers = o.CucuPers"
  loc_A17473: ConcatStr
  loc_A17474: FStStrNoPop var_AC
  loc_A17477: LitStr " LEFT JOIN infogov.organigrama o2 ON o.PeriInfo = o2.PeriInfo AND o.CodSupOrga = o2.CodiOrga"
  loc_A1747A: ConcatStr
  loc_A1747B: FStStrNoPop var_B0
  loc_A1747E: LitStr " LEFT JOIN orgaxusua ON orgaxusua.PeriInfo = o.PeriInfo AND orgaxusua.CodiOrga = o.CodiOrga AND orgaxusua.CodiUsua = '"
  loc_A17481: ConcatStr
  loc_A17482: FStStrNoPop var_B4
  loc_A17485: ImpAdLdI4 MemVar_C3D03C
  loc_A17488: ConcatStr
  loc_A17489: FStStrNoPop var_B8
  loc_A1748C: LitStr "'"
  loc_A1748F: ConcatStr
  loc_A17490: FStStrNoPop var_BC
  loc_A17493: LitStr " WHERE o.PeriInfo = "
  loc_A17496: ConcatStr
  loc_A17497: FStStrNoPop var_C0
  loc_A1749A: FLdI2 wPeriInfo
  loc_A1749D: CStrUI1
  loc_A1749F: FStStrNoPop var_C4
  loc_A174A2: ConcatStr
  loc_A174A3: CVarStr var_134
  loc_A174A6: LitVarStr var_104, " AND o.BajaUsua = '' "
  loc_A174AB: FStVarCopyObj var_114
  loc_A174AE: FLdRfVar var_114
  loc_A174B1: LitVarStr var_E4, vbNullString
  loc_A174B6: FStVarCopyObj var_F4
  loc_A174B9: FLdRfVar var_F4
  loc_A174BC: FLdPr Me
  loc_A174BF: MemLdRfVar from_stack_1.MuestroAnulados
  loc_A174C2: CVarRef
  loc_A174C7: FLdRfVar var_124
  loc_A174CA: ImpAdCallFPR4  = IIf(, , )
  loc_A174CF: FLdRfVar var_124
  loc_A174D2: ConcatVar var_144
  loc_A174D6: ILdRf var_88
  loc_A174D9: CVarStr var_154
  loc_A174DC: ConcatVar var_164
  loc_A174E0: CStrVarTmp
  loc_A174E1: FStStr var_8C
  loc_A174E4: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = ""
  loc_A17503: FFreeVar var_F4 = "": var_114 = "": var_134 = "": var_124 = "": var_144 = ""
  loc_A17512: ImpAdLdI2 MemVar_C3D064
  loc_A17515: LitI2 2024
  loc_A17518: GeI2
  loc_A17519: BranchF loc_A17529
  loc_A1751C: ILdRf var_8C
  loc_A1751F: LitStr " ORDER BY JeraOrga;"
  loc_A17522: ConcatStr
  loc_A17523: FStStr var_8C
  loc_A17526: Branch loc_A17533
  loc_A17529: ILdRf var_8C
  loc_A1752C: LitStr " ORDER BY o.CodiOrga;"
  loc_A1752F: ConcatStr
  loc_A17530: FStStr var_8C
  loc_A17533: ILdRf var_8C
  loc_A17536: FLdPr Me
  loc_A17539: MemLdRfVar from_stack_1.BuscarCLS
  loc_A1753C: NewIfNullPr clsbase
  loc_A1753F: Call clsbase.RedefineRS(from_stack_1v)
  loc_A17544: ExitProcHresult
End Sub
