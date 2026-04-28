VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Begin VB.Form bscRubro
  Caption = "Rubros Actividad"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "bscRubro.frx":0000
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
      OleObjectBlob = "bscRubro.frx":08CA
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
    OleObjectBlob = "bscRubro.frx":092A
  End
End

Attribute VB_Name = "bscRubro"

Public MuestroAnulados As Boolean
Public BuscarCLS As New Class
Public sFiltro As String


Private Sub FiltroCbo_Click() '9C1640
  'Data Table: 41C398
  loc_9C1570: LitVarStr var_94, vbNullString
  loc_9C1575: PopAdLdVar
  loc_9C1576: FLdPr Me
  loc_9C1579: VCallAd Control_ID_FiltroMsk
  loc_9C157C: FStAdFunc var_A8
  loc_9C157F: FLdPr var_A8
  loc_9C1582: LateIdSt
  loc_9C1587: FFree1Ad var_A8
  loc_9C158A: FLdRfVar var_AA
  loc_9C158D: FLdPr Me
  loc_9C1590: VCallAd Control_ID_FiltroCbo
  loc_9C1593: FStAdFunc var_A8
  loc_9C1596: FLdPr var_A8
  loc_9C1599:  = Me.ListIndex
  loc_9C159E: FLdI2 var_AA
  loc_9C15A1: FStI2 var_AC
  loc_9C15A4: FFree1Ad var_A8
  loc_9C15A7: FLdI2 var_AC
  loc_9C15AA: LitI2_Byte 0
  loc_9C15AC: EqI2
  loc_9C15AD: BranchF loc_9C15E7
  loc_9C15B0: LitVarStr var_94, "#####"
  loc_9C15B5: PopAdLdVar
  loc_9C15B6: FLdPr Me
  loc_9C15B9: VCallAd Control_ID_FiltroMsk
  loc_9C15BC: FStAdFunc var_A8
  loc_9C15BF: FLdPr var_A8
  loc_9C15C2: LateIdSt
  loc_9C15C7: FFree1Ad var_A8
  loc_9C15CA: LitStr "IdRubro"
  loc_9C15CD: FStStrCopy var_B0
  loc_9C15D0: FLdRfVar var_B0
  loc_9C15D3: FLdPr Me
  loc_9C15D6: MemLdRfVar from_stack_1.BuscarCLS
  loc_9C15D9: NewIfNullPr clsbase
  loc_9C15DC: Call clsbase.Sort(from_stack_1v)
  loc_9C15E1: FFree1Str var_B0
  loc_9C15E4: Branch loc_9C163E
  loc_9C15E7: FLdI2 var_AC
  loc_9C15EA: LitI2_Byte 1
  loc_9C15EC: EqI2
  loc_9C15ED: BranchF loc_9C163E
  loc_9C15F0: LitVarStr var_94, "&"
  loc_9C15F5: PopAdLdVar
  loc_9C15F6: FLdPr Me
  loc_9C15F9: VCallAd Control_ID_FiltroMsk
  loc_9C15FC: FStAdFunc var_A8
  loc_9C15FF: FLdPr var_A8
  loc_9C1602: LateIdSt
  loc_9C1607: FFree1Ad var_A8
  loc_9C160A: LitVarStr var_94, vbNullString
  loc_9C160F: PopAdLdVar
  loc_9C1610: FLdPr Me
  loc_9C1613: VCallAd Control_ID_FiltroMsk
  loc_9C1616: FStAdFunc var_A8
  loc_9C1619: FLdPr var_A8
  loc_9C161C: LateIdSt
  loc_9C1621: FFree1Ad var_A8
  loc_9C1624: LitStr "DetaRubro"
  loc_9C1627: FStStrCopy var_B0
  loc_9C162A: FLdRfVar var_B0
  loc_9C162D: FLdPr Me
  loc_9C1630: MemLdRfVar from_stack_1.BuscarCLS
  loc_9C1633: NewIfNullPr clsbase
  loc_9C1636: Call clsbase.Sort(from_stack_1v)
  loc_9C163B: FFree1Str var_B0
  loc_9C163E: ExitProcHresult
End Sub

Private Sub FiltroMsk_UnknownEvent_0 '94AB38
  'Data Table: 41C398
  loc_94AB24: FLdPr Me
  loc_94AB27: VCallAd Control_ID_FiltroMsk
  loc_94AB2A: CVarAd
  loc_94AB2E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94AB33: FFree1Var var_94 = ""
  loc_94AB36: ExitProcHresult
End Sub

Private Sub FiltroMsk_Change() 'A4D7C8
  'Data Table: 41C398
  loc_A4D52C: ILdRf Me
  loc_A4D52F: CastAd
  loc_A4D532: FStAdFunc var_88
  loc_A4D535: FLdRfVar var_88
  loc_A4D538: ImpAdCallFPR4  = Proc_261_10_99CABC()
  loc_A4D53D: FFree1Ad var_88
  loc_A4D540: FLdPr Me
  loc_A4D543: VCallAd Control_ID_FiltroMsk
  loc_A4D546: FStAdFunc var_88
  loc_A4D549: FLdPr var_88
  loc_A4D54C: LateIdLdVar var_98 DispID_22 0
  loc_A4D553: CStrVarTmp
  loc_A4D554: FStStrNoPop var_9C
  loc_A4D557: ImpAdCallI2 Trim$()
  loc_A4D55C: FStStrNoPop var_A0
  loc_A4D55F: LitStr vbNullString
  loc_A4D562: NeStr
  loc_A4D564: FFreeStr var_9C = ""
  loc_A4D56B: FFree1Ad var_88
  loc_A4D56E: FFree1Var var_98 = ""
  loc_A4D571: BranchF loc_A4D6A4
  loc_A4D574: FLdRfVar var_A2
  loc_A4D577: FLdPr Me
  loc_A4D57A: VCallAd Control_ID_FiltroCbo
  loc_A4D57D: FStAdFunc var_88
  loc_A4D580: FLdPr var_88
  loc_A4D583:  = Me.ListIndex
  loc_A4D588: FLdI2 var_A2
  loc_A4D58B: LitI2_Byte 0
  loc_A4D58D: EqI2
  loc_A4D58E: FFree1Ad var_88
  loc_A4D591: BranchF loc_A4D603
  loc_A4D594: LitStr "IdRubro = "
  loc_A4D597: FLdPr Me
  loc_A4D59A: VCallAd Control_ID_FiltroMsk
  loc_A4D59D: FStAdFunc var_88
  loc_A4D5A0: FLdPr var_88
  loc_A4D5A3: LateIdLdVar var_98 DispID_22 0
  loc_A4D5AA: CStrVarTmp
  loc_A4D5AB: FStStrNoPop var_9C
  loc_A4D5AE: ConcatStr
  loc_A4D5AF: PopTmpLdAdStr
  loc_A4D5B3: FLdPr Me
  loc_A4D5B6: MemLdRfVar from_stack_1.BuscarCLS
  loc_A4D5B9: NewIfNullPr clsbase
  loc_A4D5BC: Call clsbase.Filter(from_stack_1v)
  loc_A4D5C1: FFreeStr var_9C = ""
  loc_A4D5C8: FFree1Ad var_88
  loc_A4D5CB: FFree1Var var_98 = ""
  loc_A4D5CE: LitStr "código que sea igual a "
  loc_A4D5D1: FLdPr Me
  loc_A4D5D4: VCallAd Control_ID_FiltroMsk
  loc_A4D5D7: FStAdFunc var_88
  loc_A4D5DA: FLdPr var_88
  loc_A4D5DD: LateIdLdVar var_98 DispID_22 0
  loc_A4D5E4: CStrVarTmp
  loc_A4D5E5: FStStrNoPop var_9C
  loc_A4D5E8: ConcatStr
  loc_A4D5E9: FStStrNoPop var_A0
  loc_A4D5EC: FLdPr Me
  loc_A4D5EF: MemStStrCopy
  loc_A4D5F3: FFreeStr var_9C = ""
  loc_A4D5FA: FFree1Ad var_88
  loc_A4D5FD: FFree1Var var_98 = ""
  loc_A4D600: Branch loc_A4D6A1
  loc_A4D603: FLdRfVar var_A2
  loc_A4D606: FLdPr Me
  loc_A4D609: VCallAd Control_ID_FiltroCbo
  loc_A4D60C: FStAdFunc var_88
  loc_A4D60F: FLdPr var_88
  loc_A4D612:  = Me.ListIndex
  loc_A4D617: FLdI2 var_A2
  loc_A4D61A: LitI2_Byte 1
  loc_A4D61C: EqI2
  loc_A4D61D: FFree1Ad var_88
  loc_A4D620: BranchF loc_A4D6A1
  loc_A4D623: LitStr "DetaRubro LIKE '" & Chr(37)
  loc_A4D626: FLdPr Me
  loc_A4D629: VCallAd Control_ID_FiltroMsk
  loc_A4D62C: FStAdFunc var_88
  loc_A4D62F: FLdPr var_88
  loc_A4D632: LateIdLdVar var_98 DispID_22 0
  loc_A4D639: CStrVarTmp
  loc_A4D63A: FStStrNoPop var_9C
  loc_A4D63D: ConcatStr
  loc_A4D63E: FStStrNoPop var_A0
  loc_A4D641: LitStr Chr(37) & "'"
  loc_A4D644: ConcatStr
  loc_A4D645: PopTmpLdAdStr
  loc_A4D649: FLdPr Me
  loc_A4D64C: MemLdRfVar from_stack_1.BuscarCLS
  loc_A4D64F: NewIfNullPr clsbase
  loc_A4D652: Call clsbase.Filter(from_stack_1v)
  loc_A4D657: FFreeStr var_9C = "": var_A0 = ""
  loc_A4D660: FFree1Ad var_88
  loc_A4D663: FFree1Var var_98 = ""
  loc_A4D666: LitStr "detalle que contiene "
  loc_A4D669: FLdPr Me
  loc_A4D66C: VCallAd Control_ID_FiltroMsk
  loc_A4D66F: FStAdFunc var_88
  loc_A4D672: FLdPr var_88
  loc_A4D675: LateIdLdVar var_98 DispID_22 0
  loc_A4D67C: CStrVarTmp
  loc_A4D67D: FStStrNoPop var_9C
  loc_A4D680: ConcatStr
  loc_A4D681: FStStrNoPop var_A0
  loc_A4D684: LitStr vbNullString
  loc_A4D687: ConcatStr
  loc_A4D688: FStStrNoPop var_A8
  loc_A4D68B: FLdPr Me
  loc_A4D68E: MemStStrCopy
  loc_A4D692: FFreeStr var_9C = "": var_A0 = ""
  loc_A4D69B: FFree1Ad var_88
  loc_A4D69E: FFree1Var var_98 = ""
  loc_A4D6A1: Branch loc_A4D6C8
  loc_A4D6A4: LitStr vbNullString
  loc_A4D6A7: FStStrCopy var_9C
  loc_A4D6AA: FLdRfVar var_9C
  loc_A4D6AD: FLdPr Me
  loc_A4D6B0: MemLdRfVar from_stack_1.BuscarCLS
  loc_A4D6B3: NewIfNullPr clsbase
  loc_A4D6B6: Call clsbase.Filter(from_stack_1v)
  loc_A4D6BB: FFree1Str var_9C
  loc_A4D6BE: LitStr vbNullString
  loc_A4D6C1: FLdPr Me
  loc_A4D6C4: MemStStrCopy
  loc_A4D6C8: FLdRfVar var_AC
  loc_A4D6CB: FLdPr Me
  loc_A4D6CE: MemLdRfVar from_stack_1.BuscarCLS
  loc_A4D6D1: NewIfNullPr clsbase
  loc_A4D6D4: from_stack_1 = clsbase.RecordCount
  loc_A4D6D9: ILdRf var_AC
  loc_A4D6DC: LitI4 0
  loc_A4D6E1: GtI4
  loc_A4D6E2: BranchF loc_A4D780
  loc_A4D6E5: FLdPr Me
  loc_A4D6E8: MemLdRfVar from_stack_1.BuscarCLS
  loc_A4D6EB: NewIfNullAd
  loc_A4D6EE: FStAd var_B0 
  loc_A4D6F2: FLdRfVar var_B0
  loc_A4D6F5: CVarRef
  loc_A4D6FA: ILdRf Me
  loc_A4D6FD: CastAd
  loc_A4D700: FStAdFunc var_88
  loc_A4D703: FLdRfVar var_88
  loc_A4D706: ImpAdCallFPR4  = Proc_261_8_9C2398()
  loc_A4D70B: ILdRf var_B0
  loc_A4D70E: CastAd
  loc_A4D711: FLdPr Me
  loc_A4D714: MemStAdFunc
  loc_A4D718: FFreeAd var_88 = ""
  loc_A4D71F: LitI4 0
  loc_A4D724: LitI4 1
  loc_A4D729: FLdRfVar var_C4
  loc_A4D72C: Redim
  loc_A4D736: FLdPr Me
  loc_A4D739: MemLdRfVar from_stack_1.BuscarCLS
  loc_A4D73C: NewIfNullAd
  loc_A4D73F: FStAd var_88 
  loc_A4D743: FLdRfVar var_88
  loc_A4D746: CVarRef
  loc_A4D74B: ParmAry1St
  loc_A4D751: FLdPr Me
  loc_A4D754: VCallAd Control_ID_dgdABMS
  loc_A4D757: CVarAd
  loc_A4D75B: ParmAry1St
  loc_A4D761: FLdRfVar var_C4
  loc_A4D764: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_A4D769: ILdRf var_88
  loc_A4D76C: CastAd
  loc_A4D76F: FLdPr Me
  loc_A4D772: MemStAdFunc
  loc_A4D776: FLdRfVar var_C4
  loc_A4D779: Erase
  loc_A4D77A: FFree1Ad var_88
  loc_A4D77D: Branch loc_A4D794
  loc_A4D780: ILdRf Me
  loc_A4D783: CastAd
  loc_A4D786: FStAdFunc var_88
  loc_A4D789: FLdRfVar var_88
  loc_A4D78C: ImpAdCallFPR4  = Proc_261_15_A16E38()
  loc_A4D791: FFree1Ad var_88
  loc_A4D794: FLdPr Me
  loc_A4D797: VCallAd Control_ID_dgdABMS
  loc_A4D79A: FStAdFunc var_B0
  loc_A4D79D: LitI4 0
  loc_A4D7A2: FStStrCopy var_9C
  loc_A4D7A5: FLdRfVar var_9C
  loc_A4D7A8: FLdPr Me
  loc_A4D7AB: MemLdStr sFiltro
  loc_A4D7AE: FLdZeroAd var_B0
  loc_A4D7B1: FStAdFunc var_88
  loc_A4D7B4: FLdRfVar var_88
  loc_A4D7B7: ImpAdCallFPR4  = Proc_261_62_9D9F1C(, )
  loc_A4D7BC: FFree1Str var_9C
  loc_A4D7BF: FFreeAd var_88 = ""
  loc_A4D7C6: ExitProcHresult
End Sub

Private Sub FiltroMsk_KeyPress(KeyAscii As Integer) '9973A4
  'Data Table: 41C398
  loc_997340: ILdI2 KeyAscii
  loc_997343: LitI2_Byte &H27
  loc_997345: EqI2
  loc_997346: BranchF loc_99734E
  loc_997349: LitI2_Byte 0
  loc_99734B: IStI2 KeyAscii
  loc_99734E: FLdRfVar var_88
  loc_997351: FLdPr Me
  loc_997354: MemLdRfVar from_stack_1.BuscarCLS
  loc_997357: NewIfNullPr clsbase
  loc_99735A: from_stack_1 = clsbase.RecordCount
  loc_99735F: ILdRf var_88
  loc_997362: LitI4 0
  loc_997367: EqI4
  loc_997368: ILdI2 KeyAscii
  loc_99736B: CI4UI1
  loc_99736C: LitI4 8
  loc_997371: NeI4
  loc_997372: AndI4
  loc_997373: FLdPr Me
  loc_997376: VCallAd Control_ID_FiltroMsk
  loc_997379: FStAdFunc var_8C
  loc_99737C: FLdPr var_8C
  loc_99737F: LateIdLdVar var_9C DispID_16 0
  loc_997386: CStrVarTmp
  loc_997387: FStStrNoPop var_A0
  loc_99738A: LitStr vbNullString
  loc_99738D: EqStr
  loc_99738F: AndI4
  loc_997390: FFree1Str var_A0
  loc_997393: FFree1Ad var_8C
  loc_997396: FFree1Var var_9C = ""
  loc_997399: BranchF loc_9973A1
  loc_99739C: LitI2_Byte 0
  loc_99739E: IStI2 KeyAscii
  loc_9973A1: ExitProcHresult
End Sub

Private Sub dgdABMS_UnknownEvent_0 '954194
  'Data Table: 41C398
  loc_95417C: FLdPr Me
  loc_95417F: VCallAd Control_ID_dgdABMS
  loc_954182: FStAdFunc var_88
  loc_954185: FLdRfVar var_88
  loc_954188: ImpAdCallFPR4  = Proc_264_0_9758D8()
  loc_95418D: FFree1Ad var_88
  loc_954190: ExitProcHresult
End Sub

Private Sub dgdABMS_UnknownEvent_1 '9564E8
  'Data Table: 41C398
  loc_9564D0: FLdPr Me
  loc_9564D3: VCallAd Control_ID_dgdABMS
  loc_9564D6: FStAdFunc var_88
  loc_9564D9: FLdRfVar var_88
  loc_9564DC: ImpAdCallFPR4  = Proc_264_1_96D788()
  loc_9564E1: FFree1Ad var_88
  loc_9564E4: ExitProcHresult
End Sub

Private Sub dgdABMS_DblClick() '953EE8
  'Data Table: 41C398
  loc_953ED0: ILdRf Me
  loc_953ED3: FStAdNoPop
  loc_953ED7: ImpAdLdRf MemVar_C44F9C
  loc_953EDA: NewIfNullPr Me
  loc_953EDD: Me.Global.Unload from_stack_1
  loc_953EE2: FFree1Ad var_88
  loc_953EE5: ExitProcHresult
End Sub

Private Sub dgdABMS_HeadClick(ColIndex As Integer) '99955C
  'Data Table: 41C398
  loc_999500: FLdRfVar var_B4
  loc_999503: FLdRfVar var_B0
  loc_999506: FLdI2 ColIndex
  loc_999509: CVarI2 var_A8
  loc_99950C: PopAdLdVar
  loc_99950D: FLdPr Me
  loc_999510: VCallAd Control_ID_dgdABMS
  loc_999513: FStAdFunc var_88
  loc_999516: FLdPr var_88
  loc_999519: LateIdLdVar var_98 DispID_105 0
  loc_999520: CastAdVar Me
  loc_999524: FStAdFunc var_AC
  loc_999527: FLdPr var_AC
  loc_99952A: from_stack_2 = Me.Columns.Item(from_stack_1)
  loc_99952F: FLdPr var_B0
  loc_999532:  = Me.DataField
  loc_999537: FLdZeroAd var_B4
  loc_99953A: PopTmpLdAdStr
  loc_99953E: FLdPr Me
  loc_999541: MemLdRfVar from_stack_1.BuscarCLS
  loc_999544: NewIfNullPr clsbase
  loc_999547: Call clsbase.Sort(from_stack_1v)
  loc_99954C: FFree1Str var_B8
  loc_99954F: FFreeAd var_88 = "": var_AC = ""
  loc_999558: FFree1Var var_98 = ""
  loc_99955B: ExitProcHresult
End Sub

Private Sub OKButton_Click() '95A554
  'Data Table: 41C398
  loc_95A53C: ILdRf Me
  loc_95A53F: FStAdNoPop
  loc_95A543: ImpAdLdRf MemVar_C44F9C
  loc_95A546: NewIfNullPr Me
  loc_95A549: Me.Global.Unload from_stack_1
  loc_95A54E: FFree1Ad var_88
  loc_95A551: ExitProcHresult
End Sub

Private Sub Form_Load() 'A00560
  'Data Table: 41C398
  loc_A00420: LitStr "Buscar Rubros por..."
  loc_A00423: FLdPr Me
  loc_A00426: Me.Caption = from_stack_1
  loc_A0042B: FLdRfVar var_88
  loc_A0042E: FLdPr Me
  loc_A00431: MemLdRfVar from_stack_1.BuscarCLS
  loc_A00434: NewIfNullPr clsbase
  loc_A00437: from_stack_1v = clsbase.RsFrmGet()
  loc_A0043C: ILdRf var_88
  loc_A0043F: LitNothing
  loc_A00441: Is
  loc_A00443: FFree1Ad var_88
  loc_A00446: BranchF loc_A004B0
  loc_A00449: LitStr "SELECT r.* "
  loc_A0044C: LitStr " FROM rubro r"
  loc_A0044F: ConcatStr
  loc_A00450: FStStrNoPop var_8C
  loc_A00453: LitStr " WHERE TRUE "
  loc_A00456: ConcatStr
  loc_A00457: CVarStr var_FC
  loc_A0045A: LitVarStr var_CC, " AND r.BajaUsua = '' "
  loc_A0045F: FStVarCopyObj var_DC
  loc_A00462: FLdRfVar var_DC
  loc_A00465: LitVarStr var_AC, vbNullString
  loc_A0046A: FStVarCopyObj var_BC
  loc_A0046D: FLdRfVar var_BC
  loc_A00470: FLdPr Me
  loc_A00473: MemLdRfVar from_stack_1.MuestroAnulados
  loc_A00476: CVarRef
  loc_A0047B: FLdRfVar var_EC
  loc_A0047E: ImpAdCallFPR4  = IIf(, , )
  loc_A00483: FLdRfVar var_EC
  loc_A00486: ConcatVar var_10C
  loc_A0048A: CStrVarVal var_110
  loc_A0048E: FLdPr Me
  loc_A00491: MemLdRfVar from_stack_1.BuscarCLS
  loc_A00494: NewIfNullPr clsbase
  loc_A00497: Call clsbase.RedefineRS(from_stack_1v)
  loc_A0049C: FFreeStr var_8C = ""
  loc_A004A3: FFreeVar var_BC = "": var_DC = "": var_FC = "": var_EC = ""
  loc_A004B0: LitVarI2 var_9C, 0
  loc_A004B5: PopAdLdVar
  loc_A004B6: LitStr "Rubro (Código)"
  loc_A004B9: FLdPr Me
  loc_A004BC: VCallAd Control_ID_FiltroCbo
  loc_A004BF: FStAdFunc var_88
  loc_A004C2: FLdPr var_88
  loc_A004C5: Me.AddItem from_stack_1, from_stack_2
  loc_A004CA: FFree1Ad var_88
  loc_A004CD: LitVarI2 var_9C, 1
  loc_A004D2: PopAdLdVar
  loc_A004D3: LitStr "Rubro (Detalle)"
  loc_A004D6: FLdPr Me
  loc_A004D9: VCallAd Control_ID_FiltroCbo
  loc_A004DC: FStAdFunc var_88
  loc_A004DF: FLdPr var_88
  loc_A004E2: Me.AddItem from_stack_1, from_stack_2
  loc_A004E7: FFree1Ad var_88
  loc_A004EA: LitI2_Byte 1
  loc_A004EC: FLdPr Me
  loc_A004EF: VCallAd Control_ID_FiltroCbo
  loc_A004F2: FStAdFunc var_88
  loc_A004F5: FLdPr var_88
  loc_A004F8: Me.ListIndex = from_stack_1
  loc_A004FD: FFree1Ad var_88
  loc_A00500: LitI4 0
  loc_A00505: LitI4 1
  loc_A0050A: FLdRfVar var_114
  loc_A0050D: Redim
  loc_A00517: FLdPr Me
  loc_A0051A: MemLdRfVar from_stack_1.BuscarCLS
  loc_A0051D: NewIfNullAd
  loc_A00520: FStAd var_88 
  loc_A00524: FLdRfVar var_88
  loc_A00527: CVarRef
  loc_A0052C: ParmAry1St
  loc_A00532: FLdPr Me
  loc_A00535: VCallAd Control_ID_dgdABMS
  loc_A00538: CVarAd
  loc_A0053C: ParmAry1St
  loc_A00542: FLdRfVar var_114
  loc_A00545: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_A0054A: ILdRf var_88
  loc_A0054D: CastAd
  loc_A00550: FLdPr Me
  loc_A00553: MemStAdFunc
  loc_A00557: FLdRfVar var_114
  loc_A0055A: Erase
  loc_A0055B: FFree1Ad var_88
  loc_A0055E: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '96CC4C
  'Data Table: 41C398
  loc_96CC2C: LitI2_Byte 0
  loc_96CC2E: FLdPr Me
  loc_96CC31: MemStI2 MuestroAnulados
  loc_96CC34: ILdRf Me
  loc_96CC37: FStAdNoPop
  loc_96CC3B: ImpAdLdRf MemVar_C44F9C
  loc_96CC3E: NewIfNullPr Me
  loc_96CC41: Me.Global.Unload from_stack_1
  loc_96CC46: FFree1Ad var_88
  loc_96CC49: ExitProcHresult
End Sub

Private Sub Form_Activate() '94BC60
  'Data Table: 41C398
  loc_94BC4C: FLdPr Me
  loc_94BC4F: VCallAd Control_ID_FiltroMsk
  loc_94BC52: CVarAd
  loc_94BC56: ImpAdCallFPR4 Proc_261_5_9BDB84()
  loc_94BC5B: FFree1Var var_94 = ""
  loc_94BC5E: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) '969AB0
  'Data Table: 41C398
  loc_969A94: On Error Resume Next
  loc_969A99: ILdI2 KeyAscii
  loc_969A9C: CI4UI1
  loc_969A9D: LitI4 &HD
  loc_969AA2: EqI4
  loc_969AA3: BranchF loc_969AAD
  loc_969AA8: ImpAdCallFPR4 Proc_261_52_966EEC()
  loc_969AAF: ExitProcHresult
End Sub

Public Function MuestroAnuladosGet() '41C874
  MuestroAnuladosGet = MuestroAnulados
End Function

Public Sub MuestroAnuladosPut(Value) '41C883
  MuestroAnulados = Value
End Sub

Public Function global_4309912Get() '41C892
  global_4309912Get = global_4309912
End Function

Public Sub global_4309912Put(Value) '41C8AC
  global_4309912 = Value
End Sub

Public Sub global_4309912Set(Value) '41C8C6
  global_4309912 = Value
End Sub

Public Function sFiltroGet() '41C8E0
  sFiltroGet = sFiltro
End Function

Public Sub sFiltroPut(Value) '41C8EF
  sFiltro = Value
End Sub

Public Sub Constructor(sWhere) '9A98D4
  'Data Table: 41C398
  loc_9A9858: ILdRf sWhere
  loc_9A985B: FStStrCopy var_88
  loc_9A985E: LitStr "SELECT r.* "
  loc_9A9861: LitStr " FROM rubro r"
  loc_9A9864: ConcatStr
  loc_9A9865: FStStrNoPop var_8C
  loc_9A9868: LitStr " WHERE TRUE "
  loc_9A986B: ConcatStr
  loc_9A986C: CVarStr var_FC
  loc_9A986F: LitVarStr var_CC, " AND r.BajaUsua = '' "
  loc_9A9874: FStVarCopyObj var_DC
  loc_9A9877: FLdRfVar var_DC
  loc_9A987A: LitVarStr var_AC, vbNullString
  loc_9A987F: FStVarCopyObj var_BC
  loc_9A9882: FLdRfVar var_BC
  loc_9A9885: FLdPr Me
  loc_9A9888: MemLdRfVar from_stack_1.MuestroAnulados
  loc_9A988B: CVarRef
  loc_9A9890: FLdRfVar var_EC
  loc_9A9893: ImpAdCallFPR4  = IIf(, , )
  loc_9A9898: FLdRfVar var_EC
  loc_9A989B: ConcatVar var_10C
  loc_9A989F: ILdRf var_88
  loc_9A98A2: CVarStr var_11C
  loc_9A98A5: ConcatVar var_12C
  loc_9A98A9: CStrVarVal var_130
  loc_9A98AD: FLdPr Me
  loc_9A98B0: MemLdRfVar from_stack_1.BuscarCLS
  loc_9A98B3: NewIfNullPr clsbase
  loc_9A98B6: Call clsbase.RedefineRS(from_stack_1v)
  loc_9A98BB: FFreeStr var_8C = ""
  loc_9A98C2: FFreeVar var_BC = "": var_DC = "": var_FC = "": var_EC = "": var_10C = ""
  loc_9A98D1: ExitProcHresult
End Sub
